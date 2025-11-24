	.include "asm/gba_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	thumb_func_start sub_080C0A1C
sub_080C0A1C: @ 0x080C0A1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldrh r0, [r5, #0x20]
	mov sb, r0
	ldrb r1, [r5, #0x11]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C0A5A
	movs r0, #0xfe
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r5, #0x11]
	adds r0, r5, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r3, _080C0A90 @ =0xFFFE8000
	adds r0, r5, #0
	movs r1, #4
	movs r2, #0
	bl sub_080C04C8
_080C0A5A:
	ldrb r2, [r5, #0x11]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080C0A84
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080C0A84
	movs r0, #0xfd
	ands r0, r2
	strb r0, [r5, #0x11]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080C0A84:
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _080C0A94
	cmp r0, #1
	beq _080C0AF0
	b _080C0B6C
	.align 2, 0
_080C0A90: .4byte 0xFFFE8000
_080C0A94:
	movs r2, #0x80
	lsls r2, r2, #7
	str r2, [r5, #0x14]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080C0AAC
	rsbs r0, r2, #0
	str r0, [r5, #0x14]
_080C0AAC:
	ldr r1, [r5, #0x18]
	ldr r0, _080C0AEC @ =0x0000FFFF
	cmp r1, r0
	bgt _080C0ABC
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r5, #0x18]
_080C0ABC:
	ldrb r0, [r5, #0x12]
	adds r4, r0, #0
	cmp r4, #0
	bne _080C0B72
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _080C0B6C
	bl RandomNumberGenerator
	movs r1, #0xff
	ands r1, r0
	cmp r1, #3
	bhi _080C0B6C
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0xb4
	bl sub_0806E29C
	cmp r0, #0
	beq _080C0B6C
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r4, [r5, #0xb]
	b _080C0F04
	.align 2, 0
_080C0AEC: .4byte 0x0000FFFF
_080C0AF0:
	mov r3, sb
	lsls r4, r3, #0x10
	asrs r4, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	ldr r1, [r5, #0x14]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	str r0, [r5, #0x48]
	adds r0, r4, #0
	bl sub_080009E4
	ldr r1, [r5, #0x14]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	str r0, [r5, #0x4c]
	adds r0, r5, #0
	bl sub_0806D3C0
	adds r0, r5, #0
	bl sub_0806D3CC
	ldr r1, _080C0B64 @ =0x08528922
	ldrb r0, [r5, #0x13]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	mov sb, r0
	ldr r1, [r5, #0x18]
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	ble _080C0B42
	ldr r2, _080C0B68 @ =0xFFFFFE00
	adds r0, r1, r2
	str r0, [r5, #0x18]
_080C0B42:
	adds r0, r5, #0
	adds r0, #0x20
	ldrh r1, [r5, #0x22]
	mov r2, sb
	bl sub_080686CC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C0B56
	b _080C0F04
_080C0B56:
	movs r0, #0
	strb r0, [r5, #0xb]
	ldrb r0, [r5, #0x13]
	strb r0, [r5, #0xc]
	movs r0, #0x18
	strb r0, [r5, #0x12]
	b _080C0F04
	.align 2, 0
_080C0B64: .4byte 0x08528922
_080C0B68: .4byte 0xFFFFFE00
_080C0B6C:
	ldrb r0, [r5, #0x12]
	cmp r0, #0
	beq _080C0B76
_080C0B72:
	subs r0, #1
	strb r0, [r5, #0x12]
_080C0B76:
	adds r0, r5, #0
	bl sub_0806D3C0
	adds r0, r5, #0
	bl sub_0806D3CC
	mov r3, sb
	lsls r4, r3, #0x10
	asrs r4, r4, #0x10
	movs r0, #0x80
	lsls r0, r0, #7
	adds r6, r4, r0
	adds r0, r6, #0
	bl sub_080009E4
	ldr r1, [r5, #0x14]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	str r0, [r5, #0x48]
	adds r0, r4, #0
	bl sub_080009E4
	ldr r1, [r5, #0x14]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	str r0, [r5, #0x4c]
	adds r0, r5, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r5, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	adds r0, r6, #0
	bl sub_080009E4
	lsls r1, r0, #3
	adds r1, r1, r0
	cmp r1, #0
	bge _080C0BE8
	adds r0, r6, #0
	bl sub_080009E4
	lsls r1, r0, #3
	adds r1, r1, r0
	rsbs r1, r1, #0
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	lsls r1, r1, #0x10
	b _080C0BF2
_080C0BE8:
	adds r0, r6, #0
	bl sub_080009E4
	lsls r1, r0, #3
	adds r1, r1, r0
_080C0BF2:
	lsrs r0, r1, #0x10
	adds r6, r0, #0
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	adds r0, r4, #0
	bl sub_080009E4
	lsls r1, r0, #3
	adds r1, r1, r0
	cmp r1, #0
	bge _080C0C1E
	adds r0, r4, #0
	bl sub_080009E4
	lsls r1, r0, #3
	adds r1, r1, r0
	rsbs r1, r1, #0
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	lsls r1, r1, #0x10
	b _080C0C28
_080C0C1E:
	adds r0, r4, #0
	bl sub_080009E4
	lsls r1, r0, #3
	adds r1, r1, r0
_080C0C28:
	lsrs r0, r1, #0x10
	adds r7, r0, #0
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bgt _080C0C3E
	lsls r0, r6, #0x10
	rsbs r0, r0, #0
	lsrs r6, r0, #0x10
	lsls r0, r7, #0x10
	rsbs r0, r0, #0
	lsrs r7, r0, #0x10
_080C0C3E:
	ldr r0, _080C0C80 @ =0x08528922
	ldrb r1, [r5, #0xc]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldr r2, _080C0C84 @ =0xFFFFC000
	adds r0, r2, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov sb, r3
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bge _080C0C88
	adds r0, r4, #0
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	rsbs r1, r1, #0
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	lsls r1, r1, #0x10
	b _080C0C92
	.align 2, 0
_080C0C80: .4byte 0x08528922
_080C0C84: .4byte 0xFFFFC000
_080C0C88:
	adds r0, r4, #0
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
_080C0C92:
	lsrs r1, r1, #0x10
	str r1, [sp]
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	adds r0, r4, #0
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bge _080C0CBE
	adds r0, r4, #0
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	rsbs r1, r1, #0
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	lsls r1, r1, #0x10
	b _080C0CC8
_080C0CBE:
	adds r0, r4, #0
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
_080C0CC8:
	lsrs r2, r1, #0x10
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080C06A8
	ldrb r1, [r5, #0xc]
	cmp r1, #1
	bne _080C0CFA
	b _080C0E1E
_080C0CFA:
	cmp r1, #1
	bgt _080C0D04
	cmp r1, #0
	beq _080C0D10
	b _080C0F04
_080C0D04:
	cmp r1, #2
	beq _080C0D98
	cmp r1, #3
	bne _080C0D0E
	b _080C0E76
_080C0D0E:
	b _080C0F04
_080C0D10:
	cmp r0, #0
	beq _080C0D36
	ldrb r0, [r5, #0x12]
	cmp r0, #0
	beq _080C0D1C
	b _080C0F04
_080C0D1C:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	ble _080C0D2C
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r5, #0
	movs r1, #3
	b _080C0ECE
_080C0D2C:
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r5, #0
	movs r1, #1
	b _080C0ECE
_080C0D36:
	ldrb r0, [r5, #0x12]
	cmp r0, #0
	beq _080C0D3E
	b _080C0F04
_080C0D3E:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	ble _080C0D6E
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	mov r2, sl
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r2, r7, #0x10
	asrs r2, r2, #0x10
	adds r1, r1, r2
	bl sub_08002058
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C0D68
	b _080C0F04
_080C0D68:
	adds r0, r5, #0
	movs r1, #1
	b _080C0ECC
_080C0D6E:
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	mov r2, sl
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r2, r7, #0x10
	asrs r2, r2, #0x10
	adds r1, r1, r2
	bl sub_0800207C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C0D92
	b _080C0F04
_080C0D92:
	adds r0, r5, #0
	movs r1, #3
	b _080C0ECC
_080C0D98:
	cmp r0, #0
	beq _080C0DBE
	ldrb r0, [r5, #0x12]
	cmp r0, #0
	beq _080C0DA4
	b _080C0F04
_080C0DA4:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	ble _080C0DB4
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r5, #0
	movs r1, #1
	b _080C0ECE
_080C0DB4:
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r5, #0
	movs r1, #3
	b _080C0ECE
_080C0DBE:
	ldrb r0, [r5, #0x12]
	cmp r0, #0
	beq _080C0DC6
	b _080C0F04
_080C0DC6:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	ble _080C0DF6
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	mov r2, sl
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r2, r7, #0x10
	asrs r2, r2, #0x10
	adds r1, r1, r2
	bl sub_0800207C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C0DF0
	b _080C0F04
_080C0DF0:
	adds r0, r5, #0
	movs r1, #3
	b _080C0ECC
_080C0DF6:
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	mov r2, sl
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r2, r7, #0x10
	asrs r2, r2, #0x10
	adds r1, r1, r2
	bl sub_08002058
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080C0F04
	adds r0, r5, #0
	movs r1, #1
	b _080C0ECC
_080C0E1E:
	cmp r0, #0
	beq _080C0E42
	ldrb r0, [r5, #0x12]
	cmp r0, #0
	bne _080C0F04
	ldr r0, [r5, #0x14]
	cmp r0, #0
	ble _080C0E38
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r5, #0
	movs r1, #0
	b _080C0ECE
_080C0E38:
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r5, #0
	movs r1, #2
	b _080C0ECE
_080C0E42:
	ldrb r0, [r5, #0x12]
	cmp r0, #0
	bne _080C0F04
	ldr r0, [r5, #0x14]
	cmp r0, #0
	ble _080C0EA6
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	mov r2, sl
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r2, r7, #0x10
	asrs r2, r2, #0x10
	adds r1, r1, r2
	bl sub_08001C1C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080C0F04
	adds r0, r5, #0
	movs r1, #2
	b _080C0ECC
_080C0E76:
	cmp r0, #0
	beq _080C0E9A
	ldrb r0, [r5, #0x12]
	cmp r0, #0
	bne _080C0F04
	ldr r0, [r5, #0x14]
	cmp r0, #0
	ble _080C0E90
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r5, #0
	movs r1, #2
	b _080C0ECE
_080C0E90:
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r5, #0
	movs r1, #0
	b _080C0ECE
_080C0E9A:
	ldrb r0, [r5, #0x12]
	cmp r0, #0
	bne _080C0F04
	ldr r0, [r5, #0x14]
	cmp r0, #0
	ble _080C0ED6
_080C0EA6:
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	mov r2, sl
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r2, r7, #0x10
	asrs r2, r2, #0x10
	adds r1, r1, r2
	bl sub_080C05D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080C0F04
	adds r0, r5, #0
	movs r1, #0
_080C0ECC:
	movs r2, #0
_080C0ECE:
	movs r3, #0
	bl sub_080C0630
	b _080C0F04
_080C0ED6:
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	mov r2, sl
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r2, r7, #0x10
	asrs r2, r2, #0x10
	adds r1, r1, r2
	bl sub_08001C1C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080C0F04
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_080C0630
_080C0F04:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080C0F14
sub_080C0F14: @ 0x080C0F14
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0x80
	lsls r5, r5, #8
	ldrb r0, [r4, #0xb]
	cmp r0, #4
	bls _080C0F24
	b _080C10AE
_080C0F24:
	lsls r0, r0, #2
	ldr r1, _080C0F30 @ =_080C0F34
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C0F30: .4byte _080C0F34
_080C0F34: @ jump table
	.4byte _080C0F48 @ case 0
	.4byte _080C0F58 @ case 1
	.4byte _080C0FD8 @ case 2
	.4byte _080C1058 @ case 3
	.4byte _080C108C @ case 4
_080C0F48:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #1
	strb r0, [r4, #0xb]
_080C0F58:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080C0F68
	b _080C10AE
_080C0F68:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r1, [r4, #0x11]
	movs r2, #0
	movs r0, #4
	orrs r0, r1
	strb r0, [r4, #0x11]
	ldrb r0, [r4, #0xc]
	cmp r0, #2
	beq _080C0F94
	cmp r0, #2
	bgt _080C0F8E
	cmp r0, #1
	beq _080C0F9A
	b _080C0FC6
_080C0F8E:
	cmp r0, #3
	beq _080C0FAC
	b _080C0FC6
_080C0F94:
	str r2, [r4, #0x14]
	str r2, [r4, #0x4c]
	b _080C0FC6
_080C0F9A:
	bl RandomNumberGenerator
	ldr r1, _080C0FA8 @ =0x00001FFF
	ands r1, r0
	adds r1, r5, r1
	rsbs r1, r1, #0
	b _080C0FB6
	.align 2, 0
_080C0FA8: .4byte 0x00001FFF
_080C0FAC:
	bl RandomNumberGenerator
	ldr r1, _080C1000 @ =0x00001FFF
	ands r1, r0
	adds r1, r5, r1
_080C0FB6:
	str r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #8
	bl sub_0802D5EC
	ldr r1, _080C1004 @ =0xFFFF0000
	adds r0, r0, r1
	str r0, [r4, #0x4c]
_080C0FC6:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl PlaySong
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	movs r0, #2
	strb r0, [r4, #0xb]
_080C0FD8:
	ldr r1, [r4, #0x14]
	ldr r2, _080C1008 @ =0x08528914
	adds r0, r4, #0
	movs r3, #0x22
	bl sub_0806CAF8
	adds r1, r0, #0
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080C1010
	ldr r3, _080C100C @ =0xFFFE0000
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	bl sub_080C04C8
	movs r0, #0
	strb r0, [r4, #0xc]
	b _080C104A
	.align 2, 0
_080C1000: .4byte 0x00001FFF
_080C1004: .4byte 0xFFFF0000
_080C1008: .4byte 0x08528914
_080C100C: .4byte 0xFFFE0000
_080C1010:
	movs r5, #1
	adds r0, r1, #0
	ands r0, r5
	cmp r0, #0
	beq _080C1034
	movs r2, #0x80
	lsls r2, r2, #9
	ldr r3, _080C1030 @ =0xFFFE8000
	adds r0, r4, #0
	movs r1, #3
	bl sub_080C04C8
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xb]
	b _080C10AE
	.align 2, 0
_080C1030: .4byte 0xFFFE8000
_080C1034:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080C10AE
	ldr r2, _080C1050 @ =0xFFFF0000
	ldr r3, _080C1054 @ =0xFFFE8000
	adds r0, r4, #0
	movs r1, #3
	bl sub_080C04C8
	strb r5, [r4, #0xc]
_080C104A:
	movs r0, #3
	strb r0, [r4, #0xb]
	b _080C10AE
	.align 2, 0
_080C1050: .4byte 0xFFFF0000
_080C1054: .4byte 0xFFFE8000
_080C1058:
	ldr r0, _080C10B4 @ =0x00000163
	bl PlaySong
	ldr r1, _080C10B8 @ =0x08528922
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0x20]
	ldrb r1, [r4, #0x11]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r4, #0x11]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, #0
	bl sub_080C06A8
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #4
	strb r0, [r4, #0xb]
_080C108C:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080C10AE
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	strb r0, [r4, #0x12]
_080C10AE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C10B4: .4byte 0x00000163
_080C10B8: .4byte 0x08528922

	thumb_func_start sub_080C10BC
sub_080C10BC: @ 0x080C10BC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r1, #0x20
	ldrsh r0, [r6, r1]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r7, r0, r1
	ldrb r4, [r6, #0xb]
	cmp r4, #0
	beq _080C10D6
	cmp r4, #1
	beq _080C10FE
	b _080C11B8
_080C10D6:
	movs r0, #0x70
	bl PlaySong
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r1, [r6, #0x11]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080C10FA
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r6, #0x54]
	strh r4, [r6, #0x20]
_080C10FA:
	movs r0, #1
	strb r0, [r6, #0xb]
_080C10FE:
	ldrb r1, [r6, #0x11]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080C113E
	ldr r1, [r6, #0x14]
	ldr r2, _080C11A4 @ =0x08528914
	adds r0, r6, #0
	movs r3, #0x22
	bl sub_0806CAF8
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	beq _080C113E
	ldrb r1, [r6, #0x11]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0
	strb r0, [r6, #0x11]
	str r1, [r6, #0x14]
	ldr r1, [r6, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #9
	subs r0, r0, r1
	asrs r0, r0, #8
	movs r1, #0xa0
	lsls r1, r1, #3
	muls r1, r0, r1
	ldr r0, [r6, #0x44]
	adds r0, r0, r1
	str r0, [r6, #0x44]
_080C113E:
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	ble _080C11B4
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r7, r1
	bl sub_080009E4
	asrs r0, r0, #8
	movs r4, #0x12
	adds r5, r0, #0
	muls r5, r4, r5
	adds r0, r7, #0
	bl sub_080009E4
	asrs r0, r0, #8
	adds r1, r0, #0
	muls r1, r4, r1
	ldr r0, [r6, #0x40]
	adds r0, r0, r5
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x44]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080C1188
	ldr r3, _080C11A8 @ =0xFFFE0000
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	bl sub_080C04C8
_080C1188:
	ldrb r1, [r6, #0xd]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080C1198
	ldr r0, _080C11AC @ =0x00000165
	bl PlaySong
_080C1198:
	ldr r0, [r6, #0x1c]
	ldr r1, _080C11B0 @ =0xFFFFFC00
	adds r0, r0, r1
	str r0, [r6, #0x1c]
	b _080C11B8
	.align 2, 0
_080C11A4: .4byte 0x08528914
_080C11A8: .4byte 0xFFFE0000
_080C11AC: .4byte 0x00000165
_080C11B0: .4byte 0xFFFFFC00
_080C11B4:
	movs r0, #1
	b _080C11BA
_080C11B8:
	movs r0, #0
_080C11BA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start EnemySlimeCreate
EnemySlimeCreate: @ 0x080C11C0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r1, _080C11FC @ =0x08260320
	ldr r2, _080C1200 @ =0x082664DC
	ldrh r3, [r6, #0x32]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r0, _080C1204 @ =0x0826798C
	str r0, [sp]
	adds r0, r6, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080C11F4
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _080C1208
_080C11F4:
	adds r0, r6, #0
	bl EntityDelete
	b _080C133A
	.align 2, 0
_080C11FC: .4byte 0x08260320
_080C1200: .4byte 0x082664DC
_080C1204: .4byte 0x0826798C
_080C1208:
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
	adds r4, r6, #0
	adds r4, #0x59
	ldrb r0, [r4]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4]
	movs r7, #0
	strh r7, [r6, #0x20]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r6, #0x18]
	str r0, [r6, #0x1c]
	adds r0, r6, #0
	bl sub_0806B04C
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	ldr r0, _080C1288 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	mov r8, r5
	mov sb, r4
	cmp r0, #0
	beq _080C128C
	movs r1, #0x20
	ldrsh r0, [r6, r1]
	ldr r1, [r6, #0x18]
	ldr r2, [r6, #0x1c]
	ldrb r4, [r5]
	lsls r3, r4, #0x19
	lsrs r3, r3, #0x1f
	str r7, [sp]
	lsls r4, r4, #0x1b
	lsrs r4, r4, #0x1b
	str r4, [sp, #4]
	bl sub_0803E058
	movs r0, #3
	strb r0, [r6, #0xa]
	b _080C133A
	.align 2, 0
_080C1288: .4byte gEwramData
_080C128C:
	ldr r2, _080C12BC @ =sub_080C13DC
	ldr r3, _080C12C0 @ =sub_080C140C
	adds r0, r6, #0
	movs r1, #8
	bl sub_0804277C
	ldr r4, _080C12C4 @ =0x1010F8F8
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080428F0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08042884
	movs r3, #0x30
	ldrsh r0, [r6, r3]
	cmp r0, #0
	bne _080C12C8
	adds r0, r6, #0
	bl sub_0806AF98
	b _080C130E
	.align 2, 0
_080C12BC: .4byte sub_080C13DC
_080C12C0: .4byte sub_080C140C
_080C12C4: .4byte 0x1010F8F8
_080C12C8:
	adds r7, r6, #0
	adds r7, #0x46
	adds r5, r7, #0
_080C12CE:
	adds r0, r6, #0
	bl sub_08002188
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r6, #0
	bl sub_080021A8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _080C12FC
	ldrh r0, [r5]
	subs r0, #8
	strh r0, [r5]
	b _080C12CE
_080C12FC:
	ldrh r0, [r7]
	adds r0, #5
	adds r0, r1, r0
	strh r0, [r7]
	movs r0, #2
	strb r0, [r6, #0xc]
	movs r0, #0x80
	lsls r0, r0, #8
	strh r0, [r6, #0x20]
_080C130E:
	movs r1, #0x20
	ldrsh r0, [r6, r1]
	ldr r1, [r6, #0x18]
	ldr r2, [r6, #0x1c]
	mov r3, r8
	ldrb r4, [r3]
	lsls r3, r4, #0x19
	lsrs r3, r3, #0x1f
	movs r5, #0
	str r5, [sp]
	lsls r4, r4, #0x1b
	lsrs r4, r4, #0x1b
	str r4, [sp, #4]
	bl sub_0803E058
	mov r1, sb
	ldrb r0, [r1]
	movs r1, #2
	orrs r0, r1
	mov r3, sb
	strb r0, [r3]
	strb r5, [r6, #0xa]
_080C133A:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start EnemySlimeUpdate
EnemySlimeUpdate: @ 0x080C1348
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	bl sub_0806CC20
	cmp r0, #0
	bne _080C13D4
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	beq _080C1378
	cmp r0, #1
	bgt _080C1366
	cmp r0, #0
	beq _080C1370
	b _080C13A8
_080C1366:
	cmp r0, #2
	beq _080C1380
	cmp r0, #3
	beq _080C13A0
	b _080C13A8
_080C1370:
	adds r0, r6, #0
	bl sub_080C0A1C
	b _080C13A8
_080C1378:
	adds r0, r6, #0
	bl sub_080C0F14
	b _080C13A8
_080C1380:
	adds r0, r6, #0
	bl sub_080C10BC
	cmp r0, #0
	beq _080C13A8
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r6, #0
	bl EntityDelete
	b _080C13D4
_080C13A0:
	adds r0, r6, #0
	bl sub_0803F17C
	b _080C13D4
_080C13A8:
	movs r1, #0x20
	ldrsh r0, [r6, r1]
	ldr r1, [r6, #0x18]
	ldr r2, [r6, #0x1c]
	adds r3, r6, #0
	adds r3, #0x58
	ldrb r4, [r3]
	lsls r3, r4, #0x19
	lsrs r3, r3, #0x1f
	movs r5, #0
	str r5, [sp]
	lsls r4, r4, #0x1b
	lsrs r4, r4, #0x1b
	str r4, [sp, #4]
	bl sub_0803E058
	adds r0, r6, #0
	bl sub_0806E314
	adds r0, r6, #0
	bl sub_0803F17C
_080C13D4:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080C13DC
sub_080C13DC: @ 0x080C13DC
	push {lr}
	sub sp, #0x10
	mov r2, sp
	movs r3, #0
	movs r1, #0x40
	strh r1, [r2, #2]
	mov r1, sp
	strh r3, [r1, #4]
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	strh r1, [r2]
	mov r1, sp
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

	thumb_func_start sub_080C140C
sub_080C140C: @ 0x080C140C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r3, [r4, #0x11]
	movs r0, #1
	orrs r0, r3
	strb r0, [r4, #0x11]
	adds r0, r4, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080C144C
	adds r0, r4, #0
	bl sub_080683BC
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
	movs r0, #2
	strb r0, [r4, #0xa]
	movs r0, #0
	strb r0, [r4, #0xb]
_080C144C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C1454
sub_080C1454: @ 0x080C1454
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #0xb
	bl sub_0806D3D8
	movs r2, #0x20
	rsbs r2, r2, #0
	movs r3, #0x98
	lsls r3, r3, #1
	movs r0, #0xe0
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_08068AD4
	cmp r0, #0
	bne _080C1486
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080C1486:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyAltairCreate
EnemyAltairCreate: @ 0x080C1490
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080C1C54
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C14A0
	b _080C15C2
_080C14A0:
	adds r1, r4, #0
	adds r1, #0x5c
	movs r5, #0
	movs r0, #3
	strb r0, [r1]
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	adds r0, r4, #0
	bl sub_0806B04C
	str r5, [r4, #0x14]
	strb r5, [r4, #0x1d]
	ldr r0, _080C14D8 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080C14DC
	movs r0, #4
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	b _080C15C2
	.align 2, 0
_080C14D8: .4byte gEwramData
_080C14DC:
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080C1504
	movs r0, #5
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
	b _080C15C2
_080C1504:
	ldr r1, _080C1524 @ =sub_080C1D0C
	ldr r2, _080C1528 @ =sub_080C19E0
	adds r0, r4, #0
	bl sub_0806D244
	movs r2, #0x30
	ldrsh r0, [r4, r2]
	cmp r0, #2
	bne _080C152C
	adds r0, r4, #0
	adds r0, #0x4a
	ldrh r0, [r0]
	rsbs r0, r0, #0
	subs r0, #0x10
	b _080C153E
	.align 2, 0
_080C1524: .4byte sub_080C1D0C
_080C1528: .4byte sub_080C19E0
_080C152C:
	cmp r0, #3
	bne _080C1544
	adds r1, r4, #0
	adds r1, #0x4a
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r1, [r1]
	adds r0, r0, r1
_080C153E:
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
_080C1544:
	bl RandomNumberGenerator
	adds r2, r4, #0
	adds r2, #0x46
	movs r1, #0x1f
	ands r1, r0
	ldr r0, _080C1578 @ =0x0000FFF0
	adds r1, r1, r0
	ldrh r0, [r2]
	adds r1, r1, r0
	strh r1, [r2]
	adds r0, r4, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C157C
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _080C1588
	.align 2, 0
_080C1578: .4byte 0x0000FFF0
_080C157C:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0]
_080C1588:
	ldr r1, [r4, #0x20]
	ldrb r0, [r1, #0x19]
	cmp r0, #1
	bhi _080C15B6
	cmp r1, #0
	beq _080C15B6
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	cmp r0, #1
	bne _080C15A2
	adds r0, r4, #0
	movs r1, #0x18
	b _080C15AA
_080C15A2:
	cmp r0, #2
	bne _080C15C2
	adds r0, r4, #0
	movs r1, #0x4a
_080C15AA:
	movs r2, #0xff
	movs r3, #0xff
	bl sub_080C1A64
	cmp r0, #0
	bne _080C15C2
_080C15B6:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080C15C2:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start EnemyAltairUpdate
EnemyAltairUpdate: @ 0x080C15C8
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r1, [r4, #0x14]
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bne _080C15DE
	adds r0, r4, #0
	bl sub_080C1CDC
	b _080C168C
_080C15DE:
	cmp r0, #5
	bne _080C15EA
	adds r0, r4, #0
	bl sub_080C1940
	b _080C168C
_080C15EA:
	ldr r0, [r1]
	cmp r0, #0
	bne _080C15F2
	str r0, [r4, #0x14]
_080C15F2:
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080C15FE
	adds r0, r4, #0
	bl sub_0806AE54
_080C15FE:
	adds r0, r4, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _080C160E
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _080C1622
_080C160E:
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C162C
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _080C162C
	cmp r0, #2
	beq _080C162C
_080C1622:
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	b _080C168C
_080C162C:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080C1638
	cmp r0, #2
	beq _080C1640
	b _080C1646
_080C1638:
	adds r0, r4, #0
	bl sub_080C1694
	b _080C1646
_080C1640:
	adds r0, r4, #0
	bl sub_080C1898
_080C1646:
	adds r0, r4, #0
	bl sub_0806DF20
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080C165A
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
_080C165A:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080C168C
	ldr r1, [r4, #0x20]
	cmp r1, #0
	beq _080C168C
	ldr r0, [r1]
	cmp r0, #0
	beq _080C168C
	adds r0, r1, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x2c
	bne _080C168C
	ldrh r2, [r1, #0x1e]
	movs r3, #0x1e
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _080C168C
	subs r0, r2, #1
	strh r0, [r1, #0x1e]
_080C168C:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C1694
sub_080C1694: @ 0x080C1694
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r6, [r5, #0x14]
	ldrb r0, [r5, #0xb]
	cmp r0, #5
	bls _080C16A2
	b _080C1852
_080C16A2:
	lsls r0, r0, #2
	ldr r1, _080C16AC @ =_080C16B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C16AC: .4byte _080C16B0
_080C16B0: @ jump table
	.4byte _080C16C8 @ case 0
	.4byte _080C1712 @ case 1
	.4byte _080C17B4 @ case 2
	.4byte _080C17CE @ case 3
	.4byte _080C1830 @ case 4
	.4byte _080C184A @ case 5
_080C16C8:
	cmp r6, #0
	beq _080C16DC
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0
	b _080C16EA
_080C16DC:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #1
_080C16EA:
	strb r0, [r5, #0x18]
	movs r2, #0xa0
	lsls r2, r2, #8
	str r2, [r5, #0x48]
	movs r0, #0
	str r0, [r5, #0x4c]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080C1708
	rsbs r0, r2, #0
	str r0, [r5, #0x48]
_080C1708:
	movs r0, #0x30
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
_080C1712:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	cmp r6, #0
	bne _080C1720
	b _080C1852
_080C1720:
	adds r0, r5, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	ldr r0, [r5, #0x40]
	str r0, [r6, #0x40]
	ldr r0, [r5, #0x44]
	movs r1, #0x98
	lsls r1, r1, #0xd
	adds r0, r0, r1
	str r0, [r6, #0x44]
	adds r4, r5, #0
	adds r4, #0x58
	ldrb r0, [r4]
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
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080C1778
	cmp r7, #0x50
	ble _080C176E
	bl RandomNumberGenerator
	movs r1, #0x1f
	ands r1, r0
	cmp r1, #0
	bne _080C1796
	b _080C1792
_080C176E:
	movs r0, #4
	rsbs r0, r0, #0
	cmp r7, r0
	bge _080C1796
	b _080C1792
_080C1778:
	movs r0, #0x50
	rsbs r0, r0, #0
	cmp r7, r0
	bge _080C178E
	bl RandomNumberGenerator
	movs r1, #0x1f
	ands r1, r0
	cmp r1, #0
	bne _080C1796
	b _080C1792
_080C178E:
	cmp r7, #4
	ble _080C1796
_080C1792:
	movs r0, #1
	strb r0, [r5, #0x1d]
_080C1796:
	ldrb r0, [r5, #0x1d]
	cmp r0, #1
	bne _080C1852
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x21
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xae
	bhi _080C1852
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r1, #0
	b _080C182A
_080C17B4:
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r1, #0
	movs r0, #2
	strb r0, [r5, #0x18]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
_080C17CE:
	ldr r1, [r5, #0x40]
	ldr r0, [r5, #0x48]
	adds r1, r1, r0
	str r1, [r5, #0x40]
	cmp r6, #0
	beq _080C1800
	str r1, [r6, #0x40]
	ldr r0, [r5, #0x44]
	movs r3, #0x88
	lsls r3, r3, #0xd
	adds r0, r0, r3
	str r0, [r6, #0x44]
	adds r0, r5, #0
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
_080C1800:
	ldrb r0, [r5, #0x18]
	cmp r0, #2
	bne _080C1852
	adds r0, r5, #0
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #7
	bne _080C1852
	adds r0, r5, #0
	adds r0, #0x6f
	ldrb r1, [r0]
	cmp r1, #0
	bne _080C1852
	cmp r6, #0
	beq _080C1824
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
_080C1824:
	strb r1, [r5, #0x1c]
	ldrb r0, [r5, #0xb]
	adds r0, #1
_080C182A:
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
	b _080C1852
_080C1830:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r1, #0
	movs r0, #1
	strb r0, [r5, #0x18]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
_080C184A:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
_080C1852:
	adds r0, r5, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r2, [r0, r1]
	adds r0, #8
	movs r3, #0
	ldrsh r1, [r0, r3]
	rsbs r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _080C1872
	movs r3, #0xb8
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	ble _080C1892
_080C1872:
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r5, #0x14]
	cmp r1, #0
	beq _080C1892
	ldrb r0, [r5, #0xb]
	cmp r0, #2
	bhi _080C1892
	movs r0, #0xff
	strb r0, [r1, #0xa]
	movs r0, #0
	strb r0, [r1, #0xd]
_080C1892:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080C1898
sub_080C1898: @ 0x080C1898
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x14]
	ldrb r3, [r5, #0xb]
	cmp r3, #0
	beq _080C18AA
	cmp r3, #1
	beq _080C191A
	b _080C193A
_080C18AA:
	cmp r1, #0
	beq _080C18C2
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _080C18C2
	ldrb r2, [r1, #0xa]
	adds r0, r2, #0
	cmp r0, #0xff
	beq _080C18C2
	movs r0, #0xff
	strb r0, [r1, #0xa]
	strb r3, [r1, #0xb]
_080C18C2:
	movs r7, #1
	movs r6, #4
_080C18C6:
	adds r0, r5, #0
	bl sub_080C1D38
	adds r4, r0, #0
	cmp r4, #0
	beq _080C18E6
	bl RandomNumberGenerator
	ands r0, r7
	cmp r0, #0
	beq _080C18E6
	adds r0, r4, #0
	movs r1, #0
	bl sub_080C1DF0
	b _080C18EE
_080C18E6:
	adds r0, r4, #0
	movs r1, #1
	bl sub_080C1DF0
_080C18EE:
	subs r6, #1
	cmp r6, #0
	bge _080C18C6
	movs r0, #0x72
	bl PlaySong
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #3
	strb r0, [r5, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #8
	str r0, [r5, #0x4c]
	movs r0, #0x3f
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
_080C191A:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	movs r2, #0x80
	lsls r2, r2, #0xd
	movs r3, #0xc0
	lsls r3, r3, #0xc
	adds r0, r5, #0
	movs r1, #0xf
	bl sub_0806BE74
_080C193A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080C1940
sub_080C1940: @ 0x080C1940
	push {r4, r5, lr}
	adds r4, r0, #0
	bl RandomNumberGenerator
	adds r5, r0, #0
	movs r0, #0x3f
	ands r5, r0
	cmp r5, #0
	bne _080C19CE
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	cmp r0, #1
	bgt _080C19CE
	ldr r2, _080C19D4 @ =EntityUpdateNothing
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r3, r0, #0
	cmp r3, #0
	beq _080C19CE
	ldr r0, [r4, #0x44]
	str r0, [r3, #0x44]
	adds r2, r3, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r3, #0
	adds r0, #0x37
	strb r5, [r0]
	adds r5, r4, #0
	adds r5, #0x36
	ldrb r0, [r5]
	adds r1, r3, #0
	adds r1, #0x36
	strb r0, [r1]
	ldrh r1, [r4, #0x1e]
	movs r0, #1
	ands r0, r1
	adds r0, #2
	strh r0, [r3, #0x30]
	ldrh r0, [r4, #0x32]
	strh r0, [r3, #0x32]
	ldr r0, _080C19D8 @ =sub_0803B9D0
	str r0, [r3, #4]
	ldr r2, _080C19DC @ =0x080E9644
	ldrb r1, [r5]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #0xc]
	strh r0, [r3, #0x34]
	ldrb r1, [r5]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #0xe]
	strh r0, [r3, #0x2e]
	ldr r0, [r4]
	str r0, [r3]
	str r4, [r3, #0x20]
	adds r0, r3, #0
	bl EnemyAltairCreate
	ldrh r0, [r4, #0x1e]
	adds r0, #1
	strh r0, [r4, #0x1e]
_080C19CE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C19D4: .4byte EntityUpdateNothing
_080C19D8: .4byte sub_0803B9D0
_080C19DC: .4byte 0x080E9644

	thumb_func_start sub_080C19E0
sub_080C19E0: @ 0x080C19E0
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
	movs r4, #0
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
	bgt _080C1A5E
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
	movs r0, #0x32
	strb r0, [r6, #0xd]
	movs r0, #2
	strb r0, [r6, #0xa]
	movs r0, #0
	strb r0, [r6, #0xb]
	str r4, [r6, #0x48]
	str r4, [r6, #0x50]
	str r4, [r6, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r6, #0x54]
_080C1A5E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080C1A64
sub_080C1A64: @ 0x080C1A64
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	movs r7, #0
	ldr r2, _080C1B40 @ =EntityUpdateNothing
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r4, r0, #0
	str r4, [r5, #0x14]
	cmp r4, #0
	beq _080C1B32
	movs r0, #1
	strb r0, [r5, #0x1c]
	ldr r1, [r5, #0x40]
	str r1, [r4, #0x40]
	ldr r0, [r5, #0x44]
	movs r2, #0x98
	lsls r2, r2, #0xd
	adds r0, r0, r2
	str r0, [r4, #0x44]
	movs r2, #0
	ldr r0, _080C1B44 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _080C1B48 @ =0x00013110
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	bge _080C1AB8
	movs r2, #1
_080C1AB8:
	adds r3, r4, #0
	adds r3, #0x58
	movs r1, #1
	ands r1, r2
	lsls r1, r1, #6
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
	mov r0, sb
	strh r0, [r4, #0x30]
	mov r2, r8
	strh r2, [r4, #0x32]
	adds r0, r5, #0
	adds r0, #0x37
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x37
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x36
	strb r6, [r0]
	ldr r0, _080C1B4C @ =sub_0803B9D0
	str r0, [r4, #4]
	lsls r0, r6, #3
	adds r0, r0, r6
	lsls r0, r0, #2
	ldr r1, _080C1B50 @ =0x080E9644
	adds r0, r0, r1
	ldrh r1, [r0, #0xc]
	strh r1, [r4, #0x34]
	ldr r1, [r0, #4]
	str r1, [r4]
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r1, [r4]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r7, r0, #0x1f
	ldr r1, [r5, #0x20]
	cmp r1, #0
	beq _080C1B32
	ldrb r0, [r1, #0x19]
	adds r0, #1
	strb r0, [r1, #0x19]
	ldrb r0, [r4, #0x19]
	adds r0, #1
	strb r0, [r4, #0x19]
	ldr r0, [r5, #0x20]
	ldrh r0, [r0, #0x10]
	strh r0, [r4, #0x12]
_080C1B32:
	adds r0, r7, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080C1B40: .4byte EntityUpdateNothing
_080C1B44: .4byte gEwramData
_080C1B48: .4byte 0x00013110
_080C1B4C: .4byte sub_0803B9D0
_080C1B50: .4byte 0x080E9644

	thumb_func_start sub_080C1B54
sub_080C1B54: @ 0x080C1B54
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r7, [r6, #0x10]
	ldrb r0, [r6, #0xa]
	cmp r0, #2
	beq _080C1BF8
	cmp r0, #2
	ble _080C1B6A
	cmp r0, #3
	beq _080C1C40
	b _080C1C4C
_080C1B6A:
	cmp r0, #0
	blt _080C1C4C
	adds r1, r6, #0
	adds r1, #0x5c
	movs r5, #2
	movs r0, #2
	strb r0, [r1]
	bl RandomNumberGenerator
	adds r2, r7, #0
	adds r2, #0x42
	movs r1, #0x1f
	ands r1, r0
	ldr r0, _080C1BE8 @ =0x0000FFF0
	adds r1, r1, r0
	ldrh r2, [r2]
	adds r1, r1, r2
	adds r0, r6, #0
	adds r0, #0x42
	movs r4, #0
	strh r1, [r0]
	bl RandomNumberGenerator
	adds r2, r7, #0
	adds r2, #0x46
	movs r1, #0xf
	ands r1, r0
	ldr r0, _080C1BEC @ =0x0000FFF8
	adds r1, r1, r0
	ldrh r2, [r2]
	adds r1, r1, r2
	adds r0, r6, #0
	adds r0, #0x46
	strh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r6, #0x4c]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	strb r4, [r6, #0xd]
	bl RandomNumberGenerator
	ldr r1, _080C1BF0 @ =0x00003FFF
	ands r1, r0
	ldr r0, _080C1BF4 @ =0xFFFFE000
	adds r1, r1, r0
	strh r1, [r6, #0x24]
	movs r0, #0xd0
	lsls r0, r0, #4
	strh r0, [r6, #0x26]
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	adds r1, #0x40
	strh r1, [r6, #0x14]
	adds r1, r6, #0
	adds r1, #0x59
	ldrb r0, [r1]
	orrs r0, r5
	strb r0, [r1]
	b _080C1C4C
	.align 2, 0
_080C1BE8: .4byte 0x0000FFF0
_080C1BEC: .4byte 0x0000FFF8
_080C1BF0: .4byte 0x00003FFF
_080C1BF4: .4byte 0xFFFFE000
_080C1BF8:
	ldrh r0, [r6, #0x16]
	bl sub_080009E4
	cmp r0, #0
	bge _080C1C04
	adds r0, #3
_080C1C04:
	asrs r1, r0, #2
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x44]
	ldr r1, [r6, #0x4c]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	ldrh r0, [r6, #0x14]
	ldrh r1, [r6, #0x16]
	adds r0, r0, r1
	strh r0, [r6, #0x16]
	lsls r1, r0, #0x10
	cmp r1, #0
	bge _080C1C2C
	ldr r0, _080C1C28 @ =0x9FFF0000
	b _080C1C2E
	.align 2, 0
_080C1C28: .4byte 0x9FFF0000
_080C1C2C:
	ldr r0, _080C1C3C @ =0x1FFF0000
_080C1C2E:
	cmp r1, r0
	bls _080C1C4C
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	b _080C1C4C
	.align 2, 0
_080C1C3C: .4byte 0x1FFF0000
_080C1C40:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080C1C4C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C1C54
sub_080C1C54: @ 0x080C1C54
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r7, _080C1CB8 @ =0x0820BD70
	ldr r0, _080C1CBC @ =0x0824B660
	mov r8, r0
	ldr r6, _080C1CC0 @ =0x081F4234
	adds r0, r6, #0
	bl sub_0803AFB8
	adds r5, r0, #0
	cmp r5, #0
	bge _080C1C7E
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _080C1CC8
_080C1C7E:
	adds r0, r7, #0
	bl sub_080681D8
	adds r1, r4, #0
	adds r1, #0x2c
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080C1CC8
	ldrb r3, [r1]
	adds r0, r4, #0
	mov r1, r8
	adds r2, r5, #0
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _080C1CC4 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _080C1CD0
	.align 2, 0
_080C1CB8: .4byte 0x0820BD70
_080C1CBC: .4byte 0x0824B660
_080C1CC0: .4byte 0x081F4234
_080C1CC4: .4byte sub_0803B9D0
_080C1CC8:
	adds r0, r4, #0
	bl EntityDelete
	movs r0, #0
_080C1CD0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080C1CDC
sub_080C1CDC: @ 0x080C1CDC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080C1CEC
	cmp r0, #1
	beq _080C1CFE
	b _080C1D04
_080C1CEC:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080C1CFE:
	adds r0, r4, #0
	bl sub_0803F17C
_080C1D04:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C1D0C
sub_080C1D0C: @ 0x080C1D0C
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

	thumb_func_start sub_080C1D38
sub_080C1D38: @ 0x080C1D38
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r2, _080C1D60 @ =sub_080C1B54
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _080C1D66
	bl sub_080C1D70
	cmp r0, #0
	bne _080C1D64
	adds r0, r4, #0
	bl EntityDelete
	movs r0, #0
	b _080C1D68
	.align 2, 0
_080C1D60: .4byte sub_080C1B54
_080C1D64:
	str r5, [r4, #0x10]
_080C1D66:
	adds r0, r4, #0
_080C1D68:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080C1D70
sub_080C1D70: @ 0x080C1D70
	push {lr}
	bl sub_080C1D88
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080C1D88
sub_080C1D88: @ 0x080C1D88
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r6, _080C1DD0 @ =0x0820BD70
	ldr r7, _080C1DD4 @ =0x0824B660
	ldr r0, _080C1DD8 @ =0x081F4234
	bl sub_0803AFB8
	adds r5, r0, #0
	cmp r5, #0
	blt _080C1DE0
	adds r0, r6, #0
	bl sub_080681D8
	adds r1, r4, #0
	adds r1, #0x2c
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080C1DE0
	ldrb r3, [r1]
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_0803B924
	cmp r0, #0
	beq _080C1DE0
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #9
	strb r0, [r1]
	ldr r0, _080C1DDC @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _080C1DE8
	.align 2, 0
_080C1DD0: .4byte 0x0820BD70
_080C1DD4: .4byte 0x0824B660
_080C1DD8: .4byte 0x081F4234
_080C1DDC: .4byte sub_0803B9D0
_080C1DE0:
	adds r0, r4, #0
	bl EntityDelete
	movs r0, #0
_080C1DE8:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080C1DF0
sub_080C1DF0: @ 0x080C1DF0
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0
	bne _080C1E00
	strh r1, [r2, #0x16]
	b _080C1E06
_080C1E00:
	movs r0, #0x80
	lsls r0, r0, #8
	strh r0, [r2, #0x16]
_080C1E06:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyFleamanCreate
EnemyFleamanCreate: @ 0x080C1E0C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_080C1E88
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080C1E7A
	adds r1, r4, #0
	adds r1, #0x5c
	movs r5, #0
	movs r0, #0x14
	strb r0, [r1]
	movs r6, #1
	strb r6, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r0, _080C1E50 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _080C1E54
	movs r0, #3
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	b _080C1E7A
	.align 2, 0
_080C1E50: .4byte gEwramData
_080C1E54:
	ldrh r1, [r4, #0x30]
	ldrh r0, [r4, #0x32]
	ands r0, r1
	cmp r0, #0xff
	bne _080C1E62
	strb r6, [r4, #0x14]
	b _080C1E64
_080C1E62:
	strb r2, [r4, #0x14]
_080C1E64:
	ldr r1, _080C1E80 @ =sub_080C242C
	ldr r2, _080C1E84 @ =sub_080C2458
	adds r0, r4, #0
	bl sub_0806D244
	ldrb r0, [r4, #0x14]
	cmp r0, #1
	beq _080C1E7A
	adds r0, r4, #0
	bl sub_0806AF98
_080C1E7A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C1E80: .4byte sub_080C242C
_080C1E84: .4byte sub_080C2458

	thumb_func_start sub_080C1E88
sub_080C1E88: @ 0x080C1E88
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r7, _080C1EF8 @ =0x0820BD94
	ldr r0, _080C1EFC @ =0x0824B92C
	mov r8, r0
	ldr r6, _080C1F00 @ =0x081F423C
	adds r0, r6, #0
	bl sub_0803AFB8
	adds r5, r0, #0
	cmp r5, #0
	bge _080C1EB2
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _080C1F0A
_080C1EB2:
	adds r0, r7, #0
	bl sub_080681D8
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080C1F0A
	adds r0, r4, #0
	adds r0, #0x2c
	strb r1, [r0]
	ldrb r3, [r0]
	adds r0, r4, #0
	mov r1, r8
	adds r2, r5, #0
	bl sub_0803B924
	cmp r0, #0
	beq _080C1F0A
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	cmp r0, #0
	beq _080C1F08
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _080C1F04 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _080C1F12
	.align 2, 0
_080C1EF8: .4byte 0x0820BD94
_080C1EFC: .4byte 0x0824B92C
_080C1F00: .4byte 0x081F423C
_080C1F04: .4byte sub_0803B9D0
_080C1F08:
	strb r0, [r4, #0x15]
_080C1F0A:
	adds r0, r4, #0
	bl EntityDelete
	movs r0, #0
_080C1F12:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start EnemyFleamanUpdate
EnemyFleamanUpdate: @ 0x080C1F1C
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _080C1F4E
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080C1F34
	cmp r0, #1
	beq _080C1F46
	b _080C1FB4
_080C1F34:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080C1F46:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080C1FB4
_080C1F4E:
	cmp r0, #0xff
	beq _080C1F58
	adds r0, r4, #0
	bl sub_0806AE54
_080C1F58:
	adds r0, r4, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _080C1F68
	ldrb r0, [r4, #0xa]
	cmp r0, #0xff
	bne _080C1F7C
_080C1F68:
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C1F86
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080C1F86
	cmp r0, #0xff
	beq _080C1F86
_080C1F7C:
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	b _080C1FB4
_080C1F86:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080C1F92
	cmp r0, #0xff
	beq _080C1F9A
	b _080C1FA0
_080C1F92:
	adds r0, r4, #0
	bl sub_080C1FBC
	b _080C1FA0
_080C1F9A:
	adds r0, r4, #0
	bl sub_080C2388
_080C1FA0:
	adds r0, r4, #0
	bl sub_0806DF20
	ldrb r0, [r4, #0xa]
	cmp r0, #0xff
	beq _080C1FB4
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
_080C1FB4:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C1FBC
sub_080C1FBC: @ 0x080C1FBC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r2, _080C1FF0 @ =gEwramData
	movs r0, #0x12
	ldrsh r1, [r5, r0]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080C1FF4 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r6, r1, r0
	ldrb r0, [r5, #0xb]
	cmp r0, #6
	bls _080C1FE4
	b _080C2378
_080C1FE4:
	lsls r0, r0, #2
	ldr r1, _080C1FF8 @ =_080C1FFC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C1FF0: .4byte gEwramData
_080C1FF4: .4byte 0x000004E4
_080C1FF8: .4byte _080C1FFC
_080C1FFC: @ jump table
	.4byte _080C2018 @ case 0
	.4byte _080C205E @ case 1
	.4byte _080C2072 @ case 2
	.4byte _080C20E2 @ case 3
	.4byte _080C2120 @ case 4
	.4byte _080C2254 @ case 5
	.4byte _080C2254 @ case 6
_080C2018:
	adds r1, r5, #0
	adds r1, #0x5c
	movs r4, #0
	movs r0, #0x14
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	strb r4, [r5, #0x15]
	adds r2, r5, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r2, #0x80
	lsls r2, r2, #8
	str r2, [r5, #0x48]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080C2054
	rsbs r0, r2, #0
	str r0, [r5, #0x48]
_080C2054:
	ldrb r0, [r5, #0x14]
	cmp r0, #1
	beq _080C205C
	movs r0, #4
_080C205C:
	strb r0, [r5, #0xb]
_080C205E:
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x4c]
	str r0, [r5, #0x54]
	cmp r6, #0
	beq _080C206C
	b _080C2378
_080C206C:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	b _080C2376
_080C2072:
	ldrb r0, [r5, #0x15]
	cmp r0, #3
	beq _080C20A0
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r1, #0
	movs r0, #3
	strb r0, [r5, #0x15]
	adds r2, r5, #0
	adds r2, #0x6f
	strb r1, [r2]
	adds r1, r5, #0
	adds r1, #0x6e
	strb r0, [r1]
	subs r2, #3
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_080C20A0:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x54]
	adds r1, r1, r0
	str r1, [r5, #0x4c]
	adds r0, r5, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r5, #0
	adds r1, #0x46
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_08002028
	cmp r0, #0
	bne _080C20D0
	b _080C2378
_080C20D0:
	adds r0, r5, #0
	bl sub_0806AF98
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
	b _080C2378
_080C20E2:
	adds r0, r5, #0
	adds r0, #0x6f
	movs r4, #0
	strb r4, [r0]
	subs r0, #1
	strb r4, [r0]
	adds r2, r5, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bhi _080C210A
	b _080C2378
_080C210A:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	strb r4, [r5, #0x15]
	b _080C2378
_080C2120:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	adds r0, r5, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C2142
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r2, [r0]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	b _080C214C
_080C2142:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x40
	orrs r1, r2
_080C214C:
	strb r1, [r0]
	adds r6, r0, #0
	bl RandomNumberGenerator
	movs r1, #0x1e
	bl __umodsi3
	cmp r0, #0xd
	bhi _080C21A4
	lsls r0, r0, #2
	ldr r1, _080C2168 @ =_080C216C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C2168: .4byte _080C216C
_080C216C: @ jump table
	.4byte _080C21D4 @ case 0
	.4byte _080C21D4 @ case 1
	.4byte _080C21D4 @ case 2
	.4byte _080C21D4 @ case 3
	.4byte _080C21D4 @ case 4
	.4byte _080C21D4 @ case 5
	.4byte _080C21D4 @ case 6
	.4byte _080C21D4 @ case 7
	.4byte _080C21D4 @ case 8
	.4byte _080C21D4 @ case 9
	.4byte _080C21F8 @ case 10
	.4byte _080C220C @ case 11
	.4byte _080C220C @ case 12
	.4byte _080C220C @ case 13
_080C21A4:
	movs r4, #0
	str r4, [r5, #0x48]
	ldr r0, _080C21D0 @ =0xFFFD0000
	str r0, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r5, #0x54]
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	adds r0, #0x6f
	strb r4, [r0]
	adds r1, r5, #0
	adds r1, #0x6e
	movs r0, #1
	strb r0, [r1]
	b _080C222C
	.align 2, 0
_080C21D0: .4byte 0xFFFD0000
_080C21D4:
	movs r0, #0xd0
	lsls r0, r0, #8
	str r0, [r5, #0x48]
	ldr r0, _080C21F4 @ =0xFFFD0000
	str r0, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r5, #0x54]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #6
	b _080C223A
	.align 2, 0
_080C21F4: .4byte 0xFFFD0000
_080C21F8:
	movs r0, #0xd0
	lsls r0, r0, #9
	str r0, [r5, #0x48]
	ldr r0, _080C2208 @ =0xFFFD0000
	str r0, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	b _080C221A
	.align 2, 0
_080C2208: .4byte 0xFFFD0000
_080C220C:
	movs r0, #0xd0
	lsls r0, r0, #8
	str r0, [r5, #0x48]
	ldr r0, _080C2250 @ =0xFFFB0000
	str r0, [r5, #0x4c]
	movs r0, #0xf0
	lsls r0, r0, #6
_080C221A:
	str r0, [r5, #0x54]
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #3
	strb r0, [r5, #0x15]
_080C222C:
	adds r2, r5, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #5
_080C223A:
	strb r0, [r5, #0xb]
	ldrb r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080C2248
	b _080C2378
_080C2248:
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	str r0, [r5, #0x48]
	b _080C2378
	.align 2, 0
_080C2250: .4byte 0xFFFB0000
_080C2254:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldr r2, [r5, #0x54]
	adds r1, r1, r2
	str r1, [r5, #0x4c]
	ldrb r0, [r5, #0xb]
	cmp r0, #5
	bne _080C22C8
	cmn r1, r2
	blt _080C2294
	cmp r1, r2
	bgt _080C2294
	adds r1, r5, #0
	adds r1, #0x6f
	movs r0, #0
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x6e
	movs r1, #2
	movs r0, #2
	strb r0, [r2]
	subs r2, #2
	ldrb r0, [r2]
	orrs r1, r0
	strb r1, [r2]
	b _080C22C8
_080C2294:
	adds r2, r5, #0
	adds r2, #0x6e
	ldrb r0, [r2]
	cmp r0, #0
	bne _080C22AC
	adds r1, r5, #0
	adds r1, #0x6f
	strb r0, [r1]
	movs r0, #1
	strb r0, [r2]
	subs r2, #2
	b _080C22C0
_080C22AC:
	cmp r0, #2
	bne _080C22C8
	adds r1, r5, #0
	adds r1, #0x6f
	movs r0, #0
	strb r0, [r1]
	movs r0, #3
	strb r0, [r2]
	adds r2, r5, #0
	adds r2, #0x6c
_080C22C0:
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_080C22C8:
	adds r0, r5, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	adds r0, r5, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov sl, r1
	asrs r0, r0, #0x10
	mov r8, r0
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r7, r0, #0x10
	adds r1, r7, #0
	subs r1, #0xa
	mov r0, r8
	bl sub_08001C1C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r6, r5, #0
	adds r6, #0x46
	cmp r1, #0
	beq _080C2306
	ldrh r0, [r6]
	adds r0, r1, r0
	strh r0, [r6]
_080C2306:
	ldr r0, [r5, #0x48]
	adds r4, r5, #0
	adds r4, #0x42
	cmp r0, #0
	ble _080C232A
	mov r0, r8
	adds r0, #8
	adds r1, r7, #0
	subs r1, #8
	bl sub_08002058
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080C232A
	ldrh r0, [r4]
	adds r0, r1, r0
	strh r0, [r4]
_080C232A:
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bge _080C2352
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	subs r0, #8
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r1, #8
	bl sub_0800207C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080C2352
	ldrh r0, [r4]
	adds r0, r1, r0
	strh r0, [r4]
_080C2352:
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	bl sub_08002028
	cmp r0, #0
	beq _080C2378
	ldrb r0, [r5, #0xb]
	cmp r0, #5
	bne _080C2374
	adds r1, r5, #0
	adds r1, #0x6f
	movs r0, #0
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
_080C2374:
	movs r0, #4
_080C2376:
	strb r0, [r5, #0xb]
_080C2378:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C2388
sub_080C2388: @ 0x080C2388
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xb]
	cmp r5, #1
	beq _080C23EA
	cmp r5, #1
	bgt _080C240E
	cmp r5, #0
	bne _080C240E
	movs r0, #0x72
	bl PlaySong
	adds r0, r4, #0
	bl sub_080683BC
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #2
	strb r0, [r4, #0x15]
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
	movs r0, #0x32
	strb r0, [r4, #0xd]
	movs r0, #0xff
	strb r0, [r4, #0xa]
	str r5, [r4, #0x48]
	str r5, [r4, #0x50]
	str r5, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	movs r0, #1
	strb r0, [r4, #0xb]
_080C23EA:
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	beq _080C240A
	ldr r2, _080C2424 @ =gEwramData
	movs r0, #0x12
	ldrsh r1, [r4, r0]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080C2428 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r1, r1, r0
	ldrb r0, [r1, #0x19]
	subs r0, #1
	strb r0, [r1, #0x19]
_080C240A:
	movs r0, #2
	strb r0, [r4, #0xb]
_080C240E:
	movs r2, #0x80
	lsls r2, r2, #0xc
	movs r3, #0xc0
	lsls r3, r3, #0xb
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_0806BE74
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C2424: .4byte gEwramData
_080C2428: .4byte 0x000004E4

	thumb_func_start sub_080C242C
sub_080C242C: @ 0x080C242C
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

	thumb_func_start sub_080C2458
sub_080C2458: @ 0x080C2458
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
	bgt _080C24A4
	movs r0, #0
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	bl sub_080C2388
_080C24A4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyRipperCreate
EnemyRipperCreate: @ 0x080C24AC
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _080C24D0 @ =0x0820BD94
	ldr r0, _080C24D4 @ =0x0824B92C
	ldr r1, _080C24D8 @ =0x081F423C
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #1
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C24DC
	adds r0, r4, #0
	bl EntityDelete
	b _080C2546
	.align 2, 0
_080C24D0: .4byte 0x0820BD94
_080C24D4: .4byte 0x0824B92C
_080C24D8: .4byte 0x081F423C
_080C24DC:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r0, _080C2514 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _080C2518
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	b _080C2546
	.align 2, 0
_080C2514: .4byte gEwramData
_080C2518:
	movs r3, #1
	strb r3, [r4, #0xa]
	strb r2, [r4, #0xc]
	strb r2, [r4, #0xb]
	ldrh r1, [r4, #0x30]
	ldrh r0, [r4, #0x32]
	ands r0, r1
	cmp r0, #0xff
	bne _080C252E
	strb r3, [r4, #0x14]
	b _080C2530
_080C252E:
	strb r2, [r4, #0x14]
_080C2530:
	ldr r1, _080C2550 @ =sub_0806E1B8
	ldr r2, _080C2554 @ =sub_080C2D70
	adds r0, r4, #0
	bl sub_0806D244
	ldrb r0, [r4, #0x14]
	cmp r0, #1
	beq _080C2546
	adds r0, r4, #0
	bl sub_0806AF98
_080C2546:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C2550: .4byte sub_0806E1B8
_080C2554: .4byte sub_080C2D70

	thumb_func_start EnemyRipperUpdate
EnemyRipperUpdate: @ 0x080C2558
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _080C258A
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080C2570
	cmp r0, #1
	beq _080C2582
	b _080C25F0
_080C2570:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080C2582:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080C25F0
_080C258A:
	cmp r0, #0xff
	beq _080C2594
	adds r0, r4, #0
	bl sub_0806AE54
_080C2594:
	adds r0, r4, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _080C25A4
	ldrb r0, [r4, #0xa]
	cmp r0, #0xff
	bne _080C25B8
_080C25A4:
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C25C2
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080C25C2
	cmp r0, #0xff
	beq _080C25C2
_080C25B8:
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	b _080C25F0
_080C25C2:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080C25CE
	cmp r0, #0xff
	beq _080C25D6
	b _080C25DC
_080C25CE:
	adds r0, r4, #0
	bl sub_080C25F8
	b _080C25DC
_080C25D6:
	adds r0, r4, #0
	bl sub_080C2A18
_080C25DC:
	adds r0, r4, #0
	bl sub_0806DF20
	ldrb r0, [r4, #0xa]
	cmp r0, #0xff
	beq _080C25F0
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
_080C25F0:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C25F8
sub_080C25F8: @ 0x080C25F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r2, _080C262C @ =gEwramData
	movs r0, #0x12
	ldrsh r1, [r5, r0]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080C2630 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r6, r1, r0
	ldrb r0, [r5, #0xb]
	cmp r0, #6
	bls _080C2620
	b _080C29FE
_080C2620:
	lsls r0, r0, #2
	ldr r1, _080C2634 @ =_080C2638
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C262C: .4byte gEwramData
_080C2630: .4byte 0x000004E4
_080C2634: .4byte _080C2638
_080C2638: @ jump table
	.4byte _080C2654 @ case 0
	.4byte _080C268E @ case 1
	.4byte _080C26A2 @ case 2
	.4byte _080C2712 @ case 3
	.4byte _080C2750 @ case 4
	.4byte _080C285C @ case 5
	.4byte _080C285C @ case 6
_080C2654:
	adds r1, r5, #0
	adds r1, #0x5c
	movs r4, #0
	movs r0, #0x14
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	strb r4, [r5, #0x15]
	movs r2, #0x80
	lsls r2, r2, #8
	str r2, [r5, #0x48]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080C2684
	rsbs r0, r2, #0
	str r0, [r5, #0x48]
_080C2684:
	ldrb r0, [r5, #0x14]
	cmp r0, #1
	beq _080C268C
	movs r0, #4
_080C268C:
	strb r0, [r5, #0xb]
_080C268E:
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x4c]
	str r0, [r5, #0x54]
	cmp r6, #0
	beq _080C269C
	b _080C29FE
_080C269C:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	b _080C29FC
_080C26A2:
	ldrb r0, [r5, #0x15]
	cmp r0, #3
	beq _080C26D0
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r1, #0
	movs r0, #3
	strb r0, [r5, #0x15]
	adds r2, r5, #0
	adds r2, #0x6f
	strb r1, [r2]
	adds r1, r5, #0
	adds r1, #0x6e
	strb r0, [r1]
	subs r2, #3
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_080C26D0:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x54]
	adds r1, r1, r0
	str r1, [r5, #0x4c]
	adds r0, r5, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r5, #0
	adds r1, #0x46
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_08002028
	cmp r0, #0
	bne _080C2700
	b _080C29FE
_080C2700:
	adds r0, r5, #0
	bl sub_0806AF98
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
	b _080C29FE
_080C2712:
	adds r0, r5, #0
	adds r0, #0x6f
	movs r4, #0
	strb r4, [r0]
	subs r0, #1
	strb r4, [r0]
	adds r2, r5, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bhi _080C273A
	b _080C29FE
_080C273A:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	strb r4, [r5, #0x15]
	b _080C29FE
_080C2750:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	adds r0, r5, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C2772
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r2, [r0]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	b _080C277C
_080C2772:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x40
	orrs r1, r2
_080C277C:
	strb r1, [r0]
	adds r6, r0, #0
	bl RandomNumberGenerator
	movs r1, #6
	bl __umodsi3
	adds r4, r0, #0
	cmp r4, #3
	beq _080C27BC
	cmp r4, #3
	blo _080C2798
	cmp r4, #4
	beq _080C27E0
_080C2798:
	movs r0, #0xd0
	lsls r0, r0, #8
	str r0, [r5, #0x48]
	ldr r0, _080C27B8 @ =0xFFFD0000
	str r0, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r5, #0x54]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #6
	b _080C280E
	.align 2, 0
_080C27B8: .4byte 0xFFFD0000
_080C27BC:
	movs r0, #0xd0
	lsls r0, r0, #9
	str r0, [r5, #0x48]
	ldr r0, _080C27DC @ =0xFFFD0000
	str r0, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	strb r4, [r5, #0x15]
	b _080C2800
	.align 2, 0
_080C27DC: .4byte 0xFFFD0000
_080C27E0:
	movs r0, #0xd0
	lsls r0, r0, #8
	str r0, [r5, #0x48]
	ldr r0, _080C2858 @ =0xFFFD0000
	str r0, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #5
	str r0, [r5, #0x54]
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #3
	strb r0, [r5, #0x15]
_080C2800:
	adds r2, r5, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #5
_080C280E:
	strb r0, [r5, #0xb]
	ldrb r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080C2820
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	str r0, [r5, #0x48]
_080C2820:
	adds r0, r5, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080C2830
	rsbs r0, r0, #0
_080C2830:
	cmp r0, #0x3f
	ble _080C2836
	b _080C29FE
_080C2836:
	adds r0, r5, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r5, #0
	adds r1, #0x4a
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r0, r0, r1
	subs r0, #1
	cmp r0, #0xee
	bls _080C2850
	b _080C29FE
_080C2850:
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	str r0, [r5, #0x48]
	b _080C29FE
	.align 2, 0
_080C2858: .4byte 0xFFFD0000
_080C285C:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldr r2, [r5, #0x54]
	adds r1, r1, r2
	str r1, [r5, #0x4c]
	ldrb r0, [r5, #0xb]
	cmp r0, #5
	bne _080C294E
	ldrb r0, [r5, #0x15]
	cmp r0, #3
	bne _080C28D6
	cmn r1, r2
	blt _080C28A2
	cmp r1, r2
	bgt _080C28A2
	adds r1, r5, #0
	adds r1, #0x6f
	movs r0, #0
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x6e
	movs r1, #2
	movs r0, #2
	strb r0, [r2]
	subs r2, #2
	ldrb r0, [r2]
	orrs r1, r0
	strb r1, [r2]
	b _080C28D6
_080C28A2:
	adds r2, r5, #0
	adds r2, #0x6e
	ldrb r0, [r2]
	cmp r0, #0
	bne _080C28BA
	adds r1, r5, #0
	adds r1, #0x6f
	strb r0, [r1]
	movs r0, #1
	strb r0, [r2]
	subs r2, #2
	b _080C28CE
_080C28BA:
	cmp r0, #2
	bne _080C28D6
	adds r1, r5, #0
	adds r1, #0x6f
	movs r0, #0
	strb r0, [r1]
	movs r0, #3
	strb r0, [r2]
	adds r2, r5, #0
	adds r2, #0x6c
_080C28CE:
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_080C28D6:
	ldrb r0, [r5, #0x15]
	cmp r0, #1
	bne _080C2912
	adds r7, r5, #0
	adds r7, #0x6e
	ldr r4, _080C2A0C @ =0x0000FFFF
	ldrh r6, [r7]
	cmp r6, #3
	bne _080C28F6
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	strb r6, [r5, #0x15]
_080C28F6:
	ldrh r0, [r7]
	ands r4, r0
	cmp r4, #2
	bne _080C2912
	adds r4, r5, #0
	adds r4, #0x20
	ldrb r0, [r4]
	cmp r0, #0
	beq _080C2912
	adds r0, r5, #0
	bl sub_080C2ABC
	movs r0, #0
	strb r0, [r4]
_080C2912:
	ldrb r0, [r5, #0x15]
	cmp r0, #3
	bne _080C294E
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	cmp r0, #0
	bne _080C294E
	ldr r0, [r5, #0x4c]
	ldr r1, _080C2A10 @ =0x00001FFF
	adds r0, r0, r1
	ldr r1, _080C2A14 @ =0x00003FFE
	cmp r0, r1
	bhi _080C294E
	adds r1, r5, #0
	adds r1, #0x20
	ldrb r0, [r1]
	cmp r0, #0
	bne _080C294E
	movs r4, #1
	strb r4, [r1]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	strb r4, [r5, #0x15]
_080C294E:
	adds r0, r5, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	adds r0, r5, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov sl, r2
	asrs r0, r0, #0x10
	mov r8, r0
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r7, r0, #0x10
	adds r1, r7, #0
	subs r1, #0xa
	mov r0, r8
	bl sub_08001C1C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r6, r5, #0
	adds r6, #0x46
	cmp r1, #0
	beq _080C298C
	ldrh r0, [r6]
	adds r0, r1, r0
	strh r0, [r6]
_080C298C:
	ldr r0, [r5, #0x48]
	adds r4, r5, #0
	adds r4, #0x42
	cmp r0, #0
	ble _080C29B0
	mov r0, r8
	adds r0, #8
	adds r1, r7, #0
	subs r1, #8
	bl sub_08002058
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080C29B0
	ldrh r0, [r4]
	adds r0, r1, r0
	strh r0, [r4]
_080C29B0:
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bge _080C29D8
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, #8
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r1, #8
	bl sub_0800207C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080C29D8
	ldrh r0, [r4]
	adds r0, r1, r0
	strh r0, [r4]
_080C29D8:
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	bl sub_08002028
	cmp r0, #0
	beq _080C29FE
	ldrb r0, [r5, #0xb]
	cmp r0, #5
	bne _080C29FA
	adds r1, r5, #0
	adds r1, #0x6f
	movs r0, #0
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
_080C29FA:
	movs r0, #4
_080C29FC:
	strb r0, [r5, #0xb]
_080C29FE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C2A0C: .4byte 0x0000FFFF
_080C2A10: .4byte 0x00001FFF
_080C2A14: .4byte 0x00003FFE

	thumb_func_start sub_080C2A18
sub_080C2A18: @ 0x080C2A18
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xb]
	cmp r5, #1
	beq _080C2A7A
	cmp r5, #1
	bgt _080C2A9E
	cmp r5, #0
	bne _080C2A9E
	movs r0, #0x72
	bl PlaySong
	adds r0, r4, #0
	bl sub_080683BC
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #2
	strb r0, [r4, #0x15]
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
	movs r0, #0x32
	strb r0, [r4, #0xd]
	movs r0, #0xff
	strb r0, [r4, #0xa]
	str r5, [r4, #0x48]
	str r5, [r4, #0x50]
	str r5, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	movs r0, #1
	strb r0, [r4, #0xb]
_080C2A7A:
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	beq _080C2A9A
	ldr r2, _080C2AB4 @ =gEwramData
	movs r0, #0x12
	ldrsh r1, [r4, r0]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080C2AB8 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r1, r1, r0
	ldrb r0, [r1, #0x19]
	subs r0, #1
	strb r0, [r1, #0x19]
_080C2A9A:
	movs r0, #2
	strb r0, [r4, #0xb]
_080C2A9E:
	movs r2, #0x80
	lsls r2, r2, #0xc
	movs r3, #0xc0
	lsls r3, r3, #0xb
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_0806BE74
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C2AB4: .4byte gEwramData
_080C2AB8: .4byte 0x000004E4

	thumb_func_start sub_080C2ABC
sub_080C2ABC: @ 0x080C2ABC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _080C2B58 @ =0x0820BD94
	mov r8, r0
	ldr r6, _080C2B5C @ =0x0824B92C
	ldr r7, _080C2B60 @ =0x081F423C
	ldr r2, _080C2B64 @ =sub_080C2B74
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	beq _080C2B4A
	str r6, [sp]
	adds r1, r7, #0
	mov r2, r8
	movs r3, #1
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C2AF6
	adds r0, r5, #0
	bl EntityDelete
_080C2AF6:
	str r4, [r5, #0x24]
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsrs r1, r0, #3
	subs r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x3c
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0xb
	strb r0, [r1]
	ldr r2, _080C2B68 @ =sub_080C2D20
	ldr r3, _080C2B6C @ =sub_080C2DC4
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_0804277C
	ldr r4, _080C2B70 @ =0x0808FCFC
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08042884
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080428F0
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2]
_080C2B4A:
	adds r0, r5, #0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080C2B58: .4byte 0x0820BD94
_080C2B5C: .4byte 0x0824B92C
_080C2B60: .4byte 0x081F423C
_080C2B64: .4byte sub_080C2B74
_080C2B68: .4byte sub_080C2D20
_080C2B6C: .4byte sub_080C2DC4
_080C2B70: .4byte 0x0808FCFC

	thumb_func_start sub_080C2B74
sub_080C2B74: @ 0x080C2B74
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r5, [r4, #0x24]
	bl sub_0806AE54
	adds r0, r4, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _080C2B94
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	beq _080C2B94
	cmp r0, #6
	bne _080C2BAC
_080C2B94:
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C2BB6
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080C2BB6
	cmp r0, #5
	beq _080C2BB6
	cmp r0, #6
	beq _080C2BB6
_080C2BAC:
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
	b _080C2D18
_080C2BB6:
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bls _080C2BBE
	b _080C2CE8
_080C2BBE:
	lsls r0, r0, #2
	ldr r1, _080C2BC8 @ =_080C2BCC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C2BC8: .4byte _080C2BCC
_080C2BCC: @ jump table
	.4byte _080C2BE8 @ case 0
	.4byte _080C2BEE @ case 1
	.4byte _080C2C04 @ case 2
	.4byte _080C2C4C @ case 3
	.4byte _080C2C72 @ case 4
	.4byte _080C2C88 @ case 5
	.4byte _080C2CB6 @ case 6
_080C2BE8:
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_080C2BEE:
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r4, #0x48]
	movs r1, #0
	str r1, [r4, #0x4c]
	movs r0, #0x50
	str r0, [r4, #0x50]
	str r1, [r4, #0x54]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_080C2C04:
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
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080C2C2E
	ldr r0, [r4, #0x40]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	b _080C2C32
_080C2C2E:
	ldr r0, [r4, #0x40]
	ldr r1, _080C2C84 @ =0xFFF40000
_080C2C32:
	adds r0, r0, r1
	ldr r1, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, _080C2C84 @ =0xFFF40000
	adds r0, r0, r1
	ldr r1, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_080C2C4C:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080C2C66
	ldr r0, [r4, #0x48]
	rsbs r0, r0, #0
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x50]
	rsbs r0, r0, #0
	str r0, [r4, #0x50]
_080C2C66:
	movs r0, #0x89
	bl PlaySong
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_080C2C72:
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x50]
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	str r1, [r4, #0x40]
	b _080C2CE8
	.align 2, 0
_080C2C84: .4byte 0xFFF40000
_080C2C88:
	ldrb r2, [r4, #0xb]
	adds r1, r2, #0
	cmp r1, #0
	bne _080C2CA6
	str r1, [r4, #0x50]
	str r1, [r4, #0x48]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #0x54]
	adds r0, r2, #1
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
_080C2CA6:
	ldr r0, [r4, #0x4c]
	ldr r1, [r4, #0x54]
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	ldr r1, [r4, #0x44]
	adds r1, r1, r0
	str r1, [r4, #0x44]
	b _080C2CE8
_080C2CB6:
	ldrb r2, [r4, #0xb]
	adds r1, r2, #0
	cmp r1, #0
	bne _080C2CCE
	str r1, [r4, #0x54]
	str r1, [r4, #0x50]
	str r1, [r4, #0x4c]
	movs r0, #5
	strb r0, [r4, #0xd]
	adds r0, r2, #1
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
_080C2CCE:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080C2CE8
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080C2CE8:
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
	movs r1, #0x80
	rsbs r1, r1, #0
	movs r2, #0x40
	rsbs r2, r2, #0
	movs r3, #0xf8
	lsls r3, r3, #1
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08068AD4
	cmp r0, #0
	bne _080C2D18
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080C2D18:
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080C2D20
sub_080C2D20: @ 0x080C2D20
	push {r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	mov r2, sp
	adds r0, #0x3c
	ldrb r0, [r0]
	movs r4, #0
	movs r1, #0
	strh r0, [r2]
	mov r0, sp
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	ldr r0, [r5, #0x40]
	str r0, [sp, #8]
	ldr r0, [r5, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	adds r1, r5, #0
	adds r1, #0x2d
	movs r0, #8
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #6
	strb r0, [r5, #0xa]
	strb r4, [r5, #0xc]
	strb r4, [r5, #0xb]
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080C2D70
sub_080C2D70: @ 0x080C2D70
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
	bgt _080C2DBC
	movs r0, #0
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	bl sub_080C2A18
_080C2DBC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C2DC4
sub_080C2DC4: @ 0x080C2DC4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x2d
	movs r4, #0
	movs r0, #8
	strb r0, [r1]
	movs r0, #0x9d
	lsls r0, r0, #1
	bl PlaySong
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #5
	strb r0, [r5, #0xa]
	strb r4, [r5, #0xc]
	strb r4, [r5, #0xb]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start EnemyGhostDancerCreate
EnemyGhostDancerCreate: @ 0x080C2DF8
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080C2E74
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080C2E64
	adds r1, r4, #0
	adds r1, #0x5c
	movs r5, #0
	movs r0, #3
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0806B04C
	movs r3, #1
	strb r3, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	ldr r0, _080C2E38 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080C2E3C
	movs r0, #5
	strb r0, [r4, #0xa]
	b _080C2E64
	.align 2, 0
_080C2E38: .4byte gEwramData
_080C2E3C:
	movs r2, #0
	strh r0, [r4, #0x14]
	strb r2, [r4, #0x16]
	strb r3, [r4, #0x17]
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	strb r2, [r4, #0x18]
	strb r2, [r4, #0x19]
	ldr r1, _080C2E6C @ =sub_080C339C
	ldr r2, _080C2E70 @ =sub_080C32EC
	adds r0, r4, #0
	bl sub_0806D244
_080C2E64:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C2E6C: .4byte sub_080C339C
_080C2E70: .4byte sub_080C32EC

	thumb_func_start sub_080C2E74
sub_080C2E74: @ 0x080C2E74
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r7, _080C2EE8 @ =0x0820BDD8
	ldr r0, _080C2EEC @ =0x0824BC84
	mov r8, r0
	ldr r6, _080C2EF0 @ =0x081F4244
	adds r0, r6, #0
	bl sub_0803AFB8
	adds r5, r0, #0
	cmp r5, #0
	bge _080C2E9E
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _080C2EF8
_080C2E9E:
	ldrh r1, [r4, #0x30]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r7, #0
	bl sub_08068264
	adds r1, r4, #0
	adds r1, #0x2c
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080C2EF8
	ldrb r3, [r1]
	adds r0, r4, #0
	mov r1, r8
	adds r2, r5, #0
	bl sub_0803B924
	cmp r0, #0
	beq _080C2EF8
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	cmp r0, #0
	beq _080C2EF8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _080C2EF4 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _080C2F00
	.align 2, 0
_080C2EE8: .4byte 0x0820BDD8
_080C2EEC: .4byte 0x0824BC84
_080C2EF0: .4byte 0x081F4244
_080C2EF4: .4byte sub_0803B9D0
_080C2EF8:
	adds r0, r4, #0
	bl EntityDelete
	movs r0, #0
_080C2F00:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start EnemyGhostDancerUpdate
EnemyGhostDancerUpdate: @ 0x080C2F0C
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bne _080C2F20
	adds r0, r4, #0
	bl sub_080C336C
	b _080C3054
_080C2F20:
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806D128
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
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _080C3008
	movs r1, #0x18
	ldrsb r1, [r4, r1]
	cmp r1, #1
	beq _080C2F70
	cmp r1, #1
	bgt _080C2F56
	cmp r1, #0
	beq _080C2F60
	b _080C3008
_080C2F56:
	cmp r1, #2
	beq _080C2FB4
	cmp r1, #3
	beq _080C2FC8
	b _080C3008
_080C2F60:
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _080C3008
_080C2F70:
	ldrb r0, [r4, #0x19]
	ands r1, r0
	cmp r1, #0
	beq _080C2F88
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _080C2F9A
_080C2F88:
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #7
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r2]
_080C2F9A:
	ldrb r0, [r4, #0x19]
	adds r1, r0, #1
	strb r1, [r4, #0x19]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x20
	ble _080C3008
	ldrb r0, [r4, #0x18]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0x18]
	strb r1, [r4, #0x19]
	b _080C3008
_080C2FB4:
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #7
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r2]
	b _080C3008
_080C2FC8:
	ldrb r1, [r4, #0x19]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C2FE6
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #7
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r2]
	b _080C2FF4
_080C2FE6:
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_080C2FF4:
	ldrb r0, [r4, #0x19]
	adds r1, r0, #1
	strb r1, [r4, #0x19]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x20
	ble _080C3008
	movs r0, #0
	strb r0, [r4, #0x18]
	strb r0, [r4, #0x19]
_080C3008:
	adds r0, r4, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _080C3022
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _080C3054
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	b _080C3054
_080C3022:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	blt _080C3040
	cmp r0, #2
	ble _080C3032
	cmp r0, #3
	beq _080C303A
	b _080C3040
_080C3032:
	adds r0, r4, #0
	bl sub_080C3190
	b _080C3040
_080C303A:
	adds r0, r4, #0
	bl sub_080C327C
_080C3040:
	adds r0, r4, #0
	bl sub_0806DF20
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _080C3054
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
_080C3054:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C305C
sub_080C305C: @ 0x080C305C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _080C30A2
	cmp r0, #1
	bgt _080C3070
	cmp r0, #0
	beq _080C3076
	b _080C3186
_080C3070:
	cmp r0, #2
	beq _080C3166
	b _080C3186
_080C3076:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080C308A
	ldr r0, [r4, #0x48]
	rsbs r0, r0, #0
	str r0, [r4, #0x48]
_080C308A:
	ldr r0, [r4, #0x48]
	rsbs r0, r0, #0
	str r0, [r4, #0x48]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	b _080C3184
_080C30A2:
	adds r0, r4, #0
	bl sub_0806BDEC
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C30EE
	adds r0, r4, #0
	bl sub_0806BDEC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xa0
	rsbs r1, r1, #0
	cmp r0, r1
	ble _080C30EE
	adds r0, r4, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080C30D0
	rsbs r0, r0, #0
_080C30D0:
	cmp r0, #0x7f
	bgt _080C30EE
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #1
	beq _080C3106
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _080C3106
_080C30EE:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	beq _080C3106
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080C3106:
	adds r0, r4, #0
	bl sub_0806BDEC
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C3142
	adds r0, r4, #0
	bl sub_0806BDEC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xa0
	rsbs r1, r1, #0
	cmp r0, r1
	ble _080C3142
	adds r0, r4, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080C3134
	rsbs r0, r0, #0
_080C3134:
	cmp r0, #0x5f
	bgt _080C3142
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xb]
	b _080C3186
_080C3142:
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0
	bne _080C3186
	ldrb r0, [r5]
	cmp r0, #0
	bne _080C3186
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	b _080C3184
_080C3166:
	ldr r0, [r4, #0x6c]
	ldr r1, _080C318C @ =0xFFFFFF00
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bne _080C3186
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r0, [r4, #0xb]
	subs r0, #1
_080C3184:
	strb r0, [r4, #0xb]
_080C3186:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C318C: .4byte 0xFFFFFF00

	thumb_func_start sub_080C3190
sub_080C3190: @ 0x080C3190
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xb]
	cmp r5, #0
	beq _080C31A0
	cmp r5, #1
	beq _080C31F8
	b _080C3276
_080C31A0:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	str r5, [r4, #0x48]
	str r5, [r4, #0x4c]
	adds r0, r4, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C31CA
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r2, [r0]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	b _080C31D4
_080C31CA:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x40
	orrs r1, r2
_080C31D4:
	strb r1, [r0]
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080C31E6
	ldr r0, [r4, #0x48]
	rsbs r0, r0, #0
	str r0, [r4, #0x48]
_080C31E6:
	movs r1, #0
	movs r0, #0
	strh r0, [r4, #0x14]
	strb r1, [r4, #0x16]
	strb r1, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	b _080C3276
_080C31F8:
	ldrh r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	lsls r0, r0, #1
	str r0, [r4, #0x48]
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	str r1, [r4, #0x40]
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #2
	bl sub_080009E4
	ldr r1, [r4, #0x4c]
	adds r1, r1, r0
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldrh r0, [r4, #0x14]
	adds r0, #0x80
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C3232
	ldrb r0, [r4, #0x16]
	adds r0, #1
	strb r0, [r4, #0x16]
_080C3232:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bne _080C3250
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	movs r1, #1
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080C3250:
	ldrh r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #8
	bl __modsi3
	cmp r0, #0
	bne _080C3276
	ldrb r2, [r4, #0x18]
	ands r5, r2
	cmp r5, #0
	bne _080C3276
	ldrb r1, [r4, #0x17]
	movs r0, #1
	subs r0, r0, r1
	strb r0, [r4, #0x17]
	adds r0, r2, #1
	strb r0, [r4, #0x18]
	movs r0, #0
	strb r0, [r4, #0x19]
_080C3276:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080C327C
sub_080C327C: @ 0x080C327C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080C328C
	cmp r0, #1
	beq _080C32D0
	b _080C32E4
_080C328C:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
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
	movs r1, #7
	rsbs r1, r1, #0
	ands r0, r1
	movs r2, #2
	orrs r0, r2
	strb r0, [r3]
	movs r0, #3
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	ldrb r0, [r3]
	ands r1, r0
	orrs r1, r2
	strb r1, [r3]
_080C32D0:
	adds r1, r4, #0
	adds r1, #0x59
	ldrb r2, [r1]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _080C32E4
	movs r0, #8
	orrs r0, r2
	strb r0, [r1]
_080C32E4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C32EC
sub_080C32EC: @ 0x080C32EC
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
	bgt _080C3364
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
	movs r0, #3
	strb r0, [r6, #0xa]
	movs r0, #0
	strb r0, [r6, #0xb]
	movs r0, #0x6d
	bl PlaySong
	adds r0, r6, #0
	bl sub_080C327C
_080C3364:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C336C
sub_080C336C: @ 0x080C336C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080C337C
	cmp r0, #1
	beq _080C338E
	b _080C3394
_080C337C:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080C338E:
	adds r0, r4, #0
	bl sub_0803F17C
_080C3394:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C339C
sub_080C339C: @ 0x080C339C
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

	thumb_func_start EnemySkeletonCreate
EnemySkeletonCreate: @ 0x080C33C8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _080C3404 @ =0x0820BE3C
	ldr r0, _080C3408 @ =0x0824C910
	ldr r1, _080C340C @ =0x081F424C
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080C33FC
	ldrb r1, [r4, #0x1a]
	movs r0, #1
	movs r6, #0
	movs r5, #0
	orrs r0, r1
	strb r0, [r4, #0x1a]
	ldr r1, _080C3410 @ =sub_080C4148
	adds r0, r4, #0
	bl sub_080C46AC
	cmp r0, #0
	bne _080C3414
_080C33FC:
	adds r0, r4, #0
	bl EntityDelete
	b _080C34E4
	.align 2, 0
_080C3404: .4byte 0x0820BE3C
_080C3408: .4byte 0x0824C910
_080C340C: .4byte 0x081F424C
_080C3410: .4byte sub_080C4148
_080C3414:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _080C343C @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080C3440
	movs r0, #5
	strb r0, [r4, #0xa]
	b _080C34E0
	.align 2, 0
_080C343C: .4byte gEwramData
_080C3440:
	movs r0, #1
	bl sub_0803E654
	adds r3, r0, #0
	cmp r3, #0
	bge _080C345A
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _080C34E4
_080C345A:
	movs r5, #0
	strh r3, [r4, #0x20]
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
	ldrb r1, [r2]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
	strb r5, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r1, _080C34EC @ =sub_0806E1B8
	ldr r2, _080C34F0 @ =sub_080C4624
	adds r0, r4, #0
	bl sub_0806D244
	adds r0, r4, #0
	bl sub_0806AF98
	adds r0, r4, #0
	bl sub_08002188
	strh r0, [r4, #0x22]
	adds r1, r0, #0
	adds r1, #0x20
	strh r1, [r4, #0x14]
	subs r0, #0x20
	strh r0, [r4, #0x16]
	ldr r1, _080C34F4 @ =sub_080C43C4
	adds r0, r4, #0
	bl sub_080C46AC
	cmp r0, #0
	beq _080C34E4
	adds r2, r0, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0x1a]
	movs r1, #4
	orrs r0, r1
	strb r0, [r4, #0x1a]
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	strb r1, [r4, #0xa]
_080C34E0:
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
_080C34E4:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C34EC: .4byte sub_0806E1B8
_080C34F0: .4byte sub_080C4624
_080C34F4: .4byte sub_080C43C4

	thumb_func_start EnemySkeletonUpdate
EnemySkeletonUpdate: @ 0x080C34F8
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080C3514
	ldr r1, _080C3510 @ =0xFFFFF8F8
	b _080C3518
	.align 2, 0
_080C3510: .4byte 0xFFFFF8F8
_080C3514:
	movs r1, #0xe1
	lsls r1, r1, #3
_080C3518:
	adds r0, r1, #0
	ldrh r1, [r4, #0x1e]
	adds r0, r0, r1
	strh r0, [r4, #0x1e]
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	movs r2, #0x80
	lsls r2, r2, #9
	movs r1, #0
	str r1, [sp]
	ldrh r1, [r4, #0x20]
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bne _080C3546
	adds r0, r4, #0
	bl sub_080C45E8
	b _080C35C6
_080C3546:
	cmp r0, #0xff
	bne _080C3552
	adds r0, r4, #0
	bl sub_080C3AB4
	b _080C35C6
_080C3552:
	adds r0, r4, #0
	bl sub_0806CC20
	cmp r0, #0
	bne _080C35C6
	bl RandomNumberGenerator
	movs r1, #0x50
	bl __umodsi3
	adds r0, #0x28
	strh r0, [r4, #0x12]
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bhi _080C35BA
	lsls r0, r0, #2
	ldr r1, _080C357C @ =_080C3580
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C357C: .4byte _080C3580
_080C3580: @ jump table
	.4byte _080C3594 @ case 0
	.4byte _080C359C @ case 1
	.4byte _080C35A4 @ case 2
	.4byte _080C35AC @ case 3
	.4byte _080C35B4 @ case 4
_080C3594:
	adds r0, r4, #0
	bl sub_080C35D0
	b _080C35BA
_080C359C:
	adds r0, r4, #0
	bl sub_080C36E8
	b _080C35BA
_080C35A4:
	adds r0, r4, #0
	bl sub_080C390C
	b _080C35BA
_080C35AC:
	adds r0, r4, #0
	bl sub_080C3958
	b _080C35BA
_080C35B4:
	adds r0, r4, #0
	bl sub_080C39F4
_080C35BA:
	adds r0, r4, #0
	bl sub_0806DF20
	adds r0, r4, #0
	bl sub_0806E314
_080C35C6:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C35D0
sub_080C35D0: @ 0x080C35D0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	movs r0, #0
	mov sb, r0
	ldrh r0, [r5, #0x16]
	mov r8, r0
	ldrh r4, [r5, #0x14]
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _080C35F0
	cmp r0, #1
	beq _080C360E
	b _080C36D6
_080C35F0:
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _080C3606
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080C3606:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	b _080C36D6
_080C360E:
	adds r0, r5, #0
	bl sub_08002188
	ldrh r1, [r5, #0x22]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _080C3650
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	bl sub_08002188
	cmp r4, r0
	blt _080C3646
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x28
	rsbs r1, r1, #0
	cmp r0, r1
	bge _080C3670
_080C3646:
	ldrb r1, [r6]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	b _080C366E
_080C3650:
	mov r0, r8
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	bl sub_08002188
	cmp r4, r0
	bgt _080C3668
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x28
	ble _080C3670
_080C3668:
	ldrb r0, [r6]
	movs r1, #0x40
	orrs r0, r1
_080C366E:
	strb r0, [r6]
_080C3670:
	movs r1, #0xc0
	lsls r1, r1, #7
	ldr r2, _080C36E4 @ =0x08528948
	adds r0, r5, #0
	movs r3, #0xc
	bl sub_0806CAF8
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _080C368A
	movs r0, #1
	mov sb, r0
_080C368A:
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806B120
	cmp r0, #0
	beq _080C369A
	movs r0, #1
	mov sb, r0
_080C369A:
	mov r0, sb
	cmp r0, #0
	beq _080C36BA
	ldrb r2, [r6]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6]
_080C36BA:
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r5, #0
	movs r2, #0x80
	bl sub_0806E29C
	cmp r0, #0
	beq _080C36D6
	movs r1, #0
	str r1, [r5, #0x48]
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
_080C36D6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C36E4: .4byte 0x08528948

	thumb_func_start sub_080C36E8
sub_080C36E8: @ 0x080C36E8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xb]
	cmp r5, #1
	beq _080C3758
	cmp r5, #1
	bgt _080C36FC
	cmp r5, #0
	beq _080C3702
	b _080C3902
_080C36FC:
	cmp r5, #2
	beq _080C37F2
	b _080C3902
_080C3702:
	adds r0, r4, #0
	bl sub_0806BDEC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080C3712
	rsbs r0, r0, #0
_080C3712:
	cmp r0, #0x40
	ble _080C3732
	adds r0, r4, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _080C3726
	rsbs r1, r1, #0
_080C3726:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _080C3732
	strb r5, [r4, #0xa]
	b _080C38DA
_080C3732:
	bl RandomNumberGenerator
	movs r1, #0x1f
	ands r1, r0
	strh r1, [r4, #0x1c]
	ldrb r1, [r4, #0x1a]
	movs r0, #0xa
	ands r0, r1
	cmp r0, #0xa
	bne _080C374A
	movs r0, #0x40
	strh r0, [r4, #0x1c]
_080C374A:
	movs r0, #1
	strh r0, [r4, #0x1c]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0
	strb r0, [r4, #0xc]
_080C3758:
	adds r0, r4, #0
	bl sub_0806BC40
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080C3778
	ldr r0, [r4, #0x48]
	rsbs r0, r0, #0
	str r0, [r4, #0x48]
_080C3778:
	bl RandomNumberGenerator
	movs r1, #0x3f
	ands r1, r0
	adds r1, #0x80
	adds r0, r4, #0
	movs r2, #0x80
	bl sub_0806C1B0
	cmp r0, #0
	beq _080C3794
	ldr r0, [r4, #0x24]
	rsbs r0, r0, #0
	str r0, [r4, #0x24]
_080C3794:
	ldrb r1, [r4, #0x1a]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	beq _080C37A2
	movs r1, #2
_080C37A2:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, r1
	beq _080C37B6
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080C37B6:
	ldrb r1, [r4, #0x1a]
	movs r0, #0xa
	ands r0, r1
	cmp r0, #0xa
	bne _080C37D0
	movs r0, #0
	str r0, [r4, #0x48]
	adds r2, r4, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	b _080C37DA
_080C37D0:
	adds r2, r4, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
_080C37DA:
	strb r0, [r2]
	bl RandomNumberGenerator
	movs r1, #7
	ands r1, r0
	adds r1, #1
	movs r2, #0
	strb r1, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	strb r2, [r4, #0xc]
_080C37F2:
	ldrh r1, [r4, #0x1c]
	movs r2, #0x1c
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _080C3800
	subs r0, r1, #1
	strh r0, [r4, #0x1c]
_080C3800:
	ldrb r1, [r4, #0x1a]
	movs r0, #6
	ands r0, r1
	cmp r0, #0
	beq _080C381E
	bl RandomNumberGenerator
	movs r1, #0xf
	ands r1, r0
	cmp r1, #0
	bne _080C381E
	ldrb r1, [r4, #0x1a]
	movs r0, #0x20
	orrs r0, r1
	b _080C3824
_080C381E:
	ldrb r1, [r4, #0x1a]
	movs r0, #0xdf
	ands r0, r1
_080C3824:
	strb r0, [r4, #0x1a]
	ldr r0, [r4, #0x24]
	asrs r1, r0, #4
	subs r0, r0, r1
	str r0, [r4, #0x24]
	ldrb r1, [r4, #0x1a]
	movs r0, #0xa
	ands r0, r1
	cmp r0, #0xa
	bne _080C385C
	movs r0, #0x1c
	ldrsh r5, [r4, r0]
	cmp r5, #0
	bne _080C385C
	bl RandomNumberGenerator
	adds r1, r0, #0
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	beq _080C3852
	movs r0, #4
	b _080C38D8
_080C3852:
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	b _080C3902
_080C385C:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _080C38F2
	movs r1, #0x1c
	ldrsh r5, [r4, r1]
	cmp r5, #0
	bne _080C389A
	adds r0, r4, #0
	movs r1, #0xc4
	movs r2, #0x80
	bl sub_0806C1B0
	cmp r0, #0
	beq _080C389A
	ldrb r0, [r4, #0x1a]
	movs r1, #6
	ands r1, r0
	cmp r1, #0
	beq _080C388C
	movs r0, #4
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	b _080C3894
_080C388C:
	movs r0, #3
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080C3894:
	movs r0, #0
	str r0, [r4, #0x48]
	b _080C3902
_080C389A:
	ldrb r0, [r4, #0x19]
	adds r0, #1
	movs r5, #0
	strb r0, [r4, #0x19]
	bl RandomNumberGenerator
	movs r1, #0x28
	bl __umodsi3
	ldrb r2, [r4, #0x19]
	cmp r0, r2
	bhs _080C38E6
	adds r0, r4, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080C38C2
	rsbs r0, r0, #0
_080C38C2:
	cmp r0, #0x30
	ble _080C38E0
	strb r5, [r4, #0x19]
	bl RandomNumberGenerator
	movs r1, #0x32
	bl __umodsi3
	cmp r0, #0xe
	bhi _080C3902
	movs r0, #2
_080C38D8:
	strb r0, [r4, #0xa]
_080C38DA:
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	b _080C3902
_080C38E0:
	ldrb r0, [r4, #0x19]
	lsrs r0, r0, #1
	strb r0, [r4, #0x19]
_080C38E6:
	ldrb r0, [r4, #0xb]
	subs r0, #1
	movs r1, #0
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
	b _080C38F6
_080C38F2:
	subs r0, #1
	strb r0, [r4, #0xd]
_080C38F6:
	ldr r1, [r4, #0x24]
	ldr r2, _080C3908 @ =0x08528948
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_0806CAF8
_080C3902:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C3908: .4byte 0x08528948

	thumb_func_start sub_080C390C
sub_080C390C: @ 0x080C390C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080C391C
	cmp r0, #1
	beq _080C393C
	b _080C3952
_080C391C:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C3932
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080C3932:
	movs r0, #0x3c
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080C393C:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _080C3952
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080C3952:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C3958
sub_080C3958: @ 0x080C3958
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080C3968
	cmp r0, #1
	beq _080C39D6
	b _080C39EE
_080C3968:
	bl RandomNumberGenerator
	movs r1, #7
	ands r1, r0
	cmp r1, #0
	bne _080C3998
	ldrb r1, [r4, #0x1a]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C3998
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r4, #0x1a]
	movs r1, #0xfe
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r4, #0x1a]
	b _080C39D0
_080C3998:
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r1, _080C39C4 @ =sub_080C43C4
	adds r0, r4, #0
	bl sub_080C46AC
	adds r5, r0, #0
	cmp r5, #0
	bne _080C39C8
	adds r0, r4, #0
	bl EntityDelete
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	b _080C39EE
	.align 2, 0
_080C39C4: .4byte sub_080C43C4
_080C39C8:
	ldrb r1, [r4, #0x1a]
	movs r0, #4
	orrs r0, r1
	strb r0, [r4, #0x1a]
_080C39D0:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080C39D6:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080C39EE
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080C39EE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080C39F4
sub_080C39F4: @ 0x080C39F4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _080C3A16
	cmp r0, #1
	bgt _080C3A08
	cmp r0, #0
	beq _080C3A12
	b _080C3AAC
_080C3A08:
	cmp r0, #2
	beq _080C3A48
	cmp r0, #3
	beq _080C3A94
	b _080C3AAC
_080C3A12:
	movs r0, #1
	strb r0, [r4, #0xb]
_080C3A16:
	ldrb r1, [r4, #0x1a]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080C3A36
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r1, [r4, #0x1a]
	movs r0, #0xf7
	ands r0, r1
	strb r0, [r4, #0x1a]
	b _080C3A42
_080C3A36:
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080C3A42:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080C3A48:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r5, [r0]
	cmp r5, #2
	bne _080C3AAC
	ldr r0, _080C3A88 @ =sub_080C3BD8
	bl sub_0806DFF8
	adds r1, r0, #0
	cmp r1, #0
	beq _080C3A74
	ldrh r0, [r4, #0x10]
	strb r0, [r1, #0x14]
	ldrb r0, [r4, #0x1a]
	ands r5, r0
	cmp r5, #0
	beq _080C3A6E
	movs r0, #1
	strb r0, [r1, #0x18]
_080C3A6E:
	ldrb r0, [r4, #0x18]
	adds r0, #1
	strb r0, [r4, #0x18]
_080C3A74:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	ldrb r1, [r4, #0x1a]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080C3A8C
	movs r0, #0xfd
	b _080C3A8E
	.align 2, 0
_080C3A88: .4byte sub_080C3BD8
_080C3A8C:
	movs r0, #0xfb
_080C3A8E:
	ands r0, r1
	strb r0, [r4, #0x1a]
	b _080C3AAC
_080C3A94:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080C3AAC
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080C3AAC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C3AB4
sub_080C3AB4: @ 0x080C3AB4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080C3ACE
	cmp r0, #1
	beq _080C3B06
	b _080C3B26
_080C3ACE:
	adds r0, r4, #0
	bl sub_080C3E18
	adds r0, r4, #0
	bl sub_080683BC
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
	movs r0, #0xff
	strb r0, [r4, #0xd]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080C3B06:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080C3B26
	ldrh r0, [r4, #0x20]
	bl sub_0803E6BC
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080C3B26:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C3B2C
sub_080C3B2C: @ 0x080C3B2C
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r2, #4]
	bl sub_08021530
	movs r0, #0
	strh r0, [r4, #0x34]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r2]
	subs r0, #0x11
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2d
	movs r0, #8
	strb r0, [r1]
	ldrb r1, [r4, #0x18]
	cmp r1, #0
	bne _080C3B74
	movs r0, #0x32
	strb r0, [r4, #0xd]
	str r1, [r4, #0x48]
	str r1, [r4, #0x50]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	ldr r0, _080C3B70 @ =0x00000151
	bl PlaySong
	b _080C3BAE
	.align 2, 0
_080C3B70: .4byte 0x00000151
_080C3B74:
	adds r0, r4, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080C3B92
	ldr r1, [r4, #0x48]
	cmp r1, #0
	bge _080C3B88
	rsbs r1, r1, #0
_080C3B88:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	rsbs r0, r0, #0
	b _080C3BA0
_080C3B92:
	ldr r1, [r4, #0x48]
	cmp r1, #0
	bge _080C3B9A
	rsbs r1, r1, #0
_080C3B9A:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
_080C3BA0:
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x4c]
	rsbs r0, r0, #0
	str r0, [r4, #0x4c]
	ldr r0, _080C3BD4 @ =0x0000015D
	bl PlaySong
_080C3BAE:
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
	movs r0, #3
	strb r0, [r4, #0xa]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C3BD4: .4byte 0x0000015D

	thumb_func_start sub_080C3BD8
sub_080C3BD8: @ 0x080C3BD8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r0, #0
	ldr r2, _080C3C04 @ =gEwramData
	ldrb r1, [r6, #0x14]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080C3C08 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r7, r1, r0
	ldrb r0, [r6, #0xa]
	cmp r0, #4
	bls _080C3BF8
	b _080C3E0E
_080C3BF8:
	lsls r0, r0, #2
	ldr r1, _080C3C0C @ =_080C3C10
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C3C04: .4byte gEwramData
_080C3C08: .4byte 0x000004E4
_080C3C0C: .4byte _080C3C10
_080C3C10: @ jump table
	.4byte _080C3C24 @ case 0
	.4byte _080C3C9E @ case 1
	.4byte _080C3D5C @ case 2
	.4byte _080C3D5C @ case 3
	.4byte _080C3DFC @ case 4
_080C3C24:
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	adds r4, r6, #0
	adds r4, #0x2c
	strb r0, [r4]
	ldr r5, _080C3CC4 @ =0x0824C910
	adds r0, r7, #0
	bl sub_0803B998
	adds r2, r0, #0
	ldrb r3, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0803B924
	ldr r0, _080C3CC8 @ =sub_0803B9D0
	str r0, [r6, #4]
	movs r0, #1
	strh r0, [r6, #0x34]
	strh r0, [r6, #0x2e]
	adds r3, r6, #0
	adds r3, #0x58
	movs r0, #0x1f
	ldrh r1, [r7, #0x20]
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r2, _080C3CCC @ =sub_080C467C
	ldr r3, _080C3CD0 @ =sub_080C3B2C
	adds r0, r6, #0
	movs r1, #0xa
	bl sub_0804277C
	ldr r1, _080C3CD4 @ =0x1010F8F8
	adds r0, r6, #0
	bl sub_080428F0
	ldr r1, _080C3CD8 @ =0x0202FFFF
	adds r0, r6, #0
	bl sub_08042884
	adds r0, r7, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x3c
	strb r1, [r0]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
_080C3C9E:
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	adds r3, r7, #0
	adds r3, #0x58
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080C3CE0
	movs r0, #0xd0
	lsls r0, r0, #8
	str r0, [r6, #0x48]
	ldr r0, _080C3CDC @ =0xFFFFF000
	b _080C3CE8
	.align 2, 0
_080C3CC4: .4byte 0x0824C910
_080C3CC8: .4byte sub_0803B9D0
_080C3CCC: .4byte sub_080C467C
_080C3CD0: .4byte sub_080C3B2C
_080C3CD4: .4byte 0x1010F8F8
_080C3CD8: .4byte 0x0202FFFF
_080C3CDC: .4byte 0xFFFFF000
_080C3CE0:
	ldr r0, _080C3D20 @ =0xFFFF3000
	str r0, [r6, #0x48]
	movs r0, #0x80
	lsls r0, r0, #5
_080C3CE8:
	str r0, [r6, #0x50]
	adds r0, r7, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r6, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0x1e
	adds r4, r6, #0
	adds r4, #0x46
	strh r0, [r4]
	ldr r0, _080C3D24 @ =0xFFFD0000
	str r0, [r6, #0x4c]
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080C3D2C
	ldr r0, _080C3D28 @ =0x00008AAA
	b _080C3D2E
	.align 2, 0
_080C3D20: .4byte 0xFFFF3000
_080C3D24: .4byte 0xFFFD0000
_080C3D28: .4byte 0x00008AAA
_080C3D2C:
	ldr r0, _080C3D44 @ =0xFFFF7556
_080C3D2E:
	str r0, [r6, #0x48]
	ldrb r0, [r6, #0x18]
	cmp r0, #0
	bne _080C3D48
	movs r0, #0x88
	bl PlaySong
	adds r1, r6, #0
	adds r1, #0x65
	movs r0, #0x12
	b _080C3D54
	.align 2, 0
_080C3D44: .4byte 0xFFFF7556
_080C3D48:
	movs r0, #0x89
	bl PlaySong
	adds r1, r6, #0
	adds r1, #0x65
	movs r0, #0x1b
_080C3D54:
	strb r0, [r1]
	movs r0, #2
	strb r0, [r6, #0xa]
	b _080C3E0E
_080C3D5C:
	ldrb r0, [r6, #0xa]
	cmp r0, #4
	beq _080C3D68
	adds r0, r6, #0
	bl sub_0806AE54
_080C3D68:
	ldrb r0, [r6, #0xa]
	cmp r0, #3
	beq _080C3D9A
	adds r0, r6, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _080C3D8E
	mov r0, sp
	adds r1, r6, #0
	bl sub_080421AC
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	b _080C3E0C
_080C3D8E:
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
_080C3D9A:
	adds r0, r6, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	ldrb r2, [r6, #0xa]
	cmp r0, #0
	beq _080C3DBA
	adds r0, r2, #0
	cmp r0, #3
	beq _080C3DBA
	cmp r0, #4
	beq _080C3DBA
	mov r0, sp
	adds r1, r6, #0
	bl sub_080421AC
	b _080C3E0E
_080C3DBA:
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x48]
	adds r0, r0, r1
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x44]
	ldr r1, [r6, #0x4c]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	movs r0, #0xc0
	lsls r0, r0, #5
	adds r1, r1, r0
	str r1, [r6, #0x4c]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	beq _080C3DE2
	mov r0, sp
	adds r1, r6, #0
	bl sub_080421AC
_080C3DE2:
	adds r0, r6, #0
	adds r0, #0x46
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0
	cmp r0, #0xaa
	ble _080C3DF2
	movs r1, #1
_080C3DF2:
	cmp r1, #0
	beq _080C3E0E
	movs r0, #4
	strb r0, [r6, #0xa]
	b _080C3E0E
_080C3DFC:
	ldrb r0, [r7, #0x18]
	subs r0, #1
	strb r0, [r7, #0x18]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
_080C3E0C:
	strb r0, [r2]
_080C3E0E:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C3E18
sub_080C3E18: @ 0x080C3E18
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r6, #0x1a]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080C3E40
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080C3E46
_080C3E40:
	movs r0, #0
	mov r8, r0
	b _080C3E4A
_080C3E46:
	movs r1, #1
	mov r8, r1
_080C3E4A:
	mov r0, r8
	cmp r0, #6
	ble _080C3E52
	b _080C3F86
_080C3E52:
	ldr r7, _080C3F94 @ =0x08528952
	adds r1, r7, #5
	mov sb, r1
_080C3E58:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _080C3F98 @ =sub_0806C5AC
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	bne _080C3E6A
	b _080C3F7A
_080C3E6A:
	ldrb r0, [r6, #0x10]
	strb r0, [r5, #0x14]
	mov r0, r8
	strb r0, [r5, #0x11]
	ldrb r0, [r6, #0x18]
	adds r0, #1
	strb r0, [r6, #0x18]
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x5c
	strb r1, [r0]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	bl sub_0803B998
	adds r4, r0, #0
	ldr r0, _080C3F9C @ =0x0820BE3C
	bl sub_080681D8
	adds r3, r0, #0
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r0, r5, #0
	ldr r1, _080C3FA0 @ =0x0824C910
	adds r2, r4, #0
	bl sub_0803B924
	ldr r0, _080C3FA4 @ =sub_0803B9D0
	str r0, [r5, #4]
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	ldrb r1, [r5, #0x11]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r0, r7
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r2, r5, #0
	adds r2, #0x46
	adds r1, r7, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldrb r1, [r5, #0x11]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r7, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x65
	strb r0, [r1]
	ldrb r1, [r5, #0x11]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r7, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0xc
	str r0, [r5, #0x48]
	ldrb r1, [r5, #0x11]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r7, #4
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0xc
	rsbs r0, r0, #0
	subs r0, #0x10
	str r0, [r5, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	ldrb r1, [r5, #0x11]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	add r0, sb
	ldrb r0, [r0]
	strb r0, [r5, #0xd]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r5, #0
	adds r3, #0x58
	movs r2, #0x40
	ands r2, r0
	ldrb r0, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	mov ip, r1
	mov r1, ip
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	adds r0, r6, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080C3F70
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bge _080C3F62
	rsbs r0, r0, #0
_080C3F62:
	rsbs r0, r0, #0
	str r0, [r5, #0x48]
	adds r0, r4, #0
	cmp r4, #0
	bge _080C3F6E
	rsbs r0, r4, #0
_080C3F6E:
	rsbs r4, r0, #0
_080C3F70:
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, r0, r4
	strh r0, [r1]
_080C3F7A:
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #6
	bgt _080C3F86
	b _080C3E58
_080C3F86:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C3F94: .4byte 0x08528952
_080C3F98: .4byte sub_0806C5AC
_080C3F9C: .4byte 0x0820BE3C
_080C3FA0: .4byte 0x0824C910
_080C3FA4: .4byte sub_0803B9D0

	thumb_func_start sub_080C3FA8
sub_080C3FA8: @ 0x080C3FA8
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r2, _080C3FCC @ =gEwramData
	ldrb r1, [r6, #0x14]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080C3FD0 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r7, r1, r0
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _080C3FD4
	cmp r0, #1
	bne _080C3FCA
	b _080C40EC
_080C3FCA:
	b _080C4128
	.align 2, 0
_080C3FCC: .4byte gEwramData
_080C3FD0: .4byte 0x000004E4
_080C3FD4:
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x5c
	strb r1, [r0]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r5, _080C40DC @ =0x0824C910
	adds r0, r7, #0
	bl sub_0803B998
	adds r4, r0, #0
	ldr r0, _080C40E0 @ =0x0820BE3C
	bl sub_080681D8
	adds r3, r0, #0
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0803B924
	ldr r0, _080C40E4 @ =sub_0803B9D0
	str r0, [r6, #4]
	ldr r0, [r7, #0x40]
	str r0, [r6, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r6, #0x44]
	ldr r2, _080C40E8 @ =0x08528952
	ldrb r1, [r6, #0x11]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r0, r2
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r3, r6, #0
	adds r3, #0x46
	adds r1, r2, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r3]
	adds r0, r0, r1
	adds r0, #0x10
	strh r0, [r3]
	ldrb r1, [r6, #0x11]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r2, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x65
	strb r0, [r1]
	ldrb r1, [r6, #0x11]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r2, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0xc
	str r0, [r6, #0x48]
	ldrb r1, [r6, #0x11]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r2, #4
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0xc
	rsbs r0, r0, #0
	subs r0, #0x10
	str r0, [r6, #0x4c]
	ldrb r1, [r6, #0x11]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #5
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r6, #0xd]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, #0x12
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r7, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080C40C8
	ldr r0, [r6, #0x48]
	cmp r0, #0
	bge _080C40BA
	rsbs r0, r0, #0
_080C40BA:
	rsbs r0, r0, #0
	str r0, [r6, #0x48]
	adds r0, r4, #0
	cmp r4, #0
	bge _080C40C6
	rsbs r0, r4, #0
_080C40C6:
	rsbs r4, r0, #0
_080C40C8:
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	b _080C4128
	.align 2, 0
_080C40DC: .4byte 0x0824C910
_080C40E0: .4byte 0x0820BE3C
_080C40E4: .4byte sub_0803B9D0
_080C40E8: .4byte 0x08528952
_080C40EC:
	movs r2, #0
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C40FC
	movs r2, #1
_080C40FC:
	adds r0, r6, #0
	adds r0, #0x46
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0
	cmp r0, #0xaa
	ble _080C410C
	movs r1, #1
_080C410C:
	cmp r1, #0
	beq _080C4112
	movs r2, #2
_080C4112:
	cmp r2, #0
	beq _080C4128
	ldrb r0, [r7, #0x18]
	subs r0, #1
	strb r0, [r7, #0x18]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080C4128:
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x48]
	adds r0, r0, r1
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x44]
	ldr r1, [r6, #0x4c]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	movs r0, #0xc0
	lsls r0, r0, #6
	adds r1, r1, r0
	str r1, [r6, #0x4c]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C4148
sub_080C4148: @ 0x080C4148
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r2, _080C41E8 @ =gEwramData
	ldrb r1, [r5, #0x14]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080C41EC @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r6, r1, r0
	movs r7, #0x58
	adds r7, r7, r6
	mov sb, r7
	ldrb r0, [r7]
	movs r1, #0x58
	adds r1, r1, r5
	mov r8, r1
	movs r1, #0x20
	ands r1, r0
	mov r7, r8
	ldrb r2, [r7]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r7]
	adds r0, r6, #0
	adds r0, #0x59
	str r0, [sp, #8]
	ldrb r1, [r0]
	adds r4, r5, #0
	adds r4, #0x59
	movs r7, #1
	mov sl, r7
	movs r0, #8
	ands r0, r1
	ldrb r1, [r4]
	movs r2, #9
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r4]
	movs r3, #8
	movs r0, #8
	mov ip, r0
	adds r0, r2, #0
	mov r1, ip
	ands r0, r1
	cmp r0, #0
	beq _080C41BA
	b _080C43B4
_080C41BA:
	movs r7, #0x10
	ldrsh r1, [r5, r7]
	movs r7, #0x10
	ldrsh r0, [r6, r7]
	cmp r1, r0
	bne _080C41E2
	ldr r0, [r6]
	cmp r0, #0
	beq _080C41E2
	ldr r0, [sp, #8]
	ldrb r1, [r0]
	mov r0, ip
	ands r0, r1
	cmp r0, #0
	bne _080C41E2
	ldrb r1, [r6, #0x1a]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080C41F0
_080C41E2:
	orrs r2, r3
	strb r2, [r4]
	b _080C43B4
	.align 2, 0
_080C41E8: .4byte gEwramData
_080C41EC: .4byte 0x000004E4
_080C41F0:
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _080C4202
	adds r0, r5, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _080C4202
	b _080C43B4
_080C4202:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080C427C
	cmp r0, #1
	bgt _080C4212
	cmp r0, #0
	beq _080C4218
	b _080C435C
_080C4212:
	cmp r0, #2
	beq _080C42D6
	b _080C435C
_080C4218:
	ldr r1, _080C4238 @ =0x081F424C
	ldr r2, _080C423C @ =0x0820BE3C
	ldr r0, _080C4240 @ =0x0824C910
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C4244
	adds r0, r5, #0
	bl EntityDelete
	b _080C43B4
	.align 2, 0
_080C4238: .4byte 0x081F424C
_080C423C: .4byte 0x0820BE3C
_080C4240: .4byte 0x0824C910
_080C4244:
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x5c
	strb r1, [r0]
	adds r0, r5, #0
	movs r1, #0x10
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	mov r7, r8
	ldrb r1, [r7]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r7]
_080C427C:
	add r4, sp, #4
	adds r0, r6, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_0806C3F8
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
	adds r1, r6, #0
	adds r1, #0x42
	add r0, sp, #4
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r1, r6, #0
	adds r1, #0x46
	ldrh r0, [r4, #2]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
	ldrb r1, [r6, #0x1a]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080C435C
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	b _080C435C
_080C42D6:
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r1, _080C4344 @ =0x0852892C
	adds r7, r0, r1
	ldrh r1, [r7]
	add r4, sp, #4
	adds r0, r6, #0
	adds r2, r4, #0
	bl sub_0806C3F8
	mov r0, sb
	ldrb r1, [r0]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	mov r0, sl
	ands r1, r0
	lsls r1, r1, #6
	mov r0, r8
	ldrb r2, [r0]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
	adds r1, r6, #0
	adds r1, #0x42
	add r0, sp, #4
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r3, r5, #0
	adds r3, #0x42
	strh r0, [r3]
	adds r1, r6, #0
	adds r1, #0x46
	ldrh r0, [r4, #2]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r2, r5, #0
	adds r2, #0x46
	strh r0, [r2]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080C4348
	movs r1, #2
	ldrsb r1, [r7, r1]
	ldrh r0, [r3]
	subs r0, r0, r1
	b _080C4350
	.align 2, 0
_080C4344: .4byte 0x0852892C
_080C4348:
	movs r0, #2
	ldrsb r0, [r7, r0]
	ldrh r1, [r3]
	adds r0, r0, r1
_080C4350:
	strh r0, [r3]
	movs r0, #3
	ldrsb r0, [r7, r0]
	ldrh r7, [r2]
	adds r0, r0, r7
	strh r0, [r2]
_080C435C:
	ldrb r1, [r6, #0x1a]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080C437E
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #7
	beq _080C4394
	adds r0, r5, #0
	movs r1, #7
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _080C4394
_080C437E:
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x10
	beq _080C4394
	adds r0, r5, #0
	movs r1, #0x10
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080C4394:
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
	adds r0, r5, #0
	bl sub_0803F17C
_080C43B4:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080C43C4
sub_080C43C4: @ 0x080C43C4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r2, _080C446C @ =gEwramData
	ldrb r1, [r5, #0x14]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080C4470 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r6, r1, r0
	adds r4, r5, #0
	adds r4, #0x58
	ldrb r3, [r4]
	movs r1, #0x20
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	bne _080C440C
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r2, [r0]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _080C440C
	ands r1, r2
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4]
_080C440C:
	movs r2, #0x59
	adds r2, r2, r6
	mov r8, r2
	ldrb r1, [r2]
	adds r2, r5, #0
	adds r2, #0x59
	movs r0, #8
	ands r0, r1
	ldrb r1, [r2]
	movs r3, #9
	rsbs r3, r3, #0
	ands r3, r1
	orrs r3, r0
	strb r3, [r2]
	movs r7, #8
	movs r0, #8
	mov sb, r0
	adds r0, r3, #0
	mov r1, sb
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _080C443C
	b _080C45D8
_080C443C:
	movs r2, #0x10
	ldrsh r1, [r5, r2]
	movs r2, #0x10
	ldrsh r0, [r6, r2]
	cmp r1, r0
	bne _080C4464
	ldr r0, [r6]
	cmp r0, #0
	beq _080C4464
	mov r0, r8
	ldrb r1, [r0]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	bne _080C4464
	ldrb r1, [r6, #0x1a]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080C4474
_080C4464:
	orrs r3, r7
	strb r3, [r4]
	b _080C45D8
	.align 2, 0
_080C446C: .4byte gEwramData
_080C4470: .4byte 0x000004E4
_080C4474:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080C44DC
	cmp r0, #1
	bgt _080C4484
	cmp r0, #0
	beq _080C448A
	b _080C45B8
_080C4484:
	cmp r0, #2
	beq _080C44E0
	b _080C45B8
_080C448A:
	ldr r1, _080C44A8 @ =0x081F424C
	ldr r2, _080C44AC @ =0x0820BE3C
	ldr r0, _080C44B0 @ =0x0824C910
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C44B4
	adds r0, r5, #0
	bl EntityDelete
	b _080C45D8
	.align 2, 0
_080C44A8: .4byte 0x081F424C
_080C44AC: .4byte 0x0820BE3C
_080C44B0: .4byte 0x0824C910
_080C44B4:
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x5c
	strb r1, [r0]
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	b _080C45B8
_080C44DC:
	movs r0, #2
	strb r0, [r5, #0xa]
_080C44E0:
	ldr r0, [r6, #0x6c]
	ldr r1, _080C4598 @ =0x00FFFF00
	ands r0, r1
	ldr r1, _080C459C @ =0x00030600
	movs r2, #0x58
	adds r2, r2, r5
	mov r8, r2
	cmp r0, r1
	bne _080C4504
	ldrb r1, [r2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080C4516
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_080C4504:
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	movs r1, #0x58
	adds r1, r1, r6
	mov sb, r1
	cmp r0, #0
	bne _080C452E
_080C4516:
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x20
	ands r0, r1
	mov sb, r2
	cmp r0, #0
	beq _080C452E
	ldrb r0, [r4]
	movs r1, #8
	orrs r0, r1
	strb r0, [r4]
_080C452E:
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r1, _080C45A0 @ =0x0852892C
	adds r7, r0, r1
	ldrh r1, [r7]
	add r4, sp, #4
	adds r0, r6, #0
	adds r2, r4, #0
	bl sub_0806C3F8
	mov r2, sb
	ldrb r0, [r2]
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
	adds r1, r6, #0
	adds r1, #0x42
	add r0, sp, #4
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r3, r5, #0
	adds r3, #0x42
	strh r0, [r3]
	adds r1, r6, #0
	adds r1, #0x46
	ldrh r0, [r4, #2]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r2, r5, #0
	adds r2, #0x46
	strh r0, [r2]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080C45A4
	movs r1, #2
	ldrsb r1, [r7, r1]
	ldrh r0, [r3]
	subs r0, r0, r1
	b _080C45AC
	.align 2, 0
_080C4598: .4byte 0x00FFFF00
_080C459C: .4byte 0x00030600
_080C45A0: .4byte 0x0852892C
_080C45A4:
	movs r0, #2
	ldrsb r0, [r7, r0]
	ldrh r1, [r3]
	adds r0, r0, r1
_080C45AC:
	strh r0, [r3]
	movs r0, #3
	ldrsb r0, [r7, r0]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080C45B8:
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
	adds r0, r5, #0
	bl sub_0803F17C
_080C45D8:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C45E8
sub_080C45E8: @ 0x080C45E8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080C45F8
	cmp r0, #1
	beq _080C4618
	b _080C461E
_080C45F8:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080C4618:
	adds r0, r4, #0
	bl sub_0803F17C
_080C461E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C4624
sub_080C4624: @ 0x080C4624
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
	ldrh r0, [r6, #0x34]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	strh r0, [r6, #0x34]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08042B8C
	adds r1, r6, #0
	adds r1, #0x2d
	movs r0, #8
	strb r0, [r1]
	movs r1, #0x34
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bgt _080C4676
	movs r0, #0x6b
	bl PlaySong
	movs r0, #0
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	bl sub_080C3AB4
_080C4676:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080C467C
sub_080C467C: @ 0x080C467C
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

	thumb_func_start sub_080C46AC
sub_080C46AC: @ 0x080C46AC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	bl sub_0806DFF8
	adds r3, r0, #0
	cmp r3, #0
	beq _080C46E4
	ldrh r0, [r4, #0x10]
	strb r0, [r3, #0x14]
	ldrh r0, [r4, #0x10]
	strh r0, [r3, #0x10]
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x3c
	strb r1, [r0]
	ldrh r0, [r4, #0x34]
	strh r0, [r3, #0x34]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	adds r0, r3, #0
	b _080C46E6
_080C46E4:
	movs r0, #0
_080C46E6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start EnemyImpCreate
EnemyImpCreate: @ 0x080C46EC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080C4768
	cmp r0, #0
	bne _080C4700
	adds r0, r4, #0
	bl EntityDelete
	b _080C475A
_080C4700:
	movs r5, #0
	strb r5, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	adds r0, r4, #0
	bl sub_0806B04C
	adds r0, r4, #0
	adds r0, #0x5c
	movs r2, #4
	strb r2, [r0]
	ldr r0, _080C4730 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080C4734
	strb r2, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	b _080C475A
	.align 2, 0
_080C4730: .4byte gEwramData
_080C4734:
	ldr r1, _080C4760 @ =sub_080C4F8C
	ldr r2, _080C4764 @ =sub_080C5250
	adds r0, r4, #0
	bl sub_0806D244
	adds r0, r4, #0
	bl sub_080C5200
	adds r0, r4, #0
	bl sub_080C52A4
	cmp r0, #0
	bne _080C475A
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080C475A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C4760: .4byte sub_080C4F8C
_080C4764: .4byte sub_080C5250

	thumb_func_start sub_080C4768
sub_080C4768: @ 0x080C4768
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r7, _080C47DC @ =0x0820BE60
	ldr r0, _080C47E0 @ =0x0824CF0C
	mov r8, r0
	ldr r6, _080C47E4 @ =0x081F4254
	adds r0, r6, #0
	bl sub_0803AFB8
	adds r4, r0, #0
	cmp r4, #0
	bge _080C4792
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803B800
	adds r4, r0, #0
	cmp r4, #0
	blt _080C47EC
_080C4792:
	adds r0, r7, #0
	movs r1, #0
	bl sub_08068264
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080C47EC
	adds r0, r5, #0
	adds r0, #0x2c
	strb r2, [r0]
	ldrb r3, [r0]
	adds r0, r5, #0
	mov r1, r8
	adds r2, r4, #0
	bl sub_0803B924
	cmp r0, #0
	beq _080C47EC
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	cmp r0, #0
	beq _080C47EC
	adds r0, r5, #0
	bl sub_0803F17C
	ldr r0, _080C47E8 @ =sub_0803B9D0
	str r0, [r5, #4]
	movs r0, #1
	b _080C47EE
	.align 2, 0
_080C47DC: .4byte 0x0820BE60
_080C47E0: .4byte 0x0824CF0C
_080C47E4: .4byte 0x081F4254
_080C47E8: .4byte sub_0803B9D0
_080C47EC:
	movs r0, #0
_080C47EE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start EnemyImpUpdate
EnemyImpUpdate: @ 0x080C47F8
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bne _080C480C
	adds r0, r4, #0
	bl sub_080C5220
	b _080C48AC
_080C480C:
	adds r0, r4, #0
	bl sub_08021924
	adds r0, r4, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _080C4830
	ldrb r0, [r4, #0xa]
	cmp r0, #0xff
	beq _080C4830
	cmp r0, #3
	beq _080C4830
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	b _080C48AC
_080C4830:
	adds r0, r4, #0
	bl sub_0806CD38
	ldr r1, [r4, #0x40]
	cmp r0, r1
	bne _080C4858
	adds r0, r4, #0
	bl sub_0806CD78
	ldr r1, [r4, #0x44]
	cmp r0, r1
	bne _080C4858
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _080C4858
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080C4858:
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080C4878
	cmp r0, #2
	ble _080C486C
	cmp r0, #3
	beq _080C4880
	cmp r0, #0xff
	beq _080C4888
	b _080C488E
_080C486C:
	cmp r0, #0
	blt _080C488E
	adds r0, r4, #0
	bl sub_080C48B4
	b _080C488E
_080C4878:
	adds r0, r4, #0
	bl sub_080C4B88
	b _080C488E
_080C4880:
	adds r0, r4, #0
	bl sub_080C4D34
	b _080C488E
_080C4888:
	adds r0, r4, #0
	bl sub_080C4ED4
_080C488E:
	ldrb r0, [r4, #0xa]
	cmp r0, #0xff
	beq _080C48AC
	adds r0, r4, #0
	bl sub_0806DF20
	ldrb r0, [r4, #0xa]
	cmp r0, #0xff
	beq _080C48AC
	cmp r0, #3
	beq _080C48AC
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
_080C48AC:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C48B4
sub_080C48B4: @ 0x080C48B4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	adds r0, r4, #0
	bl sub_0806BDEC
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	adds r0, r4, #0
	bl sub_0806CD38
	ldr r1, [r4, #0x40]
	cmp r0, r1
	bne _080C4924
	adds r0, r4, #0
	bl sub_0806CD78
	ldr r1, [r4, #0x44]
	cmp r0, r1
	bne _080C4924
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _080C48EE
	cmp r0, #1
	beq _080C48FC
	b _080C4928
_080C48EE:
	str r0, [r4, #0x48]
	str r0, [r4, #0x50]
	str r0, [r4, #0x4c]
	str r0, [r4, #0x54]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_080C48FC:
	ldrh r0, [r4, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	cmp r0, #0
	bge _080C490E
	adds r0, #3
_080C490E:
	asrs r1, r0, #2
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ldrh r2, [r4, #0x1c]
	adds r0, r0, r2
	strh r0, [r4, #0x1c]
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	b _080C4B7C
_080C4924:
	movs r0, #0
	strb r0, [r4, #0xc]
_080C4928:
	ldrh r1, [r4, #0x16]
	movs r2, #0x16
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _080C4936
	subs r0, r1, #1
	strh r0, [r4, #0x16]
_080C4936:
	adds r0, r4, #0
	bl sub_0806BC40
	ldrb r5, [r4, #0xb]
	cmp r5, #1
	beq _080C499A
	cmp r5, #1
	bgt _080C494C
	cmp r5, #0
	beq _080C4954
	b _080C4B66
_080C494C:
	cmp r5, #2
	bne _080C4952
	b _080C4AFA
_080C4952:
	b _080C4B66
_080C4954:
	bl RandomNumberGenerator
	movs r1, #0xb4
	lsls r1, r1, #1
	bl __umodsi3
	adds r0, #0x64
	movs r1, #0
	strh r0, [r4, #0x16]
	strh r5, [r4, #0x18]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	str r5, [r4, #0x48]
	str r5, [r4, #0x54]
	str r5, [r4, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r4, #0x50]
	cmp r6, #0x46
	ble _080C498C
	rsbs r0, r1, #0
	str r0, [r4, #0x50]
_080C498C:
	str r1, [r4, #0x54]
	movs r0, #0x2d
	rsbs r0, r0, #0
	cmp r7, r0
	ble _080C499A
	rsbs r0, r1, #0
	str r0, [r4, #0x54]
_080C499A:
	ldrh r2, [r4, #0x18]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _080C49DC
	ldr r2, [r4, #0x50]
	cmp r2, #0
	bge _080C49AC
	rsbs r2, r2, #0
_080C49AC:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	bge _080C49B4
	rsbs r0, r0, #0
_080C49B4:
	ldr r1, [r4, #0x48]
	cmn r1, r0
	blt _080C49BE
	cmp r1, r2
	ble _080C49C2
_080C49BE:
	cmp r1, #0
	bne _080C49D4
_080C49C2:
	ldrh r1, [r4, #0x18]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0
	strh r0, [r4, #0x18]
	str r1, [r4, #0x48]
	str r1, [r4, #0x50]
	b _080C4A36
_080C49D4:
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #0
	b _080C4A3C
_080C49DC:
	adds r0, r6, #0
	adds r0, #0x46
	cmp r0, #0x8c
	bls _080C4A14
	ldr r0, [r4, #0x48]
	movs r1, #0x80
	lsls r1, r1, #0xa
	cmp r0, r1
	ble _080C49F0
	str r1, [r4, #0x48]
_080C49F0:
	ldr r0, [r4, #0x48]
	ldr r1, _080C4A10 @ =0xFFFE0000
	cmp r0, r1
	bge _080C49FA
	str r1, [r4, #0x48]
_080C49FA:
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #0x50]
	adds r3, r4, #0
	adds r3, #0x20
	cmp r6, #0x46
	ble _080C4A40
	rsbs r0, r0, #0
	str r0, [r4, #0x50]
	b _080C4A40
	.align 2, 0
_080C4A10: .4byte 0xFFFE0000
_080C4A14:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _080C4A30
	ldr r1, [r4, #0x50]
	cmp r1, #0
	beq _080C4A30
	movs r0, #1
	orrs r0, r2
	strh r0, [r4, #0x18]
	rsbs r0, r1, #0
	str r0, [r4, #0x50]
	adds r3, r4, #0
	adds r3, #0x20
	b _080C4A40
_080C4A30:
	movs r0, #0
	str r0, [r4, #0x48]
	str r0, [r4, #0x50]
_080C4A36:
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #1
_080C4A3C:
	strb r0, [r1]
	adds r3, r1, #0
_080C4A40:
	ldrh r2, [r4, #0x18]
	movs r0, #2
	ands r0, r2
	adds r5, r2, #0
	cmp r0, #0
	beq _080C4A82
	ldr r2, [r4, #0x54]
	cmp r2, #0
	bge _080C4A54
	rsbs r2, r2, #0
_080C4A54:
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bge _080C4A5C
	rsbs r0, r0, #0
_080C4A5C:
	ldr r1, [r4, #0x4c]
	cmn r1, r0
	blt _080C4A66
	cmp r1, r2
	ble _080C4A6A
_080C4A66:
	cmp r1, #0
	bne _080C4A7A
_080C4A6A:
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r5
	movs r1, #0
	strh r0, [r4, #0x18]
	str r1, [r4, #0x4c]
	str r1, [r4, #0x54]
	b _080C4AD2
_080C4A7A:
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0
	b _080C4AD8
_080C4A82:
	adds r0, r7, #0
	adds r0, #0x50
	cmp r0, #0x14
	bls _080C4AB4
	ldr r0, [r4, #0x4c]
	movs r1, #0xa0
	lsls r1, r1, #9
	cmp r0, r1
	ble _080C4A96
	str r1, [r4, #0x4c]
_080C4A96:
	ldr r0, [r4, #0x4c]
	ldr r1, _080C4AB0 @ =0xFFFEC000
	cmp r0, r1
	bge _080C4AA0
	str r1, [r4, #0x4c]
_080C4AA0:
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r4, #0x54]
	movs r0, #0x3c
	rsbs r0, r0, #0
	cmp r7, r0
	ble _080C4ADA
	b _080C4AC6
	.align 2, 0
_080C4AB0: .4byte 0xFFFEC000
_080C4AB4:
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _080C4ACC
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _080C4ACC
	movs r0, #2
	orrs r0, r2
	strh r0, [r4, #0x18]
_080C4AC6:
	rsbs r0, r1, #0
	str r0, [r4, #0x54]
	b _080C4ADA
_080C4ACC:
	movs r0, #0
	str r0, [r4, #0x4c]
	str r0, [r4, #0x54]
_080C4AD2:
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #1
_080C4AD8:
	strb r0, [r1]
_080C4ADA:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080C4B66
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C4B66
	movs r0, #0
	str r0, [r4, #0x48]
	str r0, [r4, #0x50]
	str r0, [r4, #0x4c]
	str r0, [r4, #0x54]
	movs r0, #2
	strb r0, [r4, #0xb]
	b _080C4B66
_080C4AFA:
	ldrh r0, [r4, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	cmp r0, #0
	bge _080C4B0C
	adds r0, #3
_080C4B0C:
	asrs r0, r0, #2
	str r0, [r4, #0x4c]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ldrh r1, [r4, #0x1c]
	adds r0, r0, r1
	strh r0, [r4, #0x1c]
	adds r0, r6, #0
	adds r0, #0x46
	cmp r0, #0x8c
	bhi _080C4B30
	movs r0, #0x50
	rsbs r0, r0, #0
	cmp r7, r0
	blt _080C4B30
	cmp r7, #0
	ble _080C4B40
_080C4B30:
	movs r0, #0
	movs r1, #1
	strb r1, [r4, #0xb]
	adds r1, r4, #0
	adds r1, #0x20
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
_080C4B40:
	movs r2, #0x16
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _080C4B66
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806D128
	adds r1, r0, #0
	cmp r1, #0
	bne _080C4B66
	str r1, [r4, #0x48]
	str r1, [r4, #0x50]
	str r1, [r4, #0x4c]
	str r1, [r4, #0x54]
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080C4B66:
	ldr r0, [r4, #0x40]
	ldr r2, [r4, #0x48]
	adds r0, r0, r2
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x50]
	adds r2, r2, r0
	str r2, [r4, #0x48]
_080C4B7C:
	ldr r0, [r4, #0x54]
	adds r1, r1, r0
	str r1, [r4, #0x4c]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080C4B88
sub_080C4B88: @ 0x080C4B88
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _080C4BD0 @ =gEwramData
	ldr r4, [r0]
	ldr r0, _080C4BD4 @ =0x0000A094
	adds r4, r4, r0
	adds r0, r5, #0
	bl sub_0806CD38
	ldr r1, [r4, #4]
	adds r7, r0, r1
	adds r0, r5, #0
	bl sub_0806CD78
	ldr r1, [r4, #8]
	adds r0, r0, r1
	ldr r1, _080C4BD8 @ =0xFFE00000
	adds r6, r0, r1
	adds r0, r5, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	adds r0, r5, #0
	bl sub_0806BDEC
	ldrb r0, [r5, #0xb]
	cmp r0, #4
	bls _080C4BC4
	b _080C4D10
_080C4BC4:
	lsls r0, r0, #2
	ldr r1, _080C4BDC @ =_080C4BE0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C4BD0: .4byte gEwramData
_080C4BD4: .4byte 0x0000A094
_080C4BD8: .4byte 0xFFE00000
_080C4BDC: .4byte _080C4BE0
_080C4BE0: @ jump table
	.4byte _080C4BF4 @ case 0
	.4byte _080C4C26 @ case 1
	.4byte _080C4C58 @ case 2
	.4byte _080C4C9A @ case 3
	.4byte _080C4CF6 @ case 4
_080C4BF4:
	movs r0, #0
	str r0, [r5, #0x4c]
	str r0, [r5, #0x54]
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [r5, #0x48]
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r5, #0x50]
	cmp r4, #0
	ble _080C4C10
	rsbs r0, r0, #0
	str r0, [r5, #0x50]
	b _080C4C14
_080C4C10:
	rsbs r0, r1, #0
	str r0, [r5, #0x48]
_080C4C14:
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r5, #0x4c]
	ldr r0, _080C4C54 @ =0xFFFFF800
	str r0, [r5, #0x54]
	movs r0, #0
	strb r0, [r5, #0xd]
	movs r0, #1
	strb r0, [r5, #0xb]
_080C4C26:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bls _080C4D10
	movs r0, #0
	str r0, [r5, #0x48]
	str r0, [r5, #0x50]
	str r0, [r5, #0x4c]
	str r0, [r5, #0x54]
	strb r0, [r5, #0xd]
	movs r0, #2
	strb r0, [r5, #0xb]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_080695B4
	b _080C4D10
	.align 2, 0
_080C4C54: .4byte 0xFFFFF800
_080C4C58:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x50
	bls _080C4D10
	ldr r0, [r5, #0x50]
	cmp r0, #0
	ble _080C4C74
	ldr r0, _080C4C70 @ =0xFFFFF800
	b _080C4C78
	.align 2, 0
_080C4C70: .4byte 0xFFFFF800
_080C4C74:
	movs r0, #0x80
	lsls r0, r0, #4
_080C4C78:
	str r0, [r5, #0x50]
	ldr r0, [r5, #0x54]
	cmp r0, #0
	ble _080C4C88
	ldr r0, _080C4C84 @ =0xFFFFF800
	b _080C4C8C
	.align 2, 0
_080C4C84: .4byte 0xFFFFF800
_080C4C88:
	movs r0, #0x80
	lsls r0, r0, #4
_080C4C8C:
	str r0, [r5, #0x54]
	movs r0, #0
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	b _080C4D10
_080C4C9A:
	ldr r0, [r5, #0x50]
	cmp r0, #0
	bge _080C4CAC
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bgt _080C4CAC
	movs r0, #0
	str r0, [r5, #0x48]
	str r0, [r5, #0x50]
_080C4CAC:
	ldr r0, [r5, #0x50]
	cmp r0, #0
	ble _080C4CBE
	ldr r0, [r5, #0x48]
	cmp r0, #0
	blt _080C4CBE
	movs r0, #0
	str r0, [r5, #0x48]
	str r0, [r5, #0x50]
_080C4CBE:
	ldr r0, [r5, #0x54]
	cmp r0, #0
	bge _080C4CD0
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	bgt _080C4CD0
	movs r0, #0
	str r0, [r5, #0x4c]
	str r0, [r5, #0x54]
_080C4CD0:
	ldr r0, [r5, #0x54]
	cmp r0, #0
	ble _080C4CE2
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	blt _080C4CE2
	movs r0, #0
	str r0, [r5, #0x4c]
	str r0, [r5, #0x54]
_080C4CE2:
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bne _080C4D10
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	bne _080C4D10
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	b _080C4D10
_080C4CF6:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bls _080C4D10
	movs r1, #0
	strb r1, [r5, #0xd]
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
_080C4D10:
	ldr r0, [r5, #0x40]
	ldr r2, [r5, #0x48]
	adds r0, r0, r2
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x50]
	adds r2, r2, r0
	str r2, [r5, #0x48]
	ldr r0, [r5, #0x54]
	adds r1, r1, r0
	str r1, [r5, #0x4c]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C4D34
sub_080C4D34: @ 0x080C4D34
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r5, _080C4D8C @ =gEwramData
	ldr r4, [r5]
	ldr r0, _080C4D90 @ =0x0000A094
	adds r4, r4, r0
	adds r0, r6, #0
	bl sub_0806CD38
	ldr r1, [r4, #4]
	adds r7, r0, r1
	adds r0, r6, #0
	bl sub_0806CD78
	ldr r1, [r4, #8]
	adds r0, r0, r1
	ldr r1, _080C4D94 @ =0xFFE00000
	adds r1, r1, r0
	mov r8, r1
	ldr r2, [r5]
	adds r5, r2, #0
	adds r5, #0x14
	movs r0, #0x12
	ldrsh r1, [r6, r0]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080C4D98 @ =0x000004E4
	adds r0, r0, r1
	adds r4, r2, r0
	adds r0, r6, #0
	bl sub_0806BC40
	ldrb r1, [r6, #0xb]
	cmp r1, #1
	beq _080C4DC6
	cmp r1, #1
	bgt _080C4D9C
	cmp r1, #0
	beq _080C4DA8
	b _080C4ECA
	.align 2, 0
_080C4D8C: .4byte gEwramData
_080C4D90: .4byte 0x0000A094
_080C4D94: .4byte 0xFFE00000
_080C4D98: .4byte 0x000004E4
_080C4D9C:
	cmp r1, #2
	beq _080C4E94
	cmp r1, #3
	bne _080C4DA6
	b _080C4EB6
_080C4DA6:
	b _080C4ECA
_080C4DA8:
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	str r1, [r6, #0x48]
	str r1, [r6, #0x50]
	str r1, [r6, #0x4c]
	str r1, [r6, #0x54]
	strb r1, [r6, #0xd]
	adds r0, r6, #0
	adds r0, #0x22
	strb r1, [r0]
	movs r0, #1
	strb r0, [r6, #0xb]
_080C4DC6:
	ldr r0, _080C4DE4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080C4DE8 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x58
	ldrb r1, [r0]
	lsrs r1, r1, #6
	movs r0, #1
	bics r0, r1
	cmp r0, #0
	beq _080C4DF0
	ldr r0, _080C4DEC @ =0xFFF00000
	adds r7, r7, r0
	b _080C4DF6
	.align 2, 0
_080C4DE4: .4byte gEwramData
_080C4DE8: .4byte 0x00013110
_080C4DEC: .4byte 0xFFF00000
_080C4DF0:
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r7, r7, r1
_080C4DF6:
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r6, #0
	adds r1, r7, #0
	mov r2, r8
	bl sub_080693E4
	cmp r0, #0
	bne _080C4E24
	ldr r0, [r6, #0x40]
	ldr r2, [r6, #0x48]
	adds r0, r0, r2
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x44]
	ldr r1, [r6, #0x4c]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	ldr r0, [r6, #0x50]
	adds r2, r2, r0
	str r2, [r6, #0x48]
	ldr r0, [r6, #0x54]
	adds r1, r1, r0
	str r1, [r6, #0x4c]
_080C4E24:
	ldrb r1, [r6, #0xd]
	adds r0, r1, #1
	strb r0, [r6, #0xd]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C4E3C
	movs r0, #1
	movs r1, #2
	bl SetPlayerInput
	b _080C4E44
_080C4E3C:
	movs r0, #1
	movs r1, #0
	bl SetPlayerInput
_080C4E44:
	ldrh r2, [r5, #2]
	cmp r2, #0
	beq _080C4ECA
	cmp r2, #4
	beq _080C4ECA
	cmp r2, #8
	beq _080C4ECA
	adds r2, r6, #0
	adds r2, #0x22
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bls _080C4ECA
	ldr r0, [r6, #0x48]
	cmp r0, #0
	ble _080C4E74
	ldr r0, _080C4E70 @ =0xFFFF0000
	b _080C4E78
	.align 2, 0
_080C4E70: .4byte 0xFFFF0000
_080C4E74:
	movs r0, #0x80
	lsls r0, r0, #9
_080C4E78:
	str r0, [r6, #0x48]
	ldr r0, _080C4E90 @ =0xFFFF0000
	str r0, [r6, #0x4c]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	strb r1, [r6, #0xd]
	movs r0, #2
	b _080C4EC8
	.align 2, 0
_080C4E90: .4byte 0xFFFF0000
_080C4E94:
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x48]
	adds r0, r0, r1
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x44]
	ldr r1, [r6, #0x4c]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x27
	bls _080C4ECA
	movs r0, #3
	b _080C4EC8
_080C4EB6:
	movs r0, #0
	strb r0, [r6, #0xd]
	str r0, [r6, #0x48]
	str r0, [r6, #0x50]
	str r0, [r6, #0x4c]
	str r0, [r6, #0x54]
	movs r1, #1
	strb r1, [r6, #0xa]
	strb r0, [r6, #0xc]
_080C4EC8:
	strb r0, [r6, #0xb]
_080C4ECA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080C4ED4
sub_080C4ED4: @ 0x080C4ED4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _080C4EF8 @ =gEwramData
	movs r0, #0x12
	ldrsh r1, [r4, r0]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080C4EFC @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r5, r1, r0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080C4F00
	cmp r0, #1
	beq _080C4F56
	b _080C4F76
	.align 2, 0
_080C4EF8: .4byte gEwramData
_080C4EFC: .4byte 0x000004E4
_080C4F00:
	movs r0, #0x72
	bl PlaySong
	adds r0, r4, #0
	bl sub_080683BC
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
	movs r0, #0x32
	strb r0, [r4, #0xd]
	movs r0, #0xff
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x14
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x4c]
	adds r0, r4, #0
	bl sub_080C52CC
_080C4F56:
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	adds r0, r4, #0
	adds r0, #0x46
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0xaa
	ble _080C4F76
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080C4F76:
	movs r2, #0x80
	lsls r2, r2, #0xd
	movs r3, #0xc0
	lsls r3, r3, #0xc
	adds r0, r4, #0
	movs r1, #7
	bl sub_0806BE74
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080C4F8C
sub_080C4F8C: @ 0x080C4F8C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r5, #0
	mov r1, sp
	adds r0, #0x3c
	ldrb r0, [r0]
	movs r6, #0
	strh r0, [r1]
	mov r0, sp
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	ldr r0, [r4, #0x40]
	str r0, [sp, #8]
	ldr r0, [r4, #0x44]
	str r0, [sp, #0xc]
	ldr r0, _080C4FF4 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _080C4FF8 @ =0x00013168
	adds r1, r0, r2
	ldr r3, [r1]
	ldr r1, _080C4FFC @ =0x00013110
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r1, [r3, #0x40]
	ldr r0, [r2, #0x40]
	cmp r1, r0
	beq _080C4FD2
	ldr r0, [r3, #0x44]
	ldr r1, [r2, #0x44]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r5, r1, #0x1f
_080C4FD2:
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _080C5006
	cmp r0, #2
	bne _080C5000
	adds r0, r4, #0
	bl sub_0806D4C0
	cmp r0, #0
	bne _080C5000
	cmp r5, #0
	bne _080C5000
	movs r0, #3
	strb r0, [r4, #0xa]
	strb r6, [r4, #0xc]
	strb r6, [r4, #0xb]
	b _080C5006
	.align 2, 0
_080C4FF4: .4byte gEwramData
_080C4FF8: .4byte 0x00013168
_080C4FFC: .4byte 0x00013110
_080C5000:
	mov r0, sp
	bl sub_08021654
_080C5006:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C5010
sub_080C5010: @ 0x080C5010
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r6, _080C502C @ =0x0820BE60
	ldr r7, _080C5030 @ =0x0824CF0C
	ldr r3, _080C5034 @ =0x081F4254
	ldrb r0, [r5, #0xa]
	cmp r0, #4
	bhi _080C50E4
	lsls r0, r0, #2
	ldr r1, _080C5038 @ =_080C503C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C502C: .4byte 0x0820BE60
_080C5030: .4byte 0x0824CF0C
_080C5034: .4byte 0x081F4254
_080C5038: .4byte _080C503C
_080C503C: @ jump table
	.4byte _080C5050 @ case 0
	.4byte _080C50E4 @ case 1
	.4byte _080C5094 @ case 2
	.4byte _080C50B4 @ case 3
	.4byte _080C50D4 @ case 4
_080C5050:
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r3, #0
	bl sub_0803AFB8
	adds r4, r0, #0
	adds r0, r6, #0
	bl sub_080681D8
	adds r3, r0, #0
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_0803B924
	ldr r0, _080C5090 @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	b _080C50E2
	.align 2, 0
_080C5090: .4byte sub_0803B9D0
_080C5094:
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
_080C50B4:
	adds r0, r5, #0
	bl sub_0806CD38
	str r0, [r5, #0x40]
	adds r0, r5, #0
	bl sub_0806CD78
	ldr r1, _080C50D0 @ =0xFFD80000
	adds r0, r0, r1
	str r0, [r5, #0x44]
	adds r0, r5, #0
	bl sub_0803F17C
	b _080C50E4
	.align 2, 0
_080C50D0: .4byte 0xFFD80000
_080C50D4:
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
_080C50E2:
	strb r0, [r5, #0xa]
_080C50E4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C50EC
sub_080C50EC: @ 0x080C50EC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r0, _080C5124 @ =0x0820BE60
	mov r8, r0
	ldr r1, _080C5128 @ =0x0824CF0C
	mov sb, r1
	ldr r3, _080C512C @ =0x081F4254
	ldr r2, _080C5130 @ =gEwramData
	movs r0, #0x12
	ldrsh r1, [r5, r0]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080C5134 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r7, r1, r0
	ldrb r6, [r5, #0xa]
	cmp r6, #1
	beq _080C51A4
	cmp r6, #1
	bgt _080C5138
	cmp r6, #0
	beq _080C513E
	b _080C51D8
	.align 2, 0
_080C5124: .4byte 0x0820BE60
_080C5128: .4byte 0x0824CF0C
_080C512C: .4byte 0x081F4254
_080C5130: .4byte gEwramData
_080C5134: .4byte 0x000004E4
_080C5138:
	cmp r6, #2
	beq _080C51CC
	b _080C51D8
_080C513E:
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r3, #0
	bl sub_0803AFB8
	adds r4, r0, #0
	mov r0, r8
	bl sub_080681D8
	adds r3, r0, #0
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r0, r5, #0
	mov r1, sb
	adds r2, r4, #0
	bl sub_0803B924
	ldr r0, _080C51A0 @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0x15
	strb r0, [r1]
	subs r1, #9
	movs r0, #3
	strb r0, [r1]
	ldr r0, [r7, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r7, #0x44]
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldr r1, [r7, #0x4c]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r5, #0x4c]
	strb r6, [r5, #0xd]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	b _080C51D8
	.align 2, 0
_080C51A0: .4byte sub_0803B9D0
_080C51A4:
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x32
	bhi _080C51C6
	adds r0, r5, #0
	adds r0, #0x46
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0xaa
	ble _080C51D8
_080C51C6:
	movs r0, #2
	strb r0, [r5, #0xa]
	b _080C51D8
_080C51CC:
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080C51D8:
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
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080C5200
sub_080C5200: @ 0x080C5200
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	str r5, [r4, #0x48]
	str r5, [r4, #0x4c]
	str r5, [r4, #0x50]
	str r5, [r4, #0x54]
	bl sub_0806BC40
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080C5220
sub_080C5220: @ 0x080C5220
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080C5230
	cmp r0, #1
	beq _080C5242
	b _080C5248
_080C5230:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080C5242:
	adds r0, r4, #0
	bl sub_0803F17C
_080C5248:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C5250
sub_080C5250: @ 0x080C5250
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
	ldrh r0, [r6, #0x34]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	strh r0, [r6, #0x34]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08042B8C
	adds r1, r6, #0
	adds r1, #0x2d
	movs r0, #8
	strb r0, [r1]
	movs r1, #0x34
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bgt _080C529C
	movs r0, #0
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	bl sub_080C4ED4
_080C529C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C52A4
sub_080C52A4: @ 0x080C52A4
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	ldr r2, _080C52C8 @ =sub_080C5010
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	cmp r0, #0
	beq _080C52BE
	ldrb r0, [r0, #0x10]
	strh r0, [r4, #0x12]
	movs r5, #1
_080C52BE:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080C52C8: .4byte sub_080C5010

	thumb_func_start sub_080C52CC
sub_080C52CC: @ 0x080C52CC
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	ldr r2, _080C52F0 @ =sub_080C50EC
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r1, r0, #0
	cmp r1, #0
	beq _080C52E8
	ldrh r0, [r4, #0x10]
	strh r0, [r1, #0x12]
	movs r5, #1
_080C52E8:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080C52F0: .4byte sub_080C50EC

	thumb_func_start EnemyTinyDevilCreate
EnemyTinyDevilCreate: @ 0x080C52F4
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _080C5318 @ =0x0820BE60
	ldr r0, _080C531C @ =0x0824CF0C
	ldr r1, _080C5320 @ =0x081F4254
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #1
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C5324
	adds r0, r4, #0
	bl EntityDelete
	b _080C5372
	.align 2, 0
_080C5318: .4byte 0x0820BE60
_080C531C: .4byte 0x0824CF0C
_080C5320: .4byte 0x081F4254
_080C5324:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806B04C
	adds r1, r4, #0
	adds r1, #0x5c
	movs r2, #0
	movs r0, #4
	strb r0, [r1]
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r2, [r4, #0xc]
	strb r2, [r4, #0xb]
	ldr r0, _080C5364 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080C5368
	movs r0, #3
	strb r0, [r4, #0xa]
	b _080C5372
	.align 2, 0
_080C5364: .4byte gEwramData
_080C5368:
	ldr r1, _080C537C @ =sub_0806E1B8
	ldr r2, _080C5380 @ =sub_080C5B40
	adds r0, r4, #0
	bl sub_0806D244
_080C5372:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C537C: .4byte sub_0806E1B8
_080C5380: .4byte sub_080C5B40

	thumb_func_start EnemyTinyDevilUpdate
EnemyTinyDevilUpdate: @ 0x080C5384
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _080C5398
	adds r0, r4, #0
	bl sub_080C5B18
	b _080C5424
_080C5398:
	cmp r0, #0xff
	bne _080C53A4
	adds r0, r4, #0
	bl sub_080C580C
	b _080C5424
_080C53A4:
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
	beq _080C53C2
	adds r0, r4, #0
	bl sub_08021924
_080C53C2:
	adds r0, r4, #0
	bl sub_0806AD24
	adds r5, r0, #0
	cmp r5, #0
	beq _080C53D8
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
	b _080C5424
_080C53D8:
	adds r0, r4, #0
	bl sub_0806CD38
	ldr r1, [r4, #0x40]
	cmp r0, r1
	bne _080C53FE
	adds r0, r4, #0
	bl sub_0806CD78
	ldr r1, [r4, #0x44]
	cmp r0, r1
	bne _080C53FE
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _080C53FE
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
_080C53FE:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080C540A
	cmp r0, #2
	beq _080C5412
	b _080C5418
_080C540A:
	adds r0, r4, #0
	bl sub_080C542C
	b _080C5418
_080C5412:
	adds r0, r4, #0
	bl sub_080C56F0
_080C5418:
	adds r0, r4, #0
	bl sub_0806DF20
	adds r0, r4, #0
	bl sub_0806E314
_080C5424:
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080C542C
sub_080C542C: @ 0x080C542C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	adds r0, r5, #0
	bl sub_0806BDEC
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	adds r0, r5, #0
	bl sub_0806CD38
	ldr r1, [r5, #0x40]
	cmp r0, r1
	bne _080C549C
	adds r0, r5, #0
	bl sub_0806CD78
	ldr r1, [r5, #0x44]
	cmp r0, r1
	bne _080C549C
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _080C5466
	cmp r0, #1
	beq _080C5474
	b _080C54A0
_080C5466:
	str r0, [r5, #0x48]
	str r0, [r5, #0x50]
	str r0, [r5, #0x4c]
	str r0, [r5, #0x54]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
_080C5474:
	ldrh r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	cmp r0, #0
	bge _080C5486
	adds r0, #3
_080C5486:
	asrs r1, r0, #2
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ldrh r2, [r5, #0x18]
	adds r0, r0, r2
	strh r0, [r5, #0x18]
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	b _080C56E2
_080C549C:
	movs r0, #0
	strb r0, [r5, #0xc]
_080C54A0:
	ldrh r1, [r5, #0x14]
	movs r2, #0x14
	ldrsh r0, [r5, r2]
	cmp r0, #0
	beq _080C54AE
	subs r0, r1, #1
	strh r0, [r5, #0x14]
_080C54AE:
	adds r0, r5, #0
	bl sub_0806BC40
	ldrb r4, [r5, #0xb]
	cmp r4, #0
	beq _080C54C0
	cmp r4, #1
	beq _080C557A
	b _080C56A6
_080C54C0:
	movs r1, #0x14
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _080C54D8
	bl RandomNumberGenerator
	movs r1, #0xfa
	lsls r1, r1, #1
	bl __umodsi3
	adds r0, #0x64
	strh r0, [r5, #0x14]
_080C54D8:
	strh r4, [r5, #0x16]
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _080C54F0
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080C54F0:
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r5, #0x50]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r5, #0x54]
	cmp r6, #0
	ble _080C551E
	bl RandomNumberGenerator
	movs r1, #0x19
	bl __umodsi3
	subs r0, #0x19
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x50]
	rsbs r0, r0, #0
	str r0, [r5, #0x50]
	ldrh r1, [r5, #0x16]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	b _080C5534
_080C551E:
	bl RandomNumberGenerator
	movs r4, #0x19
	movs r1, #0x19
	bl __umodsi3
	subs r4, r4, r0
	str r4, [r5, #0x1c]
	ldrh r0, [r5, #0x16]
	movs r1, #4
	orrs r0, r1
_080C5534:
	strh r0, [r5, #0x16]
	cmp r7, #0x19
	ble _080C5558
	bl RandomNumberGenerator
	movs r1, #0x19
	bl __umodsi3
	subs r0, #0x14
	str r0, [r5, #0x20]
	ldr r0, [r5, #0x54]
	rsbs r0, r0, #0
	str r0, [r5, #0x54]
	ldrh r1, [r5, #0x16]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	b _080C5570
_080C5558:
	bl RandomNumberGenerator
	movs r1, #0x19
	bl __umodsi3
	movs r1, #0x46
	rsbs r1, r1, #0
	subs r1, r1, r0
	str r1, [r5, #0x20]
	ldrh r1, [r5, #0x16]
	movs r0, #8
	orrs r0, r1
_080C5570:
	strh r0, [r5, #0x16]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	b _080C56A6
_080C557A:
	ldrh r1, [r5, #0x16]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080C55BE
	ands r4, r1
	cmp r4, #0
	beq _080C5592
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bgt _080C560E
	b _080C55CA
_080C5592:
	ldr r0, [r5, #0x48]
	movs r1, #0xc0
	lsls r1, r1, #9
	cmp r0, r1
	ble _080C559E
	str r1, [r5, #0x48]
_080C559E:
	ldr r0, [r5, #0x1c]
	cmp r6, r0
	blt _080C560E
	ldrh r0, [r5, #0x16]
	movs r1, #1
	orrs r0, r1
	strh r0, [r5, #0x16]
	ldr r1, [r5, #0x48]
	movs r0, #0x80
	lsls r0, r0, #9
	cmp r1, r0
	ble _080C5608
	ldr r1, [r5, #0x50]
	lsls r0, r1, #1
	adds r0, r0, r1
	b _080C560A
_080C55BE:
	ands r4, r1
	cmp r4, #0
	beq _080C55D8
	ldr r0, [r5, #0x48]
	cmp r0, #0
	blt _080C560E
_080C55CA:
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0
	strh r0, [r5, #0x16]
	strb r1, [r5, #0xb]
	b _080C560E
_080C55D8:
	ldr r0, [r5, #0x48]
	ldr r1, _080C5600 @ =0xFFFE8000
	cmp r0, r1
	bge _080C55E2
	str r1, [r5, #0x48]
_080C55E2:
	ldr r0, [r5, #0x1c]
	cmp r6, r0
	bgt _080C560E
	ldrh r0, [r5, #0x16]
	movs r1, #1
	orrs r0, r1
	strh r0, [r5, #0x16]
	ldr r1, [r5, #0x48]
	ldr r0, _080C5604 @ =0xFFFF0000
	cmp r1, r0
	bge _080C5608
	ldr r1, [r5, #0x50]
	lsls r0, r1, #1
	adds r0, r0, r1
	b _080C560A
	.align 2, 0
_080C5600: .4byte 0xFFFE8000
_080C5604: .4byte 0xFFFF0000
_080C5608:
	ldr r0, [r5, #0x50]
_080C560A:
	rsbs r0, r0, #0
	str r0, [r5, #0x50]
_080C560E:
	ldrh r2, [r5, #0x16]
	movs r0, #8
	ands r0, r2
	adds r3, r2, #0
	cmp r0, #0
	beq _080C5654
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _080C562A
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	bgt _080C56A6
	b _080C5662
_080C562A:
	ldr r0, [r5, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #8
	cmp r0, r1
	ble _080C5636
	str r1, [r5, #0x4c]
_080C5636:
	ldr r0, [r5, #0x20]
	cmp r7, r0
	blt _080C56A6
	movs r0, #2
	orrs r0, r3
	strh r0, [r5, #0x16]
	ldr r1, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #9
	cmp r1, r0
	ble _080C56A0
	ldr r1, [r5, #0x54]
	lsls r0, r1, #1
	adds r0, r0, r1
	b _080C56A2
_080C5654:
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _080C5670
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	blt _080C56A6
_080C5662:
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r3
	movs r1, #0
	strh r0, [r5, #0x16]
	strb r1, [r5, #0xb]
	b _080C56A6
_080C5670:
	ldr r0, [r5, #0x4c]
	ldr r1, _080C5698 @ =0xFFFF8000
	cmp r0, r1
	bge _080C567A
	str r1, [r5, #0x4c]
_080C567A:
	ldr r0, [r5, #0x20]
	cmp r7, r0
	bgt _080C56A6
	movs r0, #2
	orrs r0, r2
	strh r0, [r5, #0x16]
	ldr r1, [r5, #0x4c]
	ldr r0, _080C569C @ =0xFFFF0000
	cmp r1, r0
	bge _080C56A0
	ldr r1, [r5, #0x54]
	lsls r0, r1, #1
	adds r0, r0, r1
	b _080C56A2
	.align 2, 0
_080C5698: .4byte 0xFFFF8000
_080C569C: .4byte 0xFFFF0000
_080C56A0:
	ldr r0, [r5, #0x54]
_080C56A2:
	rsbs r0, r0, #0
	str r0, [r5, #0x54]
_080C56A6:
	movs r2, #0x14
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bne _080C56CC
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806D128
	adds r1, r0, #0
	cmp r1, #0
	bne _080C56CC
	str r1, [r5, #0x48]
	str r1, [r5, #0x50]
	str r1, [r5, #0x4c]
	str r1, [r5, #0x54]
	movs r0, #2
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
_080C56CC:
	ldr r0, [r5, #0x40]
	ldr r2, [r5, #0x48]
	adds r0, r0, r2
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x50]
	adds r2, r2, r0
	str r2, [r5, #0x48]
_080C56E2:
	ldr r0, [r5, #0x54]
	adds r1, r1, r0
	str r1, [r5, #0x4c]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C56F0
sub_080C56F0: @ 0x080C56F0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0806CD38
	adds r0, r4, #0
	bl sub_0806CD78
	adds r0, r4, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	adds r0, r4, #0
	bl sub_0806BDEC
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _080C5754
	cmp r0, #1
	bgt _080C571E
	cmp r0, #0
	beq _080C5724
	b _080C57E8
_080C571E:
	cmp r0, #2
	beq _080C57B2
	b _080C57E8
_080C5724:
	str r0, [r4, #0x4c]
	str r0, [r4, #0x54]
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [r4, #0x48]
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r4, #0x50]
	cmp r5, #0
	ble _080C573E
	rsbs r0, r0, #0
	str r0, [r4, #0x50]
	b _080C5742
_080C573E:
	rsbs r0, r1, #0
	str r0, [r4, #0x48]
_080C5742:
	ldr r0, _080C5774 @ =0xFFFF0000
	str r0, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r4, #0x54]
	movs r0, #0
	strb r0, [r4, #0xd]
	movs r0, #1
	strb r0, [r4, #0xb]
_080C5754:
	adds r0, r4, #0
	bl sub_0806BC40
	adds r0, r4, #0
	movs r1, #8
	bl sub_080C5BA4
	adds r5, r0, #0
	cmp r5, #0
	beq _080C5778
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	b _080C57E8
	.align 2, 0
_080C5774: .4byte 0xFFFF0000
_080C5778:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bls _080C57E8
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #2
	beq _080C579C
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080C579C:
	adds r0, r4, #0
	bl sub_080C5898
	str r5, [r4, #0x48]
	str r5, [r4, #0x50]
	str r5, [r4, #0x4c]
	str r5, [r4, #0x54]
	strb r5, [r4, #0xd]
	movs r0, #2
	strb r0, [r4, #0xb]
	b _080C57E8
_080C57B2:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x50
	bls _080C57CC
	movs r1, #0
	strb r1, [r4, #0xd]
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080C57CC:
	ldrb r0, [r4, #0xd]
	cmp r0, #0x28
	bne _080C57E8
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _080C57E8
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080C57E8:
	ldr r0, [r4, #0x40]
	ldr r2, [r4, #0x48]
	adds r0, r0, r2
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x50]
	adds r2, r2, r0
	str r2, [r4, #0x48]
	ldr r0, [r4, #0x54]
	adds r1, r1, r0
	str r1, [r4, #0x4c]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C580C
sub_080C580C: @ 0x080C580C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080C581C
	cmp r0, #1
	beq _080C5860
	b _080C5880
_080C581C:
	movs r0, #0x72
	bl PlaySong
	adds r0, r4, #0
	bl sub_080683BC
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
	movs r0, #0x32
	strb r0, [r4, #0xd]
	movs r0, #0xff
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x14
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x4c]
_080C5860:
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	adds r0, r4, #0
	adds r0, #0x46
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0xaa
	ble _080C5880
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080C5880:
	movs r2, #0x80
	lsls r2, r2, #0xd
	movs r3, #0xc0
	lsls r3, r3, #0xc
	adds r0, r4, #0
	movs r1, #7
	bl sub_0806BE74
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C5898
sub_080C5898: @ 0x080C5898
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _080C58C0 @ =0x0820BE60
	mov r8, r0
	ldr r6, _080C58C4 @ =0x0824CF0C
	ldr r7, _080C58C8 @ =0x081F4254
	ldr r2, _080C58CC @ =sub_080C5A44
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	bne _080C58D0
	movs r0, #0
	b _080C5A34
	.align 2, 0
_080C58C0: .4byte 0x0820BE60
_080C58C4: .4byte 0x0824CF0C
_080C58C8: .4byte 0x081F4254
_080C58CC: .4byte sub_080C5A44
_080C58D0:
	str r6, [sp]
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, r8
	movs r3, #1
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080C5998
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x3c
	strb r1, [r0]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r4, #0x44]
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r0, r1
	str r0, [r5, #0x44]
	adds r0, r5, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C592C
	ldr r0, [r5, #0x40]
	movs r1, #0x80
	lsls r1, r1, #0xd
	b _080C5930
_080C592C:
	ldr r0, [r5, #0x40]
	ldr r1, _080C59A4 @ =0xFFF00000
_080C5930:
	adds r0, r0, r1
	str r0, [r5, #0x40]
	adds r0, r5, #0
	bl sub_0806CD38
	ldr r7, _080C59A8 @ =gEwramData
	ldr r1, [r7]
	ldr r4, _080C59AC @ =0x0000A094
	adds r1, r1, r4
	ldr r1, [r1, #4]
	adds r6, r0, r1
	adds r0, r5, #0
	bl sub_0806CD78
	ldr r1, [r7]
	adds r1, r1, r4
	ldr r1, [r1, #8]
	adds r0, r0, r1
	ldr r1, _080C59B0 @ =0xFFE00000
	adds r4, r0, r1
	movs r3, #0xc0
	lsls r3, r3, #0xa
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_080693E4
	adds r0, r5, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	ldr r2, _080C59B4 @ =sub_080C5B5C
	adds r0, r5, #0
	movs r1, #0xa
	movs r3, #0
	bl sub_0804277C
	ldr r1, _080C59B8 @ =0x0A0AFBFB
	adds r0, r5, #0
	bl sub_08042884
	movs r0, #1
	bl sub_0803E654
	adds r3, r0, #0
	cmp r3, #0
	bge _080C59BC
_080C5998:
	adds r0, r5, #0
	bl EntityDelete
	movs r0, #0
	b _080C5A34
	.align 2, 0
_080C59A4: .4byte 0xFFF00000
_080C59A8: .4byte gEwramData
_080C59AC: .4byte 0x0000A094
_080C59B0: .4byte 0xFFE00000
_080C59B4: .4byte sub_080C5B5C
_080C59B8: .4byte 0x0A0AFBFB
_080C59BC:
	ldr r0, [r7]
	ldr r1, _080C5A40 @ =0x0000A094
	adds r0, r0, r1
	ldr r1, [r0, #4]
	subs r6, r6, r1
	ldr r0, [r0, #8]
	subs r4, r4, r0
	ldr r1, [r5, #0x40]
	subs r0, r6, r1
	cmp r0, #0
	bge _080C59DA
	subs r0, r1, r6
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
_080C59DA:
	lsrs r0, r0, #0x10
	adds r6, r0, #0
	ldr r1, [r5, #0x44]
	subs r0, r4, r1
	cmp r0, #0
	bge _080C59EE
	subs r0, r1, r4
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
_080C59EE:
	lsrs r2, r0, #0x10
	adds r4, r5, #0
	adds r4, #0x58
	movs r0, #0x1f
	ands r3, r0
	ldrb r1, [r4]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r4]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x98
	lsls r1, r1, #8
	adds r0, r0, r1
	movs r2, #0x80
	lsls r2, r2, #9
	movs r1, #0
	str r1, [sp]
	ldrb r1, [r4]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	adds r0, r5, #0
_080C5A34:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080C5A40: .4byte 0x0000A094

	thumb_func_start sub_080C5A44
sub_080C5A44: @ 0x080C5A44
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_0806CC20
	cmp r0, #0
	bne _080C5B12
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080C5A6A
	cmp r0, #1
	bgt _080C5A60
	cmp r0, #0
	beq _080C5A66
	b _080C5B06
_080C5A60:
	cmp r0, #2
	beq _080C5AC2
	b _080C5B06
_080C5A66:
	movs r0, #1
	strb r0, [r5, #0xa]
_080C5A6A:
	adds r6, r5, #0
	adds r6, #0x59
	ldrb r1, [r6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C5B06
	ldrh r4, [r5, #0x14]
	adds r4, #1
	strh r4, [r5, #0x14]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl RandomNumberGenerator
	movs r1, #5
	bl __umodsi3
	adds r0, #1
	cmp r4, r0
	bls _080C5AB4
	adds r0, r5, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r6]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r6]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	movs r0, #0x89
	bl PlaySong
	b _080C5B06
_080C5AB4:
	adds r0, r5, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _080C5B06
_080C5AC2:
	ldr r0, [r5, #0x40]
	ldr r2, [r5, #0x48]
	adds r0, r0, r2
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x50]
	adds r2, r2, r0
	str r2, [r5, #0x48]
	ldr r0, [r5, #0x54]
	adds r1, r1, r0
	str r1, [r5, #0x4c]
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bls _080C5B06
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080C5B06:
	adds r0, r5, #0
	bl sub_0803F17C
	adds r0, r5, #0
	bl sub_0806E314
_080C5B12:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080C5B18
sub_080C5B18: @ 0x080C5B18
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080C5B34
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080C5B34:
	adds r0, r4, #0
	bl sub_0803F17C
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C5B40
sub_080C5B40: @ 0x080C5B40
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080C5B56
	movs r0, #0xff
	strb r0, [r4, #0xa]
	movs r0, #0
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xb]
_080C5B56:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C5B5C
sub_080C5B5C: @ 0x080C5B5C
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	mov r2, sp
	adds r0, #0x3c
	ldrb r0, [r0]
	movs r1, #0
	strh r0, [r2]
	mov r0, sp
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	ldr r0, [r4, #0x40]
	str r0, [sp, #8]
	ldr r0, [r4, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C5BA4
sub_080C5BA4: @ 0x080C5BA4
	push {r4, lr}
	adds r3, r0, #0
	adds r0, #0x42
	movs r4, #0
	ldrsh r2, [r0, r4]
	cmp r2, r1
	blt _080C5BD2
	movs r0, #0xf0
	subs r0, r0, r1
	cmp r2, r0
	bgt _080C5BD2
	adds r0, r3, #0
	adds r0, #0x46
	movs r3, #0
	ldrsh r2, [r0, r3]
	cmp r2, r1
	blt _080C5BD2
	movs r0, #0xa0
	subs r0, r0, r1
	cmp r2, r0
	bgt _080C5BD2
	movs r0, #0
	b _080C5BD4
_080C5BD2:
	movs r0, #1
_080C5BD4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start EnemyUkobackCreate
EnemyUkobackCreate: @ 0x080C5BDC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080C5C58
	cmp r0, #0
	bne _080C5BF0
	adds r0, r4, #0
	bl EntityDelete
	b _080C5C48
_080C5BF0:
	adds r0, r4, #0
	bl sub_0806B04C
	adds r1, r4, #0
	adds r1, #0x5c
	movs r2, #0
	movs r0, #4
	strb r0, [r1]
	ldr r0, _080C5C20 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _080C5C24
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r2, [r4, #0xc]
	strb r2, [r4, #0xb]
	b _080C5C48
	.align 2, 0
_080C5C20: .4byte gEwramData
_080C5C24:
	ldr r1, _080C5C50 @ =sub_080C6510
	ldr r2, _080C5C54 @ =sub_080C653C
	adds r0, r4, #0
	bl sub_0806D244
	str r5, [r4, #0x50]
	str r5, [r4, #0x48]
	str r5, [r4, #0x54]
	str r5, [r4, #0x4c]
	adds r0, r4, #0
	adds r0, #0x22
	strb r5, [r0]
	adds r0, r4, #0
	bl sub_0806BC40
	strb r5, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
_080C5C48:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C5C50: .4byte sub_080C6510
_080C5C54: .4byte sub_080C653C

	thumb_func_start sub_080C5C58
sub_080C5C58: @ 0x080C5C58
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r7, _080C5CCC @ =0x0820BEA4
	ldr r0, _080C5CD0 @ =0x0824D198
	mov r8, r0
	ldr r6, _080C5CD4 @ =0x081F425C
	adds r0, r6, #0
	bl sub_0803AFB8
	adds r4, r0, #0
	cmp r4, #0
	bge _080C5C82
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803B800
	adds r4, r0, #0
	cmp r4, #0
	blt _080C5CDC
_080C5C82:
	adds r0, r7, #0
	movs r1, #0
	bl sub_08068264
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080C5CDC
	adds r0, r5, #0
	adds r0, #0x2c
	strb r2, [r0]
	ldrb r3, [r0]
	adds r0, r5, #0
	mov r1, r8
	adds r2, r4, #0
	bl sub_0803B924
	cmp r0, #0
	beq _080C5CDC
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	cmp r0, #0
	beq _080C5CDC
	adds r0, r5, #0
	bl sub_0803F17C
	ldr r0, _080C5CD8 @ =sub_0803B9D0
	str r0, [r5, #4]
	movs r0, #1
	b _080C5CDE
	.align 2, 0
_080C5CCC: .4byte 0x0820BEA4
_080C5CD0: .4byte 0x0824D198
_080C5CD4: .4byte 0x081F425C
_080C5CD8: .4byte sub_0803B9D0
_080C5CDC:
	movs r0, #0
_080C5CDE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080C5CE8
sub_080C5CE8: @ 0x080C5CE8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x16]
	movs r2, #0x16
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _080C5CFA
	subs r0, r1, #1
	b _080C5D08
_080C5CFA:
	bl RandomNumberGenerator
	movs r1, #0xb4
	lsls r1, r1, #1
	bl __umodsi3
	adds r0, #0x50
_080C5D08:
	strh r0, [r4, #0x16]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080C5D16
	cmp r0, #1
	beq _080C5D48
	b _080C5EC8
_080C5D16:
	movs r0, #0xc0
	lsls r0, r0, #8
	str r0, [r4, #0x4c]
	str r0, [r4, #0x48]
	adds r0, r4, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C5D30
	ldr r0, [r4, #0x48]
	rsbs r0, r0, #0
	str r0, [r4, #0x48]
_080C5D30:
	adds r0, r4, #0
	bl sub_0806BDEC
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C5D42
	ldr r0, [r4, #0x4c]
	rsbs r0, r0, #0
	str r0, [r4, #0x4c]
_080C5D42:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080C5D48:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bge _080C5D5E
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _080C5D6A
_080C5D5E:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0]
_080C5D6A:
	adds r0, r4, #0
	bl sub_080021A8
	adds r1, r4, #0
	adds r1, #0x4e
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _080C5DC4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080C5DC8 @ =0x0000A094
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r5, [r0]
	adds r0, r4, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080C5D98
	adds r0, #7
_080C5D98:
	asrs r0, r0, #3
	movs r2, #0x1e
	cmp r5, #1
	beq _080C5DA2
	lsls r2, r5, #5
_080C5DA2:
	cmp r0, #0
	blt _080C5DB2
	movs r1, #0
	cmp r0, r2
	blt _080C5DAE
	movs r1, #1
_080C5DAE:
	cmp r1, #0
	beq _080C5DCC
_080C5DB2:
	ldr r1, [r4, #0x48]
	rsbs r1, r1, #0
	str r1, [r4, #0x48]
	lsls r1, r1, #1
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	b _080C5E18
	.align 2, 0
_080C5DC4: .4byte gEwramData
_080C5DC8: .4byte 0x0000A094
_080C5DCC:
	adds r0, r4, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, #8
	lsls r1, r6, #0x10
	asrs r5, r1, #0x10
	adds r1, r5, #0
	movs r2, #1
	bl sub_0800210C
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bne _080C5E08
	adds r0, r4, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #8
	adds r1, r5, #0
	movs r2, #1
	bl sub_080020D8
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	beq _080C5E18
_080C5E08:
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, r2, r0
	strh r0, [r1]
	ldr r0, [r4, #0x48]
	rsbs r0, r0, #0
	str r0, [r4, #0x48]
_080C5E18:
	adds r0, r4, #0
	bl sub_08002188
	adds r1, r4, #0
	adds r1, #0x4a
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _080C5E70 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _080C5E74 @ =0x0000A094
	adds r0, r0, r2
	ldr r0, [r0]
	ldrb r5, [r0, #1]
	adds r0, r4, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080C5E46
	adds r0, #7
_080C5E46:
	asrs r0, r0, #3
	movs r2, #0x1a
	cmp r5, #1
	beq _080C5E50
	lsls r2, r5, #5
_080C5E50:
	cmp r0, #0
	blt _080C5E60
	movs r1, #0
	cmp r0, r2
	blt _080C5E5C
	movs r1, #1
_080C5E5C:
	cmp r1, #0
	beq _080C5E78
_080C5E60:
	ldr r1, [r4, #0x4c]
	rsbs r1, r1, #0
	str r1, [r4, #0x4c]
	lsls r1, r1, #1
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	b _080C5EC8
	.align 2, 0
_080C5E70: .4byte gEwramData
_080C5E74: .4byte 0x0000A094
_080C5E78:
	adds r0, r4, #0
	bl sub_080021A8
	adds r1, r0, #0
	lsls r0, r6, #0x10
	asrs r5, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #5
	adds r0, r5, #0
	movs r2, #1
	bl sub_08001CCC
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bne _080C5EB8
	adds r0, r4, #0
	bl sub_080021A8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, #1
	adds r0, r5, #0
	movs r2, #1
	bl sub_08001E58
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	beq _080C5EC8
_080C5EB8:
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r0, [r1]
	adds r0, r2, r0
	strh r0, [r1]
	ldr r0, [r4, #0x4c]
	rsbs r0, r0, #0
	str r0, [r4, #0x4c]
_080C5EC8:
	movs r1, #0x16
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080C5EEC
	adds r5, r4, #0
	adds r5, #0x22
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #7
	bgt _080C5EEC
	adds r0, r4, #0
	bl sub_080C6590
	cmp r0, #0
	beq _080C5EEC
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
_080C5EEC:
	ldr r0, [r4, #0x40]
	ldr r2, [r4, #0x48]
	adds r0, r0, r2
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x50]
	adds r2, r2, r0
	str r2, [r4, #0x48]
	ldr r0, [r4, #0x54]
	adds r1, r1, r0
	str r1, [r4, #0x4c]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C5F10
sub_080C5F10: @ 0x080C5F10
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080C5F20
	cmp r0, #1
	beq _080C5F6A
	b _080C5F8A
_080C5F20:
	movs r0, #0x72
	bl PlaySong
	adds r0, r4, #0
	bl sub_080683BC
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
	movs r0, #0x32
	strb r0, [r4, #0xd]
	movs r0, #0xff
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #9
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x4c]
	adds r0, r4, #0
	bl sub_080C6624
_080C5F6A:
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	adds r0, r4, #0
	adds r0, #0x46
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0xaa
	ble _080C5F8A
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080C5F8A:
	movs r2, #0x80
	lsls r2, r2, #0xd
	movs r3, #0xc0
	lsls r3, r3, #0xc
	adds r0, r4, #0
	movs r1, #7
	bl sub_0806BE74
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C5FA0
sub_080C5FA0: @ 0x080C5FA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	mov r8, r1
	ldr r5, _080C6084 @ =0x0820BEA4
	ldr r0, _080C6088 @ =0x0824D198
	mov sl, r0
	ldr r4, _080C608C @ =0x081F425C
	movs r1, #1
	str r1, [sp, #8]
	movs r0, #0x59
	adds r0, r0, r7
	mov sb, r0
	ldrb r0, [r0]
	movs r1, #2
	orrs r0, r1
	mov r1, sb
	strb r0, [r1]
	mov r0, r8
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #2
	adds r1, r7, #0
	adds r1, #0x5c
	movs r6, #0
	strb r0, [r1]
	strb r6, [r7, #0xd]
	mov r0, r8
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x3c
	strb r1, [r0]
	mov r1, r8
	ldrh r0, [r1, #0x34]
	strh r0, [r7, #0x34]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r7, #0x14]
	str r0, [r7, #0x18]
	strh r6, [r7, #0x1c]
	adds r0, r5, #0
	bl sub_080681D8
	adds r1, r7, #0
	adds r1, #0x2c
	strb r0, [r1]
	mov r1, r8
	ldrh r0, [r1, #0x10]
	strh r0, [r7, #0x12]
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x40]
	ldr r0, [r1, #0x44]
	str r0, [r7, #0x44]
	str r6, [r7, #0x48]
	ldr r0, _080C6090 @ =0xFFFFFF00
	str r0, [r7, #0x50]
	str r6, [r7, #0x4c]
	str r0, [r7, #0x54]
	adds r0, r4, #0
	bl sub_0803AFB8
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_080681D8
	adds r3, r0, #0
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r0, r7, #0
	mov r1, sl
	adds r2, r4, #0
	bl sub_0803B924
	ldr r0, _080C6094 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r7, #0
	bl sub_0803F17C
	ldr r2, _080C6098 @ =sub_080C65C8
	ldr r3, _080C609C @ =sub_080C6614
	adds r0, r7, #0
	movs r1, #8
	bl sub_0804277C
	ldr r4, _080C60A0 @ =0x0C08F6FC
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08042884
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080428F0
	movs r0, #1
	bl sub_0803E654
	adds r3, r0, #0
	cmp r3, #0
	bge _080C60A4
	movs r0, #0
	str r0, [sp, #8]
	b _080C60D8
	.align 2, 0
_080C6084: .4byte 0x0820BEA4
_080C6088: .4byte 0x0824D198
_080C608C: .4byte 0x081F425C
_080C6090: .4byte 0xFFFFFF00
_080C6094: .4byte sub_0803B9D0
_080C6098: .4byte sub_080C65C8
_080C609C: .4byte sub_080C6614
_080C60A0: .4byte 0x0C08F6FC
_080C60A4:
	adds r2, r7, #0
	adds r2, #0x58
	movs r0, #0x1f
	ands r3, r0
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	str r6, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	movs r3, #0
	bl sub_0803E058
	mov r1, sb
	ldrb r0, [r1]
	movs r1, #0x10
	orrs r0, r1
	mov r1, sb
	strb r0, [r1]
_080C60D8:
	movs r1, #0x80
	rsbs r1, r1, #0
	movs r2, #0x40
	rsbs r2, r2, #0
	movs r3, #0xf8
	lsls r3, r3, #1
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [sp]
	adds r0, r7, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _080C60FA
	movs r0, #0x78
	bl PlaySong
_080C60FA:
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080C610C
sub_080C610C: @ 0x080C610C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldr r2, _080C6148 @ =gEwramData
	movs r0, #0x12
	ldrsh r1, [r5, r0]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080C614C @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r7, r1, r0
	adds r0, r5, #0
	bl sub_08021924
	adds r0, r5, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _080C6150
	ldrb r0, [r5, #0xa]
	cmp r0, #0xff
	beq _080C6158
	add r0, sp, #8
	adds r1, r5, #0
	bl sub_080421AC
	b _080C61E8
	.align 2, 0
_080C6148: .4byte gEwramData
_080C614C: .4byte 0x000004E4
_080C6150:
	ldrb r2, [r5, #0xa]
	adds r0, r2, #0
	cmp r0, #0xff
	bne _080C61C0
_080C6158:
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	movs r6, #0
	str r6, [sp]
	adds r4, r5, #0
	adds r4, #0x58
	ldrb r0, [r4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	movs r3, #0
	bl sub_0803E058
	ldr r1, [r5, #0x14]
	cmp r1, #0
	ble _080C6188
	ldr r0, [r5, #0x48]
	adds r1, r1, r0
	str r1, [r5, #0x14]
	ldr r1, [r5, #0x50]
	adds r0, r0, r1
	str r0, [r5, #0x48]
	b _080C618A
_080C6188:
	str r6, [r5, #0x14]
_080C618A:
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x54]
	adds r1, r1, r0
	str r1, [r5, #0x4c]
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _080C61D4
	ldrb r0, [r4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x22
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	b _080C61E8
_080C61C0:
	ldrh r0, [r5, #0x1c]
	adds r1, r0, #1
	strh r1, [r5, #0x1c]
	lsls r0, r0, #0x10
	ldr r1, _080C61F0 @ =0x03FF0000
	cmp r0, r1
	ble _080C61D4
	movs r0, #0xff
	orrs r0, r2
	strb r0, [r5, #0xa]
_080C61D4:
	ldrb r0, [r5, #0xa]
	cmp r0, #0xff
	beq _080C61E8
	adds r0, r5, #0
	bl sub_0803F17C
	add r0, sp, #8
	adds r1, r5, #0
	bl sub_080421AC
_080C61E8:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C61F0: .4byte 0x03FF0000

	thumb_func_start sub_080C61F4
sub_080C61F4: @ 0x080C61F4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r0, _080C622C @ =0x0820BEA4
	mov r8, r0
	ldr r1, _080C6230 @ =0x0824D198
	mov sb, r1
	ldr r3, _080C6234 @ =0x081F425C
	ldr r2, _080C6238 @ =gEwramData
	movs r0, #0x12
	ldrsh r1, [r5, r0]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080C623C @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r7, r1, r0
	ldrb r6, [r5, #0xa]
	cmp r6, #1
	beq _080C62B4
	cmp r6, #1
	bgt _080C6240
	cmp r6, #0
	beq _080C6246
	b _080C62E8
	.align 2, 0
_080C622C: .4byte 0x0820BEA4
_080C6230: .4byte 0x0824D198
_080C6234: .4byte 0x081F425C
_080C6238: .4byte gEwramData
_080C623C: .4byte 0x000004E4
_080C6240:
	cmp r6, #2
	beq _080C62DC
	b _080C62E8
_080C6246:
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r3, #0
	bl sub_0803AFB8
	adds r4, r0, #0
	mov r0, r8
	bl sub_080681D8
	adds r3, r0, #0
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r0, r5, #0
	mov r1, sb
	adds r2, r4, #0
	bl sub_0803B924
	ldr r0, _080C62B0 @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0xa
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	subs r1, #9
	strb r0, [r1]
	ldr r0, [r7, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r7, #0x44]
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldr r1, [r7, #0x4c]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r5, #0x4c]
	strb r6, [r5, #0xd]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	b _080C62E8
	.align 2, 0
_080C62B0: .4byte sub_0803B9D0
_080C62B4:
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x32
	bhi _080C62D6
	adds r0, r5, #0
	adds r0, #0x46
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0xaa
	ble _080C62E8
_080C62D6:
	movs r0, #2
	strb r0, [r5, #0xa]
	b _080C62E8
_080C62DC:
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080C62E8:
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
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080C6310
sub_080C6310: @ 0x080C6310
	push {r4, r5, r6, r7, lr}
	ldr r2, _080C6388 @ =sub_080C639C
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r7, r0, #0
	cmp r7, #0
	beq _080C6382
	ldr r0, _080C638C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080C6390 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r4, [r0, #0x40]
	ldr r0, _080C6394 @ =0xFFF00000
	adds r5, r4, r0
	movs r6, #0x80
	lsls r6, r6, #0xd
	bl RandomNumberGenerator
	adds r1, r6, #0
	bl __umodsi3
	ldr r1, _080C6398 @ =0xFFF80000
	adds r0, r0, r1
	str r0, [r7, #0x14]
	bl RandomNumberGenerator
	adds r1, r6, #0
	bl __umodsi3
	ldr r1, _080C6398 @ =0xFFF80000
	adds r0, r0, r1
	str r0, [r7, #0x18]
	ldr r1, [r7, #0x14]
	adds r4, r4, r1
	str r4, [r7, #0x40]
	adds r5, r5, r0
	str r5, [r7, #0x44]
	bl RandomNumberGenerator
	movs r1, #1
	adds r3, r7, #0
	adds r3, #0x58
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #9
	strb r0, [r1]
_080C6382:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C6388: .4byte sub_080C639C
_080C638C: .4byte gEwramData
_080C6390: .4byte 0x00013110
_080C6394: .4byte 0xFFF00000
_080C6398: .4byte 0xFFF80000

	thumb_func_start sub_080C639C
sub_080C639C: @ 0x080C639C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080C6410
	cmp r0, #1
	bgt _080C643C
	cmp r0, #0
	bne _080C643C
	ldr r0, _080C6404 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _080C6408 @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #7
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r4, #0
	adds r1, #0x59
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	ldr r0, _080C640C @ =sub_0803B9D0
	str r0, [r4, #4]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	adds r1, #0x13
	ldrb r0, [r1]
	orrs r2, r0
	strb r2, [r1]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	bl RandomNumberGenerator
	movs r1, #0x3f
	ands r1, r0
	strb r1, [r4, #0xd]
	b _080C643C
	.align 2, 0
_080C6404: .4byte 0x081C15F4
_080C6408: .4byte 0x0820ED60
_080C640C: .4byte sub_0803B9D0
_080C6410:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C643C
	adds r2, r4, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	subs r2, #0x14
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_080C643C:
	ldr r0, _080C6474 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _080C6478 @ =0x00013110
	adds r2, r2, r0
	ldr r0, [r2]
	ldr r0, [r0, #0x40]
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r2]
	ldr r1, [r4, #0x18]
	ldr r2, _080C647C @ =0xFFF00000
	adds r1, r1, r2
	ldr r0, [r0, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	adds r0, r4, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _080C646C
	adds r0, r4, #0
	bl EntityDelete
_080C646C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C6474: .4byte gEwramData
_080C6478: .4byte 0x00013110
_080C647C: .4byte 0xFFF00000

	thumb_func_start EnemyUkobackUpdate
EnemyUkobackUpdate: @ 0x080C6480
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _080C6494
	adds r0, r4, #0
	bl sub_080C64E8
	b _080C64E0
_080C6494:
	adds r0, r4, #0
	bl sub_08021924
	adds r0, r4, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _080C64B4
	ldrb r0, [r4, #0xa]
	cmp r0, #0xff
	beq _080C64B4
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	b _080C64E0
_080C64B4:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080C64C0
	cmp r0, #0xff
	beq _080C64C8
	b _080C64CE
_080C64C0:
	adds r0, r4, #0
	bl sub_080C5CE8
	b _080C64CE
_080C64C8:
	adds r0, r4, #0
	bl sub_080C5F10
_080C64CE:
	ldrb r0, [r4, #0xa]
	cmp r0, #0xff
	beq _080C64DA
	adds r0, r4, #0
	bl sub_0806DF20
_080C64DA:
	adds r0, r4, #0
	bl sub_0806E314
_080C64E0:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C64E8
sub_080C64E8: @ 0x080C64E8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080C6504
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080C6504:
	adds r0, r4, #0
	bl sub_0803F17C
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C6510
sub_080C6510: @ 0x080C6510
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

	thumb_func_start sub_080C653C
sub_080C653C: @ 0x080C653C
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
	ldrh r0, [r6, #0x34]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	strh r0, [r6, #0x34]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08042B8C
	adds r1, r6, #0
	adds r1, #0x2d
	movs r0, #8
	strb r0, [r1]
	movs r1, #0x34
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bgt _080C6588
	movs r0, #0
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	bl sub_080C5F10
_080C6588:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C6590
sub_080C6590: @ 0x080C6590
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #0
	ldr r2, _080C65B8 @ =sub_080C610C
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _080C65BE
	adds r1, r5, #0
	bl sub_080C5FA0
	cmp r0, #0
	bne _080C65BC
	adds r0, r4, #0
	bl EntityDelete
	b _080C65BE
	.align 2, 0
_080C65B8: .4byte sub_080C610C
_080C65BC:
	movs r6, #1
_080C65BE:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080C65C8
sub_080C65C8: @ 0x080C65C8
	push {r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	mov r2, sp
	adds r0, #0x3c
	ldrb r0, [r0]
	movs r1, #0
	strh r0, [r2]
	mov r0, sp
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	mov r1, sp
	movs r0, #1
	strh r0, [r1, #6]
	ldr r0, [r5, #0x40]
	str r0, [sp, #8]
	ldr r0, [r5, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	movs r4, #9
_080C65F4:
	bl sub_080C6310
	subs r4, #1
	cmp r4, #0
	bge _080C65F4
	adds r1, r5, #0
	adds r1, #0x2d
	movs r0, #8
	strb r0, [r1]
	movs r0, #0xff
	strb r0, [r5, #0xa]
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C6614
sub_080C6614: @ 0x080C6614
	adds r2, r0, #0
	adds r2, #0x2d
	movs r1, #8
	strb r1, [r2]
	movs r1, #0xff
	strb r1, [r0, #0xa]
	bx lr
	.align 2, 0

	thumb_func_start sub_080C6624
sub_080C6624: @ 0x080C6624
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	ldr r2, _080C6648 @ =sub_080C61F4
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r1, r0, #0
	cmp r1, #0
	beq _080C6640
	ldrh r0, [r4, #0x10]
	strh r0, [r1, #0x12]
	movs r5, #1
_080C6640:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080C6648: .4byte sub_080C61F4

	thumb_func_start EnemyNemesisCreate
EnemyNemesisCreate: @ 0x080C664C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_080C6714
	cmp r0, #0
	bne _080C6660
	adds r0, r4, #0
	bl EntityDelete
	b _080C66FE
_080C6660:
	adds r0, r4, #0
	bl sub_0806B04C
	adds r0, r4, #0
	adds r0, #0x5c
	movs r2, #0
	movs r6, #3
	strb r6, [r0]
	ldr r0, _080C6694 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _080C6698
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	beq _080C66FE
	movs r0, #7
	strb r0, [r4, #0xa]
	strb r2, [r4, #0xc]
	strb r2, [r4, #0xb]
	b _080C66FE
	.align 2, 0
_080C6694: .4byte gEwramData
_080C6698:
	adds r0, r4, #0
	bl sub_080C76D4
	cmp r0, #0
	bne _080C66AE
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080C66AE:
	ldr r2, _080C6704 @ =sub_080C7B28
	ldr r3, _080C6708 @ =sub_080C7604
	adds r0, r4, #0
	movs r1, #8
	bl sub_0804277C
	ldr r1, _080C670C @ =0x080804FC
	adds r0, r4, #0
	bl sub_08042884
	ldr r1, _080C6710 @ =0x1010F8F8
	adds r0, r4, #0
	bl sub_080428F0
	adds r0, r4, #0
	adds r0, #0x65
	strb r5, [r0]
	strb r5, [r4, #0x16]
	movs r0, #9
	strb r0, [r4, #0x17]
	adds r0, r4, #0
	adds r0, #0x24
	strb r6, [r0]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_080C68AC
	adds r0, r4, #0
	bl sub_080C7B54
	adds r0, r4, #0
	movs r1, #1
	bl sub_080C7A3C
_080C66FE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C6704: .4byte sub_080C7B28
_080C6708: .4byte sub_080C7604
_080C670C: .4byte 0x080804FC
_080C6710: .4byte 0x1010F8F8

	thumb_func_start sub_080C6714
sub_080C6714: @ 0x080C6714
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r5, _080C67B0 @ =0x081F4264
	adds r0, r5, #0
	bl sub_0803AFB8
	adds r4, r0, #0
	cmp r4, #0
	bge _080C6736
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803B800
	adds r4, r0, #0
	cmp r4, #0
	blt _080C67C0
_080C6736:
	ldr r0, _080C67B4 @ =0x0820BEC8
	movs r1, #0
	bl sub_08068264
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080C67C0
	adds r0, r6, #0
	adds r0, #0x2c
	strb r2, [r0]
	ldr r1, _080C67B8 @ =0x0824D2D8
	ldrb r3, [r0]
	adds r0, r6, #0
	adds r2, r4, #0
	bl sub_0803B924
	cmp r0, #0
	beq _080C67C0
	movs r0, #1
	bl sub_0803E654
	adds r2, r0, #0
	cmp r2, #0
	blt _080C67C0
	adds r3, r6, #0
	adds r3, #0x58
	movs r0, #0x1f
	ands r2, r0
	ldrb r1, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	movs r2, #0x80
	lsls r2, r2, #9
	movs r0, #0
	str r0, [sp]
	ldrb r0, [r3]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	ldr r0, _080C67BC @ =sub_0803B9D0
	str r0, [r6, #4]
	movs r0, #1
	b _080C67C2
	.align 2, 0
_080C67B0: .4byte 0x081F4264
_080C67B4: .4byte 0x0820BEC8
_080C67B8: .4byte 0x0824D2D8
_080C67BC: .4byte sub_0803B9D0
_080C67C0:
	movs r0, #0
_080C67C2:
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start EnemyNemesisUpdate
EnemyNemesisUpdate: @ 0x080C67CC
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	bne _080C67E0
	adds r0, r4, #0
	bl sub_080C7B24
	b _080C68A4
_080C67E0:
	cmp r0, #0xff
	bne _080C67EC
	adds r0, r4, #0
	bl sub_080C750C
	b _080C68A4
_080C67EC:
	adds r0, r4, #0
	bl sub_08021924
	adds r0, r4, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _080C682C
	movs r1, #0xa0
	lsls r1, r1, #0xf
	adds r0, r4, #0
	bl sub_0806BF78
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C6812
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080C68A4
_080C6812:
	ldrh r1, [r4, #0x18]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080C682C
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080C682C
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	b _080C68A4
_080C682C:
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bhi _080C6892
	lsls r0, r0, #2
	ldr r1, _080C683C @ =_080C6840
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C683C: .4byte _080C6840
_080C6840: @ jump table
	.4byte _080C685C @ case 0
	.4byte _080C6864 @ case 1
	.4byte _080C686C @ case 2
	.4byte _080C6874 @ case 3
	.4byte _080C687C @ case 4
	.4byte _080C6884 @ case 5
	.4byte _080C688C @ case 6
_080C685C:
	adds r0, r4, #0
	bl sub_080C68AC
	b _080C6892
_080C6864:
	adds r0, r4, #0
	bl sub_080C6AA8
	b _080C6892
_080C686C:
	adds r0, r4, #0
	bl sub_080C6D0C
	b _080C6892
_080C6874:
	adds r0, r4, #0
	bl sub_080C6F64
	b _080C6892
_080C687C:
	adds r0, r4, #0
	bl sub_080C70F0
	b _080C6892
_080C6884:
	adds r0, r4, #0
	bl sub_080C722C
	b _080C6892
_080C688C:
	adds r0, r4, #0
	bl sub_080C73F8
_080C6892:
	ldrh r1, [r4, #0x18]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080C68A4
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
_080C68A4:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C68AC
sub_080C68AC: @ 0x080C68AC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r2, _080C68DC @ =gEwramData
	ldrb r1, [r5, #0x12]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080C68E0 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r6, r1, r0
	ldrb r0, [r5, #0xb]
	cmp r0, #5
	bls _080C68D0
	b _080C6A9A
_080C68D0:
	lsls r0, r0, #2
	ldr r1, _080C68E4 @ =_080C68E8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C68DC: .4byte gEwramData
_080C68E0: .4byte 0x000004E4
_080C68E4: .4byte _080C68E8
_080C68E8: @ jump table
	.4byte _080C6900 @ case 0
	.4byte _080C6932 @ case 1
	.4byte _080C6990 @ case 2
	.4byte _080C6A18 @ case 3
	.4byte _080C6A28 @ case 4
	.4byte _080C6A7A @ case 5
_080C6900:
	movs r4, #0
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x58
	ldrb r0, [r1]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r1]
	adds r1, r6, #0
	adds r1, #0x58
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #1
	bl sub_080C7A3C
	movs r0, #5
	strb r0, [r6, #0xa]
	strb r4, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
_080C6932:
	movs r1, #0xa0
	lsls r1, r1, #0xf
	adds r0, r5, #0
	bl sub_0806BF78
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C6944
	b _080C6A9A
_080C6944:
	ldr r2, [r5, #0x40]
	movs r1, #0xa0
	lsls r1, r1, #0xc
	adds r0, r2, r1
	str r0, [r6, #0x40]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080C6964
	movs r1, #0xd0
	lsls r1, r1, #0xc
	adds r0, r2, r1
	str r0, [r6, #0x40]
_080C6964:
	ldr r0, [r5, #0x44]
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r0, r0, r1
	str r0, [r6, #0x44]
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	movs r2, #0x80
	lsls r2, r2, #9
	movs r1, #0
	str r1, [sp]
	adds r1, r5, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	b _080C6A72
_080C6990:
	ldrb r0, [r5, #0xd]
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r0, r0, #0
	adds r7, r5, #0
	adds r7, #0x58
	lsrs r0, r0, #0x1f
	lsls r0, r0, #5
	ldrb r2, [r7]
	movs r1, #0x21
	rsbs r1, r1, #0
	mov r8, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r7]
	ldrb r0, [r5, #0xd]
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r0, r0, #0
	adds r3, r6, #0
	adds r3, #0x58
	lsrs r0, r0, #0x1f
	lsls r0, r0, #5
	ldrb r2, [r3]
	mov r1, r8
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	adds r4, r5, #0
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r6, #7
	rsbs r6, r6, #0
	adds r0, r6, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x28
	bls _080C6A9A
	ldrb r1, [r7]
	mov r0, r8
	ands r0, r1
	strb r0, [r7]
	ldrb r1, [r3]
	mov r0, r8
	ands r0, r1
	strb r0, [r3]
	adds r0, r5, #0
	movs r1, #0
	bl sub_080C7A3C
	ldrb r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r4]
	b _080C6A6E
_080C6A18:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x14
	bls _080C6A9A
	b _080C6A6E
_080C6A28:
	ldrb r0, [r5, #0xd]
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r0, r0, #0
	adds r3, r6, #0
	adds r3, #0x58
	lsrs r0, r0, #0x1f
	lsls r0, r0, #5
	ldrb r2, [r3]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x28
	bls _080C6A9A
	ldrb r0, [r3]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3]
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _080C6A6E
	movs r0, #0
	strb r0, [r6, #0xa]
	strb r0, [r6, #0xc]
	strb r0, [r6, #0xb]
_080C6A6E:
	movs r0, #0
	strb r0, [r5, #0xd]
_080C6A72:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	b _080C6A9A
_080C6A7A:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x14
	bls _080C6A9A
	movs r1, #0
	strb r1, [r5, #0xd]
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080C6A9A
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
_080C6A9A:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C6AA8
sub_080C6AA8: @ 0x080C6AA8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r6, #0
	movs r7, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C6AC4
	ldrh r1, [r4, #0x18]
	movs r0, #2
	orrs r0, r1
	b _080C6ACC
_080C6AC4:
	ldrh r1, [r4, #0x18]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
_080C6ACC:
	strh r0, [r4, #0x18]
	ldrb r5, [r4, #0xb]
	cmp r5, #2
	bgt _080C6ADE
	cmp r5, #1
	bge _080C6B3C
	cmp r5, #0
	beq _080C6AE4
	b _080C6D02
_080C6ADE:
	cmp r5, #3
	beq _080C6B94
	b _080C6D02
_080C6AE4:
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _080C6B34 @ =0x1010F8F8
	adds r0, r4, #0
	bl sub_08042884
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x48]
	str r0, [r4, #0x4c]
	adds r0, r4, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C6B14
	ldr r0, [r4, #0x48]
	rsbs r0, r0, #0
	str r0, [r4, #0x48]
_080C6B14:
	adds r0, r4, #0
	bl sub_0806BDEC
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C6B26
	ldr r0, [r4, #0x4c]
	rsbs r0, r0, #0
	str r0, [r4, #0x4c]
_080C6B26:
	strh r5, [r4, #0x1a]
	ldr r0, _080C6B38 @ =0x0000FF9C
	strh r0, [r4, #0x1e]
	movs r0, #2
	strb r0, [r4, #0xb]
	b _080C6D02
	.align 2, 0
_080C6B34: .4byte 0x1010F8F8
_080C6B38: .4byte 0x0000FF9C
_080C6B3C:
	adds r0, r4, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C6B56
	adds r0, r4, #0
	adds r0, #0x1c
	movs r1, #0xc0
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #5
	b _080C6B62
_080C6B56:
	adds r0, r4, #0
	adds r0, #0x1c
	movs r1, #0xc0
	lsls r1, r1, #1
	movs r2, #0xf0
	lsls r2, r2, #8
_080C6B62:
	bl sub_080686CC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080C6B72
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080C6B72:
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	movs r2, #0x80
	lsls r2, r2, #9
	movs r1, #0
	str r1, [sp]
	adds r1, r4, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	b _080C6D02
_080C6B94:
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x4c]
	str r0, [r4, #0x48]
	adds r0, r4, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C6BB4
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bge _080C6BB0
	rsbs r0, r0, #0
_080C6BB0:
	rsbs r0, r0, #0
	str r0, [r4, #0x48]
_080C6BB4:
	adds r0, r4, #0
	bl sub_0806BDEC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x20
	cmp r0, #0
	ble _080C6BD0
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bge _080C6BCC
	rsbs r0, r0, #0
_080C6BCC:
	rsbs r0, r0, #0
	str r0, [r4, #0x4c]
_080C6BD0:
	adds r0, r4, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C6BEE
	adds r0, r4, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	cmp r0, #0x48
	bgt _080C6BFC
	b _080C6C06
_080C6BEE:
	adds r0, r4, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x48
	ble _080C6C06
_080C6BFC:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	b _080C6C08
_080C6C06:
	movs r6, #1
_080C6C08:
	adds r0, r4, #0
	bl sub_0806BDEC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x30
	cmp r0, #0
	bge _080C6C2C
	adds r0, r4, #0
	bl sub_0806BDEC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x30
	rsbs r0, r0, #0
	cmp r0, #0x10
	bgt _080C6C3C
	b _080C6C46
_080C6C2C:
	adds r0, r4, #0
	bl sub_0806BDEC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x30
	cmp r0, #0x10
	ble _080C6C46
_080C6C3C:
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	b _080C6C48
_080C6C46:
	movs r7, #1
_080C6C48:
	adds r0, r7, #0
	ands r0, r6
	cmp r0, #1
	bne _080C6C60
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080C6C60
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080C6C60:
	adds r0, r4, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C6C72
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bgt _080C6C84
_080C6C72:
	adds r0, r4, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080C6C8A
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bge _080C6C8A
_080C6C84:
	movs r0, #0
	strb r0, [r4, #0xb]
	b _080C6D02
_080C6C8A:
	ldrh r0, [r4, #0x1a]
	bl sub_080009E4
	cmp r0, #0
	bge _080C6C96
	adds r0, #0x1f
_080C6C96:
	asrs r0, r0, #5
	strh r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C6CAC
	movs r2, #0x80
	lsls r2, r2, #5
	b _080C6CAE
_080C6CAC:
	ldr r2, _080C6CF0 @ =0xFFFFF000
_080C6CAE:
	adds r0, r2, #0
	ldrh r1, [r4, #0x1c]
	adds r0, r0, r1
	strh r0, [r4, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ldrh r1, [r4, #0x1a]
	adds r0, r0, r1
	movs r1, #0
	strh r0, [r4, #0x1a]
	movs r2, #0x1c
	ldrsh r0, [r4, r2]
	movs r2, #0x80
	lsls r2, r2, #9
	str r1, [sp]
	adds r1, r4, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	ldrh r1, [r4, #0x14]
	movs r2, #0x14
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _080C6CF4
	subs r0, r1, #1
	b _080C6D00
	.align 2, 0
_080C6CF0: .4byte 0xFFFFF000
_080C6CF4:
	bl RandomNumberGenerator
	movs r1, #0xb4
	bl __umodsi3
	adds r0, #0xa
_080C6D00:
	strh r0, [r4, #0x14]
_080C6D02:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C6D0C
sub_080C6D0C: @ 0x080C6D0C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	ldr r2, _080C6D88 @ =gEwramData
	ldrb r1, [r4, #0x12]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080C6D8C @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r6, r1, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	mov r8, r0
	movs r7, #0xd8
	lsls r7, r7, #8
	ldrb r5, [r4, #0xb]
	cmp r5, #0
	bne _080C6D74
	ldrb r0, [r4, #0x17]
	cmp r0, #9
	bne _080C6D4A
	bl RandomNumberGenerator
	movs r1, #3
	ands r1, r0
	strb r1, [r4, #0x16]
	strb r5, [r4, #0x17]
_080C6D4A:
	ldr r2, _080C6D90 @ =0x08528A34
	ldrb r1, [r4, #0x16]
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r4, #0x17]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #2
	bne _080C6D74
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	beq _080C6D6E
	movs r0, #5
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
_080C6D6E:
	ldrb r0, [r4, #0x17]
	adds r0, #1
	strb r0, [r4, #0x17]
_080C6D74:
	ldrb r0, [r4, #0xb]
	cmp r0, #4
	bls _080C6D7C
	b _080C6EEA
_080C6D7C:
	lsls r0, r0, #2
	ldr r1, _080C6D94 @ =_080C6D98
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C6D88: .4byte gEwramData
_080C6D8C: .4byte 0x000004E4
_080C6D90: .4byte 0x08528A34
_080C6D94: .4byte _080C6D98
_080C6D98: @ jump table
	.4byte _080C6DAC @ case 0
	.4byte _080C6DFE @ case 1
	.4byte _080C6E0C @ case 2
	.4byte _080C6E20 @ case 3
	.4byte _080C6E7E @ case 4
_080C6DAC:
	ldrh r1, [r4, #0x18]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080C6DC2
	mov r0, r8
	rsbs r0, r0, #0
	mov r8, r0
	movs r0, #0x80
	lsls r0, r0, #9
	subs r7, r0, r7
_080C6DC2:
	ldr r0, [r4, #0x40]
	add r0, r8
	str r0, [r4, #0x40]
	adds r3, r4, #0
	adds r3, #0x1c
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	lsls r0, r0, #3
	cmp r0, #0
	bge _080C6DD8
	rsbs r0, r0, #0
_080C6DD8:
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r7, #0x10
	lsrs r2, r2, #0x10
	adds r0, r3, #0
	bl sub_080686CC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080C6E5C
	ldrb r0, [r6, #0xa]
	cmp r0, #2
	beq _080C6E56
	movs r1, #0
	movs r0, #2
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xc]
	strb r1, [r6, #0xb]
	b _080C6E56
_080C6DFE:
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	bne _080C6EEA
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	b _080C6EEA
_080C6E0C:
	movs r7, #0x98
	lsls r7, r7, #8
	ldrh r1, [r4, #0x18]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080C6E32
	movs r7, #0xd0
	lsls r7, r7, #7
	b _080C6E32
_080C6E20:
	movs r7, #0xa0
	lsls r7, r7, #6
	ldrh r1, [r4, #0x18]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080C6E32
	movs r7, #0xd8
	lsls r7, r7, #8
_080C6E32:
	adds r3, r4, #0
	adds r3, #0x1c
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	lsls r0, r0, #4
	cmp r0, #0
	bge _080C6E42
	rsbs r0, r0, #0
_080C6E42:
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r7, #0x10
	lsrs r2, r2, #0x10
	adds r0, r3, #0
	bl sub_080686CC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080C6E5C
_080C6E56:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080C6E5C:
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	movs r2, #0x80
	lsls r2, r2, #9
	movs r1, #0
	str r1, [sp]
	adds r1, r4, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	b _080C6EEA
_080C6E7E:
	ldrb r5, [r6, #0xa]
	cmp r5, #0
	bne _080C6EEA
	ldrb r0, [r4, #0x17]
	cmp r0, #9
	bne _080C6E96
	bl RandomNumberGenerator
	movs r1, #3
	ands r1, r0
	strb r1, [r4, #0x16]
	strb r5, [r4, #0x17]
_080C6E96:
	ldr r2, _080C6EB8 @ =0x08528A34
	ldrb r1, [r4, #0x16]
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r4, #0x17]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #1
	beq _080C6ECC
	cmp r0, #1
	bgt _080C6EBC
	cmp r0, #0
	beq _080C6EC2
	b _080C6EE4
	.align 2, 0
_080C6EB8: .4byte 0x08528A34
_080C6EBC:
	cmp r0, #2
	beq _080C6ED6
	b _080C6EE4
_080C6EC2:
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _080C6EE4
	movs r0, #3
	b _080C6EDE
_080C6ECC:
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	beq _080C6EE4
	movs r0, #4
	b _080C6EDE
_080C6ED6:
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	beq _080C6EE4
	movs r0, #5
_080C6EDE:
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
_080C6EE4:
	ldrb r0, [r4, #0x17]
	adds r0, #1
	strb r0, [r4, #0x17]
_080C6EEA:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C6EF8
sub_080C6EF8: @ 0x080C6EF8
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r0, r1
	bl sub_080009E4
	movs r1, #0x80
	lsls r1, r1, #0xd
	bl sub_0803E86C
	asrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	movs r1, #0x80
	lsls r1, r1, #0xc
	bl sub_0803E86C
	asrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080C6F42
	subs r0, #0x10
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_080C6F42:
	lsls r0, r1, #8
	orrs r4, r0
	movs r0, #0x81
	lsls r0, r0, #0x14
	adds r4, r4, r0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08042884
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080428F0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C6F64
sub_080C6F64: @ 0x080C6F64
	push {r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r4, #0xe
	ldr r1, _080C6F90 @ =0x081194D0
	add r0, sp, #8
	movs r2, #6
	bl memcpy
	adds r0, r5, #0
	bl sub_080C6EF8
	ldrb r0, [r5, #0xb]
	cmp r0, #4
	bls _080C6F84
	b _080C70E8
_080C6F84:
	lsls r0, r0, #2
	ldr r1, _080C6F94 @ =_080C6F98
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C6F90: .4byte 0x081194D0
_080C6F94: .4byte _080C6F98
_080C6F98: @ jump table
	.4byte _080C6FAC @ case 0
	.4byte _080C6FB6 @ case 1
	.4byte _080C6FF6 @ case 2
	.4byte _080C7030 @ case 3
	.4byte _080C70C6 @ case 4
_080C6FAC:
	movs r0, #3
	strb r0, [r5, #0x13]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
_080C6FB6:
	ldrb r1, [r5, #0x13]
	movs r0, #3
	subs r0, r0, r1
	lsls r0, r0, #1
	add r0, sp
	adds r0, #8
	ldrh r0, [r0]
	strh r0, [r5, #0x1e]
	ldrh r1, [r5, #0x18]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080C6FD8
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	strh r0, [r5, #0x1e]
_080C6FD8:
	movs r2, #0x1c
	ldrsh r1, [r5, r2]
	movs r0, #0x80
	lsls r0, r0, #7
	adds r1, r1, r0
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r5, #0
	bl sub_0806D2F8
	movs r0, #0
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
_080C6FF6:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r4
	ble _080C7016
	movs r0, #0
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0x85
	bl PlaySong
	b _080C70E8
_080C7016:
	ldr r0, [r5, #0x48]
	lsls r1, r0, #1
	adds r1, r1, r0
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x4c]
	lsls r1, r0, #1
	adds r1, r1, r0
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	b _080C70E8
_080C7030:
	ldrb r0, [r5, #0x13]
	cmp r0, #1
	bne _080C7040
	movs r1, #0
	movs r0, #4
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
	b _080C70E8
_080C7040:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsrs r1, r4, #1
	cmp r0, r1
	ble _080C706C
	movs r0, #0
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0x13]
	subs r0, #1
	strb r0, [r5, #0x13]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C7066
	movs r0, #4
	strb r0, [r5, #0xb]
	b _080C70E8
_080C7066:
	movs r0, #1
	strb r0, [r5, #0xb]
	b _080C70E8
_080C706C:
	ldrh r0, [r5, #0x1e]
	ldrh r1, [r5, #0x1c]
	adds r0, r0, r1
	movs r1, #0
	strh r0, [r5, #0x1c]
	movs r2, #0x1c
	ldrsh r0, [r5, r2]
	movs r4, #0x80
	lsls r4, r4, #9
	str r1, [sp]
	adds r1, r5, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_0803E058
	movs r0, #0x1c
	ldrsh r1, [r5, r0]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r1, r2
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_0806D2F8
	ldr r0, [r5, #0x48]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	ldr r0, [r5, #0x40]
	subs r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x4c]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	ldr r0, [r5, #0x44]
	subs r0, r0, r1
	str r0, [r5, #0x44]
	b _080C70E8
_080C70C6:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x28
	bls _080C70E8
	movs r1, #0
	strb r1, [r5, #0xd]
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080C70E6
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
_080C70E6:
	strb r1, [r5, #0x13]
_080C70E8:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080C70F0
sub_080C70F0: @ 0x080C70F0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _080C711C @ =0x085289FC
	mov r8, r0
	ldrb r0, [r4, #0x13]
	lsls r0, r0, #3
	mov r1, r8
	adds r6, r0, r1
	adds r0, r4, #0
	bl sub_080C6EF8
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _080C713A
	cmp r0, #1
	bgt _080C7120
	cmp r0, #0
	beq _080C712A
	b _080C721E
	.align 2, 0
_080C711C: .4byte 0x085289FC
_080C7120:
	cmp r0, #2
	beq _080C718A
	cmp r0, #5
	beq _080C71FC
	b _080C721E
_080C712A:
	strb r0, [r4, #0x13]
	mov r6, r8
	movs r0, #0x85
	bl PlaySong
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080C713A:
	ldrh r0, [r6, #6]
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r0, #0
	ldrsh r2, [r6, r0]
	ldrh r1, [r4, #0x18]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	cmp r7, #0
	beq _080C7156
	rsbs r2, r2, #0
_080C7156:
	lsls r2, r2, #0x10
	adds r0, r2, #0
	adds r1, r5, #0
	bl __divsi3
	str r0, [r4, #0x48]
	movs r1, #2
	ldrsh r0, [r6, r1]
	lsls r0, r0, #0x10
	adds r1, r5, #0
	bl __divsi3
	str r0, [r4, #0x4c]
	movs r2, #4
	ldrsh r0, [r6, r2]
	adds r1, r5, #0
	bl __divsi3
	strh r0, [r4, #0x1e]
	cmp r7, #0
	bne _080C7184
	rsbs r0, r0, #0
	strh r0, [r4, #0x1e]
_080C7184:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080C718A:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldrh r0, [r4, #0x1e]
	ldrh r1, [r4, #0x1c]
	adds r0, r0, r1
	movs r1, #0
	strh r0, [r4, #0x1c]
	movs r2, #0x1c
	ldrsh r0, [r4, r2]
	movs r2, #0x80
	lsls r2, r2, #9
	str r1, [sp]
	adds r1, r4, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C721E
	ldrb r0, [r4, #0x13]
	adds r0, #1
	strb r0, [r4, #0x13]
	ldrb r0, [r4, #0x13]
	lsls r0, r0, #3
	add r0, r8
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _080C71E8 @ =0x00007FFF
	cmp r1, r0
	bne _080C71EC
	movs r0, #5
	b _080C71EE
	.align 2, 0
_080C71E8: .4byte 0x00007FFF
_080C71EC:
	movs r0, #1
_080C71EE:
	strb r0, [r4, #0xb]
	movs r0, #0
	strb r0, [r4, #0xd]
	movs r0, #0x85
	bl PlaySong
	b _080C721E
_080C71FC:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x28
	bls _080C721E
	movs r1, #0
	strb r1, [r4, #0xd]
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080C721C
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080C721C:
	strb r1, [r4, #0x13]
_080C721E:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C722C
sub_080C722C: @ 0x080C722C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _080C7268 @ =gEwramData
	ldr r4, [r0]
	ldr r0, _080C726C @ =0x0000A094
	adds r4, r4, r0
	adds r0, r6, #0
	bl sub_0806CD38
	adds r5, r0, #0
	ldr r0, [r4, #4]
	adds r5, r5, r0
	adds r0, r6, #0
	bl sub_0806CD78
	ldr r1, [r4, #8]
	adds r0, r0, r1
	ldr r1, _080C7270 @ =0xFFE00000
	adds r4, r0, r1
	adds r0, r6, #0
	bl sub_080021C8
	subs r5, r5, r0
	cmp r5, #0
	bge _080C7274
	adds r0, r6, #0
	bl sub_080021C8
	b _080C727A
	.align 2, 0
_080C7268: .4byte gEwramData
_080C726C: .4byte 0x0000A094
_080C7270: .4byte 0xFFE00000
_080C7274:
	adds r0, r6, #0
	bl sub_080021C8
_080C727A:
	adds r0, r6, #0
	bl sub_080021E4
	subs r0, r4, r0
	cmp r0, #0
	bge _080C728E
	adds r0, r6, #0
	bl sub_080021E4
	b _080C7294
_080C728E:
	adds r0, r6, #0
	bl sub_080021E4
_080C7294:
	adds r0, r6, #0
	bl sub_080C6EF8
	ldrb r0, [r6, #0xb]
	cmp r0, #4
	bls _080C72A2
	b _080C73AC
_080C72A2:
	lsls r0, r0, #2
	ldr r1, _080C72AC @ =_080C72B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C72AC: .4byte _080C72B0
_080C72B0: @ jump table
	.4byte _080C72C4 @ case 0
	.4byte _080C72DE @ case 1
	.4byte _080C7386 @ case 2
	.4byte _080C739C @ case 3
	.4byte _080C739C @ case 4
_080C72C4:
	movs r0, #0
	str r0, [r6, #0x54]
	str r0, [r6, #0x50]
	str r0, [r6, #0x4c]
	str r0, [r6, #0x48]
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r6, #0x1e]
	strb r1, [r6, #0xd]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
_080C72DE:
	ldrb r0, [r6, #0xd]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080C72EE
	movs r0, #0x85
	bl PlaySong
_080C72EE:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x40
	bls _080C73AC
	movs r0, #0
	strh r0, [r6, #0x1e]
	adds r0, r6, #0
	bl sub_0806BAC8
	movs r2, #0xc0
	lsls r2, r2, #8
	adds r0, r0, r2
	strh r0, [r6, #0x1c]
	movs r1, #0x1c
	ldrsh r0, [r6, r1]
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r0, r2
	bl sub_080009E4
	movs r4, #0x80
	lsls r4, r4, #0xa
	adds r1, r4, #0
	bl sub_0803E86C
	str r0, [r6, #0x48]
	movs r1, #0x1c
	ldrsh r0, [r6, r1]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r0, r2
	bl sub_080009E4
	adds r1, r4, #0
	bl sub_0803E86C
	str r0, [r6, #0x4c]
	adds r0, r6, #0
	bl sub_0806CD38
	ldr r1, [r6, #0x40]
	subs r0, r0, r1
	ldr r1, [r6, #0x48]
	bl __divsi3
	cmp r0, #0
	bge _080C7366
	adds r0, r6, #0
	bl sub_0806CD38
	ldr r1, [r6, #0x40]
	subs r0, r0, r1
	ldr r1, [r6, #0x48]
	bl __divsi3
	rsbs r0, r0, #0
	b _080C7376
_080C7366:
	adds r0, r6, #0
	bl sub_0806CD38
	ldr r1, [r6, #0x40]
	subs r0, r0, r1
	ldr r1, [r6, #0x48]
	bl __divsi3
_080C7376:
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	movs r0, #0x85
	bl PlaySong
	b _080C73AC
_080C7386:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _080C73AC
	movs r0, #3
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xd]
	b _080C73AC
_080C739C:
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	beq _080C73AC
	movs r1, #0
	movs r0, #1
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xc]
	strb r1, [r6, #0xb]
_080C73AC:
	ldr r0, [r6, #0x40]
	ldr r2, [r6, #0x48]
	adds r0, r0, r2
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x44]
	ldr r1, [r6, #0x4c]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	ldr r0, [r6, #0x50]
	adds r2, r2, r0
	str r2, [r6, #0x48]
	ldr r0, [r6, #0x54]
	adds r1, r1, r0
	str r1, [r6, #0x4c]
	ldrh r0, [r6, #0x1e]
	ldrh r1, [r6, #0x1c]
	adds r0, r0, r1
	movs r1, #0
	strh r0, [r6, #0x1c]
	movs r2, #0x1c
	ldrsh r0, [r6, r2]
	movs r2, #0x80
	lsls r2, r2, #9
	str r1, [sp]
	adds r1, r6, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080C73F8
sub_080C73F8: @ 0x080C73F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r2, _080C7424 @ =gEwramData
	ldrb r1, [r4, #0x12]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080C7428 @ =0x000004E4
	adds r0, r0, r1
	ldr r2, [r2]
	adds r0, r0, r2
	mov r8, r0
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _080C7460
	cmp r0, #1
	bgt _080C742C
	cmp r0, #0
	beq _080C7432
	b _080C74F0
	.align 2, 0
_080C7424: .4byte gEwramData
_080C7428: .4byte 0x000004E4
_080C742C:
	cmp r0, #2
	beq _080C74C6
	b _080C74F0
_080C7432:
	strb r0, [r4, #0xd]
	strh r0, [r4, #0x1a]
	ldr r1, _080C744C @ =0x00013110
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r4, #0x40]
	cmp r1, r0
	bge _080C7450
	ldrh r0, [r4, #0x18]
	movs r1, #8
	orrs r0, r1
	b _080C7458
	.align 2, 0
_080C744C: .4byte 0x00013110
_080C7450:
	ldrh r1, [r4, #0x18]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
_080C7458:
	strh r0, [r4, #0x18]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080C7460:
	movs r7, #0xd0
	lsls r7, r7, #8
	movs r5, #0x80
	lsls r5, r5, #0xa
	ldrh r6, [r4, #0x1a]
	ldrh r1, [r4, #0x18]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080C7476
	rsbs r5, r5, #0
_080C7476:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r7, r2
	bl sub_080009E4
	asrs r1, r5, #8
	asrs r0, r0, #8
	muls r1, r0, r1
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	adds r0, r7, #0
	bl sub_080009E4
	movs r1, #0xc0
	lsls r1, r1, #9
	asrs r1, r1, #8
	asrs r0, r0, #8
	adds r2, r0, #0
	muls r2, r1, r2
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xf0
	lsls r1, r1, #4
	muls r0, r1, r0
	adds r2, r2, r0
	ldr r0, [r4, #0x44]
	adds r0, r0, r2
	str r0, [r4, #0x44]
	ldrh r0, [r4, #0x1a]
	adds r0, #1
	strh r0, [r4, #0x1a]
	mov r1, r8
	ldrb r0, [r1, #0xa]
	cmp r0, #4
	bne _080C74F0
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	b _080C74F0
_080C74C6:
	mov r2, r8
	ldrb r1, [r2, #0xa]
	cmp r1, #0
	bne _080C74F0
	movs r2, #0x34
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bgt _080C74E2
	ldrb r2, [r4, #0xa]
	adds r0, r2, #0
	cmp r0, #0xff
	beq _080C74F0
	movs r0, #0xff
	b _080C74EA
_080C74E2:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080C74F0
	movs r0, #1
_080C74EA:
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080C74F0:
	movs r1, #0x34
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _080C7500
	ldrh r1, [r4, #0x18]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r4, #0x18]
_080C7500:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C750C
sub_080C750C: @ 0x080C750C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrb r4, [r5, #0xb]
	cmp r4, #0
	beq _080C7522
	cmp r4, #1
	beq _080C755E
	adds r4, r5, #0
	adds r4, #0x58
	b _080C75BC
_080C7522:
	movs r0, #0x72
	bl PlaySong
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
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r5, #0x54]
	strb r4, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	bl sub_080C7AB8
_080C755E:
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x54]
	adds r1, r1, r0
	str r1, [r5, #0x4c]
	adds r0, r5, #0
	adds r0, #0x46
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0xaa
	bgt _080C758A
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r5, #0
	adds r4, #0x58
	cmp r0, #0x40
	bls _080C75BC
_080C758A:
	adds r4, r5, #0
	adds r4, #0x58
	ldrb r0, [r4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r1, r5, #0
	adds r1, #0x59
	ldrb r0, [r1]
	movs r3, #8
	orrs r0, r3
	strb r0, [r1]
	ldrb r1, [r5, #0x12]
	ldr r0, _080C75FC @ =gEwramData
	ldr r2, [r0]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, _080C7600 @ =0x0000053D
	adds r0, r0, r1
	ldrb r1, [r0]
	orrs r1, r3
	strb r1, [r0]
_080C75BC:
	ldrb r0, [r5, #0xd]
	movs r1, #7
	bl __umodsi3
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C75E2
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	movs r3, #0x80
	lsls r3, r3, #0xd
	adds r2, r5, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	adds r2, r3, #0
	bl sub_0806D5C0
_080C75E2:
	ldrb r1, [r5, #0xd]
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #5
	ldrb r2, [r4]
	subs r0, #0x22
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C75FC: .4byte gEwramData
_080C7600: .4byte 0x0000053D

	thumb_func_start sub_080C7604
sub_080C7604: @ 0x080C7604
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
	ldrh r0, [r6, #0x34]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	strh r0, [r6, #0x34]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08042B8C
	adds r1, r6, #0
	adds r1, #0x2d
	movs r0, #8
	strb r0, [r1]
	adds r2, r6, #0
	adds r2, #0x24
	ldrb r1, [r2]
	cmp r1, #0
	beq _080C7656
	movs r3, #0x34
	ldrsh r0, [r6, r3]
	cmp r0, #0
	ble _080C765E
	subs r0, r1, #1
	strb r0, [r2]
	b _080C76AC
_080C7656:
	movs r1, #0x34
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bgt _080C766A
_080C765E:
	adds r0, r6, #0
	bl sub_080683BC
	ldr r0, _080C76C8 @ =0x000001C3
	bl PlaySong
_080C766A:
	ldrb r1, [r6, #0x12]
	ldr r4, _080C76CC @ =gEwramData
	ldr r2, [r4]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r2, _080C76D0 @ =0x000004E4
	adds r1, r0, r2
	ldrb r0, [r1, #0xa]
	cmp r0, #3
	beq _080C769C
	movs r3, #0
	movs r0, #3
	strb r0, [r1, #0xa]
	ldrb r1, [r6, #0x12]
	ldr r2, [r4]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, _080C76D0 @ =0x000004E4
	adds r0, r0, r1
	strb r3, [r0, #0xc]
	strb r3, [r0, #0xb]
_080C769C:
	movs r1, #0
	movs r0, #6
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xb]
	adds r1, r6, #0
	adds r1, #0x24
	movs r0, #3
	strb r0, [r1]
_080C76AC:
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	movs r1, #0
	bl sub_080C7A3C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C76C8: .4byte 0x000001C3
_080C76CC: .4byte gEwramData
_080C76D0: .4byte 0x000004E4

	thumb_func_start sub_080C76D4
sub_080C76D4: @ 0x080C76D4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r0, _080C7718 @ =sub_080C7784
	mov r8, r0
	movs r0, #0x49
	movs r1, #0xcf
	mov r2, r8
	bl EntityCreateInRange
	adds r6, r0, #0
	cmp r6, #0
	beq _080C7714
	ldr r5, _080C771C @ =0x0824D2D8
	ldr r0, _080C7720 @ =0x081F4264
	bl sub_0803AFB8
	adds r4, r0, #0
	ldr r0, _080C7724 @ =0x0820BEC8
	bl sub_080681D8
	adds r3, r0, #0
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0803B924
	cmp r0, #0
	bne _080C7728
_080C7714:
	movs r0, #0
	b _080C7774
	.align 2, 0
_080C7718: .4byte sub_080C7784
_080C771C: .4byte 0x0824D2D8
_080C7720: .4byte 0x081F4264
_080C7724: .4byte 0x0820BEC8
_080C7728:
	ldrb r0, [r7, #0x10]
	movs r3, #0
	strb r0, [r6, #0x11]
	ldrb r0, [r6, #0x10]
	strb r0, [r7, #0x12]
	adds r2, r6, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080C7780 @ =sub_0803B9D0
	str r0, [r6, #4]
	subs r2, #1
	ldrb r0, [r2]
	orrs r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #2
	adds r1, r6, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	beq _080C776C
	movs r0, #1
	strb r0, [r6, #0xa]
	strb r3, [r6, #0xc]
	strb r3, [r6, #0xb]
_080C776C:
	adds r0, r6, #0
	bl _call_via_r8
	movs r0, #1
_080C7774:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080C7780: .4byte sub_0803B9D0

	thumb_func_start sub_080C7784
sub_080C7784: @ 0x080C7784
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, _080C77B8 @ =gEwramData
	ldrb r1, [r4, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080C77BC @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r6, r1, r0
	adds r0, r4, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _080C77A6
	b _080C7996
_080C77A6:
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bls _080C77AE
	b _080C7996
_080C77AE:
	lsls r0, r0, #2
	ldr r1, _080C77C0 @ =_080C77C4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C77B8: .4byte gEwramData
_080C77BC: .4byte 0x000004E4
_080C77C0: .4byte _080C77C4
_080C77C4: @ jump table
	.4byte _080C77DC @ case 0
	.4byte _080C77EA @ case 1
	.4byte _080C7810 @ case 2
	.4byte _080C789A @ case 3
	.4byte _080C7940 @ case 4
	.4byte _080C7996 @ case 5
_080C77DC:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	b _080C7996
_080C77EA:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x44]
	adds r0, r4, #0
	bl sub_0806BC40
	b _080C7996
_080C7810:
	ldrb r5, [r4, #0xb]
	cmp r5, #0
	beq _080C781C
	cmp r5, #1
	beq _080C785A
	b _080C7996
_080C781C:
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x40]
	adds r0, r4, #0
	bl sub_0806BC40
	adds r3, r4, #0
	adds r3, #0x58
	ldrb r2, [r3]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #2
	strb r0, [r1]
	strb r5, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080C785A:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080C7874
	ldr r0, [r6, #0x40]
	ldr r1, _080C7870 @ =0xFFF70000
	b _080C787A
	.align 2, 0
_080C7870: .4byte 0xFFF70000
_080C7874:
	ldr r0, [r6, #0x40]
	movs r1, #0x90
	lsls r1, r1, #0xc
_080C787A:
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	movs r1, #0x94
	lsls r1, r1, #0xe
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _080C7898
	b _080C7996
_080C7898:
	b _080C7928
_080C789A:
	ldrb r2, [r4, #0xb]
	cmp r2, #0
	beq _080C78A6
	cmp r2, #1
	beq _080C78F0
	b _080C7996
_080C78A6:
	adds r3, r4, #0
	adds r3, #0x58
	ldrb r1, [r3]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #3
	strb r0, [r1]
	strb r2, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	ldr r0, _080C78E0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080C78E4 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r6, #0x40]
	cmp r1, r0
	bge _080C78E8
	ldrb r1, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	b _080C78EE
	.align 2, 0
_080C78E0: .4byte gEwramData
_080C78E4: .4byte 0x00013110
_080C78E8:
	ldrb r0, [r3]
	movs r1, #0x40
	orrs r0, r1
_080C78EE:
	strb r0, [r3]
_080C78F0:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080C7908
	ldr r0, [r6, #0x40]
	ldr r1, _080C7904 @ =0xFFF60000
	b _080C790E
	.align 2, 0
_080C7904: .4byte 0xFFF60000
_080C7908:
	ldr r0, [r6, #0x40]
	movs r1, #0xa0
	lsls r1, r1, #0xc
_080C790E:
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	ldr r1, _080C793C @ =0xFFFC0000
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x27
	bls _080C7996
_080C7928:
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	beq _080C7996
	movs r1, #0
	movs r0, #4
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	b _080C7996
	.align 2, 0
_080C793C: .4byte 0xFFFC0000
_080C7940:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080C794C
	cmp r0, #1
	beq _080C7954
	b _080C7996
_080C794C:
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080C7954:
	ldrb r0, [r4, #0xd]
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r0, r0, #0
	adds r3, r4, #0
	adds r3, #0x58
	lsrs r0, r0, #0x1f
	lsls r0, r0, #5
	ldrb r2, [r3]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bls _080C7996
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080C7992
	movs r0, #0
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xb]
_080C7992:
	movs r0, #0
	strb r0, [r4, #0xd]
_080C7996:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080C799C
sub_080C799C: @ 0x080C799C
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r2, _080C79CC @ =gEwramData
	ldrb r1, [r4, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080C79D0 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r5, r1, r0
	add r1, sp, #4
	mov r0, sp
	adds r2, r5, #0
	bl sub_08042030
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080C79D4
	cmp r0, #1
	beq _080C79FC
	b _080C7A26
	.align 2, 0
_080C79CC: .4byte gEwramData
_080C79D0: .4byte 0x000004E4
_080C79D4:
	ldr r0, _080C7A30 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _080C7A34 @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #7
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _080C7A38 @ =sub_0803B9D0
	str r0, [r4, #4]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_080C79FC:
	adds r1, r5, #0
	adds r1, #0x42
	mov r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r2, r5, #0
	adds r2, #0x46
	mov r0, sp
	movs r1, #1
	ldrsb r1, [r0, r1]
	ldrh r0, [r2]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
_080C7A26:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C7A30: .4byte 0x081C15F4
_080C7A34: .4byte 0x0820ED60
_080C7A38: .4byte sub_0803B9D0

	thumb_func_start sub_080C7A3C
sub_080C7A3C: @ 0x080C7A3C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r3, r0, #0
	adds r4, r1, #0
	adds r0, #0x21
	ldrb r0, [r0]
	add r1, sp, #4
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x22
	ldrb r2, [r0]
	mov r0, sp
	adds r0, #5
	strb r2, [r0]
	adds r0, r3, #0
	adds r0, #0x23
	ldrb r2, [r0]
	mov r0, sp
	adds r0, #6
	strb r2, [r0]
	mov r0, sp
	movs r2, #3
	bl memcpy
	movs r3, #0
	ldr r7, _080C7AB0 @ =gEwramData
	movs r0, #1
	ands r4, r0
	lsls r4, r4, #5
	movs r6, #0x21
	rsbs r6, r6, #0
	ldr r5, _080C7AB4 @ =0x000004E4
_080C7A7C:
	mov r0, sp
	adds r1, r0, r3
	ldrb r0, [r1]
	cmp r0, #0
	beq _080C7AA0
	adds r1, r0, #0
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r7]
	adds r1, r1, r0
	adds r1, #0x58
	ldrb r2, [r1]
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r4
	strb r0, [r1]
_080C7AA0:
	adds r3, #1
	cmp r3, #2
	ble _080C7A7C
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C7AB0: .4byte gEwramData
_080C7AB4: .4byte 0x000004E4

	thumb_func_start sub_080C7AB8
sub_080C7AB8: @ 0x080C7AB8
	push {r4, r5, lr}
	sub sp, #8
	adds r3, r0, #0
	adds r0, #0x21
	ldrb r0, [r0]
	add r1, sp, #4
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x22
	ldrb r2, [r0]
	mov r0, sp
	adds r0, #5
	strb r2, [r0]
	adds r0, r3, #0
	adds r0, #0x23
	ldrb r2, [r0]
	mov r0, sp
	adds r0, #6
	strb r2, [r0]
	mov r0, sp
	movs r2, #3
	bl memcpy
	movs r2, #0
	ldr r5, _080C7B1C @ =gEwramData
	ldr r4, _080C7B20 @ =0x000004E4
	movs r3, #8
_080C7AEE:
	mov r0, sp
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0
	beq _080C7B0E
	adds r1, r0, #0
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r5]
	adds r1, r1, r0
	adds r1, #0x59
	ldrb r0, [r1]
	orrs r0, r3
	strb r0, [r1]
_080C7B0E:
	adds r2, #1
	cmp r2, #2
	ble _080C7AEE
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C7B1C: .4byte gEwramData
_080C7B20: .4byte 0x000004E4

	thumb_func_start sub_080C7B24
sub_080C7B24: @ 0x080C7B24
	bx lr
	.align 2, 0

	thumb_func_start sub_080C7B28
sub_080C7B28: @ 0x080C7B28
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

	thumb_func_start sub_080C7B54
sub_080C7B54: @ 0x080C7B54
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r2, #9
	movs r3, #2
	bl sub_080458E4
	bl EntityGetSlot
	adds r1, r4, #0
	adds r1, #0x21
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #2
	bl sub_080458E4
	bl EntityGetSlot
	adds r1, r4, #0
	adds r1, #0x22
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #6
	movs r3, #2
	bl sub_080458E4
	bl EntityGetSlot
	adds r4, #0x23
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start EnemyKillerDollCreate
EnemyKillerDollCreate: @ 0x080C7B9C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080C7C04
	cmp r0, #0
	bne _080C7BB0
	adds r0, r4, #0
	bl EntityDelete
	b _080C7BF4
_080C7BB0:
	movs r5, #0
	strb r5, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	adds r0, r4, #0
	bl sub_0806B04C
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #9
	strb r0, [r1]
	ldr r0, _080C7BE0 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080C7BE4
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	b _080C7BF4
	.align 2, 0
_080C7BE0: .4byte gEwramData
_080C7BE4:
	ldr r1, _080C7BFC @ =sub_080C893C
	ldr r2, _080C7C00 @ =sub_080C81AC
	adds r0, r4, #0
	bl sub_0806D244
	adds r0, r4, #0
	bl sub_080C7C94
_080C7BF4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C7BFC: .4byte sub_080C893C
_080C7C00: .4byte sub_080C81AC

	thumb_func_start sub_080C7C04
sub_080C7C04: @ 0x080C7C04
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r7, _080C7C78 @ =0x0820BEEC
	ldr r0, _080C7C7C @ =0x0824DB0C
	mov r8, r0
	ldr r6, _080C7C80 @ =0x081F426C
	adds r0, r6, #0
	bl sub_0803AFB8
	adds r4, r0, #0
	cmp r4, #0
	bge _080C7C2E
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803B800
	adds r4, r0, #0
	cmp r4, #0
	blt _080C7C88
_080C7C2E:
	adds r0, r7, #0
	movs r1, #0
	bl sub_08068264
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080C7C88
	adds r0, r5, #0
	adds r0, #0x2c
	strb r2, [r0]
	ldrb r3, [r0]
	adds r0, r5, #0
	mov r1, r8
	adds r2, r4, #0
	bl sub_0803B924
	cmp r0, #0
	beq _080C7C88
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	cmp r0, #0
	beq _080C7C88
	adds r0, r5, #0
	bl sub_0803F17C
	ldr r0, _080C7C84 @ =sub_0803B9D0
	str r0, [r5, #4]
	movs r0, #1
	b _080C7C8A
	.align 2, 0
_080C7C78: .4byte 0x0820BEEC
_080C7C7C: .4byte 0x0824DB0C
_080C7C80: .4byte 0x081F426C
_080C7C84: .4byte sub_0803B9D0
_080C7C88:
	movs r0, #0
_080C7C8A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080C7C94
sub_080C7C94: @ 0x080C7C94
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	str r4, [r5, #0x50]
	str r4, [r5, #0x48]
	str r4, [r5, #0x54]
	str r4, [r5, #0x4c]
	bl sub_0806AF98
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r4, [r5, #0xc]
	strb r4, [r5, #0xb]
	bl RandomNumberGenerator
	ldr r1, _080C7CDC @ =0x000007FF
	ands r1, r0
	adds r1, #0x80
	strh r1, [r5, #0x14]
	bl RandomNumberGenerator
	movs r1, #0xff
	ands r1, r0
	adds r1, #0x20
	strh r1, [r5, #0x16]
	bl RandomNumberGenerator
	ldr r1, _080C7CE0 @ =0x000001FF
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	strh r1, [r5, #0x18]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C7CDC: .4byte 0x000007FF
_080C7CE0: .4byte 0x000001FF

	thumb_func_start sub_080C7CE4
sub_080C7CE4: @ 0x080C7CE4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0806CD38
	adds r0, r6, #0
	bl sub_0806CD78
	ldrh r1, [r6, #0x14]
	movs r2, #0x14
	ldrsh r0, [r6, r2]
	cmp r0, #0
	beq _080C7D00
	subs r0, r1, #1
	strh r0, [r6, #0x14]
_080C7D00:
	ldrh r1, [r6, #0x16]
	movs r2, #0x16
	ldrsh r0, [r6, r2]
	cmp r0, #0
	beq _080C7D0E
	subs r0, r1, #1
	strh r0, [r6, #0x16]
_080C7D0E:
	ldrh r1, [r6, #0x18]
	movs r2, #0x18
	ldrsh r0, [r6, r2]
	cmp r0, #0
	beq _080C7D1C
	subs r0, r1, #1
	strh r0, [r6, #0x18]
_080C7D1C:
	ldrb r0, [r6, #0xb]
	cmp r0, #6
	bls _080C7D24
	b _080C8110
_080C7D24:
	lsls r0, r0, #2
	ldr r1, _080C7D30 @ =_080C7D34
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C7D30: .4byte _080C7D34
_080C7D34: @ jump table
	.4byte _080C7D50 @ case 0
	.4byte _080C7DA6 @ case 1
	.4byte _080C7DE0 @ case 2
	.4byte _080C7E1A @ case 3
	.4byte _080C7F00 @ case 4
	.4byte _080C7F5C @ case 5
	.4byte _080C8058 @ case 6
_080C7D50:
	adds r4, r6, #0
	adds r4, #0x6d
	ldrb r0, [r4]
	cmp r0, #0
	beq _080C7D66
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080C7D66:
	movs r1, #0xf0
	lsls r1, r1, #0xe
	adds r0, r6, #0
	bl sub_0806BF78
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C7D78
	b _080C8110
_080C7D78:
	adds r0, r6, #0
	bl sub_0806CD38
	ldr r1, [r6, #0x40]
	cmp r0, r1
	bne _080C7D92
	adds r0, r6, #0
	bl sub_0806CD78
	ldr r1, [r6, #0x44]
	cmp r0, r1
	bne _080C7D92
	b _080C8110
_080C7D92:
	ldrb r0, [r4]
	cmp r0, #1
	beq _080C7DD0
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _080C7DD0
_080C7DA6:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080C7DB6
	b _080C8110
_080C7DB6:
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #2
	beq _080C7DCC
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080C7DCC:
	ldr r0, _080C7DDC @ =0xFFFFC000
	str r0, [r6, #0x4c]
_080C7DD0:
	movs r0, #0
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	b _080C8110
	.align 2, 0
_080C7DDC: .4byte 0xFFFFC000
_080C7DE0:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bhi _080C7DF0
	b _080C8110
_080C7DF0:
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #4
	beq _080C7E06
	adds r0, r6, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080C7E06:
	movs r0, #0
	str r0, [r6, #0x4c]
	strb r0, [r6, #0xd]
	movs r0, #4
	strb r0, [r6, #0xb]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #3
	strb r0, [r1]
	b _080C8110
_080C7E1A:
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	beq _080C7E26
	cmp r0, #1
	beq _080C7EC0
	b _080C8110
_080C7E26:
	str r0, [r6, #0x50]
	str r0, [r6, #0x48]
	str r0, [r6, #0x54]
	str r0, [r6, #0x4c]
	bl RandomNumberGenerator
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	bne _080C7E78
	adds r0, r6, #0
	bl sub_0806BC40
	adds r3, r6, #0
	adds r3, #0x58
	ldrb r2, [r3]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r6, #0x48]
	adds r0, r6, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C7EA4
	ldr r0, [r6, #0x48]
	rsbs r0, r0, #0
	str r0, [r6, #0x48]
	b _080C7EA4
_080C7E78:
	movs r0, #0x88
	lsls r0, r0, #8
	str r0, [r6, #0x48]
	str r0, [r6, #0x4c]
	adds r0, r6, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C7E92
	ldr r0, [r6, #0x48]
	rsbs r0, r0, #0
	str r0, [r6, #0x48]
_080C7E92:
	adds r0, r6, #0
	bl sub_0806BDEC
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C7EA4
	ldr r0, [r6, #0x4c]
	rsbs r0, r0, #0
	str r0, [r6, #0x4c]
_080C7EA4:
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #4
	beq _080C7EBA
	adds r0, r6, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080C7EBA:
	ldrb r0, [r6, #0xc]
	adds r0, #1
	b _080C810E
_080C7EC0:
	adds r1, r6, #0
	adds r1, #0x58
	ldrb r3, [r1]
	movs r4, #0x40
	adds r0, r4, #0
	ands r0, r3
	adds r2, r1, #0
	cmp r0, #0
	bne _080C7EE8
	ldr r0, [r6, #0x48]
	cmp r0, #0
	ble _080C7EDE
	movs r0, #0x40
	orrs r0, r3
	strb r0, [r2]
_080C7EDE:
	ldrb r1, [r2]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080C7EF8
_080C7EE8:
	ldr r0, [r6, #0x48]
	cmp r0, #0
	bge _080C7EF8
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_080C7EF8:
	adds r0, r6, #0
	bl sub_080C86A0
	b _080C8110
_080C7F00:
	ldrb r4, [r6, #0xc]
	cmp r4, #0
	beq _080C7F08
	b _080C8110
_080C7F08:
	str r4, [r6, #0x50]
	str r4, [r6, #0x48]
	str r4, [r6, #0x54]
	str r4, [r6, #0x4c]
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #3
	beq _080C7F26
	adds r0, r6, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080C7F26:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080C7F36
	b _080C8110
_080C7F36:
	movs r0, #3
	strb r0, [r6, #0xb]
	strb r4, [r6, #0xc]
	ldrh r0, [r6, #0x14]
	adds r0, #0x20
	strh r0, [r6, #0x14]
	ldrh r0, [r6, #0x18]
	adds r0, #0x20
	strh r0, [r6, #0x18]
	bl RandomNumberGenerator
	movs r1, #0xff
	ands r1, r0
	adds r1, #0x20
	strh r1, [r6, #0x16]
	adds r0, r6, #0
	bl sub_0806BC40
	b _080C8110
_080C7F5C:
	ldrb r0, [r6, #0xc]
	cmp r0, #1
	beq _080C7FFA
	cmp r0, #1
	bgt _080C7F6C
	cmp r0, #0
	beq _080C7F72
	b _080C8110
_080C7F6C:
	cmp r0, #2
	beq _080C8010
	b _080C8110
_080C7F72:
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #5
	beq _080C7F88
	adds r0, r6, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080C7F88:
	adds r0, r6, #0
	bl sub_0806BAC8
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r1, #0xa0
	lsls r1, r1, #9
	adds r0, r4, r1
	bl sub_080009E4
	movs r5, #0x80
	lsls r5, r5, #9
	adds r1, r5, #0
	bl sub_0803E86C
	str r0, [r6, #0x48]
	adds r4, r4, r5
	adds r0, r4, #0
	bl sub_080009E4
	adds r1, r5, #0
	bl sub_0803E86C
	str r0, [r6, #0x4c]
	adds r0, r6, #0
	bl sub_0806CD38
	ldr r1, [r6, #0x40]
	subs r0, r0, r1
	ldr r1, [r6, #0x48]
	bl __divsi3
	cmp r0, #0
	bge _080C7FE2
	adds r0, r6, #0
	bl sub_0806CD38
	ldr r1, [r6, #0x40]
	subs r0, r0, r1
	ldr r1, [r6, #0x48]
	bl __divsi3
	rsbs r0, r0, #0
	b _080C7FF2
_080C7FE2:
	adds r0, r6, #0
	bl sub_0806CD38
	ldr r1, [r6, #0x40]
	subs r0, r0, r1
	ldr r1, [r6, #0x48]
	bl __divsi3
_080C7FF2:
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xc]
	adds r0, #1
	strb r0, [r6, #0xc]
_080C7FFA:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080C800A
	b _080C8110
_080C800A:
	ldrb r0, [r6, #0xc]
	adds r0, #1
	b _080C810E
_080C8010:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080C802A
	adds r0, r6, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C8030
_080C802A:
	movs r1, #0
	movs r0, #4
	b _080C8034
_080C8030:
	movs r1, #0
	movs r0, #3
_080C8034:
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xc]
	bl RandomNumberGenerator
	ldr r1, _080C8054 @ =0x000007FF
	ands r1, r0
	adds r1, #0x80
	strh r1, [r6, #0x14]
	ldrh r0, [r6, #0x16]
	adds r0, #0x20
	strh r0, [r6, #0x16]
	ldrh r0, [r6, #0x18]
	adds r0, #0x20
	strh r0, [r6, #0x18]
	b _080C8110
	.align 2, 0
_080C8054: .4byte 0x000007FF
_080C8058:
	ldrb r2, [r6, #0xc]
	cmp r2, #1
	beq _080C8080
	cmp r2, #1
	bgt _080C8068
	cmp r2, #0
	beq _080C806E
	b _080C8110
_080C8068:
	cmp r2, #2
	beq _080C80C8
	b _080C8110
_080C806E:
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #9
	strb r0, [r1]
	str r2, [r6, #0x50]
	str r2, [r6, #0x48]
	str r2, [r6, #0x54]
	str r2, [r6, #0x4c]
	strb r2, [r6, #0xc]
_080C8080:
	adds r0, r6, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r4, r6, #0
	adds r4, #0x46
	movs r2, #0
	ldrsh r1, [r4, r2]
	bl sub_08002028
	cmp r0, #0
	bne _080C80A0
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	b _080C8110
_080C80A0:
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #6
	beq _080C80B6
	adds r0, r6, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080C80B6:
	bl RandomNumberGenerator
	movs r1, #0x3f
	ands r1, r0
	adds r1, #0x40
	strb r1, [r6, #0xd]
	ldrb r0, [r6, #0xc]
	adds r0, #1
	b _080C810E
_080C80C8:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080C8110
	ldrh r0, [r6, #0x14]
	adds r0, #0x20
	strh r0, [r6, #0x14]
	ldrh r0, [r6, #0x16]
	adds r0, #0x20
	strh r0, [r6, #0x16]
	bl RandomNumberGenerator
	ldr r1, _080C81A8 @ =0x000003FF
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	strh r1, [r6, #0x18]
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _080C8108
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080C8108:
	movs r0, #1
	strb r0, [r6, #0xb]
	movs r0, #0
_080C810E:
	strb r0, [r6, #0xc]
_080C8110:
	ldr r0, [r6, #0x40]
	ldr r2, [r6, #0x48]
	adds r0, r0, r2
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x44]
	ldr r1, [r6, #0x4c]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	ldr r0, [r6, #0x50]
	adds r2, r2, r0
	str r2, [r6, #0x48]
	ldr r0, [r6, #0x54]
	adds r1, r1, r0
	str r1, [r6, #0x4c]
	ldrb r0, [r6, #0xb]
	cmp r0, #3
	bne _080C81A0
	movs r2, #0x18
	ldrsh r1, [r6, r2]
	cmp r1, #0
	bne _080C8140
	movs r0, #6
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xc]
_080C8140:
	movs r0, #0x16
	ldrsh r1, [r6, r0]
	cmp r1, #0
	bne _080C814E
	movs r0, #4
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xc]
_080C814E:
	movs r1, #0x14
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bne _080C81A0
	adds r4, r6, #0
	adds r4, #0x58
	ldrb r1, [r4]
	movs r5, #0x40
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080C817C
	adds r0, r6, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C8188
	ldrb r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _080C81A0
_080C817C:
	adds r0, r6, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C81A0
_080C8188:
	movs r1, #0xa0
	lsls r1, r1, #0xe
	adds r0, r6, #0
	bl sub_0806BF78
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080C81A0
	movs r1, #0
	movs r0, #5
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xc]
_080C81A0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C81A8: .4byte 0x000003FF

	thumb_func_start sub_080C81AC
sub_080C81AC: @ 0x080C81AC
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
	ldrh r0, [r6, #0x34]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	strh r0, [r6, #0x34]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08042B8C
	adds r1, r6, #0
	adds r1, #0x2d
	movs r0, #8
	strb r0, [r1]
	movs r1, #0x34
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bgt _080C823C
	movs r0, #0
	strb r0, [r6, #0xb]
	movs r0, #0x6e
	bl PlaySong
	adds r0, r6, #0
	bl sub_080C8968
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
	strb r0, [r6, #0xa]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	ldrb r0, [r6, #0x1c]
	cmp r0, #0
	bne _080C823C
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080C823C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C8244
sub_080C8244: @ 0x080C8244
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C8268 @ =gEwramData
	ldrb r1, [r4, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080C826C @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r1, r1, r0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080C8270
	cmp r0, #1
	beq _080C82B4
	b _080C82DE
	.align 2, 0
_080C8268: .4byte gEwramData
_080C826C: .4byte 0x000004E4
_080C8270:
	ldr r0, _080C82A8 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _080C82AC @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #7
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080C82B0 @ =sub_0803B9D0
	str r0, [r4, #4]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _080C82DE
	.align 2, 0
_080C82A8: .4byte 0x081C15F4
_080C82AC: .4byte 0x0820ED60
_080C82B0: .4byte sub_0803B9D0
_080C82B4:
	ldr r0, [r1, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r1, #0x44]
	ldr r2, _080C82EC @ =0xFFF00000
	adds r0, r0, r2
	str r0, [r4, #0x44]
	adds r3, r4, #0
	adds r3, #0x46
	ldr r2, _080C82F0 @ =0x08528AC4
	ldrb r1, [r1, #0x1d]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r3]
	adds r0, r0, r1
	strh r0, [r3]
_080C82DE:
	adds r0, r4, #0
	bl sub_0803F17C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C82EC: .4byte 0xFFF00000
_080C82F0: .4byte 0x08528AC4

	thumb_func_start sub_080C82F4
sub_080C82F4: @ 0x080C82F4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r2, _080C8330 @ =gEwramData
	ldrb r1, [r6, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _080C8334 @ =0x000004E4
	adds r0, r0, r3
	ldr r2, [r2]
	adds r7, r2, r0
	ldrb r1, [r6, #0x12]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	adds r0, r2, r0
	ldrb r3, [r6, #0xa]
	cmp r3, #1
	bne _080C8324
	b _080C8468
_080C8324:
	cmp r3, #1
	bgt _080C8338
	cmp r3, #0
	beq _080C8340
	b _080C8692
	.align 2, 0
_080C8330: .4byte gEwramData
_080C8334: .4byte 0x000004E4
_080C8338:
	cmp r3, #2
	bne _080C833E
	b _080C866C
_080C833E:
	b _080C8692
_080C8340:
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r5, _080C8450 @ =0x0824DB0C
	adds r0, r7, #0
	bl sub_0803B998
	adds r4, r0, #0
	ldr r0, _080C8454 @ =0x0820BEEC
	bl sub_080681D8
	adds r3, r0, #0
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0803B924
	ldr r0, _080C8458 @ =sub_0803B9D0
	str r0, [r6, #4]
	ldr r0, [r7, #0x40]
	str r0, [r6, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r6, #0x44]
	ldr r2, _080C845C @ =0x08528AC4
	ldrb r0, [r6, #0x1d]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r8, r0
	adds r0, r2, #2
	adds r0, r1, r0
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r0, r2, #3
	adds r0, r1, r0
	movs r3, #0
	ldrsb r3, [r0, r3]
	lsls r3, r3, #0xc
	adds r0, r2, #4
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0xc
	adds r2, #5
	adds r1, r1, r2
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	str r3, [r6, #0x48]
	rsbs r0, r0, #0
	str r0, [r6, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r6, #0x54]
	strb r1, [r6, #0xd]
	adds r0, r6, #0
	adds r0, #0x65
	strb r4, [r0]
	adds r0, r7, #0
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
	adds r0, r7, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080C83FC
	ldr r0, [r6, #0x48]
	cmp r0, #0
	bge _080C83F6
	rsbs r0, r0, #0
_080C83F6:
	rsbs r0, r0, #0
	str r0, [r6, #0x48]
	mov r0, r8
_080C83FC:
	ldr r2, _080C8460 @ =sub_080C8244
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _080C8448
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	ldr r1, _080C8464 @ =0xFFF00000
	adds r0, r0, r1
	str r0, [r4, #0x44]
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
	adds r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldrb r0, [r6, #0x10]
	strb r0, [r4, #0x11]
	ldrb r0, [r4, #0x10]
	strb r0, [r6, #0x12]
_080C8448:
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	b _080C8692
	.align 2, 0
_080C8450: .4byte 0x0824DB0C
_080C8454: .4byte 0x0820BEEC
_080C8458: .4byte sub_0803B9D0
_080C845C: .4byte 0x08528AC4
_080C8460: .4byte sub_080C8244
_080C8464: .4byte 0xFFF00000
_080C8468:
	ldrb r0, [r6, #0xd]
	ands r3, r0
	cmp r3, #0
	beq _080C8492
	cmp r0, #0x3f
	bhi _080C8492
	adds r3, r6, #0
	adds r3, #0x58
	ldrb r2, [r3]
	lsls r0, r2, #0x1a
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #5
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_080C8492:
	ldrb r0, [r6, #0xd]
	movs r7, #0xf
	ands r7, r0
	cmp r7, #0
	bne _080C84F2
	cmp r0, #0x3f
	bhi _080C84F2
	cmp r0, #0x20
	bls _080C84F2
	ldr r2, _080C8578 @ =0x08528AC4
	ldrb r1, [r6, #0x1d]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r0, r2
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	mov r8, r1
	adds r2, #1
	adds r0, r0, r2
	movs r5, #0
	ldrsb r5, [r0, r5]
	ldr r0, [r6, #0x40]
	add r0, r8
	ldr r1, [r6, #0x44]
	adds r1, r1, r5
	adds r4, r6, #0
	adds r4, #0x5c
	ldrb r2, [r4]
	subs r2, #1
	str r2, [sp]
	movs r2, #0
	movs r3, #0
	bl sub_0806D5C0
	ldr r0, [r6, #0x40]
	add r0, r8
	ldr r1, [r6, #0x44]
	adds r1, r1, r5
	ldrb r2, [r4]
	subs r2, #2
	str r2, [sp]
	str r7, [sp, #4]
	movs r2, #0
	movs r3, #0
	bl sub_0806DA6C
_080C84F2:
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x48]
	adds r0, r0, r1
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x44]
	ldr r1, [r6, #0x4c]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	ldr r0, [r6, #0x54]
	adds r1, r1, r0
	str r1, [r6, #0x4c]
	ldrb r0, [r6, #0x1d]
	adds r7, r6, #0
	adds r7, #0x46
	cmp r0, #1
	beq _080C8514
	b _080C862C
_080C8514:
	cmp r1, #0
	blt _080C858C
	adds r4, r6, #0
	adds r4, #0x42
	movs r3, #0
	ldrsh r0, [r4, r3]
	ldr r1, _080C857C @ =gEwramData
	ldr r2, [r1]
	ldr r1, _080C8580 @ =0x0000A094
	adds r2, r2, r1
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r7, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	subs r1, #0xf
	bl sub_08001D94
	adds r5, r0, #0
	cmp r5, #0
	beq _080C85BE
	ldr r0, _080C8584 @ =0x00000153
	bl PlaySong
	ldrh r0, [r7]
	adds r0, r0, r5
	movs r2, #0
	strh r0, [r7]
	ldr r0, [r6, #0x4c]
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r6, #0x4c]
	adds r1, r0, #0
	cmp r1, #0
	bge _080C8566
	rsbs r1, r1, #0
_080C8566:
	ldr r0, _080C8588 @ =0x00005FFF
	cmp r1, r0
	bgt _080C85BE
	str r2, [r6, #0x50]
	str r2, [r6, #0x48]
	str r2, [r6, #0x54]
	str r2, [r6, #0x4c]
	b _080C85BE
	.align 2, 0
_080C8578: .4byte 0x08528AC4
_080C857C: .4byte gEwramData
_080C8580: .4byte 0x0000A094
_080C8584: .4byte 0x00000153
_080C8588: .4byte 0x00005FFF
_080C858C:
	adds r4, r6, #0
	adds r4, #0x42
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r1, _080C85EC @ =gEwramData
	ldr r2, [r1]
	ldr r3, _080C85F0 @ =0x0000A094
	adds r2, r2, r3
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r7, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	subs r1, #0x20
	bl sub_08001C1C
	adds r5, r0, #0
	cmp r5, #0
	beq _080C85BE
	ldrh r0, [r7]
	adds r0, r0, r5
	strh r0, [r7]
_080C85BE:
	ldr r0, [r6, #0x48]
	cmp r0, #0
	ble _080C85F4
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r1, _080C85EC @ =gEwramData
	ldr r2, [r1]
	ldr r3, _080C85F0 @ =0x0000A094
	adds r2, r2, r3
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	adds r0, #8
	movs r3, #0
	ldrsh r1, [r7, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	subs r1, #0x10
	bl sub_08002058
	b _080C861C
	.align 2, 0
_080C85EC: .4byte gEwramData
_080C85F0: .4byte 0x0000A094
_080C85F4:
	cmp r0, #0
	beq _080C862C
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r1, _080C8664 @ =gEwramData
	ldr r2, [r1]
	ldr r3, _080C8668 @ =0x0000A094
	adds r2, r2, r3
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	subs r0, #8
	movs r3, #0
	ldrsh r1, [r7, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	subs r1, #0x10
	bl sub_0800207C
_080C861C:
	adds r5, r0, #0
	cmp r5, #0
	beq _080C862C
	ldrh r0, [r4]
	adds r0, r0, r5
	movs r1, #0
	strh r0, [r4]
	str r1, [r6, #0x48]
_080C862C:
	movs r1, #0
	ldrb r0, [r6, #0xd]
	subs r0, #1
	movs r2, #0
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C863E
	movs r1, #1
_080C863E:
	movs r3, #0
	ldrsh r0, [r7, r3]
	cmp r0, #0xc8
	ble _080C8648
	movs r1, #2
_080C8648:
	cmp r1, #0
	beq _080C8692
	str r2, [r6, #0x4c]
	str r2, [r6, #0x48]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	b _080C8692
	.align 2, 0
_080C8664: .4byte gEwramData
_080C8668: .4byte 0x0000A094
_080C866C:
	adds r3, r0, #0
	adds r3, #0x59
	ldrb r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C8692
	ldrb r0, [r7, #0x1c]
	subs r0, #1
	strb r0, [r7, #0x1c]
	adds r1, r6, #0
	adds r1, #0x59
	ldrb r0, [r1]
	movs r2, #8
	orrs r0, r2
	strb r0, [r1]
	ldrb r0, [r3]
	orrs r0, r2
	strb r0, [r3]
_080C8692:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C86A0
sub_080C86A0: @ 0x080C86A0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_080021A8
	ldr r6, _080C86EC @ =gEwramData
	ldr r0, [r6]
	ldr r1, _080C86F0 @ =0x0000A094
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r4, [r0]
	adds r0, r5, #0
	bl sub_08002188
	cmp r0, #0
	bge _080C86C0
	adds r0, #7
_080C86C0:
	asrs r0, r0, #3
	movs r1, #0x1e
	cmp r4, #1
	beq _080C86CA
	lsls r1, r4, #5
_080C86CA:
	cmp r0, #0
	blt _080C86DA
	movs r7, #0
	cmp r0, r1
	blt _080C86D6
	movs r7, #1
_080C86D6:
	cmp r7, #0
	beq _080C86F4
_080C86DA:
	ldr r1, [r5, #0x48]
	rsbs r1, r1, #0
	str r1, [r5, #0x48]
	lsls r1, r1, #1
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	b _080C8764
	.align 2, 0
_080C86EC: .4byte gEwramData
_080C86F0: .4byte 0x0000A094
_080C86F4:
	ldr r0, [r5, #0x48]
	cmp r0, #0
	blt _080C872C
	adds r4, r5, #0
	adds r4, #0x42
	movs r3, #0
	ldrsh r0, [r4, r3]
	ldr r2, [r6]
	ldr r1, _080C8728 @ =0x0000A094
	adds r2, r2, r1
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	adds r0, #8
	adds r1, r5, #0
	adds r1, #0x46
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	subs r1, #0x10
	bl sub_08002058
	b _080C8756
	.align 2, 0
_080C8728: .4byte 0x0000A094
_080C872C:
	adds r4, r5, #0
	adds r4, #0x42
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r2, [r6]
	ldr r3, _080C87CC @ =0x0000A094
	adds r2, r2, r3
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	subs r0, #8
	adds r1, r5, #0
	adds r1, #0x46
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	subs r1, #0x10
	bl sub_0800207C
_080C8756:
	adds r1, r0, #0
	cmp r1, #0
	beq _080C8782
	ldrh r0, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	str r7, [r5, #0x48]
_080C8764:
	adds r3, r5, #0
	adds r3, #0x58
	ldrb r2, [r3]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_080C8782:
	adds r0, r5, #0
	bl sub_08002188
	ldr r6, _080C87D0 @ =gEwramData
	ldr r0, [r6]
	ldr r1, _080C87CC @ =0x0000A094
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r4, [r0, #1]
	adds r0, r5, #0
	bl sub_080021A8
	cmp r0, #0
	bge _080C87A0
	adds r0, #7
_080C87A0:
	asrs r0, r0, #3
	movs r1, #0x1a
	cmp r4, #1
	beq _080C87AA
	lsls r1, r4, #5
_080C87AA:
	cmp r0, #0
	blt _080C87BA
	movs r7, #0
	cmp r0, r1
	blt _080C87B6
	movs r7, #1
_080C87B6:
	cmp r7, #0
	beq _080C87D4
_080C87BA:
	ldr r1, [r5, #0x4c]
	rsbs r1, r1, #0
	str r1, [r5, #0x4c]
	lsls r1, r1, #1
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	b _080C883E
	.align 2, 0
_080C87CC: .4byte 0x0000A094
_080C87D0: .4byte gEwramData
_080C87D4:
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	blt _080C8808
	adds r0, r5, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r2, [r6]
	ldr r1, _080C8804 @ =0x0000A094
	adds r2, r2, r1
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	adds r4, r5, #0
	adds r4, #0x46
	movs r3, #0
	ldrsh r1, [r4, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	adds r1, #1
	bl sub_08001D94
	b _080C8830
	.align 2, 0
_080C8804: .4byte 0x0000A094
_080C8808:
	adds r0, r5, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r2, [r6]
	ldr r3, _080C8844 @ =0x0000A094
	adds r2, r2, r3
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	adds r4, r5, #0
	adds r4, #0x46
	movs r3, #0
	ldrsh r1, [r4, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	subs r1, #0x20
	bl sub_08001C1C
_080C8830:
	adds r1, r0, #0
	cmp r1, #0
	beq _080C883E
	ldrh r0, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	str r7, [r5, #0x4c]
_080C883E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C8844: .4byte 0x0000A094

	thumb_func_start EnemyKillerDollUpdate
EnemyKillerDollUpdate: @ 0x080C8848
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _080C885C
	adds r0, r4, #0
	bl sub_080C8914
	b _080C88AA
_080C885C:
	adds r0, r4, #0
	bl sub_08021924
	adds r0, r4, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _080C887C
	ldrb r0, [r4, #0xa]
	cmp r0, #0xff
	beq _080C887C
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	b _080C88AA
_080C887C:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080C8888
	cmp r0, #0xff
	beq _080C8890
	b _080C8896
_080C8888:
	adds r0, r4, #0
	bl sub_080C7CE4
	b _080C8896
_080C8890:
	adds r0, r4, #0
	bl sub_080C88B4
_080C8896:
	ldrb r0, [r4, #0xa]
	cmp r0, #0xff
	beq _080C88AA
	adds r0, r4, #0
	bl sub_0806DF20
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
_080C88AA:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C88B4
sub_080C88B4: @ 0x080C88B4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080C88C4
	cmp r0, #1
	beq _080C88FC
	b _080C890E
_080C88C4:
	movs r0, #0x6e
	bl PlaySong
	adds r0, r4, #0
	bl sub_080C8968
	adds r0, r4, #0
	bl sub_080683BC
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
	movs r0, #0xff
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080C88FC:
	ldrb r0, [r4, #0x1c]
	cmp r0, #0
	bne _080C890E
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080C890E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C8914
sub_080C8914: @ 0x080C8914
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080C8930
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080C8930:
	adds r0, r4, #0
	bl sub_0803F17C
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C893C
sub_080C893C: @ 0x080C893C
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

	thumb_func_start sub_080C8968
sub_080C8968: @ 0x080C8968
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	movs r5, #0
_080C8978:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _080C89AC @ =sub_080C82F4
	bl EntityCreateInRange
	adds r2, r0, #0
	cmp r2, #0
	beq _080C89A0
	ldrb r0, [r4, #0x10]
	strb r0, [r2, #0x11]
	strb r5, [r2, #0x1d]
	ldrb r0, [r4, #0x1c]
	adds r0, #1
	strb r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x5c
	strb r1, [r0]
_080C89A0:
	adds r5, #1
	cmp r5, #4
	ble _080C8978
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C89AC: .4byte sub_080C82F4

	thumb_func_start EnemyLightningDollCreate
EnemyLightningDollCreate: @ 0x080C89B0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080C8A18
	cmp r0, #0
	bne _080C89C4
	adds r0, r4, #0
	bl EntityDelete
	b _080C8A08
_080C89C4:
	movs r5, #0
	strb r5, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	adds r0, r4, #0
	bl sub_0806B04C
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #9
	strb r0, [r1]
	ldr r0, _080C89F4 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080C89F8
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	b _080C8A08
	.align 2, 0
_080C89F4: .4byte gEwramData
_080C89F8:
	ldr r1, _080C8A10 @ =sub_080C99E4
	ldr r2, _080C8A14 @ =sub_080C8FBC
	adds r0, r4, #0
	bl sub_0806D244
	adds r0, r4, #0
	bl sub_080C9938
_080C8A08:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C8A10: .4byte sub_080C99E4
_080C8A14: .4byte sub_080C8FBC

	thumb_func_start sub_080C8A18
sub_080C8A18: @ 0x080C8A18
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, _080C8A84 @ =0x081F426C
	adds r0, r6, #0
	bl sub_0803AFB8
	adds r4, r0, #0
	cmp r4, #0
	bge _080C8A38
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803B800
	adds r4, r0, #0
	cmp r4, #0
	blt _080C8A94
_080C8A38:
	ldr r0, _080C8A88 @ =0x0820BEEC
	movs r1, #0
	bl sub_08068264
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080C8A94
	adds r0, r5, #0
	adds r0, #0x2c
	strb r2, [r0]
	ldr r1, _080C8A8C @ =0x0824E7F4
	ldrb r3, [r0]
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_0803B924
	cmp r0, #0
	beq _080C8A94
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	cmp r0, #0
	beq _080C8A94
	adds r0, r5, #0
	bl sub_0803F17C
	ldr r0, _080C8A90 @ =sub_0803B9D0
	str r0, [r5, #4]
	movs r0, #1
	b _080C8A96
	.align 2, 0
_080C8A84: .4byte 0x081F426C
_080C8A88: .4byte 0x0820BEEC
_080C8A8C: .4byte 0x0824E7F4
_080C8A90: .4byte sub_0803B9D0
_080C8A94:
	movs r0, #0
_080C8A96:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start EnemyLightningDollUpdate
EnemyLightningDollUpdate: @ 0x080C8A9C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _080C8AB0
	adds r0, r4, #0
	bl sub_080C9630
	b _080C8B32
_080C8AB0:
	adds r0, r4, #0
	bl sub_08021924
	adds r0, r4, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _080C8AD6
	ldrb r0, [r4, #0xa]
	cmp r0, #0xff
	beq _080C8AD6
	movs r0, #0x75
	bl sub_08013E18
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	b _080C8B32
_080C8AD6:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080C8AE2
	cmp r0, #0xff
	beq _080C8AEA
	b _080C8AF0
_080C8AE2:
	adds r0, r4, #0
	bl sub_080C8B3C
	b _080C8AF0
_080C8AEA:
	adds r0, r4, #0
	bl sub_080C997C
_080C8AF0:
	ldrb r0, [r4, #0xa]
	cmp r0, #0xff
	beq _080C8B32
	adds r5, r4, #0
	adds r5, #0x65
	ldrb r6, [r5]
	adds r0, r4, #0
	bl sub_0803F17C
	cmp r0, #0
	beq _080C8B2A
	ldrb r5, [r5]
	cmp r6, r5
	beq _080C8B2A
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #4
	bne _080C8B24
	ldr r1, _080C8B20 @ =0x1C1EE0F2
	adds r0, r4, #0
	bl sub_08042884
	b _080C8B2A
	.align 2, 0
_080C8B20: .4byte 0x1C1EE0F2
_080C8B24:
	adds r0, r4, #0
	bl sub_0806B1FC
_080C8B2A:
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
_080C8B32:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C8B3C
sub_080C8B3C: @ 0x080C8B3C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrh r1, [r6, #0x14]
	movs r2, #0x14
	ldrsh r0, [r6, r2]
	cmp r0, #0
	beq _080C8B4E
	subs r0, r1, #1
	strh r0, [r6, #0x14]
_080C8B4E:
	ldrh r1, [r6, #0x18]
	movs r2, #0x18
	ldrsh r0, [r6, r2]
	cmp r0, #0
	beq _080C8B5C
	subs r0, r1, #1
	strh r0, [r6, #0x18]
_080C8B5C:
	ldrb r0, [r6, #0xb]
	cmp r0, #4
	bls _080C8B64
	b _080C8F18
_080C8B64:
	lsls r0, r0, #2
	ldr r1, _080C8B70 @ =_080C8B74
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C8B70: .4byte _080C8B74
_080C8B74: @ jump table
	.4byte _080C8B88 @ case 0
	.4byte _080C8BE4 @ case 1
	.4byte _080C8C08 @ case 2
	.4byte _080C8DA6 @ case 3
	.4byte _080C8E6C @ case 4
_080C8B88:
	adds r4, r6, #0
	adds r4, #0x6d
	ldrb r0, [r4]
	cmp r0, #0
	beq _080C8B9E
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080C8B9E:
	adds r0, r6, #0
	movs r1, #0xf0
	movs r2, #0x80
	bl sub_0806E29C
	cmp r0, #0
	bne _080C8BAE
	b _080C8F18
_080C8BAE:
	adds r0, r6, #0
	bl sub_0806CD38
	ldr r1, [r6, #0x40]
	cmp r0, r1
	bne _080C8BC8
	adds r0, r6, #0
	bl sub_0806CD78
	ldr r1, [r6, #0x44]
	cmp r0, r1
	bne _080C8BC8
	b _080C8F18
_080C8BC8:
	ldrb r0, [r4]
	cmp r0, #1
	beq _080C8BDA
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080C8BDA:
	movs r1, #0
	movs r0, #1
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xc]
	b _080C8F18
_080C8BE4:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080C8BF4
	b _080C8F18
_080C8BF4:
	movs r1, #0
	strb r1, [r6, #0xd]
	movs r0, #2
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xc]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #3
	strb r0, [r1]
	b _080C8F18
_080C8C08:
	ldrb r4, [r6, #0xc]
	cmp r4, #0
	beq _080C8C16
	cmp r4, #1
	bne _080C8C14
	b _080C8D56
_080C8C14:
	b _080C8F18
_080C8C16:
	adds r0, r6, #0
	bl sub_0806BC40
	str r4, [r6, #0x50]
	str r4, [r6, #0x48]
	str r4, [r6, #0x54]
	str r4, [r6, #0x4c]
	bl RandomNumberGenerator
	movs r1, #6
	bl __umodsi3
	cmp r0, #5
	bls _080C8C34
	b _080C8D3A
_080C8C34:
	lsls r0, r0, #2
	ldr r1, _080C8C40 @ =_080C8C44
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C8C40: .4byte _080C8C44
_080C8C44: @ jump table
	.4byte _080C8C5C @ case 0
	.4byte _080C8C5C @ case 1
	.4byte _080C8C5C @ case 2
	.4byte _080C8C8A @ case 3
	.4byte _080C8CCE @ case 4
	.4byte _080C8CCE @ case 5
_080C8C5C:
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r6, #0x48]
	str r0, [r6, #0x4c]
	adds r0, r6, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C8C76
	ldr r0, [r6, #0x48]
	rsbs r0, r0, #0
	str r0, [r6, #0x48]
_080C8C76:
	adds r0, r6, #0
	bl sub_0806BDEC
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C8CC0
	ldr r0, [r6, #0x4c]
	rsbs r0, r0, #0
	str r0, [r6, #0x4c]
	b _080C8CC0
_080C8C8A:
	adds r3, r6, #0
	adds r3, #0x58
	ldrb r2, [r3]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r6, #0x48]
	adds r0, r6, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C8CC0
	ldr r0, [r6, #0x48]
	rsbs r0, r0, #0
	str r0, [r6, #0x48]
_080C8CC0:
	bl RandomNumberGenerator
	movs r1, #0xff
	ands r1, r0
	adds r1, #0x80
	strh r1, [r6, #0x16]
	b _080C8D3A
_080C8CCE:
	adds r0, r6, #0
	bl sub_0806BAC8
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r1, #0xa0
	lsls r1, r1, #9
	adds r0, r4, r1
	bl sub_080009E4
	movs r5, #0x80
	lsls r5, r5, #9
	adds r1, r5, #0
	bl sub_0803E86C
	str r0, [r6, #0x48]
	adds r4, r4, r5
	adds r0, r4, #0
	bl sub_080009E4
	adds r1, r5, #0
	bl sub_0803E86C
	str r0, [r6, #0x4c]
	adds r0, r6, #0
	bl sub_0806CD38
	ldr r1, [r6, #0x40]
	subs r0, r0, r1
	ldr r1, [r6, #0x48]
	bl __divsi3
	cmp r0, #0
	bge _080C8D28
	adds r0, r6, #0
	bl sub_0806CD38
	ldr r1, [r6, #0x40]
	subs r0, r0, r1
	ldr r1, [r6, #0x48]
	bl __divsi3
	rsbs r0, r0, #0
	b _080C8D38
_080C8D28:
	adds r0, r6, #0
	bl sub_0806CD38
	ldr r1, [r6, #0x40]
	subs r0, r0, r1
	ldr r1, [r6, #0x48]
	bl __divsi3
_080C8D38:
	strh r0, [r6, #0x16]
_080C8D3A:
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #2
	beq _080C8D50
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080C8D50:
	ldrb r0, [r6, #0xc]
	adds r0, #1
	b _080C8F16
_080C8D56:
	adds r1, r6, #0
	adds r1, #0x58
	ldrb r3, [r1]
	movs r4, #0x40
	adds r0, r4, #0
	ands r0, r3
	adds r2, r1, #0
	cmp r0, #0
	bne _080C8D7E
	ldr r0, [r6, #0x48]
	cmp r0, #0
	ble _080C8D74
	movs r0, #0x40
	orrs r0, r3
	strb r0, [r2]
_080C8D74:
	ldrb r1, [r2]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080C8D8E
_080C8D7E:
	ldr r0, [r6, #0x48]
	cmp r0, #0
	bge _080C8D8E
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_080C8D8E:
	ldrh r0, [r6, #0x16]
	subs r1, r0, #1
	strh r1, [r6, #0x16]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080C8D9E
	movs r0, #0
	strb r0, [r6, #0xc]
_080C8D9E:
	adds r0, r6, #0
	bl sub_080C9788
	b _080C8F18
_080C8DA6:
	ldrb r4, [r6, #0xc]
	cmp r4, #1
	beq _080C8DF6
	cmp r4, #1
	bgt _080C8DB6
	cmp r4, #0
	beq _080C8DC0
	b _080C8F18
_080C8DB6:
	cmp r4, #2
	beq _080C8E22
	cmp r4, #3
	beq _080C8E4A
	b _080C8F18
_080C8DC0:
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #3
	beq _080C8DD6
	adds r0, r6, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080C8DD6:
	str r4, [r6, #0x50]
	str r4, [r6, #0x48]
	str r4, [r6, #0x54]
	str r4, [r6, #0x4c]
	bl RandomNumberGenerator
	movs r1, #0xff
	ands r1, r0
	adds r1, #0x80
	strb r1, [r6, #0xd]
	ldrb r0, [r6, #0xc]
	adds r0, #1
	strb r0, [r6, #0xc]
	movs r0, #0x75
	bl sub_08013D60
_080C8DF6:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080C8E06
	b _080C8F18
_080C8E06:
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #4
	beq _080C8E1C
	adds r0, r6, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080C8E1C:
	ldrb r0, [r6, #0xc]
	adds r0, #1
	b _080C8F16
_080C8E22:
	ldrb r1, [r6, #0xd]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080C8E36
	cmp r1, #0x20
	bls _080C8E36
	movs r0, #0x75
	bl sub_08013D60
_080C8E36:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C8F18
	ldrb r0, [r6, #0xc]
	adds r0, #1
	b _080C8F16
_080C8E4A:
	movs r0, #0x75
	bl sub_08013E18
	movs r1, #0
	movs r0, #2
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xc]
	bl RandomNumberGenerator
	movs r1, #0x1f
	ands r1, r0
	adds r1, #0x10
	strh r1, [r6, #0x14]
	ldrh r0, [r6, #0x18]
	adds r0, #0x20
	strh r0, [r6, #0x18]
	b _080C8F18
_080C8E6C:
	ldrb r2, [r6, #0xc]
	cmp r2, #1
	beq _080C8E94
	cmp r2, #1
	bgt _080C8E7C
	cmp r2, #0
	beq _080C8E82
	b _080C8F18
_080C8E7C:
	cmp r2, #2
	beq _080C8EDC
	b _080C8F18
_080C8E82:
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #9
	strb r0, [r1]
	str r2, [r6, #0x50]
	str r2, [r6, #0x48]
	str r2, [r6, #0x54]
	str r2, [r6, #0x4c]
	strb r2, [r6, #0xc]
_080C8E94:
	adds r0, r6, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r4, r6, #0
	adds r4, #0x46
	movs r2, #0
	ldrsh r1, [r4, r2]
	bl sub_08002028
	cmp r0, #0
	bne _080C8EB4
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	b _080C8F18
_080C8EB4:
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #5
	beq _080C8ECA
	adds r0, r6, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080C8ECA:
	bl RandomNumberGenerator
	movs r1, #0x3f
	ands r1, r0
	adds r1, #0x40
	strb r1, [r6, #0xd]
	ldrb r0, [r6, #0xc]
	adds r0, #1
	b _080C8F16
_080C8EDC:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080C8F18
	bl RandomNumberGenerator
	ldr r1, _080C8F98 @ =0x000003FF
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	strh r1, [r6, #0x18]
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _080C8F10
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080C8F10:
	movs r0, #1
	strb r0, [r6, #0xb]
	movs r0, #0
_080C8F16:
	strb r0, [r6, #0xc]
_080C8F18:
	ldr r0, [r6, #0x40]
	ldr r2, [r6, #0x48]
	adds r0, r0, r2
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x44]
	ldr r1, [r6, #0x4c]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	ldr r0, [r6, #0x50]
	adds r2, r2, r0
	str r2, [r6, #0x48]
	ldr r0, [r6, #0x54]
	adds r1, r1, r0
	str r1, [r6, #0x4c]
	ldrb r0, [r6, #0xb]
	cmp r0, #2
	bne _080C8FB0
	movs r2, #0x18
	ldrsh r1, [r6, r2]
	cmp r1, #0
	bne _080C8F48
	movs r0, #4
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xc]
_080C8F48:
	movs r1, #0x14
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bne _080C8FB0
	adds r4, r6, #0
	adds r4, #0x58
	ldrb r1, [r4]
	movs r5, #0x40
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080C8F76
	adds r0, r6, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C8F82
	ldrb r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _080C8FB0
_080C8F76:
	adds r0, r6, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C8FB0
_080C8F82:
	movs r1, #0xa0
	lsls r1, r1, #0xd
	adds r0, r6, #0
	bl sub_0806BF78
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080C8F9C
	movs r1, #0
	b _080C8FAA
	.align 2, 0
_080C8F98: .4byte 0x000003FF
_080C8F9C:
	bl RandomNumberGenerator
	adds r1, r0, #0
	ldr r0, _080C8FB8 @ =0x000003FF
	ands r1, r0
	cmp r1, #0
	bne _080C8FB0
_080C8FAA:
	movs r0, #3
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xc]
_080C8FB0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C8FB8: .4byte 0x000003FF

	thumb_func_start sub_080C8FBC
sub_080C8FBC: @ 0x080C8FBC
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
	ldrh r0, [r6, #0x34]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	strh r0, [r6, #0x34]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08042B8C
	adds r1, r6, #0
	adds r1, #0x2d
	movs r0, #8
	strb r0, [r1]
	movs r1, #0x34
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bgt _080C9052
	movs r0, #0
	strb r0, [r6, #0xb]
	movs r0, #0x75
	bl sub_08013E18
	movs r0, #0x6e
	bl PlaySong
	adds r0, r6, #0
	bl sub_080C9A24
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
	strb r0, [r6, #0xa]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	ldrb r0, [r6, #0x1c]
	cmp r0, #0
	bne _080C9052
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080C9052:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080C9058
sub_080C9058: @ 0x080C9058
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C907C @ =gEwramData
	ldrb r1, [r4, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080C9080 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r1, r1, r0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080C9084
	cmp r0, #1
	beq _080C90C8
	b _080C90F2
	.align 2, 0
_080C907C: .4byte gEwramData
_080C9080: .4byte 0x000004E4
_080C9084:
	ldr r0, _080C90BC @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _080C90C0 @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #7
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080C90C4 @ =sub_0803B9D0
	str r0, [r4, #4]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _080C90F2
	.align 2, 0
_080C90BC: .4byte 0x081C15F4
_080C90C0: .4byte 0x0820ED60
_080C90C4: .4byte sub_0803B9D0
_080C90C8:
	ldr r0, [r1, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r1, #0x44]
	ldr r2, _080C9100 @ =0xFFF00000
	adds r0, r0, r2
	str r0, [r4, #0x44]
	adds r3, r4, #0
	adds r3, #0x46
	ldr r2, _080C9104 @ =0x08528AE4
	ldrb r1, [r1, #0x1d]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r3]
	adds r0, r0, r1
	strh r0, [r3]
_080C90F2:
	adds r0, r4, #0
	bl sub_0803F17C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C9100: .4byte 0xFFF00000
_080C9104: .4byte 0x08528AE4

	thumb_func_start sub_080C9108
sub_080C9108: @ 0x080C9108
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r5, #0
	ldr r0, _080C9188 @ =gEwramData
	mov sb, r0
	ldr r6, _080C918C @ =0x00013110
	movs r1, #1
	mov r8, r1
_080C911C:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _080C9190 @ =sub_080C9198
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _080C9174
	strb r5, [r4, #0x1d]
	mov r7, sb
	ldr r1, [r7]
	adds r1, r1, r6
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	ldr r1, _080C9194 @ =0xFFF00000
	adds r0, r0, r1
	str r0, [r4, #0x44]
	bl RandomNumberGenerator
	adds r3, r4, #0
	adds r3, #0x58
	mov r7, r8
	ands r0, r7
	lsls r0, r0, #6
	ldrb r1, [r3]
	movs r7, #0x41
	rsbs r7, r7, #0
	adds r2, r7, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	mov r1, sb
	ldr r0, [r1]
	adds r0, r0, r6
	ldr r0, [r0]
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
_080C9174:
	adds r5, #1
	cmp r5, #0
	ble _080C911C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C9188: .4byte gEwramData
_080C918C: .4byte 0x00013110
_080C9190: .4byte sub_080C9198
_080C9194: .4byte 0xFFF00000

	thumb_func_start sub_080C9198
sub_080C9198: @ 0x080C9198
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xa]
	cmp r5, #0
	beq _080C91A8
	cmp r5, #1
	beq _080C920C
	b _080C9274
_080C91A8:
	ldr r0, _080C9200 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _080C9204 @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0x10
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
	ldr r0, _080C9208 @ =sub_0803B9D0
	str r0, [r4, #4]
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
	strb r5, [r4, #0xd]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _080C9274
	.align 2, 0
_080C9200: .4byte 0x081C15F4
_080C9204: .4byte 0x0820ED60
_080C9208: .4byte sub_0803B9D0
_080C920C:
	ldrb r0, [r4, #0xd]
	ands r0, r5
	cmp r0, #0
	bne _080C9232
	adds r3, r4, #0
	adds r3, #0x58
	ldrb r2, [r3]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_080C9232:
	ldr r0, _080C927C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080C9280 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	str r0, [r4, #0x40]
	bl sub_0801CFB0
	adds r0, #8
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0xf
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r2]
	ands r5, r1
	cmp r5, #0
	beq _080C9268
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
_080C9268:
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	bl sub_0803F17C
_080C9274:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C927C: .4byte gEwramData
_080C9280: .4byte 0x00013110

	thumb_func_start sub_080C9284
sub_080C9284: @ 0x080C9284
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r2, _080C92C0 @ =gEwramData
	ldrb r1, [r6, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _080C92C4 @ =0x000004E4
	adds r0, r0, r3
	ldr r2, [r2]
	adds r7, r2, r0
	ldrb r1, [r6, #0x12]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	adds r0, r2, r0
	ldrb r3, [r6, #0xa]
	cmp r3, #1
	bne _080C92B4
	b _080C93F8
_080C92B4:
	cmp r3, #1
	bgt _080C92C8
	cmp r3, #0
	beq _080C92D0
	b _080C9622
	.align 2, 0
_080C92C0: .4byte gEwramData
_080C92C4: .4byte 0x000004E4
_080C92C8:
	cmp r3, #2
	bne _080C92CE
	b _080C95FC
_080C92CE:
	b _080C9622
_080C92D0:
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r5, _080C93E0 @ =0x0824E7F4
	adds r0, r7, #0
	bl sub_0803B998
	adds r4, r0, #0
	ldr r0, _080C93E4 @ =0x0820BEEC
	bl sub_080681D8
	adds r3, r0, #0
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0803B924
	ldr r0, _080C93E8 @ =sub_0803B9D0
	str r0, [r6, #4]
	ldr r0, [r7, #0x40]
	str r0, [r6, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r6, #0x44]
	ldr r2, _080C93EC @ =0x08528AE4
	ldrb r0, [r6, #0x1d]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r8, r0
	adds r0, r2, #2
	adds r0, r1, r0
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r0, r2, #3
	adds r0, r1, r0
	movs r3, #0
	ldrsb r3, [r0, r3]
	lsls r3, r3, #0xc
	adds r0, r2, #4
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0xc
	adds r2, #5
	adds r1, r1, r2
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	str r3, [r6, #0x48]
	rsbs r0, r0, #0
	str r0, [r6, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r6, #0x54]
	strb r1, [r6, #0xd]
	adds r0, r6, #0
	adds r0, #0x65
	strb r4, [r0]
	adds r0, r7, #0
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
	adds r0, r7, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080C938C
	ldr r0, [r6, #0x48]
	cmp r0, #0
	bge _080C9386
	rsbs r0, r0, #0
_080C9386:
	rsbs r0, r0, #0
	str r0, [r6, #0x48]
	mov r0, r8
_080C938C:
	ldr r2, _080C93F0 @ =sub_080C9058
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _080C93D8
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	ldr r1, _080C93F4 @ =0xFFF00000
	adds r0, r0, r1
	str r0, [r4, #0x44]
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
	adds r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldrb r0, [r6, #0x10]
	strb r0, [r4, #0x11]
	ldrb r0, [r4, #0x10]
	strb r0, [r6, #0x12]
_080C93D8:
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	b _080C9622
	.align 2, 0
_080C93E0: .4byte 0x0824E7F4
_080C93E4: .4byte 0x0820BEEC
_080C93E8: .4byte sub_0803B9D0
_080C93EC: .4byte 0x08528AE4
_080C93F0: .4byte sub_080C9058
_080C93F4: .4byte 0xFFF00000
_080C93F8:
	ldrb r0, [r6, #0xd]
	movs r7, #0xf
	ands r7, r0
	cmp r7, #0
	bne _080C9458
	cmp r0, #0x3f
	bhi _080C9458
	cmp r0, #0x20
	bls _080C9458
	ldr r2, _080C94DC @ =0x08528AE4
	ldrb r1, [r6, #0x1d]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r0, r2
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	mov r8, r1
	adds r2, #1
	adds r0, r0, r2
	movs r5, #0
	ldrsb r5, [r0, r5]
	ldr r0, [r6, #0x40]
	add r0, r8
	ldr r1, [r6, #0x44]
	adds r1, r1, r5
	adds r4, r6, #0
	adds r4, #0x5c
	ldrb r2, [r4]
	subs r2, #1
	str r2, [sp]
	movs r2, #0
	movs r3, #0
	bl sub_0806D5C0
	ldr r0, [r6, #0x40]
	add r0, r8
	ldr r1, [r6, #0x44]
	adds r1, r1, r5
	ldrb r2, [r4]
	subs r2, #2
	str r2, [sp]
	str r7, [sp, #4]
	movs r2, #0
	movs r3, #0
	bl sub_0806DA6C
_080C9458:
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x48]
	adds r0, r0, r1
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x44]
	ldr r1, [r6, #0x4c]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	ldr r0, [r6, #0x54]
	adds r1, r1, r0
	str r1, [r6, #0x4c]
	ldrb r0, [r6, #0x1d]
	adds r7, r6, #0
	adds r7, #0x46
	cmp r0, #1
	beq _080C947A
	b _080C9590
_080C947A:
	cmp r1, #0
	blt _080C94F0
	adds r4, r6, #0
	adds r4, #0x42
	movs r3, #0
	ldrsh r0, [r4, r3]
	ldr r1, _080C94E0 @ =gEwramData
	ldr r2, [r1]
	ldr r1, _080C94E4 @ =0x0000A094
	adds r2, r2, r1
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r7, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	subs r1, #0xf
	bl sub_08001D94
	adds r5, r0, #0
	cmp r5, #0
	beq _080C9522
	ldr r0, _080C94E8 @ =0x00000153
	bl PlaySong
	ldrh r0, [r7]
	adds r0, r0, r5
	movs r2, #0
	strh r0, [r7]
	ldr r0, [r6, #0x4c]
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r6, #0x4c]
	adds r1, r0, #0
	cmp r1, #0
	bge _080C94CC
	rsbs r1, r1, #0
_080C94CC:
	ldr r0, _080C94EC @ =0x00005FFF
	cmp r1, r0
	bgt _080C9522
	str r2, [r6, #0x50]
	str r2, [r6, #0x48]
	str r2, [r6, #0x54]
	str r2, [r6, #0x4c]
	b _080C9522
	.align 2, 0
_080C94DC: .4byte 0x08528AE4
_080C94E0: .4byte gEwramData
_080C94E4: .4byte 0x0000A094
_080C94E8: .4byte 0x00000153
_080C94EC: .4byte 0x00005FFF
_080C94F0:
	adds r4, r6, #0
	adds r4, #0x42
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r1, _080C9550 @ =gEwramData
	ldr r2, [r1]
	ldr r3, _080C9554 @ =0x0000A094
	adds r2, r2, r3
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r7, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	subs r1, #0x20
	bl sub_08001C1C
	adds r5, r0, #0
	cmp r5, #0
	beq _080C9522
	ldrh r0, [r7]
	adds r0, r0, r5
	strh r0, [r7]
_080C9522:
	ldr r0, [r6, #0x48]
	cmp r0, #0
	ble _080C9558
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r1, _080C9550 @ =gEwramData
	ldr r2, [r1]
	ldr r3, _080C9554 @ =0x0000A094
	adds r2, r2, r3
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	adds r0, #8
	movs r3, #0
	ldrsh r1, [r7, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	subs r1, #0x10
	bl sub_08002058
	b _080C9580
	.align 2, 0
_080C9550: .4byte gEwramData
_080C9554: .4byte 0x0000A094
_080C9558:
	cmp r0, #0
	beq _080C9590
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r1, _080C95F4 @ =gEwramData
	ldr r2, [r1]
	ldr r3, _080C95F8 @ =0x0000A094
	adds r2, r2, r3
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	subs r0, #8
	movs r3, #0
	ldrsh r1, [r7, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	subs r1, #0x10
	bl sub_0800207C
_080C9580:
	adds r5, r0, #0
	cmp r5, #0
	beq _080C9590
	ldrh r0, [r4]
	adds r0, r0, r5
	movs r1, #0
	strh r0, [r4]
	str r1, [r6, #0x48]
_080C9590:
	ldrb r1, [r6, #0xd]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C95BC
	cmp r1, #0x3f
	bhi _080C95BC
	adds r3, r6, #0
	adds r3, #0x58
	ldrb r2, [r3]
	lsls r0, r2, #0x1a
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #5
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_080C95BC:
	movs r1, #0
	ldrb r0, [r6, #0xd]
	subs r0, #1
	movs r2, #0
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C95CE
	movs r1, #1
_080C95CE:
	movs r3, #0
	ldrsh r0, [r7, r3]
	cmp r0, #0xc8
	ble _080C95D8
	movs r1, #2
_080C95D8:
	cmp r1, #0
	beq _080C9622
	str r2, [r6, #0x4c]
	str r2, [r6, #0x48]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	b _080C9622
	.align 2, 0
_080C95F4: .4byte gEwramData
_080C95F8: .4byte 0x0000A094
_080C95FC:
	adds r3, r0, #0
	adds r3, #0x59
	ldrb r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C9622
	ldrb r0, [r7, #0x1c]
	subs r0, #1
	strb r0, [r7, #0x1c]
	adds r1, r6, #0
	adds r1, #0x59
	ldrb r0, [r1]
	movs r2, #8
	orrs r0, r2
	strb r0, [r1]
	ldrb r0, [r3]
	orrs r0, r2
	strb r0, [r3]
_080C9622:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C9630
sub_080C9630: @ 0x080C9630
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #5
	bls _080C963C
	b _080C977C
_080C963C:
	lsls r0, r0, #2
	ldr r1, _080C9648 @ =_080C964C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C9648: .4byte _080C964C
_080C964C: @ jump table
	.4byte _080C9664 @ case 0
	.4byte _080C96A2 @ case 1
	.4byte _080C96CC @ case 2
	.4byte _080C96FA @ case 3
	.4byte _080C9724 @ case 4
	.4byte _080C9752 @ case 5
_080C9664:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C967A
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080C967A:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080C9696
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bls _080C977C
_080C9696:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xd]
	b _080C977C
_080C96A2:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _080C96B8
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080C96B8:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C977C
	ldrb r0, [r4, #0xb]
	adds r0, #1
	b _080C977A
_080C96CC:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #2
	beq _080C96E2
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080C96E2:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x40
	bls _080C977C
	movs r0, #0
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	b _080C977A
_080C96FA:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #3
	beq _080C9710
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080C9710:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C977C
	ldrb r0, [r4, #0xb]
	adds r0, #1
	b _080C977A
_080C9724:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #4
	beq _080C973A
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080C973A:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x80
	bls _080C977C
	movs r0, #0
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	b _080C977A
_080C9752:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #5
	beq _080C9768
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080C9768:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x30
	bls _080C977C
	movs r0, #0
	strb r0, [r4, #0xd]
_080C977A:
	strb r0, [r4, #0xb]
_080C977C:
	adds r0, r4, #0
	bl sub_0803F17C
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C9788
sub_080C9788: @ 0x080C9788
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_080021A8
	ldr r6, _080C97D4 @ =gEwramData
	ldr r0, [r6]
	ldr r1, _080C97D8 @ =0x0000A094
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r5, [r0]
	adds r0, r4, #0
	bl sub_08002188
	cmp r0, #0
	bge _080C97A8
	adds r0, #7
_080C97A8:
	asrs r0, r0, #3
	movs r2, #0x1e
	cmp r5, #1
	beq _080C97B2
	lsls r2, r5, #5
_080C97B2:
	cmp r0, #0
	blt _080C97C2
	movs r1, #0
	cmp r0, r2
	blt _080C97BE
	movs r1, #1
_080C97BE:
	cmp r1, #0
	beq _080C97DC
_080C97C2:
	ldr r1, [r4, #0x48]
	rsbs r1, r1, #0
	str r1, [r4, #0x48]
	lsls r1, r1, #1
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	b _080C9850
	.align 2, 0
_080C97D4: .4byte gEwramData
_080C97D8: .4byte 0x0000A094
_080C97DC:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	blt _080C9814
	adds r5, r4, #0
	adds r5, #0x42
	movs r3, #0
	ldrsh r0, [r5, r3]
	ldr r2, [r6]
	ldr r1, _080C9810 @ =0x0000A094
	adds r2, r2, r1
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	adds r0, #8
	adds r1, r4, #0
	adds r1, #0x46
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	subs r1, #0x10
	bl sub_08002058
	b _080C983E
	.align 2, 0
_080C9810: .4byte 0x0000A094
_080C9814:
	adds r5, r4, #0
	adds r5, #0x42
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldr r2, [r6]
	ldr r3, _080C98B8 @ =0x0000A094
	adds r2, r2, r3
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	subs r0, #8
	adds r1, r4, #0
	adds r1, #0x46
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	subs r1, #0x10
	bl sub_0800207C
_080C983E:
	adds r1, r0, #0
	cmp r1, #0
	beq _080C986E
	ldrh r0, [r5]
	adds r0, r0, r1
	strh r0, [r5]
	ldr r0, [r4, #0x48]
	rsbs r0, r0, #0
	str r0, [r4, #0x48]
_080C9850:
	adds r3, r4, #0
	adds r3, #0x58
	ldrb r2, [r3]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_080C986E:
	adds r0, r4, #0
	bl sub_08002188
	ldr r6, _080C98BC @ =gEwramData
	ldr r0, [r6]
	ldr r1, _080C98B8 @ =0x0000A094
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r5, [r0, #1]
	adds r0, r4, #0
	bl sub_080021A8
	cmp r0, #0
	bge _080C988C
	adds r0, #7
_080C988C:
	asrs r0, r0, #3
	movs r2, #0x1a
	cmp r5, #1
	beq _080C9896
	lsls r2, r5, #5
_080C9896:
	cmp r0, #0
	blt _080C98A6
	movs r1, #0
	cmp r0, r2
	blt _080C98A2
	movs r1, #1
_080C98A2:
	cmp r1, #0
	beq _080C98C0
_080C98A6:
	ldr r1, [r4, #0x4c]
	rsbs r1, r1, #0
	str r1, [r4, #0x4c]
	lsls r1, r1, #1
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	b _080C992E
	.align 2, 0
_080C98B8: .4byte 0x0000A094
_080C98BC: .4byte gEwramData
_080C98C0:
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	blt _080C98F4
	adds r0, r4, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r2, [r6]
	ldr r1, _080C98F0 @ =0x0000A094
	adds r2, r2, r1
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	adds r5, r4, #0
	adds r5, #0x46
	movs r3, #0
	ldrsh r1, [r5, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	adds r1, #1
	bl sub_08001D94
	b _080C991C
	.align 2, 0
_080C98F0: .4byte 0x0000A094
_080C98F4:
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r2, [r6]
	ldr r3, _080C9934 @ =0x0000A094
	adds r2, r2, r3
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	adds r5, r4, #0
	adds r5, #0x46
	movs r3, #0
	ldrsh r1, [r5, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	subs r1, #0x20
	bl sub_08001C1C
_080C991C:
	adds r1, r0, #0
	cmp r1, #0
	beq _080C992E
	ldrh r0, [r5]
	adds r0, r0, r1
	strh r0, [r5]
	ldr r0, [r4, #0x4c]
	rsbs r0, r0, #0
	str r0, [r4, #0x4c]
_080C992E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C9934: .4byte 0x0000A094

	thumb_func_start sub_080C9938
sub_080C9938: @ 0x080C9938
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	str r5, [r4, #0x50]
	str r5, [r4, #0x48]
	str r5, [r4, #0x54]
	str r5, [r4, #0x4c]
	bl sub_0806AF98
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	bl RandomNumberGenerator
	movs r1, #0x1f
	ands r1, r0
	adds r1, #0x10
	strh r1, [r4, #0x14]
	bl RandomNumberGenerator
	ldr r1, _080C9978 @ =0x000003FF
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	strh r1, [r4, #0x18]
	strh r5, [r4, #0x16]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C9978: .4byte 0x000003FF

	thumb_func_start sub_080C997C
sub_080C997C: @ 0x080C997C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080C998C
	cmp r0, #1
	beq _080C99CA
	b _080C99DC
_080C998C:
	movs r0, #0x75
	bl sub_08013E18
	movs r0, #0x6e
	bl PlaySong
	adds r0, r4, #0
	bl sub_080C9A24
	adds r0, r4, #0
	bl sub_080683BC
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
	movs r0, #0xff
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080C99CA:
	ldrb r0, [r4, #0x1c]
	cmp r0, #0
	bne _080C99DC
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080C99DC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C99E4
sub_080C99E4: @ 0x080C99E4
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	mov r2, sp
	adds r0, #0x3c
	ldrb r0, [r0]
	movs r1, #0
	strh r0, [r2]
	mov r0, sp
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	ldr r0, [r4, #0x40]
	str r0, [sp, #8]
	ldr r0, [r4, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	adds r4, #0x6d
	ldrb r0, [r4]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080C9A1C
	bl sub_080C9108
_080C9A1C:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C9A24
sub_080C9A24: @ 0x080C9A24
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	movs r5, #0
_080C9A34:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _080C9A68 @ =sub_080C9284
	bl EntityCreateInRange
	adds r2, r0, #0
	cmp r2, #0
	beq _080C9A5C
	ldrb r0, [r4, #0x10]
	strb r0, [r2, #0x11]
	strb r5, [r2, #0x1d]
	ldrb r0, [r4, #0x1c]
	adds r0, #1
	strb r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x5c
	strb r1, [r0]
_080C9A5C:
	adds r5, #1
	cmp r5, #4
	ble _080C9A34
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C9A68: .4byte sub_080C9284

	thumb_func_start EnemyBlueCrowCreate
EnemyBlueCrowCreate: @ 0x080C9A6C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _080C9A90 @ =0x0820BF10
	ldr r0, _080C9A94 @ =0x0824EC04
	ldr r1, _080C9A98 @ =0x081F4274
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C9A9C
	adds r0, r4, #0
	bl EntityDelete
	b _080C9AE2
	.align 2, 0
_080C9A90: .4byte 0x0820BF10
_080C9A94: .4byte 0x0824EC04
_080C9A98: .4byte 0x081F4274
_080C9A9C:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0806B04C
	adds r0, r4, #0
	adds r0, #0x5c
	movs r2, #0
	movs r3, #3
	strb r3, [r0]
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r2, [r4, #0xc]
	strb r2, [r4, #0xb]
	ldr r0, _080C9AD4 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080C9AD8
	strb r3, [r4, #0xa]
	b _080C9AE2
	.align 2, 0
_080C9AD4: .4byte gEwramData
_080C9AD8:
	ldr r1, _080C9AEC @ =sub_0806E1B8
	ldr r2, _080C9AF0 @ =sub_080CA030
	adds r0, r4, #0
	bl sub_0806D244
_080C9AE2:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C9AEC: .4byte sub_0806E1B8
_080C9AF0: .4byte sub_080CA030

	thumb_func_start sub_080C9AF4
sub_080C9AF4: @ 0x080C9AF4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r7, _080C9B34 @ =gEwramData
	ldr r4, [r7]
	ldr r0, _080C9B38 @ =0x0000A094
	adds r4, r4, r0
	adds r0, r5, #0
	bl sub_0806CD38
	ldr r1, [r4, #4]
	adds r0, r0, r1
	mov sb, r0
	adds r0, r5, #0
	bl sub_0806CD78
	ldr r1, [r4, #8]
	adds r0, r0, r1
	ldr r1, _080C9B3C @ =0xFFD60000
	adds r1, r1, r0
	mov r8, r1
	movs r4, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	beq _080C9B70
	cmp r0, #1
	bgt _080C9B40
	cmp r0, #0
	beq _080C9B4A
	b _080C9D36
	.align 2, 0
_080C9B34: .4byte gEwramData
_080C9B38: .4byte 0x0000A094
_080C9B3C: .4byte 0xFFD60000
_080C9B40:
	cmp r0, #2
	beq _080C9B92
	cmp r0, #3
	beq _080C9C16
	b _080C9D36
_080C9B4A:
	strb r4, [r5, #0x14]
	adds r0, r5, #0
	bl sub_0806BC40
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C9B68
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080C9B68:
	movs r0, #1
	strb r0, [r5, #0xb]
	strb r4, [r5, #0xc]
	strb r4, [r5, #0xd]
_080C9B70:
	movs r1, #0xf0
	lsls r1, r1, #0xe
	adds r0, r5, #0
	bl sub_0806BF78
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C9B82
	b _080C9D36
_080C9B82:
	movs r1, #0
	movs r0, #3
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xc]
	movs r0, #0x8b
	bl PlaySong
	b _080C9D36
_080C9B92:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _080C9B9E
	cmp r0, #1
	beq _080C9BF2
	b _080C9D36
_080C9B9E:
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _080C9BB4
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080C9BB4:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080C9BDA
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bge _080C9BCA
	rsbs r0, r0, #0
_080C9BCA:
	rsbs r0, r0, #0
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x50]
	cmp r0, #0
	bge _080C9BD6
	rsbs r0, r0, #0
_080C9BD6:
	rsbs r0, r0, #0
	str r0, [r5, #0x50]
_080C9BDA:
	ldr r0, [r5, #0x4c]
	ldr r1, [r5, #0x54]
	bl __divsi3
	cmp r0, #0
	bge _080C9BE8
	rsbs r0, r0, #0
_080C9BE8:
	lsls r0, r0, #1
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
_080C9BF2:
	adds r0, r5, #0
	bl sub_0806BC40
	movs r3, #0xc0
	lsls r3, r3, #9
	adds r0, r5, #0
	mov r1, sb
	mov r2, r8
	bl sub_080694B8
	cmp r0, #0
	bne _080C9C0C
	b _080C9D36
_080C9C0C:
	movs r1, #0
	movs r0, #3
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xc]
	b _080C9D36
_080C9C16:
	adds r0, r5, #0
	bl sub_0806BC40
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	beq _080C9C64
	cmp r0, #1
	bgt _080C9C2C
	cmp r0, #0
	beq _080C9C36
	b _080C9D36
_080C9C2C:
	cmp r0, #2
	beq _080C9C78
	cmp r0, #3
	beq _080C9CD2
	b _080C9D36
_080C9C36:
	ldrb r0, [r5, #0x14]
	adds r0, #1
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #2
	beq _080C9C52
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080C9C52:
	str r4, [r5, #0x50]
	str r4, [r5, #0x48]
	str r4, [r5, #0x54]
	str r4, [r5, #0x4c]
	movs r0, #0x20
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
_080C9C64:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080C9D36
	ldrb r0, [r5, #0xc]
	adds r0, #1
	b _080C9D34
_080C9C78:
	adds r0, r5, #0
	bl sub_0806DE50
	cmp r0, #0
	bge _080C9C94
	adds r0, r5, #0
	bl sub_0806DE50
	rsbs r0, r0, #0
	movs r1, #0x90
	lsls r1, r1, #0xf
	cmp r0, r1
	bgt _080C9CA2
	b _080C9D36
_080C9C94:
	adds r0, r5, #0
	bl sub_0806DE50
	movs r1, #0x90
	lsls r1, r1, #0xf
	cmp r0, r1
	ble _080C9D36
_080C9CA2:
	adds r0, r5, #0
	bl sub_0806DEB8
	cmp r0, #0
	bge _080C9CBE
	adds r0, r5, #0
	bl sub_0806DEB8
	rsbs r0, r0, #0
	movs r1, #0x80
	lsls r1, r1, #0xd
	cmp r0, r1
	bgt _080C9CCC
	b _080C9D36
_080C9CBE:
	adds r0, r5, #0
	bl sub_0806DEB8
	movs r1, #0x80
	lsls r1, r1, #0xd
	cmp r0, r1
	ble _080C9D36
_080C9CCC:
	ldrb r0, [r5, #0xc]
	adds r0, #1
	b _080C9D34
_080C9CD2:
	adds r6, r5, #0
	adds r6, #0x6d
	ldrb r0, [r6]
	cmp r0, #1
	beq _080C9CE8
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080C9CE8:
	ldr r4, _080C9D60 @ =0xFFE00000
	ldr r0, [r7]
	ldr r1, _080C9D64 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080C9D00
	rsbs r4, r4, #0
_080C9D00:
	mov r0, sb
	adds r1, r0, r4
	movs r3, #0xd0
	lsls r3, r3, #9
	adds r0, r5, #0
	mov r2, r8
	bl sub_080694B8
	cmp r0, #0
	beq _080C9D36
	ldrb r0, [r6]
	cmp r0, #2
	beq _080C9D26
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080C9D26:
	movs r0, #0
	str r0, [r5, #0x50]
	str r0, [r5, #0x48]
	str r0, [r5, #0x54]
	str r0, [r5, #0x4c]
	ldrb r0, [r5, #0xc]
	subs r0, #1
_080C9D34:
	strb r0, [r5, #0xc]
_080C9D36:
	ldr r0, [r5, #0x40]
	ldr r2, [r5, #0x48]
	adds r0, r0, r2
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x50]
	adds r2, r2, r0
	str r2, [r5, #0x48]
	ldr r0, [r5, #0x54]
	adds r1, r1, r0
	str r1, [r5, #0x4c]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C9D60: .4byte 0xFFE00000
_080C9D64: .4byte 0x00013110

	thumb_func_start sub_080C9D68
sub_080C9D68: @ 0x080C9D68
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xb]
	cmp r5, #0
	beq _080C9D78
	cmp r5, #1
	beq _080C9DE8
	b _080C9E26
_080C9D78:
	movs r0, #0x72
	bl PlaySong
	adds r0, r4, #0
	bl sub_080C9E2C
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #3
	beq _080C9D9A
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080C9D9A:
	str r5, [r4, #0x50]
	str r5, [r4, #0x48]
	str r5, [r4, #0x54]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x4c]
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
	movs r0, #0x40
	strb r0, [r4, #0xd]
	movs r0, #1
	strb r0, [r4, #0xb]
	strb r5, [r4, #0xc]
	adds r0, r4, #0
	bl sub_080683BC
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r4, #0
	adds r1, #0x46
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #1
	bl sub_0806E664
_080C9DE8:
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldrb r0, [r4, #0xd]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080C9E12
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r4, #0
	adds r1, #0x46
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r1, #4
	movs r2, #1
	bl sub_0806E664
_080C9E12:
	movs r3, #0x80
	lsls r3, r3, #0xc
	adds r0, r4, #0
	movs r1, #6
	adds r2, r3, #0
	bl sub_0806BE74
	adds r0, r4, #0
	bl sub_0803F17C
_080C9E26:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080C9E2C
sub_080C9E2C: @ 0x080C9E2C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #0
_080C9E32:
	movs r0, #0x1b
	movs r1, #0x48
	ldr r2, _080C9E60 @ =sub_080C9ED4
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _080C9EBC
	cmp r6, #0
	bne _080C9E64
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, #8
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r0, #4
	b _080C9E7A
	.align 2, 0
_080C9E60: .4byte sub_080C9ED4
_080C9E64:
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #8
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #4
_080C9E7A:
	adds r1, #4
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080C9EC8 @ =0x081F4274
	bl sub_0803AFB8
	adds r2, r0, #0
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	ldr r1, _080C9ECC @ =0x0824EC04
	bl sub_0803B924
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #8
	strb r0, [r1]
	ldr r0, _080C9ED0 @ =sub_0803B9D0
	str r0, [r4, #4]
	strh r6, [r4, #0x30]
_080C9EBC:
	adds r6, #1
	cmp r6, #1
	ble _080C9E32
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C9EC8: .4byte 0x081F4274
_080C9ECC: .4byte 0x0824EC04
_080C9ED0: .4byte sub_0803B9D0

	thumb_func_start sub_080C9ED4
sub_080C9ED4: @ 0x080C9ED4
	push {r4, lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0xa]
	cmp r0, #1
	beq _080C9F24
	cmp r0, #1
	bgt _080C9EE8
	cmp r0, #0
	beq _080C9EEE
	b _080C9F6E
_080C9EE8:
	cmp r0, #2
	beq _080C9F54
	b _080C9F6E
_080C9EEE:
	movs r2, #0x80
	lsls r2, r2, #7
	str r2, [r3, #0x48]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r3, #0x4c]
	ldr r1, _080C9F50 @ =0xFFFFFD00
	str r1, [r3, #0x50]
	movs r4, #0x30
	ldrsh r0, [r3, r4]
	cmp r0, #0
	beq _080C9F1A
	rsbs r0, r2, #0
	str r0, [r3, #0x48]
	rsbs r0, r1, #0
	str r0, [r3, #0x50]
	adds r2, r3, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
_080C9F1A:
	movs r0, #0x30
	strb r0, [r3, #0xd]
	ldrb r0, [r3, #0xa]
	adds r0, #1
	strb r0, [r3, #0xa]
_080C9F24:
	ldrb r0, [r3, #0xd]
	subs r0, #1
	strb r0, [r3, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080C9F6E
	adds r2, r3, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x18
	strb r0, [r3, #0xd]
	ldrb r0, [r3, #0xa]
	adds r0, #1
	strb r0, [r3, #0xa]
	b _080C9F6E
	.align 2, 0
_080C9F50: .4byte 0xFFFFFD00
_080C9F54:
	ldrb r0, [r3, #0xd]
	subs r0, #1
	strb r0, [r3, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080C9F6E
	adds r2, r3, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080C9F6E:
	ldr r0, [r3, #0x40]
	ldr r2, [r3, #0x48]
	adds r0, r0, r2
	str r0, [r3, #0x40]
	ldr r0, [r3, #0x44]
	ldr r1, [r3, #0x4c]
	adds r0, r0, r1
	str r0, [r3, #0x44]
	ldr r0, [r3, #0x50]
	adds r2, r2, r0
	str r2, [r3, #0x48]
	ldr r0, [r3, #0x54]
	adds r1, r1, r0
	str r1, [r3, #0x4c]
	ldrb r1, [r3, #0xd]
	movs r0, #1
	adds r3, #0x58
	ands r1, r0
	lsls r1, r1, #5
	ldrb r2, [r3]
	subs r0, #0x22
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start EnemyBlueCrowUpdate
EnemyBlueCrowUpdate: @ 0x080C9FA4
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _080C9FB8
	adds r0, r4, #0
	bl sub_080C9FFC
	b _080C9FF2
_080C9FB8:
	cmp r0, #2
	bne _080C9FC4
	adds r0, r4, #0
	bl sub_080C9D68
	b _080C9FF2
_080C9FC4:
	adds r0, r4, #0
	bl sub_08021924
	adds r0, r4, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _080C9FDE
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	b _080C9FF2
_080C9FDE:
	adds r0, r4, #0
	bl sub_080C9AF4
	adds r0, r4, #0
	bl sub_0806DF20
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
_080C9FF2:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C9FFC
sub_080C9FFC: @ 0x080C9FFC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080CA022
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CA01C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080CA01C:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080CA022:
	adds r0, r4, #0
	bl sub_0803F17C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CA030
sub_080CA030: @ 0x080CA030
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080CA046
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080CA046:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start EnemyRedCrowCreate
EnemyRedCrowCreate: @ 0x080CA04C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _080CA070 @ =0x0820BF10
	ldr r0, _080CA074 @ =0x0824EC04
	ldr r1, _080CA078 @ =0x081F4274
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #1
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080CA07C
	adds r0, r4, #0
	bl EntityDelete
	b _080CA0C2
	.align 2, 0
_080CA070: .4byte 0x0820BF10
_080CA074: .4byte 0x0824EC04
_080CA078: .4byte 0x081F4274
_080CA07C:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0806B04C
	adds r0, r4, #0
	adds r0, #0x5c
	movs r2, #0
	movs r3, #3
	strb r3, [r0]
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r2, [r4, #0xc]
	strb r2, [r4, #0xb]
	ldr r0, _080CA0B4 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080CA0B8
	strb r3, [r4, #0xa]
	b _080CA0C2
	.align 2, 0
_080CA0B4: .4byte gEwramData
_080CA0B8:
	ldr r1, _080CA0CC @ =sub_0806E1B8
	ldr r2, _080CA0D0 @ =sub_080CA5D0
	adds r0, r4, #0
	bl sub_0806D244
_080CA0C2:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CA0CC: .4byte sub_0806E1B8
_080CA0D0: .4byte sub_080CA5D0

	thumb_func_start sub_080CA0D4
sub_080CA0D4: @ 0x080CA0D4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #4
	bls _080CA0E0
	b _080CA2E4
_080CA0E0:
	lsls r0, r0, #2
	ldr r1, _080CA0EC @ =_080CA0F0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080CA0EC: .4byte _080CA0F0
_080CA0F0: @ jump table
	.4byte _080CA104 @ case 0
	.4byte _080CA12C @ case 1
	.4byte _080CA148 @ case 2
	.4byte _080CA1D0 @ case 3
	.4byte _080CA28A @ case 4
_080CA104:
	movs r5, #0
	strb r5, [r4, #0x14]
	adds r0, r4, #0
	bl sub_0806BC40
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CA124
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080CA124:
	movs r0, #1
	strb r0, [r4, #0xb]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xd]
_080CA12C:
	movs r1, #0xf0
	lsls r1, r1, #0xe
	adds r0, r4, #0
	bl sub_0806BF78
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080CA13E
	b _080CA2E4
_080CA13E:
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
	b _080CA2E4
_080CA148:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _080CA154
	cmp r0, #1
	beq _080CA1B2
	b _080CA2E4
_080CA154:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _080CA16A
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080CA16A:
	movs r3, #0x80
	lsls r3, r3, #8
	str r3, [r4, #0x48]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #0x50]
	ldr r2, _080CA1CC @ =0xFFFFF000
	str r2, [r4, #0x54]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080CA194
	rsbs r0, r3, #0
	str r0, [r4, #0x48]
	str r2, [r4, #0x50]
_080CA194:
	ldr r0, [r4, #0x4c]
	ldr r1, [r4, #0x54]
	bl __divsi3
	cmp r0, #0
	bge _080CA1A2
	rsbs r0, r0, #0
_080CA1A2:
	lsls r0, r0, #1
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x8b
	bl PlaySong
_080CA1B2:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080CA1C2
	b _080CA2E4
_080CA1C2:
	movs r0, #3
	strb r0, [r4, #0xb]
	movs r0, #0
	b _080CA2E2
	.align 2, 0
_080CA1CC: .4byte 0xFFFFF000
_080CA1D0:
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	beq _080CA1DC
	cmp r5, #1
	beq _080CA20A
	b _080CA2E4
_080CA1DC:
	ldrb r0, [r4, #0x14]
	adds r0, #1
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #2
	beq _080CA1F8
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080CA1F8:
	str r5, [r4, #0x50]
	str r5, [r4, #0x48]
	str r5, [r4, #0x54]
	str r5, [r4, #0x4c]
	movs r0, #0x80
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_080CA20A:
	ldrb r0, [r4, #0xd]
	cmp r0, #0x40
	bne _080CA240
	ldrb r1, [r4, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080CA222
	adds r0, r4, #0
	bl sub_0806BC40
	b _080CA240
_080CA222:
	adds r3, r4, #0
	adds r3, #0x58
	ldrb r2, [r3]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_080CA240:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080CA2E4
	movs r0, #2
	strb r0, [r4, #0xb]
	movs r0, #0
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080CA2E4
	cmp r1, #1
	beq _080CA2E4
	movs r1, #0xf0
	lsls r1, r1, #0xf
	adds r0, r4, #0
	bl sub_0806BF78
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	cmp r1, #0
	bne _080CA2E4
	movs r0, #4
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r2]
	subs r0, #6
	ands r0, r1
	strb r0, [r2]
	b _080CA2E4
_080CA28A:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _080CA2B4
	cmp r0, #1
	bgt _080CA29A
	cmp r0, #0
	beq _080CA2A0
	b _080CA2E4
_080CA29A:
	cmp r0, #2
	beq _080CA2D0
	b _080CA2E4
_080CA2A0:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080CA2E4
	strb r2, [r4, #0xc]
	b _080CA2E4
_080CA2B4:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #4
	beq _080CA2CA
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080CA2CA:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_080CA2D0:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080CA2E4
	movs r0, #0
	strb r0, [r4, #0xb]
_080CA2E2:
	strb r0, [r4, #0xc]
_080CA2E4:
	ldr r0, [r4, #0x40]
	ldr r2, [r4, #0x48]
	adds r0, r0, r2
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x50]
	adds r2, r2, r0
	str r2, [r4, #0x48]
	ldr r0, [r4, #0x54]
	adds r1, r1, r0
	str r1, [r4, #0x4c]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CA308
sub_080CA308: @ 0x080CA308
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xb]
	cmp r5, #0
	beq _080CA318
	cmp r5, #1
	beq _080CA388
	b _080CA3C6
_080CA318:
	movs r0, #0x72
	bl PlaySong
	adds r0, r4, #0
	bl sub_080CA3CC
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #3
	beq _080CA33A
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080CA33A:
	str r5, [r4, #0x50]
	str r5, [r4, #0x48]
	str r5, [r4, #0x54]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x4c]
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
	movs r0, #0x40
	strb r0, [r4, #0xd]
	movs r0, #1
	strb r0, [r4, #0xb]
	strb r5, [r4, #0xc]
	adds r0, r4, #0
	bl sub_080683BC
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r4, #0
	adds r1, #0x46
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #1
	bl sub_0806E664
_080CA388:
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldrb r0, [r4, #0xd]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080CA3B2
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r4, #0
	adds r1, #0x46
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r1, #4
	movs r2, #1
	bl sub_0806E664
_080CA3B2:
	movs r3, #0x80
	lsls r3, r3, #0xc
	adds r0, r4, #0
	movs r1, #6
	adds r2, r3, #0
	bl sub_0806BE74
	adds r0, r4, #0
	bl sub_0803F17C
_080CA3C6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080CA3CC
sub_080CA3CC: @ 0x080CA3CC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #0
_080CA3D2:
	movs r0, #0x1b
	movs r1, #0x48
	ldr r2, _080CA400 @ =sub_080CA474
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _080CA45C
	cmp r6, #0
	bne _080CA404
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, #8
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r0, #4
	b _080CA41A
	.align 2, 0
_080CA400: .4byte sub_080CA474
_080CA404:
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #8
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #4
_080CA41A:
	adds r1, #4
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080CA468 @ =0x081F4274
	bl sub_0803AFB8
	adds r2, r0, #0
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	ldr r1, _080CA46C @ =0x0824EC04
	bl sub_0803B924
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #8
	strb r0, [r1]
	ldr r0, _080CA470 @ =sub_0803B9D0
	str r0, [r4, #4]
	strh r6, [r4, #0x30]
_080CA45C:
	adds r6, #1
	cmp r6, #1
	ble _080CA3D2
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080CA468: .4byte 0x081F4274
_080CA46C: .4byte 0x0824EC04
_080CA470: .4byte sub_0803B9D0

	thumb_func_start sub_080CA474
sub_080CA474: @ 0x080CA474
	push {r4, lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0xa]
	cmp r0, #1
	beq _080CA4C4
	cmp r0, #1
	bgt _080CA488
	cmp r0, #0
	beq _080CA48E
	b _080CA50E
_080CA488:
	cmp r0, #2
	beq _080CA4F4
	b _080CA50E
_080CA48E:
	movs r2, #0x80
	lsls r2, r2, #7
	str r2, [r3, #0x48]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r3, #0x4c]
	ldr r1, _080CA4F0 @ =0xFFFFFD00
	str r1, [r3, #0x50]
	movs r4, #0x30
	ldrsh r0, [r3, r4]
	cmp r0, #0
	beq _080CA4BA
	rsbs r0, r2, #0
	str r0, [r3, #0x48]
	rsbs r0, r1, #0
	str r0, [r3, #0x50]
	adds r2, r3, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
_080CA4BA:
	movs r0, #0x30
	strb r0, [r3, #0xd]
	ldrb r0, [r3, #0xa]
	adds r0, #1
	strb r0, [r3, #0xa]
_080CA4C4:
	ldrb r0, [r3, #0xd]
	subs r0, #1
	strb r0, [r3, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080CA50E
	adds r2, r3, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x18
	strb r0, [r3, #0xd]
	ldrb r0, [r3, #0xa]
	adds r0, #1
	strb r0, [r3, #0xa]
	b _080CA50E
	.align 2, 0
_080CA4F0: .4byte 0xFFFFFD00
_080CA4F4:
	ldrb r0, [r3, #0xd]
	subs r0, #1
	strb r0, [r3, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080CA50E
	adds r2, r3, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080CA50E:
	ldr r0, [r3, #0x40]
	ldr r2, [r3, #0x48]
	adds r0, r0, r2
	str r0, [r3, #0x40]
	ldr r0, [r3, #0x44]
	ldr r1, [r3, #0x4c]
	adds r0, r0, r1
	str r0, [r3, #0x44]
	ldr r0, [r3, #0x50]
	adds r2, r2, r0
	str r2, [r3, #0x48]
	ldr r0, [r3, #0x54]
	adds r1, r1, r0
	str r1, [r3, #0x4c]
	ldrb r1, [r3, #0xd]
	movs r0, #1
	adds r3, #0x58
	ands r1, r0
	lsls r1, r1, #5
	ldrb r2, [r3]
	subs r0, #0x22
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start EnemyRedCrowUpdate
EnemyRedCrowUpdate: @ 0x080CA544
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _080CA558
	adds r0, r4, #0
	bl sub_080CA59C
	b _080CA592
_080CA558:
	cmp r0, #2
	bne _080CA564
	adds r0, r4, #0
	bl sub_080CA308
	b _080CA592
_080CA564:
	adds r0, r4, #0
	bl sub_08021924
	adds r0, r4, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _080CA57E
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	b _080CA592
_080CA57E:
	adds r0, r4, #0
	bl sub_080CA0D4
	adds r0, r4, #0
	bl sub_0806DF20
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
_080CA592:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CA59C
sub_080CA59C: @ 0x080CA59C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080CA5C2
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CA5BC
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080CA5BC:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080CA5C2:
	adds r0, r4, #0
	bl sub_0803F17C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CA5D0
sub_080CA5D0: @ 0x080CA5D0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080CA5E6
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080CA5E6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start EnemyBeamSkeletonCreate
EnemyBeamSkeletonCreate: @ 0x080CA5EC
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r2, _080CA63C @ =0x0820BF54
	ldr r0, _080CA640 @ =0x0824F9AC
	ldr r1, _080CA644 @ =0x081F427C
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080CA65A
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _080CA648 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _080CA64C
	movs r1, #0
	movs r0, #4
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	b _080CA6D4
	.align 2, 0
_080CA63C: .4byte 0x0820BF54
_080CA640: .4byte 0x0824F9AC
_080CA644: .4byte 0x081F427C
_080CA648: .4byte gEwramData
_080CA64C:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _080CA662
_080CA65A:
	adds r0, r4, #0
	bl EntityDelete
	b _080CA6D4
_080CA662:
	adds r3, r4, #0
	adds r3, #0x58
	movs r0, #0x1f
	ands r2, r0
	ldrb r1, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r2, #0x80
	lsls r2, r2, #9
	ldrb r0, [r3]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	str r5, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	adds r1, r2, #0
	bl sub_0803E058
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0806B04C
	strb r5, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	ldr r1, _080CA6DC @ =sub_0806E1B8
	ldr r2, _080CA6E0 @ =sub_080CB4F0
	adds r0, r4, #0
	bl sub_0806D244
	adds r0, r4, #0
	bl sub_0806AF98
	adds r0, r4, #0
	bl sub_08002188
	strh r0, [r4, #0x22]
	adds r1, r0, #0
	adds r1, #0x40
	strh r1, [r4, #0x14]
	subs r0, #0x40
	strh r0, [r4, #0x16]
_080CA6D4:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080CA6DC: .4byte sub_0806E1B8
_080CA6E0: .4byte sub_080CB4F0

	thumb_func_start EnemyBeamSkeletonUpdate
EnemyBeamSkeletonUpdate: @ 0x080CA6E4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bne _080CA6F6
	adds r0, r4, #0
	bl sub_080CB4C0
	b _080CA76A
_080CA6F6:
	cmp r0, #0xff
	bne _080CA702
	adds r0, r4, #0
	bl sub_080CB144
	b _080CA76A
_080CA702:
	cmp r0, #3
	bne _080CA71A
	adds r0, r4, #0
	bl sub_080CAA2C
	adds r0, r4, #0
	bl sub_0806DF20
	adds r0, r4, #0
	bl sub_0806E314
	b _080CA76A
_080CA71A:
	adds r0, r4, #0
	bl sub_0806CC20
	cmp r0, #0
	bne _080CA76A
	bl RandomNumberGenerator
	movs r1, #0x50
	bl __umodsi3
	adds r0, #0x28
	strh r0, [r4, #0x1e]
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080CA750
	cmp r0, #1
	bgt _080CA742
	cmp r0, #0
	beq _080CA748
	b _080CA75E
_080CA742:
	cmp r0, #2
	beq _080CA758
	b _080CA75E
_080CA748:
	adds r0, r4, #0
	bl sub_080CA770
	b _080CA75E
_080CA750:
	adds r0, r4, #0
	bl sub_080CA884
	b _080CA75E
_080CA758:
	adds r0, r4, #0
	bl sub_080CA9E0
_080CA75E:
	adds r0, r4, #0
	bl sub_0806DF20
	adds r0, r4, #0
	bl sub_0806E314
_080CA76A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080CA770
sub_080CA770: @ 0x080CA770
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	movs r0, #0
	mov sb, r0
	ldrh r0, [r5, #0x16]
	mov r8, r0
	ldrh r4, [r5, #0x14]
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _080CA790
	cmp r0, #1
	beq _080CA7AE
	b _080CA874
_080CA790:
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _080CA7A6
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080CA7A6:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	b _080CA874
_080CA7AE:
	adds r0, r5, #0
	bl sub_08002188
	ldrh r1, [r5, #0x22]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _080CA7F0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	bl sub_08002188
	cmp r4, r0
	blt _080CA7E6
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x28
	rsbs r1, r1, #0
	cmp r0, r1
	bge _080CA810
_080CA7E6:
	ldrb r1, [r6]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	b _080CA80E
_080CA7F0:
	mov r0, r8
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	bl sub_08002188
	cmp r4, r0
	bgt _080CA808
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x28
	ble _080CA810
_080CA808:
	ldrb r0, [r6]
	movs r1, #0x40
	orrs r0, r1
_080CA80E:
	strb r0, [r6]
_080CA810:
	movs r1, #0xc0
	lsls r1, r1, #7
	ldr r2, _080CA880 @ =0x08528B04
	adds r0, r5, #0
	movs r3, #0xc
	bl sub_0806CAF8
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _080CA82A
	movs r0, #1
	mov sb, r0
_080CA82A:
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806B120
	cmp r0, #0
	beq _080CA83A
	movs r0, #1
	mov sb, r0
_080CA83A:
	mov r0, sb
	cmp r0, #0
	beq _080CA85A
	ldrb r2, [r6]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6]
_080CA85A:
	adds r0, r5, #0
	movs r1, #0xc0
	movs r2, #0x80
	bl sub_0806E29C
	cmp r0, #0
	beq _080CA874
	movs r1, #0
	str r1, [r5, #0x48]
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
_080CA874:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080CA880: .4byte 0x08528B04

	thumb_func_start sub_080CA884
sub_080CA884: @ 0x080CA884
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xb]
	cmp r5, #1
	beq _080CA8CA
	cmp r5, #1
	bgt _080CA898
	cmp r5, #0
	beq _080CA89E
	b _080CA9D6
_080CA898:
	cmp r5, #2
	beq _080CA920
	b _080CA9D6
_080CA89E:
	adds r0, r4, #0
	bl sub_0806BDEC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080CA8AE
	rsbs r0, r0, #0
_080CA8AE:
	cmp r0, #0x20
	ble _080CA8B6
	strb r5, [r4, #0xa]
	b _080CA9AE
_080CA8B6:
	bl RandomNumberGenerator
	movs r1, #0x1f
	ands r1, r0
	movs r2, #0
	strh r1, [r4, #0x1c]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	strb r2, [r4, #0xc]
_080CA8CA:
	adds r0, r4, #0
	bl sub_0806BC40
	movs r0, #0x14
	strb r0, [r4, #0xd]
	bl RandomNumberGenerator
	ldr r1, _080CA93C @ =0x00003FFF
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r4, #0x24]
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	adds r1, #0x40
	adds r0, r4, #0
	movs r2, #0x80
	bl sub_0806C1B0
	cmp r0, #0
	beq _080CA900
	ldr r0, [r4, #0x24]
	rsbs r0, r0, #0
	str r0, [r4, #0x24]
_080CA900:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _080CA916
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080CA916:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0
	strb r0, [r4, #0xc]
_080CA920:
	ldrh r1, [r4, #0x1c]
	movs r2, #0x1c
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _080CA92E
	subs r0, r1, #1
	strh r0, [r4, #0x1c]
_080CA92E:
	ldr r1, [r4, #0x24]
	cmp r1, #0
	ble _080CA940
	asrs r0, r1, #4
	subs r0, r1, r0
	b _080CA94C
	.align 2, 0
_080CA93C: .4byte 0x00003FFF
_080CA940:
	adds r0, r1, #0
	cmp r1, #0
	bge _080CA948
	rsbs r0, r1, #0
_080CA948:
	asrs r0, r0, #4
	adds r0, r1, r0
_080CA94C:
	str r0, [r4, #0x24]
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _080CA9C6
	movs r0, #0x1c
	ldrsh r5, [r4, r0]
	cmp r5, #0
	bne _080CA96E
	adds r0, r4, #0
	movs r1, #0x64
	movs r2, #0x28
	bl sub_0806C1B0
	cmp r0, #0
	beq _080CA96E
	movs r0, #3
	b _080CA9AC
_080CA96E:
	ldrb r0, [r4, #0x19]
	adds r0, #1
	movs r5, #0
	strb r0, [r4, #0x19]
	bl RandomNumberGenerator
	movs r1, #0x28
	bl __umodsi3
	ldrb r1, [r4, #0x19]
	cmp r0, r1
	bhs _080CA9BA
	adds r0, r4, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080CA996
	rsbs r0, r0, #0
_080CA996:
	cmp r0, #0x30
	ble _080CA9B4
	strb r5, [r4, #0x19]
	bl RandomNumberGenerator
	movs r1, #0x32
	bl __umodsi3
	cmp r0, #0xe
	bhi _080CA9D6
	movs r0, #2
_080CA9AC:
	strb r0, [r4, #0xa]
_080CA9AE:
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	b _080CA9D6
_080CA9B4:
	ldrb r0, [r4, #0x19]
	lsrs r0, r0, #1
	strb r0, [r4, #0x19]
_080CA9BA:
	ldrb r0, [r4, #0xb]
	subs r0, #1
	movs r1, #0
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
	b _080CA9CA
_080CA9C6:
	subs r0, #1
	strb r0, [r4, #0xd]
_080CA9CA:
	ldr r1, [r4, #0x24]
	ldr r2, _080CA9DC @ =0x08528B04
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_0806CAF8
_080CA9D6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080CA9DC: .4byte 0x08528B04

	thumb_func_start sub_080CA9E0
sub_080CA9E0: @ 0x080CA9E0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080CA9F0
	cmp r0, #1
	beq _080CAA10
	b _080CAA26
_080CA9F0:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CAA06
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080CAA06:
	movs r0, #0x3c
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080CAA10:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _080CAA26
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080CAA26:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080CAA2C
sub_080CAA2C: @ 0x080CAA2C
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #4
	bls _080CAA3A
	b _080CAC2C
_080CAA3A:
	lsls r0, r0, #2
	ldr r1, _080CAA44 @ =_080CAA48
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080CAA44: .4byte _080CAA48
_080CAA48: @ jump table
	.4byte _080CAA5C @ case 0
	.4byte _080CAA8C @ case 1
	.4byte _080CAAFA @ case 2
	.4byte _080CAB40 @ case 3
	.4byte _080CAC0C @ case 4
_080CAA5C:
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #2
	beq _080CAA72
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080CAA72:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080CAA84
	b _080CAC2C
_080CAA84:
	movs r0, #0
	strb r2, [r5, #0xb]
	strb r0, [r5, #0xc]
	b _080CAC2C
_080CAA8C:
	ldrb r4, [r5, #0xc]
	cmp r4, #0
	beq _080CAA98
	cmp r4, #1
	beq _080CAAD8
	b _080CAC2C
_080CAA98:
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #3
	beq _080CAAAE
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080CAAAE:
	movs r0, #0x20
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	strh r4, [r5, #0x20]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	str r4, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	movs r2, #0
	bl sub_0803E058
_080CAAD8:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080CAAE8
	b _080CAC2C
_080CAAE8:
	ldrb r0, [r5, #0x1a]
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #0x1a]
	movs r0, #2
	strb r0, [r5, #0xb]
	movs r0, #0
	strb r0, [r5, #0xc]
	b _080CAC2C
_080CAAFA:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _080CAB06
	cmp r0, #1
	beq _080CAB20
	b _080CAC2C
_080CAB06:
	ldr r0, _080CAB3C @ =0x0000FFFF
	strh r0, [r5, #0x20]
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #4
	beq _080CAB20
	adds r0, r5, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080CAB20:
	adds r0, r5, #0
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0x13
	beq _080CAB2C
	b _080CAC2C
_080CAB2C:
	adds r0, r5, #0
	bl sub_080CAC34
	movs r1, #0
	movs r0, #3
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xc]
	b _080CAC2C
	.align 2, 0
_080CAB3C: .4byte 0x0000FFFF
_080CAB40:
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	beq _080CAB76
	cmp r0, #1
	bgt _080CAB50
	cmp r0, #0
	beq _080CAB56
	b _080CAC2C
_080CAB50:
	cmp r0, #2
	beq _080CABC4
	b _080CAC2C
_080CAB56:
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #5
	beq _080CAB6C
	adds r0, r5, #0
	movs r1, #5
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080CAB6C:
	movs r0, #0x2a
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
_080CAB76:
	ldrh r0, [r5, #0x20]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r0, r1
	ldr r1, _080CABC0 @ =0x0000FFFF
	cmp r0, r1
	ble _080CAB86
	adds r0, r1, #0
_080CAB86:
	movs r4, #0
	strh r0, [r5, #0x20]
	movs r1, #0x80
	lsls r1, r1, #9
	ldrh r2, [r5, #0x20]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	str r4, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	bl sub_0803E058
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080CAC2C
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	b _080CAC2C
	.align 2, 0
_080CABC0: .4byte 0x0000FFFF
_080CABC4:
	ldrh r0, [r5, #0x20]
	ldr r1, _080CAC08 @ =0xFFFFFC00
	adds r0, r0, r1
	cmp r0, #0
	bge _080CABD0
	movs r0, #0
_080CABD0:
	movs r4, #0
	strh r0, [r5, #0x20]
	movs r1, #0x80
	lsls r1, r1, #9
	ldrh r2, [r5, #0x20]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	str r4, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	bl sub_0803E058
	ldrh r0, [r5, #0x20]
	cmp r0, #0
	bne _080CAC2C
	movs r0, #8
	strb r0, [r5, #0xd]
	movs r0, #4
	strb r0, [r5, #0xb]
	movs r0, #0
	strb r0, [r5, #0xc]
	b _080CAC2C
	.align 2, 0
_080CAC08: .4byte 0xFFFFFC00
_080CAC0C:
	ldrb r1, [r5, #0x1a]
	movs r0, #0xfe
	ands r0, r1
	movs r1, #0
	strb r0, [r5, #0x1a]
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080CAC2C
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
_080CAC2C:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080CAC34
sub_080CAC34: @ 0x080CAC34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	ldr r2, _080CAE48 @ =sub_080CB0D0
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r7, r0, #0
	cmp r7, #0
	beq _080CAD42
	mov r0, r8
	adds r0, #0x58
	str r0, [sp]
	ldrb r0, [r0]
	movs r1, #0x58
	adds r1, r1, r7
	mov sl, r1
	movs r1, #0x40
	ands r1, r0
	mov r3, sl
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r2, _080CAE4C @ =0xFFF50000
	str r2, [r7, #0x40]
	ldr r0, _080CAE50 @ =0xFFEF0000
	str r0, [r7, #0x44]
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080CAC88
	rsbs r0, r2, #0
	str r0, [r7, #0x40]
_080CAC88:
	ldr r0, [r7, #0x40]
	mov r2, r8
	ldr r1, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r7, #0x40]
	ldr r0, [r7, #0x44]
	ldr r1, [r2, #0x44]
	adds r0, r0, r1
	str r0, [r7, #0x44]
	ldrb r0, [r2, #0x10]
	strb r0, [r7, #0x12]
	movs r3, #0x59
	adds r3, r3, r7
	mov sb, r3
	ldrb r0, [r3]
	movs r6, #2
	orrs r0, r6
	strb r0, [r3]
	ldr r0, _080CAE54 @ =sub_0803B9D0
	str r0, [r7, #4]
	ldr r5, _080CAE58 @ =0x0824F9AC
	mov r0, r8
	bl sub_0803B998
	adds r4, r0, #0
	ldr r0, _080CAE5C @ =0x0820BF54
	bl sub_080681D8
	adds r3, r0, #0
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0803B924
	adds r1, r7, #0
	adds r1, #0x65
	movs r0, #0x15
	strb r0, [r1]
	adds r2, r7, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	subs r0, #0x1c
	ands r0, r1
	orrs r0, r6
	strb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0x12
	strb r0, [r1]
	ldr r0, [sp]
	ldrb r1, [r0]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	mov r3, sl
	ldrb r2, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	mov r1, sb
	ldrb r0, [r1]
	movs r1, #0x10
	orrs r0, r1
	mov r2, sb
	strb r0, [r2]
	mov r0, r8
	adds r0, #0x3c
	ldrb r0, [r0]
	bl __floatsidf
	ldr r2, _080CAE60 @ =0x3FF80000
	ldr r3, _080CAE64 @ =0x00000000
	bl __muldf3
	bl __fixunsdfsi
	adds r1, r7, #0
	adds r1, #0x3c
	strb r0, [r1]
	mov r0, r8
	adds r0, #0x3d
	ldrb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x3d
	strb r1, [r0]
	mov r3, sb
	ldrb r0, [r3]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3]
_080CAD42:
	movs r0, #0
	mov sb, r0
_080CAD46:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _080CAE68 @ =sub_080CAE74
	bl EntityCreateInRange
	adds r7, r0, #0
	cmp r7, #0
	beq _080CAE2E
	mov r6, r8
	adds r6, #0x58
	ldrb r0, [r6]
	adds r5, r7, #0
	adds r5, #0x58
	movs r2, #0x40
	ands r2, r0
	ldrb r0, [r5]
	movs r3, #0x41
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5]
	ldr r2, _080CAE4C @ =0xFFF50000
	str r2, [r7, #0x40]
	ldr r0, _080CAE50 @ =0xFFEF0000
	str r0, [r7, #0x44]
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080CAD88
	rsbs r0, r2, #0
	str r0, [r7, #0x40]
_080CAD88:
	ldr r0, [r7, #0x40]
	mov r2, r8
	ldr r1, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r7, #0x40]
	ldr r0, [r7, #0x44]
	ldr r1, [r2, #0x44]
	adds r0, r0, r1
	str r0, [r7, #0x44]
	ldrb r0, [r2, #0x10]
	strb r0, [r7, #0x12]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080CAE54 @ =sub_0803B9D0
	str r0, [r7, #4]
	mov r0, r8
	bl sub_0803B998
	adds r4, r0, #0
	ldr r0, _080CAE5C @ =0x0820BF54
	bl sub_080681D8
	adds r3, r0, #0
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r0, r7, #0
	ldr r1, _080CAE58 @ =0x0824F9AC
	adds r2, r4, #0
	bl sub_0803B924
	adds r1, r7, #0
	adds r1, #0x65
	movs r0, #0x16
	strb r0, [r1]
	subs r1, #9
	movs r0, #9
	strb r0, [r1]
	ldrb r2, [r6]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1b
	ldrb r0, [r5]
	movs r3, #0x20
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5]
	mov r0, r8
	adds r0, #0x3c
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r1, r7, #0
	adds r1, #0x3c
	strb r0, [r1]
	mov r0, r8
	adds r0, #0x3d
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #8
	ldr r2, _080CAE6C @ =sub_0806E1B8
	movs r3, #0
	bl sub_0804277C
	adds r0, r7, #0
	ldr r1, _080CAE70 @ =0x0C08FAFC
	bl sub_08042884
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	mov r0, sb
	strb r0, [r7, #0xd]
_080CAE2E:
	movs r1, #1
	add sb, r1
	mov r2, sb
	cmp r2, #0
	ble _080CAD46
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080CAE48: .4byte sub_080CB0D0
_080CAE4C: .4byte 0xFFF50000
_080CAE50: .4byte 0xFFEF0000
_080CAE54: .4byte sub_0803B9D0
_080CAE58: .4byte 0x0824F9AC
_080CAE5C: .4byte 0x0820BF54
_080CAE60: .4byte 0x3FF80000
_080CAE64: .4byte 0x00000000
_080CAE68: .4byte sub_080CAE74
_080CAE6C: .4byte sub_0806E1B8
_080CAE70: .4byte 0x0C08FAFC

	thumb_func_start sub_080CAE74
sub_080CAE74: @ 0x080CAE74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r5, _080CAEB0 @ =gEwramData
	ldrb r1, [r4, #0x12]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080CAEB4 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r5]
	adds r7, r1, r0
	ldrh r1, [r7, #0x20]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	bls _080CAE9E
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
_080CAE9E:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080CAF1A
	cmp r0, #1
	bgt _080CAEB8
	cmp r0, #0
	beq _080CAEC2
	b _080CB01C
	.align 2, 0
_080CAEB0: .4byte gEwramData
_080CAEB4: .4byte 0x000004E4
_080CAEB8:
	cmp r0, #2
	beq _080CAF40
	cmp r0, #3
	beq _080CAF74
	b _080CB01C
_080CAEC2:
	ldrb r1, [r4, #0x12]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _080CAF38 @ =0x000004E4
	adds r0, r0, r2
	ldr r1, [r5]
	adds r5, r1, r0
	ldr r2, _080CAF3C @ =0xFFF50000
	str r2, [r4, #0x40]
	adds r3, r4, #0
	adds r3, #0x58
	ldrb r1, [r3]
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080CAEEA
	rsbs r0, r2, #0
	str r0, [r4, #0x40]
_080CAEEA:
	ldr r0, [r4, #0x40]
	ldr r1, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x16
	strb r0, [r1]
	movs r2, #0xc0
	lsls r2, r2, #0xc
	str r2, [r4, #0x48]
	ldrb r1, [r3]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080CAF14
	rsbs r0, r2, #0
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x50]
	rsbs r0, r0, #0
	str r0, [r4, #0x50]
_080CAF14:
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_080CAF1A:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r4, #0
	adds r5, #0x59
	cmp r0, #0xff
	bne _080CB020
	movs r0, #2
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _080CB020
	.align 2, 0
_080CAF38: .4byte 0x000004E4
_080CAF3C: .4byte 0xFFF50000
_080CAF40:
	ldrh r1, [r7, #0x20]
	ldr r0, _080CAF70 @ =0x0000FFFE
	adds r5, r4, #0
	adds r5, #0x59
	cmp r1, r0
	bls _080CB020
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080CB020
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	movs r0, #1
	strb r0, [r4, #0xd]
	ldrb r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r5]
	b _080CB020
	.align 2, 0
_080CAF70: .4byte 0x0000FFFE
_080CAF74:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080CAF90
	adds r1, r4, #0
	adds r1, #0x65
	ldrb r0, [r1]
	cmp r0, #0x16
	bne _080CAF90
	movs r0, #0x17
	strb r0, [r1]
_080CAF90:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x50]
	adds r1, r1, r0
	str r1, [r4, #0x48]
	adds r0, r4, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r2, [r0, r3]
	adds r1, r7, #0
	adds r1, #0x42
	movs r3, #0
	ldrsh r0, [r1, r3]
	subs r1, r2, r0
	cmp r1, #0
	blt _080CAFBA
	cmp r1, #0x5c
	bgt _080CAFC4
	b _080CB01C
_080CAFBA:
	subs r0, r0, r2
	adds r5, r4, #0
	adds r5, #0x59
	cmp r0, #0x5c
	ble _080CB020
_080CAFC4:
	ldr r2, _080CB038 @ =gEwramData
	ldrb r1, [r4, #0x12]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080CB03C @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r5, r1, r0
	ldr r2, _080CB040 @ =0xFFF50000
	str r2, [r4, #0x40]
	adds r3, r4, #0
	adds r3, #0x58
	ldrb r1, [r3]
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080CAFEE
	rsbs r0, r2, #0
	str r0, [r4, #0x40]
_080CAFEE:
	ldr r0, [r4, #0x40]
	ldr r1, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x16
	strb r0, [r1]
	movs r2, #0xc0
	lsls r2, r2, #0xc
	str r2, [r4, #0x48]
	ldrb r1, [r3]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080CB018
	rsbs r0, r2, #0
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x50]
	rsbs r0, r0, #0
	str r0, [r4, #0x50]
_080CB018:
	movs r0, #1
	strb r0, [r4, #0xd]
_080CB01C:
	adds r5, r4, #0
	adds r5, #0x59
_080CB020:
	ldrh r1, [r7, #0x20]
	ldr r0, _080CB044 @ =0x0000FFFF
	cmp r1, r0
	bne _080CB048
	ldrb r0, [r5]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x7f
	ands r1, r0
	strb r1, [r5]
	b _080CB060
	.align 2, 0
_080CB038: .4byte gEwramData
_080CB03C: .4byte 0x000004E4
_080CB040: .4byte 0xFFF50000
_080CB044: .4byte 0x0000FFFF
_080CB048:
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5]
_080CB060:
	ldrb r1, [r7, #0x1a]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080CB078
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080CB088
_080CB078:
	movs r0, #0x66
	bl sub_08013E18
	ldrb r0, [r5]
	movs r1, #8
	orrs r0, r1
	strb r0, [r5]
	b _080CB0C6
_080CB088:
	ldrb r1, [r4, #0x14]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080CB0C0
	ldr r0, _080CB0A0 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _080CB0A4 @ =0x000254C4
	adds r1, r0, r2
	movs r2, #0
	b _080CB0B0
	.align 2, 0
_080CB0A0: .4byte gEwramData
_080CB0A4: .4byte 0x000254C4
_080CB0A8:
	adds r2, #1
	adds r1, #2
	cmp r2, #3
	bgt _080CB0B6
_080CB0B0:
	ldrh r0, [r1]
	cmp r0, #0x66
	bne _080CB0A8
_080CB0B6:
	cmp r2, #4
	bne _080CB0C0
	movs r0, #0x66
	bl sub_08013D60
_080CB0C0:
	ldrb r0, [r4, #0x14]
	adds r0, #1
	strb r0, [r4, #0x14]
_080CB0C6:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CB0D0
sub_080CB0D0: @ 0x080CB0D0
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, _080CB100 @ =gEwramData
	ldrb r1, [r3, #0x12]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080CB104 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r4, r1, r0
	ldrh r1, [r4, #0x20]
	ldr r0, _080CB108 @ =0x0000FFFE
	cmp r1, r0
	bls _080CB10C
	adds r2, r3, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	b _080CB11A
	.align 2, 0
_080CB100: .4byte gEwramData
_080CB104: .4byte 0x000004E4
_080CB108: .4byte 0x0000FFFE
_080CB10C:
	adds r2, r3, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
_080CB11A:
	strb r0, [r2]
	ldrb r1, [r4, #0x1a]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080CB134
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080CB13C
_080CB134:
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080CB13C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CB144
sub_080CB144: @ 0x080CB144
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080CB15E
	cmp r0, #1
	beq _080CB194
	b _080CB1AE
_080CB15E:
	adds r0, r4, #0
	bl sub_080CB1B4
	adds r0, r4, #0
	bl sub_080683BC
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
	movs r0, #0x32
	strb r0, [r4, #0xd]
	movs r0, #0xff
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080CB194:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080CB1AE:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080CB1B4
sub_080CB1B4: @ 0x080CB1B4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	movs r0, #0
	mov r8, r0
	ldr r7, _080CB30C @ =0x08528B17
	adds r1, r7, #5
	mov sb, r1
_080CB1D2:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _080CB310 @ =sub_0806C5AC
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	bne _080CB1E4
	b _080CB2F4
_080CB1E4:
	ldrb r0, [r6, #0x10]
	strb r0, [r5, #0x12]
	mov r0, r8
	strb r0, [r5, #0x11]
	ldrb r0, [r6, #0x18]
	adds r0, #1
	strb r0, [r6, #0x18]
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x5c
	strb r1, [r0]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	bl sub_0803B998
	adds r4, r0, #0
	ldr r0, _080CB314 @ =0x0820BF54
	bl sub_080681D8
	adds r3, r0, #0
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r0, r5, #0
	ldr r1, _080CB318 @ =0x0824F9AC
	adds r2, r4, #0
	bl sub_0803B924
	ldr r0, _080CB31C @ =sub_0803B9D0
	str r0, [r5, #4]
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	ldrb r1, [r5, #0x11]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r0, r7
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r2, r5, #0
	adds r2, #0x46
	adds r1, r7, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldrb r1, [r5, #0x11]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r7, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x65
	strb r0, [r1]
	ldrb r1, [r5, #0x11]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r7, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0xc
	str r0, [r5, #0x48]
	ldrb r1, [r5, #0x11]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r7, #4
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0xc
	rsbs r0, r0, #0
	subs r0, #0x10
	str r0, [r5, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	ldrb r1, [r5, #0x11]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	add r0, sb
	ldrb r0, [r0]
	strb r0, [r5, #0xd]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r5, #0
	adds r3, #0x58
	movs r2, #0x40
	ands r2, r0
	ldrb r0, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	mov ip, r1
	mov r1, ip
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	adds r0, r6, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080CB2EA
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bge _080CB2DC
	rsbs r0, r0, #0
_080CB2DC:
	rsbs r0, r0, #0
	str r0, [r5, #0x48]
	adds r0, r4, #0
	cmp r4, #0
	bge _080CB2E8
	rsbs r0, r4, #0
_080CB2E8:
	rsbs r4, r0, #0
_080CB2EA:
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, r0, r4
	strh r0, [r1]
_080CB2F4:
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #6
	bgt _080CB300
	b _080CB1D2
_080CB300:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080CB30C: .4byte 0x08528B17
_080CB310: .4byte sub_0806C5AC
_080CB314: .4byte 0x0820BF54
_080CB318: .4byte 0x0824F9AC
_080CB31C: .4byte sub_0803B9D0

	thumb_func_start sub_080CB320
sub_080CB320: @ 0x080CB320
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r2, _080CB344 @ =gEwramData
	ldrb r1, [r6, #0x12]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080CB348 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r7, r1, r0
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _080CB34C
	cmp r0, #1
	bne _080CB342
	b _080CB464
_080CB342:
	b _080CB4A0
	.align 2, 0
_080CB344: .4byte gEwramData
_080CB348: .4byte 0x000004E4
_080CB34C:
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x5c
	strb r1, [r0]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r5, _080CB454 @ =0x0824F9AC
	adds r0, r7, #0
	bl sub_0803B998
	adds r4, r0, #0
	ldr r0, _080CB458 @ =0x0820BF54
	bl sub_080681D8
	adds r3, r0, #0
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0803B924
	ldr r0, _080CB45C @ =sub_0803B9D0
	str r0, [r6, #4]
	ldr r0, [r7, #0x40]
	str r0, [r6, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r6, #0x44]
	ldr r2, _080CB460 @ =0x08528B17
	ldrb r1, [r6, #0x11]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r0, r2
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r3, r6, #0
	adds r3, #0x46
	adds r1, r2, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r3]
	adds r0, r0, r1
	adds r0, #0x10
	strh r0, [r3]
	ldrb r1, [r6, #0x11]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r2, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x65
	strb r0, [r1]
	ldrb r1, [r6, #0x11]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r2, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0xc
	str r0, [r6, #0x48]
	ldrb r1, [r6, #0x11]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r2, #4
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0xc
	rsbs r0, r0, #0
	subs r0, #0x10
	str r0, [r6, #0x4c]
	ldrb r1, [r6, #0x11]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #5
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r6, #0xd]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, #0x12
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r7, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080CB440
	ldr r0, [r6, #0x48]
	cmp r0, #0
	bge _080CB432
	rsbs r0, r0, #0
_080CB432:
	rsbs r0, r0, #0
	str r0, [r6, #0x48]
	adds r0, r4, #0
	cmp r4, #0
	bge _080CB43E
	rsbs r0, r4, #0
_080CB43E:
	rsbs r4, r0, #0
_080CB440:
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	b _080CB4A0
	.align 2, 0
_080CB454: .4byte 0x0824F9AC
_080CB458: .4byte 0x0820BF54
_080CB45C: .4byte sub_0803B9D0
_080CB460: .4byte 0x08528B17
_080CB464:
	movs r2, #0
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080CB474
	movs r2, #1
_080CB474:
	adds r0, r6, #0
	adds r0, #0x46
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0
	cmp r0, #0xaa
	ble _080CB484
	movs r1, #1
_080CB484:
	cmp r1, #0
	beq _080CB48A
	movs r2, #2
_080CB48A:
	cmp r2, #0
	beq _080CB4A0
	ldrb r0, [r7, #0x18]
	subs r0, #1
	strb r0, [r7, #0x18]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080CB4A0:
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x48]
	adds r0, r0, r1
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x44]
	ldr r1, [r6, #0x4c]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	movs r0, #0xc0
	lsls r0, r0, #6
	adds r1, r1, r0
	str r1, [r6, #0x4c]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CB4C0
sub_080CB4C0: @ 0x080CB4C0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080CB4D0
	cmp r0, #1
	beq _080CB4E2
	b _080CB4E8
_080CB4D0:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080CB4E2:
	adds r0, r4, #0
	bl sub_0803F17C
_080CB4E8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CB4F0
sub_080CB4F0: @ 0x080CB4F0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080CB512
	movs r0, #0xff
	strb r0, [r4, #0xa]
	movs r0, #0
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	bl sub_080CB144
	movs r0, #0x6b
	bl PlaySong
_080CB512:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start EnemyNeedlesCreate
EnemyNeedlesCreate: @ 0x080CB518
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r2, _080CB53C @ =0x0820BF78
	ldr r0, _080CB540 @ =0x0824FB10
	ldr r1, _080CB544 @ =0x081F4284
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080CB548
	adds r0, r5, #0
	bl EntityDelete
	b _080CB5C6
	.align 2, 0
_080CB53C: .4byte 0x0820BF78
_080CB540: .4byte 0x0824FB10
_080CB544: .4byte 0x081F4284
_080CB548:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r1, r5, #0
	adds r1, #0x5c
	movs r4, #0
	movs r0, #0x11
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0806B04C
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r4, [r5, #0xc]
	strb r4, [r5, #0xb]
	ldr r0, _080CB590 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080CB594
	movs r0, #3
	strb r0, [r5, #0xa]
	b _080CB5C6
	.align 2, 0
_080CB590: .4byte gEwramData
_080CB594:
	ldr r2, _080CB5D0 @ =sub_0806E1B8
	ldr r3, _080CB5D4 @ =sub_080CB930
	adds r0, r5, #0
	movs r1, #8
	bl sub_0804277C
	ldr r4, _080CB5D8 @ =0x1010F8F8
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08042884
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080428F0
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080CB5C6
	bl RandomNumberGenerator
	ldr r1, _080CB5DC @ =0x0000FFFF
	bl __umodsi3
	strh r0, [r5, #0x14]
_080CB5C6:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080CB5D0: .4byte sub_0806E1B8
_080CB5D4: .4byte sub_080CB930
_080CB5D8: .4byte 0x1010F8F8
_080CB5DC: .4byte 0x0000FFFF

	thumb_func_start sub_080CB5E0
sub_080CB5E0: @ 0x080CB5E0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xb]
	cmp r5, #0
	beq _080CB5F0
	cmp r5, #1
	beq _080CB618
	b _080CB6B6
_080CB5F0:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CB606
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080CB606:
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	strb r0, [r4, #0xb]
	strb r5, [r4, #0xc]
_080CB618:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _080CB624
	cmp r0, #1
	beq _080CB656
	b _080CB674
_080CB624:
	adds r5, r4, #0
	adds r5, #0x59
	ldrb r1, [r5]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080CB674
	strb r2, [r4, #0xc]
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	strb r1, [r4, #0xd]
	ldrb r1, [r5]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	adds r2, r4, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	b _080CB672
_080CB656:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080CB674
	movs r0, #0
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
_080CB672:
	strb r0, [r2]
_080CB674:
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080CB6B6
	ldrh r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	cmp r0, #0
	bge _080CB68E
	adds r0, #3
_080CB68E:
	asrs r2, r0, #2
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r1, #0
	ldrh r1, [r4, #0x14]
	adds r0, r0, r1
	strh r0, [r4, #0x14]
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	adds r0, r0, r2
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x50]
	adds r1, r1, r0
	str r1, [r4, #0x48]
	ldr r0, [r4, #0x54]
	adds r2, r2, r0
	str r2, [r4, #0x4c]
_080CB6B6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080CB6BC
sub_080CB6BC: @ 0x080CB6BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	movs r0, #0
	mov sl, r0
	movs r1, #4
	mov sb, r1
_080CB6D0:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _080CB7B8 @ =sub_080CB7C8
	bl EntityCreateInRange
	adds r7, r0, #0
	cmp r7, #0
	beq _080CB798
	ldr r4, _080CB7BC @ =0x08528B44
	add r4, sl
	mov r3, r8
	ldrb r0, [r3, #0x13]
	adds r0, #1
	strb r0, [r3, #0x13]
	ldrb r0, [r3, #0x10]
	strb r0, [r7, #0x11]
	mov r0, r8
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x5c
	strb r1, [r0]
	mov r0, r8
	adds r0, #0x2c
	ldrb r0, [r0]
	adds r5, r7, #0
	adds r5, #0x2c
	strb r0, [r5]
	mov r0, r8
	adds r0, #0x58
	ldrb r0, [r0]
	adds r6, r7, #0
	adds r6, #0x58
	movs r2, #0x40
	ands r2, r0
	ldrb r0, [r6]
	movs r3, #0x41
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r6]
	mov r0, r8
	bl sub_0803B998
	adds r2, r0, #0
	ldrb r3, [r5]
	adds r0, r7, #0
	ldr r1, _080CB7C0 @ =0x0824FB10
	bl sub_0803B924
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080CB7C4 @ =sub_0803B9D0
	str r0, [r7, #4]
	mov r1, r8
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x40]
	ldr r0, [r1, #0x44]
	str r0, [r7, #0x44]
	movs r2, #0
	ldrsb r2, [r4, r2]
	adds r1, r7, #0
	adds r1, #0x46
	movs r0, #1
	ldrsb r0, [r4, r0]
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	ldrb r0, [r4, #2]
	adds r1, #0x1f
	strb r0, [r1]
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r3, r0, #0xc
	str r3, [r7, #0x48]
	movs r0, #4
	ldrsb r0, [r4, r0]
	lsls r0, r0, #0xc
	rsbs r0, r0, #0
	str r0, [r7, #0x4c]
	ldrb r0, [r4, #5]
	strb r0, [r7, #0xd]
	ldrb r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080CB78E
	rsbs r0, r3, #0
	str r0, [r7, #0x48]
	rsbs r2, r2, #0
_080CB78E:
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, r0, r2
	strh r0, [r1]
_080CB798:
	movs r0, #6
	add sl, r0
	movs r1, #1
	rsbs r1, r1, #0
	add sb, r1
	mov r3, sb
	cmp r3, #0
	bge _080CB6D0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080CB7B8: .4byte sub_080CB7C8
_080CB7BC: .4byte 0x08528B44
_080CB7C0: .4byte 0x0824FB10
_080CB7C4: .4byte sub_0803B9D0

	thumb_func_start sub_080CB7C8
sub_080CB7C8: @ 0x080CB7C8
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _080CB82C @ =gEwramData
	ldrb r1, [r4, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080CB830 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r5, r1, r0
	movs r1, #0x80
	rsbs r1, r1, #0
	movs r2, #0x40
	rsbs r2, r2, #0
	movs r3, #0xf8
	lsls r3, r3, #1
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _080CB816
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080CB816
	adds r0, r4, #0
	adds r0, #0x46
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0xaa
	ble _080CB834
_080CB816:
	ldrb r0, [r5, #0x13]
	subs r0, #1
	strb r0, [r5, #0x13]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	b _080CB84C
	.align 2, 0
_080CB82C: .4byte gEwramData
_080CB830: .4byte 0x000004E4
_080CB834:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	movs r0, #0xc0
	lsls r0, r0, #6
	adds r1, r1, r0
	str r1, [r4, #0x4c]
_080CB84C:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start EnemyNeedlesUpdate
EnemyNeedlesUpdate: @ 0x080CB854
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _080CB866
	adds r0, r4, #0
	bl sub_080CB8FC
	b _080CB88E
_080CB866:
	cmp r0, #2
	bne _080CB872
	adds r0, r4, #0
	bl sub_080CB894
	b _080CB88E
_080CB872:
	adds r0, r4, #0
	bl sub_0806CC20
	cmp r0, #0
	bne _080CB88E
	adds r0, r4, #0
	bl sub_080CB5E0
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806E314
_080CB88E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080CB894
sub_080CB894: @ 0x080CB894
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080CB8A4
	cmp r0, #1
	beq _080CB8E4
	b _080CB8F6
_080CB8A4:
	movs r0, #0x70
	bl PlaySong
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_080683BC
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
	adds r0, r4, #0
	bl sub_080CB6BC
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080CB8E4:
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	bne _080CB8F6
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080CB8F6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080CB8FC
sub_080CB8FC: @ 0x080CB8FC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080CB922
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CB91C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080CB91C:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080CB922:
	adds r0, r4, #0
	bl sub_0803F17C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CB930
sub_080CB930: @ 0x080CB930
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080CB946
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080CB946:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start EnemyBuerCreate
EnemyBuerCreate: @ 0x080CB94C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r2, _080CB970 @ =0x0820BF9C
	ldr r0, _080CB974 @ =0x0824FDB0
	ldr r1, _080CB978 @ =0x081F428C
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080CB97C
	adds r0, r5, #0
	bl EntityDelete
	b _080CBA1A
	.align 2, 0
_080CB970: .4byte 0x0820BF9C
_080CB974: .4byte 0x0824FDB0
_080CB978: .4byte 0x081F428C
_080CB97C:
	adds r1, r5, #0
	adds r1, #0x5c
	movs r4, #0
	movs r0, #0x14
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0806B04C
	adds r0, r5, #0
	adds r0, #0x65
	strb r4, [r0]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r5, #0x18]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r5, #0x54]
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _080CB9B6
	movs r0, #1
	b _080CB9B8
_080CB9B6:
	movs r0, #2
_080CB9B8:
	strb r0, [r5, #0xa]
	strb r4, [r5, #0xc]
	strb r4, [r5, #0xb]
	adds r0, r5, #0
	bl sub_080CBA30
	adds r0, r5, #0
	bl sub_080CC3F8
	ldr r0, _080CB9E8 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080CB9EC
	movs r1, #0
	movs r0, #4
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
	b _080CBA1A
	.align 2, 0
_080CB9E8: .4byte gEwramData
_080CB9EC:
	ldr r2, _080CBA24 @ =sub_080CC4E4
	ldr r3, _080CBA28 @ =sub_080CC514
	adds r0, r5, #0
	movs r1, #8
	bl sub_0804277C
	ldr r4, _080CBA2C @ =0x2828ECEC
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08042884
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080428F0
	adds r0, r5, #0
	bl sub_0806AF98
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r0, [r1]
	subs r0, #0x18
	strh r0, [r1]
_080CBA1A:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080CBA24: .4byte sub_080CC4E4
_080CBA28: .4byte sub_080CC514
_080CBA2C: .4byte 0x2828ECEC

	thumb_func_start sub_080CBA30
sub_080CBA30: @ 0x080CBA30
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r0, _080CBACC @ =sub_080CC3C8
	bl sub_0806DFF8
	adds r6, r0, #0
	cmp r6, #0
	beq _080CBAE0
	ldrb r0, [r7, #0x10]
	strb r0, [r6, #0x11]
	ldrb r0, [r6, #0x10]
	strb r0, [r7, #0x11]
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r6, #0
	adds r1, #0x5c
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	movs r1, #0x2c
	adds r1, r1, r6
	mov r8, r1
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r5, r6, #0
	adds r5, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r5]
	movs r0, #0x41
	rsbs r0, r0, #0
	mov sb, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	ldr r4, _080CBAD0 @ =0x0824FDB0
	adds r0, r7, #0
	bl sub_0803B998
	adds r2, r0, #0
	mov r1, r8
	ldrb r3, [r1]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0803B924
	adds r1, r6, #0
	adds r1, #0x65
	movs r0, #1
	strb r0, [r1]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080CBAD4 @ =sub_0803B9D0
	str r0, [r6, #4]
	ldr r0, [r7, #0x40]
	str r0, [r6, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r6, #0x44]
	ldr r0, [r7, #0x18]
	cmp r0, #0
	blt _080CBAD8
	ldrb r0, [r5]
	movs r1, #0x40
	orrs r0, r1
	b _080CBADE
	.align 2, 0
_080CBACC: .4byte sub_080CC3C8
_080CBAD0: .4byte 0x0824FDB0
_080CBAD4: .4byte sub_0803B9D0
_080CBAD8:
	ldrb r1, [r5]
	mov r0, sb
	ands r0, r1
_080CBADE:
	strb r0, [r5]
_080CBAE0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080CBAEC
sub_080CBAEC: @ 0x080CBAEC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, _080CBB20 @ =gEwramData
	ldrb r1, [r4, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080CBB24 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r6, r1, r0
	adds r0, r4, #0
	bl sub_080CC55C
	cmp r0, #0
	beq _080CBB0E
	b _080CBC5C
_080CBB0E:
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _080CBBAA
	cmp r0, #1
	bgt _080CBB28
	cmp r0, #0
	beq _080CBB2E
	b _080CBC5C
	.align 2, 0
_080CBB20: .4byte gEwramData
_080CBB24: .4byte 0x000004E4
_080CBB28:
	cmp r0, #2
	beq _080CBBB2
	b _080CBC5C
_080CBB2E:
	adds r0, r4, #0
	movs r1, #0
	bl sub_080CC20C
	adds r0, r4, #0
	movs r1, #0xc0
	movs r2, #0x30
	bl sub_0806E29C
	cmp r0, #0
	beq _080CBB86
	adds r5, r6, #0
	adds r5, #0x58
	ldrb r1, [r5]
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080CBB70
	adds r0, r4, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080CBB7E
	ldrb r1, [r5]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080CBB86
_080CBB70:
	adds r0, r4, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _080CBB86
_080CBB7E:
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
_080CBB86:
	ldrb r0, [r4, #0xd]
	adds r0, #1
	movs r5, #0
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080CBC5C
	strb r5, [r4, #0xd]
	bl RandomNumberGenerator
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _080CBC5A
	movs r0, #2
	strb r0, [r4, #0xb]
	b _080CBC5A
_080CBBAA:
	adds r0, r4, #0
	bl sub_080CBC64
	b _080CBC5C
_080CBBB2:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _080CBBDA
	cmp r0, #1
	bgt _080CBBC2
	cmp r0, #0
	beq _080CBBC8
	b _080CBC5C
_080CBBC2:
	cmp r0, #2
	beq _080CBBFE
	b _080CBC5C
_080CBBC8:
	bl RandomNumberGenerator
	movs r1, #0x1f
	ands r1, r0
	adds r1, #0x20
	strb r1, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_080CBBDA:
	adds r3, r6, #0
	adds r3, #0x58
	ldrb r2, [r3]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_080CBBFE:
	adds r0, r4, #0
	movs r1, #0x60
	movs r2, #0x30
	bl sub_0806E29C
	cmp r0, #0
	beq _080CBC14
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
_080CBC14:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	movs r5, #0
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080CBC5C
	bl RandomNumberGenerator
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _080CBC5A
	strb r5, [r4, #0xb]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xd]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080CBC4C
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bge _080CBC56
	b _080CBC54
_080CBC4C:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bge _080CBC54
	rsbs r0, r0, #0
_080CBC54:
	rsbs r0, r0, #0
_080CBC56:
	str r0, [r4, #0x18]
	b _080CBC5C
_080CBC5A:
	strb r5, [r4, #0xc]
_080CBC5C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CBC64
sub_080CBC64: @ 0x080CBC64
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r2, _080CBC8C @ =gEwramData
	ldrb r1, [r4, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080CBC90 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r6, r1, r0
	ldrb r5, [r4, #0xc]
	cmp r5, #1
	beq _080CBCBA
	cmp r5, #1
	bgt _080CBC94
	cmp r5, #0
	beq _080CBC9C
	b _080CBE96
	.align 2, 0
_080CBC8C: .4byte gEwramData
_080CBC90: .4byte 0x000004E4
_080CBC94:
	cmp r5, #2
	bne _080CBC9A
	b _080CBE18
_080CBC9A:
	b _080CBE96
_080CBC9C:
	adds r0, r4, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080CBCAC
	strb r5, [r4, #0x13]
	b _080CBCB0
_080CBCAC:
	movs r0, #1
	strb r0, [r4, #0x13]
_080CBCB0:
	movs r0, #0x50
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_080CBCBA:
	ldr r5, [r4, #0x40]
	ldr r1, [r4, #0x18]
	ldr r2, _080CBD0C @ =0x08528B64
	adds r0, r4, #0
	movs r3, #6
	bl sub_0806CAF8
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080CC5B4
	ldrb r2, [r4, #0x13]
	cmp r2, #0
	beq _080CBD1C
	ldr r0, [r4, #0x18]
	ldr r1, _080CBD10 @ =0x00000CCC
	adds r0, r0, r1
	str r0, [r4, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xa
	cmp r0, r1
	ble _080CBCEC
	str r1, [r4, #0x18]
	movs r0, #0
	strb r0, [r4, #0xd]
_080CBCEC:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ble _080CBCFE
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0]
_080CBCFE:
	ldrb r0, [r4, #0xd]
	cmp r0, #0x32
	bls _080CBD14
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #3
	b _080CBD60
	.align 2, 0
_080CBD0C: .4byte 0x08528B64
_080CBD10: .4byte 0x00000CCC
_080CBD14:
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #4
	b _080CBD60
_080CBD1C:
	ldr r0, [r4, #0x18]
	ldr r1, _080CBD50 @ =0xFFFFF334
	adds r0, r0, r1
	str r0, [r4, #0x18]
	ldr r1, _080CBD54 @ =0xFFFE0000
	cmp r0, r1
	bge _080CBD2E
	str r1, [r4, #0x18]
	strb r2, [r4, #0xd]
_080CBD2E:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bge _080CBD42
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_080CBD42:
	ldrb r0, [r4, #0xd]
	cmp r0, #0x32
	bls _080CBD5C
	ldr r0, [r4, #0x14]
	ldr r1, _080CBD58 @ =0xFFFFFC00
	b _080CBD60
	.align 2, 0
_080CBD50: .4byte 0xFFFFF334
_080CBD54: .4byte 0xFFFE0000
_080CBD58: .4byte 0xFFFFFC00
_080CBD5C:
	ldr r0, [r4, #0x14]
	ldr r1, _080CBE14 @ =0xFFFFF800
_080CBD60:
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x14]
	movs r2, #0x80
	lsls r2, r2, #9
	movs r1, #0
	str r1, [sp]
	adds r1, r4, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	ldrb r5, [r4, #0xd]
	adds r0, r5, #0
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080CBDEE
	cmp r5, #0x32
	bls _080CBDEE
	adds r0, r5, #0
	movs r1, #9
	bl __umodsi3
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080CBDAA
	movs r0, #0x84
	bl PlaySong
_080CBDAA:
	adds r6, r4, #0
	adds r6, #0x42
	movs r0, #0
	ldrsh r2, [r6, r0]
	adds r5, r4, #0
	adds r5, #0x46
	ldrh r0, [r5]
	adds r0, #0x18
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	movs r3, #0
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	bne _080CBDC8
	movs r3, #1
_080CBDC8:
	adds r0, r2, #0
	movs r2, #0
	bl sub_080CC5D8
	movs r1, #0
	ldrsh r2, [r6, r1]
	ldrh r0, [r5]
	adds r0, #0x18
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	movs r3, #0
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	bne _080CBDE6
	movs r3, #1
_080CBDE6:
	adds r0, r2, #0
	movs r2, #1
	bl sub_080CC5D8
_080CBDEE:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080CBE96
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	beq _080CBE04
	movs r0, #1
_080CBE04:
	strb r0, [r4, #0x13]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x20
	strb r0, [r4, #0xd]
	b _080CBE96
	.align 2, 0
_080CBE14: .4byte 0xFFFFF800
_080CBE18:
	ldr r5, [r4, #0x40]
	ldr r1, [r4, #0x18]
	ldr r2, _080CBE40 @ =0x08528B64
	adds r0, r4, #0
	movs r3, #6
	bl sub_0806CAF8
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080CC5B4
	movs r0, #0x40
	ands r0, r6
	cmp r0, #0
	beq _080CBE48
	ldr r0, [r4, #0x18]
	ldr r1, _080CBE44 @ =0xFFFFFCCD
	b _080CBE54
	.align 2, 0
_080CBE40: .4byte 0x08528B64
_080CBE44: .4byte 0xFFFFFCCD
_080CBE48:
	movs r0, #0x20
	ands r0, r6
	cmp r0, #0
	beq _080CBE5A
	ldr r0, [r4, #0x18]
	ldr r1, _080CBEA0 @ =0x00000333
_080CBE54:
	bl sub_080CC54C
	str r0, [r4, #0x18]
_080CBE5A:
	ldr r1, [r4, #0x18]
	cmp r1, #0
	bge _080CBE62
	adds r1, #0x3f
_080CBE62:
	asrs r1, r1, #6
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r2, #0x80
	lsls r2, r2, #9
	movs r5, #0
	str r5, [sp]
	adds r1, r4, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080CBE96
	strb r5, [r4, #0xc]
_080CBE96:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080CBEA0: .4byte 0x00000333

	thumb_func_start sub_080CBEA4
sub_080CBEA4: @ 0x080CBEA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	adds r5, r0, #0
	ldr r2, _080CBEDC @ =gEwramData
	ldrb r1, [r5, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080CBEE0 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r6, r1, r0
	ldr r2, [r5, #0x40]
	mov r8, r2
	ldr r3, [r5, #0x44]
	mov sb, r3
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	beq _080CBF5C
	cmp r0, #1
	bgt _080CBEE4
	cmp r0, #0
	beq _080CBEF2
	b _080CC162
	.align 2, 0
_080CBEDC: .4byte gEwramData
_080CBEE0: .4byte 0x000004E4
_080CBEE4:
	cmp r0, #2
	bne _080CBEEA
	b _080CC098
_080CBEEA:
	cmp r0, #3
	bne _080CBEF0
	b _080CC0F2
_080CBEF0:
	b _080CC162
_080CBEF2:
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x6e
	bl PlaySong
	movs r0, #1
	strb r0, [r6, #0xf]
	adds r0, r6, #0
	adds r0, #0x2c
	adds r7, r6, #0
	adds r7, #0x5a
	movs r4, #0xf
	ldrb r1, [r0]
	ands r1, r4
	lsls r1, r1, #3
	ldrb r3, [r7]
	movs r2, #0x79
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r7]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	movs r0, #0x60
	strb r0, [r5, #0xd]
	adds r0, r5, #0
	adds r0, #0x2c
	adds r3, r5, #0
	adds r3, #0x5a
	ldrb r0, [r0]
	ands r0, r4
	lsls r0, r0, #3
	ldrb r1, [r3]
	ands r2, r1
	orrs r2, r0
	strb r2, [r3]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	ldr r0, [r5, #0x18]
	cmp r0, #0
	blt _080CBF58
	movs r0, #0x80
	lsls r0, r0, #0xa
	b _080CBF5A
_080CBF58:
	ldr r0, _080CBFB0 @ =0xFFFE0000
_080CBF5A:
	str r0, [r5, #0x18]
_080CBF5C:
	ldrb r0, [r5, #0xd]
	movs r1, #7
	bl __umodsi3
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080CBF82
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x44]
	movs r3, #0x80
	lsls r3, r3, #0xd
	adds r2, r6, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	adds r2, r3, #0
	bl sub_0806D5C0
_080CBF82:
	ldrb r0, [r5, #0xd]
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080CBFB4
	movs r0, #1
	strb r0, [r6, #0x14]
	strb r0, [r6, #0x15]
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x15
	ldrsb r0, [r6, r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	b _080CBFE4
	.align 2, 0
_080CBFB0: .4byte 0xFFFE0000
_080CBFB4:
	adds r2, r6, #0
	adds r2, #0x42
	movs r1, #0x14
	ldrsb r1, [r6, r1]
	ldrh r0, [r2]
	subs r0, r0, r1
	movs r3, #0
	strh r0, [r2]
	adds r2, #4
	movs r1, #0x15
	ldrsb r1, [r6, r1]
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r2]
	movs r0, #0x14
	ldrsb r0, [r6, r0]
	cmp r0, #0
	beq _080CBFDA
	strb r3, [r6, #0x14]
_080CBFDA:
	movs r0, #0x15
	ldrsb r0, [r6, r0]
	cmp r0, #0
	beq _080CBFE4
	strb r3, [r6, #0x15]
_080CBFE4:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	blt _080CC004
	ldr r3, _080CBFFC @ =0xFFFFFC80
	adds r1, r0, r3
	str r1, [r5, #0x18]
	ldr r0, _080CC000 @ =0x00003FFF
	cmp r1, r0
	bgt _080CC014
	adds r0, #1
	str r0, [r5, #0x18]
	b _080CC014
	.align 2, 0
_080CBFFC: .4byte 0xFFFFFC80
_080CC000: .4byte 0x00003FFF
_080CC004:
	movs r1, #0xe0
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5, #0x18]
	ldr r1, _080CC090 @ =0xFFFFC000
	cmp r0, r1
	ble _080CC014
	str r1, [r5, #0x18]
_080CC014:
	ldr r1, [r5, #0x18]
	cmp r1, #0
	bge _080CC01C
	adds r1, #0x3f
_080CC01C:
	asrs r1, r1, #6
	ldr r0, [r5, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r2, #0x80
	lsls r2, r2, #9
	movs r1, #0
	str r1, [sp]
	adds r1, r5, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	ldr r2, _080CC094 @ =0x08528B64
	adds r0, r5, #0
	movs r1, #0
	movs r3, #2
	bl sub_0806CAF8
	ldr r1, [r5, #0x40]
	mov r2, r8
	subs r1, r1, r2
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	str r0, [r6, #0x40]
	ldr r1, [r5, #0x44]
	mov r3, sb
	subs r1, r1, r3
	ldr r0, [r6, #0x44]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080CC162
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x80
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #1
	strb r0, [r5, #0xf]
	b _080CC162
	.align 2, 0
_080CC090: .4byte 0xFFFFC000
_080CC094: .4byte 0x08528B64
_080CC098:
	ldrb r0, [r5, #0xd]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CC0D4
	movs r3, #0x80
	lsls r3, r3, #0xe
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	str r0, [sp]
	mov r0, r8
	mov r1, sb
	adds r2, r3, #0
	bl sub_0806D5C0
	ldrb r4, [r5, #0xd]
	adds r0, r4, #0
	movs r1, #0x14
	bl __umodsi3
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080CC0D4
	cmp r4, #0x1c
	bls _080CC0D4
	movs r0, #0x6e
	bl PlaySong
_080CC0D4:
	adds r0, r5, #0
	movs r1, #1
	bl sub_080CC20C
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080CC162
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	b _080CC162
_080CC0F2:
	ldr r1, _080CC174 @ =0x081194DC
	add r0, sp, #8
	movs r2, #0x20
	bl memcpy
	movs r0, #0x58
	adds r0, r0, r5
	mov sl, r0
	movs r1, #0x5c
	adds r1, r1, r5
	mov r8, r1
	mov r0, sp
	adds r0, #0xa
	movs r2, #0x59
	adds r2, r2, r5
	mov sb, r2
	adds r7, r0, #0
	add r4, sp, #8
	movs r6, #7
_080CC118:
	movs r3, #0
	ldrsh r1, [r4, r3]
	lsls r1, r1, #0x10
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	movs r1, #0
	ldrsh r2, [r7, r1]
	lsls r2, r2, #0x10
	ldr r1, [r5, #0x44]
	adds r1, r1, r2
	movs r2, #0x80
	lsls r2, r2, #0xb
	adds r1, r1, r2
	mov r3, r8
	ldrb r2, [r3]
	subs r2, #1
	bl sub_0806D578
	adds r7, #4
	adds r4, #4
	subs r6, #1
	cmp r6, #0
	bge _080CC118
	movs r0, #0x6e
	bl PlaySong
	mov r1, sl
	ldrb r0, [r1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	mov r2, sb
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080CC162:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080CC174: .4byte 0x081194DC

	thumb_func_start sub_080CC178
sub_080CC178: @ 0x080CC178
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080CC188
	cmp r0, #1
	beq _080CC1DC
	b _080CC1E6
_080CC188:
	ldr r0, _080CC19C @ =0x081F428C
	bl sub_0803AFB8
	adds r2, r0, #0
	cmp r2, #0
	bge _080CC1A0
	adds r0, r4, #0
	bl EntityDelete
	b _080CC1FC
	.align 2, 0
_080CC19C: .4byte 0x081F428C
_080CC1A0:
	adds r1, r4, #0
	adds r1, #0x2c
	movs r0, #6
	strb r0, [r1]
	ldr r1, _080CC204 @ =0x0824FDB0
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803B924
	ldr r0, _080CC208 @ =sub_0803B9D0
	str r0, [r4, #4]
	ldrb r1, [r4, #0x12]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x11
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
_080CC1DC:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D3D8
_080CC1E6:
	adds r0, r4, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _080CC1FC
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080CC1FC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CC204: .4byte 0x0824FDB0
_080CC208: .4byte sub_0803B9D0

	thumb_func_start sub_080CC20C
sub_080CC20C: @ 0x080CC20C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	adds r7, r1, #0
	ldr r2, _080CC26C @ =gEwramData
	ldrb r1, [r4, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080CC270 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r1, r1, r0
	mov r8, r1
	ldr r6, [r4, #0x40]
	movs r3, #2
	cmp r7, #0
	bne _080CC236
	movs r3, #6
_080CC236:
	ldr r1, [r4, #0x18]
	ldr r2, _080CC274 @ =0x08528B64
	adds r0, r4, #0
	bl sub_0806CAF8
	adds r5, r0, #0
	movs r1, #0x18
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bge _080CC24C
	subs r1, #0x30
_080CC24C:
	adds r0, r4, #0
	movs r2, #0
	bl sub_0806DF40
	cmp r0, #0
	beq _080CC25A
	str r6, [r4, #0x40]
_080CC25A:
	movs r0, #0x40
	ands r0, r5
	cmp r0, #0
	beq _080CC27C
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bgt _080CC294
	ldr r1, _080CC278 @ =0x00000333
	b _080CC296
	.align 2, 0
_080CC26C: .4byte gEwramData
_080CC270: .4byte 0x000004E4
_080CC274: .4byte 0x08528B64
_080CC278: .4byte 0x00000333
_080CC27C:
	movs r0, #0x20
	ands r0, r5
	cmp r0, #0
	beq _080CC2A0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ble _080CC294
	ldr r1, _080CC290 @ =0x00000333
	b _080CC296
	.align 2, 0
_080CC290: .4byte 0x00000333
_080CC294:
	ldr r1, _080CC29C @ =0xFFFFFCCD
_080CC296:
	adds r0, r0, r1
	str r0, [r4, #0x18]
	b _080CC2C8
	.align 2, 0
_080CC29C: .4byte 0xFFFFFCCD
_080CC2A0:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	blt _080CC2BC
	adds r1, r0, #0
	subs r1, #0x40
	str r1, [r4, #0x18]
	ldr r0, _080CC2B8 @ =0x00003FFF
	cmp r1, r0
	bgt _080CC2C8
	adds r0, #1
	str r0, [r4, #0x18]
	b _080CC2C8
	.align 2, 0
_080CC2B8: .4byte 0x00003FFF
_080CC2BC:
	adds r0, #0x40
	str r0, [r4, #0x18]
	ldr r1, _080CC32C @ =0xFFFFC000
	cmp r0, r1
	ble _080CC2C8
	str r1, [r4, #0x18]
_080CC2C8:
	ldr r2, [r4, #0x18]
	adds r0, r2, #0
	cmp r2, #0
	bge _080CC2D2
	adds r0, #0x3f
_080CC2D2:
	asrs r0, r0, #6
	ldr r1, [r4, #0x14]
	adds r1, r1, r0
	str r1, [r4, #0x14]
	movs r0, #3
	ands r0, r5
	cmp r0, #0
	bne _080CC2EE
	cmp r7, #0
	bne _080CC2F8
	movs r0, #8
	ands r0, r5
	cmp r0, #0
	bne _080CC2F8
_080CC2EE:
	rsbs r0, r2, #0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r4, #0x18]
_080CC2F8:
	ldr r0, [r4, #0x14]
	movs r2, #0x80
	lsls r2, r2, #9
	movs r1, #0
	str r1, [sp]
	adds r1, r4, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	ldr r0, [r4, #0x18]
	cmp r0, #0
	blt _080CC330
	mov r0, r8
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0]
	b _080CC33E
	.align 2, 0
_080CC32C: .4byte 0xFFFFC000
_080CC330:
	mov r2, r8
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_080CC33E:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyBuerUpdate
EnemyBuerUpdate: @ 0x080CC34C
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bne _080CC360
	adds r0, r4, #0
	bl sub_080CC48C
	b _080CC3C0
_080CC360:
	cmp r0, #3
	bne _080CC36C
	adds r0, r4, #0
	bl sub_080CBEA4
	b _080CC3C0
_080CC36C:
	adds r0, r4, #0
	bl sub_08021924
	adds r0, r4, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _080CC386
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	b _080CC3C0
_080CC386:
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080CC3A4
	cmp r0, #2
	bgt _080CC396
	cmp r0, #1
	beq _080CC39C
	b _080CC3B2
_080CC396:
	cmp r0, #3
	beq _080CC3AC
	b _080CC3B2
_080CC39C:
	adds r0, r4, #0
	bl sub_080CC458
	b _080CC3B2
_080CC3A4:
	adds r0, r4, #0
	bl sub_080CBAEC
	b _080CC3B2
_080CC3AC:
	adds r0, r4, #0
	bl sub_080CBEA4
_080CC3B2:
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _080CC3C0
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
_080CC3C0:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080CC3C8
sub_080CC3C8: @ 0x080CC3C8
	push {lr}
	adds r3, r0, #0
	ldr r2, _080CC3F0 @ =gEwramData
	ldrb r1, [r3, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080CC3F4 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r1, r1, r0
	ldrb r0, [r3, #0xa]
	cmp r0, #0
	bne _080CC3EC
	ldr r0, [r1, #0x40]
	str r0, [r3, #0x40]
	ldr r0, [r1, #0x44]
	str r0, [r3, #0x44]
_080CC3EC:
	pop {r0}
	bx r0
	.align 2, 0
_080CC3F0: .4byte gEwramData
_080CC3F4: .4byte 0x000004E4

	thumb_func_start sub_080CC3F8
sub_080CC3F8: @ 0x080CC3F8
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _080CC414
	adds r0, r4, #0
	bl EntityDelete
	b _080CC44E
_080CC414:
	adds r3, r4, #0
	adds r3, #0x58
	movs r0, #0x1f
	ands r2, r0
	ldrb r1, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	movs r2, #0x80
	lsls r2, r2, #9
	movs r0, #0
	str r0, [sp]
	ldrb r0, [r3]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	adds r0, r2, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
_080CC44E:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CC458
sub_080CC458: @ 0x080CC458
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080CC55C
	adds r5, r0, #0
	cmp r5, #0
	bne _080CC484
	adds r0, r4, #0
	movs r1, #1
	bl sub_080CC20C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x5c
	bl sub_0806DF40
	cmp r0, #0
	beq _080CC484
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
_080CC484:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CC48C
sub_080CC48C: @ 0x080CC48C
	push {lr}
	sub sp, #8
	adds r3, r0, #0
	ldrb r0, [r3, #0xb]
	cmp r0, #0
	beq _080CC49E
	cmp r0, #1
	beq _080CC4B6
	b _080CC4DC
_080CC49E:
	adds r2, r3, #0
	adds r2, #0x46
	ldrh r0, [r2]
	subs r0, #0x20
	movs r1, #0
	strh r0, [r2]
	adds r0, r3, #0
	adds r0, #0x65
	strb r1, [r0]
	ldrb r0, [r3, #0xb]
	adds r0, #1
	strb r0, [r3, #0xb]
_080CC4B6:
	ldr r0, [r3, #0x14]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r3, #0x14]
	movs r2, #0x80
	lsls r2, r2, #9
	movs r1, #0
	str r1, [sp]
	adds r1, r3, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
_080CC4DC:
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CC4E4
sub_080CC4E4: @ 0x080CC4E4
	push {lr}
	sub sp, #0x10
	mov r1, sp
	movs r2, #0
	movs r3, #1
	strh r3, [r1, #2]
	strh r2, [r1, #4]
	mov r2, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	strh r1, [r2]
	mov r1, sp
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

	thumb_func_start sub_080CC514
sub_080CC514: @ 0x080CC514
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080CC530
	adds r0, r4, #0
	bl sub_080683BC
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080CC530:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080CC544
	ldrh r0, [r4, #0xa]
	cmp r0, #2
	bne _080CC544
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
_080CC544:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CC54C
sub_080CC54C: @ 0x080CC54C
	push {lr}
	cmp r0, #0
	ble _080CC556
	adds r0, r0, r1
	b _080CC558
_080CC556:
	subs r0, r0, r1
_080CC558:
	pop {r1}
	bx r1

	thumb_func_start sub_080CC55C
sub_080CC55C: @ 0x080CC55C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, _080CC5AC @ =gEwramData
	ldrb r1, [r4, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080CC5B0 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r6, r1, r0
	movs r5, #0
	adds r0, r4, #0
	bl sub_0806B0A8
	cmp r0, #0
	beq _080CC5A2
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r4, #0
	bl EntityDelete
	adds r0, r6, #0
	bl EntityDelete
	movs r0, #3
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	movs r5, #1
_080CC5A2:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080CC5AC: .4byte gEwramData
_080CC5B0: .4byte 0x000004E4

	thumb_func_start sub_080CC5B4
sub_080CC5B4: @ 0x080CC5B4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0x18
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bge _080CC5C4
	rsbs r1, r1, #0
_080CC5C4:
	adds r0, r4, #0
	movs r2, #0
	bl sub_0806DF40
	cmp r0, #0
	beq _080CC5D2
	str r5, [r4, #0x40]
_080CC5D2:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080CC5D8
sub_080CC5D8: @ 0x080CC5D8
	push {r4, r5, r6, r7, lr}
	adds r4, r3, #0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	ldr r2, _080CC620 @ =sub_080CC178
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r3, r0, #0
	cmp r3, #0
	beq _080CC618
	strb r5, [r3, #0x12]
	adds r0, #0x42
	strh r6, [r0]
	adds r0, #4
	strh r7, [r0]
	movs r0, #1
	eors r4, r0
	adds r3, #0x58
	ands r4, r0
	lsls r2, r4, #6
	ldrb r1, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
_080CC618:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080CC620: .4byte sub_080CC178

	thumb_func_start EnemyBaelCreate
EnemyBaelCreate: @ 0x080CC624
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r2, _080CC67C @ =0x0820BF9C
	ldr r0, _080CC680 @ =0x0824FDB0
	ldr r1, _080CC684 @ =0x081F428C
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #1
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080CC6A4
	adds r1, r5, #0
	adds r1, #0x5c
	movs r4, #0
	movs r0, #0x14
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0806B04C
	adds r0, r5, #0
	adds r0, #0x65
	strb r4, [r0]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r5, #0x18]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r5, #0x54]
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	adds r6, r2, #0
	cmp r0, #0
	bne _080CC688
	movs r0, #1
	b _080CC68A
	.align 2, 0
_080CC67C: .4byte 0x0820BF9C
_080CC680: .4byte 0x0824FDB0
_080CC684: .4byte 0x081F428C
_080CC688:
	movs r0, #2
_080CC68A:
	strb r0, [r5, #0xa]
	strb r4, [r5, #0xc]
	strb r4, [r5, #0xb]
	adds r0, r5, #0
	bl sub_080CC744
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _080CC6AC
_080CC6A4:
	adds r0, r5, #0
	bl EntityDelete
	b _080CC72E
_080CC6AC:
	adds r3, r5, #0
	adds r3, #0x58
	movs r0, #0x1f
	ands r2, r0
	ldrb r1, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	ldrb r0, [r6]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r6]
	movs r2, #0x80
	lsls r2, r2, #9
	movs r4, #0
	str r4, [sp]
	ldrb r0, [r3]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	adds r0, r2, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	ldr r0, _080CC6FC @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080CC700
	movs r0, #4
	strb r0, [r5, #0xa]
	strb r4, [r5, #0xc]
	strb r4, [r5, #0xb]
	b _080CC72E
	.align 2, 0
_080CC6FC: .4byte gEwramData
_080CC700:
	ldr r2, _080CC738 @ =sub_080CD404
	ldr r3, _080CC73C @ =sub_080CD434
	adds r0, r5, #0
	movs r1, #8
	bl sub_0804277C
	ldr r4, _080CC740 @ =0x2828ECEC
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08042884
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080428F0
	adds r0, r5, #0
	bl sub_0806AF98
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r0, [r1]
	subs r0, #0x18
	strh r0, [r1]
_080CC72E:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080CC738: .4byte sub_080CD404
_080CC73C: .4byte sub_080CD434
_080CC740: .4byte 0x2828ECEC

	thumb_func_start sub_080CC744
sub_080CC744: @ 0x080CC744
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r0, _080CC7E0 @ =sub_080CD348
	bl sub_0806DFF8
	adds r6, r0, #0
	cmp r6, #0
	beq _080CC7F4
	ldrb r0, [r7, #0x10]
	strb r0, [r6, #0x11]
	ldrb r0, [r6, #0x10]
	strb r0, [r7, #0x11]
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r6, #0
	adds r1, #0x5c
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	movs r1, #0x2c
	adds r1, r1, r6
	mov r8, r1
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r5, r6, #0
	adds r5, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r5]
	movs r0, #0x41
	rsbs r0, r0, #0
	mov sb, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	ldr r4, _080CC7E4 @ =0x0824FDB0
	adds r0, r7, #0
	bl sub_0803B998
	adds r2, r0, #0
	mov r1, r8
	ldrb r3, [r1]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0803B924
	adds r1, r6, #0
	adds r1, #0x65
	movs r0, #1
	strb r0, [r1]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080CC7E8 @ =sub_0803B9D0
	str r0, [r6, #4]
	ldr r0, [r7, #0x40]
	str r0, [r6, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r6, #0x44]
	ldr r0, [r7, #0x18]
	cmp r0, #0
	blt _080CC7EC
	ldrb r0, [r5]
	movs r1, #0x40
	orrs r0, r1
	b _080CC7F2
	.align 2, 0
_080CC7E0: .4byte sub_080CD348
_080CC7E4: .4byte 0x0824FDB0
_080CC7E8: .4byte sub_0803B9D0
_080CC7EC:
	ldrb r1, [r5]
	mov r0, sb
	ands r0, r1
_080CC7F2:
	strb r0, [r5]
_080CC7F4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080CC800
sub_080CC800: @ 0x080CC800
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r2, _080CC840 @ =gEwramData
	ldrb r1, [r6, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080CC844 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r7, r1, r0
	adds r0, r6, #0
	bl sub_080CD47C
	cmp r0, #0
	beq _080CC82C
	b _080CCB56
_080CC82C:
	ldrb r0, [r6, #0xb]
	cmp r0, #1
	bne _080CC834
	b _080CCAA4
_080CC834:
	cmp r0, #1
	bgt _080CC848
	cmp r0, #0
	beq _080CC856
	b _080CCB56
	.align 2, 0
_080CC840: .4byte gEwramData
_080CC844: .4byte 0x000004E4
_080CC848:
	cmp r0, #2
	bne _080CC84E
	b _080CCAAC
_080CC84E:
	cmp r0, #0xa
	bne _080CC854
	b _080CC9AC
_080CC854:
	b _080CCB56
_080CC856:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0x58
	bl sub_0806DF40
	cmp r0, #0
	beq _080CC86E
	adds r0, r6, #0
	movs r1, #0
	bl sub_080CD144
	b _080CC87C
_080CC86E:
	adds r0, r6, #0
	movs r1, #1
	bl sub_080CD144
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r6, #0x54]
_080CC87C:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_0806DF40
	cmp r0, #0
	beq _080CC890
	movs r1, #0
	movs r0, #0xa
	b _080CC9A6
_080CC890:
	adds r5, r6, #0
	adds r5, #0x42
	movs r2, #0
	ldrsh r0, [r5, r2]
	ldr r1, _080CC96C @ =gEwramData
	ldr r2, [r1]
	ldr r3, _080CC970 @ =0x0000A094
	adds r2, r2, r3
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	adds r4, r6, #0
	adds r4, #0x46
	movs r3, #0
	ldrsh r1, [r4, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	adds r1, #0x18
	bl sub_08001D94
	str r5, [sp]
	mov sl, r4
	cmp r0, #0
	bne _080CC8C4
	b _080CCB56
_080CC8C4:
	adds r0, r6, #0
	movs r1, #0xc0
	movs r2, #0x30
	bl sub_0806E29C
	adds r7, #0x58
	mov r8, r7
	cmp r0, #0
	beq _080CC914
	ldrb r1, [r7]
	movs r4, #0x40
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _080CC8FE
	adds r0, r6, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080CC90C
	ldrb r1, [r7]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080CC914
_080CC8FE:
	adds r0, r6, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _080CC914
_080CC90C:
	movs r1, #0
	movs r0, #1
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xc]
_080CC914:
	movs r1, #0
	mov sb, r1
_080CC918:
	movs r4, #0
	lsls r0, r1, #3
	adds r2, r1, #1
	str r2, [sp, #4]
	subs r5, r0, r1
_080CC922:
	lsls r0, r4, #3
	subs r3, r0, r4
	mov r7, r8
	ldrb r1, [r7]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080CC934
	rsbs r3, r3, #0
_080CC934:
	ldr r1, [sp]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r1, _080CC96C @ =gEwramData
	ldr r2, [r1]
	ldr r7, _080CC970 @ =0x0000A094
	adds r2, r2, r7
	movs r7, #6
	ldrsh r1, [r2, r7]
	adds r0, r0, r1
	adds r0, r0, r3
	mov r3, sl
	movs r7, #0
	ldrsh r1, [r3, r7]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	subs r1, r1, r5
	adds r1, #0xc
	bl sub_08001D94
	cmp r0, #0
	beq _080CC974
	movs r0, #0xa
	strb r0, [r6, #0xb]
	mov r7, sb
	strb r7, [r6, #0xc]
	b _080CC97A
	.align 2, 0
_080CC96C: .4byte gEwramData
_080CC970: .4byte 0x0000A094
_080CC974:
	adds r4, #1
	cmp r4, #5
	ble _080CC922
_080CC97A:
	ldr r1, [sp, #4]
	cmp r1, #5
	ble _080CC918
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080CC990
	b _080CCB56
_080CC990:
	movs r0, #0
	strb r0, [r6, #0xd]
	bl RandomNumberGenerator
	adds r1, r0, #0
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	beq _080CC9A4
	b _080CCB56
_080CC9A4:
	movs r0, #2
_080CC9A6:
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xc]
	b _080CCB56
_080CC9AC:
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	beq _080CC9B8
	cmp r0, #1
	beq _080CCA18
	b _080CCB56
_080CC9B8:
	movs r0, #0xff
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xc]
	adds r0, #1
	strb r0, [r6, #0xc]
	bl RandomNumberGenerator
	movs r1, #3
	ands r1, r0
	adds r1, #1
	movs r0, #0xc0
	lsls r0, r0, #7
	bl __udivsi3
	adds r5, r0, #0
	str r5, [r6, #0x48]
	ldr r0, _080CCA98 @ =0xFFFF0000
	str r0, [r6, #0x4c]
	rsbs r0, r0, #0
	lsls r0, r0, #1
	ldrb r1, [r6, #0xd]
	bl __divsi3
	str r0, [r6, #0x54]
	movs r2, #0x80
	lsls r2, r2, #8
	str r2, [r6, #0x18]
	adds r3, r7, #0
	adds r3, #0x58
	ldrb r1, [r3]
	movs r4, #0x40
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _080CCA18
	rsbs r0, r2, #0
	str r0, [r6, #0x18]
	ldrb r1, [r3]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _080CCA18
	adds r0, r5, #0
	cmp r0, #0
	bge _080CCA14
	rsbs r0, r0, #0
_080CCA14:
	rsbs r0, r0, #0
	str r0, [r6, #0x48]
_080CCA18:
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x48]
	adds r0, r0, r1
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x44]
	ldr r1, [r6, #0x4c]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	ldr r0, [r6, #0x54]
	adds r1, r1, r0
	str r1, [r6, #0x4c]
	cmp r1, #0
	ble _080CCA6A
	adds r0, r6, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _080CCA9C @ =gEwramData
	ldr r2, [r1]
	ldr r3, _080CCAA0 @ =0x0000A094
	adds r2, r2, r3
	movs r7, #6
	ldrsh r1, [r2, r7]
	adds r0, r0, r1
	adds r4, r6, #0
	adds r4, #0x46
	movs r3, #0
	ldrsh r1, [r4, r3]
	movs r7, #0xa
	ldrsh r2, [r2, r7]
	adds r1, r1, r2
	adds r1, #0x1a
	bl sub_08001D94
	ldrh r1, [r4]
	adds r1, r1, r0
	strh r1, [r4]
	cmp r0, #0
	beq _080CCA6A
	movs r0, #0
	strb r0, [r6, #0xd]
_080CCA6A:
	adds r0, r6, #0
	movs r1, #1
	bl sub_080CD144
	ldrb r0, [r6, #0xd]
	subs r0, #1
	movs r4, #0
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080CCA86
	strb r4, [r6, #0xb]
	strb r4, [r6, #0xc]
_080CCA86:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_0806DF40
	cmp r0, #0
	beq _080CCB56
	b _080CCB54
	.align 2, 0
_080CCA98: .4byte 0xFFFF0000
_080CCA9C: .4byte gEwramData
_080CCAA0: .4byte 0x0000A094
_080CCAA4:
	adds r0, r6, #0
	bl sub_080CCB68
	b _080CCB56
_080CCAAC:
	ldrb r0, [r6, #0xc]
	cmp r0, #1
	beq _080CCAD4
	cmp r0, #1
	bgt _080CCABC
	cmp r0, #0
	beq _080CCAC2
	b _080CCB56
_080CCABC:
	cmp r0, #2
	beq _080CCAF8
	b _080CCB56
_080CCAC2:
	bl RandomNumberGenerator
	movs r1, #0x1f
	ands r1, r0
	adds r1, #0x20
	strb r1, [r6, #0xd]
	ldrb r0, [r6, #0xc]
	adds r0, #1
	strb r0, [r6, #0xc]
_080CCAD4:
	adds r3, r7, #0
	adds r3, #0x58
	ldrb r2, [r3]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r0, [r6, #0xc]
	adds r0, #1
	strb r0, [r6, #0xc]
_080CCAF8:
	adds r0, r6, #0
	movs r1, #0x60
	movs r2, #0x30
	bl sub_0806E29C
	cmp r0, #0
	beq _080CCB0E
	movs r1, #0
	movs r0, #1
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xc]
_080CCB0E:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	movs r4, #0
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080CCB56
	bl RandomNumberGenerator
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _080CCB54
	strb r4, [r6, #0xb]
	strb r4, [r6, #0xc]
	strb r4, [r6, #0xd]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080CCB46
	ldr r0, [r6, #0x18]
	cmp r0, #0
	bge _080CCB50
	b _080CCB4E
_080CCB46:
	ldr r0, [r6, #0x18]
	cmp r0, #0
	bge _080CCB4E
	rsbs r0, r0, #0
_080CCB4E:
	rsbs r0, r0, #0
_080CCB50:
	str r0, [r6, #0x18]
	b _080CCB56
_080CCB54:
	strb r4, [r6, #0xc]
_080CCB56:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CCB68
sub_080CCB68: @ 0x080CCB68
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r2, _080CCB90 @ =gEwramData
	ldrb r1, [r5, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080CCB94 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r7, r1, r0
	ldrb r4, [r5, #0xc]
	cmp r4, #1
	beq _080CCBBE
	cmp r4, #1
	bgt _080CCB98
	cmp r4, #0
	beq _080CCBA0
	b _080CCDD0
	.align 2, 0
_080CCB90: .4byte gEwramData
_080CCB94: .4byte 0x000004E4
_080CCB98:
	cmp r4, #2
	bne _080CCB9E
	b _080CCD4C
_080CCB9E:
	b _080CCDD0
_080CCBA0:
	adds r0, r5, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080CCBB0
	strb r4, [r5, #0x13]
	b _080CCBB4
_080CCBB0:
	movs r0, #1
	strb r0, [r5, #0x13]
_080CCBB4:
	movs r0, #0x50
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
_080CCBBE:
	ldr r4, [r5, #0x40]
	ldr r1, [r5, #0x18]
	ldr r2, _080CCC10 @ =0x08528B70
	adds r0, r5, #0
	movs r3, #6
	bl sub_0806CAF8
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080CD4D4
	ldrb r2, [r5, #0x13]
	cmp r2, #0
	beq _080CCC20
	ldr r0, [r5, #0x18]
	ldr r1, _080CCC14 @ =0x00001998
	adds r0, r0, r1
	str r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xa
	cmp r0, r1
	ble _080CCBF0
	str r1, [r5, #0x18]
	movs r0, #0
	strb r0, [r5, #0xd]
_080CCBF0:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	ble _080CCC02
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0]
_080CCC02:
	ldrb r0, [r5, #0xd]
	cmp r0, #0x32
	bls _080CCC18
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #3
	b _080CCC64
	.align 2, 0
_080CCC10: .4byte 0x08528B70
_080CCC14: .4byte 0x00001998
_080CCC18:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #4
	b _080CCC64
_080CCC20:
	ldr r0, [r5, #0x18]
	ldr r1, _080CCC54 @ =0xFFFFE668
	adds r0, r0, r1
	str r0, [r5, #0x18]
	ldr r1, _080CCC58 @ =0xFFFE0000
	cmp r0, r1
	bge _080CCC32
	str r1, [r5, #0x18]
	strb r2, [r5, #0xd]
_080CCC32:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bge _080CCC46
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_080CCC46:
	ldrb r0, [r5, #0xd]
	cmp r0, #0x32
	bls _080CCC60
	ldr r0, [r5, #0x14]
	ldr r1, _080CCC5C @ =0xFFFFFC00
	b _080CCC64
	.align 2, 0
_080CCC54: .4byte 0xFFFFE668
_080CCC58: .4byte 0xFFFE0000
_080CCC5C: .4byte 0xFFFFFC00
_080CCC60:
	ldr r0, [r5, #0x14]
	ldr r1, _080CCD48 @ =0xFFFFF800
_080CCC64:
	adds r0, r0, r1
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x14]
	movs r2, #0x80
	lsls r2, r2, #9
	movs r1, #0
	str r1, [sp]
	adds r1, r5, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	ldrb r4, [r5, #0xd]
	adds r0, r4, #0
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080CCCF2
	cmp r4, #0x32
	bls _080CCCF2
	adds r0, r4, #0
	movs r1, #9
	bl __umodsi3
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080CCCAE
	movs r0, #0x84
	bl PlaySong
_080CCCAE:
	adds r6, r5, #0
	adds r6, #0x42
	movs r0, #0
	ldrsh r2, [r6, r0]
	adds r4, r5, #0
	adds r4, #0x46
	ldrh r0, [r4]
	adds r0, #0x18
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	movs r3, #0
	ldrb r0, [r5, #0x13]
	cmp r0, #0
	bne _080CCCCC
	movs r3, #1
_080CCCCC:
	adds r0, r2, #0
	movs r2, #0
	bl sub_080CD4F8
	movs r1, #0
	ldrsh r2, [r6, r1]
	ldrh r0, [r4]
	adds r0, #0x18
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	movs r3, #0
	ldrb r0, [r5, #0x13]
	cmp r0, #0
	bne _080CCCEA
	movs r3, #1
_080CCCEA:
	adds r0, r2, #0
	movs r2, #1
	bl sub_080CD4F8
_080CCCF2:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080CCDD0
	ldrb r0, [r5, #0x13]
	cmp r0, #0
	beq _080CCD08
	movs r0, #1
_080CCD08:
	strb r0, [r5, #0x13]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	movs r6, #0
	strb r0, [r5, #0xc]
	movs r0, #0x20
	strb r0, [r5, #0xd]
	movs r4, #0x19
	ldrsb r4, [r7, r4]
	bl RandomNumberGenerator
	movs r1, #5
	bl __umodsi3
	adds r0, #1
	cmp r4, r0
	blo _080CCDD0
	strb r6, [r5, #0xb]
	strb r6, [r5, #0xc]
	str r6, [r5, #0x50]
	str r6, [r5, #0x48]
	str r6, [r5, #0x54]
	str r6, [r5, #0x4c]
	ldr r0, [r5, #0x18]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r5, #0x18]
	strb r6, [r7, #0x19]
	strb r6, [r5, #0xd]
	b _080CCDD0
	.align 2, 0
_080CCD48: .4byte 0xFFFFF800
_080CCD4C:
	ldr r4, [r5, #0x40]
	ldr r1, [r5, #0x18]
	ldr r2, _080CCD74 @ =0x08528B70
	adds r0, r5, #0
	movs r3, #6
	bl sub_0806CAF8
	adds r6, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080CD4D4
	movs r0, #0x40
	ands r0, r6
	cmp r0, #0
	beq _080CCD7C
	ldr r0, [r5, #0x18]
	ldr r1, _080CCD78 @ =0xFFFFF99A
	b _080CCD88
	.align 2, 0
_080CCD74: .4byte 0x08528B70
_080CCD78: .4byte 0xFFFFF99A
_080CCD7C:
	movs r0, #0x20
	ands r0, r6
	cmp r0, #0
	beq _080CCD8E
	ldr r0, [r5, #0x18]
	ldr r1, _080CCDD8 @ =0x00000666
_080CCD88:
	bl sub_080CD46C
	str r0, [r5, #0x18]
_080CCD8E:
	ldr r1, [r5, #0x18]
	cmp r1, #0
	bge _080CCD96
	adds r1, #0x3f
_080CCD96:
	asrs r1, r1, #6
	ldr r0, [r5, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r2, #0x80
	lsls r2, r2, #9
	movs r4, #0
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
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080CCDD0
	strb r4, [r5, #0xc]
	ldrb r0, [r7, #0x19]
	adds r0, #1
	strb r0, [r7, #0x19]
_080CCDD0:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080CCDD8: .4byte 0x00000666

	thumb_func_start sub_080CCDDC
sub_080CCDDC: @ 0x080CCDDC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	adds r5, r0, #0
	ldr r2, _080CCE14 @ =gEwramData
	ldrb r1, [r5, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080CCE18 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r6, r1, r0
	ldr r2, [r5, #0x40]
	mov r8, r2
	ldr r3, [r5, #0x44]
	mov sb, r3
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	beq _080CCE94
	cmp r0, #1
	bgt _080CCE1C
	cmp r0, #0
	beq _080CCE2A
	b _080CD09A
	.align 2, 0
_080CCE14: .4byte gEwramData
_080CCE18: .4byte 0x000004E4
_080CCE1C:
	cmp r0, #2
	bne _080CCE22
	b _080CCFD0
_080CCE22:
	cmp r0, #3
	bne _080CCE28
	b _080CD02A
_080CCE28:
	b _080CD09A
_080CCE2A:
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x6e
	bl PlaySong
	movs r0, #1
	strb r0, [r6, #0xf]
	adds r0, r6, #0
	adds r0, #0x2c
	adds r7, r6, #0
	adds r7, #0x5a
	movs r4, #0xf
	ldrb r1, [r0]
	ands r1, r4
	lsls r1, r1, #3
	ldrb r3, [r7]
	movs r2, #0x79
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r7]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	movs r0, #0x60
	strb r0, [r5, #0xd]
	adds r0, r5, #0
	adds r0, #0x2c
	adds r3, r5, #0
	adds r3, #0x5a
	ldrb r0, [r0]
	ands r0, r4
	lsls r0, r0, #3
	ldrb r1, [r3]
	ands r2, r1
	orrs r2, r0
	strb r2, [r3]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	ldr r0, [r5, #0x18]
	cmp r0, #0
	blt _080CCE90
	movs r0, #0x80
	lsls r0, r0, #0xa
	b _080CCE92
_080CCE90:
	ldr r0, _080CCEE8 @ =0xFFFE0000
_080CCE92:
	str r0, [r5, #0x18]
_080CCE94:
	ldrb r0, [r5, #0xd]
	movs r1, #7
	bl __umodsi3
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080CCEBA
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x44]
	movs r3, #0x80
	lsls r3, r3, #0xd
	adds r2, r6, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	adds r2, r3, #0
	bl sub_0806D5C0
_080CCEBA:
	ldrb r0, [r5, #0xd]
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080CCEEC
	movs r0, #1
	strb r0, [r6, #0x14]
	strb r0, [r6, #0x15]
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x15
	ldrsb r0, [r6, r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	b _080CCF1C
	.align 2, 0
_080CCEE8: .4byte 0xFFFE0000
_080CCEEC:
	adds r2, r6, #0
	adds r2, #0x42
	movs r1, #0x14
	ldrsb r1, [r6, r1]
	ldrh r0, [r2]
	subs r0, r0, r1
	movs r3, #0
	strh r0, [r2]
	adds r2, #4
	movs r1, #0x15
	ldrsb r1, [r6, r1]
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r2]
	movs r0, #0x14
	ldrsb r0, [r6, r0]
	cmp r0, #0
	beq _080CCF12
	strb r3, [r6, #0x14]
_080CCF12:
	movs r0, #0x15
	ldrsb r0, [r6, r0]
	cmp r0, #0
	beq _080CCF1C
	strb r3, [r6, #0x15]
_080CCF1C:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	blt _080CCF3C
	ldr r3, _080CCF34 @ =0xFFFFFE40
	adds r1, r0, r3
	str r1, [r5, #0x18]
	ldr r0, _080CCF38 @ =0x00006FFF
	cmp r1, r0
	bgt _080CCF4C
	adds r0, #1
	str r0, [r5, #0x18]
	b _080CCF4C
	.align 2, 0
_080CCF34: .4byte 0xFFFFFE40
_080CCF38: .4byte 0x00006FFF
_080CCF3C:
	movs r1, #0xe0
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r5, #0x18]
	ldr r1, _080CCFC8 @ =0xFFFF9000
	cmp r0, r1
	ble _080CCF4C
	str r1, [r5, #0x18]
_080CCF4C:
	ldr r1, [r5, #0x18]
	cmp r1, #0
	bge _080CCF54
	adds r1, #0x3f
_080CCF54:
	asrs r1, r1, #6
	ldr r0, [r5, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r2, #0x80
	lsls r2, r2, #9
	movs r1, #0
	str r1, [sp]
	adds r1, r5, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	ldr r2, _080CCFCC @ =0x08528B70
	adds r0, r5, #0
	movs r1, #0
	movs r3, #2
	bl sub_0806CAF8
	ldr r1, [r5, #0x40]
	mov r2, r8
	subs r1, r1, r2
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	str r0, [r6, #0x40]
	ldr r1, [r5, #0x44]
	mov r3, sb
	subs r1, r1, r3
	ldr r0, [r6, #0x44]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080CD09A
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x80
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #1
	strb r0, [r5, #0xf]
	b _080CD09A
	.align 2, 0
_080CCFC8: .4byte 0xFFFF9000
_080CCFCC: .4byte 0x08528B70
_080CCFD0:
	ldrb r0, [r5, #0xd]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CD00C
	movs r3, #0x80
	lsls r3, r3, #0xe
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	str r0, [sp]
	mov r0, r8
	mov r1, sb
	adds r2, r3, #0
	bl sub_0806D5C0
	ldrb r4, [r5, #0xd]
	adds r0, r4, #0
	movs r1, #0x14
	bl __umodsi3
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080CD00C
	cmp r4, #0x1c
	bls _080CD00C
	movs r0, #0x6e
	bl PlaySong
_080CD00C:
	adds r0, r5, #0
	movs r1, #1
	bl sub_080CD144
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080CD09A
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	b _080CD09A
_080CD02A:
	ldr r1, _080CD0AC @ =0x08119500
	add r0, sp, #8
	movs r2, #0x20
	bl memcpy
	movs r0, #0x58
	adds r0, r0, r5
	mov sl, r0
	movs r1, #0x5c
	adds r1, r1, r5
	mov r8, r1
	mov r0, sp
	adds r0, #0xa
	movs r2, #0x59
	adds r2, r2, r5
	mov sb, r2
	adds r7, r0, #0
	add r4, sp, #8
	movs r6, #7
_080CD050:
	movs r3, #0
	ldrsh r1, [r4, r3]
	lsls r1, r1, #0x10
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	movs r1, #0
	ldrsh r2, [r7, r1]
	lsls r2, r2, #0x10
	ldr r1, [r5, #0x44]
	adds r1, r1, r2
	movs r2, #0x80
	lsls r2, r2, #0xb
	adds r1, r1, r2
	mov r3, r8
	ldrb r2, [r3]
	subs r2, #1
	bl sub_0806D578
	adds r7, #4
	adds r4, #4
	subs r6, #1
	cmp r6, #0
	bge _080CD050
	movs r0, #0x6e
	bl PlaySong
	mov r1, sl
	ldrb r0, [r1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	mov r2, sb
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080CD09A:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080CD0AC: .4byte 0x08119500

	thumb_func_start sub_080CD0B0
sub_080CD0B0: @ 0x080CD0B0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080CD0C0
	cmp r0, #1
	beq _080CD114
	b _080CD11E
_080CD0C0:
	ldr r0, _080CD0D4 @ =0x081F428C
	bl sub_0803AFB8
	adds r2, r0, #0
	cmp r2, #0
	bge _080CD0D8
	adds r0, r4, #0
	bl EntityDelete
	b _080CD134
	.align 2, 0
_080CD0D4: .4byte 0x081F428C
_080CD0D8:
	adds r1, r4, #0
	adds r1, #0x2c
	movs r0, #6
	strb r0, [r1]
	ldr r1, _080CD13C @ =0x0824FDB0
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803B924
	ldr r0, _080CD140 @ =sub_0803B9D0
	str r0, [r4, #4]
	ldrb r1, [r4, #0x12]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x11
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
_080CD114:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D3D8
_080CD11E:
	adds r0, r4, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _080CD134
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080CD134:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CD13C: .4byte 0x0824FDB0
_080CD140: .4byte sub_0803B9D0

	thumb_func_start sub_080CD144
sub_080CD144: @ 0x080CD144
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	adds r7, r1, #0
	ldr r2, _080CD1A8 @ =gEwramData
	ldrb r1, [r4, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080CD1AC @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r1, r1, r0
	mov r8, r1
	ldr r6, [r4, #0x40]
	movs r3, #2
	cmp r7, #0
	bne _080CD16E
	movs r3, #6
_080CD16E:
	ldr r1, [r4, #0x18]
	ldr r2, _080CD1B0 @ =0x08528B70
	adds r0, r4, #0
	bl sub_0806CAF8
	adds r5, r0, #0
	movs r1, #0x18
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bge _080CD184
	subs r1, #0x30
_080CD184:
	adds r0, r4, #0
	movs r2, #0
	bl sub_0806DF40
	cmp r0, #0
	beq _080CD192
	str r6, [r4, #0x40]
_080CD192:
	movs r0, #0x40
	ands r0, r5
	cmp r0, #0
	beq _080CD1C4
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ble _080CD1B8
	ldr r3, _080CD1B4 @ =0xFFFFF99A
	adds r0, r0, r3
	b _080CD1FC
	.align 2, 0
_080CD1A8: .4byte gEwramData
_080CD1AC: .4byte 0x000004E4
_080CD1B0: .4byte 0x08528B70
_080CD1B4: .4byte 0xFFFFF99A
_080CD1B8:
	ldr r1, _080CD1C0 @ =0x00000666
	adds r0, r0, r1
	b _080CD1FC
	.align 2, 0
_080CD1C0: .4byte 0x00000666
_080CD1C4:
	movs r0, #0x20
	ands r0, r5
	cmp r0, #0
	beq _080CD1E8
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ble _080CD1DC
	ldr r3, _080CD1D8 @ =0x00000666
	adds r0, r0, r3
	b _080CD1FC
	.align 2, 0
_080CD1D8: .4byte 0x00000666
_080CD1DC:
	ldr r1, _080CD1E4 @ =0xFFFFF99A
	adds r0, r0, r1
	b _080CD1FC
	.align 2, 0
_080CD1E4: .4byte 0xFFFFF99A
_080CD1E8:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	blt _080CD204
	adds r1, r0, #0
	subs r1, #0x20
	str r1, [r4, #0x18]
	ldr r0, _080CD200 @ =0x00006FFF
	cmp r1, r0
	bgt _080CD210
	adds r0, #1
_080CD1FC:
	str r0, [r4, #0x18]
	b _080CD210
	.align 2, 0
_080CD200: .4byte 0x00006FFF
_080CD204:
	adds r0, #0x20
	str r0, [r4, #0x18]
	ldr r1, _080CD260 @ =0xFFFF9000
	cmp r0, r1
	ble _080CD210
	str r1, [r4, #0x18]
_080CD210:
	ldr r2, [r4, #0x18]
	adds r0, r2, #0
	cmp r2, #0
	bge _080CD21A
	adds r0, #0x3f
_080CD21A:
	asrs r0, r0, #6
	ldr r1, [r4, #0x14]
	adds r1, r1, r0
	str r1, [r4, #0x14]
	movs r0, #3
	ands r0, r5
	cmp r0, #0
	beq _080CD26C
	adds r0, r4, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r1, _080CD264 @ =gEwramData
	ldr r2, [r1]
	ldr r1, _080CD268 @ =0x0000A094
	adds r2, r2, r1
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x46
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	adds r1, #0x18
	bl sub_08001D94
	cmp r0, #0
	beq _080CD280
	ldr r0, [r4, #0x18]
	rsbs r0, r0, #0
	b _080CD27A
	.align 2, 0
_080CD260: .4byte 0xFFFF9000
_080CD264: .4byte gEwramData
_080CD268: .4byte 0x0000A094
_080CD26C:
	cmp r7, #0
	bne _080CD282
	movs r0, #8
	ands r0, r5
	cmp r0, #0
	bne _080CD282
	rsbs r0, r2, #0
_080CD27A:
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
_080CD280:
	str r0, [r4, #0x18]
_080CD282:
	ldr r0, [r4, #0x14]
	movs r2, #0x80
	lsls r2, r2, #9
	movs r1, #0
	str r1, [sp]
	adds r1, r4, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	ldr r0, [r4, #0x18]
	cmp r0, #0
	blt _080CD2B4
	mov r0, r8
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0]
	b _080CD2C2
_080CD2B4:
	mov r2, r8
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_080CD2C2:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyBaelUpdate
EnemyBaelUpdate: @ 0x080CD2D0
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bne _080CD2E4
	adds r0, r4, #0
	bl sub_080CD3AC
	b _080CD33E
_080CD2E4:
	cmp r0, #3
	bne _080CD2F0
	adds r0, r4, #0
	bl sub_080CCDDC
	b _080CD33E
_080CD2F0:
	adds r0, r4, #0
	bl sub_08021924
	adds r0, r4, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _080CD30A
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	b _080CD33E
_080CD30A:
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080CD328
	cmp r0, #2
	bgt _080CD31A
	cmp r0, #1
	beq _080CD320
	b _080CD336
_080CD31A:
	cmp r0, #3
	beq _080CD330
	b _080CD336
_080CD320:
	adds r0, r4, #0
	bl sub_080CD378
	b _080CD336
_080CD328:
	adds r0, r4, #0
	bl sub_080CC800
	b _080CD336
_080CD330:
	adds r0, r4, #0
	bl sub_080CCDDC
_080CD336:
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
_080CD33E:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CD348
sub_080CD348: @ 0x080CD348
	push {lr}
	adds r3, r0, #0
	ldr r2, _080CD370 @ =gEwramData
	ldrb r1, [r3, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080CD374 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r1, r1, r0
	ldrb r0, [r3, #0xa]
	cmp r0, #0
	bne _080CD36C
	ldr r0, [r1, #0x40]
	str r0, [r3, #0x40]
	ldr r0, [r1, #0x44]
	str r0, [r3, #0x44]
_080CD36C:
	pop {r0}
	bx r0
	.align 2, 0
_080CD370: .4byte gEwramData
_080CD374: .4byte 0x000004E4

	thumb_func_start sub_080CD378
sub_080CD378: @ 0x080CD378
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080CD47C
	adds r5, r0, #0
	cmp r5, #0
	bne _080CD3A4
	adds r0, r4, #0
	movs r1, #1
	bl sub_080CD144
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x5c
	bl sub_0806DF40
	cmp r0, #0
	beq _080CD3A4
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
_080CD3A4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CD3AC
sub_080CD3AC: @ 0x080CD3AC
	push {lr}
	sub sp, #8
	adds r3, r0, #0
	ldrb r0, [r3, #0xb]
	cmp r0, #0
	beq _080CD3BE
	cmp r0, #1
	beq _080CD3D6
	b _080CD3FC
_080CD3BE:
	adds r2, r3, #0
	adds r2, #0x46
	ldrh r0, [r2]
	subs r0, #0x20
	movs r1, #0
	strh r0, [r2]
	adds r0, r3, #0
	adds r0, #0x65
	strb r1, [r0]
	ldrb r0, [r3, #0xb]
	adds r0, #1
	strb r0, [r3, #0xb]
_080CD3D6:
	ldr r0, [r3, #0x14]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r3, #0x14]
	movs r2, #0x80
	lsls r2, r2, #9
	movs r1, #0
	str r1, [sp]
	adds r1, r3, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
_080CD3FC:
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CD404
sub_080CD404: @ 0x080CD404
	push {lr}
	sub sp, #0x10
	mov r1, sp
	movs r2, #0
	movs r3, #1
	strh r3, [r1, #2]
	strh r2, [r1, #4]
	mov r2, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	strh r1, [r2]
	mov r1, sp
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

	thumb_func_start sub_080CD434
sub_080CD434: @ 0x080CD434
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080CD450
	adds r0, r4, #0
	bl sub_080683BC
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080CD450:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080CD464
	ldrh r0, [r4, #0xa]
	cmp r0, #2
	bne _080CD464
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
_080CD464:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CD46C
sub_080CD46C: @ 0x080CD46C
	push {lr}
	cmp r0, #0
	ble _080CD476
	adds r0, r0, r1
	b _080CD478
_080CD476:
	subs r0, r0, r1
_080CD478:
	pop {r1}
	bx r1

	thumb_func_start sub_080CD47C
sub_080CD47C: @ 0x080CD47C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, _080CD4CC @ =gEwramData
	ldrb r1, [r4, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080CD4D0 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r6, r1, r0
	movs r5, #0
	adds r0, r4, #0
	bl sub_0806B0A8
	cmp r0, #0
	beq _080CD4C2
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r4, #0
	bl EntityDelete
	adds r0, r6, #0
	bl EntityDelete
	movs r0, #3
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	movs r5, #1
_080CD4C2:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080CD4CC: .4byte gEwramData
_080CD4D0: .4byte 0x000004E4

	thumb_func_start sub_080CD4D4
sub_080CD4D4: @ 0x080CD4D4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0x18
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bge _080CD4E4
	rsbs r1, r1, #0
_080CD4E4:
	adds r0, r4, #0
	movs r2, #0
	bl sub_0806DF40
	cmp r0, #0
	beq _080CD4F2
	str r5, [r4, #0x40]
_080CD4F2:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080CD4F8
sub_080CD4F8: @ 0x080CD4F8
	push {r4, r5, r6, r7, lr}
	adds r4, r3, #0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	ldr r2, _080CD540 @ =sub_080CD0B0
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r3, r0, #0
	cmp r3, #0
	beq _080CD538
	strb r5, [r3, #0x12]
	adds r0, #0x42
	strh r6, [r0]
	adds r0, #4
	strh r7, [r0]
	movs r0, #1
	eors r4, r0
	adds r3, #0x58
	ands r4, r0
	lsls r2, r4, #6
	ldrb r1, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
_080CD538:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080CD540: .4byte sub_080CD0B0

	thumb_func_start EnemyAlastorCreate
EnemyAlastorCreate: @ 0x080CD544
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r2, _080CD594 @ =0x0820BFE0
	ldr r0, _080CD598 @ =0x0824FEE0
	ldr r1, _080CD59C @ =0x081F4294
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080CD5B2
	adds r0, r4, #0
	bl sub_0806B04C
	adds r0, r4, #0
	adds r0, #0x5c
	movs r2, #0
	movs r7, #3
	strb r7, [r0]
	adds r0, #9
	strb r2, [r0]
	ldr r0, _080CD5A0 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	beq _080CD5A4
	movs r0, #8
	strb r0, [r4, #0xa]
	strb r2, [r4, #0xc]
	strb r2, [r4, #0xb]
	b _080CD630
	.align 2, 0
_080CD594: .4byte 0x0820BFE0
_080CD598: .4byte 0x0824FEE0
_080CD59C: .4byte 0x081F4294
_080CD5A0: .4byte gEwramData
_080CD5A4:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _080CD5BA
_080CD5B2:
	adds r0, r4, #0
	bl EntityDelete
	b _080CD630
_080CD5BA:
	adds r3, r4, #0
	adds r3, #0x58
	movs r0, #0x1f
	ands r2, r0
	ldrb r1, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	adds r5, r4, #0
	adds r5, #0x59
	ldrb r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #9
	str r6, [sp]
	ldrb r0, [r3]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	adds r0, r2, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	adds r0, r4, #0
	bl sub_080CEAA4
	cmp r0, #0
	bne _080CD604
	ldrb r0, [r5]
	movs r1, #8
	orrs r0, r1
	strb r0, [r5]
_080CD604:
	ldr r2, _080CD638 @ =sub_0806E1E8
	ldr r3, _080CD63C @ =sub_080CE9E8
	adds r0, r4, #0
	movs r1, #8
	bl sub_0804277C
	ldr r1, _080CD640 @ =0x1010F8F8
	adds r0, r4, #0
	bl sub_080428F0
	adds r0, r4, #0
	bl sub_080CDD9C
	strb r6, [r4, #0x16]
	movs r0, #9
	strb r0, [r4, #0x17]
	adds r0, r4, #0
	adds r0, #0x24
	strb r7, [r0]
	adds r0, r4, #0
	bl sub_080CD75C
_080CD630:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080CD638: .4byte sub_0806E1E8
_080CD63C: .4byte sub_080CE9E8
_080CD640: .4byte 0x1010F8F8

	thumb_func_start EnemyAlastorUpdate
EnemyAlastorUpdate: @ 0x080CD644
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #0x1c
	ldrsh r5, [r4, r0]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r6, r0, #0x1f
	ldrb r0, [r4, #0xa]
	cmp r0, #8
	bne _080CD666
	adds r0, r4, #0
	bl sub_080CEE30
	b _080CD754
_080CD666:
	cmp r0, #0xff
	bne _080CD672
	adds r0, r4, #0
	bl sub_080CE85C
	b _080CD754
_080CD672:
	adds r0, r4, #0
	bl sub_08021924
	adds r0, r4, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _080CD6B2
	movs r1, #0xa0
	lsls r1, r1, #0xf
	adds r0, r4, #0
	bl sub_0806BF78
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080CD698
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080CD754
_080CD698:
	ldrh r1, [r4, #0x18]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080CD6B2
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080CD6B2
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	b _080CD754
_080CD6B2:
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	bhi _080CD726
	lsls r0, r0, #2
	ldr r1, _080CD6C4 @ =_080CD6C8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080CD6C4: .4byte _080CD6C8
_080CD6C8: @ jump table
	.4byte _080CD6E8 @ case 0
	.4byte _080CD6F0 @ case 1
	.4byte _080CD6F8 @ case 2
	.4byte _080CD700 @ case 3
	.4byte _080CD708 @ case 4
	.4byte _080CD710 @ case 5
	.4byte _080CD718 @ case 6
	.4byte _080CD720 @ case 7
_080CD6E8:
	adds r0, r4, #0
	bl sub_080CD75C
	b _080CD726
_080CD6F0:
	adds r0, r4, #0
	bl sub_080CD934
	b _080CD726
_080CD6F8:
	adds r0, r4, #0
	bl sub_080CDB90
	b _080CD726
_080CD700:
	adds r0, r4, #0
	bl sub_080CDE70
	b _080CD726
_080CD708:
	adds r0, r4, #0
	bl sub_080CE13C
	b _080CD726
_080CD710:
	adds r0, r4, #0
	bl sub_080CE26C
	b _080CD726
_080CD718:
	adds r0, r4, #0
	bl sub_080CE598
	b _080CD726
_080CD720:
	adds r0, r4, #0
	bl sub_080CE758
_080CD726:
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, r5
	bne _080CD73C
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	cmp r0, r6
	beq _080CD742
_080CD73C:
	adds r0, r4, #0
	bl sub_080CDD9C
_080CD742:
	ldrh r1, [r4, #0x18]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080CD754
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
_080CD754:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080CD75C
sub_080CD75C: @ 0x080CD75C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r2, _080CD788 @ =gEwramData
	ldrb r1, [r5, #0x12]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080CD78C @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r6, r1, r0
	ldrb r0, [r5, #0xb]
	cmp r0, #5
	bls _080CD77C
	b _080CD92A
_080CD77C:
	lsls r0, r0, #2
	ldr r1, _080CD790 @ =_080CD794
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080CD788: .4byte gEwramData
_080CD78C: .4byte 0x000004E4
_080CD790: .4byte _080CD794
_080CD794: @ jump table
	.4byte _080CD7AC @ case 0
	.4byte _080CD7D6 @ case 1
	.4byte _080CD832 @ case 2
	.4byte _080CD8B4 @ case 3
	.4byte _080CD8C6 @ case 4
	.4byte _080CD910 @ case 5
_080CD7AC:
	adds r0, r5, #0
	bl sub_0806BC40
	adds r1, r6, #0
	adds r1, #0x58
	ldrb r0, [r1]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r1]
	movs r3, #0
	movs r0, #5
	strb r0, [r6, #0xa]
	adds r1, r5, #0
	adds r1, #0x58
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	strb r3, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
_080CD7D6:
	movs r1, #0xa0
	lsls r1, r1, #0xf
	adds r0, r5, #0
	bl sub_0806BF78
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080CD7E8
	b _080CD92A
_080CD7E8:
	adds r3, r5, #0
	adds r3, #0x42
	ldrh r0, [r3]
	movs r1, #0x42
	adds r1, r1, r6
	mov ip, r1
	movs r4, #0
	strh r0, [r1]
	adds r2, r5, #0
	adds r2, #0x46
	ldrh r0, [r2]
	adds r1, r6, #0
	adds r1, #0x46
	strh r0, [r1]
	ldrh r0, [r3]
	adds r0, #0xa
	mov r3, ip
	strh r0, [r3]
	ldrh r0, [r2]
	adds r0, #0x10
	strh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	str r4, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	adds r0, r2, #0
	adds r1, r2, #0
	bl sub_0803E058
	b _080CD908
_080CD832:
	ldrb r0, [r5, #0xd]
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r0, r0, #0
	adds r4, r5, #0
	adds r4, #0x58
	lsrs r0, r0, #0x1f
	lsls r0, r0, #5
	ldrb r2, [r4]
	movs r7, #0x21
	rsbs r7, r7, #0
	adds r1, r7, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	ldrb r0, [r5, #0xd]
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r0, r0, #0
	adds r3, r6, #0
	adds r3, #0x58
	lsrs r0, r0, #0x1f
	lsls r0, r0, #5
	ldrb r2, [r3]
	adds r1, r7, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r6, #7
	rsbs r6, r6, #0
	adds r0, r6, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x28
	bls _080CD92A
	ldrb r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r4]
	ldrb r1, [r3]
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r3]
	ldrb r1, [r2]
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0
	b _080CD906
_080CD8B4:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x14
	bls _080CD92A
	movs r0, #0
	b _080CD906
_080CD8C6:
	ldrb r0, [r5, #0xd]
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r0, r0, #0
	adds r3, r6, #0
	adds r3, #0x58
	lsrs r0, r0, #0x1f
	lsls r0, r0, #5
	ldrb r2, [r3]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x28
	bls _080CD92A
	ldrb r0, [r3]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0
	strb r0, [r6, #0xa]
	strb r0, [r6, #0xc]
	strb r0, [r6, #0xb]
_080CD906:
	strb r0, [r5, #0xd]
_080CD908:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	b _080CD92A
_080CD910:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x14
	bls _080CD92A
	movs r1, #0
	strb r1, [r5, #0xd]
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
_080CD92A:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CD934
sub_080CD934: @ 0x080CD934
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r6, #0
	movs r7, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080CD950
	ldrh r1, [r5, #0x18]
	movs r0, #2
	orrs r0, r1
	b _080CD958
_080CD950:
	ldrh r1, [r5, #0x18]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
_080CD958:
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl sub_0806BC40
	ldrb r4, [r5, #0xb]
	cmp r4, #2
	bgt _080CD970
	cmp r4, #1
	bge _080CD9C0
	cmp r4, #0
	beq _080CD976
	b _080CDB86
_080CD970:
	cmp r4, #3
	beq _080CDA1A
	b _080CDB86
_080CD976:
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r5, #0x48]
	str r0, [r5, #0x4c]
	adds r0, r5, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080CD99E
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	str r0, [r5, #0x48]
_080CD99E:
	adds r0, r5, #0
	bl sub_0806BDEC
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080CD9B0
	ldr r0, [r5, #0x4c]
	rsbs r0, r0, #0
	str r0, [r5, #0x4c]
_080CD9B0:
	strh r4, [r5, #0x1a]
	ldr r0, _080CD9BC @ =0x0000FF9C
	strh r0, [r5, #0x1e]
	movs r0, #2
	strb r0, [r5, #0xb]
	b _080CDB86
	.align 2, 0
_080CD9BC: .4byte 0x0000FF9C
_080CD9C0:
	adds r0, r5, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080CD9DA
	adds r0, r5, #0
	adds r0, #0x1c
	movs r1, #0xc0
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #5
	b _080CD9E6
_080CD9DA:
	adds r0, r5, #0
	adds r0, #0x1c
	movs r1, #0xc0
	lsls r1, r1, #1
	movs r2, #0xf0
	lsls r2, r2, #8
_080CD9E6:
	bl sub_080686CC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080CD9F6
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
_080CD9F6:
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r5, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	movs r4, #0
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
	b _080CDB86
_080CDA1A:
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r5, #0x4c]
	str r0, [r5, #0x48]
	adds r0, r5, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080CDA3A
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bge _080CDA36
	rsbs r0, r0, #0
_080CDA36:
	rsbs r0, r0, #0
	str r0, [r5, #0x48]
_080CDA3A:
	adds r0, r5, #0
	bl sub_0806BDEC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x20
	cmp r0, #0
	ble _080CDA56
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	bge _080CDA52
	rsbs r0, r0, #0
_080CDA52:
	rsbs r0, r0, #0
	str r0, [r5, #0x4c]
_080CDA56:
	adds r0, r5, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080CDA74
	adds r0, r5, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	cmp r0, #0x48
	bgt _080CDA82
	b _080CDA8C
_080CDA74:
	adds r0, r5, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x48
	ble _080CDA8C
_080CDA82:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	b _080CDA8E
_080CDA8C:
	movs r6, #1
_080CDA8E:
	adds r0, r5, #0
	bl sub_0806BDEC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x20
	cmp r0, #0
	bge _080CDAB2
	adds r0, r5, #0
	bl sub_0806BDEC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x20
	rsbs r0, r0, #0
	cmp r0, #8
	bgt _080CDAC2
	b _080CDACC
_080CDAB2:
	adds r0, r5, #0
	bl sub_0806BDEC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x20
	cmp r0, #8
	ble _080CDACC
_080CDAC2:
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	b _080CDACE
_080CDACC:
	movs r7, #1
_080CDACE:
	adds r0, r7, #0
	ands r0, r6
	cmp r0, #1
	bne _080CDAE0
	movs r1, #0
	movs r0, #2
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
_080CDAE0:
	adds r0, r5, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080CDAF2
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bgt _080CDB04
_080CDAF2:
	adds r0, r5, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080CDB0A
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bge _080CDB0A
_080CDB04:
	movs r0, #0
	strb r0, [r5, #0xb]
	b _080CDB86
_080CDB0A:
	ldrh r0, [r5, #0x1a]
	bl sub_080009E4
	cmp r0, #0
	bge _080CDB16
	adds r0, #0x1f
_080CDB16:
	asrs r0, r0, #5
	strh r0, [r5, #0x1c]
	adds r0, r5, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080CDB2C
	movs r2, #0x80
	lsls r2, r2, #5
	b _080CDB2E
_080CDB2C:
	ldr r2, _080CDB74 @ =0xFFFFF000
_080CDB2E:
	adds r0, r2, #0
	ldrh r1, [r5, #0x1c]
	adds r0, r0, r1
	strh r0, [r5, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ldrh r1, [r5, #0x1a]
	adds r0, r0, r1
	movs r4, #0
	strh r0, [r5, #0x1a]
	movs r2, #0x1c
	ldrsh r0, [r5, r2]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r5, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
	ldrh r1, [r5, #0x14]
	movs r2, #0x14
	ldrsh r0, [r5, r2]
	cmp r0, #0
	beq _080CDB78
	subs r0, r1, #1
	b _080CDB84
	.align 2, 0
_080CDB74: .4byte 0xFFFFF000
_080CDB78:
	bl RandomNumberGenerator
	movs r1, #0xb4
	bl __umodsi3
	adds r0, #0xa
_080CDB84:
	strh r0, [r5, #0x14]
_080CDB86:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CDB90
sub_080CDB90: @ 0x080CDB90
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r2, _080CDBC4 @ =gEwramData
	ldrb r1, [r4, #0x12]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080CDBC8 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r6, r1, r0
	movs r7, #0x80
	lsls r7, r7, #0xa
	movs r5, #0xc0
	lsls r5, r5, #8
	ldrb r0, [r4, #0xb]
	cmp r0, #4
	bls _080CDBB8
	b _080CDD94
_080CDBB8:
	lsls r0, r0, #2
	ldr r1, _080CDBCC @ =_080CDBD0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080CDBC4: .4byte gEwramData
_080CDBC8: .4byte 0x000004E4
_080CDBCC: .4byte _080CDBD0
_080CDBD0: @ jump table
	.4byte _080CDBE4 @ case 0
	.4byte _080CDC6C @ case 1
	.4byte _080CDC7C @ case 2
	.4byte _080CDCD4 @ case 3
	.4byte _080CDD34 @ case 4
_080CDBE4:
	adds r0, r4, #0
	bl sub_0806BC40
	ldrb r0, [r4, #0x17]
	cmp r0, #9
	bne _080CDBFE
	bl RandomNumberGenerator
	movs r1, #3
	ands r1, r0
	movs r0, #0
	strb r1, [r4, #0x16]
	strb r0, [r4, #0x17]
_080CDBFE:
	ldr r2, _080CDC20 @ =0x08528C2C
	ldrb r1, [r4, #0x16]
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r4, #0x17]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #2
	bne _080CDC24
	movs r1, #0
	movs r0, #5
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	b _080CDD8E
	.align 2, 0
_080CDC20: .4byte 0x08528C2C
_080CDC24:
	ldrh r1, [r4, #0x18]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080CDC36
	rsbs r7, r7, #0
	movs r0, #0x80
	lsls r0, r0, #9
	subs r5, r0, r5
_080CDC36:
	ldr r0, [r4, #0x40]
	adds r0, r0, r7
	str r0, [r4, #0x40]
	adds r3, r4, #0
	adds r3, #0x1c
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	lsls r0, r0, #3
	cmp r0, #0
	bge _080CDC4C
	rsbs r0, r0, #0
_080CDC4C:
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r5, #0x10
	lsrs r2, r2, #0x10
	adds r0, r3, #0
	bl sub_080686CC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080CDD10
	movs r1, #0
	movs r0, #2
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xc]
	strb r1, [r6, #0xb]
	b _080CDD0A
_080CDC6C:
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _080CDC74
	b _080CDD94
_080CDC74:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	b _080CDD94
_080CDC7C:
	movs r5, #0xac
	lsls r5, r5, #8
	ldrh r1, [r4, #0x18]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080CDC8E
	movs r5, #0xa8
	lsls r5, r5, #7
_080CDC8E:
	adds r3, r4, #0
	adds r3, #0x1c
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	lsls r0, r0, #4
	cmp r0, #0
	bge _080CDC9E
	rsbs r0, r0, #0
_080CDC9E:
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r5, #0x10
	lsrs r2, r2, #0x10
	adds r0, r3, #0
	bl sub_080686CC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080CDD10
	ldr r2, _080CDCD0 @ =0x08528C2C
	ldrb r1, [r4, #0x16]
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r4, #0x17]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _080CDD0A
	ldrb r0, [r4, #0xb]
	adds r0, #2
	b _080CDD0E
	.align 2, 0
_080CDCD0: .4byte 0x08528C2C
_080CDCD4:
	movs r5, #0x80
	lsls r5, r5, #7
	ldrh r1, [r4, #0x18]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080CDCE6
	movs r5, #0xc0
	lsls r5, r5, #8
_080CDCE6:
	adds r3, r4, #0
	adds r3, #0x1c
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	lsls r0, r0, #5
	cmp r0, #0
	bge _080CDCF6
	rsbs r0, r0, #0
_080CDCF6:
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r5, #0x10
	lsrs r2, r2, #0x10
	adds r0, r3, #0
	bl sub_080686CC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080CDD10
_080CDD0A:
	ldrb r0, [r4, #0xb]
	adds r0, #1
_080CDD0E:
	strb r0, [r4, #0xb]
_080CDD10:
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r4, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	movs r4, #0
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
	b _080CDD94
_080CDD34:
	ldrb r5, [r6, #0xa]
	cmp r5, #0
	bne _080CDD94
	ldrb r0, [r4, #0x17]
	cmp r0, #9
	bne _080CDD4C
	bl RandomNumberGenerator
	movs r1, #3
	ands r1, r0
	strb r1, [r4, #0x16]
	strb r5, [r4, #0x17]
_080CDD4C:
	ldr r2, _080CDD6C @ =0x08528C2C
	ldrb r1, [r4, #0x16]
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r4, #0x17]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #1
	beq _080CDD7E
	cmp r0, #1
	bgt _080CDD70
	cmp r0, #0
	beq _080CDD7A
	b _080CDD8E
	.align 2, 0
_080CDD6C: .4byte 0x08528C2C
_080CDD70:
	cmp r0, #2
	beq _080CDD82
	cmp r0, #3
	beq _080CDD86
	b _080CDD8E
_080CDD7A:
	movs r0, #3
	b _080CDD88
_080CDD7E:
	movs r0, #4
	b _080CDD88
_080CDD82:
	movs r0, #5
	b _080CDD88
_080CDD86:
	movs r0, #6
_080CDD88:
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
_080CDD8E:
	ldrb r0, [r4, #0x17]
	adds r0, #1
	strb r0, [r4, #0x17]
_080CDD94:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080CDD9C
sub_080CDD9C: @ 0x080CDD9C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	movs r0, #0x1c
	ldrsh r1, [r7, r0]
	movs r4, #0x80
	lsls r4, r4, #7
	adds r2, r1, r4
	ldr r0, _080CDE60 @ =0x0000FFFF
	ands r2, r0
	movs r3, #0xc0
	lsls r3, r3, #8
	adds r6, r1, r3
	ands r6, r0
	adds r3, r6, #0
	movs r0, #0x30
	mov r8, r0
	movs r1, #8
	mov sb, r1
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080CDDDA
	movs r0, #0x80
	lsls r0, r0, #8
	adds r2, r2, r0
_080CDDDA:
	movs r0, #0xa0
	lsls r0, r0, #8
	cmp r6, r0
	ble _080CDDE6
	ldr r1, _080CDE64 @ =0xFFFF8000
	adds r3, r6, r1
_080CDDE6:
	ldr r0, _080CDE68 @ =0xFFFFDFFF
	adds r1, r3, r0
	ldr r0, _080CDE6C @ =0x00003FFE
	cmp r1, r0
	bhi _080CDDF8
	movs r1, #8
	mov r8, r1
	movs r3, #0x30
	mov sb, r3
_080CDDF8:
	adds r0, r2, r4
	bl sub_080009E4
	movs r4, #0xa8
	lsls r4, r4, #0xe
	adds r1, r4, #0
	bl sub_0803E86C
	asrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #0
	bl sub_080009E4
	adds r1, r4, #0
	bl sub_0803E86C
	asrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r0, r5, #0x18
	asrs r1, r0, #0x18
	mov r0, r8
	lsls r4, r0, #0x18
	cmp r1, #0
	ble _080CDE34
	asrs r0, r4, #0x18
	subs r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080CDE34:
	lsls r0, r2, #8
	orrs r5, r0
	lsrs r4, r4, #8
	adds r4, r5, r4
	mov r1, sb
	lsls r0, r1, #0x18
	adds r4, r4, r0
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08042884
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080428F0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080CDE60: .4byte 0x0000FFFF
_080CDE64: .4byte 0xFFFF8000
_080CDE68: .4byte 0xFFFFDFFF
_080CDE6C: .4byte 0x00003FFE

	thumb_func_start sub_080CDE70
sub_080CDE70: @ 0x080CDE70
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #2
	beq _080CDF6E
	cmp r0, #2
	bgt _080CDE8A
	cmp r0, #0
	beq _080CDE98
	cmp r0, #1
	beq _080CDF2A
	b _080CE132
_080CDE8A:
	cmp r0, #3
	bne _080CDE90
	b _080CDFCE
_080CDE90:
	cmp r0, #0xff
	bne _080CDE96
	b _080CE108
_080CDE96:
	b _080CE132
_080CDE98:
	movs r2, #0x80
	lsls r2, r2, #0xb
	str r2, [r5, #0x48]
	ldr r3, _080CDEEC @ =0xFFFFC000
	str r3, [r5, #0x50]
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r5, #0x4c]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080CDEBE
	rsbs r0, r2, #0
	str r0, [r5, #0x48]
	rsbs r0, r3, #0
	str r0, [r5, #0x50]
_080CDEBE:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	bl RandomNumberGenerator
	movs r1, #0x3f
	ands r1, r0
	adds r4, r1, #0
	adds r4, #0x10
	adds r0, r5, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080CDEF0
	adds r0, r5, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080CDEFA
	.align 2, 0
_080CDEEC: .4byte 0xFFFFC000
_080CDEF0:
	adds r0, r5, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_080CDEFA:
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	lsls r0, r1, #0x10
	cmp r0, #0
	bge _080CDF0A
	movs r1, #0
_080CDF0A:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x4a
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl __divsi3
	cmp r0, #0
	bge _080CDF20
	rsbs r0, r0, #0
_080CDF20:
	strb r0, [r5, #0xd]
	movs r0, #0x86
	bl PlaySong
	b _080CE132
_080CDF2A:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r5, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	movs r4, #0
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080CDF6C
	b _080CE132
_080CDF6C:
	b _080CDFC6
_080CDF6E:
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	adds r1, r2, #0
	cmp r0, #0
	beq _080CDF88
	ldr r2, _080CDF84 @ =0xFFFFFEB0
	b _080CDF8C
	.align 2, 0
_080CDF84: .4byte 0xFFFFFEB0
_080CDF88:
	movs r2, #0xa8
	lsls r2, r2, #1
_080CDF8C:
	adds r0, r2, #0
	ldrh r2, [r5, #0x1c]
	adds r0, r0, r2
	strh r0, [r5, #0x1c]
	movs r2, #0x1c
	ldrsh r0, [r5, r2]
	movs r2, #0x80
	lsls r2, r2, #9
	ldrb r1, [r1]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	movs r4, #0
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x50]
	adds r1, r1, r0
	str r1, [r5, #0x48]
	cmp r1, #0
	beq _080CDFC6
	b _080CE132
_080CDFC6:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	b _080CE132
_080CDFCE:
	ldrb r4, [r5, #0xc]
	cmp r4, #1
	beq _080CE076
	cmp r4, #1
	bgt _080CDFDE
	cmp r4, #0
	beq _080CDFE6
	b _080CE132
_080CDFDE:
	cmp r4, #2
	bne _080CDFE4
	b _080CE0EC
_080CDFE4:
	b _080CE132
_080CDFE6:
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r5, #0
	movs r1, #0x80
	bl sub_080CEE9C
	adds r1, r0, #0
	cmp r1, #0
	beq _080CE070
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	adds r3, r5, #0
	adds r3, #0x58
	ldrb r2, [r3]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1f
	movs r0, #1
	subs r0, r0, r1
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	movs r2, #0x1c
	ldrsh r0, [r5, r2]
	movs r2, #0x80
	lsls r2, r2, #9
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
	ldr r0, _080CE068 @ =0xFFFFFB00
	str r0, [r5, #0x4c]
	ldr r0, _080CE06C @ =0xFFFFB000
	str r0, [r5, #0x54]
	movs r0, #0x28
	strb r0, [r5, #0xd]
	adds r0, r5, #0
	movs r1, #0x60
	movs r2, #0xa
	movs r3, #2
	bl sub_080458E4
	adds r0, r5, #0
	movs r1, #0x60
	movs r2, #6
	movs r3, #2
	bl sub_080458E4
	adds r0, r5, #0
	movs r1, #0x60
	movs r2, #3
	movs r3, #2
	bl sub_080458E4
	b _080CE076
	.align 2, 0
_080CE068: .4byte 0xFFFFFB00
_080CE06C: .4byte 0xFFFFB000
_080CE070:
	movs r0, #0xff
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xc]
_080CE076:
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	adds r1, r2, #0
	cmp r0, #0
	beq _080CE08C
	ldrh r0, [r5, #0x1c]
	adds r0, #0x80
	b _080CE090
_080CE08C:
	ldrh r0, [r5, #0x1c]
	subs r0, #0x80
_080CE090:
	strh r0, [r5, #0x1c]
	movs r2, #0x1c
	ldrsh r0, [r5, r2]
	movs r2, #0x80
	lsls r2, r2, #9
	ldrb r1, [r1]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	movs r4, #0
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldrb r0, [r5, #0xd]
	cmp r0, #0xf
	bne _080CE0C4
	movs r0, #0x86
	bl PlaySong
_080CE0C4:
	ldrb r2, [r5, #0xd]
	cmp r2, #0xe
	bhi _080CE0D2
	ldr r0, [r5, #0x4c]
	ldr r1, [r5, #0x54]
	adds r0, r0, r1
	str r0, [r5, #0x4c]
_080CE0D2:
	subs r0, r2, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080CE132
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r5, #0x54]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	b _080CE132
_080CE0EC:
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x54]
	adds r1, r1, r0
	str r1, [r5, #0x4c]
	cmp r1, #0
	ble _080CE132
	movs r0, #0xff
	strb r0, [r5, #0xb]
	movs r0, #0
	strb r0, [r5, #0xc]
	b _080CE132
_080CE108:
	ldrb r1, [r5, #0xc]
	cmp r1, #0
	bne _080CE118
	movs r0, #0x28
	strb r0, [r5, #0xd]
	adds r0, r1, #1
	strb r0, [r5, #0xc]
	b _080CE132
_080CE118:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	movs r1, #0
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080CE132
	strb r1, [r5, #0xd]
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
_080CE132:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CE13C
sub_080CE13C: @ 0x080CE13C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080CE164 @ =0x08528BF4
	mov r8, r0
	ldrb r0, [r5, #0x13]
	lsls r0, r0, #3
	mov r1, r8
	adds r6, r0, r1
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	beq _080CE182
	cmp r0, #1
	bgt _080CE168
	cmp r0, #0
	beq _080CE172
	b _080CE25E
	.align 2, 0
_080CE164: .4byte 0x08528BF4
_080CE168:
	cmp r0, #2
	beq _080CE1D2
	cmp r0, #5
	beq _080CE242
	b _080CE25E
_080CE172:
	strb r0, [r5, #0x13]
	mov r6, r8
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0x86
	bl PlaySong
_080CE182:
	ldrh r0, [r6, #6]
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #0
	ldrsh r2, [r6, r0]
	ldrh r1, [r5, #0x18]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	cmp r7, #0
	beq _080CE19E
	rsbs r2, r2, #0
_080CE19E:
	lsls r2, r2, #0x10
	adds r0, r2, #0
	adds r1, r4, #0
	bl __divsi3
	str r0, [r5, #0x48]
	movs r1, #2
	ldrsh r0, [r6, r1]
	lsls r0, r0, #0x10
	adds r1, r4, #0
	bl __divsi3
	str r0, [r5, #0x4c]
	movs r2, #4
	ldrsh r0, [r6, r2]
	adds r1, r4, #0
	bl __divsi3
	strh r0, [r5, #0x1e]
	cmp r7, #0
	bne _080CE1CC
	rsbs r0, r0, #0
	strh r0, [r5, #0x1e]
_080CE1CC:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
_080CE1D2:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldrh r0, [r5, #0x1e]
	ldrh r1, [r5, #0x1c]
	adds r0, r0, r1
	movs r4, #0
	strh r0, [r5, #0x1c]
	movs r2, #0x1c
	ldrsh r0, [r5, r2]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r5, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080CE25E
	ldrb r0, [r5, #0x13]
	adds r0, #1
	strb r0, [r5, #0x13]
	ldrb r0, [r5, #0x13]
	lsls r0, r0, #3
	add r0, r8
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _080CE234 @ =0x00007FFF
	cmp r1, r0
	bne _080CE238
	movs r0, #5
	b _080CE23A
	.align 2, 0
_080CE234: .4byte 0x00007FFF
_080CE238:
	movs r0, #1
_080CE23A:
	strb r0, [r5, #0xb]
	movs r0, #0
	strb r0, [r5, #0xd]
	b _080CE25E
_080CE242:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x28
	bls _080CE25E
	movs r1, #0
	strb r1, [r5, #0xd]
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
	strb r1, [r5, #0x13]
_080CE25E:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CE26C
sub_080CE26C: @ 0x080CE26C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _080CE2A8 @ =gEwramData
	ldr r4, [r0]
	ldr r0, _080CE2AC @ =0x0000A094
	adds r4, r4, r0
	adds r0, r6, #0
	bl sub_0806CD38
	adds r5, r0, #0
	ldr r0, [r4, #4]
	adds r5, r5, r0
	adds r0, r6, #0
	bl sub_0806CD78
	ldr r1, [r4, #8]
	adds r0, r0, r1
	ldr r1, _080CE2B0 @ =0xFFE00000
	adds r4, r0, r1
	adds r0, r6, #0
	bl sub_080021C8
	subs r5, r5, r0
	cmp r5, #0
	bge _080CE2B4
	adds r0, r6, #0
	bl sub_080021C8
	b _080CE2BA
	.align 2, 0
_080CE2A8: .4byte gEwramData
_080CE2AC: .4byte 0x0000A094
_080CE2B0: .4byte 0xFFE00000
_080CE2B4:
	adds r0, r6, #0
	bl sub_080021C8
_080CE2BA:
	adds r0, r6, #0
	bl sub_080021E4
	subs r0, r4, r0
	cmp r0, #0
	bge _080CE2CE
	adds r0, r6, #0
	bl sub_080021E4
	b _080CE2D4
_080CE2CE:
	adds r0, r6, #0
	bl sub_080021E4
_080CE2D4:
	ldrb r0, [r6, #0xb]
	adds r5, r6, #0
	adds r5, #0x58
	cmp r0, #4
	bls _080CE2E0
	b _080CE402
_080CE2E0:
	lsls r0, r0, #2
	ldr r1, _080CE2EC @ =_080CE2F0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080CE2EC: .4byte _080CE2F0
_080CE2F0: @ jump table
	.4byte _080CE304 @ case 0
	.4byte _080CE332 @ case 1
	.4byte _080CE3DA @ case 2
	.4byte _080CE3F4 @ case 3
	.4byte _080CE3F4 @ case 4
_080CE304:
	movs r0, #0
	str r0, [r6, #0x54]
	str r0, [r6, #0x50]
	str r0, [r6, #0x4c]
	str r0, [r6, #0x48]
	movs r3, #0x80
	lsls r3, r3, #5
	strh r3, [r6, #0x1e]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	bne _080CE328
	rsbs r0, r3, #0
	strh r0, [r6, #0x1e]
_080CE328:
	movs r0, #0
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
_080CE332:
	ldrb r0, [r6, #0xd]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080CE342
	movs r0, #0x85
	bl PlaySong
_080CE342:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x40
	bls _080CE402
	movs r0, #0
	strh r0, [r6, #0x1e]
	adds r0, r6, #0
	bl sub_0806BAC8
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	strh r0, [r6, #0x1c]
	movs r1, #0x1c
	ldrsh r0, [r6, r1]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	bl sub_080009E4
	movs r4, #0x80
	lsls r4, r4, #0xa
	adds r1, r4, #0
	bl sub_0803E86C
	str r0, [r6, #0x48]
	movs r1, #0x1c
	ldrsh r0, [r6, r1]
	movs r1, #0xc0
	lsls r1, r1, #8
	adds r0, r0, r1
	bl sub_080009E4
	adds r1, r4, #0
	bl sub_0803E86C
	str r0, [r6, #0x4c]
	adds r0, r6, #0
	bl sub_0806CD38
	ldr r1, [r6, #0x40]
	subs r0, r0, r1
	ldr r1, [r6, #0x48]
	bl __divsi3
	cmp r0, #0
	bge _080CE3BA
	adds r0, r6, #0
	bl sub_0806CD38
	ldr r1, [r6, #0x40]
	subs r0, r0, r1
	ldr r1, [r6, #0x48]
	bl __divsi3
	rsbs r0, r0, #0
	b _080CE3CA
_080CE3BA:
	adds r0, r6, #0
	bl sub_0806CD38
	ldr r1, [r6, #0x40]
	subs r0, r0, r1
	ldr r1, [r6, #0x48]
	bl __divsi3
_080CE3CA:
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	movs r0, #0x86
	bl PlaySong
	b _080CE402
_080CE3DA:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r5, r6, #0
	adds r5, #0x58
	cmp r1, #0
	bne _080CE402
	movs r0, #3
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xd]
	b _080CE402
_080CE3F4:
	movs r1, #0
	movs r0, #1
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xc]
	strb r1, [r6, #0xb]
	adds r5, r6, #0
	adds r5, #0x58
_080CE402:
	ldr r0, [r6, #0x40]
	ldr r2, [r6, #0x48]
	adds r0, r0, r2
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x44]
	ldr r1, [r6, #0x4c]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	ldr r0, [r6, #0x50]
	adds r2, r2, r0
	str r2, [r6, #0x48]
	ldr r0, [r6, #0x54]
	adds r1, r1, r0
	str r1, [r6, #0x4c]
	ldrh r0, [r6, #0x1e]
	ldrh r1, [r6, #0x1c]
	adds r0, r0, r1
	movs r4, #0
	strh r0, [r6, #0x1c]
	movs r1, #0x1c
	ldrsh r0, [r6, r1]
	movs r2, #0x80
	lsls r2, r2, #9
	ldrb r1, [r5]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080CE44C
sub_080CE44C: @ 0x080CE44C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	bl sub_0803B998
	mov sb, r0
	adds r2, r6, #0
	adds r2, #0x64
	ldr r0, _080CE490 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _080CE494 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r5, [r1]
	mov r8, r5
	ldr r2, _080CE498 @ =sub_080CEEE8
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	bne _080CE49C
	movs r0, #0
	b _080CE582
	.align 2, 0
_080CE490: .4byte gEwramData
_080CE494: .4byte 0x0001017C
_080CE498: .4byte sub_080CEEE8
_080CE49C:
	cmp r5, #0
	beq _080CE4AC
	movs r0, #1
	bl sub_0803E654
	adds r7, r0, #0
	cmp r7, #0
	bge _080CE4B6
_080CE4AC:
	adds r0, r4, #0
	bl EntityDelete
	movs r0, #0
	b _080CE582
_080CE4B6:
	adds r0, r6, #0
	adds r0, #0x5a
	ldrb r3, [r0]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1c
	adds r0, r4, #0
	mov r1, r8
	mov r2, sb
	bl sub_0803B924
	adds r0, r6, #0
	adds r0, #0x65
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x65
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	subs r1, #9
	strb r0, [r1]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x44]
	movs r0, #0x59
	adds r0, r0, r4
	mov ip, r0
	ldrb r0, [r0]
	movs r2, #2
	orrs r0, r2
	mov r1, ip
	strb r0, [r1]
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r5, r4, #0
	adds r5, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r5]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	ldr r0, _080CE594 @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r0, [r0]
	movs r1, #0x10
	ands r1, r0
	mov r0, ip
	ldrb r2, [r0]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080CE578
	movs r0, #0x1f
	ands r7, r0
	ldrb r0, [r5]
	movs r3, #0x20
	rsbs r3, r3, #0
	ands r3, r0
	orrs r3, r7
	strb r3, [r5]
	movs r2, #0x1c
	ldrsh r0, [r6, r2]
	movs r2, #0x80
	lsls r2, r2, #9
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1f
	movs r1, #0
	str r1, [sp]
	ldrb r1, [r5]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
_080CE578:
	ldrb r0, [r6, #0x10]
	strb r0, [r4, #0x11]
	mov r0, sl
	strb r0, [r4, #0xd]
	adds r0, r4, #0
_080CE582:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080CE594: .4byte sub_0803B9D0

	thumb_func_start sub_080CE598
sub_080CE598: @ 0x080CE598
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	beq _080CE5FA
	cmp r0, #1
	bgt _080CE5AE
	cmp r0, #0
	beq _080CE5BA
	b _080CE750
_080CE5AE:
	cmp r0, #2
	beq _080CE686
	cmp r0, #3
	bne _080CE5B8
	b _080CE724
_080CE5B8:
	b _080CE750
_080CE5BA:
	strb r0, [r5, #0x13]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	ldr r3, _080CE66C @ =0xFFFC0000
	str r3, [r5, #0x48]
	ldr r0, _080CE670 @ =0xFFFE0000
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r5, #0x54]
	ldr r2, _080CE674 @ =0x0000F880
	strh r2, [r5, #0x1e]
	movs r0, #0x10
	strb r0, [r5, #0xd]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080CE5EE
	rsbs r0, r3, #0
	str r0, [r5, #0x48]
	rsbs r0, r2, #0
	strh r0, [r5, #0x1e]
_080CE5EE:
	ldr r0, _080CE678 @ =0x000001BB
	bl PlaySong
	movs r0, #0x86
	bl PlaySong
_080CE5FA:
	adds r0, r5, #0
	movs r1, #5
	bl sub_080CE44C
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x54]
	adds r1, r1, r0
	str r1, [r5, #0x4c]
	ldrh r0, [r5, #0x1e]
	ldrh r1, [r5, #0x1c]
	adds r0, r0, r1
	movs r6, #0
	movs r4, #0
	strh r0, [r5, #0x1c]
	movs r3, #0x1c
	ldrsh r0, [r5, r3]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r5, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080CE654
	b _080CE750
_080CE654:
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r5, #0
	movs r1, #0x80
	bl sub_080CEE50
	cmp r0, #0
	beq _080CE67C
	ldrb r0, [r5, #0xb]
	adds r0, #1
	b _080CE680
	.align 2, 0
_080CE66C: .4byte 0xFFFC0000
_080CE670: .4byte 0xFFFE0000
_080CE674: .4byte 0x0000F880
_080CE678: .4byte 0x000001BB
_080CE67C:
	ldrb r0, [r5, #0xb]
	adds r0, #2
_080CE680:
	strb r0, [r5, #0xb]
	strb r6, [r5, #0xc]
	b _080CE750
_080CE686:
	ldrb r1, [r5, #0xc]
	cmp r1, #0
	beq _080CE692
	cmp r1, #1
	beq _080CE6A6
	b _080CE750
_080CE692:
	movs r0, #0xa0
	lsls r0, r0, #3
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r5, #0x54]
	strb r1, [r5, #0xd]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
_080CE6A6:
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldrb r0, [r5, #0xd]
	cmp r0, #0xa
	bne _080CE6BA
	movs r0, #0x86
	bl PlaySong
_080CE6BA:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa
	bls _080CE6D0
	ldr r0, [r5, #0x4c]
	ldr r1, [r5, #0x54]
	adds r0, r0, r1
	str r0, [r5, #0x4c]
_080CE6D0:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_0806DF40
	cmp r0, #0
	bne _080CE70E
	adds r0, r5, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _080CE71C @ =gEwramData
	ldr r2, [r1]
	ldr r3, _080CE720 @ =0x0000A094
	adds r2, r2, r3
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x46
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	adds r1, #8
	bl sub_08001D94
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080CE750
_080CE70E:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xc]
	b _080CE750
	.align 2, 0
_080CE71C: .4byte gEwramData
_080CE720: .4byte 0x0000A094
_080CE724:
	ldrb r1, [r5, #0xc]
	cmp r1, #0
	bne _080CE734
	movs r0, #0x28
	strb r0, [r5, #0xd]
	adds r0, r1, #1
	strb r0, [r5, #0xc]
	b _080CE750
_080CE734:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	movs r1, #0
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080CE750
	strb r1, [r5, #0xd]
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
	strb r1, [r5, #0x13]
_080CE750:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080CE758
sub_080CE758: @ 0x080CE758
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r2, _080CE784 @ =gEwramData
	ldrb r1, [r4, #0x12]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080CE788 @ =0x000004E4
	adds r0, r0, r1
	ldr r2, [r2]
	adds r0, r0, r2
	mov r8, r0
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _080CE7C0
	cmp r0, #1
	bgt _080CE78C
	cmp r0, #0
	beq _080CE792
	b _080CE842
	.align 2, 0
_080CE784: .4byte gEwramData
_080CE788: .4byte 0x000004E4
_080CE78C:
	cmp r0, #2
	beq _080CE826
	b _080CE842
_080CE792:
	strb r0, [r4, #0xd]
	strh r0, [r4, #0x1a]
	ldr r1, _080CE7AC @ =0x00013110
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r4, #0x40]
	cmp r1, r0
	bge _080CE7B0
	ldrh r0, [r4, #0x18]
	movs r1, #8
	orrs r0, r1
	b _080CE7B8
	.align 2, 0
_080CE7AC: .4byte 0x00013110
_080CE7B0:
	ldrh r1, [r4, #0x18]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
_080CE7B8:
	strh r0, [r4, #0x18]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080CE7C0:
	movs r7, #0xd0
	lsls r7, r7, #8
	movs r5, #0x80
	lsls r5, r5, #0xa
	ldrh r6, [r4, #0x1a]
	ldrh r1, [r4, #0x18]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080CE7D6
	rsbs r5, r5, #0
_080CE7D6:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r7, r2
	bl sub_080009E4
	asrs r1, r5, #8
	asrs r0, r0, #8
	muls r1, r0, r1
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	adds r0, r7, #0
	bl sub_080009E4
	movs r1, #0xc0
	lsls r1, r1, #9
	asrs r1, r1, #8
	asrs r0, r0, #8
	adds r2, r0, #0
	muls r2, r1, r2
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xf0
	lsls r1, r1, #4
	muls r0, r1, r0
	adds r2, r2, r0
	ldr r0, [r4, #0x44]
	adds r0, r0, r2
	str r0, [r4, #0x44]
	ldrh r0, [r4, #0x1a]
	adds r0, #1
	strh r0, [r4, #0x1a]
	mov r1, r8
	ldrb r0, [r1, #0xa]
	cmp r0, #4
	bne _080CE842
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	b _080CE842
_080CE826:
	mov r2, r8
	ldrb r1, [r2, #0xa]
	cmp r1, #0
	bne _080CE842
	movs r2, #0x34
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bgt _080CE83A
	movs r0, #0xff
	b _080CE83C
_080CE83A:
	movs r0, #1
_080CE83C:
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080CE842:
	movs r1, #0x34
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _080CE852
	ldrh r1, [r4, #0x18]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r4, #0x18]
_080CE852:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080CE85C
sub_080CE85C: @ 0x080CE85C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldrb r4, [r6, #0xb]
	cmp r4, #1
	beq _080CE8A8
	cmp r4, #1
	bgt _080CE878
	cmp r4, #0
	beq _080CE87E
	b _080CE9D0
_080CE878:
	cmp r4, #2
	beq _080CE95C
	b _080CE9D0
_080CE87E:
	movs r0, #0x6e
	bl PlaySong
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
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	strb r4, [r6, #0xc]
_080CE8A8:
	ldrb r0, [r6, #0xc]
	cmp r0, #1
	beq _080CE8C8
	cmp r0, #1
	bgt _080CE8B8
	cmp r0, #0
	beq _080CE8BE
	b _080CE9D0
_080CE8B8:
	cmp r0, #2
	beq _080CE950
	b _080CE9D0
_080CE8BE:
	movs r0, #0xa
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xc]
	adds r0, #1
	strb r0, [r6, #0xc]
_080CE8C8:
	movs r0, #0x1c
	ldrsh r5, [r6, r0]
	movs r1, #0xc0
	lsls r1, r1, #8
	adds r5, r5, r1
	ldr r0, _080CE94C @ =0x0000FFFF
	ands r5, r0
	ldrb r1, [r6, #0xd]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #0xe
	movs r4, #0xa8
	lsls r4, r4, #0xe
	subs r4, r4, r0
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r5, r2
	bl sub_080009E4
	adds r1, r4, #0
	bl sub_0803E86C
	mov sb, r0
	adds r0, r5, #0
	bl sub_080009E4
	adds r1, r4, #0
	bl sub_0803E86C
	mov r8, r0
	adds r7, r6, #0
	adds r7, #0x5c
	movs r5, #0x80
	lsls r5, r5, #0xd
	movs r4, #2
_080CE912:
	ldr r0, [r6, #0x40]
	add r0, sb
	ldr r1, [r6, #0x44]
	add r1, r8
	movs r2, #0xc0
	lsls r2, r2, #0xb
	adds r1, r1, r2
	ldrb r2, [r7]
	subs r2, #1
	str r2, [sp]
	adds r2, r5, #0
	adds r3, r5, #0
	bl sub_0806D5C0
	subs r4, #1
	cmp r4, #0
	bge _080CE912
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080CE9D0
	ldrb r0, [r6, #0xc]
	adds r0, #1
	strb r0, [r6, #0xc]
	b _080CE9D0
	.align 2, 0
_080CE94C: .4byte 0x0000FFFF
_080CE950:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xc]
	b _080CE9D0
_080CE95C:
	ldrb r1, [r6, #0xc]
	cmp r1, #0
	bne _080CE976
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r6, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r6, #0x54]
	movs r0, #0x40
	strb r0, [r6, #0xd]
	adds r0, r1, #1
	strb r0, [r6, #0xc]
_080CE976:
	ldr r0, [r6, #0x44]
	ldr r1, [r6, #0x4c]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	ldr r0, [r6, #0x54]
	adds r1, r1, r0
	str r1, [r6, #0x4c]
	adds r0, r6, #0
	adds r0, #0x46
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0xaa
	bgt _080CE99E
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x40
	bls _080CE9D0
_080CE99E:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r1, r6, #0
	adds r1, #0x59
	ldrb r0, [r1]
	movs r3, #8
	orrs r0, r3
	strb r0, [r1]
	ldrb r1, [r6, #0x12]
	ldr r0, _080CE9E0 @ =gEwramData
	ldr r2, [r0]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r2, _080CE9E4 @ =0x0000053D
	adds r0, r0, r2
	ldrb r1, [r0]
	orrs r1, r3
	strb r1, [r0]
_080CE9D0:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080CE9E0: .4byte gEwramData
_080CE9E4: .4byte 0x0000053D

	thumb_func_start sub_080CE9E8
sub_080CE9E8: @ 0x080CE9E8
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
	ldrh r0, [r6, #0x34]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	strh r0, [r6, #0x34]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08042B8C
	adds r1, r6, #0
	adds r1, #0x2d
	movs r0, #8
	strb r0, [r1]
	adds r2, r6, #0
	adds r2, #0x24
	ldrb r1, [r2]
	cmp r1, #0
	beq _080CEA3A
	movs r3, #0x34
	ldrsh r0, [r6, r3]
	cmp r0, #0
	ble _080CEA42
	subs r0, r1, #1
	strb r0, [r2]
	b _080CEA88
_080CEA3A:
	movs r1, #0x34
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bgt _080CEA50
_080CEA42:
	adds r0, r6, #0
	bl sub_080683BC
	movs r0, #0xdf
	lsls r0, r0, #1
	bl PlaySong
_080CEA50:
	ldrb r1, [r6, #0x12]
	ldr r3, _080CEA9C @ =gEwramData
	ldr r2, [r3]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r4, _080CEAA0 @ =0x000004E4
	adds r0, r0, r4
	movs r2, #0
	movs r5, #3
	strb r5, [r0, #0xa]
	ldrb r1, [r6, #0x12]
	ldr r3, [r3]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	adds r0, r0, r4
	strb r2, [r0, #0xc]
	strb r2, [r0, #0xb]
	movs r0, #7
	strb r0, [r6, #0xa]
	strb r2, [r6, #0xc]
	strb r2, [r6, #0xb]
	adds r0, r6, #0
	adds r0, #0x24
	strb r5, [r0]
_080CEA88:
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080CEA9C: .4byte gEwramData
_080CEAA0: .4byte 0x000004E4

	thumb_func_start sub_080CEAA4
sub_080CEAA4: @ 0x080CEAA4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldr r7, _080CEB34 @ =0x0820BFE0
	ldr r0, _080CEB38 @ =0x0824FEE0
	mov r8, r0
	ldr r4, _080CEB3C @ =0x081F4294
	ldr r0, _080CEB40 @ =sub_080CEB58
	mov sb, r0
	movs r0, #0x49
	movs r1, #0xcf
	mov r2, sb
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	beq _080CEB48
	adds r0, r4, #0
	bl sub_0803AFB8
	adds r4, r0, #0
	adds r0, r7, #0
	bl sub_080681D8
	adds r3, r0, #0
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r0, r5, #0
	mov r1, r8
	adds r2, r4, #0
	bl sub_0803B924
	cmp r0, #0
	beq _080CEB48
	ldrb r0, [r6, #0x10]
	movs r2, #0
	strb r0, [r5, #0x11]
	ldrb r0, [r5, #0x10]
	strb r0, [r6, #0x12]
	adds r3, r5, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _080CEB44 @ =sub_0803B9D0
	str r0, [r5, #4]
	subs r3, #1
	ldrb r0, [r3]
	orrs r0, r1
	strb r0, [r3]
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #2
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r2, [r5, #0xc]
	strb r2, [r5, #0xb]
	adds r0, r5, #0
	bl _call_via_r9
	movs r0, #1
	b _080CEB4A
	.align 2, 0
_080CEB34: .4byte 0x0820BFE0
_080CEB38: .4byte 0x0824FEE0
_080CEB3C: .4byte 0x081F4294
_080CEB40: .4byte sub_080CEB58
_080CEB44: .4byte sub_0803B9D0
_080CEB48:
	movs r0, #0
_080CEB4A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080CEB58
sub_080CEB58: @ 0x080CEB58
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _080CEB8C @ =gEwramData
	ldrb r1, [r4, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080CEB90 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r5, r1, r0
	adds r0, r4, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _080CEB7A
	b _080CED88
_080CEB7A:
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bls _080CEB82
	b _080CED88
_080CEB82:
	lsls r0, r0, #2
	ldr r1, _080CEB94 @ =_080CEB98
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080CEB8C: .4byte gEwramData
_080CEB90: .4byte 0x000004E4
_080CEB94: .4byte _080CEB98
_080CEB98: @ jump table
	.4byte _080CEBB0 @ case 0
	.4byte _080CEBBE @ case 1
	.4byte _080CEBE4 @ case 2
	.4byte _080CEC64 @ case 3
	.4byte _080CED04 @ case 4
	.4byte _080CED54 @ case 5
_080CEBB0:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	b _080CED88
_080CEBBE:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	adds r0, r4, #0
	bl sub_0806BC40
	b _080CED88
_080CEBE4:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080CEBF0
	cmp r0, #1
	beq _080CEC1A
	b _080CED88
_080CEBF0:
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	adds r0, r4, #0
	bl sub_0806BC40
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #1
	strb r0, [r1]
	movs r0, #0xa
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080CEC1A:
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080CEC38
	ldr r0, [r5, #0x40]
	movs r1, #0xc0
	lsls r1, r1, #0xb
	b _080CEC3C
_080CEC38:
	ldr r0, [r5, #0x40]
	ldr r1, _080CEC60 @ =0xFFFA0000
_080CEC3C:
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	movs r1, #0xa0
	lsls r1, r1, #0xc
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldrb r0, [r4, #0xd]
	subs r0, #1
	movs r1, #0
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080CEC5C
	b _080CED88
_080CEC5C:
	b _080CECF6
	.align 2, 0
_080CEC60: .4byte 0xFFFA0000
_080CEC64:
	ldrb r2, [r4, #0xb]
	cmp r2, #0
	beq _080CEC70
	cmp r2, #1
	beq _080CECBC
	b _080CED88
_080CEC70:
	adds r3, r4, #0
	adds r3, #0x58
	ldrb r1, [r3]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #2
	strb r0, [r1]
	strb r2, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	ldr r0, _080CECAC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080CECB0 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r5, #0x40]
	cmp r1, r0
	bge _080CECB4
	ldrb r1, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	b _080CECBA
	.align 2, 0
_080CECAC: .4byte gEwramData
_080CECB0: .4byte 0x00013110
_080CECB4:
	ldrb r0, [r3]
	movs r1, #0x40
	orrs r0, r1
_080CECBA:
	strb r0, [r3]
_080CECBC:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080CECD4
	ldr r0, [r5, #0x40]
	ldr r1, _080CECD0 @ =0xFFF60000
	b _080CECDA
	.align 2, 0
_080CECD0: .4byte 0xFFF60000
_080CECD4:
	ldr r0, [r5, #0x40]
	movs r1, #0xa0
	lsls r1, r1, #0xc
_080CECDA:
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, _080CED00 @ =0xFFFC0000
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x27
	bls _080CED88
	movs r1, #0
_080CECF6:
	movs r0, #4
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	b _080CED88
	.align 2, 0
_080CED00: .4byte 0xFFFC0000
_080CED04:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080CED10
	cmp r0, #1
	beq _080CED18
	b _080CED88
_080CED10:
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080CED18:
	ldrb r0, [r4, #0xd]
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r0, r0, #0
	adds r3, r4, #0
	adds r3, #0x58
	lsrs r0, r0, #0x1f
	lsls r0, r0, #5
	ldrb r2, [r3]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bls _080CED88
	movs r0, #0
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xb]
	strb r0, [r4, #0xd]
	b _080CED88
_080CED54:
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r0, #0xc
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080CED7A
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, #0xe
	b _080CED82
_080CED7A:
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0xe
_080CED82:
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
_080CED88:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CED90
sub_080CED90: @ 0x080CED90
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r2, _080CEDC0 @ =gEwramData
	ldrb r1, [r4, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080CEDC4 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r5, r1, r0
	add r1, sp, #4
	mov r0, sp
	adds r2, r5, #0
	bl sub_08042030
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080CEDC8
	cmp r0, #1
	beq _080CEDF0
	b _080CEE1A
	.align 2, 0
_080CEDC0: .4byte gEwramData
_080CEDC4: .4byte 0x000004E4
_080CEDC8:
	ldr r0, _080CEE24 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _080CEE28 @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #7
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _080CEE2C @ =sub_0803B9D0
	str r0, [r4, #4]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_080CEDF0:
	adds r1, r5, #0
	adds r1, #0x42
	mov r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r2, r5, #0
	adds r2, #0x46
	mov r0, sp
	movs r1, #1
	ldrsb r1, [r0, r1]
	ldrh r0, [r2]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
_080CEE1A:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080CEE24: .4byte 0x081C15F4
_080CEE28: .4byte 0x0820ED60
_080CEE2C: .4byte sub_0803B9D0

	thumb_func_start sub_080CEE30
sub_080CEE30: @ 0x080CEE30
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xb]
	cmp r0, #0
	bne _080CEE4A
	adds r2, r1, #0
	adds r2, #0x46
	ldrh r0, [r2]
	subs r0, #0x10
	strh r0, [r2]
	ldrb r0, [r1, #0xb]
	adds r0, #1
	strb r0, [r1, #0xb]
_080CEE4A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CEE50
sub_080CEE50: @ 0x080CEE50
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r3, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r1, _080CEE94 @ =gEwramData
	ldr r1, [r1]
	ldr r2, _080CEE98 @ =0x00013168
	adds r1, r1, r2
	ldr r6, [r1]
	adds r1, r0, #0
	adds r1, #0x42
	lsrs r4, r4, #0x11
	ldrh r1, [r1]
	subs r1, r1, r4
	adds r0, #0x46
	ldrh r2, [r0]
	adds r2, #0x28
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r5, [sp]
	adds r0, r6, #0
	bl sub_08068AD4
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080CEE94: .4byte gEwramData
_080CEE98: .4byte 0x00013168

	thumb_func_start sub_080CEE9C
sub_080CEE9C: @ 0x080CEE9C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r3, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r1, _080CEEE0 @ =gEwramData
	ldr r1, [r1]
	ldr r2, _080CEEE4 @ =0x00013168
	adds r1, r1, r2
	ldr r6, [r1]
	adds r1, r0, #0
	adds r1, #0x42
	lsrs r4, r4, #0x11
	ldrh r1, [r1]
	subs r1, r1, r4
	adds r0, #0x46
	ldrh r2, [r0]
	subs r2, r2, r5
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r5, [sp]
	adds r0, r6, #0
	bl sub_08068AD4
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080CEEE0: .4byte gEwramData
_080CEEE4: .4byte 0x00013168

	thumb_func_start sub_080CEEE8
sub_080CEEE8: @ 0x080CEEE8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CEF2C @ =gEwramData
	ldrb r1, [r4, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080CEF30 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r1, r1, r0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080CEF12
	ldr r0, [r1]
	cmp r0, #0
	bne _080CEF26
_080CEF12:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r4, #0
	bl EntityDelete
_080CEF26:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CEF2C: .4byte gEwramData
_080CEF30: .4byte 0x000004E4

	thumb_func_start EnemyMandragoraCreate
EnemyMandragoraCreate: @ 0x080CEF34
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _080CEF84 @ =0x0820C004
	ldr r0, _080CEF88 @ =0x08250E94
	ldr r1, _080CEF8C @ =0x081F429C
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080CEFC4
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _080CEF90 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _080CEF94
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	b _080CEFE0
	.align 2, 0
_080CEF84: .4byte 0x0820C004
_080CEF88: .4byte 0x08250E94
_080CEF8C: .4byte 0x081F429C
_080CEF90: .4byte gEwramData
_080CEF94:
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0806B04C
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	ldr r1, _080CEFCC @ =sub_0806E1B8
	ldr r2, _080CEFD0 @ =sub_080CFA4C
	adds r0, r4, #0
	bl sub_0806D244
	adds r0, r4, #0
	bl sub_0806AF98
	adds r0, r4, #0
	bl sub_080CEFE8
	cmp r0, #0
	bne _080CEFD4
_080CEFC4:
	adds r0, r4, #0
	bl EntityDelete
	b _080CEFE0
	.align 2, 0
_080CEFCC: .4byte sub_0806E1B8
_080CEFD0: .4byte sub_080CFA4C
_080CEFD4:
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
_080CEFE0:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080CEFE8
sub_080CEFE8: @ 0x080CEFE8
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _080CF0C0 @ =sub_080CF0E4
	bl sub_0806DFF8
	adds r6, r0, #0
	cmp r6, #0
	beq _080CF0DA
	ldrb r0, [r7, #0x10]
	strb r0, [r6, #0x11]
	ldrb r0, [r6, #0x10]
	strb r0, [r7, #0x12]
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r6, #0
	adds r1, #0x5c
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	adds r5, r6, #0
	adds r5, #0x2c
	strb r0, [r5]
	adds r0, r7, #0
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
	ldr r0, [r7, #0x40]
	str r0, [r6, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r6, #0x44]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x37
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x37
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	subs r1, #1
	strb r0, [r1]
	ldrh r0, [r7, #0x34]
	strh r0, [r6, #0x34]
	ldrh r0, [r7, #0x2e]
	strh r0, [r6, #0x2e]
	adds r0, r7, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x3c
	strb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x3d
	strb r0, [r1]
	ldr r0, _080CF0C4 @ =sub_0803B9D0
	str r0, [r6, #4]
	ldr r4, _080CF0C8 @ =0x08250E94
	adds r0, r7, #0
	bl sub_0803B998
	adds r2, r0, #0
	ldrb r3, [r5]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0803B924
	adds r0, r6, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	ldr r1, _080CF0CC @ =sub_0806E1B8
	ldr r2, _080CF0D0 @ =sub_080CF9FC
	adds r0, r6, #0
	bl sub_0806D244
	adds r0, r6, #0
	bl sub_080CF2B8
	cmp r0, #0
	beq _080CF0D4
	movs r0, #1
	b _080CF0DC
	.align 2, 0
_080CF0C0: .4byte sub_080CF0E4
_080CF0C4: .4byte sub_0803B9D0
_080CF0C8: .4byte 0x08250E94
_080CF0CC: .4byte sub_0806E1B8
_080CF0D0: .4byte sub_080CF9FC
_080CF0D4:
	adds r0, r6, #0
	bl EntityDelete
_080CF0DA:
	movs r0, #0
_080CF0DC:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080CF0E4
sub_080CF0E4: @ 0x080CF0E4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _080CF11C @ =gEwramData
	ldrb r1, [r4, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _080CF120 @ =0x000004E4
	adds r0, r0, r3
	ldr r2, [r2]
	adds r5, r2, r0
	ldrb r1, [r4, #0x12]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	adds r6, r2, r0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080CF1A0
	cmp r0, #2
	bgt _080CF124
	cmp r0, #0
	beq _080CF12E
	cmp r0, #1
	beq _080CF154
	b _080CF28E
	.align 2, 0
_080CF11C: .4byte gEwramData
_080CF120: .4byte 0x000004E4
_080CF124:
	cmp r0, #0xf0
	beq _080CF1D4
	cmp r0, #0xf1
	beq _080CF1F6
	b _080CF28E
_080CF12E:
	ldrb r1, [r4, #0xb]
	adds r2, r1, #0
	cmp r2, #0
	beq _080CF138
	b _080CF28E
_080CF138:
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	adds r0, r1, #1
	strb r0, [r4, #0xb]
	strb r2, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	b _080CF28E
_080CF154:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080CF1BA
	adds r2, r5, #0
	adds r2, #0x20
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r5, #0x34]
	movs r5, #0
	strh r0, [r4, #0x34]
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #3
	beq _080CF182
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080CF182:
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x83
	bl PlaySong
_080CF1A0:
	ldrb r1, [r4, #0xb]
	cmp r1, #0
	bne _080CF1BA
	movs r0, #1
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xc]
	strb r1, [r6, #0xb]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
	movs r0, #0x20
	strb r0, [r4, #0xd]
_080CF1BA:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	movs r1, #0
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080CF28E
	movs r0, #0xf1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	b _080CF28E
_080CF1D4:
	movs r0, #0x70
	bl PlaySong
	adds r0, r5, #0
	bl sub_080683BC
	movs r1, #0
	movs r0, #0xf1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	adds r2, r5, #0
	adds r2, #0x20
	ldrb r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2]
_080CF1F6:
	ldrb r3, [r4, #0xb]
	cmp r3, #0
	bne _080CF224
	adds r2, r5, #0
	adds r2, #0x20
	ldrb r1, [r2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080CF210
	strb r3, [r6, #0xa]
	strb r3, [r6, #0xc]
	strb r3, [r6, #0xb]
_080CF210:
	ldrb r1, [r2]
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	strb r3, [r4, #0xc]
_080CF224:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #7
	bl __umodsi3
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080CF278
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080CF278
	ldr r2, _080CF2B0 @ =0xFFF80000
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080CF25A
	rsbs r2, r2, #0
_080CF25A:
	ldr r0, [r4, #0x40]
	adds r0, r0, r2
	ldr r1, [r4, #0x44]
	ldr r2, _080CF2B4 @ =0xFFEC0000
	adds r1, r1, r2
	movs r3, #0x80
	lsls r3, r3, #0xd
	adds r2, r4, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	adds r2, #1
	str r2, [sp]
	adds r2, r3, #0
	bl sub_0806D5C0
_080CF278:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080CF28E
	movs r0, #0
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xb]
_080CF28E:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080CF2A6
	adds r0, r4, #0
	bl sub_0803F17C
	ldrb r0, [r4, #0xa]
	cmp r0, #0xef
	bhi _080CF2A6
	adds r0, r4, #0
	bl sub_0806E314
_080CF2A6:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080CF2B0: .4byte 0xFFF80000
_080CF2B4: .4byte 0xFFEC0000

	thumb_func_start sub_080CF2B8
sub_080CF2B8: @ 0x080CF2B8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r0, _080CF39C @ =sub_080CF3BC
	bl sub_0806DFF8
	adds r7, r0, #0
	cmp r7, #0
	beq _080CF3B0
	mov r1, r8
	ldrb r0, [r1, #0x10]
	strb r0, [r7, #0x11]
	ldrb r0, [r7, #0x10]
	strb r0, [r1, #0x12]
	mov r0, r8
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r7, #0
	adds r1, #0x5c
	strb r0, [r1]
	mov r0, r8
	adds r0, #0x2c
	ldrb r0, [r0]
	adds r6, r7, #0
	adds r6, #0x2c
	strb r0, [r6]
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
	mov r1, r8
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x40]
	ldr r0, [r1, #0x44]
	str r0, [r7, #0x44]
	ldrh r0, [r1, #0x34]
	strh r0, [r7, #0x34]
	ldrh r0, [r1, #0x2e]
	strh r0, [r7, #0x2e]
	mov r0, r8
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x3c
	strb r1, [r0]
	mov r0, r8
	adds r0, #0x3d
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x3d
	strb r0, [r1]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r5, #2
	orrs r0, r5
	strb r0, [r2]
	ldr r0, _080CF3A0 @ =sub_0803B9D0
	str r0, [r7, #4]
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r4, _080CF3A4 @ =0x08250E94
	mov r0, r8
	bl sub_0803B998
	adds r2, r0, #0
	ldrb r3, [r6]
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r7, #0
	bl sub_0803F17C
	ldr r2, _080CF3A8 @ =sub_0806E1B8
	adds r0, r7, #0
	movs r1, #8
	movs r3, #0
	bl sub_0804277C
	ldr r0, _080CF3AC @ =0x08528CBC
	ldr r1, [r0]
	adds r0, r7, #0
	bl sub_08042884
	adds r2, r7, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r5
	strb r0, [r2]
	movs r0, #1
	b _080CF3B2
	.align 2, 0
_080CF39C: .4byte sub_080CF3BC
_080CF3A0: .4byte sub_0803B9D0
_080CF3A4: .4byte 0x08250E94
_080CF3A8: .4byte sub_0806E1B8
_080CF3AC: .4byte 0x08528CBC
_080CF3B0:
	movs r0, #0
_080CF3B2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080CF3BC
sub_080CF3BC: @ 0x080CF3BC
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	ldr r2, _080CF3F8 @ =gEwramData
	ldrb r1, [r7, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _080CF3FC @ =0x000004E4
	adds r0, r0, r3
	ldr r2, [r2]
	adds r5, r2, r0
	ldrb r1, [r5, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	adds r6, r2, r0
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080CF400
	bl sub_0803D270
	bl sub_0803CED4
	b _080CF5BC
	.align 2, 0
_080CF3F8: .4byte gEwramData
_080CF3FC: .4byte 0x000004E4
_080CF400:
	ldr r0, [r5]
	cmp r0, #0
	bne _080CF408
	b _080CF5BC
_080CF408:
	ldr r0, [r6]
	cmp r0, #0
	bne _080CF410
	b _080CF5BC
_080CF410:
	ldrb r0, [r7, #0xa]
	cmp r0, #2
	beq _080CF4E0
	cmp r0, #2
	bgt _080CF424
	cmp r0, #0
	beq _080CF430
	cmp r0, #1
	beq _080CF46A
	b _080CF5A4
_080CF424:
	cmp r0, #3
	beq _080CF520
	cmp r0, #0xf0
	bne _080CF42E
	b _080CF56C
_080CF42E:
	b _080CF5A4
_080CF430:
	ldrb r4, [r7, #0xb]
	cmp r4, #0
	beq _080CF438
	b _080CF5A4
_080CF438:
	bl sub_0803D270
	bl sub_0803CED4
	ldr r0, [r5, #0x40]
	str r0, [r7, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r7, #0x44]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	strb r4, [r7, #0xc]
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	adds r2, r6, #0
	adds r2, #0x20
	ldrb r1, [r2]
	movs r0, #0xef
	ands r0, r1
	strb r0, [r2]
	b _080CF5A4
_080CF46A:
	ldrb r4, [r7, #0xb]
	cmp r4, #0
	bne _080CF49C
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #4
	beq _080CF494
	adds r0, r7, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080CF494:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	strb r4, [r7, #0xc]
_080CF49C:
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080CF5A4
	movs r6, #0x80
	lsls r6, r6, #9
	movs r5, #0
	str r5, [sp]
	movs r4, #4
	str r4, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	adds r3, r6, #0
	bl sub_0803D18C
	str r5, [sp]
	str r4, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	adds r3, r6, #0
	bl sub_0803CDF0
	strb r4, [r7, #0xd]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	strb r5, [r7, #0xc]
	strb r5, [r7, #0xb]
	b _080CF5A4
_080CF4E0:
	ldrb r0, [r7, #0xd]
	adds r6, r0, #0
	cmp r6, #0
	beq _080CF4EE
	subs r0, #1
	strb r0, [r7, #0xd]
	b _080CF5A4
_080CF4EE:
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
	str r5, [sp]
	str r4, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	movs r3, #0
	bl sub_0803CDF0
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	strb r6, [r7, #0xc]
	strb r6, [r7, #0xb]
	b _080CF5A4
_080CF520:
	ldrb r4, [r7, #0xb]
	cmp r4, #0
	bne _080CF55A
	adds r0, r7, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #5
	beq _080CF53C
	adds r0, r7, #0
	movs r1, #5
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080CF53C:
	ldr r0, _080CF568 @ =0x08528CC0
	ldr r1, [r0]
	adds r0, r7, #0
	bl sub_08042884
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	strb r4, [r7, #0xc]
	adds r2, r6, #0
	adds r2, #0x20
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
_080CF55A:
	ldrb r0, [r5, #0xa]
	cmp r0, #0xef
	bls _080CF5A4
	movs r1, #0
	movs r0, #0xf0
	strb r0, [r7, #0xa]
	b _080CF5A0
	.align 2, 0
_080CF568: .4byte 0x08528CC0
_080CF56C:
	ldrb r1, [r7, #0xb]
	cmp r1, #0
	bne _080CF58E
	ldrb r2, [r5, #0xa]
	cmp r2, #0
	bne _080CF588
	movs r0, #2
	strb r0, [r7, #0xf]
	movs r0, #0x10
	strb r0, [r7, #0xd]
	adds r0, r1, #1
	strb r0, [r7, #0xb]
	strb r2, [r7, #0xc]
	b _080CF5A4
_080CF588:
	movs r0, #1
	strb r0, [r7, #0xf]
	b _080CF5A4
_080CF58E:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r1, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080CF5A4
	strb r1, [r7, #0xa]
_080CF5A0:
	strb r1, [r7, #0xc]
	strb r1, [r7, #0xb]
_080CF5A4:
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	beq _080CF5BC
	adds r0, r7, #0
	bl sub_0803F17C
	ldrb r0, [r7, #0xa]
	cmp r0, #0xf0
	beq _080CF5BC
	adds r0, r7, #0
	bl sub_0806E314
_080CF5BC:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080CF5C4
sub_080CF5C4: @ 0x080CF5C4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xb]
	cmp r5, #1
	beq _080CF5FA
	cmp r5, #1
	bgt _080CF5D8
	cmp r5, #0
	beq _080CF5DE
	b _080CF61C
_080CF5D8:
	cmp r5, #2
	beq _080CF614
	b _080CF61C
_080CF5DE:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CF5F4
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080CF5F4:
	movs r0, #1
	strb r0, [r4, #0xb]
	strb r5, [r4, #0xc]
_080CF5FA:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, #0
	movs r2, #0x80
	bl sub_0806E29C
	cmp r0, #0
	beq _080CF61C
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
	b _080CF61C
_080CF614:
	movs r0, #0
	strb r5, [r4, #0xa]
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xb]
_080CF61C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CF624
sub_080CF624: @ 0x080CF624
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _080CF648 @ =gEwramData
	ldr r2, [r0]
	ldrb r1, [r4, #0x12]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080CF64C @ =0x000004E4
	adds r0, r0, r1
	adds r6, r2, r0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080CF650
	cmp r0, #1
	beq _080CF6B0
	b _080CF742
	.align 2, 0
_080CF648: .4byte gEwramData
_080CF64C: .4byte 0x000004E4
_080CF650:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _080CF65C
	cmp r0, #1
	beq _080CF67C
	b _080CF742
_080CF65C:
	movs r0, #0x50
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _080CF676
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080CF676:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_080CF67C:
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	bne _080CF688
	ldr r0, _080CF6AC @ =0x00000119
	bl PlaySong
_080CF688:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _080CF692
	subs r0, #1
	strb r0, [r4, #0xd]
_080CF692:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080CF742
	movs r0, #0
	strb r0, [r4, #0xd]
	strb r2, [r4, #0xb]
	strb r0, [r4, #0xc]
	b _080CF742
	.align 2, 0
_080CF6AC: .4byte 0x00000119
_080CF6B0:
	ldrb r5, [r4, #0xc]
	cmp r5, #1
	beq _080CF6EC
	cmp r5, #1
	bgt _080CF6C0
	cmp r5, #0
	beq _080CF6C6
	b _080CF742
_080CF6C0:
	cmp r5, #2
	beq _080CF716
	b _080CF742
_080CF6C6:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #2
	beq _080CF6DC
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080CF6DC:
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	strb r5, [r6, #0xc]
	strb r5, [r6, #0xb]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_080CF6EC:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080CF742
	adds r2, r4, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0xa
	strb r0, [r1]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	b _080CF742
_080CF716:
	ldrb r0, [r6, #0xa]
	cmp r0, #2
	bne _080CF72A
	ldrb r0, [r6, #0xd]
	cmp r0, #7
	bhi _080CF72A
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0xa
	strb r0, [r1]
_080CF72A:
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r1, [r0]
	movs r0, #0x18
	ands r0, r1
	cmp r0, #0
	beq _080CF742
	movs r1, #0
	movs r0, #0xf0
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080CF742:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080CF748
sub_080CF748: @ 0x080CF748
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _080CF76C @ =gEwramData
	ldrb r1, [r4, #0x12]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080CF770 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r5, r1, r0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080CF774
	cmp r0, #1
	beq _080CF7BC
	b _080CF7FC
	.align 2, 0
_080CF76C: .4byte gEwramData
_080CF770: .4byte 0x000004E4
_080CF774:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
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
	adds r0, r4, #0
	bl sub_080CF804
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	adds r2, r4, #0
	adds r2, #0x20
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080CF7D8
	movs r0, #0x6b
	bl PlaySong
_080CF7BC:
	adds r2, r4, #0
	adds r2, #0x20
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080CF7D8
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	bne _080CF7FC
	adds r0, r4, #0
	bl sub_080CFA68
	b _080CF7FC
_080CF7D8:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080CF7FC
	ldrb r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080CF7FC
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	bne _080CF7FC
	adds r0, r4, #0
	bl sub_080CFA68
_080CF7FC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CF804
sub_080CF804: @ 0x080CF804
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	movs r0, #0
	mov sl, r0
	movs r1, #4
	mov sb, r1
_080CF818:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _080CF900 @ =sub_080CF910
	bl EntityCreateInRange
	adds r7, r0, #0
	cmp r7, #0
	beq _080CF8E0
	ldr r4, _080CF904 @ =0x08528CC4
	add r4, sl
	mov r3, r8
	ldrb r0, [r3, #0x13]
	adds r0, #1
	strb r0, [r3, #0x13]
	ldrb r0, [r3, #0x10]
	strb r0, [r7, #0x11]
	mov r0, r8
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x5c
	strb r1, [r0]
	mov r0, r8
	adds r0, #0x2c
	ldrb r0, [r0]
	adds r5, r7, #0
	adds r5, #0x2c
	strb r0, [r5]
	mov r0, r8
	adds r0, #0x58
	ldrb r0, [r0]
	adds r6, r7, #0
	adds r6, #0x58
	movs r2, #0x40
	ands r2, r0
	ldrb r0, [r6]
	movs r3, #0x41
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r6]
	mov r0, r8
	bl sub_0803B998
	adds r2, r0, #0
	ldrb r3, [r5]
	adds r0, r7, #0
	ldr r1, _080CF908 @ =0x08250E94
	bl sub_0803B924
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080CF90C @ =sub_0803B9D0
	str r0, [r7, #4]
	mov r1, r8
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x40]
	ldr r0, [r1, #0x44]
	str r0, [r7, #0x44]
	movs r2, #0
	ldrsb r2, [r4, r2]
	adds r1, r7, #0
	adds r1, #0x46
	movs r0, #1
	ldrsb r0, [r4, r0]
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	ldrb r0, [r4, #2]
	adds r1, #0x1f
	strb r0, [r1]
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r3, r0, #0xc
	str r3, [r7, #0x48]
	movs r0, #4
	ldrsb r0, [r4, r0]
	lsls r0, r0, #0xc
	rsbs r0, r0, #0
	str r0, [r7, #0x4c]
	ldrb r0, [r4, #5]
	strb r0, [r7, #0xd]
	ldrb r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080CF8D6
	rsbs r0, r3, #0
	str r0, [r7, #0x48]
	rsbs r2, r2, #0
_080CF8D6:
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, r0, r2
	strh r0, [r1]
_080CF8E0:
	movs r0, #6
	add sl, r0
	movs r1, #1
	rsbs r1, r1, #0
	add sb, r1
	mov r3, sb
	cmp r3, #0
	bge _080CF818
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080CF900: .4byte sub_080CF910
_080CF904: .4byte 0x08528CC4
_080CF908: .4byte 0x08250E94
_080CF90C: .4byte sub_0803B9D0

	thumb_func_start sub_080CF910
sub_080CF910: @ 0x080CF910
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _080CF974 @ =gEwramData
	ldrb r1, [r4, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080CF978 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r5, r1, r0
	movs r1, #0x80
	rsbs r1, r1, #0
	movs r2, #0x40
	rsbs r2, r2, #0
	movs r3, #0xf8
	lsls r3, r3, #1
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _080CF95E
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080CF95E
	adds r0, r4, #0
	adds r0, #0x46
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0xaa
	ble _080CF97C
_080CF95E:
	ldrb r0, [r5, #0x13]
	subs r0, #1
	strb r0, [r5, #0x13]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	b _080CF994
	.align 2, 0
_080CF974: .4byte gEwramData
_080CF978: .4byte 0x000004E4
_080CF97C:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	movs r0, #0xc0
	lsls r0, r0, #6
	adds r1, r1, r0
	str r1, [r4, #0x4c]
_080CF994:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start EnemyMandragoraUpdate
EnemyMandragoraUpdate: @ 0x080CF99C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _080CF9AE
	adds r0, r4, #0
	bl sub_080CFA18
	b _080CF9F4
_080CF9AE:
	cmp r0, #0xf0
	bne _080CF9BA
	adds r0, r4, #0
	bl sub_080CF748
	b _080CF9F4
_080CF9BA:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #2
	beq _080CF9CE
	adds r0, r4, #0
	bl sub_0806CC20
	cmp r0, #0
	bne _080CF9F4
_080CF9CE:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080CF9DA
	cmp r0, #2
	beq _080CF9E2
	b _080CF9E8
_080CF9DA:
	adds r0, r4, #0
	bl sub_080CF5C4
	b _080CF9E8
_080CF9E2:
	adds r0, r4, #0
	bl sub_080CF624
_080CF9E8:
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806E314
_080CF9F4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CF9FC
sub_080CF9FC: @ 0x080CF9FC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080CFA12
	movs r1, #0
	movs r0, #0xf0
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080CFA12:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080CFA18
sub_080CFA18: @ 0x080CFA18
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080CFA3E
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CFA38
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080CFA38:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080CFA3E:
	adds r0, r4, #0
	bl sub_0803F17C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CFA4C
sub_080CFA4C: @ 0x080CFA4C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080CFA62
	movs r1, #0
	movs r0, #0xf0
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080CFA62:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080CFA68
sub_080CFA68: @ 0x080CFA68
	push {r4, r5, lr}
	ldr r3, _080CFAA8 @ =gEwramData
	ldrb r1, [r0, #0x12]
	lsls r2, r1, #5
	adds r2, r2, r1
	lsls r2, r2, #2
	ldr r5, _080CFAAC @ =0x000004E4
	adds r2, r2, r5
	ldr r3, [r3]
	adds r2, r3, r2
	ldrb r4, [r2, #0x12]
	lsls r1, r4, #5
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	adds r3, r3, r1
	adds r3, #0x59
	ldrb r1, [r3]
	movs r4, #8
	orrs r1, r4
	strb r1, [r3]
	adds r2, #0x59
	ldrb r1, [r2]
	orrs r1, r4
	strb r1, [r2]
	adds r0, #0x59
	ldrb r1, [r0]
	orrs r1, r4
	strb r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080CFAA8: .4byte gEwramData
_080CFAAC: .4byte 0x000004E4

	thumb_func_start EnemyBelmontCreate
EnemyBelmontCreate: @ 0x080CFAB0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080CFB08 @ =0x0820C028
	mov sb, r0
	ldr r7, _080CFB0C @ =0x08252748
	ldr r1, _080CFB10 @ =0x08119520
	mov r8, r1
	movs r0, #0x30
	ldrsh r6, [r5, r0]
	cmp r6, #1
	bne _080CFB1C
	ldr r0, _080CFB14 @ =gEwramData
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080CFB46
	ldrb r1, [r5, #0x14]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r5, #0x14]
	ldr r1, _080CFB18 @ =0x0000037E
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080CFB5A
	movs r0, #0
	bl sub_0800C5A8
	strb r6, [r5, #0xa]
	strb r4, [r5, #0xc]
	strb r4, [r5, #0xb]
	b _080CFBEE
	.align 2, 0
_080CFB08: .4byte 0x0820C028
_080CFB0C: .4byte 0x08252748
_080CFB10: .4byte 0x08119520
_080CFB14: .4byte gEwramData
_080CFB18: .4byte 0x0000037E
_080CFB1C:
	ldr r4, _080CFB64 @ =gEwramData
	ldr r0, [r4]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080CFB46
	movs r0, #1
	bl sub_0800C5A8
	adds r0, r5, #0
	bl sub_08034498
	ldr r0, [r4]
	ldr r1, _080CFB68 @ =0x0000042C
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #2
	orrs r1, r2
	str r1, [r0]
_080CFB46:
	str r7, [sp]
	adds r0, r5, #0
	mov r1, r8
	mov r2, sb
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080CFB6C
_080CFB5A:
	adds r0, r5, #0
	bl EntityDelete
	b _080CFBEE
	.align 2, 0
_080CFB64: .4byte gEwramData
_080CFB68: .4byte 0x0000042C
_080CFB6C:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	adds r1, r5, #0
	adds r1, #0x5c
	movs r3, #0
	movs r0, #0x11
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x3e
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1a
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _080CFBC0 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _080CFBC4
	movs r0, #0xc
	strb r0, [r5, #0xa]
	strb r3, [r5, #0xc]
	strb r3, [r5, #0xb]
	b _080CFBEE
	.align 2, 0
_080CFBC0: .4byte gEwramData
_080CFBC4:
	adds r0, r5, #0
	bl sub_0806B04C
	movs r0, #3
	strb r0, [r5, #0xa]
	strb r4, [r5, #0xc]
	strb r4, [r5, #0xb]
	adds r1, r5, #0
	adds r1, #0x3c
	ldrb r0, [r1]
	strb r0, [r5, #0x1c]
	strb r4, [r5, #0x1d]
	strb r4, [r1]
	adds r0, r5, #0
	bl sub_0806AF98
	ldr r1, _080CFBFC @ =sub_0806E1B8
	ldr r2, _080CFC00 @ =sub_080D1A44
	adds r0, r5, #0
	bl sub_0806D244
_080CFBEE:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080CFBFC: .4byte sub_0806E1B8
_080CFC00: .4byte sub_080D1A44

	thumb_func_start sub_080CFC04
sub_080CFC04: @ 0x080CFC04
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _080CFC64 @ =0x08528D14
	adds r6, r0, r1
	ldrb r1, [r4, #0x14]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080CFCF6
	ldr r2, _080CFC68 @ =EntityUpdateNothing
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	mov ip, r0
	cmp r0, #0
	beq _080CFCF6
	ldrb r0, [r0, #0x10]
	strb r0, [r4, #0x17]
	ldrb r0, [r4, #0x10]
	mov r1, ip
	strb r0, [r1, #0x11]
	cmp r5, #0
	bne _080CFC74
	movs r2, #0
	ldrsh r1, [r6, r2]
	lsls r1, r1, #0x10
	ldr r3, _080CFC6C @ =gEwramData
	ldr r2, [r3]
	ldr r0, _080CFC70 @ =0x0000A094
	adds r2, r2, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	mov r0, ip
	str r1, [r0, #0x40]
	movs r1, #2
	ldrsh r0, [r6, r1]
	lsls r0, r0, #0x10
	ldr r1, [r2, #8]
	subs r0, r0, r1
	mov r2, ip
	str r0, [r2, #0x44]
	adds r4, r3, #0
	b _080CFC80
	.align 2, 0
_080CFC64: .4byte 0x08528D14
_080CFC68: .4byte EntityUpdateNothing
_080CFC6C: .4byte gEwramData
_080CFC70: .4byte 0x0000A094
_080CFC74:
	ldr r0, [r4, #0x40]
	mov r3, ip
	str r0, [r3, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r3, #0x44]
	ldr r4, _080CFCFC @ =gEwramData
_080CFC80:
	movs r3, #0
	ldr r0, [r4]
	ldr r1, _080CFD00 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	mov r2, ip
	ldr r1, [r2, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	bge _080CFC96
	movs r3, #1
_080CFC96:
	mov r2, ip
	adds r2, #0x58
	lsls r3, r3, #6
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
	ldrh r0, [r6, #8]
	mov r3, ip
	strh r0, [r3, #0x30]
	ldrh r0, [r6, #0xa]
	strh r0, [r3, #0x32]
	ldrb r0, [r6, #4]
	mov r1, ip
	adds r1, #0x37
	strb r0, [r1]
	ldrb r0, [r6, #6]
	subs r1, #1
	strb r0, [r1]
	ldr r0, _080CFD04 @ =sub_0803B9D0
	str r0, [r3, #4]
	ldr r0, _080CFD08 @ =Object20Update
	str r0, [r3]
	mov r0, ip
	bl Object20Create
	ldr r2, [r4]
	ldrb r1, [r6, #4]
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
	orrs r0, r1
	str r0, [r2]
_080CFCF6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080CFCFC: .4byte gEwramData
_080CFD00: .4byte 0x00013110
_080CFD04: .4byte sub_0803B9D0
_080CFD08: .4byte Object20Update

	thumb_func_start sub_080CFD0C
sub_080CFD0C: @ 0x080CFD0C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _080CFD48 @ =gEwramData
	ldrb r1, [r4, #0x17]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080CFD4C @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r5, r1, r0
	movs r0, #0
	bl sub_0800C5A8
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	bhi _080CFD36
	movs r0, #1
	movs r1, #0x20
	bl SetPlayerInput
_080CFD36:
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	bhi _080CFDCC
	lsls r0, r0, #2
	ldr r1, _080CFD50 @ =_080CFD54
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080CFD48: .4byte gEwramData
_080CFD4C: .4byte 0x000004E4
_080CFD50: .4byte _080CFD54
_080CFD54: @ jump table
	.4byte _080CFD68 @ case 0
	.4byte _080CFD8E @ case 1
	.4byte _080CFD6E @ case 2
	.4byte _080CFD8E @ case 3
	.4byte _080CFDA4 @ case 4
_080CFD68:
	movs r0, #0x38
	strb r0, [r4, #0xd]
	b _080CFD9C
_080CFD6E:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #0
	bl sub_080CFC04
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x20
	strb r0, [r4, #0xd]
	b _080CFDCC
_080CFD8E:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080CFDCC
_080CFD9C:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	b _080CFDCC
_080CFDA4:
	cmp r5, #0
	bne _080CFDB2
	strh r5, [r4, #0x30]
	adds r0, r4, #0
	bl EnemyBelmontCreate
	b _080CFDCC
_080CFDB2:
	ldr r0, [r5]
	cmp r0, #0
	beq _080CFDC2
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x20
	beq _080CFDCC
_080CFDC2:
	movs r0, #0
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl EnemyBelmontCreate
_080CFDCC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CFDD4
sub_080CFDD4: @ 0x080CFDD4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r5, _080CFE1C @ =0x0820C028
	ldr r3, _080CFE20 @ =0x08252748
	ldr r2, _080CFE24 @ =0x08119520
	ldr r0, _080CFE28 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080CFE2C @ =0x0000A094
	adds r0, r0, r1
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _080CFE5A
	cmp r0, #1
	bgt _080CFEBA
	cmp r0, #0
	bne _080CFEBA
	str r3, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080CFE30
	adds r0, r4, #0
	bl EntityDelete
	b _080CFEBA
	.align 2, 0
_080CFE1C: .4byte 0x0820C028
_080CFE20: .4byte 0x08252748
_080CFE24: .4byte 0x08119520
_080CFE28: .4byte gEwramData
_080CFE2C: .4byte 0x0000A094
_080CFE30:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #4
	beq _080CFE46
	adds r0, r4, #0
	movs r1, #4
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
_080CFE46:
	adds r0, r4, #0
	bl sub_0803F17C
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080CFE5A:
	ldr r5, _080CFEC4 @ =gEwramData
	ldr r0, [r5]
	ldr r6, _080CFEC8 @ =0x00013110
	adds r0, r0, r6
	ldr r0, [r0]
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _080CFEBA
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080CFE86
	adds r0, r4, #0
	movs r1, #2
	bl sub_080CFC04
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_080CFE86:
	ldrb r0, [r4, #0x17]
	lsls r1, r0, #5
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080CFECC @ =0x000004E4
	adds r1, r1, r0
	ldr r2, [r5]
	adds r1, r2, r1
	ldr r0, [r1]
	cmp r0, #0
	beq _080CFEBA
	adds r1, r2, r6
	ldr r0, [r1]
	adds r0, #0x42
	movs r2, #0
	strh r7, [r0]
	ldr r0, [r1]
	str r2, [r0, #0x48]
	ldr r0, [r1]
	str r2, [r0, #0x50]
	ldr r1, [r1]
	adds r1, #0x58
	ldrb r0, [r1]
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r1]
_080CFEBA:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080CFEC4: .4byte gEwramData
_080CFEC8: .4byte 0x00013110
_080CFECC: .4byte 0x000004E4

	thumb_func_start EnemyBelmontUpdate
EnemyBelmontUpdate: @ 0x080CFED0
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _080CFEE4
	adds r0, r4, #0
	bl sub_080CFD0C
	b _080D003C
_080CFEE4:
	cmp r0, #0xd
	bne _080CFEF0
	adds r0, r4, #0
	bl sub_080CFDD4
	b _080D003C
_080CFEF0:
	cmp r0, #0xc
	bne _080CFEFC
	adds r0, r4, #0
	bl sub_080D2334
	b _080D003C
_080CFEFC:
	cmp r0, #0xf0
	bne _080CFF08
	adds r0, r4, #0
	bl sub_080D1854
	b _080D003C
_080CFF08:
	cmp r0, #9
	bne _080CFF14
	adds r0, r4, #0
	bl sub_080D10B0
	b _080D003C
_080CFF14:
	cmp r0, #0xb
	bne _080CFF26
	adds r0, r4, #0
	bl sub_080D1580
	adds r0, r4, #0
	bl sub_0806DF20
	b _080D003C
_080CFF26:
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080CFF58
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
	beq _080CFF52
	adds r0, r4, #0
	bl sub_08021924
_080CFF52:
	adds r0, r4, #0
	bl sub_0806AE54
_080CFF58:
	ldrb r0, [r4, #0x15]
	cmp r0, #0
	beq _080CFF7C
	movs r1, #1
	adds r3, r4, #0
	adds r3, #0x58
	ands r1, r0
	lsls r1, r1, #5
	ldrb r2, [r3]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r0, [r4, #0x15]
	subs r0, #1
	strb r0, [r4, #0x15]
	b _080CFF8A
_080CFF7C:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_080CFF8A:
	ldrb r0, [r4, #0xa]
	subs r0, #2
	cmp r0, #8
	bhi _080D0002
	lsls r0, r0, #2
	ldr r1, _080CFF9C @ =_080CFFA0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080CFF9C: .4byte _080CFFA0
_080CFFA0: @ jump table
	.4byte _080CFFCC @ case 0
	.4byte _080CFFC4 @ case 1
	.4byte _080CFFDC @ case 2
	.4byte _080CFFE4 @ case 3
	.4byte _080CFFEC @ case 4
	.4byte _080CFFD4 @ case 5
	.4byte _080CFFFC @ case 6
	.4byte _080D0002 @ case 7
	.4byte _080CFFF4 @ case 8
_080CFFC4:
	adds r0, r4, #0
	bl sub_080D2328
	b _080D0002
_080CFFCC:
	adds r0, r4, #0
	bl sub_080D0044
	b _080D0002
_080CFFD4:
	adds r0, r4, #0
	bl sub_080D0334
	b _080D0002
_080CFFDC:
	adds r0, r4, #0
	bl sub_080D03F8
	b _080D0002
_080CFFE4:
	adds r0, r4, #0
	bl sub_080D0AA8
	b _080D0002
_080CFFEC:
	adds r0, r4, #0
	bl sub_080D0B8C
	b _080D0002
_080CFFF4:
	adds r0, r4, #0
	bl sub_080D1240
	b _080D0002
_080CFFFC:
	adds r0, r4, #0
	bl sub_080D0E60
_080D0002:
	adds r0, r4, #0
	bl sub_0806DF20
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D001E
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	b _080D0028
_080D001E:
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
_080D0028:
	strb r0, [r2]
	ldrb r0, [r4, #0xa]
	cmp r0, #0xb
	beq _080D003C
	ldrb r0, [r4, #0x15]
	cmp r0, #0
	bne _080D003C
	adds r0, r4, #0
	bl sub_0806E314
_080D003C:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080D0044
sub_080D0044: @ 0x080D0044
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x58
	ldrb r0, [r6]
	lsls r0, r0, #0x19
	lsrs r7, r0, #0x1f
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bge _080D005C
	b _080D032C
_080D005C:
	cmp r0, #1
	ble _080D0068
	cmp r0, #2
	bne _080D0066
	b _080D02C0
_080D0066:
	b _080D032C
_080D0068:
	ldrh r0, [r5, #0x22]
	cmp r0, #0
	beq _080D0072
	subs r0, #1
	strh r0, [r5, #0x22]
_080D0072:
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _080D0088
	adds r0, r5, #0
	movs r1, #1
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
_080D0088:
	movs r1, #0x80
	lsls r1, r1, #0xa
	movs r2, #0x80
	lsls r2, r2, #0xe
	movs r3, #0x80
	lsls r3, r3, #0xb
	movs r0, #0
	str r0, [sp]
	adds r0, r5, #0
	bl sub_0806E140
	movs r1, #4
	ands r1, r0
	cmp r1, #0
	bne _080D00AE
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
_080D00AE:
	movs r0, #0x34
	ldrsh r4, [r5, r0]
	ldr r2, _080D0108 @ =0x080E9644
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #0xc]
	movs r1, #3
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	bge _080D0154
	adds r0, r5, #0
	movs r1, #0x80
	movs r2, #0
	bl sub_0806DF40
	cmp r0, #0
	bne _080D00F0
	movs r1, #0x80
	rsbs r1, r1, #0
	adds r0, r5, #0
	movs r2, #0
	bl sub_0806DF40
	cmp r0, #0
	beq _080D011A
_080D00F0:
	adds r0, r5, #0
	movs r1, #0x80
	movs r2, #0
	bl sub_0806DF40
	cmp r0, #0
	beq _080D010C
	ldrb r1, [r6]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	b _080D0112
	.align 2, 0
_080D0108: .4byte 0x080E9644
_080D010C:
	ldrb r0, [r6]
	movs r1, #0x40
	orrs r0, r1
_080D0112:
	strb r0, [r6]
	movs r1, #0
	movs r0, #9
	b _080D024E
_080D011A:
	ldrb r1, [r5, #0x14]
	movs r2, #8
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080D0154
	strb r2, [r5, #0xa]
	strb r0, [r5, #0xc]
	strb r0, [r5, #0xb]
	movs r0, #8
	orrs r0, r1
	strb r0, [r5, #0x14]
	ldr r0, _080D014C @ =gEwramData
	ldr r1, [r0]
	ldr r0, _080D0150 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #5
	orrs r0, r2
	str r0, [r1]
	b _080D032C
	.align 2, 0
_080D014C: .4byte gEwramData
_080D0150: .4byte 0x0000042C
_080D0154:
	adds r0, r5, #0
	movs r1, #0x20
	movs r2, #0x30
	bl sub_0806C1B0
	cmp r0, #0
	beq _080D0196
	bl RandomNumberGenerator
	movs r1, #0xc
	bl __umodsi3
	adds r1, r0, #0
	cmp r1, #0
	bne _080D0176
	movs r0, #9
	b _080D024E
_080D0176:
	bl RandomNumberGenerator
	adds r1, r0, #0
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	bne _080D0188
	movs r0, #4
	b _080D024E
_080D0188:
	bl RandomNumberGenerator
	adds r1, r0, #0
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	beq _080D024C
_080D0196:
	ldrb r1, [r5, #0xb]
	cmp r1, #1
	bne _080D01B4
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	cmp r0, r7
	beq _080D01B8
	adds r0, r1, #1
	movs r1, #0
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xc]
	b _080D032C
_080D01B4:
	movs r0, #1
	strb r0, [r5, #0xb]
_080D01B8:
	adds r0, r5, #0
	movs r1, #0x80
	movs r2, #0x40
	bl sub_0806C1B0
	adds r4, r0, #0
	cmp r4, #0
	beq _080D0256
	ldr r0, _080D020C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080D0210 @ =0x00013110
	adds r0, r0, r1
	ldr r3, [r0]
	ldrb r0, [r3, #0xa]
	cmp r0, #1
	bne _080D0228
	adds r0, r3, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	adds r2, r0, #0
	ands r2, r1
	adds r1, r5, #0
	adds r1, #0x58
	ldrb r1, [r1]
	ands r0, r1
	cmp r2, r0
	bne _080D0228
	adds r0, r3, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D0228
	bl RandomNumberGenerator
	adds r1, r0, #0
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	bne _080D0214
	movs r0, #9
	b _080D024E
	.align 2, 0
_080D020C: .4byte gEwramData
_080D0210: .4byte 0x00013110
_080D0214:
	bl RandomNumberGenerator
	movs r1, #6
	bl __umodsi3
	adds r1, r0, #0
	cmp r1, #0
	bne _080D0228
	movs r0, #4
	b _080D024E
_080D0228:
	bl RandomNumberGenerator
	movs r1, #0xa
	bl __umodsi3
	adds r1, r0, #0
	cmp r1, #0
	bne _080D023C
	movs r0, #7
	b _080D024E
_080D023C:
	bl RandomNumberGenerator
	movs r1, #0x32
	bl __umodsi3
	adds r1, r0, #0
	cmp r1, #0
	bne _080D027C
_080D024C:
	movs r0, #0xa
_080D024E:
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
	b _080D032C
_080D0256:
	bl sub_080212C8
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	beq _080D027C
	bl RandomNumberGenerator
	movs r1, #0x3c
	bl __umodsi3
	cmp r0, #0x14
	bne _080D027C
	movs r0, #4
	strb r0, [r5, #0xa]
	strb r4, [r5, #0xc]
	movs r0, #5
	strb r0, [r5, #0xb]
	b _080D032C
_080D027C:
	ldrb r1, [r5, #0x14]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080D032C
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r5, #0
	movs r2, #0x80
	bl sub_0806C1B0
	cmp r0, #0
	beq _080D032C
	bl RandomNumberGenerator
	movs r1, #0x1e
	bl __umodsi3
	cmp r0, #0
	bne _080D032C
	ldrh r0, [r5, #0x22]
	cmp r0, #0
	bne _080D032C
	bl RandomNumberGenerator
	movs r1, #3
	ands r1, r0
	movs r2, #0
	strh r1, [r5, #0x22]
	movs r0, #6
	strb r0, [r5, #0xa]
	strb r2, [r5, #0xc]
	strb r2, [r5, #0xb]
	b _080D032C
_080D02C0:
	ldrb r1, [r5, #0xc]
	cmp r1, #0
	bne _080D02CE
	movs r0, #0xa
	strb r0, [r5, #0xd]
	adds r0, r1, #1
	strb r0, [r5, #0xc]
_080D02CE:
	movs r1, #0x80
	lsls r1, r1, #7
	movs r3, #0x80
	lsls r3, r3, #9
	movs r0, #0
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r3, #0
	bl sub_0806E140
	bl RandomNumberGenerator
	adds r4, r0, #0
	movs r0, #3
	ands r4, r0
	cmp r4, #0
	bne _080D0314
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r5, #0
	movs r1, #0x20
	bl sub_0806C1B0
	cmp r0, #0
	beq _080D0314
	bl sub_080212C8
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080D0314
	strb r1, [r5, #0xa]
	strb r4, [r5, #0xc]
	strb r4, [r5, #0xb]
	b _080D032C
_080D0314:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080D032C
	ldrb r0, [r5, #0xb]
	subs r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0
	strb r0, [r5, #0xc]
_080D032C:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080D0334
sub_080D0334: @ 0x080D0334
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _080D0344
	cmp r0, #1
	beq _080D038A
	b _080D03F2
_080D0344:
	bl sub_080212C8
	movs r1, #0x80
	lsls r1, r1, #3
	ands r1, r0
	cmp r1, #0
	beq _080D036A
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #6
	beq _080D0380
	adds r0, r5, #0
	movs r1, #6
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
	b _080D0380
_080D036A:
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #5
	beq _080D0380
	adds r0, r5, #0
	movs r1, #5
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
_080D0380:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xc]
_080D038A:
	adds r6, r5, #0
	adds r6, #0x6e
	ldrb r0, [r6]
	cmp r0, #4
	bne _080D03A8
	ldr r4, _080D03C8 @ =0x08528D38
	bl RandomNumberGenerator
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r0, [r1]
	bl PlaySong
_080D03A8:
	ldrb r0, [r6]
	cmp r0, #8
	bne _080D03B4
	movs r0, #0xfc
	bl PlaySong
_080D03B4:
	ldrb r0, [r6]
	cmp r0, #7
	bls _080D03CC
	ldrb r1, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x3c
	strb r1, [r0]
	adds r2, r0, #0
	b _080D03D6
	.align 2, 0
_080D03C8: .4byte 0x08528D38
_080D03CC:
	adds r1, r5, #0
	adds r1, #0x3c
	movs r0, #0
	strb r0, [r1]
	adds r2, r1, #0
_080D03D6:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080D03F2
	movs r0, #0
	movs r1, #2
	strb r1, [r5, #0xa]
	strb r0, [r5, #0xc]
	strb r0, [r5, #0xb]
	ldrb r0, [r5, #0x1d]
	strb r0, [r2]
_080D03F2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080D03F8
sub_080D03F8: @ 0x080D03F8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #6
	bls _080D0404
	b _080D08D6
_080D0404:
	lsls r0, r0, #2
	ldr r1, _080D0410 @ =_080D0414
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080D0410: .4byte _080D0414
_080D0414: @ jump table
	.4byte _080D0430 @ case 0
	.4byte _080D048C @ case 1
	.4byte _080D04F0 @ case 2
	.4byte _080D05E0 @ case 3
	.4byte _080D065C @ case 4
	.4byte _080D06EE @ case 5
	.4byte _080D07D0 @ case 6
_080D0430:
	ldr r0, _080D0488 @ =0x00000125
	bl PlaySong
	movs r2, #0
	str r2, [r5, #0x50]
	str r2, [r5, #0x54]
	str r2, [r5, #0x4c]
	movs r3, #0x80
	lsls r3, r3, #9
	str r3, [r5, #0x48]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080D0456
	rsbs r0, r3, #0
	str r0, [r5, #0x48]
_080D0456:
	movs r1, #0xc0
	lsls r1, r1, #5
	str r1, [r5, #0x54]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r1, r1, r0
	str r1, [r5, #0x4c]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	strb r2, [r5, #0xc]
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #3
	bne _080D047A
	b _080D08D6
_080D047A:
	adds r0, r5, #0
	movs r1, #3
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
	b _080D08D6
	.align 2, 0
_080D0488: .4byte 0x00000125
_080D048C:
	ldr r1, _080D04EC @ =0x08528D08
	adds r0, r5, #0
	movs r2, #4
	movs r3, #0
	bl sub_0806C828
	adds r4, r0, #0
	movs r0, #3
	ands r0, r4
	cmp r0, #0
	beq _080D04BA
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080D04B6
	movs r0, #0
_080D04B6:
	str r0, [r5, #0x48]
	str r0, [r5, #0x50]
_080D04BA:
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806B120
	cmp r0, #0
	beq _080D04DE
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080D04DA
	movs r0, #0
_080D04DA:
	str r0, [r5, #0x48]
	str r0, [r5, #0x50]
_080D04DE:
	ldr r0, [r5, #0x54]
	lsls r0, r0, #1
	ldr r1, [r5, #0x4c]
	cmn r1, r0
	bge _080D04EA
	b _080D08D6
_080D04EA:
	b _080D05D4
	.align 2, 0
_080D04EC: .4byte 0x08528D08
_080D04F0:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _080D0518
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x10
	beq _080D050C
	adds r0, r5, #0
	movs r1, #0x10
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
_080D050C:
	adds r0, r5, #0
	bl sub_0803F17C
	movs r0, #4
	strb r0, [r5, #0xd]
	b _080D085E
_080D0518:
	ldr r1, _080D05AC @ =0x08528D08
	adds r0, r5, #0
	movs r2, #4
	movs r3, #0
	bl sub_0806C828
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080D0534
	b _080D08D6
_080D0534:
	bl RandomNumberGenerator
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _080D05B8
	ldr r3, _080D05B0 @ =0xFFFD0000
	str r3, [r5, #0x48]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r5, #0x4c]
	ldr r0, _080D05B4 @ =0xFFFFFC00
	str r0, [r5, #0x50]
	movs r2, #0x80
	lsls r2, r2, #3
	str r2, [r5, #0x54]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080D0568
	rsbs r0, r3, #0
	str r0, [r5, #0x48]
	str r2, [r5, #0x50]
_080D0568:
	adds r0, r5, #0
	adds r0, #0x3c
	movs r1, #0x50
	strb r1, [r0]
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #9
	beq _080D0584
	adds r0, r5, #0
	movs r1, #9
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
_080D0584:
	movs r0, #0xf6
	lsls r0, r0, #1
	bl PlaySong
	adds r0, r5, #0
	bl sub_0803F17C
	adds r0, r5, #0
	movs r1, #0x1c
	movs r2, #5
	movs r3, #2
	bl sub_080458E4
	adds r0, r5, #0
	movs r1, #0x1c
	movs r2, #3
	movs r3, #2
	bl sub_080458E4
	b _080D05D4
	.align 2, 0
_080D05AC: .4byte 0x08528D08
_080D05B0: .4byte 0xFFFD0000
_080D05B4: .4byte 0xFFFFFC00
_080D05B8:
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x11
	beq _080D05CE
	adds r0, r5, #0
	movs r1, #0x11
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
_080D05CE:
	adds r0, r5, #0
	bl sub_0803F17C
_080D05D4:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xc]
	b _080D08D6
_080D05E0:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _080D05EA
	adds r0, #1
	strb r0, [r5, #0xc]
_080D05EA:
	ldr r1, _080D0658 @ =0x08528D08
	adds r0, r5, #0
	movs r2, #4
	movs r3, #0
	bl sub_0806C828
	adds r4, r0, #0
	movs r0, #3
	ands r0, r4
	cmp r0, #0
	beq _080D0618
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080D0614
	movs r0, #0
_080D0614:
	str r0, [r5, #0x48]
	str r0, [r5, #0x50]
_080D0618:
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806B120
	cmp r0, #0
	beq _080D063C
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080D0638
	movs r0, #0
_080D0638:
	str r0, [r5, #0x48]
	str r0, [r5, #0x50]
_080D063C:
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	bne _080D0646
	b _080D08D6
_080D0646:
	movs r1, #0
	str r1, [r5, #0x50]
	str r1, [r5, #0x48]
	str r1, [r5, #0x54]
	str r1, [r5, #0x4c]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	b _080D08CA
	.align 2, 0
_080D0658: .4byte 0x08528D08
_080D065C:
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	beq _080D0680
	cmp r0, #1
	bgt _080D066C
	cmp r0, #0
	beq _080D0672
	b _080D08D6
_080D066C:
	cmp r0, #2
	beq _080D06A0
	b _080D08D6
_080D0672:
	movs r0, #0x93
	lsls r0, r0, #1
	bl PlaySong
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
_080D0680:
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #4
	beq _080D0696
	adds r0, r5, #0
	movs r1, #4
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
_080D0696:
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	movs r0, #0x10
	strb r0, [r5, #0xd]
_080D06A0:
	ldrb r0, [r5, #0xd]
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080D06D2
	adds r0, r5, #0
	bl sub_080D14F8
	adds r4, r0, #0
	bl RandomNumberGenerator
	adds r2, r4, #0
	adds r2, #0x42
	movs r1, #0xf
	ands r1, r0
	subs r1, #8
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r2]
	adds r4, #0x46
	ldrh r0, [r4]
	adds r0, #2
	strh r0, [r4]
_080D06D2:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	movs r1, #0
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080D06E4
	b _080D08D6
_080D06E4:
	movs r0, #2
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
	b _080D08D6
_080D06EE:
	ldrb r4, [r5, #0xc]
	cmp r4, #0
	bne _080D0742
	ldr r0, _080D07C4 @ =0x00000125
	bl PlaySong
	str r4, [r5, #0x50]
	str r4, [r5, #0x54]
	str r4, [r5, #0x4c]
	ldr r2, _080D07C8 @ =0xFFFF0000
	str r2, [r5, #0x48]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080D0716
	rsbs r0, r2, #0
	str r0, [r5, #0x48]
_080D0716:
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r5, #0x54]
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	subs r0, r0, r1
	str r0, [r5, #0x4c]
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #3
	beq _080D073C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
_080D073C:
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
_080D0742:
	ldr r1, _080D07CC @ =0x08528D08
	adds r0, r5, #0
	movs r2, #4
	movs r3, #0
	bl sub_0806C828
	adds r4, r0, #0
	movs r0, #3
	ands r0, r4
	cmp r0, #0
	beq _080D0770
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080D076C
	movs r0, #0
_080D076C:
	str r0, [r5, #0x48]
	str r0, [r5, #0x50]
_080D0770:
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806B120
	cmp r0, #0
	beq _080D0794
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080D0790
	movs r0, #0
_080D0790:
	str r0, [r5, #0x48]
	str r0, [r5, #0x50]
_080D0794:
	ldr r0, [r5, #0x54]
	lsls r0, r0, #1
	ldr r1, [r5, #0x4c]
	cmn r1, r0
	blt _080D07A6
	movs r1, #0
	movs r0, #2
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xc]
_080D07A6:
	adds r0, r5, #0
	movs r1, #0x80
	movs r2, #0x40
	bl sub_0806C1B0
	cmp r0, #0
	bne _080D07B6
	b _080D08D6
_080D07B6:
	movs r1, #0
	movs r0, #6
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xc]
	ldrb r1, [r5, #0x1c]
	b _080D08D0
	.align 2, 0
_080D07C4: .4byte 0x00000125
_080D07C8: .4byte 0xFFFF0000
_080D07CC: .4byte 0x08528D08
_080D07D0:
	ldr r1, _080D0838 @ =0x08528D08
	adds r0, r5, #0
	movs r2, #4
	movs r3, #0
	bl sub_0806C828
	adds r4, r0, #0
	movs r0, #3
	ands r0, r4
	cmp r0, #0
	beq _080D07FE
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080D07FA
	movs r0, #0
_080D07FA:
	str r0, [r5, #0x48]
	str r0, [r5, #0x50]
_080D07FE:
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806B120
	cmp r0, #0
	beq _080D0822
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080D081E
	movs r0, #0
_080D081E:
	str r0, [r5, #0x48]
	str r0, [r5, #0x50]
_080D0822:
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _080D083C
	movs r1, #0
	str r1, [r5, #0x50]
	str r1, [r5, #0x48]
	str r1, [r5, #0x54]
	str r1, [r5, #0x4c]
	movs r0, #4
	b _080D08CA
	.align 2, 0
_080D0838: .4byte 0x08528D08
_080D083C:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _080D0848
	cmp r0, #1
	beq _080D0866
	b _080D08D6
_080D0848:
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #5
	beq _080D085E
	adds r0, r5, #0
	movs r1, #5
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
_080D085E:
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	b _080D08D6
_080D0866:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #8
	bne _080D088A
	movs r0, #0xfc
	bl PlaySong
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	cmp r0, #0
	bne _080D088A
	ldr r0, _080D08AC @ =0x000001DF
	bl PlaySong
_080D088A:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080D08D6
	ldr r2, [r5, #0x54]
	lsls r0, r2, #1
	ldr r1, [r5, #0x4c]
	cmn r1, r0
	blt _080D08B0
	cmp r1, r0
	bgt _080D08B0
	movs r1, #0
	movs r0, #2
	b _080D08CA
	.align 2, 0
_080D08AC: .4byte 0x000001DF
_080D08B0:
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x11
	beq _080D08C6
	adds r0, r5, #0
	movs r1, #0x11
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
_080D08C6:
	movs r1, #0
	movs r0, #3
_080D08CA:
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xc]
	ldrb r1, [r5, #0x1d]
_080D08D0:
	adds r0, r5, #0
	adds r0, #0x3c
	strb r1, [r0]
_080D08D6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080D08DC
sub_080D08DC: @ 0x080D08DC
	push {lr}
	adds r3, r0, #0
	ldrb r1, [r3, #0xa]
	cmp r1, #1
	beq _080D0910
	cmp r1, #1
	bgt _080D08F0
	cmp r1, #0
	beq _080D08F6
	b _080D0982
_080D08F0:
	cmp r1, #2
	beq _080D0944
	b _080D0982
_080D08F6:
	ldrb r0, [r3, #0xd]
	subs r0, #1
	strb r0, [r3, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080D0982
	ldrb r0, [r3, #0xa]
	adds r0, #1
	strb r0, [r3, #0xa]
	strb r1, [r3, #0xc]
	strb r1, [r3, #0xb]
	b _080D0982
_080D0910:
	adds r2, r3, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r3, #0xa]
	adds r0, #1
	movs r1, #0
	strb r0, [r3, #0xa]
	strb r1, [r3, #0xc]
	strb r1, [r3, #0xb]
	ldr r0, _080D0940 @ =0xFFFE1000
	str r0, [r3, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r3, #0x54]
	adds r1, r3, #0
	adds r1, #0x65
	movs r0, #7
	strb r0, [r1]
	b _080D0982
	.align 2, 0
_080D0940: .4byte 0xFFFE1000
_080D0944:
	ldrb r1, [r3, #0xd]
	adds r0, r1, #1
	strb r0, [r3, #0xd]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080D0964
	adds r1, r3, #0
	adds r1, #0x65
	ldrb r0, [r1]
	cmp r0, #7
	bne _080D0960
	movs r0, #8
	b _080D0962
_080D0960:
	movs r0, #7
_080D0962:
	strb r0, [r1]
_080D0964:
	ldr r0, [r3, #0x44]
	ldr r1, [r3, #0x4c]
	adds r0, r0, r1
	str r0, [r3, #0x44]
	ldr r0, [r3, #0x54]
	adds r1, r1, r0
	str r1, [r3, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r1, r0
	bne _080D0982
	adds r0, r3, #0
	bl EntityDelete
	b _080D0994
_080D0982:
	adds r2, r3, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r3, #0
	bl sub_0806E314
_080D0994:
	pop {r0}
	bx r0
