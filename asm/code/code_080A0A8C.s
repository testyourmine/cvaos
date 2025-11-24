	.include "asm/gba_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	thumb_func_start sub_080A0A8C
sub_080A0A8C: @ 0x080A0A8C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x44
	adds r5, r0, #0
	ldr r1, _080A0ABC @ =0x08119144
	add r0, sp, #0x14
	movs r2, #0x18
	bl memcpy
	add r4, sp, #0x2c
	ldr r1, _080A0AC0 @ =0x0811915C
	adds r0, r4, #0
	movs r2, #0x18
	bl memcpy
	ldrb r6, [r5, #0xb]
	mov r8, r4
	cmp r6, #0
	beq _080A0AC4
	cmp r6, #1
	beq _080A0B74
	b _080A0D62
	.align 2, 0
_080A0ABC: .4byte 0x08119144
_080A0AC0: .4byte 0x0811915C
_080A0AC4:
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _080A0ADA
	movs r0, #0x80
	lsls r0, r0, #5
	b _080A0ADC
_080A0ADA:
	ldr r0, _080A0B08 @ =0xFFFFF000
_080A0ADC:
	str r0, [r5, #0x50]
	movs r1, #0x80
	lsls r1, r1, #0xa
	movs r3, #0xc0
	lsls r3, r3, #0xa
	adds r0, r5, #0
	movs r2, #0
	bl sub_080698A8
	movs r6, #0
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080A0B0C
	adds r0, r5, #0
	movs r1, #0x18
	bl sub_0806D188
	cmp r0, #2
	bne _080A0B1A
	b _080A0B18
	.align 2, 0
_080A0B08: .4byte 0xFFFFF000
_080A0B0C:
	adds r0, r5, #0
	movs r1, #0x18
	bl sub_0806D188
	cmp r0, #1
	bne _080A0B1A
_080A0B18:
	movs r6, #1
_080A0B1A:
	ldrb r1, [r5, #0xd]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _080A0B36
	adds r0, r5, #0
	movs r1, #6
	bl sub_0806D128
	cmp r0, #0
	bne _080A0B36
	movs r0, #0x7d
	bl PlaySong
_080A0B36:
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	cmp r6, #0
	bne _080A0B42
	b _080A0D62
_080A0B42:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #0xd
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #0
	strb r0, [r5, #0xd]
	adds r0, r5, #0
	movs r1, #6
	bl sub_0806D128
	cmp r0, #0
	beq _080A0B66
	b _080A0D62
_080A0B66:
	ldr r0, _080A0B70 @ =0x00000127
	bl PlaySong
	b _080A0D62
	.align 2, 0
_080A0B70: .4byte 0x00000127
_080A0B74:
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_0806D490
	movs r7, #0x80
	lsls r7, r7, #0xa
	movs r3, #0xc0
	lsls r3, r3, #0xa
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #0
	bl sub_080698A8
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r0, [r0]
	ands r6, r0
	cmp r6, #0
	beq _080A0C3C
	movs r0, #0
	strb r0, [r5, #0xb]
	strb r0, [r5, #0xd]
	adds r0, r5, #0
	movs r1, #0xc
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r3, r5, #0
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
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080A0BF0
	ldr r4, _080A0BE4 @ =0xFFD00000
	bl RandomNumberGenerator
	ldr r1, _080A0BE8 @ =0x00007FFF
	ands r1, r0
	rsbs r1, r1, #0
	ldr r0, _080A0BEC @ =0xFFFE0000
	adds r6, r1, r0
	b _080A0BFE
	.align 2, 0
_080A0BE4: .4byte 0xFFD00000
_080A0BE8: .4byte 0x00007FFF
_080A0BEC: .4byte 0xFFFE0000
_080A0BF0:
	movs r4, #0xc0
	lsls r4, r4, #0xe
	bl RandomNumberGenerator
	ldr r1, _080A0C34 @ =0x00007FFF
	ands r1, r0
	adds r6, r1, r7
_080A0BFE:
	bl RandomNumberGenerator
	ldr r1, _080A0C34 @ =0x00007FFF
	ands r1, r0
	ldr r3, _080A0C38 @ =0xFFFF8000
	subs r3, r3, r1
	ldr r0, [r5, #0x40]
	adds r0, r0, r4
	ldr r1, [r5, #0x44]
	adds r2, r5, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #2
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r2, #0x10
	str r2, [sp, #8]
	movs r2, #0xf
	str r2, [sp, #0xc]
	movs r2, #6
	str r2, [sp, #0x10]
	adds r2, r6, #0
	bl sub_0806D9CC
	b _080A0D62
	.align 2, 0
_080A0C34: .4byte 0x00007FFF
_080A0C38: .4byte 0xFFFF8000
_080A0C3C:
	ldrb r1, [r5, #0xd]
	adds r0, r1, #1
	strb r0, [r5, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080A0CCE
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080A0C7C
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, sp
	adds r0, #0x14
	movs r1, #0
	ldrsh r0, [r0, r1]
	rsbs r0, r0, #0
	lsls r4, r0, #0x10
	bl RandomNumberGenerator
	ldr r1, _080A0C78 @ =0x00007FFF
	ands r1, r0
	adds r6, r1, r7
	b _080A0C9C
	.align 2, 0
_080A0C78: .4byte 0x00007FFF
_080A0C7C:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, sp
	adds r0, #0x14
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r4, r0, #0x10
	bl RandomNumberGenerator
	ldr r1, _080A0D08 @ =0x00007FFF
	ands r1, r0
	rsbs r1, r1, #0
	ldr r0, _080A0D0C @ =0xFFFE0000
	adds r6, r1, r0
_080A0C9C:
	bl RandomNumberGenerator
	ldr r1, _080A0D08 @ =0x00007FFF
	ands r1, r0
	ldr r3, _080A0D10 @ =0xFFFF8000
	subs r3, r3, r1
	ldr r0, [r5, #0x40]
	adds r0, r0, r4
	ldr r1, [r5, #0x44]
	adds r2, r5, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #2
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r2, #0x10
	str r2, [sp, #8]
	movs r2, #0xf
	str r2, [sp, #0xc]
	movs r2, #6
	str r2, [sp, #0x10]
	adds r2, r6, #0
	bl sub_0806D9CC
_080A0CCE:
	ldrb r1, [r5, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #2
	bne _080A0D62
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080A0D14
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	rsbs r0, r0, #0
	lsls r4, r0, #0x10
	bl RandomNumberGenerator
	ldr r1, _080A0D08 @ =0x00007FFF
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	adds r6, r1, r0
	b _080A0D30
	.align 2, 0
_080A0D08: .4byte 0x00007FFF
_080A0D0C: .4byte 0xFFFE0000
_080A0D10: .4byte 0xFFFF8000
_080A0D14:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r4, r0, #0x10
	bl RandomNumberGenerator
	ldr r1, _080A0D70 @ =0x00007FFF
	ands r1, r0
	ldr r0, _080A0D74 @ =0xFFFE0000
	subs r6, r0, r1
_080A0D30:
	bl RandomNumberGenerator
	ldr r1, _080A0D70 @ =0x00007FFF
	ands r1, r0
	ldr r3, _080A0D78 @ =0xFFFF8000
	subs r3, r3, r1
	ldr r0, [r5, #0x40]
	adds r0, r0, r4
	ldr r1, [r5, #0x44]
	adds r2, r5, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #2
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r2, #0x10
	str r2, [sp, #8]
	movs r2, #0xf
	str r2, [sp, #0xc]
	movs r2, #6
	str r2, [sp, #0x10]
	adds r2, r6, #0
	bl sub_0806D9CC
_080A0D62:
	add sp, #0x44
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A0D70: .4byte 0x00007FFF
_080A0D74: .4byte 0xFFFE0000
_080A0D78: .4byte 0xFFFF8000

	thumb_func_start sub_080A0D7C
sub_080A0D7C: @ 0x080A0D7C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x2d
	movs r6, #0
	movs r0, #8
	strb r0, [r1]
	ldrh r0, [r4, #0x34]
	subs r0, r0, r3
	movs r5, #0
	strh r0, [r4, #0x34]
	bl sub_080344AC
	movs r1, #0x34
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _080A0DE4
	movs r0, #0x71
	bl PlaySong
	adds r0, r4, #0
	bl sub_080683BC
	movs r3, #1
	strb r3, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x2c
	movs r0, #0x5a
	adds r0, r0, r4
	mov ip, r0
	movs r0, #0xf
	ldrb r1, [r1]
	ands r1, r0
	lsls r1, r1, #3
	mov r0, ip
	ldrb r2, [r0]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	movs r0, #0x3c
	strb r0, [r4, #0xd]
	strb r3, [r4, #0xa]
	strb r5, [r4, #0xb]
	strb r5, [r4, #0xc]
	str r6, [r4, #0x50]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #0x54]
	str r6, [r4, #0x4c]
_080A0DE4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A0DEC
sub_080A0DEC: @ 0x080A0DEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r6, r0, #0
	ldr r7, [r6, #0x14]
	add r5, sp, #0x10
	ldr r1, _080A0E78 @ =0x08119174
	adds r0, r5, #0
	movs r2, #8
	bl memcpy
	add r4, sp, #0x18
	ldr r1, _080A0E7C @ =0x0811917C
	adds r0, r4, #0
	movs r2, #0x18
	bl memcpy
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _080A0E1C
	b _080A1020
_080A0E1C:
	cmp r7, #0
	bne _080A0E22
	b _080A1018
_080A0E22:
	ldr r0, [r7]
	cmp r0, #0
	bne _080A0E2A
	b _080A1018
_080A0E2A:
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x5d
	beq _080A0E36
	b _080A1018
_080A0E36:
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
	ldrb r1, [r0]
	movs r0, #0x78
	ands r0, r1
	str r4, [sp, #0x30]
	mov ip, r3
	cmp r0, #0x20
	bne _080A0E80
	adds r2, r6, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x20
	orrs r1, r0
	strb r1, [r2]
	b _080A0E9C
	.align 2, 0
_080A0E78: .4byte 0x08119174
_080A0E7C: .4byte 0x0811917C
_080A0E80:
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
_080A0E9C:
	ldr r1, [sp, #0x30]
	ldrb r0, [r1]
	movs r1, #0x40
	ands r1, r0
	mov r0, ip
	ldrb r2, [r0]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	adds r5, r7, #0
	adds r5, #0x42
	ldrh r0, [r5]
	adds r4, r6, #0
	adds r4, #0x42
	strh r0, [r4]
	adds r3, r7, #0
	adds r3, #0x46
	ldrh r0, [r3]
	adds r2, r6, #0
	adds r2, #0x46
	strh r0, [r2]
	ldrb r1, [r1]
	movs r0, #0x40
	ands r0, r1
	mov sb, r5
	mov sl, r3
	adds r5, r2, #0
	cmp r0, #0
	beq _080A0EE4
	ldrh r0, [r4]
	ldrh r1, [r6, #0x10]
	subs r0, r0, r1
	b _080A0EEA
_080A0EE4:
	ldrh r0, [r6, #0x10]
	ldrh r1, [r4]
	adds r0, r0, r1
_080A0EEA:
	strh r0, [r4]
	ldrh r0, [r6, #0x12]
	ldrh r1, [r5]
	adds r2, r0, r1
	strh r2, [r5]
	adds r0, r7, #0
	adds r0, #0x6d
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0xc
	bne _080A0F2E
	adds r0, #2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A0F28
	adds r1, r7, #0
	adds r1, #0x6e
	ldrb r0, [r1]
	lsls r0, r0, #1
	add r0, sp
	adds r0, #0x10
	ldrh r0, [r0]
	adds r0, r2, r0
	strh r0, [r5]
	ldrb r0, [r1]
	lsls r0, r0, #1
	add r0, sp
	adds r0, #0x10
	ldrh r0, [r0]
	strh r0, [r6, #0x1a]
	b _080A0F2E
_080A0F28:
	ldrh r0, [r6, #0x1a]
	adds r0, r2, r0
	strh r0, [r5]
_080A0F2E:
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	bne _080A0F88
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0xc
	bne _080A0F40
	ldr r1, [r6, #0x40]
	b _080A0F7A
_080A0F40:
	ldr r0, [sp, #0x30]
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080A0F64
	adds r0, r7, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, sp
	adds r0, #0x18
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	ldr r1, [r7, #0x40]
	subs r1, r1, r0
	b _080A0F7A
_080A0F64:
	adds r0, r7, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, sp
	adds r0, #0x18
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	ldr r1, [r7, #0x40]
	adds r1, r0, r1
_080A0F7A:
	ldr r2, [r6, #0x44]
	ldr r0, [r7, #0x48]
	str r0, [r6, #0x48]
	adds r0, r6, #0
	bl sub_080A1A50
	b _080A1018
_080A0F88:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0xc
	bne _080A0FA8
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #4
	beq _080A0FCA
	adds r0, r6, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _080A0FCA
_080A0FA8:
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x11
	beq _080A0FBE
	adds r0, r6, #0
	movs r1, #0x11
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080A0FBE:
	mov r1, sb
	ldrh r0, [r1]
	strh r0, [r4]
	mov r1, sl
	ldrh r0, [r1]
	strh r0, [r5]
_080A0FCA:
	ldr r0, _080A0FE4 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080A0FE8
	adds r0, r6, #0
	bl sub_0806DF20
	b _080A0FEE
	.align 2, 0
_080A0FE4: .4byte gEwramData
_080A0FE8:
	adds r0, r6, #0
	bl sub_0803F17C
_080A0FEE:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0xc
	bne _080A104E
	ldr r0, _080A1014 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080A104E
	mov r0, sp
	adds r1, r6, #0
	adds r2, r7, #0
	bl sub_080429D0
	b _080A104E
	.align 2, 0
_080A1014: .4byte gEwramData
_080A1018:
	adds r0, r6, #0
	bl EntityDelete
	b _080A104E
_080A1020:
	ldrb r0, [r6, #0xb]
	cmp r0, #0
	bne _080A1036
	adds r0, #1
	strb r0, [r6, #0xb]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_080A1036:
	adds r0, r6, #0
	bl sub_0803F17C
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080A104E
	adds r0, r6, #0
	bl EntityDelete
_080A104E:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A1060
sub_080A1060: @ 0x080A1060
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r6, r0, #0
	ldr r7, [r6, #0x14]
	add r5, sp, #0x14
	ldr r1, _080A10D0 @ =0x08119174
	adds r0, r5, #0
	movs r2, #8
	bl memcpy
	add r4, sp, #0x1c
	ldr r1, _080A10D4 @ =0x08119194
	adds r0, r4, #0
	movs r2, #0x18
	bl memcpy
	ldrb r0, [r6, #0xa]
	mov sl, r5
	cmp r0, #0
	beq _080A1092
	b _080A1390
_080A1092:
	cmp r7, #0
	bne _080A1098
	b _080A1388
_080A1098:
	ldr r0, [r7]
	cmp r0, #0
	bne _080A10A0
	b _080A1388
_080A10A0:
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x5d
	beq _080A10AC
	b _080A1388
_080A10AC:
	adds r0, r7, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x20
	bne _080A10D8
	adds r2, r6, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x20
	orrs r1, r0
	strb r1, [r2]
	b _080A10F4
	.align 2, 0
_080A10D0: .4byte 0x08119174
_080A10D4: .4byte 0x08119194
_080A10D8:
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
_080A10F4:
	adds r4, r7, #0
	adds r4, #0x58
	ldrb r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	adds r3, r6, #0
	adds r3, #0x58
	eors r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r7, #0
	adds r0, #0x42
	ldrh r0, [r0]
	movs r1, #0x42
	adds r1, r1, r6
	mov ip, r1
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r2, r6, #0
	adds r2, #0x46
	strh r0, [r2]
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	mov sb, r4
	adds r4, r3, #0
	adds r5, r2, #0
	cmp r0, #0
	beq _080A1148
	mov r2, ip
	ldrh r0, [r2]
	ldrh r1, [r6, #0x10]
	subs r0, r0, r1
	b _080A1152
_080A1148:
	ldrh r0, [r6, #0x10]
	mov r1, ip
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r2, ip
_080A1152:
	strh r0, [r2]
	adds r2, r5, #0
	ldrh r0, [r6, #0x12]
	ldrh r1, [r2]
	adds r3, r0, r1
	strh r3, [r2]
	adds r0, r7, #0
	adds r0, #0x6d
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0xc
	bne _080A1194
	adds r0, #2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A118E
	adds r1, r7, #0
	adds r1, #0x6e
	ldrb r0, [r1]
	lsls r0, r0, #1
	add r0, sl
	ldrh r0, [r0]
	adds r0, r3, r0
	strh r0, [r2]
	ldrb r0, [r1]
	lsls r0, r0, #1
	add r0, sl
	ldrh r0, [r0]
	strh r0, [r6, #0x1a]
	b _080A1194
_080A118E:
	ldrh r0, [r6, #0x1a]
	adds r0, r3, r0
	strh r0, [r5]
_080A1194:
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	bne _080A11EE
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, #0xc
	bne _080A11A6
	ldr r1, [r6, #0x40]
	b _080A11E0
_080A11A6:
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080A11CA
	adds r0, r7, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, sp
	adds r0, #0x1c
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	ldr r1, [r7, #0x40]
	subs r1, r1, r0
	b _080A11E0
_080A11CA:
	adds r0, r7, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, sp
	adds r0, #0x1c
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #0x10
	ldr r1, [r7, #0x40]
	adds r1, r0, r1
_080A11E0:
	ldr r2, [r6, #0x44]
	ldr r0, [r7, #0x48]
	str r0, [r6, #0x48]
	adds r0, r6, #0
	bl sub_080A1A50
	b _080A1388
_080A11EE:
	ldr r0, _080A1250 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	mov sb, r0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _080A1206
	b _080A1358
_080A1206:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0xc
	beq _080A1210
	b _080A131C
_080A1210:
	ldrb r1, [r4]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r1, [r0]
	cmp r1, #0
	bne _080A1262
	ldrh r0, [r6, #0x1c]
	subs r1, r0, #1
	strh r1, [r6, #0x1c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _080A1234
	b _080A133A
_080A1234:
	bl RandomNumberGenerator
	movs r1, #0x3f
	ands r1, r0
	strh r1, [r6, #0x1c]
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x1f
	bhi _080A1254
	adds r0, r6, #0
	movs r1, #3
	b _080A1258
	.align 2, 0
_080A1250: .4byte gEwramData
_080A1254:
	adds r0, r6, #0
	movs r1, #1
_080A1258:
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _080A133A
_080A1262:
	cmp r1, #1
	bne _080A12A8
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _080A127E
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080A127E:
	adds r0, r6, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #3
	bne _080A133A
	ldrb r1, [r4]
	mov r0, sb
	ands r0, r1
	ldr r1, _080A12A0 @ =0xFFF80000
	cmp r0, #0
	beq _080A1298
	movs r1, #0x80
	lsls r1, r1, #0xc
_080A1298:
	ldr r2, _080A12A4 @ =0xFFEB0000
	str r5, [sp]
	b _080A12F8
	.align 2, 0
_080A12A0: .4byte 0xFFF80000
_080A12A4: .4byte 0xFFEB0000
_080A12A8:
	cmp r1, #3
	bne _080A133A
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080A12C6
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080A12C6:
	adds r0, r6, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A133A
	adds r0, r6, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #3
	beq _080A12E2
	cmp r0, #9
	beq _080A12E2
	cmp r0, #0xf
	bne _080A133A
_080A12E2:
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	ldr r1, _080A1314 @ =0xFFF80000
	cmp r0, #0
	beq _080A12F2
	movs r1, #0x80
	lsls r1, r1, #0xc
_080A12F2:
	ldr r2, _080A1318 @ =0xFFEB0000
	movs r0, #0
	str r0, [sp]
_080A12F8:
	adds r0, r6, #0
	movs r3, #0
	bl sub_080A15CC
	adds r0, r6, #0
	movs r1, #6
	bl sub_0806D128
	cmp r0, #0
	bne _080A133A
	movs r0, #0x89
	bl PlaySong
	b _080A133A
	.align 2, 0
_080A1314: .4byte 0xFFF80000
_080A1318: .4byte 0xFFEB0000
_080A131C:
	ldrb r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4]
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A133A
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080A133A:
	ldr r0, _080A1354 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080A1358
	adds r0, r6, #0
	bl sub_0806DF20
	b _080A135E
	.align 2, 0
_080A1354: .4byte gEwramData
_080A1358:
	adds r0, r6, #0
	bl sub_0803F17C
_080A135E:
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, #0xc
	bne _080A13BE
	ldr r0, _080A1384 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080A13BE
	add r0, sp, #4
	adds r1, r6, #0
	adds r2, r7, #0
	bl sub_080429D0
	b _080A13BE
	.align 2, 0
_080A1384: .4byte gEwramData
_080A1388:
	adds r0, r6, #0
	bl EntityDelete
	b _080A13BE
_080A1390:
	ldrb r0, [r6, #0xb]
	cmp r0, #0
	bne _080A13A6
	adds r0, #1
	strb r0, [r6, #0xb]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_080A13A6:
	adds r0, r6, #0
	bl sub_0803F17C
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080A13BE
	adds r0, r6, #0
	bl EntityDelete
_080A13BE:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A13D0
sub_080A13D0: @ 0x080A13D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldr r7, [r5, #0x14]
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _080A13E0
	b _080A1540
_080A13E0:
	cmp r7, #0
	bne _080A13E6
	b _080A1532
_080A13E6:
	ldr r0, [r7]
	cmp r0, #0
	bne _080A13EE
	b _080A1532
_080A13EE:
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x5d
	beq _080A13FA
	b _080A1532
_080A13FA:
	adds r0, r7, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x20
	bne _080A141C
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x20
	orrs r1, r0
	strb r1, [r2]
	b _080A1438
_080A141C:
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
_080A1438:
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
	adds r0, r7, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r4, r5, #0
	adds r4, #0x42
	strh r0, [r4]
	adds r0, r7, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r2, r5, #0
	adds r2, #0x46
	strh r0, [r2]
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	adds r6, r3, #0
	cmp r0, #0
	beq _080A147E
	ldrh r0, [r4]
	ldrh r1, [r5, #0x10]
	subs r0, r0, r1
	b _080A1484
_080A147E:
	ldrh r0, [r5, #0x10]
	ldrh r1, [r4]
	adds r0, r0, r1
_080A1484:
	strh r0, [r4]
	ldrh r0, [r5, #0x12]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	adds r0, r5, #0
	bl sub_0803F17C
	ldrb r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080A14A6
	ldrh r1, [r5, #0x1e]
	ldrh r2, [r5, #0x1c]
	adds r0, r1, r2
	b _080A14AC
_080A14A6:
	ldrh r0, [r5, #0x1c]
	ldrh r1, [r5, #0x1e]
	subs r0, r0, r1
_080A14AC:
	strh r0, [r5, #0x1c]
	adds r2, r1, #0
	lsls r1, r2, #0x10
	ldr r0, _080A14F0 @ =0x07FF0000
	cmp r1, r0
	bhi _080A14BE
	adds r0, r2, #0
	adds r0, #0x18
	strh r0, [r5, #0x1e]
_080A14BE:
	ldrh r0, [r5, #0x1c]
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
	bl sub_0803E058
	adds r0, r7, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _080A14F4
	ldrb r1, [r6]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r6]
	b _080A1500
	.align 2, 0
_080A14F0: .4byte 0x07FF0000
_080A14F4:
	ldrb r0, [r6]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r6]
	movs r0, #0
	strh r0, [r5, #0x1e]
_080A1500:
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	bne _080A15C2
	movs r1, #0
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xb]
	movs r0, #0x40
	strb r0, [r5, #0xd]
	ldr r0, [r7, #0x48]
	str r0, [r5, #0x48]
	ldr r0, _080A153C @ =0xFFFF4000
	str r0, [r5, #0x4c]
	str r1, [r5, #0x50]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r5, #0x54]
	ldrb r1, [r6]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080A15C2
	lsls r0, r1, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080A1532:
	adds r0, r5, #0
	bl EntityDelete
	b _080A15C2
	.align 2, 0
_080A153C: .4byte 0xFFFF4000
_080A1540:
	adds r0, r5, #0
	movs r1, #0x20
	bl sub_0806D490
	movs r1, #0xa0
	lsls r1, r1, #0xb
	adds r0, r5, #0
	bl sub_0806D3D8
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _080A156A
	ldrh r0, [r5, #0x1e]
	ldrh r1, [r5, #0x1c]
	adds r0, r0, r1
	b _080A1570
_080A156A:
	ldrh r0, [r5, #0x1c]
	ldrh r1, [r5, #0x1e]
	subs r0, r0, r1
_080A1570:
	strh r0, [r5, #0x1c]
	ldrh r0, [r5, #0x1c]
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
	bl sub_0803E058
	ldrb r0, [r5, #0xd]
	bl sub_0806D518
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #5
	ldrb r2, [r6]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r6]
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080A15C2
	ldrb r0, [r6]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r5, #0
	bl EntityDelete
_080A15C2:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A15CC
sub_080A15CC: @ 0x080A15CC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	adds r7, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r0, _080A16B4 @ =0x0404FEFE
	str r0, [sp, #8]
	ldr r2, _080A16B8 @ =sub_080A1740
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	bne _080A15F4
	b _080A172C
_080A15F4:
	ldr r0, _080A16BC @ =0x081CC0AC
	bl sub_0803AFB8
	adds r2, r0, #0
	cmp r2, #0
	blt _080A16E0
	ldr r1, _080A16C0 @ =0x08229104
	adds r4, r6, #0
	adds r4, #0x2c
	ldrb r3, [r4]
	adds r0, r5, #0
	bl sub_0803B924
	adds r0, r5, #0
	movs r1, #0xe
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	ldr r0, _080A16C4 @ =sub_0803B9D0
	str r0, [r5, #4]
	ldr r3, _080A16C8 @ =sub_080A1B3C
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0
	bl sub_0804277C
	adds r0, r5, #0
	add r1, sp, #8
	bl sub_080428B4
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r3, r5, #0
	adds r3, #0x59
	ldrb r0, [r3]
	orrs r0, r1
	strb r0, [r3]
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldrb r1, [r4]
	adds r0, r5, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x36
	strb r0, [r1]
	str r6, [r5, #0x14]
	ldr r0, [r6, #0x40]
	adds r0, r0, r7
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	add r0, r8
	str r0, [r5, #0x44]
	mov r0, sb
	str r0, [r5, #0x48]
	ldr r0, [sp, #0x28]
	str r0, [r5, #0x4c]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	strb r0, [r5, #0x19]
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x3c
	strb r1, [r0]
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	adds r6, r3, #0
	cmp r0, #0
	beq _080A16CC
	movs r0, #0
	b _080A16D0
	.align 2, 0
_080A16B4: .4byte 0x0404FEFE
_080A16B8: .4byte sub_080A1740
_080A16BC: .4byte 0x081CC0AC
_080A16C0: .4byte 0x08229104
_080A16C4: .4byte sub_0803B9D0
_080A16C8: .4byte sub_080A1B3C
_080A16CC:
	movs r0, #0x80
	lsls r0, r0, #8
_080A16D0:
	strh r0, [r5, #0x1e]
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _080A16E8
_080A16E0:
	adds r0, r5, #0
	bl EntityDelete
	b _080A172C
_080A16E8:
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
	ldrb r0, [r6]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r6]
	ldrh r0, [r5, #0x1e]
	ldr r1, _080A173C @ =0xFFFF8000
	adds r0, r0, r1
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
	bl sub_0803E058
	adds r0, r5, #0
	bl sub_080A18C0
_080A172C:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A173C: .4byte 0xFFFF8000

	thumb_func_start sub_080A1740
sub_080A1740: @ 0x080A1740
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldr r0, _080A1760 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080A1764 @ =0x0000A094
	adds r7, r0, r1
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080A1842
	cmp r0, #1
	bgt _080A1768
	cmp r0, #0
	beq _080A176E
	b _080A183C
	.align 2, 0
_080A1760: .4byte gEwramData
_080A1764: .4byte 0x0000A094
_080A1768:
	cmp r0, #0xa
	beq _080A184C
	b _080A183C
_080A176E:
	ldrh r1, [r5, #0x1e]
	adds r2, r1, #0
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r2, r0
	bls _080A1784
	ldr r2, _080A1780 @ =0xFFFFFF00
	b _080A178E
	.align 2, 0
_080A1780: .4byte 0xFFFFFF00
_080A1784:
	ldr r0, _080A17E0 @ =0x00003FFF
	cmp r2, r0
	bhi _080A1792
	movs r2, #0x80
	lsls r2, r2, #1
_080A178E:
	adds r0, r1, r2
	strh r0, [r5, #0x1e]
_080A1792:
	ldrh r1, [r5, #0x1e]
	movs r2, #0xc0
	lsls r2, r2, #0xa
	adds r0, r5, #0
	bl sub_0806D2F8
	adds r0, r5, #0
	bl sub_0806D3AC
	ldrh r0, [r5, #0x1e]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	movs r4, #0x80
	lsls r4, r4, #0xc
	adds r1, r4, #0
	bl sub_0803E86C
	adds r6, r0, #0
	ldrh r0, [r5, #0x1e]
	bl sub_080009E4
	adds r1, r4, #0
	bl sub_0803E86C
	adds r2, r0, #0
	ldr r0, [r5, #0x40]
	adds r0, r6, r0
	ldr r1, [r7, #4]
	adds r0, r0, r1
	cmp r0, #0
	bge _080A17E4
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080A17E6
	.align 2, 0
_080A17E0: .4byte 0x00003FFF
_080A17E4:
	asrs r0, r0, #0x10
_080A17E6:
	adds r6, r0, #0
	ldr r0, [r5, #0x44]
	adds r0, r2, r0
	ldr r1, [r7, #8]
	adds r0, r0, r1
	cmp r0, #0
	bge _080A17FC
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r1, r0, #0
	b _080A17FE
_080A17FC:
	asrs r1, r0, #0x10
_080A17FE:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #1
	beq _080A1816
	movs r0, #0xa
	strb r0, [r5, #0xa]
	movs r0, #0x78
	strb r0, [r5, #0xd]
_080A1816:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf0
	bls _080A182E
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	b _080A1878
_080A182E:
	adds r0, r5, #0
	bl sub_0803F17C
	add r0, sp, #8
	adds r1, r5, #0
	bl sub_080421AC
_080A183C:
	adds r4, r5, #0
	adds r4, #0x58
	b _080A1894
_080A1842:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	b _080A1878
_080A184C:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xd]
	bl sub_0806D518
	adds r2, r5, #0
	adds r2, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #5
	ldrb r1, [r2]
	movs r3, #0x21
	rsbs r3, r3, #0
	ands r3, r1
	orrs r3, r0
	strb r3, [r2]
	ldrb r0, [r5, #0xd]
	adds r4, r2, #0
	cmp r0, #0
	bne _080A1886
	lsls r0, r3, #0x1b
_080A1878:
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r5, #0
	bl EntityDelete
	b _080A18B4
_080A1886:
	adds r0, r5, #0
	bl sub_0803F17C
	add r0, sp, #8
	adds r1, r5, #0
	bl sub_080421AC
_080A1894:
	ldrh r0, [r5, #0x1e]
	ldr r2, _080A18BC @ =0xFFFF8000
	adds r0, r0, r2
	movs r2, #0x80
	lsls r2, r2, #9
	ldrb r1, [r4]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	lsrs r4, r1, #7
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
_080A18B4:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A18BC: .4byte 0xFFFF8000

	thumb_func_start sub_080A18C0
sub_080A18C0: @ 0x080A18C0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	movs r5, #3
	rsbs r5, r5, #0
	ldr r0, _080A18F4 @ =0x0806FAFD
	str r0, [sp]
	ldr r2, _080A18F8 @ =sub_080A19C4
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r6, r0, #0
	cmp r6, #0
	beq _080A19AC
	ldr r0, _080A18FC @ =0x081CC0AC
	bl sub_0803AFB8
	adds r2, r0, #0
	cmp r2, #0
	bge _080A1900
	adds r0, r6, #0
	bl EntityDelete
	b _080A19AC
	.align 2, 0
_080A18F4: .4byte 0x0806FAFD
_080A18F8: .4byte sub_080A19C4
_080A18FC: .4byte 0x081CC0AC
_080A1900:
	ldr r1, _080A19B4 @ =0x08229104
	adds r4, r7, #0
	adds r4, #0x2c
	ldrb r3, [r4]
	adds r0, r6, #0
	bl sub_0803B924
	adds r0, r6, #0
	movs r1, #0xf
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r7, #0
	bl sub_0803F17C
	ldr r0, _080A19B8 @ =sub_0803B9D0
	str r0, [r6, #4]
	ldr r2, _080A19BC @ =sub_080A1B50
	ldr r3, _080A19C0 @ =sub_080A1B80
	adds r0, r6, #0
	movs r1, #0xa
	bl sub_0804277C
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
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r1, r6, #0
	adds r1, #0x59
	ldrb r0, [r1]
	ands r5, r0
	strb r5, [r1]
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, #3
	strb r0, [r1]
	ldrb r1, [r4]
	adds r0, r6, #0
	adds r0, #0x2c
	strb r1, [r0]
	str r7, [r6, #0x14]
	adds r0, r7, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x3c
	strb r1, [r0]
	ldrh r0, [r7, #0x1e]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	movs r5, #0x80
	lsls r5, r5, #0xc
	adds r1, r5, #0
	bl sub_0803E86C
	adds r4, r0, #0
	ldrh r0, [r7, #0x1e]
	bl sub_080009E4
	adds r1, r5, #0
	bl sub_0803E86C
	ldr r1, [r7, #0x40]
	adds r4, r4, r1
	str r4, [r6, #0x40]
	ldr r1, [r7, #0x44]
	adds r0, r0, r1
	str r0, [r6, #0x44]
_080A19AC:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A19B4: .4byte 0x08229104
_080A19B8: .4byte sub_0803B9D0
_080A19BC: .4byte sub_080A1B50
_080A19C0: .4byte sub_080A1B80

	thumb_func_start sub_080A19C4
sub_080A19C4: @ 0x080A19C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r6, [r7, #0x14]
	cmp r6, #0
	beq _080A1A40
	ldr r0, [r6]
	cmp r0, #0
	beq _080A1A40
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x5d
	bne _080A1A40
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	bne _080A1A40
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r7, #0
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
	bl sub_0803F17C
	mov r0, sp
	adds r1, r7, #0
	bl sub_080421AC
	ldrh r0, [r6, #0x1e]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	movs r5, #0x80
	lsls r5, r5, #0xc
	adds r1, r5, #0
	bl sub_0803E86C
	adds r4, r0, #0
	ldrh r0, [r6, #0x1e]
	bl sub_080009E4
	adds r1, r5, #0
	bl sub_0803E86C
	ldr r1, [r6, #0x40]
	adds r4, r4, r1
	str r4, [r7, #0x40]
	ldr r1, [r6, #0x44]
	adds r0, r0, r1
	str r0, [r7, #0x44]
	b _080A1A46
_080A1A40:
	adds r0, r7, #0
	bl EntityDelete
_080A1A46:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A1A50
sub_080A1A50: @ 0x080A1A50
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	mov r8, r1
	mov sb, r2
	movs r6, #0
_080A1A60:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _080A1B1C @ =sub_080A1B98
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _080A1B0A
	mov r0, r8
	str r0, [r4, #0x40]
	mov r1, sb
	str r1, [r4, #0x44]
	bl RandomNumberGenerator
	ldr r1, _080A1B20 @ =0x0001FFFF
	ands r1, r0
	ldr r0, [r5, #0x48]
	adds r0, r0, r1
	ldr r7, _080A1B24 @ =0xFFFF0000
	adds r0, r0, r7
	str r0, [r4, #0x48]
	bl RandomNumberGenerator
	ldr r1, _080A1B28 @ =0x0000FFFF
	ands r1, r0
	rsbs r1, r1, #0
	ldr r0, _080A1B2C @ =0xFFFFC000
	adds r1, r1, r0
	str r1, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #0x54]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldr r0, _080A1B30 @ =0x081CC0AC
	bl sub_0803AFB8
	adds r2, r0, #0
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	ldr r1, _080A1B34 @ =0x08229104
	bl sub_0803B924
	adds r1, r6, #5
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
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
	ldr r0, _080A1B38 @ =sub_0803B9D0
	str r0, [r4, #4]
	bl RandomNumberGenerator
	movs r1, #3
	ands r1, r0
	adds r1, #0x28
	strb r1, [r4, #0xd]
_080A1B0A:
	adds r6, #1
	cmp r6, #6
	ble _080A1A60
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A1B1C: .4byte sub_080A1B98
_080A1B20: .4byte 0x0001FFFF
_080A1B24: .4byte 0xFFFF0000
_080A1B28: .4byte 0x0000FFFF
_080A1B2C: .4byte 0xFFFFC000
_080A1B30: .4byte 0x081CC0AC
_080A1B34: .4byte 0x08229104
_080A1B38: .4byte sub_0803B9D0

	thumb_func_start sub_080A1B3C
sub_080A1B3C: @ 0x080A1B3C
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r2, #4]
	bl sub_08021530
	movs r0, #1
	strb r0, [r4, #0xa]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080A1B50
sub_080A1B50: @ 0x080A1B50
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

	thumb_func_start sub_080A1B80
sub_080A1B80: @ 0x080A1B80
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r2, #4]
	bl sub_08021530
	ldr r1, [r4, #0x14]
	movs r0, #1
	strb r0, [r1, #0xa]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A1B98
sub_080A1B98: @ 0x080A1B98
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x20
	bl sub_0806D490
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D3D8
	ldrb r0, [r4, #0xd]
	cmp r0, #0x28
	bhi _080A1BCC
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
_080A1BCC:
	adds r0, r4, #0
	bl sub_0803F17C
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080A1BE4
	adds r0, r4, #0
	bl EntityDelete
_080A1BE4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A1BEC
sub_080A1BEC: @ 0x080A1BEC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _080A1C38 @ =0x081CC0AC
	movs r1, #0
	bl sub_0803B800
	adds r6, r0, #0
	cmp r6, #0
	blt _080A1C48
	ldr r4, _080A1C3C @ =0x0820AF98
	adds r0, r4, #0
	movs r1, #0
	bl sub_08068264
	adds r1, r5, #0
	adds r1, #0x20
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08068264
	adds r1, r5, #0
	adds r1, #0x21
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _080A1C40 @ =0x08229104
	ldrb r3, [r2]
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_0803B924
	ldr r0, _080A1C44 @ =sub_0803B9D0
	str r0, [r5, #4]
	movs r0, #1
	b _080A1C4A
	.align 2, 0
_080A1C38: .4byte 0x081CC0AC
_080A1C3C: .4byte 0x0820AF98
_080A1C40: .4byte 0x08229104
_080A1C44: .4byte sub_0803B9D0
_080A1C48:
	movs r0, #0
_080A1C4A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080A1C50
sub_080A1C50: @ 0x080A1C50
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

	thumb_func_start sub_080A1C80
sub_080A1C80: @ 0x080A1C80
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
	bl sub_080A0D7C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080A1CC8
sub_080A1CC8: @ 0x080A1CC8
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

	thumb_func_start sub_080A1CF8
sub_080A1CF8: @ 0x080A1CF8
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
	bl sub_080A0D7C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyGladiatorUpdate
EnemyGladiatorUpdate: @ 0x080A1D64
	push {r4, lr}
	sub sp, #0x34
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080A1D9A
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
	beq _080A1D8E
	adds r0, r4, #0
	bl sub_08021924
_080A1D8E:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080A1D9A
	adds r0, r4, #0
	bl sub_0806AE54
_080A1D9A:
	adds r0, r4, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _080A1DB4
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080A1DB4
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
	b _080A1DF6
_080A1DB4:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080A1DD2
	cmp r0, #1
	bgt _080A1DC4
	cmp r0, #0
	beq _080A1DCA
	b _080A1DE2
_080A1DC4:
	cmp r0, #2
	beq _080A1DDA
	b _080A1DE2
_080A1DCA:
	adds r0, r4, #0
	bl sub_080A0A8C
	b _080A1DE2
_080A1DD2:
	adds r0, r4, #0
	bl sub_080A1E00
	b _080A1DE2
_080A1DDA:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080A1DF6
_080A1DE2:
	movs r0, #0x14
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _080A1DF0
	adds r0, r4, #0
	bl sub_0806DF20
_080A1DF0:
	adds r0, r4, #0
	bl sub_0806E314
_080A1DF6:
	add sp, #0x34
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A1E00
sub_080A1E00: @ 0x080A1E00
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080A1E32
	adds r0, r4, #0
	movs r1, #0x18
	bl sub_0806D490
	movs r1, #0xa0
	lsls r1, r1, #0xb
	adds r0, r4, #0
	bl sub_0806D3D8
	adds r0, r4, #0
	bl sub_0806AEAC
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080A1E32
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x6b
	bl PlaySong
_080A1E32:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start EnemyChaosCreate
EnemyChaosCreate: @ 0x080A1E38
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080A1E56
	adds r0, r5, #0
	bl sub_080A4408
	cmp r0, #0
	bne _080A1E54
	b _080A1FD8
_080A1E54:
	b _080A1F2A
_080A1E56:
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080A1E7E
	ldr r0, _080A1EB4 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _080A1EB8 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080A1E7E
	ldr r1, _080A1EBC @ =0x0000037E
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080A1F2A
_080A1E7E:
	movs r0, #0xa
	bl sub_0806C2CC
	adds r6, r0, #0
	str r6, [r5, #0x20]
	cmp r6, #0
	beq _080A1F2A
	adds r0, r5, #0
	bl sub_080A42D4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080A1F2A
	ldr r0, _080A1EB4 @ =gEwramData
	mov r8, r0
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0
	beq _080A1EC0
	movs r0, #4
	strb r0, [r5, #0xa]
	b _080A1FD8
	.align 2, 0
_080A1EB4: .4byte gEwramData
_080A1EB8: .4byte 0x000004CC
_080A1EBC: .4byte 0x0000037E
_080A1EC0:
	adds r0, r5, #0
	bl sub_080A4238
	cmp r0, #0
	beq _080A1F2A
	movs r4, #0x80
	lsls r4, r4, #7
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #2
	bl sub_080A27F8
	cmp r0, #0
	beq _080A1F2A
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	movs r3, #3
	bl sub_080A25A4
	cmp r0, #0
	beq _080A1F2A
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_080A2A4C
	str r0, [r6, #0x1c]
	cmp r0, #0
	beq _080A1F2A
	movs r1, #0x85
	lsls r1, r1, #8
	adds r0, r5, #0
	movs r2, #0
	movs r3, #1
	bl sub_080A2A4C
	str r0, [r6, #0x20]
	cmp r0, #0
	beq _080A1F2A
	movs r1, #0xfb
	lsls r1, r1, #8
	adds r0, r5, #0
	movs r2, #0
	movs r3, #2
	bl sub_080A2A4C
	str r0, [r6, #0x24]
	cmp r0, #0
	bne _080A1F32
_080A1F2A:
	adds r0, r5, #0
	bl EntityDelete
	b _080A1FD8
_080A1F32:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_0806B04C
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	strb r7, [r5, #0xa]
	adds r0, r5, #0
	bl sub_08034498
	mov r1, r8
	ldr r2, [r1]
	ldr r0, _080A1FE4 @ =0x0000042C
	adds r3, r2, r0
	ldr r0, [r3]
	movs r1, #2
	orrs r0, r1
	movs r1, #1
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r3]
	ldr r1, _080A1FE8 @ =0x0000A074
	adds r2, r2, r1
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	strb r7, [r5, #0xd]
	bl RandomNumberGenerator
	movs r1, #0x3f
	ands r1, r0
	strb r1, [r5, #0x16]
	bl RandomNumberGenerator
	movs r4, #0x7f
	ands r0, r4
	adds r0, #0x3c
	strb r0, [r5, #0x19]
	bl RandomNumberGenerator
	ands r0, r4
	adds r0, #0x78
	strb r0, [r5, #0x1a]
	bl RandomNumberGenerator
	ands r0, r4
	adds r0, #0x3c
	strb r0, [r5, #0x1b]
	movs r0, #0x1f
	bl sub_08013CF0
	movs r0, #0xc0
	str r0, [r6, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r6, #0x18]
_080A1FD8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A1FE4: .4byte 0x0000042C
_080A1FE8: .4byte 0x0000A074

	thumb_func_start sub_080A1FEC
sub_080A1FEC: @ 0x080A1FEC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x20]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080A20CA
	ldr r0, [r1, #0xc]
	adds r0, #0x80
	str r0, [r1, #0xc]
	ldr r0, [r1, #0x10]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1, #0x10]
	ldrb r1, [r4, #0x18]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080A2042
	ldrb r1, [r4, #0x15]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080A2042
	ldrb r0, [r4, #0x19]
	adds r5, r0, #0
	cmp r5, #0
	beq _080A202C
	subs r0, #1
	strb r0, [r4, #0x19]
	b _080A2042
_080A202C:
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	adds r1, #0x3c
	strb r1, [r4, #0x19]
	ldrb r0, [r4, #0x15]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x15]
	strb r5, [r4, #0x17]
_080A2042:
	ldrb r1, [r4, #0x18]
	movs r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080A207C
	ldrb r1, [r4, #0x15]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080A207C
	ldrb r0, [r4, #0x1a]
	adds r5, r0, #0
	cmp r5, #0
	beq _080A2066
	subs r0, #1
	strb r0, [r4, #0x1a]
	b _080A207C
_080A2066:
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	adds r1, #0x78
	strb r1, [r4, #0x1a]
	ldrb r0, [r4, #0x15]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0x15]
	strb r5, [r4, #0x17]
_080A207C:
	ldrb r1, [r4, #0x18]
	movs r2, #4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080A20B6
	ldrb r1, [r4, #0x15]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080A20B6
	ldrb r0, [r4, #0x1b]
	adds r5, r0, #0
	cmp r5, #0
	beq _080A20A0
	subs r0, #1
	strb r0, [r4, #0x1b]
	b _080A20B6
_080A20A0:
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	adds r1, #0x3c
	strb r1, [r4, #0x1b]
	ldrb r0, [r4, #0x15]
	movs r1, #4
	orrs r0, r1
	strb r0, [r4, #0x15]
	strb r5, [r4, #0x17]
_080A20B6:
	ldrb r1, [r4, #0x18]
	movs r0, #7
	ands r0, r1
	cmp r0, #7
	bne _080A20CA
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xb]
	strb r1, [r4, #0xc]
_080A20CA:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A20D0
sub_080A20D0: @ 0x080A20D0
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r4, [r6, #0x20]
	movs r0, #2
	movs r1, #0
	bl SetPlayerInput
	ldrb r7, [r6, #0xb]
	cmp r7, #1
	beq _080A214C
	cmp r7, #1
	bgt _080A20F0
	cmp r7, #0
	beq _080A20F6
	b _080A2286
_080A20F0:
	cmp r7, #2
	beq _080A217A
	b _080A2286
_080A20F6:
	movs r0, #1
	strb r0, [r6, #0xb]
	movs r5, #0x80
	lsls r5, r5, #9
	str r5, [sp]
	movs r4, #0x78
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
	strb r4, [r6, #0xd]
	strb r7, [r6, #0xc]
	movs r0, #0x32
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0801D028
	ldr r0, _080A2144 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _080A2148 @ =0x0000A074
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	b _080A2286
	.align 2, 0
_080A2144: .4byte gEwramData
_080A2148: .4byte 0x0000A074
_080A214C:
	movs r0, #0x32
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0801D028
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _080A2168
	b _080A2286
_080A2168:
	bl sub_0803CED4
	bl sub_0803D270
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	strb r4, [r6, #0xd]
	b _080A2286
_080A217A:
	ldrb r1, [r6, #0xd]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080A2194
	movs r3, #0x80
	lsls r3, r3, #8
	movs r0, #0x52
	movs r1, #0
	movs r2, #0
	bl sub_0801D028
	b _080A21A0
_080A2194:
	ldr r3, _080A21EC @ =0xFFFF8000
	movs r0, #0x52
	movs r1, #0
	movs r2, #0
	bl sub_0801D028
_080A21A0:
	ldrb r0, [r6, #0xd]
	cmp r0, #0x51
	bne _080A21BE
	adds r0, r6, #0
	movs r1, #0
	bl sub_080A3D40
	adds r0, r6, #0
	movs r1, #1
	bl sub_080A3D40
	adds r0, r6, #0
	movs r1, #2
	bl sub_080A3D40
_080A21BE:
	ldrb r1, [r6, #0xd]
	adds r0, r1, #0
	subs r0, #0x29
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x6c
	bhi _080A224C
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080A224C
	lsrs r0, r1, #3
	movs r1, #3
	bl __modsi3
	adds r3, r0, #0
	cmp r3, #1
	beq _080A21FA
	cmp r3, #1
	bgt _080A21F0
	cmp r3, #0
	beq _080A21F6
	b _080A224C
	.align 2, 0
_080A21EC: .4byte 0xFFFF8000
_080A21F0:
	cmp r3, #2
	beq _080A2228
	b _080A224C
_080A21F6:
	ldr r0, [r4, #0x1c]
	b _080A21FC
_080A21FA:
	ldr r0, [r4, #0x20]
_080A21FC:
	ldr r1, _080A2220 @ =gEwramData
	ldr r1, [r1]
	ldr r2, _080A2224 @ =0x00013110
	adds r1, r1, r2
	ldr r2, [r1]
	adds r1, r2, #0
	adds r1, #0x42
	movs r4, #0
	ldrsh r1, [r1, r4]
	adds r2, #0x46
	movs r4, #0
	ldrsh r2, [r2, r4]
	subs r2, #0x10
	str r3, [sp]
	movs r3, #0
	bl sub_08044AA4
	b _080A224C
	.align 2, 0
_080A2220: .4byte gEwramData
_080A2224: .4byte 0x00013110
_080A2228:
	ldr r0, [r4, #0x24]
	ldr r1, _080A2290 @ =gEwramData
	ldr r1, [r1]
	ldr r2, _080A2294 @ =0x00013110
	adds r1, r1, r2
	ldr r2, [r1]
	adds r1, r2, #0
	adds r1, #0x42
	movs r4, #0
	ldrsh r1, [r1, r4]
	adds r2, #0x46
	movs r4, #0
	ldrsh r2, [r2, r4]
	subs r2, #0x10
	str r3, [sp]
	movs r3, #0
	bl sub_08044AA4
_080A224C:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf9
	bls _080A2286
	ldr r0, _080A2290 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _080A2298 @ =0x0000042C
	adds r3, r2, r0
	ldr r0, [r3]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3]
	ldr r4, _080A229C @ =0x0000A074
	adds r2, r2, r4
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r1, #0
	movs r0, #1
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xb]
	strb r1, [r6, #0xc]
	bl sub_08022184
_080A2286:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A2290: .4byte gEwramData
_080A2294: .4byte 0x00013110
_080A2298: .4byte 0x0000042C
_080A229C: .4byte 0x0000A074

	thumb_func_start sub_080A22A0
sub_080A22A0: @ 0x080A22A0
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r7, [r5, #0x20]
	movs r0, #2
	movs r1, #0
	bl SetPlayerInput
	ldrb r4, [r5, #0xb]
	cmp r4, #1
	beq _080A2310
	cmp r4, #1
	bgt _080A22C0
	cmp r4, #0
	beq _080A22C6
	b _080A2424
_080A22C0:
	cmp r4, #2
	beq _080A2338
	b _080A2424
_080A22C6:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	bl sub_080D7250
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0x78
	strb r0, [r5, #0xd]
	movs r0, #0x80
	str r0, [r5, #0x48]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r5, #0x4c]
	str r4, [r5, #0x50]
	ldr r0, _080A2304 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _080A2308 @ =0x0000042C
	adds r3, r2, r0
	ldr r0, [r3]
	movs r1, #1
	orrs r0, r1
	str r0, [r3]
	ldr r1, _080A230C @ =0x0000A074
	adds r2, r2, r1
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _080A2424
	.align 2, 0
_080A2304: .4byte gEwramData
_080A2308: .4byte 0x0000042C
_080A230C: .4byte 0x0000A074
_080A2310:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	movs r1, #0
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080A2320
	b _080A2424
_080A2320:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xc]
	str r4, [r5, #0x50]
	strb r1, [r5, #0xd]
	ldr r0, _080A2334 @ =0x00000149
	bl PlaySong
	b _080A2424
	.align 2, 0
_080A2334: .4byte 0x00000149
_080A2338:
	ldr r1, [r5, #0x48]
	ldr r0, _080A237C @ =0x000007FF
	cmp r1, r0
	bgt _080A2344
	adds r0, r1, #4
	str r0, [r5, #0x48]
_080A2344:
	ldr r1, [r5, #0x4c]
	ldr r0, _080A2380 @ =0x000003FF
	cmp r1, r0
	bgt _080A2352
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r5, #0x4c]
_080A2352:
	ldr r0, [r5, #0x4c]
	adds r0, #0x20
	str r0, [r5, #0x4c]
	ldr r0, [r7, #0x18]
	cmp r0, #0
	ble _080A236C
	ldr r1, _080A2384 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r7, #0x18]
	cmp r0, #0
	bge _080A236C
	movs r0, #0
	str r0, [r7, #0x18]
_080A236C:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #0
	cmp r1, #0x3b
	bhi _080A2388
	adds r0, #1
	strb r0, [r5, #0xd]
	b _080A23A0
	.align 2, 0
_080A237C: .4byte 0x000007FF
_080A2380: .4byte 0x000003FF
_080A2384: .4byte 0xFFFFF800
_080A2388:
	cmp r1, #0x59
	bhi _080A2394
	adds r0, #1
	strb r0, [r5, #0xd]
	movs r0, #2
	b _080A239E
_080A2394:
	cmp r1, #0x77
	bhi _080A23A0
	adds r0, #1
	strb r0, [r5, #0xd]
	movs r0, #3
_080A239E:
	str r0, [r5, #0x50]
_080A23A0:
	ldr r1, [r7, #0x14]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _080A23E4
	ldrb r6, [r5, #0xc]
	cmp r6, #0
	bne _080A23E4
	movs r4, #0x80
	lsls r4, r4, #9
	str r6, [sp]
	movs r0, #0xc0
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	adds r3, r4, #0
	bl sub_0803D18C
	str r6, [sp]
	movs r0, #0xd0
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	adds r3, r4, #0
	bl sub_0803CDF0
	ldr r0, _080A2444 @ =0x00001010
	bl PlaySong
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
_080A23E4:
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	bne _080A2424
	bl sub_0803D06C
	cmp r0, #0
	bne _080A2424
	bl sub_0803D270
	bl sub_0803CED4
	ldr r0, _080A2448 @ =0x08522BDC
	movs r1, #0xa0
	str r1, [sp]
	movs r1, #0
	movs r2, #0
	movs r3, #0x50
	bl sub_08011F44
	ldr r4, _080A244C @ =gEwramData
	ldr r0, [r4]
	adds r0, #0x60
	bl sub_08011AD0
	ldr r1, [r4]
	ldr r0, _080A2450 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #2
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1]
_080A2424:
	ldr r0, [r7, #0xc]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r7, #0xc]
	ldr r0, [r7, #0x10]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r7, #0x10]
	ldr r0, [r7, #0x14]
	ldr r1, [r5, #0x50]
	adds r0, r0, r1
	str r0, [r7, #0x14]
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A2444: .4byte 0x00001010
_080A2448: .4byte 0x08522BDC
_080A244C: .4byte gEwramData
_080A2450: .4byte 0x0000042C

	thumb_func_start sub_080A2454
sub_080A2454: @ 0x080A2454
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
	bgt _080A24CC
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
	movs r0, #0x3c
	strb r0, [r6, #0xd]
	movs r0, #3
	strb r0, [r6, #0xa]
	movs r0, #0
	strb r0, [r6, #0xb]
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x44]
	bl sub_080D6450
_080A24CC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A24D4
sub_080A24D4: @ 0x080A24D4
	push {r4, r5, lr}
	sub sp, #0x14
	adds r1, r0, #0
	ldr r2, [r1, #0x10]
	ldr r4, [r2, #0x20]
	cmp r2, #0
	beq _080A2598
	ldr r0, [r2]
	cmp r0, #0
	beq _080A2598
	adds r0, r2, #0
	adds r0, #0x36
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080A2598
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [sp]
	str r0, [sp, #4]
	mov r5, sp
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	ldr r1, [r4, #0x18]
	bl sub_0803E86C
	cmp r0, #0
	bge _080A2530
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	ldr r1, [r4, #0x18]
	bl sub_0803E86C
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080A2544
_080A2530:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	ldr r1, [r4, #0x18]
	bl sub_0803E86C
	asrs r0, r0, #0x10
_080A2544:
	adds r0, #0x78
	strh r0, [r5, #8]
	mov r5, sp
	ldr r0, [r4, #0x10]
	bl sub_080009E4
	ldr r1, [r4, #0x18]
	bl sub_0803E86C
	cmp r0, #0
	bge _080A256E
	ldr r0, [r4, #0x10]
	bl sub_080009E4
	ldr r1, [r4, #0x18]
	bl sub_0803E86C
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080A257C
_080A256E:
	ldr r0, [r4, #0x10]
	bl sub_080009E4
	ldr r1, [r4, #0x18]
	bl sub_0803E86C
	asrs r0, r0, #0x10
_080A257C:
	adds r0, #0x50
	strh r0, [r5, #0xa]
	mov r0, sp
	ldr r1, [r4, #0x14]
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	mov r1, sp
	ldr r0, [r4, #0xc]
	strh r0, [r1, #0x10]
	ldr r1, _080A25A0 @ =0x03002C78
	mov r0, sp
	movs r2, #1
	bl BgAffineSet
_080A2598:
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A25A0: .4byte 0x03002C78

	thumb_func_start sub_080A25A4
sub_080A25A4: @ 0x080A25A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	ldr r2, _080A2694 @ =sub_080A26BC
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	ldr r3, [r7, #0x20]
	cmp r5, #0
	beq _080A26AA
	adds r1, r5, #0
	adds r1, #0x42
	movs r4, #0
	ldr r0, _080A2698 @ =0x0000FF80
	strh r0, [r1]
	adds r1, #4
	strh r0, [r1]
	movs r0, #0x78
	strh r0, [r5, #0x1c]
	movs r0, #0x50
	strh r0, [r5, #0x1e]
	adds r1, #0x16
	movs r0, #0x1a
	strb r0, [r1]
	ldr r2, [r3]
	ldr r0, [r3, #4]
	adds r3, r5, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _080A269C @ =0x08225EF8
	ldrb r3, [r3]
	adds r0, r5, #0
	bl sub_0803B924
	adds r0, r5, #0
	adds r0, #0x65
	strb r4, [r0]
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	blt _080A26A4
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
	bl sub_0803E058
	mov r0, r8
	strh r0, [r5, #0x20]
	mov r0, sl
	strh r0, [r5, #0x18]
	mov r0, sb
	strh r0, [r5, #0x1a]
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x36
	strb r0, [r1]
	str r7, [r5, #0x10]
	ldrb r1, [r6]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r6]
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080A26A0 @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r0, r5, #0
	b _080A26AC
	.align 2, 0
_080A2694: .4byte sub_080A26BC
_080A2698: .4byte 0x0000FF80
_080A269C: .4byte 0x08225EF8
_080A26A0: .4byte sub_0803B9D0
_080A26A4:
	adds r0, r5, #0
	bl EntityDelete
_080A26AA:
	movs r0, #0
_080A26AC:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080A26BC
sub_080A26BC: @ 0x080A26BC
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r2, [r5, #0x10]
	ldr r0, _080A2724 @ =gEwramData
	ldr r4, [r0]
	cmp r2, #0
	bne _080A26CE
	b _080A27DA
_080A26CE:
	ldr r0, [r2]
	cmp r0, #0
	bne _080A26D6
	b _080A27DA
_080A26D6:
	adds r0, r2, #0
	adds r0, #0x36
	adds r1, r5, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080A27DA
	ldrb r3, [r5, #0xa]
	adds r0, r3, #0
	cmp r0, #0
	bne _080A272C
	ldr r1, _080A2728 @ =0x0000042C
	adds r0, r4, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080A270E
	ldrh r0, [r5, #0x14]
	adds r0, #0x70
	strh r0, [r5, #0x14]
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r1, [r5, #0x16]
	adds r0, r0, r1
	strh r0, [r5, #0x16]
_080A270E:
	ldrb r0, [r2, #0xa]
	adds r6, r5, #0
	adds r6, #0x58
	cmp r0, #3
	bne _080A277C
	adds r0, r3, #1
	strb r0, [r5, #0xa]
	movs r0, #0x3c
	strb r0, [r5, #0xd]
	b _080A277C
	.align 2, 0
_080A2724: .4byte gEwramData
_080A2728: .4byte 0x0000042C
_080A272C:
	adds r6, r5, #0
	adds r6, #0x58
	cmp r0, #1
	bne _080A277C
	ldrh r0, [r5, #0x14]
	adds r0, #0x70
	strh r0, [r5, #0x14]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r1, [r5, #0x16]
	adds r0, r0, r1
	strh r0, [r5, #0x16]
	ldrb r0, [r5, #0xd]
	bl sub_0806D518
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #5
	ldrb r2, [r6]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r6]
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080A277C
	ldrb r0, [r6]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r5, #0
	bl EntityDelete
	b _080A27EE
_080A277C:
	ldrh r0, [r5, #0x16]
	ldrh r1, [r5, #0x1a]
	adds r0, r0, r1
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r0, r2
	bl sub_080009E4
	movs r2, #0x20
	ldrsh r1, [r5, r2]
	adds r4, r0, #0
	muls r4, r1, r4
	ldrh r0, [r5, #0x16]
	ldrh r1, [r5, #0x1a]
	adds r0, r0, r1
	bl sub_080009E4
	movs r2, #0x20
	ldrsh r1, [r5, r2]
	muls r1, r0, r1
	movs r2, #0x1c
	ldrsh r0, [r5, r2]
	lsls r0, r0, #0x10
	adds r0, r0, r4
	str r0, [r5, #0x40]
	movs r2, #0x1e
	ldrsh r0, [r5, r2]
	lsls r0, r0, #0x10
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldrh r0, [r5, #0x14]
	ldrh r1, [r5, #0x18]
	adds r0, r0, r1
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
	bl sub_0803E058
	b _080A27EE
_080A27DA:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r5, #0
	bl EntityDelete
_080A27EE:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A27F8
sub_080A27F8: @ 0x080A27F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	ldr r2, _080A28E8 @ =sub_080A2910
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	ldr r3, [r7, #0x20]
	cmp r5, #0
	beq _080A28FE
	adds r1, r5, #0
	adds r1, #0x42
	ldr r0, _080A28EC @ =0x0000FF80
	strh r0, [r1]
	adds r1, #4
	strh r0, [r1]
	movs r0, #0x78
	strh r0, [r5, #0x1c]
	movs r0, #0x50
	strh r0, [r5, #0x1e]
	adds r1, #0x16
	movs r0, #0x1a
	strb r0, [r1]
	ldr r2, [r3]
	ldr r0, [r3, #4]
	adds r3, r5, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _080A28F0 @ =0x08225EF8
	ldrb r3, [r3]
	adds r0, r5, #0
	bl sub_0803B924
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #1
	strb r0, [r1]
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	blt _080A28F8
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
	bl sub_0803E058
	mov r0, r8
	strh r0, [r5, #0x20]
	mov r0, sl
	strh r0, [r5, #0x18]
	mov r0, sb
	strh r0, [r5, #0x1a]
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x36
	strb r0, [r1]
	str r7, [r5, #0x10]
	ldrb r1, [r6]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r6]
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080A28F4 @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r0, r5, #0
	b _080A2900
	.align 2, 0
_080A28E8: .4byte sub_080A2910
_080A28EC: .4byte 0x0000FF80
_080A28F0: .4byte 0x08225EF8
_080A28F4: .4byte sub_0803B9D0
_080A28F8:
	adds r0, r5, #0
	bl EntityDelete
_080A28FE:
	movs r0, #0
_080A2900:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080A2910
sub_080A2910: @ 0x080A2910
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r2, [r5, #0x10]
	ldr r0, _080A2978 @ =gEwramData
	ldr r4, [r0]
	cmp r2, #0
	bne _080A2922
	b _080A2A30
_080A2922:
	ldr r0, [r2]
	cmp r0, #0
	bne _080A292A
	b _080A2A30
_080A292A:
	adds r0, r2, #0
	adds r0, #0x36
	adds r1, r5, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080A2A30
	ldrb r3, [r5, #0xa]
	adds r0, r3, #0
	cmp r0, #0
	bne _080A2980
	ldr r1, _080A297C @ =0x0000042C
	adds r0, r4, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080A2962
	ldrh r0, [r5, #0x14]
	adds r0, #0x60
	strh r0, [r5, #0x14]
	movs r1, #0xe0
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r1, [r5, #0x16]
	adds r0, r0, r1
	strh r0, [r5, #0x16]
_080A2962:
	ldrb r0, [r2, #0xa]
	adds r6, r5, #0
	adds r6, #0x58
	cmp r0, #3
	bne _080A29D0
	adds r0, r3, #1
	strb r0, [r5, #0xa]
	movs r0, #0x3c
	strb r0, [r5, #0xd]
	b _080A29D0
	.align 2, 0
_080A2978: .4byte gEwramData
_080A297C: .4byte 0x0000042C
_080A2980:
	adds r6, r5, #0
	adds r6, #0x58
	cmp r0, #1
	bne _080A29D0
	ldrh r0, [r5, #0x14]
	adds r0, #0x60
	strh r0, [r5, #0x14]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r1, [r5, #0x16]
	adds r0, r0, r1
	strh r0, [r5, #0x16]
	ldrb r0, [r5, #0xd]
	bl sub_0806D518
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #5
	ldrb r2, [r6]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r6]
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080A29D0
	ldrb r0, [r6]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r5, #0
	bl EntityDelete
	b _080A2A44
_080A29D0:
	ldrh r0, [r5, #0x16]
	ldrh r1, [r5, #0x1a]
	adds r0, r0, r1
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r0, r2
	bl sub_080009E4
	movs r2, #0x20
	ldrsh r1, [r5, r2]
	adds r4, r0, #0
	muls r4, r1, r4
	ldrh r0, [r5, #0x16]
	ldrh r1, [r5, #0x1a]
	adds r0, r0, r1
	bl sub_080009E4
	movs r2, #0x20
	ldrsh r1, [r5, r2]
	muls r1, r0, r1
	movs r2, #0x1c
	ldrsh r0, [r5, r2]
	lsls r0, r0, #0x10
	adds r0, r0, r4
	str r0, [r5, #0x40]
	movs r2, #0x1e
	ldrsh r0, [r5, r2]
	lsls r0, r0, #0x10
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldrh r0, [r5, #0x14]
	ldrh r1, [r5, #0x18]
	adds r0, r0, r1
	rsbs r0, r0, #0
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
	bl sub_0803E058
	b _080A2A44
_080A2A30:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r5, #0
	bl EntityDelete
_080A2A44:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080A2A4C
sub_080A2A4C: @ 0x080A2A4C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r2, #0
	adds r7, r3, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	ldr r2, _080A2B30 @ =sub_080A2B90
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	ldr r0, _080A2B34 @ =0x350ADFFB
	str r0, [sp]
	ldr r3, [r6, #0x20]
	cmp r5, #0
	bne _080A2A7A
	b _080A2B80
_080A2A7A:
	adds r1, r5, #0
	adds r1, #0x42
	ldr r0, _080A2B38 @ =0x0000FF80
	strh r0, [r1]
	adds r1, #4
	strh r0, [r1]
	movs r0, #0x78
	strh r0, [r5, #0x1c]
	movs r0, #0x50
	mov sb, r0
	movs r0, #0x50
	strh r0, [r5, #0x1e]
	adds r1, #0x16
	movs r0, #0x12
	strb r0, [r1]
	ldr r2, [r3]
	ldr r0, [r3, #4]
	adds r3, r5, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _080A2B3C @ =0x08225EF8
	ldrb r3, [r3]
	adds r0, r5, #0
	bl sub_0803B924
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	mov r1, r8
	strh r1, [r5, #0x18]
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x36
	strb r0, [r1]
	str r6, [r5, #0x10]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x22
	strb r7, [r0]
	adds r0, #0x1a
	mov r1, sb
	strb r1, [r0]
	ldr r0, _080A2B40 @ =0x00000BB8
	strh r0, [r5, #0x34]
	ldr r3, _080A2B44 @ =sub_080A3104
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0
	bl sub_0804277C
	adds r0, r5, #0
	mov r1, sp
	bl sub_080428B4
	adds r0, r5, #0
	mov r1, sp
	bl sub_08042848
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080A2B48 @ =sub_0803B9D0
	str r0, [r5, #4]
	cmp r7, #1
	beq _080A2B5A
	cmp r7, #1
	bgt _080A2B4C
	cmp r7, #0
	beq _080A2B52
	b _080A2B74
	.align 2, 0
_080A2B30: .4byte sub_080A2B90
_080A2B34: .4byte 0x350ADFFB
_080A2B38: .4byte 0x0000FF80
_080A2B3C: .4byte 0x08225EF8
_080A2B40: .4byte 0x00000BB8
_080A2B44: .4byte sub_080A3104
_080A2B48: .4byte sub_0803B9D0
_080A2B4C:
	cmp r7, #2
	beq _080A2B68
	b _080A2B74
_080A2B52:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	b _080A2B60
_080A2B5A:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
_080A2B60:
	movs r3, #0xdc
	bl sub_080A40B4
	b _080A2B74
_080A2B68:
	adds r0, r5, #0
	movs r1, #2
	movs r2, #2
	movs r3, #0xdc
	bl sub_080A40B4
_080A2B74:
	adds r0, r5, #0
	movs r1, #0xdc
	bl sub_080A3F84
	adds r0, r5, #0
	b _080A2B82
_080A2B80:
	movs r0, #0
_080A2B82:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080A2B90
sub_080A2B90: @ 0x080A2B90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r5, r0, #0
	ldr r7, [r5, #0x10]
	ldr r0, _080A2C60 @ =gEwramData
	mov sl, r0
	ldr r0, [r0]
	ldr r1, _080A2C64 @ =0x0000A094
	adds r1, r0, r1
	str r1, [sp, #0x14]
	ldr r6, [r7, #0x20]
	cmp r7, #0
	bne _080A2BB4
	b _080A30EC
_080A2BB4:
	ldr r0, [r7]
	cmp r0, #0
	bne _080A2BBC
	b _080A30EC
_080A2BBC:
	adds r0, r7, #0
	adds r0, #0x36
	adds r1, r5, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _080A2BCE
	b _080A30EC
_080A2BCE:
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _080A2BD6
	b _080A2F34
_080A2BD6:
	ldr r0, [r6, #0x10]
	movs r4, #0x80
	lsls r4, r4, #7
	adds r0, r0, r4
	bl sub_080009E4
	asrs r0, r0, #0xe
	movs r2, #0x1c
	ldrsh r1, [r5, r2]
	adds r0, r0, r1
	adds r0, #2
	mov sb, r0
	ldr r0, [r6, #0x10]
	bl sub_080009E4
	asrs r0, r0, #0xe
	movs r3, #0x1e
	ldrsh r1, [r5, r3]
	adds r0, r0, r1
	subs r0, #0xc
	mov r8, r0
	ldrh r1, [r5, #0x18]
	ldr r0, [r6, #0xc]
	adds r0, r0, r1
	subs r4, r4, r0
	adds r0, r4, #0
	bl sub_080009E4
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	str r1, [r5, #0x40]
	ldrh r1, [r5, #0x18]
	ldr r0, [r6, #0xc]
	adds r0, r0, r1
	rsbs r0, r0, #0
	bl sub_080009E4
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	str r1, [r5, #0x44]
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r1]
	add r0, sb
	strh r0, [r1]
	adds r1, #4
	ldrh r0, [r1]
	add r0, r8
	strh r0, [r1]
	ldr r1, [r5, #0x40]
	ldr r4, [sp, #0x14]
	ldr r0, [r4, #4]
	adds r1, r1, r0
	mov sb, r1
	ldr r1, [r5, #0x44]
	ldr r0, [r4, #8]
	adds r1, r1, r0
	mov r8, r1
	ldrb r0, [r5, #0xb]
	cmp r0, #0x28
	bls _080A2C56
	b _080A2F1E
_080A2C56:
	lsls r0, r0, #2
	ldr r1, _080A2C68 @ =_080A2C6C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A2C60: .4byte gEwramData
_080A2C64: .4byte 0x0000A094
_080A2C68: .4byte _080A2C6C
_080A2C6C: @ jump table
	.4byte _080A2D10 @ case 0
	.4byte _080A2F1E @ case 1
	.4byte _080A2F1E @ case 2
	.4byte _080A2F1E @ case 3
	.4byte _080A2F1E @ case 4
	.4byte _080A2F1E @ case 5
	.4byte _080A2F1E @ case 6
	.4byte _080A2F1E @ case 7
	.4byte _080A2F1E @ case 8
	.4byte _080A2F1E @ case 9
	.4byte _080A2DA8 @ case 10
	.4byte _080A2F1E @ case 11
	.4byte _080A2F1E @ case 12
	.4byte _080A2F1E @ case 13
	.4byte _080A2F1E @ case 14
	.4byte _080A2F1E @ case 15
	.4byte _080A2F1E @ case 16
	.4byte _080A2F1E @ case 17
	.4byte _080A2F1E @ case 18
	.4byte _080A2F1E @ case 19
	.4byte _080A2E0E @ case 20
	.4byte _080A2F1E @ case 21
	.4byte _080A2F1E @ case 22
	.4byte _080A2F1E @ case 23
	.4byte _080A2F1E @ case 24
	.4byte _080A2F1E @ case 25
	.4byte _080A2F1E @ case 26
	.4byte _080A2F1E @ case 27
	.4byte _080A2F1E @ case 28
	.4byte _080A2F1E @ case 29
	.4byte _080A2E48 @ case 30
	.4byte _080A2F1E @ case 31
	.4byte _080A2F1E @ case 32
	.4byte _080A2F1E @ case 33
	.4byte _080A2F1E @ case 34
	.4byte _080A2F1E @ case 35
	.4byte _080A2F1E @ case 36
	.4byte _080A2F1E @ case 37
	.4byte _080A2F1E @ case 38
	.4byte _080A2F1E @ case 39
	.4byte _080A2EB4 @ case 40
_080A2D10:
	adds r0, r5, #0
	adds r0, #0x22
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A2D48
	ldrb r1, [r7, #0x15]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080A2D26
	b _080A2F1E
_080A2D26:
	ldr r0, _080A2D34 @ =0x007FFFFF
	cmp sb, r0
	ble _080A2D38
	movs r0, #0xa0
	lsls r0, r0, #0x10
	b _080A2D3C
	.align 2, 0
_080A2D34: .4byte 0x007FFFFF
_080A2D38:
	movs r0, #0xe0
	lsls r0, r0, #0xf
_080A2D3C:
	cmp r8, r0
	bgt _080A2D42
	b _080A2F1A
_080A2D42:
	movs r1, #0
	movs r0, #0xa
	b _080A2DA2
_080A2D48:
	cmp r0, #1
	bne _080A2D8C
	ldrb r1, [r7, #0x15]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080A2D58
	b _080A2F1E
_080A2D58:
	ldr r0, _080A2D6C @ =0x007FFFFF
	cmp sb, r0
	ble _080A2D78
	ldr r1, _080A2D70 @ =0xFF7FFFFF
	add r1, r8
	ldr r0, _080A2D74 @ =0x000FFFFE
	cmp r1, r0
	bls _080A2D6A
	b _080A2F1A
_080A2D6A:
	b _080A2D80
	.align 2, 0
_080A2D6C: .4byte 0x007FFFFF
_080A2D70: .4byte 0xFF7FFFFF
_080A2D74: .4byte 0x000FFFFE
_080A2D78:
	ldr r0, _080A2D88 @ =0x008FFFFF
	cmp r8, r0
	ble _080A2D80
	b _080A2F1A
_080A2D80:
	movs r1, #0
	movs r0, #0x1e
	b _080A2DA2
	.align 2, 0
_080A2D88: .4byte 0x008FFFFF
_080A2D8C:
	cmp r0, #2
	beq _080A2D92
	b _080A2F1E
_080A2D92:
	ldrb r1, [r7, #0x15]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080A2D9E
	b _080A2F1E
_080A2D9E:
	movs r1, #0
	movs r0, #0x14
_080A2DA2:
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xc]
	b _080A2F1E
_080A2DA8:
	ldrb r1, [r5, #0xc]
	cmp r1, #0
	beq _080A2DB4
	cmp r1, #1
	beq _080A2DF4
	b _080A2F1E
_080A2DB4:
	movs r0, #1
	strb r0, [r5, #0xc]
	ldr r2, _080A2DE8 @ =0xFFD00000
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0x14
	bl sub_080A32B0
	ldr r1, _080A2DEC @ =0xFFE00000
	ldr r4, _080A2DF0 @ =0xFFEC0000
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #0x32
	bl sub_080A32B0
	movs r1, #0x80
	lsls r1, r1, #0xe
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #0x50
	bl sub_080A32B0
	movs r0, #0x64
	strb r0, [r5, #0xd]
	b _080A2F1E
	.align 2, 0
_080A2DE8: .4byte 0xFFD00000
_080A2DEC: .4byte 0xFFE00000
_080A2DF0: .4byte 0xFFEC0000
_080A2DF4:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080A2E02
	b _080A2F1E
_080A2E02:
	movs r0, #0
	strb r0, [r5, #0xb]
	strb r1, [r7, #0x17]
	ldrb r1, [r7, #0x15]
	movs r0, #0xfe
	b _080A2EAE
_080A2E0E:
	ldrb r1, [r5, #0xc]
	cmp r1, #0
	beq _080A2E1A
	cmp r1, #1
	beq _080A2E2E
	b _080A2F1E
_080A2E1A:
	movs r0, #1
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_080A35A0
	movs r0, #0xfa
	strb r0, [r5, #0xd]
	b _080A2F1E
_080A2E2E:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080A2F1E
	movs r0, #0
	strb r0, [r5, #0xb]
	strb r1, [r7, #0x17]
	ldrb r1, [r7, #0x15]
	movs r0, #0xfb
	b _080A2EAE
_080A2E48:
	ldrb r4, [r5, #0xc]
	cmp r4, #0
	beq _080A2E54
	cmp r4, #1
	beq _080A2E84
	b _080A2F1E
_080A2E54:
	movs r0, #1
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_080A39DC
	movs r0, #0xfa
	strb r0, [r5, #0xd]
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1a
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x23
	strb r4, [r0]
	b _080A2F1E
_080A2E84:
	adds r0, r5, #0
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A2F1E
	movs r0, #0
	strb r0, [r5, #0xb]
	strb r4, [r7, #0x17]
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	subs r0, #0x21
	ands r0, r1
	strb r0, [r2]
	adds r2, #0x1a
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r7, #0x15]
	movs r0, #0xfd
_080A2EAE:
	ands r0, r1
	strb r0, [r7, #0x15]
	b _080A2F1E
_080A2EB4:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_0806D518
	cmp r0, #1
	bne _080A2EDE
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	adds r3, r2, #0
	b _080A2EFA
_080A2EDE:
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
_080A2EFA:
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	bne _080A2F1E
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	adds r0, #0x2c
	movs r2, #0xf
	ldrb r1, [r0]
	ands r1, r2
	lsls r1, r1, #3
	ldrb r2, [r3]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_080A2F1A:
	movs r0, #1
	strb r0, [r7, #0x17]
_080A2F1E:
	adds r0, r5, #0
	bl sub_0803F17C
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
	adds r0, r5, #0
	bl sub_0806AE54
	b _080A30F4
_080A2F34:
	cmp r0, #0xa
	beq _080A2F3A
	b _080A30F4
_080A2F3A:
	ldr r0, [r6, #0x10]
	movs r4, #0x80
	lsls r4, r4, #7
	adds r0, r0, r4
	bl sub_080009E4
	asrs r0, r0, #0xe
	movs r2, #0x1c
	ldrsh r1, [r5, r2]
	adds r0, r0, r1
	adds r0, #2
	mov sb, r0
	ldr r0, [r6, #0x10]
	bl sub_080009E4
	asrs r0, r0, #0xe
	movs r3, #0x1e
	ldrsh r1, [r5, r3]
	adds r0, r0, r1
	subs r0, #0xc
	mov r8, r0
	ldrh r1, [r5, #0x18]
	ldr r0, [r6, #0xc]
	adds r0, r0, r1
	subs r4, r4, r0
	adds r0, r4, #0
	bl sub_080009E4
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	str r1, [r5, #0x40]
	ldrh r1, [r5, #0x18]
	ldr r0, [r6, #0xc]
	adds r0, r0, r1
	rsbs r0, r0, #0
	bl sub_080009E4
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	str r1, [r5, #0x44]
	adds r3, r5, #0
	adds r3, #0x42
	ldrh r0, [r3]
	add r0, sb
	strh r0, [r3]
	adds r2, r5, #0
	adds r2, #0x46
	ldrh r0, [r2]
	add r0, r8
	strh r0, [r2]
	ldrb r0, [r5, #0xb]
	adds r1, r0, #0
	cmp r1, #0
	bne _080A3012
	adds r0, #1
	movs r4, #0
	strb r0, [r5, #0xb]
	adds r2, #0x12
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x78
	strb r0, [r5, #0xd]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x14
	bl sub_080A3178
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0x20
	bl sub_080A3178
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0x2c
	bl sub_080A3178
	movs r0, #0x71
	bl PlaySong
	adds r0, r5, #0
	adds r0, #0x22
	ldrb r0, [r0]
	cmp r0, #1
	beq _080A3002
	cmp r0, #1
	bgt _080A2FF6
	cmp r0, #0
	beq _080A2FFC
	b _080A30F4
_080A2FF6:
	cmp r0, #2
	beq _080A3008
	b _080A30F4
_080A2FFC:
	ldrb r0, [r7, #0x18]
	movs r1, #1
	b _080A300C
_080A3002:
	ldrb r0, [r7, #0x18]
	movs r1, #2
	b _080A300C
_080A3008:
	ldrb r0, [r7, #0x18]
	movs r1, #4
_080A300C:
	orrs r0, r1
	strb r0, [r7, #0x18]
	b _080A30F4
_080A3012:
	cmp r1, #1
	bne _080A3060
	ldrb r1, [r5, #0xd]
	cmp r1, #0x50
	bls _080A3044
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080A3044
	mov r4, sl
	ldr r0, [r4]
	ldr r1, _080A3058 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	movs r4, #0
	ldrsh r1, [r3, r4]
	movs r3, #0
	ldrsh r2, [r2, r3]
	ldr r3, _080A305C @ =0xFFF00000
	adds r4, r5, #0
	adds r4, #0x22
	ldrb r4, [r4]
	str r4, [sp]
	bl sub_08044AA4
_080A3044:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080A30F4
	ldrb r0, [r5, #0xb]
	adds r0, #1
	b _080A30F2
	.align 2, 0
_080A3058: .4byte 0x00013110
_080A305C: .4byte 0xFFF00000
_080A3060:
	cmp r1, #2
	bne _080A30F4
	adds r0, r5, #0
	adds r0, #0x22
	ldrb r0, [r0]
	cmp r0, #1
	beq _080A30A0
	cmp r0, #1
	bgt _080A3078
	cmp r0, #0
	beq _080A307E
	b _080A30F4
_080A3078:
	cmp r0, #2
	beq _080A30C4
	b _080A30F4
_080A307E:
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	mov r4, sl
	ldr r1, [r4]
	ldr r0, _080A3098 @ =0x000131B8
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, _080A309C @ =0xFFFFFEFF
	b _080A30DC
	.align 2, 0
_080A3098: .4byte 0x000131B8
_080A309C: .4byte 0xFFFFFEFF
_080A30A0:
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	mov r2, sl
	ldr r1, [r2]
	ldr r3, _080A30BC @ =0x000131B8
	adds r1, r1, r3
	ldr r0, [r1]
	ldr r2, _080A30C0 @ =0xFFFFFDFF
	b _080A30DC
	.align 2, 0
_080A30BC: .4byte 0x000131B8
_080A30C0: .4byte 0xFFFFFDFF
_080A30C4:
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	mov r4, sl
	ldr r1, [r4]
	ldr r0, _080A30E4 @ =0x000131B8
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, _080A30E8 @ =0xFFFFFBFF
_080A30DC:
	ands r0, r2
	str r0, [r1]
	b _080A30F4
	.align 2, 0
_080A30E4: .4byte 0x000131B8
_080A30E8: .4byte 0xFFFFFBFF
_080A30EC:
	movs r0, #0xa
	strb r0, [r5, #0xa]
	movs r0, #2
_080A30F2:
	strb r0, [r5, #0xb]
_080A30F4:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080A3104
sub_080A3104: @ 0x080A3104
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
	adds r4, r0, #0
	adds r5, r6, #0
	adds r5, #0x2d
	movs r0, #8
	strb r0, [r5]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08042B8C
	ldrh r0, [r6, #0x34]
	subs r0, r0, r4
	movs r4, #0
	strh r0, [r6, #0x34]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080A3172
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
	strb r4, [r5]
	movs r0, #0xa
	strb r0, [r6, #0xa]
	strb r4, [r6, #0xb]
	strb r4, [r6, #0xc]
_080A3172:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080A3178
sub_080A3178: @ 0x080A3178
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r1, #0
	mov r8, r2
	ldr r4, [r6, #0x10]
	ldr r2, _080A3200 @ =sub_080A3210
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	ldr r3, [r4, #0x20]
	cmp r5, #0
	beq _080A31F4
	adds r1, r5, #0
	adds r1, #0x42
	ldr r0, _080A3204 @ =0x0000FF80
	strh r0, [r1]
	adds r1, #4
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldr r2, [r3]
	ldr r0, [r3, #4]
	adds r3, r5, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _080A3208 @ =0x08225EF8
	ldrb r3, [r3]
	adds r0, r5, #0
	bl sub_0803B924
	adds r1, r5, #0
	adds r1, #0x5b
	movs r0, #2
	strb r0, [r1]
	adds r0, r7, #3
	adds r2, r5, #0
	adds r2, #0x65
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	subs r1, #0x25
	strb r0, [r1]
	str r6, [r5, #0x10]
	subs r2, #0xc
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	mov r0, r8
	strb r0, [r5, #0xd]
	ldr r0, _080A320C @ =sub_0803B9D0
	str r0, [r5, #4]
_080A31F4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A3200: .4byte sub_080A3210
_080A3204: .4byte 0x0000FF80
_080A3208: .4byte 0x08225EF8
_080A320C: .4byte sub_0803B9D0

	thumb_func_start sub_080A3210
sub_080A3210: @ 0x080A3210
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r2, [r4, #0x10]
	ldrb r3, [r4, #0xa]
	adds r0, r3, #0
	cmp r0, #0
	bne _080A325E
	cmp r2, #0
	beq _080A32A6
	ldr r0, [r2]
	cmp r0, #0
	beq _080A32A6
	adds r0, r2, #0
	adds r0, #0x36
	adds r1, r4, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080A32A6
	ldr r0, [r2, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r2, #0x44]
	str r0, [r4, #0x44]
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080A32A6
	adds r0, r3, #1
	strb r0, [r4, #0xa]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	movs r0, #0x3c
	strb r0, [r4, #0xd]
	b _080A32A6
_080A325E:
	cmp r0, #1
	bne _080A32A6
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r4, #0
	bl sub_0806D3D8
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
	bgt _080A32A6
	adds r0, r4, #0
	bl EntityDelete
_080A32A6:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A32B0
sub_080A32B0: @ 0x080A32B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r1
	mov sb, r2
	mov sl, r3
	ldr r4, [r6, #0x10]
	ldr r2, _080A339C @ =sub_080A33B8
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	movs r7, #3
	rsbs r7, r7, #0
	ldr r0, _080A33A0 @ =0x0A06FDFD
	str r0, [sp]
	ldr r3, [r4, #0x20]
	cmp r5, #0
	beq _080A338C
	adds r1, r5, #0
	adds r1, #0x42
	ldr r0, _080A33A4 @ =0x0000FF80
	strh r0, [r1]
	adds r1, #4
	strh r0, [r1]
	mov r0, r8
	str r0, [r5, #0x14]
	mov r0, sb
	str r0, [r5, #0x18]
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, #0x16
	strb r0, [r1]
	ldr r2, [r3]
	ldr r0, [r3, #8]
	adds r3, r5, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _080A33A8 @ =0x08225EF8
	ldrb r3, [r3]
	adds r0, r5, #0
	bl sub_0803B924
	adds r0, r5, #0
	movs r1, #4
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	ldr r2, _080A33AC @ =sub_080A4274
	ldr r3, _080A33B0 @ =sub_080A3504
	adds r0, r5, #0
	movs r1, #8
	bl sub_0804277C
	adds r0, r5, #0
	mov r1, sp
	bl sub_080428B4
	adds r0, r5, #0
	mov r1, sp
	bl sub_08042848
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x36
	strb r0, [r1]
	str r6, [r5, #0x10]
	adds r1, #0x23
	ldrb r0, [r1]
	ands r7, r0
	strb r7, [r1]
	mov r0, sl
	strb r0, [r5, #0xd]
	subs r2, #0x1a
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x3c
	movs r0, #0x64
	strb r0, [r1]
	subs r2, #0x1a
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080A33B4 @ =sub_0803B9D0
	str r0, [r5, #4]
_080A338C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A339C: .4byte sub_080A33B8
_080A33A0: .4byte 0x0A06FDFD
_080A33A4: .4byte 0x0000FF80
_080A33A8: .4byte 0x08225EF8
_080A33AC: .4byte sub_080A4274
_080A33B0: .4byte sub_080A3504
_080A33B4: .4byte sub_0803B9D0

	thumb_func_start sub_080A33B8
sub_080A33B8: @ 0x080A33B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r6, [r4, #0x10]
	ldr r0, _080A342C @ =gEwramData
	ldr r3, [r0]
	ldr r0, _080A3430 @ =0x0000A094
	adds r7, r3, r0
	ldrb r2, [r4, #0xa]
	adds r5, r2, #0
	cmp r5, #0
	bne _080A34A4
	cmp r6, #0
	bne _080A33D6
	b _080A34F0
_080A33D6:
	ldr r0, [r6]
	cmp r0, #0
	bne _080A33DE
	b _080A34F0
_080A33DE:
	adds r0, r6, #0
	adds r0, #0x36
	adds r1, r4, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _080A33F0
	b _080A34F0
_080A33F0:
	ldrb r1, [r4, #0xc]
	cmp r1, #0
	bne _080A3434
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080A3480
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #4
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #0xa2
	lsls r0, r0, #1
	bl PlaySong
	b _080A3480
	.align 2, 0
_080A342C: .4byte gEwramData
_080A3430: .4byte 0x0000A094
_080A3434:
	cmp r1, #1
	bne _080A3480
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _080A3480
	adds r0, r2, #1
	strb r0, [r4, #0xa]
	ldr r1, _080A3498 @ =0x00013168
	adds r0, r3, r1
	ldr r2, [r0]
	ldr r1, [r2, #0x40]
	ldr r0, [r7, #4]
	adds r1, r1, r0
	ldr r2, [r2, #0x44]
	ldr r0, [r7, #8]
	adds r2, r2, r0
	ldr r0, _080A349C @ =0xFFF00000
	adds r2, r2, r0
	movs r3, #0x80
	lsls r3, r3, #0xa
	adds r0, r4, #0
	bl sub_080694B8
	adds r0, r4, #0
	movs r1, #5
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	adds r0, #0x20
	strb r5, [r0]
	ldr r0, _080A34A0 @ =0x00000143
	bl PlaySong
_080A3480:
	ldr r0, [r6, #0x40]
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	adds r0, r4, #0
	bl sub_0803F17C
	b _080A34F0
	.align 2, 0
_080A3498: .4byte 0x00013168
_080A349C: .4byte 0xFFF00000
_080A34A0: .4byte 0x00000143
_080A34A4:
	cmp r5, #1
	bne _080A34F0
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r4, #0
	bl sub_0806D3D8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _080A34D8
	adds r0, r4, #0
	bl EntityDelete
	b _080A34FC
_080A34D8:
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A34EA
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
_080A34EA:
	adds r0, r4, #0
	bl sub_0806AE54
_080A34F0:
	ldrb r0, [r6, #0xa]
	cmp r0, #0xa
	bne _080A34FC
	adds r0, r4, #0
	bl EntityDelete
_080A34FC:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080A3504
sub_080A3504: @ 0x080A3504
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldrh r0, [r5, #4]
	bl sub_08021530
	adds r3, r0, #0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0806B7D8
	adds r1, r7, #0
	adds r1, #0x2d
	movs r0, #8
	strb r0, [r1]
	subs r1, #0xd
	movs r0, #1
	strb r0, [r1]
	ldr r1, [r7, #0x40]
	ldr r0, [r4, #0x40]
	subs r5, r1, r0
	ldr r1, [r7, #0x44]
	ldr r0, [r4, #0x44]
	subs r6, r1, r0
	cmp r5, #0
	bge _080A354C
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _080A354E
_080A354C:
	asrs r2, r5, #0x10
_080A354E:
	cmp r6, #0
	bge _080A355E
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _080A3560
_080A355E:
	asrs r1, r6, #0x10
_080A3560:
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
	movs r4, #0xc0
	lsls r4, r4, #0xa
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0803E86C
	str r0, [r7, #0x48]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0803E86C
	str r0, [r7, #0x4c]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A35A0
sub_080A35A0: @ 0x080A35A0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	adds r7, r1, #0
	mov r8, r2
	ldr r4, [r6, #0x10]
	ldr r2, _080A3660 @ =sub_080A3678
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	ldr r0, _080A3664 @ =0x0404FEFE
	str r0, [sp]
	ldr r3, [r4, #0x20]
	cmp r5, #0
	beq _080A3652
	adds r1, r5, #0
	adds r1, #0x42
	ldr r0, _080A3668 @ =0x0000FF80
	strh r0, [r1]
	adds r1, #4
	strh r0, [r1]
	str r7, [r5, #0x14]
	mov r0, r8
	str r0, [r5, #0x18]
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, #0x16
	strb r0, [r1]
	ldr r2, [r3]
	ldr r0, [r3, #8]
	adds r3, r5, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _080A366C @ =0x08225EF8
	ldrb r3, [r3]
	adds r0, r5, #0
	bl sub_0803B924
	adds r0, r5, #0
	movs r1, #6
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	ldr r2, _080A3670 @ =sub_080A42A0
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
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x36
	strb r0, [r1]
	str r6, [r5, #0x10]
	subs r2, #0x19
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #0x11
	str r0, [r5, #0x20]
	ldr r0, _080A3674 @ =sub_080A392C
	str r0, [r5, #4]
_080A3652:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A3660: .4byte sub_080A3678
_080A3664: .4byte 0x0404FEFE
_080A3668: .4byte 0x0000FF80
_080A366C: .4byte 0x08225EF8
_080A3670: .4byte sub_080A42A0
_080A3674: .4byte sub_080A392C

	thumb_func_start sub_080A3678
sub_080A3678: @ 0x080A3678
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	ldr r0, [r7, #0x10]
	mov sb, r0
	ldr r6, _080A3704 @ =gEwramData
	ldr r3, [r6]
	ldr r1, _080A3708 @ =0x0000A094
	adds r1, r1, r3
	mov r8, r1
	ldrb r5, [r7, #0xa]
	cmp r5, #0
	bne _080A3758
	cmp r0, #0
	bne _080A36A0
	b _080A390E
_080A36A0:
	ldr r0, [r0]
	cmp r0, #0
	bne _080A36A8
	b _080A390E
_080A36A8:
	mov r0, sb
	adds r0, #0x36
	adds r1, r7, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _080A36BA
	b _080A390E
_080A36BA:
	ldrb r1, [r7, #0xc]
	adds r2, r1, #0
	cmp r2, #0
	beq _080A3714
	cmp r2, #1
	bne _080A3734
	ldrb r0, [r7, #0xd]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080A3734
	strb r5, [r7, #0xc]
	strb r2, [r7, #0xa]
	movs r0, #0x78
	strb r0, [r7, #0xd]
	ldr r2, _080A370C @ =0x00013168
	adds r0, r3, r2
	ldr r2, [r0]
	ldr r1, [r2, #0x40]
	mov r3, r8
	ldr r0, [r3, #4]
	adds r4, r1, r0
	ldr r0, [r2, #0x44]
	ldr r1, [r3, #8]
	adds r0, r0, r1
	ldr r1, _080A3710 @ =0xFFF00000
	adds r2, r0, r1
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080694B8
	strb r5, [r7, #0x1c]
	b _080A391A
	.align 2, 0
_080A3704: .4byte gEwramData
_080A3708: .4byte 0x0000A094
_080A370C: .4byte 0x00013168
_080A3710: .4byte 0xFFF00000
_080A3714:
	ldr r0, [r7, #0x20]
	cmp r0, #0
	beq _080A3734
	ldr r2, _080A3750 @ =0xFFFC0000
	adds r0, r0, r2
	str r0, [r7, #0x20]
	cmp r0, #0
	bgt _080A3734
	str r5, [r7, #0x20]
	adds r0, r1, #1
	strb r0, [r7, #0xc]
	movs r0, #0x1e
	strb r0, [r7, #0xd]
	ldr r0, _080A3754 @ =0x00000141
	bl PlaySong
_080A3734:
	mov r3, sb
	ldr r0, [r3, #0x40]
	ldr r1, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x40]
	ldr r0, [r3, #0x44]
	ldr r1, [r7, #0x18]
	adds r0, r0, r1
	str r0, [r7, #0x44]
	adds r0, r7, #0
	bl sub_0803F17C
	b _080A390E
	.align 2, 0
_080A3750: .4byte 0xFFFC0000
_080A3754: .4byte 0x00000141
_080A3758:
	cmp r5, #1
	bne _080A37FC
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	beq _080A3796
	subs r0, #1
	strb r0, [r7, #0xd]
	ldr r1, _080A37F4 @ =0x00013168
	adds r0, r3, r1
	ldr r2, [r0]
	ldr r1, [r2, #0x40]
	mov r3, r8
	ldr r0, [r3, #4]
	adds r4, r1, r0
	ldr r0, [r2, #0x44]
	ldr r1, [r3, #8]
	adds r0, r0, r1
	ldr r1, _080A37F8 @ =0xFFF00000
	adds r2, r0, r1
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080695B4
_080A3796:
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r0, r7, #0
	bl sub_0806D3D8
	adds r0, r7, #0
	bl sub_0803F17C
	adds r0, r7, #0
	movs r1, #4
	bl sub_0806D128
	adds r1, r0, #0
	cmp r1, #0
	beq _080A37B6
	b _080A38FE
_080A37B6:
	ldrb r0, [r7, #0x1c]
	cmp r0, #1
	bne _080A37EA
	movs r0, #2
	strb r0, [r7, #0xa]
	strb r1, [r7, #0xb]
	movs r0, #0x90
	strb r0, [r7, #0xd]
	strb r1, [r7, #0x1d]
	ldr r2, [r6]
	ldr r3, _080A37F4 @ =0x00013168
	adds r2, r2, r3
	ldr r0, [r2]
	ldr r0, [r0, #0x40]
	ldr r1, [r7, #0x40]
	subs r0, r0, r1
	str r0, [r7, #0x14]
	ldr r0, [r2]
	ldr r0, [r0, #0x44]
	ldr r1, [r7, #0x44]
	subs r0, r0, r1
	str r0, [r7, #0x18]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #9
	strb r0, [r1]
_080A37EA:
	add r0, sp, #8
	adds r1, r7, #0
	bl sub_080421AC
	b _080A390E
	.align 2, 0
_080A37F4: .4byte 0x00013168
_080A37F8: .4byte 0xFFF00000
_080A37FC:
	cmp r5, #2
	bne _080A38F0
	ldrb r1, [r7, #0xd]
	movs r0, #7
	mov sl, r0
	ands r0, r1
	cmp r0, #0
	bne _080A3866
	bl RandomNumberGenerator
	movs r6, #0xc0
	lsls r6, r6, #0xb
	adds r1, r6, #0
	bl __umodsi3
	ldr r4, [r7, #0x40]
	adds r4, r4, r0
	ldr r5, _080A38DC @ =0xFFFD0000
	adds r4, r4, r5
	bl RandomNumberGenerator
	adds r1, r6, #0
	bl __umodsi3
	ldr r1, [r7, #0x44]
	adds r1, r1, r0
	adds r1, r1, r5
	ldr r3, _080A38E0 @ =0xFFFFE000
	mov r2, sl
	str r2, [sp]
	movs r0, #6
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08045B44
	adds r5, r0, #0
	cmp r5, #0
	beq _080A3866
	mov r3, sb
	ldr r1, [r3, #0x40]
	mov r2, r8
	ldr r0, [r2, #4]
	adds r4, r1, r0
	ldr r1, [r3, #0x44]
	ldr r0, [r2, #8]
	adds r2, r1, r0
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080695B4
_080A3866:
	movs r0, #1
	bl sub_08022060
	ldrb r0, [r7, #0xd]
	movs r1, #0x24
	bl __umodsi3
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A3882
	movs r0, #0xa1
	lsls r0, r0, #1
	bl PlaySong
_080A3882:
	ldr r0, _080A38E4 @ =gEwramData
	ldr r3, [r0]
	ldr r0, _080A38E8 @ =0x00013168
	adds r2, r3, r0
	ldr r0, [r2]
	ldr r0, [r0, #0x40]
	ldr r1, [r7, #0x14]
	subs r0, r0, r1
	str r0, [r7, #0x40]
	ldr r0, [r2]
	ldr r0, [r0, #0x44]
	ldr r1, [r7, #0x18]
	subs r0, r0, r1
	str r0, [r7, #0x44]
	ldrh r1, [r3, #0x1e]
	ldr r0, _080A38EC @ =0x000003FF
	ands r0, r1
	cmp r0, #0
	beq _080A38B2
	ldrb r0, [r7, #0x1d]
	cmp r0, #0x63
	bhi _080A38B2
	adds r0, #1
	strb r0, [r7, #0x1d]
_080A38B2:
	ldr r1, [r7, #0x20]
	movs r0, #0x80
	lsls r0, r0, #0xb
	cmp r1, r0
	bgt _080A38C4
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r1, r2
	str r0, [r7, #0x20]
_080A38C4:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080A3916
	ldrb r0, [r7, #0x1d]
	cmp r0, #0x13
	bls _080A390E
	b _080A3916
	.align 2, 0
_080A38DC: .4byte 0xFFFD0000
_080A38E0: .4byte 0xFFFFE000
_080A38E4: .4byte gEwramData
_080A38E8: .4byte 0x00013168
_080A38EC: .4byte 0x000003FF
_080A38F0:
	cmp r5, #3
	bne _080A390E
	ldr r1, [r7, #0x20]
	movs r0, #0x80
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _080A3906
_080A38FE:
	adds r0, r7, #0
	bl EntityDelete
	b _080A391A
_080A3906:
	movs r3, #0xc0
	lsls r3, r3, #0xb
	adds r0, r1, r3
	str r0, [r7, #0x20]
_080A390E:
	mov r1, sb
	ldrb r0, [r1, #0xa]
	cmp r0, #0xa
	bne _080A391A
_080A3916:
	movs r0, #3
	strb r0, [r7, #0xa]
_080A391A:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A392C
sub_080A392C: @ 0x080A392C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	ldr r0, [r4, #0x40]
	mov sb, r0
	ldr r1, [r4, #0x44]
	mov sl, r1
	ldr r0, [r4, #0x20]
	mov r2, sb
	subs r1, r2, r0
	str r1, [r4, #0x40]
	mov r1, sl
	subs r0, r1, r0
	str r0, [r4, #0x44]
	adds r6, r4, #0
	adds r6, #0x58
	ldrb r1, [r6]
	movs r5, #0x41
	rsbs r5, r5, #0
	adds r0, r5, #0
	ands r0, r1
	movs r2, #0x7f
	mov r8, r2
	ands r0, r2
	strb r0, [r6]
	adds r0, r4, #0
	bl sub_0803B9D0
	ldr r0, [r4, #0x20]
	mov r2, sb
	adds r1, r2, r0
	str r1, [r4, #0x40]
	mov r1, sl
	subs r0, r1, r0
	str r0, [r4, #0x44]
	ldrb r0, [r6]
	movs r7, #0x40
	orrs r0, r7
	mov r2, r8
	ands r0, r2
	strb r0, [r6]
	adds r0, r4, #0
	bl sub_0803B9D0
	ldr r0, [r4, #0x20]
	mov r2, sb
	subs r1, r2, r0
	str r1, [r4, #0x40]
	add r0, sl
	str r0, [r4, #0x44]
	ldrb r0, [r6]
	ands r5, r0
	movs r0, #0x80
	mov r8, r0
	mov r1, r8
	orrs r5, r1
	strb r5, [r6]
	adds r0, r4, #0
	bl sub_0803B9D0
	ldr r0, [r4, #0x20]
	mov r2, sb
	adds r1, r2, r0
	str r1, [r4, #0x40]
	add r0, sl
	str r0, [r4, #0x44]
	ldrb r0, [r6]
	orrs r0, r7
	mov r1, r8
	orrs r0, r1
	strb r0, [r6]
	adds r0, r4, #0
	bl sub_0803B9D0
	mov r2, sb
	str r2, [r4, #0x40]
	mov r0, sl
	str r0, [r4, #0x44]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080A39DC
sub_080A39DC: @ 0x080A39DC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r7, r1, #0
	mov r8, r2
	ldr r4, [r6, #0x10]
	ldr r0, _080A3AC0 @ =gEwramData
	mov sb, r0
	ldr r2, _080A3AC4 @ =sub_080A3B04
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	ldr r0, _080A3AC8 @ =0x1A30F0E8
	str r0, [sp]
	ldr r3, [r4, #0x20]
	cmp r5, #0
	beq _080A3AF2
	adds r1, r5, #0
	adds r1, #0x42
	ldr r0, _080A3ACC @ =0x0000FF80
	strh r0, [r1]
	adds r1, #4
	strh r0, [r1]
	str r7, [r5, #0x14]
	mov r1, r8
	str r1, [r5, #0x18]
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r2, [r3]
	ldr r0, [r3, #4]
	adds r3, r5, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _080A3AD0 @ =0x08225EF8
	ldrb r3, [r3]
	adds r0, r5, #0
	bl sub_0803B924
	adds r1, r5, #0
	adds r1, #0x5b
	movs r0, #2
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	ldr r2, _080A3AD4 @ =sub_080A42A8
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
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x36
	strb r0, [r1]
	str r6, [r5, #0x10]
	subs r2, #0x19
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x3c
	movs r0, #0x78
	strb r0, [r1]
	movs r0, #0xa
	strh r0, [r5, #0x34]
	mov r1, sb
	ldr r0, [r1]
	ldr r1, _080A3AD8 @ =0x00013168
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r6, #0x40]
	cmp r0, r1
	blt _080A3ADC
	subs r2, #1
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _080A3AE8
	.align 2, 0
_080A3AC0: .4byte gEwramData
_080A3AC4: .4byte sub_080A3B04
_080A3AC8: .4byte 0x1A30F0E8
_080A3ACC: .4byte 0x0000FF80
_080A3AD0: .4byte 0x08225EF8
_080A3AD4: .4byte sub_080A42A8
_080A3AD8: .4byte 0x00013168
_080A3ADC:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0]
_080A3AE8:
	ldr r0, _080A3B00 @ =sub_0803B9D0
	str r0, [r5, #4]
	movs r0, #0x78
	bl PlaySong
_080A3AF2:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A3B00: .4byte sub_0803B9D0

	thumb_func_start sub_080A3B04
sub_080A3B04: @ 0x080A3B04
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r4, [r7, #0x10]
	ldr r0, _080A3B6C @ =gEwramData
	ldr r0, [r0]
	mov r8, r0
	ldr r6, _080A3B70 @ =0x0000A094
	add r6, r8
	ldrb r5, [r7, #0xa]
	cmp r5, #0
	bne _080A3C08
	cmp r4, #0
	bne _080A3B26
	b _080A3D32
_080A3B26:
	ldr r0, [r4]
	cmp r0, #0
	bne _080A3B2E
	b _080A3D32
_080A3B2E:
	adds r0, r4, #0
	adds r0, #0x36
	adds r1, r7, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _080A3B40
	b _080A3D32
_080A3B40:
	ldrb r3, [r7, #0xc]
	adds r2, r3, #0
	cmp r2, #0
	bne _080A3B74
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080A3BF0
	adds r0, r3, #1
	strb r0, [r7, #0xc]
	movs r0, #0x1e
	strb r0, [r7, #0xd]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	b _080A3BF0
	.align 2, 0
_080A3B6C: .4byte gEwramData
_080A3B70: .4byte 0x0000A094
_080A3B74:
	cmp r2, #1
	bne _080A3BF0
	ldrb r0, [r7, #0xd]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080A3BF0
	strb r5, [r7, #0xc]
	strb r2, [r7, #0xa]
	ldr r0, _080A3BC8 @ =0x00013168
	add r0, r8
	ldr r2, [r0]
	ldr r1, [r2, #0x40]
	ldr r0, [r6, #4]
	adds r3, r1, r0
	ldr r0, [r2, #0x44]
	ldr r1, [r6, #8]
	adds r0, r0, r1
	ldr r1, _080A3BCC @ =0xFFF00000
	adds r6, r0, r1
	movs r4, #0xc0
	lsls r4, r4, #0xa
	adds r0, r7, #0
	adds r1, r3, #0
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_080694B8
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080A3BD0
	ldr r0, [r7, #0x48]
	cmp r0, #0
	bge _080A3BE2
	b _080A3BD6
	.align 2, 0
_080A3BC8: .4byte 0x00013168
_080A3BCC: .4byte 0xFFF00000
_080A3BD0:
	ldr r0, [r7, #0x48]
	cmp r0, #0
	ble _080A3BE2
_080A3BD6:
	str r5, [r7, #0x48]
	ldr r1, [r7, #0x4c]
	ldr r0, _080A3BEC @ =0x0002FFFF
	cmp r1, r0
	bgt _080A3BE2
	str r4, [r7, #0x4c]
_080A3BE2:
	movs r0, #0xa4
	lsls r0, r0, #1
	bl PlaySong
	b _080A3D32
	.align 2, 0
_080A3BEC: .4byte 0x0002FFFF
_080A3BF0:
	ldr r0, [r4, #0x40]
	ldr r1, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r7, #0x18]
	adds r0, r0, r1
	str r0, [r7, #0x44]
	adds r0, r7, #0
	bl sub_0803F17C
	b _080A3D32
_080A3C08:
	cmp r5, #1
	bne _080A3C86
	ldrb r0, [r7, #0xc]
	cmp r0, #0
	bne _080A3C3A
	adds r0, #1
	strb r0, [r7, #0xc]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0x24
	bl sub_080458E4
	adds r0, r7, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0x24
	bl sub_080458E4
_080A3C3A:
	movs r1, #0xc0
	lsls r1, r1, #0xb
	adds r0, r7, #0
	bl sub_0806D3D8
	adds r0, r7, #0
	bl sub_0803F17C
	adds r0, r7, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _080A3C7C
	ldrb r0, [r7, #0xa]
	adds r0, #1
	movs r2, #0
	strb r0, [r7, #0xa]
	strb r2, [r7, #0xb]
	ldr r1, [r6, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	subs r0, r0, r1
	str r0, [r7, #0x40]
	ldr r0, _080A3C78 @ =0xFFD00000
	str r0, [r7, #0x44]
	movs r0, #0x1e
	strb r0, [r7, #0xd]
	strh r2, [r7, #0x34]
	b _080A3D32
	.align 2, 0
_080A3C78: .4byte 0xFFD00000
_080A3C7C:
	mov r0, sp
	adds r1, r7, #0
	bl sub_080421AC
	b _080A3D32
_080A3C86:
	cmp r5, #2
	bne _080A3D32
	ldrb r2, [r7, #0xb]
	cmp r2, #0
	bne _080A3D04
	ldr r0, [r4, #0x40]
	ldr r1, [r7, #0x40]
	mov r8, r1
	subs r3, r0, r1
	ldr r0, [r4, #0x44]
	ldr r5, [r7, #0x44]
	subs r6, r0, r5
	ldrb r1, [r7, #0xd]
	adds r0, r3, #0
	bl __divsi3
	adds r4, r0, #0
	str r4, [r7, #0x48]
	ldrb r1, [r7, #0xd]
	adds r0, r6, #0
	bl __divsi3
	str r0, [r7, #0x4c]
	mov r1, r8
	adds r1, r1, r4
	str r1, [r7, #0x40]
	adds r5, r5, r0
	str r5, [r7, #0x44]
	cmp r4, #0
	blt _080A3CD0
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0]
	b _080A3CDE
_080A3CD0:
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_080A3CDE:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A3D2C
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #0x78
	bl PlaySong
	b _080A3D2C
_080A3D04:
	cmp r2, #1
	bne _080A3D2C
	ldr r0, [r4, #0x40]
	str r0, [r7, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r7, #0x44]
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080A3D2C
	adds r0, r4, #0
	adds r0, #0x23
	strb r2, [r0]
	adds r0, r7, #0
	bl EntityDelete
	b _080A3D32
_080A3D2C:
	adds r0, r7, #0
	bl sub_0803F17C
_080A3D32:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A3D40
sub_080A3D40: @ 0x080A3D40
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _080A3DE8 @ =gEwramData
	mov r8, r0
	ldr r2, _080A3DEC @ =sub_080A3E04
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	mov r1, sp
	ldr r0, _080A3DF0 @ =0x081191E0
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldr r3, [r5, #0x20]
	cmp r4, #0
	beq _080A3DDC
	adds r1, r4, #0
	adds r1, #0x42
	ldr r0, _080A3DF4 @ =0x0000FF80
	strh r0, [r1]
	adds r1, #4
	strh r0, [r1]
	mov r1, r8
	ldr r0, [r1]
	ldr r2, _080A3DF8 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r2, [r3]
	ldr r0, [r3, #8]
	adds r3, r4, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _080A3DFC @ =0x08225EF8
	ldrb r3, [r3]
	adds r0, r4, #0
	bl sub_0803B924
	adds r1, r4, #0
	adds r1, #0x5b
	movs r0, #2
	strb r0, [r1]
	lsls r0, r6, #2
	add r0, sp
	ldr r0, [r0]
	adds r0, #0x14
	adds r1, #0xa
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	subs r1, #0x2f
	strb r0, [r1]
	str r5, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x22
	strb r6, [r0]
	movs r0, #0x28
	strb r0, [r4, #0xd]
	ldr r0, _080A3E00 @ =sub_0803B9D0
	str r0, [r4, #4]
_080A3DDC:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A3DE8: .4byte gEwramData
_080A3DEC: .4byte sub_080A3E04
_080A3DF0: .4byte 0x081191E0
_080A3DF4: .4byte 0x0000FF80
_080A3DF8: .4byte 0x00013110
_080A3DFC: .4byte 0x08225EF8
_080A3E00: .4byte sub_0803B9D0

	thumb_func_start sub_080A3E04
sub_080A3E04: @ 0x080A3E04
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r4, r0, #0
	ldr r6, [r4, #0x10]
	ldr r0, _080A3E70 @ =gEwramData
	ldr r3, [r0]
	mov r1, sp
	ldr r0, _080A3E74 @ =0x081191EC
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldrb r7, [r4, #0xa]
	adds r5, r7, #0
	cmp r5, #0
	bne _080A3E9C
	ldr r0, _080A3E78 @ =0x00013110
	adds r3, r3, r0
	ldr r2, [r3]
	adds r5, r4, #0
	adds r5, #0x22
	ldrb r0, [r5]
	lsls r0, r0, #3
	mov r6, sp
	adds r1, r6, r0
	ldr r0, [r2, #0x40]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r2, [r3]
	ldrb r0, [r5]
	lsls r0, r0, #3
	add r1, sp, #4
	adds r1, r1, r0
	ldr r0, [r2, #0x44]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldrb r0, [r4, #0xd]
	bl sub_0806D518
	cmp r0, #0
	beq _080A3E7C
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _080A3E88
	.align 2, 0
_080A3E70: .4byte gEwramData
_080A3E74: .4byte 0x081191EC
_080A3E78: .4byte 0x00013110
_080A3E7C:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
_080A3E88:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080A3F72
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _080A3F72
_080A3E9C:
	cmp r5, #1
	bne _080A3F0E
	ldr r0, _080A3EE8 @ =0x00013110
	adds r3, r3, r0
	ldr r1, [r3]
	mov r8, r1
	movs r2, #0x22
	adds r2, r2, r4
	mov ip, r2
	ldrb r0, [r2]
	lsls r0, r0, #3
	mov r2, sp
	adds r1, r2, r0
	mov r2, r8
	ldr r0, [r2, #0x40]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r2, [r3]
	mov r1, ip
	ldrb r0, [r1]
	lsls r0, r0, #3
	add r1, sp, #4
	adds r1, r1, r0
	ldr r0, [r2, #0x44]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	mov r2, ip
	ldrb r0, [r2]
	cmp r0, #0
	bne _080A3EEC
	ldrb r0, [r6, #0x18]
	ands r5, r0
	cmp r5, #0
	beq _080A3F72
	b _080A3F04
	.align 2, 0
_080A3EE8: .4byte 0x00013110
_080A3EEC:
	cmp r0, #1
	bne _080A3EF6
	ldrb r1, [r6, #0x18]
	movs r0, #2
	b _080A3EFE
_080A3EF6:
	cmp r0, #2
	bne _080A3F72
	ldrb r1, [r6, #0x18]
	movs r0, #4
_080A3EFE:
	ands r0, r1
	cmp r0, #0
	beq _080A3F72
_080A3F04:
	adds r0, r7, #1
	strb r0, [r4, #0xa]
	movs r0, #0x28
	strb r0, [r4, #0xd]
	b _080A3F72
_080A3F0E:
	cmp r5, #2
	bne _080A3F72
	ldr r5, _080A3F80 @ =0x00013110
	adds r3, r3, r5
	ldr r2, [r3]
	adds r5, r4, #0
	adds r5, #0x22
	ldrb r0, [r5]
	lsls r0, r0, #3
	mov r6, sp
	adds r1, r6, r0
	ldr r0, [r2, #0x40]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r2, [r3]
	ldrb r0, [r5]
	lsls r0, r0, #3
	add r1, sp, #4
	adds r1, r1, r0
	ldr r0, [r2, #0x44]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r4, #0x44]
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
	bgt _080A3F72
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080A3F72:
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A3F80: .4byte 0x00013110

	thumb_func_start sub_080A3F84
sub_080A3F84: @ 0x080A3F84
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r2, _080A4000 @ =sub_080A4010
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	ldr r0, [r5, #0x10]
	ldr r3, [r0, #0x20]
	cmp r4, #0
	beq _080A3FF8
	adds r1, r4, #0
	adds r1, #0x42
	ldr r0, _080A4004 @ =0x0000FF80
	strh r0, [r1]
	adds r1, #4
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, #0x16
	strb r0, [r1]
	ldr r2, [r3]
	ldr r0, [r3, #8]
	adds r3, r4, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _080A4008 @ =0x08225EF8
	ldrb r3, [r3]
	adds r0, r4, #0
	bl sub_0803B924
	adds r1, r4, #0
	adds r1, #0x5b
	movs r0, #2
	strb r0, [r1]
	adds r1, #0xa
	movs r0, #0x13
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	subs r1, #0x2f
	strb r0, [r1]
	str r5, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	strb r6, [r4, #0xd]
	ldr r0, _080A400C @ =sub_0803B9D0
	str r0, [r4, #4]
_080A3FF8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A4000: .4byte sub_080A4010
_080A4004: .4byte 0x0000FF80
_080A4008: .4byte 0x08225EF8
_080A400C: .4byte sub_0803B9D0

	thumb_func_start sub_080A4010
sub_080A4010: @ 0x080A4010
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x10]
	cmp r5, #0
	beq _080A40A0
	ldr r0, [r5]
	cmp r0, #0
	beq _080A40A0
	adds r0, r5, #0
	adds r0, #0x36
	adds r1, r4, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080A40A0
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080A4080
	ldrb r0, [r4, #0xd]
	bl sub_0806D518
	cmp r0, #0
	beq _080A405E
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _080A406A
_080A405E:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
_080A406A:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080A40AC
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _080A40AC
_080A4080:
	adds r0, r5, #0
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
	ldrb r0, [r5, #0xa]
	cmp r0, #0xa
	bne _080A40AC
_080A40A0:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080A40AC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A40B4
sub_080A40B4: @ 0x080A40B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _080A40D8 @ =sub_080A4184
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	bne _080A40DC
	movs r0, #0
	b _080A4168
	.align 2, 0
_080A40D8: .4byte sub_080A4184
_080A40DC:
	adds r1, r4, #0
	adds r1, #0x42
	ldr r0, _080A4174 @ =0x0000FF80
	strh r0, [r1]
	adds r1, #4
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #2
	adds r1, #0x16
	strb r0, [r1]
	ldr r0, _080A4178 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	adds r0, r6, #6
	adds r3, r4, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _080A417C @ =0x0820ED60
	ldrb r3, [r3]
	adds r0, r4, #0
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	bl RandomNumberGenerator
	movs r1, #7
	ands r1, r0
	adds r0, r4, #0
	adds r0, #0x6f
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x36
	strb r0, [r1]
	str r5, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x22
	strb r7, [r0]
	mov r0, r8
	strb r0, [r4, #0xd]
	adds r2, #0x19
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080A4180 @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r0, r4, #0
_080A4168:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080A4174: .4byte 0x0000FF80
_080A4178: .4byte 0x081C15F4
_080A417C: .4byte 0x0820ED60
_080A4180: .4byte sub_0803B9D0

	thumb_func_start sub_080A4184
sub_080A4184: @ 0x080A4184
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x10]
	cmp r5, #0
	beq _080A4226
	ldr r0, [r5]
	cmp r0, #0
	beq _080A4226
	adds r0, r5, #0
	adds r0, #0x36
	adds r1, r4, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080A4226
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080A41F4
	ldrb r0, [r4, #0xd]
	bl sub_0806D518
	cmp r0, #0
	beq _080A41D2
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _080A41DE
_080A41D2:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
_080A41DE:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080A4232
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _080A4232
_080A41F4:
	adds r0, r5, #0
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
	bl RandomNumberGenerator
	movs r1, #0x1f
	ands r1, r0
	cmp r1, #0
	beq _080A4220
	adds r0, r4, #0
	bl sub_0803F17C
_080A4220:
	ldrb r0, [r5, #0xa]
	cmp r0, #0xa
	bne _080A4232
_080A4226:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080A4232:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A4238
sub_080A4238: @ 0x080A4238
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A4250 @ =sub_080A24D4
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r1, r0, #0
	cmp r1, #0
	bne _080A4254
	movs r0, #0
	b _080A426C
	.align 2, 0
_080A4250: .4byte sub_080A24D4
_080A4254:
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r1, #0x44]
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x36
	strb r0, [r2]
	str r4, [r1, #0x10]
	adds r0, r1, #0
_080A426C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A4274
sub_080A4274: @ 0x080A4274
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

	thumb_func_start sub_080A42A0
sub_080A42A0: @ 0x080A42A0
	movs r1, #1
	strb r1, [r0, #0x1c]
	bx lr
	.align 2, 0

	thumb_func_start sub_080A42A8
sub_080A42A8: @ 0x080A42A8
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

	thumb_func_start sub_080A42D4
sub_080A42D4: @ 0x080A42D4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r7, [r5, #0x20]
	ldr r0, _080A4324 @ =0x081191CC
	movs r1, #0
	bl sub_0803B800
	adds r6, r0, #0
	cmp r6, #0
	blt _080A4334
	ldr r0, _080A4328 @ =0x0820AD70
	mov r8, r0
	movs r1, #0
	bl sub_08068264
	adds r4, r5, #0
	adds r4, #0x2c
	strb r0, [r4]
	str r6, [r7]
	ldrb r0, [r4]
	str r0, [r7, #4]
	mov r0, r8
	movs r1, #1
	bl sub_08068264
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [r7, #8]
	ldr r1, _080A432C @ =0x08225EF8
	ldrb r3, [r4]
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_0803B924
	ldr r0, _080A4330 @ =sub_0803B9D0
	str r0, [r5, #4]
	movs r0, #1
	b _080A4336
	.align 2, 0
_080A4324: .4byte 0x081191CC
_080A4328: .4byte 0x0820AD70
_080A432C: .4byte 0x08225EF8
_080A4330: .4byte sub_0803B9D0
_080A4334:
	movs r0, #0
_080A4336:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start EnemyChaosUpdate
EnemyChaosUpdate: @ 0x080A4340
	push {r4, lr}
	sub sp, #0x34
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _080A436A
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
	beq _080A436A
	adds r0, r4, #0
	bl sub_08021924
_080A436A:
	adds r0, r4, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _080A4384
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _080A43DA
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
	b _080A43DA
_080A4384:
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bhi _080A43D4
	lsls r0, r0, #2
	ldr r1, _080A4394 @ =_080A4398
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A4394: .4byte _080A4398
_080A4398: @ jump table
	.4byte _080A43AC @ case 0
	.4byte _080A43B4 @ case 1
	.4byte _080A43BC @ case 2
	.4byte _080A43C4 @ case 3
	.4byte _080A43CC @ case 4
_080A43AC:
	adds r0, r4, #0
	bl sub_080A20D0
	b _080A43D4
_080A43B4:
	adds r0, r4, #0
	bl sub_080A1FEC
	b _080A43D4
_080A43BC:
	adds r0, r4, #0
	bl sub_080A43E4
	b _080A43D4
_080A43C4:
	adds r0, r4, #0
	bl sub_080A22A0
	b _080A43D4
_080A43CC:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080A43DA
_080A43D4:
	adds r0, r4, #0
	bl sub_0806E314
_080A43DA:
	add sp, #0x34
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A43E4
sub_080A43E4: @ 0x080A43E4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080A4400
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080A4400:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A4408
sub_080A4408: @ 0x080A4408
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080A44DC @ =0x1010F8F8
	str r0, [sp]
	ldr r0, _080A44E0 @ =EnemyChaos2Update
	str r0, [r5]
	movs r0, #0xa
	bl sub_0806C2CC
	adds r6, r0, #0
	str r6, [r5, #0x20]
	cmp r6, #0
	beq _080A44FE
	adds r0, r5, #0
	bl EnemyChaos2Create
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080A44F8
	adds r0, r5, #0
	movs r1, #8
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	adds r0, r5, #0
	bl sub_0806B04C
	ldr r3, _080A44E4 @ =sub_080A4C0C
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0
	bl sub_0804277C
	adds r0, r5, #0
	mov r1, sp
	bl sub_080428B4
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x1a
	strb r0, [r1]
	movs r4, #0
	ldr r0, _080A44E8 @ =0x00000BB8
	strh r0, [r5, #0x34]
	strb r4, [r5, #0xa]
	adds r0, r5, #0
	bl sub_08034498
	ldr r0, _080A44EC @ =gEwramData
	ldr r2, [r0]
	ldr r0, _080A44F0 @ =0x0000042C
	adds r3, r2, r0
	ldr r0, [r3]
	movs r1, #2
	orrs r0, r1
	movs r1, #1
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r3]
	ldr r0, _080A44F4 @ =0x0000A074
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	strb r4, [r5, #0xd]
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	adds r1, #0x3c
	str r1, [r6, #0xc]
	movs r0, #4
	strb r0, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	strb r0, [r5, #0x1d]
	adds r0, r5, #0
	bl sub_080A67C8
	movs r0, #0x12
	bl sub_08013CF0
	movs r0, #0
	b _080A4500
	.align 2, 0
_080A44DC: .4byte 0x1010F8F8
_080A44E0: .4byte EnemyChaos2Update
_080A44E4: .4byte sub_080A4C0C
_080A44E8: .4byte 0x00000BB8
_080A44EC: .4byte gEwramData
_080A44F0: .4byte 0x0000042C
_080A44F4: .4byte 0x0000A074
_080A44F8:
	adds r0, r5, #0
	bl EntityDelete
_080A44FE:
	movs r0, #1
_080A4500:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080A4508
sub_080A4508: @ 0x080A4508
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r6, [r7, #0x20]
	ldrb r0, [r7, #0xb]
	cmp r0, #0xb
	bls _080A451C
	b _080A4714
_080A451C:
	lsls r0, r0, #2
	ldr r1, _080A4528 @ =_080A452C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A4528: .4byte _080A452C
_080A452C: @ jump table
	.4byte _080A455C @ case 0
	.4byte _080A45E2 @ case 1
	.4byte _080A4602 @ case 2
	.4byte _080A4714 @ case 3
	.4byte _080A4714 @ case 4
	.4byte _080A4714 @ case 5
	.4byte _080A4714 @ case 6
	.4byte _080A4714 @ case 7
	.4byte _080A4714 @ case 8
	.4byte _080A4714 @ case 9
	.4byte _080A467C @ case 10
	.4byte _080A46B2 @ case 11
_080A455C:
	ldr r4, [r6, #0xc]
	cmp r4, #0
	beq _080A4568
	subs r0, r4, #1
	str r0, [r6, #0xc]
	b _080A4714
_080A4568:
	bl RandomNumberGenerator
	movs r1, #0x7f
	mov r8, r1
	ands r0, r1
	adds r0, #0xb4
	str r0, [r6, #0xc]
	bl RandomNumberGenerator
	movs r5, #1
	ands r0, r5
	cmp r0, #0
	beq _080A45B8
	strb r5, [r7, #0xb]
	str r4, [r6, #0x10]
	ldr r1, _080A45A0 @ =0x0852838E
	adds r0, r7, #0
	bl sub_080A6F58
	movs r0, #0x38
	strb r0, [r7, #0xd]
	bl RandomNumberGenerator
	ands r0, r5
	cmp r0, #0
	bne _080A45A8
	ldr r0, _080A45A4 @ =0x00001556
	b _080A45AA
	.align 2, 0
_080A45A0: .4byte 0x0852838E
_080A45A4: .4byte 0x00001556
_080A45A8:
	ldr r0, _080A45B4 @ =0xFFFFEAAB
_080A45AA:
	str r0, [r7, #0x50]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r7, #0x48]
	b _080A4714
	.align 2, 0
_080A45B4: .4byte 0xFFFFEAAB
_080A45B8:
	ldr r4, [r6, #0x14]
	cmp r4, #0
	bne _080A45D4
	movs r0, #0xa
	strb r0, [r7, #0xb]
	ldr r1, _080A45D0 @ =0x0852839B
	adds r0, r7, #0
	bl sub_080A6F58
	strb r4, [r7, #0xd]
	b _080A4714
	.align 2, 0
_080A45D0: .4byte 0x0852839B
_080A45D4:
	bl RandomNumberGenerator
	mov r1, r8
	ands r0, r1
	adds r0, #0xb4
	str r0, [r6, #0xc]
	b _080A4714
_080A45E2:
	adds r0, r7, #0
	bl sub_080A4CE4
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080A45F6
	b _080A4714
_080A45F6:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0xa
	strb r0, [r7, #0xd]
	b _080A4714
_080A4602:
	ldrb r0, [r7, #0xd]
	adds r1, r0, #1
	strb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bhi _080A4612
	b _080A4714
_080A4612:
	movs r0, #0
	mov r8, r0
	mov r1, r8
	strb r1, [r7, #0xd]
	ldr r0, [r7, #0x48]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	adds r5, r0, #0
	movs r4, #0xc0
	lsls r4, r4, #0xd
	adds r1, r4, #0
	bl sub_0803E86C
	adds r5, r0, #0
	ldr r0, [r7, #0x48]
	bl sub_080009E4
	adds r2, r0, #0
	adds r1, r4, #0
	bl sub_0803E86C
	adds r2, r0, #0
	ldr r3, [r7, #0x48]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_080A5048
	ldr r0, _080A4678 @ =0x00000145
	bl PlaySong
	ldr r0, [r7, #0x48]
	ldr r1, [r7, #0x50]
	adds r0, r0, r1
	str r0, [r7, #0x48]
	ldr r0, [r6, #0x10]
	adds r0, #1
	str r0, [r6, #0x10]
	cmp r0, #0xb
	ble _080A4714
	mov r0, r8
	strb r0, [r7, #0xb]
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	adds r1, #0xb4
	str r1, [r6, #0xc]
	b _080A4714
	.align 2, 0
_080A4678: .4byte 0x00000145
_080A467C:
	adds r0, r7, #0
	bl sub_080A4CE4
	ldrb r0, [r7, #0xd]
	cmp r0, #0x3b
	bhi _080A46A4
	adds r1, r0, #1
	strb r1, [r7, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080A46A4
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1a
	movs r0, #7
	ands r1, r0
	adds r1, #9
	adds r0, r7, #0
	bl sub_080A6BE8
_080A46A4:
	ldr r0, [r6, #0x20]
	cmp r0, #0
	beq _080A4714
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	b _080A4714
_080A46B2:
	ldr r1, _080A4720 @ =0xFFFA0000
	mov r8, r1
	ldr r4, _080A4724 @ =0xFFFD0000
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	mov r3, r8
	bl sub_080A5270
	movs r5, #0xc0
	lsls r5, r5, #0xb
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	adds r3, r5, #0
	bl sub_080A5270
	movs r4, #0xc0
	lsls r4, r4, #0xa
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	mov r3, r8
	bl sub_080A5270
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	adds r3, r5, #0
	bl sub_080A5270
	movs r0, #1
	str r0, [r6, #0x14]
	movs r0, #0
	strb r0, [r7, #0xb]
	strb r0, [r7, #0xd]
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	adds r1, #0xb4
	str r1, [r6, #0xc]
	movs r0, #0x85
	bl PlaySong
_080A4714:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A4720: .4byte 0xFFFA0000
_080A4724: .4byte 0xFFFD0000

	thumb_func_start sub_080A4728
sub_080A4728: @ 0x080A4728
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	movs r0, #2
	movs r1, #0
	bl SetPlayerInput
	ldrb r0, [r7, #0xb]
	cmp r0, #0xa
	bls _080A473E
	b _080A49CC
_080A473E:
	lsls r0, r0, #2
	ldr r1, _080A4748 @ =_080A474C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A4748: .4byte _080A474C
_080A474C: @ jump table
	.4byte _080A4778 @ case 0
	.4byte _080A47E8 @ case 1
	.4byte _080A4838 @ case 2
	.4byte _080A4882 @ case 3
	.4byte _080A4930 @ case 4
	.4byte _080A49CC @ case 5
	.4byte _080A49CC @ case 6
	.4byte _080A49CC @ case 7
	.4byte _080A49CC @ case 8
	.4byte _080A49CC @ case 9
	.4byte _080A4988 @ case 10
_080A4778:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	movs r5, #0
	strb r0, [r7, #0xb]
	movs r4, #0x80
	lsls r4, r4, #9
	str r5, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	adds r3, r4, #0
	bl sub_0803D18C
	str r4, [sp]
	movs r0, #0x3c
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803CDF0
	strb r5, [r7, #0xc]
	ldr r4, _080A47D8 @ =gEwramData
	ldr r1, [r4]
	ldr r0, _080A47DC @ =0x0000A074
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	strb r5, [r7, #0xd]
	ldr r1, _080A47E0 @ =0x08528381
	adds r0, r7, #0
	bl sub_080A6F58
	ldr r1, [r4]
	ldr r0, _080A47E4 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #0x20
	orrs r0, r2
	str r0, [r1]
	b _080A49CC
	.align 2, 0
_080A47D8: .4byte gEwramData
_080A47DC: .4byte 0x0000A074
_080A47E0: .4byte 0x08528381
_080A47E4: .4byte 0x0000042C
_080A47E8:
	ldr r0, _080A4830 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _080A4834 @ =0x0000A074
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #9
	movs r4, #0
	str r4, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_0803D18C
	adds r0, r7, #0
	bl sub_080A4CE4
	ldrb r0, [r7, #0xd]
	adds r1, r0, #1
	strb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bhi _080A4826
	b _080A49CC
_080A4826:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	strb r4, [r7, #0xd]
	b _080A49CC
	.align 2, 0
_080A4830: .4byte gEwramData
_080A4834: .4byte 0x0000A074
_080A4838:
	movs r5, #0x80
	lsls r5, r5, #9
	movs r4, #0
	str r4, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	adds r3, r5, #0
	bl sub_0803D18C
	adds r0, r7, #0
	bl sub_080A4CE4
	ldrb r0, [r7, #0xd]
	adds r1, r0, #1
	strb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x77
	bhi _080A4866
	b _080A49CC
_080A4866:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	strb r4, [r7, #0xd]
	str r4, [sp]
	movs r0, #0x28
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	adds r3, r5, #0
	bl sub_0803CDF0
	b _080A49CC
_080A4882:
	movs r5, #0x80
	lsls r5, r5, #9
	movs r4, #0
	str r4, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	adds r3, r5, #0
	bl sub_0803D18C
	ldrb r0, [r7, #0xd]
	adds r1, r0, #1
	strb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x27
	bhi _080A48AA
	b _080A49CC
_080A48AA:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	strb r4, [r7, #0xd]
	str r5, [sp]
	movs r4, #0x28
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
	movs r6, #0xc0
	lsls r6, r6, #0xd
	movs r4, #0xa0
	lsls r4, r4, #0xe
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_080A4D64
	movs r5, #0xd8
	lsls r5, r5, #0x10
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_080A4D64
	movs r4, #0xf0
	lsls r4, r4, #0xf
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	movs r3, #2
	bl sub_080A4D64
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #3
	bl sub_080A4D64
	ldr r0, _080A4928 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _080A492C @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #0x21
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1]
	b _080A49CC
	.align 2, 0
_080A4928: .4byte gEwramData
_080A492C: .4byte 0x0000042C
_080A4930:
	ldrb r0, [r7, #0xd]
	adds r1, r0, #1
	strb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x27
	bls _080A49CC
	bl sub_0803D270
	bl sub_0803CED4
	movs r1, #0
	strb r1, [r7, #0xd]
	movs r0, #1
	strb r0, [r7, #0xa]
	strb r1, [r7, #0xb]
	strb r1, [r7, #0xc]
	ldr r0, _080A497C @ =gEwramData
	ldr r2, [r0]
	ldr r0, _080A4980 @ =0x0000042C
	adds r3, r2, r0
	ldr r0, [r3]
	subs r1, #2
	ands r0, r1
	str r0, [r3]
	ldr r0, _080A4984 @ =0x0000A074
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080A57BC
	b _080A49CC
	.align 2, 0
_080A497C: .4byte gEwramData
_080A4980: .4byte 0x0000042C
_080A4984: .4byte 0x0000A074
_080A4988:
	bl sub_0803D06C
	adds r4, r0, #0
	cmp r4, #0
	bne _080A49CC
	bl sub_0803D270
	bl sub_0803CED4
	movs r0, #1
	strb r0, [r7, #0xa]
	strb r4, [r7, #0xb]
	strb r4, [r7, #0xc]
	ldr r0, _080A49D4 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _080A49D8 @ =0x0000042C
	adds r3, r2, r0
	ldr r0, [r3]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3]
	ldr r0, _080A49DC @ =0x0000A074
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080A57BC
_080A49CC:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A49D4: .4byte gEwramData
_080A49D8: .4byte 0x0000042C
_080A49DC: .4byte 0x0000A074

	thumb_func_start sub_080A49E0
sub_080A49E0: @ 0x080A49E0
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	movs r0, #2
	movs r1, #0
	bl SetPlayerInput
	ldrb r0, [r6, #0xb]
	cmp r0, #1
	beq _080A4A2C
	cmp r0, #1
	bgt _080A49FE
	cmp r0, #0
	beq _080A4A0A
	b _080A4BF0
_080A49FE:
	cmp r0, #2
	beq _080A4AE0
	cmp r0, #3
	bne _080A4A08
	b _080A4B80
_080A4A08:
	b _080A4BF0
_080A4A0A:
	adds r0, r6, #0
	bl sub_080A4CE4
	ldrb r0, [r6, #0x15]
	cmp r0, #0
	bne _080A4A18
	b _080A4BF0
_080A4A18:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	movs r1, #0x11
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	b _080A4BF0
_080A4A2C:
	adds r0, r6, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A4A52
	adds r0, r6, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #1
	beq _080A4A4C
	cmp r0, #3
	beq _080A4A4C
	cmp r0, #4
	beq _080A4A4C
	cmp r0, #5
	bne _080A4A52
_080A4A4C:
	ldr r0, _080A4AD4 @ =0x00000167
	bl PlaySong
_080A4A52:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080A4A62
	b _080A4BF0
_080A4A62:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	movs r0, #0x3c
	strb r0, [r6, #0xd]
	movs r0, #0xb4
	lsls r0, r0, #1
	bl PlaySong
	adds r7, r6, #0
	adds r7, #0x58
	movs r5, #3
_080A4A7A:
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r0, _080A4AD8 @ =0x0000FFFF
	ands r4, r0
	bl RandomNumberGenerator
	ldr r1, _080A4ADC @ =0x0001FFFF
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #9
	adds r2, r1, r0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080A6C7C
	subs r5, #1
	cmp r5, #0
	bge _080A4A7A
	movs r5, #5
_080A4AA2:
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r0, _080A4AD8 @ =0x0000FFFF
	ands r4, r0
	bl RandomNumberGenerator
	ldr r1, _080A4ADC @ =0x0001FFFF
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #9
	adds r2, r1, r0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080A6DEC
	subs r5, #1
	cmp r5, #0
	bge _080A4AA2
	ldrb r0, [r7]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r7]
	b _080A4BF0
	.align 2, 0
_080A4AD4: .4byte 0x00000167
_080A4AD8: .4byte 0x0000FFFF
_080A4ADC: .4byte 0x0001FFFF
_080A4AE0:
	ldrb r0, [r6, #0xd]
	cmp r0, #0x38
	bls _080A4B2E
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r0, _080A4B74 @ =0x0000FFFF
	ands r4, r0
	bl RandomNumberGenerator
	ldr r1, _080A4B78 @ =0x0001FFFF
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #9
	adds r2, r1, r0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080A6C7C
	movs r5, #3
_080A4B08:
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r0, _080A4B74 @ =0x0000FFFF
	ands r4, r0
	bl RandomNumberGenerator
	ldr r1, _080A4B78 @ =0x0001FFFF
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #9
	adds r2, r1, r0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080A6DEC
	subs r5, #1
	cmp r5, #0
	bge _080A4B08
_080A4B2E:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	movs r7, #0
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080A4BF0
	movs r5, #0x80
	lsls r5, r5, #9
	str r7, [sp]
	movs r4, #0x3c
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
	ldr r0, _080A4B7C @ =0x00001010
	bl PlaySong
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	movs r0, #0x3a
	strb r0, [r6, #0xd]
	b _080A4BF0
	.align 2, 0
_080A4B74: .4byte 0x0000FFFF
_080A4B78: .4byte 0x0001FFFF
_080A4B7C: .4byte 0x00001010
_080A4B80:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080A4BF0
	ldr r6, _080A4BF8 @ =gEwramData
	ldr r1, [r6]
	ldr r0, _080A4BFC @ =0x0000037E
	adds r1, r1, r0
	ldrh r2, [r1]
	movs r0, #0x80
	orrs r0, r2
	strh r0, [r1]
	movs r0, #0
	bl sub_08034498
	ldr r2, [r6]
	ldr r5, _080A4C00 @ =0x0000042C
	adds r2, r2, r5
	ldr r0, [r2]
	movs r4, #3
	rsbs r4, r4, #0
	ands r0, r4
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080A4C04 @ =0x0852362C
	movs r1, #0x70
	str r1, [sp]
	movs r1, #0
	movs r2, #0
	movs r3, #0x80
	bl sub_08011F44
	ldr r0, [r6]
	adds r0, #0x60
	bl sub_08011AD0
	ldr r2, [r6]
	adds r5, r2, r5
	ldr r0, [r5]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r5]
	ldr r0, _080A4C08 @ =0x0000A074
	adds r2, r2, r0
	ldrb r0, [r2]
	ands r4, r0
	strb r4, [r2]
_080A4BF0:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A4BF8: .4byte gEwramData
_080A4BFC: .4byte 0x0000037E
_080A4C00: .4byte 0x0000042C
_080A4C04: .4byte 0x0852362C
_080A4C08: .4byte 0x0000A074

	thumb_func_start sub_080A4C0C
sub_080A4C0C: @ 0x080A4C0C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	movs r1, #0x1c
	ldrsb r1, [r4, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldrb r1, [r4, #0x1d]
	adds r0, r0, r1
	cmp r0, #0xff
	bgt _080A4C2C
	adds r1, r4, #0
	adds r1, #0x3d
	b _080A4C32
_080A4C2C:
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xff
_080A4C32:
	strb r0, [r1]
	ldrh r0, [r2, #4]
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
	movs r5, #0
	strh r0, [r4, #0x34]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08042B8C
	movs r1, #0x34
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _080A4CCE
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
	movs r0, #0x78
	strb r0, [r4, #0xd]
	strb r5, [r4, #0x15]
	movs r0, #3
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xb]
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	bl sub_080D6450
	ldr r4, _080A4CD4 @ =gEwramData
	ldr r1, [r4]
	ldr r0, _080A4CD8 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #2
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1]
	ldr r0, _080A4CDC @ =0x00001010
	bl PlaySong
	ldr r1, [r4]
	ldr r0, _080A4CE0 @ =0x0000A074
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
_080A4CCE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A4CD4: .4byte gEwramData
_080A4CD8: .4byte 0x0000042C
_080A4CDC: .4byte 0x00001010
_080A4CE0: .4byte 0x0000A074

	thumb_func_start sub_080A4CE4
sub_080A4CE4: @ 0x080A4CE4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r2, [r6, #0x20]
	ldr r4, [r2, #0x24]
	ldr r5, [r2, #0x20]
	cmp r5, #0
	bne _080A4D58
	ldr r1, [r2, #0x1c]
	adds r1, #1
	str r1, [r2, #0x1c]
	ldr r3, [r2, #0x18]
	lsls r0, r3, #1
	adds r0, r0, r4
	ldrb r0, [r0, #2]
	cmp r1, r0
	blt _080A4D16
	str r5, [r2, #0x1c]
	adds r0, r3, #1
	str r0, [r2, #0x18]
	ldrb r1, [r4]
	cmp r0, r1
	blt _080A4D16
	movs r0, #1
	str r0, [r2, #0x20]
	b _080A4D58
_080A4D16:
	adds r0, r6, #0
	adds r0, #0x2c
	ldrb r5, [r0]
	ldr r0, [r2, #0x18]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrb r3, [r0, #1]
	adds r0, r5, #0
	subs r0, #0xa
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r4, _080A4D60 @ =gEwramData
	ldr r0, [r4]
	movs r2, #0xfc
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r2, r0, r1
	ldrb r0, [r2]
	cmp r0, r3
	beq _080A4D58
	strb r3, [r2]
	ldr r0, [r4]
	lsls r1, r1, #2
	movs r2, #0xf8
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r3, #0
	movs r2, #1
	adds r3, r5, #0
	bl sub_0803C7B4
_080A4D58:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A4D60: .4byte gEwramData

	thumb_func_start sub_080A4D64
sub_080A4D64: @ 0x080A4D64
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r7, r1, #0
	mov r8, r2
	adds r6, r3, #0
	ldr r2, _080A4E64 @ =sub_080A4E80
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	ldr r0, _080A4E68 @ =0x1010F8F8
	str r0, [sp]
	ldr r3, [r5, #0x20]
	cmp r4, #0
	beq _080A4E56
	str r7, [r4, #0x40]
	mov r0, r8
	str r0, [r4, #0x44]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x14
	strb r0, [r1]
	ldr r2, [r3]
	ldr r0, [r3, #4]
	adds r3, r4, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _080A4E6C @ =0x08226B58
	ldrb r3, [r3]
	adds r0, r4, #0
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	adds r0, #0x5b
	movs r7, #2
	strb r7, [r0]
	bl RandomNumberGenerator
	movs r1, #6
	bl __umodsi3
	adds r1, r4, #0
	adds r1, #0x6f
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	subs r1, #0x39
	strb r0, [r1]
	str r5, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #0x55
	strb r0, [r1]
	ldr r0, _080A4E70 @ =0x00000BB8
	strh r0, [r4, #0x34]
	subs r2, #0x1b
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	ldr r2, _080A4E74 @ =sub_080A6F68
	ldr r3, _080A4E78 @ =sub_080A4FA0
	adds r0, r4, #0
	movs r1, #8
	bl sub_0804277C
	adds r0, r4, #0
	mov r1, sp
	bl sub_080428B4
	adds r0, r4, #0
	mov r1, sp
	bl sub_08042848
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2]
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _080A4E40
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0]
_080A4E40:
	ands r6, r7
	cmp r6, #0
	beq _080A4E52
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0]
_080A4E52:
	ldr r0, _080A4E7C @ =sub_0803B9D0
	str r0, [r4, #4]
_080A4E56:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A4E64: .4byte sub_080A4E80
_080A4E68: .4byte 0x1010F8F8
_080A4E6C: .4byte 0x08226B58
_080A4E70: .4byte 0x00000BB8
_080A4E74: .4byte sub_080A6F68
_080A4E78: .4byte sub_080A4FA0
_080A4E7C: .4byte sub_0803B9D0

	thumb_func_start sub_080A4E80
sub_080A4E80: @ 0x080A4E80
	push {r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r4, [r5, #0x10]
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _080A4F2E
	adds r0, r5, #0
	adds r0, #0x2d
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	beq _080A4EA0
	adds r0, r5, #0
	bl sub_0806AE54
_080A4EA0:
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	bne _080A4EC2
	ldrh r0, [r5, #0x20]
	subs r1, r0, #1
	strh r1, [r5, #0x20]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080A4EC2
	adds r0, r5, #0
	movs r1, #0
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
_080A4EC2:
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
	cmp r4, #0
	beq _080A4EFE
	ldr r0, [r4]
	cmp r0, #0
	beq _080A4EFE
	adds r0, r4, #0
	adds r0, #0x36
	adds r1, r5, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080A4EFE
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _080A4EFE
	bl RandomNumberGenerator
	movs r1, #0xf
	ands r1, r0
	cmp r1, #0
	beq _080A4F96
	adds r0, r5, #0
	bl sub_0803F17C
	b _080A4F96
_080A4EFE:
	movs r1, #0
	movs r0, #0xa
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xb]
	movs r3, #0
	strh r1, [r5, #0x34]
	adds r1, r5, #0
	adds r1, #0x2c
	adds r4, r5, #0
	adds r4, #0x5a
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
	movs r0, #0x28
	strb r0, [r5, #0xd]
	strb r3, [r6]
	b _080A4F90
_080A4F2E:
	cmp r0, #0xa
	bne _080A4F90
	ldrb r1, [r5, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080A4F5A
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	ldr r2, _080A4F8C @ =0xFFFA0000
	adds r1, r1, r2
	movs r2, #0x80
	lsls r2, r2, #0xd
	movs r3, #0xc0
	lsls r3, r3, #0xc
	adds r4, r5, #0
	adds r4, #0x5c
	ldrb r4, [r4]
	subs r4, #1
	str r4, [sp]
	bl sub_0806D5C0
_080A4F5A:
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
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080A4F90
	adds r0, r5, #0
	bl EntityDelete
	b _080A4F96
	.align 2, 0
_080A4F8C: .4byte 0xFFFA0000
_080A4F90:
	adds r0, r5, #0
	bl sub_0803F17C
_080A4F96:
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A4FA0
sub_080A4FA0: @ 0x080A4FA0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	ldr r7, [r6, #0x10]
	ldrh r0, [r4, #4]
	bl sub_08021530
	adds r3, r0, #0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0806B7D8
	adds r4, r0, #0
	adds r5, r6, #0
	adds r5, #0x2d
	movs r0, #8
	strb r0, [r5]
	movs r0, #0
	mov r8, r0
	movs r0, #0x1e
	strh r0, [r6, #0x20]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08042B8C
	ldrh r0, [r6, #0x34]
	subs r0, r0, r4
	strh r0, [r6, #0x34]
	adds r0, r6, #0
	movs r1, #1
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	movs r1, #0x34
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bgt _080A503E
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
	movs r0, #0x28
	strb r0, [r6, #0xd]
	mov r0, r8
	strb r0, [r5]
	movs r0, #0xa
	strb r0, [r6, #0xa]
	mov r1, r8
	strb r1, [r6, #0xb]
	ldrb r1, [r7, #0x1c]
	movs r0, #0x1c
	ldrsb r0, [r7, r0]
	cmp r0, #0
	beq _080A503E
	subs r0, r1, #1
	strb r0, [r7, #0x1c]
_080A503E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080A5048
sub_080A5048: @ 0x080A5048
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x38
	mov sb, r0
	adds r4, r1, #0
	adds r5, r2, #0
	mov r8, r3
	ldr r0, _080A51A0 @ =0x0808FCFC
	str r0, [sp, #0x34]
	ldr r2, _080A51A4 @ =sub_080A51C0
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r6, r0, #0
	ldr r1, _080A51A8 @ =0x08119230
	mov r0, sp
	movs r2, #0x34
	bl memcpy
	mov r0, sb
	ldr r7, [r0, #0x20]
	cmp r6, #0
	bne _080A507E
	b _080A5190
_080A507E:
	ldr r0, [r0, #0x40]
	adds r0, r0, r4
	str r0, [r6, #0x40]
	mov r1, sb
	ldr r0, [r1, #0x44]
	adds r0, r0, r5
	str r0, [r6, #0x44]
	movs r0, #0x80
	lsls r0, r0, #7
	add r0, r8
	bl sub_080009E4
	movs r4, #0xc0
	lsls r4, r4, #0xa
	adds r1, r4, #0
	bl sub_0803E86C
	adds r5, r0, #0
	mov r0, r8
	bl sub_080009E4
	adds r1, r4, #0
	bl sub_0803E86C
	str r5, [r6, #0x48]
	str r0, [r6, #0x4c]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
	ldr r2, [r7]
	ldr r0, [r7, #8]
	adds r4, r6, #0
	adds r4, #0x2c
	strb r0, [r4]
	adds r5, r6, #0
	adds r5, #0x5a
	movs r0, #0xf
	ldrb r1, [r7, #8]
	ands r1, r0
	lsls r1, r1, #3
	ldrb r3, [r5]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r5]
	ldr r1, _080A51AC @ =0x08226B58
	ldrb r3, [r4]
	adds r0, r6, #0
	bl sub_0803B924
	ldr r0, _080A51B0 @ =0x0000FFFF
	mov r2, r8
	ands r0, r2
	ldr r1, _080A51B4 @ =0x00001555
	bl __divsi3
	lsls r0, r0, #2
	mov r2, sp
	adds r1, r2, r0
	ldrh r1, [r1]
	adds r2, r6, #0
	adds r2, #0x65
	strb r1, [r2]
	adds r1, r6, #0
	adds r1, #0x5b
	movs r4, #2
	strb r4, [r1]
	mov r1, sp
	adds r1, #2
	adds r3, r1, r0
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080A5124
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0]
_080A5124:
	ldrh r1, [r3]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080A513A
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0]
_080A513A:
	mov r0, sb
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x36
	strb r0, [r1]
	mov r0, sb
	str r0, [r6, #0x10]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r6, #0
	adds r1, #0x3c
	movs r0, #0x64
	strb r0, [r1]
	ldr r2, _080A51B8 @ =sub_080A6F94
	adds r0, r6, #0
	movs r1, #8
	movs r3, #0
	bl sub_0804277C
	add r1, sp, #0x34
	adds r0, r6, #0
	bl sub_08042848
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r1, #0
	orrs r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2]
	ldr r0, _080A51BC @ =sub_0803B9D0
	str r0, [r6, #4]
	movs r0, #0x4e
	strb r0, [r6, #0xd]
_080A5190:
	add sp, #0x38
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A51A0: .4byte 0x0808FCFC
_080A51A4: .4byte sub_080A51C0
_080A51A8: .4byte 0x08119230
_080A51AC: .4byte 0x08226B58
_080A51B0: .4byte 0x0000FFFF
_080A51B4: .4byte 0x00001555
_080A51B8: .4byte sub_080A6F94
_080A51BC: .4byte sub_0803B9D0

	thumb_func_start sub_080A51C0
sub_080A51C0: @ 0x080A51C0
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r5, [r4, #0x10]
	ldrb r1, [r4, #0xa]
	adds r0, r1, #0
	cmp r0, #0
	bne _080A520C
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080A51EA
	adds r0, r1, #1
	strb r0, [r4, #0xa]
	movs r0, #0xa3
	lsls r0, r0, #1
	bl PlaySong
_080A51EA:
	cmp r5, #0
	beq _080A5238
	ldr r0, [r5]
	cmp r0, #0
	beq _080A5238
	adds r0, r5, #0
	adds r0, #0x36
	adds r1, r4, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080A5238
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	bne _080A5266
	b _080A5238
_080A520C:
	cmp r0, #1
	bne _080A5266
	adds r0, r4, #0
	bl sub_0806D3AC
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806D128
	cmp r0, #0
	bne _080A5238
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xef
	bls _080A5240
_080A5238:
	adds r0, r4, #0
	bl EntityDelete
	b _080A5266
_080A5240:
	cmp r5, #0
	beq _080A5260
	ldr r0, [r5]
	cmp r0, #0
	beq _080A5260
	adds r0, r5, #0
	adds r0, #0x36
	adds r1, r4, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080A5260
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	bne _080A5266
_080A5260:
	adds r0, r4, #0
	bl EntityDelete
_080A5266:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A5270
sub_080A5270: @ 0x080A5270
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r2, _080A5364 @ =sub_080A537C
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	movs r7, #3
	rsbs r7, r7, #0
	ldr r0, _080A5368 @ =0x0606FDFD
	str r0, [sp]
	ldr r3, [r6, #0x20]
	cmp r5, #0
	beq _080A5354
	ldr r0, [r6, #0x40]
	adds r0, r0, r4
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	add r0, r8
	str r0, [r5, #0x44]
	mov r0, sb
	str r0, [r5, #0x48]
	ldr r0, [sp, #0x20]
	str r0, [r5, #0x4c]
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
	ldr r2, [r3]
	ldr r0, [r3, #8]
	adds r3, r5, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _080A536C @ =0x08226B58
	ldrb r3, [r3]
	adds r0, r5, #0
	bl sub_0803B924
	adds r0, r5, #0
	movs r1, #6
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	adds r1, r5, #0
	adds r1, #0x5b
	movs r4, #2
	movs r0, #2
	strb r0, [r1]
	bl RandomNumberGenerator
	movs r1, #6
	bl __umodsi3
	adds r1, r5, #0
	adds r1, #0x6f
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	subs r1, #0x39
	strb r0, [r1]
	str r6, [r5, #0x10]
	adds r1, #0x23
	ldrb r0, [r1]
	ands r7, r0
	strb r7, [r1]
	subs r1, #0x1d
	movs r0, #0x6e
	strb r0, [r1]
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r5, #0x34]
	adds r2, r5, #0
	adds r2, #0x3e
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	ldr r2, _080A5370 @ =sub_080A6FC0
	ldr r3, _080A5374 @ =sub_080A55F0
	adds r0, r5, #0
	movs r1, #9
	bl sub_0804277C
	movs r0, #3
	movs r1, #2
	bl sub_08042A54
	adds r0, r5, #0
	mov r1, sp
	bl sub_080428B4
	adds r0, r5, #0
	mov r1, sp
	bl sub_08042848
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	orrs r0, r4
	strb r0, [r2]
	ldr r0, _080A5378 @ =sub_0803B9D0
	str r0, [r5, #4]
_080A5354:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A5364: .4byte sub_080A537C
_080A5368: .4byte 0x0606FDFD
_080A536C: .4byte 0x08226B58
_080A5370: .4byte sub_080A6FC0
_080A5374: .4byte sub_080A55F0
_080A5378: .4byte sub_0803B9D0

	thumb_func_start sub_080A537C
sub_080A537C: @ 0x080A537C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r6, r0, #0
	ldr r4, [r6, #0x10]
	ldr r5, _080A53F0 @ =gEwramData
	ldr r7, [r4, #0x20]
	movs r0, #1
	str r0, [r7, #0x14]
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _080A5394
	b _080A5520
_080A5394:
	mov r0, sp
	adds r1, r6, #0
	bl sub_080421AC
	cmp r4, #0
	bne _080A53A2
	b _080A54EC
_080A53A2:
	ldr r0, [r4]
	cmp r0, #0
	bne _080A53AA
	b _080A54EC
_080A53AA:
	adds r0, r4, #0
	adds r0, #0x36
	adds r1, r6, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _080A53BC
	b _080A54EC
_080A53BC:
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _080A53C4
	b _080A54EC
_080A53C4:
	ldr r0, [r5]
	ldr r1, _080A53F4 @ =0x00013168
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r1, [r2, #0x40]
	ldr r0, [r6, #0x40]
	subs r5, r1, r0
	ldr r1, [r2, #0x44]
	ldr r0, [r6, #0x44]
	movs r2, #0x80
	lsls r2, r2, #0xd
	adds r0, r0, r2
	subs r7, r1, r0
	cmp r5, #0
	bge _080A53F8
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _080A53FA
	.align 2, 0
_080A53F0: .4byte gEwramData
_080A53F4: .4byte 0x00013168
_080A53F8:
	asrs r2, r5, #0x10
_080A53FA:
	cmp r7, #0
	bge _080A540A
	rsbs r0, r7, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _080A540C
_080A540A:
	asrs r1, r7, #0x10
_080A540C:
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
	adds r7, r0, #0
	movs r4, #0xc0
	lsls r4, r4, #6
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0803E86C
	adds r5, r0, #0
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0803E86C
	adds r7, r0, #0
	ldr r0, [r6, #0x40]
	adds r0, r0, r5
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x44]
	adds r0, r0, r7
	str r0, [r6, #0x44]
	adds r0, r6, #0
	movs r1, #0x18
	bl sub_0806D490
	adds r0, r6, #0
	movs r1, #0x18
	bl sub_0806D4A8
	adds r0, r6, #0
	bl sub_0806D3AC
	ldrb r2, [r6, #0xc]
	cmp r2, #0
	bne _080A548E
	ldr r1, [r6, #0x48]
	cmp r1, #0
	bge _080A5474
	rsbs r1, r1, #0
_080A5474:
	ldr r0, _080A54E4 @ =0x000001FF
	cmp r1, r0
	bgt _080A548E
	adds r0, r2, #1
	strb r0, [r6, #0xc]
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2]
_080A548E:
	bl RandomNumberGenerator
	movs r1, #0xf
	ands r1, r0
	cmp r1, #0
	beq _080A54A0
	adds r0, r6, #0
	bl sub_0803F17C
_080A54A0:
	ldr r0, [r6, #0x14]
	ldr r2, _080A54E8 @ =0x000005DB
	adds r1, r0, #0
	adds r0, #1
	str r0, [r6, #0x14]
	cmp r1, r2
	bgt _080A54B0
	b _080A55E6
_080A54B0:
	movs r1, #0
	movs r0, #0xa
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xb]
	movs r3, #0
	strh r1, [r6, #0x34]
	adds r1, r6, #0
	adds r1, #0x2c
	adds r4, r6, #0
	adds r4, #0x5a
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
	movs r0, #0x28
	strb r0, [r6, #0xd]
	adds r0, r6, #0
	adds r0, #0x2d
	strb r3, [r0]
	b _080A55E6
	.align 2, 0
_080A54E4: .4byte 0x000001FF
_080A54E8: .4byte 0x000005DB
_080A54EC:
	movs r1, #0
	movs r0, #0xa
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xb]
	movs r3, #0
	strh r1, [r6, #0x34]
	adds r1, r6, #0
	adds r1, #0x2c
	adds r4, r6, #0
	adds r4, #0x5a
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
	movs r0, #0x28
	strb r0, [r6, #0xd]
	adds r0, r6, #0
	adds r0, #0x2d
	strb r3, [r0]
	b _080A55E0
_080A5520:
	cmp r0, #9
	bne _080A5588
	ldrb r1, [r6, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080A5534
	adds r0, r6, #0
	bl sub_080A56CC
_080A5534:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	movs r5, #0
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080A55E0
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	add r0, sp, #0x10
	adds r1, r6, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	strh r1, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	ldr r1, [r6, #0x40]
	str r1, [r0, #8]
	ldr r1, [r6, #0x44]
	str r1, [r0, #0xc]
	bl sub_08021654
	cmp r4, #0
	beq _080A55E0
	ldr r0, [r4]
	cmp r0, #0
	beq _080A55E0
	adds r0, r4, #0
	adds r0, #0x36
	adds r1, r6, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080A55E0
	str r5, [r7, #0x14]
	b _080A55E0
_080A5588:
	cmp r0, #0xa
	bne _080A55E0
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
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080A55E6
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	cmp r4, #0
	beq _080A55E6
	ldr r0, [r4]
	cmp r0, #0
	beq _080A55E6
	adds r0, r4, #0
	adds r0, #0x36
	adds r1, r6, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080A55E6
	movs r0, #0
	str r0, [r7, #0x14]
	b _080A55E6
_080A55E0:
	adds r0, r6, #0
	bl sub_0803F17C
_080A55E6:
	add sp, #0x20
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A55F0
sub_080A55F0: @ 0x080A55F0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldrh r0, [r5, #4]
	bl sub_08021530
	adds r3, r0, #0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0806B7D8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r1, [r7, #0x40]
	ldr r0, [r4, #0x40]
	subs r5, r1, r0
	ldr r1, [r7, #0x44]
	ldr r0, [r4, #0x44]
	subs r6, r1, r0
	cmp r5, #0
	bge _080A5634
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _080A5636
_080A5634:
	asrs r2, r5, #0x10
_080A5636:
	cmp r6, #0
	bge _080A5646
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _080A5648
_080A5646:
	asrs r1, r6, #0x10
_080A5648:
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
	ldrh r1, [r7, #0x34]
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	movs r4, #0
	strh r1, [r7, #0x34]
	lsls r1, r1, #0x10
	cmp r1, #0
	bgt _080A56C0
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
	movs r0, #0x28
	strb r0, [r7, #0xd]
	adds r0, r7, #0
	adds r0, #0x2d
	strb r4, [r0]
	movs r0, #0xa
	strb r0, [r7, #0xa]
	strb r4, [r7, #0xb]
_080A56C0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A56CC
sub_080A56CC: @ 0x080A56CC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, _080A57A0 @ =sub_080A6FE4
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r6, r0, #0
	cmp r6, #0
	beq _080A5798
	ldr r0, _080A57A4 @ =0xFF800000
	str r0, [r6, #0x40]
	str r0, [r6, #0x44]
	adds r0, r4, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r6, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _080A57A8 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _080A57AC @ =0x0820ED60
	adds r0, r6, #0
	movs r3, #7
	bl sub_0803B924
	ldr r1, _080A57B0 @ =0x085283B8
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F0E4
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080A57B4 @ =sub_0803B9D0
	str r0, [r6, #4]
	movs r0, #0x14
	strb r0, [r6, #0xd]
	bl RandomNumberGenerator
	movs r4, #0xff
	ands r4, r0
	lsls r4, r4, #8
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_080009E4
	adds r1, r0, #0
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #4
	str r0, [r6, #0x14]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r2, _080A57B8 @ =0xFFF00000
	adds r0, r0, r2
	str r0, [r6, #0x18]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	rsbs r0, r0, #0
	cmp r0, #0
	bge _080A576A
	adds r0, #0xf
_080A576A:
	asrs r2, r0, #4
	str r2, [r6, #0x48]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	rsbs r0, r0, #0
	cmp r0, #0
	bge _080A577C
	adds r0, #0xf
_080A577C:
	asrs r1, r0, #4
	str r1, [r6, #0x4c]
	adds r0, r2, #0
	cmp r0, #0
	bge _080A5788
	adds r0, #0xf
_080A5788:
	asrs r0, r0, #4
	str r0, [r6, #0x50]
	adds r0, r1, #0
	cmp r0, #0
	bge _080A5794
	adds r0, #0xf
_080A5794:
	asrs r0, r0, #4
	str r0, [r6, #0x54]
_080A5798:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A57A0: .4byte sub_080A6FE4
_080A57A4: .4byte 0xFF800000
_080A57A8: .4byte 0x081C15F4
_080A57AC: .4byte 0x0820ED60
_080A57B0: .4byte 0x085283B8
_080A57B4: .4byte sub_0803B9D0
_080A57B8: .4byte 0xFFF00000

	thumb_func_start sub_080A57BC
sub_080A57BC: @ 0x080A57BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r0, _080A58CC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080A58D0 @ =0x0000A094
	adds r1, r0, r1
	str r1, [sp, #0xc]
	ldr r2, _080A58D4 @ =sub_080A5A7C
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r7, r0, #0
	ldr r0, _080A58D8 @ =0x1010F8F8
	str r0, [sp, #8]
	ldr r2, [r4, #0x20]
	str r2, [sp, #0x10]
	cmp r7, #0
	bne _080A57F2
	b _080A5A6C
_080A57F2:
	movs r0, #0xb4
	bl sub_0806C2CC
	str r0, [r7, #0x24]
	cmp r0, #0
	bne _080A5800
	b _080A5A5C
_080A5800:
	ldr r0, [r4, #0x40]
	adds r0, r0, r5
	str r0, [r7, #0x40]
	ldr r0, [r4, #0x44]
	adds r0, r0, r6
	str r0, [r7, #0x44]
	movs r3, #0x5c
	adds r3, r3, r7
	mov sb, r3
	movs r0, #0x1e
	strb r0, [r3]
	ldr r0, [sp, #0x10]
	ldr r2, [r0]
	ldr r0, [r0, #8]
	adds r5, r7, #0
	adds r5, #0x2c
	strb r0, [r5]
	ldr r1, _080A58DC @ =0x08226B58
	ldrb r3, [r5]
	adds r0, r7, #0
	bl sub_0803B924
	adds r1, r7, #0
	adds r1, #0x65
	str r1, [sp, #0x14]
	movs r0, #0xb
	strb r0, [r1]
	subs r1, #0xa
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r0, [r0]
	movs r2, #0x36
	adds r2, r2, r7
	mov r8, r2
	strb r0, [r2]
	str r4, [r7, #0x10]
	movs r3, #0x59
	adds r3, r3, r7
	mov sl, r3
	ldrb r1, [r3]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	adds r6, r7, #0
	adds r6, #0x3c
	movs r0, #0x55
	strb r0, [r6]
	ldr r4, [sp, #0xc]
	ldrh r0, [r4, #6]
	strb r0, [r7, #0x18]
	ldrh r0, [r4, #0xa]
	strb r0, [r7, #0x19]
	movs r0, #0
	strb r0, [r7, #0x17]
	movs r4, #4
	movs r0, #4
	strb r0, [r7, #0x1b]
	ldr r2, _080A58E0 @ =sub_080A7044
	adds r0, r7, #0
	movs r1, #8
	movs r3, #0
	bl sub_0804277C
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_08042848
	adds r1, r7, #0
	adds r1, #0x72
	ldrb r0, [r1]
	orrs r4, r0
	movs r0, #0xfd
	ands r4, r0
	strb r4, [r1]
	ldr r0, _080A58E4 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r4, r7, #0
	adds r4, #0x58
	ldrb r1, [r4]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #7
	strh r0, [r7, #0x20]
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	str r5, [sp, #0x18]
	mov r1, r8
	str r1, [sp, #0x1c]
	str r6, [sp, #0x20]
	cmp r0, #0
	bge _080A58F0
	b _080A5A5C
	.align 2, 0
_080A58CC: .4byte gEwramData
_080A58D0: .4byte 0x0000A094
_080A58D4: .4byte sub_080A5A7C
_080A58D8: .4byte 0x1010F8F8
_080A58DC: .4byte 0x08226B58
_080A58E0: .4byte sub_080A7044
_080A58E4: .4byte sub_0803B9D0
_080A58E8:
	mov r0, r8
	bl EntityDelete
	b _080A5A6C
_080A58F0:
	movs r0, #0x1f
	ands r3, r0
	ldrb r1, [r4]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r4]
	mov r2, sl
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
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
	bl sub_0803E058
	ldr r0, [r7, #0x24]
	movs r5, #0x77
	movs r2, #0
	ldr r4, [sp, #0x14]
	ldr r3, _080A5A48 @ =0x000002CA
	adds r1, r0, r3
	mov r3, sb
_080A5936:
	strb r2, [r1]
	strb r2, [r1, #1]
	ldrb r0, [r4]
	strb r0, [r1, #2]
	ldrb r0, [r3]
	strb r0, [r1, #3]
	ldrh r0, [r7, #0x20]
	lsrs r0, r0, #8
	strb r0, [r1, #4]
	ldrh r0, [r7, #0x20]
	strb r0, [r1, #5]
	subs r1, #6
	subs r5, #1
	cmp r5, #0
	bge _080A5936
	movs r5, #7
	mov sl, sb
	ldr r6, [sp, #0x18]
_080A595A:
	ldr r0, _080A5A4C @ =sub_080A62B8
	bl sub_0806DFF8
	mov r8, r0
	cmp r0, #0
	beq _080A5A5C
	mov r4, sl
	ldrb r0, [r4]
	adds r0, #1
	mov r4, r8
	adds r4, #0x5c
	strb r0, [r4]
	ldr r0, [sp, #0x10]
	ldr r2, [r0]
	ldrb r3, [r6]
	mov r0, r8
	ldr r1, _080A5A50 @ =0x08226B58
	bl sub_0803B924
	mov r0, r8
	bl sub_080A657C
	ldr r1, [sp, #0x1c]
	ldrb r0, [r1]
	mov r1, r8
	adds r1, #0x36
	strb r0, [r1]
	ldrb r1, [r6]
	mov r0, r8
	adds r0, #0x2c
	strb r1, [r0]
	movs r2, #0x59
	add r2, r8
	mov sb, r2
	ldrb r0, [r2]
	movs r3, #3
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2]
	mov r1, sl
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r4]
	ldr r0, _080A5A54 @ =sub_0803B9D0
	mov r2, r8
	str r0, [r2, #4]
	str r7, [r2, #0x10]
	strb r5, [r2, #0x1a]
	strb r5, [r2, #0xd]
	ldr r3, [sp, #0x20]
	ldrb r1, [r3]
	mov r0, r8
	adds r0, #0x3c
	strb r1, [r0]
	ldrb r0, [r7, #0x18]
	strb r0, [r2, #0x18]
	ldrb r0, [r7, #0x19]
	strb r0, [r2, #0x19]
	ldr r0, [r7, #0x40]
	str r0, [r2, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r2, #0x44]
	adds r2, #0x65
	movs r0, #0xe
	strb r0, [r2]
	mov r1, r8
	adds r1, #0x5b
	movs r0, #2
	strb r0, [r1]
	cmp r5, #7
	bne _080A5A64
	movs r0, #5
	strb r0, [r2]
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _080A59FE
	b _080A58E8
_080A59FE:
	mov r2, r8
	adds r2, #0x58
	movs r0, #0x1f
	ands r3, r0
	ldrb r0, [r2]
	movs r4, #0x20
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	mov r1, sb
	ldrb r0, [r1]
	movs r1, #0x10
	orrs r0, r1
	mov r3, sb
	strb r0, [r3]
	mov r4, r8
	ldrh r0, [r4, #0x20]
	ldr r1, _080A5A58 @ =0xFFFF8000
	adds r0, r0, r1
	ldrb r1, [r2]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	lsrs r1, r1, #7
	str r1, [sp]
	ldrb r1, [r2]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	movs r1, #0xc0
	lsls r1, r1, #8
	adds r2, r1, #0
	bl sub_0803E058
	b _080A5A64
	.align 2, 0
_080A5A48: .4byte 0x000002CA
_080A5A4C: .4byte sub_080A62B8
_080A5A50: .4byte 0x08226B58
_080A5A54: .4byte sub_0803B9D0
_080A5A58: .4byte 0xFFFF8000
_080A5A5C:
	adds r0, r7, #0
	bl EntityDelete
	b _080A5A6C
_080A5A64:
	subs r5, #1
	cmp r5, #0
	blt _080A5A6C
	b _080A595A
_080A5A6C:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080A5A7C
sub_080A5A7C: @ 0x080A5A7C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x110
	adds r7, r0, #0
	ldr r0, [r7, #0x10]
	str r0, [sp, #0xf4]
	add r0, sp, #0x38
	ldr r1, _080A5B20 @ =0x08119264
	movs r2, #8
	bl memcpy
	add r1, sp, #0x40
	mov sb, r1
	ldr r1, _080A5B24 @ =0x0811926C
	mov r0, sb
	movs r2, #0x14
	bl memcpy
	add r2, sp, #0x54
	mov r8, r2
	ldr r1, _080A5B28 @ =0x08119280
	mov r0, r8
	movs r2, #0x20
	bl memcpy
	add r0, sp, #0x74
	ldr r1, _080A5B2C @ =0x081192A0
	movs r2, #0x20
	bl memcpy
	add r6, sp, #0x94
	ldr r4, _080A5B30 @ =0x081192C0
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0x30
	bl memcpy
	add r5, sp, #0xc4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x30
	bl memcpy
	ldr r3, [r7, #0x24]
	mov sl, r3
	ldrb r2, [r7, #0xa]
	mov r3, sb
	mov r4, r8
	cmp r2, #0
	beq _080A5AE8
	b _080A622C
_080A5AE8:
	ldr r0, [sp, #0xf4]
	cmp r0, #0
	bne _080A5AF0
	b _080A61F0
_080A5AF0:
	ldr r0, [r0]
	cmp r0, #0
	bne _080A5AF8
	b _080A61F0
_080A5AF8:
	ldr r0, [sp, #0xf4]
	adds r0, #0x36
	adds r1, r7, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _080A5B0A
	b _080A61F0
_080A5B0A:
	ldrb r0, [r7, #0xb]
	cmp r0, #1
	beq _080A5B4E
	cmp r0, #1
	bgt _080A5B34
	cmp r0, #0
	beq _080A5B44
	add r1, sp, #0x28
	mov r8, r1
	b _080A61DE
	.align 2, 0
_080A5B20: .4byte 0x08119264
_080A5B24: .4byte 0x0811926C
_080A5B28: .4byte 0x08119280
_080A5B2C: .4byte 0x081192A0
_080A5B30: .4byte 0x081192C0
_080A5B34:
	cmp r0, #2
	beq _080A5C10
	cmp r0, #3
	bne _080A5B3E
	b _080A612C
_080A5B3E:
	add r2, sp, #0x28
	mov r8, r2
	b _080A61DE
_080A5B44:
	movs r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r7, #0x54]
_080A5B4E:
	ldrb r0, [r7, #0x17]
	cmp r0, #0
	bne _080A5B68
	ldrb r0, [r7, #0x1b]
	lsls r0, r0, #2
	adds r0, r3, r0
	ldrh r0, [r0]
	strh r0, [r7, #0x1c]
	ldrb r1, [r7, #0x1b]
	lsls r1, r1, #2
	mov r0, sp
	adds r0, #0x42
	b _080A5BBE
_080A5B68:
	cmp r0, #1
	bne _080A5B80
	ldrb r0, [r7, #0x1b]
	lsls r0, r0, #2
	adds r0, r4, r0
	ldrh r0, [r0]
	strh r0, [r7, #0x1c]
	ldrb r1, [r7, #0x1b]
	lsls r1, r1, #2
	mov r0, sp
	adds r0, #0x56
	b _080A5BBE
_080A5B80:
	cmp r0, #2
	bne _080A5BA0
	ldrb r1, [r7, #0x1b]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7, #0x1c]
	adds r0, r1, #0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	mov r0, sp
	adds r0, #0x96
	b _080A5BBE
_080A5BA0:
	cmp r0, #3
	bne _080A5BC4
	ldrb r1, [r7, #0x1b]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r0, [r0]
	strh r0, [r7, #0x1c]
	adds r0, r1, #0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	mov r0, sp
	adds r0, #0xc6
_080A5BBE:
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0x1e]
_080A5BC4:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r7, #0xb]
	strb r1, [r7, #0xd]
	strh r1, [r7, #0x22]
	movs r2, #0x77
	adds r6, r7, #0
	adds r6, #0x65
	adds r5, r7, #0
	adds r5, #0x5c
	add r3, sp, #0x28
	mov r8, r3
	movs r1, #0xb1
	lsls r1, r1, #2
	add r1, sl
_080A5BE4:
	ldrb r0, [r1]
	strb r0, [r1, #6]
	ldrb r0, [r1, #1]
	strb r0, [r1, #7]
	ldrb r0, [r1, #2]
	strb r0, [r1, #8]
	ldrb r0, [r1, #3]
	strb r0, [r1, #9]
	ldrb r0, [r1, #4]
	strb r0, [r1, #0xa]
	ldrb r0, [r1, #5]
	strb r0, [r1, #0xb]
	subs r1, #6
	subs r2, #1
	cmp r2, #0
	bgt _080A5BE4
	movs r0, #0
	mov r1, sl
	strb r0, [r1]
	strb r0, [r1, #1]
	ldrb r0, [r6]
	b _080A61CE
_080A5C10:
	movs r3, #0x1c
	ldrsh r1, [r7, r3]
	adds r5, r7, #0
	adds r5, #0x42
	movs r3, #0
	ldrsh r0, [r5, r3]
	subs r1, r1, r0
	mov sb, r1
	movs r0, #0x1e
	ldrsh r1, [r7, r0]
	adds r4, r7, #0
	adds r4, #0x46
	movs r3, #0
	ldrsh r0, [r4, r3]
	subs r1, r1, r0
	mov r8, r1
	mov r1, sb
	mov r0, sb
	muls r0, r1, r0
	mov sb, r0
	mov r0, r8
	mov r3, r8
	muls r3, r0, r3
	mov r8, r3
	mov r0, sb
	add r0, r8
	str r2, [sp, #0x10c]
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x100]
	str r5, [sp, #0x104]
	str r4, [sp, #0x108]
	ldr r2, [sp, #0x10c]
	cmp r0, #0
	bgt _080A5C72
	ldrh r0, [r7, #0x1c]
	strh r0, [r5]
	adds r0, r7, #0
	adds r0, #0x40
	strh r2, [r0]
	ldrh r0, [r7, #0x1e]
	ldr r1, [sp, #0x108]
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x44
	strh r2, [r0]
	str r2, [r7, #0x50]
_080A5C72:
	ldr r2, [sp, #0x104]
	ldrb r2, [r2]
	str r2, [sp, #0xf8]
	ldr r3, [sp, #0x108]
	ldrb r3, [r3]
	str r3, [sp, #0xfc]
	movs r0, #0x1c
	ldrsh r1, [r7, r0]
	ldr r2, [sp, #0x104]
	movs r3, #0
	ldrsh r0, [r2, r3]
	subs r1, r1, r0
	mov sb, r1
	movs r0, #0x1e
	ldrsh r1, [r7, r0]
	ldr r2, [sp, #0x108]
	movs r3, #0
	ldrsh r0, [r2, r3]
	subs r1, r1, r0
	mov r8, r1
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r7, #0x20]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r3, [sp, #0x100]
	cmp r3, #5
	bgt _080A5CD0
	adds r0, r2, #0
	cmp r0, #0x20
	ble _080A5CC8
	ldrh r0, [r7, #0x14]
	adds r0, #0x20
	b _080A5CE8
_080A5CC8:
	adds r1, r2, #0
	ldrh r0, [r7, #0x14]
	adds r0, r0, r1
	b _080A5CE8
_080A5CD0:
	ldrh r1, [r7, #0x14]
	ldr r0, _080A5CE0 @ =0x0000027F
	cmp r1, r0
	bhi _080A5CE4
	adds r0, r1, #0
	adds r0, #8
	b _080A5CE8
	.align 2, 0
_080A5CE0: .4byte 0x0000027F
_080A5CE4:
	movs r0, #0xa0
	lsls r0, r0, #2
_080A5CE8:
	strh r0, [r7, #0x14]
	lsls r0, r2, #0x10
	cmp r0, #0
	blt _080A5D06
	ldrh r0, [r7, #0x14]
	cmp r2, r0
	bls _080A5CFC
	ldrh r1, [r7, #0x20]
	adds r0, r0, r1
	b _080A5D24
_080A5CFC:
	ldrh r0, [r7, #0x14]
	lsrs r0, r0, #1
	cmp r2, r0
	bls _080A5D26
	b _080A5D20
_080A5D06:
	ldrh r1, [r7, #0x14]
	movs r3, #0x80
	lsls r3, r3, #9
	subs r0, r3, r1
	cmp r2, r0
	bge _080A5D18
	ldrh r0, [r7, #0x20]
	subs r0, r0, r1
	b _080A5D24
_080A5D18:
	lsrs r0, r1, #1
	subs r0, r3, r0
	cmp r2, r0
	bge _080A5D26
_080A5D20:
	ldrh r0, [r7, #0x20]
	adds r0, r2, r0
_080A5D24:
	strh r0, [r7, #0x20]
_080A5D26:
	ldrb r0, [r7, #0x17]
	cmp r0, #0
	bne _080A5D62
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0x11
	bls _080A5D3C
	subs r0, r1, #1
	strb r0, [r5]
_080A5D3C:
	ldrb r0, [r7, #0xd]
	cmp r0, #5
	bls _080A5D52
	adds r0, r7, #0
	adds r0, #0x65
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0xa
	bne _080A5DDE
	movs r0, #0xb
	b _080A5DDC
_080A5D52:
	adds r0, r7, #0
	adds r0, #0x65
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #5
	bne _080A5DDE
	movs r0, #0xa
	b _080A5DDC
_080A5D62:
	cmp r0, #1
	bne _080A5D92
	ldrb r0, [r7, #0xd]
	cmp r0, #9
	bls _080A5D7E
	adds r0, r7, #0
	adds r0, #0x65
	ldrb r1, [r0]
	adds r6, r0, #0
	adds r5, r7, #0
	adds r5, #0x5c
	cmp r1, #0xa
	bne _080A5DDE
	b _080A5DDA
_080A5D7E:
	adds r0, r7, #0
	adds r0, #0x65
	ldrb r1, [r0]
	adds r6, r0, #0
	adds r5, r7, #0
	adds r5, #0x5c
	cmp r1, #5
	bne _080A5DDE
	movs r0, #0xa
	b _080A5DDC
_080A5D92:
	cmp r0, #2
	bne _080A5DC2
	ldrb r0, [r7, #0xd]
	cmp r0, #9
	bls _080A5DAE
	adds r0, r7, #0
	adds r0, #0x65
	ldrb r1, [r0]
	adds r6, r0, #0
	adds r5, r7, #0
	adds r5, #0x5c
	cmp r1, #0xa
	bne _080A5DDE
	b _080A5DDA
_080A5DAE:
	adds r0, r7, #0
	adds r0, #0x65
	ldrb r1, [r0]
	adds r6, r0, #0
	adds r5, r7, #0
	adds r5, #0x5c
	cmp r1, #5
	bne _080A5DDE
	movs r0, #0xa
	b _080A5DDC
_080A5DC2:
	adds r6, r7, #0
	adds r6, #0x65
	adds r5, r7, #0
	adds r5, #0x5c
	cmp r0, #3
	bne _080A5DDE
	ldrb r0, [r7, #0xd]
	cmp r0, #9
	bls _080A5DDE
	ldrb r0, [r6]
	cmp r0, #6
	bne _080A5DDE
_080A5DDA:
	movs r0, #5
_080A5DDC:
	strb r0, [r6]
_080A5DDE:
	ldrh r0, [r7, #0x20]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r0, r2
	bl sub_080009E4
	mov sb, r0
	ldrh r0, [r7, #0x20]
	bl sub_080009E4
	mov r8, r0
	ldrb r0, [r6]
	cmp r0, #0xb
	beq _080A5E24
	ldrh r0, [r7, #0x20]
	ldr r3, _080A5E20 @ =0xFFFF8000
	adds r0, r0, r3
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r7, #0
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
	b _080A5E44
	.align 2, 0
_080A5E20: .4byte 0xFFFF8000
_080A5E24:
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	lsrs r1, r0, #7
	str r1, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	adds r1, r2, #0
	bl sub_0803E058
_080A5E44:
	ldr r0, [sp, #0x100]
	cmp r0, #0x28
	ble _080A5E60
	ldr r1, [r7, #0x50]
	ldr r0, _080A5E5C @ =0x00027FFF
	cmp r1, r0
	bgt _080A5EE6
	ldr r0, [r7, #0x54]
	lsls r0, r0, #1
	adds r0, r1, r0
	str r0, [r7, #0x50]
	b _080A5EE6
	.align 2, 0
_080A5E5C: .4byte 0x00027FFF
_080A5E60:
	ldr r1, [sp, #0x100]
	cmp r1, #0x20
	ble _080A5E7C
	ldr r2, [r7, #0x50]
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r2, r0
	ble _080A5EE6
	ldr r1, [r7, #0x54]
	lsls r0, r1, #1
	adds r0, r0, r1
	subs r0, r2, r0
	str r0, [r7, #0x50]
	b _080A5EE6
_080A5E7C:
	ldr r2, [sp, #0x100]
	cmp r2, #0x18
	ble _080A5E92
	ldr r1, [r7, #0x50]
	movs r0, #0xc0
	lsls r0, r0, #9
	cmp r1, r0
	ble _080A5EE6
	ldr r0, [r7, #0x54]
	lsls r0, r0, #1
	b _080A5ED8
_080A5E92:
	ldr r3, [sp, #0x100]
	cmp r3, #0xc
	ble _080A5EA8
	ldr r1, [r7, #0x50]
	movs r0, #0x80
	lsls r0, r0, #9
	cmp r1, r0
	ble _080A5EE6
	ldr r0, [r7, #0x54]
	lsls r0, r0, #1
	b _080A5ED8
_080A5EA8:
	ldr r0, [sp, #0x100]
	cmp r0, #4
	ble _080A5EBE
	ldr r1, [r7, #0x50]
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	ble _080A5EE6
	ldr r0, [r7, #0x54]
	lsls r0, r0, #1
	b _080A5ED8
_080A5EBE:
	ldr r1, [r7, #0x50]
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r1, r0
	ble _080A5ECE
	ldr r0, [r7, #0x54]
	lsls r0, r0, #1
	b _080A5ED8
_080A5ECE:
	movs r2, #0x80
	lsls r2, r2, #5
	cmp r1, r2
	ble _080A5EDE
	ldr r0, [r7, #0x54]
_080A5ED8:
	subs r0, r1, r0
	str r0, [r7, #0x50]
	b _080A5EE6
_080A5EDE:
	ldr r0, _080A5FB0 @ =0x00000FFF
	cmp r1, r0
	bgt _080A5EE6
	str r2, [r7, #0x50]
_080A5EE6:
	ldr r1, [r7, #0x50]
	mov r0, sb
	bl sub_0803E86C
	mov sb, r0
	ldr r1, [r7, #0x50]
	mov r0, r8
	bl sub_0803E86C
	mov r1, sb
	str r1, [r7, #0x48]
	str r0, [r7, #0x4c]
	adds r0, r7, #0
	bl sub_0806D3AC
	ldrb r0, [r7, #0xd]
	adds r0, #1
	strb r0, [r7, #0xd]
	ldrh r0, [r7, #0x22]
	adds r0, #1
	strh r0, [r7, #0x22]
	ldr r2, [sp, #0x104]
	ldrb r1, [r2]
	ldr r3, [sp, #0xf8]
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	subs r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0xf8]
	ldr r0, [sp, #0x108]
	ldrb r1, [r0]
	ldr r2, [sp, #0xfc]
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	subs r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0xfc]
	movs r2, #0x77
	add r3, sp, #0x28
	mov r8, r3
	movs r1, #0xb1
	lsls r1, r1, #2
	add r1, sl
_080A5F40:
	ldrb r0, [r1]
	strb r0, [r1, #6]
	ldrb r0, [r1, #1]
	strb r0, [r1, #7]
	ldrb r0, [r1, #2]
	strb r0, [r1, #8]
	ldrb r0, [r1, #3]
	strb r0, [r1, #9]
	ldrb r0, [r1, #4]
	strb r0, [r1, #0xa]
	ldrb r0, [r1, #5]
	strb r0, [r1, #0xb]
	subs r1, #6
	subs r2, #1
	cmp r2, #0
	bgt _080A5F40
	add r0, sp, #0xf8
	ldrb r1, [r0]
	mov r0, sl
	strb r1, [r0]
	add r1, sp, #0xfc
	ldrb r1, [r1]
	strb r1, [r0, #1]
	ldrb r0, [r6]
	mov r2, sl
	strb r0, [r2, #2]
	ldrb r0, [r5]
	strb r0, [r2, #3]
	ldrh r0, [r7, #0x20]
	lsrs r0, r0, #8
	strb r0, [r2, #4]
	ldrh r0, [r7, #0x20]
	strb r0, [r2, #5]
	ldr r3, [sp, #0x100]
	cmp r3, #2
	ble _080A5F8A
	b _080A60E6
_080A5F8A:
	ldrb r0, [r7, #0x17]
	cmp r0, #0
	bne _080A5FB4
	movs r0, #1
	strb r0, [r7, #0xb]
	movs r0, #2
	strb r0, [r7, #0x17]
	movs r4, #7
_080A5F9A:
	bl RandomNumberGenerator
	adds r1, r0, #0
	ands r1, r4
	ldrb r0, [r7, #0x1b]
	cmp r0, r1
	beq _080A5F9A
	strb r1, [r7, #0x1b]
	movs r0, #5
	strb r0, [r6]
	b _080A60E0
	.align 2, 0
_080A5FB0: .4byte 0x00000FFF
_080A5FB4:
	cmp r0, #1
	bne _080A5FC4
	movs r1, #0
	movs r0, #3
	strb r0, [r7, #0xb]
	strb r1, [r7, #0xd]
	strb r1, [r7, #0xc]
	b _080A60E0
_080A5FC4:
	cmp r0, #2
	bne _080A6014
	movs r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0x19
	strb r0, [r5]
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #3
	strb r0, [r7, #0x17]
	movs r4, #3
	b _080A5FF6
_080A5FE8:
	bl RandomNumberGenerator
	ands r0, r4
	adds r1, r0, #4
	ldrb r0, [r7, #0x1b]
	cmp r0, r1
	bne _080A60DE
_080A5FF6:
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	cmp r0, #0
	beq _080A5FE8
	bl RandomNumberGenerator
	adds r1, r0, #0
	ands r1, r4
	ldrb r0, [r7, #0x1b]
	cmp r0, r1
	beq _080A5FF6
	b _080A60DE
_080A6014:
	cmp r0, #3
	bne _080A60E0
	movs r0, #1
	strb r0, [r7, #0xb]
	ldrb r0, [r7, #0x1b]
	cmp r0, #3
	bhi _080A6048
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x20
	bhi _080A6048
	movs r0, #0x11
	strb r0, [r5]
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	movs r1, #0xfb
	ands r0, r1
	strb r0, [r2]
	movs r0, #0
	strb r0, [r7, #0x17]
	b _080A60E0
_080A6048:
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x40
	bhi _080A609C
	movs r0, #0x11
	strb r0, [r5]
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	movs r1, #0xfb
	ands r0, r1
	strb r0, [r2]
	movs r0, #1
	strb r0, [r7, #0x17]
	movs r4, #3
	b _080A607E
_080A6070:
	bl RandomNumberGenerator
	ands r0, r4
	adds r1, r0, #4
	ldrb r0, [r7, #0x1b]
	cmp r0, r1
	bne _080A60DE
_080A607E:
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	cmp r0, #0
	beq _080A6070
	bl RandomNumberGenerator
	adds r1, r0, #0
	ands r1, r4
	ldrb r0, [r7, #0x1b]
	cmp r0, r1
	beq _080A607E
	b _080A60DE
_080A609C:
	movs r0, #0x11
	strb r0, [r5]
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	movs r1, #0xfb
	ands r0, r1
	strb r0, [r2]
	movs r0, #2
	strb r0, [r7, #0x17]
	movs r4, #3
	b _080A60C2
_080A60B8:
	bl RandomNumberGenerator
	ands r0, r4
	adds r1, r0, #4
	b _080A60D8
_080A60C2:
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	cmp r0, #0
	beq _080A60B8
	bl RandomNumberGenerator
	adds r1, r0, #0
	ands r1, r4
_080A60D8:
	ldrb r0, [r7, #0x1b]
	cmp r0, r1
	beq _080A60C2
_080A60DE:
	strb r1, [r7, #0x1b]
_080A60E0:
	movs r0, #0
	strh r0, [r7, #0x14]
	b _080A6104
_080A60E6:
	ldrh r1, [r7, #0x22]
	ldr r0, _080A6128 @ =0x0000012B
	cmp r1, r0
	bls _080A6104
	movs r0, #1
	strb r0, [r7, #0xb]
	movs r4, #3
_080A60F4:
	bl RandomNumberGenerator
	adds r1, r0, #0
	ands r1, r4
	ldrb r0, [r7, #0x1b]
	cmp r0, r1
	beq _080A60F4
	strb r1, [r7, #0x1b]
_080A6104:
	ldr r1, [sp, #0xf4]
	ldrb r0, [r1, #0xa]
	cmp r0, #3
	bne _080A61DE
	movs r1, #0
	movs r0, #0xa
	strb r0, [r7, #0xa]
	strb r1, [r7, #0xb]
	str r1, [r7, #0x48]
	str r1, [r7, #0x4c]
	str r1, [r7, #0x50]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x54]
	movs r0, #0x28
	strb r0, [r7, #0xd]
	b _080A61DE
	.align 2, 0
_080A6128: .4byte 0x0000012B
_080A612C:
	ldrb r0, [r7, #0xc]
	cmp r0, #0
	beq _080A6138
	cmp r0, #1
	beq _080A6150
	b _080A618E
_080A6138:
	ldr r1, _080A61E8 @ =0x085283CC
	adds r0, r7, #0
	movs r2, #2
	movs r3, #0
	bl sub_0803F0E4
	ldrb r0, [r7, #0xc]
	adds r0, #1
	strb r0, [r7, #0xc]
	movs r0, #0x77
	bl PlaySong
_080A6150:
	adds r0, r7, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #9
	bne _080A6168
	ldrh r1, [r7, #0x20]
	adds r0, r7, #0
	bl sub_080A65C0
	ldr r0, _080A61EC @ =0x00000147
	bl PlaySong
_080A6168:
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080A618E
	movs r1, #0
	movs r0, #2
	strb r0, [r7, #0x17]
	strb r2, [r7, #0xb]
	strb r1, [r7, #0xc]
	bl RandomNumberGenerator
	movs r1, #3
	ands r1, r0
	adds r1, #4
	strb r1, [r7, #0x1b]
_080A618E:
	adds r0, r7, #0
	bl sub_0803F17C
	movs r2, #0x77
	adds r5, r7, #0
	adds r5, #0x5c
	add r3, sp, #0x28
	mov r8, r3
	movs r1, #0xb1
	lsls r1, r1, #2
	add r1, sl
_080A61A4:
	ldrb r0, [r1]
	strb r0, [r1, #6]
	ldrb r0, [r1, #1]
	strb r0, [r1, #7]
	ldrb r0, [r1, #2]
	strb r0, [r1, #8]
	ldrb r0, [r1, #3]
	strb r0, [r1, #9]
	ldrb r0, [r1, #4]
	strb r0, [r1, #0xa]
	ldrb r0, [r1, #5]
	strb r0, [r1, #0xb]
	subs r1, #6
	subs r2, #1
	cmp r2, #0
	bgt _080A61A4
	movs r0, #0
	mov r1, sl
	strb r0, [r1]
	strb r0, [r1, #1]
	movs r0, #5
_080A61CE:
	strb r0, [r1, #2]
	ldrb r0, [r5]
	strb r0, [r1, #3]
	ldrh r0, [r7, #0x20]
	lsrs r0, r0, #8
	strb r0, [r1, #4]
	ldrh r0, [r7, #0x20]
	strb r0, [r1, #5]
_080A61DE:
	mov r0, r8
	adds r1, r7, #0
	bl sub_080421AC
	b _080A62A4
	.align 2, 0
_080A61E8: .4byte 0x085283CC
_080A61EC: .4byte 0x00000147
_080A61F0:
	movs r3, #0
	movs r0, #0xa
	strb r0, [r7, #0xa]
	strb r3, [r7, #0xb]
	movs r4, #0
	strh r3, [r7, #0x34]
	adds r1, r7, #0
	adds r1, #0x2c
	adds r5, r7, #0
	adds r5, #0x5a
	movs r0, #0xf
	ldrb r1, [r1]
	ands r1, r0
	lsls r1, r1, #3
	ldrb r2, [r5]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	movs r0, #0x28
	strb r0, [r7, #0xd]
	adds r0, r7, #0
	adds r0, #0x2d
	strb r4, [r0]
	str r3, [r7, #0x50]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x54]
	b _080A62A4
_080A622C:
	cmp r2, #0xa
	bne _080A62A4
	ldrb r1, [r7, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080A6258
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x44]
	ldr r2, _080A62B4 @ =0xFFFA0000
	adds r1, r1, r2
	movs r2, #0x80
	lsls r2, r2, #0xd
	movs r3, #0xc0
	lsls r3, r3, #0xc
	adds r4, r7, #0
	adds r4, #0x5c
	ldrb r4, [r4]
	subs r4, #1
	str r4, [sp]
	bl sub_0806D5C0
_080A6258:
	movs r1, #0xe0
	lsls r1, r1, #0xb
	adds r0, r7, #0
	bl sub_0806D3D8
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
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080A62A4
	ldr r0, [r7, #0x24]
	cmp r0, #0
	beq _080A6294
	bl sub_0806C250
_080A6294:
	ldrb r0, [r4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r7, #0
	bl EntityDelete
_080A62A4:
	add sp, #0x110
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A62B4: .4byte 0xFFFA0000

	thumb_func_start sub_080A62B8
sub_080A62B8: @ 0x080A62B8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r5, r0, #0
	ldr r7, [r5, #0x10]
	ldr r0, _080A63C0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080A63C4 @ =0x0000A094
	adds r1, r1, r0
	mov r8, r1
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _080A62D6
	b _080A6508
_080A62D6:
	cmp r7, #0
	bne _080A62DC
	b _080A6500
_080A62DC:
	ldr r0, [r7]
	cmp r0, #0
	bne _080A62E4
	b _080A6500
_080A62E4:
	adds r0, r7, #0
	adds r0, #0x36
	adds r1, r5, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _080A62F6
	b _080A6500
_080A62F6:
	ldr r6, [r7, #0x24]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r5, #0
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
	adds r4, r5, #0
	adds r4, #0x5a
	movs r1, #0x78
	ands r1, r0
	ldrb r2, [r4]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	movs r1, #0x1a
	ldrsb r1, [r5, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r6
	adds r0, #0x30
	movs r2, #0
	ldrsb r2, [r0, r2]
	ldrb r0, [r5, #0x18]
	mov r4, r8
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	adds r2, r2, r0
	movs r0, #0x4a
	adds r0, r0, r5
	mov ip, r0
	strh r2, [r0]
	movs r1, #0x1a
	ldrsb r1, [r5, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r6
	adds r0, #0x31
	movs r2, #0
	ldrsb r2, [r0, r2]
	ldrb r0, [r5, #0x19]
	ldrh r1, [r4, #0xa]
	subs r0, r0, r1
	adds r2, r2, r0
	adds r4, r5, #0
	adds r4, #0x4e
	strh r2, [r4]
	adds r1, r5, #0
	adds r1, #0x42
	mov r2, ip
	ldrh r0, [r2]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	adds r1, #4
	ldrh r0, [r4]
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	movs r1, #0x1a
	ldrsb r1, [r5, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r6
	adds r0, #0x33
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x12
	beq _080A63C8
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	b _080A63D8
	.align 2, 0
_080A63C0: .4byte gEwramData
_080A63C4: .4byte 0x0000A094
_080A63C8:
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #0xfd
	ands r1, r0
	movs r0, #0xfb
	ands r1, r0
	strb r1, [r2]
_080A63D8:
	mov r1, r8
	ldrh r0, [r1, #6]
	strb r0, [r5, #0x18]
	ldrh r0, [r1, #0xa]
	strb r0, [r5, #0x19]
	movs r0, #0x1a
	ldrsb r0, [r5, r0]
	cmp r0, #7
	beq _080A641E
	adds r1, r0, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r6
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080A6408
	ldrb r0, [r3]
	movs r1, #0x40
	orrs r0, r1
	b _080A6414
_080A6408:
	cmp r0, #0
	bge _080A6416
	ldrb r1, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
_080A6414:
	strb r0, [r3]
_080A6416:
	movs r0, #0x1a
	ldrsb r0, [r5, r0]
	cmp r0, #7
	bne _080A649E
_080A641E:
	movs r0, #0x1a
	ldrsb r0, [r5, r0]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r6
	adds r0, r1, #0
	adds r0, #0x34
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	movs r2, #0xff
	lsls r2, r2, #8
	ands r0, r2
	adds r1, #0x35
	ldrb r1, [r1]
	orrs r0, r1
	movs r2, #0xc0
	lsls r2, r2, #8
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
	movs r1, #0x1a
	ldrsb r1, [r5, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r6
	adds r0, #0x32
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #5
	bne _080A647A
	adds r1, r5, #0
	adds r1, #0x65
	b _080A64C8
_080A647A:
	cmp r0, #6
	bne _080A6486
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0xa
	b _080A64C8
_080A6486:
	cmp r0, #0xa
	bne _080A6492
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #6
	b _080A64C8
_080A6492:
	cmp r0, #0xb
	bne _080A64CA
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #6
	b _080A64C8
_080A649E:
	movs r1, #0x1a
	ldrsb r1, [r5, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r6
	adds r0, #0x32
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #5
	bne _080A64BE
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0xe
	b _080A64C8
_080A64BE:
	cmp r0, #0xb
	bne _080A64CA
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0xf
_080A64C8:
	strb r0, [r1]
_080A64CA:
	ldrb r1, [r5, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080A64DC
	add r0, sp, #8
	adds r1, r5, #0
	bl sub_080421AC
_080A64DC:
	ldrb r0, [r7, #0xa]
	cmp r0, #0xa
	bne _080A656E
	movs r1, #0
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xb]
	str r1, [r5, #0x50]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	bl RandomNumberGenerator
	movs r1, #3
	ands r1, r0
	adds r1, #0x3c
	strb r1, [r5, #0xd]
	b _080A656E
_080A6500:
	adds r0, r5, #0
	bl EntityDelete
	b _080A656E
_080A6508:
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _080A651E
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_080A651E:
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
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080A656E
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x1a
	ldrsb r0, [r5, r0]
	cmp r0, #7
	bne _080A656E
	ldrb r0, [r3]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080A656E:
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A657C
sub_080A657C: @ 0x080A657C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _080A65B8 @ =0x0808FCFC
	str r0, [sp]
	ldr r2, _080A65BC @ =sub_080A7070
	adds r0, r4, #0
	movs r1, #8
	movs r3, #0
	bl sub_0804277C
	adds r0, r4, #0
	mov r1, sp
	bl sub_080428B4
	adds r0, r4, #0
	mov r1, sp
	bl sub_08042848
	adds r4, #0x72
	ldrb r1, [r4]
	movs r0, #0xfd
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A65B8: .4byte 0x0808FCFC
_080A65BC: .4byte sub_080A7070

	thumb_func_start sub_080A65C0
sub_080A65C0: @ 0x080A65C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	mov r8, r1
	ldr r0, _080A670C @ =0x0808FCFC
	str r0, [sp]
	ldr r2, _080A6710 @ =sub_080A6724
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r7, r0, #0
	mov r1, sl
	ldr r0, [r1, #0x10]
	ldr r0, [r0, #0x20]
	mov sb, r0
	ldr r2, _080A6714 @ =0xFFFFED00
	add r8, r2
	cmp r7, #0
	bne _080A65F2
	b _080A66FA
_080A65F2:
	movs r5, #0x80
	lsls r5, r5, #7
	add r5, r8
	adds r0, r5, #0
	bl sub_080009E4
	adds r6, r0, #0
	movs r4, #0xe0
	lsls r4, r4, #0xd
	adds r1, r4, #0
	bl sub_0803E86C
	adds r6, r0, #0
	mov r0, r8
	bl sub_080009E4
	adds r1, r0, #0
	adds r1, r4, #0
	bl sub_0803E86C
	adds r1, r0, #0
	mov r3, sl
	ldr r0, [r3, #0x40]
	adds r0, r0, r6
	str r0, [r7, #0x40]
	ldr r0, [r3, #0x44]
	adds r0, r0, r1
	str r0, [r7, #0x44]
	adds r0, r5, #0
	bl sub_080009E4
	adds r6, r0, #0
	movs r4, #0xc0
	lsls r4, r4, #0xa
	adds r1, r4, #0
	bl sub_0803E86C
	adds r6, r0, #0
	mov r0, r8
	bl sub_080009E4
	adds r1, r0, #0
	adds r1, r4, #0
	bl sub_0803E86C
	adds r1, r0, #0
	str r6, [r7, #0x48]
	str r1, [r7, #0x4c]
	mov r0, sl
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r7, #0
	adds r1, #0x5c
	strb r0, [r1]
	mov r0, sb
	ldr r2, [r0]
	ldr r0, [r0, #8]
	adds r4, r7, #0
	adds r4, #0x2c
	strb r0, [r4]
	adds r5, r7, #0
	adds r5, #0x5a
	movs r0, #0xf
	mov r3, sb
	ldrb r1, [r3, #8]
	ands r1, r0
	lsls r1, r1, #3
	ldrb r3, [r5]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r5]
	ldr r1, _080A6718 @ =0x08226B58
	ldrb r3, [r4]
	adds r0, r7, #0
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #7
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r7, #0
	bl sub_0803F17C
	adds r1, r7, #0
	adds r1, #0x65
	movs r0, #0x1e
	strb r0, [r1]
	adds r2, r7, #0
	adds r2, #0x5b
	movs r1, #2
	movs r0, #2
	strb r0, [r2]
	mov r0, sl
	adds r0, #0x36
	ldrb r0, [r0]
	subs r2, #0x25
	strb r0, [r2]
	mov r0, sl
	str r0, [r7, #0x10]
	adds r2, #0x23
	ldrb r0, [r2]
	orrs r0, r1
	strb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x3c
	movs r0, #0x82
	strb r0, [r1]
	ldr r2, _080A671C @ =sub_080A709C
	adds r0, r7, #0
	movs r1, #8
	movs r3, #0
	bl sub_0804277C
	adds r0, r7, #0
	mov r1, sp
	bl sub_08042848
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2]
	ldr r0, _080A6720 @ =sub_0803B9D0
	str r0, [r7, #4]
_080A66FA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A670C: .4byte 0x0808FCFC
_080A6710: .4byte sub_080A6724
_080A6714: .4byte 0xFFFFED00
_080A6718: .4byte 0x08226B58
_080A671C: .4byte sub_080A709C
_080A6720: .4byte sub_0803B9D0

	thumb_func_start sub_080A6724
sub_080A6724: @ 0x080A6724
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	ldr r5, [r0, #0x10]
	adds r0, r4, #0
	bl sub_0806D3AC
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	ldrb r0, [r4, #0xd]
	cmp r0, #0x63
	bhi _080A6768
	ldr r0, [r4, #0x40]
	ldr r2, _080A678C @ =0xFFF80000
	adds r0, r0, r2
	movs r1, #0xe0
	lsls r1, r1, #0x10
	cmp r0, r1
	bls _080A6756
	ldr r0, [r4, #0x48]
	rsbs r0, r0, #0
	str r0, [r4, #0x48]
_080A6756:
	ldr r0, [r4, #0x44]
	adds r0, r0, r2
	movs r1, #0x90
	lsls r1, r1, #0x10
	cmp r0, r1
	bls _080A6768
	ldr r0, [r4, #0x4c]
	rsbs r0, r0, #0
	str r0, [r4, #0x4c]
_080A6768:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806D128
	cmp r0, #0
	bne _080A6782
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xef
	bls _080A6790
_080A6782:
	adds r0, r4, #0
	bl EntityDelete
	b _080A67BE
	.align 2, 0
_080A678C: .4byte 0xFFF80000
_080A6790:
	cmp r5, #0
	beq _080A67B8
	ldr r0, [r5]
	cmp r0, #0
	beq _080A67B8
	adds r0, r5, #0
	adds r0, #0x36
	adds r1, r4, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080A67B8
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	beq _080A67B8
	adds r0, r4, #0
	bl sub_0803F17C
	b _080A67BE
_080A67B8:
	adds r0, r4, #0
	bl EntityDelete
_080A67BE:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A67C8
sub_080A67C8: @ 0x080A67C8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	ldr r2, _080A6834 @ =sub_080A68B0
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	ldr r3, [r7, #0x20]
	cmp r5, #0
	beq _080A68A4
	adds r0, r7, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, #4
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, #0x16
	strb r0, [r1]
	ldr r2, [r3]
	ldr r0, [r3, #4]
	adds r3, r5, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _080A6838 @ =0x08226B58
	ldrb r3, [r3]
	adds r0, r5, #0
	bl sub_0803B924
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0x24
	strb r0, [r1]
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _080A683C
	adds r0, r5, #0
	bl EntityDelete
	b _080A68A4
	.align 2, 0
_080A6834: .4byte sub_080A68B0
_080A6838: .4byte 0x08226B58
_080A683C:
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
	bl sub_0803E058
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x36
	strb r0, [r1]
	str r7, [r5, #0x10]
	ldrb r1, [r6]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r6]
	movs r0, #0xb0
	lsls r0, r0, #8
	str r0, [r5, #0x4c]
	movs r0, #0x20
	strb r0, [r5, #0x14]
	movs r0, #0x3c
	strb r0, [r5, #0xd]
	ldr r0, _080A68AC @ =sub_0803B9D0
	str r0, [r5, #4]
_080A68A4:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A68AC: .4byte sub_0803B9D0

	thumb_func_start sub_080A68B0
sub_080A68B0: @ 0x080A68B0
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r5, [r4, #0x10]
	cmp r5, #0
	bne _080A68BE
	b _080A6B34
_080A68BE:
	ldr r0, [r5]
	cmp r0, #0
	bne _080A68C6
	b _080A6B34
_080A68C6:
	adds r0, r5, #0
	adds r0, #0x36
	adds r1, r4, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _080A68D8
	b _080A6B34
_080A68D8:
	ldrb r1, [r4, #0xa]
	cmp r1, #0
	bne _080A6992
	ldrb r2, [r4, #0xc]
	adds r0, r2, #0
	cmp r0, #0
	bne _080A68F6
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080A693C
	b _080A6910
_080A68F6:
	cmp r0, #1
	bne _080A691C
	ldr r0, [r4, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	ldr r1, _080A6918 @ =0x0000FFFF
	cmp r0, r1
	ble _080A693C
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x4c]
_080A6910:
	adds r0, r2, #1
	strb r0, [r4, #0xc]
	b _080A693C
	.align 2, 0
_080A6918: .4byte 0x0000FFFF
_080A691C:
	ldr r0, [r4, #0x4c]
	ldr r2, _080A6950 @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r4, #0x4c]
	movs r2, #0xb0
	lsls r2, r2, #8
	cmp r0, r2
	bgt _080A693C
	str r2, [r4, #0x4c]
	strb r1, [r4, #0xc]
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	adds r1, #0x64
	strb r1, [r4, #0xd]
_080A693C:
	ldr r0, [r4, #0x48]
	adds r0, #0x80
	str r0, [r4, #0x48]
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	beq _080A6954
	subs r0, #1
	strb r0, [r4, #0x14]
	b _080A6970
	.align 2, 0
_080A6950: .4byte 0xFFFFFF00
_080A6954:
	bl RandomNumberGenerator
	movs r1, #0x3f
	ands r1, r0
	adds r1, #0x10
	strb r1, [r4, #0x14]
	bl RandomNumberGenerator
	movs r1, #7
	ands r1, r0
	adds r1, #9
	adds r0, r4, #0
	bl sub_080A6B50
_080A6970:
	ldrb r0, [r5, #0xa]
	adds r3, r4, #0
	adds r3, #0x58
	cmp r0, #3
	beq _080A697C
	b _080A6B14
_080A697C:
	movs r2, #0
	movs r1, #1
	strb r1, [r4, #0xa]
	movs r0, #0xc0
	lsls r0, r0, #1
	str r0, [r4, #0x50]
	strb r2, [r4, #0xb]
	strb r1, [r4, #0x14]
	movs r0, #0x10
	strb r0, [r4, #0xd]
	b _080A6B14
_080A6992:
	cmp r1, #1
	bne _080A6A32
	ldrb r2, [r4, #0xc]
	adds r0, r2, #0
	cmp r0, #0
	bne _080A69BA
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080A69FA
	adds r0, r2, #1
	strb r0, [r4, #0xc]
	movs r0, #0xa5
	lsls r0, r0, #1
	bl PlaySong
	b _080A69FA
_080A69BA:
	cmp r0, #1
	bne _080A69E0
	ldr r0, [r4, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	ldr r1, _080A69DC @ =0x0000FFFF
	cmp r0, r1
	ble _080A69FA
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x4c]
	adds r0, r2, #1
	strb r0, [r4, #0xc]
	b _080A69FA
	.align 2, 0
_080A69DC: .4byte 0x0000FFFF
_080A69E0:
	ldr r0, [r4, #0x4c]
	ldr r2, _080A6A10 @ =0xFFFFFC00
	adds r0, r0, r2
	str r0, [r4, #0x4c]
	movs r1, #0xb0
	lsls r1, r1, #8
	cmp r0, r1
	bgt _080A69FA
	str r1, [r4, #0x4c]
	movs r0, #0
	strb r0, [r4, #0xc]
	movs r0, #0x10
	strb r0, [r4, #0xd]
_080A69FA:
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x50]
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r0, _080A6A14 @ =0x000002FF
	cmp r1, r0
	bgt _080A6A18
	adds r0, r1, #2
	str r0, [r4, #0x50]
	b _080A6A1C
	.align 2, 0
_080A6A10: .4byte 0xFFFFFC00
_080A6A14: .4byte 0x000002FF
_080A6A18:
	movs r0, #2
	strb r0, [r4, #0xa]
_080A6A1C:
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	beq _080A6A28
	subs r0, #1
	strb r0, [r4, #0x14]
	b _080A6AE0
_080A6A28:
	bl RandomNumberGenerator
	movs r1, #0xf
	ands r1, r0
	b _080A6ACE
_080A6A32:
	cmp r1, #2
	bne _080A6AE6
	ldrb r2, [r4, #0xc]
	adds r0, r2, #0
	cmp r0, #0
	bne _080A6A5A
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080A6AA4
	adds r0, r2, #1
	strb r0, [r4, #0xc]
	movs r0, #0xa5
	lsls r0, r0, #1
	bl PlaySong
	b _080A6AA4
_080A6A5A:
	cmp r0, #1
	bne _080A6A80
	ldr r0, [r4, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	ldr r1, _080A6A7C @ =0x0000FFFF
	cmp r0, r1
	ble _080A6AA4
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x4c]
	adds r0, r2, #1
	strb r0, [r4, #0xc]
	b _080A6AA4
	.align 2, 0
_080A6A7C: .4byte 0x0000FFFF
_080A6A80:
	ldr r0, [r4, #0x4c]
	ldr r2, _080A6AC0 @ =0xFFFFFE00
	adds r0, r0, r2
	str r0, [r4, #0x4c]
	movs r1, #0xb0
	lsls r1, r1, #8
	cmp r0, r1
	bgt _080A6AA4
	str r1, [r4, #0x4c]
	movs r0, #0
	strb r0, [r4, #0xc]
	movs r0, #0x10
	strb r0, [r4, #0xd]
	ldr r0, [r4, #0x50]
	cmp r0, #0x40
	bgt _080A6AA4
	movs r0, #3
	strb r0, [r4, #0xa]
_080A6AA4:
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x50]
	adds r0, r0, r1
	str r0, [r4, #0x48]
	cmp r1, #0x40
	ble _080A6AB4
	subs r0, r1, #4
	str r0, [r4, #0x50]
_080A6AB4:
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	beq _080A6AC4
	subs r0, #1
	strb r0, [r4, #0x14]
	b _080A6AE0
	.align 2, 0
_080A6AC0: .4byte 0xFFFFFE00
_080A6AC4:
	bl RandomNumberGenerator
	movs r1, #0x1f
	ands r1, r0
	adds r1, #0x20
_080A6ACE:
	strb r1, [r4, #0x14]
	bl RandomNumberGenerator
	movs r1, #7
	ands r1, r0
	adds r1, #9
	adds r0, r4, #0
	bl sub_080A6B50
_080A6AE0:
	adds r3, r4, #0
	adds r3, #0x58
	b _080A6B14
_080A6AE6:
	adds r3, r4, #0
	adds r3, #0x58
	cmp r1, #3
	bne _080A6B14
	ldr r0, [r4, #0x4c]
	ldr r1, _080A6B30 @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #8
	cmp r0, r1
	bgt _080A6B0C
	str r1, [r4, #0x4c]
	movs r0, #1
	strb r0, [r5, #0x15]
	ldrb r0, [r3]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3]
_080A6B0C:
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x50]
	adds r0, r0, r1
	str r0, [r4, #0x48]
_080A6B14:
	ldr r0, [r4, #0x48]
	ldr r2, [r4, #0x4c]
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
	b _080A6B48
	.align 2, 0
_080A6B30: .4byte 0xFFFFFE00
_080A6B34:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r4, #0
	bl EntityDelete
_080A6B48:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A6B50
sub_080A6B50: @ 0x080A6B50
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r2, _080A6BDC @ =sub_080A70CC
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	ldr r0, [r5, #0x10]
	ldr r3, [r0, #0x20]
	cmp r4, #0
	beq _080A6BD4
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, #4
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldr r2, [r3]
	ldr r0, [r3, #4]
	adds r3, r4, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _080A6BE0 @ =0x08226B58
	ldrb r3, [r3]
	adds r0, r4, #0
	bl sub_0803B924
	lsls r1, r6, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x36
	strb r0, [r1]
	str r5, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _080A6BE4 @ =sub_0803B9D0
	str r0, [r4, #4]
_080A6BD4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A6BDC: .4byte sub_080A70CC
_080A6BE0: .4byte 0x08226B58
_080A6BE4: .4byte sub_0803B9D0

	thumb_func_start sub_080A6BE8
sub_080A6BE8: @ 0x080A6BE8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r2, _080A6C70 @ =sub_080A70CC
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	ldr r3, [r5, #0x20]
	cmp r4, #0
	beq _080A6C6A
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, #4
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, #0x16
	strb r0, [r1]
	ldr r2, [r3]
	ldr r0, [r3, #4]
	adds r3, r4, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _080A6C74 @ =0x08226B58
	ldrb r3, [r3]
	adds r0, r4, #0
	bl sub_0803B924
	lsls r1, r6, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x36
	strb r0, [r1]
	str r5, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _080A6C78 @ =sub_0803B9D0
	str r0, [r4, #4]
_080A6C6A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A6C70: .4byte sub_080A70CC
_080A6C74: .4byte 0x08226B58
_080A6C78: .4byte sub_0803B9D0

	thumb_func_start sub_080A6C7C
sub_080A6C7C: @ 0x080A6C7C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r7, r0, #0
	mov r8, r1
	mov sb, r2
	ldr r2, _080A6CF4 @ =sub_080A6D88
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	ldr r3, [r7, #0x20]
	cmp r5, #0
	beq _080A6D6E
	adds r0, r7, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, #4
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldr r2, [r3]
	ldr r0, [r3, #4]
	adds r3, r5, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _080A6CF8 @ =0x08226B58
	ldrb r3, [r3]
	adds r0, r5, #0
	bl sub_0803B924
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0x4a
	strb r0, [r1]
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _080A6CFC
	adds r0, r5, #0
	bl EntityDelete
	b _080A6D6E
	.align 2, 0
_080A6CF4: .4byte sub_080A6D88
_080A6CF8: .4byte 0x08226B58
_080A6CFC:
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
	bl sub_0803E058
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x36
	strb r0, [r1]
	str r7, [r5, #0x10]
	ldrb r1, [r6]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r6]
	bl RandomNumberGenerator
	ldr r1, _080A6D7C @ =0x000003FF
	ands r1, r0
	ldr r0, _080A6D80 @ =0xFFFFFE00
	adds r1, r1, r0
	str r1, [r5, #0x50]
	adds r0, r5, #0
	mov r1, r8
	mov r2, sb
	bl sub_0806D2F8
	ldr r0, _080A6D84 @ =sub_0803B9D0
	str r0, [r5, #4]
_080A6D6E:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A6D7C: .4byte 0x000003FF
_080A6D80: .4byte 0xFFFFFE00
_080A6D84: .4byte sub_0803B9D0

	thumb_func_start sub_080A6D88
sub_080A6D88: @ 0x080A6D88
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r1, [r5, #0x50]
	ldrh r0, [r5, #0x18]
	adds r0, r0, r1
	strh r0, [r5, #0x18]
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldrh r0, [r5, #0x18]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r6, r5, #0
	adds r6, #0x58
	ldrb r1, [r6]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	lsrs r4, r1, #7
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806D128
	cmp r0, #0
	beq _080A6DE2
	ldrb r0, [r6]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r5, #0
	bl EntityDelete
_080A6DE2:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A6DEC
sub_080A6DEC: @ 0x080A6DEC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r7, r1, #0
	mov r8, r2
	ldr r2, _080A6EC0 @ =sub_080A70F0
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r6, r0, #0
	ldr r3, [r4, #0x20]
	cmp r6, #0
	beq _080A6EB4
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r6, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, #4
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldr r2, [r3]
	ldr r0, [r3, #4]
	adds r3, r6, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _080A6EC4 @ =0x08226B58
	ldrb r3, [r3]
	adds r0, r6, #0
	bl sub_0803B924
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	adds r0, #0x4b
	adds r1, r6, #0
	adds r1, #0x65
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r0, [r0]
	subs r1, #0x2f
	strb r0, [r1]
	str r4, [r6, #0x10]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	bl RandomNumberGenerator
	ldr r1, _080A6EC8 @ =0x000003FF
	ands r1, r0
	ldr r0, _080A6ECC @ =0xFFFFFE00
	adds r1, r1, r0
	str r1, [r6, #0x50]
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
	adds r0, r6, #0
	adds r1, r7, #0
	mov r2, r8
	bl sub_0806D2F8
	ldr r0, _080A6ED0 @ =sub_0803B9D0
	str r0, [r6, #4]
_080A6EB4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A6EC0: .4byte sub_080A70F0
_080A6EC4: .4byte 0x08226B58
_080A6EC8: .4byte 0x000003FF
_080A6ECC: .4byte 0xFFFFFE00
_080A6ED0: .4byte sub_0803B9D0

	thumb_func_start EnemyChaos2Update
EnemyChaos2Update: @ 0x080A6ED4
	push {r4, lr}
	sub sp, #0x34
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _080A6F0A
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
	beq _080A6EFE
	adds r0, r4, #0
	bl sub_08021924
_080A6EFE:
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _080A6F0A
	adds r0, r4, #0
	bl sub_0806AE54
_080A6F0A:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080A6F2C
	cmp r0, #1
	bgt _080A6F1A
	cmp r0, #0
	beq _080A6F24
	b _080A6F42
_080A6F1A:
	cmp r0, #2
	beq _080A6F34
	cmp r0, #3
	beq _080A6F3C
	b _080A6F42
_080A6F24:
	adds r0, r4, #0
	bl sub_080A4728
	b _080A6F42
_080A6F2C:
	adds r0, r4, #0
	bl sub_080A4508
	b _080A6F42
_080A6F34:
	adds r0, r4, #0
	bl sub_080A71B0
	b _080A6F42
_080A6F3C:
	adds r0, r4, #0
	bl sub_080A49E0
_080A6F42:
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806E314
	add sp, #0x34
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A6F58
sub_080A6F58: @ 0x080A6F58
	ldr r2, [r0, #0x20]
	movs r0, #0
	str r0, [r2, #0x18]
	str r0, [r2, #0x1c]
	str r0, [r2, #0x20]
	str r1, [r2, #0x24]
	bx lr
	.align 2, 0

	thumb_func_start sub_080A6F68
sub_080A6F68: @ 0x080A6F68
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

	thumb_func_start sub_080A6F94
sub_080A6F94: @ 0x080A6F94
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

	thumb_func_start sub_080A6FC0
sub_080A6FC0: @ 0x080A6FC0
	push {lr}
	movs r2, #0
	movs r1, #9
	strb r1, [r0, #0xa]
	strb r2, [r0, #0xb]
	movs r1, #0x3c
	strb r1, [r0, #0xd]
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	movs r0, #0x67
	bl PlaySong
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A6FE4
sub_080A6FE4: @ 0x080A6FE4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _080A703C @ =gEwramData
	ldr r1, [r0]
	ldr r0, _080A7040 @ =0x00013168
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	ldr r4, [r5, #0x14]
	adds r0, r0, r4
	str r0, [r5, #0x40]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	ldr r3, [r5, #0x18]
	adds r0, r0, r3
	str r0, [r5, #0x44]
	ldr r2, [r5, #0x48]
	ldr r0, [r5, #0x50]
	adds r2, r2, r0
	str r2, [r5, #0x48]
	ldr r1, [r5, #0x4c]
	ldr r0, [r5, #0x54]
	adds r1, r1, r0
	str r1, [r5, #0x4c]
	adds r4, r4, r2
	str r4, [r5, #0x14]
	adds r3, r3, r1
	str r3, [r5, #0x18]
	adds r0, r5, #0
	bl sub_0803F17C
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080A7034
	adds r0, r5, #0
	bl EntityDelete
_080A7034:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A703C: .4byte gEwramData
_080A7040: .4byte 0x00013168

	thumb_func_start sub_080A7044
sub_080A7044: @ 0x080A7044
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

	thumb_func_start sub_080A7070
sub_080A7070: @ 0x080A7070
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

	thumb_func_start sub_080A709C
sub_080A709C: @ 0x080A709C
	push {lr}
	sub sp, #0x10
	mov r2, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	movs r3, #0
	strh r1, [r2]
	movs r1, #0x10
	strh r1, [r2, #2]
	mov r1, sp
	strh r3, [r1, #4]
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

	thumb_func_start sub_080A70CC
sub_080A70CC: @ 0x080A70CC
	push {lr}
	adds r2, r0, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080A70E4
	adds r0, r2, #0
	bl EntityDelete
	b _080A70EA
_080A70E4:
	adds r0, r2, #0
	bl sub_0803F17C
_080A70EA:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A70F0
sub_080A70F0: @ 0x080A70F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806D128
	cmp r0, #0
	beq _080A7124
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r4, #0
	bl EntityDelete
_080A7124:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyChaos2Create
EnemyChaos2Create: @ 0x080A712C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r7, [r6, #0x20]
	ldr r0, _080A7190 @ =0x08119224
	movs r1, #0
	bl sub_0803B800
	mov r8, r0
	cmp r0, #0
	blt _080A71A4
	ldr r4, _080A7194 @ =0x0820AD70
	adds r0, r4, #0
	movs r1, #0
	bl sub_08068264
	adds r5, r6, #0
	adds r5, #0x2c
	strb r0, [r5]
	mov r0, r8
	str r0, [r7]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08068264
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [r7, #4]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08068264
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [r7, #8]
	ldr r1, _080A7198 @ =0x08528374
	adds r0, r6, #0
	bl sub_080A6F58
	ldr r1, _080A719C @ =0x08226B58
	ldrb r3, [r5]
	adds r0, r6, #0
	mov r2, r8
	bl sub_0803B924
	ldr r0, _080A71A0 @ =sub_0803B9D0
	str r0, [r6, #4]
	movs r0, #1
	b _080A71A6
	.align 2, 0
_080A7190: .4byte 0x08119224
_080A7194: .4byte 0x0820AD70
_080A7198: .4byte 0x08528374
_080A719C: .4byte 0x08226B58
_080A71A0: .4byte sub_0803B9D0
_080A71A4:
	movs r0, #0
_080A71A6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080A71B0
sub_080A71B0: @ 0x080A71B0
	bx lr
	.align 2, 0

	thumb_func_start EnemyErinysUpdate
EnemyErinysUpdate: @ 0x080A71B4
	push {lr}
	bl EnemyValkyrieUpdate
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyErinysCreate
EnemyErinysCreate: @ 0x080A71C0
	push {lr}
	bl EnemyValkyrieCreate
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyTsuchinokoCreate
EnemyTsuchinokoCreate: @ 0x080A71CC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080A7ADC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A71E2
	adds r0, r4, #0
	bl EntityDelete
	b _080A7284
_080A71E2:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r0, _080A7210 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080A7214
	movs r0, #3
	strb r0, [r4, #0xa]
	b _080A7284
	.align 2, 0
_080A7210: .4byte gEwramData
_080A7214:
	adds r0, r4, #0
	bl sub_0806D260
	cmp r0, #1
	ble _080A7234
	ldr r2, _080A722C @ =sub_080A7B28
	ldr r3, _080A7230 @ =sub_080A76E0
	adds r0, r4, #0
	movs r1, #8
	bl sub_080427B8
	b _080A7240
	.align 2, 0
_080A722C: .4byte sub_080A7B28
_080A7230: .4byte sub_080A76E0
_080A7234:
	ldr r2, _080A728C @ =sub_080A7B28
	ldr r3, _080A7290 @ =sub_080A76E0
	adds r0, r4, #0
	movs r1, #8
	bl sub_0804277C
_080A7240:
	adds r0, r4, #0
	bl sub_0806B1FC
	adds r0, r4, #0
	bl sub_0806AF98
	movs r0, #0
	strb r0, [r4, #0xa]
	ldrh r0, [r4, #0x34]
	strh r0, [r4, #0x14]
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x18
	bls _080A7284
	movs r0, #0xc
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r4, #0
	adds r1, #0x6f
	movs r0, #0
	strb r0, [r1]
	subs r1, #1
	movs r0, #8
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803F17C
_080A7284:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A728C: .4byte sub_080A7B28
_080A7290: .4byte sub_080A76E0

	thumb_func_start sub_080A7294
sub_080A7294: @ 0x080A7294
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #0xc
	bls _080A72A2
	b _080A752A
_080A72A2:
	lsls r0, r0, #2
	ldr r1, _080A72AC @ =_080A72B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A72AC: .4byte _080A72B0
_080A72B0: @ jump table
	.4byte _080A72E4 @ case 0
	.4byte _080A7344 @ case 1
	.4byte _080A7404 @ case 2
	.4byte _080A752A @ case 3
	.4byte _080A752A @ case 4
	.4byte _080A752A @ case 5
	.4byte _080A752A @ case 6
	.4byte _080A752A @ case 7
	.4byte _080A752A @ case 8
	.4byte _080A752A @ case 9
	.4byte _080A74A0 @ case 10
	.4byte _080A74CA @ case 11
	.4byte _080A74F0 @ case 12
_080A72E4:
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
	bne _080A7330
	adds r0, r5, #0
	bl sub_0806D54C
	cmp r0, #0
	bne _080A7330
	b _080A752A
_080A7330:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _080A752A
_080A7344:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #2
	beq _080A7350
	b _080A752A
_080A7350:
	adds r6, r5, #0
	adds r6, #0x42
	ldrh r0, [r6]
	subs r0, #0x3c
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r5, #0
	adds r4, #0x46
	ldrh r1, [r4]
	subs r1, #0x64
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x78
	movs r3, #0xc8
	bl sub_0806CFFC
	cmp r0, #0
	beq _080A7398
	adds r0, r5, #0
	bl sub_0806CF2C
	movs r3, #0
	cmp r0, #0
	bne _080A7382
	movs r3, #1
_080A7382:
	adds r1, r5, #0
	adds r1, #0x58
	lsls r3, r3, #6
	ldrb r2, [r1]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r3
	strb r0, [r1]
	adds r4, r1, #0
	b _080A73D0
_080A7398:
	ldrh r0, [r6]
	subs r0, #0x64
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r4]
	subs r1, #0x64
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xc8
	movs r3, #0xc8
	bl sub_0806CFFC
	adds r4, r5, #0
	adds r4, #0x58
	cmp r0, #0
	bne _080A73D0
	adds r0, r5, #0
	bl sub_0806CF2C
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r4]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
_080A73D0:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	ldr r0, _080A73F4 @ =0xFFFE8000
	str r0, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080A73F8
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r5, #0x48]
	b _080A752A
	.align 2, 0
_080A73F4: .4byte 0xFFFE8000
_080A73F8:
	ldr r0, _080A7400 @ =0xFFFF0000
	str r0, [r5, #0x48]
	b _080A752A
	.align 2, 0
_080A7400: .4byte 0xFFFF0000
_080A7404:
	movs r1, #0x80
	lsls r1, r1, #9
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08069A00
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806B120
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	bne _080A742C
	b _080A752A
_080A742C:
	bl RandomNumberGenerator
	movs r4, #0x7f
	ands r0, r4
	cmp r0, #0xf
	bhi _080A7442
	movs r1, #0
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xb]
	b _080A752A
_080A7442:
	bl RandomNumberGenerator
	ands r0, r4
	cmp r0, #0xf
	bls _080A7488
	movs r1, #0x14
	ldrsh r0, [r5, r1]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r2, #0x34
	ldrsh r1, [r5, r2]
	cmp r0, r1
	blt _080A7468
	bl RandomNumberGenerator
	ands r0, r4
	cmp r0, #0x1f
	bls _080A7488
_080A7468:
	movs r0, #0x14
	ldrsh r1, [r5, r0]
	cmp r1, #0
	bge _080A7472
	adds r1, #3
_080A7472:
	asrs r1, r1, #2
	movs r2, #0x34
	ldrsh r0, [r5, r2]
	cmp r1, r0
	blt _080A748E
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x3f
	bhi _080A748E
_080A7488:
	movs r0, #0xa
	strb r0, [r5, #0xb]
	b _080A752A
_080A748E:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #1
	strb r0, [r5, #0xb]
	b _080A752A
_080A74A0:
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
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
	b _080A74E2
_080A74CA:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrh r1, [r0]
	ldr r0, _080A74EC @ =0x00001403
	cmp r1, r0
	bne _080A752A
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080A74E2:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	b _080A752A
	.align 2, 0
_080A74EC: .4byte 0x00001403
_080A74F0:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #1
	bls _080A7516
	ldrb r1, [r5, #0xd]
	adds r0, r1, #1
	strb r0, [r5, #0xd]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080A7516
	adds r0, r5, #0
	bl sub_080A78A4
	movs r0, #0xa9
	lsls r0, r0, #1
	bl PlaySong
_080A7516:
	adds r1, r5, #0
	adds r1, #0x59
	ldrb r2, [r1]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _080A752A
	movs r0, #8
	orrs r0, r2
	strb r0, [r1]
_080A752A:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A7534
sub_080A7534: @ 0x080A7534
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xb]
	cmp r5, #0
	beq _080A7544
	cmp r5, #1
	beq _080A7574
	b _080A75AA
_080A7544:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
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
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	b _080A75AA
_080A7574:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #3
	bne _080A758A
	adds r0, r4, #0
	bl sub_080A776C
	movs r0, #0x85
	bl PlaySong
_080A758A:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080A75AA
	movs r0, #0
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080A75AA:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A75B0
sub_080A75B0: @ 0x080A75B0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldrb r0, [r7, #0xb]
	cmp r0, #0
	beq _080A75C8
	cmp r0, #1
	beq _080A762C
	b _080A76C0
_080A75C8:
	str r0, [r7, #0x48]
	str r0, [r7, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r7, #0x54]
	bl RandomNumberGenerator
	ldr r5, _080A76D0 @ =0x0007FFFF
	ands r0, r5
	ldr r1, [r7, #0x40]
	adds r1, r1, r0
	ldr r4, _080A76D4 @ =0xFFFC0000
	adds r1, r1, r4
	mov sb, r1
	bl RandomNumberGenerator
	ands r0, r5
	ldr r1, [r7, #0x44]
	adds r1, r1, r0
	adds r1, r1, r4
	mov r8, r1
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r6, _080A76D8 @ =0x0001FFFF
	ands r4, r6
	ldr r5, _080A76DC @ =0xFFFF0000
	adds r4, r4, r5
	bl RandomNumberGenerator
	adds r3, r0, #0
	ands r3, r6
	adds r3, r3, r5
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	mov r0, sb
	mov r1, r8
	adds r2, r4, #0
	bl sub_0806DD64
	movs r0, #0x3c
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
_080A762C:
	ldrb r0, [r7, #0xd]
	cmp r0, #0x34
	bne _080A7682
	bl RandomNumberGenerator
	ldr r5, _080A76D0 @ =0x0007FFFF
	ands r0, r5
	ldr r1, [r7, #0x40]
	adds r1, r1, r0
	ldr r4, _080A76D4 @ =0xFFFC0000
	adds r1, r1, r4
	mov sb, r1
	bl RandomNumberGenerator
	ands r0, r5
	ldr r1, [r7, #0x44]
	adds r1, r1, r0
	adds r1, r1, r4
	mov r8, r1
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r6, _080A76D8 @ =0x0001FFFF
	ands r4, r6
	ldr r5, _080A76DC @ =0xFFFF0000
	adds r4, r4, r5
	bl RandomNumberGenerator
	adds r3, r0, #0
	ands r3, r6
	adds r3, r3, r5
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	mov r0, sb
	mov r1, r8
	adds r2, r4, #0
	bl sub_0806DD64
_080A7682:
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r7, #0
	bl sub_0806D3D8
	ldrb r0, [r7, #0xd]
	bl sub_0806D518
	adds r3, r7, #0
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
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080A76C0
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080A76C0:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A76D0: .4byte 0x0007FFFF
_080A76D4: .4byte 0xFFFC0000
_080A76D8: .4byte 0x0001FFFF
_080A76DC: .4byte 0xFFFF0000

	thumb_func_start sub_080A76E0
sub_080A76E0: @ 0x080A76E0
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
	bgt _080A7762
	adds r0, r6, #0
	bl sub_080683BC
	movs r0, #0x70
	bl PlaySong
	ldr r1, _080A7768 @ =0x085283FC
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F0E4
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
	movs r0, #0
	strb r0, [r6, #0xb]
_080A7762:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A7768: .4byte 0x085283FC

	thumb_func_start sub_080A776C
sub_080A776C: @ 0x080A776C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r2, _080A7814 @ =sub_080A79D8
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	beq _080A784E
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_080A7A18
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A7794
	adds r0, r5, #0
	bl EntityDelete
_080A7794:
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	adds r0, r5, #0
	bl sub_080A785C
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	str r6, [r5, #0x10]
	adds r3, r6, #0
	adds r3, #0x58
	ldrb r0, [r3]
	adds r4, r5, #0
	adds r4, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r4]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r2, r5, #0
	adds r2, #0x42
	strh r0, [r2]
	adds r0, r6, #0
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0x1a
	adds r2, r5, #0
	adds r2, #0x46
	strh r0, [r2]
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080A7818
	movs r0, #0xc0
	lsls r0, r0, #0xa
	b _080A781A
	.align 2, 0
_080A7814: .4byte sub_080A79D8
_080A7818:
	ldr r0, _080A7854 @ =0xFFFD0000
_080A781A:
	str r0, [r5, #0x48]
	ldr r0, _080A7858 @ =0xFFFF0000
	str r0, [r5, #0x4c]
	movs r0, #0
	str r0, [r5, #0x50]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r5, #0x54]
	adds r0, r6, #0
	adds r0, #0x37
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x37
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x2c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x3c
	strb r1, [r0]
_080A784E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A7854: .4byte 0xFFFD0000
_080A7858: .4byte 0xFFFF0000

	thumb_func_start sub_080A785C
sub_080A785C: @ 0x080A785C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _080A7898 @ =0x0808FCFC
	str r0, [sp]
	ldr r2, _080A789C @ =sub_080A7A54
	ldr r3, _080A78A0 @ =sub_080A7A90
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_0804277C
	adds r0, r4, #0
	mov r1, sp
	bl sub_080428B4
	adds r0, r4, #0
	mov r1, sp
	bl sub_08042848
	adds r4, #0x72
	ldrb r1, [r4]
	movs r0, #0xfd
	ands r0, r1
	movs r1, #0xfb
	ands r0, r1
	strb r0, [r4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A7898: .4byte 0x0808FCFC
_080A789C: .4byte sub_080A7A54
_080A78A0: .4byte sub_080A7A90

	thumb_func_start sub_080A78A4
sub_080A78A4: @ 0x080A78A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	ldr r2, _080A78D4 @ =sub_080A7AAC
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r7, r0, #0
	cmp r7, #0
	beq _080A79B6
	ldr r0, _080A78D8 @ =0x081CC0B4
	bl sub_0803AFB8
	adds r2, r0, #0
	cmp r2, #0
	bge _080A78DC
	movs r0, #0
	mov r6, r8
	adds r6, #0x2c
	b _080A78F2
	.align 2, 0
_080A78D4: .4byte sub_080A7AAC
_080A78D8: .4byte 0x081CC0B4
_080A78DC:
	ldr r1, _080A79C4 @ =0x0822952C
	mov r4, r8
	adds r4, #0x2c
	ldrb r3, [r4]
	adds r0, r7, #0
	bl sub_0803B924
	ldr r0, _080A79C8 @ =sub_0803B9D0
	str r0, [r7, #4]
	movs r0, #1
	adds r6, r4, #0
_080A78F2:
	cmp r0, #0
	bne _080A78FC
	adds r0, r7, #0
	bl EntityDelete
_080A78FC:
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0xc
	movs r0, #0
	mov sb, r0
	movs r0, #0x12
	strb r0, [r2]
	adds r2, #0xd
	ldrb r0, [r2]
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	mov r0, r8
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r7, #0
	adds r1, #0x5c
	strb r0, [r1]
	mov r0, r8
	str r0, [r7, #0x10]
	bl RandomNumberGenerator
	movs r5, #1
	adds r4, r7, #0
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
	mov r0, r8
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	mov r0, r8
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, #4
	strh r0, [r1]
	bl RandomNumberGenerator
	ldr r1, _080A79CC @ =0x0001FFFF
	ands r1, r0
	ldr r4, _080A79D0 @ =0xFFFF0000
	adds r1, r1, r4
	str r1, [r7, #0x48]
	bl RandomNumberGenerator
	ldr r1, _080A79D4 @ =0x0000FFFF
	ands r1, r0
	subs r4, r4, r1
	str r4, [r7, #0x4c]
	mov r0, sb
	str r0, [r7, #0x50]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r7, #0x54]
	mov r0, r8
	adds r0, #0x37
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x37
	strb r0, [r1]
	ldrb r1, [r6]
	adds r0, r7, #0
	adds r0, #0x2c
	strb r1, [r0]
	mov r0, r8
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x3c
	strb r1, [r0]
_080A79B6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A79C4: .4byte 0x0822952C
_080A79C8: .4byte sub_0803B9D0
_080A79CC: .4byte 0x0001FFFF
_080A79D0: .4byte 0xFFFF0000
_080A79D4: .4byte 0x0000FFFF

	thumb_func_start sub_080A79D8
sub_080A79D8: @ 0x080A79D8
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080A7A02
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r4, #0
	bl sub_0806D3D8
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806D128
	cmp r0, #0
	beq _080A7A02
	adds r0, r4, #0
	bl EntityDelete
	b _080A7A10
_080A7A02:
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	adds r0, r4, #0
	bl sub_0803F17C
_080A7A10:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080A7A18
sub_080A7A18: @ 0x080A7A18
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _080A7A40 @ =0x081CC0B4
	bl sub_0803AFB8
	adds r2, r0, #0
	cmp r2, #0
	blt _080A7A4C
	ldr r1, _080A7A44 @ =0x0822952C
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r5, #0
	bl sub_0803B924
	ldr r0, _080A7A48 @ =sub_0803B9D0
	str r0, [r5, #4]
	movs r0, #1
	b _080A7A4E
	.align 2, 0
_080A7A40: .4byte 0x081CC0B4
_080A7A44: .4byte 0x0822952C
_080A7A48: .4byte sub_0803B9D0
_080A7A4C:
	movs r0, #0
_080A7A4E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A7A54
sub_080A7A54: @ 0x080A7A54
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	mov r1, sp
	adds r0, #0x3c
	ldrb r0, [r0]
	movs r2, #0
	strh r0, [r1]
	movs r0, #0x40
	strh r0, [r1, #2]
	mov r0, sp
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	ldr r0, [r4, #0x40]
	str r0, [sp, #8]
	ldr r0, [r4, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	adds r4, #0x59
	ldrb r0, [r4]
	movs r1, #8
	orrs r0, r1
	strb r0, [r4]
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A7A90
sub_080A7A90: @ 0x080A7A90
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r2, #4]
	bl sub_08021530
	adds r4, #0x59
	ldrb r0, [r4]
	movs r1, #8
	orrs r0, r1
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A7AAC
sub_080A7AAC: @ 0x080A7AAC
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080A7AD4
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r4, #0
	bl sub_0806D3D8
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806D128
	cmp r0, #0
	beq _080A7AD4
	adds r0, r4, #0
	bl EntityDelete
_080A7AD4:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080A7ADC
sub_080A7ADC: @ 0x080A7ADC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080A7B10 @ =0x081CC0B4
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _080A7B20
	ldr r0, _080A7B14 @ =0x0820AFDC
	movs r1, #0
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _080A7B18 @ =0x0822952C
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _080A7B1C @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _080A7B22
	.align 2, 0
_080A7B10: .4byte 0x081CC0B4
_080A7B14: .4byte 0x0820AFDC
_080A7B18: .4byte 0x0822952C
_080A7B1C: .4byte sub_0803B9D0
_080A7B20:
	movs r0, #0
_080A7B22:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A7B28
sub_080A7B28: @ 0x080A7B28
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

	thumb_func_start EnemyTsuchinokoUpdate
EnemyTsuchinokoUpdate: @ 0x080A7B54
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080A7B66
	adds r0, r4, #0
	bl sub_0806AE54
_080A7B66:
	adds r0, r4, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _080A7B80
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080A7B80
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	b _080A7BC6
_080A7B80:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080A7BA2
	cmp r0, #1
	bgt _080A7B90
	cmp r0, #0
	beq _080A7B9A
	b _080A7BBA
_080A7B90:
	cmp r0, #2
	beq _080A7BAA
	cmp r0, #3
	beq _080A7BB2
	b _080A7BBA
_080A7B9A:
	adds r0, r4, #0
	bl sub_080A7294
	b _080A7BBA
_080A7BA2:
	adds r0, r4, #0
	bl sub_080A7534
	b _080A7BBA
_080A7BAA:
	adds r0, r4, #0
	bl sub_080A75B0
	b _080A7BBA
_080A7BB2:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080A7BC6
_080A7BBA:
	adds r0, r4, #0
	bl sub_0806DF20
	adds r0, r4, #0
	bl sub_0806E314
_080A7BC6:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemySkyFishUpdate
EnemySkyFishUpdate: @ 0x080A7BD0
	push {r4, r5, r6, lr}
	sub sp, #0x34
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080A7BFA
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
	beq _080A7BFA
	adds r0, r5, #0
	bl sub_08021924
_080A7BFA:
	adds r0, r5, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _080A7C1C
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080A7C78
	movs r0, #0x18
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _080A7C78
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
	b _080A7C78
_080A7C1C:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080A7C3A
	cmp r0, #1
	bgt _080A7C2C
	cmp r0, #0
	beq _080A7C32
	b _080A7C4A
_080A7C2C:
	cmp r0, #2
	beq _080A7C42
	b _080A7C4A
_080A7C32:
	adds r0, r5, #0
	bl sub_080A7D58
	b _080A7C4A
_080A7C3A:
	adds r0, r5, #0
	bl sub_080A7F08
	b _080A7C4A
_080A7C42:
	adds r0, r5, #0
	bl sub_0803F17C
	b _080A7C78
_080A7C4A:
	adds r6, r5, #0
	adds r6, #0x65
	ldrb r4, [r6]
	adds r0, r5, #0
	bl sub_0803F17C
	ldrb r6, [r6]
	cmp r4, r6
	beq _080A7C62
	adds r0, r5, #0
	bl sub_0806B1FC
_080A7C62:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080A7C78
	movs r0, #0x18
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _080A7C78
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
_080A7C78:
	add sp, #0x34
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start EnemySkyFishCreate
EnemySkyFishCreate: @ 0x080A7C80
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080A8194
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A7C96
	adds r0, r5, #0
	bl EntityDelete
	b _080A7D48
_080A7C96:
	ldr r1, _080A7CD8 @ =0x08528404
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F0E4
	adds r0, r5, #0
	bl sub_0803F17C
	adds r0, r5, #0
	bl sub_0806B04C
	ldr r0, _080A7CDC @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080A7CE0
	movs r0, #2
	strb r0, [r5, #0xa]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	b _080A7D48
	.align 2, 0
_080A7CD8: .4byte 0x08528404
_080A7CDC: .4byte gEwramData
_080A7CE0:
	adds r0, r5, #0
	adds r0, #0x5c
	movs r1, #3
	strb r1, [r0]
	adds r0, r5, #0
	bl sub_0806D260
	cmp r0, #1
	ble _080A7D08
	ldr r2, _080A7D00 @ =sub_080A81E0
	ldr r3, _080A7D04 @ =sub_080A7FB8
	adds r0, r5, #0
	movs r1, #8
	bl sub_080427B8
	b _080A7D14
	.align 2, 0
_080A7D00: .4byte sub_080A81E0
_080A7D04: .4byte sub_080A7FB8
_080A7D08:
	ldr r2, _080A7D50 @ =sub_080A81E0
	ldr r3, _080A7D54 @ =sub_080A7FB8
	adds r0, r5, #0
	movs r1, #8
	bl sub_0804277C
_080A7D14:
	adds r0, r5, #0
	bl sub_0806B1FC
	adds r0, r5, #0
	bl sub_0806AF98
	movs r0, #0
	strb r0, [r5, #0xa]
	movs r4, #1
	strb r4, [r5, #0x18]
	bl RandomNumberGenerator
	movs r1, #0x3f
	ands r1, r0
	adds r1, #0x40
	strh r1, [r5, #0x1a]
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	bl RandomNumberGenerator
	ands r0, r4
	strb r0, [r5, #0x19]
_080A7D48:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A7D50: .4byte sub_080A81E0
_080A7D54: .4byte sub_080A7FB8

	thumb_func_start sub_080A7D58
sub_080A7D58: @ 0x080A7D58
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	ldrb r6, [r7, #0xb]
	cmp r6, #1
	beq _080A7E08
	cmp r6, #1
	bgt _080A7D72
	cmp r6, #0
	beq _080A7D7A
	b _080A7EF8
_080A7D72:
	cmp r6, #2
	bne _080A7D78
	b _080A7EAA
_080A7D78:
	b _080A7EF8
_080A7D7A:
	movs r0, #0x19
	ldrsb r0, [r7, r0]
	cmp r0, #0
	beq _080A7D88
	movs r0, #0x80
	lsls r0, r0, #0x11
	b _080A7D8A
_080A7D88:
	ldr r0, _080A7DF8 @ =0xFFF00000
_080A7D8A:
	str r0, [r7, #0x40]
	bl RandomNumberGenerator
	ldr r1, _080A7DFC @ =0x001FFFFF
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #0xe
	adds r1, r1, r0
	str r1, [r7, #0x44]
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
	ldr r0, _080A7E00 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080A7E04 @ =0x000004BE
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080A7E9C
	ldrh r0, [r7, #0x1a]
	subs r1, r0, #1
	strh r1, [r7, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _080A7DD8
	b _080A7EF8
_080A7DD8:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	ldrb r0, [r3]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r0
	strb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080A7DF2
	b _080A7EF4
_080A7DF2:
	movs r0, #0xd0
	lsls r0, r0, #0xd
	b _080A7EF6
	.align 2, 0
_080A7DF8: .4byte 0xFFF00000
_080A7DFC: .4byte 0x001FFFFF
_080A7E00: .4byte gEwramData
_080A7E04: .4byte 0x000004BE
_080A7E08:
	bl RandomNumberGenerator
	ldr r4, _080A7E78 @ =0x000FFFFF
	ands r0, r4
	ldr r5, [r7, #0x40]
	adds r5, r5, r0
	ldr r0, _080A7E7C @ =0xFFF80000
	mov r8, r0
	add r5, r8
	bl RandomNumberGenerator
	ands r0, r4
	ldr r4, [r7, #0x44]
	adds r4, r4, r0
	add r4, r8
	adds r0, r7, #0
	bl sub_0806D3AC
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r3, [r0]
	adds r3, #1
	str r6, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080A8040
	ldr r0, _080A7E80 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080A7E84 @ =0x000004BE
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080A7E90
	ldrb r0, [r7, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r7, #0xb]
	strb r1, [r7, #0x18]
	adds r0, r7, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080A7E88
	movs r0, #0x80
	lsls r0, r0, #9
	b _080A7EF6
	.align 2, 0
_080A7E78: .4byte 0x000FFFFF
_080A7E7C: .4byte 0xFFF80000
_080A7E80: .4byte gEwramData
_080A7E84: .4byte 0x000004BE
_080A7E88:
	ldr r0, _080A7E8C @ =0xFFFF0000
	b _080A7EF6
	.align 2, 0
_080A7E8C: .4byte 0xFFFF0000
_080A7E90:
	adds r0, r7, #0
	movs r1, #6
	bl sub_0806D128
	cmp r0, #0
	beq _080A7EF8
_080A7E9C:
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _080A7EF8
_080A7EAA:
	adds r0, r7, #0
	bl sub_0806D3AC
	ldr r0, _080A7EE8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080A7EEC @ =0x000004BE
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080A7EF8
	ldr r1, _080A7EF0 @ =0x08528404
	adds r0, r7, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F0E4
	movs r0, #1
	strb r0, [r7, #0xb]
	strb r0, [r7, #0x18]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080A7EF4
	movs r0, #0xd0
	lsls r0, r0, #0xd
	b _080A7EF6
	.align 2, 0
_080A7EE8: .4byte gEwramData
_080A7EEC: .4byte 0x000004BE
_080A7EF0: .4byte 0x08528404
_080A7EF4:
	ldr r0, _080A7F04 @ =0xFFE60000
_080A7EF6:
	str r0, [r7, #0x48]
_080A7EF8:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A7F04: .4byte 0xFFE60000

	thumb_func_start sub_080A7F08
sub_080A7F08: @ 0x080A7F08
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	adds r1, r0, #0
	cmp r1, #0
	bne _080A7F26
	adds r0, #1
	strb r0, [r5, #0xb]
	str r1, [r5, #0x48]
	str r1, [r5, #0x4c]
	str r1, [r5, #0x50]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x54]
_080A7F26:
	movs r1, #0x80
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
	ldrb r0, [r5, #0xd]
	movs r6, #7
	ands r6, r0
	cmp r6, #0
	bne _080A7F88
	bl RandomNumberGenerator
	ldr r1, _080A7FA8 @ =0x0007FFFF
	ands r1, r0
	ldr r4, [r5, #0x40]
	adds r4, r4, r1
	ldr r0, _080A7FAC @ =0xFFFC0000
	adds r4, r4, r0
	bl RandomNumberGenerator
	ldr r1, _080A7FB0 @ =0x000FFFFF
	ands r1, r0
	ldr r2, [r5, #0x44]
	adds r2, r2, r1
	ldr r0, _080A7FB4 @ =0xFFF80000
	adds r2, r2, r0
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r3, [r0]
	adds r3, #1
	str r6, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080A80F8
_080A7F88:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080A7FA0
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080A7FA0:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A7FA8: .4byte 0x0007FFFF
_080A7FAC: .4byte 0xFFFC0000
_080A7FB0: .4byte 0x000FFFFF
_080A7FB4: .4byte 0xFFF80000

	thumb_func_start sub_080A7FB8
sub_080A7FB8: @ 0x080A7FB8
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
	bgt _080A8034
	adds r0, r6, #0
	bl sub_080683BC
	ldr r1, _080A803C @ =0x0852840C
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F0E4
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
	movs r0, #0x40
	strb r0, [r6, #0xd]
	movs r0, #1
	strb r0, [r6, #0xa]
	movs r0, #0
	strb r0, [r6, #0xb]
_080A8034:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A803C: .4byte 0x0852840C

	thumb_func_start sub_080A8040
sub_080A8040: @ 0x080A8040
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r2, _080A8094 @ =sub_08068F78
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _080A80DC
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	movs r1, #0
	str r1, [r4, #0x48]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r4, #0x4c]
	str r1, [r4, #0x50]
	str r1, [r4, #0x54]
	movs r0, #0x20
	strb r0, [r4, #0x1a]
	adds r0, r4, #0
	adds r0, #0x5c
	strb r7, [r0]
	strb r1, [r4, #0xd]
	ldr r0, [sp, #0x18]
	strb r0, [r4, #0x18]
	mov r0, r8
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080A8098
	movs r0, #0x80
	lsls r0, r0, #0xa
	b _080A809A
	.align 2, 0
_080A8094: .4byte sub_08068F78
_080A8098:
	ldr r0, _080A80E8 @ =0xFFFE0000
_080A809A:
	str r0, [r4, #0x48]
	ldr r0, _080A80EC @ =0x081CC0BC
	bl sub_0803AFB8
	adds r2, r0, #0
	mov r0, r8
	adds r0, #0x2c
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _080A80F0 @ =0x0822976C
	ldrb r3, [r3]
	adds r0, r4, #0
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #1
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
	ldr r0, _080A80F4 @ =sub_0803B9D0
	str r0, [r4, #4]
_080A80DC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A80E8: .4byte 0xFFFE0000
_080A80EC: .4byte 0x081CC0BC
_080A80F0: .4byte 0x0822976C
_080A80F4: .4byte sub_0803B9D0

	thumb_func_start sub_080A80F8
sub_080A80F8: @ 0x080A80F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r2, _080A8180 @ =sub_08068F78
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _080A8176
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	movs r1, #0
	str r1, [r4, #0x48]
	str r1, [r4, #0x4c]
	str r1, [r4, #0x50]
	ldr r0, _080A8184 @ =0xFFFFF000
	str r0, [r4, #0x54]
	movs r0, #0x18
	strb r0, [r4, #0x1a]
	adds r0, r4, #0
	adds r0, #0x5c
	strb r7, [r0]
	strb r1, [r4, #0xd]
	ldr r0, [sp, #0x18]
	strb r0, [r4, #0x18]
	ldr r0, _080A8188 @ =0x081CC0BC
	bl sub_0803AFB8
	adds r2, r0, #0
	mov r0, r8
	adds r0, #0x2c
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _080A818C @ =0x0822976C
	ldrb r3, [r3]
	adds r0, r4, #0
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #1
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
	ldr r0, _080A8190 @ =sub_0803B9D0
	str r0, [r4, #4]
_080A8176:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A8180: .4byte sub_08068F78
_080A8184: .4byte 0xFFFFF000
_080A8188: .4byte 0x081CC0BC
_080A818C: .4byte 0x0822976C
_080A8190: .4byte sub_0803B9D0

	thumb_func_start sub_080A8194
sub_080A8194: @ 0x080A8194
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080A81C8 @ =0x081CC0BC
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _080A81D8
	ldr r0, _080A81CC @ =0x0820B000
	movs r1, #0
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _080A81D0 @ =0x0822976C
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _080A81D4 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _080A81DA
	.align 2, 0
_080A81C8: .4byte 0x081CC0BC
_080A81CC: .4byte 0x0820B000
_080A81D0: .4byte 0x0822976C
_080A81D4: .4byte sub_0803B9D0
_080A81D8:
	movs r0, #0
_080A81DA:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A81E0
sub_080A81E0: @ 0x080A81E0
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

	thumb_func_start EnemyGremlinUpdate
EnemyGremlinUpdate: @ 0x080A820C
	push {lr}
	bl EnemyGargoyleUpdate
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyGremlinCreate
EnemyGremlinCreate: @ 0x080A8218
	push {lr}
	bl EnemyGargoyleCreate
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyBigGolemUpdate
EnemyBigGolemUpdate: @ 0x080A8224
	push {r4, r5, lr}
	sub sp, #0x34
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _080A825A
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
	beq _080A824E
	adds r0, r5, #0
	bl sub_08021924
_080A824E:
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _080A825A
	adds r0, r5, #0
	bl sub_0806AE54
_080A825A:
	adds r0, r5, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _080A826A
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	bne _080A8308
_080A826A:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080A828C
	cmp r0, #1
	bgt _080A827A
	cmp r0, #0
	beq _080A8284
	b _080A8308
_080A827A:
	cmp r0, #2
	beq _080A8294
	cmp r0, #3
	beq _080A8320
	b _080A8308
_080A8284:
	adds r0, r5, #0
	bl sub_080A89F8
	b _080A8308
_080A828C:
	adds r0, r5, #0
	bl sub_080AA7A8
	b _080A8308
_080A8294:
	ldrb r1, [r5, #0xd]
	adds r0, r1, #0
	subs r0, #0x79
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x5d
	bhi _080A82D4
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080A82D4
	bl RandomNumberGenerator
	movs r1, #0xa0
	lsls r1, r1, #0xe
	bl __umodsi3
	adds r4, r0, #0
	ldr r0, _080A8304 @ =0xFFEC0000
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
_080A82D4:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r5, #0
	adds r2, #0x59
	cmp r0, #1
	bhi _080A82EE
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080A82EE:
	ldrb r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A8320
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _080A8320
	bl sub_0806C250
	b _080A8320
	.align 2, 0
_080A8304: .4byte 0xFFEC0000
_080A8308:
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806B120
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x1f
	bhi _080A8320
	movs r0, #0
	strb r0, [r5, #0x1a]
_080A8320:
	add sp, #0x34
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start EnemyBigGolemCreate
EnemyBigGolemCreate: @ 0x080A8328
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	adds r7, r0, #0
	ldr r1, _080A8498 @ =0x081192F0
	add r0, sp, #8
	movs r2, #0xe
	bl memcpy
	add r0, sp, #0x18
	mov sl, r0
	ldr r1, _080A849C @ =0x081192FE
	movs r2, #0xe
	bl memcpy
	add r1, sp, #0x28
	mov sb, r1
	ldr r1, _080A84A0 @ =0x0811930C
	mov r0, sb
	movs r2, #0xe
	bl memcpy
	add r2, sp, #0x38
	mov r8, r2
	ldr r1, _080A84A4 @ =0x0811931A
	mov r0, r8
	movs r2, #0xe
	bl memcpy
	add r6, sp, #0x48
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0xe
	bl memset
	movs r4, #1
	strb r4, [r6, #2]
	strb r4, [r6, #8]
	strb r4, [r6, #0xd]
	add r5, sp, #0x58
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0xe
	bl memset
	strb r4, [r5]
	strb r4, [r5, #1]
	strb r4, [r5, #2]
	movs r3, #0x30
	ldrsh r0, [r7, r3]
	cmp r0, #0
	beq _080A83BA
	ldr r5, _080A84A8 @ =gEwramData
	ldr r2, [r5]
	ldr r6, _080A84AC @ =0x000004CC
	adds r0, r2, r6
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080A83BA
	ldr r1, _080A84B0 @ =0x0000037E
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _080A83BA
	b _080A8812
_080A83BA:
	adds r0, r7, #0
	bl sub_080AD1D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A83C8
	b _080A8812
_080A83C8:
	movs r0, #0xc4
	bl sub_0806C2CC
	str r0, [r7, #0x1c]
	cmp r0, #0
	bne _080A83D6
	b _080A8812
_080A83D6:
	adds r4, r7, #0
	adds r4, #0x58
	ldrb r1, [r4]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	adds r5, r7, #0
	adds r5, #0x20
	movs r0, #0
	strb r0, [r5]
	adds r0, r7, #0
	bl sub_0806B04C
	movs r2, #0x30
	ldrsh r0, [r7, r2]
	str r4, [sp, #0x6c]
	str r5, [sp, #0x70]
	cmp r0, #0
	beq _080A8422
	ldr r0, _080A84A8 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _080A84AC @ =0x000004CC
	adds r0, r0, r3
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080A8434
	adds r3, r7, #0
	adds r3, #0x3c
	ldrb r1, [r3]
	lsls r0, r1, #0x18
	lsrs r2, r0, #0x1a
	subs r1, r1, r2
	lsrs r0, r0, #0x1b
	subs r1, r1, r0
	strb r1, [r3]
_080A8422:
	ldr r0, _080A84A8 @ =gEwramData
	ldr r0, [r0]
	ldr r5, _080A84AC @ =0x000004CC
	adds r0, r0, r5
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080A8440
_080A8434:
	movs r6, #0xfa
	lsls r6, r6, #2
	adds r0, r6, #0
	ldrh r1, [r7, #0x34]
	adds r0, r0, r1
	strh r0, [r7, #0x34]
_080A8440:
	movs r2, #0
	mov sb, r2
	movs r3, #0x80
	lsls r3, r3, #9
	mov sl, r3
_080A844A:
	mov r0, sp
	add r0, sb
	adds r0, #0x28
	movs r4, #0
	ldrsb r4, [r0, r4]
	ldr r0, _080A84B4 @ =sub_080AC6E8
	bl sub_0806DFF8
	mov r8, r0
	cmp r0, #0
	bne _080A8462
	b _080A85FC
_080A8462:
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	mov r0, r8
	adds r0, #0x5c
	strb r1, [r0]
	mov r0, sp
	adds r0, r0, r4
	adds r0, #0x48
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080A84C0
	ldr r0, _080A84B8 @ =0x0825EB0C
	movs r1, #0
	bl sub_0803B800
	adds r2, r0, #0
	adds r0, r7, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	mov r0, r8
	ldr r1, _080A84BC @ =0x08266E78
	bl sub_0803B924
	b _080A84D8
	.align 2, 0
_080A8498: .4byte 0x081192F0
_080A849C: .4byte 0x081192FE
_080A84A0: .4byte 0x0811930C
_080A84A4: .4byte 0x0811931A
_080A84A8: .4byte gEwramData
_080A84AC: .4byte 0x000004CC
_080A84B0: .4byte 0x0000037E
_080A84B4: .4byte sub_080AC6E8
_080A84B8: .4byte 0x0825EB0C
_080A84BC: .4byte 0x08266E78
_080A84C0:
	ldr r0, _080A84F0 @ =0x0825EB04
	movs r1, #0
	bl sub_0803B800
	adds r2, r0, #0
	adds r0, r7, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	mov r0, r8
	ldr r1, _080A84F4 @ =0x08266E08
	bl sub_0803B924
_080A84D8:
	mov r0, sp
	adds r0, r0, r4
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080A84F8
	adds r0, r7, #0
	adds r0, #0x27
	b _080A84FC
	.align 2, 0
_080A84F0: .4byte 0x0825EB04
_080A84F4: .4byte 0x08266E08
_080A84F8:
	adds r0, r7, #0
	adds r0, #0x26
_080A84FC:
	ldrb r1, [r0]
	mov r0, r8
	adds r0, #0x2c
	strb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	mov r1, r8
	adds r1, #0x36
	strb r0, [r1]
	mov r3, r8
	adds r3, #0x59
	ldrb r0, [r3]
	movs r5, #3
	rsbs r5, r5, #0
	adds r1, r5, #0
	ands r0, r1
	strb r0, [r3]
	mov r2, r8
	adds r2, #0x58
	ldrb r0, [r2]
	movs r6, #0x21
	rsbs r6, r6, #0
	adds r1, r6, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	mov r0, r8
	adds r0, #0x3c
	strb r1, [r0]
	ldr r0, _080A85EC @ =sub_0803B9D0
	mov r1, r8
	str r0, [r1, #4]
	str r7, [r1, #0x1c]
	mov r0, r8
	adds r0, #0x20
	strb r4, [r0]
	mov r0, sp
	adds r0, r0, r4
	adds r0, #0x18
	ldrb r0, [r0]
	adds r1, #0x21
	strb r0, [r1]
	ldr r0, [r7, #0x40]
	mov r5, r8
	str r0, [r5, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r5, #0x44]
	mov r0, sp
	adds r0, r0, r4
	adds r0, #8
	ldrb r0, [r0]
	adds r1, #0x44
	strb r0, [r1]
	adds r6, r3, #0
	adds r5, r2, #0
	cmp r4, #2
	beq _080A8588
	cmp r4, #4
	beq _080A8588
	cmp r4, #5
	beq _080A8588
	cmp r4, #8
	beq _080A8588
	cmp r4, #0xc
	beq _080A8588
	cmp r4, #0xd
	bne _080A85CE
_080A8588:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _080A8598
	b _080A880C
_080A8598:
	movs r0, #0x1f
	ands r2, r0
	ldrb r0, [r5]
	movs r3, #0x20
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5]
	ldrb r0, [r6]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r6]
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
	mov r1, sl
	mov r2, sl
	bl sub_0803E058
_080A85CE:
	ldr r0, _080A85F0 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080A8604
	mov r0, r8
	movs r1, #8
	ldr r2, _080A85F4 @ =sub_080AC65C
	ldr r3, _080A85F8 @ =sub_080AD00C
	bl sub_0804277C
	b _080A8604
	.align 2, 0
_080A85EC: .4byte sub_0803B9D0
_080A85F0: .4byte gEwramData
_080A85F4: .4byte sub_080AC65C
_080A85F8: .4byte sub_080AD00C
_080A85FC:
	ldr r0, [r7, #0x1c]
	bl sub_0806C250
	b _080A8812
_080A8604:
	movs r5, #1
	add sb, r5
	mov r6, sb
	cmp r6, #0xd
	bgt _080A8610
	b _080A844A
_080A8610:
	ldr r2, [r7, #0x1c]
	ldr r3, _080A8658 @ =0x0852844C
	ldr r1, [sp, #0x70]
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #2
	adds r3, r0, r3
	ldr r1, _080A865C @ =0x0852858C
	adds r0, r0, r1
	ldr r5, [r0]
	movs r4, #0
	movs r6, #0x65
	adds r6, r6, r7
	mov r8, r6
	movs r0, #0x90
	lsls r0, r0, #1
	adds r0, r0, r2
	mov sb, r0
	movs r6, #0xaa
	lsls r6, r6, #2
	adds r1, r2, r6
	ldr r3, [r3]
_080A863C:
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #0x10
	str r0, [r2]
	movs r6, #2
	ldrsh r0, [r3, r6]
	lsls r0, r0, #0x10
	str r0, [r2, #4]
	cmp r4, #5
	bne _080A8660
	ldr r0, [r5]
	mov r6, sb
	str r0, [r6]
	b _080A8668
	.align 2, 0
_080A8658: .4byte 0x0852844C
_080A865C: .4byte 0x0852858C
_080A8660:
	cmp r4, #0xc
	bne _080A8668
	ldr r0, [r5, #4]
	str r0, [r1]
_080A8668:
	adds r2, #0x38
	adds r3, #4
	adds r4, #1
	cmp r4, #0xd
	ble _080A863C
	ldr r1, [sp, #0x6c]
	ldrb r0, [r1]
	movs r1, #0x20
	orrs r0, r1
	ldr r2, [sp, #0x6c]
	strb r0, [r2]
	movs r5, #0
	mov r3, r8
	strb r5, [r3]
	ldr r6, _080A8808 @ =gEwramData
	ldr r0, [r6]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x68]
	cmp r0, #0
	bne _080A869C
	b _080A881A
_080A869C:
	movs r0, #1
	strb r0, [r7, #0xd]
	movs r4, #0xa0
	lsls r4, r4, #9
	movs r1, #0xa0
	lsls r1, r1, #0xb
	mov r8, r1
	str r1, [sp]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #3
	adds r3, r4, #0
	bl sub_080AC468
	movs r2, #0xb0
	lsls r2, r2, #9
	mov sl, r2
	movs r6, #0x88
	lsls r6, r6, #0xd
	str r6, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	mov r3, sl
	bl sub_080AC468
	movs r3, #0x98
	lsls r3, r3, #9
	mov sb, r3
	movs r5, #0xc0
	lsls r5, r5, #0xe
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #2
	bl sub_080AC468
	mov r0, r8
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #3
	adds r3, r4, #0
	bl sub_080AC468
	str r6, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #7
	mov r3, sl
	bl sub_080AC468
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #8
	mov r3, sb
	bl sub_080AC468
	movs r0, #0xb0
	lsls r0, r0, #0xd
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	adds r3, r4, #0
	bl sub_080AC468
	movs r0, #0xe0
	lsls r0, r0, #0xc
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xb
	movs r2, #0xa
	adds r3, r4, #0
	bl sub_080AC468
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_080AC468
	movs r3, #0xa8
	lsls r3, r3, #9
	movs r0, #0xb0
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_080AC468
	adds r0, r7, #0
	add r1, sp, #0x38
	bl sub_080ACF30
	adds r0, r7, #0
	movs r1, #0
	bl sub_080ACF58
	adds r0, r7, #0
	movs r1, #1
	bl sub_080ACF58
	adds r0, r7, #0
	movs r1, #2
	bl sub_080ACF58
	adds r0, r7, #0
	movs r1, #3
	bl sub_080ACF58
	adds r0, r7, #0
	movs r1, #4
	bl sub_080ACF58
	adds r0, r7, #0
	movs r1, #5
	bl sub_080ACF58
	adds r0, r7, #0
	movs r1, #6
	bl sub_080ACF58
	adds r0, r7, #0
	movs r1, #7
	bl sub_080ACF58
	adds r0, r7, #0
	movs r1, #8
	bl sub_080ACF58
	adds r0, r7, #0
	movs r1, #9
	bl sub_080ACF58
	adds r0, r7, #0
	movs r1, #0xa
	bl sub_080ACF58
	adds r0, r7, #0
	movs r1, #0xb
	bl sub_080ACF58
	adds r0, r7, #0
	movs r1, #0xc
	bl sub_080ACF58
	adds r0, r7, #0
	movs r1, #0xd
	bl sub_080ACF58
	movs r0, #3
	strb r0, [r7, #0xa]
	movs r1, #0
	strb r1, [r7, #0xb]
	strb r1, [r7, #0xd]
	b _080A89D2
	.align 2, 0
_080A8808: .4byte gEwramData
_080A880C:
	mov r0, r8
	bl EntityDelete
_080A8812:
	adds r0, r7, #0
	bl EntityDelete
	b _080A89D2
_080A881A:
	movs r0, #1
	strb r0, [r7, #0xd]
	movs r4, #0xa0
	lsls r4, r4, #9
	movs r2, #0xa0
	lsls r2, r2, #0xb
	mov r8, r2
	str r2, [sp]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #3
	adds r3, r4, #0
	bl sub_080AC468
	movs r3, #0xb0
	lsls r3, r3, #9
	mov sl, r3
	movs r6, #0x88
	lsls r6, r6, #0xd
	str r6, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	bl sub_080AC468
	movs r5, #0x98
	lsls r5, r5, #9
	mov sb, r5
	movs r5, #0xc0
	lsls r5, r5, #0xe
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #2
	mov r3, sb
	bl sub_080AC468
	mov r0, r8
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #3
	adds r3, r4, #0
	bl sub_080AC468
	str r6, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #7
	mov r3, sl
	bl sub_080AC468
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #8
	mov r3, sb
	bl sub_080AC468
	movs r0, #0xb0
	lsls r0, r0, #0xd
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	adds r3, r4, #0
	bl sub_080AC468
	movs r0, #0xe0
	lsls r0, r0, #0xc
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xb
	movs r2, #0xa
	adds r3, r4, #0
	bl sub_080AC468
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_080AC468
	movs r3, #0xa8
	lsls r3, r3, #9
	movs r0, #0xb0
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_080AC468
	adds r0, r7, #0
	add r1, sp, #0x38
	bl sub_080ACF30
	adds r0, r7, #0
	movs r1, #0
	bl sub_080ACF58
	adds r0, r7, #0
	movs r1, #1
	bl sub_080ACF58
	adds r0, r7, #0
	movs r1, #2
	bl sub_080ACF58
	adds r0, r7, #0
	movs r1, #3
	bl sub_080ACF58
	adds r0, r7, #0
	movs r1, #4
	bl sub_080ACF58
	adds r0, r7, #0
	movs r1, #5
	bl sub_080ACF58
	adds r0, r7, #0
	movs r1, #6
	bl sub_080ACF58
	adds r0, r7, #0
	movs r1, #7
	bl sub_080ACF58
	adds r0, r7, #0
	movs r1, #8
	bl sub_080ACF58
	adds r0, r7, #0
	movs r1, #9
	bl sub_080ACF58
	adds r0, r7, #0
	movs r1, #0xa
	bl sub_080ACF58
	adds r0, r7, #0
	movs r1, #0xb
	bl sub_080ACF58
	adds r0, r7, #0
	movs r1, #0xc
	bl sub_080ACF58
	adds r0, r7, #0
	movs r1, #0xd
	bl sub_080ACF58
	ldr r2, _080A89E4 @ =sub_080AD234
	ldr r3, _080A89E8 @ =sub_080AD260
	adds r0, r7, #0
	movs r1, #8
	bl sub_0804277C
	adds r0, r7, #0
	bl sub_080AC298
	ldr r1, [sp, #0x6c]
	ldrb r0, [r1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	adds r1, r7, #0
	adds r1, #0x21
	strb r0, [r1]
	adds r0, r7, #0
	bl sub_0806AF98
	add r2, sp, #0x68
	ldrb r2, [r2]
	strb r2, [r7, #0xa]
	add r3, sp, #0x68
	ldrb r3, [r3]
	strb r3, [r7, #0xb]
	ldr r0, _080A89EC @ =0x0000312C
	strh r0, [r7, #0x22]
	movs r5, #0x30
	ldrsh r0, [r7, r5]
	cmp r0, #0
	beq _080A89D2
	movs r0, #0x10
	bl sub_08013CF0
	adds r0, r7, #0
	bl sub_08034498
	ldr r6, _080A89F0 @ =gEwramData
	ldr r0, [r6]
	ldr r1, _080A89F4 @ =0x0000042C
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #2
	orrs r1, r2
	str r1, [r0]
_080A89D2:
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A89E4: .4byte sub_080AD234
_080A89E8: .4byte sub_080AD260
_080A89EC: .4byte 0x0000312C
_080A89F0: .4byte gEwramData
_080A89F4: .4byte 0x0000042C

	thumb_func_start sub_080A89F8
sub_080A89F8: @ 0x080A89F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r7, r0, #0
	ldr r0, _080A8A3C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080A8A40 @ =0x0000A094
	adds r1, r0, r1
	str r1, [sp, #0x2c]
	ldr r1, _080A8A44 @ =0x08119328
	add r0, sp, #8
	movs r2, #0xe
	bl memcpy
	add r4, sp, #0x18
	ldr r1, _080A8A48 @ =0x08119336
	adds r0, r4, #0
	movs r2, #0xe
	bl memcpy
	ldrb r0, [r7, #0xb]
	mov sl, r4
	cmp r0, #0xc
	bls _080A8A32
	bl _080AA798
_080A8A32:
	lsls r0, r0, #2
	ldr r1, _080A8A4C @ =_080A8A50
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A8A3C: .4byte gEwramData
_080A8A40: .4byte 0x0000A094
_080A8A44: .4byte 0x08119328
_080A8A48: .4byte 0x08119336
_080A8A4C: .4byte _080A8A50
_080A8A50: @ jump table
	.4byte _080A8A84 @ case 0
	.4byte _080A8BD0 @ case 1
	.4byte _080A8CE4 @ case 2
	.4byte _080A8EBC @ case 3
	.4byte _080A9336 @ case 4
	.4byte _080A9444 @ case 5
	.4byte _080A9618 @ case 6
	.4byte _080A99B4 @ case 7
	.4byte _080A9AB6 @ case 8
	.4byte _080A9C5C @ case 9
	.4byte _080AA08C @ case 10
	.4byte _080AA19C @ case 11
	.4byte _080AA33C @ case 12
_080A8A84:
	adds r0, r7, #0
	movs r1, #0xf0
	movs r2, #0xa0
	bl sub_0806E29C
	cmp r0, #0
	bne _080A8AA0
	adds r0, r7, #0
	bl sub_0806D54C
	cmp r0, #0
	bne _080A8AA0
	bl _080AA798
_080A8AA0:
	movs r2, #0
	movs r0, #1
	strb r0, [r7, #0xb]
	strb r2, [r7, #0xc]
	movs r0, #0x28
	strb r0, [r7, #0xd]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	str r2, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #6
	movs r3, #0
	bl sub_080AC468
	movs r2, #0xdc
	lsls r2, r2, #9
	mov sb, r2
	movs r3, #0xc0
	lsls r3, r3, #0xe
	mov r8, r3
	str r3, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #6
	mov r3, sb
	bl sub_080AC468
	movs r3, #0xec
	lsls r3, r3, #9
	movs r5, #0x88
	lsls r5, r5, #0xd
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #8
	bl sub_080AC468
	movs r3, #0xd8
	lsls r3, r3, #9
	movs r4, #0xa0
	lsls r4, r4, #0xb
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #7
	bl sub_080AC468
	movs r0, #0xa8
	lsls r0, r0, #9
	mov sl, r0
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #3
	mov r3, sl
	bl sub_080AC468
	movs r3, #0xb4
	lsls r3, r3, #9
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	bl sub_080AC468
	movs r3, #0xa0
	lsls r3, r3, #9
	mov r1, r8
	str r1, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #2
	bl sub_080AC468
	movs r3, #0xd0
	lsls r3, r3, #9
	movs r2, #0x80
	lsls r2, r2, #0xc
	mov r8, r2
	str r2, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #3
	bl sub_080AC468
	movs r3, #0xd6
	lsls r3, r3, #9
	movs r0, #0xe8
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #3
	bl sub_080AC468
	movs r0, #0x98
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #3
	mov r3, sb
	bl sub_080AC468
	movs r0, #0xb0
	lsls r0, r0, #0xd
	str r0, [sp]
	movs r4, #0x96
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	mov r3, sl
	bl sub_080ACFA0
	movs r0, #0xe0
	lsls r0, r0, #0xc
	str r0, [sp]
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xb
	movs r2, #0xa
	mov r3, sl
	bl sub_080ACFA0
	mov r3, r8
	str r3, [sp]
	bl _080AA626
_080A8BD0:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_080ACF30
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080A8BE8
	bl _080AA798
_080A8BE8:
	movs r0, #0x32
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	movs r0, #0
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #6
	movs r3, #0
	bl sub_080AC468
	movs r5, #0xd4
	lsls r5, r5, #9
	mov sb, r5
	movs r0, #0xc0
	lsls r0, r0, #0xe
	mov r8, r0
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #6
	mov r3, sb
	bl sub_080AC468
	movs r3, #0xe8
	lsls r3, r3, #9
	movs r1, #0x88
	lsls r1, r1, #0xd
	mov sl, r1
	str r1, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #8
	bl sub_080AC468
	movs r4, #0xa0
	lsls r4, r4, #0xb
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #7
	mov r3, sb
	bl sub_080AC468
	movs r3, #0xac
	lsls r3, r3, #9
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #3
	bl sub_080AC468
	movs r3, #0xb2
	lsls r3, r3, #9
	mov r2, sl
	str r2, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	bl sub_080AC468
	movs r3, #0xa8
	lsls r3, r3, #9
	mov r5, r8
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #2
	bl sub_080AC468
	movs r3, #0xd0
	lsls r3, r3, #9
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #3
	bl sub_080AC468
	movs r3, #0xd2
	lsls r3, r3, #9
	movs r0, #0xe8
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #3
	bl sub_080AC468
	movs r3, #0xd8
	lsls r3, r3, #9
	movs r0, #0x98
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #3
	bl sub_080AC468
_080A8CE4:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_080ACF30
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080A8CFC
	bl _080AA798
_080A8CFC:
	movs r0, #0x14
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0
	strb r0, [r7, #0xc]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #6
	bl sub_080ACEC4
	ldr r4, _080A8EA0 @ =0xFFF30000
	adds r0, r7, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_080ACF00
	adds r0, r7, #0
	movs r1, #6
	adds r2, r4, #0
	bl sub_080ACF00
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	ldr r6, _080A8EA4 @ =0xFFE80000
	cmp r0, #0
	beq _080A8D46
	movs r6, #0xc0
	lsls r6, r6, #0xd
_080A8D46:
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r0, _080A8EA8 @ =0x00007FFF
	ands r4, r0
	movs r1, #0x80
	lsls r1, r1, #8
	adds r4, r4, r1
	bl RandomNumberGenerator
	adds r3, r0, #0
	ldr r2, _080A8EAC @ =0x00003FFF
	ands r3, r2
	ldr r5, _080A8EB0 @ =0xFFFFE000
	subs r3, r5, r3
	ldr r0, [r7, #0x40]
	adds r0, r0, r6
	ldr r1, [r7, #0x44]
	movs r2, #0x5c
	adds r2, r2, r7
	mov sb, r2
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	movs r5, #1
	mov r8, r5
	str r5, [sp, #4]
	adds r2, r4, #0
	bl sub_0806DABC
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r0, _080A8EA8 @ =0x00007FFF
	ands r4, r0
	ldr r1, _080A8EB4 @ =0xFFFF8000
	subs r4, r1, r4
	bl RandomNumberGenerator
	adds r3, r0, #0
	ldr r2, _080A8EAC @ =0x00003FFF
	ands r3, r2
	ldr r5, _080A8EB0 @ =0xFFFFE000
	subs r3, r5, r3
	ldr r0, [r7, #0x40]
	adds r0, r0, r6
	ldr r1, [r7, #0x44]
	mov r5, sb
	ldrb r2, [r5]
	subs r2, #1
	str r2, [sp]
	mov r2, r8
	str r2, [sp, #4]
	adds r2, r4, #0
	bl sub_0806DABC
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r3, _080A8EA8 @ =0x00007FFF
	ands r4, r3
	movs r5, #0x80
	lsls r5, r5, #8
	adds r4, r4, r5
	bl RandomNumberGenerator
	adds r3, r0, #0
	ldr r0, _080A8EAC @ =0x00003FFF
	ands r3, r0
	ldr r1, _080A8EB0 @ =0xFFFFE000
	subs r3, r1, r3
	lsls r6, r6, #1
	mov sl, r6
	ldr r0, [r7, #0x40]
	add r0, sl
	ldr r1, [r7, #0x44]
	mov r5, sb
	ldrb r2, [r5]
	subs r2, #1
	str r2, [sp]
	mov r2, r8
	str r2, [sp, #4]
	adds r2, r4, #0
	bl sub_0806DABC
	bl RandomNumberGenerator
	ldr r3, _080A8EA8 @ =0x00007FFF
	ands r0, r3
	ldr r5, _080A8EB4 @ =0xFFFF8000
	subs r4, r5, r0
	bl RandomNumberGenerator
	ldr r1, _080A8EAC @ =0x00003FFF
	ands r0, r1
	ldr r2, _080A8EB0 @ =0xFFFFE000
	subs r3, r2, r0
	ldr r0, [r7, #0x40]
	add r0, sl
	ldr r1, [r7, #0x44]
	mov r5, sb
	ldrb r2, [r5]
	subs r2, #1
	str r2, [sp]
	mov r2, r8
	str r2, [sp, #4]
	adds r2, r4, #0
	bl sub_0806DABC
	movs r0, #0
	movs r1, #1
	movs r2, #4
	bl sub_08011F7C
	movs r0, #0x7c
	bl PlaySong
	movs r3, #0xea
	lsls r3, r3, #9
	movs r5, #0x88
	lsls r5, r5, #0xd
	str r5, [sp]
	movs r4, #0xa
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #8
	bl sub_080AC468
	movs r3, #0xae
	lsls r3, r3, #9
	movs r0, #0xa0
	lsls r0, r0, #0xb
	str r0, [sp]
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #3
	bl sub_080AC468
	movs r3, #0xd3
	lsls r3, r3, #9
	movs r0, #0xc0
	lsls r0, r0, #0xe
	mov r8, r0
	str r0, [sp]
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #6
	bl sub_080AC468
	movs r3, #0xb5
	lsls r3, r3, #9
	str r5, [sp]
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	bl sub_080AC468
	ldr r3, _080A8EB8 @ =0x00014D00
	mov r1, r8
	str r1, [sp]
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #2
	bl sub_080AC468
	bl _080AA798
	.align 2, 0
_080A8EA0: .4byte 0xFFF30000
_080A8EA4: .4byte 0xFFE80000
_080A8EA8: .4byte 0x00007FFF
_080A8EAC: .4byte 0x00003FFF
_080A8EB0: .4byte 0xFFFFE000
_080A8EB4: .4byte 0xFFFF8000
_080A8EB8: .4byte 0x00014D00
_080A8EBC:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_080ACF30
	ldrb r1, [r7, #0xd]
	cmp r1, #3
	bls _080A8EDC
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080A8EDC
	movs r0, #0
	movs r1, #0
	movs r2, #2
	bl sub_08011F7C
_080A8EDC:
	ldrb r6, [r7, #0xd]
	cmp r6, #0xa
	bne _080A8F4C
	movs r3, #0xe8
	lsls r3, r3, #9
	movs r2, #0x88
	lsls r2, r2, #0xd
	mov r8, r2
	str r2, [sp]
	str r6, [sp, #4]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #8
	bl sub_080AC468
	movs r3, #0xac
	lsls r3, r3, #9
	movs r0, #0xa0
	lsls r0, r0, #0xb
	str r0, [sp]
	str r6, [sp, #4]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #3
	bl sub_080AC468
	movs r3, #0xd4
	lsls r3, r3, #9
	movs r4, #0xc0
	lsls r4, r4, #0xe
	str r4, [sp]
	str r6, [sp, #4]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #6
	bl sub_080AC468
	movs r3, #0xb2
	lsls r3, r3, #9
	mov r5, r8
	str r5, [sp]
	str r6, [sp, #4]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	bl sub_080AC468
	movs r3, #0xa8
	lsls r3, r3, #9
	str r4, [sp]
	str r6, [sp, #4]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #2
	bl sub_080AC468
_080A8F4C:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080A8F5C
	bl _080AA798
_080A8F5C:
	adds r0, r7, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r2, r7, #0
	adds r2, #0x42
	movs r3, #0
	ldrsh r1, [r2, r3]
	subs r0, r0, r1
	mov sb, r2
	cmp r0, #0
	bge _080A8F78
	rsbs r0, r0, #0
_080A8F78:
	cmp r0, #0x8b
	bgt _080A8FAA
	bl RandomNumberGenerator2
	movs r4, #0x7f
	ands r0, r4
	cmp r0, #0x2f
	bhi _080A8F8C
	bl _080AA412
_080A8F8C:
	bl RandomNumberGenerator2
	ands r0, r4
	cmp r0, #0x1f
	bhi _080A8FAA
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r0, r1
	adds r1, r7, #0
	adds r1, #0x21
	strb r0, [r1]
_080A8FAA:
	movs r0, #0x1a
	ldrsb r0, [r7, r0]
	adds r5, r7, #0
	adds r5, #0x58
	movs r1, #0x21
	adds r1, r1, r7
	mov sl, r1
	cmp r0, #0
	beq _080A8FD8
	movs r0, #0x19
	ldrsb r0, [r7, r0]
	cmp r0, #3
	ble _080A8FD8
	movs r0, #0
	strb r0, [r7, #0x1a]
	strb r0, [r7, #0x19]
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r0, r1
	mov r2, sl
	strb r0, [r2]
_080A8FD8:
	mov r3, sl
	movs r1, #0
	ldrsb r1, [r3, r1]
	ldrb r2, [r5]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	cmp r1, r0
	bne _080A905A
	movs r4, #0x40
	adds r0, r4, #0
	ands r0, r2
	movs r6, #0x6e
	rsbs r6, r6, #0
	cmp r0, #0
	beq _080A8FF8
	movs r6, #0x6e
_080A8FF8:
	mov r1, sb
	ldrh r0, [r1]
	ldr r2, [sp, #0x2c]
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	adds r0, r0, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r1, [r1]
	ldr r3, [sp, #0x2c]
	ldrh r3, [r3, #0xa]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	bne _080A904C
	ldrb r1, [r5]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _080A9040
	adds r0, r7, #0
	movs r1, #0x18
	bl sub_0806D188
	cmp r0, #1
	beq _080A904C
	ldrb r1, [r5]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080A90A2
_080A9040:
	adds r0, r7, #0
	movs r1, #0x18
	bl sub_0806D188
	cmp r0, #2
	bne _080A90A2
_080A904C:
	movs r2, #1
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r0, r1
	b _080A9098
_080A905A:
	movs r0, #0x40
	ands r0, r2
	movs r6, #0x6e
	cmp r0, #0
	beq _080A9066
	subs r6, #0xdc
_080A9066:
	mov r1, sb
	ldrh r0, [r1]
	ldr r2, [sp, #0x2c]
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	adds r0, r0, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r1, [r1]
	ldr r3, [sp, #0x2c]
	ldrh r3, [r3, #0xa]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	movs r2, #1
	cmp r0, #0
	beq _080A909C
	movs r2, #0
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
_080A9098:
	mov r5, sl
	strb r0, [r5]
_080A909C:
	cmp r2, #0
	beq _080A90A2
	b _080A91EA
_080A90A2:
	movs r2, #0
	movs r0, #0x50
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	strb r2, [r7, #0xc]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #4
	strb r0, [r1]
	str r2, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0
	movs r3, #0
	bl sub_080AC468
	movs r0, #0xdc
	lsls r0, r0, #9
	mov r8, r0
	movs r1, #0xc0
	lsls r1, r1, #0xe
	mov sl, r1
	str r1, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	mov r3, r8
	bl sub_080AC468
	movs r3, #0xec
	lsls r3, r3, #9
	movs r2, #0x88
	lsls r2, r2, #0xd
	mov sb, r2
	str r2, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #2
	bl sub_080AC468
	movs r3, #0xd8
	lsls r3, r3, #9
	movs r4, #0xa0
	lsls r4, r4, #0xb
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #1
	bl sub_080AC468
	movs r3, #0xa8
	lsls r3, r3, #9
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #3
	bl sub_080AC468
	movs r3, #0xb4
	lsls r3, r3, #9
	mov r5, sb
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #7
	bl sub_080AC468
	movs r3, #0xa0
	lsls r3, r3, #9
	mov r0, sl
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #8
	bl sub_080AC468
	movs r3, #0xd0
	lsls r3, r3, #9
	movs r1, #0x80
	lsls r1, r1, #0xc
	mov sb, r1
	str r1, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #3
	bl sub_080AC468
	movs r3, #0xd6
	lsls r3, r3, #9
	movs r0, #0xe8
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #3
	bl sub_080AC468
	movs r0, #0x98
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #3
	mov r3, r8
	bl sub_080AC468
	movs r2, #0x90
	lsls r2, r2, #9
	mov r8, r2
	movs r0, #0xb0
	lsls r0, r0, #0xd
	str r0, [sp]
	movs r4, #0x96
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	mov r3, r8
	bl sub_080ACFA0
	movs r0, #0xe0
	lsls r0, r0, #0xc
	str r0, [sp]
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xb
	movs r2, #0xa
	mov r3, r8
	bl sub_080ACFA0
	mov r3, sb
	str r3, [sp]
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	mov r3, r8
	bl sub_080ACFA0
	movs r3, #0x98
	lsls r3, r3, #9
	bl _080AA638
_080A91EA:
	cmp r2, #1
	beq _080A91F2
	bl _080AA798
_080A91F2:
	movs r2, #0
	movs r0, #0xa
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #4
	strb r0, [r1]
	movs r0, #0x32
	strb r0, [r7, #0xd]
	str r2, [sp]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #6
	movs r3, #0
	bl sub_080AC468
	movs r5, #0xdc
	lsls r5, r5, #9
	mov r8, r5
	movs r0, #0xc0
	lsls r0, r0, #0xe
	mov sl, r0
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #6
	mov r3, r8
	bl sub_080AC468
	movs r3, #0xec
	lsls r3, r3, #9
	movs r1, #0x88
	lsls r1, r1, #0xd
	mov sb, r1
	str r1, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #8
	bl sub_080AC468
	movs r3, #0xd8
	lsls r3, r3, #9
	movs r4, #0xa0
	lsls r4, r4, #0xb
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #7
	bl sub_080AC468
	movs r3, #0xa8
	lsls r3, r3, #9
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #3
	bl sub_080AC468
	movs r3, #0xb4
	lsls r3, r3, #9
	mov r2, sb
	str r2, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	bl sub_080AC468
	movs r3, #0xa0
	lsls r3, r3, #9
	mov r5, sl
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #2
	bl sub_080AC468
	movs r3, #0xd0
	lsls r3, r3, #9
	movs r0, #0x80
	lsls r0, r0, #0xc
	mov sb, r0
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #3
	bl sub_080AC468
	movs r3, #0xd6
	lsls r3, r3, #9
	movs r0, #0xe8
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #3
	bl sub_080AC468
	movs r0, #0x98
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #3
	mov r3, r8
	bl sub_080AC468
	movs r1, #0x90
	lsls r1, r1, #9
	mov r8, r1
	movs r0, #0xb0
	lsls r0, r0, #0xd
	str r0, [sp]
	movs r4, #0x96
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	mov r3, r8
	bl sub_080ACFA0
	movs r0, #0xe0
	lsls r0, r0, #0xc
	str r0, [sp]
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xb
	movs r2, #0xa
	mov r3, r8
	bl sub_080ACFA0
	mov r2, sb
	str r2, [sp]
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	mov r3, r8
	bl sub_080ACFA0
	movs r3, #0x98
	lsls r3, r3, #9
	bl _080AA638
_080A9336:
	adds r0, r7, #0
	mov r1, sl
	bl sub_080ACF30
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080A934E
	bl _080AA798
_080A934E:
	movs r0, #0x32
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #5
	strb r0, [r1]
	movs r0, #0
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080AC468
	movs r3, #0xd4
	lsls r3, r3, #9
	mov sb, r3
	movs r5, #0xc0
	lsls r5, r5, #0xe
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	bl sub_080AC468
	movs r3, #0xe8
	lsls r3, r3, #9
	movs r0, #0x88
	lsls r0, r0, #0xd
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #2
	bl sub_080AC468
	movs r4, #0xa0
	lsls r4, r4, #0xb
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #1
	mov r3, sb
	bl sub_080AC468
	movs r3, #0xac
	lsls r3, r3, #9
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #3
	bl sub_080AC468
	movs r3, #0xb2
	lsls r3, r3, #9
	movs r1, #0x88
	lsls r1, r1, #0xd
	str r1, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #7
	bl sub_080AC468
	movs r3, #0xa8
	lsls r3, r3, #9
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #8
	bl sub_080AC468
	movs r3, #0xd0
	lsls r3, r3, #9
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #3
	bl sub_080AC468
	movs r3, #0xda
	lsls r3, r3, #9
	movs r0, #0xe8
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #3
	bl sub_080AC468
	movs r3, #0xe0
	lsls r3, r3, #9
	movs r0, #0x98
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #3
	bl sub_080AC468
_080A9444:
	adds r0, r7, #0
	mov r1, sl
	bl sub_080ACF30
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080A945C
	bl _080AA798
_080A945C:
	movs r0, #0x14
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0
	strb r0, [r7, #0xc]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #6
	bl sub_080ACEC4
	ldr r4, _080A95FC @ =0xFFF30000
	adds r0, r7, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_080ACF00
	adds r0, r7, #0
	movs r1, #6
	adds r2, r4, #0
	bl sub_080ACF00
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #5
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	ldr r6, _080A9600 @ =0xFFE80000
	cmp r0, #0
	beq _080A94A6
	movs r6, #0xc0
	lsls r6, r6, #0xd
_080A94A6:
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r2, _080A9604 @ =0x00007FFF
	ands r4, r2
	movs r3, #0x80
	lsls r3, r3, #8
	adds r4, r4, r3
	bl RandomNumberGenerator
	adds r3, r0, #0
	ldr r5, _080A9608 @ =0x00003FFF
	ands r3, r5
	ldr r0, _080A960C @ =0xFFFFE000
	subs r3, r0, r3
	ldr r0, [r7, #0x40]
	adds r0, r0, r6
	ldr r1, [r7, #0x44]
	movs r2, #0x5c
	adds r2, r2, r7
	mov sb, r2
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	movs r5, #1
	mov r8, r5
	str r5, [sp, #4]
	adds r2, r4, #0
	bl sub_0806DABC
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r0, _080A9604 @ =0x00007FFF
	ands r4, r0
	ldr r1, _080A9610 @ =0xFFFF8000
	subs r4, r1, r4
	bl RandomNumberGenerator
	adds r3, r0, #0
	ldr r2, _080A9608 @ =0x00003FFF
	ands r3, r2
	ldr r5, _080A960C @ =0xFFFFE000
	subs r3, r5, r3
	ldr r0, [r7, #0x40]
	adds r0, r0, r6
	ldr r1, [r7, #0x44]
	mov r5, sb
	ldrb r2, [r5]
	subs r2, #1
	str r2, [sp]
	mov r2, r8
	str r2, [sp, #4]
	adds r2, r4, #0
	bl sub_0806DABC
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r3, _080A9604 @ =0x00007FFF
	ands r4, r3
	movs r5, #0x80
	lsls r5, r5, #8
	adds r4, r4, r5
	bl RandomNumberGenerator
	adds r3, r0, #0
	ldr r0, _080A9608 @ =0x00003FFF
	ands r3, r0
	ldr r1, _080A960C @ =0xFFFFE000
	subs r3, r1, r3
	lsls r6, r6, #1
	ldr r0, [r7, #0x40]
	adds r0, r0, r6
	ldr r1, [r7, #0x44]
	mov r5, sb
	ldrb r2, [r5]
	subs r2, #1
	str r2, [sp]
	mov r2, r8
	str r2, [sp, #4]
	adds r2, r4, #0
	bl sub_0806DABC
	bl RandomNumberGenerator
	ldr r3, _080A9604 @ =0x00007FFF
	ands r0, r3
	ldr r5, _080A9610 @ =0xFFFF8000
	subs r4, r5, r0
	bl RandomNumberGenerator
	ldr r1, _080A9608 @ =0x00003FFF
	ands r0, r1
	ldr r2, _080A960C @ =0xFFFFE000
	subs r3, r2, r0
	ldr r0, [r7, #0x40]
	adds r0, r0, r6
	ldr r1, [r7, #0x44]
	mov r5, sb
	ldrb r2, [r5]
	subs r2, #1
	str r2, [sp]
	mov r2, r8
	str r2, [sp, #4]
	adds r2, r4, #0
	bl sub_0806DABC
	movs r0, #0
	movs r1, #1
	movs r2, #4
	bl sub_08011F7C
	movs r0, #0x7c
	bl PlaySong
	movs r3, #0xea
	lsls r3, r3, #9
	movs r5, #0x88
	lsls r5, r5, #0xd
	str r5, [sp]
	movs r4, #0xa
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #2
	bl sub_080AC468
	movs r3, #0xae
	lsls r3, r3, #9
	movs r0, #0xa0
	lsls r0, r0, #0xb
	str r0, [sp]
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #3
	bl sub_080AC468
	movs r3, #0xd3
	lsls r3, r3, #9
	movs r0, #0xc0
	lsls r0, r0, #0xe
	mov r8, r0
	str r0, [sp]
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	bl sub_080AC468
	movs r3, #0xb5
	lsls r3, r3, #9
	str r5, [sp]
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #7
	bl sub_080AC468
	ldr r3, _080A9614 @ =0x00014D00
	mov r1, r8
	str r1, [sp]
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #8
	bl sub_080AC468
	bl _080AA798
	.align 2, 0
_080A95FC: .4byte 0xFFF30000
_080A9600: .4byte 0xFFE80000
_080A9604: .4byte 0x00007FFF
_080A9608: .4byte 0x00003FFF
_080A960C: .4byte 0xFFFFE000
_080A9610: .4byte 0xFFFF8000
_080A9614: .4byte 0x00014D00
_080A9618:
	adds r0, r7, #0
	mov r1, sl
	bl sub_080ACF30
	ldrb r1, [r7, #0xd]
	cmp r1, #3
	bls _080A9638
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080A9638
	movs r0, #0
	movs r1, #0
	movs r2, #2
	bl sub_08011F7C
_080A9638:
	ldrb r6, [r7, #0xd]
	cmp r6, #0xa
	bne _080A96A8
	movs r3, #0xe8
	lsls r3, r3, #9
	movs r2, #0x88
	lsls r2, r2, #0xd
	mov r8, r2
	str r2, [sp]
	str r6, [sp, #4]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #2
	bl sub_080AC468
	movs r3, #0xac
	lsls r3, r3, #9
	movs r0, #0xa0
	lsls r0, r0, #0xb
	str r0, [sp]
	str r6, [sp, #4]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #3
	bl sub_080AC468
	movs r3, #0xd4
	lsls r3, r3, #9
	movs r4, #0xc0
	lsls r4, r4, #0xe
	str r4, [sp]
	str r6, [sp, #4]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	bl sub_080AC468
	movs r3, #0xb2
	lsls r3, r3, #9
	mov r5, r8
	str r5, [sp]
	str r6, [sp, #4]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #7
	bl sub_080AC468
	movs r3, #0xa8
	lsls r3, r3, #9
	str r4, [sp]
	str r6, [sp, #4]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #8
	bl sub_080AC468
_080A96A8:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080A96B8
	bl _080AA798
_080A96B8:
	adds r0, r7, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r2, r7, #0
	adds r2, #0x42
	movs r3, #0
	ldrsh r1, [r2, r3]
	subs r0, r0, r1
	mov sb, r2
	cmp r0, #0
	bge _080A96D4
	rsbs r0, r0, #0
_080A96D4:
	cmp r0, #0x8b
	bgt _080A9706
	bl RandomNumberGenerator2
	movs r4, #0x7f
	ands r0, r4
	cmp r0, #0x2f
	bhi _080A96E8
	bl _080AA412
_080A96E8:
	bl RandomNumberGenerator2
	ands r0, r4
	cmp r0, #0x3f
	bhi _080A9706
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r0, r1
	adds r1, r7, #0
	adds r1, #0x21
	strb r0, [r1]
_080A9706:
	movs r0, #0x1a
	ldrsb r0, [r7, r0]
	adds r5, r7, #0
	adds r5, #0x58
	movs r1, #0x21
	adds r1, r1, r7
	mov sl, r1
	cmp r0, #0
	beq _080A9734
	movs r0, #0x19
	ldrsb r0, [r7, r0]
	cmp r0, #3
	ble _080A9734
	movs r0, #0
	strb r0, [r7, #0x1a]
	strb r0, [r7, #0x19]
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r0, r1
	mov r2, sl
	strb r0, [r2]
_080A9734:
	mov r3, sl
	movs r1, #0
	ldrsb r1, [r3, r1]
	ldrb r2, [r5]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	cmp r1, r0
	bne _080A97B6
	movs r4, #0x40
	adds r0, r4, #0
	ands r0, r2
	movs r6, #0x6e
	rsbs r6, r6, #0
	cmp r0, #0
	beq _080A9754
	movs r6, #0x6e
_080A9754:
	mov r1, sb
	ldrh r0, [r1]
	ldr r2, [sp, #0x2c]
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	adds r0, r0, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r1, [r1]
	ldr r3, [sp, #0x2c]
	ldrh r3, [r3, #0xa]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	bne _080A97A8
	ldrb r1, [r5]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _080A979C
	adds r0, r7, #0
	movs r1, #0x18
	bl sub_0806D188
	cmp r0, #1
	beq _080A97A8
	ldrb r1, [r5]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080A97FC
_080A979C:
	adds r0, r7, #0
	movs r1, #0x18
	bl sub_0806D188
	cmp r0, #2
	bne _080A97FC
_080A97A8:
	movs r2, #1
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r0, r1
	b _080A97F4
_080A97B6:
	movs r0, #0x40
	ands r0, r2
	movs r6, #0x6e
	cmp r0, #0
	beq _080A97C2
	subs r6, #0xdc
_080A97C2:
	mov r1, sb
	ldrh r0, [r1]
	ldr r2, [sp, #0x2c]
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	adds r0, r0, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r1, [r1]
	ldr r3, [sp, #0x2c]
	ldrh r3, [r3, #0xa]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	movs r2, #1
	cmp r0, #0
	beq _080A97F8
	movs r2, #0
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
_080A97F4:
	mov r5, sl
	strb r0, [r5]
_080A97F8:
	cmp r2, #0
	bne _080A9886
_080A97FC:
	movs r2, #0
	movs r0, #0x50
	strb r0, [r7, #0xd]
	movs r0, #1
	strb r0, [r7, #0xb]
	strb r2, [r7, #0xc]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	str r2, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #6
	movs r3, #0
	bl sub_080AC468
	movs r0, #0xdc
	lsls r0, r0, #9
	mov sb, r0
	movs r1, #0xc0
	lsls r1, r1, #0xe
	mov r8, r1
	str r1, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #6
	mov r3, sb
	bl sub_080AC468
	movs r3, #0xec
	lsls r3, r3, #9
	movs r2, #0x88
	lsls r2, r2, #0xd
	str r2, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #8
	bl sub_080AC468
	movs r3, #0xd8
	lsls r3, r3, #9
	movs r4, #0xa0
	lsls r4, r4, #0xb
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #7
	bl sub_080AC468
	movs r3, #0xa8
	lsls r3, r3, #9
	mov sl, r3
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #3
	bl _080AA57E
_080A9886:
	cmp r2, #1
	beq _080A988E
	bl _080AA798
_080A988E:
	movs r2, #0
	movs r0, #7
	strb r0, [r7, #0xb]
	movs r0, #0x32
	strb r0, [r7, #0xd]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	str r2, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0
	movs r3, #0
	bl sub_080AC468
	movs r3, #0xdc
	lsls r3, r3, #9
	mov sb, r3
	movs r5, #0xc0
	lsls r5, r5, #0xe
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	bl sub_080AC468
	movs r3, #0xec
	lsls r3, r3, #9
	movs r0, #0x88
	lsls r0, r0, #0xd
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #2
	bl sub_080AC468
	movs r3, #0xd8
	lsls r3, r3, #9
	movs r4, #0xa0
	lsls r4, r4, #0xb
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #1
	bl sub_080AC468
	movs r1, #0xa8
	lsls r1, r1, #9
	mov sl, r1
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #3
	mov r3, sl
	bl sub_080AC468
	movs r3, #0xb4
	lsls r3, r3, #9
	movs r2, #0x88
	lsls r2, r2, #0xd
	str r2, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #7
	bl sub_080AC468
	movs r3, #0xa0
	lsls r3, r3, #9
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #8
	bl sub_080AC468
	movs r3, #0xd0
	lsls r3, r3, #9
	movs r5, #0x80
	lsls r5, r5, #0xc
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #3
	bl sub_080AC468
	movs r3, #0xd6
	lsls r3, r3, #9
	movs r0, #0xe8
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #3
	bl sub_080AC468
	movs r0, #0x98
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #3
	mov r3, sb
	bl sub_080AC468
	movs r0, #0xb0
	lsls r0, r0, #0xd
	str r0, [sp]
	movs r4, #0x96
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	mov r3, sl
	bl sub_080ACFA0
	movs r0, #0xe0
	lsls r0, r0, #0xc
	str r0, [sp]
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xb
	movs r2, #0xa
	mov r3, sl
	bl sub_080ACFA0
	str r5, [sp]
	bl _080AA626
_080A99B4:
	adds r0, r7, #0
	mov r1, sl
	bl sub_080ACF30
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080A99CC
	bl _080AA798
_080A99CC:
	movs r0, #0x50
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	movs r0, #0
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080AC468
	movs r3, #0xe8
	lsls r3, r3, #9
	movs r0, #0xc0
	lsls r0, r0, #0xe
	mov r8, r0
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	bl sub_080AC468
	movs r3, #0xf2
	lsls r3, r3, #9
	movs r1, #0x88
	lsls r1, r1, #0xd
	mov sl, r1
	str r1, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #2
	bl sub_080AC468
	movs r3, #0xec
	lsls r3, r3, #9
	movs r4, #0xa0
	lsls r4, r4, #0xb
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #1
	bl sub_080AC468
	movs r2, #0x94
	lsls r2, r2, #9
	mov sb, r2
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #3
	mov r3, sb
	bl sub_080AC468
	movs r3, #0xa8
	lsls r3, r3, #9
	mov r5, sl
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #7
	bl sub_080AC468
	mov r0, r8
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #8
	mov r3, sb
	bl sub_080AC468
	movs r3, #0xd0
	lsls r3, r3, #9
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #3
	bl sub_080AC468
	movs r3, #0xd2
	lsls r3, r3, #9
	movs r0, #0xe8
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #3
	bl sub_080AC468
	movs r3, #0xd8
	lsls r3, r3, #9
	b _080AA186
_080A9AB6:
	adds r0, r7, #0
	mov r1, sl
	bl sub_080ACF30
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080A9ACE
	bl _080AA798
_080A9ACE:
	movs r0, #0x14
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0
	strb r0, [r7, #0xc]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #6
	bl sub_080ACEC4
	ldr r4, _080A9B1C @ =0xFFF30000
	adds r0, r7, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_080ACF00
	adds r0, r7, #0
	movs r1, #6
	adds r2, r4, #0
	bl sub_080ACF00
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
	beq _080A9B28
	ldr r6, _080A9B20 @ =0xFFFA0000
	ldr r1, _080A9B24 @ =0xFFE20000
	str r1, [sp, #0x28]
	b _080A9B32
	.align 2, 0
_080A9B1C: .4byte 0xFFF30000
_080A9B20: .4byte 0xFFFA0000
_080A9B24: .4byte 0xFFE20000
_080A9B28:
	movs r6, #0xc0
	lsls r6, r6, #0xb
	movs r2, #0xf0
	lsls r2, r2, #0xd
	str r2, [sp, #0x28]
_080A9B32:
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r3, _080A9C4C @ =0x00007FFF
	ands r4, r3
	movs r5, #0x80
	lsls r5, r5, #8
	adds r4, r4, r5
	bl RandomNumberGenerator
	adds r3, r0, #0
	ldr r0, _080A9C50 @ =0x00003FFF
	ands r3, r0
	ldr r1, _080A9C54 @ =0xFFFFE000
	subs r3, r1, r3
	ldr r0, [r7, #0x40]
	adds r0, r0, r6
	ldr r1, [r7, #0x44]
	movs r2, #0x5c
	adds r2, r2, r7
	mov sb, r2
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	movs r5, #1
	mov r8, r5
	str r5, [sp, #4]
	adds r2, r4, #0
	bl sub_0806DABC
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r0, _080A9C4C @ =0x00007FFF
	ands r4, r0
	ldr r1, _080A9C58 @ =0xFFFF8000
	subs r4, r1, r4
	bl RandomNumberGenerator
	adds r3, r0, #0
	ldr r2, _080A9C50 @ =0x00003FFF
	ands r3, r2
	ldr r5, _080A9C54 @ =0xFFFFE000
	subs r3, r5, r3
	ldr r0, [r7, #0x40]
	adds r0, r0, r6
	ldr r1, [r7, #0x44]
	mov r5, sb
	ldrb r2, [r5]
	subs r2, #1
	str r2, [sp]
	mov r2, r8
	str r2, [sp, #4]
	adds r2, r4, #0
	bl sub_0806DABC
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r3, _080A9C4C @ =0x00007FFF
	ands r4, r3
	movs r5, #0x80
	lsls r5, r5, #8
	adds r4, r4, r5
	bl RandomNumberGenerator
	adds r3, r0, #0
	ldr r0, _080A9C50 @ =0x00003FFF
	ands r3, r0
	ldr r1, _080A9C54 @ =0xFFFFE000
	subs r3, r1, r3
	ldr r0, [r7, #0x40]
	ldr r2, [sp, #0x28]
	adds r0, r0, r2
	ldr r1, [r7, #0x44]
	mov r5, sb
	ldrb r2, [r5]
	subs r2, #1
	str r2, [sp]
	mov r2, r8
	str r2, [sp, #4]
	adds r2, r4, #0
	bl sub_0806DABC
	bl RandomNumberGenerator
	ldr r3, _080A9C4C @ =0x00007FFF
	ands r0, r3
	ldr r5, _080A9C58 @ =0xFFFF8000
	subs r4, r5, r0
	bl RandomNumberGenerator
	ldr r1, _080A9C50 @ =0x00003FFF
	ands r0, r1
	ldr r2, _080A9C54 @ =0xFFFFE000
	subs r3, r2, r0
	ldr r0, [r7, #0x40]
	ldr r5, [sp, #0x28]
	adds r0, r0, r5
	ldr r1, [r7, #0x44]
	mov r5, sb
	ldrb r2, [r5]
	subs r2, #1
	str r2, [sp]
	mov r2, r8
	str r2, [sp, #4]
	adds r2, r4, #0
	bl sub_0806DABC
	movs r0, #0
	movs r1, #1
	movs r2, #4
	bl sub_08011F7C
	movs r0, #0x7c
	bl PlaySong
	movs r3, #0xf4
	lsls r3, r3, #9
	movs r6, #0x88
	lsls r6, r6, #0xd
	str r6, [sp]
	movs r4, #0xa
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #2
	bl sub_080AC468
	movs r3, #0xaa
	lsls r3, r3, #9
	str r6, [sp]
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #7
	bl sub_080AC468
	bl _080AA798
	.align 2, 0
_080A9C4C: .4byte 0x00007FFF
_080A9C50: .4byte 0x00003FFF
_080A9C54: .4byte 0xFFFFE000
_080A9C58: .4byte 0xFFFF8000
_080A9C5C:
	adds r0, r7, #0
	mov r1, sl
	bl sub_080ACF30
	ldrb r1, [r7, #0xd]
	cmp r1, #3
	bls _080A9C7C
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080A9C7C
	movs r0, #0
	movs r1, #0
	movs r2, #2
	bl sub_08011F7C
_080A9C7C:
	ldrb r5, [r7, #0xd]
	cmp r5, #0xa
	bne _080A9CEE
	movs r3, #0xe8
	lsls r3, r3, #9
	movs r0, #0xc0
	lsls r0, r0, #0xe
	mov sb, r0
	str r0, [sp]
	str r5, [sp, #4]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	bl sub_080AC468
	movs r3, #0xf2
	lsls r3, r3, #9
	movs r4, #0x88
	lsls r4, r4, #0xd
	str r4, [sp]
	str r5, [sp, #4]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #2
	bl sub_080AC468
	movs r1, #0x94
	lsls r1, r1, #9
	mov r8, r1
	movs r0, #0xa0
	lsls r0, r0, #0xb
	str r0, [sp]
	str r5, [sp, #4]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #3
	mov r3, r8
	bl sub_080AC468
	movs r3, #0xa8
	lsls r3, r3, #9
	str r4, [sp]
	str r5, [sp, #4]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #7
	bl sub_080AC468
	mov r2, sb
	str r2, [sp]
	str r5, [sp, #4]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #8
	mov r3, r8
	bl sub_080AC468
_080A9CEE:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080A9CFE
	bl _080AA798
_080A9CFE:
	adds r0, r7, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r2, r7, #0
	adds r2, #0x42
	movs r3, #0
	ldrsh r1, [r2, r3]
	subs r0, r0, r1
	mov sb, r2
	cmp r0, #0
	bge _080A9D1A
	rsbs r0, r0, #0
_080A9D1A:
	cmp r0, #0x8b
	bgt _080A9D2C
	bl RandomNumberGenerator2
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x2f
	bhi _080A9D2C
	b _080AA412
_080A9D2C:
	adds r2, r7, #0
	adds r2, #0x21
	movs r3, #0
	ldrsb r3, [r2, r3]
	adds r1, r7, #0
	adds r1, #0x58
	ldrb r4, [r1]
	lsls r0, r4, #0x19
	lsrs r0, r0, #0x1f
	adds r5, r1, #0
	mov sl, r2
	cmp r3, r0
	bne _080A9DB8
	movs r0, #0x40
	mov r8, r0
	ands r0, r4
	movs r6, #0x6e
	rsbs r6, r6, #0
	cmp r0, #0
	beq _080A9D56
	movs r6, #0x6e
_080A9D56:
	mov r1, sb
	ldrh r0, [r1]
	ldr r2, [sp, #0x2c]
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	adds r0, r0, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r1, [r1]
	ldr r3, [sp, #0x2c]
	ldrh r3, [r3, #0xa]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	bne _080A9DAA
	ldrb r1, [r5]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	bne _080A9D9E
	adds r0, r7, #0
	movs r1, #0x18
	bl sub_0806D188
	cmp r0, #1
	beq _080A9DAA
	ldrb r1, [r5]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _080A9E00
_080A9D9E:
	adds r0, r7, #0
	movs r1, #0x18
	bl sub_0806D188
	cmp r0, #2
	bne _080A9E00
_080A9DAA:
	movs r2, #1
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r0, r1
	b _080A9DF6
_080A9DB8:
	movs r0, #0x40
	ands r0, r4
	movs r6, #0x6e
	cmp r0, #0
	beq _080A9DC4
	subs r6, #0xdc
_080A9DC4:
	mov r1, sb
	ldrh r0, [r1]
	ldr r2, [sp, #0x2c]
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	adds r0, r0, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r1, [r1]
	ldr r3, [sp, #0x2c]
	ldrh r3, [r3, #0xa]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	movs r2, #1
	cmp r0, #0
	beq _080A9DFA
	movs r2, #0
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
_080A9DF6:
	mov r5, sl
	strb r0, [r5]
_080A9DFA:
	cmp r2, #0
	beq _080A9E00
	b _080A9F40
_080A9E00:
	movs r2, #0
	movs r0, #0x50
	strb r0, [r7, #0xd]
	movs r1, #4
	strb r1, [r7, #0xb]
	adds r0, r7, #0
	adds r0, #0x20
	strb r1, [r0]
	str r2, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0
	movs r3, #0
	bl sub_080AC468
	movs r0, #0xdc
	lsls r0, r0, #9
	mov r8, r0
	movs r1, #0xc0
	lsls r1, r1, #0xe
	mov sl, r1
	str r1, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	mov r3, r8
	bl sub_080AC468
	movs r3, #0xec
	lsls r3, r3, #9
	movs r2, #0x88
	lsls r2, r2, #0xd
	mov sb, r2
	str r2, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #2
	bl sub_080AC468
	movs r3, #0xd8
	lsls r3, r3, #9
	movs r4, #0xa0
	lsls r4, r4, #0xb
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #1
	bl sub_080AC468
	movs r3, #0xa8
	lsls r3, r3, #9
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #3
	bl sub_080AC468
	movs r3, #0xb4
	lsls r3, r3, #9
	mov r5, sb
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #7
	bl sub_080AC468
	movs r3, #0xa0
	lsls r3, r3, #9
	mov r0, sl
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #8
	bl sub_080AC468
	movs r3, #0xd0
	lsls r3, r3, #9
	movs r1, #0x80
	lsls r1, r1, #0xc
	mov sb, r1
	str r1, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #3
	bl sub_080AC468
	movs r3, #0xd6
	lsls r3, r3, #9
	movs r0, #0xe8
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #3
	bl sub_080AC468
	movs r0, #0x98
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #3
	mov r3, r8
	bl sub_080AC468
	movs r2, #0x90
	lsls r2, r2, #9
	mov r8, r2
	movs r0, #0xb0
	lsls r0, r0, #0xd
	str r0, [sp]
	movs r4, #0x96
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	mov r3, r8
	bl sub_080ACFA0
	movs r0, #0xe0
	lsls r0, r0, #0xc
	str r0, [sp]
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xb
	movs r2, #0xa
	mov r3, r8
	bl sub_080ACFA0
	mov r3, sb
	str r3, [sp]
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	mov r3, r8
	bl sub_080ACFA0
	movs r3, #0x98
	lsls r3, r3, #9
	b _080AA638
_080A9F40:
	cmp r2, #1
	beq _080A9F48
	bl _080AA798
_080A9F48:
	movs r2, #0
	movs r0, #0xa
	strb r0, [r7, #0xb]
	movs r0, #0x32
	strb r0, [r7, #0xd]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #4
	strb r0, [r1]
	str r2, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #6
	movs r3, #0
	bl sub_080AC468
	movs r5, #0xdc
	lsls r5, r5, #9
	mov r8, r5
	movs r0, #0xc0
	lsls r0, r0, #0xe
	mov sl, r0
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #6
	mov r3, r8
	bl sub_080AC468
	movs r3, #0xec
	lsls r3, r3, #9
	movs r1, #0x88
	lsls r1, r1, #0xd
	mov sb, r1
	str r1, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #8
	bl sub_080AC468
	movs r3, #0xd8
	lsls r3, r3, #9
	movs r4, #0xa0
	lsls r4, r4, #0xb
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #7
	bl sub_080AC468
	movs r3, #0xa8
	lsls r3, r3, #9
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #3
	bl sub_080AC468
	movs r3, #0xb4
	lsls r3, r3, #9
	mov r2, sb
	str r2, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	bl sub_080AC468
	movs r3, #0xa0
	lsls r3, r3, #9
	mov r5, sl
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #2
	bl sub_080AC468
	movs r3, #0xd0
	lsls r3, r3, #9
	movs r0, #0x80
	lsls r0, r0, #0xc
	mov sb, r0
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #3
	bl sub_080AC468
	movs r3, #0xd6
	lsls r3, r3, #9
	movs r0, #0xe8
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #3
	bl sub_080AC468
	movs r0, #0x98
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #3
	mov r3, r8
	bl sub_080AC468
	movs r1, #0x90
	lsls r1, r1, #9
	mov r8, r1
	movs r0, #0xb0
	lsls r0, r0, #0xd
	str r0, [sp]
	movs r4, #0x96
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	mov r3, r8
	bl sub_080ACFA0
	movs r0, #0xe0
	lsls r0, r0, #0xc
	str r0, [sp]
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xb
	movs r2, #0xa
	mov r3, r8
	bl sub_080ACFA0
	mov r2, sb
	str r2, [sp]
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	mov r3, r8
	bl sub_080ACFA0
	movs r3, #0x98
	lsls r3, r3, #9
	b _080AA638
_080AA08C:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_080ACF30
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080AA0A2
	b _080AA798
_080AA0A2:
	movs r0, #0x50
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #5
	strb r0, [r1]
	movs r0, #0
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #6
	movs r3, #0
	bl sub_080AC468
	movs r3, #0xe8
	lsls r3, r3, #9
	movs r5, #0xc0
	lsls r5, r5, #0xe
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #6
	bl sub_080AC468
	movs r3, #0xf2
	lsls r3, r3, #9
	movs r0, #0x88
	lsls r0, r0, #0xd
	mov sl, r0
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #8
	bl sub_080AC468
	movs r3, #0xec
	lsls r3, r3, #9
	movs r4, #0xa0
	lsls r4, r4, #0xb
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #7
	bl sub_080AC468
	movs r1, #0x94
	lsls r1, r1, #9
	mov sb, r1
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #3
	mov r3, sb
	bl sub_080AC468
	movs r3, #0xa8
	lsls r3, r3, #9
	mov r2, sl
	str r2, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	bl sub_080AC468
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #2
	mov r3, sb
	bl sub_080AC468
	movs r3, #0xd0
	lsls r3, r3, #9
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #3
	bl sub_080AC468
	movs r3, #0xda
	lsls r3, r3, #9
	movs r0, #0xe8
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #3
	bl sub_080AC468
	movs r3, #0xe0
	lsls r3, r3, #9
_080AA186:
	movs r0, #0x98
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #3
	bl sub_080AC468
	b _080AA798
_080AA19C:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_080ACF30
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080AA1B2
	b _080AA798
_080AA1B2:
	movs r0, #0x14
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0
	strb r0, [r7, #0xc]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #6
	bl sub_080ACEC4
	ldr r4, _080AA200 @ =0xFFF30000
	adds r0, r7, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_080ACF00
	adds r0, r7, #0
	movs r1, #6
	adds r2, r4, #0
	bl sub_080ACF00
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #5
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AA20C
	ldr r6, _080AA204 @ =0xFFFA0000
	ldr r3, _080AA208 @ =0xFFE20000
	str r3, [sp, #0x28]
	b _080AA216
	.align 2, 0
_080AA200: .4byte 0xFFF30000
_080AA204: .4byte 0xFFFA0000
_080AA208: .4byte 0xFFE20000
_080AA20C:
	movs r6, #0xc0
	lsls r6, r6, #0xb
	movs r5, #0xf0
	lsls r5, r5, #0xd
	str r5, [sp, #0x28]
_080AA216:
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r0, _080AA32C @ =0x00007FFF
	ands r4, r0
	movs r1, #0x80
	lsls r1, r1, #8
	adds r4, r4, r1
	bl RandomNumberGenerator
	adds r3, r0, #0
	ldr r2, _080AA330 @ =0x00003FFF
	ands r3, r2
	ldr r5, _080AA334 @ =0xFFFFE000
	subs r3, r5, r3
	ldr r0, [r7, #0x40]
	adds r0, r0, r6
	ldr r1, [r7, #0x44]
	movs r2, #0x5c
	adds r2, r2, r7
	mov sb, r2
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	movs r5, #1
	mov r8, r5
	str r5, [sp, #4]
	adds r2, r4, #0
	bl sub_0806DABC
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r0, _080AA32C @ =0x00007FFF
	ands r4, r0
	ldr r1, _080AA338 @ =0xFFFF8000
	subs r4, r1, r4
	bl RandomNumberGenerator
	adds r3, r0, #0
	ldr r2, _080AA330 @ =0x00003FFF
	ands r3, r2
	ldr r5, _080AA334 @ =0xFFFFE000
	subs r3, r5, r3
	ldr r0, [r7, #0x40]
	adds r0, r0, r6
	ldr r1, [r7, #0x44]
	mov r5, sb
	ldrb r2, [r5]
	subs r2, #1
	str r2, [sp]
	mov r2, r8
	str r2, [sp, #4]
	adds r2, r4, #0
	bl sub_0806DABC
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r3, _080AA32C @ =0x00007FFF
	ands r4, r3
	movs r5, #0x80
	lsls r5, r5, #8
	adds r4, r4, r5
	bl RandomNumberGenerator
	adds r3, r0, #0
	ldr r0, _080AA330 @ =0x00003FFF
	ands r3, r0
	ldr r1, _080AA334 @ =0xFFFFE000
	subs r3, r1, r3
	ldr r0, [r7, #0x40]
	ldr r2, [sp, #0x28]
	adds r0, r0, r2
	ldr r1, [r7, #0x44]
	mov r5, sb
	ldrb r2, [r5]
	subs r2, #1
	str r2, [sp]
	mov r2, r8
	str r2, [sp, #4]
	adds r2, r4, #0
	bl sub_0806DABC
	bl RandomNumberGenerator
	ldr r3, _080AA32C @ =0x00007FFF
	ands r0, r3
	ldr r5, _080AA338 @ =0xFFFF8000
	subs r4, r5, r0
	bl RandomNumberGenerator
	ldr r1, _080AA330 @ =0x00003FFF
	ands r0, r1
	ldr r2, _080AA334 @ =0xFFFFE000
	subs r3, r2, r0
	ldr r0, [r7, #0x40]
	ldr r5, [sp, #0x28]
	adds r0, r0, r5
	ldr r1, [r7, #0x44]
	mov r5, sb
	ldrb r2, [r5]
	subs r2, #1
	str r2, [sp]
	mov r2, r8
	str r2, [sp, #4]
	adds r2, r4, #0
	bl sub_0806DABC
	movs r0, #0
	movs r1, #1
	movs r2, #4
	bl sub_08011F7C
	movs r0, #0x7c
	bl PlaySong
	movs r3, #0xf4
	lsls r3, r3, #9
	movs r6, #0x88
	lsls r6, r6, #0xd
	str r6, [sp]
	movs r4, #0xa
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #8
	bl sub_080AC468
	movs r3, #0xaa
	lsls r3, r3, #9
	str r6, [sp]
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	bl sub_080AC468
	b _080AA798
	.align 2, 0
_080AA32C: .4byte 0x00007FFF
_080AA330: .4byte 0x00003FFF
_080AA334: .4byte 0xFFFFE000
_080AA338: .4byte 0xFFFF8000
_080AA33C:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_080ACF30
	ldrb r1, [r7, #0xd]
	cmp r1, #3
	bls _080AA35C
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080AA35C
	movs r0, #0
	movs r1, #0
	movs r2, #2
	bl sub_08011F7C
_080AA35C:
	ldrb r3, [r7, #0xd]
	mov r8, r3
	cmp r3, #0xa
	bne _080AA3D8
	movs r3, #0xe8
	lsls r3, r3, #9
	movs r5, #0xc0
	lsls r5, r5, #0xe
	mov sl, r5
	str r5, [sp]
	mov r0, r8
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #6
	bl sub_080AC468
	movs r3, #0xf2
	lsls r3, r3, #9
	movs r4, #0x88
	lsls r4, r4, #0xd
	str r4, [sp]
	mov r1, r8
	str r1, [sp, #4]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #8
	bl sub_080AC468
	movs r2, #0x94
	lsls r2, r2, #9
	mov sb, r2
	movs r0, #0xa0
	lsls r0, r0, #0xb
	str r0, [sp]
	mov r3, r8
	str r3, [sp, #4]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #3
	mov r3, sb
	bl sub_080AC468
	movs r3, #0xa8
	lsls r3, r3, #9
	str r4, [sp]
	mov r5, r8
	str r5, [sp, #4]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	bl sub_080AC468
	mov r0, sl
	str r0, [sp]
	str r5, [sp, #4]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #2
	mov r3, sb
	bl sub_080AC468
_080AA3D8:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080AA3E6
	b _080AA798
_080AA3E6:
	adds r0, r7, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r2, r7, #0
	adds r2, #0x42
	movs r3, #0
	ldrsh r1, [r2, r3]
	subs r0, r0, r1
	mov sb, r2
	cmp r0, #0
	bge _080AA402
	rsbs r0, r0, #0
_080AA402:
	cmp r0, #0x8b
	bgt _080AA41C
	bl RandomNumberGenerator2
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x2f
	bhi _080AA41C
_080AA412:
	movs r0, #1
	strb r0, [r7, #0xa]
	movs r0, #0
	strb r0, [r7, #0xb]
	b _080AA798
_080AA41C:
	adds r4, r7, #0
	adds r4, #0x21
	movs r1, #0
	ldrsb r1, [r4, r1]
	movs r5, #0x58
	adds r5, r5, r7
	mov r8, r5
	ldrb r2, [r5]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	mov sl, r4
	cmp r1, r0
	bne _080AA4B0
	movs r4, #0x40
	adds r0, r4, #0
	ands r0, r2
	movs r6, #0x6e
	rsbs r6, r6, #0
	cmp r0, #0
	beq _080AA446
	movs r6, #0x6e
_080AA446:
	mov r1, sb
	ldrh r0, [r1]
	ldr r2, [sp, #0x2c]
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	adds r0, r0, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r1, [r1]
	ldr r3, [sp, #0x2c]
	ldrh r3, [r3, #0xa]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	bne _080AA49E
	mov r0, r8
	ldrb r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _080AA492
	adds r0, r7, #0
	movs r1, #0x18
	bl sub_0806D188
	cmp r0, #1
	beq _080AA49E
	mov r2, r8
	ldrb r1, [r2]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080AA4F8
_080AA492:
	adds r0, r7, #0
	movs r1, #0x18
	bl sub_0806D188
	cmp r0, #2
	bne _080AA4F8
_080AA49E:
	movs r2, #1
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r0, r1
	mov r3, sl
	strb r0, [r3]
	b _080AA4F2
_080AA4B0:
	movs r0, #0x40
	ands r0, r2
	movs r6, #0x6e
	cmp r0, #0
	beq _080AA4BC
	subs r6, #0xdc
_080AA4BC:
	mov r5, sb
	ldrh r0, [r5]
	ldr r1, [sp, #0x2c]
	ldrh r1, [r1, #6]
	adds r0, r0, r1
	adds r0, r0, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r1, [r1]
	ldr r2, [sp, #0x2c]
	ldrh r2, [r2, #0xa]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	movs r2, #1
	cmp r0, #0
	beq _080AA4F2
	movs r2, #0
	mov r3, r8
	ldrb r0, [r3]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	strb r0, [r4]
_080AA4F2:
	cmp r2, #0
	beq _080AA4F8
	b _080AA64C
_080AA4F8:
	movs r2, #0
	movs r0, #0x50
	strb r0, [r7, #0xd]
	movs r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	str r2, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #6
	movs r3, #0
	bl sub_080AC468
	movs r5, #0xdc
	lsls r5, r5, #9
	mov sb, r5
	movs r0, #0xc0
	lsls r0, r0, #0xe
	mov r8, r0
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #6
	mov r3, sb
	bl sub_080AC468
	movs r3, #0xec
	lsls r3, r3, #9
	movs r1, #0x88
	lsls r1, r1, #0xd
	str r1, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #8
	bl sub_080AC468
	movs r3, #0xd8
	lsls r3, r3, #9
	movs r4, #0xa0
	lsls r4, r4, #0xb
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #7
	bl sub_080AC468
	movs r2, #0xa8
	lsls r2, r2, #9
	mov sl, r2
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #3
	mov r3, sl
_080AA57E:
	bl sub_080AC468
	movs r3, #0xb4
	lsls r3, r3, #9
	movs r5, #0x88
	lsls r5, r5, #0xd
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	bl sub_080AC468
	movs r3, #0xa0
	lsls r3, r3, #9
	mov r0, r8
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #2
	bl sub_080AC468
	movs r3, #0xd0
	lsls r3, r3, #9
	movs r1, #0x80
	lsls r1, r1, #0xc
	mov r8, r1
	str r1, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #3
	bl sub_080AC468
	movs r3, #0xd6
	lsls r3, r3, #9
	movs r0, #0xe8
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #3
	bl sub_080AC468
	movs r0, #0x98
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #3
	mov r3, sb
	bl sub_080AC468
	movs r0, #0xb0
	lsls r0, r0, #0xd
	str r0, [sp]
	movs r4, #0x96
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	mov r3, sl
	bl sub_080ACFA0
	movs r0, #0xe0
	lsls r0, r0, #0xc
	str r0, [sp]
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xb
	movs r2, #0xa
	mov r3, sl
	bl sub_080ACFA0
	mov r2, r8
	str r2, [sp]
_080AA626:
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	mov r3, sl
	bl sub_080ACFA0
	movs r3, #0xc0
	lsls r3, r3, #9
_080AA638:
	movs r0, #0xb0
	lsls r0, r0, #0xe
	str r0, [sp]
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_080ACFA0
	b _080AA798
_080AA64C:
	cmp r2, #1
	beq _080AA652
	b _080AA798
_080AA652:
	movs r2, #0
	movs r0, #7
	strb r0, [r7, #0xb]
	movs r0, #0x32
	strb r0, [r7, #0xd]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	str r2, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0
	movs r3, #0
	bl sub_080AC468
	movs r3, #0xdc
	lsls r3, r3, #9
	mov sb, r3
	movs r5, #0xc0
	lsls r5, r5, #0xe
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	bl sub_080AC468
	movs r3, #0xec
	lsls r3, r3, #9
	movs r0, #0x88
	lsls r0, r0, #0xd
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #2
	bl sub_080AC468
	movs r3, #0xd8
	lsls r3, r3, #9
	movs r4, #0xa0
	lsls r4, r4, #0xb
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #1
	bl sub_080AC468
	movs r1, #0xa8
	lsls r1, r1, #9
	mov sl, r1
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #3
	mov r3, sl
	bl sub_080AC468
	movs r3, #0xb4
	lsls r3, r3, #9
	movs r2, #0x88
	lsls r2, r2, #0xd
	str r2, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #7
	bl sub_080AC468
	movs r3, #0xa0
	lsls r3, r3, #9
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #8
	bl sub_080AC468
	movs r3, #0xd0
	lsls r3, r3, #9
	movs r5, #0x80
	lsls r5, r5, #0xc
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #3
	bl sub_080AC468
	movs r3, #0xd6
	lsls r3, r3, #9
	movs r0, #0xe8
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #3
	bl sub_080AC468
	movs r0, #0x98
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #3
	mov r3, sb
	bl sub_080AC468
	movs r0, #0xb0
	lsls r0, r0, #0xd
	str r0, [sp]
	movs r4, #0x96
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	mov r3, sl
	bl sub_080ACFA0
	movs r0, #0xe0
	lsls r0, r0, #0xc
	str r0, [sp]
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xb
	movs r2, #0xa
	mov r3, sl
	bl sub_080ACFA0
	str r5, [sp]
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	mov r3, sl
	bl sub_080ACFA0
	movs r3, #0xc0
	lsls r3, r3, #9
	movs r0, #0xb0
	lsls r0, r0, #0xe
	str r0, [sp]
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_080ACFA0
_080AA798:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080AA7A8
sub_080AA7A8: @ 0x080AA7A8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x38
	adds r7, r0, #0
	ldr r1, _080AA7E8 @ =0x08119328
	add r0, sp, #8
	movs r2, #0xe
	bl memcpy
	add r4, sp, #0x18
	ldr r1, _080AA7EC @ =0x08119336
	adds r0, r4, #0
	movs r2, #0xe
	bl memcpy
	add r0, sp, #0x28
	ldr r1, _080AA7F0 @ =0x08119344
	movs r2, #0xe
	bl memcpy
	ldrb r0, [r7, #0xb]
	cmp r0, #0x27
	bls _080AA7DE
	bl _080AC006
_080AA7DE:
	lsls r0, r0, #2
	ldr r1, _080AA7F4 @ =_080AA7F8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080AA7E8: .4byte 0x08119328
_080AA7EC: .4byte 0x08119336
_080AA7F0: .4byte 0x08119344
_080AA7F4: .4byte _080AA7F8
_080AA7F8: @ jump table
	.4byte _080AA898 @ case 0
	.4byte _080AABCE @ case 1
	.4byte _080AAC28 @ case 2
	.4byte _080AAC82 @ case 3
	.4byte _080AACC2 @ case 4
	.4byte _080AAD02 @ case 5
	.4byte _080AAD34 @ case 6
	.4byte _080AAD76 @ case 7
	.4byte _080AAEE0 @ case 8
	.4byte _080ABB34 @ case 9
	.4byte _080AC006 @ case 10
	.4byte _080AAEE8 @ case 11
	.4byte _080AAF42 @ case 12
	.4byte _080AAF9C @ case 13
	.4byte _080AB100 @ case 14
	.4byte _080AB15C @ case 15
	.4byte _080AB27C @ case 16
	.4byte _080AB2BE @ case 17
	.4byte _080ABFBE @ case 18
	.4byte _080AB424 @ case 19
	.4byte _080AB444 @ case 20
	.4byte _080AB6FC @ case 21
	.4byte _080AB740 @ case 22
	.4byte _080AB7D0 @ case 23
	.4byte _080AB908 @ case 24
	.4byte _080AB930 @ case 25
	.4byte _080AB9B0 @ case 26
	.4byte _080AB9DA @ case 27
	.4byte _080ABB2E @ case 28
	.4byte _080ABB34 @ case 29
	.4byte _080AC006 @ case 30
	.4byte _080ABB5E @ case 31
	.4byte _080ABB9E @ case 32
	.4byte _080ABC2C @ case 33
	.4byte _080ABD7C @ case 34
	.4byte _080ABDAC @ case 35
	.4byte _080ABE2C @ case 36
	.4byte _080ABE56 @ case 37
	.4byte _080ABFBE @ case 38
	.4byte _080ABFE0 @ case 39
_080AA898:
	adds r0, r7, #0
	bl sub_080ACFD4
	bl RandomNumberGenerator
	movs r4, #0x7f
	ands r0, r4
	cmp r0, #0x29
	bhi _080AA8AE
	movs r0, #0
	b _080AA8C2
_080AA8AE:
	bl RandomNumberGenerator
	ands r0, r4
	cmp r0, #0x29
	bls _080AA8C0
	movs r0, #0x14
	strb r0, [r7, #0xb]
	bl _080AC006
_080AA8C0:
	movs r0, #1
_080AA8C2:
	strb r0, [r7, #0x10]
	movs r0, #0x20
	adds r0, r0, r7
	mov r8, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	beq _080AA8D6
	b _080AAA16
_080AA8D6:
	movs r5, #0
	movs r0, #1
	strb r0, [r7, #0xb]
	strb r5, [r7, #0x18]
	movs r0, #0x78
	strb r0, [r7, #0xd]
	str r5, [sp]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #6
	movs r3, #0
	bl sub_080ACFA0
	movs r3, #0xcc
	lsls r3, r3, #9
	movs r0, #0xc0
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #6
	bl sub_080ACFA0
	movs r3, #0xf0
	lsls r3, r3, #9
	movs r6, #0x88
	lsls r6, r6, #0xd
	str r6, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #8
	bl sub_080ACFA0
	movs r3, #0xd4
	lsls r3, r3, #9
	movs r4, #0xa0
	lsls r4, r4, #0xb
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #7
	bl sub_080ACFA0
	movs r3, #0xb0
	lsls r3, r3, #9
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #3
	bl sub_080ACFA0
	movs r3, #0xc0
	lsls r3, r3, #9
	str r6, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	bl sub_080ACFA0
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080ACFA0
	movs r3, #0xc8
	lsls r3, r3, #9
	movs r5, #0x80
	lsls r5, r5, #0xc
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #3
	bl sub_080ACFA0
	movs r3, #0xca
	lsls r3, r3, #9
	movs r0, #0xe8
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #3
	bl sub_080ACFA0
	movs r3, #0xd0
	lsls r3, r3, #9
	movs r0, #0x98
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #3
	bl sub_080ACFA0
	movs r0, #0x10
	ldrsb r0, [r7, r0]
	cmp r0, #0
	bne _080AA9C8
	movs r0, #6
	b _080AAB06
_080AA9C8:
	movs r0, #0xe
	mov r2, r8
	strb r0, [r2]
	movs r4, #0x98
	lsls r4, r4, #9
	movs r0, #0xb0
	lsls r0, r0, #0xd
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	adds r3, r4, #0
	bl sub_080ACFA0
	movs r0, #0xe0
	lsls r0, r0, #0xc
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xb
	movs r2, #0xa
	adds r3, r4, #0
	bl sub_080ACFA0
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_080ACFA0
	movs r3, #0x80
	lsls r3, r3, #5
	b _080AABB2
_080AAA16:
	movs r5, #0
	movs r0, #0xb
	strb r0, [r7, #0xb]
	strb r5, [r7, #0x18]
	movs r0, #0x78
	strb r0, [r7, #0xd]
	str r5, [sp]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #6
	movs r3, #0
	bl sub_080ACFA0
	movs r3, #0xcc
	lsls r3, r3, #9
	movs r0, #0xc0
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	bl sub_080ACFA0
	movs r3, #0xf0
	lsls r3, r3, #9
	movs r6, #0x88
	lsls r6, r6, #0xd
	str r6, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #2
	bl sub_080ACFA0
	movs r3, #0xd4
	lsls r3, r3, #9
	movs r4, #0xa0
	lsls r4, r4, #0xb
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #1
	bl sub_080ACFA0
	movs r3, #0xb0
	lsls r3, r3, #9
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #3
	bl sub_080ACFA0
	movs r3, #0xc0
	lsls r3, r3, #9
	str r6, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #7
	bl sub_080ACFA0
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080ACFA0
	movs r3, #0xc8
	lsls r3, r3, #9
	movs r5, #0x80
	lsls r5, r5, #0xc
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #3
	bl sub_080ACFA0
	movs r3, #0xca
	lsls r3, r3, #9
	movs r0, #0xe8
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #3
	bl sub_080ACFA0
	movs r3, #0xd0
	lsls r3, r3, #9
	movs r0, #0x98
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #3
	bl sub_080ACFA0
	movs r0, #0x10
	ldrsb r0, [r7, r0]
	cmp r0, #0
	bne _080AAB66
	movs r0, #0xa
_080AAB06:
	mov r1, r8
	strb r0, [r1]
	movs r4, #0x90
	lsls r4, r4, #9
	movs r0, #0xb0
	lsls r0, r0, #0xd
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	adds r3, r4, #0
	bl sub_080ACFA0
	movs r0, #0xe0
	lsls r0, r0, #0xc
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xb
	movs r2, #0xa
	adds r3, r4, #0
	bl sub_080ACFA0
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_080ACFA0
	movs r3, #0xb8
	lsls r3, r3, #9
	movs r0, #0xb0
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_080ACFA0
	b _080AABC6
_080AAB66:
	movs r0, #0x12
	mov r2, r8
	strb r0, [r2]
	movs r4, #0x98
	lsls r4, r4, #9
	movs r0, #0xb0
	lsls r0, r0, #0xd
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	adds r3, r4, #0
	bl sub_080ACFA0
	movs r0, #0xe0
	lsls r0, r0, #0xc
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xb
	movs r2, #0xa
	adds r3, r4, #0
	bl sub_080ACFA0
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_080ACFA0
	movs r3, #0xc0
	lsls r3, r3, #7
_080AABB2:
	movs r0, #0xb0
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_080ACFA0
_080AABC6:
	movs r0, #0x28
	strb r0, [r7, #0xd]
	bl _080AC006
_080AABCE:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_080ACF30
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080AABE6
	bl _080AC006
_080AABE6:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0x28
	strb r0, [r7, #0xd]
	movs r3, #0xca
	lsls r3, r3, #9
	movs r0, #0xe8
	lsls r0, r0, #0xe
	str r0, [sp]
	movs r0, #0x50
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #3
	bl sub_080ACFA0
	movs r0, #0x10
	ldrsb r0, [r7, r0]
	cmp r0, #0
	bne _080AAC1C
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #7
	strb r0, [r1]
	bl _080AC006
_080AAC1C:
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0xf
	strb r0, [r1]
	bl _080AC006
_080AAC28:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_080ACF30
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080AAC40
	bl _080AC006
_080AAC40:
	movs r0, #0x28
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r3, #0xca
	lsls r3, r3, #9
	movs r0, #0xe8
	lsls r0, r0, #0xe
	str r0, [sp]
	movs r0, #0x3c
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #3
	bl sub_080ACFA0
	movs r0, #0x10
	ldrsb r0, [r7, r0]
	cmp r0, #0
	bne _080AAC76
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #6
	strb r0, [r1]
	bl _080AC006
_080AAC76:
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0xe
	strb r0, [r1]
	bl _080AC006
_080AAC82:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_080ACF30
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080AAC9A
	bl _080AC006
_080AAC9A:
	movs r0, #0x18
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0x86
	bl PlaySong
	movs r0, #0x10
	ldrsb r0, [r7, r0]
	cmp r0, #0
	bne _080AACBA
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #8
	b _080AAFD2
_080AACBA:
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #8
	b _080AB06A
_080AACC2:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_080ACF30
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080AACDA
	bl _080AC006
_080AACDA:
	movs r0, #6
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0x10
	ldrsb r0, [r7, r0]
	cmp r0, #0
	bne _080AACFA
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #9
	strb r0, [r1]
	movs r3, #0xb8
	lsls r3, r3, #9
	b _080AB144
_080AACFA:
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x11
	b _080AB13E
_080AAD02:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_080ACF30
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080AAD1A
	bl _080AC006
_080AAD1A:
	movs r1, #0x20
	strb r1, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0x10
	ldrsb r0, [r7, r0]
	cmp r0, #0
	bne _080AAD2E
	b _080AB186
_080AAD2E:
	movs r3, #0xcf
	lsls r3, r3, #9
	b _080AB200
_080AAD34:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_080ACF30
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080AAD4C
	bl _080AC006
_080AAD4C:
	movs r0, #8
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0x10
	ldrsb r0, [r7, r0]
	cmp r0, #0
	bne _080AAD6A
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #9
	strb r0, [r1]
	bl _080AC006
_080AAD6A:
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x11
	strb r0, [r1]
	bl _080AC006
_080AAD76:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_080ACF30
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r1, #0
	mov r8, r1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080AAD92
	bl _080AC006
_080AAD92:
	movs r0, #0x3c
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	mov r2, r8
	str r2, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #6
	movs r3, #0
	bl sub_080ACFA0
	movs r5, #0xd4
	lsls r5, r5, #9
	movs r0, #0xc0
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #6
	adds r3, r5, #0
	bl sub_080ACFA0
	movs r3, #0xe8
	lsls r3, r3, #9
	movs r6, #0x88
	lsls r6, r6, #0xd
	str r6, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #8
	bl sub_080ACFA0
	movs r4, #0xa0
	lsls r4, r4, #0xb
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #7
	adds r3, r5, #0
	bl sub_080ACFA0
	movs r3, #0xac
	lsls r3, r3, #9
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #3
	bl sub_080ACFA0
	movs r3, #0xb2
	lsls r3, r3, #9
	str r6, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	bl sub_080ACFA0
	mov r0, r8
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080ACFA0
	movs r3, #0xd0
	lsls r3, r3, #9
	movs r5, #0x80
	lsls r5, r5, #0xc
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #3
	bl sub_080ACFA0
	movs r3, #0xd2
	lsls r3, r3, #9
	movs r0, #0xe8
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #3
	bl sub_080ACFA0
	movs r3, #0xd8
	lsls r3, r3, #9
	movs r0, #0x98
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #3
	bl sub_080ACFA0
	movs r4, #0xa8
	lsls r4, r4, #9
	movs r0, #0xb0
	lsls r0, r0, #0xd
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	adds r3, r4, #0
	bl sub_080ACFA0
	movs r0, #0xe0
	lsls r0, r0, #0xc
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xb
	movs r2, #0xa
	adds r3, r4, #0
	bl sub_080ACFA0
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_080ACFA0
	movs r0, #0x10
	ldrsb r0, [r7, r0]
	cmp r0, #0
	bne _080AAED6
	movs r3, #0xc0
	lsls r3, r3, #9
	bl _080ABFA8
_080AAED6:
	ldr r3, _080AAEDC @ =0xFFFFF000
	bl _080ABFA8
	.align 2, 0
_080AAEDC: .4byte 0xFFFFF000
_080AAEE0:
	adds r0, r7, #0
	add r1, sp, #8
	bl _080ABFC2
_080AAEE8:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080ACF30
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080AAF00
	bl _080AC006
_080AAF00:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0x28
	strb r0, [r7, #0xd]
	movs r3, #0xca
	lsls r3, r3, #9
	movs r0, #0xe8
	lsls r0, r0, #0xe
	str r0, [sp]
	movs r0, #0x50
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #3
	bl sub_080ACFA0
	movs r0, #0x10
	ldrsb r0, [r7, r0]
	cmp r0, #0
	bne _080AAF36
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0xb
	strb r0, [r1]
	bl _080AC006
_080AAF36:
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x13
	strb r0, [r1]
	bl _080AC006
_080AAF42:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080ACF30
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080AAF5A
	bl _080AC006
_080AAF5A:
	movs r0, #0x28
	strb r0, [r7, #0xd]
	movs r3, #0xca
	lsls r3, r3, #9
	movs r0, #0xe8
	lsls r0, r0, #0xe
	str r0, [sp]
	movs r0, #0x3c
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #3
	bl sub_080ACFA0
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0x10
	ldrsb r0, [r7, r0]
	cmp r0, #0
	bne _080AAF90
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0xa
	strb r0, [r1]
	bl _080AC006
_080AAF90:
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x12
	strb r0, [r1]
	bl _080AC006
_080AAF9C:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080ACF30
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080AAFB4
	bl _080AC006
_080AAFB4:
	movs r0, #0x18
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0x86
	bl PlaySong
	movs r0, #0x10
	ldrsb r0, [r7, r0]
	cmp r0, #0
	bne _080AB064
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0xc
_080AAFD2:
	strb r0, [r1]
	movs r3, #0xcc
	lsls r3, r3, #9
	movs r0, #0x98
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #3
	bl sub_080AC468
	movs r3, #0xc4
	lsls r3, r3, #9
	movs r0, #0xe8
	lsls r0, r0, #0xe
	str r0, [sp]
	movs r0, #0x32
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #3
	bl sub_080ACFA0
	movs r4, #0xb0
	lsls r4, r4, #9
	movs r0, #0xb0
	lsls r0, r0, #0xd
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	adds r3, r4, #0
	bl sub_080AC468
	movs r0, #0xe0
	lsls r0, r0, #0xc
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xb
	movs r2, #0xa
	adds r3, r4, #0
	bl sub_080AC468
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_080AC468
	movs r3, #0xb7
	lsls r3, r3, #9
	movs r0, #0xb0
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_080AC468
	b _080AB0F8
_080AB064:
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x14
_080AB06A:
	strb r0, [r1]
	movs r3, #0xce
	lsls r3, r3, #9
	movs r0, #0x98
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #3
	bl sub_080AC468
	movs r3, #0xc6
	lsls r3, r3, #9
	movs r0, #0xe8
	lsls r0, r0, #0xe
	str r0, [sp]
	movs r0, #0x32
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #3
	bl sub_080ACFA0
	movs r4, #0xc0
	lsls r4, r4, #9
	movs r0, #0xb0
	lsls r0, r0, #0xd
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	adds r3, r4, #0
	bl sub_080AC468
	movs r0, #0xe0
	lsls r0, r0, #0xc
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xb
	movs r2, #0xa
	adds r3, r4, #0
	bl sub_080AC468
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_080AC468
	movs r0, #0xb0
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	movs r3, #0
	bl sub_080AC468
_080AB0F8:
	movs r0, #0xf
	strb r0, [r7, #0xd]
	bl _080AC006
_080AB100:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080ACF30
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080AB118
	bl _080AC006
_080AB118:
	movs r0, #6
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0x10
	ldrsb r0, [r7, r0]
	cmp r0, #0
	bne _080AB138
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0xd
	strb r0, [r1]
	movs r3, #0xb8
	lsls r3, r3, #9
	b _080AB144
_080AB138:
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x15
_080AB13E:
	strb r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #2
_080AB144:
	movs r0, #0xb0
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_080AC468
	bl _080AC006
_080AB15C:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080ACF30
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080AB174
	bl _080AC006
_080AB174:
	movs r1, #0x20
	strb r1, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0x10
	ldrsb r0, [r7, r0]
	cmp r0, #0
	bne _080AB1FC
_080AB186:
	movs r3, #0xce
	lsls r3, r3, #9
	movs r0, #0x98
	lsls r0, r0, #0xe
	str r0, [sp]
	str r1, [sp, #4]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #3
	bl sub_080ACFA0
	movs r4, #0x90
	lsls r4, r4, #9
	movs r0, #0xb0
	lsls r0, r0, #0xd
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	adds r3, r4, #0
	bl sub_080ACFA0
	movs r0, #0xe0
	lsls r0, r0, #0xc
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xb
	movs r2, #0xa
	adds r3, r4, #0
	bl sub_080ACFA0
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_080ACFA0
	movs r3, #0xb8
	lsls r3, r3, #9
	movs r0, #0xb0
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_080ACFA0
	b _080AB26E
_080AB1FC:
	movs r3, #0xce
	lsls r3, r3, #9
_080AB200:
	movs r0, #0x98
	lsls r0, r0, #0xe
	str r0, [sp]
	str r1, [sp, #4]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #3
	bl sub_080ACFA0
	movs r4, #0x98
	lsls r4, r4, #9
	movs r0, #0xb0
	lsls r0, r0, #0xd
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	adds r3, r4, #0
	bl sub_080ACFA0
	movs r0, #0xe0
	lsls r0, r0, #0xc
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xb
	movs r2, #0xa
	adds r3, r4, #0
	bl sub_080ACFA0
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_080ACFA0
	ldr r3, _080AB278 @ =0xFFFFFE00
	movs r0, #0xb0
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_080ACFA0
_080AB26E:
	movs r0, #0x18
	strb r0, [r7, #0xd]
	bl _080AC006
	.align 2, 0
_080AB278: .4byte 0xFFFFFE00
_080AB27C:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080ACF30
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080AB294
	bl _080AC006
_080AB294:
	movs r0, #8
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0x10
	ldrsb r0, [r7, r0]
	cmp r0, #0
	bne _080AB2B2
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0xd
	strb r0, [r1]
	bl _080AC006
_080AB2B2:
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x15
	strb r0, [r1]
	bl _080AC006
_080AB2BE:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080ACF30
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r1, #0
	mov r8, r1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080AB2DA
	bl _080AC006
_080AB2DA:
	movs r0, #0x64
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #5
	strb r0, [r1]
	mov r2, r8
	str r2, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080ACFA0
	movs r5, #0xd4
	lsls r5, r5, #9
	movs r0, #0xc0
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	adds r3, r5, #0
	bl sub_080ACFA0
	movs r3, #0xe8
	lsls r3, r3, #9
	movs r6, #0x88
	lsls r6, r6, #0xd
	str r6, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #2
	bl sub_080ACFA0
	movs r4, #0xa0
	lsls r4, r4, #0xb
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #1
	adds r3, r5, #0
	bl sub_080ACFA0
	movs r3, #0xac
	lsls r3, r3, #9
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #3
	bl sub_080ACFA0
	movs r3, #0xb2
	lsls r3, r3, #9
	str r6, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #7
	bl sub_080ACFA0
	mov r0, r8
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #6
	movs r3, #0
	bl sub_080ACFA0
	movs r3, #0xd0
	lsls r3, r3, #9
	movs r5, #0x80
	lsls r5, r5, #0xc
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #3
	bl sub_080ACFA0
	movs r3, #0xda
	lsls r3, r3, #9
	movs r0, #0xe8
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #3
	bl sub_080ACFA0
	movs r3, #0xe0
	lsls r3, r3, #9
	movs r0, #0x98
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #3
	bl sub_080ACFA0
	movs r4, #0x90
	lsls r4, r4, #9
	movs r0, #0xb0
	lsls r0, r0, #0xd
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	adds r3, r4, #0
	bl sub_080ACFA0
	movs r0, #0xe0
	lsls r0, r0, #0xc
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xb
	movs r2, #0xa
	adds r3, r4, #0
	bl sub_080ACFA0
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_080ACFA0
	movs r0, #0x10
	ldrsb r0, [r7, r0]
	cmp r0, #0
	bne _080AB41A
	bl sub_080ABFA4
_080AB41A:
	ldr r3, _080AB420 @ =0xFFFFA000
	bl _080ABFA8
	.align 2, 0
_080AB420: .4byte 0xFFFFA000
_080AB424:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080ACF30
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080AB43C
	bl _080AC006
_080AB43C:
	movs r0, #1
	strb r0, [r7, #0xd]
	movs r0, #6
	b _080ABB50
_080AB444:
	adds r0, r7, #0
	bl sub_080ACFD4
	movs r1, #0x20
	adds r1, r1, r7
	mov sb, r1
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #3
	beq _080AB45A
	b _080AB5AE
_080AB45A:
	movs r5, #0
	movs r0, #0x15
	strb r0, [r7, #0xb]
	strb r5, [r7, #0x18]
	movs r2, #0x78
	mov r8, r2
	mov r0, r8
	strb r0, [r7, #0xd]
	str r5, [sp]
	mov r1, r8
	str r1, [sp, #4]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #6
	movs r3, #0
	bl sub_080ACFA0
	movs r3, #0xcc
	lsls r3, r3, #9
	movs r0, #0xc0
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #6
	bl sub_080ACFA0
	movs r3, #0xf0
	lsls r3, r3, #9
	movs r6, #0x88
	lsls r6, r6, #0xd
	str r6, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #8
	bl sub_080ACFA0
	movs r3, #0xd4
	lsls r3, r3, #9
	movs r4, #0xa0
	lsls r4, r4, #0xb
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #7
	bl sub_080ACFA0
	movs r3, #0xb0
	lsls r3, r3, #9
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #3
	bl sub_080ACFA0
	movs r3, #0xc0
	lsls r3, r3, #9
	str r6, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	bl sub_080ACFA0
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080ACFA0
	movs r3, #0xd8
	lsls r3, r3, #9
	movs r5, #0x80
	lsls r5, r5, #0xc
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #3
	bl sub_080ACFA0
	movs r3, #0xda
	lsls r3, r3, #9
	movs r0, #0xe8
	lsls r0, r0, #0xe
	str r0, [sp]
	mov r2, r8
	str r2, [sp, #4]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #3
	bl sub_080ACFA0
	movs r3, #0xe0
	lsls r3, r3, #9
	movs r0, #0x98
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #3
	bl sub_080ACFA0
	movs r0, #0x16
	mov r1, sb
	strb r0, [r1]
	movs r4, #0xa8
	lsls r4, r4, #9
	movs r0, #0xb0
	lsls r0, r0, #0xd
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	adds r3, r4, #0
	bl sub_080ACFA0
	movs r0, #0xe0
	lsls r0, r0, #0xc
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xb
	movs r2, #0xa
	adds r3, r4, #0
	bl sub_080ACFA0
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_080ACFA0
	movs r3, #0xa0
	lsls r3, r3, #6
	movs r0, #0xb0
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_080ACFA0
	movs r0, #0x1e
	strb r0, [r7, #0xd]
	bl _080AC006
_080AB5AE:
	movs r5, #0
	movs r0, #0x1f
	strb r0, [r7, #0xb]
	strb r5, [r7, #0x18]
	movs r0, #0x78
	strb r0, [r7, #0xd]
	str r5, [sp]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #6
	movs r3, #0
	bl sub_080ACFA0
	movs r3, #0xcc
	lsls r3, r3, #9
	movs r0, #0xc0
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	bl sub_080ACFA0
	movs r3, #0xf0
	lsls r3, r3, #9
	movs r6, #0x88
	lsls r6, r6, #0xd
	str r6, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #2
	bl sub_080ACFA0
	movs r3, #0xd4
	lsls r3, r3, #9
	movs r4, #0xa0
	lsls r4, r4, #0xb
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #1
	bl sub_080ACFA0
	movs r3, #0xb0
	lsls r3, r3, #9
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #3
	bl sub_080ACFA0
	movs r3, #0xc0
	lsls r3, r3, #9
	str r6, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #7
	bl sub_080ACFA0
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080ACFA0
	movs r3, #0xd8
	lsls r3, r3, #9
	movs r5, #0x80
	lsls r5, r5, #0xc
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #3
	bl sub_080ACFA0
	movs r3, #0xda
	lsls r3, r3, #9
	movs r0, #0xe8
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #3
	bl sub_080ACFA0
	movs r3, #0xe0
	lsls r3, r3, #9
	movs r0, #0x98
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #3
	bl sub_080ACFA0
	movs r0, #0x1a
	mov r2, sb
	strb r0, [r2]
	movs r4, #0xa8
	lsls r4, r4, #9
	movs r0, #0xb0
	lsls r0, r0, #0xd
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	adds r3, r4, #0
	bl sub_080ACFA0
	movs r0, #0xe0
	lsls r0, r0, #0xc
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xb
	movs r2, #0xa
	adds r3, r4, #0
	bl sub_080ACFA0
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_080ACFA0
	movs r3, #0xf0
	lsls r3, r3, #7
	movs r0, #0xb0
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_080ACFA0
	movs r0, #0x50
	strb r0, [r7, #0xd]
	bl _080AC006
_080AB6FC:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_080ACF30
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080AB714
	bl _080AC006
_080AB714:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r1, #0x5a
	strb r1, [r7, #0xd]
	movs r3, #0xda
	lsls r3, r3, #9
	movs r0, #0xe8
	lsls r0, r0, #0xe
	str r0, [sp]
	str r1, [sp, #4]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #3
	bl sub_080ACFA0
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x17
	strb r0, [r1]
	bl _080AC006
_080AB740:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_080ACF30
	ldrb r1, [r7, #0xd]
	cmp r1, #0x2c
	bhi _080AB7A8
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080AB7A8
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AB778
	movs r5, #0x80
	lsls r5, r5, #0xe
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r0, _080AB774 @ =0x0000FFFF
	ands r4, r0
	b _080AB786
	.align 2, 0
_080AB774: .4byte 0x0000FFFF
_080AB778:
	ldr r5, _080AB7C0 @ =0xFFE00000
	bl RandomNumberGenerator
	ldr r1, _080AB7C4 @ =0x0000FFFF
	ands r1, r0
	ldr r0, _080AB7C8 @ =0xFFFF0000
	adds r4, r1, r0
_080AB786:
	ldr r0, [r7, #0x40]
	adds r0, r0, r5
	ldr r1, [r7, #0x44]
	ldr r2, _080AB7CC @ =0xFF980000
	adds r1, r1, r2
	movs r3, #0x80
	lsls r3, r3, #5
	adds r2, r7, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	adds r2, #1
	str r2, [sp]
	movs r2, #1
	str r2, [sp, #4]
	adds r2, r4, #0
	bl sub_0806DCC4
_080AB7A8:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080AB7B8
	bl _080AC006
_080AB7B8:
	movs r0, #0x14
	bl _080ABFD6
	.align 2, 0
_080AB7C0: .4byte 0xFFE00000
_080AB7C4: .4byte 0x0000FFFF
_080AB7C8: .4byte 0xFFFF0000
_080AB7CC: .4byte 0xFF980000
_080AB7D0:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_080ACF30
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r6, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080AB7EA
	bl _080AC006
_080AB7EA:
	movs r0, #0x14
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x18
	strb r0, [r1]
	movs r3, #0xd8
	lsls r3, r3, #9
	movs r0, #0x98
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #3
	bl sub_080AC468
	movs r3, #0xd0
	lsls r3, r3, #9
	movs r0, #0xe8
	lsls r0, r0, #0xe
	str r0, [sp]
	movs r5, #0x28
	str r5, [sp, #4]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #3
	bl sub_080ACFA0
	movs r4, #0x98
	lsls r4, r4, #9
	movs r0, #0xb0
	lsls r0, r0, #0xd
	str r0, [sp]
	str r5, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	adds r3, r4, #0
	bl sub_080ACFA0
	movs r0, #0xe0
	lsls r0, r0, #0xc
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xb
	movs r2, #0xa
	adds r3, r4, #0
	bl sub_080AC468
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_080AC468
	ldr r3, _080AB904 @ =0xFFFFCC00
	movs r0, #0xb0
	lsls r0, r0, #0xe
	str r0, [sp]
	str r5, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_080ACFA0
	str r6, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #6
	movs r3, #0
	bl sub_080ACFA0
	movs r3, #0xce
	lsls r3, r3, #9
	movs r0, #0xc0
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #6
	bl sub_080ACFA0
	movs r3, #0xee
	lsls r3, r3, #9
	movs r5, #0x88
	lsls r5, r5, #0xd
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #8
	bl sub_080ACFA0
	movs r3, #0xd6
	lsls r3, r3, #9
	movs r4, #0xa0
	lsls r4, r4, #0xb
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #7
	bl sub_080ACFA0
	movs r3, #0xb0
	lsls r3, r3, #9
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #3
	bl sub_080ACFA0
	movs r3, #0xbe
	lsls r3, r3, #9
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	b _080ABD5C
	.align 2, 0
_080AB904: .4byte 0xFFFFCC00
_080AB908:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_080ACF30
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080AB91E
	b _080AC006
_080AB91E:
	movs r0, #0x28
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x19
	b _080ABDA2
_080AB930:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_080ACF30
	ldrb r1, [r7, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080AB98E
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AB968
	movs r5, #0x80
	lsls r5, r5, #0xe
	bl RandomNumberGenerator
	ldr r1, _080AB964 @ =0x0000FFFF
	ands r1, r0
	movs r0, #0xc0
	lsls r0, r0, #9
	adds r4, r1, r0
	b _080AB976
	.align 2, 0
_080AB964: .4byte 0x0000FFFF
_080AB968:
	ldr r5, _080AB9A0 @ =0xFFE00000
	bl RandomNumberGenerator
	ldr r1, _080AB9A4 @ =0x0000FFFF
	ands r1, r0
	ldr r2, _080AB9A8 @ =0xFFFD8000
	adds r4, r1, r2
_080AB976:
	ldr r1, [r7, #0x40]
	adds r1, r1, r5
	ldr r2, [r7, #0x44]
	ldr r0, _080AB9AC @ =0xFF980000
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [sp]
	adds r0, r7, #0
	adds r3, r4, #0
	bl sub_080ACDD0
_080AB98E:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080AB99C
	b _080AC006
_080AB99C:
	movs r0, #8
	b _080ABFD6
	.align 2, 0
_080AB9A0: .4byte 0xFFE00000
_080AB9A4: .4byte 0x0000FFFF
_080AB9A8: .4byte 0xFFFD8000
_080AB9AC: .4byte 0xFF980000
_080AB9B0:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_080ACF30
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080AB9C6
	b _080AC006
_080AB9C6:
	movs r0, #8
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x19
	strb r0, [r1]
	b _080AC006
_080AB9DA:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_080ACF30
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r1, #0
	mov r8, r1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080AB9F4
	b _080AC006
_080AB9F4:
	movs r0, #0x3c
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	mov r2, r8
	str r2, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #6
	movs r3, #0
	bl sub_080ACFA0
	movs r5, #0xd4
	lsls r5, r5, #9
	movs r0, #0xc0
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #6
	adds r3, r5, #0
	bl sub_080ACFA0
	movs r3, #0xe8
	lsls r3, r3, #9
	movs r6, #0x88
	lsls r6, r6, #0xd
	str r6, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #8
	bl sub_080ACFA0
	movs r4, #0xa0
	lsls r4, r4, #0xb
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #7
	adds r3, r5, #0
	bl sub_080ACFA0
	movs r3, #0xac
	lsls r3, r3, #9
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #3
	bl sub_080ACFA0
	movs r3, #0xb2
	lsls r3, r3, #9
	str r6, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	bl sub_080ACFA0
	mov r0, r8
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080ACFA0
	movs r3, #0xd0
	lsls r3, r3, #9
	movs r5, #0x80
	lsls r5, r5, #0xc
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #3
	bl sub_080ACFA0
	movs r3, #0xd2
	lsls r3, r3, #9
	movs r0, #0xe8
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #3
	bl sub_080ACFA0
	movs r3, #0xd8
	lsls r3, r3, #9
	movs r0, #0x98
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #3
	bl sub_080ACFA0
	movs r4, #0xa8
	lsls r4, r4, #9
	movs r0, #0xb0
	lsls r0, r0, #0xd
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	adds r3, r4, #0
	bl sub_080ACFA0
	movs r0, #0xe0
	lsls r0, r0, #0xc
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xb
	movs r2, #0xa
	adds r3, r4, #0
	bl sub_080ACFA0
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_080ACFA0
	movs r3, #0xc0
	lsls r3, r3, #9
	b _080ABFA8
_080ABB2E:
	adds r0, r7, #0
	add r1, sp, #8
	b _080ABFC2
_080ABB34:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_080ACF30
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080ABB4A
	b _080AC006
_080ABB4A:
	movs r0, #1
	strb r0, [r7, #0xd]
	movs r0, #3
_080ABB50:
	strb r0, [r7, #0xb]
	movs r0, #0
	strb r0, [r7, #0xa]
	adds r0, r7, #0
	bl sub_080ACFF0
	b _080AC006
_080ABB5E:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080ACF30
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080ABB74
	b _080AC006
_080ABB74:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r1, #0x5a
	strb r1, [r7, #0xd]
	movs r3, #0xda
	lsls r3, r3, #9
	movs r0, #0xe8
	lsls r0, r0, #0xe
	str r0, [sp]
	str r1, [sp, #4]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #3
	bl sub_080ACFA0
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x1b
	strb r0, [r1]
	b _080AC006
_080ABB9E:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080ACF30
	ldrb r1, [r7, #0xd]
	cmp r1, #0x2c
	bhi _080ABC08
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080ABC08
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080ABBD8
	movs r5, #0x80
	lsls r5, r5, #0xe
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r0, _080ABBD4 @ =0x0000FFFF
	ands r4, r0
	b _080ABBE6
	.align 2, 0
_080ABBD4: .4byte 0x0000FFFF
_080ABBD8:
	ldr r5, _080ABC1C @ =0xFFE00000
	bl RandomNumberGenerator
	ldr r1, _080ABC20 @ =0x0000FFFF
	ands r1, r0
	ldr r0, _080ABC24 @ =0xFFFF0000
	adds r4, r1, r0
_080ABBE6:
	ldr r0, [r7, #0x40]
	adds r0, r0, r5
	ldr r1, [r7, #0x44]
	ldr r2, _080ABC28 @ =0xFF980000
	adds r1, r1, r2
	movs r3, #0x80
	lsls r3, r3, #5
	adds r2, r7, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	adds r2, #1
	str r2, [sp]
	movs r2, #1
	str r2, [sp, #4]
	adds r2, r4, #0
	bl sub_0806DCC4
_080ABC08:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080ABC16
	b _080AC006
_080ABC16:
	movs r0, #0x14
	b _080ABFD6
	.align 2, 0
_080ABC1C: .4byte 0xFFE00000
_080ABC20: .4byte 0x0000FFFF
_080ABC24: .4byte 0xFFFF0000
_080ABC28: .4byte 0xFF980000
_080ABC2C:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080ACF30
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r6, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080ABC44
	b _080AC006
_080ABC44:
	movs r0, #0x14
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x1c
	strb r0, [r1]
	movs r3, #0xd8
	lsls r3, r3, #9
	movs r0, #0x98
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #3
	bl sub_080AC468
	movs r3, #0xd0
	lsls r3, r3, #9
	movs r0, #0xe8
	lsls r0, r0, #0xe
	str r0, [sp]
	movs r5, #0x28
	str r5, [sp, #4]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #3
	bl sub_080ACFA0
	movs r4, #0x98
	lsls r4, r4, #9
	movs r0, #0xb0
	lsls r0, r0, #0xd
	str r0, [sp]
	str r5, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	adds r3, r4, #0
	bl sub_080ACFA0
	movs r0, #0xe0
	lsls r0, r0, #0xc
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xb
	movs r2, #0xa
	adds r3, r4, #0
	bl sub_080AC468
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_080AC468
	ldr r3, _080ABD78 @ =0xFFFFCC00
	movs r0, #0xb0
	lsls r0, r0, #0xe
	str r0, [sp]
	str r5, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_080ACFA0
	str r6, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #6
	movs r3, #0
	bl sub_080ACFA0
	movs r3, #0xce
	lsls r3, r3, #9
	movs r0, #0xc0
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	bl sub_080ACFA0
	movs r3, #0xee
	lsls r3, r3, #9
	movs r5, #0x88
	lsls r5, r5, #0xd
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #2
	bl sub_080ACFA0
	movs r3, #0xd6
	lsls r3, r3, #9
	movs r4, #0xa0
	lsls r4, r4, #0xb
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #1
	bl sub_080ACFA0
	movs r3, #0xae
	lsls r3, r3, #9
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #3
	bl sub_080ACFA0
	movs r3, #0xbe
	lsls r3, r3, #9
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #7
_080ABD5C:
	bl sub_080ACFA0
	str r6, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080ACFA0
	movs r0, #0xc
	strb r0, [r7, #0xd]
	b _080AC006
	.align 2, 0
_080ABD78: .4byte 0xFFFFCC00
_080ABD7C:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080ACF30
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080ABD92
	b _080AC006
_080ABD92:
	movs r0, #0x28
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x1d
_080ABDA2:
	strb r0, [r1]
	movs r0, #0x71
	bl PlaySong
	b _080AC006
_080ABDAC:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080ACF30
	ldrb r1, [r7, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080ABE0A
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080ABDE4
	movs r5, #0x80
	lsls r5, r5, #0xe
	bl RandomNumberGenerator
	ldr r1, _080ABDE0 @ =0x0000FFFF
	ands r1, r0
	movs r0, #0xc0
	lsls r0, r0, #9
	adds r4, r1, r0
	b _080ABDF2
	.align 2, 0
_080ABDE0: .4byte 0x0000FFFF
_080ABDE4:
	ldr r5, _080ABE1C @ =0xFFE00000
	bl RandomNumberGenerator
	ldr r1, _080ABE20 @ =0x0000FFFF
	ands r1, r0
	ldr r2, _080ABE24 @ =0xFFFD8000
	adds r4, r1, r2
_080ABDF2:
	ldr r1, [r7, #0x40]
	adds r1, r1, r5
	ldr r2, [r7, #0x44]
	ldr r0, _080ABE28 @ =0xFF980000
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [sp]
	adds r0, r7, #0
	adds r3, r4, #0
	bl sub_080ACDD0
_080ABE0A:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080ABE18
	b _080AC006
_080ABE18:
	movs r0, #8
	b _080ABFD6
	.align 2, 0
_080ABE1C: .4byte 0xFFE00000
_080ABE20: .4byte 0x0000FFFF
_080ABE24: .4byte 0xFFFD8000
_080ABE28: .4byte 0xFF980000
_080ABE2C:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080ACF30
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080ABE42
	b _080AC006
_080ABE42:
	movs r0, #8
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x1d
	strb r0, [r1]
	b _080AC006
_080ABE56:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080ACF30
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r1, #0
	mov r8, r1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080ABE70
	b _080AC006
_080ABE70:
	movs r0, #0x3c
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #5
	strb r0, [r1]
	mov r2, r8
	str r2, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080ACFA0
	movs r5, #0xd4
	lsls r5, r5, #9
	movs r0, #0xc0
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	adds r3, r5, #0
	bl sub_080ACFA0
	movs r3, #0xe8
	lsls r3, r3, #9
	movs r6, #0x88
	lsls r6, r6, #0xd
	str r6, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #2
	bl sub_080ACFA0
	movs r4, #0xa0
	lsls r4, r4, #0xb
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #1
	adds r3, r5, #0
	bl sub_080ACFA0
	movs r3, #0xac
	lsls r3, r3, #9
	str r4, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #3
	bl sub_080ACFA0
	movs r3, #0xb2
	lsls r3, r3, #9
	str r6, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #7
	bl sub_080ACFA0
	mov r0, r8
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #6
	movs r3, #0
	bl sub_080ACFA0
	movs r3, #0xd0
	lsls r3, r3, #9
	movs r5, #0x80
	lsls r5, r5, #0xc
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #3
	bl sub_080ACFA0
	movs r3, #0xda
	lsls r3, r3, #9
	movs r0, #0xe8
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #3
	bl sub_080ACFA0
	movs r3, #0xe0
	lsls r3, r3, #9
	movs r0, #0x98
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #3
	bl sub_080ACFA0
	movs r4, #0x90
	lsls r4, r4, #9
	movs r0, #0xb0
	lsls r0, r0, #0xd
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	adds r3, r4, #0
	bl sub_080ACFA0
	movs r0, #0xe0
	lsls r0, r0, #0xc
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xb
	movs r2, #0xa
	adds r3, r4, #0
	bl sub_080ACFA0
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_080ACFA0

	thumb_func_start sub_080ABFA4
sub_080ABFA4: @ 0x080ABFA4
	movs r3, #0x98
	lsls r3, r3, #9
_080ABFA8:
	movs r0, #0xb0
	lsls r0, r0, #0xe
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_080ACFA0
	b _080AC006
_080ABFBE:
	adds r0, r7, #0
	adds r1, r4, #0
_080ABFC2:
	bl sub_080ACF30
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	bgt _080AC006
	movs r0, #1
_080ABFD6:
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	b _080AC006
_080ABFE0:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080ACF30
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080AC006
	movs r0, #1
	strb r0, [r7, #0xd]
	movs r0, #6
	strb r0, [r7, #0xb]
	movs r0, #0
	strb r0, [r7, #0xa]
	adds r0, r7, #0
	bl sub_080ACFF0
_080AC006:
	add sp, #0x38
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080AC014
sub_080AC014: @ 0x080AC014
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	mov sb, r1
	ldr r0, [r5, #0x1c]
	str r0, [sp]
	ldr r1, _080AC090 @ =0x0852844C
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r3, [r1]
	ldr r1, _080AC094 @ =0x0852858C
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r1, sb
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	ldr r2, [sp]
	adds r1, r0, r2
	ldr r0, [r1, #0x28]
	mov sl, r0
	cmp r0, #0
	bne _080AC05A
	movs r2, #1
	mov sl, r2
_080AC05A:
	ldr r0, [r1, #0x28]
	subs r0, #1
	str r0, [r1, #0x28]
	ldr r0, [r1, #0xc]
	cmp r0, #0
	bne _080AC116
	ldr r0, [r1, #0x10]
	cmp r0, #0
	bne _080AC116
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	str r2, [sp, #8]
	cmp r0, #0
	beq _080AC098
	mov r0, sb
	lsls r1, r0, #2
	adds r0, r1, r3
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #0x10
	rsbs r7, r0, #0
	adds r0, r1, #0
	b _080AC0A4
	.align 2, 0
_080AC090: .4byte 0x0852844C
_080AC094: .4byte 0x0852858C
_080AC098:
	mov r1, sb
	lsls r0, r1, #2
	adds r1, r0, r3
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r7, r1, #0x10
_080AC0A4:
	adds r0, r0, r3
	movs r1, #2
	ldrsh r0, [r0, r1]
	lsls r2, r0, #0x10
	mov r0, sb
	lsls r0, r0, #3
	mov r8, r0
	mov r1, sb
	subs r4, r0, r1
	lsls r4, r4, #3
	ldr r0, [sp]
	adds r4, r4, r0
	ldr r5, [r4]
	subs r7, r7, r5
	ldr r6, [r4, #4]
	subs r2, r2, r6
	adds r0, r7, #0
	mov r1, sl
	str r2, [sp, #0xc]
	bl __divsi3
	adds r5, r5, r0
	str r5, [r4]
	ldr r2, [sp, #0xc]
	adds r0, r2, #0
	mov r1, sl
	bl __divsi3
	adds r6, r6, r0
	str r6, [r4, #4]
	mov r1, sb
	cmp r1, #5
	beq _080AC0F2
	cmp r1, #0xc
	beq _080AC0EC
	b _080AC288
_080AC0EC:
	ldr r2, [sp, #4]
	ldr r7, [r2, #4]
	b _080AC0F6
_080AC0F2:
	ldr r0, [sp, #4]
	ldr r7, [r0]
_080AC0F6:
	ldr r2, [sp, #8]
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AC108
	movs r0, #0x80
	lsls r0, r0, #0xa
	subs r7, r0, r7
_080AC108:
	mov r0, r8
	mov r1, sb
	subs r5, r0, r1
	lsls r5, r5, #3
	ldr r2, [sp]
	adds r5, r5, r2
	b _080AC278
_080AC116:
	mov r0, sb
	lsls r1, r0, #3
	subs r0, r1, r0
	lsls r0, r0, #3
	ldr r2, [sp]
	adds r6, r0, r2
	ldr r0, [r6, #0x34]
	mov r8, r1
	cmp r0, #0
	bne _080AC19C
	ldr r7, [r6, #0xc]
	ldr r4, [r6, #0x10]
	subs r7, r7, r4
	adds r0, r7, #0
	mov r1, sl
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
	str r2, [sp, #0xc]
	bl sub_0803E86C
	adds r7, r0, #0
	ldr r1, [r6, #0x24]
	ldr r2, [sp, #0xc]
	adds r0, r2, #0
	bl sub_0803E86C
	adds r2, r0, #0
	ldr r1, [r6, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bne _080AC18A
	ldr r0, [r6, #0x18]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #3
	ldr r0, [sp]
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r0, r7
	str r0, [r6]
	ldr r0, [r1, #4]
	b _080AC190
_080AC18A:
	adds r0, r1, r7
	str r0, [r6]
	ldr r0, [r6, #0x18]
_080AC190:
	adds r0, r0, r2
	str r0, [r6, #4]
	mov r1, sb
	cmp r1, #5
	bne _080AC24A
	b _080AC254
_080AC19C:
	cmp r0, #1
	bne _080AC1B2
	ldr r0, [r6, #0x2c]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	ldr r1, [r6, #0x28]
	cmp r1, r0
	bgt _080AC1CE
	movs r0, #2
	b _080AC1CC
_080AC1B2:
	cmp r0, #2
	bne _080AC1CE
	ldr r0, [r6, #0x28]
	adds r0, #1
	str r0, [r6, #0x28]
	ldr r1, [r6, #0x2c]
	adds r1, #1
	str r1, [r6, #0x2c]
	mov sl, r0
	ldr r0, [r6, #0x30]
	cmp r1, r0
	blt _080AC1CE
	movs r0, #3
_080AC1CC:
	str r0, [r6, #0x34]
_080AC1CE:
	mov r1, r8
	mov r2, sb
	subs r0, r1, r2
	lsls r0, r0, #3
	ldr r1, [sp]
	adds r6, r0, r1
	ldr r7, [r6, #0xc]
	ldr r4, [r6, #0x10]
	subs r7, r7, r4
	adds r0, r7, #0
	mov r1, sl
	bl __divsi3
	adds r4, r4, r0
	str r4, [r6, #0x10]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r4, r4, r2
	adds r0, r4, #0
	bl sub_080009E4
	adds r7, r0, #0
	ldr r0, [r6, #0x10]
	bl sub_080009E4
	adds r2, r0, #0
	ldr r1, [r6, #0x24]
	adds r0, r7, #0
	str r2, [sp, #0xc]
	bl sub_0803E86C
	adds r7, r0, #0
	ldr r1, [r6, #0x24]
	ldr r2, [sp, #0xc]
	adds r0, r2, #0
	bl sub_0803E86C
	adds r2, r0, #0
	ldr r1, [r6, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bne _080AC23A
	ldr r0, [r6, #0x18]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #3
	ldr r0, [sp]
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r0, r7
	str r0, [r6]
	ldr r0, [r1, #4]
	b _080AC240
_080AC23A:
	adds r0, r1, r7
	str r0, [r6]
	ldr r0, [r6, #0x18]
_080AC240:
	adds r0, r0, r2
	str r0, [r6, #4]
	mov r1, sb
	cmp r1, #5
	beq _080AC254
_080AC24A:
	cmp r1, #0xc
	bne _080AC288
	ldr r2, [sp, #4]
	ldr r7, [r2, #4]
	b _080AC258
_080AC254:
	ldr r0, [sp, #4]
	ldr r7, [r0]
_080AC258:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AC26C
	movs r0, #0x80
	lsls r0, r0, #0xa
	subs r7, r0, r7
_080AC26C:
	mov r1, r8
	mov r2, sb
	subs r5, r1, r2
	lsls r5, r5, #3
	ldr r0, [sp]
	adds r5, r5, r0
_080AC278:
	ldr r4, [r5, #8]
	subs r7, r7, r4
	adds r0, r7, #0
	mov r1, sl
	bl __divsi3
	adds r4, r4, r0
	str r4, [r5, #8]
_080AC288:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080AC298
sub_080AC298: @ 0x080AC298
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x58
	ldrb r4, [r5]
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x1f
	bl sub_0806CF2C
	cmp r4, r0
	beq _080AC30E
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
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r7, r2, r0
	adds r0, #0xa8
	adds r6, r2, r0
	adds r0, #0xe0
	adds r5, r2, r0
	adds r0, #0x38
	adds r3, r2, r0
_080AC2DA:
	ldr r0, [r2]
	rsbs r0, r0, #0
	str r0, [r2]
	adds r0, r4, #0
	adds r0, #0x70
	cmp r2, r0
	beq _080AC2FE
	adds r0, #0x70
	cmp r2, r0
	beq _080AC2FE
	cmp r2, r7
	beq _080AC2FE
	cmp r2, r6
	beq _080AC2FE
	cmp r2, r5
	beq _080AC2FE
	cmp r2, r3
	bne _080AC308
_080AC2FE:
	ldr r1, [r2, #8]
	movs r0, #0x80
	lsls r0, r0, #0xa
	subs r0, r0, r1
	str r0, [r2, #8]
_080AC308:
	adds r2, #0x38
	cmp r2, r3
	ble _080AC2DA
_080AC30E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080AC314
sub_080AC314: @ 0x080AC314
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	mov sb, r2
	mov r8, r3
	ldr r2, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	ldr r0, [r0, #0x1c]
	mov sl, r0
	ldr r3, [sp, #4]
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #3
	mov r3, sl
	adds r7, r0, r3
	movs r0, #0
	str r0, [r7, #0x34]
	str r1, [r7, #0x28]
	str r1, [r7, #0x2c]
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #0x14]
	mov r0, sb
	str r0, [r7, #0x18]
	cmp r2, #0
	beq _080AC358
	str r2, [r7, #0x24]
	lsls r0, r0, #3
	b _080AC390
_080AC358:
	mov r1, sb
	lsls r4, r1, #3
	subs r0, r4, r1
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
_080AC390:
	ldr r2, [sp, #4]
	lsls r4, r2, #3
	subs r2, r4, r2
	lsls r2, r2, #3
	add r2, sl
	mov r3, sb
	subs r0, r0, r3
	lsls r0, r0, #3
	add r0, sl
	ldr r3, [r2]
	ldr r1, [r0]
	subs r5, r3, r1
	ldr r1, [r2, #4]
	ldr r0, [r0, #4]
	subs r6, r1, r0
	cmp r5, #0
	bge _080AC3BE
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _080AC3C0
_080AC3BE:
	asrs r2, r5, #0x10
_080AC3C0:
	cmp r6, #0
	bge _080AC3D0
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _080AC3D2
_080AC3D0:
	asrs r1, r6, #0x10
_080AC3D2:
	adds r0, r2, #0
	bl ArcTan2
	ldr r2, [sp, #4]
	subs r1, r4, r2
	lsls r1, r1, #3
	mov r2, sl
	adds r3, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r2, r0, r1
	str r2, [r3, #0x10]
	mov r1, r8
	cmp r1, #0
	bge _080AC3F6
	rsbs r1, r1, #0
_080AC3F6:
	ldr r0, _080AC41C @ =0x0000FFFF
	cmp r1, r0
	ble _080AC43C
	ldr r0, [sp]
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AC42A
	movs r0, #0xc0
	lsls r0, r0, #9
	cmp r8, r0
	ble _080AC420
	movs r0, #0xe0
	lsls r0, r0, #0xa
	mov r1, r8
	subs r0, r0, r1
	b _080AC42C
	.align 2, 0
_080AC41C: .4byte 0x0000FFFF
_080AC420:
	movs r0, #0xa0
	lsls r0, r0, #0xa
	mov r2, r8
	subs r0, r0, r2
	b _080AC42C
_080AC42A:
	mov r0, r8
_080AC42C:
	str r0, [r3, #0xc]
	ldr r1, [sp, #4]
	subs r0, r4, r1
	lsls r0, r0, #3
	add r0, sl
	ldr r1, [r0, #0xc]
	str r1, [r0, #0x10]
	b _080AC456
_080AC43C:
	ldr r0, [sp]
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AC450
	mov r1, r8
	subs r0, r2, r1
	b _080AC454
_080AC450:
	mov r1, r8
	adds r0, r2, r1
_080AC454:
	str r0, [r3, #0xc]
_080AC456:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AC468
sub_080AC468: @ 0x080AC468
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	mov sb, r2
	mov r8, r3
	ldr r2, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	ldr r0, [r0, #0x1c]
	mov sl, r0
	ldr r3, [sp, #4]
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #3
	mov r3, sl
	adds r7, r0, r3
	movs r0, #0
	str r0, [r7, #0x34]
	str r1, [r7, #0x28]
	str r1, [r7, #0x2c]
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #0x14]
	mov r0, sb
	str r0, [r7, #0x18]
	cmp r2, #0
	beq _080AC4AC
	str r2, [r7, #0x24]
	lsls r0, r0, #3
	b _080AC4E4
_080AC4AC:
	mov r1, sb
	lsls r4, r1, #3
	subs r0, r4, r1
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
_080AC4E4:
	ldr r2, [sp, #4]
	lsls r4, r2, #3
	subs r2, r4, r2
	lsls r2, r2, #3
	add r2, sl
	mov r3, sb
	subs r0, r0, r3
	lsls r0, r0, #3
	add r0, sl
	ldr r3, [r2]
	ldr r1, [r0]
	subs r5, r3, r1
	ldr r1, [r2, #4]
	ldr r0, [r0, #4]
	subs r6, r1, r0
	cmp r5, #0
	bge _080AC512
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _080AC514
_080AC512:
	asrs r2, r5, #0x10
_080AC514:
	cmp r6, #0
	bge _080AC524
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _080AC526
_080AC524:
	asrs r1, r6, #0x10
_080AC526:
	adds r0, r2, #0
	bl ArcTan2
	ldr r2, [sp, #4]
	subs r1, r4, r2
	lsls r1, r1, #3
	mov r3, sl
	adds r4, r1, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r2, r0, r1
	str r2, [r4, #0x10]
	mov r1, r8
	cmp r1, #0
	bge _080AC54A
	rsbs r1, r1, #0
_080AC54A:
	ldr r0, _080AC570 @ =0x0000FFFF
	cmp r1, r0
	ble _080AC584
	ldr r0, [sp]
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AC57E
	movs r0, #0xc0
	lsls r0, r0, #9
	cmp r8, r0
	ble _080AC574
	movs r0, #0xe0
	lsls r0, r0, #0xa
	mov r1, r8
	subs r0, r0, r1
	b _080AC59C
	.align 2, 0
_080AC570: .4byte 0x0000FFFF
_080AC574:
	movs r0, #0xa0
	lsls r0, r0, #0xa
	mov r2, r8
	subs r0, r0, r2
	b _080AC59C
_080AC57E:
	mov r3, r8
	str r3, [r4, #0xc]
	b _080AC59E
_080AC584:
	ldr r0, [sp]
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AC598
	mov r1, r8
	subs r0, r2, r1
	b _080AC59C
_080AC598:
	mov r3, r8
	adds r0, r2, r3
_080AC59C:
	str r0, [r4, #0xc]
_080AC59E:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AC5B0
sub_080AC5B0: @ 0x080AC5B0
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x2d
	movs r0, #8
	strb r0, [r1]
	ldrh r0, [r4, #0x34]
	subs r0, r0, r3
	strh r0, [r4, #0x34]
	ldrb r1, [r4, #0x19]
	movs r0, #0x19
	ldrsb r0, [r4, r0]
	cmp r0, #9
	bgt _080AC5D2
	adds r0, r1, #1
	strb r0, [r4, #0x19]
_080AC5D2:
	movs r0, #1
	strb r0, [r4, #0x1a]
	movs r1, #0x34
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _080AC64E
	adds r0, r4, #0
	bl sub_080683BC
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0x6e
	bl PlaySong
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
	movs r0, #0x3c
	strb r0, [r4, #0xd]
	movs r0, #2
	strb r0, [r4, #0xa]
	movs r0, #0
	strb r0, [r4, #0xb]
	movs r2, #0x30
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _080AC64E
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	ldr r2, _080AC658 @ =0xFFE00000
	adds r1, r1, r2
	bl sub_080D6450
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0xc
	movs r3, #0x60
	bl sub_080D6EF8
	movs r0, #0
	bl sub_08034498
_080AC64E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AC658: .4byte 0xFFE00000

	thumb_func_start sub_080AC65C
sub_080AC65C: @ 0x080AC65C
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
	ldrb r0, [r3, #0xa]
	cmp r0, #1
	bne _080AC6CC
	ldrb r0, [r3, #0xb]
	cmp r0, #0x13
	bhi _080AC6CC
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	subs r0, #0xc
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080AC6CC
	mov r1, sp
	movs r0, #3
	strh r0, [r1, #6]
	mov r0, sp
	bl sub_08021654
	ldr r2, _080AC6BC @ =0xFFFC0000
	ldr r0, _080AC6C0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080AC6C4 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r4, #0x40]
	cmp r1, r0
	ble _080AC6B2
	rsbs r2, r2, #0
_080AC6B2:
	ldr r1, _080AC6C8 @ =0xFFFDC000
	adds r0, r2, #0
	bl sub_08021248
	b _080AC6D2
	.align 2, 0
_080AC6BC: .4byte 0xFFFC0000
_080AC6C0: .4byte gEwramData
_080AC6C4: .4byte 0x00013110
_080AC6C8: .4byte 0xFFFDC000
_080AC6CC:
	mov r1, sp
	movs r0, #0
	strh r0, [r1, #6]
_080AC6D2:
	ldr r0, [r4, #0x40]
	str r0, [sp, #8]
	ldr r0, [r4, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080AC6E8
sub_080AC6E8: @ 0x080AC6E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	adds r6, r0, #0
	ldr r0, [r6, #0x1c]
	mov r8, r0
	ldr r0, _080AC76C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080AC770 @ =0x0000A094
	adds r1, r1, r0
	mov sb, r1
	add r5, sp, #0x18
	ldr r1, _080AC774 @ =0x08119352
	adds r0, r5, #0
	movs r2, #0xe
	bl memcpy
	add r4, sp, #0x28
	ldr r1, _080AC778 @ =0x08119360
	adds r0, r4, #0
	movs r2, #0x1c
	bl memcpy
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _080AC724
	b _080ACC2E
_080AC724:
	mov r2, r8
	cmp r2, #0
	bne _080AC72C
	b _080ACBFA
_080AC72C:
	ldr r0, [r2]
	cmp r0, #0
	bne _080AC734
	b _080ACBFA
_080AC734:
	mov r0, r8
	adds r0, #0x36
	adds r1, r6, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _080AC746
	b _080ACBFA
_080AC746:
	ldr r5, [r2, #0x1c]
	mov r0, r8
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x20
	bne _080AC77C
	adds r2, r6, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x20
	orrs r1, r0
	strb r1, [r2]
	b _080AC798
	.align 2, 0
_080AC76C: .4byte gEwramData
_080AC770: .4byte 0x0000A094
_080AC774: .4byte 0x08119352
_080AC778: .4byte 0x08119360
_080AC77C:
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
_080AC798:
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
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	adds r2, r6, #0
	adds r2, #0x20
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r5
	mov r4, r8
	ldr r1, [r4, #0x40]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r6, #0x40]
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r1, [r4, #0x44]
	ldr r0, [r0, #4]
	adds r1, r1, r0
	str r1, [r6, #0x44]
	movs r0, #0
	ldrsb r0, [r2, r0]
	mov sl, r3
	adds r7, r2, #0
	cmp r0, #2
	beq _080AC7FE
	cmp r0, #4
	beq _080AC7FE
	cmp r0, #8
	beq _080AC7FE
	cmp r0, #0xd
	bne _080AC898
_080AC7FE:
	adds r0, r6, #0
	adds r0, #0x21
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r5
	ldr r4, [r1]
	movs r2, #0
	ldrsb r2, [r7, r2]
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r2, [r0]
	subs r4, r4, r2
	ldr r3, [r1, #4]
	ldr r0, [r0, #4]
	subs r3, r3, r0
	cmp r4, #0
	bge _080AC838
	rsbs r0, r4, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _080AC83A
_080AC838:
	asrs r2, r4, #0x10
_080AC83A:
	cmp r3, #0
	bge _080AC84A
	rsbs r0, r3, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _080AC84C
_080AC84A:
	asrs r1, r3, #0x10
_080AC84C:
	adds r0, r2, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r0, #4
	bne _080AC87A
	mov r0, sl
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AC872
	movs r1, #0x9c
	lsls r1, r1, #6
	adds r0, r2, r1
	b _080AC87E
_080AC872:
	movs r3, #0xb2
	lsls r3, r3, #7
	adds r0, r2, r3
	b _080AC87E
_080AC87A:
	ldr r4, _080AC894 @ =0xFFFFC000
	adds r0, r2, r4
_080AC87E:
	str r0, [r6, #0x48]
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r5
	ldr r0, [r6, #0x48]
	str r0, [r1, #8]
	b _080AC8B0
	.align 2, 0
_080AC894: .4byte 0xFFFFC000
_080AC898:
	cmp r0, #5
	beq _080AC8A0
	cmp r0, #0xc
	bne _080AC8B0
_080AC8A0:
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r5
	ldr r0, [r1, #8]
	str r0, [r6, #0x48]
_080AC8B0:
	mov r1, r8
	ldrb r0, [r1, #0xa]
	cmp r0, #2
	bne _080AC920
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
	mov r0, r8
	adds r0, #0x46
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r3, sb
	movs r5, #0xa
	ldrsh r0, [r3, r5]
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r7, r0]
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
	ldr r1, _080AC918 @ =0x00003FFF
	ands r1, r0
	ldr r3, _080AC91C @ =0xFFFFE000
	adds r1, r1, r3
	str r1, [r6, #0x48]
	str r4, [r6, #0x4c]
	movs r0, #0
	ldrsb r0, [r7, r0]
	add r0, sp
	adds r0, #0x18
	ldrb r0, [r0]
	strb r0, [r6, #0xd]
	b _080ACDBE
	.align 2, 0
_080AC918: .4byte 0x00003FFF
_080AC91C: .4byte 0xFFFFE000
_080AC920:
	mov r4, r8
	movs r1, #0x22
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsb r2, [r7, r2]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080AC936
	b _080ACBAC
_080AC936:
	adds r0, r2, #0
	cmp r0, #2
	beq _080AC946
	cmp r0, #8
	beq _080AC946
	cmp r0, #0xd
	beq _080AC946
	b _080ACA5C
_080AC946:
	ldrb r1, [r6, #0xd]
	movs r0, #1
	ands r0, r1
	adds r0, #1
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	mov sb, r1
	mov r2, sl
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AC994
	movs r1, #0
	ldrsb r1, [r7, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r1, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #8
	subs r0, r0, r1
	bl sub_080009E4
	adds r4, r0, #0
	movs r1, #0
	ldrsb r1, [r7, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r1, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	subs r0, r0, r1
	b _080AC9C2
_080AC994:
	movs r1, #0
	ldrsb r1, [r7, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r0, [r0, #8]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r0, r3
	bl sub_080009E4
	adds r4, r0, #0
	movs r1, #0
	ldrsb r1, [r7, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r0, [r0, #8]
	movs r5, #0x80
	lsls r5, r5, #7
	adds r0, r0, r5
_080AC9C2:
	bl sub_080009E4
	adds r3, r0, #0
	mov r0, sb
	muls r0, r4, r0
	cmp r0, #0
	bge _080AC9D8
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080AC9DA
_080AC9D8:
	asrs r0, r0, #0x10
_080AC9DA:
	subs r0, #0xa
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080AC9FC @ =0xFFFFFF00
	ldr r1, [sp, #0x44]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0x44]
	mov r0, sb
	muls r0, r3, r0
	cmp r0, #0
	bge _080ACA00
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080ACA02
	.align 2, 0
_080AC9FC: .4byte 0xFFFFFF00
_080ACA00:
	asrs r0, r0, #0x10
_080ACA02:
	subs r0, #0xa
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x10
	ldr r2, _080ACA50 @ =0xFFFF00FF
	ldr r0, [sp, #0x44]
	ands r0, r2
	orrs r0, r1
	ldr r1, _080ACA54 @ =0xFF00FFFF
	ands r0, r1
	movs r1, #0xa0
	lsls r1, r1, #0xd
	orrs r0, r1
	ldr r1, _080ACA58 @ =0x00FFFFFF
	ands r0, r1
	movs r1, #0xa0
	lsls r1, r1, #0x15
	orrs r0, r1
	str r0, [sp, #0x44]
	add r4, sp, #0x44
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08042848
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080428B4
	mov r0, r8
	adds r1, r4, #0
	bl sub_080428B4
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0xfd
	b _080ACB9C
	.align 2, 0
_080ACA50: .4byte 0xFFFF00FF
_080ACA54: .4byte 0xFF00FFFF
_080ACA58: .4byte 0x00FFFFFF
_080ACA5C:
	cmp r0, #3
	bne _080ACA98
	movs r0, #0xf0
	add r4, sp, #0x44
	strb r0, [r4]
	movs r0, #0xc0
	strb r0, [r4, #1]
	movs r0, #0x20
	strb r0, [r4, #2]
	movs r0, #0x5a
	strb r0, [r4, #3]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08042848
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080428B4
	mov r0, r8
	adds r1, r4, #0
	bl sub_080428B4
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0xfd
	b _080ACB9C
_080ACA98:
	cmp r0, #5
	bne _080ACAD4
	movs r0, #0xf4
	add r4, sp, #0x44
	strb r0, [r4]
	movs r0, #0xf6
	strb r0, [r4, #1]
	movs r0, #0x18
	strb r0, [r4, #2]
	movs r0, #0x30
	strb r0, [r4, #3]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08042848
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080428B4
	mov r0, r8
	adds r1, r4, #0
	bl sub_080428B4
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0xfd
	b _080ACB9C
_080ACAD4:
	cmp r0, #0xc
	bne _080ACBBC
	movs r0, #0x15
	mov sb, r0
	mov r3, sl
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080ACB14
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r1, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #8
	subs r0, r0, r1
	bl sub_080009E4
	adds r4, r0, #0
	movs r1, #0
	ldrsb r1, [r7, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r1, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	subs r0, r0, r1
	b _080ACB3E
_080ACB14:
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r0, [r0, #8]
	movs r4, #0x80
	lsls r4, r4, #8
	adds r0, r0, r4
	bl sub_080009E4
	adds r4, r0, #0
	movs r1, #0
	ldrsb r1, [r7, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r0, [r0, #8]
	movs r5, #0x80
	lsls r5, r5, #7
	adds r0, r0, r5
_080ACB3E:
	bl sub_080009E4
	adds r3, r0, #0
	mov r0, sb
	muls r0, r4, r0
	cmp r0, #0
	bge _080ACB54
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080ACB56
_080ACB54:
	asrs r0, r0, #0x10
_080ACB56:
	adds r1, r0, #0
	subs r1, #9
	add r0, sp, #0x44
	strb r1, [r0]
	mov r1, sb
	muls r1, r3, r1
	adds r4, r0, #0
	cmp r1, #0
	bge _080ACB70
	rsbs r0, r1, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080ACB72
_080ACB70:
	asrs r0, r1, #0x10
_080ACB72:
	subs r0, #9
	strb r0, [r4, #1]
	movs r0, #0x12
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08042848
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080428B4
	mov r0, r8
	adds r1, r4, #0
	bl sub_080428B4
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
_080ACB9C:
	ands r0, r1
	strb r0, [r2]
	add r0, sp, #8
	adds r1, r6, #0
	mov r2, r8
	bl sub_080429D0
	b _080ACBBC
_080ACBAC:
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r2]
_080ACBBC:
	movs r2, #0
	ldrsb r2, [r7, r2]
	cmp r2, #2
	beq _080ACBDA
	cmp r2, #4
	beq _080ACBDA
	cmp r2, #5
	beq _080ACBDA
	cmp r2, #8
	beq _080ACBDA
	cmp r2, #0xc
	beq _080ACBDA
	cmp r2, #0xd
	beq _080ACBDA
	b _080ACDBE
_080ACBDA:
	ldr r0, [r6, #0x48]
	movs r2, #0x80
	lsls r2, r2, #9
	mov r3, sl
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
	b _080ACDBE
_080ACBFA:
	adds r0, r6, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	beq _080ACC1E
	cmp r0, #5
	beq _080ACC1E
	cmp r0, #8
	beq _080ACC1E
	cmp r0, #0xb
	beq _080ACC1E
	cmp r0, #0xc
	beq _080ACC1E
	cmp r0, #0xd
	beq _080ACC1E
	b _080ACD80
_080ACC1E:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	b _080ACD80
_080ACC2E:
	ldrb r0, [r6, #0xb]
	adds r7, r6, #0
	adds r7, #0x20
	cmp r0, #0
	bne _080ACC54
	adds r0, #1
	strb r0, [r6, #0xb]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r0, #0xd
	bne _080ACC54
	movs r0, #0xa
	strb r0, [r6, #0xb]
_080ACC54:
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
	mov sl, r3
	cmp r0, #0x3c
	bhi _080ACCCC
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
	bne _080ACCCC
	adds r0, r6, #0
	adds r0, #0x46
	movs r4, #0
	ldrsh r0, [r0, r4]
	mov r5, sb
	movs r3, #0xa
	ldrsh r1, [r5, r3]
	adds r0, r0, r1
	ldr r1, [r6, #0x24]
	cmp r0, r1
	blt _080ACCCC
	movs r0, #0
	str r0, [r6, #0x48]
	str r0, [r6, #0x50]
	str r0, [r6, #0x4c]
	str r0, [r6, #0x54]
	str r0, [r6, #0x10]
	adds r0, r2, #1
	strb r0, [r6, #0xb]
	ldrb r1, [r7]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _080ACCCC
	cmp r1, #7
	beq _080ACCCC
	movs r0, #0x71
	bl PlaySong
_080ACCCC:
	ldrb r0, [r6, #0xb]
	cmp r0, #2
	bne _080ACD02
	mov r4, r8
	movs r5, #0x30
	ldrsh r0, [r4, r5]
	cmp r0, #0
	bne _080ACD02
	ldrb r1, [r6, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080ACD02
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x44]
	ldr r2, _080ACD88 @ =0xFFFC0000
	adds r1, r1, r2
	movs r3, #0x80
	lsls r3, r3, #0xd
	adds r2, r6, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	adds r2, r3, #0
	bl sub_0806D5C0
_080ACD02:
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r0, #2
	beq _080ACD1E
	cmp r0, #4
	beq _080ACD1E
	cmp r0, #5
	beq _080ACD1E
	cmp r0, #8
	beq _080ACD1E
	cmp r0, #0xc
	beq _080ACD1E
	cmp r0, #0xd
	bne _080ACD3C
_080ACD1E:
	ldr r0, [r6, #0x18]
	movs r2, #0x80
	lsls r2, r2, #9
	mov r3, sl
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
_080ACD3C:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080ACD8C
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r0, #2
	beq _080ACD66
	cmp r0, #4
	beq _080ACD66
	cmp r0, #5
	beq _080ACD66
	cmp r0, #8
	beq _080ACD66
	cmp r0, #0xc
	beq _080ACD66
	cmp r0, #0xd
	bne _080ACD72
_080ACD66:
	mov r4, sl
	ldrb r0, [r4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080ACD72:
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r0, #5
	bne _080ACD80
	movs r0, #0x6e
	bl PlaySong
_080ACD80:
	adds r0, r6, #0
	bl EntityDelete
	b _080ACDBE
	.align 2, 0
_080ACD88: .4byte 0xFFFC0000
_080ACD8C:
	mov r3, sl
	ldrb r2, [r3]
	movs r4, #0x20
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	bne _080ACDBE
	adds r0, r6, #0
	adds r0, #0x46
	movs r5, #0
	ldrsh r1, [r0, r5]
	movs r0, #0x18
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080ACDB2
	adds r0, r2, #0
	orrs r0, r4
	strb r0, [r3]
	b _080ACDBE
_080ACDB2:
	cmp r1, #0xf0
	ble _080ACDBE
	adds r0, r2, #0
	orrs r0, r4
	mov r1, sl
	strb r0, [r1]
_080ACDBE:
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ACDD0
sub_080ACDD0: @ 0x080ACDD0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r0, _080ACE08 @ =0x0808FCFC
	str r0, [sp]
	ldr r2, _080ACE0C @ =sub_080AD0B8
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _080ACEA8
	ldr r0, _080ACE10 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	cmp r2, #0
	bge _080ACE14
	adds r0, r4, #0
	bl EntityDelete
	b _080ACEA8
	.align 2, 0
_080ACE08: .4byte 0x0808FCFC
_080ACE0C: .4byte sub_080AD0B8
_080ACE10: .4byte 0x081C15F4
_080ACE14:
	ldr r1, _080ACEB4 @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803B924
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x42
	strb r0, [r1]
	ldr r0, _080ACEB8 @ =sub_0803B9D0
	str r0, [r4, #4]
	ldr r2, _080ACEBC @ =sub_080AD0F8
	ldr r3, _080ACEC0 @ =sub_080AD124
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
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
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
_080ACEA8:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080ACEB4: .4byte 0x0820ED60
_080ACEB8: .4byte sub_0803B9D0
_080ACEBC: .4byte sub_080AD0F8
_080ACEC0: .4byte sub_080AD124

	thumb_func_start sub_080ACEC4
sub_080ACEC4: @ 0x080ACEC4
	push {r4, lr}
	ldr r4, [r0, #0x1c]
	lsls r3, r1, #3
	subs r3, r3, r1
	lsls r3, r3, #3
	adds r3, r3, r4
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #3
	adds r1, r1, r4
	ldr r2, [r3]
	ldr r1, [r1]
	adds r2, r2, r1
	lsrs r1, r2, #0x1f
	adds r2, r2, r1
	asrs r2, r2, #1
	ldr r1, [r0, #0x40]
	adds r1, r1, r2
	str r1, [r0, #0x40]
	movs r1, #0xd
_080ACEEC:
	ldr r0, [r4]
	subs r0, r0, r2
	str r0, [r4]
	adds r4, #0x38
	subs r1, #1
	cmp r1, #0
	bge _080ACEEC
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080ACF00
sub_080ACF00: @ 0x080ACF00
	ldr r3, [r0, #0x1c]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	str r2, [r0, #4]
	bx lr
	.align 2, 0

	thumb_func_start sub_080ACF10
sub_080ACF10: @ 0x080ACF10
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _080ACF2A
	movs r4, #0
_080ACF1C:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080AC014
	adds r4, #1
	cmp r4, #0xd
	ble _080ACF1C
_080ACF2A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080ACF30
sub_080ACF30: @ 0x080ACF30
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _080ACF50
	movs r4, #0
_080ACF3E:
	adds r0, r6, r4
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, r5, #0
	bl sub_080AC014
	adds r4, #1
	cmp r4, #0xd
	ble _080ACF3E
_080ACF50:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ACF58
sub_080ACF58: @ 0x080ACF58
	ldr r2, [r0, #0x1c]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	bx lr
	.align 2, 0

	thumb_func_start sub_080ACF6C
sub_080ACF6C: @ 0x080ACF6C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r0, [sp, #0x18]
	ldr r5, [sp, #0x1c]
	str r0, [sp]
	lsrs r0, r5, #0x1f
	adds r0, r5, r0
	asrs r0, r0, #1
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_080AC314
	ldr r1, [r6, #0x1c]
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	movs r1, #1
	str r1, [r0, #0x34]
	str r5, [r0, #0x30]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080ACFA0
sub_080ACFA0: @ 0x080ACFA0
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r0, [sp, #0x18]
	ldr r5, [sp, #0x1c]
	str r0, [sp]
	lsrs r0, r5, #0x1f
	adds r0, r5, r0
	asrs r0, r0, #1
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_080AC468
	ldr r1, [r6, #0x1c]
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	movs r1, #1
	str r1, [r0, #0x34]
	str r5, [r0, #0x30]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080ACFD4
sub_080ACFD4: @ 0x080ACFD4
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0xd
_080ACFDA:
	ldr r0, [r1]
	str r0, [r1, #0x1c]
	ldr r0, [r1, #4]
	str r0, [r1, #0x20]
	adds r1, #0x38
	subs r2, #1
	cmp r2, #0
	bge _080ACFDA
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ACFF0
sub_080ACFF0: @ 0x080ACFF0
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0xd
_080ACFF6:
	ldr r0, [r1, #0x1c]
	str r0, [r1]
	ldr r0, [r1, #0x20]
	str r0, [r1, #4]
	adds r1, #0x38
	subs r2, #1
	cmp r2, #0
	bge _080ACFF6
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AD00C
sub_080AD00C: @ 0x080AD00C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	mov sl, r1
	adds r7, r2, #0
	ldr r5, [r6, #0x1c]
	adds r0, #0x20
	ldrb r0, [r0]
	subs r0, #0xc
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080AD05E
	ldr r0, [r5, #0x40]
	mov r8, r0
	ldr r0, [r5, #0x44]
	mov sb, r0
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	ldrh r0, [r7, #4]
	bl sub_08021530
	adds r0, r5, #0
	mov r1, sl
	adds r2, r7, #0
	movs r3, #0
	bl sub_0806B7D8
	mov r0, r8
	str r0, [r5, #0x40]
	mov r0, sb
	str r0, [r5, #0x44]
	movs r0, #0x69
	bl PlaySong
	b _080AD0A8
_080AD05E:
	ldr r0, [r5, #0x40]
	mov r8, r0
	ldr r0, [r5, #0x44]
	mov sb, r0
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	ldrh r0, [r7, #4]
	bl sub_08021530
	adds r3, r0, #0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r5, #0
	mov r1, sl
	adds r2, r7, #0
	bl sub_0806B7D8
	adds r4, r0, #0
	mov r0, r8
	str r0, [r5, #0x40]
	mov r0, sb
	str r0, [r5, #0x44]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08042B8C
	ldr r0, [r6, #0x1c]
	mov r1, sl
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_080AC5B0
_080AD0A8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AD0B8
sub_080AD0B8: @ 0x080AD0B8
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r5, [r4, #0x14]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080AD0EE
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r4, #0
	bl sub_0806D3D8
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806D128
	cmp r0, #0
	beq _080AD0E4
	adds r0, r4, #0
	bl EntityDelete
	b _080AD0EE
_080AD0E4:
	mov r0, sp
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080429D0
_080AD0EE:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AD0F8
sub_080AD0F8: @ 0x080AD0F8
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

	thumb_func_start sub_080AD124
sub_080AD124: @ 0x080AD124
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
	ldr r4, _080AD1C8 @ =0x0001FFFF
	mov sl, r4
	ands r0, r4
	ldr r5, _080AD1CC @ =0xFFFF0000
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
_080AD1C8: .4byte 0x0001FFFF
_080AD1CC: .4byte 0xFFFF0000

	thumb_func_start sub_080AD1D0
sub_080AD1D0: @ 0x080AD1D0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _080AD21C @ =0x0825EB04
	movs r1, #0
	bl sub_0803B800
	adds r7, r0, #0
	cmp r7, #0
	blt _080AD22C
	ldr r4, _080AD220 @ =0x0826642C
	adds r0, r4, #0
	movs r1, #0
	bl sub_08068264
	adds r6, r5, #0
	adds r6, #0x26
	strb r0, [r6]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08068264
	adds r1, r5, #0
	adds r1, #0x27
	strb r0, [r1]
	ldrb r0, [r6]
	adds r2, r5, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _080AD224 @ =0x08266E08
	ldrb r3, [r2]
	adds r0, r5, #0
	adds r2, r7, #0
	bl sub_0803B924
	ldr r0, _080AD228 @ =sub_0803B9D0
	str r0, [r5, #4]
	movs r0, #1
	b _080AD22E
	.align 2, 0
_080AD21C: .4byte 0x0825EB04
_080AD220: .4byte 0x0826642C
_080AD224: .4byte 0x08266E08
_080AD228: .4byte sub_0803B9D0
_080AD22C:
	movs r0, #0
_080AD22E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080AD234
sub_080AD234: @ 0x080AD234
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

	thumb_func_start sub_080AD260
sub_080AD260: @ 0x080AD260
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
	bl sub_080AC5B0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start EnemyBatCreate
EnemyBatCreate: @ 0x080AD2A8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r2, _080AD2CC @ =0x0820BD4C
	ldr r0, _080AD2D0 @ =0x0824B2C4
	ldr r1, _080AD2D4 @ =0x081F422C
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AD2D8
	adds r0, r5, #0
	bl EntityDelete
	b _080AD354
	.align 2, 0
_080AD2CC: .4byte 0x0820BD4C
_080AD2D0: .4byte 0x0824B2C4
_080AD2D4: .4byte 0x081F422C
_080AD2D8:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	adds r0, r5, #0
	bl sub_0806B04C
	ldr r0, _080AD30C @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AD310
	movs r1, #0
	movs r0, #4
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
	b _080AD354
	.align 2, 0
_080AD30C: .4byte gEwramData
_080AD310:
	movs r1, #0
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
	adds r7, r5, #0
	adds r7, #0x46
	adds r6, r7, #0
_080AD320:
	adds r0, r5, #0
	bl sub_08002188
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_080021A8
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08001C1C
	adds r1, r0, #0
	cmp r1, #0
	bne _080AD344
	ldrh r0, [r6]
	subs r0, #8
	strh r0, [r6]
	b _080AD320
_080AD344:
	ldrh r0, [r7]
	adds r0, r0, r1
	strh r0, [r7]
	ldr r1, _080AD35C @ =sub_0806E1B8
	ldr r2, _080AD360 @ =sub_080AD6E4
	adds r0, r5, #0
	bl sub_0806D244
_080AD354:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AD35C: .4byte sub_0806E1B8
_080AD360: .4byte sub_080AD6E4

	thumb_func_start sub_080AD364
sub_080AD364: @ 0x080AD364
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0806BC40
	ldrb r5, [r4, #0xb]
	cmp r5, #1
	beq _080AD3A0
	cmp r5, #1
	bgt _080AD37C
	cmp r5, #0
	beq _080AD382
	b _080AD444
_080AD37C:
	cmp r5, #2
	beq _080AD406
	b _080AD444
_080AD382:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080AD398
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080AD398:
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
_080AD3A0:
	adds r0, r4, #0
	movs r1, #0xe0
	movs r2, #0xa0
	bl sub_080AD700
	cmp r0, #0
	beq _080AD3D8
	adds r0, r4, #0
	movs r1, #0xc0
	movs r2, #0x70
	bl sub_080AD700
	cmp r0, #0
	beq _080AD3C8
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	b _080AD444
_080AD3C8:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _080AD444
	adds r0, r4, #0
	movs r1, #1
	b _080AD3FC
_080AD3D8:
	bl RandomNumberGenerator
	adds r1, r0, #0
	movs r0, #0x7f
	ands r1, r0
	cmp r1, #0
	bne _080AD3EE
	movs r0, #2
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
	b _080AD444
_080AD3EE:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080AD444
	adds r0, r4, #0
	movs r1, #0
_080AD3FC:
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _080AD444
_080AD406:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _080AD412
	cmp r0, #1
	beq _080AD42E
	b _080AD444
_080AD412:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _080AD428
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080AD428:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_080AD42E:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080AD444
	movs r0, #0
	strb r2, [r4, #0xb]
	strb r0, [r4, #0xc]
_080AD444:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AD44C
sub_080AD44C: @ 0x080AD44C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _080AD4CA
	cmp r0, #1
	bgt _080AD460
	cmp r0, #0
	beq _080AD466
	b _080AD596
_080AD460:
	cmp r0, #2
	beq _080AD50E
	b _080AD596
_080AD466:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _080AD472
	cmp r0, #1
	beq _080AD4B2
	b _080AD596
_080AD472:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #2
	beq _080AD488
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080AD488:
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x48]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x4c]
	adds r0, r4, #0
	bl sub_0806BC40
	ldr r1, [r4, #0x48]
	adds r0, r4, #0
	bl sub_0806E120
	ldr r0, [r4, #0x48]
	rsbs r0, r0, #0
	str r0, [r4, #0x48]
	movs r0, #0x20
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_080AD4B2:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080AD596
	movs r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0
	strb r0, [r4, #0xc]
	b _080AD596
_080AD4CA:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _080AD4D6
	cmp r0, #1
	beq _080AD4EA
	b _080AD596
_080AD4D6:
	movs r1, #0xc0
	lsls r1, r1, #7
	str r1, [r4, #0x48]
	str r1, [r4, #0x4c]
	adds r0, r4, #0
	bl sub_0806E120
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_080AD4EA:
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806BDEC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080AD500
	rsbs r0, r0, #0
_080AD500:
	cmp r0, #0x27
	bgt _080AD596
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
	b _080AD596
_080AD50E:
	ldrb r2, [r4, #0xc]
	cmp r2, #0
	beq _080AD51A
	cmp r2, #1
	beq _080AD54C
	b _080AD596
_080AD51A:
	movs r5, #0xc0
	lsls r5, r5, #8
	str r5, [r4, #0x48]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r4, #0x4c]
	movs r3, #0x50
	str r3, [r4, #0x50]
	movs r0, #0x25
	str r0, [r4, #0x54]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080AD544
	rsbs r0, r5, #0
	str r0, [r4, #0x48]
	rsbs r0, r3, #0
	str r0, [r4, #0x50]
_080AD544:
	strh r2, [r4, #0x14]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_080AD54C:
	ldrh r0, [r4, #0x14]
	bl sub_080009E4
	cmp r0, #0
	bge _080AD558
	adds r0, #3
_080AD558:
	asrs r1, r0, #2
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	ldrh r3, [r4, #0x14]
	adds r0, r0, r3
	strh r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r2, [r0, r1]
	adds r0, #8
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r0, r1, #0
	subs r0, #0x28
	cmp r2, r0
	blt _080AD58A
	adds r0, r1, #0
	adds r0, #0xf0
	cmp r2, r0
	ble _080AD596
_080AD58A:
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080AD596:
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

	thumb_func_start sub_080AD5B8
sub_080AD5B8: @ 0x080AD5B8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080AD5C8
	cmp r0, #1
	beq _080AD626
	b _080AD63E
_080AD5C8:
	adds r0, r4, #0
	bl sub_080683BC
	movs r0, #0x72
	bl PlaySong
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r1, r4, #0
	adds r1, #0x6e
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803F17C
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x4c]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x80
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
	movs r0, #0x40
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080AD626:
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	movs r2, #0x80
	lsls r2, r2, #0xc
	movs r3, #0xc0
	lsls r3, r3, #0xb
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_0806BE74
_080AD63E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start EnemyBatUpdate
EnemyBatUpdate: @ 0x080AD644
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bne _080AD656
	adds r0, r4, #0
	bl sub_080AD6AC
	b _080AD6A4
_080AD656:
	cmp r0, #3
	bne _080AD662
	adds r0, r4, #0
	bl sub_080AD5B8
	b _080AD6A4
_080AD662:
	adds r0, r4, #0
	bl sub_0806CC20
	cmp r0, #0
	bne _080AD6A4
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080AD68A
	cmp r0, #2
	bgt _080AD67C
	cmp r0, #1
	beq _080AD682
	b _080AD698
_080AD67C:
	cmp r0, #3
	beq _080AD692
	b _080AD698
_080AD682:
	adds r0, r4, #0
	bl sub_080AD364
	b _080AD698
_080AD68A:
	adds r0, r4, #0
	bl sub_080AD44C
	b _080AD698
_080AD692:
	adds r0, r4, #0
	bl sub_080AD5B8
_080AD698:
	adds r0, r4, #0
	bl sub_0806DF20
	adds r0, r4, #0
	bl sub_0806E314
_080AD6A4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AD6AC
sub_080AD6AC: @ 0x080AD6AC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xb]
	cmp r5, #0
	beq _080AD6BC
	cmp r5, #1
	beq _080AD6D8
	b _080AD6DE
_080AD6BC:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _080AD6D2
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080AD6D2:
	movs r0, #1
	strb r0, [r4, #0xb]
	strb r5, [r4, #0xc]
_080AD6D8:
	adds r0, r4, #0
	bl sub_0803F17C
_080AD6DE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080AD6E4
sub_080AD6E4: @ 0x080AD6E4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080AD6FA
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080AD6FA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080AD700
sub_080AD700: @ 0x080AD700
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r1, #0
	lsls r4, r4, #0x10
	lsrs r3, r4, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _080AD740 @ =gEwramData
	ldr r1, [r1]
	ldr r5, _080AD744 @ =0x00013168
	adds r1, r1, r5
	ldr r5, [r1]
	adds r1, r0, #0
	adds r1, #0x42
	lsrs r4, r4, #0x11
	ldrh r1, [r1]
	subs r1, r1, r4
	adds r0, #0x46
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r6, #0
	ldrsh r4, [r0, r6]
	str r2, [sp]
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08068AD4
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080AD740: .4byte gEwramData
_080AD744: .4byte 0x00013168

	thumb_func_start sub_080AD748
sub_080AD748: @ 0x080AD748
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r7, [r4, #0x14]
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
	adds r2, r7, #0
	adds r2, #0x2d
	movs r0, #8
	strb r0, [r2]
	ldrh r0, [r7, #0x34]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	strh r0, [r7, #0x34]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08042B8C
	movs r1, #0x34
	ldrsh r0, [r7, r1]
	cmp r0, #0
	bgt _080AD7DA
	adds r0, r7, #0
	bl sub_080683BC
	movs r0, #0x70
	bl PlaySong
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
	movs r0, #3
	strb r0, [r7, #0xa]
	movs r0, #0x40
	strb r0, [r7, #0xd]
	ldr r2, _080AD7E0 @ =0xFFFF8000
	str r2, [r7, #0x48]
	ldr r0, _080AD7E4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080AD7E8 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r7, #0x40]
	cmp r1, r0
	ble _080AD7D6
	rsbs r0, r2, #0
	str r0, [r7, #0x48]
_080AD7D6:
	ldr r0, _080AD7EC @ =0xFFFD0000
	str r0, [r7, #0x4c]
_080AD7DA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AD7E0: .4byte 0xFFFF8000
_080AD7E4: .4byte gEwramData
_080AD7E8: .4byte 0x00013110
_080AD7EC: .4byte 0xFFFD0000

	thumb_func_start sub_080AD7F0
sub_080AD7F0: @ 0x080AD7F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	mov sb, r1
	adds r5, r7, #0
	adds r5, #0x59
	ldrb r0, [r5]
	movs r1, #2
	orrs r0, r1
	strb r0, [r5]
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _080AD822
	adds r0, r7, #0
	bl EntityDelete
	b _080AD9E0
_080AD822:
	adds r4, r7, #0
	adds r4, #0x58
	movs r0, #0x1f
	ands r3, r0
	ldrb r1, [r4]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r4]
	ldrb r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r5]
	adds r0, r7, #0
	bl sub_080ADB0C
	adds r6, r7, #0
	str r7, [r7, #0x14]
	movs r0, #0xa0
	lsls r0, r0, #0xc
	mov r8, r0
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	mov sl, r4
	cmp r0, #0
	beq _080AD860
	mov r1, r8
	rsbs r1, r1, #0
	mov r8, r1
_080AD860:
	movs r4, #0
_080AD862:
	ldr r0, _080AD92C @ =sub_080ADC2C
	bl sub_0806DFF8
	adds r5, r0, #0
	cmp r5, #0
	bne _080AD870
	b _080AD9B8
_080AD870:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _080AD880
	b _080AD9B8
_080AD880:
	ldrb r1, [r5, #0x10]
	adds r0, r6, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r2, r5, #0
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
	adds r2, #1
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	adds r4, #1
	lsls r0, r4, #0xc
	strh r0, [r5, #0x22]
	str r7, [r5, #0x14]
	str r6, [r5, #0x18]
	strb r4, [r5, #0x1e]
	ldr r0, [r6, #0x40]
	add r0, r8
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_080ADB0C
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x36
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0806B04C
	adds r6, r5, #0
	cmp r4, #3
	ble _080AD862
	adds r0, r7, #0
	bl sub_0806B04C
	ldr r0, _080AD930 @ =sub_080AE390
	str r0, [r7, #4]
	ldr r0, _080AD934 @ =0x081E4184
	movs r1, #0
	bl sub_0803B800
	adds r4, r0, #0
	ldr r0, _080AD938 @ =0x0820B724
	mov r2, sb
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	bl sub_08068264
	adds r2, r7, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _080AD93C @ =0x08237C44
	ldrb r3, [r2]
	adds r0, r7, #0
	adds r2, r4, #0
	bl sub_0803B924
	mov r0, sb
	cmp r0, #0
	bne _080AD940
	adds r0, r7, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _080AD94C
	.align 2, 0
_080AD92C: .4byte sub_080ADC2C
_080AD930: .4byte sub_080AE390
_080AD934: .4byte 0x081E4184
_080AD938: .4byte 0x0820B724
_080AD93C: .4byte 0x08237C44
_080AD940:
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080AD94C:
	adds r0, r7, #0
	bl sub_0803F17C
	movs r2, #0x80
	lsls r2, r2, #9
	mov r1, sl
	ldrb r0, [r1]
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
	adds r2, r7, #0
	adds r2, #0x21
	mov r0, sb
	strb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
	ldr r0, _080AD998 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AD99C
	movs r0, #6
	strb r0, [r7, #0xa]
	b _080AD9E0
	.align 2, 0
_080AD998: .4byte gEwramData
_080AD99C:
	ldrb r0, [r2]
	cmp r0, #0
	bne _080AD9C2
	ldr r2, _080AD9B0 @ =sub_080AE334
	ldr r3, _080AD9B4 @ =sub_080AD748
	adds r0, r7, #0
	movs r1, #8
	bl sub_0804277C
	b _080AD9CE
	.align 2, 0
_080AD9B0: .4byte sub_080AE334
_080AD9B4: .4byte sub_080AD748
_080AD9B8:
	movs r0, #1
	strb r0, [r7, #0x1c]
	movs r0, #4
	strb r0, [r7, #0xa]
	b _080AD9E0
_080AD9C2:
	ldr r2, _080AD9F0 @ =sub_080AE3CC
	ldr r3, _080AD9F4 @ =sub_080AD748
	adds r0, r7, #0
	movs r1, #8
	bl sub_0804277C
_080AD9CE:
	ldr r4, _080AD9F8 @ =0x1010F8F8
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080428F0
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08042884
_080AD9E0:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AD9F0: .4byte sub_080AE3CC
_080AD9F4: .4byte sub_080AD748
_080AD9F8: .4byte 0x1010F8F8

	thumb_func_start sub_080AD9FC
sub_080AD9FC: @ 0x080AD9FC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r7, [r4, #0x14]
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r4, #0
	bl sub_080021A8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	lsrs r2, r1, #0x10
	mov r8, r2
	asrs r1, r1, #0x10
	adds r1, #0xa
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	beq _080ADA3E
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r0, [r1]
	adds r0, #2
	adds r0, r2, r0
	strh r0, [r1]
	b _080ADA48
_080ADA3E:
	ldrb r0, [r7, #0x1d]
	cmp r0, #0
	bne _080ADA48
	movs r0, #4
	strb r0, [r7, #0x1d]
_080ADA48:
	movs r2, #0
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	bne _080ADA9E
	ldrb r0, [r4, #0x1f]
	adds r5, r4, #0
	adds r5, #0x58
	cmp r0, #0
	bne _080ADA80
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080ADA7A
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r0, #0x18
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r1, #8
	bl sub_0800207C
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080ADA7A:
	ldrb r0, [r4, #0x1f]
	cmp r0, #0
	beq _080ADAF2
_080ADA80:
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080ADAF2
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x18
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r1, #8
	bl sub_08002058
	b _080ADAEE
_080ADA9E:
	cmp r0, #4
	bne _080ADAF2
	ldrb r0, [r7, #0x1f]
	adds r5, r4, #0
	adds r5, #0x58
	cmp r0, #0
	beq _080ADAD2
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080ADACC
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x18
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r1, #8
	bl sub_08002058
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080ADACC:
	ldrb r0, [r7, #0x1f]
	cmp r0, #0
	bne _080ADAF2
_080ADAD2:
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080ADAF2
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r0, #0x18
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r1, #8
	bl sub_0800207C
_080ADAEE:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080ADAF2:
	cmp r2, #0
	beq _080ADB00
	ldrb r0, [r7, #0x1d]
	cmp r0, #0
	bne _080ADB00
	movs r0, #4
	strb r0, [r7, #0x1d]
_080ADB00:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ADB0C
sub_080ADB0C: @ 0x080ADB0C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r5, _080ADB70 @ =0x0000FFF8
	ldr r0, _080ADB74 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080ADB8A
	movs r0, #0
	mov r8, r0
	adds r7, r6, #0
	adds r7, #0x46
_080ADB2E:
	adds r0, r6, #0
	bl sub_08002188
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r6, #0
	bl sub_080021A8
	adds r1, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
	adds r0, r5, #0
	adds r0, #0xa
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080ADB78
	adds r0, r5, #2
	adds r0, r1, r0
	ldrh r1, [r7]
	adds r0, r0, r1
	strh r0, [r7]
	b _080ADB8A
	.align 2, 0
_080ADB70: .4byte 0x0000FFF8
_080ADB74: .4byte gEwramData
_080ADB78:
	adds r0, r5, #0
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #3
	ble _080ADB2E
_080ADB8A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080ADB94
sub_080ADB94: @ 0x080ADB94
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _080ADBE0
	cmp r0, #1
	bgt _080ADBA8
	cmp r0, #0
	beq _080ADBAE
	b _080ADC16
_080ADBA8:
	cmp r0, #2
	beq _080ADC02
	b _080ADC16
_080ADBAE:
	cmp r3, #0
	beq _080ADBB6
	cmp r2, #7
	ble _080ADC16
_080ADBB6:
	cmp r1, #0
	beq _080ADBC8
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x48]
	ldr r0, _080ADBC4 @ =0xFFFFFD00
	b _080ADBD0
	.align 2, 0
_080ADBC4: .4byte 0xFFFFFD00
_080ADBC8:
	ldr r0, _080ADBDC @ =0xFFFF8000
	str r0, [r4, #0x48]
	movs r0, #0xc0
	lsls r0, r0, #2
_080ADBD0:
	str r0, [r4, #0x50]
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xd]
	b _080ADC16
	.align 2, 0
_080ADBDC: .4byte 0xFFFF8000
_080ADBE0:
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x50]
	adds r0, r0, r1
	str r0, [r4, #0x48]
	cmp r1, #0
	ble _080ADBF8
	cmp r0, #0
	blt _080ADC16
	b _080ADBFC
_080ADBF8:
	cmp r0, #0
	bgt _080ADC16
_080ADBFC:
	movs r0, #2
	strb r0, [r4, #0xb]
	b _080ADC16
_080ADC02:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bls _080ADC16
	movs r0, #0
	strb r0, [r4, #0xb]
	strb r0, [r4, #0xd]
_080ADC16:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080ADC2C
sub_080ADC2C: @ 0x080ADC2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r6, r0, #0
	ldr r0, [r6, #0x18]
	mov sb, r0
	ldr r7, [r6, #0x14]
	movs r1, #0
	mov sl, r1
	mov r8, r1
	adds r0, r7, #0
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
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _080ADCA4
	ldrb r0, [r7, #0xa]
	cmp r0, #3
	beq _080ADCA4
	adds r0, r7, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	bne _080ADC80
	adds r0, r7, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _080ADC9C
_080ADC80:
	ldrb r0, [r7, #0xa]
	cmp r0, #3
	bne _080ADC88
	b _080ADFF4
_080ADC88:
	adds r0, r6, #0
	movs r1, #0
	bl sub_08021278
	add r0, sp, #8
	adds r1, r6, #0
	adds r2, r7, #0
	bl sub_080429D0
	b _080ADFF4
_080ADC9C:
	adds r0, r6, #0
	movs r1, #1
	bl sub_08021278
_080ADCA4:
	ldrb r0, [r6, #0xa]
	adds r5, r6, #0
	adds r5, #0x58
	cmp r0, #1
	beq _080ADD98
	cmp r0, #1
	bgt _080ADCB8
	cmp r0, #0
	beq _080ADCC6
	b _080ADE9C
_080ADCB8:
	cmp r0, #2
	bne _080ADCBE
	b _080ADE10
_080ADCBE:
	cmp r0, #3
	bne _080ADCC4
	b _080ADE7C
_080ADCC4:
	b _080ADE9C
_080ADCC6:
	ldrb r0, [r7, #0x1c]
	cmp r0, #0
	beq _080ADCCE
	b _080ADE7C
_080ADCCE:
	ldr r0, _080ADD18 @ =0x081E4184
	movs r1, #0
	bl sub_0803B800
	adds r2, r0, #0
	ldr r1, _080ADD1C @ =0x08237C44
	adds r4, r7, #0
	adds r4, #0x2c
	ldrb r3, [r4]
	adds r0, r6, #0
	bl sub_0803B924
	ldrb r1, [r4]
	adds r0, r6, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r5]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	ldrb r0, [r6, #0x1e]
	cmp r0, #4
	beq _080ADD20
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _080ADD2C
	.align 2, 0
_080ADD18: .4byte 0x081E4184
_080ADD1C: .4byte 0x08237C44
_080ADD20:
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080ADD2C:
	adds r0, r6, #0
	bl sub_0803F17C
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
	ldr r0, _080ADD50 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080ADD54
	movs r0, #4
	strb r0, [r6, #0xa]
	b _080ADE9C
	.align 2, 0
_080ADD50: .4byte gEwramData
_080ADD54:
	adds r0, r7, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	bne _080ADD74
	ldr r2, _080ADD6C @ =sub_080AE334
	ldr r3, _080ADD70 @ =sub_080AD748
	adds r0, r6, #0
	movs r1, #8
	bl sub_0804277C
	b _080ADD80
	.align 2, 0
_080ADD6C: .4byte sub_080AE334
_080ADD70: .4byte sub_080AD748
_080ADD74:
	ldr r2, _080ADDF4 @ =sub_080AE3CC
	ldr r3, _080ADDF8 @ =sub_080AD748
	adds r0, r6, #0
	movs r1, #8
	bl sub_0804277C
_080ADD80:
	ldr r4, _080ADDFC @ =0x1010F8F8
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080428F0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08042884
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
_080ADD98:
	ldrb r1, [r7, #0x1f]
	mov r3, sb
	ldrb r2, [r3, #0xd]
	adds r0, r6, #0
	movs r3, #1
	bl sub_080ADB94
	adds r0, r6, #0
	bl sub_080AD9FC
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080ADDBC
	movs r0, #0x80
	lsls r0, r0, #8
	mov sl, r0
_080ADDBC:
	ldrb r0, [r7, #0x1c]
	cmp r0, #0
	beq _080ADE9C
	movs r0, #2
	strb r0, [r6, #0xa]
	movs r0, #0x38
	strb r0, [r6, #0xd]
	mov r1, sl
	str r1, [r6, #0x54]
	ldrb r0, [r6, #0x1e]
	lsls r0, r0, #0xf
	ldr r3, _080ADE00 @ =0xFFFFA000
	adds r2, r0, r3
	str r2, [r6, #0x48]
	ldr r0, _080ADE04 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080ADE08 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r6, #0x40]
	cmp r1, r0
	ble _080ADDEE
	rsbs r0, r2, #0
	str r0, [r6, #0x48]
_080ADDEE:
	ldr r0, _080ADE0C @ =0xFFFD0000
	str r0, [r6, #0x4c]
	b _080ADE9C
	.align 2, 0
_080ADDF4: .4byte sub_080AE3CC
_080ADDF8: .4byte sub_080AD748
_080ADDFC: .4byte 0x1010F8F8
_080ADE00: .4byte 0xFFFFA000
_080ADE04: .4byte gEwramData
_080ADE08: .4byte 0x00013110
_080ADE0C: .4byte 0xFFFD0000
_080ADE10:
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x48]
	adds r0, r0, r1
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x44]
	ldr r1, [r6, #0x4c]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r1, r3
	str r1, [r6, #0x4c]
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080ADE40
	ldr r0, [r6, #0x54]
	ldr r1, _080ADE3C @ =0xFFFFFF00
	adds r0, r0, r1
	b _080ADE48
	.align 2, 0
_080ADE3C: .4byte 0xFFFFFF00
_080ADE40:
	ldr r0, [r6, #0x54]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
_080ADE48:
	str r0, [r6, #0x54]
	ldr r0, [r6, #0x54]
	mov sl, r0
	ldrb r1, [r6, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080ADE70
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x44]
	movs r3, #0x80
	lsls r3, r3, #0xd
	adds r2, r6, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #2
	str r2, [sp]
	adds r2, r3, #0
	bl sub_0806D5C0
_080ADE70:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _080ADE7C
	subs r0, #1
	strb r0, [r6, #0xd]
	b _080ADE9C
_080ADE7C:
	ldrh r1, [r5]
	ldr r0, _080ADE98 @ =0x0000101F
	ands r0, r1
	cmp r0, #0
	beq _080ADE90
	ldrb r0, [r5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080ADE90:
	adds r0, r6, #0
	bl EntityDelete
	b _080ADFF4
	.align 2, 0
_080ADE98: .4byte 0x0000101F
_080ADE9C:
	ldrb r0, [r6, #0xa]
	cmp r0, #4
	bne _080ADF50
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080ADEB2
	movs r1, #0x80
	lsls r1, r1, #8
	mov sl, r1
_080ADEB2:
	adds r0, r7, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _080ADF18
	ldrh r0, [r6, #0x22]
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #0xd
	cmp r1, #0
	bge _080ADED0
	ldr r3, _080ADEF0 @ =0x0000FFFF
	adds r1, r1, r3
_080ADED0:
	cmp r1, #0
	bge _080ADEF4
	ldrh r0, [r6, #0x22]
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #0xd
	cmp r0, #0
	bge _080ADEE8
	ldr r1, _080ADEF0 @ =0x0000FFFF
	adds r0, r0, r1
_080ADEE8:
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080ADF0A
	.align 2, 0
_080ADEF0: .4byte 0x0000FFFF
_080ADEF4:
	ldrh r0, [r6, #0x22]
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #0xd
	cmp r0, #0
	bge _080ADF08
	ldr r3, _080ADF4C @ =0x0000FFFF
	adds r0, r0, r3
_080ADF08:
	asrs r0, r0, #0x10
_080ADF0A:
	mov r8, r0
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	ldrh r3, [r6, #0x22]
	adds r0, r0, r3
	strh r0, [r6, #0x22]
_080ADF18:
	adds r0, r6, #0
	mov r1, sb
	bl sub_08068A70
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add r0, sl
	movs r1, #0x80
	lsls r1, r1, #9
	mov r3, r8
	adds r2, r3, r1
	ldrb r4, [r5]
	lsls r3, r4, #0x19
	lsrs r3, r3, #0x1f
	movs r5, #0
	str r5, [sp]
	lsls r4, r4, #0x1b
	lsrs r4, r4, #0x1b
	str r4, [sp, #4]
	bl sub_0803E058
	adds r0, r6, #0
	bl sub_0803F17C
	b _080ADFF4
	.align 2, 0
_080ADF4C: .4byte 0x0000FFFF
_080ADF50:
	adds r0, r7, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _080ADFB4
	ldrh r0, [r6, #0x22]
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #0xd
	cmp r1, #0
	bge _080ADF6E
	ldr r0, _080ADF8C @ =0x0000FFFF
	adds r1, r1, r0
_080ADF6E:
	cmp r1, #0
	bge _080ADF90
	ldrh r0, [r6, #0x22]
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #0xd
	cmp r0, #0
	bge _080ADF86
	ldr r1, _080ADF8C @ =0x0000FFFF
	adds r0, r0, r1
_080ADF86:
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080ADFA6
	.align 2, 0
_080ADF8C: .4byte 0x0000FFFF
_080ADF90:
	ldrh r0, [r6, #0x22]
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #0xd
	cmp r0, #0
	bge _080ADFA4
	ldr r3, _080AE004 @ =0x0000FFFF
	adds r0, r0, r3
_080ADFA4:
	asrs r0, r0, #0x10
_080ADFA6:
	mov r8, r0
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	ldrh r3, [r6, #0x22]
	adds r0, r0, r3
	strh r0, [r6, #0x22]
_080ADFB4:
	adds r0, r6, #0
	mov r1, sb
	bl sub_08068A70
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add r0, sl
	movs r1, #0x80
	lsls r1, r1, #9
	mov r3, r8
	adds r2, r3, r1
	ldrb r4, [r5]
	lsls r3, r4, #0x19
	lsrs r3, r3, #0x1f
	movs r5, #0
	str r5, [sp]
	lsls r4, r4, #0x1b
	lsrs r4, r4, #0x1b
	str r4, [sp, #4]
	bl sub_0803E058
	ldrb r0, [r7, #0xa]
	cmp r0, #3
	beq _080ADFEE
	add r0, sp, #8
	adds r1, r6, #0
	adds r2, r7, #0
	bl sub_080429D0
_080ADFEE:
	adds r0, r6, #0
	bl sub_0803F17C
_080ADFF4:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AE004: .4byte 0x0000FFFF

	thumb_func_start sub_080AE008
sub_080AE008: @ 0x080AE008
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	bl sub_08002188
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r4, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, r1
	lsrs r0, r0, #0x10
	str r0, [sp]
	mov r8, r7
	movs r6, #0
	ldr r2, _080AE064 @ =0xFFF80000
	adds r2, r2, r4
	mov sl, r2
	mov r4, sl
_080AE042:
	lsls r0, r7, #0x10
	asrs r5, r0, #0x10
	adds r1, r6, #0
	adds r1, #0xa
	adds r1, r5, r1
	asrs r0, r4, #0x10
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _080AE068
	adds r0, r5, r0
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	b _080AE06E
	.align 2, 0
_080AE064: .4byte 0xFFF80000
_080AE068:
	adds r6, #8
	cmp r6, #0x1f
	ble _080AE042
_080AE06E:
	movs r6, #0
	lsls r7, r7, #0x10
	mov sb, r7
	ldr r3, [sp]
	lsls r7, r3, #0x10
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	adds r5, r4, #0
	adds r5, #0xa
_080AE082:
	asrs r0, r7, #0x10
	adds r1, r5, #0
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _080AE09E
	adds r0, r4, r0
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	b _080AE0A6
_080AE09E:
	adds r5, #8
	adds r6, #8
	cmp r6, #0x1f
	ble _080AE082
_080AE0A6:
	mov r2, sl
	asrs r0, r2, #0x10
	asrs r1, r7, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r3, sb
	asrs r1, r3, #0x10
	mov r3, r8
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r0, r1
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080AE0E0
sub_080AE0E0: @ 0x080AE0E0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r5, r0, #0
	movs r0, #0
	mov r8, r0
	movs r7, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _080AE12E
	adds r0, r5, #0
	bl sub_08021924
	adds r0, r5, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _080AE120
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	bne _080AE10E
	b _080AE328
_080AE10E:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08021278
	add r0, sp, #8
	adds r1, r5, #0
	bl sub_080421AC
	b _080AE328
_080AE120:
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	beq _080AE12E
	adds r0, r5, #0
	movs r1, #1
	bl sub_08021278
_080AE12E:
	ldrb r0, [r5, #0xa]
	cmp r0, #6
	bls _080AE136
	b _080AE2E8
_080AE136:
	lsls r0, r0, #2
	ldr r1, _080AE140 @ =_080AE144
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080AE140: .4byte _080AE144
_080AE144: @ jump table
	.4byte _080AE160 @ case 0
	.4byte _080AE164 @ case 1
	.4byte _080AE1FE @ case 2
	.4byte _080AE21C @ case 3
	.4byte _080AE294 @ case 4
	.4byte _080AE29C @ case 5
	.4byte _080AE2BE @ case 6
_080AE160:
	movs r0, #0
	strb r0, [r5, #0xa]
_080AE164:
	ldrb r0, [r5, #0x1d]
	adds r4, r0, #0
	adds r1, r0, #0
	cmp r4, #0
	beq _080AE18A
	movs r0, #2
	strb r0, [r5, #0xa]
	cmp r4, #4
	bne _080AE184
	ldrb r0, [r5, #0x1f]
	cmp r0, #0
	beq _080AE180
	movs r0, #0
	b _080AE182
_080AE180:
	movs r0, #1
_080AE182:
	strb r0, [r5, #0x1f]
_080AE184:
	subs r0, r1, #1
	strb r0, [r5, #0x1d]
	b _080AE2E8
_080AE18A:
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0xa0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x3c
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xa0
	lsls r2, r2, #1
	movs r3, #0x78
	bl sub_0806CFFC
	cmp r0, #0
	bne _080AE1BA
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	b _080AE1F6
_080AE1BA:
	ldr r0, _080AE1D4 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _080AE1D8 @ =0x00013168
	adds r0, r1, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _080AE1DC
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	b _080AE1F6
	.align 2, 0
_080AE1D4: .4byte gEwramData
_080AE1D8: .4byte 0x00013168
_080AE1DC:
	ldr r2, _080AE1F0 @ =0x00013168
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r5, #0x40]
	cmp r1, r0
	bge _080AE1F4
	strb r4, [r5, #0x1f]
	b _080AE1F8
	.align 2, 0
_080AE1F0: .4byte 0x00013168
_080AE1F4:
	movs r0, #1
_080AE1F6:
	strb r0, [r5, #0x1f]
_080AE1F8:
	movs r0, #2
	strb r0, [r5, #0xa]
	b _080AE2E8
_080AE1FE:
	ldrb r1, [r5, #0x1f]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_080ADB94
	adds r0, r5, #0
	bl sub_080AD9FC
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _080AE2E8
	movs r0, #1
	strb r0, [r5, #0xa]
	b _080AE2E8
_080AE21C:
	movs r0, #1
	strb r0, [r5, #0x1c]
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	movs r0, #0x80
	lsls r0, r0, #6
	adds r1, r1, r0
	str r1, [r5, #0x4c]
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _080AE254
	ldr r0, [r5, #0x54]
	ldr r1, _080AE250 @ =0xFFFFFF00
	adds r0, r0, r1
	b _080AE25C
	.align 2, 0
_080AE250: .4byte 0xFFFFFF00
_080AE254:
	ldr r0, [r5, #0x54]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
_080AE25C:
	str r0, [r5, #0x54]
	ldr r7, [r5, #0x54]
	ldrb r1, [r5, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080AE284
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	movs r2, #0x80
	lsls r2, r2, #0xd
	movs r3, #0x80
	lsls r3, r3, #9
	adds r4, r5, #0
	adds r4, #0x5c
	ldrb r4, [r4]
	subs r4, #2
	str r4, [sp]
	bl sub_0806D5C0
_080AE284:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AE2E8
	ldrb r0, [r6]
	b _080AE2AE
_080AE294:
	movs r0, #2
	strb r0, [r5, #0xd]
	movs r0, #5
	strb r0, [r5, #0xa]
_080AE29C:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AE328
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
_080AE2AE:
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r5, #0
	bl EntityDelete
	b _080AE328
_080AE2BE:
	movs r1, #0x80
	lsls r1, r1, #9
	mov r0, r8
	adds r2, r0, r1
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	movs r4, #0
	str r4, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_0803E058
	adds r0, r5, #0
	bl sub_0803F17C
	b _080AE328
_080AE2E8:
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	beq _080AE300
	add r0, sp, #8
	adds r1, r5, #0
	bl sub_080421AC
	adds r0, r5, #0
	bl sub_080AE008
	adds r7, r0, #0
	str r7, [r5, #0x54]
_080AE300:
	movs r1, #0x80
	lsls r1, r1, #9
	mov r0, r8
	adds r2, r0, r1
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	movs r4, #0
	str r4, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_0803E058
	adds r0, r5, #0
	bl sub_0803F17C
_080AE328:
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080AE334
sub_080AE334: @ 0x080AE334
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

	thumb_func_start EnemyGiantWormCreate
EnemyGiantWormCreate: @ 0x080AE360
	push {lr}
	movs r1, #0
	bl sub_080AD7F0
	pop {r0}
	bx r0

	thumb_func_start EnemyGiantWormUpdate
EnemyGiantWormUpdate: @ 0x080AE36C
	push {lr}
	bl sub_080AE0E0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyPoisonWormCreate
EnemyPoisonWormCreate: @ 0x080AE378
	push {lr}
	movs r1, #1
	bl sub_080AD7F0
	pop {r0}
	bx r0

	thumb_func_start EnemyPoisonWormUpdate
EnemyPoisonWormUpdate: @ 0x080AE384
	push {lr}
	bl sub_080AE0E0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AE390
sub_080AE390: @ 0x080AE390
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #0
	ldr r6, _080AE3C4 @ =gEwramData
_080AE398:
	ldr r0, [r4]
	cmp r0, #0
	beq _080AE3BE
	adds r0, r4, #0
	bl sub_0803AC40
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r1, [r0]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080AE3C8 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r6]
	adds r4, r1, r0
	adds r5, #1
	cmp r5, #4
	ble _080AE398
_080AE3BE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AE3C4: .4byte gEwramData
_080AE3C8: .4byte 0x000004E4

	thumb_func_start sub_080AE3CC
sub_080AE3CC: @ 0x080AE3CC
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

	thumb_func_start sub_080AE3FC
sub_080AE3FC: @ 0x080AE3FC
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
	bgt _080AE4AC
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	bne _080AE458
	ldrb r0, [r6, #0xb]
	cmp r0, #0
	beq _080AE458
	adds r0, r6, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _080AE464
_080AE458:
	adds r0, r6, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080AE464:
	adds r0, r6, #0
	bl sub_080683BC
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #0
	beq _080AE482
	ldr r0, _080AE4B4 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _080AE4B8 @ =0x0000037E
	adds r1, r1, r0
	ldrh r2, [r1]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1]
_080AE482:
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
	movs r1, #0
	movs r0, #0x28
	strb r0, [r6, #0xd]
	movs r0, #3
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xb]
	strb r1, [r6, #0xc]
_080AE4AC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AE4B4: .4byte gEwramData
_080AE4B8: .4byte 0x0000037E

	thumb_func_start sub_080AE4BC
sub_080AE4BC: @ 0x080AE4BC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xb]
	cmp r5, #0
	beq _080AE4CC
	cmp r5, #1
	beq _080AE512
	b _080AE54E
_080AE4CC:
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
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x6e
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x28
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xdc
	movs r3, #0x50
	bl sub_0806CFFC
	cmp r0, #0
	beq _080AE54E
	movs r0, #1
	strb r0, [r4, #0xb]
	b _080AE54E
_080AE512:
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
	bl RandomNumberGenerator
	adds r1, r0, #0
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	bne _080AE54E
	strb r5, [r4, #0xa]
	strb r1, [r4, #0xb]
	strb r1, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080AE54E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080AE554
sub_080AE554: @ 0x080AE554
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrb r4, [r5, #0xb]
	cmp r4, #1
	beq _080AE58C
	cmp r4, #1
	bgt _080AE56A
	cmp r4, #0
	beq _080AE570
	b _080AE648
_080AE56A:
	cmp r4, #2
	beq _080AE618
	b _080AE648
_080AE570:
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AE648
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _080AE644
_080AE58C:
	movs r2, #0x80
	rsbs r2, r2, #0
	movs r3, #0xf8
	lsls r3, r3, #1
	movs r0, #0xd0
	lsls r0, r0, #1
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	bl sub_08068AD4
	cmp r0, #0
	bne _080AE5DC
	ldr r0, _080AE5D8 @ =gEwramData
	ldr r1, [r0]
	adds r0, r5, #0
	adds r0, #0x37
	ldrb r2, [r0]
	lsrs r0, r2, #5
	lsls r0, r0, #2
	movs r3, #0xf5
	lsls r3, r3, #2
	adds r1, r1, r3
	adds r1, r1, r0
	movs r0, #0x1f
	ands r0, r2
	lsls r4, r0
	ldr r0, [r1]
	bics r0, r4
	str r0, [r1]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	b _080AE648
	.align 2, 0
_080AE5D8: .4byte gEwramData
_080AE5DC:
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
	bl RandomNumberGenerator
	movs r1, #7
	ands r1, r0
	cmp r1, #0
	bne _080AE648
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #0x12
	strb r0, [r5, #0xd]
	movs r0, #2
	b _080AE646
_080AE618:
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _080AE636
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _080AE636
	movs r0, #0x89
	bl PlaySong
	adds r0, r5, #0
	bl sub_080AE96C
_080AE636:
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AE648
_080AE644:
	movs r0, #1
_080AE646:
	strb r0, [r5, #0xb]
_080AE648:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080AE650
sub_080AE650: @ 0x080AE650
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldrb r1, [r4, #0xb]
	cmp r1, #0
	beq _080AE666
	cmp r1, #1
	beq _080AE6A0
	adds r5, r4, #0
	adds r5, #0x59
	b _080AE71C
_080AE666:
	movs r0, #0x40
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r5, r4, #0
	adds r5, #0x59
	cmp r0, #0
	blt _080AE71C
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
	b _080AE71C
_080AE6A0:
	ldrb r0, [r4, #0xd]
	cmp r0, #0x10
	bne _080AE6A8
	strb r1, [r4, #0xf]
_080AE6A8:
	ldrb r1, [r4, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080AE6D4
	movs r0, #0x6e
	bl PlaySong
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	ldr r2, _080AE718 @ =0xFFF00000
	adds r1, r1, r2
	movs r3, #0x80
	lsls r3, r3, #0xd
	adds r2, r4, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	adds r2, r3, #0
	bl sub_0806D5C0
_080AE6D4:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	adds r5, r4, #0
	adds r5, #0x59
	cmp r0, #0
	bne _080AE71C
	ldrb r0, [r5]
	movs r1, #8
	orrs r0, r1
	strb r0, [r5]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x20
	adds r3, r1, #0
	orrs r3, r0
	strb r3, [r2]
	ldrb r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080AE782
	lsls r0, r3, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	ldrb r1, [r5]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	b _080AE782
	.align 2, 0
_080AE718: .4byte 0xFFF00000
_080AE71C:
	ldrb r0, [r4, #0xd]
	bl sub_0806D518
	cmp r0, #0
	beq _080AE73A
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x28
	orrs r1, r0
	strb r1, [r2]
	b _080AE756
_080AE73A:
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
_080AE756:
	ldrb r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080AE782
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0xa
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	movs r4, #0
	str r4, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	bl sub_0803E058
_080AE782:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AE78C
sub_080AE78C: @ 0x080AE78C
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080AE7DC
	ldrb r0, [r3, #0xa]
	cmp r0, #1
	bhi _080AE7DC
	movs r0, #2
	strb r0, [r3, #0xa]
	movs r0, #0xb4
	strb r0, [r3, #0xd]
	adds r0, r3, #0
	adds r0, #0x42
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	subs r0, r0, r1
	adds r2, r3, #0
	adds r2, #0x52
	strh r0, [r2]
	adds r0, r3, #0
	adds r0, #0x46
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r0, [r0]
	ldrh r1, [r1]
	subs r0, r0, r1
	adds r2, #4
	strh r0, [r2]
	str r4, [r3, #0x18]
	adds r2, #0x1c
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
_080AE7DC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AE7E4
sub_080AE7E4: @ 0x080AE7E4
	push {r4, r5, lr}
	sub sp, #0x24
	adds r5, r0, #0
	movs r1, #1
	bl sub_0806D128
	cmp r0, #0
	beq _080AE800
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080AE800:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080AE86E
	cmp r0, #1
	bgt _080AE810
	cmp r0, #0
	beq _080AE81A
	b _080AE94E
_080AE810:
	cmp r0, #2
	beq _080AE8A0
	cmp r0, #3
	beq _080AE8E8
	b _080AE94E
_080AE81A:
	ldr r1, _080AE888 @ =0x081E418C
	ldr r2, _080AE88C @ =0x0820B768
	ldr r0, _080AE890 @ =0x082388AC
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0806E0D0
	ldr r2, _080AE894 @ =sub_080AE78C
	ldr r3, _080AE898 @ =sub_080AEB80
	adds r0, r5, #0
	movs r1, #8
	bl sub_0804277C
	ldr r4, _080AE89C @ =0x0404FEFE
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080428F0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08042884
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
_080AE86E:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	movs r0, #0x80
	lsls r0, r0, #5
	adds r1, r1, r0
	str r1, [r5, #0x4c]
	b _080AE94E
	.align 2, 0
_080AE888: .4byte 0x081E418C
_080AE88C: .4byte 0x0820B768
_080AE890: .4byte 0x082388AC
_080AE894: .4byte sub_080AE78C
_080AE898: .4byte sub_080AEB80
_080AE89C: .4byte 0x0404FEFE
_080AE8A0:
	ldr r4, _080AE8B0 @ =0x08528604
	ldrb r2, [r5, #0xb]
	adds r0, r2, r4
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080AE8B4
	movs r0, #1
	b _080AE8DC
	.align 2, 0
_080AE8B0: .4byte 0x08528604
_080AE8B4:
	adds r3, r2, #0
	cmp r3, #0
	beq _080AE8C8
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AE8DA
_080AE8C8:
	adds r0, r2, #1
	strb r0, [r5, #0xb]
	adds r0, r3, r4
	ldrb r1, [r0]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080AE8DA:
	movs r0, #0
_080AE8DC:
	cmp r0, #0
	beq _080AE8E8
	movs r0, #3
	strb r0, [r5, #0xa]
	movs r0, #0x78
	strb r0, [r5, #0xd]
_080AE8E8:
	ldr r0, _080AE964 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080AE968 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	bl sub_0801CFB0
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	bne _080AE94E
	ldrb r0, [r5, #0xd]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #0
	bne _080AE936
	add r0, sp, #0x14
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	adds r1, r5, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	strh r1, [r0]
	movs r1, #2
	strh r1, [r0, #6]
	ldr r1, [r5, #0x40]
	str r1, [r0, #8]
	ldr r1, [r5, #0x44]
	str r1, [r0, #0xc]
	bl sub_08021654
_080AE936:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AE94E
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080AE94E:
	adds r0, r5, #0
	bl sub_0803F17C
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
	add sp, #0x24
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AE964: .4byte gEwramData
_080AE968: .4byte 0x00013110

	thumb_func_start sub_080AE96C
sub_080AE96C: @ 0x080AE96C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	ldr r2, _080AEA2C @ =sub_080AE7E4
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	mov r8, r0
	cmp r0, #0
	bne _080AE988
	b _080AEA9A
_080AE988:
	mov r1, sb
	str r1, [r0, #0x14]
	mov r0, sb
	adds r0, #0x58
	ldrb r0, [r0]
	mov r5, r8
	adds r5, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r5]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	bl RandomNumberGenerator
	movs r6, #0xf
	ands r0, r6
	ldr r2, _080AEA30 @ =0x0000FFF6
	adds r4, r2, #0
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	bl RandomNumberGenerator
	ands r0, r6
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AE9D4
	lsls r0, r7, #0x10
	rsbs r0, r0, #0
	lsrs r7, r0, #0x10
_080AE9D4:
	mov r1, sb
	adds r1, #0x42
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r1, r8
	adds r1, #0x42
	strh r0, [r1]
	mov r1, sb
	adds r1, #0x46
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r1, r8
	adds r1, #0x46
	strh r0, [r1]
	bl RandomNumberGenerator
	movs r1, #0xf
	ands r1, r0
	lsls r1, r1, #0xa
	ldr r0, _080AEA34 @ =0xFFFFF800
	subs r4, r0, r1
	mov r0, sb
	bl sub_0806CD38
	mov r2, r8
	ldr r1, [r2, #0x40]
	subs r0, r0, r1
	cmp r0, #0
	bge _080AEA38
	mov r0, sb
	bl sub_0806CD38
	mov r2, r8
	ldr r1, [r2, #0x40]
	subs r1, r1, r0
	asrs r1, r1, #6
	subs r2, r4, r1
	b _080AEA48
	.align 2, 0
_080AEA2C: .4byte sub_080AE7E4
_080AEA30: .4byte 0x0000FFF6
_080AEA34: .4byte 0xFFFFF800
_080AEA38:
	mov r0, sb
	bl sub_0806CD38
	mov r2, r8
	ldr r1, [r2, #0x40]
	subs r0, r0, r1
	asrs r0, r0, #6
	subs r2, r4, r0
_080AEA48:
	mov r0, r8
	str r2, [r0, #0x48]
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AEA5C
	rsbs r0, r2, #0
	mov r1, r8
	str r0, [r1, #0x48]
_080AEA5C:
	bl RandomNumberGenerator
	movs r1, #0xf
	ands r1, r0
	lsls r1, r1, #8
	ldr r0, _080AEAA8 @ =0xFFFE0000
	adds r1, r1, r0
	mov r2, r8
	str r1, [r2, #0x4c]
	mov r0, sb
	bl sub_0806CD78
	mov r2, sb
	ldr r1, [r2, #0x44]
	subs r0, r0, r1
	cmp r0, #0
	bge _080AEA80
	adds r0, #0x3f
_080AEA80:
	asrs r1, r0, #6
	mov r2, r8
	ldr r0, [r2, #0x4c]
	adds r0, r0, r1
	str r0, [r2, #0x4c]
	mov r0, sb
	adds r0, #0x3c
	ldrb r0, [r0]
	lsrs r1, r0, #2
	subs r0, r0, r1
	mov r1, r8
	adds r1, #0x3c
	strb r0, [r1]
_080AEA9A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AEAA8: .4byte 0xFFFE0000

	thumb_func_start EnemyDryadCreate
EnemyDryadCreate: @ 0x080AEAAC
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _080AEAD0 @ =0x081E418C
	ldr r2, _080AEAD4 @ =0x0820B768
	ldr r0, _080AEAD8 @ =0x082388AC
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AEADC
	adds r0, r4, #0
	bl EntityDelete
	b _080AEB40
	.align 2, 0
_080AEAD0: .4byte 0x081E418C
_080AEAD4: .4byte 0x0820B768
_080AEAD8: .4byte 0x082388AC
_080AEADC:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _080AEB04 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AEB08
	movs r0, #4
	strb r0, [r4, #0xa]
	b _080AEB40
	.align 2, 0
_080AEB04: .4byte gEwramData
_080AEB08:
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r2, _080AEB48 @ =sub_080AEB50
	ldr r3, _080AEB4C @ =sub_080AE3FC
	adds r0, r4, #0
	movs r1, #8
	bl sub_080427B8
	adds r0, r4, #0
	bl sub_0806B1FC
	adds r0, r4, #0
	bl sub_0806AF98
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r0, [r1]
	adds r0, #1
	movs r2, #0
	strh r0, [r1]
	adds r3, r4, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	strb r2, [r4, #0xa]
_080AEB40:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AEB48: .4byte sub_080AEB50
_080AEB4C: .4byte sub_080AE3FC

	thumb_func_start sub_080AEB50
sub_080AEB50: @ 0x080AEB50
	push {lr}
	sub sp, #0x10
	mov r1, sp
	movs r2, #0
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	mov r3, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	strh r1, [r3]
	mov r1, sp
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

	thumb_func_start sub_080AEB80
sub_080AEB80: @ 0x080AEB80
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	bx lr

	thumb_func_start EnemyDryadUpdate
EnemyDryadUpdate: @ 0x080AEB8C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806CC20
	cmp r0, #0
	bne _080AEC04
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bhi _080AEBF8
	lsls r0, r0, #2
	ldr r1, _080AEBA8 @ =_080AEBAC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080AEBA8: .4byte _080AEBAC
_080AEBAC: @ jump table
	.4byte _080AEBC0 @ case 0
	.4byte _080AEBC8 @ case 1
	.4byte _080AEBD0 @ case 2
	.4byte _080AEBE8 @ case 3
	.4byte _080AEBF0 @ case 4
_080AEBC0:
	adds r0, r4, #0
	bl sub_080AE4BC
	b _080AEBF8
_080AEBC8:
	adds r0, r4, #0
	bl sub_080AE554
	b _080AEBF8
_080AEBD0:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AEBF8
	movs r0, #0
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	strb r0, [r4, #0xc]
	b _080AEBF8
_080AEBE8:
	adds r0, r4, #0
	bl sub_080AE650
	b _080AEBF8
_080AEBF0:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080AEC04
_080AEBF8:
	adds r0, r4, #0
	bl sub_0806E314
	adds r0, r4, #0
	bl sub_0806DF20
_080AEC04:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AEC0C
sub_080AEC0C: @ 0x080AEC0C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r6, [r5, #0x18]
	ldrb r0, [r6, #0xa]
	cmp r0, #3
	beq _080AEC24
	ldr r0, [r6, #0x20]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080AEC32
_080AEC24:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _080AED1E
_080AEC32:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080AEC98
	cmp r0, #1
	bgt _080AECFE
	cmp r0, #0
	bne _080AECFE
	ldr r1, _080AEC60 @ =0x081E4194
	ldr r2, _080AEC64 @ =0x0820BE3C
	ldr r0, _080AEC68 @ =0x082393E0
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AEC6C
	adds r0, r5, #0
	bl EntityDelete
	b _080AED1E
	.align 2, 0
_080AEC60: .4byte 0x081E4194
_080AEC64: .4byte 0x0820BE3C
_080AEC68: .4byte 0x082393E0
_080AEC6C:
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x5c
	strb r1, [r0]
	adds r0, r5, #0
	movs r1, #0x11
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	b _080AECFE
_080AEC98:
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
	ldr r0, [r6, #0x20]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080AECFE
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #8
	beq _080AECFE
	adds r0, r5, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080AECFE:
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
_080AED1E:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AED28
sub_080AED28: @ 0x080AED28
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	ldr r6, [r5, #0x18]
	ldrb r0, [r5, #0xa]
	cmp r0, #5
	beq _080AED42
	movs r1, #0x34
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bgt _080AED42
	movs r0, #5
	strb r0, [r5, #0xa]
_080AED42:
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	bhi _080AED9C
	ldrb r0, [r5, #0x10]
	ldrb r3, [r6, #0x10]
	cmp r0, r3
	bne _080AED56
	ldrb r0, [r6, #0xa]
	cmp r0, #5
	bne _080AED9C
_080AED56:
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x13
	strb r0, [r1]
	movs r0, #3
	strb r0, [r5, #0xa]
	ldr r2, _080AEDBC @ =sub_080AF740
	ldr r3, _080AEDC0 @ =sub_080AF784
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_0804277C
	adds r0, r5, #0
	ldr r1, _080AEDC4 @ =0x0808FCFC
	bl sub_08042884
	adds r0, r5, #0
	ldr r1, _080AEDC4 @ =0x0808FCFC
	bl sub_080428F0
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_080AED9C:
	ldr r0, _080AEDC8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080AEDCC @ =0x000004BE
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _080AEDD0
	ldrb r0, [r5, #0xa]
	cmp r0, #5
	beq _080AEDD0
	add r0, sp, #8
	adds r1, r5, #0
	bl sub_080421AC
	b _080AF18A
	.align 2, 0
_080AEDBC: .4byte sub_080AF740
_080AEDC0: .4byte sub_080AF784
_080AEDC4: .4byte 0x0808FCFC
_080AEDC8: .4byte gEwramData
_080AEDCC: .4byte 0x000004BE
_080AEDD0:
	ldrb r0, [r5, #0xa]
	cmp r0, #5
	bls _080AEDD8
	b _080AF156
_080AEDD8:
	lsls r0, r0, #2
	ldr r1, _080AEDE4 @ =_080AEDE8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080AEDE4: .4byte _080AEDE8
_080AEDE8: @ jump table
	.4byte _080AEE00 @ case 0
	.4byte _080AEED2 @ case 1
	.4byte _080AF014 @ case 2
	.4byte _080AF0BC @ case 3
	.4byte _080AF0E8 @ case 4
	.4byte _080AF128 @ case 5
_080AEE00:
	ldr r1, _080AEEC4 @ =0x081E4194
	ldr r2, _080AEEC8 @ =0x0820BE3C
	ldr r0, _080AEECC @ =0x082393E0
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AEE18
	b _080AF14E
_080AEE18:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _080AEE28
	b _080AF14E
_080AEE28:
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
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldrh r1, [r5, #0x14]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
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
	adds r2, r5, #0
	adds r2, #0x52
	movs r3, #0xa
	strh r3, [r2]
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AEE90
	rsbs r0, r3, #0
	strh r0, [r2]
_080AEE90:
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r2]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0x10
	adds r1, #4
	strh r0, [r1]
	ldr r0, [r6, #0x20]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AEED0
	ldrb r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4]
	movs r0, #2
	strb r0, [r5, #0xa]
	b _080AF156
	.align 2, 0
_080AEEC4: .4byte 0x081E4194
_080AEEC8: .4byte 0x0820BE3C
_080AEECC: .4byte 0x082393E0
_080AEED0:
	strb r1, [r5, #0xa]
_080AEED2:
	ldrb r0, [r5, #0x10]
	ldrb r1, [r6, #0x10]
	cmp r0, r1
	beq _080AEEDC
	b _080AF01C
_080AEEDC:
	adds r1, r6, #0
	adds r1, #0x6d
	ldrb r0, [r1]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _080AEEEE
	b _080AF156
_080AEEEE:
	ldrb r0, [r1]
	lsls r0, r0, #2
	ldr r1, _080AEF54 @ =0x0811937C
	adds r7, r0, r1
	ldrh r1, [r7]
	add r4, sp, #0x18
	adds r0, r6, #0
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
	ldrh r0, [r4]
	ldrh r1, [r1]
	adds r0, r0, r1
	movs r1, #0x42
	adds r1, r1, r5
	mov ip, r1
	strh r0, [r1]
	adds r1, r6, #0
	adds r1, #0x46
	ldrh r0, [r4, #2]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r2, r5, #0
	adds r2, #0x46
	strh r0, [r2]
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AEF58
	movs r1, #2
	ldrsb r1, [r7, r1]
	mov r3, ip
	ldrh r0, [r3]
	subs r0, r0, r1
	b _080AEF64
	.align 2, 0
_080AEF54: .4byte 0x0811937C
_080AEF58:
	movs r0, #2
	ldrsb r0, [r7, r0]
	mov r1, ip
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r3, ip
_080AEF64:
	strh r0, [r3]
	movs r0, #3
	ldrsb r0, [r7, r0]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r0, [r6, #0x20]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080AEF7C
	b _080AF156
_080AEF7C:
	strb r1, [r5, #0xa]
	movs r0, #0x89
	bl PlaySong
	ldr r2, _080AEFCC @ =sub_080AF740
	ldr r3, _080AEFD0 @ =sub_080AF784
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_0804277C
	adds r0, r5, #0
	ldr r1, _080AEFD4 @ =0x0808FCFC
	bl sub_08042884
	adds r0, r5, #0
	ldr r1, _080AEFD4 @ =0x0808FCFC
	bl sub_080428F0
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_0806CD38
	ldr r1, [r5, #0x40]
	subs r0, r0, r1
	cmp r0, #0
	bge _080AEFDC
	adds r0, r5, #0
	bl sub_0806CD38
	ldr r1, [r5, #0x40]
	subs r1, r1, r0
	asrs r1, r1, #6
	ldr r0, _080AEFD8 @ =0xFFFEC000
	subs r2, r0, r1
	b _080AEFEC
	.align 2, 0
_080AEFCC: .4byte sub_080AF740
_080AEFD0: .4byte sub_080AF784
_080AEFD4: .4byte 0x0808FCFC
_080AEFD8: .4byte 0xFFFEC000
_080AEFDC:
	adds r0, r5, #0
	bl sub_0806CD38
	ldr r1, [r5, #0x40]
	subs r0, r0, r1
	asrs r0, r0, #6
	ldr r1, _080AF00C @ =0xFFFEC000
	subs r2, r1, r0
_080AEFEC:
	str r2, [r5, #0x48]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AF006
	rsbs r0, r2, #0
	str r0, [r5, #0x48]
_080AF006:
	ldr r0, _080AF010 @ =0xFFFE0000
	str r0, [r5, #0x4c]
	b _080AF156
	.align 2, 0
_080AF00C: .4byte 0xFFFEC000
_080AF010: .4byte 0xFFFE0000
_080AF014:
	ldrb r0, [r5, #0x10]
	ldrb r3, [r6, #0x10]
	cmp r0, r3
	beq _080AF022
_080AF01C:
	movs r0, #5
	strb r0, [r5, #0xa]
	b _080AF156
_080AF022:
	ldrb r0, [r6, #0xa]
	cmp r0, #3
	bne _080AF02C
	strb r0, [r5, #0xa]
	b _080AF156
_080AF02C:
	adds r0, r6, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #1
	beq _080AF03C
	cmp r0, #3
	beq _080AF05A
	b _080AF156
_080AF03C:
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	b _080AF156
_080AF05A:
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x5c
	strb r1, [r0]
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
	adds r2, r5, #0
	adds r2, #0x52
	ldr r0, _080AF0B8 @ =0x0000FFF6
	strh r0, [r2]
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AF096
	movs r0, #0xa
	strh r0, [r2]
_080AF096:
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r2]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0x10
	adds r1, #4
	strh r0, [r1]
	movs r0, #1
	strb r0, [r5, #0xa]
	b _080AF156
	.align 2, 0
_080AF0B8: .4byte 0x0000FFF6
_080AF0BC:
	movs r2, #0x80
	lsls r2, r2, #8
	str r2, [r5, #0x48]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AF0D4
	rsbs r0, r2, #0
	str r0, [r5, #0x48]
_080AF0D4:
	ldr r0, _080AF124 @ =0xFFFD8000
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	movs r0, #0x89
	bl PlaySong
	movs r0, #4
	strb r0, [r5, #0xa]
_080AF0E8:
	ldr r1, [r5, #0x48]
	cmp r1, #0
	bge _080AF0F0
	adds r1, #0x3f
_080AF0F0:
	asrs r1, r1, #6
	ldr r0, [r5, #0x20]
	adds r0, r0, r1
	str r0, [r5, #0x20]
	adds r0, r5, #0
	movs r1, #0x3c
	bl sub_0806D490
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r5, #0
	bl sub_0806D384
	adds r0, r5, #0
	bl sub_0806D3C0
	adds r0, r5, #0
	bl sub_0806D3CC
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _080AF156
	b _080AF140
	.align 2, 0
_080AF124: .4byte 0xFFFD8000
_080AF128:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	movs r3, #0xc0
	lsls r3, r3, #0xc
	adds r2, r5, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	adds r2, r3, #0
	bl sub_0806D5C0
_080AF140:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080AF14E:
	adds r0, r5, #0
	bl EntityDelete
	b _080AF18A
_080AF156:
	ldr r0, [r5, #0x20]
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
	ldrb r0, [r5, #0xa]
	cmp r0, #5
	beq _080AF184
	add r0, sp, #8
	adds r1, r5, #0
	bl sub_080421AC
_080AF184:
	adds r0, r5, #0
	bl sub_0803F17C
_080AF18A:
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AF194
sub_080AF194: @ 0x080AF194
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #4
	bls _080AF1A0
	b _080AF298
_080AF1A0:
	lsls r0, r0, #2
	ldr r1, _080AF1AC @ =_080AF1B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080AF1AC: .4byte _080AF1B0
_080AF1B0: @ jump table
	.4byte _080AF1C4 @ case 0
	.4byte _080AF1E6 @ case 1
	.4byte _080AF224 @ case 2
	.4byte _080AF230 @ case 3
	.4byte _080AF274 @ case 4
_080AF1C4:
	ldr r0, [r4, #0x20]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080AF1E0
	bl RandomNumberGenerator
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	bne _080AF1E0
	movs r0, #1
	strb r0, [r4, #0xb]
	b _080AF298
_080AF1E0:
	movs r0, #3
	strb r0, [r4, #0xb]
	b _080AF298
_080AF1E6:
	ldr r0, _080AF220 @ =sub_080AED28
	bl sub_0806DFF8
	adds r2, r0, #0
	cmp r2, #0
	beq _080AF20C
	str r4, [r2, #0x18]
	ldrb r0, [r4, #0x10]
	strb r0, [r2, #0x10]
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x3c
	strb r1, [r0]
	ldrh r0, [r4, #0x34]
	strh r0, [r2, #0x34]
	movs r0, #0x11
	strh r0, [r2, #0x14]
_080AF20C:
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #2
	strb r0, [r4, #0xb]
	b _080AF298
	.align 2, 0
_080AF220: .4byte sub_080AED28
_080AF224:
	ldr r0, [r4, #0x20]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x20]
	b _080AF274
_080AF230:
	ldr r0, _080AF270 @ =sub_080AED28
	bl sub_0806DFF8
	adds r2, r0, #0
	cmp r2, #0
	beq _080AF25E
	str r4, [r2, #0x18]
	ldrb r0, [r4, #0x10]
	strb r0, [r2, #0x10]
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x3c
	strb r1, [r0]
	ldrh r0, [r4, #0x34]
	strh r0, [r2, #0x34]
	ldr r0, [r4, #0x20]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0x20]
	movs r0, #9
	strh r0, [r2, #0x14]
_080AF25E:
	adds r0, r4, #0
	movs r1, #7
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #4
	strb r0, [r4, #0xb]
	b _080AF298
	.align 2, 0
_080AF270: .4byte sub_080AED28
_080AF274:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AF298
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080AF298:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AF2A0
sub_080AF2A0: @ 0x080AF2A0
	push {r4, lr}
	adds r4, r0, #0
	movs r3, #0x80
	lsls r3, r3, #8
	ldrb r0, [r4, #0xb]
	cmp r0, #5
	bls _080AF2B0
	b _080AF44A
_080AF2B0:
	lsls r0, r0, #2
	ldr r1, _080AF2BC @ =_080AF2C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080AF2BC: .4byte _080AF2C0
_080AF2C0: @ jump table
	.4byte _080AF2D8 @ case 0
	.4byte _080AF338 @ case 1
	.4byte _080AF384 @ case 2
	.4byte _080AF3CC @ case 3
	.4byte _080AF3FC @ case 4
	.4byte _080AF418 @ case 5
_080AF2D8:
	ldr r2, _080AF328 @ =0x08528608
	adds r0, r4, #0
	adds r1, r3, #0
	movs r3, #0xc
	bl sub_0806CAF8
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x64
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x28
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xc8
	movs r3, #0x50
	bl sub_0806CFFC
	cmp r0, #0
	bne _080AF30A
	b _080AF44A
_080AF30A:
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	bl RandomNumberGenerator
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080AF32C
	movs r0, #1
	strb r0, [r4, #0xb]
	b _080AF44A
	.align 2, 0
_080AF328: .4byte 0x08528608
_080AF32C:
	strb r1, [r4, #0xb]
	movs r0, #0x14
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #4
	b _080AF3EE
_080AF338:
	movs r3, #0x80
	lsls r3, r3, #9
	ldr r2, _080AF380 @ =0x08528608
	adds r0, r4, #0
	adds r1, r3, #0
	movs r3, #0xc
	bl sub_0806CAF8
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x28
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xa0
	movs r3, #0x50
	bl sub_0806CFFC
	cmp r0, #0
	beq _080AF44A
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #2
	strb r0, [r4, #0xb]
	b _080AF44A
	.align 2, 0
_080AF380: .4byte 0x08528608
_080AF384:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #2
	bne _080AF396
	ldr r0, [r4, #0x20]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0x20]
_080AF396:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AF44A
	ldr r0, [r4, #0x20]
	movs r1, #6
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x20]
	movs r0, #5
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	bl RandomNumberGenerator
	movs r1, #0xf
	ands r0, r1
	adds r0, #0x3c
	strb r0, [r4, #0xd]
	b _080AF44A
_080AF3CC:
	movs r3, #0x80
	lsls r3, r3, #9
	ldr r2, _080AF3F8 @ =0x08528608
	adds r0, r4, #0
	adds r1, r3, #0
	movs r3, #0xc
	bl sub_0806CAF8
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _080AF42C
	movs r0, #4
	strb r0, [r4, #0xb]
	movs r0, #0x32
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #3
_080AF3EE:
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _080AF44A
	.align 2, 0
_080AF3F8: .4byte 0x08528608
_080AF3FC:
	rsbs r1, r3, #0
	ldr r2, _080AF414 @ =0x08528608
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_0806CAF8
	ldrb r0, [r4, #0xd]
	adds r1, r0, #0
	cmp r1, #0
	bne _080AF42C
	strb r1, [r4, #0xb]
	b _080AF44A
	.align 2, 0
_080AF414: .4byte 0x08528608
_080AF418:
	rsbs r1, r3, #0
	ldr r2, _080AF434 @ =0x08528608
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_0806CAF8
	ldrb r0, [r4, #0xd]
	adds r1, r0, #0
	cmp r1, #0
	beq _080AF438
_080AF42C:
	subs r0, #1
	strb r0, [r4, #0xd]
	b _080AF44A
	.align 2, 0
_080AF434: .4byte 0x08528608
_080AF438:
	strb r1, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080AF44A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080AF450
sub_080AF450: @ 0x080AF450
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _080AF466
	cmp r0, #1
	beq _080AF560
	b _080AF564
_080AF466:
	movs r0, #0x6b
	bl PlaySong
	movs r6, #0xa
	ldr r0, [r5, #0x20]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080AF47A
	movs r6, #0xb
_080AF47A:
	movs r0, #0x58
	adds r0, r0, r5
	mov sb, r0
	cmp r6, #0x10
	bgt _080AF53A
	movs r1, #0xf
	mov r8, r1
_080AF488:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _080AF54C @ =sub_0806C5AC
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _080AF534
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	bl RandomNumberGenerator
	mov r7, r8
	ands r0, r7
	subs r0, #8
	lsls r0, r0, #0xe
	str r0, [r4, #0x48]
	bl RandomNumberGenerator
	ands r0, r7
	subs r0, #8
	lsls r0, r0, #0xc
	ldr r1, _080AF550 @ =0xFFFD8000
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldr r0, _080AF554 @ =0x081E4194
	bl sub_0803AFB8
	adds r2, r0, #0
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	ldr r1, _080AF558 @ =0x082393E0
	bl sub_0803B924
	mov r7, sb
	ldrb r0, [r7]
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
	ldr r0, _080AF55C @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	bl RandomNumberGenerator
	mov r1, r8
	ands r0, r1
	adds r0, #0x28
	strb r0, [r4, #0xd]
	movs r0, #1
	strb r0, [r4, #0xb]
	lsls r1, r6, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
_080AF534:
	adds r6, #1
	cmp r6, #0x10
	ble _080AF488
_080AF53A:
	mov r7, sb
	ldrb r0, [r7]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r7]
	movs r0, #1
	strb r0, [r5, #0xb]
	b _080AF564
	.align 2, 0
_080AF54C: .4byte sub_0806C5AC
_080AF550: .4byte 0xFFFD8000
_080AF554: .4byte 0x081E4194
_080AF558: .4byte 0x082393E0
_080AF55C: .4byte sub_0803B9D0
_080AF560:
	movs r0, #1
	b _080AF566
_080AF564:
	movs r0, #0
_080AF566:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start EnemyWaiterSkeletonCreate
EnemyWaiterSkeletonCreate: @ 0x080AF574
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _080AF5AC @ =0x081E4194
	ldr r2, _080AF5B0 @ =0x0820BE3C
	ldr r0, _080AF5B4 @ =0x082393E0
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080AF5A4
	ldr r0, [r4, #0x20]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x20]
	ldr r0, _080AF5B8 @ =sub_080AEC0C
	bl sub_0806DFF8
	adds r2, r0, #0
	cmp r2, #0
	bne _080AF5BC
_080AF5A4:
	adds r0, r4, #0
	bl EntityDelete
	b _080AF63E
	.align 2, 0
_080AF5AC: .4byte 0x081E4194
_080AF5B0: .4byte 0x0820BE3C
_080AF5B4: .4byte 0x082393E0
_080AF5B8: .4byte sub_080AEC0C
_080AF5BC:
	str r4, [r2, #0x18]
	ldrb r0, [r4, #0x10]
	strb r0, [r2, #0x10]
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x3c
	strb r1, [r0]
	ldrh r0, [r4, #0x34]
	strh r0, [r2, #0x34]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _080AF5FC @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AF600
	movs r0, #4
	strb r0, [r4, #0xa]
	b _080AF63E
	.align 2, 0
_080AF5FC: .4byte gEwramData
_080AF600:
	adds r0, r4, #0
	bl sub_0806B04C
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x13
	strb r0, [r1]
	ldr r1, _080AF648 @ =sub_0806E1B8
	ldr r2, _080AF64C @ =sub_080AF6FC
	adds r0, r4, #0
	bl sub_0806D244
	adds r0, r4, #0
	bl sub_0806B1FC
	adds r0, r4, #0
	bl sub_0806AF98
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r0, [r1]
	adds r0, #1
	movs r2, #0
	strh r0, [r1]
	adds r3, r4, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	strb r2, [r4, #0xa]
_080AF63E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AF648: .4byte sub_0806E1B8
_080AF64C: .4byte sub_080AF6FC

	thumb_func_start EnemyWaiterSkeletonUpdate
EnemyWaiterSkeletonUpdate: @ 0x080AF650
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0806CC20
	cmp r0, #0
	bne _080AF6F6
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bhi _080AF6EA
	lsls r0, r0, #2
	ldr r1, _080AF66C @ =_080AF670
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080AF66C: .4byte _080AF670
_080AF670: @ jump table
	.4byte _080AF684 @ case 0
	.4byte _080AF6C0 @ case 1
	.4byte _080AF6C8 @ case 2
	.4byte _080AF6D0 @ case 3
	.4byte _080AF6E2 @ case 4
_080AF684:
	adds r0, r4, #0
	bl sub_0806BC40
	ldrb r5, [r4, #0xb]
	cmp r5, #0
	bne _080AF6EA
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0xa0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x28
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xa0
	lsls r2, r2, #1
	movs r3, #0x50
	bl sub_0806CFFC
	cmp r0, #0
	beq _080AF6EA
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	b _080AF6EA
_080AF6C0:
	adds r0, r4, #0
	bl sub_080AF194
	b _080AF6EA
_080AF6C8:
	adds r0, r4, #0
	bl sub_080AF2A0
	b _080AF6EA
_080AF6D0:
	adds r0, r4, #0
	bl sub_080AF450
	cmp r0, #0
	beq _080AF6F6
	adds r0, r4, #0
	bl EntityDelete
	b _080AF6F6
_080AF6E2:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080AF6F6
_080AF6EA:
	adds r0, r4, #0
	bl sub_0806E314
	adds r0, r4, #0
	bl sub_0806DF20
_080AF6F6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080AF6FC
sub_080AF6FC: @ 0x080AF6FC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080AF738
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
	movs r1, #0
	movs r0, #0x28
	strb r0, [r4, #0xd]
	movs r0, #3
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080AF738:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AF740
sub_080AF740: @ 0x080AF740
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r5, [r4, #0x18]
	mov r0, sp
	movs r1, #0
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	mov r2, sp
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	strh r0, [r2]
	mov r0, sp
	strh r1, [r0, #6]
	ldr r0, [r4, #0x40]
	str r0, [sp, #8]
	ldr r0, [r4, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	ldrb r0, [r5, #0x10]
	ldrb r4, [r4, #0x10]
	cmp r0, r4
	bne _080AF77C
	ldr r0, [r5, #0x20]
	movs r1, #8
	orrs r0, r1
	str r0, [r5, #0x20]
_080AF77C:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080AF784
sub_080AF784: @ 0x080AF784
	movs r1, #0
	strh r1, [r0, #0x34]
	bx lr
	.align 2, 0

	thumb_func_start sub_080AF78C
sub_080AF78C: @ 0x080AF78C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r6, r0, #0
	adds r4, r1, #0
	mov r0, sp
	movs r1, #0
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	mov r1, sp
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	strh r0, [r1]
	movs r5, #1
	movs r0, #1
	strh r0, [r1, #6]
	ldr r0, [r6, #0x40]
	str r0, [sp, #8]
	ldr r0, [r6, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	str r4, [r6, #0x18]
	ldr r0, [r6, #0x40]
	ldr r1, [r4, #0x40]
	subs r0, r0, r1
	str r0, [r6, #0x50]
	ldr r0, [r6, #0x44]
	ldr r1, [r4, #0x44]
	subs r0, r0, r1
	str r0, [r6, #0x54]
	strb r5, [r6, #0xa]
	movs r0, #0x1e
	strb r0, [r6, #0xd]
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AF7EC
sub_080AF7EC: @ 0x080AF7EC
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r5, [r4, #0x18]
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080AF806
	movs r1, #0x34
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _080AF806
	movs r0, #2
	strb r0, [r4, #0xa]
_080AF806:
	ldr r0, _080AF830 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _080AF834 @ =0x000004BE
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080AF81C
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _080AF85E
_080AF81C:
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _080AF838
	adds r0, r4, #0
	bl EntityDelete
	b _080AF8C4
	.align 2, 0
_080AF830: .4byte gEwramData
_080AF834: .4byte 0x000004BE
_080AF838:
	ldrb r2, [r4, #0xa]
	cmp r2, #1
	beq _080AF868
	cmp r2, #1
	bgt _080AF848
	cmp r2, #0
	beq _080AF84E
	b _080AF8C4
_080AF848:
	cmp r2, #2
	beq _080AF89C
	b _080AF8C4
_080AF84E:
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r0, r4, #0
	bl sub_0806E120
	adds r0, r4, #0
	bl sub_0806D3C0
_080AF85E:
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
	b _080AF8C4
_080AF868:
	ldr r0, [r5, #0x40]
	ldr r1, [r4, #0x50]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, [r4, #0x54]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _080AF88E
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa
	bne _080AF8C4
	strb r2, [r4, #0xf]
	b _080AF8C4
_080AF88E:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _080AF8C4
_080AF89C:
	ldr r1, [r4, #0x48]
	lsls r1, r1, #3
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, [r4, #0x44]
	ldr r2, _080AF8CC @ =0xFFEA0000
	adds r1, r1, r2
	movs r3, #0x80
	lsls r3, r3, #0xb
	adds r2, r4, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	adds r2, r3, #0
	bl sub_0806D5C0
	adds r0, r4, #0
	bl EntityDelete
_080AF8C4:
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AF8CC: .4byte 0xFFEA0000

	thumb_func_start sub_080AF8D0
sub_080AF8D0: @ 0x080AF8D0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0806BC40
	ldrb r5, [r4, #0xb]
	cmp r5, #0
	bne _080AF928
	adds r0, r4, #0
	movs r1, #0xf0
	movs r2, #0x23
	bl sub_0806E29C
	cmp r0, #0
	beq _080AF928
	movs r0, #0x14
	ldrsb r0, [r4, r0]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r2, r0, #1
	ldrb r0, [r4, #0x14]
	adds r0, #1
	strb r0, [r4, #0x14]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	ble _080AF906
	strb r5, [r4, #0x14]
_080AF906:
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	ldr r1, _080AF930 @ =0x08528614
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x1c]
	adds r1, r2, #2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080AF928:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AF930: .4byte 0x08528614

	thumb_func_start sub_080AF934
sub_080AF934: @ 0x080AF934
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r7, [r6, #0x1c]
	ldrb r0, [r6, #0xb]
	cmp r0, #0
	beq _080AF948
	cmp r0, #1
	bne _080AF946
	b _080AFA58
_080AF946:
	b _080AFA96
_080AF948:
	movs r0, #0
	ldrsb r0, [r7, r0]
	adds r1, r6, #0
	adds r1, #0x6e
	ldrb r1, [r1]
	cmp r0, r1
	bne _080AFA22
	adds r0, r6, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AFA22
	ldr r0, _080AFA3C @ =sub_080AF7EC
	bl sub_0806DFF8
	adds r5, r0, #0
	cmp r5, #0
	beq _080AFA1E
	movs r0, #0x85
	bl PlaySong
	ldr r0, _080AFA40 @ =0x081E419C
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _080AFA44 @ =0x0823A52C
	adds r0, r6, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r5, #0
	bl sub_0803B924
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0x19
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
	ldr r0, _080AFA48 @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x5c
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r1, r6, #0
	adds r1, #0x46
	movs r0, #1
	ldrsb r0, [r7, r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x3c
	strb r1, [r0]
	movs r0, #1
	strh r0, [r5, #0x34]
	ldr r2, _080AFA4C @ =sub_080AF78C
	ldr r3, _080AFA50 @ =sub_080AFD8C
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_0804277C
	ldr r4, _080AFA54 @ =0x0202E8EE
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
	strb r0, [r2]
_080AFA1E:
	adds r7, #4
	str r7, [r6, #0x1c]
_080AFA22:
	adds r0, r6, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AFA96
	movs r0, #1
	strb r0, [r6, #0xb]
	movs r0, #0x20
	strb r0, [r6, #0xd]
	b _080AFA96
	.align 2, 0
_080AFA3C: .4byte sub_080AF7EC
_080AFA40: .4byte 0x081E419C
_080AFA44: .4byte 0x0823A52C
_080AFA48: .4byte sub_0803B9D0
_080AFA4C: .4byte sub_080AF78C
_080AFA50: .4byte sub_080AFD8C
_080AFA54: .4byte 0x0202E8EE
_080AFA58:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #0
	cmp r1, #0
	beq _080AFA66
	subs r0, #1
	strb r0, [r6, #0xd]
	b _080AFA96
_080AFA66:
	movs r2, #0x30
	ldrsh r0, [r6, r2]
	cmp r0, #0
	bne _080AFA82
	strb r1, [r6, #0xa]
	strb r1, [r6, #0xc]
	strb r1, [r6, #0xb]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _080AFA96
_080AFA82:
	movs r0, #2
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xc]
	strb r1, [r6, #0xb]
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080AFA96:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080AFA9C
sub_080AFA9C: @ 0x080AFA9C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r6, [r4, #0xb]
	cmp r6, #0
	beq _080AFAAC
	cmp r6, #1
	beq _080AFB34
	b _080AFB8A
_080AFAAC:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r4, #0
	adds r5, #0x58
	cmp r0, #0x80
	bls _080AFAD6
	strb r6, [r4, #0xd]
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
_080AFAD6:
	movs r1, #0x80
	lsls r1, r1, #7
	ldr r2, _080AFB30 @ =0x08528620
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_0806CAF8
	ldrb r1, [r5]
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080AFB08
	adds r0, r4, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _080AFB1A
	ldrb r1, [r5]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080AFB8A
_080AFB08:
	adds r0, r4, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080AFB8A
_080AFB1A:
	adds r0, r4, #0
	bl sub_0806D044
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x4f
	bgt _080AFB8A
	movs r0, #1
	strb r0, [r4, #0xb]
	b _080AFB8A
	.align 2, 0
_080AFB30: .4byte 0x08528620
_080AFB34:
	ldr r1, _080AFB90 @ =0xFFFF4000
	ldr r2, _080AFB94 @ =0x08528620
	adds r0, r4, #0
	movs r3, #0xd
	bl sub_0806CAF8
	adds r0, r4, #0
	bl sub_0806D044
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x63
	ble _080AFB8A
	movs r0, #0x14
	ldrsb r0, [r4, r0]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r2, r0, #1
	ldrb r0, [r4, #0x14]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0x14]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	ble _080AFB6A
	strb r1, [r4, #0x14]
_080AFB6A:
	strb r6, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	ldr r1, _080AFB98 @ =0x08528614
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x1c]
	adds r1, r2, #2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080AFB8A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AFB90: .4byte 0xFFFF4000
_080AFB94: .4byte 0x08528620
_080AFB98: .4byte 0x08528614

	thumb_func_start sub_080AFB9C
sub_080AFB9C: @ 0x080AFB9C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x6b
	bl PlaySong
	movs r6, #5
_080AFBA8:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _080AFC68 @ =sub_0806C5AC
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _080AFC5A
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	bl RandomNumberGenerator
	movs r1, #0xf
	ands r1, r0
	lsls r1, r1, #0xd
	movs r0, #0x80
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r5, #0x20]
	muls r0, r1, r0
	str r0, [r4, #0x48]
	bl RandomNumberGenerator
	movs r1, #0x1f
	ands r1, r0
	lsls r1, r1, #0xc
	ldr r7, _080AFC6C @ =0xFFFC8000
	adds r1, r1, r7
	str r1, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldr r0, _080AFC70 @ =0x081E419C
	bl sub_0803AFB8
	adds r2, r0, #0
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	ldr r1, _080AFC74 @ =0x0823A52C
	bl sub_0803B924
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
	ldr r0, _080AFC78 @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	bl RandomNumberGenerator
	movs r1, #0xf
	ands r0, r1
	adds r0, #0x28
	strb r0, [r4, #0xd]
	lsls r1, r6, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
_080AFC5A:
	adds r6, #1
	cmp r6, #0xb
	ble _080AFBA8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AFC68: .4byte sub_0806C5AC
_080AFC6C: .4byte 0xFFFC8000
_080AFC70: .4byte 0x081E419C
_080AFC74: .4byte 0x0823A52C
_080AFC78: .4byte sub_0803B9D0

	thumb_func_start EnemySkullArcherCreate
EnemySkullArcherCreate: @ 0x080AFC7C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _080AFCA0 @ =0x081E419C
	ldr r2, _080AFCA4 @ =0x0820B78C
	ldr r0, _080AFCA8 @ =0x0823A52C
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AFCAC
	adds r0, r4, #0
	bl EntityDelete
	b _080AFD34
	.align 2, 0
_080AFCA0: .4byte 0x081E419C
_080AFCA4: .4byte 0x0820B78C
_080AFCA8: .4byte 0x0823A52C
_080AFCAC:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _080AFCD4 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AFCD8
	movs r0, #4
	strb r0, [r4, #0xa]
	b _080AFD34
	.align 2, 0
_080AFCD4: .4byte gEwramData
_080AFCD8:
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r1, _080AFD18 @ =sub_0806E1B8
	ldr r2, _080AFD1C @ =sub_080AFD3C
	adds r0, r4, #0
	bl sub_0806D244
	adds r0, r4, #0
	bl sub_0806B1FC
	adds r0, r4, #0
	bl sub_0806AF98
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r0, [r1]
	adds r0, #1
	movs r3, #0
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080AFD20
	strb r3, [r4, #0xa]
	b _080AFD34
	.align 2, 0
_080AFD18: .4byte sub_0806E1B8
_080AFD1C: .4byte sub_080AFD3C
_080AFD20:
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r3, [r4, #0xc]
	strb r3, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080AFD34:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080AFD3C
sub_080AFD3C: @ 0x080AFD3C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080AFD86
	adds r0, r4, #0
	bl sub_080683BC
	movs r2, #1
	str r2, [r4, #0x20]
	ldr r1, [r4, #0x40]
	ldr r0, [r5, #0x40]
	cmp r1, r0
	bge _080AFD60
	rsbs r0, r2, #0
	str r0, [r4, #0x20]
_080AFD60:
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
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080AFD86:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080AFD8C
sub_080AFD8C: @ 0x080AFD8C
	movs r1, #0
	strh r1, [r0, #0x34]
	bx lr
	.align 2, 0

	thumb_func_start EnemySkullArcherUpdate
EnemySkullArcherUpdate: @ 0x080AFD94
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806CC20
	cmp r0, #0
	bne _080AFE02
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bhi _080AFDF6
	lsls r0, r0, #2
	ldr r1, _080AFDB0 @ =_080AFDB4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080AFDB0: .4byte _080AFDB4
_080AFDB4: @ jump table
	.4byte _080AFDC8 @ case 0
	.4byte _080AFDD0 @ case 1
	.4byte _080AFDD8 @ case 2
	.4byte _080AFDE0 @ case 3
	.4byte _080AFDEE @ case 4
_080AFDC8:
	adds r0, r4, #0
	bl sub_080AF8D0
	b _080AFDF6
_080AFDD0:
	adds r0, r4, #0
	bl sub_080AF934
	b _080AFDF6
_080AFDD8:
	adds r0, r4, #0
	bl sub_080AFA9C
	b _080AFDF6
_080AFDE0:
	adds r0, r4, #0
	bl sub_080AFB9C
	adds r0, r4, #0
	bl EntityDelete
	b _080AFE02
_080AFDEE:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080AFE02
_080AFDF6:
	adds r0, r4, #0
	bl sub_0806E314
	adds r0, r4, #0
	bl sub_0806DF20
_080AFE02:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080AFE08
sub_080AFE08: @ 0x080AFE08
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrb r0, [r4, #0x15]
	cmp r0, #0
	beq _080AFE3A
	bl RandomNumberGenerator2
	ands r0, r5
	cmp r0, #0
	bne _080AFE3A
	ldr r0, [r4, #0x18]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080AFE2C
	movs r0, #0
	b _080AFE86
_080AFE2C:
	adds r0, r4, #0
	movs r1, #0xa0
	movs r2, #0x78
	bl sub_0806E29C
	cmp r0, #0
	beq _080AFE3E
_080AFE3A:
	movs r0, #1
	b _080AFE86
_080AFE3E:
	adds r0, r4, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AFE70
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x50
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	bl sub_08002058
	b _080AFE7E
_080AFE70:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, #0x50
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	bl sub_0800207C
_080AFE7E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_080AFE86:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080AFE8C
sub_080AFE8C: @ 0x080AFE8C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080AFEE4
	cmp r0, #1
	bgt _080AFEA2
	cmp r0, #0
	beq _080AFEA8
	b _080AFF6C
_080AFEA2:
	cmp r0, #2
	beq _080AFF54
	b _080AFF6C
_080AFEA8:
	movs r0, #0x80
	lsls r0, r0, #0xa
	bl sub_0802D5EC
	ldr r1, _080AFED8 @ =0xFFFF8000
	adds r2, r0, r1
	str r2, [r4, #0x48]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AFEC8
	rsbs r0, r2, #0
	str r0, [r4, #0x48]
_080AFEC8:
	bl RandomNumberGenerator
	ldr r1, _080AFEDC @ =0x00001FFF
	ands r1, r0
	lsls r1, r1, #4
	ldr r0, _080AFEE0 @ =0xFFFF0000
	subs r0, r0, r1
	b _080AFF28
	.align 2, 0
_080AFED8: .4byte 0xFFFF8000
_080AFEDC: .4byte 0x00001FFF
_080AFEE0: .4byte 0xFFFF0000
_080AFEE4:
	adds r0, r4, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r1, _080AFF34 @ =gEwramData
	ldr r2, [r1]
	ldr r1, _080AFF38 @ =0x0000A094
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
	adds r1, #4
	bl sub_080020A0
	cmp r0, #0
	beq _080AFF3C
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	adds r0, #0x40
	adds r1, r4, #0
	adds r1, #0x65
	strb r0, [r1]
	ldr r0, [r4, #0x4c]
	asrs r0, r0, #1
	rsbs r0, r0, #0
_080AFF28:
	str r0, [r4, #0x4c]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _080AFF6C
	.align 2, 0
_080AFF34: .4byte gEwramData
_080AFF38: .4byte 0x0000A094
_080AFF3C:
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
	b _080AFF6A
_080AFF54:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	movs r3, #0xc0
	lsls r3, r3, #6
	adds r1, r1, r3
_080AFF6A:
	str r1, [r4, #0x4c]
_080AFF6C:
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r3, #0x88
	lsls r3, r3, #1
	movs r0, #0xc0
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_08068AD4
	cmp r0, #0
	bne _080AFF90
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080AFF90:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080AFF98
sub_080AFF98: @ 0x080AFF98
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
	cmp r0, #0x63
	bgt _080AFFEC
	ldr r1, [r6, #0x18]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080AFFEC
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r6, #0x18]
_080AFFEC:
	movs r3, #0x34
	ldrsh r0, [r6, r3]
	cmp r0, #0
	bgt _080B0056
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
	movs r0, #0x28
	strb r0, [r6, #0xd]
	movs r0, #3
	strb r0, [r6, #0xa]
	adds r0, r6, #0
	movs r1, #7
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, [r6, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x18]
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #0
	beq _080B0056
	movs r0, #0
	bl sub_08034498
	ldr r0, _080B005C @ =gEwramData
	ldr r1, [r0]
	ldr r3, _080B0060 @ =0x0000037E
	adds r1, r1, r3
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1]
_080B0056:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B005C: .4byte gEwramData
_080B0060: .4byte 0x0000037E

	thumb_func_start sub_080B0064
sub_080B0064: @ 0x080B0064
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r4, [r6, #0x14]
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _080B0082
	ldrb r0, [r4, #0x10]
	ldrb r1, [r6, #0x11]
	cmp r0, r1
	beq _080B0082
	movs r0, #2
	strb r0, [r6, #0xa]
_080B0082:
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	beq _080B010C
	cmp r0, #1
	bgt _080B0092
	cmp r0, #0
	beq _080B009E
	b _080B0098
_080B0092:
	cmp r0, #2
	bne _080B0098
	b _080B01FC
_080B0098:
	adds r5, r6, #0
	adds r5, #0x58
	b _080B0212
_080B009E:
	ldr r1, _080B0138 @ =0x081E41A4
	ldr r2, _080B013C @ =0x0820B7B0
	ldr r0, _080B0140 @ =0x0823AE10
	str r0, [sp]
	adds r0, r6, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B00B6
	b _080B020A
_080B00B6:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _080B00C6
	b _080B020A
_080B00C6:
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
	adds r2, #1
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	movs r1, #9
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	adds r0, r4, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
_080B010C:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #4
	bne _080B014A
	ldrb r0, [r4, #0x14]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080B0144
	movs r3, #0
	strb r3, [r6, #0xd]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	strh r3, [r6, #0x18]
	b _080B0236
	.align 2, 0
_080B0138: .4byte 0x081E41A4
_080B013C: .4byte 0x0820B7B0
_080B0140: .4byte 0x0823AE10
_080B0144:
	ldrb r0, [r6, #0xd]
	cmp r0, #6
	bls _080B0158
_080B014A:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	b _080B0236
_080B0158:
	adds r0, #1
	strb r0, [r6, #0xd]
	adds r5, r6, #0
	adds r5, #0x58
	ldrb r1, [r5]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	ldrb r0, [r4, #0x14]
	subs r0, #4
	strb r0, [r6, #0xb]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r5]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r6, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0x10
	adds r1, #4
	strh r0, [r1]
	ldr r1, _080B01F0 @ =0xFFFFFC00
	adds r0, r1, #0
	ldrh r1, [r6, #0x18]
	adds r0, r0, r1
	strh r0, [r6, #0x18]
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	mov r8, r0
	ldr r4, _080B01F4 @ =0xFFFFA000
	add r4, r8
	ldr r0, _080B01F8 @ =0x0000FFFF
	ands r4, r0
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r7, r1, #3
	adds r0, r4, #0
	bl sub_080009E4
	lsls r2, r0, #6
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B01E0
	rsbs r7, r7, #0
	mov r0, r8
	rsbs r0, r0, #0
	mov r8, r0
_080B01E0:
	ldr r0, [r6, #0x40]
	adds r0, r0, r7
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x44]
	adds r0, r0, r2
	str r0, [r6, #0x44]
	b _080B0212
	.align 2, 0
_080B01F0: .4byte 0xFFFFFC00
_080B01F4: .4byte 0xFFFFA000
_080B01F8: .4byte 0x0000FFFF
_080B01FC:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080B020A:
	adds r0, r6, #0
	bl EntityDelete
	b _080B0236
_080B0212:
	ldrb r0, [r6, #0xd]
	lsls r0, r0, #0xb
	movs r1, #0xa0
	lsls r1, r1, #9
	subs r1, r1, r0
	movs r2, #0x90
	lsls r2, r2, #9
	ldrb r0, [r5]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	movs r4, #1
	str r4, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	mov r0, r8
	bl sub_0803E058
_080B0236:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B0244
sub_080B0244: @ 0x080B0244
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r0, #0
	ldr r7, [r6, #0x14]
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _080B0262
	ldrb r0, [r7, #0x10]
	ldrb r1, [r6, #0x11]
	cmp r0, r1
	beq _080B0262
	adds r0, r6, #0
	bl EntityDelete
	b _080B02CA
_080B0262:
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _080B026E
	cmp r0, #1
	beq _080B0298
	b _080B02CA
_080B026E:
	ldr r2, _080B02D4 @ =sub_080B0CFC
	adds r0, r6, #0
	movs r1, #8
	movs r3, #0
	bl sub_0804277C
	ldr r1, _080B02D8 @ =0x1414F6F6
	adds r0, r6, #0
	bl sub_08042884
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
_080B0298:
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	ldr r1, _080B02DC @ =0xFFFFC000
	adds r5, r0, r1
	bl sub_080009E4
	adds r4, r0, #0
	lsls r4, r4, #4
	adds r0, r5, #0
	bl sub_080009E4
	lsls r0, r0, #4
	ldr r1, [r7, #0x40]
	adds r1, r1, r4
	str r1, [r6, #0x40]
	ldr r1, [r7, #0x44]
	adds r1, r1, r0
	str r1, [r6, #0x44]
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	bne _080B02CA
	mov r0, sp
	adds r1, r6, #0
	bl sub_080421AC
_080B02CA:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B02D4: .4byte sub_080B0CFC
_080B02D8: .4byte 0x1414F6F6
_080B02DC: .4byte 0xFFFFC000

	thumb_func_start sub_080B02E0
sub_080B02E0: @ 0x080B02E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	ldr r0, [r6, #0x14]
	mov r8, r0
	movs r1, #0x1e
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bne _080B0332
	mov r2, r8
	movs r4, #0x34
	ldrsh r0, [r2, r4]
	cmp r0, #0
	bgt _080B0308
	movs r0, #1
	strh r0, [r6, #0x1e]
_080B0308:
	movs r7, #0x1e
	ldrsh r0, [r6, r7]
	cmp r0, #0
	bne _080B0332
	ldrb r0, [r6, #0xa]
	cmp r0, #4
	bne _080B0332
	mov r1, r8
	ldrb r0, [r1, #0x10]
	ldrb r2, [r6, #0x11]
	cmp r0, r2
	bne _080B0332
	ldr r0, [r1, #0x18]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B0332
	strb r1, [r6, #0xa]
	movs r0, #0x69
	bl PlaySong
_080B0332:
	ldrb r0, [r6, #0xa]
	cmp r0, #6
	bls _080B033A
	b _080B07D2
_080B033A:
	lsls r0, r0, #2
	ldr r1, _080B0344 @ =_080B0348
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B0344: .4byte _080B0348
_080B0348: @ jump table
	.4byte _080B0364 @ case 0
	.4byte _080B040C @ case 1
	.4byte _080B050C @ case 2
	.4byte _080B0540 @ case 3
	.4byte _080B0564 @ case 4
	.4byte _080B0750 @ case 5
	.4byte _080B07BC @ case 6
_080B0364:
	ldr r1, _080B0424 @ =0x081E41A4
	ldr r2, _080B0428 @ =0x0820B7B0
	ldr r0, _080B042C @ =0x0823AE10
	str r0, [sp]
	adds r0, r6, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B037C
	b _080B07CA
_080B037C:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r0, #0
	bge _080B038C
	b _080B07CA
_080B038C:
	ldr r0, _080B0430 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080B03C6
	adds r4, r6, #0
	adds r4, #0x3c
	ldrb r0, [r4]
	lsrs r1, r0, #2
	adds r0, r0, r1
	strb r0, [r4]
	ldr r0, _080B0434 @ =sub_080B0244
	bl sub_0806DFF8
	adds r2, r0, #0
	cmp r2, #0
	beq _080B03C6
	str r6, [r2, #0x14]
	ldrb r0, [r6, #0x10]
	strb r0, [r2, #0x11]
	ldrb r1, [r4]
	adds r0, r2, #0
	adds r0, #0x3c
	strb r1, [r0]
	ldrh r0, [r6, #0x34]
	strh r0, [r2, #0x34]
_080B03C6:
	adds r2, r6, #0
	adds r2, #0x58
	movs r0, #0x1f
	ands r5, r0
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r5
	strb r0, [r2]
	adds r2, #1
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	movs r1, #8
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	mov r0, r8
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
_080B040C:
	mov r4, r8
	ldrb r0, [r4, #0x10]
	ldrb r7, [r6, #0x11]
	cmp r0, r7
	beq _080B0418
	b _080B07B6
_080B0418:
	mov r1, r8
	ldrb r0, [r1, #0xa]
	cmp r0, #3
	bne _080B0438
	strb r0, [r6, #0xa]
	b _080B07D2
	.align 2, 0
_080B0424: .4byte 0x081E41A4
_080B0428: .4byte 0x0820B7B0
_080B042C: .4byte 0x0823AE10
_080B0430: .4byte gEwramData
_080B0434: .4byte sub_080B0244
_080B0438:
	mov r2, r8
	ldr r0, [r2, #0x18]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B044A
	movs r0, #2
	strb r0, [r6, #0xa]
	b _080B07D2
_080B044A:
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
	add r4, sp, #8
	mov r0, r8
	movs r1, #0
	adds r2, r4, #0
	bl sub_0806C3F8
	mov r1, r8
	adds r1, #0x42
	add r0, sp, #8
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r3, r6, #0
	adds r3, #0x42
	strh r0, [r3]
	mov r1, r8
	adds r1, #0x46
	ldrh r0, [r4, #2]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r2, r6, #0
	adds r2, #0x46
	strh r0, [r2]
	ldr r1, _080B04A8 @ =0x085286C8
	mov r0, r8
	adds r0, #0x6d
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	bne _080B04B0
	b _080B07D2
	.align 2, 0
_080B04A8: .4byte 0x085286C8
_080B04AC:
	adds r4, r1, #0
	b _080B04D4
_080B04B0:
	mov r4, r8
	ldrb r5, [r4, #0x14]
	movs r7, #0
	ldrsh r0, [r1, r7]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r0, r4
	beq _080B04D2
_080B04C0:
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r5, r0
	ble _080B04AC
	adds r1, #0xc
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, r4
	bne _080B04C0
_080B04D2:
	movs r4, #0
_080B04D4:
	cmp r4, #0
	bne _080B04DA
	b _080B07D2
_080B04DA:
	ldr r0, [r4, #4]
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B04F6
	movs r1, #8
	ldrsb r1, [r4, r1]
	ldrh r0, [r3]
	subs r0, r0, r1
	b _080B04FE
_080B04F6:
	movs r0, #8
	ldrsb r0, [r4, r0]
	ldrh r1, [r3]
	adds r0, r0, r1
_080B04FE:
	strh r0, [r3]
	movs r0, #9
	ldrsb r0, [r4, r0]
	ldrh r4, [r2]
	adds r0, r0, r4
	strh r0, [r2]
	b _080B07D2
_080B050C:
	movs r0, #0x86
	bl PlaySong
	ldr r2, _080B0538 @ =0xFFFF8000
	str r2, [r6, #0x48]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B0528
	rsbs r0, r2, #0
	str r0, [r6, #0x48]
_080B0528:
	ldr r0, _080B053C @ =0xFFFBE000
	str r0, [r6, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r6, #0x54]
	movs r0, #0xf2
	lsls r0, r0, #8
	b _080B0556
	.align 2, 0
_080B0538: .4byte 0xFFFF8000
_080B053C: .4byte 0xFFFBE000
_080B0540:
	adds r1, r6, #0
	adds r1, #0x4a
	movs r0, #0
	strh r0, [r1]
	ldr r0, _080B0560 @ =0xFFFD0000
	str r0, [r6, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r6, #0x54]
	movs r0, #0xf8
	lsls r0, r0, #8
_080B0556:
	strh r0, [r6, #0x1c]
	movs r0, #4
	strb r0, [r6, #0xa]
	b _080B07D2
	.align 2, 0
_080B0560: .4byte 0xFFFD0000
_080B0564:
	ldrh r0, [r6, #0x1c]
	ldrh r7, [r6, #0x18]
	adds r0, r0, r7
	strh r0, [r6, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r6, #0
	bl sub_0806D384
	adds r0, r6, #0
	bl sub_0806D3AC
	ldr r1, [r6, #0x4c]
	ldr r0, _080B05B4 @ =0x0002FFFF
	cmp r1, r0
	bgt _080B0586
	b _080B07D2
_080B0586:
	movs r0, #0xc0
	lsls r0, r0, #0xb
	cmp r1, r0
	ble _080B05B8
	adds r0, r6, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _080B05B8
	movs r1, #0x1e
	ldrsh r0, [r6, r1]
	cmp r0, #0
	beq _080B05A4
	b _080B07B6
_080B05A4:
	mov r2, r8
	ldr r0, [r2, #0x18]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x18]
	b _080B07B6
	.align 2, 0
_080B05B4: .4byte 0x0002FFFF
_080B05B8:
	ldrh r4, [r6, #0x18]
	ldr r7, _080B061C @ =0xFFFF7000
	adds r1, r4, r7
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r1, r0
	bls _080B05C8
	b _080B07D2
_080B05C8:
	movs r0, #0x18
	ldrsh r4, [r6, r0]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B05DC
	rsbs r4, r4, #0
_080B05DC:
	adds r0, r6, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r6, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r1, _080B0620 @ =0xFFFFC000
	adds r4, r4, r1
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r4, r2
	bl sub_080009E4
	lsls r5, r0, #4
	adds r0, r4, #0
	bl sub_080009E4
	lsls r2, r0, #4
	lsls r0, r7, #0x10
	asrs r4, r0, #0x10
	cmp r5, #0
	bge _080B0624
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	subs r0, r4, r0
	b _080B0628
	.align 2, 0
_080B061C: .4byte 0xFFFF7000
_080B0620: .4byte 0xFFFFC000
_080B0624:
	asrs r0, r5, #0x10
	adds r0, r4, r0
_080B0628:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r7, r0, #0
	mov r4, sb
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	cmp r2, #0
	bge _080B0640
	rsbs r0, r2, #0
	asrs r0, r0, #0x10
	subs r0, r1, r0
	b _080B0644
_080B0640:
	asrs r0, r2, #0x10
	adds r0, r1, r0
_080B0644:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r4, r7, #0x10
	asrs r0, r4, #0x10
	mov r7, sb
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	adds r1, #0xa
	bl sub_08001D94
	lsls r5, r0, #0x10
	mov sl, r4
	cmp r5, #0
	bne _080B0664
	b _080B07D2
_080B0664:
	movs r0, #0x7f
	bl PlaySong
	ldr r0, _080B0678 @ =0x081C15F4
	bl sub_0803AFB8
	adds r4, r0, #0
	movs r7, #0
	str r5, [sp, #0xc]
	b _080B0700
	.align 2, 0
_080B0678: .4byte 0x081C15F4
_080B067C:
	ldr r1, _080B073C @ =0x0820ED60
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #6
	bl sub_0803B924
	bl RandomNumberGenerator
	lsrs r0, r0, #4
	movs r1, #3
	bl Mod
	adds r0, #0x40
	adds r1, r5, #0
	adds r1, #0x65
	strb r0, [r1]
	movs r0, #4
	bl sub_0802D5EC
	mov r1, sl
	asrs r2, r1, #0x10
	adds r2, r2, r0
	ldr r0, _080B0740 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _080B0744 @ =0x0000A094
	adds r1, r1, r0
	ldrh r0, [r1, #6]
	subs r2, r2, r0
	adds r0, r5, #0
	adds r0, #0x42
	strh r2, [r0]
	ldrh r1, [r1, #0xa]
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	subs r0, #8
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	adds r3, r5, #0
	adds r3, #0x58
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080B0748 @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r7, #1
_080B0700:
	cmp r7, #3
	bgt _080B0714
	ldr r2, _080B074C @ =sub_080AFE8C
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	bne _080B067C
_080B0714:
	mov r4, r8
	ldrb r0, [r4, #0x10]
	ldrb r7, [r6, #0x11]
	cmp r0, r7
	bne _080B0728
	ldr r0, [r4, #0x18]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x18]
_080B0728:
	ldr r0, [r6, #0x44]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	movs r0, #5
	strb r0, [r6, #0xa]
	movs r0, #0xc0
	strb r0, [r6, #0xd]
	b _080B07D2
	.align 2, 0
_080B073C: .4byte 0x0820ED60
_080B0740: .4byte gEwramData
_080B0744: .4byte 0x0000A094
_080B0748: .4byte sub_0803B9D0
_080B074C: .4byte sub_080AFE8C
_080B0750:
	adds r0, r6, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	bne _080B07B6
	ldrb r0, [r6, #0xd]
	cmp r0, #0x20
	bne _080B0766
	movs r0, #1
	strb r0, [r6, #0xf]
_080B0766:
	ldrb r0, [r6, #0xf]
	cmp r0, #0
	beq _080B07AA
	ldrb r1, [r6, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080B07AA
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r4, #0
	bl sub_0802D5EC
	lsls r0, r0, #0xd
	ldr r5, [r6, #0x40]
	adds r5, r5, r0
	adds r0, r4, #0
	bl sub_0802D5EC
	lsls r0, r0, #0xd
	movs r2, #0x80
	lsls r2, r2, #0xd
	adds r0, r0, r2
	ldr r4, [r6, #0x44]
	adds r4, r4, r0
	bl RandomNumberGenerator
	movs r2, #1
	ands r2, r0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #8
	bl sub_08045CEC
_080B07AA:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _080B07B6
	subs r0, #1
	strb r0, [r6, #0xd]
	b _080B07D2
_080B07B6:
	movs r0, #6
	strb r0, [r6, #0xa]
	b _080B07D2
_080B07BC:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080B07CA:
	adds r0, r6, #0
	bl EntityDelete
	b _080B0804
_080B07D2:
	movs r7, #0x18
	ldrsh r4, [r6, r7]
	adds r3, r6, #0
	adds r3, #0x58
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B07E6
	rsbs r4, r4, #0
_080B07E6:
	movs r1, #0
	strh r4, [r6, #0x1a]
	movs r2, #0x80
	lsls r2, r2, #9
	ldrb r0, [r3]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	str r1, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0803E058
_080B0804:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080B0814
sub_080B0814: @ 0x080B0814
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806BC40
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B082C
	adds r0, r4, #0
	bl sub_0806BC40
_080B082C:
	adds r0, r4, #0
	movs r1, #0xc8
	movs r2, #0x78
	bl sub_0806E29C
	cmp r0, #0
	bne _080B0844
	adds r0, r4, #0
	bl sub_0806D54C
	cmp r0, #0
	beq _080B0862
_080B0844:
	adds r0, r4, #0
	movs r1, #1
	bl sub_080AFE08
	adds r1, r0, #0
	cmp r1, #0
	beq _080B088A
	ldr r0, [r4, #0x18]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080B0892
	movs r1, #0
	movs r0, #1
	b _080B088C
_080B0862:
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r4, #0
	movs r2, #0x78
	bl sub_0806E29C
	cmp r0, #0
	bne _080B087C
	adds r0, r4, #0
	bl sub_0806D54C
	cmp r0, #0
	beq _080B0892
_080B087C:
	adds r0, r4, #0
	movs r1, #0x3f
	bl sub_080AFE08
	adds r1, r0, #0
	cmp r1, #0
	bne _080B0892
_080B088A:
	movs r0, #2
_080B088C:
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080B0892:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B0898
sub_080B0898: @ 0x080B0898
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #4
	bhi _080B0956
	lsls r0, r0, #2
	ldr r1, _080B08AC @ =_080B08B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B08AC: .4byte _080B08B0
_080B08B0: @ jump table
	.4byte _080B08C4 @ case 0
	.4byte _080B08D4 @ case 1
	.4byte _080B08F2 @ case 2
	.4byte _080B0924 @ case 3
	.4byte _080B0956 @ case 4
_080B08C4:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #1
	b _080B0954
_080B08D4:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B0956
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #2
	b _080B0954
_080B08F2:
	movs r1, #0x80
	lsls r1, r1, #8
	ldr r2, _080B0920 @ =0x085286F8
	adds r0, r4, #0
	movs r3, #0xd
	bl sub_0806CAF8
	adds r0, r4, #0
	movs r1, #0x64
	movs r2, #0x50
	bl sub_0806E29C
	cmp r0, #0
	beq _080B0956
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #3
	b _080B0954
	.align 2, 0
_080B0920: .4byte 0x085286F8
_080B0924:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #3
	bne _080B0934
	movs r0, #0x86
	bl PlaySong
_080B0934:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B0956
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xc]
_080B0954:
	strb r0, [r4, #0xb]
_080B0956:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B095C
sub_080B095C: @ 0x080B095C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #5
	bls _080B0968
	b _080B0ACE
_080B0968:
	lsls r0, r0, #2
	ldr r1, _080B0974 @ =_080B0978
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B0974: .4byte _080B0978
_080B0978: @ jump table
	.4byte _080B0990 @ case 0
	.4byte _080B09C6 @ case 1
	.4byte _080B09DE @ case 2
	.4byte _080B0A0E @ case 3
	.4byte _080B0A7A @ case 4
	.4byte _080B0A9C @ case 5
_080B0990:
	ldr r1, [r4, #0x18]
	movs r5, #2
	ands r5, r1
	cmp r5, #0
	bne _080B09AE
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #3
	strb r0, [r4, #0xb]
	strb r5, [r4, #0xd]
	b _080B0ACE
_080B09AE:
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #7
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #1
	b _080B0ACC
_080B09C6:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B0ACE
	movs r0, #2
	strb r0, [r4, #0xb]
	movs r0, #8
	strb r0, [r4, #0xd]
	b _080B0ACE
_080B09DE:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _080B0A82
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #3
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #0x28
	movs r2, #0xc
	movs r3, #1
	bl sub_080458E4
	adds r0, r4, #0
	movs r1, #0x28
	movs r2, #6
	movs r3, #0
	bl sub_080458E4
	b _080B0ACE
_080B0A0E:
	ldrb r1, [r4, #0xd]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0xa
	movs r1, #0xd0
	lsls r1, r1, #0xa
	subs r1, r1, r0
	ldr r2, _080B0A5C @ =0x085286F8
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_0806CAF8
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x18
	bne _080B0A40
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080B0A40:
	ldrb r0, [r4, #0xd]
	cmp r0, #0x28
	bls _080B0ACE
	ldr r0, [r4, #0x18]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080B0A60
	movs r0, #4
	strb r0, [r4, #0xb]
	movs r0, #0x30
	strb r0, [r4, #0xd]
	b _080B0ACE
	.align 2, 0
_080B0A5C: .4byte 0x085286F8
_080B0A60:
	movs r0, #5
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, [r4, #0x18]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0x18]
	b _080B0ACE
_080B0A7A:
	ldrb r0, [r4, #0xd]
	adds r5, r0, #0
	cmp r5, #0
	beq _080B0A88
_080B0A82:
	subs r0, #1
	strb r0, [r4, #0xd]
	b _080B0ACE
_080B0A88:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	strb r5, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	b _080B0ACE
_080B0A9C:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #3
	bne _080B0AAC
	movs r0, #0x86
	bl PlaySong
_080B0AAC:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B0ACE
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xc]
_080B0ACC:
	strb r0, [r4, #0xb]
_080B0ACE:
	pop {r4, r5}
	pop {r0}
	bx r0
