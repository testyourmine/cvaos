	.include "asm/gba_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	thumb_func_start sub_080D0998
sub_080D0998: @ 0x080D0998
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080D09E8 @ =0x0820C04C
	mov sl, r0
	ldr r1, _080D09EC @ =0x08252A18
	mov sb, r1
	ldr r7, _080D09F0 @ =0x081F82B4
	mov r8, r7
	movs r6, #0xa
	rsbs r6, r6, #0
	ldr r0, _080D09F4 @ =0xFF740000
	str r0, [sp, #4]
_080D09BA:
	cmp r6, #0
	beq _080D0A82
	ldr r0, _080D09F8 @ =sub_080D08DC
	bl sub_0806DFF8
	adds r4, r0, #0
	cmp r4, #0
	beq _080D0A92
	mov r1, sb
	str r1, [sp]
	mov r1, r8
	mov r2, sl
	movs r3, #1
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080D09FC
	adds r0, r4, #0
	bl sub_08000E14
	b _080D0A92
	.align 2, 0
_080D09E8: .4byte 0x0820C04C
_080D09EC: .4byte 0x08252A18
_080D09F0: .4byte 0x081F82B4
_080D09F4: .4byte 0xFF740000
_080D09F8: .4byte sub_080D08DC
_080D09FC:
	ldr r0, [r5, #0x40]
	ldr r7, [sp, #4]
	adds r0, r0, r7
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	movs r1, #0x80
	lsls r1, r1, #0xe
	adds r0, r0, r1
	str r0, [r4, #0x44]
	adds r0, r6, #0
	cmp r6, #0
	bge _080D0A16
	rsbs r0, r6, #0
_080D0A16:
	strb r0, [r4, #0xd]
	ldrb r0, [r5, #0x10]
	strb r0, [r4, #0x11]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x19
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
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x65
	strb r0, [r1]
	ldrb r0, [r3]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	ldr r1, _080D0AA4 @ =sub_0806E1B8
	movs r2, #0
	bl sub_0806D244
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r5, #0x1c]
	strb r0, [r4, #0x1c]
	ldrb r1, [r5, #0x1c]
	adds r0, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
_080D0A82:
	ldr r0, [sp, #4]
	movs r1, #0xe0
	lsls r1, r1, #0xc
	adds r0, r0, r1
	str r0, [sp, #4]
	adds r6, #1
	cmp r6, #9
	ble _080D09BA
_080D0A92:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D0AA4: .4byte sub_0806E1B8

	thumb_func_start sub_080D0AA8
sub_080D0AA8: @ 0x080D0AA8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xb]
	cmp r5, #1
	beq _080D0AFE
	cmp r5, #1
	bgt _080D0ABC
	cmp r5, #0
	beq _080D0AC6
	b _080D0B84
_080D0ABC:
	cmp r5, #2
	beq _080D0B26
	cmp r5, #3
	beq _080D0B5E
	b _080D0B84
_080D0AC6:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080D0ADE
	adds r0, r4, #0
	movs r1, #7
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_080D0ADE:
	adds r0, r4, #0
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0x1e
	bne _080D0B84
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	strb r5, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	b _080D0B84
_080D0AFE:
	ldrb r1, [r4, #0xc]
	cmp r1, #0
	bne _080D0B0C
	movs r0, #0x18
	strb r0, [r4, #0xd]
	adds r0, r1, #1
	strb r0, [r4, #0xc]
_080D0B0C:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080D0B84
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0
	strb r0, [r4, #0xc]
	b _080D0B84
_080D0B26:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080D0B3E
	adds r0, r4, #0
	movs r1, #4
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_080D0B3E:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080D0B84
	ldrb r0, [r4, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
	adds r0, r4, #0
	bl sub_080D0998
	b _080D0B84
_080D0B5E:
	ldrb r1, [r4, #0xc]
	cmp r1, #0
	bne _080D0B6C
	movs r0, #0x80
	strb r0, [r4, #0xd]
	adds r0, r1, #1
	strb r0, [r4, #0xc]
_080D0B6C:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	movs r1, #0
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080D0B84
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080D0B84:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D0B8C
sub_080D0B8C: @ 0x080D0B8C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldrb r4, [r5, #0xb]
	cmp r4, #1
	beq _080D0BEE
	cmp r4, #1
	bgt _080D0BA2
	cmp r4, #0
	beq _080D0BAE
	b _080D0CEC
_080D0BA2:
	cmp r4, #2
	beq _080D0C8C
	cmp r4, #3
	bne _080D0BAC
	b _080D0CD4
_080D0BAC:
	b _080D0CEC
_080D0BAE:
	adds r0, r5, #0
	movs r1, #7
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0806BDEC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	ble _080D0BCC
	strb r4, [r5, #0xc]
	b _080D0BE2
_080D0BCC:
	adds r0, r5, #0
	movs r1, #0xa0
	movs r2, #0x20
	bl sub_0806C1B0
	cmp r0, #0
	beq _080D0BDE
	movs r0, #2
	b _080D0BE0
_080D0BDE:
	movs r0, #1
_080D0BE0:
	strb r0, [r5, #0xc]
_080D0BE2:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0x14
	strb r0, [r5, #0xd]
	b _080D0CEC
_080D0BEE:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #4
	bne _080D0C04
	adds r2, r5, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_080D0C04:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080D0C24
	adds r2, r5, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
_080D0C24:
	ldrb r1, [r5, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080D0CEC
	movs r6, #0x80
	lsls r6, r6, #0xc
	ldrb r0, [r5, #0xc]
	movs r7, #7
	cmp r0, #0
	beq _080D0C42
	movs r7, #9
	cmp r0, #1
	bne _080D0C42
	movs r7, #6
_080D0C42:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080D0C52
	rsbs r6, r6, #0
_080D0C52:
	bl RandomNumberGenerator
	ldr r4, [r5, #0x40]
	adds r4, r4, r6
	movs r1, #0xc0
	lsls r1, r1, #0xb
	bl __umodsi3
	adds r4, r4, r0
	ldr r0, _080D0C80 @ =0xFFFD0000
	adds r4, r4, r0
	ldr r1, [r5, #0x44]
	ldr r0, _080D0C84 @ =0xFFE00000
	adds r1, r1, r0
	ldr r3, _080D0C88 @ =0xFFFFE000
	movs r0, #4
	str r0, [sp]
	str r7, [sp, #4]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08045B44
	b _080D0CEC
	.align 2, 0
_080D0C80: .4byte 0xFFFD0000
_080D0C84: .4byte 0xFFE00000
_080D0C88: .4byte 0xFFFFE000
_080D0C8C:
	adds r0, r5, #0
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0x20
	bne _080D0CEC
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	beq _080D0CB6
	cmp r0, #1
	bgt _080D0CA6
	cmp r0, #0
	beq _080D0CAC
	b _080D0CC8
_080D0CA6:
	cmp r0, #2
	beq _080D0CC0
	b _080D0CC8
_080D0CAC:
	adds r0, r5, #0
	movs r1, #0
	bl sub_080D1BB4
	b _080D0CC8
_080D0CB6:
	adds r0, r5, #0
	movs r1, #1
	bl sub_080D1BB4
	b _080D0CC8
_080D0CC0:
	adds r0, r5, #0
	movs r1, #2
	bl sub_080D1BB4
_080D0CC8:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xc]
	b _080D0CEC
_080D0CD4:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080D0CEC
	movs r1, #0
	movs r0, #2
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
_080D0CEC:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080D0CF4
sub_080D0CF4: @ 0x080D0CF4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r2, _080D0D38 @ =gEwramData
	ldrb r1, [r5, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080D0D3C @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r1, r1, r0
	mov ip, r1
	ldrb r4, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, ip
	adds r0, #0x42
	adds r2, r5, #0
	adds r2, #0x42
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldrh r3, [r2]
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r1, r0
	ble _080D0D40
	lsls r1, r4, #0x18
	asrs r0, r1, #0x18
	adds r0, r3, r0
	b _080D0D46
	.align 2, 0
_080D0D38: .4byte gEwramData
_080D0D3C: .4byte 0x000004E4
_080D0D40:
	lsls r1, r4, #0x18
	asrs r0, r1, #0x18
	subs r0, r3, r0
_080D0D46:
	strh r0, [r2]
	adds r3, r1, #0
	mov r0, ip
	adds r0, #0x46
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #0x20
	adds r1, r5, #0
	adds r1, #0x46
	movs r4, #0
	ldrsh r2, [r1, r4]
	adds r4, r1, #0
	cmp r0, r2
	ble _080D0D6A
	asrs r0, r3, #0x18
	ldrh r7, [r4]
	adds r0, r0, r7
	b _080D0D70
_080D0D6A:
	asrs r1, r3, #0x18
	ldrh r0, [r4]
	subs r0, r0, r1
_080D0D70:
	strh r0, [r4]
	adds r0, r5, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r2, [r0, r1]
	mov r0, ip
	adds r0, #0x42
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r0, r1, #4
	cmp r2, r0
	bge _080D0D8E
	subs r0, r1, #4
	cmp r2, r0
	bgt _080D0DA2
_080D0D8E:
	movs r7, #0
	ldrsh r1, [r4, r7]
	lsls r0, r6, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #4
	cmp r1, r0
	bge _080D0DAA
	subs r0, r2, #4
	cmp r1, r0
	ble _080D0DAA
_080D0DA2:
	adds r0, r5, #0
	bl sub_08000E14
	b _080D0DBE
_080D0DAA:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080D0DBE
	adds r0, r5, #0
	bl sub_08000E14
_080D0DBE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080D0DC4
sub_080D0DC4: @ 0x080D0DC4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r2, _080D0E4C @ =sub_080D0CF4
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r6, r0, #0
	cmp r6, #0
	beq _080D0E42
	ldr r0, _080D0E50 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _080D0E54 @ =0x0820ED60
	adds r0, r6, #0
	movs r3, #6
	bl sub_0803B924
	adds r1, r6, #0
	adds r1, #0x65
	movs r0, #0x40
	strb r0, [r1]
	ldrb r0, [r7, #0x10]
	strb r0, [r6, #0x11]
	movs r0, #1
	strb r0, [r6, #0x18]
	bl RandomNumberGenerator
	ldr r1, [r7, #0x40]
	movs r5, #0x80
	lsls r5, r5, #0x10
	adds r1, r1, r5
	ldr r4, _080D0E58 @ =0x003FFFFF
	ands r0, r4
	lsls r0, r0, #2
	subs r1, r1, r0
	str r1, [r6, #0x40]
	bl RandomNumberGenerator
	ldr r1, [r7, #0x44]
	adds r1, r1, r5
	ands r0, r4
	lsls r0, r0, #2
	subs r1, r1, r0
	str r1, [r6, #0x44]
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r6, #0
	adds r1, #0x5c
	strb r0, [r1]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x20
	strb r0, [r6, #0xd]
	ldr r0, _080D0E5C @ =sub_0803B9D0
	str r0, [r6, #4]
_080D0E42:
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080D0E4C: .4byte sub_080D0CF4
_080D0E50: .4byte 0x081C15F4
_080D0E54: .4byte 0x0820ED60
_080D0E58: .4byte 0x003FFFFF
_080D0E5C: .4byte sub_0803B9D0

	thumb_func_start sub_080D0E60
sub_080D0E60: @ 0x080D0E60
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r0, _080D0E90 @ =gEwramData
	mov r8, r0
	ldrb r1, [r4, #0x12]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r7, _080D0E94 @ =0x000004E4
	adds r0, r0, r7
	mov r1, r8
	ldr r2, [r1]
	adds r6, r2, r0
	ldrb r5, [r4, #0xb]
	cmp r5, #1
	beq _080D0F0C
	cmp r5, #1
	bgt _080D0E98
	cmp r5, #0
	beq _080D0EA4
	b _080D1084
	.align 2, 0
_080D0E90: .4byte gEwramData
_080D0E94: .4byte 0x000004E4
_080D0E98:
	cmp r5, #2
	beq _080D0F66
	cmp r5, #3
	bne _080D0EA2
	b _080D100E
_080D0EA2:
	b _080D1084
_080D0EA4:
	ldrb r0, [r4, #0x16]
	adds r0, #1
	strb r0, [r4, #0x16]
	adds r0, r4, #0
	bl sub_080D1ADC
	cmp r0, #0
	bne _080D0EBE
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	b _080D10A0
_080D0EBE:
	str r5, [r4, #0x50]
	str r5, [r4, #0x48]
	str r5, [r4, #0x54]
	ldr r0, _080D0F04 @ =0xFFFFE000
	str r0, [r4, #0x4c]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	strb r5, [r4, #0xc]
	ldrb r1, [r4, #0x12]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	mov r2, r8
	ldr r1, [r2]
	adds r6, r1, r0
	adds r0, r6, #0
	adds r0, #0x36
	adds r1, r4, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _080D0EF2
	b _080D1084
_080D0EF2:
	cmp r6, #0
	bne _080D0EF8
	b _080D1084
_080D0EF8:
	ldr r1, _080D0F08 @ =0x08119534
	adds r0, r6, #0
	bl sub_08022088
	b _080D1084
	.align 2, 0
_080D0F04: .4byte 0xFFFFE000
_080D0F08: .4byte 0x08119534
_080D0F0C:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080D0F3A
	movs r0, #0xfa
	bl sub_08013D60
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _080D0F2E
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
_080D0F2E:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xff
	strb r0, [r4, #0xd]
	b _080D1084
_080D0F3A:
	ldrb r0, [r4, #0xd]
	ands r5, r0
	cmp r5, #0
	beq _080D0F48
	adds r0, r4, #0
	bl sub_080D0DC4
_080D0F48:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	movs r1, #0
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080D0F5A
	b _080D1084
_080D0F5A:
	str r1, [r4, #0x4c]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
	b _080D1084
_080D0F66:
	ldrb r7, [r4, #0xc]
	cmp r7, #0
	bne _080D0FBA
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D0F82
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080D0F82:
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	strb r7, [r6, #0xc]
	strb r7, [r6, #0xb]
	movs r0, #0xfa
	bl sub_08013E18
	movs r0, #0xfb
	bl sub_08013D60
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0xb
	beq _080D0FAE
	adds r0, r4, #0
	movs r1, #0xb
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
_080D0FAE:
	movs r0, #0xff
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	b _080D1084
_080D0FBA:
	ldrb r1, [r4, #0xd]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080D0FD0
	adds r0, r4, #0
	bl sub_080D0DC4
	cmp r0, #0
	beq _080D0FD0
	strb r5, [r0, #0x18]
_080D0FD0:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080D0FF4
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _080D0FF4
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080D0FF4:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080D1084
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0
	strb r0, [r4, #0xc]
	b _080D1084
_080D100E:
	ldrb r1, [r4, #0xc]
	cmp r1, #0
	bne _080D1024
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x4c]
	adds r0, r1, #1
	strb r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r6, #0xf]
	b _080D1084
_080D1024:
	adds r0, r4, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r1, _080D10AC @ =0x0000A094
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
	bl sub_08001D94
	cmp r0, #0
	beq _080D1084
	movs r0, #0xfb
	bl sub_08013E18
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D1068
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
_080D1068:
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	strb r1, [r4, #0x12]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	bl sub_080220B4
_080D1084:
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
_080D10A0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D10AC: .4byte 0x0000A094

	thumb_func_start sub_080D10B0
sub_080D10B0: @ 0x080D10B0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r4, [r5, #0xb]
	cmp r4, #1
	beq _080D112E
	cmp r4, #1
	bgt _080D10C4
	cmp r4, #0
	beq _080D10CA
	b _080D122E
_080D10C4:
	cmp r4, #2
	beq _080D1184
	b _080D122E
_080D10CA:
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
	adds r0, r5, #0
	adds r0, #0x2d
	strb r4, [r0]
	strb r4, [r5, #0x15]
	subs r0, #0xd
	strb r4, [r0]
	adds r0, #0x4d
	ldrb r0, [r0]
	cmp r0, #3
	beq _080D1106
	adds r0, r5, #0
	movs r1, #3
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
_080D1106:
	adds r0, r5, #0
	bl sub_0803F17C
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	strb r4, [r5, #0xc]
	adds r0, r5, #0
	movs r1, #0x30
	movs r2, #5
	movs r3, #2
	bl sub_080458E4
	adds r0, r5, #0
	movs r1, #0x30
	movs r2, #3
	movs r3, #2
	bl sub_080458E4
	b _080D122E
_080D112E:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r0, [r0]
	ands r4, r0
	cmp r4, #0
	beq _080D122E
	movs r0, #0x94
	lsls r0, r0, #1
	bl sub_080D7910
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080D1160
	movs r0, #0xdc
	lsls r0, r0, #0xa
	str r0, [r5, #0x48]
	ldr r0, _080D115C @ =0xFFFFF500
	b _080D1168
	.align 2, 0
_080D115C: .4byte 0xFFFFF500
_080D1160:
	ldr r0, _080D1180 @ =0xFFFC9000
	str r0, [r5, #0x48]
	movs r0, #0xb0
	lsls r0, r0, #4
_080D1168:
	str r0, [r5, #0x50]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xc]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r5, #0x4c]
	movs r0, #0x50
	strb r0, [r5, #0xd]
	b _080D122E
	.align 2, 0
_080D1180: .4byte 0xFFFC9000
_080D1184:
	adds r0, r5, #0
	bl sub_0806BC40
	ldrb r0, [r5, #0xd]
	movs r1, #1
	adds r4, r5, #0
	adds r4, #0x58
	ands r1, r0
	lsls r1, r1, #5
	ldrb r2, [r4]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	ldr r1, _080D123C @ =0x08528D08
	adds r0, r5, #0
	movs r2, #4
	movs r3, #0
	bl sub_0806C828
	adds r1, r0, #0
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080D11C2
	ldr r0, [r5, #0x44]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	str r0, [r5, #0x44]
_080D11C2:
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080D11DE
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080D11DA
	movs r0, #0
_080D11DA:
	str r0, [r5, #0x48]
	str r0, [r5, #0x50]
_080D11DE:
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806B120
	cmp r0, #0
	beq _080D11FE
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080D11FA
	movs r0, #0
_080D11FA:
	str r0, [r5, #0x48]
	str r0, [r5, #0x50]
_080D11FE:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	movs r3, #0
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080D122E
	movs r0, #2
	strb r0, [r5, #0xa]
	strb r3, [r5, #0xc]
	strb r3, [r5, #0xb]
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	subs r0, #9
	ands r0, r1
	strb r0, [r2]
	strb r3, [r5, #0xd]
	ldrb r1, [r4]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
_080D122E:
	adds r0, r5, #0
	bl sub_0803F17C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080D123C: .4byte 0x08528D08

	thumb_func_start sub_080D1240
sub_080D1240: @ 0x080D1240
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r4, [r5, #0xb]
	cmp r4, #1
	bne _080D124C
	b _080D13C4
_080D124C:
	cmp r4, #1
	bgt _080D1256
	cmp r4, #0
	beq _080D1264
	b _080D14F0
_080D1256:
	cmp r4, #2
	bne _080D125C
	b _080D13F8
_080D125C:
	cmp r4, #3
	bne _080D1262
	b _080D145A
_080D1262:
	b _080D14F0
_080D1264:
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	beq _080D12D0
	cmp r0, #1
	bgt _080D1274
	cmp r0, #0
	beq _080D127A
	b _080D13A6
_080D1274:
	cmp r0, #2
	beq _080D1330
	b _080D13A6
_080D127A:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080D1290
	ldr r0, _080D128C @ =0xFFFF8000
	b _080D1294
	.align 2, 0
_080D128C: .4byte 0xFFFF8000
_080D1290:
	movs r0, #0x80
	lsls r0, r0, #8
_080D1294:
	str r0, [r5, #0x48]
	str r4, [r5, #0x50]
	ldr r0, _080D12C8 @ =0xFFFF0000
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r5, #0x54]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	ldr r0, _080D12CC @ =0x00000125
	bl sub_080D7910
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #3
	beq _080D13A6
	adds r0, r5, #0
	movs r1, #3
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
	b _080D13A6
	.align 2, 0
_080D12C8: .4byte 0xFFFF0000
_080D12CC: .4byte 0x00000125
_080D12D0:
	ldr r1, _080D132C @ =0x08528D08
	adds r0, r5, #0
	movs r2, #4
	movs r3, #0
	bl sub_0806C828
	adds r6, r0, #0
	movs r0, #3
	ands r0, r6
	cmp r0, #0
	beq _080D12F4
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	str r4, [r5, #0x48]
	str r4, [r5, #0x50]
_080D12F4:
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806B120
	cmp r0, #0
	beq _080D1318
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080D1314
	movs r0, #0
_080D1314:
	str r0, [r5, #0x48]
	str r0, [r5, #0x50]
_080D1318:
	ldr r0, [r5, #0x54]
	lsls r0, r0, #1
	ldr r1, [r5, #0x4c]
	cmn r1, r0
	blt _080D13A6
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	b _080D13A6
	.align 2, 0
_080D132C: .4byte 0x08528D08
_080D1330:
	ldr r1, _080D1360 @ =0x08528D08
	adds r0, r5, #0
	movs r2, #4
	movs r3, #0
	bl sub_0806C828
	adds r6, r0, #0
	movs r0, #3
	ands r0, r6
	cmp r0, #0
	beq _080D1368
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080D1364
	str r4, [r5, #0x48]
	str r4, [r5, #0x50]
	b _080D1368
	.align 2, 0
_080D1360: .4byte 0x08528D08
_080D1364:
	str r0, [r5, #0x48]
	str r0, [r5, #0x50]
_080D1368:
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806B120
	cmp r0, #0
	beq _080D138C
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080D1388
	movs r0, #0
_080D1388:
	str r0, [r5, #0x48]
	str r0, [r5, #0x50]
_080D138C:
	movs r0, #8
	ands r0, r6
	cmp r0, #0
	beq _080D13A6
	movs r1, #0
	str r1, [r5, #0x50]
	str r1, [r5, #0x48]
	str r1, [r5, #0x54]
	str r1, [r5, #0x4c]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xc]
_080D13A6:
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
	b _080D14F0
_080D13C4:
	adds r0, r5, #0
	adds r0, #0x3c
	movs r4, #0
	strb r4, [r0]
	ldr r0, _080D1448 @ =0x00000127
	bl sub_080D7910
	movs r0, #0xf0
	lsls r0, r0, #1
	bl sub_080D7910
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #4
	beq _080D13F0
	adds r0, r5, #0
	movs r1, #4
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
_080D13F0:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	strb r4, [r5, #0xc]
_080D13F8:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080D145A
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #8
	beq _080D141C
	adds r0, r5, #0
	movs r1, #8
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
_080D141C:
	movs r1, #0
	movs r0, #0x30
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xc]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r5, #0x4c]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080D1450
	movs r0, #0xa0
	lsls r0, r0, #0xa
	str r0, [r5, #0x48]
	ldr r0, _080D144C @ =0xFFFFF700
	b _080D1458
	.align 2, 0
_080D1448: .4byte 0x00000127
_080D144C: .4byte 0xFFFFF700
_080D1450:
	ldr r0, _080D14A4 @ =0xFFFD8000
	str r0, [r5, #0x48]
	movs r0, #0x90
	lsls r0, r0, #4
_080D1458:
	str r0, [r5, #0x50]
_080D145A:
	adds r4, r5, #0
	adds r4, #0x3c
	movs r7, #0
	movs r0, #0x4b
	strb r0, [r4]
	ldr r1, _080D14A8 @ =0x08528D08
	adds r0, r5, #0
	movs r2, #4
	movs r3, #0
	bl sub_0806C828
	adds r6, r0, #0
	movs r0, #8
	ands r0, r6
	cmp r0, #0
	bne _080D1484
	ldr r0, [r5, #0x44]
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	str r0, [r5, #0x44]
_080D1484:
	movs r0, #3
	ands r0, r6
	cmp r0, #0
	beq _080D14B0
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080D14AC
	str r7, [r5, #0x48]
	str r7, [r5, #0x50]
	b _080D14B0
	.align 2, 0
_080D14A4: .4byte 0xFFFD8000
_080D14A8: .4byte 0x08528D08
_080D14AC:
	str r0, [r5, #0x48]
	str r0, [r5, #0x50]
_080D14B0:
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806B120
	cmp r0, #0
	beq _080D14D4
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080D14D0
	movs r0, #0
_080D14D0:
	str r0, [r5, #0x48]
	str r0, [r5, #0x50]
_080D14D4:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	movs r1, #0
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080D14F0
	ldrb r0, [r5, #0x1d]
	strb r0, [r4]
	movs r0, #2
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
_080D14F0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D14F8
sub_080D14F8: @ 0x080D14F8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r2, _080D156C @ =sub_080D2394
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	beq _080D1562
	ldr r0, _080D1570 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _080D1574 @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, _080D1578 @ =0xFFFD0000
	adds r0, r0, r1
	str r0, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	subs r2, #1
	ldrb r0, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080D157C @ =sub_0803B9D0
	str r0, [r4, #4]
_080D1562:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080D156C: .4byte sub_080D2394
_080D1570: .4byte 0x081C15F4
_080D1574: .4byte 0x0820ED60
_080D1578: .4byte 0xFFFD0000
_080D157C: .4byte sub_0803B9D0

	thumb_func_start sub_080D1580
sub_080D1580: @ 0x080D1580
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xb]
	cmp r5, #1
	beq _080D1634
	cmp r5, #1
	bgt _080D1594
	cmp r5, #0
	beq _080D15A2
	b _080D184C
_080D1594:
	cmp r5, #2
	bne _080D159A
	b _080D16EC
_080D159A:
	cmp r5, #0xff
	bne _080D15A0
	b _080D17E6
_080D15A0:
	b _080D184C
_080D15A2:
	str r5, [r4, #0x50]
	str r5, [r4, #0x48]
	str r5, [r4, #0x54]
	str r5, [r4, #0x4c]
	ldr r1, _080D15CC @ =0x08528D08
	adds r0, r4, #0
	movs r2, #4
	movs r3, #0
	bl sub_0806C828
	adds r2, r0, #0
	movs r0, #8
	ands r2, r0
	cmp r2, #0
	beq _080D15D0
	movs r0, #0x18
	strb r0, [r4, #0xd]
	movs r0, #0xff
	strb r0, [r4, #0xb]
	strb r5, [r4, #0xc]
	b _080D1604
	.align 2, 0
_080D15CC: .4byte 0x08528D08
_080D15D0:
	ldr r3, _080D1620 @ =0xFFFE8000
	str r3, [r4, #0x48]
	ldr r5, _080D1624 @ =0xFFFFF800
	str r5, [r4, #0x50]
	ldr r0, _080D1628 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080D162C @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r4, #0x40]
	cmp r1, r0
	bge _080D15F2
	rsbs r0, r3, #0
	str r0, [r4, #0x48]
	rsbs r0, r5, #0
	str r0, [r4, #0x50]
_080D15F2:
	ldr r0, _080D1630 @ =0xFFFF0000
	str r0, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	strb r2, [r4, #0xc]
_080D1604:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _080D1610
	b _080D184C
_080D1610:
	adds r0, r4, #0
	movs r1, #0xc
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
	b _080D184C
	.align 2, 0
_080D1620: .4byte 0xFFFE8000
_080D1624: .4byte 0xFFFFF800
_080D1628: .4byte gEwramData
_080D162C: .4byte 0x00013110
_080D1630: .4byte 0xFFFF0000
_080D1634:
	ldr r1, _080D16DC @ =0x08528D08
	adds r0, r4, #0
	movs r2, #4
	movs r3, #0
	bl sub_0806C828
	adds r5, r0, #0
	movs r0, #3
	ands r0, r5
	cmp r0, #0
	beq _080D1662
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080D165E
	movs r0, #0
_080D165E:
	str r0, [r4, #0x48]
	str r0, [r4, #0x50]
_080D1662:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806B120
	cmp r0, #0
	beq _080D1686
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080D1682
	movs r0, #0
_080D1682:
	str r0, [r4, #0x48]
	str r0, [r4, #0x50]
_080D1686:
	movs r0, #8
	ands r0, r5
	cmp r0, #0
	bne _080D1690
	b _080D184C
_080D1690:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _080D16A6
	adds r0, r4, #0
	movs r1, #0x12
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
_080D16A6:
	ldr r2, _080D16E0 @ =0xFFFE8000
	str r2, [r4, #0x48]
	movs r3, #0x80
	lsls r3, r3, #4
	str r3, [r4, #0x50]
	ldr r0, _080D16E4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080D16E8 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r4, #0x40]
	cmp r1, r0
	bge _080D16CA
	rsbs r0, r2, #0
	str r0, [r4, #0x48]
	rsbs r0, r3, #0
	str r0, [r4, #0x50]
_080D16CA:
	movs r1, #0
	str r1, [r4, #0x4c]
	str r1, [r4, #0x54]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
	b _080D184C
	.align 2, 0
_080D16DC: .4byte 0x08528D08
_080D16E0: .4byte 0xFFFE8000
_080D16E4: .4byte gEwramData
_080D16E8: .4byte 0x00013110
_080D16EC:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _080D1760
	ldr r1, _080D176C @ =0x08528D08
	adds r0, r4, #0
	movs r2, #4
	movs r3, #0
	bl sub_0806C828
	adds r5, r0, #0
	movs r0, #3
	ands r0, r5
	cmp r0, #0
	beq _080D1720
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080D171C
	movs r0, #0
_080D171C:
	str r0, [r4, #0x48]
	str r0, [r4, #0x50]
_080D1720:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806B120
	cmp r0, #0
	beq _080D1744
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080D1740
	movs r0, #0
_080D1740:
	str r0, [r4, #0x48]
	str r0, [r4, #0x50]
_080D1744:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #7
	bl __umodsi3
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080D1760
	adds r0, r4, #0
	bl sub_080D14F8
_080D1760:
	ldrb r2, [r4, #0xc]
	cmp r2, #0
	beq _080D1770
	cmp r2, #1
	beq _080D17AE
	b _080D184C
	.align 2, 0
_080D176C: .4byte 0x08528D08
_080D1770:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080D184C
	movs r1, #0x34
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _080D1790
	movs r0, #0xf0
	strb r0, [r4, #0xa]
	strb r2, [r4, #0xc]
	strb r2, [r4, #0xb]
	b _080D184C
_080D1790:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0xe
	beq _080D17A6
	adds r0, r4, #0
	movs r1, #0xe
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
_080D17A6:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	b _080D184C
_080D17AE:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r0, [r0]
	ands r2, r0
	cmp r2, #0
	beq _080D184C
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #4
	beq _080D17D0
	adds r0, r4, #0
	movs r1, #4
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
_080D17D0:
	movs r0, #0
	movs r1, #8
	strb r1, [r4, #0xd]
	str r0, [r4, #0x50]
	str r0, [r4, #0x48]
	str r0, [r4, #0x54]
	str r0, [r4, #0x4c]
	movs r1, #0xff
	strb r1, [r4, #0xb]
	strb r0, [r4, #0xc]
	b _080D184C
_080D17E6:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	movs r1, #0
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080D184C
	movs r2, #0x34
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bgt _080D1802
	movs r0, #0xf0
	b _080D1846
_080D1802:
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0
	bl sub_0806DF40
	cmp r0, #0
	beq _080D181E
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080D183C
_080D181E:
	movs r1, #0x80
	rsbs r1, r1, #0
	adds r0, r4, #0
	movs r2, #0
	bl sub_0806DF40
	cmp r0, #0
	beq _080D1842
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080D1842
_080D183C:
	movs r1, #0
	movs r0, #9
	b _080D1846
_080D1842:
	movs r1, #0
	movs r0, #2
_080D1846:
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080D184C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D1854
sub_080D1854: @ 0x080D1854
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #4
	bls _080D1862
	b _080D1A3A
_080D1862:
	lsls r0, r0, #2
	ldr r1, _080D186C @ =_080D1870
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080D186C: .4byte _080D1870
_080D1870: @ jump table
	.4byte _080D1884 @ case 0
	.4byte _080D18E6 @ case 1
	.4byte _080D1960 @ case 2
	.4byte _080D1978 @ case 3
	.4byte _080D1A30 @ case 4
_080D1884:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _080D18C2
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0xd
	beq _080D18A0
	adds r0, r5, #0
	movs r1, #0xd
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
_080D18A0:
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
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
_080D18C2:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080D18DE
	movs r1, #0
	movs r0, #0x18
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #2
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xc]
_080D18DE:
	adds r0, r5, #0
	bl sub_0803F17C
	b _080D1A3A
_080D18E6:
	ldrb r1, [r5, #0xd]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080D1924
	ldr r2, _080D1958 @ =0xFFFC0000
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080D1902
	rsbs r2, r2, #0
_080D1902:
	ldr r0, [r5, #0x40]
	adds r0, r0, r2
	ldr r1, [r5, #0x44]
	ldr r2, _080D195C @ =0xFFEA0000
	adds r1, r1, r2
	movs r3, #0x80
	lsls r3, r3, #8
	adds r2, r5, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	movs r2, #2
	str r2, [sp, #4]
	adds r2, r3, #0
	bl sub_0806DD64
_080D1924:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080D1934
	b _080D1A3A
_080D1934:
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0xc
	beq _080D194A
	adds r0, r5, #0
	movs r1, #0xc
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
_080D194A:
	movs r0, #0x18
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0
	b _080D1A38
	.align 2, 0
_080D1958: .4byte 0xFFFC0000
_080D195C: .4byte 0xFFEA0000
_080D1960:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080D1A3A
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0
	b _080D1A38
_080D1978:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _080D198A
	adds r0, r5, #0
	movs r1, #1
	bl sub_080CFC04
	ldrb r0, [r5, #0xc]
	b _080D1A36
_080D198A:
	ldr r6, _080D19F4 @ =gEwramData
	ldrb r0, [r5, #0x17]
	lsls r1, r0, #5
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080D19F8 @ =0x000004E4
	adds r1, r1, r0
	ldr r3, [r6]
	adds r1, r3, r1
	ldr r0, [r1]
	cmp r0, #0
	bne _080D1A04
	movs r0, #0x29
	bl sub_08012048
	ldr r2, [r6]
	ldr r0, _080D19FC @ =0x0000037E
	adds r3, r2, r0
	ldrh r1, [r3]
	movs r0, #4
	movs r4, #0
	orrs r0, r1
	strh r0, [r3]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	strb r4, [r5, #0xc]
	ldr r4, _080D1A00 @ =0x0000042C
	adds r2, r2, r4
	ldr r0, [r2]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	movs r0, #0
	bl sub_08034498
	ldr r2, [r6]
	adds r4, r2, r4
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4]
	movs r0, #0xd2
	lsls r0, r0, #2
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r2]
	b _080D1A3A
	.align 2, 0
_080D19F4: .4byte gEwramData
_080D19F8: .4byte 0x000004E4
_080D19FC: .4byte 0x0000037E
_080D1A00: .4byte 0x0000042C
_080D1A04:
	ldrb r0, [r1, #0xa]
	cmp r0, #0x7f
	bne _080D1A3A
	ldr r0, _080D1A28 @ =0x0000042C
	adds r2, r3, r0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080D1A2C @ =0x0000037E
	adds r2, r3, r0
	ldrh r1, [r2]
	movs r0, #4
	orrs r0, r1
	strh r0, [r2]
	b _080D1A3A
	.align 2, 0
_080D1A28: .4byte 0x0000042C
_080D1A2C: .4byte 0x0000037E
_080D1A30:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _080D1A3A
_080D1A36:
	adds r0, #1
_080D1A38:
	strb r0, [r5, #0xc]
_080D1A3A:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D1A44
sub_080D1A44: @ 0x080D1A44
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r2, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080D1A7C
	ldr r0, _080D1A78 @ =0x000001E1
	bl sub_080D7910
	movs r0, #0x25
	bl sub_08013CF0
	movs r1, #0
	movs r0, #0xb
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	movs r1, #0x34
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _080D1AD6
	adds r0, r4, #0
	bl sub_080683BC
	b _080D1AD6
	.align 2, 0
_080D1A78: .4byte 0x000001E1
_080D1A7C:
	ldrb r1, [r4, #0x14]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _080D1AD6
	ldrh r0, [r5]
	cmp r0, #2
	bne _080D1AD6
	adds r1, r4, #0
	adds r1, #0x20
	ldrb r0, [r1]
	cmp r0, #2
	bls _080D1AD2
	movs r0, #0x20
	strb r0, [r4, #0x15]
	strb r2, [r1]
	movs r0, #0xb
	strb r0, [r4, #0xa]
	strb r2, [r4, #0xc]
	strb r2, [r4, #0xb]
	ldrb r1, [r4, #0x1d]
	adds r0, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
	bl RandomNumberGenerator
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _080D1AC8
	ldr r0, _080D1AC4 @ =0x000001E3
	bl sub_080D7910
	b _080D1AD6
	.align 2, 0
_080D1AC4: .4byte 0x000001E3
_080D1AC8:
	movs r0, #0xf1
	lsls r0, r0, #1
	bl sub_080D7910
	b _080D1AD6
_080D1AD2:
	adds r0, #1
	strb r0, [r1]
_080D1AD6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080D1ADC
sub_080D1ADC: @ 0x080D1ADC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080D1B8C @ =0x0820C04C
	mov r8, r0
	ldr r6, _080D1B90 @ =0x08252A18
	ldr r7, _080D1B94 @ =0x081F82B4
	ldr r0, _080D1B98 @ =sub_080D2368
	bl sub_0806DFF8
	adds r4, r0, #0
	cmp r4, #0
	beq _080D1BA6
	str r6, [sp]
	adds r0, r4, #0
	adds r1, r7, #0
	mov r2, r8
	movs r3, #1
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080D1BA0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldrb r0, [r5, #0x10]
	strb r0, [r4, #0x11]
	ldrb r0, [r4, #0x10]
	strb r0, [r5, #0x12]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
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
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r3]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #0x4b
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	subs r1, #6
	strb r0, [r1]
	ldr r1, _080D1B9C @ =sub_0806E1B8
	adds r0, r4, #0
	movs r2, #0
	bl sub_0806D244
	movs r0, #1
	b _080D1BA8
	.align 2, 0
_080D1B8C: .4byte 0x0820C04C
_080D1B90: .4byte 0x08252A18
_080D1B94: .4byte 0x081F82B4
_080D1B98: .4byte sub_080D2368
_080D1B9C: .4byte sub_0806E1B8
_080D1BA0:
	adds r0, r4, #0
	bl sub_08000E14
_080D1BA6:
	movs r0, #0
_080D1BA8:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080D1BB4
sub_080D1BB4: @ 0x080D1BB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r0, _080D1BE0 @ =0x0820C04C
	mov sl, r0
	ldr r0, _080D1BE4 @ =0x08252A18
	mov r8, r0
	ldr r0, _080D1BE8 @ =0x081F82B4
	mov sb, r0
	movs r4, #1
	cmp r6, #1
	beq _080D1C00
	cmp r6, #1
	bgt _080D1BEC
	cmp r6, #0
	beq _080D1BF6
	b _080D1C12
	.align 2, 0
_080D1BE0: .4byte 0x0820C04C
_080D1BE4: .4byte 0x08252A18
_080D1BE8: .4byte 0x081F82B4
_080D1BEC:
	cmp r6, #2
	beq _080D1C08
	cmp r6, #3
	beq _080D1C10
	b _080D1C12
_080D1BF6:
	ldr r2, _080D1BFC @ =sub_080D1D20
	movs r4, #0
	b _080D1C12
	.align 2, 0
_080D1BFC: .4byte sub_080D1D20
_080D1C00:
	ldr r2, _080D1C04 @ =sub_080D1E5C
	b _080D1C12
	.align 2, 0
_080D1C04: .4byte sub_080D1E5C
_080D1C08:
	ldr r2, _080D1C0C @ =sub_080D1FE4
	b _080D1C12
	.align 2, 0
_080D1C0C: .4byte sub_080D1FE4
_080D1C10:
	ldr r2, _080D1C24 @ =sub_080D20E8
_080D1C12:
	adds r0, r2, #0
	bl sub_0806DFF8
	adds r5, r0, #0
	cmp r5, #0
	bne _080D1C28
	movs r0, #0
	b _080D1D0A
	.align 2, 0
_080D1C24: .4byte sub_080D20E8
_080D1C28:
	adds r3, r4, #0
	mov r0, r8
	str r0, [sp]
	adds r0, r5, #0
	mov r1, sb
	mov r2, sl
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080D1C48
	adds r0, r5, #0
	bl sub_08000E14
	movs r0, #0
	b _080D1D0A
_080D1C48:
	adds r4, r5, #0
	adds r4, #0x2c
	strb r6, [r4]
	ldrb r0, [r7, #0x10]
	strb r0, [r5, #0x11]
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	adds r0, r7, #0
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
	ldr r0, [r7, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r5, #0x44]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4]
	adds r1, r5, #0
	adds r1, #0x65
	strb r0, [r1]
	ldrb r1, [r3]
	movs r0, #0x20
	orrs r1, r0
	strb r1, [r3]
	cmp r6, #0
	beq _080D1CA6
	cmp r6, #2
	bne _080D1CC6
_080D1CA6:
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _080D1CB4
	movs r2, #0x10
_080D1CB4:
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	adds r1, #4
	ldrh r0, [r1]
	subs r0, #0x1a
	b _080D1CE8
_080D1CC6:
	cmp r6, #1
	bne _080D1CEA
	movs r2, #0x13
	rsbs r2, r2, #0
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _080D1CD8
	movs r2, #0x13
_080D1CD8:
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	adds r1, #4
	ldrh r0, [r1]
	subs r0, #6
_080D1CE8:
	strh r0, [r1]
_080D1CEA:
	ldr r1, _080D1D1C @ =sub_0806E1B8
	adds r0, r5, #0
	movs r2, #0
	bl sub_0806D244
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x3c
	movs r0, #0x55
	strb r0, [r1]
	adds r0, r5, #0
_080D1D0A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080D1D1C: .4byte sub_0806E1B8

	thumb_func_start sub_080D1D20
sub_080D1D20: @ 0x080D1D20
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080D1DE0
	cmp r0, #1
	bgt _080D1D36
	cmp r0, #0
	beq _080D1D3C
	b _080D1DF4
_080D1D36:
	cmp r0, #2
	beq _080D1DFA
	b _080D1DF4
_080D1D3C:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	blt _080D1E08
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
	adds r3, r5, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3]
	movs r3, #0xb0
	lsls r3, r3, #4
	strh r3, [r5, #0x36]
	ldrb r1, [r2]
	movs r4, #0x40
	adds r0, r4, #0
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	bne _080D1D82
	rsbs r0, r3, #0
	strh r0, [r5, #0x36]
_080D1D82:
	movs r2, #0xb0
	lsls r2, r2, #9
	str r2, [r5, #0x30]
	str r2, [r5, #0x48]
	ldrb r1, [r6]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _080D1D98
	rsbs r0, r2, #0
	str r0, [r5, #0x48]
_080D1D98:
	ldr r0, _080D1DDC @ =0xFFFC8000
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	ldrb r1, [r6]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r6]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	adds r0, r5, #0
	movs r1, #0x30
	movs r2, #5
	movs r3, #2
	bl sub_080458E4
	adds r0, r5, #0
	movs r1, #0x30
	movs r2, #3
	movs r3, #2
	bl sub_080458E4
	movs r0, #0xf6
	lsls r0, r0, #1
	bl sub_080D7910
	movs r0, #0xc5
	bl sub_080D7910
	b _080D1E10
	.align 2, 0
_080D1DDC: .4byte 0xFFFC8000
_080D1DE0:
	movs r4, #0x80
	lsls r4, r4, #0xc
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806D430
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806D460
_080D1DF4:
	adds r6, r5, #0
	adds r6, #0x58
	b _080D1E10
_080D1DFA:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080D1E08:
	adds r0, r5, #0
	bl sub_08000E14
	b _080D1E54
_080D1E10:
	ldrh r0, [r5, #0x36]
	ldrh r1, [r5, #0x34]
	adds r0, r0, r1
	movs r4, #0
	strh r0, [r5, #0x34]
	movs r1, #0x34
	ldrsh r0, [r5, r1]
	movs r2, #0x80
	lsls r2, r2, #9
	ldrb r1, [r6]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _080D1E4E
	movs r0, #2
	strb r0, [r5, #0xa]
	ldrb r0, [r6]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r6]
_080D1E4E:
	adds r0, r5, #0
	bl sub_0806E314
_080D1E54:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080D1E5C
sub_080D1E5C: @ 0x080D1E5C
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080D1EE4
	cmp r0, #1
	bgt _080D1E72
	cmp r0, #0
	beq _080D1E7A
	b _080D1FD6
_080D1E72:
	cmp r0, #2
	bne _080D1E78
	b _080D1FC0
_080D1E78:
	b _080D1FD6
_080D1E7A:
	movs r0, #1
	bl sub_0803E654
	adds r2, r0, #0
	cmp r2, #0
	bge _080D1E88
	b _080D1FCE
_080D1E88:
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
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	movs r2, #0xd0
	lsls r2, r2, #0xa
	str r2, [r5, #0x48]
	ldr r4, _080D1FB0 @ =0xFFFFF000
	str r4, [r5, #0x50]
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080D1ECE
	rsbs r0, r2, #0
	str r0, [r5, #0x48]
	rsbs r0, r4, #0
	str r0, [r5, #0x50]
_080D1ECE:
	ldrb r1, [r3]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	ldr r0, _080D1FB4 @ =0x000001E5
	bl sub_080D7910
_080D1EE4:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	adds r2, r1, #0
	ldr r1, [r5, #0x50]
	cmp r1, #0
	bge _080D1EFA
	ldr r0, _080D1FB8 @ =0xFFF80000
	cmp r2, r0
	bgt _080D1F04
_080D1EFA:
	cmp r1, #0
	ble _080D1F08
	ldr r0, _080D1FBC @ =0x0007FFFF
	cmp r2, r0
	bgt _080D1F08
_080D1F04:
	adds r0, r2, r1
	str r0, [r5, #0x48]
_080D1F08:
	ldrb r1, [r5, #0xd]
	adds r0, r1, #1
	strb r0, [r5, #0xd]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080D1F58
	movs r4, #0x80
	lsls r4, r4, #0xc
	ldr r0, [r5, #0x48]
	cmp r0, #0
	ble _080D1F22
	rsbs r4, r4, #0
_080D1F22:
	bl RandomNumberGenerator
	lsls r0, r0, #0xb
	lsrs r0, r0, #0xc
	ldr r1, _080D1FB8 @ =0xFFF80000
	adds r0, r0, r1
	ldr r1, [r5, #0x44]
	subs r1, r1, r0
	ldr r0, [r5, #0x40]
	adds r0, r0, r4
	movs r2, #4
	str r2, [sp]
	movs r2, #6
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #0
	bl sub_08045B44
	adds r1, r0, #0
	cmp r1, #0
	beq _080D1F58
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, #0x5c
	strb r0, [r1]
_080D1F58:
	movs r2, #0xb0
	lsls r2, r2, #3
	strh r2, [r5, #0x36]
	adds r3, r5, #0
	adds r3, #0x58
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080D1F70
	rsbs r0, r2, #0
	strh r0, [r5, #0x36]
_080D1F70:
	ldrh r0, [r5, #0x36]
	ldrh r1, [r5, #0x34]
	adds r0, r0, r1
	strh r0, [r5, #0x34]
	movs r1, #0x34
	ldrsh r0, [r5, r1]
	movs r2, #0x80
	lsls r2, r2, #9
	ldrb r1, [r3]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	movs r4, #0
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
	ldrh r0, [r5, #0x24]
	ldrh r1, [r5, #0x2a]
	adds r0, r0, r1
	strh r0, [r5, #0x2a]
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _080D1FD6
	movs r0, #2
	strb r0, [r5, #0xa]
	b _080D1FD6
	.align 2, 0
_080D1FB0: .4byte 0xFFFFF000
_080D1FB4: .4byte 0x000001E5
_080D1FB8: .4byte 0xFFF80000
_080D1FBC: .4byte 0x0007FFFF
_080D1FC0:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080D1FCE:
	adds r0, r5, #0
	bl sub_08000E14
	b _080D1FDC
_080D1FD6:
	adds r0, r5, #0
	bl sub_0806E314
_080D1FDC:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080D1FE4
sub_080D1FE4: @ 0x080D1FE4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080D203C
	cmp r0, #1
	bgt _080D1FF8
	cmp r0, #0
	beq _080D2002
	b _080D20BA
_080D1FF8:
	cmp r0, #2
	beq _080D2068
	cmp r0, #3
	beq _080D2070
	b _080D20BA
_080D2002:
	movs r3, #0x90
	lsls r3, r3, #0xa
	str r3, [r4, #0x30]
	str r3, [r4, #0x48]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080D201C
	rsbs r0, r3, #0
	str r0, [r4, #0x48]
_080D201C:
	ldr r0, _080D2038 @ =0xFFFFA000
	str r0, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r4, #0x54]
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	b _080D20B8
	.align 2, 0
_080D2038: .4byte 0xFFFFA000
_080D203C:
	ldr r1, [r4, #0x30]
	ldr r2, _080D2064 @ =0x08528D08
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806CAF8
	adds r1, r0, #0
	movs r2, #3
	ands r0, r2
	cmp r0, #0
	beq _080D2056
	movs r0, #0
	str r0, [r4, #0x30]
_080D2056:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080D20BA
	strb r2, [r4, #0xa]
	b _080D20BA
	.align 2, 0
_080D2064: .4byte 0x08528D08
_080D2068:
	adds r0, r4, #0
	bl sub_08000E14
	b _080D20DC
_080D2070:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080D2092
	ldr r0, _080D20E4 @ =0x00000129
	bl sub_080D7910
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x3c
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080D2092:
	ldrb r0, [r4, #0xd]
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080D20A8
	adds r0, r4, #0
	movs r1, #3
	bl sub_080D1BB4
_080D20A8:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080D20BA
	movs r0, #2
_080D20B8:
	strb r0, [r4, #0xa]
_080D20BA:
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _080D20D6
	movs r0, #2
	strb r0, [r4, #0xa]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
_080D20D6:
	adds r0, r4, #0
	bl sub_0806E314
_080D20DC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D20E4: .4byte 0x00000129

	thumb_func_start sub_080D20E8
sub_080D20E8: @ 0x080D20E8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080D211E
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #0x90
	lsls r0, r0, #9
	str r0, [r4, #0x30]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	movs r0, #0x91
	bl sub_080D7910
_080D211E:
	ldr r1, [r4, #0x30]
	ldr r2, _080D2158 @ =0x08528D08
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806CAF8
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _080D2136
	movs r0, #0
	str r0, [r4, #0x30]
_080D2136:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080D2150
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _080D215C
_080D2150:
	adds r0, r4, #0
	bl sub_08000E14
	b _080D2174
	.align 2, 0
_080D2158: .4byte 0x08528D08
_080D215C:
	adds r0, r4, #0
	bl sub_0806DF20
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_0806E314
_080D2174:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D217C
sub_080D217C: @ 0x080D217C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	movs r0, #0
	mov sl, r0
	mov sb, r0
	b _080D2260
_080D2190:
	ldr r4, _080D2284 @ =0x08528D3C
	add r4, sb
	mov r1, r8
	ldrb r0, [r1, #0x13]
	adds r0, #1
	strb r0, [r1, #0x13]
	ldrb r0, [r1, #0x10]
	strb r0, [r7, #0x11]
	mov r0, r8
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x5c
	strb r1, [r0]
	mov r0, r8
	adds r0, #0x2c
	ldrb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x2c
	strb r1, [r0]
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
	ldr r0, _080D2288 @ =0x081F429C
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	ldr r0, _080D228C @ =0x0820C004
	movs r1, #0
	bl sub_08068264
	adds r3, r0, #0
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r0, r7, #0
	ldr r1, _080D2290 @ =0x08250E94
	adds r2, r5, #0
	bl sub_0803B924
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080D2294 @ =sub_0803B9D0
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
	beq _080D224E
	rsbs r0, r3, #0
	str r0, [r7, #0x48]
	rsbs r2, r2, #0
_080D224E:
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	movs r0, #6
	add sb, r0
	movs r1, #1
	add sl, r1
_080D2260:
	mov r3, sl
	cmp r3, #4
	bgt _080D2276
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _080D2298 @ =sub_080D229C
	bl sub_08000DA0
	adds r7, r0, #0
	cmp r7, #0
	bne _080D2190
_080D2276:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D2284: .4byte 0x08528D3C
_080D2288: .4byte 0x081F429C
_080D228C: .4byte 0x0820C004
_080D2290: .4byte 0x08250E94
_080D2294: .4byte sub_0803B9D0
_080D2298: .4byte sub_080D229C

	thumb_func_start sub_080D229C
sub_080D229C: @ 0x080D229C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _080D2300 @ =gEwramData
	ldrb r1, [r4, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080D2304 @ =0x000004E4
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
	beq _080D22EA
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080D22EA
	adds r0, r4, #0
	adds r0, #0x46
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0xaa
	ble _080D2308
_080D22EA:
	ldrb r0, [r5, #0x13]
	subs r0, #1
	strb r0, [r5, #0x13]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	b _080D2320
	.align 2, 0
_080D2300: .4byte gEwramData
_080D2304: .4byte 0x000004E4
_080D2308:
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
_080D2320:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080D2328
sub_080D2328: @ 0x080D2328
	movs r2, #0
	movs r1, #2
	strb r1, [r0, #0xa]
	strb r2, [r0, #0xc]
	strb r2, [r0, #0xb]
	bx lr

	thumb_func_start sub_080D2334
sub_080D2334: @ 0x080D2334
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080D235A
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #5
	beq _080D2354
	adds r0, r4, #0
	movs r1, #5
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
_080D2354:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080D235A:
	adds r0, r4, #0
	bl sub_0803F17C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D2368
sub_080D2368: @ 0x080D2368
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080D238C
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_0806DF20
	adds r0, r4, #0
	bl sub_0806E314
_080D238C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D2394
sub_080D2394: @ 0x080D2394
	push {lr}
	adds r2, r0, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080D23AC
	adds r0, r2, #0
	bl sub_08000E14
	b _080D23B2
_080D23AC:
	adds r0, r2, #0
	bl sub_0803F17C
_080D23B2:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D23B8
sub_080D23B8: @ 0x080D23B8
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D23D0
	movs r3, #0x80
	lsls r3, r3, #9
	ldr r4, _080D23CC @ =gEwramData
	b _080D23F4
	.align 2, 0
_080D23CC: .4byte gEwramData
_080D23D0:
	ldr r0, _080D2418 @ =gEwramData
	ldr r1, [r0]
	ldr r3, _080D241C @ =0x00013110
	adds r1, r1, r3
	ldr r1, [r1]
	ldr r1, [r1, #0x48]
	adds r4, r0, #0
	cmp r1, #0
	bge _080D23E4
	rsbs r1, r1, #0
_080D23E4:
	movs r0, #0xc0
	lsls r0, r0, #5
	adds r3, r1, r0
	ldr r0, _080D2420 @ =0x00018FFF
	cmp r3, r0
	bgt _080D23F4
	movs r3, #0xc8
	lsls r3, r3, #9
_080D23F4:
	ldr r0, [r4]
	ldr r1, _080D241C @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x42
	adds r1, r2, #0
	adds r1, #0x42
	movs r4, #0
	ldrsh r2, [r0, r4]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r2, r0
	ble _080D2410
	rsbs r3, r3, #0
_080D2410:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080D2418: .4byte gEwramData
_080D241C: .4byte 0x00013110
_080D2420: .4byte 0x00018FFF

	thumb_func_start sub_080D2424
sub_080D2424: @ 0x080D2424
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r2, _080D244C @ =gEwramData
	ldr r3, [r2]
	ldr r1, _080D2450 @ =0x0000042C
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _080D2454
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _080D257E
	.align 2, 0
_080D244C: .4byte gEwramData
_080D2450: .4byte 0x0000042C
_080D2454:
	ldr r0, _080D24B0 @ =0x0000A094
	adds r2, r3, r0
	ldr r1, [r2, #4]
	movs r0, #0xf0
	lsls r0, r0, #0xf
	subs r0, r0, r1
	str r0, [r5, #0x40]
	ldr r1, [r2, #8]
	movs r0, #0x8f
	lsls r0, r0, #0x10
	subs r0, r0, r1
	str r0, [r5, #0x44]
	movs r1, #0x30
	ldrsh r2, [r5, r1]
	cmp r2, #1
	bne _080D24C6
	adds r0, r3, #0
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080D24EE
	ldr r1, _080D24B4 @ =0x00013266
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _080D24C6
	ldrh r1, [r5, #0x16]
	movs r0, #0x80
	movs r4, #0
	orrs r0, r1
	strh r0, [r5, #0x16]
	ldr r1, _080D24B8 @ =0x0000037E
	adds r0, r3, r1
	ldrh r0, [r0]
	ands r2, r0
	cmp r2, #0
	beq _080D24BC
	adds r0, r5, #0
	movs r1, #5
	bl sub_080D2584
	movs r0, #2
	b _080D252A
	.align 2, 0
_080D24B0: .4byte 0x0000A094
_080D24B4: .4byte 0x00013266
_080D24B8: .4byte 0x0000037E
_080D24BC:
	movs r0, #0
	bl sub_0800C5A8
	movs r0, #1
	b _080D252A
_080D24C6:
	ldr r0, [r4]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080D24EE
	movs r0, #1
	bl sub_0800C5A8
	adds r0, r5, #0
	bl sub_08034498
	ldr r0, [r4]
	ldr r1, _080D2534 @ =0x0000042C
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #2
	orrs r1, r2
	str r1, [r0]
_080D24EE:
	adds r0, r5, #0
	bl sub_0806B04C
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x14
	strb r0, [r1]
	ldr r0, _080D2538 @ =gEwramData
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080D253C
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r1]
	subs r0, #0x38
	movs r4, #0
	strh r0, [r1]
	adds r1, #4
	ldrh r0, [r1]
	subs r0, #0x40
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_080D31D0
	movs r0, #0xd0
_080D252A:
	strb r0, [r5, #0xa]
	strb r4, [r5, #0xc]
	strb r4, [r5, #0xb]
	b _080D257E
	.align 2, 0
_080D2534: .4byte 0x0000042C
_080D2538: .4byte gEwramData
_080D253C:
	ldr r1, _080D2560 @ =0x0000037E
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080D2568
	ldr r1, _080D2564 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080D2568
	adds r0, r5, #0
	bl sub_08000E14
	b _080D257E
	.align 2, 0
_080D2560: .4byte 0x0000037E
_080D2564: .4byte 0x000004CC
_080D2568:
	movs r0, #0x13
	bl sub_08013CF0
	adds r0, r5, #0
	bl sub_080D4168
	movs r1, #0
	movs r0, #3
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
_080D257E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080D2584
sub_080D2584: @ 0x080D2584
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _080D25C4 @ =0x08528D5C
	adds r6, r0, r1
	ldrh r1, [r4, #0x16]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080D25C0
	ldr r7, _080D25C8 @ =gEwramData
	ldr r0, [r7]
	ldr r1, _080D25CC @ =0x0000042C
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080D25C0
	ldr r2, _080D25D0 @ =sub_08000F38
	movs r0, #0x1b
	movs r1, #0x48
	bl sub_08000DA0
	mov ip, r0
	cmp r0, #0
	bne _080D25D4
_080D25C0:
	movs r0, #0
	b _080D2692
	.align 2, 0
_080D25C4: .4byte 0x08528D5C
_080D25C8: .4byte gEwramData
_080D25CC: .4byte 0x0000042C
_080D25D0: .4byte sub_08000F38
_080D25D4:
	mov r2, ip
	ldrb r0, [r2, #0x10]
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0x10]
	strb r0, [r2, #0x11]
	cmp r5, #0
	beq _080D25E6
	cmp r5, #5
	bne _080D2610
_080D25E6:
	movs r1, #0
	ldrsh r0, [r6, r1]
	lsls r0, r0, #0x10
	ldr r2, [r7]
	ldr r1, _080D260C @ =0x0000A094
	adds r2, r2, r1
	ldr r1, [r2, #4]
	subs r0, r0, r1
	mov r1, ip
	str r0, [r1, #0x40]
	movs r1, #2
	ldrsh r0, [r6, r1]
	lsls r0, r0, #0x10
	ldr r1, [r2, #8]
	subs r0, r0, r1
	mov r2, ip
	str r0, [r2, #0x44]
	b _080D261A
	.align 2, 0
_080D260C: .4byte 0x0000A094
_080D2610:
	ldr r0, [r4, #0x40]
	mov r1, ip
	str r0, [r1, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r1, #0x44]
_080D261A:
	movs r3, #0
	ldr r4, _080D2698 @ =gEwramData
	ldr r0, [r4]
	ldr r2, _080D269C @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	mov r2, ip
	ldr r1, [r2, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	bge _080D2632
	movs r3, #1
_080D2632:
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
	mov r1, ip
	strh r0, [r1, #0x30]
	ldrh r0, [r6, #0xa]
	strh r0, [r1, #0x32]
	mov r0, ip
	adds r0, #0x37
	strb r5, [r0]
	adds r1, #0x36
	movs r0, #0x20
	strb r0, [r1]
	ldr r0, _080D26A0 @ =sub_0803B9D0
	mov r2, ip
	str r0, [r2, #4]
	ldr r0, _080D26A4 @ =sub_0805B510
	str r0, [r2]
	mov r0, ip
	bl sub_0805B42C
	ldr r2, [r4]
	asrs r0, r5, #5
	lsls r0, r0, #2
	movs r1, #0xf5
	lsls r1, r1, #2
	adds r2, r2, r1
	adds r2, r2, r0
	movs r0, #0x1f
	ands r0, r5
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	movs r0, #1
_080D2692:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080D2698: .4byte gEwramData
_080D269C: .4byte 0x00013110
_080D26A0: .4byte sub_0803B9D0
_080D26A4: .4byte sub_0805B510

	thumb_func_start sub_080D26A8
sub_080D26A8: @ 0x080D26A8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r7, _080D26E0 @ =gEwramData
	ldrb r1, [r4, #0x14]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _080D26E4 @ =0x000004E4
	adds r0, r0, r3
	ldr r2, [r7]
	adds r5, r2, r0
	ldrb r1, [r4, #0x13]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	adds r6, r2, r0
	movs r0, #0
	bl sub_0800C5A8
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _080D2734
	cmp r0, #1
	bgt _080D26E8
	cmp r0, #0
	beq _080D26F2
	b _080D27B8
	.align 2, 0
_080D26E0: .4byte gEwramData
_080D26E4: .4byte 0x000004E4
_080D26E8:
	cmp r0, #2
	beq _080D274C
	cmp r0, #3
	beq _080D278C
	b _080D27B8
_080D26F2:
	movs r0, #4
	bl sub_0805B5E8
	adds r6, r0, #0
	ldrb r0, [r6, #0x10]
	strb r0, [r4, #0x13]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r7]
	ldr r0, _080D2730 @ =0x0000A094
	adds r1, r1, r0
	ldrh r2, [r1, #6]
	movs r0, #0x78
	subs r0, r0, r2
	adds r2, r6, #0
	adds r2, #0x42
	strh r0, [r2]
	ldrh r1, [r1, #0xa]
	movs r0, #0xbf
	subs r0, r0, r1
	adds r1, r6, #0
	adds r1, #0x46
	strh r0, [r1]
	movs r0, #0x50
	strb r0, [r4, #0xd]
	b _080D277E
	.align 2, 0
_080D2730: .4byte 0x0000A094
_080D2734:
	movs r0, #2
	movs r1, #0
	bl sub_080009A0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080D27B8
	b _080D277E
_080D274C:
	ldr r0, [r7]
	ldr r1, _080D2788 @ =0x0000042C
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D27B8
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #0
	bl sub_080D2584
_080D277E:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	b _080D27B8
	.align 2, 0
_080D2788: .4byte 0x0000042C
_080D278C:
	cmp r5, #0
	bne _080D279A
	strh r5, [r4, #0x30]
	adds r0, r4, #0
	bl sub_080D2424
	b _080D27B8
_080D279A:
	ldrb r0, [r5, #0xa]
	cmp r0, #0x80
	bne _080D27B8
	movs r0, #0
	strh r0, [r4, #0x30]
	ldr r1, [r7]
	ldr r0, _080D27C0 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, _080D27C4 @ =0xFFFBFFFF
	ands r0, r2
	str r0, [r1]
	adds r0, r4, #0
	bl sub_080D2424
_080D27B8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D27C0: .4byte 0x0000042C
_080D27C4: .4byte 0xFFFBFFFF

	thumb_func_start sub_080D27C8
sub_080D27C8: @ 0x080D27C8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _080D27EC @ =gEwramData
	ldrb r1, [r4, #0x12]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080D27F0 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r1, r1, r0
	ldrb r5, [r4, #0xb]
	cmp r5, #0
	beq _080D27F4
	cmp r5, #1
	beq _080D2818
	b _080D284A
	.align 2, 0
_080D27EC: .4byte gEwramData
_080D27F0: .4byte 0x000004E4
_080D27F4:
	ldrh r1, [r4, #0x16]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080D284A
	ldr r0, _080D2814 @ =0x000001DD
	bl sub_080D7910
	adds r0, r4, #0
	bl sub_080D31D0
	movs r0, #1
	strb r0, [r4, #0xb]
	strb r5, [r4, #0xc]
	b _080D284A
	.align 2, 0
_080D2814: .4byte 0x000001DD
_080D2818:
	adds r0, r1, #0
	adds r0, #0x36
	adds r2, r4, #0
	adds r2, #0x36
	ldrb r0, [r0]
	ldrb r2, [r2]
	cmp r0, r2
	bne _080D284A
	cmp r1, #0
	beq _080D284A
	adds r0, r1, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080D284A
	adds r0, r4, #0
	bl sub_080683BC
	movs r1, #0
	movs r0, #0xf0
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080D284A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080D2850
sub_080D2850: @ 0x080D2850
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r2, #0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	ldr r2, _080D28D4 @ =sub_080D2998
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r7, r0, #0
	cmp r7, #0
	bne _080D2876
	b _080D2988
_080D2876:
	adds r1, r7, #0
	adds r1, #0x5c
	movs r5, #0
	movs r0, #3
	strb r0, [r1]
	ldr r0, _080D28D8 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _080D28DC @ =0x0820ED60
	adds r0, r7, #0
	movs r3, #5
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #6
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r7, #0
	bl sub_0803F17C
	movs r0, #1
	strb r0, [r7, #0xc]
	ldr r0, _080D28E0 @ =sub_0803B9D0
	str r0, [r7, #4]
	cmp r4, #0
	beq _080D28EC
	ldr r2, _080D28E4 @ =sub_080D5FF0
	adds r0, r7, #0
	movs r1, #0xb
	movs r3, #0
	bl sub_0804277C
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _080D28E8 @ =0x0C0CFAFA
	adds r0, r7, #0
	bl sub_08042884
	b _080D28FC
	.align 2, 0
_080D28D4: .4byte sub_080D2998
_080D28D8: .4byte 0x081C15F4
_080D28DC: .4byte 0x0820ED60
_080D28E0: .4byte sub_0803B9D0
_080D28E4: .4byte sub_080D5FF0
_080D28E8: .4byte 0x0C0CFAFA
_080D28EC:
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
_080D28FC:
	adds r0, r7, #0
	adds r0, #0x42
	movs r1, #0
	mov r8, r1
	strh r6, [r0]
	adds r0, #4
	mov r1, sb
	strh r1, [r0]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x63
	movs r0, #0x40
	strb r0, [r1]
	adds r6, r7, #0
	adds r6, #0x24
	strb r4, [r6]
	ldr r0, _080D2974 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080D2978 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r5, [r0, #0x40]
	ldr r4, [r0, #0x44]
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	lsls r1, r1, #0xc
	subs r4, r4, r1
	ldr r0, _080D297C @ =0xFFF80000
	adds r4, r4, r0
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0802D344
	str r0, [r7, #0x18]
	bl RandomNumberGenerator
	ldr r2, _080D2980 @ =0x0000FFFF
	ands r0, r2
	ldr r1, [r7, #0x18]
	adds r1, r1, r0
	ands r1, r2
	str r1, [r7, #0x18]
	mov r1, r8
	str r1, [r7, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r7, #0x20]
	ldrb r0, [r6]
	cmp r0, #0
	beq _080D2984
	movs r0, #0xc8
	b _080D2986
	.align 2, 0
_080D2974: .4byte gEwramData
_080D2978: .4byte 0x00013110
_080D297C: .4byte 0xFFF80000
_080D2980: .4byte 0x0000FFFF
_080D2984:
	movs r0, #0x10
_080D2986:
	strb r0, [r7, #0xd]
_080D2988:
	adds r0, r7, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080D2998
sub_080D2998: @ 0x080D2998
	push {r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bhi _080D2A24
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D29CE
	ldr r0, _080D2A40 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080D2A44 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r2, [r0, #0x44]
	ldr r0, _080D2A48 @ =0xFFF00000
	adds r2, r2, r0
	ldr r3, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	str r0, [sp]
	adds r0, r4, #0
	bl sub_0802D408
	str r0, [r4, #0x18]
_080D29CE:
	ldr r0, [r4, #0x1c]
	adds r0, #0x2a
	str r0, [r4, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #7
	cmp r0, r2
	ble _080D29DE
	str r2, [r4, #0x1c]
_080D29DE:
	ldr r0, [r4, #0x20]
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r4, #0x20]
	movs r1, #0x80
	lsls r1, r1, #0xc
	cmp r0, r1
	ble _080D29F2
	str r1, [r4, #0x20]
_080D29F2:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	bl sub_080009E4
	ldr r1, [r4, #0x20]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x18]
	bl sub_080009E4
	ldr r1, [r4, #0x20]
	asrs r0, r0, #8
	asrs r1, r1, #8
	adds r2, r0, #0
	muls r2, r1, r2
	str r2, [r4, #0x4c]
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	adds r0, r0, r2
	str r0, [r4, #0x44]
_080D2A24:
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080D2A4C
	cmp r0, #1
	beq _080D2A64
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	b _080D2A7C
	.align 2, 0
_080D2A40: .4byte gEwramData
_080D2A44: .4byte 0x00013110
_080D2A48: .4byte 0xFFF00000
_080D2A4C:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080D2A7C
	movs r0, #8
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _080D2A7C
_080D2A64:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080D2A7C
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080D2A7C:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _080D2A88
	adds r0, r4, #0
	bl sub_0803F17C
_080D2A88:
	add sp, #0x14
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080D2A90
sub_080D2A90: @ 0x080D2A90
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x18]
	cmp r5, #0
	beq _080D2B10
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080D2AA6
	cmp r0, #1
	beq _080D2AF4
	b _080D2B04
_080D2AA6:
	bl RandomNumberGenerator
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	bne _080D2AB8
	ldr r0, _080D2B20 @ =0x0000016D
	bl sub_080D7910
_080D2AB8:
	ldr r0, _080D2B24 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _080D2B28 @ =0x0820ED60
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r3, [r0]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1c
	adds r0, r4, #0
	bl sub_0803B924
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _080D2B2C @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_080D2AF4:
	ldr r0, [r5, #0x40]
	ldr r1, [r4, #0x50]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, [r4, #0x54]
	adds r0, r0, r1
	str r0, [r4, #0x44]
_080D2B04:
	adds r0, r4, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _080D2B1A
	adds r0, r4, #0
_080D2B10:
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080D2B1A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080D2B20: .4byte 0x0000016D
_080D2B24: .4byte 0x081C15F4
_080D2B28: .4byte 0x0820ED60
_080D2B2C: .4byte sub_0803B9D0

	thumb_func_start sub_080D2B30
sub_080D2B30: @ 0x080D2B30
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r5, r0, #0
	mov r1, sp
	ldr r0, _080D2BA4 @ =0x08119558
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	ldrh r4, [r5, #0x18]
	adds r0, r4, #0
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xd
	mov r2, sp
	adds r1, r2, r0
	ldrh r6, [r1]
	add r1, sp, #4
	adds r1, r1, r0
	ldrh r7, [r1]
	adds r4, #1
	strh r4, [r5, #0x18]
	ldrb r0, [r5, #0xd]
	movs r1, #6
	bl __umodsi3
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080D2BA8
	bl RandomNumberGenerator
	adds r4, r6, #0
	adds r4, #0x10
	movs r5, #0x1f
	ands r0, r5
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl RandomNumberGenerator
	adds r1, r7, #0
	adds r1, #0x10
	ands r0, r5
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #1
	bl sub_080D2850
	b _080D2BD2
	.align 2, 0
_080D2BA4: .4byte 0x08119558
_080D2BA8:
	bl RandomNumberGenerator
	adds r4, r6, #0
	adds r4, #0x10
	movs r5, #0x1f
	ands r0, r5
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl RandomNumberGenerator
	adds r1, r7, #0
	adds r1, #0x10
	ands r0, r5
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0
	bl sub_080D2850
_080D2BD2:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D2BDC
sub_080D2BDC: @ 0x080D2BDC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r2, _080D2C1C @ =gEwramData
	ldrb r1, [r7, #0x14]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080D2C20 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r4, r1, r0
	ldr r2, _080D2C24 @ =0x0000042C
	adds r1, r1, r2
	ldr r0, [r1]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080D2C08
	b _080D31C2
_080D2C08:
	ldrb r0, [r7, #0xb]
	cmp r0, #6
	bls _080D2C10
	b _080D30E4
_080D2C10:
	lsls r0, r0, #2
	ldr r1, _080D2C28 @ =_080D2C2C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080D2C1C: .4byte gEwramData
_080D2C20: .4byte 0x000004E4
_080D2C24: .4byte 0x0000042C
_080D2C28: .4byte _080D2C2C
_080D2C2C: @ jump table
	.4byte _080D2C48 @ case 0
	.4byte _080D2D06 @ case 1
	.4byte _080D2D48 @ case 2
	.4byte _080D2D9C @ case 3
	.4byte _080D2EE0 @ case 4
	.4byte _080D2F88 @ case 5
	.4byte _080D2FBC @ case 6
_080D2C48:
	ldrb r5, [r7, #0xc]
	cmp r5, #0
	beq _080D2C54
	cmp r5, #1
	beq _080D2CE6
	b _080D30E4
_080D2C54:
	ldr r0, _080D2CA8 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _080D2CAC @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080D2CD4
	ldr r0, _080D2CB0 @ =0x0000042C
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r2]
	str r5, [sp, #8]
	ldr r1, _080D2CB4 @ =0x040000D4
	add r0, sp, #8
	str r0, [r1]
	ldr r0, _080D2CB8 @ =0x06004000
	str r0, [r1, #4]
	ldr r0, _080D2CBC @ =0x85000800
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r2]
	ldrh r1, [r7, #0x16]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080D2CC0
	adds r0, r7, #0
	movs r1, #3
	bl sub_080D2584
	cmp r0, #0
	bne _080D2CCC
	b _080D2CD4
	.align 2, 0
_080D2CA8: .4byte gEwramData
_080D2CAC: .4byte 0x000004CC
_080D2CB0: .4byte 0x0000042C
_080D2CB4: .4byte 0x040000D4
_080D2CB8: .4byte 0x06004000
_080D2CBC: .4byte 0x85000800
_080D2CC0:
	adds r0, r7, #0
	movs r1, #7
	bl sub_080D2584
	cmp r0, #0
	beq _080D2CD4
_080D2CCC:
	ldrb r0, [r7, #0xc]
	adds r0, #1
	strb r0, [r7, #0xc]
	b _080D2CDC
_080D2CD4:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	strb r5, [r7, #0xc]
_080D2CDC:
	ldrh r1, [r7, #0x16]
	movs r0, #0x10
	orrs r0, r1
	strh r0, [r7, #0x16]
	b _080D30E4
_080D2CE6:
	cmp r4, #0
	bne _080D2CEC
	b _080D30E4
_080D2CEC:
	ldr r0, [r4]
	cmp r0, #0
	beq _080D2CFE
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x20
	bne _080D2CFE
	b _080D30E4
_080D2CFE:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	movs r1, #0
	b _080D2F82
_080D2D06:
	ldrh r1, [r7, #0x16]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r7, #0x16]
	movs r0, #0x8c
	strb r0, [r7, #0xd]
	ldr r0, _080D2D2C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080D2D30 @ =0x00013266
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _080D2D34
	movs r0, #0xef
	lsls r0, r0, #1
	bl sub_080D7910
	b _080D2D3A
	.align 2, 0
_080D2D2C: .4byte gEwramData
_080D2D30: .4byte 0x00013266
_080D2D34:
	ldr r0, _080D2D44 @ =0x000001DB
	bl sub_080D7910
_080D2D3A:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	movs r1, #0
	b _080D2F82
	.align 2, 0
_080D2D44: .4byte 0x000001DB
_080D2D48:
	ldrb r0, [r7, #0xd]
	cmp r0, #0x20
	bne _080D2D5A
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x44]
	ldr r2, _080D2D90 @ =0xFFF80000
	adds r1, r1, r2
	bl sub_080D5F88
_080D2D5A:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080D2D6A
	b _080D30E4
_080D2D6A:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0
	strb r0, [r7, #0xc]
	ldrh r1, [r7, #0x16]
	movs r0, #0x40
	orrs r0, r1
	strh r0, [r7, #0x16]
	ldr r0, _080D2D94 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _080D2D98 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #3
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1]
	b _080D30E4
	.align 2, 0
_080D2D90: .4byte 0xFFF80000
_080D2D94: .4byte gEwramData
_080D2D98: .4byte 0x0000042C
_080D2D9C:
	ldrb r0, [r7, #0xc]
	cmp r0, #0
	bne _080D2E02
	movs r3, #0
	ldr r1, _080D2E4C @ =0x081FD2C0
	mov ip, r1
	ldr r2, _080D2E50 @ =gEwramData
	mov r8, r2
	movs r6, #0xf8
	lsls r6, r6, #2
	movs r4, #0
	movs r5, #0xfc
	lsls r5, r5, #2
_080D2DB6:
	mov r1, r8
	ldr r0, [r1]
	lsls r2, r3, #2
	adds r1, r0, r6
	adds r1, r1, r2
	str r4, [r1]
	adds r0, r0, r5
	adds r0, r0, r3
	strb r4, [r0]
	adds r3, #1
	cmp r3, #3
	ble _080D2DB6
	mov r0, ip
	bl sub_0803AFB8
	bl sub_0803B980
	ldr r0, _080D2E54 @ =0x081FF2C4
	bl sub_0803AFB8
	bl sub_0803B980
	ldr r0, _080D2E50 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _080D2E58 @ =0x0000037E
	adds r1, r1, r2
	ldrh r2, [r1]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _080D2E5C @ =0x00001010
	bl sub_080D7910
	movs r0, #0x40
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xc]
	adds r0, #1
	strb r0, [r7, #0xc]
_080D2E02:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080D2E12
	b _080D30E4
_080D2E12:
	ldrh r1, [r7, #0x16]
	movs r0, #0x40
	movs r4, #0
	orrs r0, r1
	strh r0, [r7, #0x16]
	ldr r6, _080D2E50 @ =gEwramData
	ldr r3, [r6]
	ldr r5, _080D2E60 @ =0x0000042C
	adds r2, r3, r5
	ldr r0, [r2]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	ldr r1, _080D2E64 @ =0x000004CC
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080D2ED6
	ldr r2, _080D2E68 @ =0x00013266
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #1
	bne _080D2E6C
	movs r0, #6
	b _080D2EDA
	.align 2, 0
_080D2E4C: .4byte 0x081FD2C0
_080D2E50: .4byte gEwramData
_080D2E54: .4byte 0x081FF2C4
_080D2E58: .4byte 0x0000037E
_080D2E5C: .4byte 0x00001010
_080D2E60: .4byte 0x0000042C
_080D2E64: .4byte 0x000004CC
_080D2E68: .4byte 0x00013266
_080D2E6C:
	ldrh r1, [r7, #0x16]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080D2EB8
	adds r0, r7, #0
	movs r1, #4
	bl sub_080D2584
	cmp r0, #0
	beq _080D2ED6
	adds r0, r7, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #1
	bl sub_080D2850
	ldrb r0, [r0, #0x10]
	strh r0, [r7, #0x1a]
	ldr r1, [r6]
	adds r1, r1, r5
	ldr r0, [r1]
	ldr r2, _080D2EB4 @ =0xFFFEFFFF
	ands r0, r2
	str r0, [r1]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	b _080D2EDA
	.align 2, 0
_080D2EB4: .4byte 0xFFFEFFFF
_080D2EB8:
	adds r0, r7, #0
	movs r1, #1
	bl sub_080D2584
	cmp r0, #0
	beq _080D2ED6
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	strb r4, [r7, #0xc]
	movs r0, #0xb6
	lsls r0, r0, #1
	bl sub_08013D60
	b _080D30E4
_080D2ED6:
	ldrb r0, [r7, #0xb]
	adds r0, #2
_080D2EDA:
	strb r0, [r7, #0xb]
	strb r4, [r7, #0xc]
	b _080D30E4
_080D2EE0:
	cmp r4, #0
	bne _080D2EE6
	b _080D30E4
_080D2EE6:
	ldrh r1, [r7, #0x16]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080D2F60
	ldr r2, _080D2F40 @ =gEwramData
	ldrh r1, [r7, #0x1a]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080D2F44 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r1, r1, r0
	ldr r1, [r1]
	cmp r1, #0
	bne _080D2F10
	ldrb r0, [r4, #0xb]
	cmp r0, #3
	bne _080D2F10
	strb r1, [r4, #0xd]
_080D2F10:
	ldrb r0, [r7, #0xd]
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080D2F5A
	ldrb r0, [r4, #0xb]
	adds r1, r0, #0
	adds r2, r0, #0
	cmp r1, #6
	bls _080D2F32
	cmp r1, #7
	bne _080D2F5A
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bhi _080D2F5A
_080D2F32:
	cmp r1, #7
	bne _080D2F48
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bne _080D2F48
	strb r1, [r7, #0xd]
	b _080D2F54
	.align 2, 0
_080D2F40: .4byte gEwramData
_080D2F44: .4byte 0x000004E4
_080D2F48:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _080D2F54
	movs r0, #7
	strb r0, [r7, #0xd]
_080D2F54:
	adds r0, r7, #0
	bl sub_080D2B30
_080D2F5A:
	ldrb r0, [r7, #0xd]
	adds r0, #1
	strb r0, [r7, #0xd]
_080D2F60:
	ldrb r0, [r4, #0xa]
	cmp r0, #0x80
	beq _080D2F68
	b _080D30E4
_080D2F68:
	ldrh r1, [r7, #0x16]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _080D2F7E
	ldrb r0, [r7, #0xb]
	adds r0, #1
	movs r1, #0
	b _080D2F82
_080D2F7E:
	ldrb r0, [r7, #0xb]
	adds r0, #2
_080D2F82:
	strb r0, [r7, #0xb]
	strb r1, [r7, #0xc]
	b _080D30E4
_080D2F88:
	ldrb r0, [r7, #0xc]
	cmp r0, #0
	bne _080D2FAC
	movs r0, #0
	bl sub_08034498
	ldr r0, _080D2FB4 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _080D2FB8 @ =0x0000042C
	adds r1, r1, r2
	ldr r0, [r1]
	movs r2, #3
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1]
	ldrb r0, [r7, #0xc]
	adds r0, #1
	strb r0, [r7, #0xc]
_080D2FAC:
	movs r0, #1
	bl sub_0800C5A8
	b _080D30E4
	.align 2, 0
_080D2FB4: .4byte gEwramData
_080D2FB8: .4byte 0x0000042C
_080D2FBC:
	movs r0, #1
	movs r1, #0
	bl sub_080009A0
	ldrb r6, [r7, #0xc]
	cmp r6, #0
	bne _080D3008
	movs r0, #0xb6
	lsls r0, r0, #1
	bl sub_08013E18
	ldr r0, _080D3004 @ =0x00000105
	bl sub_08013D60
	strb r6, [r7, #0xd]
	movs r5, #0x80
	lsls r5, r5, #9
	str r6, [sp]
	movs r4, #0xff
	str r4, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	adds r3, r5, #0
	bl sub_0803D18C
	str r6, [sp]
	str r4, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	adds r3, r5, #0
	bl sub_0803CDF0
	b _080D30B6
	.align 2, 0
_080D3004: .4byte 0x00000105
_080D3008:
	cmp r6, #1
	bne _080D3028
	ldrb r0, [r7, #0xd]
	cmp r0, #0x64
	bne _080D3018
	ldr r0, _080D3024 @ =0x00001041
	bl sub_080D7910
_080D3018:
	bl sub_0803D408
	cmp r0, #0
	bne _080D30BC
	b _080D30B6
	.align 2, 0
_080D3024: .4byte 0x00001041
_080D3028:
	cmp r6, #2
	bne _080D30BC
	ldr r0, _080D3048 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _080D304C @ =0x00013266
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D3054
	ldr r2, _080D3050 @ =0x0000042C
	adds r0, r1, r2
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #6
	b _080D305E
	.align 2, 0
_080D3048: .4byte gEwramData
_080D304C: .4byte 0x00013266
_080D3050: .4byte 0x0000042C
_080D3054:
	ldr r2, _080D31A0 @ =0x0000042C
	adds r0, r1, r2
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #8
_080D305E:
	orrs r1, r2
	str r1, [r0]
	ldr r4, _080D31A4 @ =gEwramData
	ldr r1, [r4]
	ldr r0, _080D31A8 @ =0x0000A074
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	mov r8, r0
	ands r0, r2
	strb r0, [r1]
	ldr r2, [r4]
	ldr r6, _080D31A0 @ =0x0000042C
	adds r2, r2, r6
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080D31AC @ =0x08522C54
	movs r5, #0
	str r5, [sp]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08011F44
	ldr r0, [r4]
	adds r0, #0x60
	bl sub_08011AD0
	movs r0, #0
	bl sub_08034498
	ldr r1, [r4]
	adds r1, r1, r6
	ldr r0, [r1]
	mov r2, r8
	ands r0, r2
	str r0, [r1]
	ldr r0, _080D31B0 @ =gDisplayRegisters
	adds r0, #0x48
	strh r5, [r0]
_080D30B6:
	ldrb r0, [r7, #0xc]
	adds r0, #1
	strb r0, [r7, #0xc]
_080D30BC:
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	adds r4, r0, #0
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	adds r2, r0, #0
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	movs r0, #2
	adds r1, r4, #0
	bl sub_08011F7C
_080D30E4:
	ldr r0, _080D31A4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080D31B4 @ =0x000004CC
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080D3192
	ldrh r1, [r7, #0x16]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080D3128
	ldrb r0, [r7, #0xb]
	cmp r0, #3
	bls _080D3128
	ldrb r4, [r7, #0xd]
	adds r0, r4, #0
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080D3122
	movs r0, #7
	strb r0, [r7, #0xd]
	adds r0, r7, #0
	bl sub_080D2B30
	strb r4, [r7, #0xd]
_080D3122:
	ldrb r0, [r7, #0xd]
	adds r0, #1
	strb r0, [r7, #0xd]
_080D3128:
	ldrb r0, [r7, #0xb]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080D3192
	ldr r5, _080D31A4 @ =gEwramData
	ldr r0, [r5]
	ldr r2, _080D31B4 @ =0x000004CC
	adds r0, r0, r2
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080D3192
	movs r4, #0
	movs r0, #0xaa
	movs r1, #0x3c
	movs r2, #0x1e
	bl sub_0805B814
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _080D3172
	ldr r0, [r5]
	ldr r1, _080D31B8 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r4, #0x10
	movs r0, #0xaa
	cmp r0, r1
	bge _080D3172
	movs r4, #0x20
_080D3172:
	cmp r4, #0
	bne _080D318A
	ldr r0, _080D31A4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080D31B8 @ =0x00013110
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, #0x58
	ldrb r0, [r1]
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r1]
_080D318A:
	movs r0, #1
	adds r1, r4, #0
	bl sub_080009A0
_080D3192:
	ldrb r0, [r7, #0xb]
	cmp r0, #5
	beq _080D31BC
	movs r0, #0
	bl sub_0800C5A8
	b _080D31C2
	.align 2, 0
_080D31A0: .4byte 0x0000042C
_080D31A4: .4byte gEwramData
_080D31A8: .4byte 0x0000A074
_080D31AC: .4byte 0x08522C54
_080D31B0: .4byte gDisplayRegisters
_080D31B4: .4byte 0x000004CC
_080D31B8: .4byte 0x00013110
_080D31BC:
	movs r0, #1
	bl sub_0800C5A8
_080D31C2:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D31D0
sub_080D31D0: @ 0x080D31D0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080D31F4 @ =0x0820C158
	mov r8, r0
	ldr r6, _080D31F8 @ =0x08254D84
	ldr r7, _080D31FC @ =0x081FD2C0
	ldr r0, _080D3200 @ =sub_080D32F8
	bl sub_0806DFF8
	adds r4, r0, #0
	cmp r4, #0
	bne _080D3204
	movs r0, #0
	b _080D32E6
	.align 2, 0
_080D31F4: .4byte 0x0820C158
_080D31F8: .4byte 0x08254D84
_080D31FC: .4byte 0x081FD2C0
_080D3200: .4byte sub_080D32F8
_080D3204:
	str r6, [sp]
	adds r0, r4, #0
	adds r1, r7, #0
	mov r2, r8
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080D3222
	adds r0, r4, #0
	bl sub_08000E14
	movs r0, #0
	b _080D32E6
_080D3222:
	ldrb r0, [r5, #0x10]
	strb r0, [r4, #0x11]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x5c
	strb r1, [r0]
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
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	adds r1, r4, #0
	adds r1, #0x59
	ldrb r0, [r1]
	movs r7, #2
	orrs r0, r7
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	subs r1, #0x23
	strb r0, [r1]
	movs r6, #0
	movs r0, #0xfa
	lsls r0, r0, #3
	strh r0, [r4, #0x34]
	ldrh r0, [r5, #0x2e]
	strh r0, [r4, #0x2e]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0x6e
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x3e
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0x10]
	strb r0, [r5, #0x12]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_080D33D4
	ldr r1, _080D32CC @ =gEwramData
	ldr r1, [r1]
	adds r1, #0x8e
	ldrb r2, [r1]
	movs r1, #0x40
	ands r1, r2
	cmp r1, #0
	beq _080D32D0
	movs r1, #0xd0
	strb r1, [r4, #0xa]
	strb r6, [r4, #0xc]
	strb r6, [r4, #0xb]
	b _080D32E6
	.align 2, 0
_080D32CC: .4byte gEwramData
_080D32D0:
	ldr r2, _080D32F4 @ =sub_080D5E44
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806D244
	adds r1, r4, #0
	adds r1, #0x72
	ldrb r0, [r1]
	orrs r0, r7
	strb r0, [r1]
	adds r0, r4, #0
_080D32E6:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080D32F4: .4byte sub_080D5E44

	thumb_func_start sub_080D32F8
sub_080D32F8: @ 0x080D32F8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _080D331C @ =gEwramData
	ldrb r1, [r4, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080D3320 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r3, r1, r0
	ldrb r0, [r4, #0xa]
	cmp r0, #0xd0
	bne _080D3324
	adds r0, r4, #0
	bl sub_0803F17C
	b _080D33CC
	.align 2, 0
_080D331C: .4byte gEwramData
_080D3320: .4byte 0x000004E4
_080D3324:
	cmp r3, #0
	beq _080D3362
	adds r0, r3, #0
	adds r0, #0x36
	adds r1, r4, #0
	adds r1, #0x36
	ldrb r0, [r0]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r1]
	cmp r0, r1
	beq _080D3344
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080D3344:
	ldrh r1, [r3, #0x16]
	strh r1, [r4, #0x16]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080D3358
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080D3358:
	ldrb r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080D33CC
_080D3362:
	ldrb r5, [r4, #0xa]
	cmp r5, #1
	beq _080D338E
	cmp r5, #1
	bgt _080D3372
	cmp r5, #0
	beq _080D3378
	b _080D33CC
_080D3372:
	cmp r5, #0xe0
	beq _080D33B0
	b _080D33CC
_080D3378:
	adds r0, r4, #0
	movs r1, #1
	bl sub_080D5F20
	cmp r0, #0
	beq _080D33CC
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	b _080D33CC
_080D338E:
	ldrh r1, [r4, #0x16]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080D33A2
	movs r1, #0
	movs r0, #0xe0
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080D33A2:
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806E314
	b _080D33CC
_080D33B0:
	ldrh r1, [r4, #0x16]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080D33CC
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_080D33CC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D33D4
sub_080D33D4: @ 0x080D33D4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _080D33F8 @ =0x0820C158
	mov r8, r0
	ldr r4, _080D33FC @ =0x08254D84
	ldr r7, _080D3400 @ =0x081FD2C0
	ldr r0, _080D3404 @ =sub_080D34FC
	bl sub_0806DFF8
	adds r5, r0, #0
	cmp r5, #0
	bne _080D3408
	movs r0, #0
	b _080D34EE
	.align 2, 0
_080D33F8: .4byte 0x0820C158
_080D33FC: .4byte 0x08254D84
_080D3400: .4byte 0x081FD2C0
_080D3404: .4byte sub_080D34FC
_080D3408:
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, r8
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080D3426
	adds r0, r5, #0
	bl sub_08000E14
	movs r0, #0
	b _080D34EE
_080D3426:
	ldrb r0, [r6, #0x10]
	strb r0, [r5, #0x11]
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r5, #0
	adds r3, #0x58
	movs r4, #1
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r6, #0x34]
	movs r7, #0
	strh r0, [r5, #0x34]
	ldrh r0, [r6, #0x2e]
	strh r0, [r5, #0x2e]
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x3c
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x3d
	strb r0, [r1]
	subs r2, #0x1b
	ldrb r0, [r2]
	orrs r0, r4
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x36
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	adds r0, r5, #0
	movs r1, #0
	bl sub_080D3638
	str r0, [r5, #0x28]
	adds r0, r5, #0
	movs r1, #1
	bl sub_080D3638
	str r0, [r5, #0x2c]
	adds r0, r5, #0
	bl sub_080D3A50
	ldr r1, _080D34E8 @ =gEwramData
	ldr r1, [r1]
	adds r1, #0x8e
	ldrb r2, [r1]
	movs r1, #0x40
	ands r1, r2
	cmp r1, #0
	beq _080D34EC
	movs r1, #0xd0
	strb r1, [r5, #0xa]
	strb r7, [r5, #0xc]
	strb r7, [r5, #0xb]
	b _080D34EE
	.align 2, 0
_080D34E8: .4byte gEwramData
_080D34EC:
	adds r0, r5, #0
_080D34EE:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080D34FC
sub_080D34FC: @ 0x080D34FC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _080D3520 @ =gEwramData
	ldrb r1, [r4, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080D3524 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r1, r1, r0
	ldrb r3, [r4, #0xa]
	cmp r3, #0xd0
	bne _080D3528
	adds r0, r4, #0
	bl sub_0803F17C
	b _080D3630
	.align 2, 0
_080D3520: .4byte gEwramData
_080D3524: .4byte 0x000004E4
_080D3528:
	cmp r1, #0
	beq _080D3570
	adds r0, r1, #0
	adds r0, #0x36
	adds r2, r4, #0
	adds r2, #0x36
	ldrb r0, [r0]
	ldrb r2, [r2]
	cmp r0, r2
	beq _080D354A
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _080D3630
_080D354A:
	ldrh r1, [r1, #0x16]
	movs r5, #0
	strh r1, [r4, #0x16]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080D3570
	cmp r3, #0xdf
	bhi _080D3570
	adds r2, r4, #0
	adds r2, #0x3e
	ldrb r0, [r2]
	movs r1, #2
	orrs r1, r0
	strb r1, [r2]
	movs r0, #0xe0
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
_080D3570:
	ldrb r5, [r4, #0xa]
	cmp r5, #1
	beq _080D359C
	cmp r5, #1
	bgt _080D3580
	cmp r5, #0
	beq _080D3586
	b _080D35D8
_080D3580:
	cmp r5, #0xe0
	beq _080D35BA
	b _080D35D8
_080D3586:
	adds r0, r4, #0
	movs r1, #0
	bl sub_080D5F20
	cmp r0, #0
	beq _080D35D8
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	b _080D35D8
_080D359C:
	ldrh r1, [r4, #0x16]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080D35B2
	movs r1, #0
	movs r0, #0xe0
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	b _080D35D8
_080D35B2:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080D35D8
_080D35BA:
	ldrh r1, [r4, #0x16]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080D3630
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	b _080D3630
_080D35D8:
	ldr r2, [r4, #0x28]
	ldrb r0, [r2, #0xc]
	cmp r0, #8
	bne _080D3618
	ldr r1, _080D3608 @ =0x0000FFFF
	ldrh r3, [r2, #0xa]
	movs r0, #0x81
	lsls r0, r0, #1
	cmp r3, r0
	bne _080D3618
	ldr r2, [r4, #0x2c]
	ldrb r0, [r2, #0xc]
	cmp r0, #8
	bne _080D360C
	ldrh r0, [r2, #0xa]
	ands r1, r0
	cmp r1, r3
	bne _080D360C
	movs r0, #0x87
	lsls r0, r0, #1
	bl sub_080D7910
	b _080D3630
	.align 2, 0
_080D3608: .4byte 0x0000FFFF
_080D360C:
	ldr r0, _080D3614 @ =0x0000010F
	bl sub_080D7910
	b _080D3630
	.align 2, 0
_080D3614: .4byte 0x0000010F
_080D3618:
	ldr r2, [r4, #0x2c]
	ldrb r0, [r2, #0xc]
	cmp r0, #8
	bne _080D3630
	ldrh r1, [r2, #0xa]
	movs r0, #0x81
	lsls r0, r0, #1
	cmp r1, r0
	bne _080D3630
	adds r0, #0xd
	bl sub_080D7910
_080D3630:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D3638
sub_080D3638: @ 0x080D3638
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	mov sb, r1
	ldr r0, _080D3660 @ =0x0820C158
	mov r8, r0
	ldr r6, _080D3664 @ =0x082553CC
	ldr r7, _080D3668 @ =0x081FF2C4
	ldr r0, _080D366C @ =sub_080D374C
	bl sub_0806DFF8
	adds r4, r0, #0
	cmp r4, #0
	bne _080D3670
	movs r0, #0
	b _080D373A
	.align 2, 0
_080D3660: .4byte 0x0820C158
_080D3664: .4byte 0x082553CC
_080D3668: .4byte 0x081FF2C4
_080D366C: .4byte sub_080D374C
_080D3670:
	str r6, [sp]
	adds r0, r4, #0
	adds r1, r7, #0
	mov r2, r8
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080D368C
	adds r0, r4, #0
	bl sub_08000E14
	b _080D373A
_080D368C:
	ldrb r0, [r5, #0x10]
	strb r0, [r4, #0x11]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #3
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	adds r3, r4, #0
	adds r3, #0x58
	movs r0, #1
	mov r1, sb
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x3e
	ldrb r0, [r1]
	movs r6, #4
	orrs r0, r6
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x36
	strb r0, [r1]
	movs r5, #0
	mov r0, sb
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r1, _080D3720 @ =gEwramData
	ldr r1, [r1]
	adds r1, #0x8e
	ldrb r2, [r1]
	movs r1, #0x40
	ands r1, r2
	cmp r1, #0
	beq _080D3724
	movs r1, #0xd0
	strb r1, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	b _080D373A
	.align 2, 0
_080D3720: .4byte gEwramData
_080D3724:
	ldr r1, _080D3748 @ =sub_0806E1B8
	adds r0, r4, #0
	movs r2, #0
	bl sub_0806D244
	adds r1, r4, #0
	adds r1, #0x72
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	adds r0, r4, #0
_080D373A:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080D3748: .4byte sub_0806E1B8

	thumb_func_start sub_080D374C
sub_080D374C: @ 0x080D374C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x88
	adds r7, r0, #0
	ldr r2, _080D37AC @ =gEwramData
	ldrb r1, [r7, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080D37B0 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r5, r1, r0
	ldr r1, _080D37B4 @ =0x08119580
	add r0, sp, #8
	movs r2, #0x40
	bl memcpy
	movs r2, #0x10
	mov r8, r2
	add r3, sp, #0x48
	mov ip, r3
	mov r1, ip
	ldr r0, _080D37B8 @ =0x081195C0
	ldm r0!, {r2, r4, r6}
	stm r1!, {r2, r4, r6}
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	add r2, sp, #0x68
	adds r1, r2, #0
	ldr r0, _080D37BC @ =0x081195E0
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r4, r6}
	stm r1!, {r4, r6}
	ldrb r4, [r7, #0xa]
	mov r3, ip
	cmp r4, #0xd0
	bne _080D37C0
	adds r0, r7, #0
	bl sub_0803F17C
	b _080D3A42
	.align 2, 0
_080D37AC: .4byte gEwramData
_080D37B0: .4byte 0x000004E4
_080D37B4: .4byte 0x08119580
_080D37B8: .4byte 0x081195C0
_080D37BC: .4byte 0x081195E0
_080D37C0:
	cmp r5, #0
	beq _080D37FC
	adds r0, r5, #0
	adds r0, #0x36
	adds r1, r7, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _080D37E2
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _080D3A42
_080D37E2:
	ldrh r1, [r5, #0x16]
	movs r6, #0
	strh r1, [r7, #0x16]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _080D37FC
	cmp r4, #0xdf
	bhi _080D37FC
	movs r0, #0xe0
	strb r0, [r7, #0xa]
	strb r6, [r7, #0xc]
	strb r6, [r7, #0xb]
_080D37FC:
	ldrb r4, [r7, #0xa]
	cmp r4, #1
	beq _080D3830
	cmp r4, #1
	bgt _080D380C
	cmp r4, #0
	beq _080D3818
	b _080D3A30
_080D380C:
	cmp r4, #2
	beq _080D3908
	cmp r4, #0xe0
	bne _080D3816
	b _080D3A12
_080D3816:
	b _080D3A30
_080D3818:
	adds r0, r7, #0
	movs r1, #1
	bl sub_080D5F20
	cmp r0, #0
	bne _080D3826
	b _080D3A30
_080D3826:
	movs r0, #1
	strb r0, [r7, #0xa]
	strb r4, [r7, #0xc]
	strb r4, [r7, #0xb]
	b _080D3A30
_080D3830:
	ldrb r0, [r7, #0xb]
	cmp r0, #1
	beq _080D3872
	cmp r0, #1
	bgt _080D3840
	cmp r0, #0
	beq _080D384A
	b _080D3A30
_080D3840:
	cmp r0, #2
	beq _080D38B8
	cmp r0, #3
	beq _080D38D4
	b _080D3A30
_080D384A:
	ldrb r0, [r7, #0xc]
	cmp r0, #0
	bne _080D38B8
	adds r0, r7, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D3866
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080D3866:
	movs r0, #0x80
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xc]
	adds r0, #1
	strb r0, [r7, #0xc]
	b _080D38B8
_080D3872:
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	ldrh r1, [r7, #0x1a]
	cmp r0, #0
	beq _080D3886
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	lsls r0, r0, #2
	adds r0, r3, r0
	b _080D388E
_080D3886:
	movs r3, #0x18
	ldrsh r0, [r7, r3]
	lsls r0, r0, #2
	adds r0, r2, r0
_080D388E:
	ldr r0, [r0]
	strb r0, [r7, #0xd]
	ldrh r0, [r7, #0x18]
	adds r0, #1
	strh r0, [r7, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	beq _080D38AE
	cmp r0, #7
	ble _080D38AE
	movs r0, #0
	strh r0, [r7, #0x18]
	movs r0, #1
	subs r0, r0, r1
	strh r0, [r7, #0x1a]
_080D38AE:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r7, #0xb]
	strb r1, [r7, #0xc]
_080D38B8:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080D38C8
	b _080D3A30
_080D38C8:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0
	strb r0, [r7, #0xc]
	b _080D3A30
_080D38D4:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrh r1, [r0]
	cmp r1, #0
	beq _080D38E0
	b _080D3A30
_080D38E0:
	cmp r5, #0
	bne _080D38E6
	b _080D3A30
_080D38E6:
	movs r0, #2
	strb r0, [r7, #0xa]
	strb r1, [r7, #0xc]
	strb r1, [r7, #0xb]
	adds r0, r7, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	bne _080D38FA
	b _080D3A30
_080D38FA:
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _080D3A30
_080D3908:
	ldrb r1, [r7, #0xb]
	cmp r1, #1
	beq _080D3930
	cmp r1, #1
	bgt _080D3918
	cmp r1, #0
	beq _080D391E
	b _080D3A30
_080D3918:
	cmp r1, #2
	beq _080D3944
	b _080D3A30
_080D391E:
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r7, #0x4c]
	strb r1, [r7, #0xc]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0x10
	strh r0, [r7, #0x1c]
_080D3930:
	ldrb r0, [r7, #0xc]
	lsls r0, r0, #2
	add r0, sp
	adds r0, #8
	ldr r0, [r0]
	subs r0, #1
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
_080D3944:
	movs r4, #0x1c
	ldrsh r0, [r7, r4]
	cmp r0, #0
	beq _080D39A0
	movs r1, #3
	bl __modsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080D399A
	ldr r5, _080D39EC @ =0xFFC80000
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080D396A
	rsbs r5, r5, #0
_080D396A:
	bl RandomNumberGenerator
	ldr r4, [r7, #0x40]
	adds r4, r4, r5
	ldr r6, _080D39F0 @ =0xFFFC0000
	adds r4, r4, r6
	ldr r5, _080D39F4 @ =0x0007FFFF
	ands r0, r5
	adds r4, r4, r0
	bl RandomNumberGenerator
	ldr r1, [r7, #0x44]
	adds r1, r1, r6
	ands r0, r5
	adds r1, r1, r0
	ldr r3, _080D39F8 @ =0xFFFFE000
	movs r0, #4
	str r0, [sp]
	movs r0, #9
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08045B44
_080D399A:
	ldrh r0, [r7, #0x1c]
	subs r0, #1
	strh r0, [r7, #0x1c]
_080D39A0:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	movs r1, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080D3A30
	ldr r0, [r7, #0x44]
	ldr r2, [r7, #0x4c]
	adds r0, r0, r2
	str r0, [r7, #0x44]
	ldrb r0, [r7, #0xc]
	adds r0, #1
	strb r0, [r7, #0xc]
	ands r0, r1
	cmp r0, r8
	bne _080D39FC
	movs r0, #0
	strh r0, [r7, #0x1c]
	adds r0, r7, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D39DE
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080D39DE:
	movs r1, #1
	strb r1, [r7, #0xa]
	movs r0, #0
	strb r0, [r7, #0xc]
	strb r1, [r7, #0xb]
	b _080D3A30
	.align 2, 0
_080D39EC: .4byte 0xFFC80000
_080D39F0: .4byte 0xFFFC0000
_080D39F4: .4byte 0x0007FFFF
_080D39F8: .4byte 0xFFFFE000
_080D39FC:
	ldrb r0, [r7, #0xc]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080D3A0A
	rsbs r0, r2, #0
	str r0, [r7, #0x4c]
_080D3A0A:
	ldrb r0, [r7, #0xb]
	subs r0, #1
	strb r0, [r7, #0xb]
	b _080D3A30
_080D3A12:
	ldrh r1, [r7, #0x16]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080D3A42
	adds r2, r7, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	b _080D3A42
_080D3A30:
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	beq _080D3A42
	adds r0, r7, #0
	bl sub_0806DF20
	adds r0, r7, #0
	bl sub_0806E314
_080D3A42:
	add sp, #0x88
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D3A50
sub_080D3A50: @ 0x080D3A50
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _080D3A74 @ =0x0820C158
	mov r8, r0
	ldr r4, _080D3A78 @ =0x08254D84
	ldr r7, _080D3A7C @ =0x081FF2C4
	ldr r0, _080D3A80 @ =sub_080D3B8C
	bl sub_0806DFF8
	adds r5, r0, #0
	cmp r5, #0
	bne _080D3A84
	movs r0, #0
	b _080D3B7A
	.align 2, 0
_080D3A74: .4byte 0x0820C158
_080D3A78: .4byte 0x08254D84
_080D3A7C: .4byte 0x081FF2C4
_080D3A80: .4byte sub_080D3B8C
_080D3A84:
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, r8
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080D3AA2
	adds r0, r5, #0
	bl sub_08000E14
	movs r0, #0
	b _080D3B7A
_080D3AA2:
	ldrb r0, [r6, #0x10]
	strb r0, [r5, #0x11]
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #2
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r5, #0
	adds r3, #0x58
	movs r4, #1
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	adds r1, r5, #0
	adds r1, #0x59
	ldrb r0, [r1]
	movs r7, #2
	orrs r0, r7
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x3e
	ldrb r0, [r2]
	movs r1, #0
	mov r8, r1
	orrs r0, r4
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x36
	strb r0, [r1]
	movs r1, #0x34
	ldrsh r0, [r6, r1]
	lsls r0, r0, #1
	movs r4, #0
	strh r0, [r5, #0x34]
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	lsls r0, r0, #1
	strh r0, [r5, #0x2e]
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x3c
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #1
	movs r1, #3
	bl __divsi3
	adds r1, r5, #0
	adds r1, #0x3d
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	ldr r1, _080D3B60 @ =gEwramData
	ldr r1, [r1]
	adds r1, #0x8e
	ldrb r2, [r1]
	movs r1, #0x40
	ands r1, r2
	cmp r1, #0
	beq _080D3B64
	movs r1, #0xd0
	strb r1, [r5, #0xa]
	strb r4, [r5, #0xc]
	strb r4, [r5, #0xb]
	b _080D3B7A
	.align 2, 0
_080D3B60: .4byte gEwramData
_080D3B64:
	ldr r2, _080D3B88 @ =sub_080D5E6C
	adds r0, r5, #0
	movs r1, #0
	bl sub_0806D244
	adds r1, r5, #0
	adds r1, #0x72
	ldrb r0, [r1]
	orrs r0, r7
	strb r0, [r1]
	adds r0, r5, #0
_080D3B7A:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080D3B88: .4byte sub_080D5E6C

	thumb_func_start sub_080D3B8C
sub_080D3B8C: @ 0x080D3B8C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D3BB0 @ =gEwramData
	ldrb r1, [r4, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080D3BB4 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r1, r1, r0
	ldrb r3, [r4, #0xa]
	cmp r3, #0xd0
	bne _080D3BB8
	adds r0, r4, #0
	bl sub_0803F17C
	b _080D3DD6
	.align 2, 0
_080D3BB0: .4byte gEwramData
_080D3BB4: .4byte 0x000004E4
_080D3BB8:
	cmp r3, #0xf0
	bne _080D3BC4
	adds r0, r4, #0
	bl sub_080D3DDC
	b _080D3DD6
_080D3BC4:
	cmp r1, #0
	beq _080D3BFE
	adds r0, r1, #0
	adds r0, #0x36
	adds r2, r4, #0
	adds r2, #0x36
	ldrb r0, [r0]
	ldrb r2, [r2]
	cmp r0, r2
	beq _080D3BE6
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _080D3DD6
_080D3BE6:
	ldrh r1, [r1, #0x16]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080D3BFE
	cmp r3, #0xdf
	bhi _080D3BFE
	movs r1, #0
	movs r0, #0xe0
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080D3BFE:
	ldrb r2, [r4, #0xa]
	cmp r2, #1
	beq _080D3C60
	cmp r2, #1
	bgt _080D3C0E
	cmp r2, #0
	beq _080D3C1A
	b _080D3DCA
_080D3C0E:
	cmp r2, #2
	beq _080D3D0A
	cmp r2, #0xe0
	bne _080D3C18
	b _080D3DBE
_080D3C18:
	b _080D3DCA
_080D3C1A:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080D3C38
	adds r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0x40
	strb r0, [r4, #0xd]
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	subs r0, #0x47
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
_080D3C38:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080D3C48
	b _080D3DCA
_080D3C48:
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r0, [r3]
	movs r1, #7
	rsbs r1, r1, #0
	ands r1, r0
	strb r1, [r3]
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r2, [r4, #0xc]
	strb r2, [r4, #0xb]
	b _080D3DCA
_080D3C60:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080D3CD2
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0806BC40
	adds r0, r4, #0
	bl sub_0806DE50
	cmp r0, #0
	bge _080D3C8C
	adds r0, r4, #0
	bl sub_0806DE50
	rsbs r2, r0, #0
	b _080D3C94
_080D3C8C:
	adds r0, r4, #0
	bl sub_0806DE50
	adds r2, r0, #0
_080D3C94:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _080D3CB2
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r4, #0x48]
	movs r0, #0
	str r0, [r4, #0x50]
	b _080D3CB8
_080D3CB2:
	ldr r0, _080D3CE8 @ =0xFFFD0000
	str r0, [r4, #0x48]
	str r1, [r4, #0x50]
_080D3CB8:
	ldr r1, [r4, #0x48]
	cmp r1, #0
	bge _080D3CC0
	rsbs r1, r1, #0
_080D3CC0:
	adds r0, r2, #0
	bl __divsi3
	movs r1, #0
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
_080D3CD2:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	movs r1, #0
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080D3CEC
	movs r0, #2
	b _080D3DB6
	.align 2, 0
_080D3CE8: .4byte 0xFFFD0000
_080D3CEC:
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
	b _080D3DCA
_080D3D0A:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080D3D16
	cmp r0, #1
	beq _080D3D64
	b _080D3DCA
_080D3D16:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _080D3D22
	cmp r0, #1
	beq _080D3D3E
	b _080D3DCA
_080D3D22:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #5
	beq _080D3D38
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080D3D38:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_080D3D3E:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080D3DCA
	ldr r0, _080D3D60 @ =0x00000111
	bl sub_080D7910
	ldrb r0, [r4, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
	b _080D3DCA
	.align 2, 0
_080D3D60: .4byte 0x00000111
_080D3D64:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _080D3D70
	cmp r0, #1
	beq _080D3D96
	b _080D3DCA
_080D3D70:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #3
	beq _080D3D86
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080D3D86:
	adds r0, r4, #0
	bl sub_080D406C
	movs r0, #0x80
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_080D3D96:
	ldrb r0, [r4, #0xd]
	cmp r0, #0x60
	bne _080D3DA4
	movs r0, #0x88
	lsls r0, r0, #1
	bl sub_080D7910
_080D3DA4:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	movs r1, #0
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080D3DCA
	movs r0, #1
_080D3DB6:
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	b _080D3DCA
_080D3DBE:
	movs r1, #0
	movs r0, #0xf0
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	b _080D3DD6
_080D3DCA:
	adds r0, r4, #0
	bl sub_0806DF20
	adds r0, r4, #0
	bl sub_0806E314
_080D3DD6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080D3DDC
sub_080D3DDC: @ 0x080D3DDC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x90
	adds r6, r0, #0
	ldr r2, _080D3E24 @ =gEwramData
	ldrb r1, [r6, #0x12]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _080D3E28 @ =0x000004E4
	adds r0, r0, r3
	ldr r2, [r2]
	adds r4, r2, r0
	ldrb r1, [r6, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	adds r5, r2, r0
	ldr r1, _080D3E2C @ =0x08119600
	mov r0, sp
	movs r2, #0x80
	bl memcpy
	ldrb r0, [r6, #0xb]
	cmp r0, #4
	bls _080D3E1A
	b _080D4054
_080D3E1A:
	lsls r0, r0, #2
	ldr r1, _080D3E30 @ =_080D3E34
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080D3E24: .4byte gEwramData
_080D3E28: .4byte 0x000004E4
_080D3E2C: .4byte 0x08119600
_080D3E30: .4byte _080D3E34
_080D3E34: @ jump table
	.4byte _080D3E48 @ case 0
	.4byte _080D3E94 @ case 1
	.4byte _080D3EBE @ case 2
	.4byte _080D3F90 @ case 3
	.4byte _080D3FB8 @ case 4
_080D3E48:
	adds r0, r6, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	adds r0, #0x36
	adds r1, r6, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080D3E74
	cmp r4, #0
	beq _080D3E74
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080D3E74:
	adds r2, r6, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r1, #0
	movs r0, #2
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xc]
_080D3E94:
	adds r0, r5, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080D3EB2
	cmp r5, #0
	beq _080D3EB2
	ldrh r1, [r5, #0x16]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080D3EB2
	b _080D4054
_080D3EB2:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xc]
	b _080D4054
_080D3EBE:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	movs r1, #0xff
	add r2, sp, #0x80
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080D3ED4
	b _080D4054
_080D3ED4:
	movs r0, #0x6e
	bl sub_080D7910
	ldrb r0, [r6, #0xc]
	lsls r0, r0, #2
	mov r3, sp
	adds r1, r3, r0
	movs r5, #0
	ldrsh r1, [r1, r5]
	movs r2, #2
	add r2, sp
	mov sb, r2
	add r0, sb
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r5, #0x5c
	adds r5, r5, r6
	mov sl, r5
	ldrb r3, [r5]
	lsls r1, r1, #0x10
	ldr r0, [r6, #0x40]
	adds r7, r1, r0
	lsls r2, r2, #0x10
	ldr r0, [r6, #0x44]
	adds r5, r2, r0
	ldr r0, _080D3F88 @ =0xFFBA0000
	adds r5, r5, r0
	subs r3, #1
	mov r8, r3
	ldr r2, _080D3F8C @ =sub_080D6060
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	beq _080D3F44
	str r7, [r4, #0x40]
	str r5, [r4, #0x44]
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
	adds r0, r4, #0
	adds r0, #0x5c
	mov r1, r8
	strb r1, [r0]
_080D3F44:
	ldrb r2, [r6, #0xc]
	lsls r2, r2, #2
	mov r3, sp
	adds r0, r3, r2
	movs r5, #0
	ldrsh r1, [r0, r5]
	lsls r1, r1, #0x10
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	add r2, sb
	movs r1, #0
	ldrsh r2, [r2, r1]
	subs r2, #0x46
	lsls r2, r2, #0x10
	ldr r1, [r6, #0x44]
	adds r1, r1, r2
	mov r3, sl
	ldrb r2, [r3]
	subs r2, #1
	movs r3, #0
	bl sub_0806D7F0
	ldrb r0, [r6, #0xc]
	adds r0, #1
	strb r0, [r6, #0xc]
	add r5, sp, #0x80
	ldrb r5, [r5]
	ands r0, r5
	cmp r0, #0x20
	beq _080D3FAC
	movs r0, #2
	strb r0, [r6, #0xd]
	b _080D4054
	.align 2, 0
_080D3F88: .4byte 0xFFBA0000
_080D3F8C: .4byte sub_080D6060
_080D3F90:
	ldrb r1, [r6, #0xc]
	cmp r1, #0
	bne _080D3F9E
	movs r0, #0x20
	strb r0, [r6, #0xd]
	adds r0, r1, #1
	strb r0, [r6, #0xc]
_080D3F9E:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080D4054
_080D3FAC:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	movs r0, #0
	strb r0, [r6, #0xc]
	b _080D4054
_080D3FB8:
	mov r0, sp
	adds r0, #2
	adds r1, r6, #0
	adds r1, #0x5c
	str r1, [sp, #0x88]
	adds r2, r6, #0
	adds r2, #0x59
	str r2, [sp, #0x84]
	str r0, [sp, #0x8c]
	mov sb, sp
	movs r3, #0x1c
	mov sl, r3
_080D3FD0:
	movs r0, #0x77
	bl sub_080D7910
	mov r5, sb
	movs r0, #0
	ldrsh r1, [r5, r0]
	ldr r3, [sp, #0x8c]
	movs r5, #0
	ldrsh r2, [r3, r5]
	ldr r0, [sp, #0x88]
	ldrb r3, [r0]
	lsls r1, r1, #0x10
	ldr r0, [r6, #0x40]
	adds r7, r1, r0
	lsls r2, r2, #0x10
	ldr r0, [r6, #0x44]
	adds r5, r2, r0
	ldr r1, _080D4064 @ =0xFFBA0000
	adds r5, r5, r1
	subs r3, #1
	mov r8, r3
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _080D4068 @ =sub_080D6060
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	beq _080D4032
	str r7, [r4, #0x40]
	str r5, [r4, #0x44]
	bl RandomNumberGenerator
	adds r3, r4, #0
	adds r3, #0x58
	movs r2, #1
	ands r0, r2
	lsls r0, r0, #6
	ldrb r1, [r3]
	movs r5, #0x41
	rsbs r5, r5, #0
	adds r2, r5, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	adds r0, r4, #0
	adds r0, #0x5c
	mov r1, r8
	strb r1, [r0]
_080D4032:
	ldr r2, [sp, #0x8c]
	adds r2, #0x10
	str r2, [sp, #0x8c]
	movs r3, #0x10
	add sb, r3
	movs r5, #4
	rsbs r5, r5, #0
	add sl, r5
	mov r0, sl
	cmp r0, #0
	bge _080D3FD0
	ldr r1, [sp, #0x84]
	ldrb r0, [r1]
	movs r1, #8
	orrs r0, r1
	ldr r2, [sp, #0x84]
	strb r0, [r2]
_080D4054:
	add sp, #0x90
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D4064: .4byte 0xFFBA0000
_080D4068: .4byte sub_080D6060

	thumb_func_start sub_080D406C
sub_080D406C: @ 0x080D406C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _080D4090 @ =0x0820C158
	mov r8, r0
	ldr r4, _080D4094 @ =0x08254D84
	ldr r7, _080D4098 @ =0x081FF2C4
	ldr r0, _080D409C @ =sub_080D5E94
	bl sub_0806DFF8
	adds r5, r0, #0
	cmp r5, #0
	bne _080D40A0
	movs r0, #0
	b _080D4158
	.align 2, 0
_080D4090: .4byte 0x0820C158
_080D4094: .4byte 0x08254D84
_080D4098: .4byte 0x081FF2C4
_080D409C: .4byte sub_080D5E94
_080D40A0:
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, r8
	movs r3, #1
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080D40BE
	adds r0, r5, #0
	bl sub_08000E14
	movs r0, #0
	b _080D4158
_080D40BE:
	ldrb r0, [r6, #0x10]
	strb r0, [r5, #0x11]
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r5, #0
	adds r3, #0x58
	movs r4, #1
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r5, #0x10]
	strb r0, [r6, #0x12]
	adds r1, r5, #0
	adds r1, #0x3e
	ldrb r0, [r1]
	movs r7, #0
	orrs r0, r4
	movs r4, #4
	orrs r0, r4
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	subs r1, #8
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	asrs r1, r0, #2
	adds r0, r5, #0
	adds r0, #0x3c
	strb r1, [r0]
	adds r0, r5, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	ldr r1, _080D4164 @ =sub_0806DFC8
	adds r0, r5, #0
	movs r2, #0
	bl sub_0806D244
	adds r1, r5, #0
	adds r1, #0x72
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	adds r0, r5, #0
_080D4158:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080D4164: .4byte sub_0806DFC8

	thumb_func_start sub_080D4168
sub_080D4168: @ 0x080D4168
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _080D418C @ =0x0820C090
	mov r8, r0
	ldr r4, _080D4190 @ =0x08253D60
	ldr r7, _080D4194 @ =0x081FB2BC
	ldr r0, _080D4198 @ =sub_080D42A8
	bl sub_0806DFF8
	adds r5, r0, #0
	cmp r5, #0
	bne _080D419C
	movs r0, #0
	b _080D4292
	.align 2, 0
_080D418C: .4byte 0x0820C090
_080D4190: .4byte 0x08253D60
_080D4194: .4byte 0x081FB2BC
_080D4198: .4byte sub_080D42A8
_080D419C:
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, r8
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080D41BA
	adds r0, r5, #0
	bl sub_08000E14
	movs r0, #0
	b _080D4292
_080D41BA:
	ldrb r0, [r6, #0x10]
	movs r4, #0
	strb r0, [r5, #0x11]
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
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
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #3
	strb r0, [r5, #0xa]
	strb r4, [r5, #0xc]
	strb r4, [r5, #0xb]
	subs r3, #0x1a
	ldrb r0, [r3]
	movs r2, #4
	orrs r0, r2
	strb r0, [r3]
	ldr r0, _080D4278 @ =0x000005DC
	strh r0, [r5, #0x34]
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r5, #0x2e]
	adds r1, r5, #0
	adds r1, #0x3c
	movs r0, #0x3c
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x64
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	subs r1, #7
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x37
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	orrs r2, r0
	strb r2, [r3]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	ldr r1, _080D427C @ =gEwramData
	ldr r1, [r1]
	adds r1, #0x8e
	ldrb r2, [r1]
	movs r1, #0x40
	ands r1, r2
	cmp r1, #0
	beq _080D4280
	movs r1, #0xd0
	strb r1, [r5, #0xa]
	strb r4, [r5, #0xc]
	strb r4, [r5, #0xb]
	b _080D4292
	.align 2, 0
_080D4278: .4byte 0x000005DC
_080D427C: .4byte gEwramData
_080D4280:
	adds r0, r5, #0
	bl sub_0806AF98
	ldr r1, _080D42A0 @ =sub_0806E1B8
	ldr r2, _080D42A4 @ =sub_080D4C98
	adds r0, r5, #0
	bl sub_0806D244
	adds r0, r5, #0
_080D4292:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080D42A0: .4byte sub_0806E1B8
_080D42A4: .4byte sub_080D4C98

	thumb_func_start sub_080D42A8
sub_080D42A8: @ 0x080D42A8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0xd0
	bne _080D42BA
	adds r0, r4, #0
	bl sub_0803F17C
	b _080D4598
_080D42BA:
	cmp r0, #5
	bne _080D42C6
	adds r0, r4, #0
	bl sub_080D49A8
	b _080D4598
_080D42C6:
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bne _080D42CE
	b _080D457E
_080D42CE:
	cmp r0, #6
	bgt _080D42D8
	cmp r0, #3
	beq _080D42E0
	b _080D458C
_080D42D8:
	cmp r0, #0xe0
	bne _080D42DE
	b _080D4586
_080D42DE:
	b _080D458C
_080D42E0:
	ldrb r6, [r4, #0xb]
	cmp r6, #1
	beq _080D433A
	cmp r6, #1
	bgt _080D42F0
	cmp r6, #0
	beq _080D42F6
	b _080D458C
_080D42F0:
	cmp r6, #2
	beq _080D4356
	b _080D458C
_080D42F6:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D430C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080D430C:
	ldrh r1, [r4, #0x16]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080D432C
	movs r1, #0
	ldr r0, _080D4328 @ =0x000005DC
	strh r0, [r4, #0x34]
	ldrb r0, [r4, #0xb]
	adds r0, #2
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
	b _080D458C
	.align 2, 0
_080D4328: .4byte 0x000005DC
_080D432C:
	movs r0, #0x10
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	strb r6, [r4, #0xc]
	b _080D458C
_080D433A:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080D434A
	b _080D458C
_080D434A:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0
	strb r0, [r4, #0xc]
	b _080D458C
_080D4356:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _080D4384
	cmp r0, #1
	bgt _080D4366
	cmp r0, #0
	beq _080D4374
	b _080D458C
_080D4366:
	cmp r0, #2
	bne _080D436C
	b _080D4490
_080D436C:
	cmp r0, #3
	bne _080D4372
	b _080D4550
_080D4372:
	b _080D458C
_080D4374:
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_080D4384:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #6
	beq _080D439A
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080D439A:
	adds r5, r4, #0
	adds r5, #0x6e
	ldrb r0, [r5]
	cmp r0, #2
	bne _080D43B8
	ldr r0, _080D443C @ =0x0820C090
	adds r1, r4, #0
	adds r1, #0x5a
	ldrb r3, [r1]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1c
	movs r1, #3
	movs r2, #1
	bl sub_0803C7B4
_080D43B8:
	ldrb r0, [r5]
	cmp r0, #3
	bne _080D43D2
	ldr r0, _080D443C @ =0x0820C090
	adds r1, r4, #0
	adds r1, #0x5a
	ldrb r3, [r1]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1c
	movs r1, #2
	movs r2, #1
	bl sub_0803C7B4
_080D43D2:
	ldrb r0, [r5]
	cmp r0, #4
	bne _080D43EC
	ldr r0, _080D443C @ =0x0820C090
	adds r1, r4, #0
	adds r1, #0x5a
	ldrb r3, [r1]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1c
	movs r1, #1
	movs r2, #1
	bl sub_0803C7B4
_080D43EC:
	ldrb r0, [r5]
	cmp r0, #0x15
	bne _080D4406
	ldr r0, _080D443C @ =0x0820C090
	adds r1, r4, #0
	adds r1, #0x5a
	ldrb r3, [r1]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1c
	movs r1, #0
	movs r2, #1
	bl sub_0803C7B4
_080D4406:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080D4416
	b _080D458C
_080D4416:
	adds r0, r4, #0
	bl sub_0806BC40
	ldrh r1, [r4, #0x16]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080D4448
	ldr r0, _080D4440 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080D4444 @ =0x0000A094
	adds r0, r0, r1
	ldr r1, [r0, #4]
	movs r0, #0xf0
	lsls r0, r0, #0xf
	subs r0, r0, r1
	str r0, [r4, #0x40]
	b _080D4466
	.align 2, 0
_080D443C: .4byte 0x0820C090
_080D4440: .4byte gEwramData
_080D4444: .4byte 0x0000A094
_080D4448:
	bl RandomNumberGenerator
	movs r1, #0xa0
	bl __umodsi3
	adds r0, #0x28
	ldr r1, _080D4484 @ =gEwramData
	ldr r1, [r1]
	ldr r2, _080D4488 @ =0x0000A094
	adds r1, r1, r2
	ldrh r1, [r1, #6]
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
_080D4466:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _080D448C @ =0x0820C090
	adds r1, r4, #0
	adds r1, #0x5a
	ldrb r3, [r1]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1c
	movs r1, #1
	movs r2, #1
	bl sub_0803C7B4
	b _080D458C
	.align 2, 0
_080D4484: .4byte gEwramData
_080D4488: .4byte 0x0000A094
_080D448C: .4byte 0x0820C090
_080D4490:
	adds r7, r4, #0
	adds r7, #0x6d
	ldrb r0, [r7]
	cmp r0, #5
	beq _080D44A6
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080D44A6:
	adds r5, r4, #0
	adds r5, #0x6e
	ldrb r0, [r5]
	cmp r0, #0xe
	bhi _080D44B6
	adds r0, r4, #0
	bl sub_0806BC40
_080D44B6:
	ldrb r0, [r5]
	cmp r0, #0x13
	bne _080D44D0
	ldr r0, _080D454C @ =0x0820C090
	adds r1, r4, #0
	adds r1, #0x5a
	ldrb r3, [r1]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1c
	movs r1, #2
	movs r2, #1
	bl sub_0803C7B4
_080D44D0:
	ldrb r0, [r5]
	cmp r0, #0x14
	bne _080D44EA
	ldr r0, _080D454C @ =0x0820C090
	adds r1, r4, #0
	adds r1, #0x5a
	ldrb r3, [r1]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1c
	movs r1, #3
	movs r2, #1
	bl sub_0803C7B4
_080D44EA:
	ldrb r0, [r5]
	cmp r0, #0x15
	bne _080D4504
	ldr r0, _080D454C @ =0x0820C090
	adds r1, r4, #0
	adds r1, #0x5a
	ldrb r3, [r1]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1c
	movs r1, #0
	movs r2, #1
	bl sub_0803C7B4
_080D4504:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080D458C
	ldr r0, _080D454C @ =0x0820C090
	adds r1, r4, #0
	adds r1, #0x5a
	ldrb r3, [r1]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1c
	movs r1, #0
	movs r2, #1
	bl sub_0803C7B4
	ldrb r0, [r7]
	cmp r0, #0
	beq _080D4538
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080D4538:
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	strb r6, [r4, #0xd]
	b _080D458C
	.align 2, 0
_080D454C: .4byte 0x0820C090
_080D4550:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	movs r2, #0
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080D458C
	ldrh r0, [r4, #0x16]
	adds r1, r0, #0
	ands r1, r6
	cmp r1, #0
	beq _080D4574
	movs r0, #0xe0
	strb r0, [r4, #0xa]
	strb r2, [r4, #0xc]
	strb r2, [r4, #0xb]
	b _080D458C
_080D4574:
	movs r0, #6
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	b _080D458C
_080D457E:
	adds r0, r4, #0
	bl sub_080D45A0
	b _080D458C
_080D4586:
	adds r0, r4, #0
	bl sub_080D4860
_080D458C:
	adds r0, r4, #0
	bl sub_0806DF20
	adds r0, r4, #0
	bl sub_0806E314
_080D4598:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D45A0
sub_080D45A0: @ 0x080D45A0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #8
	bls _080D45AC
	b _080D485A
_080D45AC:
	lsls r0, r0, #2
	ldr r1, _080D45B8 @ =_080D45BC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080D45B8: .4byte _080D45BC
_080D45BC: @ jump table
	.4byte _080D45E0 @ case 0
	.4byte _080D45F6 @ case 1
	.4byte _080D4640 @ case 2
	.4byte _080D4670 @ case 3
	.4byte _080D4704 @ case 4
	.4byte _080D472E @ case 5
	.4byte _080D476C @ case 6
	.4byte _080D47E8 @ case 7
	.4byte _080D4842 @ case 8
_080D45E0:
	adds r0, r4, #0
	bl sub_0806BCC4
	adds r1, r0, #0
	cmp r1, #0
	bne _080D45F0
	movs r0, #1
	b _080D466A
_080D45F0:
	movs r1, #0
	movs r0, #2
	b _080D466A
_080D45F6:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #7
	beq _080D460C
	adds r0, r4, #0
	movs r1, #7
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080D460C:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080D461C
	b _080D485A
_080D461C:
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
	movs r1, #0
	movs r0, #2
	b _080D466A
_080D4640:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #2
	beq _080D4656
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080D4656:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080D4666
	b _080D485A
_080D4666:
	movs r1, #0
	movs r0, #3
_080D466A:
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
	b _080D485A
_080D4670:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _080D4686
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080D4686:
	bl RandomNumberGenerator
	adds r5, r0, #0
	movs r6, #1
	ands r5, r6
	cmp r5, #0
	bne _080D46AC
	movs r0, #0x10
	strb r0, [r4, #0xd]
	ldr r0, _080D46A8 @ =0x000001D9
	bl sub_080D7910
	movs r0, #4
	strb r0, [r4, #0xb]
	strb r5, [r4, #0xc]
	b _080D485A
	.align 2, 0
_080D46A8: .4byte 0x000001D9
_080D46AC:
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	adds r5, r0, #0
	cmp r5, #0
	bne _080D46D4
	ldr r0, _080D46D0 @ =0x000001D7
	bl sub_080D7910
	strb r5, [r4, #0xd]
	movs r0, #5
	strb r0, [r4, #0xb]
	movs r0, #4
	strb r0, [r4, #0xc]
	b _080D485A
	.align 2, 0
_080D46D0: .4byte 0x000001D7
_080D46D4:
	movs r0, #0xec
	lsls r0, r0, #1
	bl sub_080D7910
	movs r0, #0
	strb r0, [r4, #0xd]
	movs r0, #6
	strb r0, [r4, #0xb]
	movs r0, #2
	strb r0, [r4, #0xc]
	bl RandomNumberGenerator
	adds r1, r0, #0
	ands r1, r6
	cmp r1, #0
	bne _080D46FC
	adds r0, r4, #0
	adds r0, #0x23
	strb r1, [r0]
	b _080D485A
_080D46FC:
	adds r0, r4, #0
	adds r0, #0x23
	strb r6, [r0]
	b _080D485A
_080D4704:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080D4714
	b _080D485A
_080D4714:
	movs r0, #0x7a
	bl sub_080D7910
	adds r0, r4, #0
	bl sub_080D4D20
	movs r0, #0x40
	strb r0, [r4, #0xd]
	movs r0, #8
	strb r0, [r4, #0xb]
	movs r0, #0
	strb r0, [r4, #0xc]
	b _080D485A
_080D472E:
	ldrb r0, [r4, #0xd]
	subs r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080D474E
	ldrb r1, [r4, #0xc]
	cmp r1, #0
	beq _080D4780
	adds r0, r4, #0
	movs r1, #0
	bl sub_080D4F3C
	movs r0, #0x18
	b _080D47BC
_080D474E:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _080D4758
	b _080D485A
_080D4758:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _080D485A
	adds r0, r4, #0
	bl sub_0806BCC4
	cmp r0, #0
	bne _080D485A
	movs r0, #5
	b _080D47E0
_080D476C:
	ldrb r0, [r4, #0xd]
	subs r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080D47C6
	ldrb r1, [r4, #0xc]
	cmp r1, #0
	bne _080D478C
_080D4780:
	movs r0, #8
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
	movs r0, #0x20
	strb r0, [r4, #0xd]
	b _080D485A
_080D478C:
	adds r0, r4, #0
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D47A4
	cmp r1, #2
	beq _080D47A8
	adds r0, r4, #0
	movs r1, #0
	bl sub_080D4F3C
	b _080D47BA
_080D47A4:
	cmp r1, #2
	beq _080D47B2
_080D47A8:
	adds r0, r4, #0
	movs r1, #1
	bl sub_080D4F3C
	b _080D47BA
_080D47B2:
	adds r0, r4, #0
	movs r1, #0
	bl sub_080D4F3C
_080D47BA:
	movs r0, #0x30
_080D47BC:
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	subs r0, #1
	strb r0, [r4, #0xc]
	b _080D485A
_080D47C6:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bhi _080D485A
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _080D485A
	adds r0, r4, #0
	bl sub_0806BCC4
	cmp r0, #0
	bne _080D485A
	movs r0, #6
_080D47E0:
	strb r0, [r4, #0x1c]
	movs r0, #7
	strb r0, [r4, #0xb]
	b _080D485A
_080D47E8:
	adds r5, r4, #0
	adds r5, #0x6d
	ldrb r0, [r5]
	cmp r0, #7
	beq _080D47FE
	adds r0, r4, #0
	movs r1, #7
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080D47FE:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080D485A
	ldrb r0, [r5]
	cmp r0, #1
	beq _080D481E
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080D481E:
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
	ldrb r0, [r4, #0x1c]
	strb r0, [r4, #0xb]
	b _080D485A
_080D4842:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	movs r1, #0
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080D485A
	movs r0, #3
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080D485A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080D4860
sub_080D4860: @ 0x080D4860
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xb]
	cmp r5, #0
	beq _080D4870
	cmp r5, #1
	beq _080D4892
	b _080D48E6
_080D4870:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _080D4886
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080D4886:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xd]
	b _080D48E6
_080D4892:
	adds r0, r4, #0
	bl sub_0806BC40
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080D48E6
	ldrb r0, [r4, #0xc]
	ands r5, r0
	cmp r5, #0
	beq _080D48C8
	bl RandomNumberGenerator
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	bne _080D48C8
	ldr r0, _080D48C4 @ =0x000001D9
	bl sub_080D7910
	b _080D48D0
	.align 2, 0
_080D48C4: .4byte 0x000001D9
_080D48C8:
	movs r0, #0x86
	lsls r0, r0, #1
	bl sub_080D7910
_080D48D0:
	ldrb r0, [r4, #0xc]
	movs r1, #1
	ands r1, r0
	adds r0, r4, #0
	bl sub_080D52A8
	movs r0, #0xa0
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_080D48E6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080D48EC
sub_080D48EC: @ 0x080D48EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	ldr r6, _080D4920 @ =0x0820C158
	ldr r4, _080D4924 @ =0x082563DC
	ldr r5, _080D4928 @ =0x0811954C
	ldr r0, _080D492C @ =sub_080D60D8
	bl sub_0806DFF8
	adds r7, r0, #0
	str r4, [sp]
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #5
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080D4930
	adds r0, r7, #0
	bl sub_08000E14
	b _080D4998
	.align 2, 0
_080D4920: .4byte 0x0820C158
_080D4924: .4byte 0x082563DC
_080D4928: .4byte 0x0811954C
_080D492C: .4byte sub_080D60D8
_080D4930:
	mov r1, r8
	ldrb r0, [r1, #0x10]
	strb r0, [r7, #0x11]
	mov r0, r8
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r7, #0
	adds r1, #0x5c
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
	mov r1, r8
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x40]
	ldr r0, [r1, #0x44]
	ldr r1, _080D49A4 @ =0xFFD00000
	adds r0, r0, r1
	str r0, [r7, #0x44]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r3]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3]
	ldrb r0, [r7, #0x10]
	mov r1, r8
	strb r0, [r1, #0x12]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r7, #0
	bl sub_0803F17C
_080D4998:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D49A4: .4byte 0xFFD00000

	thumb_func_start sub_080D49A8
sub_080D49A8: @ 0x080D49A8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r2, _080D49EC @ =gEwramData
	ldrb r1, [r4, #0x12]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _080D49F0 @ =0x000004E4
	adds r0, r0, r3
	ldr r2, [r2]
	adds r6, r2, r0
	ldrb r1, [r4, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	adds r5, r2, r0
	ldrb r1, [r5, #0x14]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	adds r2, r2, r0
	ldrb r0, [r4, #0xb]
	cmp r0, #4
	bls _080D49E2
	b _080D4C7A
_080D49E2:
	lsls r0, r0, #2
	ldr r1, _080D49F4 @ =_080D49F8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080D49EC: .4byte gEwramData
_080D49F0: .4byte 0x000004E4
_080D49F4: .4byte _080D49F8
_080D49F8: @ jump table
	.4byte _080D4A0C @ case 0
	.4byte _080D4ADA @ case 1
	.4byte _080D4B90 @ case 2
	.4byte _080D4C40 @ case 3
	.4byte _080D4C66 @ case 4
_080D4A0C:
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	bls _080D4A14
	b _080D4C7A
_080D4A14:
	lsls r0, r0, #2
	ldr r1, _080D4A20 @ =_080D4A24
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080D4A20: .4byte _080D4A24
_080D4A24: @ jump table
	.4byte _080D4A38 @ case 0
	.4byte _080D4A42 @ case 1
	.4byte _080D4A5A @ case 2
	.4byte _080D4AA2 @ case 3
	.4byte _080D4AC0 @ case 4
_080D4A38:
	movs r0, #0x20
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_080D4A42:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080D4A52
	b _080D4C7A
_080D4A52:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	b _080D4C7A
_080D4A5A:
	ldrh r1, [r5, #0x16]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080D4A6E
	adds r0, r5, #0
	movs r1, #2
	bl sub_080D2584
	b _080D4A76
_080D4A6E:
	adds r0, r5, #0
	movs r1, #6
	bl sub_080D2584
_080D4A76:
	cmp r0, #0
	beq _080D4A80
	ldrb r0, [r4, #0xc]
	adds r0, #1
	b _080D4A84
_080D4A80:
	ldrb r0, [r4, #0xc]
	adds r0, #2
_080D4A84:
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D4A9C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080D4A9C:
	movs r0, #0x40
	strb r0, [r4, #0xd]
	b _080D4C7A
_080D4AA2:
	cmp r2, #0
	bne _080D4AA8
	b _080D4C7A
_080D4AA8:
	ldr r0, [r2]
	cmp r0, #0
	beq _080D4ABA
	adds r0, r2, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x20
	bne _080D4ABA
	b _080D4C7A
_080D4ABA:
	movs r1, #0
	movs r0, #1
	b _080D4C36
_080D4AC0:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080D4AD0
	b _080D4C7A
_080D4AD0:
	movs r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0
	strb r0, [r4, #0xc]
	b _080D4C7A
_080D4ADA:
	movs r3, #0
	movs r0, #0x46
	adds r0, r0, r4
	mov r8, r0
	ldr r1, _080D4B7C @ =gEwramData
	mov ip, r1
	movs r7, #0xf8
	lsls r7, r7, #2
	movs r5, #0
	movs r6, #0xfc
	lsls r6, r6, #2
_080D4AF0:
	mov r1, ip
	ldr r0, [r1]
	lsls r2, r3, #2
	adds r1, r0, r7
	adds r1, r1, r2
	str r5, [r1]
	adds r0, r0, r6
	adds r0, r0, r3
	strb r5, [r0]
	adds r3, #1
	cmp r3, #3
	ble _080D4AF0
	adds r0, r4, #0
	movs r1, #1
	bl sub_0803AAEC
	ldr r0, _080D4B80 @ =0x0811954C
	ldr r6, _080D4B84 @ =0x0820C158
	ldr r7, _080D4B88 @ =0x082563DC
	movs r1, #1
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _080D4B48
	adds r0, r6, #0
	movs r1, #6
	bl sub_08068264
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	blt _080D4B48
	adds r0, r4, #0
	adds r0, #0x2c
	strb r1, [r0]
	ldrb r3, [r0]
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _080D4B8C @ =sub_0803B9D0
	str r0, [r4, #4]
_080D4B48:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
	adds r0, r4, #0
	bl sub_080D48EC
	mov r1, r8
	ldrh r0, [r1]
	subs r0, #0x1a
	strh r0, [r1]
	movs r0, #0xee
	lsls r0, r0, #1
	bl sub_080D7910
	b _080D4C7A
	.align 2, 0
_080D4B7C: .4byte gEwramData
_080D4B80: .4byte 0x0811954C
_080D4B84: .4byte 0x0820C158
_080D4B88: .4byte 0x082563DC
_080D4B8C: .4byte sub_0803B9D0
_080D4B90:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0x11
	bne _080D4BB0
	ldr r0, _080D4C3C @ =0x0820C158
	adds r1, r4, #0
	adds r1, #0x5a
	ldrb r3, [r1]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1c
	movs r1, #7
	movs r2, #1
	bl sub_0803C7B4
_080D4BB0:
	ldrb r0, [r5]
	cmp r0, #0x19
	bne _080D4BD0
	movs r0, #0xfe
	bl sub_080D7910
	ldr r0, _080D4C3C @ =0x0820C158
	adds r1, r4, #0
	adds r1, #0x5a
	ldrb r3, [r1]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1c
	movs r1, #8
	movs r2, #1
	bl sub_0803C7B4
_080D4BD0:
	ldrb r0, [r5]
	cmp r0, #0x21
	bne _080D4BEA
	ldr r0, _080D4C3C @ =0x0820C158
	adds r1, r4, #0
	adds r1, #0x5a
	ldrb r3, [r1]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1c
	movs r1, #5
	movs r2, #1
	bl sub_0803C7B4
_080D4BEA:
	ldrb r0, [r5]
	cmp r0, #0x17
	bhi _080D4C04
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D4C04
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
_080D4C04:
	ldrb r0, [r5]
	cmp r0, #0x29
	bne _080D4C18
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_080D4C18:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080D4C7A
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	movs r1, #0
	movs r0, #3
_080D4C36:
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
	b _080D4C7A
	.align 2, 0
_080D4C3C: .4byte 0x0820C158
_080D4C40:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080D4C8E
	ldrh r0, [r5, #0x16]
	movs r1, #4
	movs r2, #0
	orrs r0, r1
	strh r0, [r5, #0x16]
	strb r1, [r4, #0xb]
	strb r2, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl sub_0803AAEC
	b _080D4C8E
_080D4C66:
	ldr r0, [r6]
	cmp r0, #0
	bne _080D4C8E
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _080D4C8E
_080D4C7A:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080D4C8E
	adds r0, r4, #0
	bl sub_0803F17C
_080D4C8E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080D4C98
sub_080D4C98: @ 0x080D4C98
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r6, _080D4CD4 @ =gEwramData
	ldrb r3, [r4, #0x11]
	lsls r0, r3, #5
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r3, _080D4CD8 @ =0x000004E4
	adds r0, r0, r3
	ldr r3, [r6]
	adds r5, r3, r0
	adds r0, r4, #0
	bl sub_080D5EC0
	cmp r0, #0
	beq _080D4D0E
	ldrh r2, [r4, #0x16]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	bne _080D4CDC
	movs r0, #0
	movs r1, #2
	orrs r1, r2
	strh r1, [r4, #0x16]
	movs r1, #3
	strb r1, [r4, #0xa]
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xb]
	b _080D4D0E
	.align 2, 0
_080D4CD4: .4byte gEwramData
_080D4CD8: .4byte 0x000004E4
_080D4CDC:
	movs r1, #0
	movs r0, #5
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	ldr r0, [r6]
	ldr r1, _080D4D1C @ =0x0001325C
	adds r3, r0, r1
	movs r1, #0
	ldrb r0, [r3, #0xd]
	cmp r0, #0x2c
	bne _080D4D0E
	ldrb r0, [r3, #0xe]
	cmp r0, #2
	bne _080D4D0E
	ldrb r0, [r3, #0xf]
	cmp r0, #7
	beq _080D4D02
	movs r1, #1
_080D4D02:
	cmp r1, #0
	bne _080D4D0E
	ldrh r1, [r5, #0x16]
	movs r0, #8
	orrs r0, r1
	strh r0, [r5, #0x16]
_080D4D0E:
	movs r0, #0xed
	lsls r0, r0, #1
	bl sub_080D7910
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080D4D1C: .4byte 0x0001325C

	thumb_func_start sub_080D4D20
sub_080D4D20: @ 0x080D4D20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r0, _080D4D44 @ =0x0820C090
	mov sl, r0
	ldr r1, _080D4D48 @ =0x08253D60
	mov sb, r1
	ldr r2, _080D4D4C @ =0x081FB2BC
	mov r8, r2
	movs r7, #1
	str r7, [sp, #0x10]
	movs r6, #0
	add r4, sp, #4
	b _080D4DEA
	.align 2, 0
_080D4D44: .4byte 0x0820C090
_080D4D48: .4byte 0x08253D60
_080D4D4C: .4byte 0x081FB2BC
_080D4D50:
	mov r1, sb
	str r1, [sp]
	mov r1, r8
	mov r2, sl
	movs r3, #4
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080D4D6A
	movs r2, #0
	str r2, [sp, #0x10]
	b _080D4E04
_080D4D6A:
	ldr r1, [r4]
	ldrb r0, [r5, #0x10]
	strb r0, [r1, #0x11]
	ldr r1, [r4]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, #0x5c
	strb r0, [r1]
	ldr r3, [r4]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	movs r2, #1
	subs r2, r2, r0
	adds r3, #0x58
	movs r0, #1
	ands r2, r0
	lsls r2, r2, #6
	ldrb r0, [r3]
	movs r7, #0x41
	rsbs r7, r7, #0
	adds r1, r7, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	ldr r1, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r1, #0x40]
	ldr r1, [r4]
	ldr r0, [r5, #0x44]
	ldr r2, _080D4E2C @ =0xFFE00000
	adds r0, r0, r2
	str r0, [r1, #0x44]
	ldr r2, [r4]
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r4]
	adds r0, #0x3c
	movs r1, #0x46
	strb r1, [r0]
	ldr r0, [r4]
	strb r6, [r0, #0x14]
	ldr r0, [r4]
	movs r1, #8
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldr r0, [r4]
	bl sub_0803F17C
	ldm r4!, {r0}
	ldr r1, _080D4E30 @ =sub_080D6138
	ldr r2, _080D4E34 @ =sub_080D5E88
	bl sub_0806D244
	adds r6, #1
_080D4DEA:
	cmp r6, #2
	bgt _080D4DFE
	ldr r0, _080D4E38 @ =sub_080D4E3C
	bl sub_0806DFF8
	str r0, [r4]
	cmp r0, #0
	bne _080D4D50
	movs r7, #0
	str r7, [sp, #0x10]
_080D4DFE:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _080D4E1A
_080D4E04:
	add r4, sp, #4
	movs r6, #2
_080D4E08:
	ldr r0, [r4]
	cmp r0, #0
	beq _080D4E12
	bl sub_08000E14
_080D4E12:
	adds r4, #4
	subs r6, #1
	cmp r6, #0
	bge _080D4E08
_080D4E1A:
	ldr r0, [sp, #0x10]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080D4E2C: .4byte 0xFFE00000
_080D4E30: .4byte sub_080D6138
_080D4E34: .4byte sub_080D5E88
_080D4E38: .4byte sub_080D4E3C

	thumb_func_start sub_080D4E3C
sub_080D4E3C: @ 0x080D4E3C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D4E7C @ =gEwramData
	ldrb r1, [r4, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080D4E80 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r1, r1, r0
	movs r2, #0x34
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bgt _080D4E6A
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #2
	orrs r1, r0
	strb r1, [r2]
	movs r0, #0xf0
	strb r0, [r4, #0xa]
_080D4E6A:
	ldrb r2, [r4, #0xa]
	cmp r2, #1
	beq _080D4ED6
	cmp r2, #1
	bgt _080D4E84
	cmp r2, #0
	beq _080D4E8A
	b _080D4F28
	.align 2, 0
_080D4E7C: .4byte gEwramData
_080D4E80: .4byte 0x000004E4
_080D4E84:
	cmp r2, #0xf0
	beq _080D4F0A
	b _080D4F28
_080D4E8A:
	movs r3, #0xc0
	lsls r3, r3, #9
	str r3, [r4, #0x48]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080D4EA2
	rsbs r0, r3, #0
	str r0, [r4, #0x48]
_080D4EA2:
	ldrb r0, [r4, #0x14]
	cmp r0, #1
	beq _080D4EC0
	cmp r0, #1
	bgt _080D4EB2
	cmp r0, #0
	beq _080D4EB8
	b _080D4ECA
_080D4EB2:
	cmp r0, #2
	beq _080D4EC4
	b _080D4ECA
_080D4EB8:
	ldr r0, _080D4EBC @ =0xFFFFC800
	b _080D4EC8
	.align 2, 0
_080D4EBC: .4byte 0xFFFFC800
_080D4EC0:
	str r2, [r4, #0x4c]
	b _080D4ECA
_080D4EC4:
	movs r0, #0xe0
	lsls r0, r0, #6
_080D4EC8:
	str r0, [r4, #0x4c]
_080D4ECA:
	ldrb r0, [r4, #0xa]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080D4ED6:
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
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _080D4F28
	movs r1, #0
	movs r0, #0xf0
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	b _080D4F28
_080D4F0A:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	adds r2, r4, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	bl sub_0806D578
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	b _080D4F34
_080D4F28:
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806E314
_080D4F34:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D4F3C
sub_080D4F3C: @ 0x080D4F3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	mov sb, r1
	ldr r0, _080D4F5C @ =0x081FB2BC
	mov sl, r0
	movs r1, #1
	mov r8, r1
	movs r6, #0
	add r4, sp, #8
	b _080D5094
	.align 2, 0
_080D4F5C: .4byte 0x081FB2BC
_080D4F60:
	ldr r2, _080D4F7C @ =0x08253D60
	str r2, [sp]
	mov r1, sl
	ldr r2, _080D4F80 @ =0x0820C134
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080D4F84
	movs r7, #0
	mov r8, r7
	b _080D50B0
	.align 2, 0
_080D4F7C: .4byte 0x08253D60
_080D4F80: .4byte 0x0820C134
_080D4F84:
	ldr r1, [r4]
	ldrb r0, [r5, #0x10]
	strb r0, [r1, #0x11]
	ldr r1, [r4]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, #0x5c
	strb r0, [r1]
	ldr r3, [r4]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
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
	ldr r1, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r1, #0x40]
	mov r0, sb
	cmp r0, #0
	beq _080D4FD0
	ldr r1, [r4]
	ldr r0, [r5, #0x44]
	ldr r2, _080D4FCC @ =0xFFF00000
	adds r0, r0, r2
	b _080D4FD8
	.align 2, 0
_080D4FCC: .4byte 0xFFF00000
_080D4FD0:
	ldr r1, [r4]
	ldr r0, [r5, #0x44]
	ldr r7, _080D5008 @ =0xFFE00000
	adds r0, r0, r7
_080D4FD8:
	str r0, [r1, #0x44]
	ldr r2, [r4]
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r4]
	adds r1, #0x3c
	movs r0, #0x50
	strb r0, [r1]
	ldr r0, [r4]
	strb r6, [r0, #0x14]
	ldr r1, [r4]
	ldrb r0, [r1, #0x14]
	cmp r0, #0
	bne _080D500C
	adds r0, r1, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _080D5076
	.align 2, 0
_080D5008: .4byte 0xFFE00000
_080D500C:
	movs r0, #1
	bl sub_0803E654
	adds r3, r0, #0
	cmp r3, #0
	bge _080D501E
	movs r0, #0
	mov r8, r0
	b _080D505E
_080D501E:
	ldr r2, [r4]
	adds r2, #0x58
	movs r0, #0x1f
	ands r3, r0
	ldrb r0, [r2]
	movs r7, #0x20
	rsbs r7, r7, #0
	adds r1, r7, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	ldr r2, [r4]
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	movs r2, #0x80
	lsls r2, r2, #9
	movs r0, #0
	str r0, [sp]
	ldr r0, [r4]
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	adds r0, r2, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
_080D505E:
	ldr r0, [r4]
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldr r2, [r4]
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
_080D5076:
	ldr r0, [r4]
	bl sub_0803F17C
	ldr r0, [r4]
	ldr r1, _080D50D8 @ =sub_0806E1B8
	movs r2, #0
	bl sub_0806D244
	ldm r4!, {r1}
	adds r1, #0x72
	ldrb r2, [r1]
	movs r0, #4
	orrs r0, r2
	strb r0, [r1]
	adds r6, #1
_080D5094:
	cmp r6, #1
	bgt _080D50AA
	ldr r0, _080D50DC @ =sub_080D50E0
	bl sub_0806DFF8
	str r0, [r4]
	cmp r0, #0
	beq _080D50A6
	b _080D4F60
_080D50A6:
	movs r1, #0
	mov r8, r1
_080D50AA:
	mov r2, r8
	cmp r2, #0
	bne _080D50C6
_080D50B0:
	add r4, sp, #8
	movs r6, #2
_080D50B4:
	ldr r0, [r4]
	cmp r0, #0
	beq _080D50BE
	bl sub_08000E14
_080D50BE:
	adds r4, #4
	subs r6, #1
	cmp r6, #0
	bge _080D50B4
_080D50C6:
	mov r0, r8
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080D50D8: .4byte sub_0806E1B8
_080D50DC: .4byte sub_080D50E0

	thumb_func_start sub_080D50E0
sub_080D50E0: @ 0x080D50E0
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	ldrb r0, [r6, #0x14]
	cmp r0, #0
	bne _080D5110
	adds r4, r6, #0
	adds r4, #0x59
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080D50FC
	b _080D5284
_080D50FC:
	ldr r0, _080D510C @ =0x0000010D
	bl sub_080D7910
	ldrb r0, [r4]
	movs r1, #8
	orrs r0, r1
	strb r0, [r4]
	b _080D529E
	.align 2, 0
_080D510C: .4byte 0x0000010D
_080D5110:
	ldrb r0, [r6, #0xa]
	adds r3, r6, #0
	adds r3, #0x58
	cmp r0, #1
	beq _080D5166
	cmp r0, #1
	bgt _080D5124
	cmp r0, #0
	beq _080D5130
	b _080D5284
_080D5124:
	cmp r0, #2
	beq _080D51B8
	cmp r0, #0xf0
	bne _080D512E
	b _080D526C
_080D512E:
	b _080D5284
_080D5130:
	ldrb r0, [r3]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0x1a
	strb r0, [r6, #0xd]
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080D5150
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r1]
	subs r0, #0xa
	b _080D5158
_080D5150:
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, #0xa
_080D5158:
	strh r0, [r1]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xc]
	strb r1, [r6, #0xb]
_080D5166:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080D5176
	b _080D5284
_080D5176:
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080D518C
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r6, #0x48]
	movs r0, #0xe0
	lsls r0, r0, #4
	b _080D5192
_080D518C:
	ldr r0, _080D51B0 @ =0xFFFFE000
	str r0, [r6, #0x48]
	ldr r0, _080D51B4 @ =0xFFFFF200
_080D5192:
	str r0, [r6, #0x50]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xc]
	strb r1, [r6, #0xb]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _080D5284
	.align 2, 0
_080D51B0: .4byte 0xFFFFE000
_080D51B4: .4byte 0xFFFFF200
_080D51B8:
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
	movs r7, #0
	movs r2, #0xb0
	lsls r2, r2, #2
	strh r2, [r6, #0x1e]
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080D51EA
	rsbs r0, r2, #0
	strh r0, [r6, #0x1e]
_080D51EA:
	ldrh r0, [r6, #0x1e]
	ldrh r1, [r6, #0x1c]
	adds r0, r0, r1
	strh r0, [r6, #0x1c]
	movs r1, #0x1c
	ldrsh r0, [r6, r1]
	movs r2, #0x80
	lsls r2, r2, #9
	ldrb r1, [r3]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	movs r4, #0
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
	ldrb r0, [r6, #0xd]
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080D5250
	bl RandomNumberGenerator
	movs r1, #0x14
	bl __umodsi3
	movs r4, #0xa
	subs r4, r4, r0
	lsls r4, r4, #0x10
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x44]
	subs r1, r1, r4
	adds r5, r6, #0
	adds r5, #0x5c
	ldrb r2, [r5]
	subs r2, #1
	bl sub_0806D578
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x44]
	subs r1, r1, r4
	ldrb r2, [r5]
	subs r2, #1
	movs r3, #0
	bl sub_0806D7F0
_080D5250:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	adds r0, r6, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _080D5284
	movs r0, #0xf0
	strb r0, [r6, #0xa]
	strb r7, [r6, #0xc]
	strb r7, [r6, #0xb]
	b _080D5284
_080D526C:
	ldrb r0, [r3]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	b _080D529E
_080D5284:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080D529E
	adds r0, r6, #0
	bl sub_0803F17C
	adds r0, r6, #0
	bl sub_0806E314
_080D529E:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D52A8
sub_080D52A8: @ 0x080D52A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r5, r0, #0
	mov sb, r1
	ldr r0, _080D52C8 @ =0x08253D60
	mov sl, r0
	movs r7, #1
	movs r0, #3
	strb r0, [r5, #0x15]
	movs r6, #0
	add r4, sp, #8
	b _080D5400
	.align 2, 0
_080D52C8: .4byte 0x08253D60
_080D52CC:
	mov r1, sl
	str r1, [sp]
	ldr r1, _080D52E4 @ =0x081FB2BC
	ldr r2, _080D52E8 @ =0x0820C134
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080D52EC
	movs r7, #0
	b _080D541A
	.align 2, 0
_080D52E4: .4byte 0x081FB2BC
_080D52E8: .4byte 0x0820C134
_080D52EC:
	ldr r1, [r4]
	ldrb r0, [r5, #0x10]
	movs r2, #0
	mov r8, r2
	strb r0, [r1, #0x11]
	ldr r1, [r4]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, #0x5c
	strb r0, [r1]
	ldr r3, [r4]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
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
	ldr r1, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r1, #0x40]
	ldr r1, [r4]
	ldr r0, [r5, #0x44]
	ldr r2, _080D5384 @ =0xFFE00000
	adds r0, r0, r2
	str r0, [r1, #0x44]
	ldr r2, [r4]
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r4]
	ldrb r0, [r5, #0x15]
	strb r0, [r1, #0x15]
	ldr r0, [r4]
	adds r0, #0x3c
	movs r1, #0x50
	strb r1, [r0]
	ldr r0, [r4]
	strb r6, [r0, #0x14]
	ldr r1, [r4]
	movs r0, #0xaa
	str r0, [r1, #0x2c]
	ldr r1, [r4]
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r1, #0x1e]
	mov r0, sb
	cmp r0, #0
	beq _080D5374
	ldr r1, [r4]
	ldr r0, [r1, #0x2c]
	rsbs r0, r0, #0
	str r0, [r1, #0x2c]
	ldr r1, [r4]
	ldrh r0, [r1, #0x1e]
	rsbs r0, r0, #0
	strh r0, [r1, #0x1e]
_080D5374:
	movs r0, #1
	bl sub_0803E654
	adds r3, r0, #0
	cmp r3, #0
	bge _080D5388
	movs r7, #0
	b _080D53CA
	.align 2, 0
_080D5384: .4byte 0xFFE00000
_080D5388:
	ldr r2, [r4]
	adds r2, #0x58
	movs r0, #0x1f
	ands r3, r0
	ldrb r0, [r2]
	movs r1, #0x20
	rsbs r1, r1, #0
	mov ip, r1
	mov r1, ip
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	ldr r2, [r4]
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	mov r2, r8
	str r2, [sp]
	ldr r0, [r4]
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0x80
	lsls r0, r0, #9
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E058
_080D53CA:
	ldr r0, [r4]
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldr r2, [r4]
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r4]
	bl sub_0803F17C
	ldr r0, [r4]
	ldr r1, _080D544C @ =sub_0806E1B8
	movs r2, #0
	bl sub_0806D244
	ldm r4!, {r1}
	adds r1, #0x72
	ldrb r2, [r1]
	movs r0, #4
	orrs r0, r2
	strb r0, [r1]
	adds r6, #1
_080D5400:
	ldrb r0, [r5, #0x15]
	cmp r6, r0
	bge _080D5416
	ldr r0, _080D5450 @ =sub_080D5454
	bl sub_0806DFF8
	str r0, [r4]
	cmp r0, #0
	beq _080D5414
	b _080D52CC
_080D5414:
	movs r7, #0
_080D5416:
	cmp r7, #0
	bne _080D5438
_080D541A:
	movs r6, #0
	ldrb r1, [r5, #0x15]
	cmp r6, r1
	bge _080D5438
	add r4, sp, #8
_080D5424:
	ldr r0, [r4]
	cmp r0, #0
	beq _080D542E
	bl sub_08000E14
_080D542E:
	adds r4, #4
	adds r6, #1
	ldrb r2, [r5, #0x15]
	cmp r6, r2
	blt _080D5424
_080D5438:
	adds r0, r7, #0
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080D544C: .4byte sub_0806E1B8
_080D5450: .4byte sub_080D5454

	thumb_func_start sub_080D5454
sub_080D5454: @ 0x080D5454
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r2, _080D54B8 @ =gEwramData
	ldrb r1, [r6, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080D54BC @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r1, r1, r0
	mov r8, r1
	ldrb r0, [r6, #0xa]
	cmp r0, #0xf0
	beq _080D549E
	cmp r0, #4
	beq _080D549E
	ldrb r0, [r1, #0xa]
	cmp r0, #5
	bne _080D549E
	cmp r1, #0
	beq _080D549E
	adds r3, r6, #0
	adds r3, #0x72
	ldrb r1, [r3]
	movs r0, #2
	movs r2, #0
	orrs r0, r1
	strb r0, [r3]
	movs r0, #4
	strb r0, [r6, #0xa]
	strb r2, [r6, #0xc]
	strb r2, [r6, #0xb]
_080D549E:
	ldrb r3, [r6, #0xa]
	cmp r3, #2
	beq _080D551E
	cmp r3, #2
	bgt _080D54C0
	cmp r3, #0
	beq _080D54DA
	movs r2, #0x58
	adds r2, r2, r6
	mov r8, r2
	cmp r3, #1
	beq _080D54F4
	b _080D5780
	.align 2, 0
_080D54B8: .4byte gEwramData
_080D54BC: .4byte 0x000004E4
_080D54C0:
	cmp r3, #4
	bne _080D54C6
	b _080D56E0
_080D54C6:
	cmp r3, #4
	bge _080D54CC
	b _080D55E0
_080D54CC:
	cmp r3, #0xf0
	bne _080D54D2
	b _080D5764
_080D54D2:
	movs r3, #0x58
	adds r3, r3, r6
	mov r8, r3
	b _080D5780
_080D54DA:
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0xdf
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x1a
	strb r0, [r6, #0xd]
	movs r0, #2
	strb r0, [r6, #0xa]
	strb r3, [r6, #0xc]
	strb r3, [r6, #0xb]
	mov r8, r2
_080D54F4:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	movs r1, #0
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080D5506
	b _080D5780
_080D5506:
	movs r0, #2
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xc]
	strb r1, [r6, #0xb]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, r8
	strb r0, [r1]
	b _080D5780
_080D551E:
	ldrb r0, [r6, #0xb]
	cmp r0, #0
	beq _080D5582
	movs r2, #0x80
	lsls r2, r2, #0xe
	mov sb, r2
	str r2, [r6, #0x24]
	movs r0, #0
	str r0, [r6, #0x28]
	ldrb r5, [r6, #0x14]
	ldrb r1, [r6, #0x15]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r4, #0
	bl __divsi3
	muls r0, r5, r0
	bl sub_080009E4
	adds r7, r0, #0
	ldrb r1, [r6, #0x15]
	adds r0, r4, #0
	bl __divsi3
	muls r0, r5, r0
	ldr r1, [r6, #0x28]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r1, r3
	adds r0, r0, r1
	bl sub_080009E4
	adds r2, r0, #0
	movs r1, #0x26
	ldrsh r0, [r6, r1]
	muls r7, r0, r7
	muls r2, r0, r2
	mov r3, r8
	ldr r0, [r3, #0x40]
	adds r0, r0, r2
	str r0, [r6, #0x40]
	ldr r0, _080D55D4 @ =0xFFC00000
	adds r1, r7, r0
	ldr r0, [r3, #0x44]
	adds r0, r0, r1
	add r0, sb
	str r0, [r6, #0x44]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
_080D5582:
	ldr r1, [r6, #0x20]
	ldr r0, _080D55D8 @ =0x0000FFFF
	cmp r1, r0
	bgt _080D5592
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r1, r2
	str r0, [r6, #0x20]
_080D5592:
	movs r3, #0x1c
	ldrsh r0, [r6, r3]
	ldr r2, [r6, #0x20]
	adds r4, r6, #0
	adds r4, #0x58
	ldrb r1, [r4]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	movs r5, #0
	str r5, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
	ldr r1, [r6, #0x20]
	movs r0, #0x80
	lsls r0, r0, #9
	mov r8, r4
	cmp r1, r0
	beq _080D55C0
	b _080D5780
_080D55C0:
	movs r0, #3
	strb r0, [r6, #0xa]
	strb r5, [r6, #0xc]
	strb r5, [r6, #0xb]
	ldr r0, _080D55DC @ =0x0000010D
	bl sub_080D7910
	strb r5, [r6, #0xd]
	b _080D5780
	.align 2, 0
_080D55D4: .4byte 0xFFC00000
_080D55D8: .4byte 0x0000FFFF
_080D55DC: .4byte 0x0000010D
_080D55E0:
	ldrb r5, [r6, #0x14]
	ldrb r1, [r6, #0x15]
	movs r0, #0x80
	lsls r0, r0, #9
	mov sb, r0
	bl __divsi3
	muls r0, r5, r0
	ldr r1, [r6, #0x28]
	adds r0, r0, r1
	bl sub_080009E4
	adds r7, r0, #0
	ldrb r1, [r6, #0x15]
	mov r0, sb
	bl __divsi3
	muls r0, r5, r0
	ldr r1, [r6, #0x28]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r1, r2
	adds r0, r0, r1
	bl sub_080009E4
	adds r2, r0, #0
	ldr r1, [r6, #0x24]
	asrs r0, r1, #0x10
	muls r7, r0, r7
	muls r2, r0, r2
	mov r3, r8
	ldr r0, [r3, #0x40]
	adds r0, r0, r2
	str r0, [r6, #0x40]
	ldr r0, [r3, #0x44]
	adds r0, r7, r0
	ldr r2, _080D56D8 @ =0xFFE00000
	adds r0, r0, r2
	str r0, [r6, #0x44]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r1, r1, r3
	str r1, [r6, #0x24]
	ldr r0, [r6, #0x28]
	ldr r1, [r6, #0x2c]
	adds r0, r0, r1
	str r0, [r6, #0x28]
	ldr r1, [r6, #0x20]
	ldr r0, _080D56DC @ =0x0000FFFF
	cmp r1, r0
	bgt _080D564E
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r1, r2
	str r0, [r6, #0x20]
_080D564E:
	ldrh r0, [r6, #0x1e]
	ldrh r3, [r6, #0x1c]
	adds r0, r0, r3
	movs r5, #0
	movs r2, #0
	strh r0, [r6, #0x1c]
	movs r1, #0x1c
	ldrsh r0, [r6, r1]
	adds r4, r6, #0
	adds r4, #0x58
	ldrb r1, [r4]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	str r2, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	mov r1, sb
	mov r2, sb
	bl sub_0803E058
	adds r0, r6, #0
	movs r1, #4
	bl sub_0806D128
	mov r8, r4
	cmp r0, #0
	beq _080D568E
	movs r0, #0xf0
	strb r0, [r6, #0xa]
	strb r5, [r6, #0xc]
	strb r5, [r6, #0xb]
_080D568E:
	ldrb r1, [r6, #0xd]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080D56CE
	cmp r1, #0x20
	bls _080D56CE
	bl RandomNumberGenerator
	movs r1, #0x14
	bl __umodsi3
	movs r4, #0xa
	subs r4, r4, r0
	lsls r4, r4, #0x10
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x44]
	subs r1, r1, r4
	adds r7, r6, #0
	adds r7, #0x5c
	ldrb r2, [r7]
	subs r2, #1
	bl sub_0806D578
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x44]
	subs r1, r1, r4
	ldrb r2, [r7]
	subs r2, #1
	movs r3, #0
	bl sub_0806D7F0
_080D56CE:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	b _080D5780
	.align 2, 0
_080D56D8: .4byte 0xFFE00000
_080D56DC: .4byte 0x0000FFFF
_080D56E0:
	ldrb r1, [r6, #0xd]
	adds r0, r1, #1
	strb r0, [r6, #0xd]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080D5702
	adds r2, r6, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x20
	orrs r1, r0
	strb r1, [r2]
	b _080D571E
_080D5702:
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
_080D571E:
	ldr r0, [r6, #0x20]
	ldr r2, _080D5760 @ =0xFFFFF800
	adds r0, r0, r2
	str r0, [r6, #0x20]
	movs r3, #0x58
	adds r3, r3, r6
	mov r8, r3
	cmp r0, #0
	blt _080D5780
	cmp r0, #0
	bgt _080D573E
	movs r1, #0
	movs r0, #0xf0
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xc]
	strb r1, [r6, #0xb]
_080D573E:
	movs r1, #0x1c
	ldrsh r0, [r6, r1]
	ldr r2, [r6, #0x20]
	mov r3, r8
	ldrb r1, [r3]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	movs r4, #0
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
	b _080D5780
	.align 2, 0
_080D5760: .4byte 0xFFFFF800
_080D5764:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	b _080D57A2
_080D5780:
	adds r0, r6, #0
	bl sub_0803F17C
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080D57A2
	ldrb r0, [r6, #0xa]
	cmp r0, #2
	bls _080D57A2
	cmp r0, #4
	beq _080D57A2
	adds r0, r6, #0
	bl sub_0806E314
_080D57A2:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080D57B0
sub_080D57B0: @ 0x080D57B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xf8
	adds r5, r0, #0
	ldr r1, _080D57DC @ =0x08119690
	add r0, sp, #8
	movs r2, #0xf0
	bl memcpy
	ldrb r0, [r5, #0xa]
	cmp r0, #4
	bls _080D57D0
	b _080D5A06
_080D57D0:
	lsls r0, r0, #2
	ldr r1, _080D57E0 @ =_080D57E4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080D57DC: .4byte 0x08119690
_080D57E0: .4byte _080D57E4
_080D57E4: @ jump table
	.4byte _080D57F8 @ case 0
	.4byte _080D5808 @ case 1
	.4byte _080D5814 @ case 2
	.4byte _080D5938 @ case 3
	.4byte _080D59F0 @ case 4
_080D57F8:
	movs r0, #8
	strb r0, [r5, #0xd]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r5, #0x50]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
_080D5808:
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _080D5810
	b _080D5A02
_080D5810:
	movs r0, #0x80
	b _080D59E2
_080D5814:
	ldrb r0, [r5, #0xd]
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _080D5846
	movs r4, #0x80
	lsls r4, r4, #9
	str r4, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x1f
	movs r2, #0x1f
	movs r3, #0
	bl sub_0803D18C
	movs r3, #0x80
	lsls r3, r3, #7
	str r4, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	bl sub_0803CDF0
_080D5846:
	ldrb r0, [r5, #0xd]
	adds r4, r0, #0
	cmp r4, #0
	bne _080D5850
	b _080D59E0
_080D5850:
	ldrb r0, [r5, #0xd]
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080D5922
	ldrb r0, [r5, #0xc]
	cmp r0, #0xe
	bhi _080D5922
	movs r7, #0
_080D5866:
	ldrb r1, [r5, #0xc]
	lsls r1, r1, #2
	lsls r0, r7, #4
	subs r0, r0, r7
	lsls r2, r0, #2
	adds r1, r1, r2
	mov r0, sp
	adds r0, r0, r1
	adds r0, #8
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r7, #1
	mov r8, r1
	cmp r0, #0xff
	beq _080D5914
	movs r6, #0
	adds r4, r2, #0
_080D5888:
	cmp r7, #0
	bne _080D5890
	cmp r6, #0
	beq _080D590E
_080D5890:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _080D58C8 @ =sub_080D6178
	bl sub_08000DA0
	adds r3, r0, #0
	cmp r3, #0
	beq _080D590E
	adds r2, r3, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	cmp r6, #0
	bne _080D58CC
	ldrb r0, [r5, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r4
	add r0, sp
	adds r0, #8
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r1, r1, #0x13
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	b _080D58E0
	.align 2, 0
_080D58C8: .4byte sub_080D6178
_080D58CC:
	ldrb r0, [r5, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r4
	add r0, sp
	adds r0, #8
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r1, r1, #0x13
	ldr r0, [r5, #0x40]
	subs r0, r0, r1
_080D58E0:
	str r0, [r3, #0x40]
	ldrb r0, [r5, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r4
	add r0, sp
	adds r0, #8
	movs r2, #2
	ldrsh r1, [r0, r2]
	lsls r1, r1, #0x13
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r3, #0x44]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r3, #0x4c]
	ldr r0, [r3, #0x54]
	ldr r1, _080D5930 @ =0xFFFFE000
	adds r0, r0, r1
	str r0, [r3, #0x54]
	adds r1, r3, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
_080D590E:
	adds r6, #1
	cmp r6, #1
	ble _080D5888
_080D5914:
	mov r7, r8
	cmp r7, #3
	ble _080D5866
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	ldrb r4, [r5, #0xd]
_080D5922:
	ldr r0, [r5, #0x50]
	ldr r2, _080D5934 @ =0xFFFFFA00
	adds r0, r0, r2
	str r0, [r5, #0x50]
	subs r0, r4, #1
	b _080D5A04
	.align 2, 0
_080D5930: .4byte 0xFFFFE000
_080D5934: .4byte 0xFFFFFA00
_080D5938:
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	bne _080D5A02
	movs r0, #0
_080D5940:
	movs r7, #0
	lsls r1, r0, #2
	mov sb, r1
	adds r0, #1
	mov sl, r0
_080D594A:
	lsls r0, r7, #4
	subs r0, r0, r7
	lsls r0, r0, #2
	add r0, sb
	mov r1, sp
	adds r1, r1, r0
	adds r1, #8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r2, r7, #1
	mov r8, r2
	cmp r0, #0xff
	beq _080D59D4
	movs r6, #0
	adds r4, r1, #0
_080D5968:
	cmp r7, #0
	bne _080D5970
	cmp r6, #0
	beq _080D59CE
_080D5970:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _080D599C @ =sub_080D6178
	bl sub_08000DA0
	adds r3, r0, #0
	cmp r3, #0
	beq _080D59CE
	adds r2, r3, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #2
	orrs r1, r0
	strb r1, [r2]
	cmp r6, #0
	bne _080D59A0
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #0x13
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	b _080D59AA
	.align 2, 0
_080D599C: .4byte sub_080D6178
_080D59A0:
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r1, r1, #0x13
	ldr r0, [r5, #0x40]
	subs r0, r0, r1
_080D59AA:
	str r0, [r3, #0x40]
	movs r0, #2
	ldrsh r1, [r4, r0]
	lsls r1, r1, #0x13
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r3, #0x44]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r3, #0x4c]
	ldr r0, [r3, #0x54]
	ldr r1, _080D59EC @ =0xFFFFE000
	adds r0, r0, r1
	str r0, [r3, #0x54]
	adds r1, r3, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
_080D59CE:
	adds r6, #1
	cmp r6, #1
	ble _080D5968
_080D59D4:
	mov r7, r8
	cmp r7, #3
	ble _080D594A
	mov r0, sl
	cmp r0, #0xe
	ble _080D5940
_080D59E0:
	movs r0, #0x40
_080D59E2:
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	b _080D5A06
	.align 2, 0
_080D59EC: .4byte 0xFFFFE000
_080D59F0:
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	bne _080D5A02
	bl sub_080D7124
	adds r0, r5, #0
	bl sub_08000E14
	b _080D5A18
_080D5A02:
	subs r0, #1
_080D5A04:
	strb r0, [r5, #0xd]
_080D5A06:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080D5A18
	bl sub_080D7124
_080D5A18:
	add sp, #0xf8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080D5A28
sub_080D5A28: @ 0x080D5A28
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080D5A5C
	cmp r0, #1
	bgt _080D5A40
	cmp r0, #0
	beq _080D5A4C
	b _080D5B90
_080D5A40:
	cmp r0, #2
	beq _080D5A66
	cmp r0, #3
	bne _080D5A4A
	b _080D5B78
_080D5A4A:
	b _080D5B90
_080D5A4C:
	movs r0, #8
	strb r0, [r4, #0xd]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x50]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_080D5A5C:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _080D5A64
	b _080D5B7E
_080D5A64:
	b _080D5B62
_080D5A66:
	ldrb r1, [r4, #0xd]
	cmp r1, #0
	beq _080D5B48
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080D5B2E
	ldr r2, _080D5AD0 @ =sub_080D6178
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r5, r0, #0
	cmp r5, #0
	beq _080D5B2E
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #4
	bl sub_0802D5EC
	adds r6, r0, #0
	ldr r7, [r4, #0x50]
	ldr r0, [r4, #0x40]
	mov r8, r0
	ldrb r1, [r4, #0xd]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	cmp r1, #0
	bge _080D5AD4
	ldrb r1, [r4, #0xd]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	rsbs r1, r1, #0
	asrs r1, r1, #0x10
	subs r1, r6, r1
	b _080D5AEA
	.align 2, 0
_080D5AD0: .4byte sub_080D6178
_080D5AD4:
	ldrb r1, [r4, #0xd]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	asrs r1, r1, #0x10
	adds r1, r1, r6
_080D5AEA:
	adds r0, r1, #0
	muls r0, r7, r0
	add r0, r8
	str r0, [r5, #0x40]
	movs r0, #0x10
	bl sub_0802D5EC
	lsls r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #0xd
	adds r0, r0, r1
	ldr r1, [r4, #0x44]
	adds r1, r1, r0
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #0xe
	ldr r2, _080D5B3C @ =0xFFF80000
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r5, #0x44]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r5, #0x4c]
	ldr r0, [r5, #0x54]
	ldr r1, _080D5B40 @ =0xFFFFE000
	adds r0, r0, r1
	str r0, [r5, #0x54]
	ldrb r1, [r4, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080D5B2E
	movs r0, #0x77
	bl sub_080D7910
_080D5B2E:
	ldr r0, [r4, #0x50]
	ldr r2, _080D5B44 @ =0xFFFFFA00
	adds r0, r0, r2
	str r0, [r4, #0x50]
	ldrb r0, [r4, #0xd]
	b _080D5B7E
	.align 2, 0
_080D5B3C: .4byte 0xFFF80000
_080D5B40: .4byte 0xFFFFE000
_080D5B44: .4byte 0xFFFFFA00
_080D5B48:
	ldr r0, _080D5B70 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080D5B74 @ =0x0000042C
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080D5B62
	bl sub_0803D270
	bl sub_0803CED4
_080D5B62:
	movs r0, #0x40
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _080D5B90
	.align 2, 0
_080D5B70: .4byte gEwramData
_080D5B74: .4byte 0x0000042C
_080D5B78:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _080D5B84
_080D5B7E:
	subs r0, #1
	strb r0, [r4, #0xd]
	b _080D5B90
_080D5B84:
	bl sub_080D7124
	adds r0, r4, #0
	bl sub_08000E14
	b _080D5BA2
_080D5B90:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080D5BA2
	bl sub_080D7124
_080D5BA2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080D5BAC
sub_080D5BAC: @ 0x080D5BAC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080D5C1C
	cmp r0, #1
	bgt _080D5BC0
	cmp r0, #0
	beq _080D5BC6
	b _080D5C66
_080D5BC0:
	cmp r0, #2
	beq _080D5C4C
	b _080D5C66
_080D5BC6:
	ldr r0, _080D5C40 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _080D5C44 @ =0x0820F010
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _080D5C48 @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x10
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	subs r0, #0x17
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	bl RandomNumberGenerator
	movs r1, #0x1f
	ands r1, r0
	strb r1, [r4, #0xd]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
_080D5C1C:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080D5C66
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _080D5C66
	.align 2, 0
_080D5C40: .4byte 0x081C15F4
_080D5C44: .4byte 0x0820F010
_080D5C48: .4byte sub_0803B9D0
_080D5C4C:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D3D8
	adds r0, r4, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _080D5C66
	adds r0, r4, #0
	bl sub_08000E14
_080D5C66:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080D5C6C
sub_080D5C6C: @ 0x080D5C6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xf8
	adds r6, r0, #0
	ldr r1, _080D5C98 @ =0x08119780
	add r0, sp, #8
	movs r2, #0xf0
	bl memcpy
	ldrb r0, [r6, #0xa]
	cmp r0, #4
	bls _080D5C8C
	b _080D5DD2
_080D5C8C:
	lsls r0, r0, #2
	ldr r1, _080D5C9C @ =_080D5CA0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080D5C98: .4byte 0x08119780
_080D5C9C: .4byte _080D5CA0
_080D5CA0: @ jump table
	.4byte _080D5CB4 @ case 0
	.4byte _080D5CC4 @ case 1
	.4byte _080D5CD8 @ case 2
	.4byte _080D5CD8 @ case 3
	.4byte _080D5DBC @ case 4
_080D5CB4:
	movs r0, #8
	strb r0, [r6, #0xd]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r6, #0x50]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
_080D5CC4:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _080D5CCC
	b _080D5DCE
_080D5CCC:
	movs r0, #0x80
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xa]
	adds r0, #2
	strb r0, [r6, #0xa]
	b _080D5DD2
_080D5CD8:
	ldrb r0, [r6, #0xd]
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _080D5D0A
	movs r4, #0x80
	lsls r4, r4, #9
	str r4, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x1f
	movs r2, #0x1f
	movs r3, #0
	bl sub_0803D18C
	movs r3, #0x80
	lsls r3, r3, #7
	str r4, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	bl sub_0803CDF0
_080D5D0A:
	movs r0, #0
_080D5D0C:
	movs r7, #0
	lsls r1, r0, #2
	mov sb, r1
	adds r0, #1
	mov sl, r0
_080D5D16:
	lsls r0, r7, #4
	subs r0, r0, r7
	lsls r0, r0, #2
	add r0, sb
	mov r1, sp
	adds r1, r1, r0
	adds r1, #8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r2, r7, #1
	mov r8, r2
	cmp r0, #0xff
	beq _080D5DA0
	movs r5, #0
	adds r4, r1, #0
_080D5D34:
	cmp r7, #0
	bne _080D5D3C
	cmp r5, #0
	beq _080D5D9A
_080D5D3C:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _080D5D68 @ =sub_080D5BAC
	bl sub_08000DA0
	adds r3, r0, #0
	cmp r3, #0
	beq _080D5D9A
	adds r2, r3, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #2
	orrs r1, r0
	strb r1, [r2]
	cmp r5, #0
	bne _080D5D6C
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #0x13
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	b _080D5D76
	.align 2, 0
_080D5D68: .4byte sub_080D5BAC
_080D5D6C:
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r1, r1, #0x13
	ldr r0, [r6, #0x40]
	subs r0, r0, r1
_080D5D76:
	str r0, [r3, #0x40]
	movs r0, #2
	ldrsh r1, [r4, r0]
	lsls r1, r1, #0x13
	ldr r0, [r6, #0x44]
	adds r0, r0, r1
	str r0, [r3, #0x44]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r3, #0x4c]
	ldr r0, [r3, #0x54]
	ldr r1, _080D5DB8 @ =0xFFFFE000
	adds r0, r0, r1
	str r0, [r3, #0x54]
	adds r1, r3, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
_080D5D9A:
	adds r5, #1
	cmp r5, #1
	ble _080D5D34
_080D5DA0:
	mov r7, r8
	cmp r7, #3
	ble _080D5D16
	mov r0, sl
	cmp r0, #0xe
	ble _080D5D0C
	movs r0, #0x40
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	b _080D5DD2
	.align 2, 0
_080D5DB8: .4byte 0xFFFFE000
_080D5DBC:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	bne _080D5DCE
	bl sub_080D7124
	adds r0, r6, #0
	bl sub_08000E14
	b _080D5DE4
_080D5DCE:
	subs r0, #1
	strb r0, [r6, #0xd]
_080D5DD2:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080D5DE4
	bl sub_080D7124
_080D5DE4:
	add sp, #0xf8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080D5DF4
sub_080D5DF4: @ 0x080D5DF4
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xa]
	cmp r0, #1
	bne _080D5E06
	adds r0, r1, #0
	bl sub_080D26A8
	b _080D5E36
_080D5E06:
	cmp r0, #2
	bne _080D5E12
	adds r0, r1, #0
	bl sub_080D5E3C
	b _080D5E36
_080D5E12:
	cmp r0, #0xf0
	bne _080D5E1E
	adds r0, r1, #0
	bl sub_080D2BDC
	b _080D5E36
_080D5E1E:
	cmp r0, #0xd0
	bne _080D5E2A
	adds r0, r1, #0
	bl sub_080D5E40
	b _080D5E36
_080D5E2A:
	ldrb r0, [r1, #0xa]
	cmp r0, #3
	bne _080D5E36
	adds r0, r1, #0
	bl sub_080D27C8
_080D5E36:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D5E3C
sub_080D5E3C: @ 0x080D5E3C
	bx lr
	.align 2, 0

	thumb_func_start sub_080D5E40
sub_080D5E40: @ 0x080D5E40
	bx lr
	.align 2, 0

	thumb_func_start sub_080D5E44
sub_080D5E44: @ 0x080D5E44
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080D5E66
	movs r1, #0
	movs r0, #0xe0
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	adds r2, r4, #0
	adds r2, #0x3e
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_080D5E66:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080D5E6C
sub_080D5E6C: @ 0x080D5E6C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080D5EC0
	cmp r0, #0
	beq _080D5E82
	movs r1, #0
	movs r0, #0xf0
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080D5E82:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080D5E88
sub_080D5E88: @ 0x080D5E88
	movs r2, #0
	movs r1, #0xf0
	strb r1, [r0, #0xa]
	strb r2, [r0, #0xc]
	strb r2, [r0, #0xb]
	bx lr

	thumb_func_start sub_080D5E94
sub_080D5E94: @ 0x080D5E94
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080D5EAE
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
	b _080D5EBA
_080D5EAE:
	adds r0, r4, #0
	bl sub_0806DF20
	adds r0, r4, #0
	bl sub_0806E314
_080D5EBA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080D5EC0
sub_080D5EC0: @ 0x080D5EC0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldrh r0, [r5, #4]
	bl sub_08021530
	adds r3, r0, #0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_0806B7D8
	adds r1, r0, #0
	adds r2, r4, #0
	adds r2, #0x2d
	movs r0, #8
	strb r0, [r2]
	ldrh r0, [r4, #0x34]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x34]
	ldr r6, [r4, #0x40]
	ldr r5, [r4, #0x44]
	ldr r2, _080D5F14 @ =0xFFC00000
	adds r0, r5, r2
	str r0, [r4, #0x44]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08042B8C
	str r6, [r4, #0x40]
	str r5, [r4, #0x44]
	movs r1, #0x34
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _080D5F18
	movs r0, #0
	b _080D5F1A
	.align 2, 0
_080D5F14: .4byte 0xFFC00000
_080D5F18:
	movs r0, #1
_080D5F1A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080D5F20
sub_080D5F20: @ 0x080D5F20
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	movs r6, #0
	ldr r1, _080D5F74 @ =0x08119680
	mov r0, sp
	movs r2, #0xf
	bl memcpy
	ldrb r1, [r4, #0xd]
	adds r0, r1, #1
	strb r0, [r4, #0xd]
	ldrb r2, [r4, #0xb]
	lsls r0, r2, #1
	adds r2, r0, r2
	mov r3, sp
	adds r0, r3, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrb r0, [r0]
	cmp r1, r0
	blo _080D5F7E
	ldr r0, _080D5F78 @ =0x0820C158
	adds r1, r2, #1
	adds r1, r5, r1
	add r1, sp
	ldrb r1, [r1]
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r3, [r2]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1c
	movs r2, #1
	bl sub_0803C7B4
	ldrb r0, [r4, #0xb]
	adds r0, #1
	cmp r0, #4
	bgt _080D5F7C
	strb r0, [r4, #0xb]
	b _080D5F7E
	.align 2, 0
_080D5F74: .4byte 0x08119680
_080D5F78: .4byte 0x0820C158
_080D5F7C:
	movs r6, #1
_080D5F7E:
	adds r0, r6, #0
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080D5F88
sub_080D5F88: @ 0x080D5F88
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r2, _080D5FEC @ =sub_080D5C6C
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r5, r0, #0
	cmp r5, #0
	beq _080D5FE2
	movs r4, #0x80
	lsls r4, r4, #9
	str r4, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	movs r3, #0
	bl sub_0803D18C
	movs r3, #0x80
	lsls r3, r3, #7
	str r4, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	bl sub_0803CDF0
	bl sub_080D70A4
	str r6, [r5, #0x40]
	str r7, [r5, #0x44]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
_080D5FE2:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D5FEC: .4byte sub_080D5C6C

	thumb_func_start sub_080D5FF0
sub_080D5FF0: @ 0x080D5FF0
	push {r4, r5, r6, lr}
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	ldr r0, _080D6050 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080D6054 @ =0x00013110
	adds r0, r0, r1
	ldr r4, [r0]
	movs r6, #0xc
	ldr r5, _080D6058 @ =0xFFF00000
	cmp r4, #0
	beq _080D604A
	ldr r2, _080D605C @ =sub_080D2A90
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r2, r0, #0
	cmp r2, #0
	beq _080D604A
	strb r6, [r2, #0x14]
	str r4, [r2, #0x18]
	adds r3, r2, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x28
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0
	str r0, [r2, #0x50]
	str r5, [r2, #0x54]
	ldr r0, [r4, #0x40]
	str r0, [r2, #0x40]
	ldr r0, [r4, #0x44]
	adds r0, r0, r5
	str r0, [r2, #0x44]
	adds r0, r2, #0
	adds r0, #0x5c
	strb r6, [r0]
_080D604A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080D6050: .4byte gEwramData
_080D6054: .4byte 0x00013110
_080D6058: .4byte 0xFFF00000
_080D605C: .4byte sub_080D2A90

	thumb_func_start sub_080D6060
sub_080D6060: @ 0x080D6060
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080D6070
	cmp r0, #1
	beq _080D60B4
	b _080D60BC
_080D6070:
	ldr r0, _080D60A8 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _080D60AC @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #7
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080D60B0 @ =sub_0803B9D0
	str r0, [r4, #4]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _080D60BC
	.align 2, 0
_080D60A8: .4byte 0x081C15F4
_080D60AC: .4byte 0x0820ED60
_080D60B0: .4byte sub_0803B9D0
_080D60B4:
	ldr r0, [r4, #0x44]
	ldr r1, _080D60D4 @ =0xFFFF8000
	adds r0, r0, r1
	str r0, [r4, #0x44]
_080D60BC:
	adds r0, r4, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _080D60CC
	adds r0, r4, #0
	bl sub_08000E14
_080D60CC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D60D4: .4byte 0xFFFF8000

	thumb_func_start sub_080D60D8
sub_080D60D8: @ 0x080D60D8
	push {r4, r5, lr}
	adds r3, r0, #0
	ldrb r4, [r3, #0xa]
	cmp r4, #0
	beq _080D60EC
	cmp r4, #1
	beq _080D6108
	adds r2, r3, #0
	adds r2, #0x58
	b _080D6120
_080D60EC:
	adds r0, r3, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	adds r2, r3, #0
	adds r2, #0x58
	cmp r0, #0
	beq _080D6120
	strb r5, [r3, #0xa]
	strb r4, [r3, #0xc]
	strb r4, [r3, #0xb]
	b _080D6120
_080D6108:
	adds r2, r3, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	adds r4, r3, #0
	adds r4, #0x59
	ldrb r0, [r4]
	movs r1, #8
	orrs r0, r1
	strb r0, [r4]
_080D6120:
	ldrb r1, [r2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080D6130
	adds r0, r3, #0
	bl sub_0803F17C
_080D6130:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D6138
sub_080D6138: @ 0x080D6138
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	mov r1, sp
	movs r5, #0
	movs r2, #0
	movs r0, #2
	strh r0, [r1, #2]
	mov r0, sp
	strh r2, [r0, #4]
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	strh r0, [r1]
	mov r0, sp
	strh r2, [r0, #6]
	ldr r0, [r4, #0x40]
	str r0, [sp, #8]
	ldr r0, [r4, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	movs r0, #0xf0
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D6178
sub_080D6178: @ 0x080D6178
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080D6188
	cmp r0, #1
	beq _080D61C8
	b _080D61E2
_080D6188:
	ldr r0, _080D61E8 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _080D61EC @ =0x0820F010
	adds r0, r4, #0
	movs r3, #8
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _080D61F0 @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x10
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	subs r0, #0x17
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_080D61C8:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D3D8
	adds r0, r4, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _080D61E2
	adds r0, r4, #0
	bl sub_08000E14
_080D61E2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D61E8: .4byte 0x081C15F4
_080D61EC: .4byte 0x0820F010
_080D61F0: .4byte sub_0803B9D0

	thumb_func_start sub_080D61F4
sub_080D61F4: @ 0x080D61F4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	beq _080D6228
	cmp r0, #1
	bgt _080D620C
	cmp r0, #0
	beq _080D6218
	b _080D63CC
_080D620C:
	cmp r0, #2
	beq _080D6232
	cmp r0, #3
	bne _080D6216
	b _080D634C
_080D6216:
	b _080D63CC
_080D6218:
	movs r0, #8
	strb r0, [r6, #0xd]
	movs r0, #0x90
	lsls r0, r0, #0xa
	str r0, [r6, #0x50]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
_080D6228:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _080D6230
	b _080D6352
_080D6230:
	b _080D6336
_080D6232:
	ldrb r1, [r6, #0xd]
	cmp r1, #0
	beq _080D631C
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080D6302
	ldr r2, _080D629C @ =sub_080D6178
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r5, r0, #0
	cmp r5, #0
	beq _080D6302
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #4
	bl sub_0802D5EC
	adds r4, r0, #0
	ldr r7, [r6, #0x50]
	ldr r0, [r6, #0x40]
	mov r8, r0
	ldrb r1, [r6, #0xd]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	cmp r1, #0
	bge _080D62A0
	ldrb r1, [r6, #0xd]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	rsbs r1, r1, #0
	asrs r1, r1, #0x10
	subs r1, r4, r1
	b _080D62B6
	.align 2, 0
_080D629C: .4byte sub_080D6178
_080D62A0:
	ldrb r1, [r6, #0xd]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	asrs r1, r1, #0x10
	adds r1, r1, r4
_080D62B6:
	adds r0, r1, #0
	muls r0, r7, r0
	add r0, r8
	str r0, [r5, #0x40]
	movs r0, #0x10
	bl sub_0802D5EC
	lsls r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #0xd
	adds r0, r0, r1
	ldr r1, [r6, #0x44]
	adds r1, r1, r0
	ldrb r0, [r6, #0xd]
	lsls r0, r0, #0xf
	ldr r2, _080D6310 @ =0xFFF40000
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r5, #0x44]
	movs r4, #0x80
	lsls r4, r4, #7
	adds r0, r4, #0
	bl sub_0802D5EC
	adds r0, r0, r4
	str r0, [r5, #0x4c]
	ldr r0, [r5, #0x54]
	ldr r1, _080D6314 @ =0xFFFFE000
	adds r0, r0, r1
	str r0, [r5, #0x54]
	ldrb r1, [r6, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080D6302
	movs r0, #0x77
	bl sub_080D7910
_080D6302:
	ldr r0, [r6, #0x50]
	ldr r2, _080D6318 @ =0xFFFFFC00
	adds r0, r0, r2
	str r0, [r6, #0x50]
	ldrb r0, [r6, #0xd]
	b _080D6352
	.align 2, 0
_080D6310: .4byte 0xFFF40000
_080D6314: .4byte 0xFFFFE000
_080D6318: .4byte 0xFFFFFC00
_080D631C:
	ldr r0, _080D6344 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080D6348 @ =0x0000042C
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080D6336
	bl sub_0803D270
	bl sub_0803CED4
_080D6336:
	movs r0, #0x40
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	b _080D63CC
	.align 2, 0
_080D6344: .4byte gEwramData
_080D6348: .4byte 0x0000042C
_080D634C:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _080D6358
_080D6352:
	subs r0, #1
	strb r0, [r6, #0xd]
	b _080D63CC
_080D6358:
	ldr r7, _080D63B8 @ =gEwramData
	ldr r0, [r7]
	ldr r2, _080D63BC @ =0x0000042C
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080D63B0
	ldr r5, _080D63C0 @ =0x081C15F8
	subs r0, r5, #4
	bl sub_0803AFB8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_0803D8B4
	adds r4, r0, #0
	lsls r4, r4, #5
	ldr r0, _080D63C4 @ =0x06010000
	adds r2, r4, r0
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r5, #0
	bl sub_080016D0
	movs r1, #0x80
	lsls r1, r1, #2
	adds r5, r5, r1
	ldr r2, _080D63C8 @ =0x06010400
	adds r4, r4, r2
	adds r0, r1, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080016D0
	ldr r1, [r7]
	ldr r0, _080D63BC @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #9
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1]
_080D63B0:
	adds r0, r6, #0
	bl sub_08000E14
	b _080D6432
	.align 2, 0
_080D63B8: .4byte gEwramData
_080D63BC: .4byte 0x0000042C
_080D63C0: .4byte 0x081C15F8
_080D63C4: .4byte 0x06010000
_080D63C8: .4byte 0x06010400
_080D63CC:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080D6432
	ldr r6, _080D643C @ =gEwramData
	ldr r0, [r6]
	ldr r1, _080D6440 @ =0x0000042C
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080D6432
	ldr r5, _080D6444 @ =0x081C15F8
	subs r0, r5, #4
	bl sub_0803AFB8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_0803D8B4
	adds r4, r0, #0
	lsls r4, r4, #5
	ldr r0, _080D6448 @ =0x06010000
	adds r2, r4, r0
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r5, #0
	bl sub_080016D0
	movs r1, #0x80
	lsls r1, r1, #2
	adds r5, r5, r1
	ldr r2, _080D644C @ =0x06010400
	adds r4, r4, r2
	adds r0, r1, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080016D0
	ldr r1, [r6]
	ldr r0, _080D6440 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #9
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1]
_080D6432:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D643C: .4byte gEwramData
_080D6440: .4byte 0x0000042C
_080D6444: .4byte 0x081C15F8
_080D6448: .4byte 0x06010000
_080D644C: .4byte 0x06010400

	thumb_func_start sub_080D6450
sub_080D6450: @ 0x080D6450
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	mov sl, r1
	ldr r2, _080D6528 @ =sub_080D61F4
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r6, r0, #0
	cmp r6, #0
	beq _080D6518
	ldr r7, _080D652C @ =gEwramData
	ldr r0, [r7]
	ldr r1, _080D6530 @ =0x0000042C
	adds r0, r0, r1
	ldr r0, [r0]
	movs r5, #0x10
	ands r0, r5
	cmp r0, #0
	bne _080D64AA
	movs r4, #0x80
	lsls r4, r4, #9
	str r4, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	movs r3, #0
	bl sub_0803D18C
	movs r3, #0x80
	lsls r3, r3, #7
	str r4, [sp]
	str r5, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	bl sub_0803CDF0
_080D64AA:
	ldr r0, [r7]
	ldr r2, _080D6530 @ =0x0000042C
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #8
	mov r8, r1
	ands r0, r1
	cmp r0, #0
	bne _080D6500
	ldr r5, _080D6534 @ =0x081C35FC
	ldr r0, _080D6538 @ =0x081C15F4
	bl sub_0803AFB8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_0803D8B4
	adds r4, r0, #0
	lsls r4, r4, #5
	ldr r0, _080D653C @ =0x06010000
	adds r2, r4, r0
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r5, #0
	bl sub_080016D0
	movs r1, #0x80
	lsls r1, r1, #2
	adds r5, r5, r1
	ldr r2, _080D6540 @ =0x06010400
	adds r4, r4, r2
	adds r0, r1, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080016D0
	ldr r1, [r7]
	ldr r0, _080D6530 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	mov r2, r8
	orrs r0, r2
	str r0, [r1]
_080D6500:
	mov r0, sb
	str r0, [r6, #0x40]
	mov r1, sl
	str r1, [r6, #0x44]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
_080D6518:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D6528: .4byte sub_080D61F4
_080D652C: .4byte gEwramData
_080D6530: .4byte 0x0000042C
_080D6534: .4byte 0x081C35FC
_080D6538: .4byte 0x081C15F4
_080D653C: .4byte 0x06010000
_080D6540: .4byte 0x06010400

	thumb_func_start sub_080D6544
sub_080D6544: @ 0x080D6544
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r7, _080D6560 @ =gEwramData
	ldr r2, [r7]
	ldr r0, _080D6564 @ =0x0000A094
	adds r5, r2, r0
	ldrb r1, [r6, #0xa]
	cmp r1, #1
	beq _080D6582
	cmp r1, #1
	bgt _080D6568
	cmp r1, #0
	beq _080D6572
	b _080D66AC
	.align 2, 0
_080D6560: .4byte gEwramData
_080D6564: .4byte 0x0000A094
_080D6568:
	cmp r1, #2
	beq _080D658C
	cmp r1, #3
	beq _080D6634
	b _080D66AC
_080D6572:
	movs r0, #8
	strb r0, [r6, #0xd]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r6, #0x50]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
_080D6582:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	bne _080D663A
	movs r0, #0x60
	b _080D6624
_080D658C:
	ldrb r1, [r6, #0xd]
	cmp r1, #0
	beq _080D660C
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080D65F2
	ldr r2, _080D6600 @ =sub_080D6178
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	beq _080D65F2
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	bl RandomNumberGenerator
	movs r1, #0x12
	bl __umodsi3
	lsls r0, r0, #4
	adds r0, #0x70
	ldrh r1, [r5, #6]
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	bl RandomNumberGenerator
	movs r1, #7
	ands r1, r0
	lsls r1, r1, #3
	adds r1, #0x80
	ldrh r0, [r5, #0xa]
	subs r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x46
	strh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r4, #0x4c]
	ldr r0, [r4, #0x54]
	ldr r1, _080D6604 @ =0xFFFFE000
	adds r0, r0, r1
	str r0, [r4, #0x54]
_080D65F2:
	ldr r0, [r6, #0x50]
	ldr r1, _080D6608 @ =0xFFFFFA00
	adds r0, r0, r1
	str r0, [r6, #0x50]
	ldrb r0, [r6, #0xd]
	b _080D663A
	.align 2, 0
_080D6600: .4byte sub_080D6178
_080D6604: .4byte 0xFFFFE000
_080D6608: .4byte 0xFFFFFA00
_080D660C:
	ldr r1, _080D6630 @ =0x0000042C
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080D6622
	bl sub_0803D270
	bl sub_0803CED4
_080D6622:
	movs r0, #0x40
_080D6624:
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	b _080D66AC
	.align 2, 0
_080D6630: .4byte 0x0000042C
_080D6634:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _080D6640
_080D663A:
	subs r0, #1
	strb r0, [r6, #0xd]
	b _080D66AC
_080D6640:
	ldr r1, _080D669C @ =0x0000042C
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080D6694
	ldr r5, _080D66A0 @ =0x081C15F8
	subs r0, r5, #4
	bl sub_0803AFB8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_0803D8B4
	adds r4, r0, #0
	lsls r4, r4, #5
	ldr r0, _080D66A4 @ =0x06010000
	adds r2, r4, r0
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r5, #0
	bl sub_080016D0
	movs r1, #0x80
	lsls r1, r1, #2
	adds r5, r5, r1
	ldr r0, _080D66A8 @ =0x06010400
	adds r4, r4, r0
	adds r0, r1, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080016D0
	ldr r1, [r7]
	ldr r0, _080D669C @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #9
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1]
_080D6694:
	adds r0, r6, #0
	bl sub_08000E14
	b _080D6712
	.align 2, 0
_080D669C: .4byte 0x0000042C
_080D66A0: .4byte 0x081C15F8
_080D66A4: .4byte 0x06010000
_080D66A8: .4byte 0x06010400
_080D66AC:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080D6712
	ldr r6, _080D6718 @ =gEwramData
	ldr r0, [r6]
	ldr r1, _080D671C @ =0x0000042C
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080D6712
	ldr r5, _080D6720 @ =0x081C15F8
	subs r0, r5, #4
	bl sub_0803AFB8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_0803D8B4
	adds r4, r0, #0
	lsls r4, r4, #5
	ldr r0, _080D6724 @ =0x06010000
	adds r2, r4, r0
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r5, #0
	bl sub_080016D0
	movs r1, #0x80
	lsls r1, r1, #2
	adds r5, r5, r1
	ldr r0, _080D6728 @ =0x06010400
	adds r4, r4, r0
	adds r0, r1, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080016D0
	ldr r1, [r6]
	ldr r0, _080D671C @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #9
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1]
_080D6712:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D6718: .4byte gEwramData
_080D671C: .4byte 0x0000042C
_080D6720: .4byte 0x081C15F8
_080D6724: .4byte 0x06010000
_080D6728: .4byte 0x06010400

	thumb_func_start sub_080D672C
sub_080D672C: @ 0x080D672C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080D673C
	cmp r0, #1
	beq _080D677C
	b _080D6796
_080D673C:
	ldr r0, _080D679C @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _080D67A0 @ =0x0820F010
	adds r0, r4, #0
	movs r3, #8
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _080D67A4 @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x19
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	subs r0, #0x20
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_080D677C:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D3D8
	adds r0, r4, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _080D6796
	adds r0, r4, #0
	bl sub_08000E14
_080D6796:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D679C: .4byte 0x081C15F4
_080D67A0: .4byte 0x0820F010
_080D67A4: .4byte sub_0803B9D0

	thumb_func_start sub_080D67A8
sub_080D67A8: @ 0x080D67A8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r7, _080D67C4 @ =gEwramData
	ldr r2, [r7]
	ldrb r1, [r6, #0xa]
	cmp r1, #1
	beq _080D67E4
	cmp r1, #1
	bgt _080D67C8
	cmp r1, #0
	beq _080D67D4
	b _080D6970
	.align 2, 0
_080D67C4: .4byte gEwramData
_080D67C8:
	cmp r1, #2
	beq _080D67EE
	cmp r1, #3
	bne _080D67D2
	b _080D68F8
_080D67D2:
	b _080D6970
_080D67D4:
	movs r0, #8
	strb r0, [r6, #0xd]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r6, #0x50]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
_080D67E4:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _080D67EC
	b _080D68FE
_080D67EC:
	b _080D68E6
_080D67EE:
	ldrb r1, [r6, #0xd]
	cmp r1, #0
	beq _080D68D0
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080D68B6
	ldr r2, _080D6858 @ =sub_080D672C
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	beq _080D68B6
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #4
	bl sub_0802D5EC
	adds r5, r0, #0
	ldr r7, [r6, #0x50]
	ldr r0, [r6, #0x40]
	mov r8, r0
	ldrb r1, [r6, #0xd]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	cmp r1, #0
	bge _080D685C
	ldrb r1, [r6, #0xd]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	rsbs r1, r1, #0
	asrs r1, r1, #0x10
	subs r1, r5, r1
	b _080D6872
	.align 2, 0
_080D6858: .4byte sub_080D672C
_080D685C:
	ldrb r1, [r6, #0xd]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	asrs r1, r1, #0x10
	adds r1, r1, r5
_080D6872:
	adds r0, r1, #0
	muls r0, r7, r0
	add r0, r8
	str r0, [r4, #0x40]
	movs r0, #0x10
	bl sub_0802D5EC
	lsls r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #0xd
	adds r0, r0, r1
	ldr r1, [r6, #0x44]
	adds r1, r1, r0
	ldrb r0, [r6, #0xd]
	lsls r0, r0, #0xe
	ldr r2, _080D68C4 @ =0xFFF80000
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r4, #0x44]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r4, #0x4c]
	ldr r0, [r4, #0x54]
	ldr r1, _080D68C8 @ =0xFFFFE000
	adds r0, r0, r1
	str r0, [r4, #0x54]
	ldrb r1, [r6, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080D68B6
	movs r0, #0x77
	bl sub_080D7910
_080D68B6:
	ldr r0, [r6, #0x50]
	ldr r2, _080D68CC @ =0xFFFFFA00
	adds r0, r0, r2
	str r0, [r6, #0x50]
	ldrb r0, [r6, #0xd]
	b _080D68FE
	.align 2, 0
_080D68C4: .4byte 0xFFF80000
_080D68C8: .4byte 0xFFFFE000
_080D68CC: .4byte 0xFFFFFA00
_080D68D0:
	ldr r1, _080D68F4 @ =0x0000042C
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080D68E6
	bl sub_0803D270
	bl sub_0803CED4
_080D68E6:
	movs r0, #0x40
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	b _080D6970
	.align 2, 0
_080D68F4: .4byte 0x0000042C
_080D68F8:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _080D6904
_080D68FE:
	subs r0, #1
	strb r0, [r6, #0xd]
	b _080D6970
_080D6904:
	ldr r1, _080D6960 @ =0x0000042C
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080D6958
	ldr r5, _080D6964 @ =0x081C15F8
	subs r0, r5, #4
	bl sub_0803AFB8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_0803D8B4
	adds r4, r0, #0
	lsls r4, r4, #5
	ldr r0, _080D6968 @ =0x06010000
	adds r2, r4, r0
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r5, #0
	bl sub_080016D0
	movs r1, #0x80
	lsls r1, r1, #2
	adds r5, r5, r1
	ldr r2, _080D696C @ =0x06010400
	adds r4, r4, r2
	adds r0, r1, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080016D0
	ldr r1, [r7]
	ldr r0, _080D6960 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #9
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1]
_080D6958:
	adds r0, r6, #0
	bl sub_08000E14
	b _080D69D6
	.align 2, 0
_080D6960: .4byte 0x0000042C
_080D6964: .4byte 0x081C15F8
_080D6968: .4byte 0x06010000
_080D696C: .4byte 0x06010400
_080D6970:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080D69D6
	ldr r6, _080D69E0 @ =gEwramData
	ldr r0, [r6]
	ldr r1, _080D69E4 @ =0x0000042C
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080D69D6
	ldr r5, _080D69E8 @ =0x081C15F8
	subs r0, r5, #4
	bl sub_0803AFB8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_0803D8B4
	adds r4, r0, #0
	lsls r4, r4, #5
	ldr r0, _080D69EC @ =0x06010000
	adds r2, r4, r0
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r5, #0
	bl sub_080016D0
	movs r1, #0x80
	lsls r1, r1, #2
	adds r5, r5, r1
	ldr r2, _080D69F0 @ =0x06010400
	adds r4, r4, r2
	adds r0, r1, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080016D0
	ldr r1, [r6]
	ldr r0, _080D69E4 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #9
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1]
_080D69D6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D69E0: .4byte gEwramData
_080D69E4: .4byte 0x0000042C
_080D69E8: .4byte 0x081C15F8
_080D69EC: .4byte 0x06010000
_080D69F0: .4byte 0x06010400

	thumb_func_start sub_080D69F4
sub_080D69F4: @ 0x080D69F4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080D6A0C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080D6A10 @ =0x0000A094
	adds r5, r0, r1
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080D6A14
	cmp r0, #1
	beq _080D6A50
	b _080D6AFA
	.align 2, 0
_080D6A0C: .4byte gEwramData
_080D6A10: .4byte 0x0000A094
_080D6A14:
	ldr r0, _080D6A6C @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _080D6A70 @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #7
	bl sub_0803B924
	ldr r1, _080D6A74 @ =0x08528DBC
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F0E4
	ldr r0, _080D6A78 @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0xa
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
_080D6A50:
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #0x24]
	adds r1, r1, r0
	str r1, [r4, #0x20]
	ldr r2, _080D6A7C @ =0xFFFFF400
	adds r0, r0, r2
	str r0, [r4, #0x24]
	cmp r1, #0
	bgt _080D6A80
	adds r0, r4, #0
	bl sub_08000E14
	b _080D6B00
	.align 2, 0
_080D6A6C: .4byte 0x081C15F4
_080D6A70: .4byte 0x0820ED60
_080D6A74: .4byte 0x08528DBC
_080D6A78: .4byte sub_0803B9D0
_080D6A7C: .4byte 0xFFFFF400
_080D6A80:
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r0, r2
	bl sub_080009E4
	ldr r1, [r4, #0x20]
	asrs r1, r1, #8
	asrs r0, r0, #8
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r0, [r4, #0x50]
	ldr r1, [r5, #4]
	subs r0, r0, r1
	adds r0, r0, r2
	str r0, [r4, #0x40]
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	bl sub_080009E4
	ldr r1, [r4, #0x20]
	asrs r1, r1, #8
	asrs r0, r0, #8
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r0, [r4, #0x54]
	ldr r1, [r5, #8]
	subs r0, r0, r1
	adds r0, r0, r2
	str r0, [r4, #0x44]
	ldrh r2, [r4, #0x1e]
	ldrh r1, [r4, #0x1c]
	adds r0, r2, r1
	strh r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080D6AE8
	adds r0, r2, #0
	adds r0, #0x40
	strh r0, [r4, #0x1e]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #5
	cmp r0, r1
	ble _080D6AFA
	b _080D6AF8
_080D6AE8:
	adds r0, r2, #0
	subs r0, #0x40
	strh r0, [r4, #0x1e]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080D6B08 @ =0xFFFFE800
	cmp r0, r1
	bge _080D6AFA
_080D6AF8:
	strh r1, [r4, #0x1e]
_080D6AFA:
	adds r0, r4, #0
	bl sub_0803F17C
_080D6B00:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080D6B08: .4byte 0xFFFFE800

	thumb_func_start sub_080D6B0C
sub_080D6B0C: @ 0x080D6B0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r6, r0, #0
	ldr r1, _080D6B30 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _080D6B34 @ =0x0000A094
	adds r7, r0, r2
	ldrb r0, [r6, #0xa]
	adds r2, r1, #0
	cmp r0, #6
	bls _080D6B24
	b _080D6ED0
_080D6B24:
	lsls r0, r0, #2
	ldr r1, _080D6B38 @ =_080D6B3C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080D6B30: .4byte gEwramData
_080D6B34: .4byte 0x0000A094
_080D6B38: .4byte _080D6B3C
_080D6B3C: @ jump table
	.4byte _080D6B58 @ case 0
	.4byte _080D6B68 @ case 1
	.4byte _080D6B82 @ case 2
	.4byte _080D6C3A @ case 3
	.4byte _080D6DD8 @ case 4
	.4byte _080D6E4C @ case 5
	.4byte _080D6EAA @ case 6
_080D6B58:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _080D6B64
	subs r0, #1
	strb r0, [r6, #0xd]
	b _080D6ED0
_080D6B64:
	movs r0, #1
	strb r0, [r6, #0xa]
_080D6B68:
	movs r0, #0xa6
	lsls r0, r0, #1
	bl sub_08013D60
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #2
	strb r0, [r6, #0xa]
_080D6B82:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D6BEC
	ldr r1, [r6, #0x18]
	ldr r0, _080D6C18 @ =0x00007FFF
	cmp r1, r0
	bgt _080D6BEC
	bl RandomNumberGenerator
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r2, _080D6C1C @ =sub_080D69F4
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	beq _080D6BEC
	ldr r0, [r6, #0x40]
	ldr r1, [r7, #4]
	adds r0, r0, r1
	str r0, [r4, #0x50]
	ldr r0, [r6, #0x44]
	ldr r1, [r7, #8]
	adds r0, r0, r1
	str r0, [r4, #0x54]
	bl RandomNumberGenerator
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
	strh r5, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #0xc
	bl sub_0802D5EC
	movs r3, #0xe0
	lsls r3, r3, #0xe
	adds r0, r0, r3
	str r0, [r4, #0x20]
_080D6BEC:
	ldr r1, [r6, #0x18]
	movs r0, #0xf0
	lsls r0, r0, #8
	cmp r1, r0
	bne _080D6C04
	movs r0, #0xa6
	lsls r0, r0, #1
	bl sub_08013E18
	ldr r0, _080D6C20 @ =0x0000014B
	bl sub_080D7910
_080D6C04:
	ldr r1, [r6, #0x18]
	ldr r0, _080D6C24 @ =0x0000FFFF
	cmp r1, r0
	bgt _080D6C28
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r1, r4
	str r0, [r6, #0x18]
	b _080D6ED0
	.align 2, 0
_080D6C18: .4byte 0x00007FFF
_080D6C1C: .4byte sub_080D69F4
_080D6C20: .4byte 0x0000014B
_080D6C24: .4byte 0x0000FFFF
_080D6C28:
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #0xfd
	ands r1, r0
	strb r1, [r2]
	movs r0, #3
	strb r0, [r6, #0xa]
	b _080D6ED0
_080D6C3A:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D6CA4
	movs r0, #0x10
	bl sub_0802D5EC
	lsls r0, r0, #0x10
	ldr r5, [r6, #0x40]
	adds r5, r5, r0
	movs r0, #0x10
	bl sub_0802D5EC
	lsls r0, r0, #0x10
	ldr r4, [r6, #0x44]
	adds r4, r4, r0
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_0802D5EC
	adds r2, r0, #0
	movs r0, #4
	str r0, [sp]
	movs r0, #9
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #0
	bl sub_08045B44
	adds r4, r0, #0
	cmp r4, #0
	beq _080D6CA4
	movs r0, #0x80
	lsls r0, r0, #7
	bl sub_0802D5EC
	ldr r1, _080D6CC8 @ =0xFFFF0000
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	rsbs r0, r0, #0
	cmp r0, #0
	bge _080D6C98
	adds r0, #0x1f
_080D6C98:
	asrs r0, r0, #5
	str r0, [r4, #0x54]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0xa
	strb r0, [r1]
_080D6CA4:
	movs r2, #0x14
	ldrsh r0, [r6, r2]
	bl sub_080009E4
	cmp r0, #0
	bge _080D6CCC
	movs r3, #0x14
	ldrsh r0, [r6, r3]
	bl sub_080009E4
	rsbs r0, r0, #0
	movs r1, #3
	bl __divsi3
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r0, r4
	b _080D6CE0
	.align 2, 0
_080D6CC8: .4byte 0xFFFF0000
_080D6CCC:
	movs r1, #0x14
	ldrsh r0, [r6, r1]
	bl sub_080009E4
	movs r1, #3
	bl __divsi3
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
_080D6CE0:
	str r0, [r6, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r6, #0
	bl sub_0806D460
	movs r3, #0x16
	ldrsh r4, [r6, r3]
	cmp r4, #0
	bne _080D6D4C
	adds r0, r6, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _080D6D3C @ =gEwramData
	ldr r2, [r1]
	ldr r3, _080D6D40 @ =0x0000A094
	adds r2, r2, r3
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	adds r1, r6, #0
	adds r1, #0x46
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	adds r1, #0x39
	bl sub_08001D94
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080D6DA2
	ldr r0, _080D6D44 @ =gUnk_03002CB0
	ldr r1, _080D6D48 @ =0x0000100D
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080D6DA2
	str r4, [r6, #0x54]
	movs r0, #1
	strh r0, [r6, #0x16]
	b _080D6DA2
	.align 2, 0
_080D6D3C: .4byte gEwramData
_080D6D40: .4byte 0x0000A094
_080D6D44: .4byte gUnk_03002CB0
_080D6D48: .4byte 0x0000100D
_080D6D4C:
	adds r0, r6, #0
	movs r1, #6
	bl sub_0806D4A8
	ldr r1, [r6, #0x4c]
	ldr r0, _080D6DD0 @ =0x00000FFF
	cmp r1, r0
	bgt _080D6D60
	movs r0, #0
	str r0, [r6, #0x4c]
_080D6D60:
	ldr r0, [r6, #0x4c]
	cmp r0, #0
	bne _080D6DA2
	ldrh r1, [r6, #0x14]
	ldr r0, _080D6DD4 @ =0x00007FFF
	ands r0, r1
	cmp r0, #0
	bne _080D6D78
	movs r0, #0xa5
	lsls r0, r0, #1
	bl sub_080D7910
_080D6D78:
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ldrh r3, [r6, #0x14]
	adds r0, r0, r3
	strh r0, [r6, #0x14]
	movs r4, #0x14
	ldrsh r0, [r6, r4]
	cmp r0, #0
	bge _080D6D8E
	adds r0, #3
_080D6D8E:
	asrs r0, r0, #2
	bl sub_080009E4
	cmp r0, #0
	bge _080D6D9A
	adds r0, #3
_080D6D9A:
	asrs r1, r0, #2
	ldr r0, [r6, #0x44]
	adds r0, r0, r1
	str r0, [r6, #0x44]
_080D6DA2:
	add r0, sp, #8
	adds r1, r6, #0
	bl sub_080421AC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D6DB8
	b _080D6ED0
_080D6DB8:
	movs r0, #4
	strb r0, [r6, #0xa]
	movs r0, #0xf8
	bl sub_080D7910
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	b _080D6ED0
	.align 2, 0
_080D6DD0: .4byte 0x00000FFF
_080D6DD4: .4byte 0x00007FFF
_080D6DD8:
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #0
	beq _080D6DE4
	bl sub_08033E6C
_080D6DE4:
	bl sub_080213BC
	movs r5, #0
	movs r0, #0x40
	strb r0, [r6, #0xc]
	movs r4, #1
	movs r7, #1
	strb r7, [r6, #0xb]
	movs r0, #0
	bl sub_0800C5A8
	ldr r2, _080D6E3C @ =gEwramData
	ldr r1, [r2]
	ldr r3, _080D6E40 @ =0x0000A074
	adds r1, r1, r3
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	strb r5, [r6, #0xd]
	movs r0, #5
	strb r0, [r6, #0xa]
	movs r4, #0x30
	ldrsh r0, [r6, r4]
	cmp r0, #0
	beq _080D6ED0
	ldr r2, [r2]
	ldr r0, _080D6E44 @ =0x0000037E
	adds r3, r2, r0
	movs r4, #0x30
	ldrsh r1, [r6, r4]
	adds r0, r7, #0
	lsls r0, r1
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
	ldr r0, _080D6E48 @ =0x0000042C
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	b _080D6ED0
	.align 2, 0
_080D6E3C: .4byte gEwramData
_080D6E40: .4byte 0x0000A074
_080D6E44: .4byte 0x0000037E
_080D6E48: .4byte 0x0000042C
_080D6E4C:
	movs r0, #0
	strb r0, [r6, #0xb]
	ldr r3, [r2]
	ldr r1, _080D6E94 @ =0x00000404
	adds r0, r3, r1
	ldr r2, _080D6E98 @ =0x0001327A
	adds r1, r3, r2
	movs r4, #0
	ldrsh r2, [r0, r4]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r2, r0
	blt _080D6E7A
	ldr r1, _080D6E9C @ =0x00000406
	adds r0, r3, r1
	ldr r2, _080D6EA0 @ =0x0001327C
	adds r1, r3, r2
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r2, r0
	bge _080D6EA4
_080D6E7A:
	ldrb r1, [r6, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080D6E8C
	movs r0, #0xa0
	lsls r0, r0, #1
	bl sub_080D7910
_080D6E8C:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	b _080D6ED0
	.align 2, 0
_080D6E94: .4byte 0x00000404
_080D6E98: .4byte 0x0001327A
_080D6E9C: .4byte 0x00000406
_080D6EA0: .4byte 0x0001327C
_080D6EA4:
	movs r0, #6
	strb r0, [r6, #0xa]
	b _080D6ED0
_080D6EAA:
	adds r2, r6, #0
	adds r2, #0x58
	ldrh r1, [r2]
	ldr r0, _080D6ECC @ =0x0000101F
	ands r0, r1
	cmp r0, #0
	beq _080D6EC2
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080D6EC2:
	adds r0, r6, #0
	bl sub_08000E14
	b _080D6EEE
	.align 2, 0
_080D6ECC: .4byte 0x0000101F
_080D6ED0:
	ldr r2, [r6, #0x18]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	movs r1, #0
	str r1, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	adds r1, r2, #0
	bl sub_0803E058
_080D6EEE:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D6EF8
sub_080D6EF8: @ 0x080D6EF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r2
	str r3, [sp, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	ldr r4, _080D6F4C @ =gEwramData
	ldr r0, [r4]
	ldr r5, _080D6F50 @ =0x00013266
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D6F2A
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_08013F6C
_080D6F2A:
	ldr r3, [r4]
	ldr r1, _080D6F54 @ =0x000004CC
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080D6F5C
	ldr r2, _080D6F58 @ =0x0000037E
	adds r0, r3, r2
	movs r1, #1
	mov r2, sb
	lsls r1, r2
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
	b _080D6F88
	.align 2, 0
_080D6F4C: .4byte gEwramData
_080D6F50: .4byte 0x00013266
_080D6F54: .4byte 0x000004CC
_080D6F58: .4byte 0x0000037E
_080D6F5C:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	bne _080D6F88
	adds r0, r3, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D6F88
	ldr r0, _080D6FB0 @ =0x0000037E
	adds r2, r3, r0
	movs r0, #1
	mov r1, sb
	lsls r0, r1
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _080D6FB4 @ =0x0000042C
	adds r2, r3, r0
	ldr r0, [r2]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
_080D6F88:
	ldr r2, _080D6FB8 @ =sub_080D6B0C
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r7, r0, #0
	cmp r7, #0
	beq _080D7076
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _080D6FBC
	adds r0, r7, #0
	bl sub_08000E14
	b _080D7076
	.align 2, 0
_080D6FB0: .4byte 0x0000037E
_080D6FB4: .4byte 0x0000042C
_080D6FB8: .4byte sub_080D6B0C
_080D6FBC:
	adds r4, r7, #0
	adds r4, #0x58
	movs r0, #0x1f
	ands r2, r0
	ldrb r1, [r4]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
	movs r1, #0x59
	adds r1, r1, r7
	mov r8, r1
	ldrb r0, [r1]
	movs r1, #0x10
	orrs r0, r1
	movs r6, #0x20
	orrs r0, r6
	mov r2, r8
	strb r0, [r2]
	ldr r0, _080D7088 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _080D708C @ =0x0820ED60
	adds r0, r7, #0
	movs r3, #7
	bl sub_0803B924
	ldr r0, _080D7090 @ =sub_080D7378
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #0x65
	movs r0, #0x7c
	strb r0, [r1]
	subs r1, #9
	movs r0, #0xa
	strb r0, [r1]
	mov r1, r8
	ldrb r0, [r1]
	movs r5, #2
	orrs r0, r5
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x42
	mov r2, sl
	strh r2, [r0]
	adds r0, #4
	mov r1, sp
	ldrh r1, [r1]
	strh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r7, #0x54]
	mov r2, sp
	ldrb r2, [r2, #4]
	strb r2, [r7, #0xd]
	adds r0, r7, #0
	movs r1, #0xb
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r1, _080D7094 @ =0x1010F8F8
	adds r0, r7, #0
	bl sub_08042884
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r0, [r2]
	orrs r0, r5
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4]
	orrs r0, r6
	strb r0, [r4]
	ldr r0, _080D7098 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _080D709C @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080D7076
	ldr r1, _080D70A0 @ =0x00013266
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D7076
	mov r2, sb
	strh r2, [r7, #0x30]
_080D7076:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D7088: .4byte 0x081C15F4
_080D708C: .4byte 0x0820ED60
_080D7090: .4byte sub_080D7378
_080D7094: .4byte 0x1010F8F8
_080D7098: .4byte gEwramData
_080D709C: .4byte 0x000004CC
_080D70A0: .4byte 0x00013266

	thumb_func_start sub_080D70A4
sub_080D70A4: @ 0x080D70A4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080D710C @ =gEwramData
	mov r8, r0
	ldr r0, [r0]
	ldr r1, _080D7110 @ =0x0000042C
	adds r0, r0, r1
	ldr r0, [r0]
	movs r7, #8
	ands r0, r7
	cmp r0, #0
	bne _080D7100
	ldr r6, _080D7114 @ =0x081C35FC
	ldr r0, _080D7118 @ =0x081C15F4
	bl sub_0803AFB8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_0803D8B4
	adds r4, r0, #0
	lsls r4, r4, #5
	movs r5, #0x80
	lsls r5, r5, #2
	ldr r0, _080D711C @ =0x06010000
	adds r2, r4, r0
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080016D0
	adds r6, r6, r5
	ldr r1, _080D7120 @ =0x06010400
	adds r4, r4, r1
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_080016D0
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _080D7110 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	orrs r0, r7
	str r0, [r1]
_080D7100:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D710C: .4byte gEwramData
_080D7110: .4byte 0x0000042C
_080D7114: .4byte 0x081C35FC
_080D7118: .4byte 0x081C15F4
_080D711C: .4byte 0x06010000
_080D7120: .4byte 0x06010400

	thumb_func_start sub_080D7124
sub_080D7124: @ 0x080D7124
	push {r4, r5, r6, r7, lr}
	ldr r7, _080D7184 @ =gEwramData
	ldr r0, [r7]
	ldr r1, _080D7188 @ =0x0000042C
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080D717C
	ldr r6, _080D718C @ =0x081C15F8
	subs r0, r6, #4
	bl sub_0803AFB8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_0803D8B4
	adds r4, r0, #0
	lsls r4, r4, #5
	movs r5, #0x80
	lsls r5, r5, #2
	ldr r0, _080D7190 @ =0x06010000
	adds r2, r4, r0
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080016D0
	adds r6, r6, r5
	ldr r1, _080D7194 @ =0x06010400
	adds r4, r4, r1
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_080016D0
	ldr r1, [r7]
	ldr r0, _080D7188 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #9
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1]
_080D717C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D7184: .4byte gEwramData
_080D7188: .4byte 0x0000042C
_080D718C: .4byte 0x081C15F8
_080D7190: .4byte 0x06010000
_080D7194: .4byte 0x06010400

	thumb_func_start sub_080D7198
sub_080D7198: @ 0x080D7198
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	mov sl, r1
	ldr r2, _080D7234 @ =sub_080D6544
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r6, r0, #0
	cmp r6, #0
	beq _080D7226
	ldr r0, _080D7238 @ =gEwramData
	mov r8, r0
	ldr r0, [r0]
	ldr r1, _080D723C @ =0x0000042C
	adds r0, r0, r1
	ldr r0, [r0]
	movs r7, #8
	ands r0, r7
	cmp r0, #0
	bne _080D720E
	ldr r5, _080D7240 @ =0x081C35FC
	ldr r0, _080D7244 @ =0x081C15F4
	bl sub_0803AFB8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_0803D8B4
	adds r4, r0, #0
	lsls r4, r4, #5
	ldr r0, _080D7248 @ =0x06010000
	adds r2, r4, r0
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r5, #0
	bl sub_080016D0
	movs r1, #0x80
	lsls r1, r1, #2
	adds r5, r5, r1
	ldr r0, _080D724C @ =0x06010400
	adds r4, r4, r0
	adds r0, r1, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080016D0
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _080D723C @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	orrs r0, r7
	str r0, [r1]
_080D720E:
	mov r1, sb
	str r1, [r6, #0x40]
	mov r0, sl
	str r0, [r6, #0x44]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
_080D7226:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D7234: .4byte sub_080D6544
_080D7238: .4byte gEwramData
_080D723C: .4byte 0x0000042C
_080D7240: .4byte 0x081C35FC
_080D7244: .4byte 0x081C15F4
_080D7248: .4byte 0x06010000
_080D724C: .4byte 0x06010400

	thumb_func_start sub_080D7250
sub_080D7250: @ 0x080D7250
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	mov sl, r1
	ldr r2, _080D72EC @ =sub_080D67A8
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r6, r0, #0
	cmp r6, #0
	beq _080D72DE
	ldr r0, _080D72F0 @ =gEwramData
	mov r8, r0
	ldr r0, [r0]
	ldr r1, _080D72F4 @ =0x0000042C
	adds r0, r0, r1
	ldr r0, [r0]
	movs r7, #8
	ands r0, r7
	cmp r0, #0
	bne _080D72C6
	ldr r5, _080D72F8 @ =0x081C35FC
	ldr r0, _080D72FC @ =0x081C15F4
	bl sub_0803AFB8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_0803D8B4
	adds r4, r0, #0
	lsls r4, r4, #5
	ldr r0, _080D7300 @ =0x06010000
	adds r2, r4, r0
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r5, #0
	bl sub_080016D0
	movs r1, #0x80
	lsls r1, r1, #2
	adds r5, r5, r1
	ldr r0, _080D7304 @ =0x06010400
	adds r4, r4, r0
	adds r0, r1, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080016D0
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _080D72F4 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	orrs r0, r7
	str r0, [r1]
_080D72C6:
	mov r1, sb
	str r1, [r6, #0x40]
	mov r0, sl
	str r0, [r6, #0x44]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
_080D72DE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D72EC: .4byte sub_080D67A8
_080D72F0: .4byte gEwramData
_080D72F4: .4byte 0x0000042C
_080D72F8: .4byte 0x081C35FC
_080D72FC: .4byte 0x081C15F4
_080D7300: .4byte 0x06010000
_080D7304: .4byte 0x06010400

	thumb_func_start sub_080D7308
sub_080D7308: @ 0x080D7308
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r3, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r0, r2, #3
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _080D7368 @ =0x080E9644
	adds r0, r0, r1
	ldrb r6, [r0, #0x17]
	ldrb r3, [r0, #0x18]
	ldr r0, _080D736C @ =gEwramData
	ldr r2, [r0]
	ldr r1, _080D7370 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080D735E
	ldr r1, _080D7374 @ =0x00013266
	adds r0, r2, r1
	ldrb r2, [r0]
	cmp r2, #0
	bne _080D735E
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	subs r3, #1
	str r2, [sp]
	adds r2, r6, #0
	bl sub_0804459C
	adds r1, r0, #0
	cmp r1, #0
	beq _080D735E
	strh r7, [r1, #0x30]
	movs r0, #2
	strb r0, [r1, #0xb]
_080D735E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D7368: .4byte 0x080E9644
_080D736C: .4byte gEwramData
_080D7370: .4byte 0x000004CC
_080D7374: .4byte 0x00013266

	thumb_func_start sub_080D7378
sub_080D7378: @ 0x080D7378
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803AC40
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080D73AA
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _080D7392
	subs r0, #1
	strb r0, [r4, #0xc]
	b _080D73AA
_080D7392:
	movs r0, #1
	bl sub_0800C5A8
	ldr r0, _080D73B0 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _080D73B4 @ =0x0000A074
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
_080D73AA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D73B0: .4byte gEwramData
_080D73B4: .4byte 0x0000A074

	thumb_func_start sub_080D73B8
sub_080D73B8: @ 0x080D73B8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r8, r4
	cmp r4, #0x2d
	bhi _080D73CC
	ldr r0, _080D73FC @ =0x030020DA
	strh r4, [r0]
_080D73CC:
	ldr r2, _080D7400 @ =0x0827CCD8
	ldr r1, _080D7404 @ =0x0827CD38
	lsls r0, r4, #3
	adds r6, r0, r1
	ldrh r1, [r6, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r5, r0, #2
	adds r2, r5, r2
	ldr r2, [r2]
	ldr r3, [r2, #4]
	movs r7, #0x80
	lsls r7, r7, #0x18
	ands r7, r3
	cmp r7, #0
	beq _080D740C
	adds r0, r4, #0
	bl m4aSongNumStart
	ldr r0, _080D7408 @ =0x030020E0
	adds r0, r5, r0
	movs r1, #0
	strh r1, [r0]
	b _080D7432
	.align 2, 0
_080D73FC: .4byte 0x030020DA
_080D7400: .4byte 0x0827CCD8
_080D7404: .4byte 0x0827CD38
_080D7408: .4byte 0x030020E0
_080D740C:
	ldr r0, [r2]
	ldr r1, [r6]
	ldrb r0, [r0, #2]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bls _080D7420
	ldr r0, _080D7444 @ =0x0000FFFF
	ands r3, r0
	cmp r3, #0
	bne _080D7438
_080D7420:
	adds r0, r2, #0
	bl MPlayStop
	mov r0, r8
	bl m4aSongNumStart
	ldr r0, _080D7448 @ =0x030020E0
	adds r0, r5, r0
	strh r7, [r0]
_080D7432:
	movs r1, #0xff
	lsls r1, r1, #4
	strh r1, [r0, #8]
_080D7438:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D7444: .4byte 0x0000FFFF
_080D7448: .4byte 0x030020E0

	thumb_func_start sub_080D744C
sub_080D744C: @ 0x080D744C
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r1, _080D7470 @ =0xEFE00000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #0xb
	bhi _080D747C
	ldr r0, _080D7474 @ =0x08650A1C
	ldr r2, _080D7478 @ =0xFFFFEFE0
	adds r1, r4, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl m4aSoundMode
	b _080D772A
	.align 2, 0
_080D7470: .4byte 0xEFE00000
_080D7474: .4byte 0x08650A1C
_080D7478: .4byte 0xFFFFEFE0
_080D747C:
	ldr r1, _080D7490 @ =0xFFFFF000
	adds r0, r4, r1
	cmp r0, #0x47
	bls _080D7486
	b _080D772A
_080D7486:
	lsls r0, r0, #2
	ldr r1, _080D7494 @ =_080D7498
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080D7490: .4byte 0xFFFFF000
_080D7494: .4byte _080D7498
_080D7498: @ jump table
	.4byte _080D7700 @ case 0
	.4byte _080D772A @ case 1
	.4byte _080D76D0 @ case 2
	.4byte _080D76E8 @ case 3
	.4byte _080D772A @ case 4
	.4byte _080D772A @ case 5
	.4byte _080D7634 @ case 6
	.4byte _080D763E @ case 7
	.4byte _080D7648 @ case 8
	.4byte _080D7652 @ case 9
	.4byte _080D772A @ case 10
	.4byte _080D772A @ case 11
	.4byte _080D772A @ case 12
	.4byte _080D772A @ case 13
	.4byte _080D772A @ case 14
	.4byte _080D772A @ case 15
	.4byte _080D75B8 @ case 16
	.4byte _080D7608 @ case 17
	.4byte _080D75DC @ case 18
	.4byte _080D772A @ case 19
	.4byte _080D772A @ case 20
	.4byte _080D772A @ case 21
	.4byte _080D772A @ case 22
	.4byte _080D772A @ case 23
	.4byte _080D772A @ case 24
	.4byte _080D772A @ case 25
	.4byte _080D772A @ case 26
	.4byte _080D772A @ case 27
	.4byte _080D772A @ case 28
	.4byte _080D772A @ case 29
	.4byte _080D772A @ case 30
	.4byte _080D772A @ case 31
	.4byte _080D772A @ case 32
	.4byte _080D772A @ case 33
	.4byte _080D772A @ case 34
	.4byte _080D772A @ case 35
	.4byte _080D772A @ case 36
	.4byte _080D772A @ case 37
	.4byte _080D772A @ case 38
	.4byte _080D772A @ case 39
	.4byte _080D772A @ case 40
	.4byte _080D772A @ case 41
	.4byte _080D772A @ case 42
	.4byte _080D772A @ case 43
	.4byte _080D772A @ case 44
	.4byte _080D772A @ case 45
	.4byte _080D772A @ case 46
	.4byte _080D772A @ case 47
	.4byte _080D7674 @ case 48
	.4byte _080D7674 @ case 49
	.4byte _080D7674 @ case 50
	.4byte _080D7674 @ case 51
	.4byte _080D7674 @ case 52
	.4byte _080D7674 @ case 53
	.4byte _080D7674 @ case 54
	.4byte _080D7674 @ case 55
	.4byte _080D76B0 @ case 56
	.4byte _080D76B0 @ case 57
	.4byte _080D76B0 @ case 58
	.4byte _080D76B0 @ case 59
	.4byte _080D76B0 @ case 60
	.4byte _080D76B0 @ case 61
	.4byte _080D76B0 @ case 62
	.4byte _080D76B0 @ case 63
	.4byte _080D765C @ case 64
	.4byte _080D765C @ case 65
	.4byte _080D765C @ case 66
	.4byte _080D765C @ case 67
	.4byte _080D765C @ case 68
	.4byte _080D765C @ case 69
	.4byte _080D765C @ case 70
	.4byte _080D765C @ case 71
_080D75B8:
	ldr r1, _080D75D4 @ =0x030020DA
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _080D75C4
	b _080D772A
_080D75C4:
	ldr r0, _080D75D8 @ =0x0827CD38
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrh r0, [r1, #4]
	b _080D7664
	.align 2, 0
_080D75D4: .4byte 0x030020DA
_080D75D8: .4byte 0x0827CD38
_080D75DC:
	ldr r1, _080D7600 @ =0x030020DA
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _080D75E8
	b _080D772A
_080D75E8:
	ldr r0, _080D7604 @ =0x0827CD38
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrh r0, [r1, #4]
	movs r1, #0x3c
	movs r2, #0x90
	bl sub_080D773C
	b _080D772A
	.align 2, 0
_080D7600: .4byte 0x030020DA
_080D7604: .4byte 0x0827CD38
_080D7608:
	ldr r1, _080D762C @ =0x030020DA
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _080D7614
	b _080D772A
_080D7614:
	ldr r0, _080D7630 @ =0x0827CD38
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrh r0, [r1, #4]
	movs r1, #0x3c
	movs r2, #0xff
	bl sub_080D773C
	b _080D772A
	.align 2, 0
_080D762C: .4byte 0x030020DA
_080D7630: .4byte 0x0827CD38
_080D7634:
	movs r0, #0xb0
	lsls r0, r0, #0x10
	bl m4aSoundMode
	b _080D772A
_080D763E:
	movs r0, #0xa0
	lsls r0, r0, #0x10
	bl m4aSoundMode
	b _080D772A
_080D7648:
	movs r0, #0x90
	lsls r0, r0, #0x10
	bl m4aSoundMode
	b _080D772A
_080D7652:
	movs r0, #0x80
	lsls r0, r0, #0x10
	bl m4aSoundMode
	b _080D772A
_080D765C:
	ldr r1, _080D7670 @ =0xFFFFEFC0
	adds r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_080D7664:
	movs r1, #0x19
	movs r2, #0
	bl sub_080D773C
	b _080D772A
	.align 2, 0
_080D7670: .4byte 0xFFFFEFC0
_080D7674:
	ldr r1, _080D76A0 @ =0x0827CCD8
	ldr r2, _080D76A4 @ =0xFFFFEFD0
	adds r4, r4, r2
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl MPlayStop
	ldr r2, _080D76A8 @ =0x030020E0
	ldr r0, _080D76AC @ =0x0827CD38
	lsls r4, r4, #3
	adds r4, r4, r0
	ldrh r1, [r4, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	strh r1, [r0]
	b _080D772A
	.align 2, 0
_080D76A0: .4byte 0x0827CCD8
_080D76A4: .4byte 0xFFFFEFD0
_080D76A8: .4byte 0x030020E0
_080D76AC: .4byte 0x0827CD38
_080D76B0:
	ldr r2, _080D76C8 @ =0x0827CCD8
	ldr r0, _080D76CC @ =0xFFFFEFC8
	adds r1, r4, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	bl m4aMPlayContinue
	b _080D772A
	.align 2, 0
_080D76C8: .4byte 0x0827CCD8
_080D76CC: .4byte 0xFFFFEFC8
_080D76D0:
	ldr r1, _080D76E4 @ =0x030020D8
	ldrh r0, [r1]
	cmp r0, #0
	bne _080D772A
	movs r0, #1
	strh r0, [r1]
	bl m4aMPlayAllStop
	b _080D772A
	.align 2, 0
_080D76E4: .4byte 0x030020D8
_080D76E8:
	ldr r1, _080D76FC @ =0x030020D8
	ldrh r0, [r1]
	cmp r0, #0
	beq _080D772A
	movs r0, #0
	strh r0, [r1]
	bl m4aMPlayAllContinue
	b _080D772A
	.align 2, 0
_080D76FC: .4byte 0x030020D8
_080D7700:
	bl m4aMPlayAllStop
	ldr r1, _080D7730 @ =0x030020D8
	movs r0, #0
	strh r0, [r1]
	ldr r1, _080D7734 @ =0x030020DA
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strh r0, [r1]
	movs r3, #0
	movs r2, #0xff
	lsls r2, r2, #4
	ldr r0, _080D7738 @ =0x030020E0
	movs r1, #7
_080D771E:
	strh r3, [r0]
	strh r2, [r0, #8]
	adds r0, #0xc
	subs r1, #1
	cmp r1, #0
	bge _080D771E
_080D772A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D7730: .4byte 0x030020D8
_080D7734: .4byte 0x030020DA
_080D7738: .4byte 0x030020E0

	thumb_func_start sub_080D773C
sub_080D773C: @ 0x080D773C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r6, r2, #0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r3, r1, #2
	ldr r1, _080D777C @ =0x030020E0
	adds r4, r3, r1
	ldr r1, _080D7780 @ =0x00000008
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r0, r1
	bhi _080D77A2
	cmp r5, #0
	beq _080D7790
	strh r5, [r4]
	lsls r0, r2, #4
	strh r0, [r4, #6]
	ldrh r1, [r4, #8]
	cmp r1, r0
	bge _080D7784
	strh r1, [r4, #2]
	adds r0, r1, #0
	strh r0, [r4, #4]
	movs r0, #1
	strh r0, [r4, #0xa]
	b _080D77A2
	.align 2, 0
_080D777C: .4byte 0x030020E0
_080D7780: .4byte 0x00000008
_080D7784:
	strh r1, [r4, #2]
	ldrh r0, [r4, #8]
	strh r0, [r4, #4]
	movs r0, #0
	strh r0, [r4, #0xa]
	b _080D77A2
_080D7790:
	ldr r0, _080D77A8 @ =0x0827CCD8
	adds r0, r3, r0
	ldr r0, [r0]
	ldr r1, _080D77AC @ =0x0000FFFF
	adds r2, r6, #0
	bl m4aMPlayVolumeControl
	lsls r0, r6, #4
	strh r0, [r4, #8]
_080D77A2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080D77A8: .4byte 0x0827CCD8
_080D77AC: .4byte 0x0000FFFF

	thumb_func_start sub_080D77B0
sub_080D77B0: @ 0x080D77B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r7, #0
	ldr r0, _080D77F8 @ =0x0827CCD8
	mov r8, r0
_080D77BC:
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r6, r0, #2
	ldr r0, _080D77FC @ =0x030020E0
	adds r4, r6, r0
	ldrh r0, [r4]
	cmp r0, #0
	beq _080D7866
	ldrh r5, [r4, #0xa]
	cmp r5, #0
	beq _080D7808
	ldrh r3, [r4, #2]
	adds r1, r3, r0
	ldrh r2, [r4, #6]
	cmp r2, r1
	ble _080D77E2
	ldr r0, _080D7800 @ =0x00000FEF
	cmp r3, r0
	bls _080D7844
_080D77E2:
	movs r0, #0
	strh r0, [r4]
	mov r1, r8
	adds r0, r6, r1
	ldr r0, [r0]
	lsrs r2, r2, #4
	ldr r1, _080D7804 @ =0x0000FFFF
	bl m4aMPlayVolumeControl
	ldrh r0, [r4, #6]
	b _080D7864
	.align 2, 0
_080D77F8: .4byte 0x0827CCD8
_080D77FC: .4byte 0x030020E0
_080D7800: .4byte 0x00000FEF
_080D7804: .4byte 0x0000FFFF
_080D7808:
	ldrh r3, [r4, #2]
	ldrh r0, [r4]
	subs r1, r3, r0
	ldrh r2, [r4, #6]
	cmp r2, r1
	bge _080D781C
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r3, r0
	bhi _080D7844
_080D781C:
	strh r5, [r4]
	mov r1, r8
	adds r0, r6, r1
	ldr r5, [r0]
	lsrs r2, r2, #4
	adds r0, r5, #0
	ldr r1, _080D7840 @ =0x0000FFFF
	bl m4aMPlayVolumeControl
	ldrh r0, [r4, #6]
	cmp r0, #0x10
	bhi _080D783A
	adds r0, r5, #0
	bl MPlayStop
_080D783A:
	ldrh r0, [r4, #6]
	b _080D7864
	.align 2, 0
_080D7840: .4byte 0x0000FFFF
_080D7844:
	strh r1, [r4, #2]
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x15
	ldrh r0, [r4, #4]
	cmp r0, r1
	beq _080D7862
	strh r1, [r4, #4]
	mov r1, r8
	adds r0, r6, r1
	ldr r0, [r0]
	ldrh r2, [r4, #2]
	lsrs r2, r2, #4
	ldr r1, _080D787C @ =0x0000FFFF
	bl m4aMPlayVolumeControl
_080D7862:
	ldrh r0, [r4, #2]
_080D7864:
	strh r0, [r4, #8]
_080D7866:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #7
	bls _080D77BC
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D787C: .4byte 0x0000FFFF

	thumb_func_start InitializeAudio
InitializeAudio: @ 0x080D7880
	push {lr}
	bl m4aSoundInit
	ldr r0, _080D78F0 @ =0x0093F800
	bl m4aSoundMode
	ldr r1, _080D78F4 @ =0x030020D8
	movs r0, #0
	strh r0, [r1]
	ldr r1, _080D78F8 @ =0x030020DA
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strh r0, [r1]
	movs r1, #0
	ldr r3, _080D78FC @ =0x030020E0
	movs r2, #0
_080D78A2:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	strh r2, [r0]
	strh r2, [r0, #6]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #7
	bls _080D78A2
	movs r0, #0x2e
	bl sub_080D73B8
	movs r0, #0x2f
	bl sub_080D73B8
	movs r0, #0x30
	bl sub_080D73B8
	movs r0, #0x31
	bl sub_080D73B8
	movs r0, #0x32
	bl sub_080D73B8
	movs r0, #0x33
	bl sub_080D73B8
	movs r0, #0x34
	bl sub_080D73B8
	movs r0, #0x35
	bl sub_080D73B8
	bl m4aMPlayAllStop
	pop {r0}
	bx r0
	.align 2, 0
_080D78F0: .4byte 0x0093F800
_080D78F4: .4byte 0x030020D8
_080D78F8: .4byte 0x030020DA
_080D78FC: .4byte 0x030020E0

	thumb_func_start sub_080D7900
sub_080D7900: @ 0x080D7900
	push {lr}
	bl m4aSoundMain
	bl sub_080D77B0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D7910
sub_080D7910: @ 0x080D7910
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r1, r4, #0
	ldr r2, _080D7928 @ =0x000003FF
	cmp r4, r2
	bhi _080D792C
	adds r0, r4, #0
	bl sub_080D73B8
	b _080D797E
	.align 2, 0
_080D7928: .4byte 0x000003FF
_080D792C:
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r4
	cmp r0, #0
	beq _080D7978
	adds r0, r4, #0
	ands r0, r2
	bl m4aSongNumStop
	ldr r3, _080D7968 @ =0x030020E0
	ldr r1, _080D796C @ =0x0827CD38
	ldr r2, _080D7970 @ =0x00000FFF
	ands r2, r4
	lsls r0, r2, #3
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	movs r1, #0
	strh r1, [r0]
	cmp r2, #0x2d
	bhi _080D797E
	ldr r1, _080D7974 @ =0x030020DA
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strh r0, [r1]
	b _080D797E
	.align 2, 0
_080D7968: .4byte 0x030020E0
_080D796C: .4byte 0x0827CD38
_080D7970: .4byte 0x00000FFF
_080D7974: .4byte 0x030020DA
_080D7978:
	adds r0, r1, #0
	bl sub_080D744C
_080D797E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080D7984
sub_080D7984: @ 0x080D7984
	push {lr}
	ldr r0, _080D79BC @ =0x0093F800
	bl m4aSoundMode
	ldr r1, _080D79C0 @ =0x030020D8
	movs r0, #0
	strh r0, [r1]
	ldr r1, _080D79C4 @ =0x030020DA
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strh r0, [r1]
	movs r1, #0
	ldr r3, _080D79C8 @ =0x030020E0
	movs r2, #0
_080D79A2:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	strh r2, [r0]
	strh r2, [r0, #6]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #7
	bls _080D79A2
	pop {r0}
	bx r0
	.align 2, 0
_080D79BC: .4byte 0x0093F800
_080D79C0: .4byte 0x030020D8
_080D79C4: .4byte 0x030020DA
_080D79C8: .4byte 0x030020E0

	thumb_func_start sub_080D79CC
sub_080D79CC: @ 0x080D79CC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _080D79E0 @ =0x030020E0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r0, [r1, #2]
	bx lr
	.align 2, 0
_080D79E0: .4byte 0x030020E0
