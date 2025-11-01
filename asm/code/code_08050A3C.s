	.include "asm/gba_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	thumb_func_start sub_08050A3C
sub_08050A3C: @ 0x08050A3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r8, r0
	movs r2, #0x30
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08050A74 @ =0x085262BC
	adds r0, r0, r1
	mov sb, r0
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08050A78 @ =0x08526214
	adds r0, r0, r1
	str r0, [sp, #8]
	mov r5, sb
	ldrb r5, [r5, #3]
	str r5, [sp, #0xc]
	movs r0, #0
	mov sl, r0
	b _08050B84
	.align 2, 0
_08050A74: .4byte 0x085262BC
_08050A78: .4byte 0x08526214
_08050A7C:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _08050AB4 @ =sub_08050920
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	bne _08050A8E
	b _08050B8E
_08050A8E:
	ldr r2, [sp, #8]
	ldr r1, [r2]
	ldr r2, [r2, #4]
	mov r5, sb
	ldrb r3, [r5, #1]
	ldr r5, [sp, #8]
	ldr r0, [r5, #8]
	str r0, [sp]
	adds r0, r4, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08050AB8
	adds r0, r4, #0
	bl sub_08000E14
	b _08050B8E
	.align 2, 0
_08050AB4: .4byte sub_08050920
_08050AB8:
	adds r0, r4, #0
	adds r0, #0x65
	mov r1, sp
	ldrb r1, [r1, #0xc]
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x14
	strb r0, [r1]
	mov r0, r8
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x58
	movs r2, #0x40
	ands r2, r0
	ldrb r0, [r3]
	movs r5, #0x41
	rsbs r5, r5, #0
	adds r1, r5, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	add r7, sp, #4
	mov r0, r8
	mov r1, sl
	adds r2, r7, #0
	bl sub_0806C48C
	mov r1, r8
	adds r1, #0x42
	add r0, sp, #4
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r5, r4, #0
	adds r5, #0x42
	strh r0, [r5]
	mov r1, r8
	adds r1, #0x46
	ldrh r0, [r7, #2]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r6, r4, #0
	adds r6, #0x46
	strh r0, [r6]
	adds r0, r4, #0
	movs r1, #0
	add r2, sp, #4
	bl sub_0806C528
	add r0, sp, #4
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _08050B2A
	adds r0, #3
_08050B2A:
	asrs r0, r0, #2
	ldrh r2, [r5]
	adds r0, r0, r2
	strh r0, [r5]
	movs r5, #2
	ldrsh r1, [r7, r5]
	cmp r1, #0
	bge _08050B3C
	adds r1, #3
_08050B3C:
	asrs r1, r1, #2
	ldrh r0, [r6]
	subs r0, r0, r1
	strh r0, [r6]
	bl RandomNumberGenerator
	ldr r1, _08050BA0 @ =0x0000FFFF
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
	mov r2, r8
	ldr r0, [r2, #0x48]
	muls r0, r1, r0
	str r0, [r4, #0x48]
	movs r0, #0x80
	lsls r0, r0, #0xa
	bl sub_0802D5EC
	ldr r1, _08050BA4 @ =0xFFFE0000
	subs r1, r1, r0
	str r1, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r5, #1
	add sl, r5
	ldr r0, [sp, #0xc]
	adds r0, #1
	str r0, [sp, #0xc]
_08050B84:
	mov r1, sb
	ldrb r1, [r1, #4]
	cmp sl, r1
	bge _08050B8E
	b _08050A7C
_08050B8E:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08050BA0: .4byte 0x0000FFFF
_08050BA4: .4byte 0xFFFE0000

	thumb_func_start sub_08050BA8
sub_08050BA8: @ 0x08050BA8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08050C04
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #2
	ldr r0, _08050C0C @ =0x085262BC
	adds r4, r4, r0
	adds r0, r6, #0
	bl sub_0803F17C
	adds r5, r6, #0
	adds r5, #0x46
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	adds r0, r6, #0
	bl sub_0803AC40
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	ldrb r2, [r4, #5]
	cmp r2, #0
	beq _08050C04
	ldr r0, _08050C10 @ =gEwramData
	ldr r0, [r0]
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08050C04
	adds r5, #0x1f
	ldrb r4, [r5]
	strb r2, [r5]
	adds r0, r6, #0
	bl sub_0803AC40
	strb r4, [r5]
_08050C04:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08050C0C: .4byte 0x085262BC
_08050C10: .4byte gEwramData

	thumb_func_start sub_08050C14
sub_08050C14: @ 0x08050C14
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0x30
	ldrsh r1, [r4, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08050C54 @ =0x085262BC
	adds r5, r0, r1
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08050C58 @ =0x08526214
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r0, #4]
	ldrb r3, [r5, #1]
	ldr r0, [r0, #8]
	str r0, [sp]
	adds r0, r4, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08050C5C
	adds r0, r4, #0
	bl sub_08000E14
	b _08050CB0
	.align 2, 0
_08050C54: .4byte 0x085262BC
_08050C58: .4byte 0x08526214
_08050C5C:
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x14
	strb r0, [r1]
	ldrb r1, [r5, #2]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _08050CB8 @ =sub_08050BA8
	str r0, [r4, #4]
	ldr r3, _08050CBC @ =sub_08050D98
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_0804277C
	adds r1, r4, #0
	adds r1, #0x72
	ldrb r0, [r1]
	movs r6, #2
	orrs r0, r6
	strb r0, [r1]
	ldr r1, [r5, #8]
	adds r0, r4, #0
	bl sub_080428F0
	ldrh r0, [r5, #6]
	cmp r0, #0
	bne _08050CA6
	adds r0, r4, #0
	bl sub_0806AF98
_08050CA6:
	adds r1, r4, #0
	adds r1, #0x59
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
_08050CB0:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08050CB8: .4byte sub_08050BA8
_08050CBC: .4byte sub_08050D98

	thumb_func_start sub_08050CC0
sub_08050CC0: @ 0x08050CC0
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r2, #0x20
	rsbs r2, r2, #0
	movs r3, #0x98
	lsls r3, r3, #1
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	bl sub_08068AD4
	cmp r0, #0
	bne _08050CEA
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	b _08050D86
_08050CEA:
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _08050CF6
	cmp r0, #1
	beq _08050D44
	b _08050D8A
_08050CF6:
	adds r4, r5, #0
	adds r4, #0x58
	ldrb r1, [r4]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	lsls r0, r0, #2
	ldr r1, _08050D40 @ =0x08526370
	adds r0, r0, r1
	movs r1, #0x14
	rsbs r1, r1, #0
	ldrb r2, [r0]
	ldrb r3, [r0, #1]
	adds r0, r5, #0
	bl sub_08045F9C
	cmp r0, #0
	beq _08050D8A
	adds r0, r5, #0
	bl sub_08050A3C
	movs r0, #0xa2
	bl sub_080D7910
	ldrb r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4]
	movs r0, #0x28
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	b _08050D8A
	.align 2, 0
_08050D40: .4byte 0x08526370
_08050D44:
	ldrb r1, [r5, #0xd]
	cmp r1, #0x1e
	bls _08050D70
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08050D70
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	ldr r2, _08050D94 @ =0xFFF00000
	adds r1, r1, r2
	movs r2, #0x80
	lsls r2, r2, #0xc
	movs r3, #0x80
	lsls r3, r3, #0xd
	adds r4, r5, #0
	adds r4, #0x5c
	ldrb r4, [r4]
	subs r4, #1
	str r4, [sp]
	bl sub_0806D5C0
_08050D70:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08050D8A
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
_08050D86:
	orrs r1, r2
	strb r1, [r0]
_08050D8A:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08050D94: .4byte 0xFFF00000

	thumb_func_start sub_08050D98
sub_08050D98: @ 0x08050D98
	push {r4, lr}
	adds r3, r0, #0
	movs r4, #1
	str r4, [r3, #0x48]
	ldr r2, [r3, #0x40]
	ldr r0, [r1, #0x40]
	cmp r2, r0
	bge _08050DAC
	rsbs r0, r4, #0
	str r0, [r3, #0x48]
_08050DAC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08050DB4
sub_08050DB4: @ 0x08050DB4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x30]
	lsrs r5, r1, #8
	cmp r5, #0
	bne _08050DC2
	movs r5, #7
_08050DC2:
	movs r0, #0xff
	ands r0, r1
	strh r0, [r4, #0x30]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x14
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	subs r0, #0x55
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08050E2C @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08050E30 @ =0x0820ED60
	adds r0, r4, #0
	adds r3, r5, #0
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0xe
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08050E34 @ =0x080CF8FA
	adds r0, r4, #0
	bl sub_080428F0
	ldr r0, _08050E38 @ =sub_08050F08
	str r0, [r4, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08050E2C: .4byte 0x081C15F4
_08050E30: .4byte 0x0820ED60
_08050E34: .4byte 0x080CF8FA
_08050E38: .4byte sub_08050F08

	thumb_func_start sub_08050E3C
sub_08050E3C: @ 0x08050E3C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r3, #0x88
	lsls r3, r3, #1
	movs r0, #0xc0
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r2, #0
	bl sub_08068AD4
	cmp r0, #0
	bne _08050E64
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	b _08050EFA
_08050E64:
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _08050E70
	cmp r0, #1
	beq _08050EAC
	b _08050EFE
_08050E70:
	adds r4, r6, #0
	adds r4, #0x58
	ldrb r1, [r4]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	movs r0, #0x30
	ldrsh r2, [r6, r0]
	movs r0, #0x32
	ldrsh r3, [r6, r0]
	adds r0, r6, #0
	movs r1, #0
	bl sub_08045F9C
	cmp r0, #0
	beq _08050EFE
	movs r0, #0xa2
	bl sub_080D7910
	ldrb r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4]
	movs r0, #0x28
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	b _08050EFE
_08050EAC:
	ldrb r1, [r6, #0xd]
	cmp r1, #0x1e
	bls _08050EE4
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08050EE4
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
	adds r0, r6, #0
	adds r0, #0x5a
	ldrb r3, [r0]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1c
	adds r0, r4, #0
	movs r2, #0
	bl sub_08045CEC
_08050EE4:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08050EFE
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
_08050EFA:
	orrs r1, r2
	strb r1, [r0]
_08050EFE:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08050F08
sub_08050F08: @ 0x08050F08
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0803AC40
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08050F1C
sub_08050F1C: @ 0x08050F1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, _080510A8 @ =gEwramData
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x60
	str r1, [sp]
	ldr r1, _080510AC @ =0x0000124C
	adds r0, r0, r1
	ldr r0, [r0, #0x14]
	mov sb, r0
	movs r0, #0
	bl sub_0800C5A8
	ldrb r0, [r7, #0xa]
	cmp r0, #3
	bne _08050F50
	movs r0, #1
	movs r1, #0
	bl sub_080009A0
_08050F50:
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08050F62
	b _08051098
_08050F62:
	adds r0, r7, #0
	adds r0, #0x65
	str r0, [sp, #4]
	movs r0, #1
	ldr r1, [sp, #4]
	strb r0, [r1]
	movs r0, #0x42
	adds r0, r0, r7
	mov r8, r0
	movs r6, #0
	movs r1, #0x78
	mov sl, r1
	mov r1, sl
	strh r1, [r0]
	adds r4, r7, #0
	adds r4, #0x46
	strh r2, [r4]
	adds r0, r7, #0
	bl sub_0803AC40
	ldr r0, [sp, #4]
	strb r6, [r0]
	movs r0, #0x38
	strh r0, [r4]
	adds r0, r7, #0
	bl sub_0803AC40
	ldr r1, [sp]
	ldr r0, [r1, #0x50]
	ldr r5, [sp, #4]
	mov r6, r8
	cmp r0, sb
	bhi _08050FA8
	cmp r0, #0
	bne _08050FB6
_08050FA8:
	movs r0, #2
	strb r0, [r5]
	mov r0, sl
	strh r0, [r4]
	adds r0, r7, #0
	bl sub_0803AC40
_08050FB6:
	movs r0, #0x50
	strh r0, [r4]
	mov r0, sb
	movs r1, #0x3c
	bl Mod
	movs r1, #0x64
	muls r0, r1, r0
	movs r1, #0x3c
	bl Div
	adds r4, r0, #0
	movs r0, #0x98
	strh r0, [r6]
	adds r0, r4, #0
	movs r1, #0xa
	bl Mod
	adds r0, #3
	strb r0, [r5]
	adds r0, r7, #0
	bl sub_0803AC40
	ldrh r0, [r6]
	subs r0, #8
	strh r0, [r6]
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	adds r0, #3
	strb r0, [r5]
	adds r0, r7, #0
	bl sub_0803AC40
	movs r1, #0xd
	mov r8, r1
	mov r0, r8
	strb r0, [r5]
	ldrh r0, [r6]
	subs r0, #8
	strh r0, [r6]
	adds r0, r7, #0
	bl sub_0803AC40
	mov r0, sb
	movs r1, #0x3c
	bl Div
	movs r1, #0x3c
	bl Mod
	adds r4, r0, #0
	movs r0, #0x80
	strh r0, [r6]
	adds r0, r4, #0
	movs r1, #0xa
	bl Mod
	adds r0, #3
	strb r0, [r5]
	adds r0, r7, #0
	bl sub_0803AC40
	ldrh r0, [r6]
	subs r0, #8
	strh r0, [r6]
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	adds r0, #3
	strb r0, [r5]
	adds r0, r7, #0
	bl sub_0803AC40
	mov r1, r8
	strb r1, [r5]
	ldrh r0, [r6]
	subs r0, #8
	strh r0, [r6]
	adds r0, r7, #0
	bl sub_0803AC40
	movs r1, #0xe1
	lsls r1, r1, #4
	mov r0, sb
	bl Div
	adds r4, r0, #0
	movs r0, #0x68
	strh r0, [r6]
	adds r0, r4, #0
	movs r1, #0xa
	bl Mod
	adds r0, #3
	strb r0, [r5]
	adds r0, r7, #0
	bl sub_0803AC40
	ldrh r0, [r6]
	subs r0, #8
	strh r0, [r6]
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	adds r0, #3
	strb r0, [r5]
	adds r0, r7, #0
	bl sub_0803AC40
_08051098:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080510A8: .4byte gEwramData
_080510AC: .4byte 0x0000124C

	thumb_func_start sub_080510B0
sub_080510B0: @ 0x080510B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	ldr r0, _080510DC @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _080510EC
	cmp r0, #3
	beq _08051102
	ldr r1, _080510E0 @ =0x081604A0
	ldr r2, _080510E4 @ =0x082097B0
	ldr r0, _080510E8 @ =0x0820CEF8
	b _08051108
	.align 2, 0
_080510DC: .4byte gEwramData
_080510E0: .4byte 0x081604A0
_080510E4: .4byte 0x082097B0
_080510E8: .4byte 0x0820CEF8
_080510EC:
	ldr r1, _08051120 @ =0x08268450
	ldr r2, _08051124 @ =0x082097B0
	ldr r0, _08051128 @ =0x08268648
	str r0, [sp]
	adds r0, r6, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08051118
_08051102:
	ldr r1, _0805112C @ =0x08268458
	ldr r2, _08051124 @ =0x082097B0
	ldr r0, _08051130 @ =0x08268828
_08051108:
	str r0, [sp]
	adds r0, r6, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08051138
_08051118:
	adds r0, r6, #0
	bl sub_08000E14
	b _080511CE
	.align 2, 0
_08051120: .4byte 0x08268450
_08051124: .4byte 0x082097B0
_08051128: .4byte 0x08268648
_0805112C: .4byte 0x08268458
_08051130: .4byte 0x08268828
_08051134:
	ldr r3, [r5, #4]
	b _0805118C
_08051138:
	ldr r0, _080511E0 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _080511E4 @ =0x0000124C
	adds r0, r0, r2
	ldr r0, [r0, #0x14]
	mov r8, r0
	ldr r5, _080511E8 @ =0x08526390
	movs r7, #0
	adds r0, r6, #0
	adds r0, #0x42
	str r0, [sp, #4]
	adds r1, r6, #0
	adds r1, #0x46
	str r1, [sp, #8]
	movs r2, #0x59
	adds r2, r2, r6
	mov sb, r2
	movs r0, #0x58
	adds r0, r0, r6
	mov sl, r0
_08051160:
	ldr r0, [r5]
	cmp r8, r0
	bhi _08051182
	ldr r0, [r5, #4]
	bl sub_08044F24
	adds r4, r0, #0
	ldr r0, [r5, #4]
	bl sub_08044F50
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08044FA8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08051134
_08051182:
	adds r7, #1
	adds r5, #8
	cmp r7, #2
	ble _08051160
	movs r3, #1
_0805118C:
	str r3, [r6, #0x18]
	ldr r1, [sp, #4]
	ldrh r0, [r1]
	ldr r2, [sp, #8]
	ldrh r1, [r2]
	movs r4, #1
	str r4, [sp]
	movs r2, #0xff
	bl sub_08044054
	cmp r0, #0
	beq _080511A6
	strb r4, [r0, #0xb]
_080511A6:
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, sb
	strb r0, [r1]
	mov r2, sl
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x80
	ldr r1, [sp, #4]
	strh r0, [r1]
	movs r0, #0x50
	ldr r2, [sp, #8]
	strh r0, [r2]
	ldr r0, _080511EC @ =sub_08050F1C
	str r0, [r6, #4]
_080511CE:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080511E0: .4byte gEwramData
_080511E4: .4byte 0x0000124C
_080511E8: .4byte 0x08526390
_080511EC: .4byte sub_08050F1C

	thumb_func_start sub_080511F0
sub_080511F0: @ 0x080511F0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r6, _0805120C @ =gEwramData
	ldr r0, [r6]
	adds r7, r0, #0
	adds r7, #0x60
	ldrb r4, [r5, #0xa]
	cmp r4, #1
	beq _08051240
	cmp r4, #1
	bgt _08051210
	cmp r4, #0
	beq _08051216
	b _080512BE
	.align 2, 0
_0805120C: .4byte gEwramData
_08051210:
	cmp r4, #2
	beq _080512A4
	b _080512BE
_08051216:
	ldr r1, _0805123C @ =0x0000042C
	adds r0, r0, r1
	ldr r0, [r0]
	subs r1, #0x2c
	ands r0, r1
	cmp r0, #0
	beq _080512BE
	movs r0, #0x80
	strb r0, [r5, #0xd]
	movs r0, #1
	strb r0, [r5, #0xa]
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	subs r0, #0x22
	ands r0, r1
	strb r0, [r2]
	b _080512BE
	.align 2, 0
_0805123C: .4byte 0x0000042C
_08051240:
	movs r0, #1
	movs r1, #0
	bl sub_080009A0
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _08051254
	subs r0, #1
	strb r0, [r5, #0xd]
	b _080512BE
_08051254:
	movs r0, #2
	strb r0, [r5, #0xa]
	ldr r0, [r6]
	movs r1, #0x85
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_08012744
	ldr r0, [r5, #0x18]
	bl sub_08043B18
	ldr r0, [r6]
	adds r0, #0x60
	bl sub_080135C0
	ldr r0, [r6]
	ldr r1, _0805129C @ =0x0000124C
	adds r0, r0, r1
	ldr r0, [r0, #0x14]
	ldr r1, [r7, #0x50]
	cmp r1, r0
	bhi _08051286
	cmp r1, #0
	bne _08051288
_08051286:
	str r0, [r7, #0x50]
_08051288:
	ldr r0, _080512A0 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x85
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_08013620
	b _080512BE
	.align 2, 0
_0805129C: .4byte 0x0000124C
_080512A0: .4byte gEwramData
_080512A4:
	movs r0, #1
	movs r1, #0
	bl sub_080009A0
	ldr r0, [r6]
	adds r0, #0x64
	movs r1, #0
	strb r4, [r0]
	ldr r0, [r6]
	adds r0, #0x65
	strb r1, [r0]
	movs r0, #3
	strb r0, [r5, #0xa]
_080512BE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080512C4
sub_080512C4: @ 0x080512C4
	push {lr}
	ldr r0, _080512EC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080512F0 @ =0x0000124C
	adds r0, r0, r1
	bl sub_08000E14
	ldr r2, _080512F4 @ =sub_080512FC
	movs r0, #0x1a
	movs r1, #0x1a
	bl sub_08000DA0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_080512EC: .4byte gEwramData
_080512F0: .4byte 0x0000124C
_080512F4: .4byte sub_080512FC

	thumb_func_start sub_080512F8
sub_080512F8: @ 0x080512F8
	bx lr
	.align 2, 0

	thumb_func_start sub_080512FC
sub_080512FC: @ 0x080512FC
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08051330 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08051334 @ =0x0000042C
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0805132A
	ldr r1, [r3, #0x14]
	ldr r0, _08051338 @ =0x00034BBD
	cmp r1, r0
	bgt _0805132A
	adds r0, r1, #1
	str r0, [r3, #0x14]
_0805132A:
	pop {r0}
	bx r0
	.align 2, 0
_08051330: .4byte gEwramData
_08051334: .4byte 0x0000042C
_08051338: .4byte 0x00034BBD

	thumb_func_start sub_0805133C
sub_0805133C: @ 0x0805133C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bhi _080513FE
	lsls r0, r0, #2
	ldr r1, _08051350 @ =_08051354
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08051350: .4byte _08051354
_08051354: @ jump table
	.4byte _08051368 @ case 0
	.4byte _08051386 @ case 1
	.4byte _080513A8 @ case 2
	.4byte _080513C8 @ case 3
	.4byte _080513EC @ case 4
_08051368:
	ldr r1, _080513A0 @ =0x0811853C
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F0E4
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r0, r1
	adds r0, #8
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_08051386:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _080513CE
	ldr r1, _080513A4 @ =0x08118544
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F0E4
	ldrb r0, [r4, #0xa]
	adds r0, #1
	b _080513FC
	.align 2, 0
_080513A0: .4byte 0x0811853C
_080513A4: .4byte 0x08118544
_080513A8:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080513FE
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r0, r1
	adds r0, #0x10
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	b _080513FC
_080513C8:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _080513D4
_080513CE:
	subs r0, #1
	strb r0, [r4, #0xd]
	b _080513FE
_080513D4:
	ldr r1, _080513E8 @ =0x08118558
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F0E4
	ldrb r0, [r4, #0xa]
	adds r0, #1
	b _080513FC
	.align 2, 0
_080513E8: .4byte 0x08118558
_080513EC:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080513FE
	movs r0, #0
_080513FC:
	strb r0, [r4, #0xa]
_080513FE:
	adds r0, r4, #0
	bl sub_0803F17C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805140C
sub_0805140C: @ 0x0805140C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0x30
	ldrsh r1, [r5, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _08051440 @ =0x085263A8
	adds r4, r0, r1
	ldr r1, [r4]
	ldr r2, [r4, #4]
	ldrb r3, [r4, #0xc]
	ldr r0, [r4, #8]
	str r0, [sp]
	adds r0, r5, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08051444
	adds r0, r5, #0
	bl sub_08000E14
	b _080514C6
	.align 2, 0
_08051440: .4byte 0x085263A8
_08051444:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _0805147C
	ldrh r1, [r4, #0x10]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0805147C
	ldrb r1, [r4, #0xd]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrh r1, [r4, #0x10]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805147C
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #7
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r2]
_0805147C:
	ldrb r1, [r4, #0xf]
	adds r0, r5, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldrh r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0805149C
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #2
	orrs r1, r2
	strb r1, [r0]
	b _080514C6
_0805149C:
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	subs r2, #0x17
	ldr r0, _080514D0 @ =gEwramData
	ldr r1, [r0]
	ldr r3, _080514D4 @ =0x0000A094
	adds r1, r1, r3
	ldrh r0, [r1, #6]
	ldrh r3, [r2]
	adds r0, r0, r3
	strh r0, [r2]
	adds r2, #4
	ldrh r0, [r1, #0xa]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080514C6:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080514D0: .4byte gEwramData
_080514D4: .4byte 0x0000A094

	thumb_func_start sub_080514D8
sub_080514D8: @ 0x080514D8
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _0805150C
	movs r1, #0x32
	ldrsh r0, [r2, r1]
	cmp r0, #1
	bne _08051502
	ldr r0, _0805152C @ =gEwramData
	ldr r0, [r0]
	ldr r3, _08051530 @ =0x0000A094
	adds r1, r0, r3
	adds r3, #0x38
	adds r0, r0, r3
	ldr r1, [r1, #4]
	ldr r0, [r0, #4]
	subs r1, r1, r0
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r2, #0x40]
_08051502:
	ldr r0, _08051534 @ =sub_0805153C
	str r0, [r2, #4]
	ldrb r0, [r2, #0xa]
	adds r0, #1
	strb r0, [r2, #0xa]
_0805150C:
	movs r1, #0x32
	ldrsh r0, [r2, r1]
	cmp r0, #1
	bne _08051526
	ldr r0, _0805152C @ =gEwramData
	ldr r0, [r0]
	ldr r3, _08051538 @ =0x0000A0CC
	adds r0, r0, r3
	ldr r1, [r0, #0xc]
	str r1, [r2, #0x48]
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r2, #0x40]
_08051526:
	pop {r0}
	bx r0
	.align 2, 0
_0805152C: .4byte gEwramData
_08051530: .4byte 0x0000A094
_08051534: .4byte sub_0805153C
_08051538: .4byte 0x0000A0CC

	thumb_func_start sub_0805153C
sub_0805153C: @ 0x0805153C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r3, r5, #0
	adds r3, #0x5a
	ldrb r2, [r3]
	lsls r0, r2, #0x1d
	lsrs r0, r0, #0x1e
	movs r1, #1
	subs r1, r1, r0
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #1
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r4, #0
	movs r6, #0x10
	rsbs r6, r6, #0
_08051564:
	adds r0, r5, #0
	adds r0, #0x46
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r6
	bge _08051574
	cmp r4, #1
	ble _08051580
_08051574:
	adds r0, r5, #0
	adds r0, #0x65
	strb r4, [r0]
	adds r0, r5, #0
	bl sub_0803AC40
_08051580:
	adds r4, #1
	cmp r4, #3
	ble _08051564
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0805158C
sub_0805158C: @ 0x0805158C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0x30
	ldrsh r1, [r5, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _080515D4 @ =0x085263A8
	adds r4, r0, r1
	ldrh r1, [r4, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080515C6
	movs r1, #0x80
	rsbs r1, r1, #0
	movs r2, #0x40
	rsbs r2, r2, #0
	movs r3, #0xf8
	lsls r3, r3, #1
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [sp]
	adds r0, r5, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _080515E8
_080515C6:
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _080515D8
	adds r0, r5, #0
	bl _call_via_r1
	b _080515E8
	.align 2, 0
_080515D4: .4byte 0x085263A8
_080515D8:
	ldrh r1, [r4, #0x10]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080515E8
	adds r0, r5, #0
	bl sub_0803F17C
_080515E8:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080515F0
sub_080515F0: @ 0x080515F0
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r7, r6, #0
	adds r7, #0x18
	ldr r5, [r6, #0x18]
	ldr r2, _0805162C @ =gEwramData
	ldrb r1, [r7, #0x15]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08051630 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r1, r1, r0
	adds r4, r1, #0
	adds r4, #0x18
	ldrb r0, [r1, #0xa]
	cmp r0, #0xff
	bne _0805161C
	movs r0, #0xff
	strb r0, [r6, #0xa]
_0805161C:
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	beq _08051670
	cmp r0, #1
	bgt _08051634
	cmp r0, #0
	beq _0805163A
	b _080516E6
	.align 2, 0
_0805162C: .4byte gEwramData
_08051630: .4byte 0x000004E4
_08051634:
	cmp r0, #0xff
	beq _080516D0
	b _080516E6
_0805163A:
	ldr r1, _080516C4 @ =0x081CBE7C
	ldr r2, _080516C8 @ =0x08209FD8
	ldr r0, _080516CC @ =0x08210264
	str r0, [sp]
	adds r0, r6, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080516DE
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #3
	strb r0, [r1]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
_08051670:
	ldr r0, [r4, #4]
	str r0, [r7, #4]
	adds r4, r6, #0
	adds r4, #0x18
	adds r5, #0x18
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	lsls r0, r0, #3
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r0, r1
	bl sub_080009E4
	lsls r0, r0, #3
	str r0, [r4, #0xc]
	asrs r0, r0, #1
	ldr r1, [r5, #0xc]
	adds r0, r0, r1
	str r0, [r6, #0x40]
	ldr r0, [r4, #0x10]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	ldr r1, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	ldr r0, [r4, #0xc]
	ldr r1, [r5, #0xc]
	adds r0, r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x10]
	ldr r1, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	b _080516E6
	.align 2, 0
_080516C4: .4byte 0x081CBE7C
_080516C8: .4byte 0x08209FD8
_080516CC: .4byte 0x08210264
_080516D0:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080516DE:
	adds r0, r6, #0
	bl sub_08000E14
	b _08051704
_080516E6:
	ldr r0, [r7, #4]
	movs r2, #0x80
	lsls r2, r2, #9
	movs r1, #0
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
_08051704:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0805170C
sub_0805170C: @ 0x0805170C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	movs r0, #0x18
	adds r0, r0, r7
	mov sl, r0
	ldr r1, [r7, #0x18]
	str r1, [sp, #0x14]
	ldr r2, _08051758 @ =gEwramData
	ldrb r1, [r0, #0x15]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _0805175C @ =0x000004E4
	adds r0, r0, r3
	ldr r1, [r2]
	adds r1, r1, r0
	mov sb, r1
	mov r5, sb
	adds r5, #0x18
	mov r4, sb
	ldrb r0, [r4, #0xa]
	cmp r0, #0xff
	bne _08051748
	movs r0, #0xff
	strb r0, [r7, #0xa]
_08051748:
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	beq _080517DE
	cmp r0, #1
	bgt _08051760
	cmp r0, #0
	beq _08051768
	b _08051A1C
	.align 2, 0
_08051758: .4byte gEwramData
_0805175C: .4byte 0x000004E4
_08051760:
	cmp r0, #0xff
	bne _08051766
	b _08051A16
_08051766:
	b _08051A1C
_08051768:
	ldr r1, _08051788 @ =0x081CBE7C
	ldr r2, _0805178C @ =0x08209FD8
	ldr r0, _08051790 @ =0x08210264
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08051794
	adds r0, r7, #0
	bl sub_08000E14
	b _08051A1C
	.align 2, 0
_08051788: .4byte 0x081CBE7C
_0805178C: .4byte 0x08209FD8
_08051790: .4byte 0x08210264
_08051794:
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r7, #0
	bl sub_0803F17C
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #3
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r4, _08051944 @ =0x2020F4F0
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080428F0
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08042884
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_080517DE:
	movs r4, #0x60
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r0, r1
	bl sub_080009E4
	adds r2, r0, #0
	muls r2, r4, r2
	mov r8, r2
	ldr r0, [r5, #0xc]
	add r8, r0
	ldr r0, [r5, #8]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r0, r3
	bl sub_080009E4
	adds r6, r0, #0
	muls r6, r4, r6
	ldr r0, [r5, #0x10]
	adds r6, r6, r0
	ldr r0, [r5, #4]
	mov r4, sl
	str r0, [r4, #4]
	adds r4, r7, #0
	adds r4, #0x18
	ldr r5, [sp, #0x14]
	adds r5, #0x18
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	lsls r0, r0, #5
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r0, r2
	bl sub_080009E4
	lsls r0, r0, #5
	str r0, [r4, #0xc]
	asrs r0, r0, #1
	ldr r1, [r5, #0xc]
	adds r0, r0, r1
	str r0, [r7, #0x40]
	ldr r0, [r4, #0x10]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	ldr r1, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x44]
	ldr r0, [r4, #0xc]
	ldr r1, [r5, #0xc]
	adds r0, r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x10]
	ldr r1, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r7, #0x40]
	mov r3, r8
	subs r3, r3, r0
	str r3, [r7, #0x48]
	ldr r0, [r7, #0x44]
	subs r6, r6, r0
	str r6, [r7, #0x4c]
	cmp r6, #0
	bge _08051874
	movs r0, #0
	str r0, [r7, #0x4c]
_08051874:
	ldr r4, _08051948 @ =gEwramData
	ldr r0, [r4]
	ldr r1, _0805194C @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x42
	ldrh r1, [r1]
	subs r1, #0x50
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, #0x46
	ldrh r2, [r0]
	subs r2, #0x80
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0xa0
	bl sub_08068AD4
	cmp r0, #0
	bne _080518A8
	b _08051A1C
_080518A8:
	adds r0, r7, #0
	movs r1, #3
	bl sub_08021278
	add r0, sp, #4
	adds r1, r7, #0
	bl sub_080421AC
	add r0, sp, #4
	ldrh r1, [r0]
	movs r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080518C8
	b _08051A1C
_080518C8:
	mov r3, sb
	ldr r6, [r3, #0x48]
	ldr r0, _08051950 @ =0x0000FFFF
	ands r6, r0
	str r6, [r3, #0x48]
	movs r4, #0
	mov sl, r4
	add r0, sp, #4
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	movs r1, #0x46
	adds r1, r1, r7
	mov r8, r1
	cmp r0, #0
	beq _08051904
	ldr r2, _08051948 @ =gEwramData
	ldr r0, [r2]
	ldr r3, _0805194C @ =0x00013110
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, #0x46
	movs r4, #0
	ldrsh r1, [r0, r4]
	mov r2, r8
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r1, r0
	bge _08051904
	b _08051A1C
_08051904:
	movs r0, #0x10
	bl sub_0802D5EC
	adds r5, r7, #0
	adds r5, #0x42
	movs r1, #0
	ldrsh r4, [r5, r1]
	adds r4, r4, r0
	movs r0, #0x10
	bl sub_0802D5EC
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0
	bl sub_0806E664
	movs r0, #0x69
	bl sub_080D7910
	ldr r4, _08051954 @ =0xFFFFBFFF
	adds r1, r6, r4
	ldr r0, _08051958 @ =0x00007FFE
	cmp r1, r0
	bhi _0805195C
	movs r0, #1
	mov sl, r0
	mov r1, sb
	ldr r3, [r1, #0x50]
	b _08051998
	.align 2, 0
_08051944: .4byte 0x2020F4F0
_08051948: .4byte gEwramData
_0805194C: .4byte 0x00013110
_08051950: .4byte 0x0000FFFF
_08051954: .4byte 0xFFFFBFFF
_08051958: .4byte 0x00007FFE
_0805195C:
	mov r2, sb
	ldr r3, [r2, #0x50]
	cmp r3, #0
	beq _08051968
	movs r4, #2
	mov sl, r4
_08051968:
	mov r0, sl
	cmp r0, #0
	bne _08051998
	ldr r1, _08051990 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _08051994 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x42
	movs r4, #0
	ldrsh r1, [r0, r4]
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r1, r0
	bge _080519F8
	movs r4, #0x80
	lsls r4, r4, #8
	mov r0, sb
	str r4, [r0, #0x48]
	b _080519F8
	.align 2, 0
_08051990: .4byte gEwramData
_08051994: .4byte 0x00013110
_08051998:
	mov r4, sl
	cmp r4, #1
	bne _080519C8
	ldr r0, _08051A04 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08051A08 @ =0x00013110
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x42
	movs r4, #0
	ldrsh r1, [r0, r4]
	movs r4, #0
	ldrsh r0, [r5, r4]
	cmp r1, r0
	bge _080519C8
	adds r0, r2, #0
	adds r0, #0x58
	ldrb r1, [r0]
	lsrs r1, r1, #6
	mov r0, sl
	bics r0, r1
	cmp r0, #1
	beq _080519F8
_080519C8:
	mov r0, sl
	cmp r0, #2
	bne _08051A0C
	ldr r0, _08051A04 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08051A08 @ =0x00013110
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x42
	movs r4, #0
	ldrsh r1, [r0, r4]
	movs r4, #0
	ldrsh r0, [r5, r4]
	cmp r1, r0
	ble _08051A0C
	adds r0, r2, #0
	adds r0, #0x58
	ldrb r1, [r0]
	lsrs r1, r1, #6
	movs r0, #1
	bics r0, r1
	cmp r0, #0
	bne _08051A0C
_080519F8:
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r3, r1
	mov r2, sb
	str r0, [r2, #0x50]
	b _08051A1C
	.align 2, 0
_08051A04: .4byte gEwramData
_08051A08: .4byte 0x00013110
_08051A0C:
	adds r0, r3, #0
	subs r0, #0x60
	mov r3, sb
	str r0, [r3, #0x50]
	b _08051A1C
_08051A16:
	adds r0, r7, #0
	bl sub_08000E14
_08051A1C:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08051A2C
sub_08051A2C: @ 0x08051A2C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _08051A54 @ =0x081CBE7C
	ldr r2, _08051A58 @ =0x08209FD8
	ldr r0, _08051A5C @ =0x08210264
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08051A60
	adds r0, r5, #0
	bl sub_08000E14
	b _08051AFC
	.align 2, 0
_08051A54: .4byte 0x081CBE7C
_08051A58: .4byte 0x08209FD8
_08051A5C: .4byte 0x08210264
_08051A60:
	movs r0, #0
	str r0, [r5, #4]
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	mov r8, r5
	movs r6, #0
	b _08051AD4
_08051A80:
	cmp r6, #0xa
	beq _08051AB2
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	blt _08051AF8
	adds r2, r4, #0
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
	adds r2, #1
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
_08051AB2:
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x18
	mov r0, r8
	str r0, [r4, #0x18]
	movs r0, #0
	str r0, [r1, #4]
	strb r6, [r1, #0x14]
	ldrb r0, [r5, #0x10]
	strb r0, [r1, #0x15]
	mov r8, r4
	adds r6, #1
_08051AD4:
	cmp r6, #0xa
	bgt _08051AFC
	cmp r6, #0xa
	beq _08051AE8
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _08051AE4 @ =sub_080515F0
	b _08051AEE
	.align 2, 0
_08051AE4: .4byte sub_080515F0
_08051AE8:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _08051B08 @ =sub_0805170C
_08051AEE:
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	bne _08051A80
_08051AF8:
	movs r0, #0xff
	strb r0, [r5, #0xa]
_08051AFC:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08051B08: .4byte sub_0805170C

	thumb_func_start sub_08051B0C
sub_08051B0C: @ 0x08051B0C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r4, #0
	adds r7, #0x18
	ldrb r0, [r4, #0xa]
	cmp r0, #0xff
	bne _08051B2C
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	bls _08051B28
	adds r0, r4, #0
	bl sub_08000E14
	b _08051BEC
_08051B28:
	adds r0, #1
	strb r0, [r4, #0xd]
_08051B2C:
	ldr r0, [r4, #0x50]
	movs r1, #0x8c
	lsls r1, r1, #6
	cmp r0, r1
	ble _08051B38
	str r1, [r4, #0x50]
_08051B38:
	ldrh r5, [r4, #0x32]
	lsls r2, r5, #0x10
	cmp r2, #0
	beq _08051B9C
	ldr r0, _08051B70 @ =gEwramData
	ldr r1, [r0]
	asrs r0, r2, #0x15
	lsls r0, r0, #2
	movs r2, #0xd1
	lsls r2, r2, #2
	adds r1, r1, r2
	adds r3, r1, r0
	movs r0, #0x1f
	ands r0, r5
	movs r6, #1
	lsls r6, r0
	ldr r0, [r3]
	ands r0, r6
	cmp r0, #0
	bne _08051B9C
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08051B74
	ldr r5, [r4, #0x50]
	movs r0, #0x84
	lsls r0, r0, #6
	b _08051B7A
	.align 2, 0
_08051B70: .4byte gEwramData
_08051B74:
	ldr r5, [r4, #0x50]
	movs r0, #0x90
	lsls r0, r0, #5
_08051B7A:
	cmp r5, r0
	ble _08051B9C
	ldr r2, [r4, #0x48]
	ldr r0, _08051BB4 @ =0xFFFF53FF
	adds r1, r2, r0
	ldr r0, _08051BB8 @ =0x000007FE
	cmp r1, r0
	bhi _08051B9C
	adds r0, r2, #0
	subs r0, #0x40
	str r0, [r4, #0x48]
	ldr r1, _08051BBC @ =0xFFFFFF00
	adds r0, r5, r1
	str r0, [r4, #0x50]
	ldr r0, [r3]
	orrs r0, r6
	str r0, [r3]
_08051B9C:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	ble _08051BC4
	subs r0, #4
	str r0, [r4, #0x50]
	ldr r0, [r4, #0x48]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r1, _08051BC0 @ =0x0000FFFF
	ands r0, r1
	b _08051BC8
	.align 2, 0
_08051BB4: .4byte 0xFFFF53FF
_08051BB8: .4byte 0x000007FE
_08051BBC: .4byte 0xFFFFFF00
_08051BC0: .4byte 0x0000FFFF
_08051BC4:
	movs r0, #0
	str r0, [r4, #0x50]
_08051BC8:
	str r0, [r4, #0x48]
	ldr r0, [r7, #8]
	str r0, [r7, #4]
	ldr r0, [r4, #0x48]
	bl sub_080009E4
	ldr r1, [r4, #0x50]
	muls r0, r1, r0
	cmp r0, #0
	bge _08051BE0
	ldr r1, _08051BF4 @ =0x0000FFFF
	adds r0, r0, r1
_08051BE0:
	asrs r0, r0, #0x10
	str r0, [r7, #8]
	ldr r0, [r4, #0x40]
	str r0, [r7, #0xc]
	ldr r0, [r4, #0x44]
	str r0, [r7, #0x10]
_08051BEC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08051BF4: .4byte 0x0000FFFF

	thumb_func_start sub_08051BF8
sub_08051BF8: @ 0x08051BF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	mov sl, r1
	movs r6, #0
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x54]
	adds r1, r1, r0
	str r1, [r4, #0x4c]
	adds r0, r4, #0
	movs r1, #7
	bl sub_08021278
	adds r0, r4, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bne _08051C42
	movs r6, #8
_08051C42:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r5, r1, #0x10
	adds r0, r0, r5
	mov r8, r0
	mov r0, sb
	mov r1, r8
	mov r2, sl
	bl sub_08001E58
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	cmp r6, #0
	beq _08051C70
	adds r1, r6, r5
	lsls r1, r1, #0x10
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x44]
_08051C70:
	movs r1, #8
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bge _08051C7E
	rsbs r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_08051C7E:
	lsls r0, r1, #0x10
	asrs r7, r0, #0x10
	mov r1, sb
	adds r0, r1, r7
	mov r1, r8
	mov r2, sl
	bl sub_08001E58
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08051CB2
	adds r1, r5, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r7, #0
	bl ArcTan2
	adds r2, r0, #0
	adds r0, r4, #0
	adds r0, #0x20
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r1, #0x80
	bl sub_080686CC
_08051CB2:
	adds r0, r6, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08051CC4
sub_08051CC4: @ 0x08051CC4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	movs r6, #0
_08051CD0:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _08051E48 @ =sub_08052834
	bl sub_08000DA0
	adds r5, r0, #0
	cmp r5, #0
	beq _08051D6C
	ldr r0, _08051E4C @ =0x08210B60
	str r0, [sp]
	adds r0, r5, #0
	ldr r1, _08051E50 @ =0x081CBEA4
	ldr r2, _08051E54 @ =0x0820A0DC
	movs r3, #0
	bl sub_0806E0D0
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #3
	strb r0, [r1]
	adds r1, r7, #0
	adds r1, #0x42
	lsls r0, r6, #4
	subs r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, #4
	strh r0, [r1]
	movs r0, #8
	bl sub_0802D5EC
	lsls r1, r6, #0x11
	lsls r0, r0, #0xc
	ldr r2, _08051E58 @ =0xFFFF0000
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r5, #0x48]
	movs r0, #0x10
	bl sub_0802D5EC
	lsls r0, r0, #0xc
	ldr r3, _08051E5C @ =0xFFFD0000
	adds r0, r0, r3
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x5c
	strb r1, [r0]
	adds r3, r5, #0
	adds r3, #0x58
	movs r0, #1
	adds r2, r6, #0
	ands r2, r0
	lsls r2, r2, #6
	ldrb r0, [r3]
	movs r4, #0x41
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_08051D6C:
	adds r6, #1
	cmp r6, #1
	ble _08051CD0
	movs r0, #1
	mov r8, r0
	movs r6, #3
_08051D78:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _08051E48 @ =sub_08052834
	bl sub_08000DA0
	adds r5, r0, #0
	cmp r5, #0
	beq _08051E36
	ldr r0, _08051E4C @ =0x08210B60
	str r0, [sp]
	adds r0, r5, #0
	ldr r1, _08051E50 @ =0x081CBEA4
	ldr r2, _08051E54 @ =0x0820A0DC
	movs r3, #0
	bl sub_0806E0D0
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	adds r0, #4
	adds r1, r5, #0
	adds r1, #0x65
	strb r0, [r1]
	movs r0, #0x10
	bl sub_0802D5EC
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r1, [r1]
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x42
	strh r1, [r0]
	movs r0, #0x10
	bl sub_0802D5EC
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r1, [r1]
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x46
	strh r1, [r0]
	movs r0, #0x10
	bl sub_0802D5EC
	lsls r0, r0, #0xc
	str r0, [r5, #0x48]
	movs r0, #0x20
	bl sub_0802D5EC
	lsls r0, r0, #0xc
	ldr r1, _08051E5C @ =0xFFFD0000
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x5c
	strb r1, [r0]
	bl RandomNumberGenerator
	mov r2, r8
	ands r0, r2
	adds r4, r5, #0
	adds r4, #0x58
	lsls r0, r0, #6
	ldrb r1, [r4]
	movs r3, #0x41
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	bl RandomNumberGenerator
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #7
	ldrb r2, [r4]
	movs r1, #0x7f
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_08051E36:
	subs r6, #1
	cmp r6, #0
	bge _08051D78
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08051E48: .4byte sub_08052834
_08051E4C: .4byte 0x08210B60
_08051E50: .4byte 0x081CBEA4
_08051E54: .4byte 0x0820A0DC
_08051E58: .4byte 0xFFFF0000
_08051E5C: .4byte 0xFFFD0000

	thumb_func_start sub_08051E60
sub_08051E60: @ 0x08051E60
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _08051E88 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08051E8C @ =0x000004BE
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08051E90
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bhi _08051E7E
	b _080520F4
_08051E7E:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08021278
	b _080520F4
	.align 2, 0
_08051E88: .4byte gEwramData
_08051E8C: .4byte 0x000004BE
_08051E90:
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bls _08051E98
	b _0805200C
_08051E98:
	lsls r0, r0, #2
	ldr r1, _08051EA4 @ =_08051EA8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08051EA4: .4byte _08051EA8
_08051EA8: @ jump table
	.4byte _08051EBC @ case 0
	.4byte _08051F4A @ case 1
	.4byte _08051F7C @ case 2
	.4byte _08051F94 @ case 3
	.4byte _08051FBA @ case 4
_08051EBC:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _08051ED2
	adds r0, r4, #0
	bl sub_08000E14
	b _080520F4
_08051ED2:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0xc
	strb r0, [r1]
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
	strb r0, [r2]
	ldr r0, _08051F70 @ =sub_080527E4
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_08002188
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_080021A8
	strh r0, [r4, #0x1a]
	ldrh r1, [r4, #0x18]
	strh r1, [r4, #0x1c]
	strh r0, [r4, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x48]
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r1, _08051F74 @ =0x103000E8
	adds r0, r4, #0
	bl sub_080428F0
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	strb r0, [r4, #0xa]
_08051F4A:
	adds r2, r4, #0
	adds r2, #0x65
	movs r0, #0
	strb r0, [r2]
	ldr r0, [r4, #0x24]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r4, #0x24]
	ldr r1, _08051F78 @ =0x0000FFFF
	cmp r0, r1
	ble _0805200C
	movs r1, #2
	strb r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x24]
	strb r1, [r4, #0xa]
	b _0805200C
	.align 2, 0
_08051F70: .4byte sub_080527E4
_08051F74: .4byte 0x103000E8
_08051F78: .4byte 0x0000FFFF
_08051F7C:
	adds r0, r4, #0
	movs r1, #2
	bl sub_08051BF8
	cmp r0, #0
	bne _0805200C
	movs r0, #3
	strb r0, [r4, #0xa]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	b _0805200C
_08051F94:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08051BF8
	cmp r0, #0
	beq _0805200C
	ldr r1, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #0xb
	cmp r1, r0
	ble _08051FAE
	movs r0, #4
	b _0805200A
_08051FAE:
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xa]
	str r1, [r4, #0x4c]
	str r1, [r4, #0x54]
	b _0805200C
_08051FBA:
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
	beq _08051FDE
	adds r0, r4, #0
	bl sub_08051CC4
	movs r0, #0xac
	bl sub_080D7910
_08051FDE:
	movs r0, #0
	str r0, [r4, #0x24]
	strh r0, [r4, #0x20]
	str r0, [r4, #0x4c]
	str r0, [r4, #0x54]
	ldr r0, _08052068 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0805206C @ =0x0000A094
	adds r2, r2, r0
	ldrh r0, [r4, #0x18]
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r0, [r4, #0x1a]
	ldrh r1, [r2, #0xa]
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	movs r0, #1
_0805200A:
	strb r0, [r4, #0xa]
_0805200C:
	ldr r6, _08052068 @ =gEwramData
	ldr r0, [r6]
	ldr r1, _08052070 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r2, [r0, #0x44]
	adds r0, r4, #0
	bl sub_0806E3F8
	adds r5, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #0xc
	cmp r5, r0
	ble _0805202C
	adds r5, r0, #0
_0805202C:
	ldr r0, [r6]
	ldr r1, _08052070 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r4, #0x40]
	cmp r1, r0
	bge _0805203E
	rsbs r5, r5, #0
_0805203E:
	movs r1, #0x20
	ldrsh r0, [r4, r1]
	movs r7, #0xc
	cmp r0, #0
	bne _0805204A
	movs r7, #0xa
_0805204A:
	movs r1, #0x20
	ldrsh r0, [r4, r1]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	adds r1, r0, #0
	cmp r5, #0
	bge _08052074
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _08052076
	.align 2, 0
_08052068: .4byte gEwramData
_0805206C: .4byte 0x0000A094
_08052070: .4byte 0x00013110
_08052074:
	asrs r0, r5, #0x10
_08052076:
	adds r6, r0, #0
	muls r6, r1, r6
	movs r1, #0x20
	ldrsh r0, [r4, r1]
	bl sub_080009E4
	adds r1, r0, #0
	cmp r5, #0
	bge _08052090
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _08052092
_08052090:
	asrs r0, r5, #0x10
_08052092:
	adds r2, r0, #0
	muls r2, r1, r2
	rsbs r1, r7, #0
	lsls r5, r7, #0x10
	cmp r6, #0
	bge _080520A6
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	subs r1, r1, r0
	b _080520AA
_080520A6:
	asrs r0, r6, #0x10
	adds r1, r1, r0
_080520AA:
	movs r0, #0xff
	ands r1, r0
	movs r3, #0xff
	lsls r5, r5, #1
	cmp r2, #0
	bge _080520BE
	rsbs r0, r2, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080520C0
_080520BE:
	asrs r0, r2, #0x10
_080520C0:
	ands r0, r3
	lsls r0, r0, #8
	adds r0, r1, r0
	adds r0, r0, r5
	movs r1, #0xa0
	lsls r1, r1, #0x15
	adds r1, r0, r1
	adds r0, r4, #0
	bl sub_080428F0
	movs r1, #0x20
	ldrsh r0, [r4, r1]
	ldr r2, [r4, #0x24]
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
_080520F4:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080520FC
sub_080520FC: @ 0x080520FC
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, _08052150 @ =gEwramData
	ldr r3, [r0]
	ldr r0, _08052154 @ =0x0000A094
	adds r3, r3, r0
	movs r5, #6
	ldrsh r0, [r3, r5]
	subs r1, r1, r0
	lsls r5, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #0xa
	ldrsh r0, [r3, r1]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	movs r0, #0x80
	lsls r0, r0, #0xb
	adds r2, r2, r0
	ldr r0, [r4, #0x44]
	subs r0, r0, r2
	ldr r1, _08052158 @ =0x0007FFFF
	cmp r0, r1
	bhi _0805214A
	ldr r0, [r4, #0x40]
	subs r0, r0, r5
	movs r1, #0xc0
	lsls r1, r1, #0xd
	adds r2, r0, r1
	movs r0, #0xc0
	lsls r0, r0, #0xe
	cmp r2, r0
	bhi _0805214A
	movs r0, #0x80
	lsls r0, r0, #0xc
	cmp r2, r0
	bls _0805215C
_0805214A:
	movs r0, #0
	b _08052176
	.align 2, 0
_08052150: .4byte gEwramData
_08052154: .4byte 0x0000A094
_08052158: .4byte 0x0007FFFF
_0805215C:
	ldrh r1, [r4, #0x14]
	movs r0, #2
	orrs r0, r1
	strh r0, [r4, #0x14]
	cmp r2, #0
	bge _08052174
	rsbs r0, r2, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _08052176
_08052174:
	asrs r0, r2, #0x10
_08052176:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08052180
sub_08052180: @ 0x08052180
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, _080521D0 @ =gEwramData
	ldr r3, [r0]
	ldr r0, _080521D4 @ =0x0000A094
	adds r3, r3, r0
	movs r5, #6
	ldrsh r0, [r3, r5]
	subs r1, r1, r0
	lsls r5, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #0xa
	ldrsh r0, [r3, r1]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	movs r0, #0x80
	lsls r0, r0, #0xb
	adds r2, r2, r0
	ldr r0, [r4, #0x44]
	subs r0, r0, r2
	ldr r1, _080521D8 @ =0x0007FFFF
	cmp r0, r1
	bhi _080521CC
	ldr r0, [r4, #0x40]
	subs r2, r0, r5
	movs r5, #0xc0
	lsls r5, r5, #0xd
	adds r1, r2, r5
	movs r0, #0xc0
	lsls r0, r0, #0xe
	cmp r1, r0
	bhi _080521CC
	ldr r0, _080521DC @ =0x0027FFFF
	cmp r1, r0
	bhi _080521E0
_080521CC:
	movs r0, #0
	b _080521FA
	.align 2, 0
_080521D0: .4byte gEwramData
_080521D4: .4byte 0x0000A094
_080521D8: .4byte 0x0007FFFF
_080521DC: .4byte 0x0027FFFF
_080521E0:
	ldrh r1, [r4, #0x14]
	movs r0, #1
	orrs r0, r1
	strh r0, [r4, #0x14]
	ldr r1, _08052204 @ =0xFFE80000
	adds r0, r2, r1
	cmp r0, #0
	bge _080521F8
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
_080521F8:
	asrs r0, r0, #0x10
_080521FA:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08052204: .4byte 0xFFE80000

	thumb_func_start sub_08052208
sub_08052208: @ 0x08052208
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	str r1, [sp]
	adds r0, #0x4e
	ldrh r6, [r0]
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
	movs r1, #7
	bl sub_08021278
	adds r0, r5, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	bl sub_080021A8
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	bne _08052258
	movs r6, #8
_08052258:
	lsls r4, r4, #0x10
	asrs r0, r4, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r6, #0x10
	asrs r6, r2, #0x10
	adds r1, r1, r6
	ldr r2, [sp]
	bl sub_08001E58
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov sb, r1
	asrs r0, r0, #0x10
	mov r8, r4
	cmp r0, #0
	beq _0805228E
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x44]
	adds r1, r1, r0
	str r1, [r5, #0x44]
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	bne _0805228E
	lsls r0, r6, #0x10
	adds r0, r1, r0
	str r0, [r5, #0x44]
_0805228E:
	movs r4, #8
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bge _0805229C
	rsbs r0, r4, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0805229C:
	adds r0, r5, #0
	bl sub_080021A8
	adds r0, #8
	movs r6, #0
	movs r7, #0
	mov r2, sb
	lsls r2, r2, #0x10
	str r2, [sp, #4]
	lsls r4, r4, #0x10
	str r4, [sp, #8]
	mov r1, r8
	asrs r1, r1, #0x10
	mov sl, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
	asrs r4, r4, #0x10
	mov r8, r4
_080522C2:
	lsls r0, r6, #0x10
	asrs r4, r0, #0x10
	mov r2, sb
	adds r1, r2, r4
	mov r0, sl
	add r0, r8
	ldr r2, [sp]
	bl sub_08001E58
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _080522E6
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _080522F4
_080522E6:
	adds r0, r4, #0
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r7, #1
	cmp r7, #1
	ble _080522C2
_080522F4:
	lsls r0, r2, #0x10
	cmp r0, #0
	beq _08052328
	lsrs r1, r0, #0x10
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	bne _0805230A
	lsls r0, r1, #0x10
	ldr r1, _0805233C @ =0xFFF80000
	adds r0, r0, r1
	lsrs r1, r0, #0x10
_0805230A:
	ldr r2, [sp, #8]
	asrs r0, r2, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	adds r2, r0, #0
	adds r0, r5, #0
	adds r0, #0x20
	movs r1, #0x80
	lsls r1, r1, #3
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080686CC
_08052328:
	ldr r1, [sp, #4]
	asrs r0, r1, #0x10
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805233C: .4byte 0xFFF80000

	thumb_func_start sub_08052340
sub_08052340: @ 0x08052340
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080523F6
	cmp r0, #1
	bgt _08052356
	cmp r0, #0
	beq _08052364
	b _08052548
_08052356:
	cmp r0, #2
	bne _0805235C
	b _08052460
_0805235C:
	cmp r0, #3
	bne _08052362
	b _080524C8
_08052362:
	b _08052548
_08052364:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _08052374
	b _0805253C
_08052374:
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0xc
	strb r0, [r1]
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
	strb r0, [r2]
	ldr r0, _0805241C @ =sub_080527E4
	str r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x65
	movs r4, #2
	movs r0, #2
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_08002188
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl sub_080021A8
	strh r0, [r5, #0x1a]
	ldrh r1, [r5, #0x18]
	strh r1, [r5, #0x1c]
	strh r0, [r5, #0x1e]
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r1, _08052420 @ =0x102EFEE8
	adds r0, r5, #0
	bl sub_080428F0
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r0, [r2]
	orrs r0, r4
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08052424 @ =0x08118578
	adds r0, r5, #0
	bl sub_08022088
	movs r0, #1
	strb r0, [r5, #0xa]
_080523F6:
	ldrh r0, [r5, #0x14]
	movs r4, #1
	ands r4, r0
	cmp r4, #0
	beq _08052428
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bne _0805240E
	movs r0, #0x9b
	lsls r0, r0, #1
	bl sub_08013D60
_0805240E:
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r5, #0x48]
	b _08052438
	.align 2, 0
_0805241C: .4byte sub_080527E4
_08052420: .4byte 0x102EFEE8
_08052424: .4byte 0x08118578
_08052428:
	ldr r0, [r5, #0x48]
	cmp r0, #0
	beq _08052436
	movs r0, #0x9b
	lsls r0, r0, #1
	bl sub_08013E18
_08052436:
	str r4, [r5, #0x48]
_08052438:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08052208
	movs r1, #0x20
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0805244A
	b _08052548
_0805244A:
	movs r0, #0x9b
	lsls r0, r0, #1
	bl sub_08013D60
	movs r0, #0
	strh r0, [r5, #0x20]
	movs r0, #2
	strb r0, [r5, #0xa]
	movs r0, #8
	strb r0, [r5, #0xd]
	b _08052548
_08052460:
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _08052474
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08052474
	bl sub_080220B4
_08052474:
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	ldr r2, [r5, #0x48]
	ldr r0, _080524C0 @ =0x0007FFFF
	cmp r2, r0
	bgt _08052490
	movs r1, #0x20
	ldrsh r0, [r5, r1]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r0, r2, r0
	str r0, [r5, #0x48]
_08052490:
	ldr r0, [r5, #0x48]
	str r0, [r5, #0x4c]
	adds r0, r5, #0
	movs r1, #0
	bl sub_08052208
	movs r2, #0x20
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bge _08052548
	movs r0, #0x9b
	lsls r0, r0, #1
	bl sub_08013E18
	movs r0, #3
	strb r0, [r5, #0xa]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r5, #0x54]
	ldr r0, [r5, #0x4c]
	ldr r1, _080524C4 @ =0xFFF8C000
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	b _08052548
	.align 2, 0
_080524C0: .4byte 0x0007FFFF
_080524C4: .4byte 0xFFF8C000
_080524C8:
	ldr r1, [r5, #0x48]
	ldr r0, _08052544 @ =0x0007FFFF
	cmp r1, r0
	bgt _080524D8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r1, r2
	str r0, [r5, #0x48]
_080524D8:
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
	movs r1, #7
	bl sub_08021278
	adds r0, r5, #0
	adds r0, #0x20
	movs r2, #0xe0
	lsls r2, r2, #8
	movs r1, #0x80
	bl sub_080686CC
	adds r0, r5, #0
	bl sub_08002188
	adds r4, r0, #0
	adds r4, #0x1a
	adds r0, r5, #0
	bl sub_080021A8
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	bl sub_080020D8
	cmp r0, #0
	beq _08052548
	adds r0, r5, #0
	bl sub_08051CC4
	movs r0, #0xac
	bl sub_080D7910
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_0805253C:
	adds r0, r5, #0
	bl sub_08000E14
	b _0805261E
	.align 2, 0
_08052544: .4byte 0x0007FFFF
_08052548:
	movs r4, #0
	strh r4, [r5, #0x14]
	movs r1, #0x20
	ldrsh r0, [r5, r1]
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
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bls _0805261E
	ldr r6, _080525C0 @ =gEwramData
	ldr r0, [r6]
	ldr r2, _080525C4 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r2, [r0, #0x44]
	adds r0, r5, #0
	bl sub_0806E3F8
	adds r4, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #0xc
	cmp r4, r0
	ble _08052592
	adds r4, r0, #0
_08052592:
	ldr r0, [r6]
	ldr r1, _080525C4 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r5, #0x40]
	cmp r1, r0
	bge _080525A4
	rsbs r4, r4, #0
_080525A4:
	movs r2, #0x20
	ldrsh r0, [r5, r2]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	adds r1, r0, #0
	cmp r4, #0
	bge _080525C8
	rsbs r0, r4, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080525CA
	.align 2, 0
_080525C0: .4byte gEwramData
_080525C4: .4byte 0x00013110
_080525C8:
	asrs r0, r4, #0x10
_080525CA:
	adds r6, r0, #0
	muls r6, r1, r6
	movs r2, #0x20
	ldrsh r0, [r5, r2]
	bl sub_080009E4
	adds r1, r0, #0
	cmp r4, #0
	bge _080525E4
	rsbs r0, r4, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080525E6
_080525E4:
	asrs r0, r4, #0x10
_080525E6:
	muls r1, r0, r1
	cmp r6, #0
	bge _080525F4
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080525F6
_080525F4:
	asrs r0, r6, #0x10
_080525F6:
	adds r2, r0, #0
	subs r2, #8
	movs r0, #0xff
	ands r2, r0
	cmp r1, #0
	bge _0805260A
	rsbs r0, r1, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0805260C
_0805260A:
	asrs r0, r1, #0x10
_0805260C:
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #8
	adds r0, r2, r0
	ldr r1, _08052628 @ =0x14140000
	adds r1, r0, r1
	adds r0, r5, #0
	bl sub_080428F0
_0805261E:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08052628: .4byte 0x14140000

	thumb_func_start sub_0805262C
sub_0805262C: @ 0x0805262C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r1, #0x80
	rsbs r1, r1, #0
	movs r2, #0x40
	rsbs r2, r2, #0
	movs r3, #0xf8
	lsls r3, r3, #1
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [sp]
	adds r0, r5, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _08052670
	adds r0, r5, #0
	movs r1, #3
	bl sub_08021278
	ldr r0, _08052680 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08052684 @ =0x00013190
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, r5
	bne _08052670
	adds r0, r5, #0
	adds r0, #0x40
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl sub_0802138C
_08052670:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _08052708
	cmp r0, #1
	bgt _08052688
	cmp r0, #0
	beq _0805268E
	b _080527D2
	.align 2, 0
_08052680: .4byte gEwramData
_08052684: .4byte 0x00013190
_08052688:
	cmp r0, #2
	beq _08052730
	b _080527D2
_0805268E:
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0xc
	strb r0, [r1]
	adds r1, #9
	movs r4, #2
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08052728 @ =sub_080527E4
	str r0, [r5, #4]
	adds r0, r5, #0
	bl sub_08002188
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl sub_080021A8
	strh r0, [r5, #0x1a]
	ldrh r1, [r5, #0x18]
	strh r1, [r5, #0x1c]
	strh r0, [r5, #0x1e]
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r1, _0805272C @ =0x103000E8
	adds r0, r5, #0
	bl sub_080428F0
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r0, [r2]
	orrs r0, r4
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	bl RandomNumberGenerator
	movs r4, #1
	ands r0, r4
	cmp r0, #0
	beq _080526FA
	movs r0, #0x80
	lsls r0, r0, #8
	strh r0, [r5, #0x24]
_080526FA:
	bl RandomNumberGenerator
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x40
	strh r0, [r5, #0x26]
	strb r4, [r5, #0xa]
_08052708:
	ldrh r0, [r5, #0x26]
	ldrh r1, [r5, #0x24]
	adds r0, r0, r1
	strh r0, [r5, #0x24]
	movs r2, #0x24
	ldrsh r0, [r5, r2]
	bl sub_080009E4
	movs r1, #3
	bl __divsi3
	str r0, [r5, #0x48]
	ldr r1, [r5, #0x40]
	adds r1, r1, r0
	str r1, [r5, #0x40]
	b _080527D2
	.align 2, 0
_08052728: .4byte sub_080527E4
_0805272C: .4byte 0x103000E8
_08052730:
	adds r3, r5, #0
	adds r3, #0x42
	ldr r2, _0805275C @ =gEwramData
	ldr r0, [r2]
	ldr r1, _08052760 @ =0x0000A094
	adds r0, r0, r1
	ldrh r1, [r0, #6]
	ldrh r3, [r3]
	adds r1, r1, r3
	adds r0, r5, #0
	adds r0, #0x4a
	ldrh r0, [r0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bge _08052768
	lsls r0, r1, #0x10
	ldr r1, _08052764 @ =0xFFE80000
	b _0805276E
	.align 2, 0
_0805275C: .4byte gEwramData
_08052760: .4byte 0x0000A094
_08052764: .4byte 0xFFE80000
_08052768:
	lsls r0, r1, #0x10
	movs r1, #0xc0
	lsls r1, r1, #0xd
_0805276E:
	adds r0, r0, r1
	lsrs r1, r0, #0x10
	adds r3, r5, #0
	adds r3, #0x46
	ldr r0, [r2]
	ldr r2, _080527DC @ =0x0000A094
	adds r0, r0, r2
	ldrh r0, [r0, #0xa]
	ldrh r3, [r3]
	adds r0, r0, r3
	lsls r1, r1, #0x10
	asrs r6, r1, #0x10
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080020A0
	cmp r0, #0
	beq _080527AE
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08001F3C
	cmp r0, #0
	bne _080527AE
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r5, #0x48]
_080527AE:
	adds r0, r5, #0
	movs r1, #0x50
	bl sub_0806D490
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r5, #0
	bl sub_0806D3D8
	ldr r1, [r5, #0x48]
	cmp r1, #0
	bge _080527C8
	rsbs r1, r1, #0
_080527C8:
	ldr r0, _080527E0 @ =0x000007FF
	cmp r1, r0
	bgt _080527D2
	movs r0, #1
	strb r0, [r5, #0xa]
_080527D2:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080527DC: .4byte 0x0000A094
_080527E0: .4byte 0x000007FF

	thumb_func_start sub_080527E4
sub_080527E4: @ 0x080527E4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x40]
	ldr r6, [r4, #0x44]
	ldr r0, _0805282C @ =gEwramData
	ldr r2, [r0]
	ldr r0, _08052830 @ =0x0000A094
	adds r2, r2, r0
	ldrh r0, [r4, #0x1c]
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r0, [r4, #0x1e]
	ldrh r1, [r2, #0xa]
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_0803B9D0
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	adds r0, r4, #0
	bl sub_08002188
	strh r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_080021A8
	strh r0, [r4, #0x1e]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805282C: .4byte gEwramData
_08052830: .4byte 0x0000A094

	thumb_func_start sub_08052834
sub_08052834: @ 0x08052834
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	bl sub_0806D490
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D3D8
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _08052860
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_08052860:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08052868
sub_08052868: @ 0x08052868
	movs r0, #0
	bx lr

	thumb_func_start sub_0805286C
sub_0805286C: @ 0x0805286C
	movs r0, #0
	bx lr

	thumb_func_start sub_08052870
sub_08052870: @ 0x08052870
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _08052894 @ =0x081CBEA4
	ldr r2, _08052898 @ =0x0820A0DC
	ldr r0, _0805289C @ =0x08210B60
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080528A0
	adds r0, r4, #0
	bl sub_08000E14
	b _080528BC
	.align 2, 0
_08052894: .4byte 0x081CBEA4
_08052898: .4byte 0x0820A0DC
_0805289C: .4byte 0x08210B60
_080528A0:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_080528BC:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080528C4
sub_080528C4: @ 0x080528C4
	push {lr}
	ldr r2, _080528DC @ =0x08526408
	movs r3, #0x30
	ldrsh r1, [r0, r3]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_080528DC: .4byte 0x08526408

	thumb_func_start sub_080528E0
sub_080528E0: @ 0x080528E0
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r5, [r4, #0x14]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0805292A
	ldr r1, _0805290C @ =0x081CBEE4
	ldr r2, _08052910 @ =0x0820A1C4
	ldr r0, _08052914 @ =0x082115F8
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #8
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08052918
	adds r0, r4, #0
	bl sub_08000E14
	b _08052964
	.align 2, 0
_0805290C: .4byte 0x081CBEE4
_08052910: .4byte 0x0820A1C4
_08052914: .4byte 0x082115F8
_08052918:
	adds r0, r4, #0
	adds r0, #0x65
	movs r2, #1
	strb r2, [r0]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x1f
	strb r0, [r1]
	strb r2, [r4, #0xa]
_0805292A:
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	ldr r1, [r5, #0x1c]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	str r0, [r4, #0x48]
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	bl sub_080009E4
	ldr r1, [r5, #0x1c]
	asrs r0, r0, #8
	asrs r1, r1, #8
	adds r2, r0, #0
	muls r2, r1, r2
	str r2, [r4, #0x4c]
	ldr r0, [r5, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	adds r0, r0, r2
	str r0, [r4, #0x44]
_08052964:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0805296C
sub_0805296C: @ 0x0805296C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _080529B0 @ =0x081CBEE4
	ldr r2, _080529B4 @ =0x0820A1C4
	ldr r0, _080529B8 @ =0x082115F8
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #8
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080529A6
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0
	strb r0, [r1]
	subs r1, #9
	movs r0, #0x1f
	strb r0, [r1]
	ldr r2, _080529BC @ =sub_080528E0
	movs r0, #0x1b
	movs r1, #0x48
	bl sub_08000DA0
	adds r2, r0, #0
	cmp r2, #0
	bne _080529C0
_080529A6:
	adds r0, r4, #0
	bl sub_08000E14
	b _08052A2C
	.align 2, 0
_080529B0: .4byte 0x081CBEE4
_080529B4: .4byte 0x0820A1C4
_080529B8: .4byte 0x082115F8
_080529BC: .4byte sub_080528E0
_080529C0:
	adds r3, r2, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	str r4, [r2, #0x14]
	movs r0, #0xc0
	lsls r0, r0, #7
	strh r0, [r4, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0xe
	str r0, [r4, #0x1c]
	ldr r5, _08052A20 @ =gEwramData
	ldr r2, [r5]
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x14
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	cmp r0, r1
	bne _08052A28
	movs r0, #4
	strb r0, [r4, #0xa]
	ldr r0, _08052A24 @ =0x0000042C
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	movs r0, #0
	bl sub_0800C5A8
	ldr r1, [r5]
	movs r0, #0xd2
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x14
	orrs r0, r2
	str r0, [r1]
	b _08052A2C
	.align 2, 0
_08052A20: .4byte gEwramData
_08052A24: .4byte 0x0000042C
_08052A28:
	movs r0, #1
	strb r0, [r4, #0xa]
_08052A2C:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08052A34
sub_08052A34: @ 0x08052A34
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	ldrb r4, [r6, #0xa]
	cmp r4, #2
	beq _08052AB8
	cmp r4, #2
	bgt _08052A4A
	cmp r4, #1
	beq _08052A56
	b _08052C0E
_08052A4A:
	cmp r4, #3
	beq _08052B34
	cmp r4, #4
	bne _08052A54
	b _08052BCC
_08052A54:
	b _08052C0E
_08052A56:
	ldr r5, _08052AAC @ =gEwramData
	ldr r0, [r5]
	ldr r1, _08052AB0 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x10
	str r1, [sp]
	movs r1, #0x60
	movs r2, #0x7f
	movs r3, #0x20
	bl sub_08068AD4
	cmp r0, #0
	bne _08052A74
	b _08052C0E
_08052A74:
	ldr r0, [r5]
	ldrh r1, [r0, #0x1c]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08052A82
	b _08052C0E
_08052A82:
	bl sub_08021304
	cmp r0, #0
	beq _08052A8C
	b _08052C0E
_08052A8C:
	movs r0, #2
	strb r0, [r6, #0xa]
	ldr r1, [r5]
	ldr r0, _08052AB4 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	orrs r0, r4
	str r0, [r1]
	movs r0, #0
	bl sub_0800C5A8
	movs r0, #1
	movs r1, #0
	bl sub_080009A0
	b _08052C0E
	.align 2, 0
_08052AAC: .4byte gEwramData
_08052AB0: .4byte 0x00013110
_08052AB4: .4byte 0x0000042C
_08052AB8:
	ldr r1, [r6, #0x1c]
	movs r0, #0x90
	lsls r0, r0, #0xc
	cmp r1, r0
	ble _08052ACC
	movs r0, #1
	movs r1, #0
	bl sub_080009A0
	b _08052ADC
_08052ACC:
	ldr r0, _08052B24 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08052B28 @ =0x0001339A
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #1
	bl sub_080009A0
_08052ADC:
	ldrh r0, [r6, #0x18]
	adds r0, #0x40
	movs r7, #0
	strh r0, [r6, #0x18]
	ldr r1, [r6, #0x1c]
	cmp r1, #0
	beq _08052B30
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r1, r0
	bne _08052B18
	movs r5, #0x80
	lsls r5, r5, #9
	str r7, [sp]
	movs r4, #0x40
	str r4, [sp, #4]
	movs r0, #0x1f
	movs r1, #7
	movs r2, #7
	adds r3, r5, #0
	bl sub_0803D18C
	str r7, [sp]
	str r4, [sp, #4]
	movs r0, #0x1f
	movs r1, #7
	movs r2, #7
	adds r3, r5, #0
	bl sub_0803CDF0
_08052B18:
	ldr r0, [r6, #0x1c]
	ldr r1, _08052B2C @ =0xFFFFC000
	adds r0, r0, r1
	str r0, [r6, #0x1c]
	b _08052C0E
	.align 2, 0
_08052B24: .4byte gEwramData
_08052B28: .4byte 0x0001339A
_08052B2C: .4byte 0xFFFFC000
_08052B30:
	movs r0, #3
	b _08052C0C
_08052B34:
	ldr r0, _08052B60 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08052B64 @ =0x0001339A
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #1
	bl sub_080009A0
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bne _08052B6C
	ldr r0, _08052B68 @ =0x0852320C
	movs r1, #0x50
	str r1, [sp]
	movs r1, #0
	movs r2, #0
	movs r3, #0x78
	bl sub_08011F44
	b _08052B7C
	.align 2, 0
_08052B60: .4byte gEwramData
_08052B64: .4byte 0x0001339A
_08052B68: .4byte 0x0852320C
_08052B6C:
	ldr r0, _08052BC0 @ =0x08517B70
	movs r1, #0x50
	str r1, [sp]
	movs r1, #0
	movs r2, #0
	movs r3, #0x78
	bl sub_08011F44
_08052B7C:
	ldr r4, _08052BC4 @ =gEwramData
	ldr r0, [r4]
	adds r0, #0x60
	bl sub_08011AD0
	ldr r1, [r4]
	ldr r0, _08052BC8 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #2
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1]
	movs r5, #0x80
	lsls r5, r5, #9
	str r5, [sp]
	movs r4, #8
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
	b _08052C0E
	.align 2, 0
_08052BC0: .4byte 0x08517B70
_08052BC4: .4byte gEwramData
_08052BC8: .4byte 0x0000042C
_08052BCC:
	movs r0, #0
	bl sub_0800C5A8
	ldr r4, _08052C18 @ =gEwramData
	ldr r0, [r4]
	ldr r1, _08052C1C @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r6, #0x40]
	movs r2, #0x20
	cmp r0, r1
	ble _08052BE8
	movs r2, #0x10
_08052BE8:
	movs r0, #1
	adds r1, r2, #0
	bl sub_080009A0
	ldr r0, [r4]
	ldr r1, _08052C1C @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x10
	str r1, [sp]
	movs r1, #0x70
	movs r2, #0x7f
	movs r3, #0x10
	bl sub_08068AD4
	cmp r0, #0
	beq _08052C0E
	movs r0, #2
_08052C0C:
	strb r0, [r6, #0xa]
_08052C0E:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08052C18: .4byte gEwramData
_08052C1C: .4byte 0x00013110

	thumb_func_start sub_08052C20
sub_08052C20: @ 0x08052C20
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r5, [r4, #0xa]
	cmp r5, #1
	beq _08052CA0
	cmp r5, #1
	bgt _08052C36
	cmp r5, #0
	beq _08052C3C
	b _08052CD0
_08052C36:
	cmp r5, #2
	beq _08052CB8
	b _08052CD0
_08052C3C:
	ldr r1, _08052C5C @ =0x0825E084
	ldr r2, _08052C60 @ =0x0825E890
	ldr r0, _08052C64 @ =0x0825EA70
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08052C68
	adds r0, r4, #0
	bl sub_08000E14
	b _08052CDA
	.align 2, 0
_08052C5C: .4byte 0x0825E084
_08052C60: .4byte 0x0825E890
_08052C64: .4byte 0x0825EA70
_08052C68:
	ldrb r0, [r4, #0xb]
	ldr r1, _08052C98 @ =0x0852645C
	cmp r0, #0
	bne _08052C72
	ldr r1, _08052C9C @ =0x08526448
_08052C72:
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F0E4
	ldrb r1, [r4, #0xb]
	movs r0, #0x11
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	b _08052CB0
	.align 2, 0
_08052C98: .4byte 0x0852645C
_08052C9C: .4byte 0x08526448
_08052CA0:
	adds r0, r4, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _08052CD0
	movs r0, #8
	strb r0, [r4, #0xd]
	strb r5, [r4, #0xf]
_08052CB0:
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _08052CD0
_08052CB8:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _08052CC4
	subs r0, #1
	strb r0, [r4, #0xd]
	b _08052CD0
_08052CC4:
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_08052CD0:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D3D8
_08052CDA:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08052CE4
sub_08052CE4: @ 0x08052CE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r7, r0, #0
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r1, sp, #8
	movs r0, #0x80
	strh r0, [r1, #8]
	movs r0, #0x50
	strh r0, [r1, #0xa]
	ldr r0, [r7, #0x20]
	strh r0, [r1, #0x10]
	ldr r1, [r7, #0x24]
	adds r0, r0, r1
	str r0, [r7, #0x20]
	ldrb r0, [r7, #0xa]
	cmp r0, #4
	bls _08052D0E
	b _08052E96
_08052D0E:
	lsls r0, r0, #2
	ldr r1, _08052D18 @ =_08052D1C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08052D18: .4byte _08052D1C
_08052D1C: @ jump table
	.4byte _08052D30 @ case 0
	.4byte _08052D64 @ case 1
	.4byte _08052DC0 @ case 2
	.4byte _08052DE0 @ case 3
	.4byte _08052E56 @ case 4
_08052D30:
	ldr r0, _08052D5C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08052D60 @ =0x0000042C
	adds r2, r0, r1
	ldr r1, [r2]
	movs r4, #1
	adds r0, r1, #0
	ands r0, r4
	cmp r0, #0
	bne _08052D46
	b _08052E96
_08052D46:
	orrs r1, r4
	str r1, [r2]
	movs r0, #0
	bl sub_0800C5A8
	movs r0, #1
	movs r1, #0
	bl sub_080009A0
	strb r4, [r7, #0xa]
	b _08052E96
	.align 2, 0
_08052D5C: .4byte gEwramData
_08052D60: .4byte 0x0000042C
_08052D64:
	ldr r4, _08052DB8 @ =gEwramData
	ldr r0, [r4]
	ldr r3, _08052DBC @ =0x00013110
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r7, #0x40]
	movs r2, #0x20
	cmp r0, r1
	ble _08052D7A
	movs r2, #0x10
_08052D7A:
	movs r0, #1
	adds r1, r2, #0
	bl sub_080009A0
	movs r0, #0
	bl sub_0800C5A8
	ldr r0, [r4]
	ldr r1, _08052DBC @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x42
	ldrh r1, [r1]
	subs r1, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, #0x46
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r4, #2
	str r4, [sp]
	adds r0, r7, #0
	movs r3, #0x10
	bl sub_08068AD4
	cmp r0, #0
	beq _08052E96
	strb r4, [r7, #0xa]
	b _08052E96
	.align 2, 0
_08052DB8: .4byte gEwramData
_08052DBC: .4byte 0x00013110
_08052DC0:
	movs r0, #1
	movs r1, #0
	bl sub_080009A0
	bl sub_080235C8
	bl sub_0802DFF0
	movs r0, #3
	strb r0, [r7, #0xa]
	ldr r0, _08052DDC @ =0x00000157
	bl sub_080D7910
	b _08052E96
	.align 2, 0
_08052DDC: .4byte 0x00000157
_08052DE0:
	movs r0, #1
	movs r1, #0
	bl sub_080009A0
	ldr r0, [r7, #0x14]
	cmp r0, #0
	ble _08052E50
	lsls r0, r0, #6
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	cmp r0, #0
	bge _08052E00
	adds r0, #0xf
_08052E00:
	asrs r1, r0, #4
	movs r0, #0x80
	lsls r0, r0, #5
	subs r0, r0, r1
	str r0, [r7, #0x1c]
	ldr r1, [r7, #0x14]
	subs r1, #1
	str r1, [r7, #0x14]
	ldr r0, [r7, #0x24]
	adds r0, #2
	str r0, [r7, #0x24]
	cmp r1, #0x40
	bne _08052E96
	movs r0, #0xd7
	lsls r0, r0, #1
	bl sub_080D7910
	ldr r6, [r7, #0x14]
	cmp r6, #0x40
	bne _08052E96
	movs r5, #0x80
	lsls r5, r5, #9
	movs r4, #0
	str r4, [sp]
	str r6, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	adds r3, r5, #0
	bl sub_0803D18C
	str r4, [sp]
	str r6, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	adds r3, r5, #0
	bl sub_0803CDF0
	b _08052E96
_08052E50:
	movs r0, #4
	strb r0, [r7, #0xa]
	b _08052E96
_08052E56:
	movs r0, #1
	movs r1, #0
	bl sub_080009A0
	ldr r4, _08052F18 @ =gEwramData
	ldr r2, [r4]
	ldr r5, _08052F1C @ =0x0000042C
	adds r2, r2, r5
	ldr r0, [r2]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	ldr r0, _08052F20 @ =0x08522ABC
	movs r1, #0x6f
	str r1, [sp]
	movs r1, #0
	movs r2, #0
	movs r3, #0x78
	bl sub_08011F44
	ldr r0, [r4]
	adds r0, #0x60
	bl sub_08011AD0
	ldr r1, [r4]
	adds r1, r1, r5
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x10
	orrs r0, r2
	str r0, [r1]
_08052E96:
	add r0, sp, #8
	ldr r1, [r7, #0x1c]
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	ldr r1, _08052F24 @ =0x03002C78
	movs r2, #1
	bl BgAffineSet
	ldrb r0, [r7, #0xd]
	adds r0, #1
	strb r0, [r7, #0xd]
	movs r6, #1
	ands r0, r6
	cmp r0, #0
	beq _08052F64
	ldr r2, _08052F28 @ =sub_08052C20
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r5, r0, #0
	cmp r5, #0
	beq _08052F64
	ldr r0, [r7, #0x40]
	str r0, [r5, #0x40]
	movs r0, #8
	bl sub_0802D5EC
	subs r0, #4
	lsls r0, r0, #0x10
	ldr r1, [r7, #0x44]
	adds r1, r1, r0
	str r1, [r5, #0x44]
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_0802D5EC
	ldr r3, _08052F2C @ =0xFFFF8000
	adds r0, r0, r3
	str r0, [r5, #0x4c]
	bl RandomNumberGenerator
	movs r4, #0x3f
	ands r0, r4
	cmp r0, #0x27
	bhi _08052F34
	bl RandomNumberGenerator
	ands r0, r4
	cmp r0, #0xf
	bhi _08052F06
	strb r6, [r5, #0xb]
	ldr r0, [r5, #0x4c]
	ldr r1, _08052F30 @ =0xFFFE4000
	adds r0, r0, r1
	str r0, [r5, #0x4c]
_08052F06:
	movs r0, #4
	bl sub_0802D5EC
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x40]
	adds r1, r1, r0
	str r1, [r5, #0x40]
	b _08052F56
	.align 2, 0
_08052F18: .4byte gEwramData
_08052F1C: .4byte 0x0000042C
_08052F20: .4byte 0x08522ABC
_08052F24: .4byte 0x03002C78
_08052F28: .4byte sub_08052C20
_08052F2C: .4byte 0xFFFF8000
_08052F30: .4byte 0xFFFE4000
_08052F34:
	bl RandomNumberGenerator
	adds r4, r0, #0
	bl RandomNumberGenerator
	movs r1, #7
	ands r1, r4
	lsrs r1, r1, #1
	adds r1, #2
	ands r0, r6
	lsls r0, r0, #1
	subs r0, #1
	muls r1, r0, r1
	lsls r1, r1, #0x10
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
_08052F56:
	ldr r0, [r7, #0x4c]
	rsbs r0, r0, #0
	cmp r0, #0
	bge _08052F60
	adds r0, #0x7f
_08052F60:
	asrs r0, r0, #7
	str r0, [r5, #0x54]
_08052F64:
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08052F6C
sub_08052F6C: @ 0x08052F6C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _08052F94 @ =0x0825E084
	ldr r5, _08052F98 @ =0x0825E890
	ldr r0, _08052F9C @ =0x0825EA70
	str r0, [sp]
	adds r0, r4, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08052FA0
	adds r0, r4, #0
	bl sub_08000E14
	b _08052FCE
	.align 2, 0
_08052F94: .4byte 0x0825E084
_08052F98: .4byte 0x0825E890
_08052F9C: .4byte 0x0825EA70
_08052FA0:
	ldr r1, _08052FD8 @ =0x08526414
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r2, [r0]
	adds r0, r5, #0
	bl sub_0803CC70
	adds r0, r4, #0
	adds r0, #0x65
	movs r2, #0
	strb r2, [r0]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x12
	strb r0, [r1]
	movs r0, #0xf0
	lsls r0, r0, #4
	str r0, [r4, #0x1c]
	str r2, [r4, #0x20]
	movs r0, #0x40
	str r0, [r4, #0x24]
	adds r0, #0xc0
	str r0, [r4, #0x14]
_08052FCE:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08052FD8: .4byte 0x08526414

	thumb_func_start sub_08052FDC
sub_08052FDC: @ 0x08052FDC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x14]
	ldr r0, [r1, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r1, #0x44]
	str r0, [r4, #0x44]
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _08053024
	cmp r0, #1
	bgt _08052FFA
	cmp r0, #0
	beq _08053000
	b _08053050
_08052FFA:
	cmp r0, #2
	beq _0805303C
	b _08053050
_08053000:
	ldrb r5, [r1, #0xa]
	cmp r5, #1
	bne _08053050
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	strb r5, [r4, #0xa]
	b _08053050
_08053024:
	ldrb r0, [r1, #0xa]
	cmp r0, #3
	bne _08053050
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #2
	strb r0, [r4, #0xa]
	b _08053050
_0805303C:
	ldrb r3, [r1, #0xa]
	cmp r3, #0
	bne _08053050
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	strb r3, [r4, #0xa]
_08053050:
	adds r0, r4, #0
	bl sub_0803F17C
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0805305C
sub_0805305C: @ 0x0805305C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r1, _08053084 @ =0x081CBE9C
	ldr r2, _08053088 @ =0x08209FD8
	ldr r0, _0805308C @ =0x08210A90
	str r0, [sp]
	adds r0, r6, #0
	movs r3, #4
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08053090
	adds r0, r6, #0
	bl sub_08000E14
	b _080532C6
	.align 2, 0
_08053084: .4byte 0x081CBE9C
_08053088: .4byte 0x08209FD8
_0805308C: .4byte 0x08210A90
_08053090:
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
	ldr r0, _080530E4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080530E8 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_080021A8
	lsls r0, r0, #0x10
	movs r5, #0
	ldr r2, _080530EC @ =0x08118590
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r1, #0x20
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	movs r7, #0x42
	adds r7, r7, r6
	mov ip, r7
	movs r3, #0x46
	adds r3, r3, r6
	mov r8, r3
	adds r7, r6, #0
	adds r7, #0x59
	cmp r1, r0
	blt _080530F0
	strb r5, [r6, #0xb]
	adds r3, r2, #0
	b _0805310C
	.align 2, 0
_080530E4: .4byte gEwramData
_080530E8: .4byte 0x00013110
_080530EC: .4byte 0x08118590
_080530F0:
	adds r5, #1
	ldr r3, _0805316C @ =0x08118590
	cmp r5, #2
	bgt _0805310C
	lsls r0, r5, #1
	adds r0, r0, r3
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r1, #0x20
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _080530F0
	strb r5, [r6, #0xb]
_0805310C:
	ldr r0, _08053170 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08053174 @ =0x0000A094
	adds r1, r1, r0
	ldrh r2, [r1, #6]
	movs r0, #0x78
	subs r0, r0, r2
	mov r2, ip
	strh r0, [r2]
	ldrb r0, [r6, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	ldrh r1, [r1, #0xa]
	subs r0, r0, r1
	mov r3, r8
	strh r0, [r3]
	ldr r1, _08053178 @ =0x08118598
	adds r0, r6, #0
	bl sub_08022088
	ldrb r0, [r7]
	movs r1, #4
	orrs r0, r1
	strb r0, [r7]
	ldr r2, _0805317C @ =sub_0805366C
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	beq _080531BC
	ldr r1, _08053180 @ =0x081CBE9C
	ldr r2, _08053184 @ =0x08209FD8
	ldr r0, _08053188 @ =0x08210A90
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #4
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805318C
_08053164:
	adds r0, r4, #0
	bl sub_08000E14
	b _080532C6
	.align 2, 0
_0805316C: .4byte 0x08118590
_08053170: .4byte gEwramData
_08053174: .4byte 0x0000A094
_08053178: .4byte 0x08118598
_0805317C: .4byte sub_0805366C
_08053180: .4byte 0x081CBE9C
_08053184: .4byte 0x08209FD8
_08053188: .4byte 0x08210A90
_0805318C:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	str r6, [r4, #0x14]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x44]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x12
	strb r0, [r1]
_080531BC:
	movs r5, #0
_080531BE:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _08053244 @ =sub_08052FDC
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	beq _08053232
	ldr r0, _08053248 @ =0x08210A90
	str r0, [sp]
	adds r0, r4, #0
	ldr r1, _0805324C @ =0x081CBE9C
	ldr r2, _08053250 @ =0x08209FD8
	movs r3, #4
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08053164
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	str r6, [r4, #0x14]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r3, r4, #0
	adds r3, #0x58
	movs r0, #1
	adds r2, r5, #0
	ands r2, r0
	lsls r2, r2, #6
	ldrb r0, [r3]
	movs r7, #0x41
	rsbs r7, r7, #0
	adds r1, r7, #0
	ands r0, r1
	orrs r0, r2
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x44]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
_08053232:
	adds r5, #1
	cmp r5, #1
	ble _080531BE
	movs r5, #0
_0805323A:
	movs r6, #0
	adds r0, r5, #1
	mov r8, r0
	b _080532AC
	.align 2, 0
_08053244: .4byte sub_08052FDC
_08053248: .4byte 0x08210A90
_0805324C: .4byte 0x081CBE9C
_08053250: .4byte 0x08209FD8
_08053254:
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080532D4 @ =0x081185B0
	lsls r1, r5, #1
	adds r1, r1, r0
	ldr r0, _080532D8 @ =gEwramData
	ldr r2, [r0]
	ldr r3, _080532DC @ =0x0000A094
	adds r2, r2, r3
	ldrh r1, [r1]
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x42
	strh r1, [r0]
	ldr r1, _080532E0 @ =0x081185B4
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrh r0, [r2, #0xa]
	subs r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x46
	strh r1, [r0]
	adds r3, r4, #0
	adds r3, #0x58
	movs r0, #1
	adds r1, r5, #0
	ands r1, r0
	lsls r1, r1, #6
	ldrb r0, [r3]
	movs r7, #0x41
	rsbs r7, r7, #0
	adds r2, r7, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r5, #4
	strb r0, [r4, #0xb]
	adds r6, #1
_080532AC:
	cmp r6, #7
	bgt _080532C0
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _080532E4 @ =sub_0805360C
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	bne _08053254
_080532C0:
	mov r5, r8
	cmp r5, #1
	ble _0805323A
_080532C6:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080532D4: .4byte 0x081185B0
_080532D8: .4byte gEwramData
_080532DC: .4byte 0x0000A094
_080532E0: .4byte 0x081185B4
_080532E4: .4byte sub_0805360C

	thumb_func_start sub_080532E8
sub_080532E8: @ 0x080532E8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08053308
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
	bl sub_080220B4
	b _08053536
_08053308:
	ldrb r4, [r5, #0xa]
	cmp r4, #1
	beq _080533E8
	cmp r4, #1
	bgt _08053318
	cmp r4, #0
	beq _08053324
	b _08053524
_08053318:
	cmp r4, #2
	beq _0805340A
	cmp r4, #3
	bne _08053322
	b _08053514
_08053322:
	b _08053524
_08053324:
	bl sub_08021304
	cmp r0, #0
	beq _08053330
	strb r4, [r5, #0x18]
	b _08053524
_08053330:
	ldr r4, _08053364 @ =gEwramData
	ldr r0, [r4]
	ldr r1, _08053368 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x42
	ldrh r1, [r1]
	subs r1, #0x20
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, #0x46
	ldrh r2, [r0]
	subs r2, #0x20
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0x10
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0x40
	bl sub_08068AD4
	cmp r0, #0
	bne _0805336C
	strb r0, [r5, #0x18]
	b _08053524
	.align 2, 0
_08053364: .4byte gEwramData
_08053368: .4byte 0x00013110
_0805336C:
	ldr r0, [r4]
	ldrh r0, [r0, #0x1c]
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0
	beq _08053380
	ldrb r0, [r5, #0x18]
	adds r0, #1
	strb r0, [r5, #0x18]
	b _08053382
_08053380:
	strb r1, [r5, #0x18]
_08053382:
	ldrb r0, [r5, #0x18]
	cmp r0, #2
	bhi _0805338A
	b _08053524
_0805338A:
	ldr r0, _080533E4 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1c]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080533B4
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	bhi _080533B4
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xc]
	movs r0, #1
	strb r0, [r5, #0xa]
	movs r0, #0x20
	strb r0, [r5, #0xd]
	movs r0, #1
	bl sub_080009A0
_080533B4:
	ldr r0, _080533E4 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1c]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080533DE
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _080533DE
	subs r0, #1
	strb r0, [r5, #0xb]
	movs r0, #1
	strb r0, [r5, #0xc]
	strb r0, [r5, #0xa]
	movs r0, #0x40
	strb r0, [r5, #0xd]
	movs r0, #1
	movs r1, #0
	bl sub_080009A0
_080533DE:
	movs r0, #0
	str r0, [r5, #0x4c]
	b _08053524
	.align 2, 0
_080533E4: .4byte gEwramData
_080533E8:
	movs r0, #1
	movs r1, #0
	bl sub_080009A0
	ldrb r0, [r5, #0xd]
	adds r4, r0, #0
	cmp r4, #0
	beq _080533FA
	b _0805351C
_080533FA:
	movs r0, #0x8b
	lsls r0, r0, #1
	bl sub_08013D60
	movs r0, #2
	strb r0, [r5, #0xa]
	str r4, [r5, #0x4c]
	b _08053524
_0805340A:
	movs r0, #1
	movs r1, #0
	bl sub_080009A0
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _08053474
	ldr r0, _08053464 @ =0x0002FFFF
	cmp r1, r0
	bgt _0805342E
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r1, r2
	str r0, [r5, #0x4c]
_0805342E:
	ldr r1, [r5, #0x44]
	ldr r0, [r5, #0x4c]
	adds r1, r1, r0
	ldr r0, _08053468 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0805346C @ =0x0000A094
	adds r0, r0, r2
	ldr r0, [r0, #8]
	adds r0, r1, r0
	cmp r0, #0
	bge _0805344C
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
_0805344C:
	lsrs r2, r0, #0x10
	ldr r0, _08053470 @ =0x08118590
	ldrb r1, [r5, #0xb]
	lsls r1, r1, #1
	adds r1, r1, r0
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r1, r2]
	cmp r0, r1
	blt _08053524
	b _080534B4
	.align 2, 0
_08053464: .4byte 0x0002FFFF
_08053468: .4byte gEwramData
_0805346C: .4byte 0x0000A094
_08053470: .4byte 0x08118590
_08053474:
	ldr r0, _080534FC @ =0xFFFD0000
	cmp r1, r0
	ble _08053480
	ldr r2, _08053500 @ =0xFFFFF000
	adds r0, r1, r2
	str r0, [r5, #0x4c]
_08053480:
	ldr r1, [r5, #0x44]
	ldr r0, [r5, #0x4c]
	adds r1, r1, r0
	ldr r0, _08053504 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08053508 @ =0x0000A094
	adds r0, r0, r2
	ldr r0, [r0, #8]
	adds r0, r1, r0
	cmp r0, #0
	bge _0805349E
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
_0805349E:
	lsrs r2, r0, #0x10
	ldr r0, _0805350C @ =0x08118590
	ldrb r1, [r5, #0xb]
	lsls r1, r1, #1
	adds r1, r1, r0
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r1, r2]
	cmp r0, r1
	bgt _08053524
_080534B4:
	movs r0, #0x8b
	lsls r0, r0, #1
	bl sub_08013E18
	ldr r0, _08053510 @ =0x00000117
	bl sub_080D7910
	movs r0, #0
	movs r1, #0x10
	movs r2, #0
	movs r3, #7
	bl sub_08011FC0
	ldr r1, _0805350C @ =0x08118590
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _08053504 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08053508 @ =0x0000A094
	adds r0, r0, r2
	movs r2, #0xa
	ldrsh r0, [r0, r2]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	str r1, [r5, #0x44]
	movs r0, #0
	str r0, [r5, #0x4c]
	movs r0, #3
	strb r0, [r5, #0xa]
	movs r0, #0x40
	strb r0, [r5, #0xd]
	b _08053524
	.align 2, 0
_080534FC: .4byte 0xFFFD0000
_08053500: .4byte 0xFFFFF000
_08053504: .4byte gEwramData
_08053508: .4byte 0x0000A094
_0805350C: .4byte 0x08118590
_08053510: .4byte 0x00000117
_08053514:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #0
	cmp r1, #0
	beq _08053522
_0805351C:
	subs r0, #1
	strb r0, [r5, #0xd]
	b _08053524
_08053522:
	strb r1, [r5, #0xa]
_08053524:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
_08053536:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08053540
sub_08053540: @ 0x08053540
	push {r4, r5, lr}
	mov ip, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, #0x42
	movs r4, #0
	ldrsh r3, [r0, r4]
	ldr r0, _0805358C @ =gEwramData
	ldr r4, [r0]
	ldr r5, _08053590 @ =0x0000A094
	adds r4, r4, r5
	movs r5, #6
	ldrsh r0, [r4, r5]
	adds r3, r3, r0
	subs r1, r1, r3
	adds r1, #0x40
	mov r0, ip
	adds r0, #0x46
	movs r5, #0
	ldrsh r3, [r0, r5]
	movs r5, #0xa
	ldrsh r0, [r4, r5]
	adds r3, r3, r0
	mov r0, ip
	adds r0, #0x4e
	movs r4, #0
	ldrsh r0, [r0, r4]
	adds r3, r3, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, #0x18
	subs r0, r3, r2
	cmp r1, #0x80
	bhi _08053588
	cmp r0, #0x10
	bls _08053594
_08053588:
	movs r0, #0
	b _08053598
	.align 2, 0
_0805358C: .4byte gEwramData
_08053590: .4byte 0x0000A094
_08053594:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_08053598:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080535a0
sub_080535a0: @ 0x080535A0
	push {r4, r5, r6, lr}
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r3, r0, #0
	adds r3, #0x42
	movs r5, #0
	ldrsh r4, [r3, r5]
	ldr r3, _080535DC @ =gEwramData
	ldr r5, [r3]
	ldr r6, _080535E0 @ =0x0000A094
	adds r5, r5, r6
	movs r6, #6
	ldrsh r3, [r5, r6]
	adds r4, r4, r3
	subs r1, r1, r4
	adds r3, r1, #0
	adds r3, #0x40
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r1, [r0, #0x44]
	ldr r0, [r0, #0x4c]
	adds r1, r1, r0
	ldr r0, [r5, #8]
	adds r0, r1, r0
	cmp r0, #0
	bge _080535E4
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	adds r0, r2, r0
	b _080535E8
	.align 2, 0
_080535DC: .4byte gEwramData
_080535E0: .4byte 0x0000A094
_080535E4:
	asrs r0, r0, #0x10
	subs r0, r2, r0
_080535E8:
	subs r0, #0x1f
	cmp r3, #0x80
	bhi _080535F2
	cmp r0, #0x10
	bls _080535F6
_080535F2:
	movs r0, #0
	b _080535FC
_080535F6:
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_080535FC:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08053604
sub_08053604: @ 0x08053604
	movs r0, #0
	bx lr

	thumb_func_start sub_08053608
sub_08053608: @ 0x08053608
	movs r0, #0
	bx lr

	thumb_func_start sub_0805360C
sub_0805360C: @ 0x0805360C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0805365E
	ldr r1, _08053638 @ =0x081CBE9C
	ldr r2, _0805363C @ =0x08209FD8
	ldr r0, _08053640 @ =0x08210A90
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #4
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08053644
	adds r0, r4, #0
	bl sub_08000E14
	b _08053664
	.align 2, 0
_08053638: .4byte 0x081CBE9C
_0805363C: .4byte 0x08209FD8
_08053640: .4byte 0x08210A90
_08053644:
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
	ldrb r1, [r4, #0xb]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_0805365E:
	adds r0, r4, #0
	bl sub_0803F17C
_08053664:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0805366C
sub_0805366C: @ 0x0805366C
	push {lr}
	ldr r2, [r0, #0x14]
	ldr r1, [r2, #0x40]
	str r1, [r0, #0x40]
	ldr r1, [r2, #0x44]
	str r1, [r0, #0x44]
	bl sub_0803F17C
	pop {r0}
	bx r0

	thumb_func_start sub_08053680
sub_08053680: @ 0x08053680
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r1, #0x3c
	bl sub_0806D490
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r5, #0
	bl sub_0806D3D8
	adds r0, r5, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _08053744 @ =gEwramData
	ldr r2, [r1]
	ldr r3, _08053748 @ =0x0000A094
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
	bl sub_080020A0
	cmp r0, #0
	beq _08053770
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	ldr r2, _0805374C @ =0xFFFC0000
	adds r1, r1, r2
	movs r2, #4
	movs r3, #6
	bl sub_08045CEC
	adds r4, r0, #0
	cmp r4, #0
	beq _08053712
	movs r0, #1
	strb r0, [r4, #0xf]
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_0802D5EC
	adds r1, r0, #0
	ldr r3, _08053750 @ =0xFFFFC000
	adds r0, r1, r3
	str r0, [r4, #0x4c]
	cmp r0, #0
	bge _080536F4
	ldr r2, _08053754 @ =0xFFFFC01F
	adds r0, r1, r2
_080536F4:
	asrs r0, r0, #5
	str r0, [r4, #0x54]
	movs r0, #0x80
	lsls r0, r0, #6
	bl sub_0802D5EC
	ldr r1, [r5, #0x48]
	subs r0, r0, r1
	str r0, [r4, #0x48]
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0805370E
	adds r0, #0x3f
_0805370E:
	asrs r0, r0, #6
	str r0, [r4, #0x50]
_08053712:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	ldr r3, _08053758 @ =0xFFFF0000
	adds r1, r1, r3
	movs r3, #0x80
	lsls r3, r3, #0xb
	adds r2, r5, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	adds r2, r3, #0
	bl sub_0806D5C0
	bl RandomNumberGenerator
	ldr r1, _0805375C @ =0x000003FF
	ands r1, r0
	ldr r0, _08053760 @ =0x000001FF
	cmp r1, r0
	bhi _08053764
	subs r0, #0xa7
	bl sub_080D7910
	b _08053788
	.align 2, 0
_08053744: .4byte gEwramData
_08053748: .4byte 0x0000A094
_0805374C: .4byte 0xFFFC0000
_08053750: .4byte 0xFFFFC000
_08053754: .4byte 0xFFFFC01F
_08053758: .4byte 0xFFFF0000
_0805375C: .4byte 0x000003FF
_08053760: .4byte 0x000001FF
_08053764:
	ldr r0, _0805376C @ =0x00000159
	bl sub_080D7910
	b _08053788
	.align 2, 0
_0805376C: .4byte 0x00000159
_08053770:
	movs r2, #0x20
	rsbs r2, r2, #0
	movs r3, #0x98
	lsls r3, r3, #1
	movs r0, #0xe0
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	bl sub_08068AD4
	cmp r0, #0
	bne _08053794
_08053788:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_08053794:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0805379C
sub_0805379C: @ 0x0805379C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	movs r0, #1
	mov sl, r0
	movs r1, #0
	mov sb, r1
_080537B2:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _080537E4 @ =sub_08053680
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	bne _080537C4
	b _080538C2
_080537C4:
	ldr r0, _080537E8 @ =0x08266C00
	str r0, [sp]
	adds r0, r4, #0
	ldr r1, _080537EC @ =0x0825EAF4
	ldr r2, _080537F0 @ =0x082663E4
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080537F4
	adds r0, r4, #0
	bl sub_08000E14
	b _080538C2
	.align 2, 0
_080537E4: .4byte sub_08053680
_080537E8: .4byte 0x08266C00
_080537EC: .4byte 0x0825EAF4
_080537F0: .4byte 0x082663E4
_080537F4:
	adds r0, r4, #0
	adds r0, #0x65
	mov r2, sl
	strb r2, [r0]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x14
	strb r0, [r1]
	mov r0, r8
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x58
	movs r2, #0x40
	ands r2, r0
	ldrb r0, [r3]
	movs r5, #0x41
	rsbs r5, r5, #0
	adds r1, r5, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	add r7, sp, #4
	mov r0, r8
	mov r1, sb
	adds r2, r7, #0
	bl sub_0806C48C
	mov r1, r8
	adds r1, #0x42
	add r0, sp, #4
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r5, r4, #0
	adds r5, #0x42
	strh r0, [r5]
	mov r1, r8
	adds r1, #0x46
	ldrh r0, [r7, #2]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r6, r4, #0
	adds r6, #0x46
	strh r0, [r6]
	adds r0, r4, #0
	movs r1, #0
	add r2, sp, #4
	bl sub_0806C528
	add r0, sp, #4
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _08053864
	adds r0, #3
_08053864:
	asrs r0, r0, #2
	ldrh r2, [r5]
	adds r0, r0, r2
	strh r0, [r5]
	movs r5, #2
	ldrsh r1, [r7, r5]
	cmp r1, #0
	bge _08053876
	adds r1, #3
_08053876:
	asrs r1, r1, #2
	ldrh r0, [r6]
	subs r0, r0, r1
	strh r0, [r6]
	bl RandomNumberGenerator
	ldr r1, _080538D4 @ =0x0000FFFF
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
	mov r2, r8
	ldr r0, [r2, #0x48]
	muls r0, r1, r0
	str r0, [r4, #0x48]
	movs r0, #0x80
	lsls r0, r0, #0xa
	bl sub_0802D5EC
	ldr r1, _080538D8 @ =0xFFFE0000
	subs r1, r1, r0
	str r1, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r5, #1
	add sb, r5
	add sl, r5
	mov r0, sb
	cmp r0, #3
	bgt _080538C2
	b _080537B2
_080538C2:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080538D4: .4byte 0x0000FFFF
_080538D8: .4byte 0xFFFE0000

	thumb_func_start sub_080538DC
sub_080538DC: @ 0x080538DC
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _08053900 @ =0x0825EAF4
	ldr r2, _08053904 @ =0x082663E4
	ldr r0, _08053908 @ =0x08266C00
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805390C
	adds r0, r5, #0
	bl sub_08000E14
	b _08053956
	.align 2, 0
_08053900: .4byte 0x0825EAF4
_08053904: .4byte 0x082663E4
_08053908: .4byte 0x08266C00
_0805390C:
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x14
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	ldr r3, _08053960 @ =sub_08053B80
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_0804277C
	adds r1, r5, #0
	adds r1, #0x72
	ldrb r0, [r1]
	movs r4, #2
	orrs r0, r4
	strb r0, [r1]
	ldr r1, _08053964 @ =0x1820E8F0
	adds r0, r5, #0
	bl sub_080428F0
	adds r0, r5, #0
	bl sub_0806AF98
	adds r1, r5, #0
	adds r1, #0x59
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
_08053956:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08053960: .4byte sub_08053B80
_08053964: .4byte 0x1820E8F0

	thumb_func_start sub_08053968
sub_08053968: @ 0x08053968
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r5, r0, #0
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r7, r5, #0
	adds r7, #0x42
	movs r1, #0
	ldrsh r0, [r7, r1]
	mov sb, r0
	movs r2, #0x46
	adds r2, r2, r5
	mov sl, r2
	movs r1, #0
	ldrsh r0, [r2, r1]
	subs r0, #8
	mov r8, r0
	movs r2, #0x20
	rsbs r2, r2, #0
	movs r3, #0x98
	lsls r3, r3, #1
	movs r0, #0xe0
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	bl sub_08068AD4
	cmp r0, #0
	bne _080539BC
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	b _08053B64
_080539BC:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _08053AB8
	cmp r0, #1
	bgt _080539CC
	cmp r0, #0
	beq _080539D4
	b _08053B68
_080539CC:
	cmp r0, #2
	bne _080539D2
	b _08053AEC
_080539D2:
	b _08053B68
_080539D4:
	adds r1, r5, #0
	adds r1, #0x58
	ldrb r2, [r1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0x1e
	ands r0, r4
	adds r7, r1, #0
	cmp r0, #0
	bne _080539EE
	b _08053B68
_080539EE:
	movs r2, #0x30
	ldrsh r0, [r5, r2]
	cmp r0, #0
	beq _08053A14
	movs r0, #2
	strb r0, [r5, #0xa]
	movs r4, #0x20
	movs r0, #0x20
	strb r0, [r5, #0xd]
	adds r0, r5, #0
	bl sub_0805379C
	movs r0, #0xa2
	bl sub_080D7910
	ldrb r0, [r7]
	orrs r0, r4
	strb r0, [r7]
	b _08053B68
_08053A14:
	ldr r0, _08053A28 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08053A2C @ =0x00013266
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08053A8C
	movs r6, #0
	b _08053A56
	.align 2, 0
_08053A28: .4byte gEwramData
_08053A2C: .4byte 0x00013266
_08053A30:
	ldr r0, _08053A84 @ =sub_08044D40
	str r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #1
	bl sub_0802D5EC
	lsls r0, r0, #0xa
	str r0, [r4, #0x48]
	movs r0, #0x80
	lsls r0, r0, #8
	bl sub_0802D5EC
	ldr r2, _08053A88 @ =0xFFFE0000
	adds r0, r0, r2
	str r0, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	adds r6, #1
_08053A56:
	cmp r6, #7
	bgt _08053A98
	movs r0, #0x20
	bl sub_0802D5EC
	adds r4, r0, #0
	add r4, sb
	bl RandomNumberGenerator
	movs r1, #0xf
	ands r1, r0
	mov r0, r8
	subs r1, r0, r1
	lsrs r2, r6, #0x1f
	adds r2, r6, r2
	asrs r2, r2, #1
	adds r0, r4, #0
	bl sub_08043F70
	adds r4, r0, #0
	cmp r4, #0
	bne _08053A30
	b _08053A98
	.align 2, 0
_08053A84: .4byte sub_08044D40
_08053A88: .4byte 0xFFFE0000
_08053A8C:
	mov r0, sb
	mov r1, r8
	movs r2, #1
	movs r3, #0
	bl sub_08043C10
_08053A98:
	adds r0, r5, #0
	bl sub_0805379C
	movs r0, #0xa2
	bl sub_080D7910
	ldrb r0, [r7]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r7]
	movs r0, #0x28
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	b _08053B68
_08053AB8:
	ldrb r1, [r5, #0xd]
	cmp r1, #0x1e
	bls _08053B4E
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08053B4E
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	ldr r2, _08053AE8 @ =0xFFF00000
	adds r1, r1, r2
	movs r2, #0x80
	lsls r2, r2, #0xc
	movs r3, #0x80
	lsls r3, r3, #0xd
	adds r4, r5, #0
	adds r4, #0x5c
	ldrb r4, [r4]
	subs r4, #1
	str r4, [sp]
	bl sub_0806D5C0
	b _08053B4E
	.align 2, 0
_08053AE8: .4byte 0xFFF00000
_08053AEC:
	ldrb r1, [r5, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08053B4E
	ldr r6, _08053B78 @ =0x080EA0AC
	ldr r2, _08053B7C @ =sub_08000F38
	movs r0, #0x1b
	movs r1, #0x48
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	beq _08053B4E
	movs r0, #0x20
	bl sub_0802D5EC
	ldrh r1, [r7]
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x42
	strh r1, [r0]
	movs r0, #0x10
	bl sub_0802D5EC
	subs r0, #0x18
	mov r1, sl
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	subs r1, #0x10
	movs r0, #0x4a
	strb r0, [r1]
	ldrh r0, [r6, #0xc]
	strh r0, [r4, #0x34]
	ldr r0, [r6, #4]
	str r0, [r4]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r6]
	adds r0, r4, #0
	bl _call_via_r1
_08053B4E:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08053B68
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
_08053B64:
	orrs r1, r2
	strb r1, [r0]
_08053B68:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08053B78: .4byte 0x080EA0AC
_08053B7C: .4byte sub_08000F38

	thumb_func_start sub_08053B80
sub_08053B80: @ 0x08053B80
	push {r4, lr}
	adds r3, r0, #0
	movs r4, #1
	str r4, [r3, #0x48]
	ldr r2, [r3, #0x40]
	ldr r0, [r1, #0x40]
	cmp r2, r0
	bge _08053B94
	rsbs r0, r4, #0
	str r0, [r3, #0x48]
_08053B94:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08053B9C
sub_08053B9C: @ 0x08053B9C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r6, r0, #0
	mov r0, sp
	movs r1, #0
	movs r5, #1
	strh r5, [r0, #2]
	strh r1, [r0, #4]
	ldr r0, _08053BF0 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _08053BF4 @ =0x000131FE
	adds r0, r2, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r0, r1, #0x11
	asrs r1, r1, #0x12
	adds r0, r0, r1
	ldr r1, _08053BF8 @ =0x0001327E
	adds r2, r2, r1
	ldrh r1, [r2]
	lsrs r1, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #0x10
	mov r4, sp
	lsrs r0, r0, #0xf
	movs r1, #3
	bl __divsi3
	strh r0, [r4]
	mov r0, sp
	strh r5, [r0, #6]
	ldr r0, [r6, #0x40]
	str r0, [sp, #8]
	ldr r0, [r6, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08053BF0: .4byte gEwramData
_08053BF4: .4byte 0x000131FE
_08053BF8: .4byte 0x0001327E

	thumb_func_start sub_08053BFC
sub_08053BFC: @ 0x08053BFC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	ldr r1, _08053C30 @ =0x0825EAFC
	ldr r2, _08053C34 @ =0x08266408
	ldr r0, _08053C38 @ =0x08266C50
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08053C26
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08053C3C
_08053C26:
	adds r0, r7, #0
	bl sub_08000E14
	b _08053CF2
	.align 2, 0
_08053C30: .4byte 0x0825EAFC
_08053C34: .4byte 0x08266408
_08053C38: .4byte 0x08266C50
_08053C3C:
	ldr r0, _08053CFC @ =sub_08053EFC
	str r0, [r7, #4]
	adds r5, r7, #0
	adds r5, #0x58
	movs r0, #0x1f
	ands r2, r0
	ldrb r1, [r5]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5]
	adds r6, r7, #0
	adds r6, #0x59
	ldrb r0, [r6]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r6]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xa
	strb r0, [r1]
	ldr r2, _08053D00 @ =sub_08053B9C
	ldr r3, _08053D04 @ =sub_08053EC4
	adds r0, r7, #0
	movs r1, #8
	bl sub_0804277C
	ldr r4, _08053D08 @ =0x0C0CFAFA
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08042884
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080428F0
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r7, #0x16]
	movs r0, #1
	ldrh r1, [r7, #0x32]
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r5]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	strh r0, [r7, #0x32]
	cmp r0, #0
	beq _08053CB0
	ldrh r0, [r7, #0x16]
	rsbs r0, r0, #0
	strh r0, [r7, #0x16]
_08053CB0:
	ldrh r0, [r7, #0x30]
	adds r0, #0xe
	strh r0, [r7, #0x30]
	ldrb r1, [r7, #0xa]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08053D0C @ =0x0852646C
	adds r1, r0, r1
	ldr r2, [r1, #4]
	str r2, [r7, #0x48]
	ldr r0, [r1, #8]
	str r0, [r7, #0x4c]
	movs r3, #0x32
	ldrsh r0, [r7, r3]
	cmp r0, #0
	beq _08053CD6
	rsbs r0, r2, #0
	str r0, [r7, #0x48]
_08053CD6:
	ldr r0, [r1]
	cmp r0, #0
	bne _08053CE2
	movs r1, #0x30
	ldrsh r0, [r7, r1]
	lsls r0, r0, #0x10
_08053CE2:
	str r0, [r7, #0x18]
	ldr r0, [r7, #0x18]
	asrs r0, r0, #1
	str r0, [r7, #0x18]
	ldrb r0, [r6]
	movs r1, #2
	orrs r0, r1
	strb r0, [r6]
_08053CF2:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08053CFC: .4byte sub_08053EFC
_08053D00: .4byte sub_08053B9C
_08053D04: .4byte sub_08053EC4
_08053D08: .4byte 0x0C0CFAFA
_08053D0C: .4byte 0x0852646C

	thumb_func_start sub_08053D10
sub_08053D10: @ 0x08053D10
	push {r4, r5, lr}
	sub sp, #0x18
	adds r4, r0, #0
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
	bne _08053D3C
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	b _08053EB6
_08053D3C:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrh r0, [r4, #0x16]
	ldrh r1, [r4, #0x14]
	adds r0, r0, r1
	strh r0, [r4, #0x14]
	ldrb r0, [r4, #0xa]
	adds r5, r2, #0
	cmp r0, #1
	beq _08053DB8
	cmp r0, #1
	bgt _08053D64
	cmp r0, #0
	beq _08053D6E
	b _08053E90
_08053D64:
	cmp r0, #2
	beq _08053E00
	cmp r0, #3
	beq _08053E48
	b _08053E90
_08053D6E:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ble _08053D90
	ldr r3, _08053D8C @ =0xFFFF0000
	adds r0, r0, r3
	b _08053E8E
	.align 2, 0
_08053D8C: .4byte 0xFFFF0000
_08053D90:
	movs r0, #1
	strb r0, [r4, #0xa]
	ldr r2, _08053DB4 @ =0x0852646C
	adds r0, r2, #0
	adds r0, #0xc
	ldr r1, [r0, #4]
	str r1, [r4, #0x48]
	ldr r0, [r0, #8]
	str r0, [r4, #0x4c]
	movs r3, #0x32
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _08053DAE
	rsbs r0, r1, #0
	str r0, [r4, #0x48]
_08053DAE:
	ldr r0, [r2, #0xc]
	b _08053E84
	.align 2, 0
_08053DB4: .4byte 0x0852646C
_08053DB8:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ble _08053DD8
	ldr r3, _08053DD4 @ =0xFFFF0000
	adds r0, r0, r3
	b _08053E8E
	.align 2, 0
_08053DD4: .4byte 0xFFFF0000
_08053DD8:
	movs r0, #2
	strb r0, [r4, #0xa]
	ldr r2, _08053DFC @ =0x0852646C
	adds r0, r2, #0
	adds r0, #0x18
	ldr r1, [r0, #4]
	str r1, [r4, #0x48]
	ldr r0, [r0, #8]
	str r0, [r4, #0x4c]
	movs r3, #0x32
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _08053DF6
	rsbs r0, r1, #0
	str r0, [r4, #0x48]
_08053DF6:
	ldr r0, [r2, #0x18]
	b _08053E84
	.align 2, 0
_08053DFC: .4byte 0x0852646C
_08053E00:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ble _08053E20
	ldr r3, _08053E1C @ =0xFFFF0000
	adds r0, r0, r3
	b _08053E8E
	.align 2, 0
_08053E1C: .4byte 0xFFFF0000
_08053E20:
	movs r0, #3
	strb r0, [r4, #0xa]
	ldr r2, _08053E44 @ =0x0852646C
	adds r0, r2, #0
	adds r0, #0x24
	ldr r1, [r0, #4]
	str r1, [r4, #0x48]
	ldr r0, [r0, #8]
	str r0, [r4, #0x4c]
	movs r3, #0x32
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _08053E3E
	rsbs r0, r1, #0
	str r0, [r4, #0x48]
_08053E3E:
	ldr r0, [r2, #0x24]
	b _08053E84
	.align 2, 0
_08053E44: .4byte 0x0852646C
_08053E48:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ble _08053E68
	ldr r3, _08053E64 @ =0xFFFF0000
	adds r0, r0, r3
	b _08053E8E
	.align 2, 0
_08053E64: .4byte 0xFFFF0000
_08053E68:
	movs r0, #0
	strb r0, [r4, #0xa]
	ldr r1, _08053EC0 @ =0x0852646C
	ldr r2, [r1, #4]
	str r2, [r4, #0x48]
	ldr r0, [r1, #8]
	str r0, [r4, #0x4c]
	movs r3, #0x32
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _08053E82
	rsbs r0, r2, #0
	str r0, [r4, #0x48]
_08053E82:
	ldr r0, [r1]
_08053E84:
	cmp r0, #0
	bne _08053E8E
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	lsls r0, r0, #0x10
_08053E8E:
	str r0, [r4, #0x18]
_08053E90:
	add r0, sp, #8
	adds r1, r4, #0
	bl sub_080421AC
	movs r3, #0x14
	ldrsh r0, [r4, r3]
	movs r2, #0x80
	lsls r2, r2, #9
	ldrb r1, [r5]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	movs r4, #0
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
_08053EB6:
	add sp, #0x18
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08053EC0: .4byte 0x0852646C

	thumb_func_start sub_08053EC4
sub_08053EC4: @ 0x08053EC4
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x69
	bl sub_080D7910
	movs r0, #0x10
	bl sub_0802D5EC
	adds r1, r5, #0
	adds r1, #0x42
	movs r2, #0
	ldrsh r4, [r1, r2]
	adds r4, r4, r0
	movs r0, #0x10
	bl sub_0802D5EC
	adds r5, #0x46
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0
	bl sub_0806E664
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08053EFC
sub_08053EFC: @ 0x08053EFC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x59
	ldrb r1, [r5]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	adds r6, r4, #0
	adds r6, #0x65
	movs r0, #0
	strb r0, [r6]
	adds r0, r4, #0
	bl sub_0803AC40
	ldrb r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r5]
	movs r0, #1
	strb r0, [r6]
	adds r0, r4, #0
	bl sub_0803AC40
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08053F34
sub_08053F34: @ 0x08053F34
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _08053F58 @ =0x081CBE84
	ldr r2, _08053F5C @ =0x08209FD8
	ldr r0, _08053F60 @ =0x08210318
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #1
	bl sub_0806E0D0
	cmp r0, #0
	bne _08053F64
	adds r0, r4, #0
	bl sub_08000E14
	b _08053FAE
	.align 2, 0
_08053F58: .4byte 0x081CBE84
_08053F5C: .4byte 0x08209FD8
_08053F60: .4byte 0x08210318
_08053F64:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #3
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xb
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r1, _08053FB8 @ =0x1010F0F8
	adds r0, r4, #0
	bl sub_080428F0
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08053FBC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08053FC0 @ =0x000004C4
	adds r0, r0, r1
	ldr r1, _08053FC4 @ =0xFFFEC000
	str r1, [r0]
_08053FAE:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08053FB8: .4byte 0x1010F0F8
_08053FBC: .4byte gEwramData
_08053FC0: .4byte 0x000004C4
_08053FC4: .4byte 0xFFFEC000

	thumb_func_start sub_08053FC8
sub_08053FC8: @ 0x08053FC8
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0
	bl sub_08021278
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08053FDE
	cmp r0, #1
	beq _08054028
	b _08054040
_08053FDE:
	ldr r0, _08054018 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805401C @ =0x00013190
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, r4
	bne _08054040
	ldrb r0, [r4, #0xb]
	movs r1, #1
	eors r0, r1
	strb r0, [r4, #0xb]
	ldr r1, _08054020 @ =0x0C10F4F8
	adds r0, r4, #0
	bl sub_080428F0
	ldrb r1, [r4, #0xb]
	adds r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _08054024 @ =0x00000133
	bl sub_080D7910
	movs r0, #1
	strb r0, [r4, #0xa]
	b _08054040
	.align 2, 0
_08054018: .4byte gEwramData
_0805401C: .4byte 0x00013190
_08054020: .4byte 0x0C10F4F8
_08054024: .4byte 0x00000133
_08054028:
	ldr r0, _0805408C @ =gEwramData
	ldr r0, [r0]
	ldr r3, _08054090 @ =0x000004C4
	adds r2, r0, r3
	ldr r1, [r2]
	ldr r0, _08054094 @ =0x00013FFF
	cmp r1, r0
	bgt _08054040
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r1, r3
	str r0, [r2]
_08054040:
	ldr r0, _0805408C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08054090 @ =0x000004C4
	adds r0, r0, r1
	ldr r1, [r4, #0x14]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r4, #0x14]
	ldr r5, _08054098 @ =0x081185C8
	cmp r1, #0
	bge _08054058
	adds r1, #7
_08054058:
	asrs r0, r1, #0x13
	movs r1, #3
	bl __modsi3
	cmp r0, #0
	bge _08054066
	rsbs r0, r0, #0
_08054066:
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	ldrb r0, [r4, #0x18]
	cmp r0, r1
	beq _0805407E
	strb r1, [r4, #0x18]
	ldr r0, _0805409C @ =0x0811CA64
	movs r2, #1
	movs r3, #8
	bl sub_0803C918
_0805407E:
	adds r0, r4, #0
	bl sub_0803F17C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805408C: .4byte gEwramData
_08054090: .4byte 0x000004C4
_08054094: .4byte 0x00013FFF
_08054098: .4byte 0x081185C8
_0805409C: .4byte 0x0811CA64

	thumb_func_start sub_080540A0
sub_080540A0: @ 0x080540A0
	bx lr
	.align 2, 0

	thumb_func_start sub_080540A4
sub_080540A4: @ 0x080540A4
	bx lr
	.align 2, 0

	thumb_func_start sub_080540A8
sub_080540A8: @ 0x080540A8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r7, #0x15
	ldr r0, _08054258 @ =0x0820C428
	movs r1, #0
	movs r2, #2
	movs r3, #0xd
	bl sub_0803C918
	movs r0, #3
	bl sub_08041304
	movs r0, #0
	movs r1, #0
	movs r2, #0x29
	movs r3, #2
	bl sub_08040748
	bl sub_08040FE0
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	ldr r0, _0805425C @ =0x0000034A
	bl sub_08041434
	movs r1, #0
	bl sub_08041318
	movs r0, #0xd
	bl sub_08041304
	movs r0, #0x10
	movs r1, #1
	bl sub_0804066C
	ldr r0, _08054260 @ =0x0000034B
	bl sub_08041434
	movs r1, #0
	bl sub_08041318
	movs r0, #3
	bl sub_08041304
	movs r0, #0x18
	movs r1, #1
	bl sub_0804066C
	ldr r0, _08054264 @ =0x0000034D
	bl sub_08041434
	movs r1, #0
	bl sub_08041318
	movs r0, #3
	bl sub_08041304
	ldr r0, _08054268 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805426C @ =0x000133F4
	adds r2, r0, r1
	movs r1, #0
	ldr r0, _08054270 @ =0xFFFFE200
	adds r3, r0, #0
_08054130:
	adds r0, r1, #0
	adds r0, #0xac
	orrs r0, r3
	strh r0, [r2]
	adds r2, #2
	adds r1, #1
	cmp r1, #4
	ble _08054130
	ldr r6, _08054268 @ =gEwramData
	ldr r1, [r6]
	ldr r4, _0805426C @ =0x000133F4
	adds r1, r1, r4
	adds r5, r7, #2
	lsls r2, r5, #6
	ldr r0, _08054274 @ =0x0600E00E
	adds r2, r2, r0
	movs r0, #0xa
	bl sub_08001668
	ldr r0, [r6]
	adds r1, r0, r4
	movs r2, #0
	adds r6, r5, #0
	adds r0, r7, #3
	mov r8, r0
	lsls r0, r7, #6
	mov sb, r0
	adds r7, #1
	ldr r0, _08054270 @ =0xFFFFE200
	adds r3, r0, #0
_0805416C:
	adds r0, r2, #0
	adds r0, #0xcc
	orrs r0, r3
	strh r0, [r1]
	adds r1, #2
	adds r2, #1
	cmp r2, #4
	ble _0805416C
	ldr r5, _08054268 @ =gEwramData
	ldr r1, [r5]
	ldr r4, _0805426C @ =0x000133F4
	adds r1, r1, r4
	mov r0, r8
	lsls r2, r0, #6
	ldr r0, _08054274 @ =0x0600E00E
	adds r2, r2, r0
	movs r0, #0xa
	bl sub_08001668
	ldr r0, [r5]
	adds r1, r0, r4
	movs r2, #0
	ldr r0, _08054270 @ =0xFFFFE200
	adds r3, r0, #0
_0805419C:
	adds r0, r2, #0
	adds r0, #0xb2
	orrs r0, r3
	strh r0, [r1]
	adds r1, #2
	adds r2, #1
	cmp r2, #4
	ble _0805419C
	ldr r5, _08054268 @ =gEwramData
	ldr r1, [r5]
	ldr r4, _0805426C @ =0x000133F4
	adds r1, r1, r4
	lsls r2, r6, #6
	ldr r0, _08054278 @ =0x0600E028
	adds r2, r2, r0
	movs r0, #0xa
	bl sub_08001668
	ldr r0, [r5]
	adds r1, r0, r4
	movs r2, #0
	ldr r0, _08054270 @ =0xFFFFE200
	adds r3, r0, #0
_080541CA:
	adds r0, r2, #0
	adds r0, #0xd2
	orrs r0, r3
	strh r0, [r1]
	adds r1, #2
	adds r2, #1
	cmp r2, #4
	ble _080541CA
	ldr r5, _08054268 @ =gEwramData
	ldr r1, [r5]
	ldr r4, _0805426C @ =0x000133F4
	adds r1, r1, r4
	mov r0, r8
	lsls r2, r0, #6
	ldr r0, _08054278 @ =0x0600E028
	adds r2, r2, r0
	movs r0, #0xa
	bl sub_08001668
	ldr r0, [r5]
	adds r1, r0, r4
	movs r2, #0
	ldr r0, _08054270 @ =0xFFFFE200
	adds r3, r0, #0
_080541FA:
	adds r0, r2, #0
	adds r0, #0xa0
	orrs r0, r3
	strh r0, [r1]
	adds r1, #2
	adds r2, #1
	cmp r2, #0x17
	ble _080541FA
	ldr r5, _08054268 @ =gEwramData
	ldr r1, [r5]
	ldr r4, _0805426C @ =0x000133F4
	adds r1, r1, r4
	ldr r2, _0805427C @ =0x0600E014
	add r2, sb
	movs r0, #0x18
	bl sub_08001668
	ldr r0, [r5]
	adds r1, r0, r4
	movs r2, #0
	ldr r0, _08054270 @ =0xFFFFE200
	adds r3, r0, #0
_08054226:
	adds r0, r2, #0
	adds r0, #0xc0
	orrs r0, r3
	strh r0, [r1]
	adds r1, #2
	adds r2, #1
	cmp r2, #0x17
	ble _08054226
	ldr r0, _08054268 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0805426C @ =0x000133F4
	adds r1, r1, r0
	lsls r2, r7, #6
	ldr r0, _0805427C @ =0x0600E014
	adds r2, r2, r0
	movs r0, #0x18
	bl sub_08001668
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08054258: .4byte 0x0820C428
_0805425C: .4byte 0x0000034A
_08054260: .4byte 0x0000034B
_08054264: .4byte 0x0000034D
_08054268: .4byte gEwramData
_0805426C: .4byte 0x000133F4
_08054270: .4byte 0xFFFFE200
_08054274: .4byte 0x0600E00E
_08054278: .4byte 0x0600E028
_0805427C: .4byte 0x0600E014

	thumb_func_start sub_08054280
sub_08054280: @ 0x08054280
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r7, #5
	ldr r0, _08054420 @ =0x0820C428
	movs r1, #0
	movs r2, #2
	movs r3, #0xd
	bl sub_0803C918
	movs r0, #0
	bl sub_08041304
	movs r0, #0
	movs r1, #0
	movs r2, #0x29
	movs r3, #2
	bl sub_08040748
	bl sub_08040FE0
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	ldr r0, _08054424 @ =0x0000034A
	bl sub_08041434
	movs r1, #0
	bl sub_08041318
	movs r0, #0x10
	movs r1, #1
	bl sub_0804066C
	ldr r0, _08054428 @ =0x0000034B
	bl sub_08041434
	movs r1, #0
	bl sub_08041318
	movs r0, #0x18
	movs r1, #1
	bl sub_0804066C
	ldr r0, _0805442C @ =0x0000034D
	bl sub_08041434
	movs r1, #0
	bl sub_08041318
	ldr r0, _08054430 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08054434 @ =0x000133F4
	adds r1, r0, r2
	movs r2, #0
	ldr r0, _08054438 @ =0xFFFFE200
	adds r3, r0, #0
_080542F6:
	adds r0, r2, #0
	adds r0, #0xac
	orrs r0, r3
	strh r0, [r1]
	adds r1, #2
	adds r2, #1
	cmp r2, #4
	ble _080542F6
	ldr r6, _08054430 @ =gEwramData
	ldr r1, [r6]
	ldr r4, _08054434 @ =0x000133F4
	adds r1, r1, r4
	adds r5, r7, #3
	lsls r2, r5, #6
	ldr r0, _0805443C @ =0x0600E010
	adds r2, r2, r0
	movs r0, #0xa
	bl sub_08001668
	ldr r0, [r6]
	adds r1, r0, r4
	movs r2, #0
	adds r6, r5, #0
	adds r0, r7, #4
	mov r8, r0
	lsls r0, r7, #6
	mov sb, r0
	adds r7, #1
	ldr r0, _08054438 @ =0xFFFFE200
	adds r3, r0, #0
_08054332:
	adds r0, r2, #0
	adds r0, #0xcc
	orrs r0, r3
	strh r0, [r1]
	adds r1, #2
	adds r2, #1
	cmp r2, #4
	ble _08054332
	ldr r5, _08054430 @ =gEwramData
	ldr r1, [r5]
	ldr r4, _08054434 @ =0x000133F4
	adds r1, r1, r4
	mov r0, r8
	lsls r2, r0, #6
	ldr r0, _0805443C @ =0x0600E010
	adds r2, r2, r0
	movs r0, #0xa
	bl sub_08001668
	ldr r0, [r5]
	adds r1, r0, r4
	movs r2, #0
	ldr r0, _08054438 @ =0xFFFFE200
	adds r3, r0, #0
_08054362:
	adds r0, r2, #0
	adds r0, #0xb2
	orrs r0, r3
	strh r0, [r1]
	adds r1, #2
	adds r2, #1
	cmp r2, #4
	ble _08054362
	ldr r5, _08054430 @ =gEwramData
	ldr r1, [r5]
	ldr r4, _08054434 @ =0x000133F4
	adds r1, r1, r4
	lsls r2, r6, #6
	ldr r0, _08054440 @ =0x0600E028
	adds r2, r2, r0
	movs r0, #0xa
	bl sub_08001668
	ldr r0, [r5]
	adds r1, r0, r4
	movs r2, #0
	ldr r0, _08054438 @ =0xFFFFE200
	adds r3, r0, #0
_08054390:
	adds r0, r2, #0
	adds r0, #0xd2
	orrs r0, r3
	strh r0, [r1]
	adds r1, #2
	adds r2, #1
	cmp r2, #4
	ble _08054390
	ldr r5, _08054430 @ =gEwramData
	ldr r1, [r5]
	ldr r4, _08054434 @ =0x000133F4
	adds r1, r1, r4
	mov r0, r8
	lsls r2, r0, #6
	ldr r0, _08054440 @ =0x0600E028
	adds r2, r2, r0
	movs r0, #0xa
	bl sub_08001668
	ldr r0, [r5]
	adds r1, r0, r4
	movs r2, #0
	ldr r0, _08054438 @ =0xFFFFE200
	adds r3, r0, #0
_080543C0:
	adds r0, r2, #0
	adds r0, #0xa0
	orrs r0, r3
	strh r0, [r1]
	adds r1, #2
	adds r2, #1
	cmp r2, #0x17
	ble _080543C0
	ldr r5, _08054430 @ =gEwramData
	ldr r1, [r5]
	ldr r4, _08054434 @ =0x000133F4
	adds r1, r1, r4
	ldr r2, _08054444 @ =0x0600E014
	add r2, sb
	movs r0, #0x18
	bl sub_08001668
	ldr r0, [r5]
	adds r1, r0, r4
	movs r2, #0
	ldr r0, _08054438 @ =0xFFFFE200
	adds r3, r0, #0
_080543EC:
	adds r0, r2, #0
	adds r0, #0xc0
	orrs r0, r3
	strh r0, [r1]
	adds r1, #2
	adds r2, #1
	cmp r2, #0x17
	ble _080543EC
	ldr r0, _08054430 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _08054434 @ =0x000133F4
	adds r1, r1, r2
	lsls r2, r7, #6
	ldr r0, _08054448 @ =0x0600E000
	adds r0, #0x14
	adds r2, r2, r0
	movs r0, #0x18
	bl sub_08001668
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08054420: .4byte 0x0820C428
_08054424: .4byte 0x0000034A
_08054428: .4byte 0x0000034B
_0805442C: .4byte 0x0000034D
_08054430: .4byte gEwramData
_08054434: .4byte 0x000133F4
_08054438: .4byte 0xFFFFE200
_0805443C: .4byte 0x0600E010
_08054440: .4byte 0x0600E028
_08054444: .4byte 0x0600E014
_08054448: .4byte 0x0600E000

	thumb_func_start sub_0805444C
sub_0805444C: @ 0x0805444C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #0xac
	ldr r3, _080544DC @ =gEwramData
	ldr r2, [r3]
	ldr r1, _080544E0 @ =0x00007864
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _080544E4 @ =0x0000786C
	adds r0, r0, r1
	adds r2, r2, r0
	adds r6, r3, #0
	movs r0, #6
	movs r1, #0x23
_08054476:
	strh r0, [r2]
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bge _08054476
	adds r0, r5, #0
	subs r0, #0x30
	adds r0, r0, r4
	movs r1, #0xb
_08054488:
	strh r0, [r2]
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bge _08054488
	movs r1, #0x30
	movs r0, #0x50
	subs r0, r0, r4
	cmp r1, r0
	bge _080544AE
	movs r3, #0
	adds r1, r0, #0
	subs r1, #0x30
_080544A2:
	strh r3, [r2]
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _080544A2
	adds r1, r0, #0
_080544AE:
	cmp r1, #0x4f
	bgt _080544C2
	adds r0, r5, #0
	subs r0, #0x40
	adds r0, r0, r4
_080544B8:
	strh r0, [r2]
	adds r2, #2
	adds r1, #1
	cmp r1, #0x4f
	ble _080544B8
_080544C2:
	movs r0, #0
	strh r0, [r2]
	ldr r1, [r6]
	ldr r0, _080544E0 @ =0x00007864
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080544DC: .4byte gEwramData
_080544E0: .4byte 0x00007864
_080544E4: .4byte 0x0000786C

	thumb_func_start sub_080544E8
sub_080544E8: @ 0x080544E8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r2, _0805453C @ =gEwramData
	ldrb r1, [r6, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08054540 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r1, r1, r0
	mov r8, r1
	cmp r1, #0
	beq _08054568
	adds r4, r6, #0
	adds r4, #0x42
	movs r0, #0x48
	strh r0, [r4]
	adds r7, r6, #0
	adds r7, #0x46
	movs r0, #0x26
	strh r0, [r7]
	adds r5, r6, #0
	adds r5, #0x65
	movs r0, #0x15
	strb r0, [r5]
	adds r0, r6, #0
	bl sub_0803AC40
	movs r0, #0x39
	strh r0, [r4]
	movs r0, #0x3e
	strh r0, [r7]
	mov r1, r8
	ldrb r0, [r1, #0x16]
	cmp r0, #0
	beq _08054544
	movs r0, #0x16
	b _08054546
	.align 2, 0
_0805453C: .4byte gEwramData
_08054540: .4byte 0x000004E4
_08054544:
	movs r0, #0x17
_08054546:
	strb r0, [r5]
	adds r0, r6, #0
	bl sub_0803AC40
	movs r0, #0x99
	strh r0, [r4]
	mov r1, r8
	ldrb r0, [r1, #0x16]
	cmp r0, #0
	beq _0805455E
	movs r0, #0x19
	b _08054560
_0805455E:
	movs r0, #0x18
_08054560:
	strb r0, [r5]
	adds r0, r6, #0
	bl sub_0803AC40
_08054568:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08054574
sub_08054574: @ 0x08054574
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08054586
	cmp r0, #1
	beq _080545D8
	b _08054642
_08054586:
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _080545C0
	cmp r0, #1
	bgt _08054596
	cmp r0, #0
	beq _0805459C
	b _08054642
_08054596:
	cmp r0, #2
	beq _08054640
	b _08054642
_0805459C:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	str r5, [r4, #0x14]
	ldr r0, _080545BC @ =0x0820C384
	movs r1, #5
	movs r2, #1
	movs r3, #0xe
	bl sub_0803C7B4
	b _08054602
	.align 2, 0
_080545BC: .4byte 0x0820C384
_080545C0:
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r1, _080545D4 @ =0x0000FFFF
	cmp r0, r1
	ble _08054642
	b _080545FC
	.align 2, 0
_080545D4: .4byte 0x0000FFFF
_080545D8:
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _0805460A
	cmp r0, #1
	bgt _080545E8
	cmp r0, #0
	beq _080545EE
	b _08054642
_080545E8:
	cmp r0, #2
	beq _08054634
	b _08054642
_080545EE:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_080545FC:
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x14]
_08054602:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	b _08054642
_0805460A:
	ldr r0, [r4, #0x14]
	ldr r1, _0805462C @ =0xFFFFE000
	adds r0, r0, r1
	str r0, [r4, #0x14]
	cmp r0, #0
	bgt _08054642
	str r5, [r4, #0x14]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	ldr r0, _08054630 @ =0x082099FC
	movs r1, #0xe
	movs r2, #1
	movs r3, #0xe
	bl sub_0803C7B4
	b _08054642
	.align 2, 0
_0805462C: .4byte 0xFFFFE000
_08054630: .4byte 0x082099FC
_08054634:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
_08054640:
	movs r5, #1
_08054642:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805464C
sub_0805464C: @ 0x0805464C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r4, _08054680 @ =0x082052E8
	ldr r6, _08054684 @ =0x0820C384
	bl sub_0800EB04
	ldr r0, _08054688 @ =0x06005000
	bl sub_080412DC
	adds r0, r4, #0
	bl sub_0803AFB8
	cmp r0, #0
	bge _0805468C
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803B800
	cmp r0, #0
	bge _0805468C
	adds r0, r5, #0
	bl sub_08000E14
	b _08054736
	.align 2, 0
_08054680: .4byte 0x082052E8
_08054684: .4byte 0x0820C384
_08054688: .4byte 0x06005000
_0805468C:
	movs r4, #0
	strh r0, [r5, #0x18]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0xa
	bl sub_0803C7B4
	movs r0, #0xa
	strh r0, [r5, #0x1a]
	movs r0, #1
	bl sub_0803E654
	strb r0, [r5, #0x17]
	adds r3, r5, #0
	adds r3, #0x58
	movs r0, #0x1f
	ldrb r1, [r5, #0x17]
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r2, [r5, #0x1c]
	str r4, [sp]
	ldrb r0, [r5, #0x17]
	str r0, [sp, #4]
	movs r0, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	adds r1, r5, #0
	adds r1, #0x42
	movs r0, #0x78
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x50
	strh r0, [r1]
	adds r1, #0x16
	movs r0, #0x11
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0806AF98
	adds r0, r5, #0
	bl sub_08054E38
	ldr r6, _08054740 @ =sub_08000F38
	movs r0, #0x1b
	movs r1, #0x48
	adds r2, r6, #0
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	beq _08054736
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #3
	strb r0, [r1]
	ldrb r0, [r4, #0x10]
	adds r1, r5, #0
	adds r1, #0x35
	strb r0, [r1]
	ldrb r0, [r5, #0x10]
	strb r0, [r4, #0x11]
	ldr r0, _08054744 @ =sub_080544E8
	str r0, [r4, #4]
	str r6, [r4]
	ldr r1, _08054748 @ =0x08257964
	movs r0, #0x18
	ldrsh r2, [r5, r0]
	adds r0, r4, #0
	movs r3, #0xe
	bl sub_0803B924
_08054736:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08054740: .4byte sub_08000F38
_08054744: .4byte sub_080544E8
_08054748: .4byte 0x08257964

	thumb_func_start sub_0805474C
sub_0805474C: @ 0x0805474C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r1, _08054770 @ =gEwramData
	ldr r0, [r1]
	ldrh r2, [r0, #0x14]
	ldrh r3, [r0, #0x16]
	ldrb r0, [r6, #0xa]
	adds r7, r1, #0
	cmp r0, #0x63
	bls _08054764
	b _08054DB0
_08054764:
	lsls r0, r0, #2
	ldr r1, _08054774 @ =_08054778
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08054770: .4byte gEwramData
_08054774: .4byte _08054778
_08054778: @ jump table
	.4byte _08054908 @ case 0
	.4byte _080549C2 @ case 1
	.4byte _080549F8 @ case 2
	.4byte _08054B16 @ case 3
	.4byte _08054DB0 @ case 4
	.4byte _08054DB0 @ case 5
	.4byte _08054DB0 @ case 6
	.4byte _08054DB0 @ case 7
	.4byte _08054DB0 @ case 8
	.4byte _08054DB0 @ case 9
	.4byte _08054C24 @ case 10
	.4byte _08054B68 @ case 11
	.4byte _08054BC4 @ case 12
	.4byte _08054BF0 @ case 13
	.4byte _08054DB0 @ case 14
	.4byte _08054DB0 @ case 15
	.4byte _08054DB0 @ case 16
	.4byte _08054DB0 @ case 17
	.4byte _08054DB0 @ case 18
	.4byte _08054DB0 @ case 19
	.4byte _08054C24 @ case 20
	.4byte _08054C54 @ case 21
	.4byte _08054DB0 @ case 22
	.4byte _08054DB0 @ case 23
	.4byte _08054DB0 @ case 24
	.4byte _08054DB0 @ case 25
	.4byte _08054DB0 @ case 26
	.4byte _08054DB0 @ case 27
	.4byte _08054DB0 @ case 28
	.4byte _08054DB0 @ case 29
	.4byte _08054DB0 @ case 30
	.4byte _08054DB0 @ case 31
	.4byte _08054DB0 @ case 32
	.4byte _08054DB0 @ case 33
	.4byte _08054DB0 @ case 34
	.4byte _08054DB0 @ case 35
	.4byte _08054DB0 @ case 36
	.4byte _08054DB0 @ case 37
	.4byte _08054DB0 @ case 38
	.4byte _08054DB0 @ case 39
	.4byte _08054DB0 @ case 40
	.4byte _08054DB0 @ case 41
	.4byte _08054DB0 @ case 42
	.4byte _08054DB0 @ case 43
	.4byte _08054DB0 @ case 44
	.4byte _08054DB0 @ case 45
	.4byte _08054DB0 @ case 46
	.4byte _08054DB0 @ case 47
	.4byte _08054DB0 @ case 48
	.4byte _08054DB0 @ case 49
	.4byte _08054DB0 @ case 50
	.4byte _08054DB0 @ case 51
	.4byte _08054DB0 @ case 52
	.4byte _08054DB0 @ case 53
	.4byte _08054DB0 @ case 54
	.4byte _08054DB0 @ case 55
	.4byte _08054DB0 @ case 56
	.4byte _08054DB0 @ case 57
	.4byte _08054DB0 @ case 58
	.4byte _08054DB0 @ case 59
	.4byte _08054DB0 @ case 60
	.4byte _08054DB0 @ case 61
	.4byte _08054DB0 @ case 62
	.4byte _08054DB0 @ case 63
	.4byte _08054DB0 @ case 64
	.4byte _08054DB0 @ case 65
	.4byte _08054DB0 @ case 66
	.4byte _08054DB0 @ case 67
	.4byte _08054DB0 @ case 68
	.4byte _08054DB0 @ case 69
	.4byte _08054DB0 @ case 70
	.4byte _08054DB0 @ case 71
	.4byte _08054DB0 @ case 72
	.4byte _08054DB0 @ case 73
	.4byte _08054DB0 @ case 74
	.4byte _08054DB0 @ case 75
	.4byte _08054DB0 @ case 76
	.4byte _08054DB0 @ case 77
	.4byte _08054DB0 @ case 78
	.4byte _08054DB0 @ case 79
	.4byte _08054DB0 @ case 80
	.4byte _08054DB0 @ case 81
	.4byte _08054DB0 @ case 82
	.4byte _08054DB0 @ case 83
	.4byte _08054DB0 @ case 84
	.4byte _08054DB0 @ case 85
	.4byte _08054DB0 @ case 86
	.4byte _08054DB0 @ case 87
	.4byte _08054DB0 @ case 88
	.4byte _08054DB0 @ case 89
	.4byte _08054DB0 @ case 90
	.4byte _08054DB0 @ case 91
	.4byte _08054DB0 @ case 92
	.4byte _08054DB0 @ case 93
	.4byte _08054DB0 @ case 94
	.4byte _08054DB0 @ case 95
	.4byte _08054DB0 @ case 96
	.4byte _08054DB0 @ case 97
	.4byte _08054DB0 @ case 98
	.4byte _08054D68 @ case 99
_08054908:
	ldrb r4, [r6, #0xb]
	cmp r4, #0
	bne _0805495C
	movs r0, #0x40
	ands r3, r0
	cmp r3, #0
	beq _08054940
	ldr r0, [r7]
	ldr r1, _0805493C @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x37
	str r1, [sp]
	movs r1, #0x68
	movs r2, #0x80
	movs r3, #0x20
	bl sub_08068AD4
	cmp r0, #0
	beq _08054940
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	strb r4, [r6, #0xd]
	b _08054DB0
	.align 2, 0
_0805493C: .4byte 0x00013110
_08054940:
	ldr r0, _08054954 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08054958 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #2
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1]
	b _08054DB0
	.align 2, 0
_08054954: .4byte gEwramData
_08054958: .4byte 0x0000042C
_0805495C:
	bl sub_08021304
	adds r7, r0, #0
	cmp r7, #0
	bne _080549B4
	movs r0, #0xf3
	bl sub_080D7910
	bl sub_0803D270
	bl sub_0803CED4
	bl sub_080235C8
	ldr r4, _080549A8 @ =gEwramData
	ldr r1, [r4]
	ldr r0, _080549AC @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r5, #1
	orrs r0, r5
	str r0, [r1]
	bl sub_08054280
	bl sub_080213BC
	ldr r1, [r4]
	ldr r0, _080549B0 @ =0x0000A074
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	strb r5, [r6, #0x16]
	strb r7, [r6, #0xb]
	b _08054BE8
	.align 2, 0
_080549A8: .4byte gEwramData
_080549AC: .4byte 0x0000042C
_080549B0: .4byte 0x0000A074
_080549B4:
	ldrb r0, [r6, #0xd]
	cmp r0, #3
	beq _080549BC
	b _08054DB0
_080549BC:
	movs r0, #0
	strb r0, [r6, #0xb]
	b _08054DB0
_080549C2:
	adds r0, r6, #0
	adds r0, #0x35
	ldrb r1, [r0]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080549F0 @ =0x000004E4
	adds r0, r0, r1
	ldr r4, [r7]
	adds r4, r4, r0
	ldr r0, _080549F4 @ =0x0820C384
	movs r1, #4
	movs r2, #1
	movs r3, #0xe
	bl sub_0803C7B4
	adds r4, #0x58
	ldrb r1, [r4]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	b _08054BE8
	.align 2, 0
_080549F0: .4byte 0x000004E4
_080549F4: .4byte 0x0820C384
_080549F8:
	movs r4, #3
	ands r4, r3
	cmp r4, #0
	beq _08054AE0
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _08054AD8
	ldrb r0, [r6, #0x16]
	cmp r0, #0
	beq _08054AD8
	ldr r4, [r7]
	adds r5, r4, #0
	adds r5, #0x60
	adds r0, r5, #0
	bl sub_08012688
	adds r0, r5, #0
	bl sub_080135C0
	movs r0, #0x85
	lsls r0, r0, #3
	adds r4, r4, r0
	ldrb r0, [r4]
	bl sub_08013620
	adds r4, r0, #0
	cmp r4, #0
	bne _08054A84
	bl sub_0800EF58
	strb r4, [r6, #0xd]
	movs r0, #0x14
	strb r0, [r6, #0xa]
	ldrh r1, [r6, #0x24]
	movs r0, #2
	orrs r0, r1
	strh r0, [r6, #0x24]
	movs r0, #0xf3
	bl sub_080D7910
	adds r0, r6, #0
	adds r0, #0x35
	ldrb r1, [r0]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08054A7C @ =0x000004E4
	adds r0, r0, r1
	ldr r4, [r7]
	adds r4, r4, r0
	ldr r0, _08054A80 @ =0x082099FC
	movs r1, #5
	movs r2, #1
	movs r3, #0xe
	bl sub_0803C7B4
	adds r4, #0x58
	ldrb r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4]
	bl sub_08040FE0
	b _08054DB0
	.align 2, 0
_08054A7C: .4byte 0x000004E4
_08054A80: .4byte 0x082099FC
_08054A84:
	movs r0, #0xef
	bl sub_080D7910
	adds r0, r6, #0
	adds r0, #0x35
	ldrb r1, [r0]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08054ACC @ =0x000004E4
	adds r0, r0, r1
	ldr r4, [r7]
	adds r4, r4, r0
	ldr r0, _08054AD0 @ =0x082099FC
	movs r1, #5
	movs r2, #1
	movs r3, #0xe
	bl sub_0803C7B4
	adds r4, #0x58
	ldrb r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4]
	bl sub_08040FE0
	ldr r0, _08054AD4 @ =0x0820C428
	movs r1, #0
	movs r2, #2
	movs r3, #0xd
	bl sub_0803C918
	movs r0, #2
	bl sub_08041304
	b _08054B44
	.align 2, 0
_08054ACC: .4byte 0x000004E4
_08054AD0: .4byte 0x082099FC
_08054AD4: .4byte 0x0820C428
_08054AD8:
	movs r0, #0xf0
	bl sub_080D7910
	b _08054BE8
_08054AE0:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08054AF8
	ldrb r0, [r6, #0x16]
	cmp r0, #0
	beq _08054AF8
	movs r0, #0xf1
	bl sub_080D7910
	strb r4, [r6, #0x16]
	b _08054DB0
_08054AF8:
	movs r0, #0x20
	ands r2, r0
	cmp r2, #0
	bne _08054B02
	b _08054DB0
_08054B02:
	ldrb r0, [r6, #0x16]
	cmp r0, #0
	beq _08054B0A
	b _08054DB0
_08054B0A:
	movs r0, #0xf1
	bl sub_080D7910
	movs r0, #1
	strb r0, [r6, #0x16]
	b _08054DB0
_08054B16:
	adds r0, r6, #0
	adds r0, #0x35
	ldrb r1, [r0]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08054B5C @ =0x000004E4
	adds r0, r0, r1
	ldr r4, [r7]
	adds r4, r4, r0
	ldr r0, _08054B60 @ =0x082099FC
	movs r1, #5
	movs r2, #1
	movs r3, #0xe
	bl sub_0803C7B4
	adds r4, #0x58
	ldrb r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4]
	bl sub_08040FE0
_08054B44:
	ldr r1, [r7]
	ldr r0, _08054B64 @ =0x0000A074
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	movs r0, #0
	strb r0, [r6, #0xd]
	strb r0, [r6, #0xa]
	b _08054DB0
	.align 2, 0
_08054B5C: .4byte 0x000004E4
_08054B60: .4byte 0x082099FC
_08054B64: .4byte 0x0000A074
_08054B68:
	adds r0, r6, #0
	adds r0, #0x32
	ldrb r1, [r0]
	cmp r1, #0
	bne _08054BA8
	adds r0, #1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08054B98
	ldr r0, [r6, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r6, #0x1c]
	ldr r1, _08054B94 @ =0x0000FFFF
	cmp r0, r1
	bgt _08054B8C
	b _08054DB0
_08054B8C:
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r6, #0x1c]
	b _08054DB0
	.align 2, 0
_08054B94: .4byte 0x0000FFFF
_08054B98:
	ldr r0, [r6, #0x1c]
	subs r0, #0xcc
	str r0, [r6, #0x1c]
	cmp r0, #0
	ble _08054BA4
	b _08054DB0
_08054BA4:
	str r1, [r6, #0x1c]
	b _08054DB0
_08054BA8:
	ldr r2, _08054BC0 @ =0x00003FBF
	movs r0, #3
	movs r1, #0x50
	bl sub_0803FE64
	movs r0, #3
	movs r1, #0x54
	movs r2, #0
	bl sub_0803FE64
	b _08054BE4
	.align 2, 0
_08054BC0: .4byte 0x00003FBF
_08054BC4:
	ldrb r2, [r6, #0xd]
	lsrs r2, r2, #2
	movs r0, #3
	movs r1, #0x54
	bl sub_0803FE64
	ldrb r0, [r6, #0xd]
	cmp r0, #0x3f
	bhi _08054BD8
	b _08054DB0
_08054BD8:
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
_08054BE4:
	movs r0, #0
	strb r0, [r6, #0xd]
_08054BE8:
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	b _08054DB0
_08054BF0:
	ldrb r0, [r6, #0xd]
	movs r2, #0x10
	subs r2, r2, r0
	movs r0, #3
	movs r1, #0x54
	bl sub_0803FE64
	ldrb r0, [r6, #0xd]
	cmp r0, #0xf
	bhi _08054C06
	b _08054DB0
_08054C06:
	ldr r0, _08054C1C @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08054C20 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #2
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1]
	b _08054D5C
	.align 2, 0
_08054C1C: .4byte gEwramData
_08054C20: .4byte 0x0000042C
_08054C24:
	adds r0, r6, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #1
	beq _08054C30
	b _08054DB0
_08054C30:
	adds r0, r6, #0
	bl sub_08054F74
	ldr r0, _08054C50 @ =0x08119C10
	movs r1, #0xc
	movs r2, #2
	movs r3, #2
	bl sub_0803C918
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	movs r0, #0xf6
	bl sub_080D7910
	b _08054DB0
	.align 2, 0
_08054C50: .4byte 0x08119C10
_08054C54:
	adds r0, r6, #0
	adds r0, #0x32
	ldrb r2, [r0]
	adds r3, r0, #0
	cmp r2, #0
	bne _08054C9C
	adds r0, #1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08054C90
	ldr r0, [r6, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r6, #0x1c]
	ldr r1, _08054C8C @ =0x0000FFFF
	cmp r0, r1
	ble _08054C7E
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r6, #0x1c]
_08054C7E:
	ldrb r0, [r6, #0xb]
	cmp r0, #0
	bne _08054C9C
	movs r0, #1
	strb r0, [r6, #0xb]
	strb r2, [r6, #0xd]
	b _08054C9C
	.align 2, 0
_08054C8C: .4byte 0x0000FFFF
_08054C90:
	ldr r0, [r6, #0x1c]
	subs r0, #0xcc
	str r0, [r6, #0x1c]
	cmp r0, #0
	bgt _08054C9C
	str r2, [r6, #0x1c]
_08054C9C:
	ldrb r0, [r6, #0xb]
	cmp r0, #4
	bls _08054CA4
	b _08054DB0
_08054CA4:
	lsls r0, r0, #2
	ldr r1, _08054CB0 @ =_08054CB4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08054CB0: .4byte _08054CB4
_08054CB4: @ jump table
	.4byte _08054DB0 @ case 0
	.4byte _08054CC8 @ case 1
	.4byte _08054CEC @ case 2
	.4byte _08054D18 @ case 3
	.4byte _08054D36 @ case 4
_08054CC8:
	ldrb r0, [r6, #0xd]
	cmp r0, #0xe
	bne _08054CEC
	ldr r2, _08054D14 @ =0x00003FBF
	movs r0, #3
	movs r1, #0x50
	bl sub_0803FE64
	movs r0, #3
	movs r1, #0x54
	movs r2, #0
	bl sub_0803FE64
	movs r0, #0
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
_08054CEC:
	ldrb r2, [r6, #0xd]
	lsrs r2, r2, #1
	movs r0, #3
	movs r1, #0x54
	bl sub_0803FE64
	ldrb r0, [r6, #0xd]
	cmp r0, #0x1f
	bls _08054DB0
	movs r0, #3
	movs r1, #0x54
	movs r2, #0x10
	bl sub_0803FE64
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xd]
	b _08054DB0
	.align 2, 0
_08054D14: .4byte 0x00003FBF
_08054D18:
	ldrb r0, [r6, #0xd]
	lsrs r0, r0, #3
	movs r2, #0x10
	subs r2, r2, r0
	movs r0, #3
	movs r1, #0x54
	bl sub_0803FE64
	ldrb r0, [r6, #0xd]
	cmp r0, #0x3f
	bls _08054DB0
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	b _08054DB0
_08054D36:
	ldrb r0, [r3]
	cmp r0, #1
	bne _08054DB0
	ldr r1, [r7]
	ldr r0, _08054D64 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #2
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1]
	movs r0, #3
	movs r1, #0x54
	movs r2, #0
	bl sub_0803FE64
	movs r0, #0
	strb r0, [r6, #0xd]
	strb r0, [r6, #0xb]
_08054D5C:
	movs r0, #0x63
	strb r0, [r6, #0xa]
	b _08054DB0
	.align 2, 0
_08054D64: .4byte 0x0000042C
_08054D68:
	adds r0, r6, #0
	adds r0, #0x35
	ldrb r1, [r0]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08054E10 @ =0x000004E4
	adds r0, r0, r1
	ldr r4, [r7]
	adds r4, r4, r0
	ldr r0, _08054E14 @ =0x082099FC
	movs r1, #5
	movs r2, #1
	movs r3, #0xe
	bl sub_0803C7B4
	adds r4, #0x58
	ldrb r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4]
	bl sub_08040FE0
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r7]
	ldr r0, _08054E18 @ =0x0000A074
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
_08054DB0:
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _08054DBE
	movs r0, #1
	movs r1, #0x40
	bl sub_080009A0
_08054DBE:
	ldr r2, [r6, #0x1c]
	movs r0, #0
	str r0, [sp]
	ldrb r0, [r6, #0x17]
	str r0, [sp, #4]
	movs r0, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xd]
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08054E2C
	adds r0, r6, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #1
	beq _08054E2C
	adds r2, r6, #0
	adds r2, #0x34
	ldrb r1, [r2]
	movs r0, #1
	subs r0, r0, r1
	strb r0, [r2]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08054E20
	ldr r0, _08054E1C @ =0x08119C10
	movs r1, #0xa
	movs r2, #2
	movs r3, #2
	bl sub_0803C918
	b _08054E2C
	.align 2, 0
_08054E10: .4byte 0x000004E4
_08054E14: .4byte 0x082099FC
_08054E18: .4byte 0x0000A074
_08054E1C: .4byte 0x08119C10
_08054E20:
	ldr r0, _08054E34 @ =0x08119C10
	movs r1, #2
	movs r2, #2
	movs r3, #2
	bl sub_0803C918
_08054E2C:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08054E34: .4byte 0x08119C10

	thumb_func_start sub_08054E38
sub_08054E38: @ 0x08054E38
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x80
	adds r6, r0, #0
	movs r0, #0
	mov sb, r0
	str r0, [sp, #0x40]
	movs r1, #0x1a
	ldrsh r0, [r6, r1]
	adds r0, #2
	str r0, [sp, #0x44]
	ldr r3, _08054EE8 @ =sub_08055070
	str r3, [sp, #0x48]
	movs r0, #0x13
	str r0, [sp, #0x4c]
	add r1, sp, #0x50
	movs r0, #2
	str r0, [sp, #0x50]
	movs r2, #0x1a
	ldrsh r0, [r6, r2]
	adds r0, #3
	str r0, [r1, #4]
	str r3, [r1, #8]
	movs r2, #0x14
	str r2, [r1, #0xc]
	add r1, sp, #0x60
	movs r0, #7
	str r0, [sp, #0x60]
	movs r4, #0x1a
	ldrsh r0, [r6, r4]
	adds r0, #3
	str r0, [r1, #4]
	str r3, [r1, #8]
	str r2, [r1, #0xc]
	add r1, sp, #0x70
	movs r0, #4
	str r0, [sp, #0x70]
	movs r4, #0x1a
	ldrsh r0, [r6, r4]
	adds r0, #1
	str r0, [r1, #4]
	str r3, [r1, #8]
	str r2, [r1, #0xc]
	add r1, sp, #0x40
	mov r0, sp
	movs r2, #0x40
	bl memcpy
	movs r0, #0
	mov r8, r0
	mov r5, sp
	movs r7, #0
_08054EA4:
	mov r0, r8
	subs r0, #1
	cmp r0, #1
	bls _08054F4C
	movs r0, #0x1b
	movs r1, #0x48
	ldr r2, _08054EEC @ =sub_08000F38
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	beq _08054F4C
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x44]
	ldr r0, [r5]
	cmp r0, #2
	beq _08054ECE
	cmp r0, #7
	bne _08054EFA
_08054ECE:
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r0, [r1]
	subs r0, #0x9f
	strh r0, [r1]
	ldr r0, [r5]
	cmp r0, #2
	bne _08054EF0
	subs r1, #4
	ldrh r0, [r1]
	subs r0, #0x30
	b _08054EF8
	.align 2, 0
_08054EE8: .4byte sub_08055070
_08054EEC: .4byte sub_08000F38
_08054EF0:
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, #0x30
_08054EF8:
	strh r0, [r1]
_08054EFA:
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08054F6C @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r1, #0x18
	ldrsh r2, [r6, r1]
	add r0, sp, #4
	adds r0, r0, r7
	ldr r3, [r0]
	adds r0, r4, #0
	ldr r1, _08054F70 @ =0x08257964
	bl sub_0803B924
	ldrh r1, [r5]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	add r0, sp, #0xc
	adds r0, r0, r7
	ldr r1, [r0]
	adds r0, r4, #0
	adds r0, #0x5c
	strb r1, [r0]
	add r0, sp, #8
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [r4]
	str r6, [r4, #0x1c]
	movs r0, #4
	strb r0, [r4, #0xd]
	movs r2, #1
	mov sb, r2
_08054F4C:
	adds r5, #0x10
	adds r7, #0x10
	movs r4, #1
	add r8, r4
	mov r0, r8
	cmp r0, #3
	ble _08054EA4
	mov r0, sb
	add sp, #0x80
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08054F6C: .4byte sub_0803B9D0
_08054F70: .4byte 0x08257964

	thumb_func_start sub_08054F74
sub_08054F74: @ 0x08054F74
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x20
	adds r6, r0, #0
	movs r5, #0
	movs r0, #2
	str r0, [sp, #0x10]
	movs r1, #0x1a
	ldrsh r0, [r6, r1]
	adds r0, #3
	str r0, [sp, #0x14]
	ldr r0, _08055060 @ =sub_0805514C
	str r0, [sp, #0x18]
	movs r0, #0x11
	str r0, [sp, #0x1c]
	add r1, sp, #0x10
	mov r0, sp
	movs r2, #0x10
	bl memcpy
	mov r8, r5
	movs r7, #0
	movs r4, #0
	mov sb, r4
_08054FA8:
	movs r0, #0x1b
	movs r1, #0x48
	ldr r2, _08055064 @ =sub_08000F38
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	beq _08055044
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x44]
	adds r5, r4, #0
	adds r5, #0x59
	ldrb r0, [r5]
	movs r1, #2
	orrs r0, r1
	strb r0, [r5]
	ldr r0, _08055068 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #0x18
	ldrsh r2, [r6, r0]
	add r0, sp, #4
	adds r0, r0, r7
	ldr r3, [r0]
	adds r0, r4, #0
	ldr r1, _0805506C @ =0x08257964
	bl sub_0803B924
	mov r1, sp
	adds r0, r1, r7
	ldrh r1, [r0]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	add r0, sp, #0xc
	adds r0, r0, r7
	ldr r1, [r0]
	adds r0, r4, #0
	adds r0, #0x5c
	strb r1, [r0]
	add r0, sp, #8
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [r4]
	str r6, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x20
	mov r1, r8
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [r4, #0x24]
	mov r0, sb
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	strb r0, [r4, #0xa]
	movs r0, #2
	strb r0, [r4, #0xd]
	adds r3, r4, #0
	adds r3, #0x58
	movs r0, #0x1f
	ldrb r2, [r6, #0x17]
	ands r2, r0
	ldrb r0, [r3]
	movs r4, #0x20
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	ldrb r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r5]
	movs r5, #1
_08055044:
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #7
	ble _08054FA8
	adds r0, r5, #0
	add sp, #0x20
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08055060: .4byte sub_0805514C
_08055064: .4byte sub_08000F38
_08055068: .4byte sub_0803B9D0
_0805506C: .4byte 0x08257964

	thumb_func_start sub_08055070
sub_08055070: @ 0x08055070
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r3, [r4, #0x1c]
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0805509C
	cmp r0, #1
	bgt _08055086
	cmp r0, #0
	beq _0805508C
	b _08055140
_08055086:
	cmp r0, #2
	beq _080550CE
	b _08055140
_0805508C:
	ldrh r1, [r3, #0x24]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08055140
	movs r0, #1
	strb r0, [r4, #0xa]
	b _08055140
_0805509C:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080550AC
	cmp r0, #4
	beq _080550BA
	b _080550C6
_080550AC:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _080550C6
_080550BA:
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080550C6:
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _08055140
_080550CE:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #2
	beq _080550EA
	cmp r0, #2
	bgt _080550E2
	cmp r0, #1
	beq _08055102
	b _08055140
_080550E2:
	cmp r0, #5
	beq _08055102
	cmp r0, #7
	bne _08055140
_080550EA:
	adds r0, r3, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #1
	bne _08055140
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	b _08055140
_08055102:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #2
	bne _08055116
	adds r1, r3, #0
	adds r1, #0x31
	movs r0, #1
	strb r0, [r1]
	b _08055140
_08055116:
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08055140
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08055140
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	adds r0, r3, #0
	adds r0, #0x30
	strb r5, [r0]
_08055140:
	adds r0, r4, #0
	bl sub_0803F17C
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0805514C
sub_0805514C: @ 0x0805514C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r0, [r5, #0x1c]
	mov r8, r0
	ldrb r7, [r5, #0xa]
	cmp r7, #0
	beq _08055164
	cmp r7, #1
	beq _08055200
	b _08055294
_08055164:
	adds r4, r5, #0
	adds r4, #0x20
	ldrb r0, [r4]
	lsls r0, r0, #0xd
	bl sub_080009E4
	adds r6, r0, #0
	ldrb r0, [r4]
	lsls r0, r0, #0xd
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	adds r1, r0, #0
	ldr r2, [r5, #0x24]
	asrs r0, r2, #0x10
	muls r6, r0, r6
	muls r1, r0, r1
	movs r3, #0xa0
	lsls r3, r3, #0xf
	adds r0, r6, r3
	str r0, [r5, #0x44]
	movs r3, #0xec
	lsls r3, r3, #0xf
	adds r0, r1, r3
	str r0, [r5, #0x40]
	ldr r1, [r5, #0x28]
	ldr r0, _080551A8 @ =0x001DFFFF
	cmp r1, r0
	bhi _080551AC
	lsrs r0, r1, #0x10
	b _080551B2
	.align 2, 0
_080551A8: .4byte 0x001DFFFF
_080551AC:
	lsrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
_080551B2:
	lsls r0, r0, #0xd
	adds r0, r2, r0
	str r0, [r5, #0x24]
	ldr r0, [r5, #0x28]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x2c]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r5, #0x2c]
	ldr r1, [r5, #0x24]
	ldr r0, _080551FC @ =0x00FFFFFF
	cmp r1, r0
	ble _08055294
	ldrb r0, [r5, #0xa]
	adds r0, #1
	movs r2, #0
	strb r0, [r5, #0xa]
	movs r0, #2
	strb r0, [r5, #0xd]
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #9
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #0x11
	str r0, [r5, #0x24]
	mov r1, r8
	adds r1, #0x33
	movs r0, #1
	strb r0, [r1]
	str r2, [r5, #0x28]
	b _08055294
	.align 2, 0
_080551FC: .4byte 0x00FFFFFF
_08055200:
	adds r4, r5, #0
	adds r4, #0x20
	ldrb r0, [r4]
	lsls r0, r0, #0xd
	ldr r1, [r5, #0x28]
	adds r0, r0, r1
	bl sub_080009E4
	adds r6, r0, #0
	ldrb r0, [r4]
	lsls r0, r0, #0xd
	ldr r1, [r5, #0x28]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r1, r3
	adds r0, r0, r1
	bl sub_080009E4
	adds r1, r0, #0
	movs r2, #0x26
	ldrsh r0, [r5, r2]
	muls r6, r0, r6
	muls r1, r0, r1
	movs r3, #0xf0
	lsls r3, r3, #0xf
	adds r0, r1, r3
	str r0, [r5, #0x40]
	movs r1, #0xa0
	lsls r1, r1, #0xf
	adds r0, r6, r1
	str r0, [r5, #0x44]
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	mov r2, r8
	ldr r1, [r2, #0x40]
	subs r0, r0, r1
	ldr r1, [r5, #0x40]
	adds r1, r1, r0
	str r1, [r5, #0x40]
	adds r0, r5, #0
	bl sub_0806CDFC
	lsls r0, r0, #0x10
	mov r3, r8
	ldr r1, [r3, #0x44]
	subs r0, r0, r1
	ldr r1, [r5, #0x44]
	adds r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #0xe
	adds r1, r1, r0
	str r1, [r5, #0x44]
	ldr r1, [r5, #0x24]
	ldr r2, _080552C0 @ =0xFFFD0000
	adds r1, r1, r2
	str r1, [r5, #0x24]
	ldr r0, [r5, #0x28]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	str r0, [r5, #0x28]
	cmp r1, #0
	bgt _08055294
	ldr r0, [r5, #0x1c]
	adds r0, #0x32
	strb r7, [r0]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_08055294:
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	movs r1, #0xff
	ands r0, r1
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080552B0
	adds r0, r5, #0
	movs r1, #0x10
	movs r2, #0x10
	bl sub_080553A0
_080552B0:
	adds r0, r5, #0
	bl sub_0803F17C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080552C0: .4byte 0xFFFD0000

	thumb_func_start sub_080552C4
sub_080552C4: @ 0x080552C4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _08055334
	cmp r0, #1
	bgt _080552D8
	cmp r0, #0
	beq _080552DE
	b _08055394
_080552D8:
	cmp r0, #2
	beq _08055372
	b _08055394
_080552DE:
	ldr r0, _08055324 @ =0x082052E8
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08055328 @ =0x08257964
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r3, [r0]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1c
	adds r0, r4, #0
	bl sub_0803B924
	ldr r0, _0805532C @ =sub_080554BC
	str r0, [r4, #4]
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0xc
	strb r0, [r4, #0xd]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08055330 @ =0xFFFF0000
	str r0, [r4, #0x4c]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _08055394
	.align 2, 0
_08055324: .4byte 0x082052E8
_08055328: .4byte 0x08257964
_0805532C: .4byte sub_080554BC
_08055330: .4byte 0xFFFF0000
_08055334:
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
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	bne _08055394
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r3, [r4, #0xd]
	b _08055394
_08055372:
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	subs r0, r0, r1
	str r0, [r4, #0x44]
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bls _08055394
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_08055394:
	adds r0, r4, #0
	bl sub_0803F17C
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080553A0
sub_080553A0: @ 0x080553A0
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0xc
	mov sb, r0
	adds r6, r1, #0
	mov r8, r2
	lsls r6, r6, #0x10
	lsrs r4, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	mov r8, r0
	lsrs r5, r0, #0x10
	bl RandomNumberGenerator
	subs r4, #1
	ands r4, r0
	lsrs r6, r6, #0x11
	subs r4, r4, r6
	lsls r4, r4, #0x10
	mov r0, sb
	ldr r6, [r0, #0x40]
	adds r6, r6, r4
	bl RandomNumberGenerator
	subs r5, #1
	ands r5, r0
	mov r0, r8
	lsrs r0, r0, #0x11
	subs r5, r5, r0
	lsls r5, r5, #0x10
	mov r0, sb
	ldr r1, [r0, #0x44]
	adds r1, r1, r5
	ldr r2, [r0, #0x50]
	ldr r3, [r0, #0x54]
	movs r0, #0
	str r0, [sp]
	mov r0, sb
	adds r0, #0x5a
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	str r0, [sp, #4]
	mov r0, sb
	str r0, [sp, #8]
	adds r0, r6, #0
	bl sub_08055414
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08055414
sub_08055414: @ 0x08055414
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r0, [sp, #0x20]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r2, _080554B4 @ =sub_080552C4
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r6, r0, #0
	cmp r6, #0
	beq _080554A8
	str r4, [r6, #0x40]
	str r5, [r6, #0x44]
	str r7, [r6, #0x50]
	mov r0, r8
	str r0, [r6, #0x54]
	ldr r0, [sp, #0x1c]
	str r0, [r6, #0x18]
	bl RandomNumberGenerator
	movs r5, #0x1f
	ands r0, r5
	lsls r0, r0, #0x10
	ldr r4, _080554B8 @ =0xFFF00000
	adds r0, r0, r4
	str r0, [r6, #0x1c]
	bl RandomNumberGenerator
	ands r0, r5
	lsls r0, r0, #0x10
	adds r0, r0, r4
	str r0, [r6, #0x20]
	adds r3, r6, #0
	adds r3, #0x5a
	movs r0, #0xf
	mov r1, sb
	ands r1, r0
	lsls r1, r1, #3
	ldrb r2, [r3]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r1, [sp, #0x24]
	str r1, [r6, #0x34]
	adds r0, r1, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r6, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, [sp, #0x24]
	adds r0, #0x58
	ldrb r1, [r0]
	lsls r1, r1, #0x1b
	subs r3, #2
	lsrs r1, r1, #0x1b
	ldrb r2, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_080554A8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080554B4: .4byte sub_080552C4
_080554B8: .4byte 0xFFF00000

	thumb_func_start sub_080554BC
sub_080554BC: @ 0x080554BC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803AC40
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x1c]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x20]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	adds r0, r4, #0
	bl sub_0803AC40
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x1c]
	subs r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x20]
	subs r0, r0, r1
	str r0, [r4, #0x44]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080554F0
sub_080554F0: @ 0x080554F0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0805551C
	ldr r4, _08055510 @ =0x082052F0
	ldr r3, _08055514 @ =0x08119E14
	mov r8, r3
	ldr r0, _08055518 @ =0x08257BD8
	mov sb, r0
	movs r7, #0xc
	b _08055528
	.align 2, 0
_08055510: .4byte 0x082052F0
_08055514: .4byte 0x08119E14
_08055518: .4byte 0x08257BD8
_0805551C:
	ldr r4, _080555B0 @ =0x082052E8
	ldr r1, _080555B4 @ =0x0820C384
	mov r8, r1
	ldr r3, _080555B8 @ =0x08257964
	mov sb, r3
	movs r7, #0xa
_08055528:
	adds r0, r4, #0
	bl sub_0803AFB8
	adds r6, r0, #0
	cmp r6, #0
	bge _0805553E
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803B800
	adds r6, r0, #0
_0805553E:
	adds r4, r7, #0
	mov r0, r8
	movs r1, #0
	movs r2, #1
	adds r3, r4, #0
	bl sub_0803C7B4
	adds r0, r5, #0
	mov r1, sb
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_0803B924
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
	ldr r0, _080555BC @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x60
	ldr r1, [r0, #0x28]
	movs r3, #0
	ldrh r0, [r1, #0x1c]
	adds r4, r5, #0
	adds r4, #0x65
	cmp r3, r0
	bge _08055586
	ldr r2, [r1, #0x18]
	adds r1, r0, #0
_08055578:
	movs r0, #4
	ldrsb r0, [r2, r0]
	adds r3, r3, r0
	adds r2, #0x10
	subs r1, #1
	cmp r1, #0
	bne _08055578
_08055586:
	movs r0, #0x30
	ldrsh r1, [r5, r0]
	cmp r1, #0
	bne _080555D8
	movs r0, #0xb
	strb r0, [r4]
	cmp r3, #1
	bne _080555C0
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r1]
	subs r0, #0xd0
	strh r0, [r1]
	strb r3, [r5, #0x14]
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	b _0805562A
	.align 2, 0
_080555B0: .4byte 0x082052E8
_080555B4: .4byte 0x0820C384
_080555B8: .4byte 0x08257964
_080555BC: .4byte gEwramData
_080555C0:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	bne _08055604
	strb r1, [r5, #0x14]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0]
	b _0805562C
_080555D8:
	movs r0, #0x14
	strb r0, [r4]
	cmp r3, #1
	bne _080555FC
	adds r1, r5, #0
	adds r1, #0x42
	movs r0, #0x10
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x70
	strh r0, [r1]
	strb r3, [r5, #0x14]
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	subs r0, #0xb1
	ands r0, r1
	b _0805562A
_080555FC:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _08055610
_08055604:
	cmp r3, #0
	bne _0805562C
	adds r0, r5, #0
	bl sub_08000E14
	b _0805566A
_08055610:
	adds r2, r5, #0
	adds r2, #0x42
	movs r1, #0
	movs r0, #0xe0
	strh r0, [r2]
	adds r2, #4
	movs r0, #0x70
	strh r0, [r2]
	strb r1, [r5, #0x14]
	adds r2, #0x12
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
_0805562A:
	strb r0, [r2]
_0805562C:
	movs r4, #0
	adds r7, r5, #0
	adds r7, #0x42
	adds r6, r5, #0
	adds r6, #0x58
	adds r5, #0x46
_08055638:
	movs r1, #0
	ldrsh r0, [r7, r1]
	ldr r1, _08055678 @ =gEwramData
	ldr r2, [r1]
	ldr r3, _0805567C @ =0x0000A094
	adds r2, r2, r3
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldrb r1, [r6]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	lsls r1, r1, #4
	subs r0, r0, r1
	movs r3, #0
	ldrsh r1, [r5, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	subs r1, r1, r4
	bl sub_08002200
	adds r4, #0x10
	cmp r4, #0x30
	ble _08055638
_0805566A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08055678: .4byte gEwramData
_0805567C: .4byte 0x0000A094

	thumb_func_start sub_08055680
sub_08055680: @ 0x08055680
	bx lr
	.align 2, 0

	thumb_func_start sub_08055684
sub_08055684: @ 0x08055684
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r7, r0, #0
	movs r0, #0x65
	adds r0, r0, r7
	mov r8, r0
	ldrb r1, [r0]
	mov sb, r1
	adds r4, r7, #0
	adds r4, #0x59
	ldrb r1, [r4]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	adds r0, r7, #0
	bl sub_0803AC40
	ldrb r0, [r4]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4]
	ldr r0, _08055730 @ =gEwramData
	ldr r0, [r0]
	ldr r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0805571C
	lsls r0, r1, #0xb
	bl sub_080009E4
	adds r2, r0, #0
	asrs r2, r2, #3
	movs r0, #0xe0
	lsls r0, r0, #8
	adds r2, r2, r0
	movs r0, #0
	str r0, [sp]
	ldrb r0, [r7, #0x18]
	str r0, [sp, #4]
	movs r0, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	adds r6, r7, #0
	adds r6, #0x5a
	ldrb r1, [r6]
	movs r4, #7
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r6]
	adds r5, r7, #0
	adds r5, #0x46
	ldrh r0, [r5]
	subs r0, #0x1c
	strh r0, [r5]
	movs r0, #6
	mov r1, r8
	strb r0, [r1]
	adds r0, r7, #0
	bl sub_0803AC40
	ldrb r0, [r6]
	ands r4, r0
	strb r4, [r6]
	ldrh r0, [r5]
	adds r0, #0x1c
	strh r0, [r5]
_0805571C:
	mov r1, sb
	mov r0, r8
	strb r1, [r0]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08055730: .4byte gEwramData

	thumb_func_start sub_08055734
sub_08055734: @ 0x08055734
	bx lr
	.align 2, 0

	thumb_func_start sub_08055738
sub_08055738: @ 0x08055738
	bx lr
	.align 2, 0

	thumb_func_start sub_0805573C
sub_0805573C: @ 0x0805573C
	push {lr}
	bl sub_0803F17C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08055748
sub_08055748: @ 0x08055748
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r1, _0805576C @ =gEwramData
	ldr r0, [r1]
	ldrh r3, [r0, #0x16]
	adds r6, r0, #0
	adds r6, #0x60
	ldrb r0, [r7, #0xa]
	adds r5, r1, #0
	cmp r0, #8
	bls _08055762
	b _08055B6C
_08055762:
	lsls r0, r0, #2
	ldr r1, _08055770 @ =_08055774
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805576C: .4byte gEwramData
_08055770: .4byte _08055774
_08055774: @ jump table
	.4byte _08055798 @ case 0
	.4byte _0805583C @ case 1
	.4byte _080558FE @ case 2
	.4byte _0805594C @ case 3
	.4byte _080559D0 @ case 4
	.4byte _08055A98 @ case 5
	.4byte _08055AF0 @ case 6
	.4byte _08055B6C @ case 7
	.4byte _08055B30 @ case 8
_08055798:
	ldr r4, [r5]
	ldr r0, _080557F0 @ =0x0000042C
	adds r3, r4, r0
	ldr r0, [r3]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08055804
	ldr r2, _080557F4 @ =gUnk_03002CB0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x74
	strh r0, [r7, #0x14]
	ldr r2, _080557F8 @ =gDisplayRegisters
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #0x1b
	strb r0, [r1]
	adds r1, #2
	movs r0, #0x3f
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x1e
	strb r0, [r1]
	ldr r2, [r5]
	ldr r5, _080557FC @ =0x00013110
	adds r0, r2, r5
	ldr r0, [r0]
	adds r0, #0x46
	movs r1, #0x60
	strh r1, [r0]
	movs r0, #5
	strb r0, [r7, #0xa]
	ldr r0, _08055800 @ =0x0000A074
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	b _08055826
	.align 2, 0
_080557F0: .4byte 0x0000042C
_080557F4: .4byte gUnk_03002CB0
_080557F8: .4byte gDisplayRegisters
_080557FC: .4byte 0x00013110
_08055800: .4byte 0x0000A074
_08055804:
	ldr r2, _08055830 @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _08055834 @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, [r3]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3]
	movs r0, #1
	strb r0, [r7, #0xa]
	ldr r1, _08055838 @ =0x0000A074
	adds r2, r4, r1
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
_08055826:
	strb r0, [r2]
	movs r0, #0
	strb r0, [r7, #0xd]
	b _08055B6C
	.align 2, 0
_08055830: .4byte gUnk_03002CB0
_08055834: .4byte 0x0000DFFF
_08055838: .4byte 0x0000A074
_0805583C:
	ldrb r0, [r7, #0xb]
	cmp r0, #0
	beq _08055848
	cmp r0, #1
	beq _08055884
	b _08055B6C
_08055848:
	movs r0, #0x40
	ands r3, r0
	cmp r3, #0
	bne _08055852
	b _08055B6C
_08055852:
	ldr r0, [r5]
	ldr r3, _08055880 @ =0x00013110
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #2
	str r1, [sp]
	movs r1, #0x55
	movs r2, #0x7f
	movs r3, #0x49
	bl sub_08068AD4
	cmp r0, #0
	bne _0805586E
	b _08055B6C
_0805586E:
	movs r0, #0
	bl sub_0800C5A8
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #3
	strb r0, [r7, #0xd]
	b _08055B6C
	.align 2, 0
_08055880: .4byte 0x00013110
_08055884:
	bl sub_08021304
	adds r4, r0, #0
	cmp r4, #0
	bne _080558E0
	movs r0, #0xf3
	bl sub_080D7910
	bl sub_0803D270
	bl sub_0803CED4
	bl sub_080235C8
	ldr r0, _080558D4 @ =gEwramData
	ldr r2, [r0]
	ldr r5, _080558D8 @ =0x0000042C
	adds r3, r2, r5
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #0xa
	orrs r0, r1
	str r0, [r3]
	ldr r0, _080558DC @ =0x0000A074
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	strb r4, [r7, #0xd]
	strb r4, [r7, #0xb]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	adds r0, r6, #0
	bl sub_080115D4
	b _08055B6C
	.align 2, 0
_080558D4: .4byte gEwramData
_080558D8: .4byte 0x0000042C
_080558DC: .4byte 0x0000A074
_080558E0:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080558F0
	b _08055B6C
_080558F0:
	movs r0, #1
	bl sub_0800C5A8
	ldrb r0, [r7, #0xb]
	subs r0, #1
	strb r0, [r7, #0xb]
	b _08055B6C
_080558FE:
	ldr r2, [r5]
	movs r1, #0xfd
	lsls r1, r1, #2
	adds r0, r2, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0805591A
	movs r0, #0
	strb r0, [r7, #0xa]
	strb r0, [r7, #0xb]
	b _08055B6C
_0805591A:
	adds r0, r2, #0
	adds r0, #0x88
	movs r3, #0xfe
	lsls r3, r3, #2
	adds r1, r2, r3
	ldr r2, [r0]
	ldr r0, [r1]
	cmp r2, r0
	beq _08055944
	ldr r0, _08055940 @ =0x00001010
	bl sub_080D7910
	movs r0, #0xf9
	bl sub_080D7910
	movs r0, #0
	strb r0, [r7, #0xb]
	b _080559C2
	.align 2, 0
_08055940: .4byte 0x00001010
_08055944:
	movs r0, #0
	strb r0, [r7, #0xb]
	strb r0, [r7, #0xa]
	b _08055B6C
_0805594C:
	ldrb r1, [r7, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08055974
	ldr r0, [r5]
	ldr r5, _08055970 @ =0x00013110
	adds r0, r0, r5
	ldr r2, [r0]
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	b _08055988
	.align 2, 0
_08055970: .4byte 0x00013110
_08055974:
	ldr r0, [r5]
	ldr r1, _080559CC @ =0x00013110
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, #0x5a
	ldrb r2, [r1]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
_08055988:
	ldrb r0, [r7, #0xd]
	adds r1, r0, #1
	strb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x80
	bhi _08055998
	b _08055B6C
_08055998:
	movs r6, #0x80
	lsls r6, r6, #9
	movs r4, #0
	str r4, [sp]
	movs r5, #0x40
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
	strb r4, [r7, #0xd]
_080559C2:
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	b _08055B6C
	.align 2, 0
_080559CC: .4byte 0x00013110
_080559D0:
	ldrb r0, [r7, #0xd]
	adds r1, r0, #1
	strb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3e
	bhi _080559E0
	b _08055B6C
_080559E0:
	ldr r1, [r5]
	ldr r3, _08055A78 @ =0x0000042C
	adds r1, r1, r3
	ldr r0, [r1]
	movs r2, #0x40
	orrs r0, r2
	str r0, [r1]
	movs r0, #0x39
	bl sub_08012048
	adds r0, r6, #0
	bl sub_080109B8
	movs r4, #0
	str r4, [sp, #8]
	ldr r0, _08055A7C @ =0x040000D4
	add r1, sp, #8
	str r1, [r0]
	ldr r1, _08055A80 @ =0x0600E800
	str r1, [r0, #4]
	ldr r2, _08055A84 @ =0x85000200
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r4, [sp, #8]
	add r3, sp, #8
	str r3, [r0]
	ldr r1, _08055A88 @ =0x0600F000
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r4, [sp, #8]
	str r3, [r0]
	ldr r1, _08055A8C @ =0x0600F800
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldr r2, [r5]
	ldr r5, _08055A90 @ =0x00013110
	adds r3, r2, r5
	ldr r0, [r3]
	movs r5, #0x80
	lsls r5, r5, #3
	adds r1, r2, r5
	ldrh r1, [r1]
	adds r0, #0x42
	strh r1, [r0]
	ldr r0, [r3]
	adds r5, #2
	adds r1, r2, r5
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
	subs r5, #6
	adds r0, r2, r5
	ldrh r0, [r0]
	ldr r1, _08055A94 @ =0x000003FE
	adds r2, r2, r1
	ldrh r1, [r2]
	bl sub_0800ECA0
	adds r0, r6, #0
	bl sub_0801083C
	b _08055B6C
	.align 2, 0
_08055A78: .4byte 0x0000042C
_08055A7C: .4byte 0x040000D4
_08055A80: .4byte 0x0600E800
_08055A84: .4byte 0x85000200
_08055A88: .4byte 0x0600F000
_08055A8C: .4byte 0x0600F800
_08055A90: .4byte 0x00013110
_08055A94: .4byte 0x000003FE
_08055A98:
	bl sub_0803D270
	bl sub_0803CED4
	movs r5, #0x80
	lsls r5, r5, #9
	str r5, [sp]
	movs r4, #0x40
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
	movs r0, #0
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	ldr r0, _08055AE8 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _08055AEC @ =0x00013110
	adds r0, r0, r3
	ldr r1, [r0]
	adds r1, #0x5a
	ldrb r2, [r1]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	b _08055B6C
	.align 2, 0
_08055AE8: .4byte gEwramData
_08055AEC: .4byte 0x00013110
_08055AF0:
	ldrb r0, [r7, #0xd]
	adds r1, r0, #1
	strb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3f
	bls _08055B6C
	bl sub_0803D270
	bl sub_0803CED4
	ldrb r0, [r7, #0xa]
	adds r0, #1
	movs r1, #0
	strb r0, [r7, #0xa]
	strb r1, [r7, #0xd]
	ldr r0, _08055B28 @ =gEwramData
	ldr r1, [r0]
	ldr r5, _08055B2C @ =0x0000042C
	adds r1, r1, r5
	ldr r0, [r1]
	movs r2, #0x41
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1]
	bl sub_08013C5C
	b _08055B6C
	.align 2, 0
_08055B28: .4byte gEwramData
_08055B2C: .4byte 0x0000042C
_08055B30:
	ldr r1, [r5]
	ldr r0, _08055BCC @ =0x0000A074
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	ldrb r0, [r7, #0xd]
	adds r1, r0, #1
	strb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08055B6C
	ldrh r0, [r7, #0x14]
	subs r0, #1
	movs r1, #0
	strh r0, [r7, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x23
	bgt _08055B6C
	movs r0, #0x24
	strh r0, [r7, #0x14]
	strb r1, [r7, #0xd]
	strb r1, [r7, #0xa]
_08055B6C:
	ldrb r0, [r7, #0xa]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08055B96
	ldr r0, _08055BD0 @ =gEwramData
	ldr r1, [r0]
	ldr r3, _08055BCC @ =0x0000A074
	adds r1, r1, r3
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r3, _08055BD4 @ =0xFFFFE000
	movs r0, #0x20
	movs r1, #1
	movs r2, #0
	bl sub_0801D028
_08055B96:
	ldrb r0, [r7, #0xa]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bhi _08055BAA
	movs r0, #1
	movs r1, #0
	bl sub_080009A0
_08055BAA:
	ldrb r0, [r7, #0xa]
	cmp r0, #4
	bls _08055BC2
	movs r5, #0x14
	ldrsh r1, [r7, r5]
	ldr r2, _08055BD8 @ =gDisplayRegisters
	ldr r0, _08055BDC @ =0x00005898
	strh r0, [r2, #0x38]
	movs r0, #0x90
	lsls r0, r0, #6
	orrs r1, r0
	strh r1, [r2, #0x3c]
_08055BC2:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08055BCC: .4byte 0x0000A074
_08055BD0: .4byte gEwramData
_08055BD4: .4byte 0xFFFFE000
_08055BD8: .4byte gDisplayRegisters
_08055BDC: .4byte 0x00005898

	thumb_func_start sub_08055BE0
sub_08055BE0: @ 0x08055BE0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	movs r6, #0
	ldr r0, _08055C9C @ =0x082052F0
	bl sub_0803AFB8
	mov sb, r0
	ldr r0, _08055CA0 @ =0x08119E14
	movs r1, #2
	movs r2, #1
	movs r3, #0xa
	bl sub_0803C7B4
	adds r5, r6, #0
_08055C02:
	movs r0, #0x1b
	movs r1, #0x48
	ldr r2, _08055CA4 @ =sub_08000F38
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	beq _08055C88
	movs r6, #1
	ldr r1, _08055CA8 @ =0x08257BD8
	mov r2, sb
	movs r3, #0xa
	bl sub_0803B924
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x65
	strb r5, [r0]
	mov r1, r8
	ldrb r0, [r1, #0x10]
	strb r0, [r4, #0x11]
	cmp r5, #0
	bne _08055C42
	adds r0, r4, #0
	adds r0, #0x5c
	movs r1, #0x1c
	strb r1, [r0]
_08055C42:
	subs r0, r5, #1
	cmp r0, #3
	bhi _08055C50
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x1d
	strb r0, [r1]
_08055C50:
	subs r0, r5, #5
	cmp r0, #3
	bhi _08055C5E
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x1e
	strb r0, [r1]
_08055C5E:
	ldr r0, _08055CAC @ =sub_08055DF8
	str r0, [r4]
	movs r0, #1
	bl sub_0803E654
	adds r3, r4, #0
	adds r3, #0x58
	movs r1, #0x1f
	ands r0, r1
	ldrb r1, [r3]
	movs r7, #0x20
	rsbs r7, r7, #0
	adds r2, r7, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	ldr r0, _08055CB0 @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_08055CB4
_08055C88:
	adds r5, #1
	cmp r5, #8
	ble _08055C02
	adds r0, r6, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08055C9C: .4byte 0x082052F0
_08055CA0: .4byte 0x08119E14
_08055CA4: .4byte sub_08000F38
_08055CA8: .4byte 0x08257BD8
_08055CAC: .4byte sub_08055DF8
_08055CB0: .4byte sub_0803B9D0

	thumb_func_start sub_08055CB4
sub_08055CB4: @ 0x08055CB4
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x42
	movs r0, #0x78
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x48
	strh r0, [r1]
	movs r0, #1
	strb r0, [r5, #0xa]
	adds r1, #0x1f
	ldrb r0, [r1]
	cmp r0, #0
	bne _08055CDC
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	b _08055CE4
_08055CDC:
	ldrb r1, [r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, #0xf
_08055CE4:
	strb r0, [r5, #0xd]
	ldr r0, _08055D64 @ =0x0000FFFF
	str r0, [r5, #0x14]
	movs r1, #0
	movs r0, #0xa
	strh r0, [r5, #0x1a]
	movs r0, #0x3c
	strh r0, [r5, #0x18]
	strh r1, [r5, #0x20]
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r5, #0x22]
	movs r2, #0x80
	lsls r2, r2, #9
	str r1, [sp]
	adds r4, r5, #0
	adds r4, #0x58
	ldrb r0, [r4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08055D68 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08055D6C @ =0x0000042C
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0x40
	ands r1, r0
	adds r7, r4, #0
	adds r6, r2, #0
	cmp r1, #0
	beq _08055DEE
	movs r0, #0
	strb r0, [r5, #0xd]
	adds r3, r5, #0
	adds r3, #0x65
	ldrh r4, [r5, #0x18]
_08055D44:
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	ldr r1, [r5, #0x14]
	subs r1, r1, r0
	str r1, [r5, #0x14]
	ldrh r1, [r5, #0x1a]
	adds r0, r4, r1
	strh r0, [r5, #0x1a]
	ldrb r0, [r3]
	cmp r0, #3
	bls _08055D70
	movs r2, #0x14
	cmp r0, #5
	bls _08055D72
	movs r2, #0xa
	b _08055D72
	.align 2, 0
_08055D64: .4byte 0x0000FFFF
_08055D68: .4byte gEwramData
_08055D6C: .4byte 0x0000042C
_08055D70:
	movs r2, #0x1e
_08055D72:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r2
	ble _08055D88
	ldrh r0, [r5, #0x22]
	ldrh r1, [r5, #0x20]
	adds r0, r0, r1
	strh r0, [r5, #0x20]
_08055D88:
	ldr r2, [r5, #0x14]
	cmp r2, #0
	bgt _08055D44
	movs r0, #6
	strb r0, [r5, #0xa]
	movs r1, #0x22
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	strh r0, [r5, #0x22]
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	strh r0, [r5, #0x1a]
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	strh r0, [r5, #0x18]
	ldrb r0, [r3]
	cmp r0, #0
	bne _08055DBC
	movs r1, #9
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, #0xf
	b _08055DC6
_08055DBC:
	ldrb r0, [r3]
	movs r1, #9
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
_08055DC6:
	strb r0, [r5, #0xd]
	movs r1, #0x20
	ldrsh r0, [r5, r1]
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r2, r2, r1
	movs r1, #0
	str r1, [sp]
	ldrb r1, [r7]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	ldrb r0, [r6]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r6]
_08055DEE:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08055DF8
sub_08055DF8: @ 0x08055DF8
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _08055E24 @ =gEwramData
	ldr r2, [r0]
	ldrb r1, [r4, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08055E28 @ =0x000004E4
	adds r0, r0, r1
	adds r5, r2, r0
	ldrb r0, [r4, #0xa]
	cmp r0, #8
	bls _08055E18
	b _0805606A
_08055E18:
	lsls r0, r0, #2
	ldr r1, _08055E2C @ =_08055E30
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08055E24: .4byte gEwramData
_08055E28: .4byte 0x000004E4
_08055E2C: .4byte _08055E30
_08055E30: @ jump table
	.4byte _08055E54 @ case 0
	.4byte _08055E5C @ case 1
	.4byte _08055E66 @ case 2
	.4byte _08055E9E @ case 3
	.4byte _08055F10 @ case 4
	.4byte _08055F86 @ case 5
	.4byte _08055F94 @ case 6
	.4byte _08055F9C @ case 7
	.4byte _08055FCE @ case 8
_08055E54:
	adds r0, r4, #0
	bl sub_08055CB4
	b _0805606A
_08055E5C:
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	beq _08055E64
	b _0805606A
_08055E64:
	b _08055FC6
_08055E66:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08055E76
	b _0805606A
_08055E76:
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	movs r1, #0
	strh r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x46
	ldrh r0, [r0]
	strh r0, [r4, #0x1e]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xd]
	b _0805606A
_08055E9E:
	adds r0, r4, #0
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0
	bne _08055EEC
	ldrb r1, [r4, #0xd]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08055EDE
	bl RandomNumberGenerator
	adds r5, r4, #0
	adds r5, #0x42
	movs r1, #3
	bl __umodsi3
	subs r0, #1
	ldrh r1, [r5]
	subs r1, r1, r0
	strh r1, [r5]
	bl RandomNumberGenerator
	adds r5, #4
	movs r1, #3
	bl __umodsi3
	subs r0, #1
	ldrh r1, [r5]
	subs r1, r1, r0
	strh r1, [r5]
	b _08055EEC
_08055EDE:
	ldrh r0, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r0, [r4, #0x1e]
	adds r1, #4
	strh r0, [r1]
_08055EEC:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x50
	bhi _08055EFC
	b _0805606A
_08055EFC:
	ldrh r0, [r4, #0x1c]
	adds r2, r4, #0
	adds r2, #0x42
	movs r1, #0
	strh r0, [r2]
	ldrh r0, [r4, #0x1e]
	adds r2, #4
	strh r0, [r2]
	strb r1, [r4, #0xd]
	b _08055FC6
_08055F10:
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x14]
	subs r0, r0, r1
	str r0, [r4, #0x14]
	ldrh r0, [r4, #0x18]
	ldrh r1, [r4, #0x1a]
	adds r0, r0, r1
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #3
	bls _08055F42
	movs r2, #0x14
	cmp r0, #5
	bls _08055F44
	movs r2, #0xa
	b _08055F44
_08055F42:
	movs r2, #0x1e
_08055F44:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r2
	ble _08055F5A
	ldrh r0, [r4, #0x22]
	ldrh r1, [r4, #0x20]
	adds r0, r0, r1
	strh r0, [r4, #0x20]
_08055F5A:
	movs r1, #0x20
	ldrsh r0, [r4, r1]
	ldr r2, [r4, #0x14]
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r2, r2, r1
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
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bgt _0805606A
	b _08055FC6
_08055F86:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	b _0805606A
_08055F94:
	ldrb r0, [r5, #0xa]
	cmp r0, #5
	bne _0805606A
	b _08055FC6
_08055F9C:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805606A
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	subs r2, #1
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0
	strb r0, [r4, #0xd]
_08055FC6:
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _0805606A
_08055FCE:
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x14]
	subs r0, r0, r1
	str r0, [r4, #0x14]
	ldrh r0, [r4, #0x18]
	ldrh r1, [r4, #0x1a]
	adds r0, r0, r1
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	adds r0, #0x65
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #3
	bls _08056002
	movs r2, #0
	cmp r1, #5
	bls _08056004
	movs r2, #5
	b _08056004
_08056002:
	movs r2, #0
_08056004:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r2
	ble _0805601A
	ldrh r0, [r4, #0x22]
	ldrh r1, [r4, #0x20]
	adds r0, r0, r1
	strh r0, [r4, #0x20]
_0805601A:
	movs r1, #0x20
	ldrsh r0, [r4, r1]
	ldr r2, [r4, #0x14]
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r2, r2, r1
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
	movs r0, #0x20
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bne _0805606A
	ldrb r0, [r6]
	cmp r0, #0
	beq _08056050
	strb r1, [r4, #0xa]
	b _08056058
_08056050:
	strb r0, [r4, #0xa]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
_08056058:
	ldr r0, _08056074 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08056078 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #0x41
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1]
_0805606A:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08056074: .4byte gEwramData
_08056078: .4byte 0x0000042C

	thumb_func_start sub_0805607C
sub_0805607C: @ 0x0805607C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	movs r7, #0
	ldr r0, _080560C8 @ =0x082052F0
	bl sub_0803AFB8
	mov r8, r0
	ldr r0, _080560CC @ =0x08119E14
	movs r1, #4
	movs r2, #1
	movs r3, #0xb
	bl sub_0803C7B4
	adds r5, r7, #0
	movs r6, #0
_080560A0:
	movs r0, #0x1b
	movs r1, #0x48
	ldr r2, _080560D0 @ =sub_08000F38
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	beq _08056114
	movs r7, #1
	ldr r1, _080560D4 @ =0x08257BD8
	mov r2, r8
	movs r3, #0xb
	bl sub_0803B924
	cmp r5, #0
	bne _080560D8
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0x54
	b _080560DE
	.align 2, 0
_080560C8: .4byte 0x082052F0
_080560CC: .4byte 0x08119E14
_080560D0: .4byte sub_08000F38
_080560D4: .4byte 0x08257BD8
_080560D8:
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0x9c
_080560DE:
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x46
	movs r0, #0x80
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #9
	strb r0, [r1]
	subs r1, #9
	movs r0, #0x15
	strb r0, [r1]
	ldr r0, _08056128 @ =sub_08056130
	str r0, [r4]
	mov r1, sb
	ldrb r0, [r1, #0x10]
	strb r0, [r4, #0x11]
	strb r6, [r4, #0x12]
	strb r6, [r4, #0xa]
	ldr r0, _0805612C @ =sub_0803B9D0
	str r0, [r4, #4]
_08056114:
	adds r5, #1
	cmp r5, #1
	ble _080560A0
	adds r0, r7, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08056128: .4byte sub_08056130
_0805612C: .4byte sub_0803B9D0

	thumb_func_start sub_08056130
sub_08056130: @ 0x08056130
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	adds r4, r0, #0
	ldr r2, _08056168 @ =gEwramData
	ldrb r1, [r4, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805616C @ =0x000004E4
	adds r0, r0, r1
	ldr r2, [r2]
	adds r6, r2, r0
	add r1, sp, #4
	ldr r0, _08056170 @ =0x081185F8
	ldm r0!, {r3, r5, r7}
	stm r1!, {r3, r5, r7}
	ldm r0!, {r3, r5, r7}
	stm r1!, {r3, r5, r7}
	ldm r0!, {r3, r5, r7}
	stm r1!, {r3, r5, r7}
	ldm r0!, {r3, r5, r7}
	stm r1!, {r3, r5, r7}
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08056174
	cmp r0, #1
	beq _080561A4
	b _08056218
	.align 2, 0
_08056168: .4byte gEwramData
_0805616C: .4byte 0x000004E4
_08056170: .4byte 0x081185F8
_08056174:
	ldr r1, _080561A0 @ =0x00013110
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #2
	str r1, [sp]
	movs r1, #0x55
	movs r2, #0x7f
	movs r3, #0x49
	bl sub_08068AD4
	cmp r0, #0
	beq _08056218
	bl sub_08021304
	cmp r0, #0
	bne _08056218
	strb r0, [r4, #0x12]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _08056218
	.align 2, 0
_080561A0: .4byte 0x00013110
_080561A4:
	ldr r3, _080561D4 @ =0x00013110
	adds r0, r2, r3
	ldr r0, [r0]
	movs r1, #2
	str r1, [sp]
	movs r1, #0x55
	movs r2, #0x7f
	movs r3, #0x49
	bl sub_08068AD4
	adds r5, r0, #0
	cmp r5, #0
	bne _080561DC
	ldrb r0, [r6, #0xa]
	cmp r0, #2
	bhi _080561DC
	ldr r0, _080561D8 @ =0x08119E14
	movs r1, #4
	movs r2, #1
	movs r3, #0xb
	bl sub_0803C7B4
	strb r5, [r4, #0xa]
	b _08056218
	.align 2, 0
_080561D4: .4byte 0x00013110
_080561D8: .4byte 0x08119E14
_080561DC:
	ldr r0, _08056220 @ =0x08119E14
	movs r1, #0x12
	ldrsb r1, [r4, r1]
	lsls r1, r1, #2
	add r1, sp
	adds r1, #4
	ldrh r1, [r1]
	movs r2, #1
	movs r3, #0xb
	bl sub_0803C7B4
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #8
	bl __modsi3
	adds r1, r0, #0
	cmp r1, #0
	bne _08056218
	ldrb r0, [r4, #0x12]
	adds r0, #1
	strb r0, [r4, #0x12]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xb
	ble _08056218
	strb r1, [r4, #0x12]
_08056218:
	add sp, #0x34
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08056220: .4byte 0x08119E14

	thumb_func_start sub_08056224
sub_08056224: @ 0x08056224
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08056244 @ =gEwramData
	ldr r1, [r0]
	adds r6, r1, #0
	adds r6, #0x60
	ldr r2, _08056248 @ =0x00013110
	adds r0, r1, r2
	ldr r5, [r0]
	ldrb r2, [r4, #0xa]
	cmp r2, #0
	beq _0805624C
	cmp r2, #1
	beq _0805629C
	b _08056318
	.align 2, 0
_08056244: .4byte gEwramData
_08056248: .4byte 0x00013110
_0805624C:
	ldrh r1, [r1, #0x14]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08056318
	ldrb r0, [r6, #4]
	cmp r0, #1
	bne _08056318
	movs r0, #2
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0x55
	movs r2, #0x7f
	movs r3, #0x49
	bl sub_08068AD4
	cmp r0, #0
	beq _08056318
	movs r0, #0
	bl sub_0800C5A8
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08056298 @ =gDisplayRegisters
	adds r0, #0x4a
	movs r1, #0x10
	strh r1, [r0]
	movs r0, #0x80
	strh r0, [r4, #0x14]
	b _08056312
	.align 2, 0
_08056298: .4byte gDisplayRegisters
_0805629C:
	ldr r3, _080562C0 @ =0x0000042C
	adds r0, r1, r3
	ldr r1, [r0]
	orrs r1, r2
	str r1, [r0]
	movs r0, #1
	movs r1, #0
	bl sub_080009A0
	ldrb r1, [r4, #0xd]
	movs r0, #0xd
	ldrsb r0, [r4, r0]
	cmp r0, #0
	blt _080562C8
	adds r0, r1, #1
	strb r0, [r4, #0xd]
	ldr r2, _080562C4 @ =gDisplayRegisters
	b _080562EC
	.align 2, 0
_080562C0: .4byte 0x0000042C
_080562C4: .4byte gDisplayRegisters
_080562C8:
	adds r2, r5, #0
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
	ldr r1, _08056320 @ =gDisplayRegisters
	adds r2, r1, #0
	adds r2, #0x4a
	ldr r0, _08056324 @ =0x00000808
	strh r0, [r2]
	adds r2, r1, #0
_080562EC:
	ldrb r0, [r4, #0xd]
	lsrs r0, r0, #3
	movs r1, #0x10
	subs r1, r1, r0
	lsls r0, r0, #8
	orrs r1, r0
	adds r0, r2, #0
	adds r0, #0x4a
	strh r1, [r0]
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	ldr r1, _08056328 @ =0xFFFF0000
	cmp r0, r1
	bne _08056318
	adds r0, r6, #0
	bl sub_08010978
_08056312:
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_08056318:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08056320: .4byte gDisplayRegisters
_08056324: .4byte 0x00000808
_08056328: .4byte 0xFFFF0000

	thumb_func_start sub_0805632C
sub_0805632C: @ 0x0805632C
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r1, [r4, #0x18]
	ldr r0, _08056350 @ =sub_0803B9D0
	str r0, [r4, #4]
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _080563D8
	cmp r0, #3
	bgt _08056354
	cmp r0, #1
	beq _08056384
	cmp r0, #1
	bgt _080563AA
	cmp r0, #0
	beq _0805636E
	b _080564DC
	.align 2, 0
_08056350: .4byte sub_0803B9D0
_08056354:
	cmp r0, #0xb
	bne _0805635A
	b _08056494
_0805635A:
	cmp r0, #0xb
	bgt _08056366
	cmp r0, #0xa
	bne _08056364
	b _08056474
_08056364:
	b _080564DC
_08056366:
	cmp r0, #0x63
	bne _0805636C
	b _080564C8
_0805636C:
	b _080564DC
_0805636E:
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	bne _08056376
	b _080564DC
_08056376:
	bl RandomNumberGenerator
	movs r1, #0xf
	ands r0, r1
	adds r0, #8
	strb r0, [r4, #0xd]
	b _0805648C
_08056384:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _0805639C
	subs r0, #1
	strb r0, [r4, #0xd]
	ldr r0, [r4, #0x44]
	ldr r1, _08056398 @ =0xFFFF0000
	adds r0, r0, r1
	str r0, [r4, #0x44]
	b _080564DC
	.align 2, 0
_08056398: .4byte 0xFFFF0000
_0805639C:
	bl RandomNumberGenerator
	movs r1, #0xf
	ands r0, r1
	adds r0, #0x10
	strb r0, [r4, #0xd]
	b _0805648C
_080563AA:
	ldr r0, [r4, #0x10]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r4, #0x10]
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080563C2
	b _080564DC
_080563C2:
	ldr r0, [r4, #0x40]
	asrs r1, r0, #6
	rsbs r1, r1, #0
	str r1, [r4, #0x48]
	ldr r1, _080563D4 @ =0xFF600000
	adds r0, r0, r1
	asrs r0, r0, #7
	str r0, [r4, #0x4c]
	b _0805648C
	.align 2, 0
_080563D4: .4byte 0xFF600000
_080563D8:
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #9
	movs r1, #0xc0
	lsls r1, r1, #0xa
	subs r1, r1, r0
	cmp r1, #0
	bge _080563E8
	movs r1, #0
_080563E8:
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	cmp r0, #0x7f
	bhi _08056404
	ldr r0, [r4, #0x48]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r0, r2
	str r0, [r4, #0x48]
	cmp r0, r1
	ble _08056414
	str r1, [r4, #0x48]
	b _08056414
_08056404:
	ldr r0, [r4, #0x48]
	ldr r2, _08056430 @ =0xFFFFC000
	adds r0, r0, r2
	str r0, [r4, #0x48]
	rsbs r2, r1, #0
	cmp r0, r2
	bge _08056414
	str r2, [r4, #0x48]
_08056414:
	adds r0, r4, #0
	adds r0, #0x46
	ldrh r0, [r0]
	cmp r0, #0x4f
	bhi _08056434
	ldr r0, [r4, #0x4c]
	movs r2, #0xc0
	lsls r2, r2, #6
	adds r0, r0, r2
	str r0, [r4, #0x4c]
	cmp r0, r1
	ble _08056444
	b _08056442
	.align 2, 0
_08056430: .4byte 0xFFFFC000
_08056434:
	ldr r0, [r4, #0x4c]
	ldr r2, _0805646C @ =0xFFFFD000
	adds r0, r0, r2
	str r0, [r4, #0x4c]
	rsbs r1, r1, #0
	cmp r0, r1
	bge _08056444
_08056442:
	str r1, [r4, #0x4c]
_08056444:
	ldrh r0, [r4, #0x14]
	adds r0, #1
	strh r0, [r4, #0x14]
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x1c]
	ldr r1, _08056470 @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r4, #0x1c]
	cmp r0, #0
	bne _080564DC
	movs r0, #0x63
	strb r0, [r4, #0xa]
	b _080564DC
	.align 2, 0
_0805646C: .4byte 0xFFFFD000
_08056470: .4byte 0xFFFFFE00
_08056474:
	ldr r0, [r4, #0x10]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r4, #0x10]
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x2f
	bls _080564DC
_0805648C:
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _080564DC
_08056494:
	ldr r0, [r4, #0x4c]
	movs r1, #0xc0
	lsls r1, r1, #7
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	ldr r1, [r4, #0x44]
	adds r1, r1, r0
	str r1, [r4, #0x44]
	adds r5, r4, #0
	adds r5, #0x46
	ldrh r0, [r5]
	cmp r0, #0x83
	bls _080564DC
	adds r0, r4, #0
	adds r0, #0x37
	ldrb r0, [r0]
	cmp r0, #0
	bne _080564BE
	movs r0, #1
	bl sub_0800C5A8
_080564BE:
	movs r1, #0
	movs r0, #0x84
	strh r0, [r5]
	strb r1, [r4, #0xa]
	b _080564DC
_080564C8:
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0x17]
	bl sub_0803E6BC
	b _080564F0
_080564DC:
	ldr r0, [r4, #0x10]
	ldr r2, [r4, #0x1c]
	movs r1, #0
	str r1, [sp]
	ldrb r1, [r4, #0x17]
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
_080564F0:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080564F8
sub_080564F8: @ 0x080564F8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08056514
	adds r0, r4, #0
	bl sub_08055BE0
	adds r0, r4, #0
	bl sub_0805607C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08056514
sub_08056514: @ 0x08056514
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08056538 @ =0x082052F0
	adds r0, r5, #0
	bl sub_0803AFB8
	cmp r0, #0
	bge _0805653C
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803B800
	cmp r0, #0
	bge _0805653C
	adds r0, r4, #0
	bl sub_08000E14
	b _08056544
	.align 2, 0
_08056538: .4byte 0x082052F0
_0805653C:
	strh r0, [r4, #0x18]
	ldr r0, _0805654C @ =sub_08055748
	str r0, [r4]
	movs r0, #1
_08056544:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805654C: .4byte sub_08055748

	thumb_func_start sub_08056550
sub_08056550: @ 0x08056550
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r6, _08056578 @ =gEwramData
	ldr r0, [r6]
	ldr r1, _0805657C @ =0x0000A094
	adds r5, r0, r1
	ldr r0, _08056580 @ =0x143C29E2
	str r0, [sp]
	adds r0, r4, #0
	bl sub_080567AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08056584
	adds r0, r4, #0
	bl sub_08000E14
	b _08056604
	.align 2, 0
_08056578: .4byte gEwramData
_0805657C: .4byte 0x0000A094
_08056580: .4byte 0x143C29E2
_08056584:
	ldr r2, _0805660C @ =sub_080567F8
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
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r2, [r6]
	ldr r1, _08056610 @ =0x000131FE
	adds r0, r2, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x11
	asrs r0, r0, #0x12
	adds r1, r1, r0
	ldr r0, _08056614 @ =0x0001327E
	adds r2, r2, r0
	ldrh r0, [r2]
	lsrs r0, r0, #4
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x12
	strb r0, [r1]
	movs r0, #0
	strb r0, [r4, #0xa]
	ldrh r1, [r5, #6]
	movs r0, #0x40
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r1, [r5, #0xa]
	movs r0, #0x18
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
_08056604:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805660C: .4byte sub_080567F8
_08056610: .4byte 0x000131FE
_08056614: .4byte 0x0001327E

	thumb_func_start sub_08056618
sub_08056618: @ 0x08056618
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _08056638 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805663C @ =0x0000A094
	adds r6, r0, r1
	ldrb r0, [r4, #0xb]
	cmp r0, #4
	bls _0805662C
	b _0805677E
_0805662C:
	lsls r0, r0, #2
	ldr r1, _08056640 @ =_08056644
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08056638: .4byte gEwramData
_0805663C: .4byte 0x0000A094
_08056640: .4byte _08056644
_08056644: @ jump table
	.4byte _08056658 @ case 0
	.4byte _080566C0 @ case 1
	.4byte _080566F6 @ case 2
	.4byte _0805670C @ case 3
	.4byte _08056768 @ case 4
_08056658:
	movs r1, #0xe0
	lsls r1, r1, #0xb
	adds r0, r4, #0
	bl sub_0806D460
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	adds r5, r4, #0
	adds r5, #0x46
	cmp r0, #0
	bne _0805668C
	movs r0, #0
	ldrsh r2, [r5, r0]
	movs r0, #0xa
	ldrsh r1, [r6, r0]
	movs r0, #0x24
	subs r0, r0, r1
	cmp r2, r0
	blt _0805668C
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0805668C:
	movs r1, #0
	ldrsh r2, [r5, r1]
	movs r0, #0xa
	ldrsh r1, [r6, r0]
	movs r0, #0x7f
	subs r0, r0, r1
	cmp r2, r0
	blt _0805677E
	ldrh r1, [r6, #0xa]
	movs r0, #0x7f
	subs r0, r0, r1
	movs r1, #0
	strh r0, [r5]
	ldr r0, _080566BC @ =0xFFFEC000
	str r0, [r4, #0x4c]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xd]
	movs r0, #0x7f
	bl sub_080D7910
	b _0805677E
	.align 2, 0
_080566BC: .4byte 0xFFFEC000
_080566C0:
	movs r1, #0xe0
	lsls r1, r1, #0xb
	adds r0, r4, #0
	bl sub_0806D460
	adds r3, r4, #0
	adds r3, #0x46
	movs r1, #0
	ldrsh r2, [r3, r1]
	movs r0, #0xa
	ldrsh r1, [r6, r0]
	movs r0, #0x7f
	subs r0, r0, r1
	cmp r2, r0
	blt _0805677E
	ldrh r1, [r6, #0xa]
	movs r0, #0x7f
	subs r0, r0, r1
	movs r2, #0
	movs r1, #0
	strh r0, [r3]
	str r1, [r4, #0x4c]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	strb r2, [r4, #0xd]
	b _0805677E
_080566F6:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _0805677E
	ldrb r0, [r4, #0xb]
	adds r0, #1
	movs r1, #0
	b _0805675E
_0805670C:
	ldr r0, _08056764 @ =0xFFFF0000
	str r0, [r4, #0x4c]
	ldr r1, [r4, #0x44]
	adds r1, r1, r0
	str r1, [r4, #0x44]
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	adds r5, r4, #0
	adds r5, #0x46
	cmp r0, #3
	bne _08056740
	movs r1, #0
	ldrsh r2, [r5, r1]
	movs r0, #0xa
	ldrsh r1, [r6, r0]
	movs r0, #0x24
	subs r0, r0, r1
	cmp r2, r0
	bgt _08056740
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_08056740:
	movs r1, #0
	ldrsh r2, [r5, r1]
	movs r0, #0xa
	ldrsh r1, [r6, r0]
	movs r0, #0x18
	subs r0, r0, r1
	cmp r2, r0
	bgt _0805677E
	ldrh r1, [r6, #0xa]
	movs r0, #0x18
	subs r0, r0, r1
	movs r1, #0
	strh r0, [r5]
	ldrb r0, [r4, #0xb]
	adds r0, #1
_0805675E:
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xd]
	b _0805677E
	.align 2, 0
_08056764: .4byte 0xFFFF0000
_08056768:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _0805677E
	movs r0, #0
	strb r0, [r4, #0xb]
	strb r0, [r4, #0xd]
	str r0, [r4, #0x4c]
_0805677E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08056784
sub_08056784: @ 0x08056784
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08056796
	adds r0, r4, #0
	bl sub_08056618
_08056796:
	adds r0, r4, #0
	bl sub_0803F17C
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080567AC
sub_080567AC: @ 0x080567AC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080567E0 @ =0x081CBE94
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _080567F0
	ldr r0, _080567E4 @ =0x08209FD8
	movs r1, #1
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _080567E8 @ =0x082107EC
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _080567EC @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _080567F2
	.align 2, 0
_080567E0: .4byte 0x081CBE94
_080567E4: .4byte 0x08209FD8
_080567E8: .4byte 0x082107EC
_080567EC: .4byte sub_0803B9D0
_080567F0:
	movs r0, #0
_080567F2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080567F8
sub_080567F8: @ 0x080567F8
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

	thumb_func_start sub_08056828
sub_08056828: @ 0x08056828
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r6, _08056850 @ =gEwramData
	ldr r0, [r6]
	ldr r1, _08056854 @ =0x0000A094
	adds r5, r0, r1
	ldr r0, _08056858 @ =0x0C20FFF0
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08057034
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805685C
	adds r0, r4, #0
	bl sub_08000E14
	b _080568E4
	.align 2, 0
_08056850: .4byte gEwramData
_08056854: .4byte 0x0000A094
_08056858: .4byte 0x0C20FFF0
_0805685C:
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0
	movs r3, #0
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
	movs r0, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r2, [r6]
	ldr r1, _080568EC @ =0x000131FE
	adds r0, r2, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x11
	asrs r0, r0, #0x12
	adds r1, r1, r0
	ldr r0, _080568F0 @ =0x0001327E
	adds r2, r2, r0
	ldrh r0, [r2]
	lsrs r0, r0, #4
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x12
	strb r0, [r1]
	movs r0, #0
	strb r0, [r4, #0xa]
	ldrh r1, [r5, #6]
	movs r0, #0x40
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r1, [r5, #0xa]
	movs r0, #0x9d
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
_080568E4:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080568EC: .4byte 0x000131FE
_080568F0: .4byte 0x0001327E

	thumb_func_start sub_080568F4
sub_080568F4: @ 0x080568F4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r0, _08056924 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08056928 @ =0x0000A094
	adds r5, r0, r1
	ldr r1, _0805692C @ =0x08118628
	add r0, sp, #0xc
	movs r2, #5
	bl memcpy
	ldrb r0, [r4, #0xb]
	cmp r0, #0xb
	bls _0805691A
	b _08056D5A
_0805691A:
	lsls r0, r0, #2
	ldr r1, _08056930 @ =_08056934
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08056924: .4byte gEwramData
_08056928: .4byte 0x0000A094
_0805692C: .4byte 0x08118628
_08056930: .4byte _08056934
_08056934: @ jump table
	.4byte _08056964 @ case 0
	.4byte _080569D2 @ case 1
	.4byte _08056A64 @ case 2
	.4byte _08056C52 @ case 3
	.4byte _08056CB0 @ case 4
	.4byte _08056CEC @ case 5
	.4byte _08056D5A @ case 6
	.4byte _08056D5A @ case 7
	.4byte _08056D5A @ case 8
	.4byte _08056D5A @ case 9
	.4byte _08056D40 @ case 10
	.4byte _08056D5A @ case 11
_08056964:
	ldr r0, _0805697C @ =gEwramData
	ldr r1, [r0]
	ldr r2, _08056980 @ =0x00013190
	adds r1, r1, r2
	ldr r1, [r1]
	mov ip, r0
	cmp r1, r4
	bne _08056984
	ldrh r1, [r5, #0xa]
	movs r0, #0x9e
	b _08056988
	.align 2, 0
_0805697C: .4byte gEwramData
_08056980: .4byte 0x00013190
_08056984:
	ldrh r1, [r5, #0xa]
	movs r0, #0x9d
_08056988:
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	mov r3, ip
	ldr r0, [r3]
	ldr r5, _080569C8 @ =0x00013190
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, r4
	bne _080569CC
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bhi _080569AE
	b _08056D5A
_080569AE:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	movs r2, #0
	strb r0, [r4, #0xb]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	strb r2, [r4, #0xd]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x48]
	b _08056D5A
	.align 2, 0
_080569C8: .4byte 0x00013190
_080569CC:
	movs r0, #0
	strb r0, [r4, #0xd]
	b _08056D5A
_080569D2:
	adds r0, r4, #0
	bl sub_0806D3C0
	ldr r0, _08056A04 @ =gEwramData
	ldr r0, [r0]
	ldr r6, _08056A08 @ =0x00013190
	adds r0, r0, r6
	ldr r0, [r0]
	cmp r0, r4
	beq _08056A0C
	ldrh r1, [r5, #0xa]
	movs r0, #0x9d
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	ldrb r0, [r4, #0x1c]
	adds r0, #1
	strb r0, [r4, #0x1c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _08056A1C
	movs r0, #0
	b _08056C46
	.align 2, 0
_08056A04: .4byte gEwramData
_08056A08: .4byte 0x00013190
_08056A0C:
	ldrh r0, [r5, #0xa]
	movs r1, #0x9e
	subs r1, r1, r0
	adds r2, r4, #0
	adds r2, #0x46
	movs r0, #0
	strh r1, [r2]
	strb r0, [r4, #0x1c]
_08056A1C:
	adds r3, r4, #0
	adds r3, #0x42
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #6
	ldrsh r0, [r5, r2]
	adds r1, r1, r0
	ldr r2, _08056A60 @ =0x0852649C
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r2, r0, r2
	movs r6, #0
	ldrsh r0, [r2, r6]
	cmp r1, r0
	bge _08056A44
	b _08056D5A
_08056A44:
	ldrh r1, [r2]
	ldrh r0, [r5, #6]
	subs r1, r1, r0
	movs r2, #0
	movs r0, #0
	strh r1, [r3]
	str r0, [r4, #0x48]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	strb r2, [r4, #0xc]
	strb r2, [r4, #0xd]
	b _08056D5A
	.align 2, 0
_08056A60: .4byte 0x0852649C
_08056A64:
	ldr r1, _08056AA8 @ =0x085264BC
	adds r2, r4, #0
	adds r2, #0x20
	movs r0, #0
	ldrsb r0, [r2, r0]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov sb, r0
	ldr r1, _08056AAC @ =gEwramData
	ldr r0, [r1]
	ldr r3, _08056AB0 @ =0x00013190
	adds r0, r0, r3
	ldr r0, [r0]
	mov ip, r1
	adds r7, r2, #0
	cmp r0, r4
	beq _08056AB4
	ldrh r1, [r5, #0xa]
	movs r0, #0x9d
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	ldrb r0, [r4, #0x1c]
	adds r0, #1
	strb r0, [r4, #0x1c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _08056AC4
	movs r0, #0
	b _08056C46
	.align 2, 0
_08056AA8: .4byte 0x085264BC
_08056AAC: .4byte gEwramData
_08056AB0: .4byte 0x00013190
_08056AB4:
	ldrh r0, [r5, #0xa]
	movs r1, #0x9e
	subs r1, r1, r0
	adds r2, r4, #0
	adds r2, #0x46
	movs r0, #0
	strh r1, [r2]
	strb r0, [r4, #0x1c]
_08056AC4:
	ldrb r3, [r4, #0xc]
	cmp r3, #1
	beq _08056AF4
	cmp r3, #1
	bgt _08056AD4
	cmp r3, #0
	beq _08056ADA
	b _08056D5A
_08056AD4:
	cmp r3, #2
	beq _08056B90
	b _08056D5A
_08056ADA:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bhi _08056AEA
	b _08056D5A
_08056AEA:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	strb r3, [r4, #0xd]
	b _08056D5A
_08056AF4:
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sb
	ldrb r0, [r0, #1]
	cmp r0, #0x40
	bne _08056B10
	movs r6, #0
	movs r0, #0xd6
	lsls r0, r0, #0xf
	mov r8, r0
	b _08056B3A
_08056B10:
	cmp r0, #0x10
	bne _08056B20
	movs r6, #0xc0
	lsls r6, r6, #0xb
	movs r1, #0xe4
	lsls r1, r1, #0xf
	mov r8, r1
	b _08056B3A
_08056B20:
	cmp r0, #0x80
	bne _08056B2E
	movs r6, #0
	movs r2, #0xf2
	lsls r2, r2, #0xf
	mov r8, r2
	b _08056B3A
_08056B2E:
	cmp r0, #0x20
	bne _08056B3A
	ldr r6, _08056B84 @ =0xFFFA0000
	movs r3, #0xe4
	lsls r3, r3, #0xf
	mov r8, r3
_08056B3A:
	ldr r2, _08056B88 @ =0x0852649C
	movs r1, #0
	ldrsb r1, [r7, r1]
	lsls r0, r1, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #0x10
	adds r6, r6, r0
	ldr r0, [r5, #4]
	subs r6, r6, r0
	ldr r0, [r5, #8]
	mov r3, r8
	subs r3, r3, r0
	mov r8, r3
	subs r1, #1
	mov r0, sp
	adds r0, r0, r1
	adds r0, #0xc
	ldrb r3, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	mov r2, r8
	bl sub_08056F50
	ldrb r0, [r4, #0xc]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x22
	strb r1, [r0]
	ldr r0, _08056B8C @ =0x0000015B
	bl sub_080D7910
	b _08056D5A
	.align 2, 0
_08056B84: .4byte 0xFFFA0000
_08056B88: .4byte 0x0852649C
_08056B8C: .4byte 0x0000015B
_08056B90:
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	movs r1, #0
	ldrsb r1, [r7, r1]
	subs r1, #1
	add r1, sp
	adds r1, #0xc
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r1]
	cmp r0, r1
	bhi _08056BFE
	adds r2, r4, #0
	adds r2, #0x22
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _08056BFE
	mov r5, ip
	ldr r0, [r5]
	ldrh r1, [r0, #0x1e]
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sb
	ldrb r0, [r0, #1]
	ands r0, r1
	cmp r0, #0
	beq _08056BDE
	movs r0, #1
	strb r0, [r2]
	movs r0, #0xad
	lsls r0, r0, #1
	bl sub_080D7910
	b _08056BFE
_08056BDE:
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0
	beq _08056BFE
	strb r3, [r2]
	movs r0, #0
	ldrsb r0, [r7, r0]
	subs r0, #1
	add r0, sp
	adds r0, #0xc
	ldrb r0, [r0]
	strb r0, [r4, #0xd]
	movs r0, #0xad
	lsls r0, r0, #1
	bl sub_080D7910
_08056BFE:
	ldrb r1, [r4, #0xd]
	movs r0, #0
	ldrsb r0, [r7, r0]
	subs r0, #1
	add r0, sp
	adds r0, #0xc
	ldrb r0, [r0]
	adds r0, #0x1e
	cmp r1, r0
	bge _08056C14
	b _08056D5A
_08056C14:
	adds r0, r4, #0
	adds r0, #0x22
	movs r3, #0
	ldrsb r3, [r0, r3]
	cmp r3, #1
	bne _08056C44
	movs r2, #0
	strb r2, [r4, #0xd]
	adds r1, r4, #0
	adds r1, #0x21
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	mov r6, sb
	ldrb r6, [r6]
	cmp r0, r6
	blt _08056C40
	strb r2, [r1]
	strb r2, [r4, #0xc]
	b _08056D54
_08056C40:
	strb r3, [r4, #0xc]
	b _08056D5A
_08056C44:
	movs r0, #0
_08056C46:
	strb r0, [r4, #0xc]
	movs r0, #4
	strb r0, [r4, #0xb]
	movs r0, #0x14
	strb r0, [r4, #0xd]
	b _08056D5A
_08056C52:
	ldr r0, _08056C68 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08056C6C @ =0x00013190
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, r4
	bne _08056C70
	ldrh r1, [r5, #0xa]
	movs r0, #0x9e
	b _08056C74
	.align 2, 0
_08056C68: .4byte gEwramData
_08056C6C: .4byte 0x00013190
_08056C70:
	ldrh r1, [r5, #0xa]
	movs r0, #0x9d
_08056C74:
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08056D5A
	adds r1, r4, #0
	adds r1, #0x20
	ldrb r0, [r1]
	adds r0, #1
	movs r2, #0
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #5
	ble _08056CA4
	movs r0, #0xa
	strb r0, [r4, #0xb]
	strb r2, [r4, #0xd]
	b _08056D5A
_08056CA4:
	strb r2, [r4, #0xd]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x48]
	movs r0, #1
	b _08056D58
_08056CB0:
	ldrb r0, [r4, #0xc]
	adds r1, r0, #0
	cmp r1, #0
	bne _08056CCE
	adds r0, #1
	strb r0, [r4, #0xc]
	str r1, [r4, #0x48]
	str r1, [r4, #0x50]
	adds r0, r4, #0
	bl sub_08056D6C
	movs r0, #0xae
	lsls r0, r0, #1
	bl sub_080D7910
_08056CCE:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08056D5A
	adds r2, r4, #0
	adds r2, #0x23
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x28
	strb r0, [r4, #0xd]
	b _08056D54
_08056CEC:
	movs r1, #0x80
	lsls r1, r1, #9
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	movs r0, #0xc0
	lsls r0, r0, #0xb
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806A224
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
	bgt _08056D5A
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _08056D5A
_08056D40:
	ldr r0, _08056D68 @ =gEwramData
	ldr r1, [r0]
	movs r2, #0xd2
	lsls r2, r2, #2
	adds r1, r1, r2
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #8
	orrs r0, r2
	str r0, [r1]
_08056D54:
	ldrb r0, [r4, #0xb]
	adds r0, #1
_08056D58:
	strb r0, [r4, #0xb]
_08056D5A:
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08056D68: .4byte gEwramData

	thumb_func_start sub_08056D6C
sub_08056D6C: @ 0x08056D6C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	ldr r2, _08056E4C @ =sub_08056E74
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r6, r0, #0
	cmp r6, #0
	beq _08056E44
	ldr r0, [r7, #0x40]
	str r0, [r6, #0x40]
	movs r0, #0
	str r0, [r6, #0x44]
	movs r5, #0xc0
	lsls r5, r5, #0xb
	str r5, [r6, #0x4c]
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r6, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _08056E50 @ =0x081CBE8C
	bl sub_0803AFB8
	adds r4, r0, #0
	ldr r0, _08056E54 @ =0x08209FD8
	movs r1, #1
	bl sub_08068264
	adds r2, r6, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _08056E58 @ =0x082103F4
	ldrb r3, [r2]
	adds r0, r6, #0
	adds r2, r4, #0
	bl sub_0803B924
	adds r0, r6, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	adds r0, r7, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x3c
	strb r1, [r0]
	ldr r1, _08056E5C @ =0xFFFFFF00
	ldr r0, [sp]
	ands r0, r1
	movs r4, #0xfd
	orrs r0, r4
	ldr r1, _08056E60 @ =0xFFFF00FF
	ands r0, r1
	movs r1, #0xf1
	lsls r1, r1, #8
	orrs r0, r1
	ldr r1, _08056E64 @ =0xFF00FFFF
	ands r0, r1
	orrs r0, r5
	ldr r1, _08056E68 @ =0x00FFFFFF
	ands r0, r1
	movs r1, #0xf0
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [sp]
	adds r0, r6, #0
	mov r1, sp
	bl sub_08042848
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	ands r0, r4
	strb r0, [r2]
	ldr r2, _08056E6C @ =sub_08057004
	adds r0, r6, #0
	movs r1, #8
	movs r3, #0
	bl sub_0804277C
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x36
	strb r0, [r1]
	str r7, [r6, #0x18]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08056E70 @ =sub_0803B9D0
	str r0, [r6, #4]
_08056E44:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08056E4C: .4byte sub_08056E74
_08056E50: .4byte 0x081CBE8C
_08056E54: .4byte 0x08209FD8
_08056E58: .4byte 0x082103F4
_08056E5C: .4byte 0xFFFFFF00
_08056E60: .4byte 0xFFFF00FF
_08056E64: .4byte 0xFF00FFFF
_08056E68: .4byte 0x00FFFFFF
_08056E6C: .4byte sub_08057004
_08056E70: .4byte sub_0803B9D0

	thumb_func_start sub_08056E74
sub_08056E74: @ 0x08056E74
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r0, [r4, #0x18]
	mov ip, r0
	cmp r0, #0
	beq _08056F04
	ldr r0, [r0]
	cmp r0, #0
	beq _08056F04
	mov r0, ip
	adds r0, #0x36
	adds r1, r4, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08056F04
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08056EDA
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
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	mov r2, ip
	ldr r1, [r2, #0x44]
	cmp r0, r1
	blt _08056ED0
	str r1, [r4, #0x44]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_08056ED0:
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	b _08056F0A
_08056EDA:
	cmp r0, #1
	bne _08056F04
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
	mov r1, ip
	ldr r0, [r1, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r1, #0x44]
	str r0, [r4, #0x44]
	b _08056F0A
_08056F04:
	adds r0, r4, #0
	bl sub_08000E14
_08056F0A:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08056F14
sub_08056F14: @ 0x08056F14
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r0, #0x23
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08056F2E
	adds r0, r4, #0
	movs r1, #1
	bl sub_08021278
_08056F2E:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08056F3A
	adds r0, r4, #0
	bl sub_080568F4
_08056F3A:
	adds r0, r4, #0
	bl sub_0803F17C
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08056F50
sub_08056F50: @ 0x08056F50
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	ldr r2, _08056FD4 @ =sub_08056FE8
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r5, r0, #0
	cmp r5, #0
	beq _08056FCA
	str r4, [r5, #0x40]
	str r6, [r5, #0x44]
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldr r0, _08056FD8 @ =0x081CBE8C
	bl sub_0803AFB8
	adds r4, r0, #0
	ldr r0, _08056FDC @ =0x08209FD8
	movs r1, #1
	bl sub_08068264
	adds r2, r5, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _08056FE0 @ =0x082103F4
	ldrb r3, [r2]
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_0803B924
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	mov r0, r8
	strb r0, [r5, #0xd]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08056FE4 @ =sub_0803B9D0
	str r0, [r5, #4]
_08056FCA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08056FD4: .4byte sub_08056FE8
_08056FD8: .4byte 0x081CBE8C
_08056FDC: .4byte 0x08209FD8
_08056FE0: .4byte 0x082103F4
_08056FE4: .4byte sub_0803B9D0

	thumb_func_start sub_08056FE8
sub_08056FE8: @ 0x08056FE8
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xd]
	subs r0, #1
	strb r0, [r1, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08056FFE
	adds r0, r1, #0
	bl sub_08000E14
_08056FFE:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08057004
sub_08057004: @ 0x08057004
	push {lr}
	sub sp, #0x10
	mov r2, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	movs r3, #0
	strh r1, [r2]
	movs r1, #1
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

	thumb_func_start sub_08057034
sub_08057034: @ 0x08057034
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08057068 @ =0x081CBE8C
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _08057078
	ldr r0, _0805706C @ =0x08209FD8
	movs r1, #2
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _08057070 @ =0x082103F4
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _08057074 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _0805707A
	.align 2, 0
_08057068: .4byte 0x081CBE8C
_0805706C: .4byte 0x08209FD8
_08057070: .4byte 0x082103F4
_08057074: .4byte sub_0803B9D0
_08057078:
	movs r0, #0
_0805707A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08057080
sub_08057080: @ 0x08057080
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r0, _080570B0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080570B4 @ =0x0000A094
	adds r5, r0, r1
	mov r1, sp
	ldr r0, _080570B8 @ =0x08118630
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldr r0, [r0]
	str r0, [r1]
	adds r0, r4, #0
	bl sub_080573B0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080570BC
	adds r0, r4, #0
	bl sub_08000E14
	b _08057176
	.align 2, 0
_080570B0: .4byte gEwramData
_080570B4: .4byte 0x0000A094
_080570B8: .4byte 0x08118630
_080570BC:
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	lsls r0, r0, #2
	mov r2, sp
	adds r1, r2, r0
	adds r0, r4, #0
	bl sub_080428B4
	movs r3, #0x32
	ldrsh r0, [r4, r3]
	lsls r0, r0, #2
	mov r6, sp
	adds r1, r6, r0
	adds r0, r4, #0
	bl sub_08042848
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	movs r6, #0
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0805716C @ =0x085264D0
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r1, [r0, #0xc]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x12
	strb r0, [r1]
	strb r6, [r4, #0xa]
	ldr r2, [r4, #0x44]
	ldr r0, [r5, #8]
	adds r0, r2, r0
	str r0, [r4, #0x18]
	movs r3, #0x30
	ldrsh r0, [r4, r3]
	lsls r0, r0, #0x10
	str r0, [r4, #0x1c]
	ldr r1, [r4, #0x40]
	ldr r0, [r5, #4]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	ldr r0, [r5, #8]
	adds r2, r2, r0
	str r2, [r4, #0x14]
	ldr r0, [r5, #4]
	subs r1, r1, r0
	str r1, [r4, #0x24]
	ldr r0, [r5, #8]
	subs r2, r2, r0
	str r2, [r4, #0x28]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	cmp r1, r0
	ble _08057170
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	b _08057176
	.align 2, 0
_0805716C: .4byte 0x085264D0
_08057170:
	adds r0, r4, #0
	adds r0, #0x20
	strb r6, [r0]
_08057176:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08057180
sub_08057180: @ 0x08057180
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r0, _080571AC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080571B0 @ =0x0000A094
	adds r6, r0, r1
	ldr r0, [r3, #0x10]
	ldr r1, [r6, #4]
	subs r0, r0, r1
	str r0, [r3, #0x24]
	ldr r1, [r3, #0x14]
	ldr r0, [r6, #8]
	subs r0, r1, r0
	str r0, [r3, #0x28]
	ldrb r5, [r3, #0xb]
	cmp r5, #1
	beq _0805726C
	cmp r5, #1
	bgt _080571B4
	cmp r5, #0
	beq _080571C0
	b _08057368
	.align 2, 0
_080571AC: .4byte gEwramData
_080571B0: .4byte 0x0000A094
_080571B4:
	cmp r5, #2
	beq _08057280
	cmp r5, #3
	bne _080571BE
	b _0805734C
_080571BE:
	b _08057368
_080571C0:
	ldr r4, [r3, #0x1c]
	adds r2, r1, #0
	subs r1, r4, r2
	cmp r1, #0
	bge _080571CC
	rsbs r1, r1, #0
_080571CC:
	adds r0, r3, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	bne _08057214
	cmp r2, r4
	bge _08057218
	ldr r0, _080571F4 @ =0x000FFFFF
	cmp r1, r0
	ble _080571FC
	ldr r1, [r3, #0x4c]
	ldr r0, _080571F8 @ =0x0000FFFF
	cmp r1, r0
	ble _080571EA
	b _0805733A
_080571EA:
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r1, r2
	b _08057338
	.align 2, 0
_080571F4: .4byte 0x000FFFFF
_080571F8: .4byte 0x0000FFFF
_080571FC:
	adds r0, r1, #0
	cmp r1, #0
	bge _08057206
	ldr r2, _08057210 @ =0x0000FFFF
	adds r0, r1, r2
_08057206:
	asrs r0, r0, #0x10
	lsls r0, r0, #0xc
	movs r1, #0x80
	lsls r1, r1, #5
	b _0805725E
	.align 2, 0
_08057210: .4byte 0x0000FFFF
_08057214:
	cmp r2, r4
	bgt _08057220
_08057218:
	movs r0, #1
	strb r0, [r3, #0xb]
	str r5, [r3, #0x4c]
	b _080572E8
_08057220:
	ldr r0, _08057238 @ =0x000FFFFF
	cmp r1, r0
	ble _08057244
	ldr r1, [r3, #0x4c]
	ldr r0, _0805723C @ =0xFFFF0000
	cmp r1, r0
	bgt _08057230
	b _0805733A
_08057230:
	ldr r2, _08057240 @ =0xFFFFF800
	adds r0, r1, r2
	b _08057338
	.align 2, 0
_08057238: .4byte 0x000FFFFF
_0805723C: .4byte 0xFFFF0000
_08057240: .4byte 0xFFFFF800
_08057244:
	adds r0, r1, #0
	cmp r1, #0
	bge _0805724E
	ldr r2, _08057264 @ =0x0000FFFF
	adds r0, r1, r2
_0805724E:
	asrs r0, r0, #0x10
	lsls r0, r0, #0x10
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0805725A
	adds r0, #0xf
_0805725A:
	asrs r0, r0, #4
	ldr r1, _08057268 @ =0xFFFFF000
_0805725E:
	adds r0, r0, r1
	b _08057338
	.align 2, 0
_08057264: .4byte 0x0000FFFF
_08057268: .4byte 0xFFFFF000
_0805726C:
	ldrb r0, [r3, #0xd]
	subs r0, #1
	strb r0, [r3, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0805727A
	b _08057368
_0805727A:
	ldrb r0, [r3, #0xb]
	adds r0, #1
	b _0805735A
_08057280:
	ldr r4, [r3, #0x18]
	adds r2, r1, #0
	subs r1, r4, r2
	cmp r1, #0
	bge _0805728C
	rsbs r1, r1, #0
_0805728C:
	adds r0, r3, #0
	adds r0, #0x20
	ldrb r5, [r0]
	cmp r5, #0
	bne _080572DC
	cmp r2, r4
	blt _080572A2
	movs r0, #3
	strb r0, [r3, #0xb]
	str r5, [r3, #0x4c]
	b _080572E8
_080572A2:
	ldr r0, _080572B8 @ =0x000FFFFF
	cmp r1, r0
	ble _080572C0
	ldr r1, [r3, #0x4c]
	ldr r0, _080572BC @ =0x0000FFFF
	cmp r1, r0
	bgt _0805733A
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r1, r2
	b _08057338
	.align 2, 0
_080572B8: .4byte 0x000FFFFF
_080572BC: .4byte 0x0000FFFF
_080572C0:
	adds r0, r1, #0
	cmp r1, #0
	bge _080572CA
	ldr r2, _080572D8 @ =0x0000FFFF
	adds r0, r1, r2
_080572CA:
	asrs r0, r0, #0x10
	lsls r0, r0, #0xc
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r0, r1
	b _08057338
	.align 2, 0
_080572D8: .4byte 0x0000FFFF
_080572DC:
	cmp r2, r4
	bgt _080572FC
	movs r0, #3
	movs r1, #0
	strb r0, [r3, #0xb]
	str r1, [r3, #0x4c]
_080572E8:
	ldr r1, _080572F8 @ =0x085264D0
	movs r2, #0x32
	ldrsh r0, [r3, r2]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrh r0, [r0, #0xe]
	strb r0, [r3, #0xd]
	b _0805733A
	.align 2, 0
_080572F8: .4byte 0x085264D0
_080572FC:
	ldr r0, _08057310 @ =0x000FFFFF
	cmp r1, r0
	ble _0805731C
	ldr r1, [r3, #0x4c]
	ldr r0, _08057314 @ =0xFFFF0000
	cmp r1, r0
	ble _0805733A
	ldr r2, _08057318 @ =0xFFFFF800
	adds r0, r1, r2
	b _08057338
	.align 2, 0
_08057310: .4byte 0x000FFFFF
_08057314: .4byte 0xFFFF0000
_08057318: .4byte 0xFFFFF800
_0805731C:
	adds r0, r1, #0
	cmp r0, #0
	bge _08057326
	ldr r1, _08057344 @ =0x0000FFFF
	adds r0, r0, r1
_08057326:
	asrs r0, r0, #0x10
	lsls r0, r0, #0x10
	rsbs r0, r0, #0
	cmp r0, #0
	bge _08057332
	adds r0, #0xf
_08057332:
	asrs r0, r0, #4
	ldr r2, _08057348 @ =0xFFFFF000
	adds r0, r0, r2
_08057338:
	str r0, [r3, #0x4c]
_0805733A:
	ldr r0, [r3, #0x14]
	ldr r1, [r3, #0x4c]
	adds r0, r0, r1
	str r0, [r3, #0x14]
	b _08057368
	.align 2, 0
_08057344: .4byte 0x0000FFFF
_08057348: .4byte 0xFFFFF000
_0805734C:
	ldrb r0, [r3, #0xd]
	subs r0, #1
	strb r0, [r3, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08057368
	movs r0, #0
_0805735A:
	strb r0, [r3, #0xb]
	adds r2, r3, #0
	adds r2, #0x20
	ldrb r0, [r2]
	movs r1, #1
	eors r0, r1
	strb r0, [r2]
_08057368:
	ldr r0, [r3, #0x10]
	ldr r1, [r6, #4]
	subs r0, r0, r1
	str r0, [r3, #0x40]
	ldr r0, [r3, #0x14]
	ldr r1, [r6, #8]
	subs r0, r0, r1
	str r0, [r3, #0x44]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08057380
sub_08057380: @ 0x08057380
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r1, #1
	bl sub_08021278
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08057398
	adds r0, r4, #0
	bl sub_08057180
_08057398:
	adds r0, r4, #0
	bl sub_0803F17C
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080573B0
sub_080573B0: @ 0x080573B0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, _08057408 @ =0x085264D0
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	lsls r0, r0, #4
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_0803B800
	adds r6, r0, #0
	cmp r6, #0
	blt _08057410
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	lsls r1, r1, #4
	adds r0, r5, #4
	adds r0, r1, r0
	ldr r0, [r0]
	adds r1, r1, r5
	ldrb r1, [r1, #0xd]
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	lsls r0, r0, #4
	adds r1, r5, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r6, #0
	bl sub_0803B924
	ldr r0, _0805740C @ =sub_08057418
	str r0, [r4, #4]
	movs r0, #1
	b _08057412
	.align 2, 0
_08057408: .4byte 0x085264D0
_0805740C: .4byte sub_08057418
_08057410:
	movs r0, #0
_08057412:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08057418
sub_08057418: @ 0x08057418
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x40]
	ldr r6, [r4, #0x44]
	ldr r0, [r4, #0x24]
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x28]
	str r0, [r4, #0x44]
	adds r0, r4, #0
	bl sub_0803AC40
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08057438
sub_08057438: @ 0x08057438
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r0, _08057468 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805746C @ =0x0000A094
	adds r5, r0, r1
	mov r1, sp
	ldr r0, _08057470 @ =0x08118640
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldr r0, [r0]
	str r0, [r1]
	adds r0, r4, #0
	bl sub_08057774
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08057474
	adds r0, r4, #0
	bl sub_08000E14
	b _0805752E
	.align 2, 0
_08057468: .4byte gEwramData
_0805746C: .4byte 0x0000A094
_08057470: .4byte 0x08118640
_08057474:
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	lsls r0, r0, #2
	mov r2, sp
	adds r1, r2, r0
	adds r0, r4, #0
	bl sub_080428B4
	movs r3, #0x32
	ldrsh r0, [r4, r3]
	lsls r0, r0, #2
	mov r6, sp
	adds r1, r6, r0
	adds r0, r4, #0
	bl sub_08042848
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	movs r6, #0
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08057524 @ =0x08526510
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r1, [r0, #0xc]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x12
	strb r0, [r1]
	strb r6, [r4, #0xa]
	ldr r2, [r4, #0x40]
	ldr r0, [r5, #4]
	adds r0, r2, r0
	str r0, [r4, #0x18]
	movs r3, #0x30
	ldrsh r0, [r4, r3]
	lsls r0, r0, #0x10
	str r0, [r4, #0x1c]
	ldr r0, [r5, #4]
	adds r2, r2, r0
	str r2, [r4, #0x10]
	ldr r1, [r4, #0x44]
	ldr r0, [r5, #8]
	adds r1, r1, r0
	str r1, [r4, #0x14]
	ldr r0, [r5, #4]
	subs r2, r2, r0
	str r2, [r4, #0x24]
	ldr r0, [r5, #8]
	subs r1, r1, r0
	str r1, [r4, #0x28]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	cmp r1, r0
	ble _08057528
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	b _0805752E
	.align 2, 0
_08057524: .4byte 0x08526510
_08057528:
	adds r0, r4, #0
	adds r0, #0x20
	strb r6, [r0]
_0805752E:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08057538
sub_08057538: @ 0x08057538
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	ldr r1, _08057558 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0805755C @ =0x0000A094
	adds r7, r0, r2
	ldrb r5, [r3, #0xb]
	mov ip, r1
	cmp r5, #1
	beq _0805760C
	cmp r5, #1
	bgt _08057560
	cmp r5, #0
	beq _0805756C
	b _08057704
	.align 2, 0
_08057558: .4byte gEwramData
_0805755C: .4byte 0x0000A094
_08057560:
	cmp r5, #2
	beq _0805761E
	cmp r5, #3
	bne _0805756A
	b _080576E8
_0805756A:
	b _08057704
_0805756C:
	ldr r4, [r3, #0x1c]
	ldr r2, [r3, #0x10]
	subs r1, r4, r2
	cmp r1, #0
	bge _08057578
	rsbs r1, r1, #0
_08057578:
	ldr r6, [r3, #0x48]
	adds r0, r2, r6
	str r0, [r3, #0x10]
	adds r0, r3, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	bne _080575CC
	cmp r2, r4
	blt _08057596
	ldrb r0, [r3, #0xb]
	adds r0, #1
	strb r0, [r3, #0xb]
	str r5, [r3, #0x48]
	b _0805768A
_08057596:
	ldr r0, _080575AC @ =0x000FFFFF
	cmp r1, r0
	ble _080575B4
	ldr r0, _080575B0 @ =0x0000FFFF
	cmp r6, r0
	ble _080575A4
	b _08057704
_080575A4:
	movs r1, #0x80
	lsls r1, r1, #4
	b _080575EA
	.align 2, 0
_080575AC: .4byte 0x000FFFFF
_080575B0: .4byte 0x0000FFFF
_080575B4:
	adds r0, r1, #0
	cmp r1, #0
	bge _080575BE
	ldr r2, _080575C8 @ =0x0000FFFF
	adds r0, r1, r2
_080575BE:
	asrs r0, r0, #0x10
	lsls r0, r0, #0xc
	movs r1, #0x80
	lsls r1, r1, #5
	b _080576DA
	.align 2, 0
_080575C8: .4byte 0x0000FFFF
_080575CC:
	cmp r2, r4
	bgt _080575DA
	ldrb r0, [r3, #0xb]
	adds r0, #1
	strb r0, [r3, #0xb]
	str r5, [r3, #0x48]
	b _0805768A
_080575DA:
	ldr r0, _080575F0 @ =0x000FFFFF
	cmp r1, r0
	ble _080575FC
	ldr r0, _080575F4 @ =0xFFFF0000
	cmp r6, r0
	bgt _080575E8
	b _08057704
_080575E8:
	ldr r1, _080575F8 @ =0xFFFFF800
_080575EA:
	adds r0, r6, r1
	str r0, [r3, #0x48]
	b _08057704
	.align 2, 0
_080575F0: .4byte 0x000FFFFF
_080575F4: .4byte 0xFFFF0000
_080575F8: .4byte 0xFFFFF800
_080575FC:
	adds r0, r1, #0
	cmp r1, #0
	bge _080576CA
	ldr r2, _08057608 @ =0x0000FFFF
	adds r0, r1, r2
	b _080576CA
	.align 2, 0
_08057608: .4byte 0x0000FFFF
_0805760C:
	ldrb r0, [r3, #0xd]
	subs r0, #1
	strb r0, [r3, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08057704
	ldrb r0, [r3, #0xb]
	adds r0, #1
	b _080576F6
_0805761E:
	ldr r4, [r3, #0x18]
	ldr r2, [r3, #0x10]
	subs r1, r4, r2
	cmp r1, #0
	bge _0805762A
	rsbs r1, r1, #0
_0805762A:
	ldr r5, [r3, #0x48]
	adds r0, r2, r5
	str r0, [r3, #0x10]
	adds r0, r3, #0
	adds r0, #0x20
	ldrb r6, [r0]
	cmp r6, #0
	bne _0805767C
	cmp r2, r4
	blt _08057648
	ldrb r0, [r3, #0xb]
	adds r0, #1
	strb r0, [r3, #0xb]
	str r6, [r3, #0x48]
	b _0805768A
_08057648:
	ldr r0, _0805765C @ =0x000FFFFF
	cmp r1, r0
	ble _08057664
	ldr r0, _08057660 @ =0x0000FFFF
	cmp r5, r0
	bgt _08057704
	movs r1, #0x80
	lsls r1, r1, #4
	b _080576AE
	.align 2, 0
_0805765C: .4byte 0x000FFFFF
_08057660: .4byte 0x0000FFFF
_08057664:
	adds r0, r1, #0
	cmp r1, #0
	bge _0805766E
	ldr r2, _08057678 @ =0x0000FFFF
	adds r0, r1, r2
_0805766E:
	asrs r0, r0, #0x10
	lsls r0, r0, #0xc
	movs r1, #0x80
	lsls r1, r1, #5
	b _080576DA
	.align 2, 0
_08057678: .4byte 0x0000FFFF
_0805767C:
	cmp r2, r4
	bgt _080576A0
	ldrb r0, [r3, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r3, #0xb]
	str r1, [r3, #0x48]
_0805768A:
	ldr r1, _0805769C @ =0x08526510
	movs r2, #0x32
	ldrsh r0, [r3, r2]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrh r0, [r0, #0xe]
	strb r0, [r3, #0xd]
	b _08057704
	.align 2, 0
_0805769C: .4byte 0x08526510
_080576A0:
	ldr r0, _080576B4 @ =0x000FFFFF
	cmp r1, r0
	ble _080576C0
	ldr r0, _080576B8 @ =0xFFFF0000
	cmp r5, r0
	ble _08057704
	ldr r1, _080576BC @ =0xFFFFF800
_080576AE:
	adds r0, r5, r1
	str r0, [r3, #0x48]
	b _08057704
	.align 2, 0
_080576B4: .4byte 0x000FFFFF
_080576B8: .4byte 0xFFFF0000
_080576BC: .4byte 0xFFFFF800
_080576C0:
	adds r0, r1, #0
	cmp r0, #0
	bge _080576CA
	ldr r2, _080576E0 @ =0x0000FFFF
	adds r0, r0, r2
_080576CA:
	asrs r0, r0, #0x10
	lsls r0, r0, #0x10
	rsbs r0, r0, #0
	cmp r0, #0
	bge _080576D6
	adds r0, #0xf
_080576D6:
	asrs r0, r0, #4
	ldr r1, _080576E4 @ =0xFFFFF000
_080576DA:
	adds r0, r0, r1
	str r0, [r3, #0x48]
	b _08057704
	.align 2, 0
_080576E0: .4byte 0x0000FFFF
_080576E4: .4byte 0xFFFFF000
_080576E8:
	ldrb r0, [r3, #0xd]
	subs r0, #1
	strb r0, [r3, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08057704
	movs r0, #0
_080576F6:
	strb r0, [r3, #0xb]
	adds r2, r3, #0
	adds r2, #0x20
	ldrb r0, [r2]
	movs r1, #1
	eors r0, r1
	strb r0, [r2]
_08057704:
	ldr r2, [r3, #0x10]
	ldr r0, [r7, #4]
	subs r0, r2, r0
	str r0, [r3, #0x40]
	ldr r1, [r3, #0x14]
	ldr r0, [r7, #8]
	subs r0, r1, r0
	str r0, [r3, #0x44]
	ldr r0, [r7, #4]
	subs r2, r2, r0
	str r2, [r3, #0x24]
	ldr r0, [r7, #8]
	subs r1, r1, r0
	str r1, [r3, #0x28]
	mov r2, ip
	ldr r0, [r2]
	ldr r1, _08057740 @ =0x00013190
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, r3
	bne _0805773A
	adds r0, r3, #0
	adds r0, #0x40
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl sub_0802138C
_0805773A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08057740: .4byte 0x00013190

	thumb_func_start sub_08057744
sub_08057744: @ 0x08057744
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r1, #1
	bl sub_08021278
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0805775C
	adds r0, r4, #0
	bl sub_08057538
_0805775C:
	adds r0, r4, #0
	bl sub_0803F17C
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08057774
sub_08057774: @ 0x08057774
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, _080577CC @ =0x08526510
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	lsls r0, r0, #4
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_0803B800
	adds r6, r0, #0
	cmp r6, #0
	blt _080577D4
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	lsls r1, r1, #4
	adds r0, r5, #4
	adds r0, r1, r0
	ldr r0, [r0]
	adds r1, r1, r5
	ldrb r1, [r1, #0xd]
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	lsls r0, r0, #4
	adds r1, r5, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r6, #0
	bl sub_0803B924
	ldr r0, _080577D0 @ =sub_080577DC
	str r0, [r4, #4]
	movs r0, #1
	b _080577D6
	.align 2, 0
_080577CC: .4byte 0x08526510
_080577D0: .4byte sub_080577DC
_080577D4:
	movs r0, #0
_080577D6:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080577DC
sub_080577DC: @ 0x080577DC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x40]
	ldr r6, [r4, #0x44]
	ldr r0, [r4, #0x24]
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x28]
	str r0, [r4, #0x44]
	adds r0, r4, #0
	bl sub_0803AC40
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080577FC
sub_080577FC: @ 0x080577FC
	push {lr}
	sub sp, #0x10
	bl sub_0803F17C
	add sp, #0x10
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805780C
sub_0805780C: @ 0x0805780C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08057858
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08057822
	adds r0, r4, #0
	bl sub_08000E14
	b _08057850
_08057822:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r1, r4, #0
	adds r1, #0x5c
	movs r2, #0
	movs r0, #0x14
	strb r0, [r1]
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	subs r0, #0x1b
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	strb r2, [r4, #0xa]
_08057850:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08057858
sub_08057858: @ 0x08057858
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0805788C @ =0x081CBE94
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _0805789C
	ldr r0, _08057890 @ =0x08209FD8
	movs r1, #3
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _08057894 @ =0x082107EC
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _08057898 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _0805789E
	.align 2, 0
_0805788C: .4byte 0x081CBE94
_08057890: .4byte 0x08209FD8
_08057894: .4byte 0x082107EC
_08057898: .4byte sub_0803B9D0
_0805789C:
	movs r0, #0
_0805789E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080578A4
sub_080578A4: @ 0x080578A4
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_08057958
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080578BA
	adds r0, r5, #0
	bl sub_08000E14
	b _08057906
_080578BA:
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	bl RandomNumberGenerator
	movs r1, #0xf
	ands r1, r0
	adds r0, r5, #0
	adds r0, #0x6f
	movs r4, #0
	strb r1, [r0]
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	adds r1, r5, #0
	adds r1, #0x6e
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0803F17C
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x13
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	subs r0, #0x1a
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	strb r4, [r5, #0xa]
_08057906:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0805790C
sub_0805790C: @ 0x0805790C
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	bl RandomNumberGenerator
	movs r1, #0xff
	ands r1, r0
	cmp r1, #0xdf
	bhi _08057924
	adds r0, r4, #0
	bl sub_0803F17C
_08057924:
	ldrb r1, [r4, #0xd]
	adds r0, r1, #1
	strb r0, [r4, #0xd]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08057940
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	b _0805794E
_08057940:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0805794E:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08057958
sub_08057958: @ 0x08057958
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0805798C @ =0x0825920C
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _0805799C
	ldr r0, _08057990 @ =0x08209FD8
	movs r1, #7
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _08057994 @ =0x0825CED0
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _08057998 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _0805799E
	.align 2, 0
_0805798C: .4byte 0x0825920C
_08057990: .4byte 0x08209FD8
_08057994: .4byte 0x0825CED0
_08057998: .4byte sub_0803B9D0
_0805799C:
	movs r0, #0
_0805799E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080579A4
sub_080579A4: @ 0x080579A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r0, _080579C8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080579CC @ =0x0000A094
	adds r1, r1, r0
	mov sb, r1
	ldrb r4, [r7, #0xa]
	cmp r4, #0
	beq _080579D0
	cmp r4, #1
	beq _080579D8
	b _08057A80
	.align 2, 0
_080579C8: .4byte gEwramData
_080579CC: .4byte 0x0000A094
_080579D0:
	adds r0, r7, #0
	bl sub_08057BAC
	b _08057A80
_080579D8:
	ldrb r0, [r7, #0xd]
	adds r1, r0, #1
	strb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x77
	bls _08057A80
	movs r0, #0
	strb r0, [r7, #0xd]
	bl RandomNumberGenerator
	mov r8, r0
	mov r2, r8
	ands r2, r4
	mov r8, r2
	cmp r2, #0
	bne _08057A80
	ldr r0, [r7, #0x18]
	cmp r0, #9
	bgt _08057A80
	ldr r2, _08057A90 @ =sub_08000F38
	movs r0, #0x1b
	movs r1, #0x48
	bl sub_08000DA0
	adds r6, r0, #0
	cmp r6, #0
	beq _08057A80
	ldr r0, [r7, #0x18]
	adds r0, #1
	str r0, [r7, #0x18]
	ldr r1, _08057A94 @ =0x085265F8
	movs r3, #0x30
	ldrsh r0, [r7, r3]
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r5, [r1]
	ldr r1, _08057A98 @ =0x08526608
	adds r0, r0, r1
	ldr r4, [r0]
	bl RandomNumberGenerator
	adds r1, r4, #0
	bl __umodsi3
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r1, [r0]
	mov r3, sb
	ldr r2, [r3, #4]
	subs r1, r1, r2
	str r1, [r6, #0x40]
	ldr r0, [r0, #4]
	ldr r1, [r3, #8]
	subs r0, r0, r1
	str r0, [r6, #0x44]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0x37
	mov r1, r8
	strb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x36
	strb r0, [r1]
	mov r2, r8
	strh r2, [r6, #0x32]
	ldrh r0, [r7, #0x30]
	strh r0, [r6, #0x30]
	ldr r0, _08057A9C @ =sub_0803B9D0
	str r0, [r6, #4]
	ldr r0, [r7]
	str r0, [r6]
	adds r0, r6, #0
	bl sub_08057AA0
	str r7, [r6, #0x1c]
_08057A80:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08057A90: .4byte sub_08000F38
_08057A94: .4byte 0x085265F8
_08057A98: .4byte 0x08526608
_08057A9C: .4byte sub_0803B9D0

	thumb_func_start sub_08057AA0
sub_08057AA0: @ 0x08057AA0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _08057AF4 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _08057AF8 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08057AC4
	ldr r1, _08057AFC @ =0x0000037E
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08057B0C
_08057AC4:
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	cmp r0, #1
	bne _08057B00
	strb r0, [r5, #0xa]
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x78
	strb r0, [r5, #0xd]
	adds r2, #0x1a
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_0806AF98
	b _08057B9C
	.align 2, 0
_08057AF4: .4byte gEwramData
_08057AF8: .4byte 0x000004CC
_08057AFC: .4byte 0x0000037E
_08057B00:
	adds r0, r5, #0
	bl sub_08057DB8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08057B14
_08057B0C:
	adds r0, r5, #0
	bl sub_08000E14
	b _08057B9C
_08057B14:
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r2, #0x1a
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08057BA4 @ =0x08526550
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F0E4
	adds r0, r5, #0
	bl sub_0803F17C
	adds r2, r5, #0
	adds r2, #0x3e
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x3c
	movs r0, #0x28
	strb r0, [r1]
	movs r4, #0
	movs r0, #0xc8
	strh r0, [r5, #0x34]
	adds r6, r5, #0
	adds r6, #0x5c
	movs r0, #0x14
	strb r0, [r6]
	adds r0, r5, #0
	bl sub_0806AF98
	strb r4, [r5, #0xa]
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	cmp r0, #2
	bne _08057B9C
	movs r0, #1
	strb r0, [r5, #0xb]
	ldr r1, _08057BA8 @ =0x08526564
	adds r0, r5, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F0E4
	adds r0, r5, #0
	bl sub_0803F17C
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r5, #0x48]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r5, #0x4c]
	ldrb r0, [r6]
	subs r0, #1
	strb r0, [r6]
_08057B9C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08057BA4: .4byte 0x08526550
_08057BA8: .4byte 0x08526564

	thumb_func_start sub_08057BAC
sub_08057BAC: @ 0x08057BAC
	push {r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r0, _08057BCC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08057BD0 @ =0x0000A094
	adds r4, r0, r1
	ldr r6, [r5, #0x1c]
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	beq _08057C18
	cmp r0, #1
	bgt _08057BD4
	cmp r0, #0
	beq _08057BDA
	b _08057D1C
	.align 2, 0
_08057BCC: .4byte gEwramData
_08057BD0: .4byte 0x0000A094
_08057BD4:
	cmp r0, #0xa
	beq _08057CA4
	b _08057D1C
_08057BDA:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08057BEC
	b _08057D1C
_08057BEC:
	strb r2, [r5, #0xb]
	ldr r1, _08057C14 @ =0x08526564
	adds r0, r5, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F0E4
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r5, #0x48]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r5, #0x4c]
	adds r1, r5, #0
	adds r1, #0x5c
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	b _08057D1C
	.align 2, 0
_08057C14: .4byte 0x08526564
_08057C18:
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r5, #0x48]
	adds r0, r5, #0
	bl sub_0806D3C0
	movs r0, #0
	str r0, [r5, #0x48]
	movs r2, #0x30
	ldrsh r0, [r5, r2]
	cmp r0, #2
	beq _08057C44
	movs r1, #0x80
	lsls r1, r1, #0xb
	str r1, [r5, #0x4c]
	ldr r2, _08057C40 @ =0xFFE00000
	adds r0, r5, #0
	bl sub_0806D288
	b _08057C60
	.align 2, 0
_08057C40: .4byte 0xFFE00000
_08057C44:
	ldr r0, [r5, #0x40]
	ldr r1, [r4, #4]
	adds r0, r0, r1
	movs r1, #0xd0
	lsls r1, r1, #0x10
	cmp r0, r1
	bgt _08057C60
	movs r1, #0x80
	lsls r1, r1, #0xb
	str r1, [r5, #0x4c]
	ldr r2, _08057C7C @ =0xFFE00000
	adds r0, r5, #0
	bl sub_0806D288
_08057C60:
	adds r0, r5, #0
	bl sub_0806AE54
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	cmp r0, #0
	blt _08057D1C
	cmp r0, #1
	bgt _08057C84
	ldr r0, [r5, #0x40]
	ldr r1, [r4, #4]
	adds r0, r0, r1
	ldr r1, _08057C80 @ =0x040FFFFF
	b _08057C90
	.align 2, 0
_08057C7C: .4byte 0xFFE00000
_08057C80: .4byte 0x040FFFFF
_08057C84:
	cmp r0, #3
	bgt _08057D1C
	ldr r0, [r5, #0x40]
	ldr r1, [r4, #4]
	adds r0, r0, r1
	ldr r1, _08057CA0 @ =0x00FFFFFF
_08057C90:
	cmp r0, r1
	ble _08057D1C
	movs r0, #0xa
	strb r0, [r5, #0xb]
	movs r0, #1
	strb r0, [r5, #0xd]
	b _08057D1C
	.align 2, 0
_08057CA0: .4byte 0x00FFFFFF
_08057CA4:
	ldrb r1, [r5, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08057CCC
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	ldr r2, _08057D18 @ =0xFFFA0000
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
_08057CCC:
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
	bgt _08057D1C
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	cmp r6, #0
	beq _08057D30
	ldr r0, [r6]
	cmp r0, #0
	beq _08057D30
	ldr r0, [r6, #0x18]
	cmp r0, #0
	beq _08057D30
	subs r0, #1
	str r0, [r6, #0x18]
	b _08057D30
	.align 2, 0
_08057D18: .4byte 0xFFFA0000
_08057D1C:
	adds r0, r5, #0
	bl sub_0803F17C
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	bne _08057D30
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
_08057D30:
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08057D38
sub_08057D38: @ 0x08057D38
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
	strh r0, [r6, #0x34]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08057DAE
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
	movs r0, #0
	strb r0, [r5]
	movs r0, #0xa
	strb r0, [r6, #0xb]
	ldr r1, _08057DB4 @ =0x08526580
	adds r0, r6, #0
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
_08057DAE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08057DB4: .4byte 0x08526580

	thumb_func_start sub_08057DB8
sub_08057DB8: @ 0x08057DB8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08057DEC @ =0x081CC07C
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _08057DFC
	ldr r0, _08057DF0 @ =0x0820AC4C
	movs r1, #0
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _08057DF4 @ =0x08225A08
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _08057DF8 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _08057DFE
	.align 2, 0
_08057DEC: .4byte 0x081CC07C
_08057DF0: .4byte 0x0820AC4C
_08057DF4: .4byte 0x08225A08
_08057DF8: .4byte sub_0803B9D0
_08057DFC:
	movs r0, #0
_08057DFE:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08057E04
sub_08057E04: @ 0x08057E04
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_08057F00
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08057E1A
	adds r0, r5, #0
	bl sub_08000E14
	b _08057ED2
_08057E1A:
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	movs r4, #2
	orrs r0, r4
	strb r0, [r2]
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x12
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	subs r0, #0x53
	ands r0, r1
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x59
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	movs r1, #0
	movs r0, #0x5a
	strh r0, [r5, #0x1a]
	movs r0, #0x1e
	strh r0, [r5, #0x18]
	strb r1, [r5, #0xa]
	ldr r2, _08057ED8 @ =sub_080581B4
	movs r0, #0x1b
	movs r1, #0x48
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	beq _08057EA0
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x15
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r0, #0x44
	adds r1, #4
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08057FA8
	str r5, [r4, #0x14]
_08057EA0:
	ldr r2, _08057EDC @ =sub_08058464
	movs r0, #0x1b
	movs r1, #0x48
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	beq _08057ED2
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, #0x12
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r0, #0x2c
	adds r1, #4
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08058258
	str r5, [r4, #0x14]
_08057ED2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08057ED8: .4byte sub_080581B4
_08057EDC: .4byte sub_08058464

	thumb_func_start sub_08057EE0
sub_08057EE0: @ 0x08057EE0
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08057EF2
	adds r0, r4, #0
	bl sub_08057F4C
_08057EF2:
	adds r0, r4, #0
	bl sub_0803F17C
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08057F00
sub_08057F00: @ 0x08057F00
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08057F34 @ =0x081CBE7C
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _08057F44
	ldr r0, _08057F38 @ =0x08209FD8
	movs r1, #2
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _08057F3C @ =0x08210264
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _08057F40 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _08057F46
	.align 2, 0
_08057F34: .4byte 0x081CBE7C
_08057F38: .4byte 0x08209FD8
_08057F3C: .4byte 0x08210264
_08057F40: .4byte sub_0803B9D0
_08057F44:
	movs r0, #0
_08057F46:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08057F4C
sub_08057F4C: @ 0x08057F4C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _08057FA0
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x46
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x64
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x8c
	movs r3, #0xc8
	bl sub_0806CFFC
	cmp r0, #0
	beq _08057F94
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r4, #0x18]
	adds r0, #1
	strh r0, [r4, #0x18]
	ldrh r0, [r4, #0x1a]
	adds r0, #1
	strh r0, [r4, #0x1a]
	b _08057FA0
_08057F94:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
_08057FA0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08057FA8
sub_08057FA8: @ 0x08057FA8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r5, _08058044 @ =gEwramData
	bl sub_080581DC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805803C
	ldr r2, _08058048 @ =sub_08058228
	adds r0, r6, #0
	movs r1, #8
	movs r3, #0
	bl sub_0804277C
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	movs r4, #2
	orrs r0, r4
	strb r0, [r2]
	adds r0, r6, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	ldr r2, [r5]
	ldr r1, _0805804C @ =0x000131FE
	adds r0, r2, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x11
	asrs r0, r0, #0x12
	adds r1, r1, r0
	ldr r0, _08058050 @ =0x0001327E
	adds r2, r2, r0
	ldrh r0, [r2]
	lsrs r0, r0, #4
	adds r1, r1, r0
	adds r0, r6, #0
	adds r0, #0x3c
	strb r1, [r0]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0x12
	strb r0, [r1]
	adds r5, r6, #0
	adds r5, #0x58
	ldrb r1, [r5]
	subs r0, #0x53
	ands r0, r1
	strb r0, [r5]
	adds r7, r6, #0
	adds r7, #0x59
	ldrb r0, [r7]
	orrs r0, r4
	strb r0, [r7]
	ldrb r0, [r5]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r5]
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08058054
_0805803C:
	adds r0, r6, #0
	bl sub_08000E14
	b _0805808A
	.align 2, 0
_08058044: .4byte gEwramData
_08058048: .4byte sub_08058228
_0805804C: .4byte 0x000131FE
_08058050: .4byte 0x0001327E
_08058054:
	movs r0, #0x1f
	ands r2, r0
	ldrb r1, [r5]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5]
	ldrb r0, [r7]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r7]
	ldrb r0, [r5]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	lsrs r1, r0, #7
	str r1, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_0803E238
	movs r0, #0
	strb r0, [r6, #0xa]
_0805808A:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08058094
sub_08058094: @ 0x08058094
	push {r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r1, [r4, #0x14]
	movs r2, #0
	ldr r0, _080580B4 @ =0x1010FCF8
	str r0, [sp, #8]
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _080580E8
	cmp r0, #1
	bgt _080580B8
	cmp r0, #0
	beq _080580C2
	b _080581AC
	.align 2, 0
_080580B4: .4byte 0x1010FCF8
_080580B8:
	cmp r0, #2
	beq _08058144
	cmp r0, #3
	beq _08058168
	b _080581AC
_080580C2:
	movs r3, #0x1a
	ldrsh r0, [r1, r3]
	cmp r0, #0x77
	ble _080581AC
	strh r2, [r1, #0x1a]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0xc0
	lsls r0, r0, #8
	str r0, [r4, #0x48]
	b _080581AC
_080580E8:
	ldr r1, [r4, #0x48]
	ldr r0, _080580FC @ =0x0000FFFF
	cmp r1, r0
	bgt _08058100
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r1, r2
	str r0, [r4, #0x48]
	b _08058124
	.align 2, 0
_080580FC: .4byte 0x0000FFFF
_08058100:
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x48]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0x1e
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	add r1, sp, #8
	bl sub_08042848
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
_08058124:
	ldr r2, [r4, #0x48]
	adds r0, r4, #0
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
	bl sub_0803E238
	b _080581AC
_08058144:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080581AC
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	b _080581AC
_08058168:
	ldr r1, [r4, #0x48]
	movs r0, #0xc0
	lsls r0, r0, #8
	cmp r1, r0
	ble _08058184
	ldr r3, _08058180 @ =0xFFFFF800
	adds r0, r1, r3
	str r0, [r4, #0x48]
	adds r0, r4, #0
	adds r0, #0x58
	b _08058192
	.align 2, 0
_08058180: .4byte 0xFFFFF800
_08058184:
	strb r2, [r4, #0xb]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
_08058192:
	ldr r2, [r4, #0x48]
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
	bl sub_0803E238
_080581AC:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080581B4
sub_080581B4: @ 0x080581B4
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080581C6
	adds r0, r4, #0
	bl sub_08058094
_080581C6:
	adds r0, r4, #0
	bl sub_0803F17C
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080581DC
sub_080581DC: @ 0x080581DC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08058210 @ =0x081CBE7C
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _08058220
	ldr r0, _08058214 @ =0x08209FD8
	movs r1, #2
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _08058218 @ =0x08210264
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _0805821C @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _08058222
	.align 2, 0
_08058210: .4byte 0x081CBE7C
_08058214: .4byte 0x08209FD8
_08058218: .4byte 0x08210264
_0805821C: .4byte sub_0803B9D0
_08058220:
	movs r0, #0
_08058222:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08058228
sub_08058228: @ 0x08058228
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

	thumb_func_start sub_08058258
sub_08058258: @ 0x08058258
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r5, _080582F4 @ =gEwramData
	bl sub_0805848C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080582EC
	ldr r2, _080582F8 @ =sub_080584D8
	adds r0, r6, #0
	movs r1, #8
	movs r3, #0
	bl sub_0804277C
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	movs r4, #2
	orrs r0, r4
	strb r0, [r2]
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	ldr r2, [r5]
	ldr r1, _080582FC @ =0x000131FE
	adds r0, r2, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x11
	asrs r0, r0, #0x12
	adds r1, r1, r0
	ldr r0, _08058300 @ =0x0001327E
	adds r2, r2, r0
	ldrh r0, [r2]
	lsrs r0, r0, #4
	adds r1, r1, r0
	adds r0, r6, #0
	adds r0, #0x3c
	strb r1, [r0]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0x12
	strb r0, [r1]
	adds r5, r6, #0
	adds r5, #0x58
	ldrb r1, [r5]
	subs r0, #0x53
	ands r0, r1
	strb r0, [r5]
	adds r7, r6, #0
	adds r7, #0x59
	ldrb r0, [r7]
	orrs r0, r4
	strb r0, [r7]
	ldrb r0, [r5]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r5]
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08058304
_080582EC:
	adds r0, r6, #0
	bl sub_08000E14
	b _0805833A
	.align 2, 0
_080582F4: .4byte gEwramData
_080582F8: .4byte sub_080584D8
_080582FC: .4byte 0x000131FE
_08058300: .4byte 0x0001327E
_08058304:
	movs r0, #0x1f
	ands r2, r0
	ldrb r1, [r5]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5]
	ldrb r0, [r7]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r7]
	ldrb r0, [r5]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	lsrs r1, r0, #7
	str r1, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_0803E238
	movs r0, #0
	strb r0, [r6, #0xa]
_0805833A:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08058344
sub_08058344: @ 0x08058344
	push {r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r1, [r4, #0x14]
	movs r2, #0
	ldr r0, _08058364 @ =0x2010F0F8
	str r0, [sp, #8]
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _08058398
	cmp r0, #1
	bgt _08058368
	cmp r0, #0
	beq _08058372
	b _0805845C
	.align 2, 0
_08058364: .4byte 0x2010F0F8
_08058368:
	cmp r0, #2
	beq _080583F4
	cmp r0, #3
	beq _08058418
	b _0805845C
_08058372:
	movs r3, #0x18
	ldrsh r0, [r1, r3]
	cmp r0, #0x77
	ble _0805845C
	strh r2, [r1, #0x18]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0xc0
	lsls r0, r0, #8
	str r0, [r4, #0x48]
	b _0805845C
_08058398:
	ldr r1, [r4, #0x48]
	ldr r0, _080583AC @ =0x0000FFFF
	cmp r1, r0
	bgt _080583B0
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r1, r2
	str r0, [r4, #0x48]
	b _080583D4
	.align 2, 0
_080583AC: .4byte 0x0000FFFF
_080583B0:
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x48]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0x1e
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	add r1, sp, #8
	bl sub_08042848
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
_080583D4:
	ldr r2, [r4, #0x48]
	adds r0, r4, #0
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
	bl sub_0803E238
	b _0805845C
_080583F4:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0805845C
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	b _0805845C
_08058418:
	ldr r1, [r4, #0x48]
	movs r0, #0xc0
	lsls r0, r0, #8
	cmp r1, r0
	ble _08058434
	ldr r3, _08058430 @ =0xFFFFF800
	adds r0, r1, r3
	str r0, [r4, #0x48]
	adds r0, r4, #0
	adds r0, #0x58
	b _08058442
	.align 2, 0
_08058430: .4byte 0xFFFFF800
_08058434:
	strb r2, [r4, #0xb]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
_08058442:
	ldr r2, [r4, #0x48]
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
	bl sub_0803E238
_0805845C:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08058464
sub_08058464: @ 0x08058464
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08058476
	adds r0, r4, #0
	bl sub_08058344
_08058476:
	adds r0, r4, #0
	bl sub_0803F17C
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0805848C
sub_0805848C: @ 0x0805848C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080584C0 @ =0x081CBE7C
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _080584D0
	ldr r0, _080584C4 @ =0x08209FD8
	movs r1, #2
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _080584C8 @ =0x08210264
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _080584CC @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _080584D2
	.align 2, 0
_080584C0: .4byte 0x081CBE7C
_080584C4: .4byte 0x08209FD8
_080584C8: .4byte 0x08210264
_080584CC: .4byte sub_0803B9D0
_080584D0:
	movs r0, #0
_080584D2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080584D8
sub_080584D8: @ 0x080584D8
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

	thumb_func_start sub_08058508
sub_08058508: @ 0x08058508
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08058554
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805851E
	adds r0, r4, #0
	bl sub_08000E14
	b _0805853C
_0805851E:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	adds r0, #0x5c
	movs r2, #0
	movs r1, #0x12
	strb r1, [r0]
	strb r2, [r4, #0xa]
_0805853C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08058544
sub_08058544: @ 0x08058544
	push {lr}
	sub sp, #0x10
	bl sub_0803F17C
	add sp, #0x10
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08058554
sub_08058554: @ 0x08058554
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _08058594 @ =0x081CBEDC
	movs r1, #0
	bl sub_0803B800
	adds r7, r0, #0
	cmp r7, #0
	blt _080585A8
	ldr r5, _08058598 @ =0x0820A1C4
	adds r0, r5, #0
	movs r1, #1
	bl sub_08068264
	adds r4, r6, #0
	adds r4, #0x2c
	strb r0, [r4]
	ldr r1, _0805859C @ =0x08526618
	ldrb r2, [r4]
	adds r0, r5, #0
	bl sub_0803CC70
	ldr r1, _080585A0 @ =0x0821154C
	ldrb r3, [r4]
	adds r0, r6, #0
	adds r2, r7, #0
	bl sub_0803B924
	ldr r0, _080585A4 @ =sub_0803B9D0
	str r0, [r6, #4]
	movs r0, #1
	b _080585AA
	.align 2, 0
_08058594: .4byte 0x081CBEDC
_08058598: .4byte 0x0820A1C4
_0805859C: .4byte 0x08526618
_080585A0: .4byte 0x0821154C
_080585A4: .4byte sub_0803B9D0
_080585A8:
	movs r0, #0
_080585AA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080585B0
sub_080585B0: @ 0x080585B0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r5, #0
	movs r6, #0
_080585B8:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _080585FC @ =sub_0805866C
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	beq _08058658
	adds r0, #0x37
	strb r6, [r0]
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x36
	strb r0, [r1]
	ldr r0, _08058600 @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_0805869C
	bl RandomNumberGenerator
	ldr r1, _08058604 @ =0x00FFFFFF
	ands r1, r0
	str r1, [r4, #0x40]
	cmp r5, #1
	beq _08058628
	cmp r5, #1
	bgt _08058608
	cmp r5, #0
	beq _08058612
	b _08058658
	.align 2, 0
_080585FC: .4byte sub_0805866C
_08058600: .4byte sub_0803B9D0
_08058604: .4byte 0x00FFFFFF
_08058608:
	cmp r5, #2
	beq _08058636
	cmp r5, #3
	beq _08058644
	b _08058658
_08058612:
	adds r1, r4, #0
	adds r1, #0x46
	movs r0, #0x1e
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r4, #0x48]
	adds r0, r4, #0
	adds r0, #0x65
	strb r6, [r0]
	b _08058658
_08058628:
	adds r1, r4, #0
	adds r1, #0x46
	movs r0, #0x3e
	strh r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #6
	b _08058650
_08058636:
	adds r1, r4, #0
	adds r1, #0x46
	movs r0, #0x56
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #6
	b _08058650
_08058644:
	adds r1, r4, #0
	adds r1, #0x46
	movs r0, #0x66
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
_08058650:
	str r0, [r4, #0x48]
	adds r0, r4, #0
	adds r0, #0x65
	strb r5, [r0]
_08058658:
	adds r5, #1
	cmp r5, #3
	ble _080585B8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08058664
sub_08058664: @ 0x08058664
	sub sp, #0x10
	add sp, #0x10
	bx lr
	.align 2, 0

	thumb_func_start sub_0805866C
sub_0805866C: @ 0x0805866C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _08058690
	adds r0, r4, #0
	bl sub_0806D3C0
	adds r0, r4, #0
	movs r1, #6
	bl sub_0806D128
	cmp r0, #0
	beq _08058690
	adds r1, r4, #0
	adds r1, #0x42
	ldr r0, _08058698 @ =0x0000FFC4
	strh r0, [r1]
_08058690:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08058698: .4byte 0x0000FFC4

	thumb_func_start sub_0805869C
sub_0805869C: @ 0x0805869C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080586E0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080586B2
	adds r0, r4, #0
	bl sub_08000E14
	b _080586DA
_080586B2:
	adds r3, r4, #0
	adds r3, #0x72
	ldrb r1, [r3]
	movs r0, #4
	movs r2, #0
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x1d
	strb r0, [r1]
	strb r2, [r4, #0xa]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r2]
	subs r0, #0x20
	ands r0, r1
	strb r0, [r2]
_080586DA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080586E0
sub_080586E0: @ 0x080586E0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08058714 @ =0x081CBED4
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _08058724
	ldr r0, _08058718 @ =0x0820A1C4
	movs r1, #0
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _0805871C @ =0x08211464
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _08058720 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _08058726
	.align 2, 0
_08058714: .4byte 0x081CBED4
_08058718: .4byte 0x0820A1C4
_0805871C: .4byte 0x08211464
_08058720: .4byte sub_0803B9D0
_08058724:
	movs r0, #0
_08058726:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0805872C
sub_0805872C: @ 0x0805872C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08058754 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08058758 @ =0x00013110
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r1, [r2, #0x40]
	ldr r0, [r4, #0x40]
	subs r6, r1, r0
	ldr r1, [r2, #0x44]
	ldr r0, [r4, #0x44]
	subs r7, r1, r0
	ldrb r0, [r4, #0xb]
	cmp r0, #0xa
	beq _0805875C
	cmp r0, #0xc
	beq _08058808
	b _080588B4
	.align 2, 0
_08058754: .4byte gEwramData
_08058758: .4byte 0x00013110
_0805875C:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _08058780
	subs r0, #0x14
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08058780
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_08058780:
	ldrb r1, [r5]
	cmp r1, #1
	bne _0805879E
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _0805879E
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0805879E:
	ldrb r0, [r5]
	cmp r0, #3
	bne _080587BE
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080587BE
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080587BE:
	ldrb r0, [r5]
	cmp r0, #4
	bne _080587DE
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080587DE
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080587DE:
	adds r1, r6, #0
	cmp r6, #0
	bge _080587E6
	rsbs r1, r6, #0
_080587E6:
	ldr r0, _08058800 @ =0x004FFFFF
	cmp r1, r0
	bgt _080588B4
	adds r1, r7, #0
	cmp r7, #0
	bge _080587F4
	rsbs r1, r7, #0
_080587F4:
	ldr r0, _08058804 @ =0x005FFFFF
	cmp r1, r0
	bgt _080588B4
	movs r0, #0xc
	strb r0, [r4, #0xb]
	b _080588B4
	.align 2, 0
_08058800: .4byte 0x004FFFFF
_08058804: .4byte 0x005FFFFF
_08058808:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #3
	bne _0805882C
	subs r0, #0x14
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805882C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0805882C:
	ldrb r0, [r5]
	cmp r0, #4
	bne _0805884C
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805884C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0805884C:
	ldrb r0, [r5]
	cmp r0, #2
	bne _0805886C
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805886C
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0805886C:
	ldrb r1, [r5]
	cmp r1, #1
	bne _0805888A
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _0805888A
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0805888A:
	adds r1, r6, #0
	cmp r1, #0
	bge _08058892
	rsbs r1, r1, #0
_08058892:
	ldr r0, _080588AC @ =0x004FFFFF
	cmp r1, r0
	bgt _080588A6
	adds r1, r7, #0
	cmp r1, #0
	bge _080588A0
	rsbs r1, r1, #0
_080588A0:
	ldr r0, _080588B0 @ =0x005FFFFF
	cmp r1, r0
	ble _080588B4
_080588A6:
	movs r0, #0xa
	strb r0, [r4, #0xb]
	b _080588E6
	.align 2, 0
_080588AC: .4byte 0x004FFFFF
_080588B0: .4byte 0x005FFFFF
_080588B4:
	adds r0, r4, #0
	movs r1, #3
	bl sub_0806D128
	cmp r0, #0
	beq _080588CE
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	b _080588E6
_080588CE:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r1, #0x18
	rsbs r1, r1, #0
	adds r0, r4, #0
	bl sub_0806E4F8
_080588E6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080588EC
sub_080588EC: @ 0x080588EC
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_08058958
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08058902
	adds r0, r5, #0
	bl sub_08000E14
	b _08058932
_08058902:
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r5, #0
	adds r0, #0x6f
	movs r4, #0
	strb r4, [r0]
	adds r1, r5, #0
	adds r1, #0x6e
	movs r0, #6
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0803F17C
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x12
	strb r0, [r1]
	strb r4, [r5, #0xa]
	movs r0, #0xa
	strb r0, [r5, #0xb]
_08058932:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08058938
sub_08058938: @ 0x08058938
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0805894A
	adds r0, r4, #0
	bl sub_0805872C
_0805894A:
	adds r0, r4, #0
	bl sub_0803F17C
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08058958
sub_08058958: @ 0x08058958
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0805898C @ =0x081CBEBC
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _0805899C
	ldr r0, _08058990 @ =0x0820A100
	movs r1, #2
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _08058994 @ =0x082111F4
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _08058998 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _0805899E
	.align 2, 0
_0805898C: .4byte 0x081CBEBC
_08058990: .4byte 0x0820A100
_08058994: .4byte 0x082111F4
_08058998: .4byte sub_0803B9D0
_0805899C:
	movs r0, #0
_0805899E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080589A4
sub_080589A4: @ 0x080589A4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r2, _08058A60 @ =sub_08058B84
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r5, r0, #0
	cmp r5, #0
	beq _08058A5A
	ldr r0, [r4, #0x40]
	adds r0, r0, r6
	str r0, [r5, #0x40]
	ldr r0, [r4, #0x44]
	adds r0, r0, r7
	str r0, [r5, #0x44]
	adds r0, r4, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldr r0, _08058A64 @ =0x081CBECC
	bl sub_0803AFB8
	adds r2, r0, #0
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	adds r3, r5, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _08058A68 @ =0x0821137C
	ldrb r3, [r3]
	adds r0, r5, #0
	bl sub_0803B924
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	bl RandomNumberGenerator
	movs r1, #7
	ands r1, r0
	adds r0, r5, #0
	adds r0, #0x6f
	strb r1, [r0]
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r4, #2
	orrs r0, r4
	strb r0, [r2]
	bl RandomNumberGenerator
	movs r1, #1
	adds r3, r5, #0
	adds r3, #0x58
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r1, r5, #0
	adds r1, #0x59
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	ldr r0, _08058A6C @ =sub_0803B9D0
	str r0, [r5, #4]
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x44]
	movs r0, #0x80
	lsls r0, r0, #0xc
	adds r2, r2, r0
	adds r0, r5, #0
	bl sub_08058B94
_08058A5A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08058A60: .4byte sub_08058B84
_08058A64: .4byte 0x081CBECC
_08058A68: .4byte 0x0821137C
_08058A6C: .4byte sub_0803B9D0

	thumb_func_start sub_08058A70
sub_08058A70: @ 0x08058A70
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08058AD0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08058A86
	adds r0, r4, #0
	bl sub_08000E14
	b _08058AB0
_08058A86:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r1, r4, #0
	adds r1, #0x5c
	movs r2, #0
	movs r0, #0x12
	strb r0, [r1]
	strb r2, [r4, #0xa]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
_08058AB0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08058AB8
sub_08058AB8: @ 0x08058AB8
	push {lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	bne _08058ACA
	adds r0, r1, #0
	bl sub_08058B1C
_08058ACA:
	add sp, #0x10
	pop {r0}
	bx r0

	thumb_func_start sub_08058AD0
sub_08058AD0: @ 0x08058AD0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08058B04 @ =0x081CBECC
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _08058B14
	ldr r0, _08058B08 @ =0x0820A100
	movs r1, #5
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _08058B0C @ =0x0821137C
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _08058B10 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _08058B16
	.align 2, 0
_08058B04: .4byte 0x081CBECC
_08058B08: .4byte 0x0820A100
_08058B0C: .4byte 0x0821137C
_08058B10: .4byte sub_0803B9D0
_08058B14:
	movs r0, #0
_08058B16:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08058B1C
sub_08058B1C: @ 0x08058B1C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _08058B76
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x20
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x20
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x40
	movs r3, #0x70
	bl sub_0806CFFC
	cmp r0, #0
	beq _08058B76
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	ldr r1, _08058B7C @ =0xFFFB0000
	adds r0, r4, #0
	movs r2, #0
	bl sub_080589A4
	ldr r2, _08058B80 @ =0xFFFA0000
	adds r0, r4, #0
	movs r1, #0
	bl sub_080589A4
	movs r1, #0xa0
	lsls r1, r1, #0xb
	adds r0, r4, #0
	movs r2, #0
	bl sub_080589A4
	movs r0, #0x78
	bl sub_080D7910
_08058B76:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08058B7C: .4byte 0xFFFB0000
_08058B80: .4byte 0xFFFA0000

	thumb_func_start sub_08058B84
sub_08058B84: @ 0x08058B84
	push {lr}
	sub sp, #0x10
	bl sub_0803F17C
	add sp, #0x10
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08058B94
sub_08058B94: @ 0x08058B94
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	ldr r2, _08058C04 @ =sub_08068F78
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r5, r0, #0
	cmp r5, #0
	beq _08058BFE
	str r4, [r5, #0x40]
	str r6, [r5, #0x44]
	ldr r0, _08058C08 @ =0xFFFF0000
	str r0, [r5, #0x4c]
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	movs r2, #0
	strb r0, [r1]
	strb r2, [r5, #0xd]
	movs r4, #2
	movs r0, #2
	strb r0, [r5, #0x18]
	ldr r0, _08058C0C @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08058C10 @ =0x0820ED60
	adds r0, r5, #0
	movs r3, #7
	bl sub_0803B924
	ldr r1, _08058C14 @ =0x08526630
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F0E4
	adds r0, r5, #0
	bl sub_0803F17C
	adds r1, r5, #0
	adds r1, #0x59
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	ldr r0, _08058C18 @ =sub_0803B9D0
	str r0, [r5, #4]
_08058BFE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08058C04: .4byte sub_08068F78
_08058C08: .4byte 0xFFFF0000
_08058C0C: .4byte 0x081C15F4
_08058C10: .4byte 0x0820ED60
_08058C14: .4byte 0x08526630
_08058C18: .4byte sub_0803B9D0

	thumb_func_start sub_08058C1C
sub_08058C1C: @ 0x08058C1C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r4, _08058C60 @ =gEwramData
	ldr r1, _08058C64 @ =0x08118650
	mov r0, sp
	movs r2, #6
	bl memcpy
	add r6, sp, #8
	ldr r1, _08058C68 @ =0x08118656
	adds r0, r6, #0
	movs r2, #6
	bl memcpy
	ldr r0, [r4]
	ldr r1, _08058C6C @ =0x0000037E
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08058C56
	adds r0, r5, #0
	bl sub_08058CF8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08058C70
_08058C56:
	adds r0, r5, #0
	bl sub_08000E14
	b _08058CCE
	.align 2, 0
_08058C60: .4byte gEwramData
_08058C64: .4byte 0x08118650
_08058C68: .4byte 0x08118656
_08058C6C: .4byte 0x0000037E
_08058C70:
	adds r0, r5, #0
	movs r1, #6
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	bl RandomNumberGenerator
	movs r1, #6
	bl __umodsi3
	adds r1, r5, #0
	adds r1, #0x6f
	strb r0, [r1]
	subs r1, #0x13
	movs r0, #0x1a
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r1, [r2]
	subs r0, #0x1d
	ands r0, r1
	strb r0, [r2]
	subs r2, #1
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	lsls r0, r0, #1
	add r0, sp
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	lsls r0, r0, #1
	adds r0, r6, r0
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x46
	strh r1, [r0]
_08058CCE:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08058CD8
sub_08058CD8: @ 0x08058CD8
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08058CEA
	adds r0, r4, #0
	bl sub_08058D44
_08058CEA:
	adds r0, r4, #0
	bl sub_0803F17C
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08058CF8
sub_08058CF8: @ 0x08058CF8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08058D2C @ =0x081CBEEC
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _08058D3C
	ldr r0, _08058D30 @ =0x0820A1C4
	movs r1, #9
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _08058D34 @ =0x08211844
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _08058D38 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _08058D3E
	.align 2, 0
_08058D2C: .4byte 0x081CBEEC
_08058D30: .4byte 0x0820A1C4
_08058D34: .4byte 0x08211844
_08058D38: .4byte sub_0803B9D0
_08058D3C:
	movs r0, #0
_08058D3E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08058D44
sub_08058D44: @ 0x08058D44
	push {lr}
	adds r2, r0, #0
	ldr r0, _08058D74 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2, #0xb]
	cmp r0, #0
	bne _08058D70
	ldr r3, _08058D78 @ =0x0000042C
	adds r0, r1, r3
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08058D70
	movs r0, #1
	strb r0, [r2, #0xb]
	adds r2, #0x58
	ldrb r1, [r2]
	subs r0, #0x22
	ands r0, r1
	strb r0, [r2]
_08058D70:
	pop {r0}
	bx r0
	.align 2, 0
_08058D74: .4byte gEwramData
_08058D78: .4byte 0x0000042C

	thumb_func_start sub_08058D7C
sub_08058D7C: @ 0x08058D7C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r2, _08058E14 @ =sub_08058EDC
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r6, r0, #0
	ldr r0, _08058E18 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08058E1C @ =0x0000A094
	adds r7, r0, r1
	cmp r6, #0
	bne _08058D9C
	b _08058EC8
_08058D9C:
	bl RandomNumberGenerator
	movs r1, #0xf0
	bl __umodsi3
	adds r2, r6, #0
	adds r2, #0x42
	movs r1, #0
	strh r0, [r2]
	str r1, [r6, #0x44]
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	str r0, [r6, #0x14]
	adds r0, r4, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldr r0, _08058E20 @ =0x081CBEEC
	bl sub_0803AFB8
	adds r2, r0, #0
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	adds r3, r6, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _08058E24 @ =0x08211844
	ldrb r3, [r3]
	adds r0, r6, #0
	bl sub_0803B924
	ldr r1, [r6, #0x14]
	adds r1, #2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08058E28
	adds r0, r6, #0
	bl sub_08000E14
	b _08058EC8
	.align 2, 0
_08058E14: .4byte sub_08058EDC
_08058E18: .4byte gEwramData
_08058E1C: .4byte 0x0000A094
_08058E20: .4byte 0x081CBEEC
_08058E24: .4byte 0x08211844
_08058E28:
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
	adds r5, r6, #0
	adds r5, #0x59
	ldrb r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r5]
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
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	bl RandomNumberGenerator
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	ldr r0, [r6, #0x14]
	cmp r0, #0
	bne _08058E98
	movs r0, #0xa0
	lsls r0, r0, #8
	b _08058EA6
_08058E98:
	cmp r0, #1
	bne _08058EA2
	movs r0, #0x80
	lsls r0, r0, #8
	b _08058EA6
_08058EA2:
	movs r0, #0xc0
	lsls r0, r0, #8
_08058EA6:
	str r0, [r6, #0x4c]
	bl RandomNumberGenerator
	ldr r1, _08058ED0 @ =0x000003FF
	ands r1, r0
	ldr r0, _08058ED4 @ =0xFFFFFE00
	adds r1, r1, r0
	str r1, [r6, #0x54]
	ldr r0, [r7, #4]
	str r0, [r6, #0x18]
	ldrb r1, [r5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	ldr r0, _08058ED8 @ =sub_0803B9D0
	str r0, [r6, #4]
_08058EC8:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08058ED0: .4byte 0x000003FF
_08058ED4: .4byte 0xFFFFFE00
_08058ED8: .4byte sub_0803B9D0

	thumb_func_start sub_08058EDC
sub_08058EDC: @ 0x08058EDC
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _08058F10 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08058F14 @ =0x0000A094
	adds r4, r0, r1
	adds r0, r5, #0
	bl sub_0806D3CC
	ldr r0, [r5, #0x50]
	ldr r1, [r5, #0x54]
	adds r0, r0, r1
	str r0, [r5, #0x50]
	ldr r1, [r4, #4]
	ldr r0, [r5, #0x18]
	subs r1, r1, r0
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _08058F18
	adds r0, r1, #0
	cmp r1, #0
	bge _08058F0C
	adds r0, r1, #3
_08058F0C:
	asrs r1, r0, #2
	b _08058F32
	.align 2, 0
_08058F10: .4byte gEwramData
_08058F14: .4byte 0x0000A094
_08058F18:
	cmp r0, #1
	bne _08058F26
	adds r0, r1, #0
	cmp r1, #0
	bge _08058F30
	adds r0, r1, #7
	b _08058F30
_08058F26:
	lsls r0, r1, #1
	adds r0, r0, r1
	cmp r0, #0
	bge _08058F30
	adds r0, #7
_08058F30:
	asrs r1, r0, #3
_08058F32:
	ldr r0, [r5, #0x40]
	subs r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r4, #4]
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x50]
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
	movs r1, #3
	bl sub_0806D128
	cmp r0, #0
	beq _08058F7A
	ldrb r0, [r6]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r5, #0
	bl sub_08000E14
	b _08058F80
_08058F7A:
	adds r0, r5, #0
	bl sub_0803F17C
_08058F80:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08058F88
sub_08058F88: @ 0x08058F88
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08058FE8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08058F9E
	adds r0, r4, #0
	bl sub_08000E14
	b _08058FC8
_08058F9E:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r1, r4, #0
	adds r1, #0x5c
	movs r2, #0
	movs r0, #0x19
	strb r0, [r1]
	strb r2, [r4, #0xa]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
_08058FC8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08058FD0
sub_08058FD0: @ 0x08058FD0
	push {lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	bne _08058FE2
	adds r0, r1, #0
	bl sub_08059034
_08058FE2:
	add sp, #0x10
	pop {r0}
	bx r0

	thumb_func_start sub_08058FE8
sub_08058FE8: @ 0x08058FE8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0805901C @ =0x081CBEEC
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _0805902C
	ldr r0, _08059020 @ =0x0820A1C4
	movs r1, #9
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _08059024 @ =0x08211844
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _08059028 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _0805902E
	.align 2, 0
_0805901C: .4byte 0x081CBEEC
_08059020: .4byte 0x0820A1C4
_08059024: .4byte 0x08211844
_08059028: .4byte sub_0803B9D0
_0805902C:
	movs r0, #0
_0805902E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08059034
sub_08059034: @ 0x08059034
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08059048 @ =gEwramData
	ldr r0, [r0]
	ldrb r1, [r4, #0xb]
	cmp r1, #0
	beq _0805904C
	cmp r1, #1
	beq _08059068
	b _0805908A
	.align 2, 0
_08059048: .4byte gEwramData
_0805904C:
	ldr r1, _08059064 @ =0x0000042C
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0805908A
	movs r0, #1
	strb r0, [r4, #0xb]
	b _0805908A
	.align 2, 0
_08059064: .4byte 0x0000042C
_08059068:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0805908A
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	adds r1, #0x20
	strb r1, [r4, #0xd]
	adds r0, r4, #0
	bl sub_08058D7C
_0805908A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08059090
sub_08059090: @ 0x08059090
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r6, r0, #0
	ldr r0, _08059164 @ =gEwramData
	mov r8, r0
	ldr r1, _08059168 @ =0x0811865C
	add r0, sp, #8
	movs r2, #8
	bl memcpy
	add r4, sp, #0x10
	ldr r1, _0805916C @ =0x08118664
	adds r0, r4, #0
	movs r2, #8
	bl memcpy
	add r1, sp, #0x18
	mov sl, r1
	ldr r1, _08059170 @ =0x0811866C
	mov r0, sl
	movs r2, #8
	bl memcpy
	add r2, sp, #0x20
	adds r1, r2, #0
	ldr r0, _08059174 @ =0x08118674
	ldm r0!, {r3, r5, r7}
	stm r1!, {r3, r5, r7}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, r8
	ldr r0, [r1]
	ldr r3, _08059178 @ =0x0000037E
	adds r0, r0, r3
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	mov r8, r4
	mov sb, r2
	cmp r0, #0
	bne _0805915A
	adds r0, r6, #0
	bl sub_080593C0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805915A
	movs r5, #0x30
	ldrsh r0, [r6, r5]
	lsls r0, r0, #1
	add r0, sl
	ldrh r1, [r0]
	adds r0, r6, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	bl RandomNumberGenerator
	movs r1, #6
	bl __umodsi3
	adds r1, r6, #0
	adds r1, #0x6f
	strb r0, [r1]
	subs r1, #0x13
	movs r0, #0x1a
	strb r0, [r1]
	adds r4, r6, #0
	adds r4, #0x59
	ldrb r1, [r4]
	subs r0, #0x1d
	ands r0, r1
	strb r0, [r4]
	adds r5, r6, #0
	adds r5, #0x58
	ldrb r1, [r5]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	movs r7, #0x30
	ldrsh r0, [r6, r7]
	cmp r0, #0
	beq _0805914C
	cmp r0, #2
	bne _080591B0
_0805914C:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0805917C
_0805915A:
	adds r0, r6, #0
	bl sub_08000E14
	b _080591DC
	.align 2, 0
_08059164: .4byte gEwramData
_08059168: .4byte 0x0811865C
_0805916C: .4byte 0x08118664
_08059170: .4byte 0x0811866C
_08059174: .4byte 0x08118674
_08059178: .4byte 0x0000037E
_0805917C:
	movs r0, #0x1f
	ands r2, r0
	ldrb r1, [r5]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5]
	ldrb r0, [r4]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #9
	ldrb r0, [r5]
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
_080591B0:
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	lsls r0, r0, #1
	add r0, sp
	adds r0, #8
	ldrh r0, [r0]
	adds r1, r6, #0
	adds r1, #0x42
	strh r0, [r1]
	movs r3, #0x30
	ldrsh r0, [r6, r3]
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	adds r1, #4
	strh r0, [r1]
	movs r5, #0x30
	ldrsh r0, [r6, r5]
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	str r0, [r6, #0x14]
_080591DC:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080591EC
sub_080591EC: @ 0x080591EC
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #0xb
	bls _080591FA
	b _0805936C
_080591FA:
	lsls r0, r0, #2
	ldr r1, _08059204 @ =_08059208
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08059204: .4byte _08059208
_08059208: @ jump table
	.4byte _08059238 @ case 0
	.4byte _0805925C @ case 1
	.4byte _080592A6 @ case 2
	.4byte _080592C2 @ case 3
	.4byte _0805936C @ case 4
	.4byte _0805936C @ case 5
	.4byte _0805936C @ case 6
	.4byte _0805936C @ case 7
	.4byte _0805936C @ case 8
	.4byte _0805936C @ case 9
	.4byte _080592E4 @ case 10
	.4byte _08059316 @ case 11
_08059238:
	ldr r0, _08059254 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08059258 @ =0x0000042C
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _0805924E
	b _0805936C
_0805924E:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	b _0805936A
	.align 2, 0
_08059254: .4byte gEwramData
_08059258: .4byte 0x0000042C
_0805925C:
	ldr r0, [r5, #0x14]
	subs r0, #1
	str r0, [r5, #0x14]
	cmp r0, #0
	ble _08059268
	b _0805936C
_08059268:
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _08059274
	cmp r0, #2
	bne _0805929E
_08059274:
	movs r1, #0
	movs r0, #0xa
	strb r0, [r5, #0xb]
	str r1, [r5, #0x18]
	str r1, [r5, #0x1c]
	movs r0, #4
	str r0, [r5, #0x20]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r5, #0x50]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r5, #0x54]
	movs r0, #0x3c
	strb r0, [r5, #0xd]
	movs r2, #0xa0
	lsls r2, r2, #0xc
	adds r0, r5, #0
	bl sub_0805940C
	b _0805936C
_0805929E:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	b _0805930E
_080592A6:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, #0
	bl sub_0806D460
	adds r0, r5, #0
	movs r1, #3
	bl sub_0806D128
	cmp r0, #0
	beq _0805936C
	ldrb r0, [r5, #0xb]
	adds r0, #1
	b _0805936A
_080592C2:
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080592CE
	cmp r0, #2
	bne _080592DC
_080592CE:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080592DC:
	adds r0, r5, #0
	bl sub_08000E14
	b _0805939E
_080592E4:
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r5, #0
	bl sub_0806D430
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r5, #0
	bl sub_0806D460
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0805936C
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0
	str r0, [r5, #0x50]
_0805930E:
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r5, #0x54]
	b _0805936C
_08059316:
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	adds r0, r0, r1
	str r0, [r5, #0x1c]
	cmp r0, #0x5f
	ble _08059326
	movs r0, #0x60
	str r0, [r5, #0x1c]
_08059326:
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	adds r0, r0, r1
	str r0, [r5, #0x18]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r1, r5, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	lsrs r2, r1, #7
	str r2, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r4, #0
	adds r2, r4, #0
	bl sub_0803E058
	adds r0, r5, #0
	bl sub_0806D3C0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806D460
	adds r0, r5, #0
	movs r1, #3
	bl sub_0806D128
	cmp r0, #0
	beq _0805936C
	movs r0, #3
_0805936A:
	strb r0, [r5, #0xb]
_0805936C:
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _08059378
	cmp r0, #2
	bne _08059398
_08059378:
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
_08059398:
	adds r0, r5, #0
	bl sub_0803F17C
_0805939E:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080593A8
sub_080593A8: @ 0x080593A8
	push {lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	bne _080593BA
	adds r0, r1, #0
	bl sub_080591EC
_080593BA:
	add sp, #0x10
	pop {r0}
	bx r0

	thumb_func_start sub_080593C0
sub_080593C0: @ 0x080593C0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080593F4 @ =0x081CBEEC
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _08059404
	ldr r0, _080593F8 @ =0x0820A1C4
	movs r1, #9
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _080593FC @ =0x08211844
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _08059400 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _08059406
	.align 2, 0
_080593F4: .4byte 0x081CBEEC
_080593F8: .4byte 0x0820A1C4
_080593FC: .4byte 0x08211844
_08059400: .4byte sub_0803B9D0
_08059404:
	movs r0, #0
_08059406:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0805940C
sub_0805940C: @ 0x0805940C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r2, _08059484 @ =sub_08068F78
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	beq _0805947E
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
	movs r2, #0
	strb r0, [r1]
	strb r2, [r4, #0xd]
	strb r2, [r4, #0x18]
	ldr r0, _08059488 @ =0x081CBEEC
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0805948C @ =0x08211844
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08059490 @ =sub_0803B9D0
	str r0, [r4, #4]
_0805947E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08059484: .4byte sub_08068F78
_08059488: .4byte 0x081CBEEC
_0805948C: .4byte 0x08211844
_08059490: .4byte sub_0803B9D0

	thumb_func_start sub_08059494
sub_08059494: @ 0x08059494
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _080594C0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080594C4 @ =0x0000A094
	adds r5, r0, r1
	ldr r0, _080594C8 @ =0x08118684
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, #4]
	adds r0, r4, #0
	bl sub_08059864
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080594CC
	adds r0, r4, #0
	bl sub_08000E14
	b _08059578
	.align 2, 0
_080594C0: .4byte gEwramData
_080594C4: .4byte 0x0000A094
_080594C8: .4byte 0x08118684
_080594CC:
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	lsls r1, r1, #2
	add r1, sp
	adds r0, r4, #0
	bl sub_080428B4
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	lsls r1, r1, #2
	add r1, sp
	adds r0, r4, #0
	bl sub_08042848
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bne _08059514
	adds r0, r4, #0
	adds r0, #0x65
	strb r1, [r0]
	b _0805951C
_08059514:
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #7
	strb r0, [r1]
_0805951C:
	adds r1, r4, #0
	adds r1, #0x5c
	movs r3, #0
	movs r0, #0x12
	strb r0, [r1]
	strb r3, [r4, #0xa]
	ldr r2, [r4, #0x44]
	ldr r0, [r5, #8]
	adds r0, r2, r0
	str r0, [r4, #0x18]
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x1c]
	ldr r1, [r4, #0x40]
	ldr r0, [r5, #4]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	ldr r0, [r5, #8]
	adds r2, r2, r0
	str r2, [r4, #0x14]
	ldr r0, [r5, #4]
	subs r1, r1, r0
	str r1, [r4, #0x24]
	ldr r0, [r5, #8]
	subs r2, r2, r0
	str r2, [r4, #0x28]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	cmp r1, r0
	ble _08059572
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	b _08059578
_08059572:
	adds r0, r4, #0
	adds r0, #0x20
	strb r3, [r0]
_08059578:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08059580
sub_08059580: @ 0x08059580
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _080595B0 @ =gEwramData
	ldr r0, [r2]
	ldr r1, _080595B4 @ =0x0000A094
	adds r5, r0, r1
	ldr r0, [r4, #0x10]
	ldr r1, [r5, #4]
	subs r0, r0, r1
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x14]
	ldr r1, [r5, #8]
	subs r0, r0, r1
	str r0, [r4, #0x28]
	ldrb r0, [r4, #0xb]
	cmp r0, #4
	bls _080595A4
	b _080596C8
_080595A4:
	lsls r0, r0, #2
	ldr r1, _080595B8 @ =_080595BC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080595B0: .4byte gEwramData
_080595B4: .4byte 0x0000A094
_080595B8: .4byte _080595BC
_080595BC: @ jump table
	.4byte _080595D0 @ case 0
	.4byte _080595F4 @ case 1
	.4byte _08059618 @ case 2
	.4byte _08059648 @ case 3
	.4byte _08059674 @ case 4
_080595D0:
	ldr r0, [r2]
	ldr r1, _080595F0 @ =0x00013190
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, r4
	bne _080596C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xd]
	movs r0, #0xa9
	lsls r0, r0, #1
	bl sub_080D7910
	b _080596C8
	.align 2, 0
_080595F0: .4byte 0x00013190
_080595F4:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls _080596C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xd]
	adds r1, r4, #0
	adds r1, #0x65
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _080596C8
_08059618:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bls _080596C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xd]
	adds r1, r4, #0
	adds r1, #0x65
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, _08059644 @ =0x00000151
	bl sub_080D7910
	b _080596C8
	.align 2, 0
_08059644: .4byte 0x00000151
_08059648:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls _080596C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xd]
	adds r1, r4, #0
	adds r1, #0x65
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0xa8
	lsls r0, r0, #1
	bl sub_080D7910
	b _080596C8
_08059674:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _080596C8
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #5
	movs r2, #1
	bl sub_080596E0
	adds r0, r4, #0
	movs r1, #6
	movs r2, #2
	bl sub_080596E0
	adds r0, r4, #0
	movs r1, #4
	movs r2, #3
	bl sub_080596E0
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080596C8
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	bl sub_080596E0
	adds r0, r4, #0
	movs r1, #5
	movs r2, #4
	bl sub_080596E0
_080596C8:
	ldr r0, [r4, #0x10]
	ldr r1, [r5, #4]
	subs r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x14]
	ldr r1, [r5, #8]
	subs r0, r0, r1
	str r0, [r4, #0x44]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080596E0
sub_080596E0: @ 0x080596E0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r2, _080597C0 @ =sub_08059840
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r7, r0, #0
	cmp r7, #0
	beq _080597B6
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #0x11
	ldr r1, _080597C4 @ =0xFFF40000
	adds r0, r0, r1
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	str r1, [r7, #0x40]
	ldr r0, [r4, #0x44]
	movs r2, #0xc0
	lsls r2, r2, #0xc
	adds r0, r0, r2
	str r0, [r7, #0x44]
	adds r0, r4, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r7, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _080597C8 @ =0x081CBF0C
	bl sub_0803AFB8
	adds r2, r0, #0
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	adds r3, r7, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _080597CC @ =0x08211F08
	ldrb r3, [r3]
	adds r0, r7, #0
	bl sub_0803B924
	adds r0, r7, #0
	adds r0, #0x65
	strb r5, [r0]
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r1, #2
	mov r8, r1
	mov r1, r8
	orrs r0, r1
	strb r0, [r2]
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
	lsls r0, r6, #0xd
	ldr r2, _080597D0 @ =0xFFFFC000
	adds r0, r0, r2
	str r0, [r7, #0x48]
	bl RandomNumberGenerator
	ldr r1, _080597D4 @ =0x00003FFF
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #7
	adds r1, r1, r0
	str r1, [r7, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r7, #0x54]
	adds r1, r7, #0
	adds r1, #0x59
	ldrb r0, [r1]
	mov r2, r8
	orrs r0, r2
	strb r0, [r1]
	ldr r0, _080597D8 @ =sub_0803B9D0
	str r0, [r7, #4]
_080597B6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080597C0: .4byte sub_08059840
_080597C4: .4byte 0xFFF40000
_080597C8: .4byte 0x081CBF0C
_080597CC: .4byte 0x08211F08
_080597D0: .4byte 0xFFFFC000
_080597D4: .4byte 0x00003FFF
_080597D8: .4byte sub_0803B9D0

	thumb_func_start sub_080597DC
sub_080597DC: @ 0x080597DC
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080597EE
	adds r0, r4, #0
	bl sub_08059580
_080597EE:
	ldr r0, _08059834 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08059838 @ =0x00013110
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r1, [r2, #0x40]
	ldr r0, [r4, #0x40]
	subs r1, r1, r0
	cmp r1, #0
	bge _08059804
	rsbs r1, r1, #0
_08059804:
	ldr r3, _0805983C @ =0x001FFFFF
	cmp r1, r3
	bgt _08059822
	ldr r1, [r2, #0x44]
	ldr r0, [r4, #0x44]
	subs r0, r1, r0
	cmp r0, #0
	bge _08059816
	rsbs r0, r0, #0
_08059816:
	cmp r0, r3
	bgt _08059822
	adds r0, r4, #0
	movs r1, #1
	bl sub_08021278
_08059822:
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08059834: .4byte gEwramData
_08059838: .4byte 0x00013110
_0805983C: .4byte 0x001FFFFF

	thumb_func_start sub_08059840
sub_08059840: @ 0x08059840
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #0xb
	bl sub_0806D3D8
	adds r0, r4, #0
	movs r1, #3
	bl sub_0806D128
	cmp r0, #0
	beq _0805985E
	adds r0, r4, #0
	bl sub_08000E14
_0805985E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08059864
sub_08059864: @ 0x08059864
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08059898 @ =0x081CBF0C
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _080598A8
	ldr r0, _0805989C @ =0x0820A350
	movs r1, #1
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _080598A0 @ =0x08211F08
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _080598A4 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _080598AA
	.align 2, 0
_08059898: .4byte 0x081CBF0C
_0805989C: .4byte 0x0820A350
_080598A0: .4byte 0x08211F08
_080598A4: .4byte sub_0803B9D0
_080598A8:
	movs r0, #0
_080598AA:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080598B0
sub_080598B0: @ 0x080598B0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08059C04
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080598C6
	adds r0, r4, #0
	bl sub_08000E14
	b _08059920
_080598C6:
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	movs r1, #1
	cmp r0, #1
	beq _080598D2
	movs r1, #0
_080598D2:
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
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
	movs r2, #0
	movs r0, #9
	strb r0, [r1]
	adds r3, r4, #0
	adds r3, #0x58
	ldrb r1, [r3]
	subs r0, #0x4a
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r3]
	strb r2, [r4, #0xa]
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08059920
	ldrb r0, [r3]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3]
_08059920:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08059928
sub_08059928: @ 0x08059928
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	ldr r2, _080599FC @ =sub_08059C90
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r7, r0, #0
	ldr r0, _08059A00 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08059A04 @ =0x0000A094
	adds r1, r1, r0
	mov sb, r1
	cmp r7, #0
	bne _0805994E
	b _08059A72
_0805994E:
	mov r2, r8
	ldr r0, [r2, #0x40]
	str r0, [r7, #0x40]
	ldr r0, [r2, #0x44]
	str r0, [r7, #0x44]
	mov r0, r8
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r7, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _08059A08 @ =0x081CBEFC
	bl sub_0803AFB8
	adds r2, r0, #0
	mov r0, r8
	adds r0, #0x2c
	ldrb r0, [r0]
	adds r3, r7, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _08059A0C @ =0x08211CB0
	ldrb r3, [r3]
	adds r0, r7, #0
	bl sub_0803B924
	bl RandomNumberGenerator
	movs r1, #3
	ands r1, r0
	adds r1, #0xb
	adds r0, r7, #0
	adds r0, #0x65
	strb r1, [r0]
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r6, #2
	orrs r0, r6
	strb r0, [r2]
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
	adds r2, r7, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r6
	strb r0, [r2]
	mov r1, r8
	movs r2, #0x30
	ldrsh r0, [r1, r2]
	cmp r0, #2
	bne _08059A18
	bl RandomNumberGenerator
	ldr r1, _08059A10 @ =0x0003FFFF
	ands r1, r0
	ldr r0, _08059A14 @ =0xFFFE0000
	adds r1, r1, r0
	str r1, [r7, #0x48]
	b _08059A26
	.align 2, 0
_080599FC: .4byte sub_08059C90
_08059A00: .4byte gEwramData
_08059A04: .4byte 0x0000A094
_08059A08: .4byte 0x081CBEFC
_08059A0C: .4byte 0x08211CB0
_08059A10: .4byte 0x0003FFFF
_08059A14: .4byte 0xFFFE0000
_08059A18:
	bl RandomNumberGenerator
	ldr r1, _08059A3C @ =0x0000FFFF
	ands r1, r0
	ldr r0, _08059A40 @ =0xFFFF0000
	subs r0, r0, r1
	str r0, [r7, #0x48]
_08059A26:
	mov r1, r8
	movs r2, #0x30
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _08059A44
	bl RandomNumberGenerator
	ldr r1, _08059A3C @ =0x0000FFFF
	ands r1, r0
	ldr r0, _08059A40 @ =0xFFFF0000
	b _08059A4E
	.align 2, 0
_08059A3C: .4byte 0x0000FFFF
_08059A40: .4byte 0xFFFF0000
_08059A44:
	bl RandomNumberGenerator
	ldr r1, _08059A80 @ =0x0000FFFF
	ands r1, r0
	ldr r0, _08059A84 @ =0xFFFE0000
_08059A4E:
	subs r0, r0, r1
	str r0, [r7, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r7, #0x54]
	mov r1, sb
	ldr r0, [r1, #4]
	str r0, [r7, #0x18]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08059A88 @ =sub_0803B9D0
	str r0, [r7, #4]
	movs r0, #0x32
	strb r0, [r7, #0xd]
_08059A72:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08059A80: .4byte 0x0000FFFF
_08059A84: .4byte 0xFFFE0000
_08059A88: .4byte sub_0803B9D0

	thumb_func_start sub_08059A8C
sub_08059A8C: @ 0x08059A8C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r2, _08059B78 @ =sub_08059BBC
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r7, r0, #0
	cmp r7, #0
	beq _08059B72
	bl RandomNumberGenerator
	ldr r1, _08059B7C @ =0x001FFFFF
	ands r1, r0
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, _08059B80 @ =0xFFF00000
	adds r0, r0, r1
	str r0, [r7, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r7, #0x44]
	adds r0, r4, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r7, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _08059B84 @ =0x081CBEFC
	bl sub_0803AFB8
	adds r2, r0, #0
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	adds r3, r7, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _08059B88 @ =0x08211CB0
	ldrb r3, [r3]
	adds r0, r7, #0
	bl sub_0803B924
	bl RandomNumberGenerator
	movs r1, #5
	bl __umodsi3
	adds r0, #6
	adds r1, r7, #0
	adds r1, #0x65
	strb r0, [r1]
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r6, #2
	orrs r0, r6
	strb r0, [r2]
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
	adds r2, r7, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r6
	strb r0, [r2]
	bl RandomNumberGenerator
	movs r1, #0xc0
	lsls r1, r1, #8
	bl __umodsi3
	ldr r1, _08059B8C @ =0xFFFFA000
	adds r0, r0, r1
	str r0, [r7, #0x48]
	bl RandomNumberGenerator
	ldr r1, _08059B90 @ =0x00001FFF
	ands r1, r0
	ldr r0, _08059B94 @ =0xFFFFC000
	subs r0, r0, r1
	str r0, [r7, #0x4c]
	adds r1, r7, #0
	adds r1, #0x59
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	ldr r0, _08059B98 @ =sub_0803B9D0
	str r0, [r7, #4]
	movs r0, #0x32
	strb r0, [r7, #0xd]
_08059B72:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08059B78: .4byte sub_08059BBC
_08059B7C: .4byte 0x001FFFFF
_08059B80: .4byte 0xFFF00000
_08059B84: .4byte 0x081CBEFC
_08059B88: .4byte 0x08211CB0
_08059B8C: .4byte 0xFFFFA000
_08059B90: .4byte 0x00001FFF
_08059B94: .4byte 0xFFFFC000
_08059B98: .4byte sub_0803B9D0

	thumb_func_start sub_08059B9C
sub_08059B9C: @ 0x08059B9C
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08059BAE
	adds r0, r4, #0
	bl sub_08059C50
_08059BAE:
	adds r0, r4, #0
	bl sub_0803F17C
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08059BBC
sub_08059BBC: @ 0x08059BBC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #0xb
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
	bgt _08059BFC
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_08059BFC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08059C04
sub_08059C04: @ 0x08059C04
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08059C38 @ =0x081CBEFC
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _08059C48
	ldr r0, _08059C3C @ =0x0820A32C
	movs r1, #0
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _08059C40 @ =0x08211CB0
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _08059C44 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _08059C4A
	.align 2, 0
_08059C38: .4byte 0x081CBEFC
_08059C3C: .4byte 0x0820A32C
_08059C40: .4byte 0x08211CB0
_08059C44: .4byte sub_0803B9D0
_08059C48:
	movs r0, #0
_08059C4A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08059C50
sub_08059C50: @ 0x08059C50
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _08059C8A
	ldrb r0, [r4, #0xd]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08059C8A
	bl RandomNumberGenerator
	movs r1, #0xf
	ands r1, r0
	adds r1, #0x10
	strb r1, [r4, #0xd]
	adds r0, r4, #0
	bl sub_08059928
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _08059C8A
	adds r0, r4, #0
	bl sub_08059A8C
_08059C8A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08059C90
sub_08059C90: @ 0x08059C90
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x40
	bl sub_0806D490
	movs r1, #0xc0
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
	bgt _08059CD8
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_08059CD8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08059CE0
sub_08059CE0: @ 0x08059CE0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08059D00 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08059D04 @ =0x0000A094
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_0805A120
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08059D08
	adds r0, r4, #0
	bl sub_08000E14
	b _08059D92
	.align 2, 0
_08059D00: .4byte gEwramData
_08059D04: .4byte 0x0000A094
_08059D08:
	adds r3, r4, #0
	adds r3, #0x72
	ldrb r1, [r3]
	movs r0, #4
	movs r2, #0
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #3
	strb r0, [r1]
	subs r1, #9
	movs r0, #0x12
	strb r0, [r1]
	strb r2, [r4, #0xa]
	movs r0, #0x80
	lsls r0, r0, #7
	strh r0, [r4, #0x18]
	ldrh r0, [r4, #0x32]
	strh r0, [r4, #0x1c]
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08059D46
	movs r0, #0
	strb r0, [r4, #0xb]
	movs r0, #0x80
	lsls r0, r0, #1
	b _08059D4E
_08059D46:
	movs r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0xff
	lsls r0, r0, #8
_08059D4E:
	strh r0, [r4, #0x1a]
	ldr r2, [r4, #0x40]
	ldr r0, [r5, #4]
	adds r2, r2, r0
	str r2, [r4, #0x10]
	ldr r1, [r4, #0x44]
	ldr r0, [r5, #8]
	adds r1, r1, r0
	str r1, [r4, #0x14]
	ldr r0, [r5, #4]
	subs r2, r2, r0
	str r2, [r4, #0x24]
	ldr r0, [r5, #8]
	subs r1, r1, r0
	str r1, [r4, #0x28]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08059E4C
	adds r0, r4, #0
	movs r1, #1
	bl sub_08059E4C
	adds r0, r4, #0
	movs r1, #2
	bl sub_08059E4C
_08059D92:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08059D98
sub_08059D98: @ 0x08059D98
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, _08059DC0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08059DC4 @ =0x0000A094
	adds r4, r0, r1
	ldr r0, [r2, #0x10]
	ldr r1, [r4, #4]
	subs r0, r0, r1
	str r0, [r2, #0x24]
	ldr r0, [r2, #0x14]
	ldr r1, [r4, #8]
	subs r0, r0, r1
	str r0, [r2, #0x28]
	ldrb r0, [r2, #0xb]
	cmp r0, #0
	beq _08059DC8
	cmp r0, #1
	beq _08059E00
	b _08059E34
	.align 2, 0
_08059DC0: .4byte gEwramData
_08059DC4: .4byte 0x0000A094
_08059DC8:
	ldrh r3, [r2, #0x1a]
	movs r1, #0x1a
	ldrsh r0, [r2, r1]
	ldr r1, _08059DF8 @ =0xFFFFFF00
	cmp r0, r1
	ble _08059DE4
	ldrh r0, [r2, #0x1c]
	subs r0, r3, r0
	strh r0, [r2, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	bge _08059DE4
	strh r1, [r2, #0x1a]
_08059DE4:
	ldrh r0, [r2, #0x1a]
	ldrh r3, [r2, #0x18]
	adds r0, r0, r3
	strh r0, [r2, #0x18]
	lsls r0, r0, #0x10
	ldr r1, _08059DFC @ =0x3FFF0000
	cmp r0, r1
	bgt _08059E34
	movs r0, #1
	b _08059E32
	.align 2, 0
_08059DF8: .4byte 0xFFFFFF00
_08059DFC: .4byte 0x3FFF0000
_08059E00:
	ldrh r1, [r2, #0x1a]
	movs r3, #0x1a
	ldrsh r0, [r2, r3]
	cmp r0, #0xff
	bgt _08059E1E
	ldrh r0, [r2, #0x1c]
	adds r0, r1, r0
	strh r0, [r2, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	ble _08059E1E
	strh r1, [r2, #0x1a]
_08059E1E:
	ldrh r0, [r2, #0x1a]
	ldrh r1, [r2, #0x18]
	adds r0, r0, r1
	strh r0, [r2, #0x18]
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x17
	cmp r0, r1
	ble _08059E34
	movs r0, #0
_08059E32:
	strb r0, [r2, #0xb]
_08059E34:
	ldr r0, [r2, #0x10]
	ldr r1, [r4, #4]
	subs r0, r0, r1
	str r0, [r2, #0x40]
	ldr r0, [r2, #0x14]
	ldr r1, [r4, #8]
	subs r0, r0, r1
	str r0, [r2, #0x44]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08059E4C
sub_08059E4C: @ 0x08059E4C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r2, _08059EB8 @ =sub_08059FB4
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r5, r0, #0
	ldr r0, _08059EBC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08059EC0 @ =0x0000A094
	adds r1, r1, r0
	mov r8, r1
	ldr r0, _08059EC4 @ =0x1C20F4F0
	str r0, [sp, #8]
	cmp r5, #0
	bne _08059E78
	b _08059FA2
_08059E78:
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _08059EC8 @ =0x081CBF14
	bl sub_0803AFB8
	adds r2, r0, #0
	adds r0, r6, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	adds r3, r5, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _08059ECC @ =0x08211DC4
	ldrb r3, [r3]
	adds r0, r5, #0
	bl sub_0803B924
	cmp r7, #0
	bne _08059ED0
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #2
	b _08059EE2
	.align 2, 0
_08059EB8: .4byte sub_08059FB4
_08059EBC: .4byte gEwramData
_08059EC0: .4byte 0x0000A094
_08059EC4: .4byte 0x1C20F4F0
_08059EC8: .4byte 0x081CBF14
_08059ECC: .4byte 0x08211DC4
_08059ED0:
	cmp r7, #1
	bne _08059EDC
	adds r0, r5, #0
	adds r0, #0x65
	strb r7, [r0]
	b _08059EE4
_08059EDC:
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0
_08059EE2:
	strb r0, [r1]
_08059EE4:
	cmp r7, #2
	bne _08059F04
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	adds r0, r5, #0
	add r1, sp, #8
	bl sub_080428B4
	adds r0, r5, #0
	add r1, sp, #8
	bl sub_08042848
_08059F04:
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r2]
	cmp r7, #2
	beq _08059F6E
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08059F2E
	adds r0, r5, #0
	bl sub_08000E14
	b _08059FA2
_08059F2E:
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
	movs r2, #0x18
	ldrsh r0, [r6, r2]
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
_08059F6E:
	ldr r2, [r5, #0x40]
	mov r3, r8
	ldr r0, [r3, #4]
	adds r2, r2, r0
	str r2, [r5, #0x10]
	ldr r1, [r5, #0x44]
	ldr r0, [r3, #8]
	adds r1, r1, r0
	str r1, [r5, #0x14]
	ldr r0, [r3, #4]
	subs r2, r2, r0
	str r2, [r5, #0x24]
	ldr r0, [r3, #8]
	subs r1, r1, r0
	str r1, [r5, #0x28]
	str r6, [r5, #0x20]
	strb r7, [r5, #0x1e]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08059FB0 @ =sub_0805A16C
	str r0, [r5, #4]
_08059FA2:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08059FB0: .4byte sub_0805A16C

	thumb_func_start sub_08059FB4
sub_08059FB4: @ 0x08059FB4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0805A0F4 @ =gEwramData
	mov sb, r0
	ldr r0, [r0]
	ldr r1, _0805A0F8 @ =0x0000A094
	adds r1, r1, r0
	mov r8, r1
	ldr r7, [r5, #0x20]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _0805A03E
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	movs r4, #0x80
	lsls r4, r4, #7
	adds r0, r0, r4
	bl sub_080009E4
	adds r6, r0, #0
	movs r0, #0x1e
	ldrsb r0, [r5, r0]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #0x11
	movs r4, #0x80
	lsls r4, r4, #0xd
	adds r1, r1, r4
	adds r0, r6, #0
	bl sub_0803E86C
	adds r6, r0, #0
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	bl sub_080009E4
	adds r2, r0, #0
	movs r0, #0x1e
	ldrsb r0, [r5, r0]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #0x11
	adds r1, r1, r4
	adds r0, r2, #0
	bl sub_0803E86C
	adds r2, r0, #0
	ldr r0, [r7, #0x10]
	adds r6, r6, r0
	ldr r0, [r7, #0x14]
	adds r2, r2, r0
	ldr r0, [r5, #0x10]
	subs r0, r6, r0
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x14]
	subs r0, r2, r0
	str r0, [r5, #0x4c]
_0805A03E:
	movs r0, #0x1e
	ldrsb r0, [r5, r0]
	cmp r0, #2
	beq _0805A068
	movs r2, #0x18
	ldrsh r0, [r7, r2]
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
_0805A068:
	ldr r2, [r5, #0x10]
	mov r4, r8
	ldr r0, [r4, #4]
	subs r3, r2, r0
	str r3, [r5, #0x40]
	ldr r1, [r5, #0x14]
	ldr r0, [r4, #8]
	subs r4, r1, r0
	str r4, [r5, #0x44]
	mov r6, r8
	ldr r0, [r6, #4]
	subs r2, r2, r0
	str r2, [r5, #0x24]
	ldr r0, [r6, #8]
	subs r1, r1, r0
	str r1, [r5, #0x28]
	movs r0, #0x1e
	ldrsb r0, [r5, r0]
	cmp r0, #2
	bne _0805A0C0
	mov r1, sb
	ldr r0, [r1]
	ldr r2, _0805A0FC @ =0x00013110
	adds r0, r0, r2
	ldr r1, [r0]
	ldr r0, [r1, #0x40]
	subs r0, r0, r3
	cmp r0, #0
	bge _0805A0A4
	rsbs r0, r0, #0
_0805A0A4:
	ldr r2, _0805A100 @ =0x001FFFFF
	cmp r0, r2
	bgt _0805A0C0
	ldr r0, [r1, #0x44]
	subs r0, r0, r4
	cmp r0, #0
	bge _0805A0B4
	rsbs r0, r0, #0
_0805A0B4:
	cmp r0, r2
	bgt _0805A0C0
	adds r0, r5, #0
	movs r1, #1
	bl sub_08021278
_0805A0C0:
	ldr r0, _0805A0F4 @ =gEwramData
	ldr r0, [r0]
	ldr r4, _0805A104 @ =0x00013190
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, r5
	bne _0805A0E6
	adds r0, r5, #0
	adds r0, #0x40
	movs r6, #0
	ldrsh r0, [r0, r6]
	bl sub_0802138C
	adds r0, r5, #0
	adds r0, #0x44
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_080213A4
_0805A0E6:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805A0F4: .4byte gEwramData
_0805A0F8: .4byte 0x0000A094
_0805A0FC: .4byte 0x00013110
_0805A100: .4byte 0x001FFFFF
_0805A104: .4byte 0x00013190

	thumb_func_start sub_0805A108
sub_0805A108: @ 0x0805A108
	push {lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	bne _0805A11A
	adds r0, r1, #0
	bl sub_08059D98
_0805A11A:
	add sp, #0x10
	pop {r0}
	bx r0

	thumb_func_start sub_0805A120
sub_0805A120: @ 0x0805A120
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0805A154 @ =0x081CBF14
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _0805A164
	ldr r0, _0805A158 @ =0x0820A350
	movs r1, #2
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _0805A15C @ =0x08211DC4
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _0805A160 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _0805A166
	.align 2, 0
_0805A154: .4byte 0x081CBF14
_0805A158: .4byte 0x0820A350
_0805A15C: .4byte 0x08211DC4
_0805A160: .4byte sub_0803B9D0
_0805A164:
	movs r0, #0
_0805A166:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0805A16C
sub_0805A16C: @ 0x0805A16C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x40]
	ldr r6, [r4, #0x44]
	ldr r0, [r4, #0x24]
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x28]
	str r0, [r4, #0x44]
	adds r0, r4, #0
	bl sub_0803AC40
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0805A18C
sub_0805A18C: @ 0x0805A18C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _0805A1D8 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0805A1DC @ =0x0C10E8F8
	str r0, [sp]
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #0
	beq _0805A1C2
	ldrh r1, [r6, #0x32]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x15
	lsls r0, r0, #2
	movs r3, #0xd1
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
	bne _0805A1CE
_0805A1C2:
	adds r0, r6, #0
	bl sub_0805A618
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805A1E0
_0805A1CE:
	adds r0, r6, #0
	bl sub_08000E14
	b _0805A2F6
	.align 2, 0
_0805A1D8: .4byte gEwramData
_0805A1DC: .4byte 0x0C10E8F8
_0805A1E0:
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bne _0805A204
	adds r0, r6, #0
	movs r1, #8
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	adds r0, r6, #0
	mov r1, sp
	bl sub_080428B4
	adds r0, r6, #0
	mov r1, sp
	bl sub_08042848
_0805A204:
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0x12
	strb r0, [r1]
	movs r2, #0x30
	ldrsh r0, [r6, r2]
	cmp r0, #0
	bne _0805A232
	adds r1, #9
	movs r0, #2
	strb r0, [r1]
	adds r0, r6, #0
	bl sub_0805A50C
	b _0805A23A
_0805A232:
	adds r1, r6, #0
	adds r1, #0x65
	movs r0, #1
	strb r0, [r1]
_0805A23A:
	movs r0, #0
	strb r0, [r6, #0xa]
	movs r3, #0x30
	ldrsh r0, [r6, r3]
	cmp r0, #0
	bne _0805A280
	strb r0, [r6, #0xb]
	ldr r0, _0805A27C @ =gEwramData
	ldr r2, [r0]
	ldrh r1, [r6, #0x32]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x15
	lsls r0, r0, #2
	movs r3, #0xd1
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
	beq _0805A2D6
	ldr r0, [r6, #0x44]
	movs r1, #0xc0
	lsls r1, r1, #0xb
	adds r0, r0, r1
	str r0, [r6, #0x44]
	movs r0, #2
	strb r0, [r6, #0xb]
	b _0805A2D6
	.align 2, 0
_0805A27C: .4byte gEwramData
_0805A280:
	movs r0, #0xa
	strb r0, [r6, #0xb]
	ldr r1, _0805A300 @ =gDisplayRegisters
	adds r2, r1, #0
	adds r2, #0x42
	movs r0, #0x3f
	strb r0, [r2]
	adds r1, #0x43
	movs r0, #0x2f
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r5, [r0, r2]
	ldr r0, _0805A304 @ =gEwramData
	ldr r1, [r0]
	ldr r3, _0805A308 @ =0x0000A094
	adds r1, r1, r3
	movs r2, #6
	ldrsh r0, [r1, r2]
	adds r5, r5, r0
	adds r0, r6, #0
	adds r0, #0x46
	movs r3, #0
	ldrsh r4, [r0, r3]
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	adds r4, r4, r0
	adds r1, r4, #0
	subs r1, #8
	adds r0, r5, #0
	bl sub_08002200
	adds r1, r4, #0
	subs r1, #0x18
	adds r0, r5, #0
	bl sub_08002200
	subs r4, #0x28
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08002200
_0805A2D6:
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	subs r2, #1
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, [r6, #0x40]
	str r0, [r6, #0x10]
	ldr r0, [r6, #0x44]
	str r0, [r6, #0x14]
_0805A2F6:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805A300: .4byte gDisplayRegisters
_0805A304: .4byte gEwramData
_0805A308: .4byte 0x0000A094

	thumb_func_start sub_0805A30C
sub_0805A30C: @ 0x0805A30C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	adds r6, r0, #0
	ldr r1, _0805A334 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0805A338 @ =0x0000A094
	adds r2, r2, r0
	mov r8, r2
	ldrb r0, [r6, #0xb]
	adds r2, r1, #0
	cmp r0, #0xc
	bls _0805A32A
	b _0805A4F6
_0805A32A:
	lsls r0, r0, #2
	ldr r1, _0805A33C @ =_0805A340
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805A334: .4byte gEwramData
_0805A338: .4byte 0x0000A094
_0805A33C: .4byte _0805A340
_0805A340: @ jump table
	.4byte _0805A374 @ case 0
	.4byte _0805A3CE @ case 1
	.4byte _0805A4F6 @ case 2
	.4byte _0805A4F6 @ case 3
	.4byte _0805A4F6 @ case 4
	.4byte _0805A4F6 @ case 5
	.4byte _0805A4F6 @ case 6
	.4byte _0805A4F6 @ case 7
	.4byte _0805A4F6 @ case 8
	.4byte _0805A4F6 @ case 9
	.4byte _0805A3F6 @ case 10
	.4byte _0805A434 @ case 11
	.4byte _0805A4EC @ case 12
_0805A374:
	ldr r2, [r2]
	ldr r3, _0805A3C0 @ =0x00013190
	adds r0, r2, r3
	ldr r0, [r0]
	cmp r0, r6
	bne _0805A3C8
	ldr r0, [r6, #0x18]
	adds r0, #1
	str r0, [r6, #0x18]
	cmp r0, #7
	bgt _0805A38C
	b _0805A4F6
_0805A38C:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xb]
	str r1, [r6, #0x4c]
	strb r1, [r6, #0xd]
	ldrh r1, [r6, #0x32]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x15
	lsls r0, r0, #2
	movs r3, #0xd1
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
	ldr r0, _0805A3C4 @ =0x00000133
	bl sub_080D7910
	b _0805A4F6
	.align 2, 0
_0805A3C0: .4byte 0x00013190
_0805A3C4: .4byte 0x00000133
_0805A3C8:
	movs r0, #0
	str r0, [r6, #0x18]
	b _0805A4F6
_0805A3CE:
	adds r0, r6, #0
	bl sub_0806D3CC
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r6, #0x4c]
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _0805A3EA
	b _0805A4F6
_0805A3EA:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xb]
	str r1, [r6, #0x1c]
	b _0805A4F6
_0805A3F6:
	ldr r2, [r2]
	ldrh r1, [r6, #0x32]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x15
	lsls r0, r0, #2
	movs r3, #0xd1
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
	beq _0805A4F6
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xb]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r6, #0x4c]
	strb r1, [r6, #0xd]
	ldr r0, _0805A430 @ =0x00000113
	bl sub_080D7910
	b _0805A4F6
	.align 2, 0
_0805A430: .4byte 0x00000113
_0805A434:
	adds r0, r6, #0
	bl sub_0806D3CC
	ldr r2, _0805A4DC @ =gUnk_03002CB0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	str r0, [r6, #0x1c]
	ldrb r0, [r6, #0xd]
	movs r7, #7
	ands r7, r0
	cmp r7, #0
	bne _0805A490
	bl RandomNumberGenerator
	adds r5, r0, #0
	ldr r4, _0805A4E0 @ =0x00007FFF
	ands r5, r4
	ldr r0, _0805A4E4 @ =0xFFFFC000
	adds r5, r5, r0
	bl RandomNumberGenerator
	ands r0, r4
	ldr r3, _0805A4E8 @ =0xFFFF8000
	subs r3, r3, r0
	ldr r0, [r6, #0x10]
	ldr r1, [r6, #0x14]
	adds r2, r6, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	str r7, [sp, #4]
	movs r2, #0x20
	str r2, [sp, #8]
	movs r2, #0xf
	str r2, [sp, #0xc]
	movs r2, #6
	str r2, [sp, #0x10]
	adds r2, r5, #0
	bl sub_0806D9CC
_0805A490:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x5f
	bls _0805A4F6
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	movs r1, #0x12
	ldrsh r5, [r6, r1]
	mov r2, r8
	movs r3, #6
	ldrsh r0, [r2, r3]
	adds r5, r5, r0
	movs r0, #0x16
	ldrsh r4, [r6, r0]
	movs r1, #0xa
	ldrsh r0, [r2, r1]
	adds r4, r4, r0
	adds r1, r4, #0
	subs r1, #8
	adds r0, r5, #0
	bl sub_08002248
	adds r1, r4, #0
	subs r1, #0x18
	adds r0, r5, #0
	bl sub_08002248
	subs r4, #0x28
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08002248
	b _0805A4F6
	.align 2, 0
_0805A4DC: .4byte gUnk_03002CB0
_0805A4E0: .4byte 0x00007FFF
_0805A4E4: .4byte 0xFFFFC000
_0805A4E8: .4byte 0xFFFF8000
_0805A4EC:
	ldr r2, _0805A504 @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _0805A508 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
_0805A4F6:
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805A504: .4byte gUnk_03002CB0
_0805A508: .4byte 0x00007FFF

	thumb_func_start sub_0805A50C
sub_0805A50C: @ 0x0805A50C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r2, _0805A580 @ =sub_0805A5BC
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	beq _0805A57A
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _0805A584 @ =0x081CBF1C
	bl sub_0803AFB8
	adds r2, r0, #0
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _0805A588 @ =0x08211FB0
	ldrb r3, [r3]
	adds r0, r4, #0
	bl sub_0803B924
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #3
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	str r5, [r4, #0x20]
	subs r2, #0x19
	ldrb r0, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0805A58C @ =sub_0803B9D0
	str r0, [r4, #4]
_0805A57A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805A580: .4byte sub_0805A5BC
_0805A584: .4byte 0x081CBF1C
_0805A588: .4byte 0x08211FB0
_0805A58C: .4byte sub_0803B9D0

	thumb_func_start sub_0805A590
sub_0805A590: @ 0x0805A590
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0805A5A6
	adds r0, r4, #0
	movs r1, #1
	bl sub_08021278
_0805A5A6:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0805A5B2
	adds r0, r4, #0
	bl sub_0805A30C
_0805A5B2:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805A5BC
sub_0805A5BC: @ 0x0805A5BC
	bx lr
	.align 2, 0

	thumb_func_start sub_0805A5C0
sub_0805A5C0: @ 0x0805A5C0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r7, [r5, #0x44]
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _0805A604
	adds r6, r5, #0
	adds r6, #0x5a
	ldrb r1, [r6]
	movs r4, #7
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r6]
	ldr r2, _0805A614 @ =gUnk_03002CB0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, [r5, #0x14]
	movs r1, #0xc0
	lsls r1, r1, #0xe
	adds r0, r0, r1
	str r0, [r5, #0x44]
	adds r0, r5, #0
	bl sub_0803AC40
	ldrb r0, [r6]
	ands r4, r0
	strb r4, [r6]
_0805A604:
	str r7, [r5, #0x44]
	adds r0, r5, #0
	bl sub_0803AC40
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805A614: .4byte gUnk_03002CB0

	thumb_func_start sub_0805A618
sub_0805A618: @ 0x0805A618
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0805A630 @ =0x081CBF1C
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	bge _0805A634
	movs r0, #0
	b _0805A66E
	.align 2, 0
_0805A630: .4byte 0x081CBF1C
_0805A634:
	ldr r0, _0805A65C @ =0x0820A3B4
	movs r1, #0
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _0805A660 @ =0x08211FB0
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0805A668
	ldr r0, _0805A664 @ =sub_0805A5C0
	b _0805A66A
	.align 2, 0
_0805A65C: .4byte 0x0820A3B4
_0805A660: .4byte 0x08211FB0
_0805A664: .4byte sub_0805A5C0
_0805A668:
	ldr r0, _0805A674 @ =sub_0803B9D0
_0805A66A:
	str r0, [r4, #4]
	movs r0, #1
_0805A66E:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805A674: .4byte sub_0803B9D0

	thumb_func_start sub_0805A678
sub_0805A678: @ 0x0805A678
	push {r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, sp
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	strh r0, [r1, #8]
	adds r0, r4, #0
	adds r0, #0x46
	ldrh r0, [r0]
	strh r0, [r1, #0xa]
	mov r0, sp
	ldrh r1, [r4, #0x1c]
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	mov r1, sp
	ldr r0, [r4, #0x14]
	strh r0, [r1, #0x10]
	ldr r1, _0805A6C4 @ =0x03002C78
	mov r0, sp
	movs r2, #1
	bl BgAffineSet
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	add sp, #0x14
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A6C4: .4byte 0x03002C78

	thumb_func_start sub_0805A6C8
sub_0805A6C8: @ 0x0805A6C8
	push {r4, lr}
	sub sp, #0x24
	adds r4, r0, #0
	ldr r1, _0805A740 @ =0x081186A4
	mov r0, sp
	movs r2, #0x24
	bl memcpy
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	subs r2, #0x1a
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	lsls r0, r0, #2
	add r0, sp
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r4, #0x18]
	movs r0, #0x30
	ldrsh r1, [r4, r0]
	lsls r1, r1, #2
	mov r0, sp
	adds r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0x1a]
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	lsls r0, r0, #2
	add r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	subs r0, r0, r1
	strh r0, [r4, #0x1c]
	ldr r1, _0805A744 @ =0x0811868C
	adds r0, r4, #0
	bl sub_08022088
	add sp, #0x24
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A740: .4byte 0x081186A4
_0805A744: .4byte 0x0811868C

	thumb_func_start sub_0805a748
sub_0805a748: @ 0x0805A748
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, _0805A778 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805A77C @ =0x0000A094
	adds r3, r0, r1
	mov r5, sb
	ldr r1, [r5, #0x40]
	ldr r0, [r3, #4]
	adds r0, r1, r0
	cmp r0, #0
	bge _0805A780
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0805A782
	.align 2, 0
_0805A778: .4byte gEwramData
_0805A77C: .4byte 0x0000A094
_0805A780:
	asrs r0, r0, #0x10
_0805A782:
	mov r8, r0
	mov r0, sb
	ldr r1, [r0, #0x44]
	ldr r0, [r3, #8]
	adds r0, r1, r0
	cmp r0, #0
	bge _0805A798
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r5, r0, #0
	b _0805A79A
_0805A798:
	asrs r5, r0, #0x10
_0805A79A:
	lsls r0, r2, #0x10
	asrs r6, r0, #0x10
	subs r0, r5, #4
	cmp r6, r0
	bgt _0805A828
	lsls r0, r4, #0x10
	asrs r7, r0, #0x10
	mov r1, r8
	subs r0, r1, r7
	subs r4, r5, r6
	adds r2, r0, #0
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r4, #0
	muls r1, r4, r1
	adds r4, r1, #0
	adds r0, r0, r4
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r0, r8
	subs r3, r7, r0
	subs r4, r5, r6
	cmp r3, #0
	bge _0805A7D0
	rsbs r3, r3, #0
_0805A7D0:
	mov r5, sb
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	subs r0, r1, #6
	cmp r3, r0
	bgt _0805A828
	adds r0, r1, #0
	subs r0, #8
	cmp r2, r0
	blt _0805A828
	adds r0, r1, #0
	adds r0, #8
	cmp r2, r0
	bge _0805A828
	ldr r0, _0805A820 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0805A824 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r0, [r0, #0x4c]
	cmp r0, #0
	blt _0805A828
	mov r5, r8
	subs r0, r5, r7
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	subs r0, r2, r0
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, r4, r0
	cmp r0, #0
	bge _0805A828
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _0805A82A
	.align 2, 0
_0805A820: .4byte gEwramData
_0805A824: .4byte 0x00013110
_0805A828:
	movs r0, #0
_0805A82A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805a838
sub_0805a838: @ 0x0805A838
	movs r0, #0
	bx lr

	thumb_func_start sub_0805a83c
sub_0805a83c: @ 0x0805A83C
	movs r0, #0
	bx lr

	thumb_func_start sub_0805a840
sub_0805a840: @ 0x0805A840
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, _0805A86C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805A870 @ =0x0000A094
	adds r3, r0, r1
	ldr r1, [r7, #0x40]
	ldr r0, [r3, #4]
	adds r0, r1, r0
	cmp r0, #0
	bge _0805A874
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r6, r0, #0
	b _0805A876
	.align 2, 0
_0805A86C: .4byte gEwramData
_0805A870: .4byte 0x0000A094
_0805A874:
	asrs r6, r0, #0x10
_0805A876:
	ldr r1, [r7, #0x44]
	ldr r0, [r3, #8]
	adds r0, r1, r0
	cmp r0, #0
	bge _0805A888
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r4, r0, #0
	b _0805A88A
_0805A888:
	asrs r4, r0, #0x10
_0805A88A:
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	subs r0, r4, #4
	cmp r5, r0
	bgt _0805A920
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	subs r1, r6, r0
	subs r0, r4, r5
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r2, r0, #0
	muls r2, r0, r2
	adds r0, r2, #0
	adds r0, r1, r0
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0x18
	ldrsh r1, [r7, r2]
	adds r1, #6
	subs r2, r4, r5
	cmp r0, r1
	bge _0805A920
	ldr r0, _0805A918 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805A91C @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0805A920
	mov r0, r8
	subs r1, r6, r0
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x1a
	ldrsh r4, [r7, r1]
	subs r4, r0, r4
	movs r6, #0x80
	lsls r6, r6, #7
	adds r0, r0, r6
	bl sub_080009E4
	adds r5, r0, #0
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	muls r5, r0, r5
	adds r4, r4, r6
	adds r0, r4, #0
	bl sub_080009E4
	adds r1, r0, #0
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	muls r1, r0, r1
	subs r5, r5, r1
	adds r0, r5, #0
	b _0805A922
	.align 2, 0
_0805A918: .4byte gEwramData
_0805A91C: .4byte 0x00013110
_0805A920:
	movs r0, #0
_0805A922:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0805a92c
sub_0805a92c: @ 0x0805A92C
	movs r0, #0
	bx lr

	thumb_func_start sub_0805A930
sub_0805A930: @ 0x0805A930
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r4, _0805A984 @ =gEwramData
	bl sub_0805AE18
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805A97C
	adds r0, r6, #0
	adds r0, #0x65
	movs r1, #0
	mov sb, r1
	movs r3, #1
	mov r8, r3
	mov r1, r8
	strb r1, [r0]
	adds r5, r6, #0
	adds r5, #0x58
	ldrb r1, [r5]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #9
	strb r0, [r1]
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0805A988
_0805A97C:
	adds r0, r6, #0
	bl sub_08000E14
	b _0805AA82
	.align 2, 0
_0805A984: .4byte gEwramData
_0805A988:
	movs r0, #0x1f
	ands r2, r0
	ldrb r1, [r5]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	movs r7, #0x80
	lsls r7, r7, #9
	ldrb r0, [r5]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	lsrs r1, r0, #7
	str r1, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	adds r1, r7, #0
	adds r2, r7, #0
	bl sub_0803E058
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	mov r3, sb
	strb r3, [r6, #0xa]
	ldr r2, [r4]
	ldr r1, _0805AA1C @ =0x00013110
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r1, [r6, #0x40]
	ldr r0, [r0, #0x40]
	subs r4, r1, r0
	adds r1, r4, #0
	cmp r4, #0
	bge _0805A9EC
	rsbs r1, r4, #0
_0805A9EC:
	ldr r0, _0805AA20 @ =0x002FFFFF
	cmp r1, r0
	bgt _0805AA24
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r6, #0x18]
	mov r3, r8
	strb r3, [r6, #0xb]
	ldrb r1, [r5]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	lsrs r2, r1, #7
	str r2, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r7, #0
	adds r2, r7, #0
	bl sub_0803E058
	mov r0, sb
	str r0, [r6, #0x1c]
	b _0805AA7C
	.align 2, 0
_0805AA1C: .4byte 0x00013110
_0805AA20: .4byte 0x002FFFFF
_0805AA24:
	mov r1, r8
	str r1, [r6, #0x1c]
	adds r0, r6, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, _0805AA90 @ =0x0000A094
	adds r2, r2, r0
	movs r3, #6
	ldrsh r0, [r2, r3]
	adds r4, r1, r0
	adds r0, r6, #0
	adds r0, #0x46
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r3, #0xa
	ldrsh r0, [r2, r3]
	adds r5, r1, r0
	subs r4, #0x10
	adds r1, r5, #0
	adds r1, #8
	adds r0, r4, #0
	bl sub_08002200
	adds r1, r5, #0
	subs r1, #8
	adds r0, r4, #0
	bl sub_08002200
	adds r1, r5, #0
	subs r1, #0x18
	adds r0, r4, #0
	bl sub_08002200
	adds r1, r5, #0
	subs r1, #0x28
	adds r0, r4, #0
	bl sub_08002200
	adds r1, r5, #0
	subs r1, #0x38
	adds r0, r4, #0
	bl sub_08002200
_0805AA7C:
	adds r0, r6, #0
	bl sub_0805AC50
_0805AA82:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805AA90: .4byte 0x0000A094

	thumb_func_start sub_0805AA94
sub_0805AA94: @ 0x0805AA94
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _0805AABC @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0805AAC0 @ =0x00013110
	adds r0, r2, r1
	ldr r0, [r0]
	mov r8, r0
	ldr r1, [r6, #0x40]
	ldr r0, [r0, #0x40]
	subs r7, r1, r0
	ldrb r1, [r6, #0xb]
	cmp r1, #0
	beq _0805AAC4
	cmp r1, #1
	beq _0805AB10
	b _0805AC12
	.align 2, 0
_0805AABC: .4byte gEwramData
_0805AAC0: .4byte 0x00013110
_0805AAC4:
	ldr r0, [r6, #0x18]
	cmp r0, #0
	ble _0805AAD6
	ldr r2, _0805AB04 @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r6, #0x18]
	cmp r0, #0
	bge _0805AAD6
	str r1, [r6, #0x18]
_0805AAD6:
	adds r1, r7, #0
	cmp r7, #0
	bge _0805AADE
	rsbs r1, r7, #0
_0805AADE:
	ldr r0, _0805AB08 @ =0x002FFFFF
	cmp r1, r0
	bgt _0805AAE6
	b _0805AC12
_0805AAE6:
	mov r0, r8
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0805AAF6
	b _0805AC12
_0805AAF6:
	movs r0, #1
	strb r0, [r6, #0xb]
	ldr r0, _0805AB0C @ =0x00000113
	bl sub_080D7910
	b _0805AC12
	.align 2, 0
_0805AB04: .4byte 0xFFFFFF00
_0805AB08: .4byte 0x002FFFFF
_0805AB0C: .4byte 0x00000113
_0805AB10:
	ldr r1, [r6, #0x18]
	ldr r0, _0805AB2C @ =0x00002FFF
	cmp r1, r0
	bgt _0805AB30
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r1, r3
	str r0, [r6, #0x18]
	movs r1, #0xc0
	lsls r1, r1, #6
	cmp r0, r1
	ble _0805AB8E
	str r1, [r6, #0x18]
	b _0805AB8E
	.align 2, 0
_0805AB2C: .4byte 0x00002FFF
_0805AB30:
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	beq _0805AB8E
	movs r0, #0
	str r0, [r6, #0x1c]
	adds r0, r6, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, _0805AC40 @ =0x0000A094
	adds r2, r2, r0
	movs r3, #6
	ldrsh r0, [r2, r3]
	adds r4, r1, r0
	adds r0, r6, #0
	adds r0, #0x46
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r3, #0xa
	ldrsh r0, [r2, r3]
	adds r5, r1, r0
	subs r4, #0x10
	adds r1, r5, #0
	adds r1, #8
	adds r0, r4, #0
	bl sub_08002248
	adds r1, r5, #0
	subs r1, #8
	adds r0, r4, #0
	bl sub_08002248
	adds r1, r5, #0
	subs r1, #0x18
	adds r0, r4, #0
	bl sub_08002248
	adds r1, r5, #0
	subs r1, #0x28
	adds r0, r4, #0
	bl sub_08002248
	adds r1, r5, #0
	subs r1, #0x38
	adds r0, r4, #0
	bl sub_08002248
_0805AB8E:
	adds r1, r7, #0
	cmp r1, #0
	bge _0805AB96
	rsbs r1, r1, #0
_0805AB96:
	ldr r0, _0805AC44 @ =0x002FFFFF
	cmp r1, r0
	ble _0805AC12
	mov r0, r8
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0805AC12
	strb r0, [r6, #0xb]
	movs r0, #1
	str r0, [r6, #0x1c]
	adds r0, r6, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r0, _0805AC48 @ =gEwramData
	ldr r1, [r0]
	ldr r3, _0805AC40 @ =0x0000A094
	adds r1, r1, r3
	movs r3, #6
	ldrsh r0, [r1, r3]
	adds r4, r2, r0
	adds r0, r6, #0
	adds r0, #0x46
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r3, #0xa
	ldrsh r0, [r1, r3]
	adds r5, r2, r0
	subs r4, #0x10
	adds r1, r5, #0
	adds r1, #8
	adds r0, r4, #0
	bl sub_08002200
	adds r1, r5, #0
	subs r1, #8
	adds r0, r4, #0
	bl sub_08002200
	adds r1, r5, #0
	subs r1, #0x18
	adds r0, r4, #0
	bl sub_08002200
	adds r1, r5, #0
	subs r1, #0x28
	adds r0, r4, #0
	bl sub_08002200
	adds r1, r5, #0
	subs r1, #0x38
	adds r0, r4, #0
	bl sub_08002200
	ldr r0, _0805AC4C @ =0x00000113
	bl sub_080D7910
_0805AC12:
	ldr r0, [r6, #0x18]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r6, #0
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
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805AC40: .4byte 0x0000A094
_0805AC44: .4byte 0x002FFFFF
_0805AC48: .4byte gEwramData
_0805AC4C: .4byte 0x00000113

	thumb_func_start sub_0805AC50
sub_0805AC50: @ 0x0805AC50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r2, _0805ACDC @ =sub_0805AD9C
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r4, r0, #0
	ldr r0, _0805ACE0 @ =gEwramData
	mov sl, r0
	cmp r4, #0
	bne _0805AC74
	b _0805AD7A
_0805AC74:
	ldr r0, [r7, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r4, #0x44]
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _0805ACE4 @ =0x08259130
	bl sub_0803AFB8
	adds r2, r0, #0
	adds r0, r7, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _0805ACE8 @ =0x082591BC
	ldrb r3, [r3]
	adds r0, r4, #0
	bl sub_0803B924
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #2
	mov sb, r0
	movs r0, #2
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	mov r1, sb
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0805ACEC
	adds r0, r4, #0
	bl sub_08000E14
	b _0805AD7A
	.align 2, 0
_0805ACDC: .4byte sub_0805AD9C
_0805ACE0: .4byte gEwramData
_0805ACE4: .4byte 0x08259130
_0805ACE8: .4byte 0x082591BC
_0805ACEC:
	adds r6, r4, #0
	adds r6, #0x58
	movs r0, #0x1f
	ands r2, r0
	ldrb r1, [r6]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r6]
	adds r5, r4, #0
	adds r5, #0x59
	ldrb r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r5]
	movs r0, #0x80
	lsls r0, r0, #9
	mov r8, r0
	ldrb r0, [r6]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	lsrs r0, r0, #7
	str r0, [sp]
	ldrb r0, [r6]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	mov r1, r8
	mov r2, r8
	bl sub_0803E058
	str r7, [r4, #0x14]
	ldrb r0, [r5]
	mov r1, sb
	orrs r0, r1
	strb r0, [r5]
	ldr r0, _0805AD8C @ =sub_0803B9D0
	str r0, [r4, #4]
	mov r1, sl
	ldr r0, [r1]
	ldr r1, _0805AD90 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	subs r1, r1, r0
	cmp r1, #0
	bge _0805AD52
	rsbs r1, r1, #0
_0805AD52:
	ldr r0, _0805AD94 @ =0x002FFFFF
	cmp r1, r0
	bgt _0805AD7A
	ldr r0, _0805AD98 @ =0xFFFFE000
	str r0, [r4, #0x18]
	movs r1, #1
	strb r1, [r4, #0xb]
	ldrb r1, [r6]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	lsrs r1, r1, #7
	str r1, [sp]
	ldrb r1, [r6]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	mov r1, r8
	mov r2, r8
	bl sub_0803E058
_0805AD7A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805AD8C: .4byte sub_0803B9D0
_0805AD90: .4byte 0x00013110
_0805AD94: .4byte 0x002FFFFF
_0805AD98: .4byte 0xFFFFE000

	thumb_func_start sub_0805AD9C
sub_0805AD9C: @ 0x0805AD9C
	push {r4, lr}
	sub sp, #8
	adds r1, r0, #0
	ldr r0, [r1, #0x14]
	ldrb r0, [r0, #0xb]
	strb r0, [r1, #0xb]
	ldrb r2, [r1, #0xb]
	cmp r2, #0
	beq _0805ADB4
	cmp r2, #1
	beq _0805ADC4
	b _0805ADD6
_0805ADB4:
	ldr r0, [r1, #0x18]
	cmp r0, #0
	bge _0805ADD6
	adds r0, #0xaa
	str r0, [r1, #0x18]
	cmp r0, #0
	ble _0805ADD6
	b _0805ADD4
_0805ADC4:
	ldr r0, [r1, #0x18]
	ldr r2, _0805ADFC @ =0xFFFFE000
	cmp r0, r2
	ble _0805ADD6
	subs r0, #0xaa
	str r0, [r1, #0x18]
	cmp r0, r2
	bge _0805ADD6
_0805ADD4:
	str r2, [r1, #0x18]
_0805ADD6:
	ldr r0, [r1, #0x18]
	movs r2, #0x80
	lsls r2, r2, #9
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
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805ADFC: .4byte 0xFFFFE000

	thumb_func_start sub_0805AE00
sub_0805AE00: @ 0x0805AE00
	push {lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	bne _0805AE12
	adds r0, r1, #0
	bl sub_0805AA94
_0805AE12:
	add sp, #0x10
	pop {r0}
	bx r0

	thumb_func_start sub_0805AE18
sub_0805AE18: @ 0x0805AE18
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0805AE4C @ =0x08259130
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _0805AE5C
	ldr r0, _0805AE50 @ =0x08259138
	movs r1, #0
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _0805AE54 @ =0x082591BC
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _0805AE58 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _0805AE5E
	.align 2, 0
_0805AE4C: .4byte 0x08259130
_0805AE50: .4byte 0x08259138
_0805AE54: .4byte 0x082591BC
_0805AE58: .4byte sub_0803B9D0
_0805AE5C:
	movs r0, #0
_0805AE5E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0805AE64
sub_0805AE64: @ 0x0805AE64
	push {lr}
	ldr r2, _0805AEAC @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _0805AEB0 @ =0x000013FF
	ands r0, r1
	movs r3, #0
	strh r0, [r2]
	ldr r1, _0805AEB4 @ =gDisplayRegisters
	ldr r0, _0805AEB8 @ =0x00001C04
	strh r0, [r1]
	adds r0, #0xfd
	strh r0, [r1, #2]
	strh r3, [r1, #8]
	strh r3, [r1, #0xa]
	ldr r0, _0805AEBC @ =0x0815E3EC
	bl sub_0803C8B0
	ldr r0, _0805AEC0 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _0805AECC
	cmp r0, #3
	beq _0805AEE4
	ldr r0, _0805AEC4 @ =0x0815E084
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0
	bl sub_0803FD9C
	ldr r0, _0805AEC8 @ =0x0827B200
	b _0805AEFC
	.align 2, 0
_0805AEAC: .4byte gUnk_03002CB0
_0805AEB0: .4byte 0x000013FF
_0805AEB4: .4byte gDisplayRegisters
_0805AEB8: .4byte 0x00001C04
_0805AEBC: .4byte 0x0815E3EC
_0805AEC0: .4byte gEwramData
_0805AEC4: .4byte 0x0815E084
_0805AEC8: .4byte 0x0827B200
_0805AECC:
	ldr r0, _0805AEDC @ =0x0815E09C
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0
	bl sub_0803FD9C
	ldr r0, _0805AEE0 @ =0x08277984
	b _0805AEFC
	.align 2, 0
_0805AEDC: .4byte 0x0815E09C
_0805AEE0: .4byte 0x08277984
_0805AEE4:
	ldr r0, _0805AF4C @ =0x0815E08C
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0
	bl sub_0803FD9C
	ldr r0, _0805AF50 @ =0x0815E094
	ldr r1, _0805AF54 @ =0x06002000
	movs r2, #0
	bl sub_0803FD9C
	ldr r0, _0805AF58 @ =0x0826C848
_0805AEFC:
	ldr r1, _0805AF5C @ =0x0600A000
	movs r2, #0
	bl sub_0803FD9C
	ldr r0, _0805AF60 @ =0x06004000
	bl sub_080412DC
	ldr r0, _0805AF64 @ =0x081183F4
	movs r1, #0
	movs r2, #1
	movs r3, #0xf
	bl sub_0803C918
	movs r0, #8
	bl sub_080412F0
	movs r0, #0
	bl sub_08041304
	movs r0, #0
	movs r1, #0
	movs r2, #0x29
	movs r3, #4
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
	pop {r0}
	bx r0
	.align 2, 0
_0805AF4C: .4byte 0x0815E08C
_0805AF50: .4byte 0x0815E094
_0805AF54: .4byte 0x06002000
_0805AF58: .4byte 0x0826C848
_0805AF5C: .4byte 0x0600A000
_0805AF60: .4byte 0x06004000
_0805AF64: .4byte 0x081183F4

	thumb_func_start sub_0805AF68
sub_0805AF68: @ 0x0805AF68
	push {r4, r5, r6, lr}
	ldr r4, _0805AFB4 @ =gEwramData
	ldr r5, [r4]
	adds r5, #0x60
	bl sub_0800D154
	bl sub_0803C294
	movs r0, #1
	bl sub_0803FD1C
	ldr r2, [r4]
	ldr r3, _0805AFB8 @ =0x0000A074
	adds r2, r2, r3
	ldrb r0, [r2]
	movs r1, #0x30
	orrs r0, r1
	movs r1, #0xc
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0805AFBC @ =gDisplayRegisters
	adds r0, #0x48
	movs r6, #0
	movs r1, #0xff
	strh r1, [r0]
	ldr r1, [r4]
	adds r1, r1, r3
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	movs r0, #9
	strb r0, [r5, #4]
	strb r6, [r5, #5]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805AFB4: .4byte gEwramData
_0805AFB8: .4byte 0x0000A074
_0805AFBC: .4byte gDisplayRegisters

	thumb_func_start sub_0805AFC0
sub_0805AFC0: @ 0x0805AFC0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r1, _0805AFE8 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0805AFEC @ =0x00000E2C
	adds r5, r0, r2
	ldrh r2, [r0, #0x18]
	ldrh r3, [r0, #0x16]
	movs r7, #0
	ldrb r0, [r6, #5]
	adds r4, r1, #0
	cmp r0, #0xd
	bls _0805AFDE
	b _0805B40C
_0805AFDE:
	lsls r0, r0, #2
	ldr r1, _0805AFF0 @ =_0805AFF4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805AFE8: .4byte gEwramData
_0805AFEC: .4byte 0x00000E2C
_0805AFF0: .4byte _0805AFF4
_0805AFF4: @ jump table
	.4byte _0805B02C @ case 0
	.4byte _0805B110 @ case 1
	.4byte _0805B12C @ case 2
	.4byte _0805B194 @ case 3
	.4byte _0805B240 @ case 4
	.4byte _0805B40C @ case 5
	.4byte _0805B40C @ case 6
	.4byte _0805B40C @ case 7
	.4byte _0805B40C @ case 8
	.4byte _0805B40C @ case 9
	.4byte _0805B2A0 @ case 10
	.4byte _0805B318 @ case 11
	.4byte _0805B344 @ case 12
	.4byte _0805B356 @ case 13
_0805B02C:
	bl sub_08000B64
	ldr r1, _0805B0CC @ =gDisplayRegisters
	adds r1, #0x4c
	ldrh r0, [r1]
	adds r0, #1
	movs r4, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	beq _0805B046
	b _0805B40C
_0805B046:
	bl sub_080125B4
	bl sub_0803B04C
	bl sub_0803E75C
	bl sub_0805AE64
	adds r0, r5, #0
	bl sub_08047F34
	bl sub_08048AA4
	strb r4, [r5, #0xa]
	strb r4, [r5, #0xb]
	movs r0, #0
	str r0, [sp]
	ldr r1, _0805B0D0 @ =0x040000D4
	mov r3, sp
	str r3, [r1]
	ldr r0, _0805B0D4 @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _0805B0D8 @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #2
	movs r2, #0x25
	movs r3, #3
	bl sub_08040748
	bl sub_08040FE0
	movs r4, #0
_0805B08A:
	adds r1, r4, #0
	adds r1, #0x10
	lsls r2, r4, #0x15
	ldr r0, _0805B0DC @ =0xF0600000
	adds r2, r2, r0
	lsrs r2, r2, #0x10
	movs r0, #2
	movs r3, #0x1d
	bl sub_08046DD4
	adds r4, #1
	cmp r4, #3
	ble _0805B08A
	ldrb r0, [r5, #0xb]
	movs r1, #0xed
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #2
	bl sub_08047390
	ldr r0, _0805B0E0 @ =gEwramData
	ldr r0, [r0]
	movs r2, #0x9a
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #2
	beq _0805B0E8
	cmp r0, #3
	beq _0805B0F0
	ldr r1, _0805B0E4 @ =0x0815F120
	b _0805B0F2
	.align 2, 0
_0805B0CC: .4byte gDisplayRegisters
_0805B0D0: .4byte 0x040000D4
_0805B0D4: .4byte 0x0600E000
_0805B0D8: .4byte 0x85000200
_0805B0DC: .4byte 0xF0600000
_0805B0E0: .4byte gEwramData
_0805B0E4: .4byte 0x0815F120
_0805B0E8:
	ldr r1, _0805B0EC @ =0x0815F480
	b _0805B0F2
	.align 2, 0
_0805B0EC: .4byte 0x0815F480
_0805B0F0:
	ldr r1, _0805B10C @ =0x0815F2D0
_0805B0F2:
	movs r0, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	ldrb r0, [r6, #5]
	adds r0, #1
	strb r0, [r6, #5]
	movs r0, #0x30
	bl sub_080D7910
	b _0805B40C
	.align 2, 0
_0805B10C: .4byte 0x0815F2D0
_0805B110:
	ldr r1, _0805B128 @ =gDisplayRegisters
	adds r1, #0x4c
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0805B122
	b _0805B40C
_0805B122:
	ldrb r0, [r6, #5]
	adds r0, #1
	b _0805B40A
	.align 2, 0
_0805B128: .4byte gDisplayRegisters
_0805B12C:
	movs r0, #3
	ands r0, r3
	cmp r0, #0
	beq _0805B15A
	movs r1, #2
	ands r1, r3
	cmp r1, #0
	bne _0805B142
	ldrb r0, [r5, #0xb]
	cmp r0, #2
	bne _0805B14E
_0805B142:
	movs r0, #0xf0
	bl sub_080D7910
	ldrb r0, [r6, #5]
	adds r0, #1
	b _0805B40A
_0805B14E:
	strb r1, [r5, #0x15]
	movs r0, #0xf4
	bl sub_080D7910
	movs r0, #0xa
	b _0805B40A
_0805B15A:
	movs r0, #0xc0
	ands r0, r2
	cmp r0, #0
	bne _0805B164
	b _0805B40C
_0805B164:
	ldrb r1, [r5, #0xb]
	movs r0, #0x40
	ands r2, r0
	adds r0, r1, #1
	cmp r2, #0
	beq _0805B172
	adds r0, r1, #2
_0805B172:
	movs r1, #3
	bl Mod
	strb r0, [r5, #0xb]
	bl sub_08040FE0
	ldrb r0, [r5, #0xb]
	movs r3, #0xed
	lsls r3, r3, #2
	adds r0, r0, r3
	movs r1, #2
	bl sub_08047390
	movs r0, #0xf1
	bl sub_080D7910
	b _0805B40C
_0805B194:
	ldr r1, _0805B1CC @ =gDisplayRegisters
	adds r1, #0x4c
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	beq _0805B1A8
	b _0805B40C
_0805B1A8:
	adds r0, r5, #0
	bl sub_08000E14
	bl sub_08048BA0
	ldr r0, _0805B1D0 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _0805B1D8
	cmp r0, #3
	beq _0805B1E0
	ldr r0, _0805B1D4 @ =0x082052D8
	b _0805B1E2
	.align 2, 0
_0805B1CC: .4byte gDisplayRegisters
_0805B1D0: .4byte gEwramData
_0805B1D4: .4byte 0x082052D8
_0805B1D8:
	ldr r0, _0805B1DC @ =0x0827798C
	b _0805B1E2
	.align 2, 0
_0805B1DC: .4byte 0x0827798C
_0805B1E0:
	ldr r0, _0805B230 @ =0x0826C840
_0805B1E2:
	bl sub_0803AFB8
	bl sub_0803B980
	bl sub_0801261C
	ldr r4, [r6, #0x28]
	adds r0, r4, #0
	bl sub_080108DC
	bl sub_0803B184
	bl sub_0803E7C0
	adds r0, r4, #0
	bl sub_080108FC
	bl sub_0803C3E0
	bl sub_0800DA50
	ldr r0, _0805B234 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0805B238 @ =0x0000A0E8
	adds r1, r0, r2
	ldr r1, [r1]
	ldr r3, _0805B23C @ =0x0000A0EC
	adds r2, r0, r3
	ldrh r2, [r2]
	adds r3, #2
	adds r0, r0, r3
	ldrh r3, [r0]
	movs r0, #1
	bl sub_0803F8A8
	ldrb r0, [r6, #5]
	adds r0, #1
	b _0805B40A
	.align 2, 0
_0805B230: .4byte 0x0826C840
_0805B234: .4byte gEwramData
_0805B238: .4byte 0x0000A0E8
_0805B23C: .4byte 0x0000A0EC
_0805B240:
	bl sub_08000B64
	bl sub_0800D1F0
	ldr r2, _0805B294 @ =gDisplayRegisters
	adds r1, r2, #0
	adds r1, #0x4c
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0805B25C
	b _0805B40C
_0805B25C:
	adds r2, #0x48
	ldrh r0, [r2]
	movs r3, #0xfc
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r4, _0805B298 @ =gEwramData
	ldr r1, [r4]
	ldr r3, _0805B29C @ =0x0000A074
	adds r1, r1, r3
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
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
	movs r7, #1
	b _0805B40C
	.align 2, 0
_0805B294: .4byte gDisplayRegisters
_0805B298: .4byte gEwramData
_0805B29C: .4byte 0x0000A074
_0805B2A0:
	ldr r1, _0805B2D4 @ =gDisplayRegisters
	adds r1, #0x4c
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	beq _0805B2B4
	b _0805B40C
_0805B2B4:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xa]
	ldr r0, [r4]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _0805B2DC
	cmp r0, #3
	beq _0805B2E8
	ldr r0, _0805B2D8 @ =0x08526640
	ldrb r1, [r5, #0xb]
	b _0805B2EE
	.align 2, 0
_0805B2D4: .4byte gDisplayRegisters
_0805B2D8: .4byte 0x08526640
_0805B2DC:
	ldr r0, _0805B2E4 @ =0x08526640
	ldrb r1, [r5, #0xb]
	adds r1, #2
	b _0805B2EE
	.align 2, 0
_0805B2E4: .4byte 0x08526640
_0805B2E8:
	ldr r0, _0805B310 @ =0x08526640
	ldrb r1, [r5, #0xb]
	adds r1, #4
_0805B2EE:
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	movs r0, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	ldr r2, _0805B314 @ =gDisplayRegisters
	movs r1, #0
	movs r0, #0
	strh r0, [r2, #8]
	strb r1, [r5, #0xb]
	strb r1, [r5, #0xc]
	ldrb r0, [r6, #5]
	adds r0, #1
	b _0805B40A
	.align 2, 0
_0805B310: .4byte 0x08526640
_0805B314: .4byte gDisplayRegisters
_0805B318:
	ldr r0, _0805B340 @ =gDisplayRegisters
	adds r4, r0, #0
	adds r4, #0x4c
	ldrh r0, [r4]
	cmp r0, #0x10
	bne _0805B32C
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08067310
_0805B32C:
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0805B40C
	ldrb r0, [r6, #5]
	adds r0, #1
	b _0805B40A
	.align 2, 0
_0805B340: .4byte gDisplayRegisters
_0805B344:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08067488
	cmp r0, #0
	beq _0805B40C
	ldrb r0, [r6, #5]
	adds r0, #1
	b _0805B40A
_0805B356:
	ldr r1, _0805B3D8 @ =gDisplayRegisters
	adds r1, #0x4c
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bne _0805B40C
	ldrb r0, [r5, #0xa]
	subs r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0
	strb r0, [r5, #0xa]
	movs r0, #0
	str r0, [sp]
	ldr r1, _0805B3DC @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _0805B3E0 @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _0805B3E4 @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #2
	movs r2, #0x25
	movs r3, #3
	bl sub_08040748
	bl sub_08040FE0
	movs r4, #0
_0805B398:
	adds r1, r4, #0
	adds r1, #0x10
	lsls r2, r4, #0x15
	ldr r3, _0805B3E8 @ =0xF0600000
	adds r2, r2, r3
	lsrs r2, r2, #0x10
	movs r0, #2
	movs r3, #0x1d
	bl sub_08046DD4
	adds r4, #1
	cmp r4, #3
	ble _0805B398
	ldrb r0, [r5, #0xb]
	movs r1, #0xed
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #2
	bl sub_08047390
	ldr r0, _0805B3EC @ =gEwramData
	ldr r0, [r0]
	movs r2, #0x9a
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #2
	beq _0805B3F4
	cmp r0, #3
	beq _0805B3FC
	ldr r1, _0805B3F0 @ =0x0815F120
	b _0805B3FE
	.align 2, 0
_0805B3D8: .4byte gDisplayRegisters
_0805B3DC: .4byte 0x040000D4
_0805B3E0: .4byte 0x0600E000
_0805B3E4: .4byte 0x85000200
_0805B3E8: .4byte 0xF0600000
_0805B3EC: .4byte gEwramData
_0805B3F0: .4byte 0x0815F120
_0805B3F4:
	ldr r1, _0805B3F8 @ =0x0815F480
	b _0805B3FE
	.align 2, 0
_0805B3F8: .4byte 0x0815F480
_0805B3FC:
	ldr r1, _0805B428 @ =0x0815F2D0
_0805B3FE:
	movs r0, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	movs r0, #1
_0805B40A:
	strb r0, [r6, #5]
_0805B40C:
	ldrb r0, [r6, #5]
	cmp r0, #0
	beq _0805B418
	adds r0, r5, #0
	bl sub_08048A64
_0805B418:
	bl sub_0800CADC
	adds r0, r7, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805B428: .4byte 0x0815F2D0

	thumb_func_start sub_0805B42C
sub_0805B42C: @ 0x0805B42C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _0805B4A4 @ =gEwramData
	ldr r2, [r0]
	ldr r3, _0805B4A8 @ =0x0001327A
	adds r1, r2, r3
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r3, r0, #0
	cmp r1, #0
	bgt _0805B452
	ldr r1, _0805B4AC @ =0x0000042C
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xe
	ands r0, r1
	cmp r0, #0
	beq _0805B49C
_0805B452:
	ldr r2, [r3]
	adds r0, r2, #0
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0805B49C
	ldr r3, _0805B4B0 @ =0x00013266
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805B47C
	ldr r1, _0805B4AC @ =0x0000042C
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0805B49C
_0805B47C:
	ldr r1, _0805B4B4 @ =0x08526658
	movs r2, #0x30
	ldrsh r0, [r6, r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0805B4B8
_0805B49C:
	adds r0, r6, #0
	bl sub_08000E14
	b _0805B4FC
	.align 2, 0
_0805B4A4: .4byte gEwramData
_0805B4A8: .4byte 0x0001327A
_0805B4AC: .4byte 0x0000042C
_0805B4B0: .4byte 0x00013266
_0805B4B4: .4byte 0x08526658
_0805B4B8:
	ldr r4, _0805B504 @ =gEwramData
	ldr r2, [r4]
	ldr r5, _0805B508 @ =0x0000042C
	adds r2, r2, r5
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r2]
	bl sub_0800EB04
	bl sub_080235C8
	bl sub_0802DFF0
	movs r0, #0
	bl sub_0800C5A8
	ldr r0, [r4]
	ldr r3, _0805B50C @ =0x0000041C
	adds r1, r0, r3
	str r6, [r1]
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0805B4F8
	movs r0, #1
	movs r1, #0
	bl sub_080009A0
_0805B4F8:
	bl sub_0806666C
_0805B4FC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805B504: .4byte gEwramData
_0805B508: .4byte 0x0000042C
_0805B50C: .4byte 0x0000041C

	thumb_func_start sub_0805B510
sub_0805B510: @ 0x0805B510
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, _0805B550 @ =gEwramData
	ldr r3, [r5]
	ldr r6, _0805B554 @ =0x0000042C
	adds r0, r3, r6
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0805B532
	ldr r1, _0805B558 @ =0x00007864
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r2, #2
	orrs r1, r2
	strb r1, [r0]
_0805B532:
	movs r0, #0xa
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _0805B560
	ldr r2, _0805B55C @ =0x0000041B
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805B596
	movs r0, #3
	rsbs r0, r0, #0
	bl sub_08067804
	b _0805B596
	.align 2, 0
_0805B550: .4byte gEwramData
_0805B554: .4byte 0x0000042C
_0805B558: .4byte 0x00007864
_0805B55C: .4byte 0x0000041B
_0805B560:
	ldr r2, [r5]
	ldrh r1, [r2, #0x16]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0805B596
	ldr r0, [r3, #0x60]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0805B596
	adds r0, r2, r6
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	bne _0805B596
	ldr r0, _0805B5CC @ =0x00000414
	adds r2, r3, r0
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
_0805B596:
	ldr r1, _0805B5D0 @ =0x085266D8
	movs r2, #0x30
	ldrsh r0, [r4, r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r2, r0, #0
	ldr r0, _0805B5D4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805B5D8 @ =0x0000042C
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0805B5DC
	movs r0, #1
	adds r1, r2, #0
	bl sub_080009A0
	movs r0, #0
	bl sub_0800C5A8
	b _0805B5E2
	.align 2, 0
_0805B5CC: .4byte 0x00000414
_0805B5D0: .4byte 0x085266D8
_0805B5D4: .4byte gEwramData
_0805B5D8: .4byte 0x0000042C
_0805B5DC:
	movs r0, #1
	bl sub_0800C5A8
_0805B5E2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0805B5E8
sub_0805B5E8: @ 0x0805B5E8
	push {r4, r5, lr}
	sub sp, #0x94
	adds r5, r0, #0
	ldr r0, _0805B600 @ =sub_0805B748
	bl sub_0806DFF8
	adds r4, r0, #0
	cmp r4, #0
	bne _0805B604
	movs r0, #0
	b _0805B662
	.align 2, 0
_0805B600: .4byte sub_0805B748
_0805B604:
	ldr r1, _0805B648 @ =0x081186DC
	add r0, sp, #4
	movs r2, #0x90
	bl memcpy
	lsls r3, r5, #1
	adds r3, r3, r5
	lsls r3, r3, #2
	add r0, sp, #0xc
	adds r0, r0, r3
	ldr r1, [r0]
	mov r0, sp
	adds r0, r0, r3
	adds r0, #4
	ldr r2, [r0]
	add r0, sp, #8
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805B64C
	adds r0, r4, #0
	bl sub_08000E14
	adds r0, r4, #0
	bl sub_08000E14
	movs r0, #0
	b _0805B662
	.align 2, 0
_0805B648: .4byte 0x081186DC
_0805B64C:
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
	adds r0, r4, #0
_0805B662:
	add sp, #0x94
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805B66C
sub_0805B66C: @ 0x0805B66C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r6, _0805B6D4 @ =gEwramData
	ldr r2, [r6]
	ldr r0, _0805B6D8 @ =0x0000042C
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _0805B6DC @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r2]
	movs r0, #1
	bl sub_0800C5A8
	adds r2, r5, #0
	adds r2, #0x59
	movs r0, #1
	ands r4, r0
	lsls r4, r4, #3
	ldrb r1, [r2]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
	movs r0, #0xa
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bge _0805B6B0
	bl sub_08067898
_0805B6B0:
	ldr r2, [r6]
	ldr r0, _0805B6E0 @ =0x0000A074
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	bl sub_0800C778
	bl sub_0806666C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805B6D4: .4byte gEwramData
_0805B6D8: .4byte 0x0000042C
_0805B6DC: .4byte 0xFFFFFDFF
_0805B6E0: .4byte 0x0000A074

	thumb_func_start sub_0805B6E4
sub_0805B6E4: @ 0x0805B6E4
	push {lr}
	ldr r3, _0805B710 @ =gEwramData
	ldr r1, [r3]
	adds r1, #0x60
	movs r2, #0
	strb r2, [r1, #5]
	ldr r2, [r3]
	ldr r1, _0805B714 @ =0x0000042C
	adds r2, r2, r1
	ldr r1, [r2]
	movs r3, #1
	orrs r1, r3
	str r1, [r2]
	bl sub_08067934
	movs r0, #0
	bl sub_0800C5A8
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0805B710: .4byte gEwramData
_0805B714: .4byte 0x0000042C

	thumb_func_start sub_0805B718
sub_0805B718: @ 0x0805B718
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0805B740 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0805B744 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #2
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1]
	movs r0, #1
	bl sub_0800C5A8
	movs r1, #1
	strb r1, [r4, #4]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805B740: .4byte gEwramData
_0805B744: .4byte 0x0000042C

	thumb_func_start sub_0805B748
sub_0805B748: @ 0x0805B748
	push {lr}
	bl sub_0803F17C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805B754
sub_0805B754: @ 0x0805B754
	push {r4, r5, lr}
	sub sp, #0x94
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, _0805B7A8 @ =0x081186DC
	add r0, sp, #4
	movs r2, #0x90
	bl memcpy
	lsls r3, r4, #1
	adds r3, r3, r4
	lsls r3, r3, #2
	add r0, sp, #0xc
	adds r0, r0, r3
	ldr r1, [r0]
	mov r0, sp
	adds r0, r0, r3
	adds r0, #4
	ldr r2, [r0]
	add r0, sp, #8
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805B7AC
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
	movs r0, #1
	b _0805B7B4
	.align 2, 0
_0805B7A8: .4byte 0x081186DC
_0805B7AC:
	adds r0, r5, #0
	bl sub_08000E14
	movs r0, #0
_0805B7B4:
	add sp, #0x94
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0805B7BC
sub_0805B7BC: @ 0x0805B7BC
	push {r4, lr}
	movs r3, #0
	ldr r1, _0805B7F0 @ =gEwramData
	ldr r1, [r1]
	ldr r2, _0805B7F4 @ =0x00013110
	adds r1, r1, r2
	ldr r2, [r1]
	adds r1, r2, #0
	adds r1, #0x42
	adds r0, #0x42
	movs r4, #0
	ldrsh r1, [r1, r4]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	bge _0805B7F8
	adds r0, r2, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0805B80A
	movs r3, #1
	b _0805B80A
	.align 2, 0
_0805B7F0: .4byte gEwramData
_0805B7F4: .4byte 0x00013110
_0805B7F8:
	adds r0, r2, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r0, r0, #0
	lsrs r3, r0, #0x1f
_0805B80A:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805B814
sub_0805B814: @ 0x0805B814
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r3, r1, #0x10
	lsrs r5, r3, #0x10
	lsls r2, r2, #0x10
	ldr r0, _0805B850 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805B854 @ =0x00013110
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, #0x42
	lsrs r0, r2, #0x11
	subs r0, r4, r0
	ldrh r1, [r1]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	cmp r0, r2
	bhs _0805B85C
	lsrs r0, r3, #0x11
	subs r0, r4, r0
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r5
	bhs _0805B858
	movs r0, #1
	rsbs r0, r0, #0
	b _0805B85E
	.align 2, 0
_0805B850: .4byte gEwramData
_0805B854: .4byte 0x00013110
_0805B858:
	movs r0, #0
	b _0805B85E
_0805B85C:
	movs r0, #1
_0805B85E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0805B864
sub_0805B864: @ 0x0805B864
	push {lr}
	movs r0, #0x3a
	bl sub_08012078
	adds r1, r0, #0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	pop {r1}
	bx r1

	thumb_func_start sub_0805B878
sub_0805B878: @ 0x0805B878
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080D7910
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805b888
sub_0805b888: @ 0x0805B888
	push {r4, lr}
	ldr r4, _0805B8E8 @ =gEwramData
	ldr r2, [r4]
	ldr r0, _0805B8EC @ =0x0000042C
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	bl sub_0800EF6C
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_080D7910
	ldr r2, [r4]
	ldr r0, _0805B8F0 @ =0x00013110
	adds r2, r2, r0
	ldr r0, [r2]
	adds r0, #0x42
	movs r3, #0
	movs r1, #0x78
	strh r1, [r0]
	ldr r0, [r2]
	adds r0, #0x46
	movs r1, #0x50
	strh r1, [r0]
	ldr r0, [r2]
	adds r0, #0x4a
	strh r3, [r0]
	ldr r0, [r2]
	adds r0, #0x4e
	strh r3, [r0]
	ldr r1, [r2]
	adds r1, #0x58
	ldrb r0, [r1]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805B8E8: .4byte gEwramData
_0805B8EC: .4byte 0x0000042C
_0805B8F0: .4byte 0x00013110

	thumb_func_start sub_0805B8F4
sub_0805B8F4: @ 0x0805B8F4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	ldrb r0, [r6, #0xa]
	cmp r0, #4
	bls _0805B908
	b _0805BBB6
_0805B908:
	lsls r0, r0, #2
	ldr r1, _0805B914 @ =_0805B918
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805B914: .4byte _0805B918
_0805B918: @ jump table
	.4byte _0805B92C @ case 0
	.4byte _0805B958 @ case 1
	.4byte _0805B9B4 @ case 2
	.4byte _0805BA80 @ case 3
	.4byte _0805BAE4 @ case 4
_0805B92C:
	ldrb r1, [r6, #0xc]
	cmp r1, #0
	bne _0805B93A
	movs r0, #8
	strb r0, [r6, #0xd]
	adds r0, r1, #1
	strb r0, [r6, #0xc]
_0805B93A:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	movs r1, #0
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0805B94C
	b _0805BA6C
_0805B94C:
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xc]
	strb r1, [r6, #0xb]
	b _0805BA6C
_0805B958:
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _0805B962
	adds r0, #1
	strb r0, [r6, #0xc]
_0805B962:
	adds r0, r6, #0
	bl sub_080628AC
	cmp r0, #0
	bne _0805B96E
	b _0805BBB6
_0805B96E:
	movs r4, #0
	movs r0, #0
	strh r0, [r6, #0x18]
	ldr r0, _0805B9A8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805B9AC @ =0x00013110
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, #0x58
	ldrb r2, [r1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0x20
	bl sub_08013CF0
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	strb r4, [r6, #0xc]
	strb r4, [r6, #0xb]
	ldr r0, _0805B9B0 @ =0x082099FC
	movs r1, #5
	movs r2, #1
	movs r3, #0xe
	bl sub_0803C7B4
	b _0805BBB6
	.align 2, 0
_0805B9A8: .4byte gEwramData
_0805B9AC: .4byte 0x00013110
_0805B9B0: .4byte 0x082099FC
_0805B9B4:
	ldrb r3, [r6, #0xb]
	adds r0, r3, #0
	cmp r0, #0
	bne _0805B9D4
	ldr r2, _0805B9CC @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _0805B9D0 @ =0x0000F1FF
	ands r0, r1
	movs r1, #0
	strh r0, [r2]
	adds r0, r3, #1
	b _0805BAD4
	.align 2, 0
_0805B9CC: .4byte gUnk_03002CB0
_0805B9D0: .4byte 0x0000F1FF
_0805B9D4:
	cmp r0, #1
	bne _0805BA34
	add r1, sp, #8
	ldr r2, _0805BA1C @ =0x0000FFFF
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0805BA20 @ =0x040000D4
	add r0, sp, #8
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _0805BA24 @ =0x81000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r2, #0
	str r0, [r1]
	ldr r0, _0805BA28 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0805BA2C @ =0x0001261C
	adds r0, r0, r2
	str r0, [r1, #4]
	ldr r0, _0805BA30 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x25
	bl sub_08067934
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xc]
	strb r1, [r6, #0xd]
	b _0805BBB6
	.align 2, 0
_0805BA1C: .4byte 0x0000FFFF
_0805BA20: .4byte 0x040000D4
_0805BA24: .4byte 0x81000010
_0805BA28: .4byte gEwramData
_0805BA2C: .4byte 0x0001261C
_0805BA30: .4byte 0x80000010
_0805BA34:
	cmp r0, #2
	bne _0805BA56
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [sp]
	movs r0, #0x80
	str r0, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	movs r3, #0
	bl sub_0803CDF0
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	b _0805BAD4
_0805BA56:
	bl sub_0803D06C
	cmp r0, #0
	beq _0805BA60
	b _0805BBB6
_0805BA60:
	ldr r2, _0805BA78 @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _0805BA7C @ =0x0000F1FF
	ands r0, r1
	movs r1, #0
	strh r0, [r2]
_0805BA6C:
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xc]
	strb r1, [r6, #0xb]
	b _0805BBB6
	.align 2, 0
_0805BA78: .4byte gUnk_03002CB0
_0805BA7C: .4byte 0x0000F1FF
_0805BA80:
	bl sub_08067A04
	cmp r0, #0
	beq _0805BA94
	ldrb r0, [r6, #0xa]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xc]
	strb r1, [r6, #0xb]
_0805BA94:
	ldrb r1, [r6, #0xb]
	cmp r1, #1
	beq _0805BA9C
	b _0805BBB6
_0805BA9C:
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _0805BAB6
	ldr r0, _0805BADC @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0805BAE0 @ =0x00000417
	adds r0, r0, r2
	strb r1, [r0]
	movs r0, #0x40
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xc]
	adds r0, #1
	strb r0, [r6, #0xc]
_0805BAB6:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	movs r1, #0
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805BBB6
	ldr r0, _0805BADC @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0805BAE0 @ =0x00000417
	adds r0, r0, r2
	strb r1, [r0]
	ldrb r0, [r6, #0xb]
	adds r0, #1
_0805BAD4:
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xc]
	b _0805BBB6
	.align 2, 0
_0805BADC: .4byte gEwramData
_0805BAE0: .4byte 0x00000417
_0805BAE4:
	ldrb r4, [r6, #0xb]
	cmp r4, #0
	bne _0805BB14
	movs r3, #0x80
	lsls r3, r3, #9
	str r4, [sp]
	movs r0, #0x80
	str r0, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	bl sub_0803CDF0
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	strb r4, [r6, #0xc]
	movs r0, #0x20
	strb r0, [r6, #0xd]
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_08013F6C
	b _0805BBB6
_0805BB14:
	cmp r4, #1
	bne _0805BB9C
	bl sub_0803D06C
	adds r7, r0, #0
	cmp r7, #0
	bne _0805BB9C
	movs r0, #0xe
	bl sub_0803D004
	movs r0, #0
	bl sub_0803D3A0
	ldr r4, _0805BB88 @ =gEwramData
	ldr r1, [r4]
	ldr r0, _0805BB8C @ =0x0000A074
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r2, [r4]
	ldr r5, _0805BB90 @ =0x0000042C
	adds r2, r2, r5
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r2]
	ldr r0, _0805BB94 @ =0x08522C54
	str r7, [sp]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08011F44
	ldr r0, [r4]
	adds r0, #0x60
	bl sub_08011AD0
	ldr r0, _0805BB98 @ =gDisplayRegisters
	adds r0, #0x48
	movs r1, #0
	strh r7, [r0]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xc]
	ldr r1, [r4]
	adds r1, r1, r5
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #7
	orrs r0, r2
	str r0, [r1]
	b _0805BBB6
	.align 2, 0
_0805BB88: .4byte gEwramData
_0805BB8C: .4byte 0x0000A074
_0805BB90: .4byte 0x0000042C
_0805BB94: .4byte 0x08522C54
_0805BB98: .4byte gDisplayRegisters
_0805BB9C:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	bne _0805BBB6
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _0805BBB6
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_08013F6C
	ldrb r0, [r6, #0xc]
	adds r0, #1
	strb r0, [r6, #0xc]
_0805BBB6:
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	bls _0805BC5C
	ldrh r0, [r6, #0x18]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	cmp r0, #0
	bge _0805BBCE
	adds r0, #3
_0805BBCE:
	asrs r3, r0, #2
	movs r0, #0x33
	movs r1, #0
	movs r2, #0
	bl sub_0801D028
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ldrh r1, [r6, #0x18]
	adds r0, r0, r1
	strh r0, [r6, #0x18]
	ldrb r1, [r6, #0xd]
	adds r0, r1, #0
	adds r0, #0xff
	strb r0, [r6, #0xd]
	lsls r1, r1, #0x18
	movs r0, #0xf0
	lsls r0, r0, #0x14
	ands r0, r1
	cmp r0, #0
	bne _0805BC88
	bl RandomNumberGenerator
	ldr r2, _0805BC44 @ =gEwramData
	mov r8, r2
	ldr r1, [r2]
	ldr r6, _0805BC48 @ =0x00013110
	adds r1, r1, r6
	ldr r1, [r1]
	ldr r4, [r1, #0x40]
	ldr r1, _0805BC4C @ =0xFFF00000
	adds r4, r4, r1
	ldr r5, _0805BC50 @ =0x0007FFFF
	ands r0, r5
	lsls r0, r0, #2
	adds r4, r4, r0
	bl RandomNumberGenerator
	mov r2, r8
	ldr r1, [r2]
	adds r1, r1, r6
	ldr r1, [r1]
	ands r0, r5
	lsls r0, r0, #1
	ldr r2, _0805BC54 @ =0xFFF40000
	adds r0, r0, r2
	ldr r1, [r1, #0x44]
	adds r1, r1, r0
	ldr r3, _0805BC58 @ =0xFFFFE000
	movs r0, #7
	str r0, [sp]
	movs r0, #9
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08045B44
	b _0805BC88
	.align 2, 0
_0805BC44: .4byte gEwramData
_0805BC48: .4byte 0x00013110
_0805BC4C: .4byte 0xFFF00000
_0805BC50: .4byte 0x0007FFFF
_0805BC54: .4byte 0xFFF40000
_0805BC58: .4byte 0xFFFFE000
_0805BC5C:
	ldr r0, _0805BCA8 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0805BCAC @ =0x00013110
	adds r2, r2, r0
	ldr r0, [r2]
	adds r0, #0x42
	movs r3, #0
	movs r1, #0x78
	strh r1, [r0]
	ldr r0, [r2]
	adds r0, #0x46
	movs r1, #0x50
	strh r1, [r0]
	ldr r0, [r2]
	str r3, [r0, #0x48]
	ldr r0, [r2]
	str r3, [r0, #0x4c]
	movs r0, #0x33
	movs r1, #0
	movs r2, #0
	bl sub_0801D028
_0805BC88:
	ldr r0, _0805BCA8 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _0805BCB0 @ =0x0000042C
	adds r1, r1, r2
	ldr r0, [r1]
	movs r2, #0x20
	orrs r0, r2
	str r0, [r1]
	mov r0, sb
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805BCA8: .4byte gEwramData
_0805BCAC: .4byte 0x00013110
_0805BCB0: .4byte 0x0000042C

	thumb_func_start sub_0805bcb4
sub_0805bcb4: @ 0x0805BCB4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, _0805BCD4 @ =gEwramData
	ldr r0, [r5]
	ldr r1, _0805BCD8 @ =0x00013110
	adds r0, r0, r1
	ldr r2, [r0]
	movs r6, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0805BD1A
	cmp r0, #1
	bgt _0805BCDC
	cmp r0, #0
	beq _0805BCE4
	b _0805BE5C
	.align 2, 0
_0805BCD4: .4byte gEwramData
_0805BCD8: .4byte 0x00013110
_0805BCDC:
	cmp r0, #0x80
	bne _0805BCE2
	b _0805BE54
_0805BCE2:
	b _0805BE5C
_0805BCE4:
	adds r1, r2, #0
	adds r1, #0x42
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0x4f
	ble _0805BCF4
	movs r0, #0x4f
	strh r0, [r1]
_0805BCF4:
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xc
	bl sub_08067934
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _0805BE5C
_0805BD1A:
	ldrb r0, [r4, #0xb]
	cmp r0, #3
	beq _0805BD3E
	bl sub_08067A04
	cmp r0, #0
	beq _0805BD3E
	ldr r1, [r5]
	ldr r0, _0805BD60 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #2
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_0805BD3E:
	ldrb r0, [r4, #0xb]
	adds r2, r0, #0
	cmp r2, #1
	bne _0805BD4A
	movs r0, #0x80
	strb r0, [r4, #0xa]
_0805BD4A:
	ldrb r0, [r4, #0xb]
	subs r0, #1
	cmp r0, #6
	bls _0805BD54
	b _0805BE5C
_0805BD54:
	lsls r0, r0, #2
	ldr r1, _0805BD64 @ =_0805BD68
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805BD60: .4byte 0x0000042C
_0805BD64: .4byte _0805BD68
_0805BD68: @ jump table
	.4byte _0805BD84 @ case 0
	.4byte _0805BD94 @ case 1
	.4byte _0805BDA2 @ case 2
	.4byte _0805BDD4 @ case 3
	.4byte _0805BE18 @ case 4
	.4byte _0805BE26 @ case 5
	.4byte _0805BE5C @ case 6
_0805BD84:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _0805BE5C
_0805BD94:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	b _0805BE08
_0805BDA2:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805BE5C
	adds r0, r4, #0
	movs r1, #3
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	ldr r0, _0805BDD0 @ =0xFFFE0000
	str r0, [r4, #0x48]
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r4, #0x50]
	b _0805BE5C
	.align 2, 0
_0805BDD0: .4byte 0xFFFE0000
_0805BDD4:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805BDEA
	adds r2, r4, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_0805BDEA:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x50]
	adds r1, r1, r0
	str r1, [r4, #0x48]
	ldr r0, _0805BE10 @ =0xFFFE8000
	cmp r1, r0
	ble _0805BE02
	movs r6, #0x80
	lsls r6, r6, #2
_0805BE02:
	ldr r0, _0805BE14 @ =0xFFFFF000
	cmp r1, r0
	ble _0805BE5C
_0805BE08:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	b _0805BE5C
	.align 2, 0
_0805BE10: .4byte 0xFFFE8000
_0805BE14: .4byte 0xFFFFF000
_0805BE18:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	b _0805BE5C
_0805BE26:
	ldr r0, [r4, #0x40]
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r3, _0805BE50 @ =0xFFFF8000
	adds r0, r0, r3
	str r0, [r4, #0x44]
	adds r0, r4, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _0805BE4C
	adds r0, r2, #1
	strb r0, [r4, #0xb]
_0805BE4C:
	movs r6, #0x10
	b _0805BE5C
	.align 2, 0
_0805BE50: .4byte 0xFFFF8000
_0805BE54:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0805B66C
_0805BE5C:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0805be64
sub_0805be64: @ 0x0805BE64
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0805BED4
	cmp r0, #2
	bgt _0805BE7C
	cmp r0, #0
	beq _0805BE86
	cmp r0, #1
	beq _0805BECC
	b _0805BF16
_0805BE7C:
	cmp r0, #0x80
	beq _0805BEE6
	cmp r0, #0x81
	beq _0805BF00
	b _0805BF16
_0805BE86:
	ldr r5, _0805BEBC @ =gEwramData
	ldr r0, [r5]
	ldr r1, _0805BEC0 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08002188
	cmp r0, #0x80
	ble _0805BF16
	ldr r0, [r5]
	ldr r3, _0805BEC0 @ =0x00013110
	adds r0, r0, r3
	ldr r0, [r0]
	bl sub_08002188
	ldr r1, _0805BEC4 @ =0x0000011F
	cmp r0, r1
	bgt _0805BF16
	ldr r1, [r5]
	ldr r0, _0805BEC8 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #1
	orrs r0, r2
	str r0, [r1]
	b _0805BEF0
	.align 2, 0
_0805BEBC: .4byte gEwramData
_0805BEC0: .4byte 0x00013110
_0805BEC4: .4byte 0x0000011F
_0805BEC8: .4byte 0x0000042C
_0805BECC:
	movs r0, #0xc
	bl sub_08067934
	b _0805BEF0
_0805BED4:
	bl sub_08067A04
	cmp r0, #0
	beq _0805BF16
	adds r0, r4, #0
	movs r1, #1
	bl sub_0805B66C
	b _0805BF16
_0805BEE6:
	ldr r2, _0805BEF8 @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _0805BEFC @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
_0805BEF0:
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _0805BF16
	.align 2, 0
_0805BEF8: .4byte gUnk_03002CB0
_0805BEFC: .4byte 0x0000FEFF
_0805BF00:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0805B66C
	ldr r2, _0805BF20 @ =gUnk_03002CB0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
_0805BF16:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805BF20: .4byte gUnk_03002CB0

	thumb_func_start sub_0805bf24
sub_0805bf24: @ 0x0805BF24
	push {lr}
	ldr r0, _0805BF40 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0805BF44 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #1
	orrs r0, r2
	str r0, [r1]
	movs r0, #0xc
	bl sub_08067934
	pop {r0}
	bx r0
	.align 2, 0
_0805BF40: .4byte gEwramData
_0805BF44: .4byte 0x0000042C

	thumb_func_start sub_0805bf48
sub_0805bf48: @ 0x0805BF48
	bx lr
	.align 2, 0

	thumb_func_start sub_0805bf4c
sub_0805bf4c: @ 0x0805BF4C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r6, _0805BF88 @ =gEwramData
	ldr r0, [r6]
	ldr r1, _0805BF8C @ =0x0000042C
	mov r8, r1
	add r0, r8
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0805BF7A
	adds r0, r5, #0
	movs r1, #7
	bl sub_0805B754
	cmp r0, #0
	bne _0805BF90
_0805BF7A:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _0805C05A
	.align 2, 0
_0805BF88: .4byte gEwramData
_0805BF8C: .4byte 0x0000042C
_0805BF90:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	ldr r4, [r6]
	ldr r3, _0805C068 @ =0x0000A094
	adds r2, r4, r3
	ldrh r1, [r2, #6]
	movs r0, #0x40
	subs r0, r0, r1
	adds r7, r5, #0
	adds r7, #0x42
	movs r1, #0
	mov sb, r1
	strh r0, [r7]
	ldrh r1, [r2, #0xa]
	movs r0, #0xbf
	subs r0, r0, r1
	movs r2, #0x46
	adds r2, r2, r5
	mov ip, r2
	strh r0, [r2]
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r3, _0805C06C @ =0x00013110
	adds r4, r4, r3
	ldr r1, [r4]
	adds r1, #0x58
	ldrb r0, [r1]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r1]
	ldr r2, [r6]
	adds r3, r2, r3
	ldr r1, [r3]
	ldrh r0, [r7]
	adds r0, #0x18
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r3]
	mov r3, ip
	ldrh r1, [r3]
	adds r0, #0x46
	strh r1, [r0]
	add r2, r8
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #9
	str r5, [sp]
	movs r4, #0x80
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
	mov r0, sb
	str r0, [sp, #8]
	ldr r1, _0805C070 @ =0x040000D4
	add r2, sp, #8
	str r2, [r1]
	ldr r0, _0805C074 @ =0x06004000
	str r0, [r1, #4]
	ldr r0, _0805C078 @ =0x85000800
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add r0, sp, #0xc
	mov r3, sb
	strh r3, [r0]
	str r0, [r1]
	ldr r0, _0805C07C @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _0805C080 @ =0x81000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _0805C084 @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _0805C088 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
_0805C05A:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805C068: .4byte 0x0000A094
_0805C06C: .4byte 0x00013110
_0805C070: .4byte 0x040000D4
_0805C074: .4byte 0x06004000
_0805C078: .4byte 0x85000800
_0805C07C: .4byte 0x0600E000
_0805C080: .4byte 0x81000400
_0805C084: .4byte gUnk_03002CB0
_0805C088: .4byte 0x0000FEFF

	thumb_func_start sub_0805c08c
sub_0805c08c: @ 0x0805C08C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r0, #0
	movs r7, #0
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	beq _0805C14C
	cmp r0, #1
	bgt _0805C0A4
	cmp r0, #0
	beq _0805C0AC
	b _0805C1E6
_0805C0A4:
	cmp r0, #2
	bne _0805C0AA
	b _0805C1A8
_0805C0AA:
	b _0805C1E6
_0805C0AC:
	ldrb r0, [r6, #0xb]
	cmp r0, #0
	beq _0805C0B8
	cmp r0, #1
	beq _0805C0F0
	b _0805C1E6
_0805C0B8:
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _0805C0CA
	movs r0, #0x25
	bl sub_08013EEC
	ldrb r0, [r6, #0xc]
	adds r0, #1
	strb r0, [r6, #0xc]
_0805C0CA:
	bl sub_0803D408
	cmp r0, #0
	bne _0805C0DC
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	strb r7, [r6, #0xc]
	b _0805C1E6
_0805C0DC:
	ldr r2, _0805C0E8 @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _0805C0EC @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	b _0805C1E6
	.align 2, 0
_0805C0E8: .4byte gUnk_03002CB0
_0805C0EC: .4byte 0x0000FEFF
_0805C0F0:
	str r7, [sp, #8]
	ldr r1, _0805C134 @ =0x040000D4
	add r0, sp, #8
	str r0, [r1]
	ldr r0, _0805C138 @ =0x06004000
	str r0, [r1, #4]
	ldr r0, _0805C13C @ =0x85000800
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add r0, sp, #0xc
	movs r3, #0
	strh r7, [r0]
	str r0, [r1]
	ldr r0, _0805C140 @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _0805C144 @ =0x81000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _0805C148 @ =gUnk_03002CB0
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0xff
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	strb r3, [r6, #0xc]
	strb r3, [r6, #0xb]
	b _0805C1E6
	.align 2, 0
_0805C134: .4byte 0x040000D4
_0805C138: .4byte 0x06004000
_0805C13C: .4byte 0x85000800
_0805C140: .4byte 0x0600E000
_0805C144: .4byte 0x81000400
_0805C148: .4byte gUnk_03002CB0
_0805C14C:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805C1E6
	movs r5, #0x80
	lsls r5, r5, #9
	str r7, [sp]
	movs r4, #0x80
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
	ldr r2, _0805C1A0 @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _0805C1A4 @ =0x0000FEFF
	ands r0, r1
	movs r4, #0
	strh r0, [r2]
	movs r0, #0x2d
	bl sub_08012048
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	strb r4, [r6, #0xc]
	strb r4, [r6, #0xb]
	b _0805C1E6
	.align 2, 0
_0805C1A0: .4byte gUnk_03002CB0
_0805C1A4: .4byte 0x0000FEFF
_0805C1A8:
	bl sub_0803D408
	cmp r0, #0
	bne _0805C1E6
	ldr r4, _0805C208 @ =gEwramData
	ldr r1, [r4]
	ldr r0, _0805C20C @ =0x0000037E
	adds r1, r1, r0
	ldrh r2, [r1]
	ldr r0, _0805C210 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1]
	movs r0, #0x28
	bl sub_080121E0
	ldr r0, [r4]
	movs r1, #0x85
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	bl sub_080127F0
	movs r0, #0x80
	strb r0, [r6, #0xa]
	bl sub_08067898
	ldr r0, [r4]
	adds r0, #0x64
	movs r1, #0xa
	strb r1, [r0]
_0805C1E6:
	ldr r0, _0805C208 @ =gEwramData
	ldr r1, [r0]
	ldr r4, _0805C214 @ =0x0000042C
	adds r1, r1, r4
	ldr r0, [r1]
	movs r2, #0x20
	orrs r0, r2
	str r0, [r1]
	adds r0, r6, #0
	bl sub_0803F17C
	adds r0, r7, #0
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805C208: .4byte gEwramData
_0805C20C: .4byte 0x0000037E
_0805C210: .4byte 0x0000FFFE
_0805C214: .4byte 0x0000042C

	thumb_func_start sub_0805C218
sub_0805C218: @ 0x0805C218
	push {r4, r5, r6, r7, lr}
	ldr r4, _0805C27C @ =0x08526758
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	movs r5, #0xb
	lsls r1, r1, #0x10
	asrs r6, r1, #0x10
_0805C226:
	movs r0, #0xb
	bl sub_0805B5E8
	adds r3, r0, #0
	cmp r3, #0
	beq _0805C26E
	movs r1, #1
	ldrsb r1, [r4, r1]
	adds r1, r7, r1
	adds r2, r3, #0
	adds r2, #0x42
	strh r1, [r2]
	movs r1, #2
	ldrsb r1, [r4, r1]
	adds r1, r6, r1
	adds r2, #4
	strh r1, [r2]
	movs r1, #3
	ldrsb r1, [r4, r1]
	lsls r1, r1, #0xc
	str r1, [r3, #0x48]
	movs r1, #4
	ldrsb r1, [r4, r1]
	lsls r1, r1, #0xc
	rsbs r1, r1, #0
	str r1, [r3, #0x4c]
	ldrb r1, [r4]
	adds r2, #0x1f
	strb r1, [r2]
	ldrb r1, [r4, #5]
	strb r1, [r3, #0xd]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r3, #0x54]
	ldr r1, _0805C280 @ =sub_0805CB08
	str r1, [r3]
_0805C26E:
	subs r5, #1
	adds r4, #8
	cmp r5, #0
	bge _0805C226
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805C27C: .4byte 0x08526758
_0805C280: .4byte sub_0805CB08

	thumb_func_start sub_0805C284
sub_0805C284: @ 0x0805C284
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r6, [r4, #0xa]
	cmp r6, #0
	bne _0805C30E
	adds r7, r4, #0
	adds r7, #0x42
	movs r1, #0
	ldrsh r0, [r7, r1]
	ldr r1, _0805C2E0 @ =gEwramData
	ldr r2, [r1]
	ldr r3, _0805C2E4 @ =0x0000A094
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
	bl sub_080020A0
	mov ip, r0
	cmp r0, #0
	beq _0805C2E8
	movs r1, #0
	ldrsh r0, [r7, r1]
	ldrh r1, [r5]
	subs r1, #2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0805C218
	movs r0, #0xaa
	bl sub_080D7910
	ldrb r1, [r4, #0xa]
	adds r1, #1
	strb r1, [r4, #0xa]
	strb r6, [r4, #0xc]
	strb r6, [r4, #0xb]
	b _0805C322
	.align 2, 0
_0805C2E0: .4byte gEwramData
_0805C2E4: .4byte 0x0000A094
_0805C2E8:
	ldr r1, [r4, #0x40]
	ldr r3, [r4, #0x48]
	adds r1, r1, r3
	str r1, [r4, #0x40]
	ldr r1, [r4, #0x44]
	ldr r2, [r4, #0x4c]
	adds r1, r1, r2
	str r1, [r4, #0x44]
	ldr r1, [r4, #0x50]
	adds r3, r3, r1
	str r3, [r4, #0x48]
	ldr r1, [r4, #0x54]
	adds r2, r2, r1
	str r2, [r4, #0x4c]
	cmp r3, #0
	ble _0805C322
	mov r3, ip
	str r3, [r4, #0x48]
	b _0805C322
_0805C30E:
	ldrb r1, [r4, #0xc]
	cmp r1, #0
	bne _0805C322
	adds r2, r4, #0
	adds r2, #0x65
	movs r1, #8
	strb r1, [r2]
	ldrb r1, [r4, #0xc]
	adds r1, #1
	strb r1, [r4, #0xc]
_0805C322:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0805C328
sub_0805C328: @ 0x0805C328
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	lsls r0, r0, #3
	ldr r7, _0805C370 @ =0x085267B8
	adds r4, r0, r7
	ldrh r0, [r5, #0x18]
	adds r1, r0, #1
	strh r1, [r5, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r4, #6]
	cmp r0, r1
	ble _0805C390
	movs r6, #0
	strh r6, [r5, #0x18]
	ldr r0, [r4]
	ldrh r1, [r4, #4]
	adds r2, r5, #0
	adds r2, #0x2c
	ldrb r3, [r2]
	movs r2, #1
	bl sub_0803C7B4
	ldrh r0, [r5, #0x1a]
	adds r0, #1
	strh r0, [r5, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0805C374
	strh r6, [r5, #0x1a]
	movs r0, #0
	b _0805C392
	.align 2, 0
_0805C370: .4byte 0x085267B8
_0805C374:
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	lsls r0, r0, #3
	adds r4, r0, r7
	ldr r1, [r4]
	ldrh r2, [r4, #4]
	movs r3, #0x80
	lsls r3, r3, #9
	str r6, [sp]
	ldrh r0, [r4, #6]
	str r0, [sp, #4]
	movs r0, #0
	bl sub_0803CF34
_0805C390:
	movs r0, #1
_0805C392:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805C39C
sub_0805C39C: @ 0x0805C39C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xa]
	cmp r5, #1
	beq _0805C3BA
	cmp r5, #1
	bgt _0805C3B0
	cmp r5, #0
	beq _0805C3E4
	b _0805C494
_0805C3B0:
	cmp r5, #2
	beq _0805C3EC
	cmp r5, #3
	beq _0805C470
	b _0805C494
_0805C3BA:
	ldrb r1, [r4, #0xc]
	adds r3, r4, #0
	adds r3, #0x59
	cmp r1, #0
	bne _0805C3D4
	ldrb r1, [r3]
	movs r2, #2
	rsbs r2, r2, #0
	ands r2, r1
	strb r2, [r3]
	ldrb r1, [r4, #0xc]
	adds r1, #1
	strb r1, [r4, #0xc]
_0805C3D4:
	ldrb r1, [r3]
	ands r5, r1
	cmp r5, #0
	beq _0805C3E4
	ldrb r1, [r4, #0xa]
	adds r1, #1
	movs r2, #0
	b _0805C48E
_0805C3E4:
	adds r0, r4, #0
	bl sub_0803F17C
	b _0805C494
_0805C3EC:
	ldrb r1, [r4, #0xc]
	cmp r1, #0
	bne _0805C452
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0xb
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	adds r0, r4, #0
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0x10
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	movs r0, #0xb
	bl sub_0805B5E8
	adds r2, r0, #0
	cmp r2, #0
	beq _0805C442
	adds r1, r2, #0
	adds r1, #0x42
	strh r7, [r1]
	adds r1, #4
	strh r6, [r1]
	ldr r1, _0805C468 @ =0xFFFF6000
	str r1, [r2, #0x48]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r2, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #1
	str r1, [r2, #0x50]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r2, #0x54]
	adds r3, r2, #0
	adds r3, #0x65
	movs r1, #3
	strb r1, [r3]
	ldr r1, _0805C46C @ =sub_0805C284
	str r1, [r2]
_0805C442:
	adds r1, r4, #0
	adds r1, #0x65
	strb r5, [r1]
	ldrb r1, [r4, #0xc]
	adds r1, #1
	strb r1, [r4, #0xc]
	movs r1, #0x20
	strb r1, [r4, #0xd]
_0805C452:
	ldrb r1, [r4, #0xd]
	subs r1, #1
	movs r2, #0
	strb r1, [r4, #0xd]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0xff
	bne _0805C494
	ldrb r1, [r4, #0xa]
	adds r1, #1
	b _0805C48E
	.align 2, 0
_0805C468: .4byte 0xFFFF6000
_0805C46C: .4byte sub_0805C284
_0805C470:
	ldrb r0, [r4, #0xc]
	adds r1, r0, #0
	cmp r1, #0
	bne _0805C480
	strh r1, [r4, #0x18]
	strh r1, [r4, #0x1a]
	adds r0, #1
	strb r0, [r4, #0xc]
_0805C480:
	adds r0, r4, #0
	bl sub_0805C328
	adds r2, r0, #0
	cmp r2, #0
	bne _0805C494
	movs r1, #0x80
_0805C48E:
	strb r1, [r4, #0xa]
	strb r2, [r4, #0xc]
	strb r2, [r4, #0xb]
_0805C494:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805c49c
sub_0805c49c: @ 0x0805C49C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	movs r1, #7
	bl sub_0805B754
	cmp r0, #0
	beq _0805C506
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r7, #0
	bl sub_0803F17C
	ldr r5, _0805C514 @ =gEwramData
	ldr r1, [r5]
	ldr r0, _0805C518 @ =0x0000A094
	adds r1, r1, r0
	ldrh r2, [r1, #6]
	movs r0, #0xff
	subs r0, r0, r2
	adds r2, r7, #0
	adds r2, #0x42
	movs r3, #0
	mov r8, r3
	movs r3, #0
	mov sb, r3
	strh r0, [r2]
	ldrh r0, [r1, #0xa]
	movs r6, #0xbf
	subs r0, r6, r0
	adds r1, r7, #0
	adds r1, #0x46
	strh r0, [r1]
	adds r2, #0x16
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0xb
	bl sub_0805B5E8
	adds r3, r0, #0
	str r3, [r7, #0x14]
	cmp r3, #0
	bne _0805C51C
_0805C506:
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _0805C5EC
	.align 2, 0
_0805C514: .4byte gEwramData
_0805C518: .4byte 0x0000A094
_0805C51C:
	ldr r2, [r5]
	ldr r0, _0805C5FC @ =0x0000A094
	adds r2, r2, r0
	ldrh r1, [r2, #6]
	movs r0, #0x78
	subs r0, r0, r1
	adds r1, r3, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r1, [r7, #0x14]
	ldrh r2, [r2, #0xa]
	movs r0, #0xb0
	subs r0, r0, r2
	adds r1, #0x46
	strh r0, [r1]
	ldr r0, [r7, #0x14]
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r7, #0
	bl sub_0803F17C
	ldr r1, [r7, #0x14]
	ldr r0, _0805C600 @ =sub_0805C39C
	str r0, [r1]
	ldr r0, [r5]
	ldr r3, _0805C604 @ =0x00013110
	adds r0, r0, r3
	ldr r1, [r0]
	adds r1, #0x58
	ldrb r0, [r1]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r1]
	ldr r5, [r5]
	adds r3, r5, r3
	ldr r1, [r3]
	ldr r2, _0805C5FC @ =0x0000A094
	adds r4, r5, r2
	ldrh r2, [r4, #6]
	movs r0, #0xa0
	subs r0, r0, r2
	adds r1, #0x42
	strh r0, [r1]
	ldr r1, [r3]
	ldrh r0, [r4, #0xa]
	subs r0, r6, r0
	adds r1, #0x46
	strh r0, [r1]
	ldr r3, _0805C608 @ =0x0000042C
	adds r5, r5, r3
	ldr r0, [r5]
	movs r6, #1
	orrs r0, r6
	movs r4, #0x80
	lsls r4, r4, #9
	orrs r0, r4
	str r0, [r5]
	str r4, [sp]
	movs r5, #0x80
	str r5, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803D18C
	str r4, [sp]
	str r5, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803CDF0
	strb r6, [r7, #0xa]
	mov r0, r8
	strb r0, [r7, #0xc]
	strb r0, [r7, #0xb]
	mov r2, sb
	str r2, [sp, #8]
	ldr r1, _0805C60C @ =0x040000D4
	add r3, sp, #8
	str r3, [r1]
	ldr r0, _0805C610 @ =0x06004000
	str r0, [r1, #4]
	ldr r0, _0805C614 @ =0x85000800
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add r0, sp, #0xc
	strh r2, [r0]
	str r0, [r1]
	ldr r0, _0805C618 @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _0805C61C @ =0x81000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _0805C620 @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _0805C624 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
_0805C5EC:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805C5FC: .4byte 0x0000A094
_0805C600: .4byte sub_0805C39C
_0805C604: .4byte 0x00013110
_0805C608: .4byte 0x0000042C
_0805C60C: .4byte 0x040000D4
_0805C610: .4byte 0x06004000
_0805C614: .4byte 0x85000800
_0805C618: .4byte 0x0600E000
_0805C61C: .4byte 0x81000400
_0805C620: .4byte gUnk_03002CB0
_0805C624: .4byte 0x0000FEFF

	thumb_func_start sub_0805c628
sub_0805c628: @ 0x0805C628
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r0, #0
	ldrb r0, [r6, #0xa]
	cmp r0, #6
	bls _0805C636
	b _0805CAD6
_0805C636:
	lsls r0, r0, #2
	ldr r1, _0805C640 @ =_0805C644
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805C640: .4byte _0805C644
_0805C644: @ jump table
	.4byte _0805C660 @ case 0
	.4byte _0805C6B4 @ case 1
	.4byte _0805C748 @ case 2
	.4byte _0805CA18 @ case 3
	.4byte _0805CA22 @ case 4
	.4byte _0805CA5A @ case 5
	.4byte _0805CA78 @ case 6
_0805C660:
	ldrb r1, [r6, #0xc]
	cmp r1, #0
	bne _0805C66E
	movs r0, #0x80
	strb r0, [r6, #0xd]
	adds r0, r1, #1
	strb r0, [r6, #0xc]
_0805C66E:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	movs r7, #0
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0805C680
	b _0805CAD6
_0805C680:
	movs r5, #0x80
	lsls r5, r5, #9
	str r5, [sp]
	movs r4, #0x80
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
	strb r7, [r6, #0xd]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	strb r7, [r6, #0xc]
	strb r7, [r6, #0xb]
	b _0805CAD6
_0805C6B4:
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _0805C6C6
	movs r0, #0x21
	bl sub_08013CF0
	ldrb r0, [r6, #0xc]
	adds r0, #1
	strb r0, [r6, #0xc]
_0805C6C6:
	bl sub_0803D408
	adds r4, r0, #0
	cmp r4, #0
	bne _0805C734
	bl sub_0803D270
	bl sub_0803CED4
	str r4, [sp, #8]
	ldr r1, _0805C71C @ =0x040000D4
	add r0, sp, #8
	str r0, [r1]
	ldr r0, _0805C720 @ =0x06004000
	str r0, [r1, #4]
	ldr r0, _0805C724 @ =0x85000800
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add r0, sp, #0xc
	movs r3, #0
	strh r4, [r0]
	str r0, [r1]
	ldr r0, _0805C728 @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _0805C72C @ =0x81000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _0805C730 @ =gUnk_03002CB0
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0xff
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	strb r3, [r6, #0xc]
	strb r3, [r6, #0xb]
	b _0805CAD6
	.align 2, 0
_0805C71C: .4byte 0x040000D4
_0805C720: .4byte 0x06004000
_0805C724: .4byte 0x85000800
_0805C728: .4byte 0x0600E000
_0805C72C: .4byte 0x81000400
_0805C730: .4byte gUnk_03002CB0
_0805C734:
	ldr r2, _0805C740 @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _0805C744 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	b _0805CAD6
	.align 2, 0
_0805C740: .4byte gUnk_03002CB0
_0805C744: .4byte 0x0000FEFF
_0805C748:
	ldrb r0, [r6, #0xb]
	cmp r0, #5
	bls _0805C750
	b _0805CAD6
_0805C750:
	lsls r0, r0, #2
	ldr r1, _0805C75C @ =_0805C760
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805C75C: .4byte _0805C760
_0805C760: @ jump table
	.4byte _0805C778 @ case 0
	.4byte _0805C7D4 @ case 1
	.4byte _0805C7FE @ case 2
	.4byte _0805C898 @ case 3
	.4byte _0805C930 @ case 4
	.4byte _0805C9EC @ case 5
_0805C778:
	ldrb r1, [r6, #0xc]
	cmp r1, #0
	bne _0805C786
	movs r0, #0x80
	strb r0, [r6, #0xd]
	adds r0, r1, #1
	strb r0, [r6, #0xc]
_0805C786:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0805C796
	b _0805CAD6
_0805C796:
	ldr r0, _0805C7C8 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0805C7CC @ =0x00013110
	adds r4, r2, r0
	ldr r1, [r4]
	ldr r0, _0805C7D0 @ =0x0000A094
	adds r2, r2, r0
	ldrh r3, [r2, #6]
	movs r0, #0xd0
	subs r0, r0, r3
	adds r1, #0x42
	movs r3, #0
	strh r0, [r1]
	ldr r1, [r4]
	ldrh r2, [r2, #0xa]
	movs r0, #0xbf
	subs r0, r0, r2
	adds r1, #0x46
	strh r0, [r1]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	strb r3, [r6, #0xc]
	b _0805CAD6
	.align 2, 0
_0805C7C8: .4byte gEwramData
_0805C7CC: .4byte 0x00013110
_0805C7D0: .4byte 0x0000A094
_0805C7D4:
	ldrb r1, [r6, #0xc]
	cmp r1, #0
	bne _0805C7E2
	movs r0, #0x40
	strb r0, [r6, #0xd]
	adds r0, r1, #1
	strb r0, [r6, #0xc]
_0805C7E2:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0805C7F2
	b _0805CAD6
_0805C7F2:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	movs r0, #0
	strb r0, [r6, #0xc]
	b _0805CAD6
_0805C7FE:
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _0805C820
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _0805C81A
	adds r0, r6, #0
	movs r1, #1
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
_0805C81A:
	ldrb r0, [r6, #0xc]
	adds r0, #1
	strb r0, [r6, #0xc]
_0805C820:
	adds r0, r6, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _0805C864 @ =gEwramData
	ldr r3, [r1]
	ldr r2, _0805C868 @ =0x0000A094
	adds r5, r3, r2
	movs r4, #6
	ldrsh r1, [r5, r4]
	adds r0, r0, r1
	cmp r0, #0xb8
	ble _0805C86C
	movs r1, #0x80
	lsls r1, r1, #9
	movs r2, #0x80
	lsls r2, r2, #0xe
	movs r3, #0x80
	lsls r3, r3, #0xa
	movs r0, #1
	str r0, [sp]
	adds r0, r6, #0
	bl sub_0806E140
	movs r1, #4
	ands r1, r0
	cmp r1, #0
	beq _0805C85A
	b _0805CAD6
_0805C85A:
	ldr r0, [r6, #0x44]
	ldr r1, [r6, #0x4c]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	b _0805CAD6
	.align 2, 0
_0805C864: .4byte gEwramData
_0805C868: .4byte 0x0000A094
_0805C86C:
	ldr r0, _0805C894 @ =0x00013110
	adds r3, r3, r0
	ldr r1, [r3]
	ldrh r2, [r5, #6]
	movs r0, #0xa0
	subs r0, r0, r2
	adds r1, #0x42
	movs r4, #0
	strh r0, [r1]
	ldr r1, [r3]
	ldrh r2, [r5, #0xa]
	movs r0, #0xbf
	subs r0, r0, r2
	adds r1, #0x46
	strh r0, [r1]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	strb r4, [r6, #0xc]
	b _0805CAD6
	.align 2, 0
_0805C894: .4byte 0x00013110
_0805C898:
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _0805C8BA
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #2
	beq _0805C8B4
	adds r0, r6, #0
	movs r1, #2
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
_0805C8B4:
	ldrb r0, [r6, #0xc]
	adds r0, #1
	strb r0, [r6, #0xc]
_0805C8BA:
	adds r0, r6, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _0805C928 @ =gEwramData
	ldr r0, [r0]
	ldr r4, _0805C92C @ =0x0000A094
	adds r0, r0, r4
	movs r2, #6
	ldrsh r0, [r0, r2]
	adds r1, r1, r0
	cmp r1, #0xb0
	ble _0805C8FA
	movs r1, #0x80
	lsls r1, r1, #8
	movs r2, #0x80
	lsls r2, r2, #0xe
	movs r3, #0x80
	lsls r3, r3, #0xa
	movs r0, #1
	str r0, [sp]
	adds r0, r6, #0
	bl sub_0806E140
	movs r1, #4
	ands r1, r0
	cmp r1, #0
	bne _0805C8FA
	ldr r0, [r6, #0x44]
	ldr r1, [r6, #0x4c]
	adds r0, r0, r1
	str r0, [r6, #0x44]
_0805C8FA:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805C90A
	b _0805CAD6
_0805C90A:
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805C920
	adds r0, r6, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
_0805C920:
	ldrb r0, [r6, #0xb]
	adds r0, #2
	b _0805C9D8
	.align 2, 0
_0805C928: .4byte gEwramData
_0805C92C: .4byte 0x0000A094
_0805C930:
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _0805C952
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #5
	beq _0805C94C
	adds r0, r6, #0
	movs r1, #5
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
_0805C94C:
	ldrb r0, [r6, #0xc]
	adds r0, #1
	strb r0, [r6, #0xc]
_0805C952:
	adds r0, r6, #0
	adds r0, #0x42
	movs r4, #0
	ldrsh r1, [r0, r4]
	ldr r0, _0805C9E0 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0805C9E4 @ =0x0000A094
	adds r0, r0, r2
	movs r4, #6
	ldrsh r0, [r0, r4]
	adds r1, r1, r0
	cmp r1, #0xb0
	ble _0805C992
	movs r1, #0x80
	lsls r1, r1, #8
	movs r2, #0x80
	lsls r2, r2, #0xe
	movs r3, #0x80
	lsls r3, r3, #0xa
	movs r0, #1
	str r0, [sp]
	adds r0, r6, #0
	bl sub_0806E140
	movs r1, #4
	ands r1, r0
	cmp r1, #0
	bne _0805C992
	ldr r0, [r6, #0x44]
	ldr r1, [r6, #0x4c]
	adds r0, r0, r1
	str r0, [r6, #0x44]
_0805C992:
	adds r4, r6, #0
	adds r4, #0x6e
	ldrb r0, [r4]
	cmp r0, #4
	bne _0805C9A2
	ldr r0, _0805C9E8 @ =0x000001DF
	bl sub_080D7910
_0805C9A2:
	ldrb r0, [r4]
	cmp r0, #8
	bne _0805C9AE
	movs r0, #0xfc
	bl sub_080D7910
_0805C9AE:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805C9BE
	b _0805CAD6
_0805C9BE:
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805C9D4
	adds r0, r6, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
_0805C9D4:
	ldrb r0, [r6, #0xb]
	adds r0, #1
_0805C9D8:
	movs r1, #0
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xc]
	b _0805CAD6
	.align 2, 0
_0805C9E0: .4byte gEwramData
_0805C9E4: .4byte 0x0000A094
_0805C9E8: .4byte 0x000001DF
_0805C9EC:
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _0805CA02
	movs r0, #0x5a
	bl sub_08067934
	movs r0, #0x44
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xc]
	adds r0, #1
	strb r0, [r6, #0xc]
_0805CA02:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	movs r1, #0
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805CAD6
	ldrb r0, [r6, #0xa]
	adds r0, #1
	b _0805CA70
_0805CA18:
	bl sub_08067A04
	cmp r0, #0
	beq _0805CAD6
	b _0805CA6A
_0805CA22:
	ldrb r1, [r6, #0xc]
	cmp r1, #0
	bne _0805CA30
	movs r0, #0x68
	strb r0, [r6, #0xd]
	adds r0, r1, #1
	strb r0, [r6, #0xc]
_0805CA30:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	movs r2, #0
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805CAD6
	ldr r1, [r6, #0x14]
	ldrb r0, [r1, #0xa]
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r6, #0x14]
	strb r2, [r0, #0xc]
	strb r2, [r0, #0xb]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	strb r2, [r6, #0xc]
	strb r2, [r6, #0xb]
	b _0805CAD6
_0805CA5A:
	ldr r0, [r6, #0x14]
	ldrb r0, [r0, #0xa]
	cmp r0, #0x80
	bne _0805CAD6
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_08013F6C
_0805CA6A:
	ldrb r0, [r6, #0xa]
	adds r0, #1
	movs r1, #0
_0805CA70:
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xc]
	strb r1, [r6, #0xb]
	b _0805CAD6
_0805CA78:
	ldrb r7, [r6, #0xc]
	cmp r7, #0
	bne _0805CABC
	movs r5, #0x80
	lsls r5, r5, #9
	str r7, [sp]
	movs r4, #0x80
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
	ldr r2, _0805CAF8 @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _0805CAFC @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0x2d
	bl sub_08012048
	ldrb r0, [r6, #0xc]
	adds r0, #1
	strb r0, [r6, #0xc]
	strb r4, [r6, #0xd]
_0805CABC:
	bl sub_0803D408
	cmp r0, #0
	bne _0805CAD6
	movs r0, #0x80
	strb r0, [r6, #0xa]
	bl sub_08067898
	ldr r0, _0805CB00 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x64
	movs r1, #0xa
	strb r1, [r0]
_0805CAD6:
	adds r0, r6, #0
	bl sub_0803F17C
	ldr r0, _0805CB00 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0805CB04 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #0x20
	orrs r0, r2
	str r0, [r1]
	movs r0, #0
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805CAF8: .4byte gUnk_03002CB0
_0805CAFC: .4byte 0x0000FEFF
_0805CB00: .4byte gEwramData
_0805CB04: .4byte 0x0000042C

	thumb_func_start sub_0805CB08
sub_0805CB08: @ 0x0805CB08
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _0805CB48 @ =gEwramData
	ldr r2, [r1]
	ldr r3, _0805CB4C @ =0x0000A094
	adds r2, r2, r3
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
	bl sub_080020A0
	adds r1, r0, #0
	cmp r1, #0
	beq _0805CB50
	adds r1, r4, #0
	adds r1, #0x59
	ldrb r2, [r1]
	movs r3, #8
	orrs r2, r3
	strb r2, [r1]
	b _0805CB66
	.align 2, 0
_0805CB48: .4byte gEwramData
_0805CB4C: .4byte 0x0000A094
_0805CB50:
	ldr r1, [r4, #0x40]
	ldr r2, [r4, #0x48]
	adds r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, [r4, #0x44]
	ldr r2, [r4, #0x4c]
	adds r1, r1, r2
	str r1, [r4, #0x44]
	ldr r1, [r4, #0x54]
	adds r2, r2, r1
	str r2, [r4, #0x4c]
_0805CB66:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0805cb6c
sub_0805cb6c: @ 0x0805CB6C
	bx lr
	.align 2, 0

	thumb_func_start sub_0805cb70
sub_0805cb70: @ 0x0805CB70
	bx lr
	.align 2, 0

	thumb_func_start sub_0805CB74
sub_0805CB74: @ 0x0805CB74
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r7, #1
	ldrb r0, [r5, #0xb]
	cmp r0, #5
	bls _0805CB82
	b _0805CCD2
_0805CB82:
	lsls r0, r0, #2
	ldr r1, _0805CB8C @ =_0805CB90
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805CB8C: .4byte _0805CB90
_0805CB90: @ jump table
	.4byte _0805CBA8 @ case 0
	.4byte _0805CBC0 @ case 1
	.4byte _0805CBE4 @ case 2
	.4byte _0805CC0C @ case 3
	.4byte _0805CC34 @ case 4
	.4byte _0805CC66 @ case 5
_0805CBA8:
	ldr r0, _0805CBB8 @ =gDisplayRegisters
	adds r0, #0x44
	ldr r1, _0805CBBC @ =0x0000FFFF
	strh r1, [r0]
	movs r0, #0x40
	strb r0, [r5, #0xd]
	b _0805CC52
	.align 2, 0
_0805CBB8: .4byte gDisplayRegisters
_0805CBBC: .4byte 0x0000FFFF
_0805CBC0:
	ldrb r6, [r5, #0xd]
	lsls r3, r6, #0x18
	lsrs r4, r3, #0x1a
	ldr r2, _0805CBE0 @ =gDisplayRegisters
	lsls r0, r4, #4
	orrs r0, r4
	lsls r1, r4, #8
	orrs r0, r1
	lsls r1, r4, #0xc
	orrs r0, r1
	adds r2, #0x44
	strh r0, [r2]
	lsrs r3, r3, #0x18
	cmp r3, #0x20
	beq _0805CC52
	b _0805CC2A
	.align 2, 0
_0805CBE0: .4byte gDisplayRegisters
_0805CBE4:
	ldrb r6, [r5, #0xd]
	lsls r3, r6, #0x18
	lsrs r4, r3, #0x1a
	ldr r2, _0805CC08 @ =gDisplayRegisters
	lsls r0, r4, #4
	orrs r0, r4
	lsls r1, r4, #8
	orrs r0, r1
	lsls r1, r4, #0xc
	orrs r0, r1
	adds r2, #0x44
	strh r0, [r2]
	lsrs r3, r3, #0x18
	cmp r3, #0x30
	beq _0805CC52
	adds r0, r6, #1
	strb r0, [r5, #0xd]
	b _0805CCD2
	.align 2, 0
_0805CC08: .4byte gDisplayRegisters
_0805CC0C:
	ldrb r6, [r5, #0xd]
	lsls r3, r6, #0x18
	lsrs r4, r3, #0x1a
	ldr r2, _0805CC30 @ =gDisplayRegisters
	lsls r0, r4, #4
	orrs r0, r4
	lsls r1, r4, #8
	orrs r0, r1
	lsls r1, r4, #0xc
	orrs r0, r1
	adds r2, #0x44
	strh r0, [r2]
	lsrs r3, r3, #0x18
	cmp r3, #0x10
	beq _0805CC52
_0805CC2A:
	subs r0, r6, #1
	strb r0, [r5, #0xd]
	b _0805CCD2
	.align 2, 0
_0805CC30: .4byte gDisplayRegisters
_0805CC34:
	ldrb r6, [r5, #0xd]
	lsls r3, r6, #0x18
	lsrs r4, r3, #0x1a
	ldr r2, _0805CC5C @ =gDisplayRegisters
	lsls r0, r4, #4
	orrs r0, r4
	lsls r1, r4, #8
	orrs r0, r1
	lsls r1, r4, #0xc
	orrs r0, r1
	adds r2, #0x44
	strh r0, [r2]
	lsrs r3, r3, #0x18
	cmp r3, #0x20
	bne _0805CC60
_0805CC52:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	b _0805CCD2
	.align 2, 0
_0805CC5C: .4byte gDisplayRegisters
_0805CC60:
	adds r0, r6, #2
	strb r0, [r5, #0xd]
	b _0805CCD2
_0805CC66:
	ldrb r6, [r5, #0xd]
	lsls r3, r6, #0x18
	lsrs r4, r3, #0x1a
	ldr r2, _0805CC8C @ =gDisplayRegisters
	lsls r0, r4, #4
	orrs r0, r4
	lsls r1, r4, #8
	orrs r0, r1
	lsls r1, r4, #0xc
	orrs r0, r1
	adds r1, r2, #0
	adds r1, #0x44
	strh r0, [r1]
	cmp r3, #0
	bne _0805CC90
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	b _0805CC94
	.align 2, 0
_0805CC8C: .4byte gDisplayRegisters
_0805CC90:
	subs r0, r6, #1
	strb r0, [r5, #0xd]
_0805CC94:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	movs r1, #0
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805CCD2
	adds r0, r2, #0
	adds r0, #0x44
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	ldr r0, _0805CCDC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805CCE0 @ =0x00013110
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, #0x5a
	ldrb r3, [r1]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r3
	strb r0, [r1]
	ldr r0, [r5, #0x14]
	adds r0, #0x5a
	ldrb r1, [r0]
	ands r2, r1
	strb r2, [r0]
	movs r7, #0
_0805CCD2:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805CCDC: .4byte gEwramData
_0805CCE0: .4byte 0x00013110

	thumb_func_start sub_0805CCE4
sub_0805CCE4: @ 0x0805CCE4
	push {r4, lr}
	movs r4, #0
	ldr r1, _0805CD08 @ =gEwramData
	ldr r1, [r1]
	ldr r2, _0805CD0C @ =0x00000427
	adds r1, r1, r2
	movs r2, #1
	strb r2, [r1]
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #5
	bls _0805CCFE
	b _0805CE14
_0805CCFE:
	lsls r0, r0, #2
	ldr r1, _0805CD10 @ =_0805CD14
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805CD08: .4byte gEwramData
_0805CD0C: .4byte 0x00000427
_0805CD10: .4byte _0805CD14
_0805CD14: @ jump table
	.4byte _0805CD2C @ case 0
	.4byte _0805CD54 @ case 1
	.4byte _0805CD7C @ case 2
	.4byte _0805CDA4 @ case 3
	.4byte _0805CDCC @ case 4
	.4byte _0805CDF8 @ case 5
_0805CD2C:
	movs r1, #0x80
	lsls r1, r1, #0xc
	movs r0, #1
	movs r2, #0
	bl sub_0800ED24
	ldr r0, _0805CD4C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805CD50 @ =0x0000A094
	adds r0, r0, r1
	movs r2, #6
	ldrsh r0, [r0, r2]
	cmp r0, #0x1f
	ble _0805CE14
	b _0805CE12
	.align 2, 0
_0805CD4C: .4byte gEwramData
_0805CD50: .4byte 0x0000A094
_0805CD54:
	movs r1, #0x80
	lsls r1, r1, #9
	movs r0, #1
	movs r2, #0
	bl sub_0800ED24
	ldr r0, _0805CD74 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805CD78 @ =0x0000A094
	adds r0, r0, r1
	movs r2, #6
	ldrsh r0, [r0, r2]
	cmp r0, #0x5f
	ble _0805CE14
	b _0805CE12
	.align 2, 0
_0805CD74: .4byte gEwramData
_0805CD78: .4byte 0x0000A094
_0805CD7C:
	movs r1, #0xe0
	lsls r1, r1, #0xa
	movs r0, #1
	movs r2, #0
	bl sub_0800ED24
	ldr r0, _0805CD9C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805CDA0 @ =0x0000A094
	adds r0, r0, r1
	movs r2, #6
	ldrsh r0, [r0, r2]
	cmp r0, #0xdd
	ble _0805CE14
	b _0805CE12
	.align 2, 0
_0805CD9C: .4byte gEwramData
_0805CDA0: .4byte 0x0000A094
_0805CDA4:
	ldr r1, _0805CDC0 @ =0xFFFC0000
	movs r0, #1
	movs r2, #0
	bl sub_0800ED24
	ldr r0, _0805CDC4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805CDC8 @ =0x0000A094
	adds r0, r0, r1
	movs r2, #6
	ldrsh r0, [r0, r2]
	cmp r0, #0x60
	bgt _0805CE14
	b _0805CE12
	.align 2, 0
_0805CDC0: .4byte 0xFFFC0000
_0805CDC4: .4byte gEwramData
_0805CDC8: .4byte 0x0000A094
_0805CDCC:
	ldr r1, _0805CDEC @ =0xFFFF0000
	movs r0, #1
	movs r2, #0
	bl sub_0800ED24
	ldr r0, _0805CDF0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805CDF4 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0x78
	bne _0805CE14
	b _0805CE12
	.align 2, 0
_0805CDEC: .4byte 0xFFFF0000
_0805CDF0: .4byte gEwramData
_0805CDF4: .4byte 0x00013110
_0805CDF8:
	ldr r1, _0805CE1C @ =0xFFF80000
	movs r0, #1
	movs r2, #0
	bl sub_0800ED24
	ldr r0, _0805CE20 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805CE24 @ =0x0000A094
	adds r0, r0, r1
	movs r2, #6
	ldrsh r0, [r0, r2]
	cmp r0, #0x20
	bgt _0805CE14
_0805CE12:
	movs r4, #1
_0805CE14:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805CE1C: .4byte 0xFFF80000
_0805CE20: .4byte gEwramData
_0805CE24: .4byte 0x0000A094

	thumb_func_start sub_0805ce28
sub_0805ce28: @ 0x0805CE28
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x20
	bl sub_08012078
	adds r5, r0, #0
	cmp r5, #0
	bne _0805CE7C
	movs r0, #0
	bl sub_0805B5E8
	str r0, [r4, #0x14]
	movs r0, #1
	bl sub_0805B5E8
	str r0, [r4, #0x18]
	movs r0, #8
	bl sub_0805B5E8
	adds r1, r0, #0
	str r1, [r4, #0x1c]
	ldr r2, [r4, #0x14]
	cmp r2, #0
	beq _0805CE68
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0805CE62
	cmp r1, #0
	bne _0805CE8A
_0805CE62:
	adds r0, r2, #0
	bl sub_08000E14
_0805CE68:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0805CE72
	bl sub_08000E14
_0805CE72:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0805CE7C
	bl sub_08000E14
_0805CE7C:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _0805CECA
_0805CE8A:
	adds r0, r4, #0
	bl sub_0805D198
	ldr r0, _0805CEB8 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0805CEBC @ =0x0000042C
	adds r3, r2, r0
	ldr r0, [r3]
	movs r1, #1
	orrs r0, r1
	str r0, [r3]
	ldr r1, _0805CEC0 @ =0x0000A094
	adds r2, r2, r1
	movs r1, #6
	ldrsh r0, [r2, r1]
	cmp r0, #0x1f
	ble _0805CEC4
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #5
	strb r0, [r1]
	b _0805CECA
	.align 2, 0
_0805CEB8: .4byte gEwramData
_0805CEBC: .4byte 0x0000042C
_0805CEC0: .4byte 0x0000A094
_0805CEC4:
	adds r0, r4, #0
	adds r0, #0x38
	strb r5, [r0]
_0805CECA:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0805ced0
sub_0805ced0: @ 0x0805CED0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0
	mov sl, r0
	ldr r1, _0805CF00 @ =gEwramData
	ldr r0, [r1]
	ldrh r4, [r0, #0x16]
	movs r6, #0
	ldrb r0, [r5, #0xa]
	mov r8, r1
	cmp r0, #0xb
	bls _0805CEF4
	b _0805D186
_0805CEF4:
	lsls r0, r0, #2
	ldr r1, _0805CF04 @ =_0805CF08
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805CF00: .4byte gEwramData
_0805CF04: .4byte _0805CF08
_0805CF08: @ jump table
	.4byte _0805CF38 @ case 0
	.4byte _0805CFA4 @ case 1
	.4byte _0805CFF0 @ case 2
	.4byte _0805D186 @ case 3
	.4byte _0805D186 @ case 4
	.4byte _0805D186 @ case 5
	.4byte _0805D186 @ case 6
	.4byte _0805D186 @ case 7
	.4byte _0805D186 @ case 8
	.4byte _0805D186 @ case 9
	.4byte _0805D076 @ case 10
	.4byte _0805D168 @ case 11
_0805CF38:
	ldrb r4, [r5, #0xc]
	cmp r4, #0
	bne _0805CF6E
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_080D7910
	ldr r0, _0805CF90 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _0805CF94 @ =0x0000042C
	adds r1, r1, r2
	ldr r0, [r1]
	movs r2, #0x20
	orrs r0, r2
	str r0, [r1]
	str r4, [sp, #4]
	ldr r1, _0805CF98 @ =0x040000D4
	add r0, sp, #4
	str r0, [r1]
	ldr r0, _0805CF9C @ =0x06004000
	str r0, [r1, #4]
	ldr r0, _0805CFA0 @ =0x85000800
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
_0805CF6E:
	adds r0, r5, #0
	bl sub_0805CCE4
	cmp r0, #0
	bne _0805CF7A
	b _0805D186
_0805CF7A:
	movs r0, #0x1c
	bl sub_08013CF0
	ldrb r0, [r5, #0xa]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
	b _0805D186
	.align 2, 0
_0805CF90: .4byte gEwramData
_0805CF94: .4byte 0x0000042C
_0805CF98: .4byte 0x040000D4
_0805CF9C: .4byte 0x06004000
_0805CFA0: .4byte 0x85000800
_0805CFA4:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _0805CFD0
	adds r0, r5, #0
	bl sub_0805CB74
	cmp r0, #0
	bne _0805CFE2
	ldr r2, _0805CFC8 @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _0805CFCC @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	b _0805CFE2
	.align 2, 0
_0805CFC8: .4byte gUnk_03002CB0
_0805CFCC: .4byte 0x0000DFFF
_0805CFD0:
	movs r0, #0xc
	bl sub_08067934
	ldrb r0, [r5, #0xa]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
_0805CFE2:
	movs r0, #0x51
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0801D028
	b _0805D186
_0805CFF0:
	bl sub_08067A04
	cmp r0, #0
	beq _0805D06C
	ldr r6, _0805D05C @ =gEwramData
	ldr r0, [r6]
	ldr r1, _0805D060 @ =0x0001325C
	adds r4, r0, r1
	movs r0, #0x80
	strb r0, [r5, #0xa]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_0803278C
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _0805D018
	movs r0, #1
	strb r0, [r4, #0xd]
_0805D018:
	ldr r0, [r6]
	ldr r2, _0805D064 @ =0x00000427
	adds r0, r0, r2
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r6]
	ldr r1, _0805D068 @ =0x00013110
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, #0x5a
	ldrb r2, [r1]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0805F008
	adds r0, r5, #0
	movs r1, #0
	bl sub_0805B66C
	movs r0, #0x20
	bl sub_08012048
	ldrh r1, [r5, #0x20]
	movs r0, #4
	movs r4, #0
	orrs r0, r1
	strh r0, [r5, #0x20]
	movs r0, #0x26
	bl sub_08013EEC
	b _0805D17E
	.align 2, 0
_0805D05C: .4byte gEwramData
_0805D060: .4byte 0x0001325C
_0805D064: .4byte 0x00000427
_0805D068: .4byte 0x00013110
_0805D06C:
	adds r0, r5, #0
	bl sub_0805D410
	mov sl, r0
	b _0805D186
_0805D076:
	mov r2, r8
	ldr r0, [r2]
	ldr r1, _0805D0B0 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, [r5, #0x18]
	adds r1, r2, #0
	adds r1, #0x42
	ldrh r1, [r1]
	subs r1, #0x20
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, #0x46
	ldrh r2, [r2]
	subs r2, #0x20
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r7, #0x40
	str r7, [sp]
	movs r3, #0x40
	bl sub_08068AD4
	cmp r0, #0
	beq _0805D0B4
	movs r6, #1
	movs r2, #0xe
	mov sb, r2
	b _0805D0E8
	.align 2, 0
_0805D0B0: .4byte 0x00013110
_0805D0B4:
	mov r1, r8
	ldr r0, [r1]
	ldr r2, _0805D158 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r2, [r5, #0x14]
	adds r1, r2, #0
	adds r1, #0x42
	ldrh r1, [r1]
	subs r1, #0x20
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, #0x46
	ldrh r2, [r2]
	subs r2, #0x20
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r7, [sp]
	movs r3, #0x40
	bl sub_08068AD4
	cmp r0, #0
	beq _0805D0E8
	movs r6, #1
	movs r0, #0xd
	mov sb, r0
_0805D0E8:
	cmp r6, #0
	beq _0805D186
	movs r0, #0x42
	ands r4, r0
	cmp r4, #0
	beq _0805D186
	ldr r6, _0805D15C @ =gEwramData
	ldr r1, [r6]
	ldr r2, _0805D160 @ =0x000004BE
	adds r0, r1, r2
	movs r2, #0
	ldrsh r4, [r0, r2]
	cmp r4, #0
	bne _0805D186
	ldr r7, _0805D158 @ =0x00013110
	adds r1, r1, r7
	ldr r0, [r1]
	str r4, [r0, #0x48]
	ldr r0, [r1]
	str r4, [r0, #0x50]
	ldr r1, [r1]
	ldr r0, [r1, #0x4c]
	cmp r0, #0
	bge _0805D11A
	str r4, [r1, #0x4c]
_0805D11A:
	ldr r1, [r6]
	ldr r0, _0805D164 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #1
	orrs r0, r2
	str r0, [r1]
	mov r0, sb
	bl sub_08067934
	ldr r2, [r5, #0x18]
	movs r3, #0
	ldr r0, [r6]
	adds r0, r0, r7
	ldr r0, [r0]
	ldr r1, [r2, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	bge _0805D142
	movs r3, #1
_0805D142:
	adds r2, #0x58
	lsls r3, r3, #6
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	b _0805D180
	.align 2, 0
_0805D158: .4byte 0x00013110
_0805D15C: .4byte gEwramData
_0805D160: .4byte 0x000004BE
_0805D164: .4byte 0x0000042C
_0805D168:
	bl sub_08067A04
	cmp r0, #0
	beq _0805D186
	movs r4, #0
	movs r0, #0x80
	strb r0, [r5, #0xa]
	adds r0, r5, #0
	movs r1, #0
	bl sub_0805B66C
_0805D17E:
	movs r0, #0xa
_0805D180:
	strb r0, [r5, #0xa]
	strb r4, [r5, #0xc]
	strb r4, [r5, #0xb]
_0805D186:
	mov r0, sl
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0805D198
sub_0805D198: @ 0x0805D198
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	movs r0, #0x51
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0801D028
	ldr r7, _0805D2B0 @ =gEwramData
	ldr r3, [r7]
	ldr r5, _0805D2B4 @ =0x00013110
	adds r4, r3, r5
	ldr r1, [r4]
	ldr r0, _0805D2B8 @ =0x0000A094
	mov r8, r0
	add r3, r8
	ldrh r2, [r3, #6]
	movs r0, #0xa8
	subs r0, r0, r2
	adds r1, #0x42
	movs r2, #0
	strh r0, [r1]
	ldr r1, [r4]
	ldrh r0, [r3, #0xa]
	movs r3, #0xb0
	lsls r3, r3, #2
	mov sb, r3
	mov r3, sb
	subs r0, r3, r0
	adds r1, #0x46
	strh r0, [r1]
	ldr r0, [r4]
	str r2, [r0, #0x48]
	ldr r1, [r4]
	adds r1, #0x5a
	ldrb r0, [r1]
	movs r4, #1
	orrs r0, r4
	strb r0, [r1]
	ldr r1, [r6, #0x14]
	ldr r2, [r7]
	adds r2, r2, r5
	ldr r0, [r2]
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x18
	adds r1, #0x42
	strh r0, [r1]
	ldr r1, [r6, #0x14]
	ldr r0, [r2]
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, #0x46
	strh r0, [r1]
	ldr r1, [r6, #0x14]
	adds r0, r1, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #4
	beq _0805D222
	adds r0, r1, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0805D222:
	ldr r1, [r6, #0x14]
	adds r1, #0x5a
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	ldr r1, [r6, #0x14]
	ldrb r0, [r6, #0x10]
	strb r0, [r1, #0x11]
	ldr r1, [r6, #0x18]
	ldr r2, [r7]
	add r2, r8
	ldrh r3, [r2, #6]
	ldr r4, _0805D2BC @ =0x00000119
	adds r0, r4, #0
	subs r0, r0, r3
	adds r1, #0x42
	strh r0, [r1]
	ldr r1, [r6, #0x18]
	ldrh r0, [r2, #0xa]
	mov r2, sb
	subs r0, r2, r0
	adds r1, #0x46
	strh r0, [r1]
	ldr r0, [r6, #0x18]
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldr r1, [r6, #0x18]
	ldr r0, _0805D2C0 @ =0xFFFFA000
	str r0, [r1, #0x48]
	ldr r1, [r6, #0x18]
	ldrb r0, [r6, #0x10]
	strb r0, [r1, #0x11]
	ldr r1, [r6, #0x1c]
	ldr r2, [r7]
	add r2, r8
	ldrh r3, [r2, #6]
	adds r4, #0x56
	adds r0, r4, #0
	subs r0, r0, r3
	adds r1, #0x42
	strh r0, [r1]
	ldr r1, [r6, #0x1c]
	ldrh r2, [r2, #0xa]
	movs r3, #0x9a
	lsls r3, r3, #2
	adds r0, r3, #0
	subs r0, r0, r2
	adds r1, #0x46
	strh r0, [r1]
	ldr r0, [r6, #0x1c]
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldr r2, [r6, #0x1c]
	ldrb r1, [r6, #0x10]
	strb r1, [r2, #0x11]
	ldr r2, [r6, #0x1c]
	ldr r1, _0805D2C4 @ =sub_0805DAA0
	str r1, [r2]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805D2B0: .4byte gEwramData
_0805D2B4: .4byte 0x00013110
_0805D2B8: .4byte 0x0000A094
_0805D2BC: .4byte 0x00000119
_0805D2C0: .4byte 0xFFFFA000
_0805D2C4: .4byte sub_0805DAA0

	thumb_func_start sub_0805D2C8
sub_0805D2C8: @ 0x0805D2C8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	mov r8, r0
	mov r0, sp
	ldr r1, _0805D348 @ =0x081187AC
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
	movs r6, #0
	add r5, sp, #4
	mov r4, sp
_0805D2EC:
	ldr r7, _0805D34C @ =gEwramData
	ldr r0, [r7]
	ldr r1, _0805D350 @ =0x0000A094
	adds r0, r0, r1
	movs r3, #6
	ldrsh r2, [r0, r3]
	ldr r1, [r4]
	subs r1, r1, r2
	adds r1, #0x20
	movs r2, #0xa
	ldrsh r0, [r0, r2]
	ldr r2, _0805D354 @ =0x0000029F
	subs r2, r2, r0
	ldr r3, [r5]
	mov r0, r8
	bl sub_0805E528
	adds r0, #0x3c
	strb r6, [r0]
	adds r5, #8
	adds r4, #8
	adds r6, #1
	cmp r6, #4
	ble _0805D2EC
	ldr r0, [r7]
	ldr r3, _0805D350 @ =0x0000A094
	adds r0, r0, r3
	movs r4, #6
	ldrsh r2, [r0, r4]
	ldr r1, _0805D358 @ =0x0000014F
	subs r1, r1, r2
	movs r2, #0xa
	ldrsh r0, [r0, r2]
	movs r2, #0xa2
	lsls r2, r2, #2
	subs r2, r2, r0
	mov r0, r8
	bl sub_0805E260
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805D348: .4byte 0x081187AC
_0805D34C: .4byte gEwramData
_0805D350: .4byte 0x0000A094
_0805D354: .4byte 0x0000029F
_0805D358: .4byte 0x0000014F

	thumb_func_start sub_0805D35C
sub_0805D35C: @ 0x0805D35C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r7, r0, #0
	mov r0, sp
	ldr r1, _0805D3FC @ =0x081187D4
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
	movs r6, #0
	add r5, sp, #4
	mov r4, sp
_0805D378:
	ldr r0, _0805D400 @ =gEwramData
	mov r8, r0
	ldr r2, [r0]
	ldr r1, _0805D404 @ =0x00013110
	adds r0, r2, r1
	ldr r0, [r0]
	adds r0, #0x42
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r4]
	adds r1, r1, r0
	ldr r0, _0805D408 @ =0x0000A094
	adds r2, r2, r0
	movs r3, #0xa
	ldrsh r0, [r2, r3]
	ldr r2, _0805D40C @ =0x0000029F
	subs r2, r2, r0
	ldr r3, [r5]
	adds r0, r7, #0
	bl sub_0805E528
	adds r1, r6, #5
	adds r0, #0x3c
	strb r1, [r0]
	adds r5, #8
	adds r4, #8
	adds r6, #1
	cmp r6, #1
	ble _0805D378
	mov r4, r8
	ldr r0, [r4]
	ldr r4, _0805D408 @ =0x0000A094
	adds r0, r0, r4
	movs r1, #6
	ldrsh r2, [r0, r1]
	movs r1, #0x7c
	subs r1, r1, r2
	movs r2, #0xa
	ldrsh r0, [r0, r2]
	movs r2, #0xa4
	lsls r2, r2, #2
	subs r2, r2, r0
	adds r0, r7, #0
	bl sub_0805E260
	mov r3, r8
	ldr r0, [r3]
	adds r0, r0, r4
	movs r4, #6
	ldrsh r2, [r0, r4]
	movs r1, #0xc4
	subs r1, r1, r2
	movs r2, #0xa
	ldrsh r0, [r0, r2]
	movs r2, #0xa0
	lsls r2, r2, #2
	subs r2, r2, r0
	adds r0, r7, #0
	bl sub_0805E260
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805D3FC: .4byte 0x081187D4
_0805D400: .4byte gEwramData
_0805D404: .4byte 0x00013110
_0805D408: .4byte 0x0000A094
_0805D40C: .4byte 0x0000029F

	thumb_func_start sub_0805D410
sub_0805D410: @ 0x0805D410
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0
	mov r8, r0
	ldr r1, _0805D43C @ =gEwramData
	ldr r0, [r1]
	adds r5, r0, #0
	adds r5, #0x60
	ldrb r0, [r4, #0xb]
	adds r7, r1, #0
	cmp r0, #8
	bls _0805D430
	b _0805DA8E
_0805D430:
	lsls r0, r0, #2
	ldr r1, _0805D440 @ =_0805D444
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805D43C: .4byte gEwramData
_0805D440: .4byte _0805D444
_0805D444: @ jump table
	.4byte _0805D468 @ case 0
	.4byte _0805D4B8 @ case 1
	.4byte _0805D544 @ case 2
	.4byte _0805D56E @ case 3
	.4byte _0805D64C @ case 4
	.4byte _0805D76C @ case 5
	.4byte _0805D9EA @ case 6
	.4byte _0805DA2C @ case 7
	.4byte _0805DA40 @ case 8
_0805D468:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0805D490
	cmp r0, #1
	bgt _0805D478
	cmp r0, #0
	beq _0805D47E
	b _0805D4AE
_0805D478:
	cmp r0, #2
	beq _0805D4A6
	b _0805D4AE
_0805D47E:
	ldr r2, _0805D48C @ =0x000003B7
	adds r1, r5, r2
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x40
	strb r0, [r4, #0xd]
	b _0805D49E
	.align 2, 0
_0805D48C: .4byte 0x000003B7
_0805D490:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805D4AE
_0805D49E:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	b _0805D4AE
_0805D4A6:
	ldr r3, _0805D4B4 @ =0x000003B7
	adds r1, r5, r3
	movs r0, #0
	strb r0, [r1]
_0805D4AE:
	movs r0, #0x51
	b _0805D962
	.align 2, 0
_0805D4B4: .4byte 0x000003B7
_0805D4B8:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0805D504
	cmp r0, #1
	bgt _0805D4C8
	cmp r0, #0
	beq _0805D4CE
	b _0805DA8E
_0805D4C8:
	cmp r0, #2
	beq _0805D520
	b _0805DA8E
_0805D4CE:
	ldr r1, [r4, #0x14]
	adds r0, r1, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _0805D4E6
	adds r0, r1, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0805D4E6:
	ldr r0, _0805D514 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805D518 @ =0x00000427
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldr r2, _0805D51C @ =0x000003B7
	adds r0, r5, r2
	strb r1, [r0]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
_0805D504:
	adds r0, r4, #0
	bl sub_0805CCE4
	cmp r0, #0
	bne _0805D510
	b _0805DA8E
_0805D510:
	b _0805D6F8
	.align 2, 0
_0805D514: .4byte gEwramData
_0805D518: .4byte 0x00000427
_0805D51C: .4byte 0x000003B7
_0805D520:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0805D530
	b _0805DA8E
_0805D530:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldr r3, _0805D540 @ =0x000003B7
	adds r1, r5, r3
	movs r0, #0
	strb r0, [r1]
	b _0805DA8E
	.align 2, 0
_0805D540: .4byte 0x000003B7
_0805D544:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0805D54C
	b _0805DA8E
_0805D54C:
	ldr r1, [r4, #0x14]
	adds r1, #0x58
	ldrb r2, [r1]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r4, #0x18]
	adds r1, #0x58
	ldrb r0, [r1]
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r1]
	movs r0, #0x10
	bl sub_08013CF0
	b _0805DA88
_0805D56E:
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	bls _0805D576
	b _0805DA8E
_0805D576:
	lsls r0, r0, #2
	ldr r1, _0805D580 @ =_0805D584
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805D580: .4byte _0805D584
_0805D584: @ jump table
	.4byte _0805D598 @ case 0
	.4byte _0805D5C4 @ case 1
	.4byte _0805D5D6 @ case 2
	.4byte _0805D5E8 @ case 3
	.4byte _0805D632 @ case 4
_0805D598:
	adds r0, r4, #0
	bl sub_0805D2C8
	ldrh r1, [r4, #0x20]
	movs r0, #8
	orrs r0, r1
	strh r0, [r4, #0x20]
	ldr r0, _0805D5C0 @ =0x000003B7
	adds r1, r5, r0
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	b _0805DA8E
	.align 2, 0
_0805D5C0: .4byte 0x000003B7
_0805D5C4:
	adds r0, r4, #0
	bl sub_0805CCE4
	cmp r0, #0
	bne _0805D5D0
	b _0805DA8E
_0805D5D0:
	movs r0, #0x20
	strb r0, [r4, #0xd]
	b _0805DA88
_0805D5D6:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0805D5E6
	b _0805DA8E
_0805D5E6:
	b _0805DA88
_0805D5E8:
	adds r0, r4, #0
	bl sub_0805D35C
	ldr r1, [r4, #0x14]
	adds r0, r1, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #5
	beq _0805D606
	adds r0, r1, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0805D606:
	movs r0, #0xda
	lsls r0, r0, #1
	bl sub_080D7910
	ldr r2, [r4, #0x18]
	adds r2, #0x58
	ldrb r3, [r2]
	lsls r0, r3, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x20
	strb r0, [r4, #0xd]
	b _0805DA88
_0805D632:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0805D642
	b _0805DA8E
_0805D642:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0
	b _0805DA8C
_0805D64C:
	ldrb r0, [r4, #0xc]
	cmp r0, #6
	bls _0805D654
	b _0805DA8E
_0805D654:
	lsls r0, r0, #2
	ldr r1, _0805D660 @ =_0805D664
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805D660: .4byte _0805D664
_0805D664: @ jump table
	.4byte _0805D680 @ case 0
	.4byte _0805D69C @ case 1
	.4byte _0805D6AE @ case 2
	.4byte _0805D6E0 @ case 3
	.4byte _0805D704 @ case 4
	.4byte _0805D73E @ case 5
	.4byte _0805D754 @ case 6
_0805D680:
	ldr r2, _0805D698 @ =0x000003B7
	adds r1, r5, r2
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	b _0805DA8E
	.align 2, 0
_0805D698: .4byte 0x000003B7
_0805D69C:
	adds r0, r4, #0
	bl sub_0805CCE4
	cmp r0, #0
	bne _0805D6A8
	b _0805DA8E
_0805D6A8:
	movs r0, #0
	strb r0, [r4, #0xd]
	b _0805DA88
_0805D6AE:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0805D6BE
	b _0805DA8E
_0805D6BE:
	ldrh r1, [r4, #0x20]
	movs r0, #0x10
	orrs r0, r1
	strh r0, [r4, #0x20]
	ldr r0, _0805D6DC @ =0x000001DF
	bl sub_080D7910
	ldr r0, [r4, #0x18]
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0805DA88
	.align 2, 0
_0805D6DC: .4byte 0x000001DF
_0805D6E0:
	ldr r0, [r4, #0x18]
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805D6F0
	b _0805DA8E
_0805D6F0:
	ldrh r1, [r4, #0x20]
	movs r0, #2
	orrs r0, r1
	strh r0, [r4, #0x20]
_0805D6F8:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x10
	strb r0, [r4, #0xd]
	b _0805DA8E
_0805D704:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0805D714
	b _0805DA8E
_0805D714:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xf0
	lsls r0, r0, #1
	bl sub_080D7910
	ldr r1, [r4, #0x18]
	adds r0, r1, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #3
	bne _0805D730
	b _0805DA8E
_0805D730:
	adds r0, r1, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0805DA8E
_0805D73E:
	ldr r0, [r4, #0x18]
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805D74E
	b _0805DA8E
_0805D74E:
	movs r0, #0x58
	strb r0, [r4, #0xd]
	b _0805DA88
_0805D754:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #0
	cmp r1, #0
	beq _0805D75E
	b _0805D8DC
_0805D75E:
	ldr r3, _0805D768 @ =0x000003B7
	adds r0, r5, r3
	strb r1, [r0]
	b _0805DA8E
	.align 2, 0
_0805D768: .4byte 0x000003B7
_0805D76C:
	ldrb r0, [r4, #0xc]
	cmp r0, #6
	bls _0805D774
	b _0805DA8E
_0805D774:
	lsls r0, r0, #2
	ldr r1, _0805D780 @ =_0805D784
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805D780: .4byte _0805D784
_0805D784: @ jump table
	.4byte _0805D7A0 @ case 0
	.4byte _0805D7B4 @ case 1
	.4byte _0805D7D2 @ case 2
	.4byte _0805D8EC @ case 3
	.4byte _0805D974 @ case 4
	.4byte _0805D97E @ case 5
	.4byte _0805D9E0 @ case 6
_0805D7A0:
	ldr r0, _0805D7B0 @ =0x000003B7
	adds r1, r5, r0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x10
	strb r0, [r4, #0xd]
	b _0805DA88
	.align 2, 0
_0805D7B0: .4byte 0x000003B7
_0805D7B4:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0805D7C4
	b _0805DA8E
_0805D7C4:
	movs r0, #0xd2
	strb r0, [r4, #0xd]
	movs r0, #2
	mov r1, r8
	orrs r1, r0
	mov r8, r1
	b _0805DA88
_0805D7D2:
	ldrb r0, [r4, #0xd]
	cmp r0, #0xd0
	bne _0805D824
	ldr r1, [r4, #0x1c]
	adds r0, r1, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, #0x46
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r2, #0
	str r2, [sp]
	movs r3, #0
	bl sub_0805EAFC
	ldr r1, [r4, #0x1c]
	adds r1, #0x58
	ldrb r0, [r1]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r1]
	ldr r2, [r4, #0x1c]
	ldr r0, [r2, #0x40]
	ldr r1, [r2, #0x44]
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	bl sub_0806D578
	ldr r0, [r4, #0x1c]
	bl sub_0805E9F0
	movs r0, #0x6b
	bl sub_080D7910
	ldr r2, _0805D89C @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _0805D8A0 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
_0805D824:
	ldrb r0, [r4, #0xd]
	cmp r0, #0x8f
	bne _0805D856
	bl sub_0800F038
	ldr r0, _0805D8A4 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0805D8A8 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, _0805D8AC @ =0xFFFFFDFF
	ands r0, r2
	str r0, [r1]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_0800E708
	ldr r2, _0805D89C @ =gUnk_03002CB0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
_0805D856:
	ldrb r0, [r4, #0xd]
	cmp r0, #0x8f
	bhi _0805D8DA
	cmp r0, #0x8f
	bne _0805D874
	ldr r0, _0805D8B0 @ =0x00000197
	bl sub_080D7910
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_0805B878
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_0805D874:
	ldrb r1, [r4, #0xd]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805D8B8
	ldr r0, _0805D8A4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805D8B4 @ =0x00013110
	adds r0, r0, r1
	ldr r2, [r0]
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	b _0805D8CE
	.align 2, 0
_0805D89C: .4byte gUnk_03002CB0
_0805D8A0: .4byte 0x0000FEFF
_0805D8A4: .4byte gEwramData
_0805D8A8: .4byte 0x0000042C
_0805D8AC: .4byte 0xFFFFFDFF
_0805D8B0: .4byte 0x00000197
_0805D8B4: .4byte 0x00013110
_0805D8B8:
	ldr r0, _0805D8E4 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0805D8E8 @ =0x00013110
	adds r0, r0, r2
	ldr r1, [r0]
	adds r1, #0x5a
	ldrb r2, [r1]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
_0805D8CE:
	movs r0, #0x52
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0801D028
_0805D8DA:
	ldrb r0, [r4, #0xd]
_0805D8DC:
	subs r0, #1
	strb r0, [r4, #0xd]
	b _0805DA8E
	.align 2, 0
_0805D8E4: .4byte gEwramData
_0805D8E8: .4byte 0x00013110
_0805D8EC:
	adds r6, r7, #0
	ldr r0, [r6]
	ldrh r1, [r0, #0x16]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0805D91C
	movs r0, #0x99
	lsls r0, r0, #1
	bl sub_080D7910
	ldr r2, _0805D914 @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _0805D918 @ =0x0000FEFF
	ands r0, r1
	movs r1, #0
	strh r0, [r2]
	strb r1, [r4, #0xd]
	b _0805DA88
	.align 2, 0
_0805D914: .4byte gUnk_03002CB0
_0805D918: .4byte 0x0000FEFF
_0805D91C:
	bl sub_0800E40C
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	ands r0, r5
	cmp r0, #0
	beq _0805D94C
	ldr r0, [r6]
	ldr r3, _0805D948 @ =0x00013110
	adds r0, r0, r3
	ldr r2, [r0]
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	b _0805D960
	.align 2, 0
_0805D948: .4byte 0x00013110
_0805D94C:
	ldr r0, [r7]
	ldr r1, _0805D970 @ =0x00013110
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, #0x5a
	ldrb r2, [r1]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
_0805D960:
	movs r0, #0x52
_0805D962:
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0801D028
	b _0805DA8E
	.align 2, 0
_0805D970: .4byte 0x00013110
_0805D974:
	bl sub_0800F0AC
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_0805D97E:
	movs r0, #0x52
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0801D028
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0805D99A
	b _0805DA8E
_0805D99A:
	ldr r2, _0805D9D0 @ =gUnk_03002CB0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	movs r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0805D9D4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805D9D8 @ =0x00013110
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, #0x5a
	ldrb r2, [r1]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	strb r3, [r4, #0xd]
	movs r0, #6
	strb r0, [r4, #0xc]
	ldr r2, _0805D9DC @ =0x000003B7
	adds r0, r5, r2
	strb r3, [r0]
	b _0805DA8E
	.align 2, 0
_0805D9D0: .4byte gUnk_03002CB0
_0805D9D4: .4byte gEwramData
_0805D9D8: .4byte 0x00013110
_0805D9DC: .4byte 0x000003B7
_0805D9E0:
	movs r0, #0x80
	mov r3, r8
	orrs r3, r0
	mov r8, r3
	b _0805DA8E
_0805D9EA:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0805D9F6
	cmp r0, #1
	beq _0805DA10
	b _0805DA8E
_0805D9F6:
	movs r0, #0x17
	bl sub_08013CF0
	ldr r0, _0805DA0C @ =0x000003B7
	adds r1, r5, r0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x20
	strb r0, [r4, #0xd]
	b _0805DA88
	.align 2, 0
_0805DA0C: .4byte 0x000003B7
_0805DA10:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805DA8E
	ldr r2, _0805DA28 @ =0x000003B7
	adds r1, r5, r2
	movs r0, #0
	strb r0, [r1]
	b _0805DA88
	.align 2, 0
_0805DA28: .4byte 0x000003B7
_0805DA2C:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0805DA8E
	ldr r0, _0805DA3C @ =0x00001041
	bl sub_0805B878
	b _0805DA88
	.align 2, 0
_0805DA3C: .4byte 0x00001041
_0805DA40:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0805DA64
	cmp r0, #1
	bgt _0805DA8E
	cmp r0, #0
	bne _0805DA8E
	ldr r3, _0805DA60 @ =0x000003B7
	adds r1, r5, r3
	movs r0, #1
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #4
	strb r0, [r1]
	b _0805DA88
	.align 2, 0
_0805DA60: .4byte 0x000003B7
_0805DA64:
	adds r0, r4, #0
	bl sub_0805CCE4
	cmp r0, #0
	beq _0805DA8E
	ldr r0, _0805DA9C @ =0x000003B7
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1]
	movs r1, #0xed
	lsls r1, r1, #2
	adds r2, r5, r1
	ldrb r1, [r2]
	subs r0, #0x10
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
_0805DA88:
	ldrb r0, [r4, #0xc]
	adds r0, #1
_0805DA8C:
	strb r0, [r4, #0xc]
_0805DA8E:
	mov r0, r8
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805DA9C: .4byte 0x000003B7

	thumb_func_start sub_0805DAA0
sub_0805DAA0: @ 0x0805DAA0
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _0805DAE0 @ =gEwramData
	ldrb r1, [r4, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805DAE4 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r5, r1, r0
	ldrh r1, [r5, #0x20]
	movs r0, #4
	ands r0, r1
	adds r3, r2, #0
	cmp r0, #0
	beq _0805DACE
	movs r1, #0
	movs r0, #5
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_0805DACE:
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bls _0805DAD6
	b _0805DC72
_0805DAD6:
	lsls r0, r0, #2
	ldr r1, _0805DAE8 @ =_0805DAEC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805DAE0: .4byte gEwramData
_0805DAE4: .4byte 0x000004E4
_0805DAE8: .4byte _0805DAEC
_0805DAEC: @ jump table
	.4byte _0805DB04 @ case 0
	.4byte _0805DB16 @ case 1
	.4byte _0805DB5C @ case 2
	.4byte _0805DC72 @ case 3
	.4byte _0805DC1E @ case 4
	.4byte _0805DC66 @ case 5
_0805DB04:
	ldrh r1, [r5, #0x20]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0805DB10
	b _0805DC72
_0805DB10:
	movs r1, #0
	movs r0, #1
	b _0805DC16
_0805DB16:
	movs r2, #0x26
	ldrsh r0, [r4, r2]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r0, r3
	bl sub_080009E4
	cmp r0, #0
	bge _0805DB2A
	adds r0, #3
_0805DB2A:
	asrs r1, r0, #2
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ldrh r3, [r4, #0x26]
	adds r0, r0, r3
	movs r2, #0
	strh r0, [r4, #0x26]
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x54]
	adds r1, r1, r0
	str r1, [r4, #0x4c]
	ldrh r1, [r5, #0x20]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0805DB52
	b _0805DC72
_0805DB52:
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r2, [r4, #0xc]
	strb r2, [r4, #0xb]
	b _0805DC72
_0805DB5C:
	ldrb r5, [r4, #0xb]
	cmp r5, #0
	beq _0805DB68
	cmp r5, #1
	beq _0805DBAE
	b _0805DC72
_0805DB68:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0805DB74
	cmp r0, #1
	beq _0805DB96
	b _0805DC72
_0805DB74:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #5
	beq _0805DB8A
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0805DB8A:
	movs r0, #0x60
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	b _0805DC72
_0805DB96:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805DC72
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	strb r5, [r4, #0xc]
	b _0805DC72
_0805DBAE:
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r0, [r3]
	ldr r3, _0805DBF8 @ =0x0000A094
	adds r0, r0, r3
	movs r3, #6
	ldrsh r1, [r0, r3]
	movs r0, #0xca
	subs r0, r0, r1
	cmp r2, r0
	ble _0805DBFC
	movs r1, #0xc0
	lsls r1, r1, #0xa
	movs r2, #0x80
	lsls r2, r2, #0xe
	movs r3, #0xa0
	lsls r3, r3, #9
	str r5, [sp]
	adds r0, r4, #0
	bl sub_0806E140
	movs r1, #4
	ands r1, r0
	cmp r1, #0
	bne _0805DBEC
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
_0805DBEC:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	b _0805DC72
	.align 2, 0
_0805DBF8: .4byte 0x0000A094
_0805DBFC:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #2
	beq _0805DC12
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0805DC12:
	movs r1, #0
	movs r0, #3
_0805DC16:
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	b _0805DC72
_0805DC1E:
	ldrb r5, [r4, #0xb]
	cmp r5, #0
	bne _0805DC72
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
	beq _0805DC5C
	movs r0, #0x6b
	bl sub_080D7910
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	adds r2, r4, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	bl sub_0806D578
	adds r0, r4, #0
	bl sub_0805E9F0
_0805DC5C:
	movs r0, #5
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	b _0805DC72
_0805DC66:
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_0805DC72:
	adds r0, r4, #0
	bl sub_0803F17C
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0805DC80
sub_0805DC80: @ 0x0805DC80
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	movs r0, #9
	bl sub_0805B5E8
	adds r7, r0, #0
	ldr r0, _0805DD6C @ =sub_0805DD7C
	str r0, [r7]
	adds r0, r7, #0
	adds r0, #0x42
	strh r4, [r0]
	adds r0, #4
	strh r5, [r0]
	mov r1, r8
	ldrb r0, [r1, #0x10]
	strb r0, [r7, #0x11]
	strb r6, [r7, #0x13]
	adds r1, r7, #0
	adds r1, #0x36
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r7, #0
	bl sub_0806AF98
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r1, [r7, #0x13]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0805DCEA
	movs r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #8
_0805DCD6:
	ldr r0, [r7, #0x44]
	adds r0, r0, r2
	str r0, [r7, #0x44]
	subs r1, #1
	cmp r1, #0
	bne _0805DCD6
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0x17
	strb r0, [r1]
_0805DCEA:
	movs r3, #0
	ldr r0, _0805DD70 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805DD74 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r7, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	bge _0805DD00
	movs r3, #1
_0805DD00:
	adds r2, r7, #0
	adds r2, #0x58
	lsls r3, r3, #6
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	movs r0, #9
	bl sub_0805B5E8
	adds r4, r0, #0
	ldr r0, _0805DD78 @ =sub_0805E0D0
	str r0, [r4]
	ldrb r0, [r7, #0x10]
	strb r0, [r4, #0x11]
	adds r0, r7, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, #4
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0x10
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldrb r0, [r4, #0x10]
	strb r0, [r7, #0x12]
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x36
	strb r1, [r0]
	adds r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805DD6C: .4byte sub_0805DD7C
_0805DD70: .4byte gEwramData
_0805DD74: .4byte 0x00013110
_0805DD78: .4byte sub_0805E0D0

	thumb_func_start sub_0805DD7C
sub_0805DD7C: @ 0x0805DD7C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _0805DDC8 @ =gEwramData
	ldrb r1, [r4, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _0805DDCC @ =0x000004E4
	adds r0, r0, r3
	ldr r2, [r2]
	adds r6, r2, r0
	ldrb r1, [r4, #0x12]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	adds r3, r2, r0
	ldrh r1, [r6, #0x20]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0805DDB4
	movs r1, #0
	movs r0, #4
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_0805DDB4:
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bls _0805DDBC
	b _0805E0C2
_0805DDBC:
	lsls r0, r0, #2
	ldr r1, _0805DDD0 @ =_0805DDD4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805DDC8: .4byte gEwramData
_0805DDCC: .4byte 0x000004E4
_0805DDD0: .4byte _0805DDD4
_0805DDD4: @ jump table
	.4byte _0805DDE8 @ case 0
	.4byte _0805DE28 @ case 1
	.4byte _0805DE90 @ case 2
	.4byte _0805DF86 @ case 3
	.4byte _0805E0AC @ case 4
_0805DDE8:
	ldrh r1, [r6, #0x20]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0805DDF4
	b _0805E0C2
_0805DDF4:
	bl RandomNumberGenerator
	movs r1, #7
	bl __umodsi3
	adds r1, r4, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	cmp r0, r1
	beq _0805DE0A
	b _0805E0C2
_0805DE0A:
	ldrb r1, [r4, #0x13]
	movs r2, #2
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0805DE24
	movs r0, #0
	strb r2, [r4, #0xa]
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xb]
	b _0805E0C2
_0805DE24:
	movs r0, #1
	b _0805E0A4
_0805DE28:
	ldrb r5, [r4, #0xb]
	cmp r5, #1
	beq _0805DE5E
	cmp r5, #1
	ble _0805DE34
	b _0805E0C2
_0805DE34:
	cmp r5, #0
	beq _0805DE3A
	b _0805E0C2
_0805DE3A:
	bl RandomNumberGenerator
	movs r1, #7
	bl __umodsi3
	adds r1, r4, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	cmp r0, r1
	beq _0805DE50
	b _0805E0C2
_0805DE50:
	movs r0, #0x10
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	strb r5, [r4, #0xc]
	b _0805E0C2
_0805DE5E:
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	adds r1, r0, #0
	cmp r1, #0
	beq _0805DE70
	b _0805E0C2
_0805DE70:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805DE82
	movs r0, #2
	b _0805E0A4
_0805DE82:
	ldr r0, [r4, #0x44]
	ldr r1, _0805DE8C @ =0xFFFF8000
	adds r0, r0, r1
	str r0, [r4, #0x44]
	b _0805E0C2
	.align 2, 0
_0805DE8C: .4byte 0xFFFF8000
_0805DE90:
	ldrb r1, [r4, #0x13]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0805DF74
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0805DEA6
	cmp r0, #1
	beq _0805DF38
	b _0805DF74
_0805DEA6:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805DF14
	movs r0, #9
	bl sub_0805B5E8
	adds r5, r0, #0
	ldr r0, _0805DF10 @ =sub_0805E184
	str r0, [r5]
	ldrb r0, [r4, #0x10]
	strb r0, [r5, #0x11]
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, #4
	strh r0, [r1]
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x5c
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x36
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #2
	beq _0805DF2A
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _0805DF2A
	.align 2, 0
_0805DF10: .4byte sub_0805E184
_0805DF14:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _0805DF2A
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0805DF2A:
	movs r1, #0
	movs r0, #0xa0
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
_0805DF38:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _0805DF74
	bl RandomNumberGenerator
	movs r5, #1
	ands r0, r5
	cmp r0, #0
	bne _0805DF74
	movs r1, #0x80
	lsls r1, r1, #7
	movs r2, #0x80
	lsls r2, r2, #0xe
	movs r3, #0x80
	lsls r3, r3, #0xa
	str r5, [sp]
	adds r0, r4, #0
	bl sub_0806E140
	movs r1, #4
	ands r1, r0
	cmp r1, #0
	bne _0805DF6E
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
_0805DF6E:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
_0805DF74:
	ldrh r1, [r6, #0x20]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0805DF80
	b _0805E0C2
_0805DF80:
	movs r1, #0
	movs r0, #3
	b _0805E0A4
_0805DF86:
	ldrb r1, [r4, #0xb]
	cmp r1, #1
	beq _0805DFAA
	cmp r1, #1
	bgt _0805DF96
	cmp r1, #0
	beq _0805DFA0
	b _0805E0C2
_0805DF96:
	cmp r1, #2
	beq _0805E016
	cmp r1, #3
	beq _0805E036
	b _0805E0C2
_0805DFA0:
	movs r0, #0x20
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	b _0805E030
_0805DFAA:
	ldrb r0, [r4, #0xd]
	ands r1, r0
	cmp r1, #0
	beq _0805DFC8
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	adds r3, r2, #0
	b _0805DFE4
_0805DFC8:
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
_0805DFE4:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805E0C2
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0
	strb r0, [r4, #0xc]
	adds r0, r4, #0
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
	b _0805E0C2
_0805E016:
	bl RandomNumberGenerator
	movs r1, #7
	bl __umodsi3
	adds r1, r4, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	cmp r0, r1
	bne _0805E0C2
	ldrb r0, [r4, #0xb]
	adds r0, #1
	movs r1, #0
_0805E030:
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
	b _0805E0C2
_0805E036:
	bl RandomNumberGenerator
	movs r1, #7
	bl __umodsi3
	adds r1, r4, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	cmp r0, r1
	bne _0805E0C2
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
	beq _0805E082
	movs r0, #0x6b
	bl sub_080D7910
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	adds r2, r4, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	bl sub_0806D578
	adds r0, r4, #0
	bl sub_0805E8C8
_0805E082:
	adds r0, r4, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r4, #0
	adds r1, #0x46
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r1, #0x20
	ldr r2, [r6, #0x18]
	str r2, [sp]
	movs r2, #0
	movs r3, #0
	bl sub_0805ED80
	movs r1, #0
	movs r0, #4
_0805E0A4:
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	b _0805E0C2
_0805E0AC:
	adds r1, r4, #0
	adds r1, #0x59
	ldrb r0, [r1]
	movs r2, #8
	orrs r0, r2
	strb r0, [r1]
	adds r1, r3, #0
	adds r1, #0x59
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
_0805E0C2:
	adds r0, r4, #0
	bl sub_0803F17C
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0805E0D0
sub_0805E0D0: @ 0x0805E0D0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r2, _0805E10C @ =gEwramData
	ldrb r1, [r6, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E110 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r5, r1, r0
	cmp r5, #0
	beq _0805E0FC
	adds r0, r5, #0
	adds r0, #0x36
	adds r1, r6, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0805E114
_0805E0FC:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _0805E17C
	.align 2, 0
_0805E10C: .4byte gEwramData
_0805E110: .4byte 0x000004E4
_0805E114:
	mov r4, sp
	adds r0, r5, #0
	movs r1, #0
	mov r2, sp
	bl sub_0806C3F8
	adds r1, r5, #0
	adds r1, #0x42
	mov r0, sp
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r6, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r0, [r4, #2]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r6, #0
	adds r1, #0x46
	strh r0, [r1]
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
	adds r0, r6, #0
	bl sub_0803F17C
	adds r0, r5, #0
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
_0805E17C:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0805E184
sub_0805E184: @ 0x0805E184
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r2, _0805E1D0 @ =gEwramData
	ldrb r1, [r5, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E1D4 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r6, r1, r0
	movs r0, #8
	mov r8, r0
	movs r1, #8
	rsbs r1, r1, #0
	mov sb, r1
	cmp r6, #0
	beq _0805E1C0
	adds r0, r6, #0
	adds r0, #0x36
	adds r1, r5, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0805E1D8
_0805E1C0:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _0805E250
	.align 2, 0
_0805E1D0: .4byte gEwramData
_0805E1D4: .4byte 0x000004E4
_0805E1D8:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
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
	mov r7, sp
	adds r0, r6, #0
	movs r1, #0
	mov r2, sp
	bl sub_0806C3F8
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0805E20A
	mov r8, sb
_0805E20A:
	adds r1, r6, #0
	adds r1, #0x42
	mov r0, sp
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	add r0, r8
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r1, r6, #0
	adds r1, #0x46
	ldrh r0, [r7, #2]
	ldrh r1, [r1]
	adds r0, r0, r1
	add r0, sb
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_0803F17C
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
_0805E250:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805E260
sub_0805E260: @ 0x0805E260
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	movs r0, #8
	bl sub_0805B5E8
	adds r7, r0, #0
	ldr r0, _0805E2CC @ =sub_0805E2D8
	str r0, [r7]
	adds r0, r7, #0
	adds r0, #0x42
	strh r4, [r0]
	adds r0, #4
	strh r5, [r0]
	ldrb r0, [r6, #0x10]
	strb r0, [r7, #0x11]
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	lsls r1, r1, #9
	strh r1, [r7, #0x26]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r3, #0
	ldr r0, _0805E2D0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805E2D4 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r7, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	bge _0805E2B0
	movs r3, #1
_0805E2B0:
	adds r2, r7, #0
	adds r2, #0x58
	lsls r3, r3, #6
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805E2CC: .4byte sub_0805E2D8
_0805E2D0: .4byte gEwramData
_0805E2D4: .4byte 0x00013110

	thumb_func_start sub_0805E2D8
sub_0805E2D8: @ 0x0805E2D8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r2, _0805E34C @ =gEwramData
	ldrb r1, [r5, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E350 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r4, r1, r0
	ldrh r1, [r4, #0x20]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0805E304
	movs r1, #0
	movs r0, #5
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
_0805E304:
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	bhi _0805E338
	movs r2, #0x26
	ldrsh r0, [r5, r2]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	cmp r0, #0
	bge _0805E31E
	adds r0, #3
_0805E31E:
	asrs r1, r0, #2
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ldrh r2, [r5, #0x26]
	adds r0, r0, r2
	strh r0, [r5, #0x26]
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x54]
	adds r1, r1, r0
	str r1, [r5, #0x4c]
_0805E338:
	ldrb r0, [r5, #0xa]
	cmp r0, #5
	bls _0805E340
	b _0805E51A
_0805E340:
	lsls r0, r0, #2
	ldr r1, _0805E354 @ =_0805E358
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805E34C: .4byte gEwramData
_0805E350: .4byte 0x000004E4
_0805E354: .4byte _0805E358
_0805E358: @ jump table
	.4byte _0805E370 @ case 0
	.4byte _0805E382 @ case 1
	.4byte _0805E388 @ case 2
	.4byte _0805E39A @ case 3
	.4byte _0805E404 @ case 4
	.4byte _0805E50E @ case 5
_0805E370:
	ldrh r1, [r4, #0x20]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0805E37C
	b _0805E51A
_0805E37C:
	movs r1, #0
	movs r0, #1
	b _0805E506
_0805E382:
	movs r1, #0
	movs r0, #2
	b _0805E506
_0805E388:
	ldrh r1, [r4, #0x20]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0805E394
	b _0805E51A
_0805E394:
	movs r1, #0
	movs r0, #4
	b _0805E506
_0805E39A:
	ldrh r1, [r4, #0x20]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0805E3AA
	movs r1, #0
	movs r0, #4
	b _0805E506
_0805E3AA:
	movs r0, #0x26
	ldrsh r4, [r5, r0]
	lsls r4, r4, #0x17
	lsrs r4, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	asrs r0, r0, #8
	lsls r0, r0, #8
	str r0, [r5, #0x48]
	adds r0, r4, #0
	bl sub_080009E4
	asrs r0, r0, #8
	lsls r0, r0, #8
	str r0, [r5, #0x4c]
	ldr r4, [r5, #0x48]
	lsls r4, r4, #1
	str r4, [r5, #0x48]
	movs r1, #3
	bl __divsi3
	str r0, [r5, #0x4c]
	ldr r1, [r5, #0x40]
	adds r1, r1, r4
	str r1, [r5, #0x40]
	ldr r1, [r5, #0x44]
	adds r1, r1, r0
	str r1, [r5, #0x44]
	ldrh r0, [r5, #0x26]
	adds r0, #1
	strh r0, [r5, #0x26]
	mvns r4, r4
	adds r2, r5, #0
	adds r2, #0x58
	lsrs r4, r4, #0x1f
	lsls r4, r4, #6
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	b _0805E518
_0805E404:
	ldrb r1, [r5, #0xb]
	cmp r1, #1
	beq _0805E42C
	cmp r1, #1
	bgt _0805E414
	cmp r1, #0
	beq _0805E41E
	b _0805E51A
_0805E414:
	cmp r1, #2
	beq _0805E49C
	cmp r1, #3
	beq _0805E4B6
	b _0805E51A
_0805E41E:
	movs r0, #0x20
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xc]
	b _0805E51A
_0805E42C:
	ldrb r0, [r5, #0xd]
	ands r1, r0
	cmp r1, #0
	beq _0805E44A
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
	b _0805E466
_0805E44A:
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
_0805E466:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805E51A
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0
	strb r0, [r5, #0xc]
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
	movs r0, #0x10
	strb r0, [r5, #0xd]
	b _0805E51A
_0805E49C:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805E51A
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0
	strb r0, [r5, #0xc]
	b _0805E51A
_0805E4B6:
	bl RandomNumberGenerator
	movs r1, #7
	bl __umodsi3
	adds r1, r5, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	cmp r0, r1
	bne _0805E51A
	movs r1, #0x80
	rsbs r1, r1, #0
	movs r2, #0x40
	rsbs r2, r2, #0
	movs r3, #0xf8
	lsls r3, r3, #1
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [sp]
	adds r0, r5, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _0805E502
	movs r0, #0x6b
	bl sub_080D7910
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	adds r2, r5, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	bl sub_0806D578
	adds r0, r5, #0
	bl sub_0805E9F0
_0805E502:
	movs r1, #0
	movs r0, #5
_0805E506:
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
	b _0805E51A
_0805E50E:
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
_0805E518:
	strb r0, [r2]
_0805E51A:
	adds r0, r5, #0
	bl sub_0803F17C
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0805E528
sub_0805E528: @ 0x0805E528
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	movs r0, #0xa
	bl sub_0805B5E8
	adds r7, r0, #0
	ldr r0, _0805E5C8 @ =sub_0805E5D4
	str r0, [r7]
	adds r0, r7, #0
	adds r0, #0x42
	strh r4, [r0]
	adds r0, #4
	strh r5, [r0]
	adds r0, r7, #0
	bl sub_0806AF98
	mov r1, r8
	ldrb r0, [r1, #0x10]
	strb r0, [r7, #0x11]
	strb r6, [r7, #0x13]
	adds r1, r7, #0
	adds r1, #0x36
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r1, [r7, #0x13]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0805E592
	movs r1, #0x10
	adds r3, r7, #0
	adds r3, #0x5c
	movs r2, #0x80
	lsls r2, r2, #8
_0805E582:
	ldr r0, [r7, #0x44]
	adds r0, r0, r2
	str r0, [r7, #0x44]
	subs r1, #1
	cmp r1, #0
	bne _0805E582
	movs r0, #0x17
	strb r0, [r3]
_0805E592:
	movs r3, #0
	ldr r0, _0805E5CC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805E5D0 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r7, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	bge _0805E5A8
	movs r3, #1
_0805E5A8:
	adds r2, r7, #0
	adds r2, #0x58
	lsls r3, r3, #6
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	adds r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805E5C8: .4byte sub_0805E5D4
_0805E5CC: .4byte gEwramData
_0805E5D0: .4byte 0x00013110

	thumb_func_start sub_0805E5D4
sub_0805E5D4: @ 0x0805E5D4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _0805E614 @ =gEwramData
	ldrb r1, [r4, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E618 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r6, r1, r0
	ldrh r1, [r6, #0x20]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0805E600
	movs r1, #0
	movs r0, #4
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_0805E600:
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bls _0805E608
	b _0805E8BA
_0805E608:
	lsls r0, r0, #2
	ldr r1, _0805E61C @ =_0805E620
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805E614: .4byte gEwramData
_0805E618: .4byte 0x000004E4
_0805E61C: .4byte _0805E620
_0805E620: @ jump table
	.4byte _0805E634 @ case 0
	.4byte _0805E674 @ case 1
	.4byte _0805E6DC @ case 2
	.4byte _0805E78E @ case 3
	.4byte _0805E8AE @ case 4
_0805E634:
	ldrh r1, [r6, #0x20]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0805E640
	b _0805E8BA
_0805E640:
	bl RandomNumberGenerator
	movs r1, #7
	bl __umodsi3
	adds r1, r4, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	cmp r0, r1
	beq _0805E656
	b _0805E8BA
_0805E656:
	ldrb r1, [r4, #0x13]
	movs r2, #2
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0805E670
	movs r0, #0
	strb r2, [r4, #0xa]
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xb]
	b _0805E8BA
_0805E670:
	movs r0, #1
	b _0805E8A6
_0805E674:
	ldrb r5, [r4, #0xb]
	cmp r5, #1
	beq _0805E6AA
	cmp r5, #1
	ble _0805E680
	b _0805E8BA
_0805E680:
	cmp r5, #0
	beq _0805E686
	b _0805E8BA
_0805E686:
	bl RandomNumberGenerator
	movs r1, #7
	bl __umodsi3
	adds r1, r4, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	cmp r0, r1
	beq _0805E69C
	b _0805E8BA
_0805E69C:
	movs r0, #0x10
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	strb r5, [r4, #0xc]
	b _0805E8BA
_0805E6AA:
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	adds r1, r0, #0
	cmp r1, #0
	beq _0805E6BC
	b _0805E8BA
_0805E6BC:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805E6CE
	movs r0, #2
	b _0805E8A6
_0805E6CE:
	ldr r0, [r4, #0x44]
	ldr r2, _0805E6D8 @ =0xFFFF8000
	adds r0, r0, r2
	str r0, [r4, #0x44]
	b _0805E8BA
	.align 2, 0
_0805E6D8: .4byte 0xFFFF8000
_0805E6DC:
	ldrb r1, [r4, #0x13]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0805E752
	ldrb r5, [r4, #0xb]
	cmp r5, #0
	beq _0805E6F2
	cmp r5, #1
	beq _0805E714
	b _0805E77C
_0805E6F2:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _0805E708
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0805E708:
	movs r0, #0xa0
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	strb r5, [r4, #0xc]
_0805E714:
	bl RandomNumberGenerator
	movs r5, #1
	ands r0, r5
	cmp r0, #0
	bne _0805E77C
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _0805E77C
	movs r1, #0x80
	lsls r1, r1, #7
	movs r2, #0x80
	lsls r2, r2, #0xe
	movs r3, #0x80
	lsls r3, r3, #0xa
	str r5, [sp]
	adds r0, r4, #0
	bl sub_0806E140
	movs r1, #4
	ands r1, r0
	cmp r1, #0
	bne _0805E74A
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
_0805E74A:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	b _0805E77C
_0805E752:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805E77C
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0805E77C
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #2
	beq _0805E776
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0805E776:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_0805E77C:
	ldrh r1, [r6, #0x20]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0805E788
	b _0805E8BA
_0805E788:
	movs r1, #0
	movs r0, #3
	b _0805E8A6
_0805E78E:
	ldrb r1, [r4, #0xb]
	cmp r1, #1
	beq _0805E7B2
	cmp r1, #1
	bgt _0805E79E
	cmp r1, #0
	beq _0805E7A8
	b _0805E8BA
_0805E79E:
	cmp r1, #2
	beq _0805E81E
	cmp r1, #3
	beq _0805E83E
	b _0805E8BA
_0805E7A8:
	movs r0, #0x20
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	b _0805E838
_0805E7B2:
	ldrb r0, [r4, #0xd]
	ands r1, r0
	cmp r1, #0
	beq _0805E7D0
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	adds r3, r2, #0
	b _0805E7EC
_0805E7D0:
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
_0805E7EC:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805E8BA
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0
	strb r0, [r4, #0xc]
	adds r0, r4, #0
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
	b _0805E8BA
_0805E81E:
	bl RandomNumberGenerator
	movs r1, #7
	bl __umodsi3
	adds r1, r4, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	cmp r0, r1
	bne _0805E8BA
	ldrb r0, [r4, #0xb]
	adds r0, #1
	movs r1, #0
_0805E838:
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
	b _0805E8BA
_0805E83E:
	bl RandomNumberGenerator
	movs r1, #7
	bl __umodsi3
	adds r1, r4, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	cmp r0, r1
	bne _0805E8BA
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
	beq _0805E884
	movs r0, #0x6b
	bl sub_080D7910
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	adds r2, r4, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	bl sub_0806D578
_0805E884:
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r4, #0
	adds r1, #0x46
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r1, #0x20
	ldr r2, [r6, #0x18]
	str r2, [sp]
	movs r2, #0
	movs r3, #0
	bl sub_0805ED80
	movs r1, #0
	movs r0, #4
_0805E8A6:
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	b _0805E8BA
_0805E8AE:
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_0805E8BA:
	adds r0, r4, #0
	bl sub_0803F17C
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0805E8C8
sub_0805E8C8: @ 0x0805E8C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	movs r0, #0
	mov sl, r0
	movs r1, #6
	mov sb, r1
_0805E8DC:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _0805E9E0 @ =sub_0805F044
	bl sub_08000DA0
	adds r7, r0, #0
	cmp r7, #0
	beq _0805E9C0
	ldr r4, _0805E9E4 @ =0x085267D8
	add r4, sl
	mov r2, r8
	ldrb r0, [r2, #0x10]
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
	ldr r1, _0805E9E8 @ =0x0824C910
	bl sub_0803B924
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0805E9EC @ =sub_0803B9D0
	str r0, [r7, #4]
	mov r1, r8
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x40]
	ldr r0, [r1, #0x44]
	str r0, [r7, #0x44]
	movs r5, #0
	ldrsb r5, [r4, r5]
	adds r1, r7, #0
	adds r1, #0x46
	movs r0, #1
	ldrsb r0, [r4, r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	ldrb r0, [r4, #2]
	adds r1, #0x1f
	strb r0, [r1]
	bl RandomNumberGenerator
	movs r1, #3
	ldrsb r1, [r4, r1]
	adds r1, #0x10
	movs r3, #0x1f
	ands r0, r3
	subs r1, r1, r0
	lsls r1, r1, #0xc
	str r1, [r7, #0x48]
	bl RandomNumberGenerator
	movs r1, #4
	ldrsb r1, [r4, r1]
	adds r1, #0x10
	movs r2, #0x1f
	ands r0, r2
	subs r1, r1, r0
	lsls r1, r1, #0xc
	rsbs r1, r1, #0
	str r1, [r7, #0x4c]
	movs r0, #5
	ldrsb r0, [r4, r0]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	strb r0, [r7, #0xd]
	ldrb r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0805E9B6
	ldr r0, [r7, #0x48]
	rsbs r0, r0, #0
	str r0, [r7, #0x48]
	rsbs r5, r5, #0
_0805E9B6:
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, r0, r5
	strh r0, [r1]
_0805E9C0:
	movs r3, #6
	add sl, r3
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	cmp r1, #0
	bge _0805E8DC
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805E9E0: .4byte sub_0805F044
_0805E9E4: .4byte 0x085267D8
_0805E9E8: .4byte 0x0824C910
_0805E9EC: .4byte sub_0803B9D0

	thumb_func_start sub_0805E9F0
sub_0805E9F0: @ 0x0805E9F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	movs r0, #0
	mov sl, r0
	movs r1, #6
	mov sb, r1
_0805EA04:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _0805EAEC @ =sub_0805F044
	bl sub_08000DA0
	adds r7, r0, #0
	cmp r7, #0
	beq _0805EACE
	ldr r4, _0805EAF0 @ =0x08526802
	add r4, sl
	mov r3, r8
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
	ldr r1, _0805EAF4 @ =0x08215CBC
	bl sub_0803B924
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0805EAF8 @ =sub_0803B9D0
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
	movs r0, #5
	ldrsb r0, [r4, r0]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	strb r0, [r7, #0xd]
	ldrb r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0805EAC4
	rsbs r0, r3, #0
	str r0, [r7, #0x48]
	rsbs r2, r2, #0
_0805EAC4:
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, r0, r2
	strh r0, [r1]
_0805EACE:
	movs r0, #6
	add sl, r0
	movs r1, #1
	rsbs r1, r1, #0
	add sb, r1
	mov r3, sb
	cmp r3, #0
	bge _0805EA04
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805EAEC: .4byte sub_0805F044
_0805EAF0: .4byte 0x08526802
_0805EAF4: .4byte 0x08215CBC
_0805EAF8: .4byte sub_0803B9D0

	thumb_func_start sub_0805EAFC
sub_0805EAFC: @ 0x0805EAFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	mov r8, r1
	mov sb, r2
	mov sl, r3
	ldr r2, _0805EBD0 @ =sub_0805EC20
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r6, r0, #0
	cmp r6, #0
	beq _0805EC0E
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0x13
	strb r0, [r1]
	ldr r0, _0805EBD4 @ =0x081C15F4
	bl sub_0803AFB8
	adds r5, r0, #0
	ldr r4, _0805EBD8 @ =0x0820ED60
	mov r0, sb
	bl sub_08032B14
	adds r3, r0, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	adds r0, r6, #0
	movs r1, #6
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	movs r0, #1
	strb r0, [r6, #0xc]
	ldr r0, _0805EBDC @ =sub_0803B9D0
	str r0, [r6, #4]
	ldr r2, _0805EBE0 @ =sub_0805F0B0
	adds r0, r6, #0
	movs r1, #0xb
	movs r3, #0
	bl sub_0804277C
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0805EBE4 @ =0x0C0CFAFA
	adds r0, r6, #0
	bl sub_08042884
	adds r0, r6, #0
	adds r0, #0x42
	strh r7, [r0]
	adds r0, #4
	mov r1, r8
	strh r1, [r0]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _0805EBF8
	ldr r0, _0805EBE8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805EBEC @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r2, [r0, #0x44]
	ldr r0, _0805EBF0 @ =0xFFF80000
	adds r2, r2, r0
	adds r0, r6, #0
	bl sub_0802D344
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r0, r1
	ldr r1, _0805EBF4 @ =0x0000FFFF
	ands r0, r1
	str r0, [r6, #0x18]
	ldr r0, [sp, #0x20]
	str r0, [r6, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r6, #0x20]
	b _0805EBFC
	.align 2, 0
_0805EBD0: .4byte sub_0805EC20
_0805EBD4: .4byte 0x081C15F4
_0805EBD8: .4byte 0x0820ED60
_0805EBDC: .4byte sub_0803B9D0
_0805EBE0: .4byte sub_0805F0B0
_0805EBE4: .4byte 0x0C0CFAFA
_0805EBE8: .4byte gEwramData
_0805EBEC: .4byte 0x00013110
_0805EBF0: .4byte 0xFFF80000
_0805EBF4: .4byte 0x0000FFFF
_0805EBF8:
	movs r0, #0x63
	strb r0, [r6, #0xa]
_0805EBFC:
	mov r0, sb
	adds r0, #5
	adds r1, r6, #0
	adds r1, #0x36
	strb r0, [r1]
	mov r1, sl
	strh r1, [r6, #0x32]
	movs r0, #0xc8
	strb r0, [r6, #0xd]
_0805EC0E:
	adds r0, r6, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805EC20
sub_0805EC20: @ 0x0805EC20
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bhi _0805ECA2
	ldr r0, _0805ED2C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805ED30 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r2, [r0, #0x44]
	ldr r0, _0805ED34 @ =0xFFF00000
	adds r2, r2, r0
	ldr r3, [r5, #0x18]
	ldr r0, [r5, #0x1c]
	str r0, [sp]
	adds r0, r5, #0
	bl sub_0802D408
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x1c]
	adds r0, #0x2a
	str r0, [r5, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #7
	cmp r0, r2
	ble _0805EC5C
	str r2, [r5, #0x1c]
_0805EC5C:
	ldr r0, [r5, #0x20]
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r5, #0x20]
	movs r1, #0x80
	lsls r1, r1, #0xc
	cmp r0, r1
	ble _0805EC70
	str r1, [r5, #0x20]
_0805EC70:
	ldr r0, [r5, #0x18]
	adds r0, r0, r2
	bl sub_080009E4
	ldr r1, [r5, #0x20]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x18]
	bl sub_080009E4
	ldr r1, [r5, #0x20]
	asrs r0, r0, #8
	asrs r1, r1, #8
	adds r2, r0, #0
	muls r2, r1, r2
	str r2, [r5, #0x4c]
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	adds r0, r0, r2
	str r0, [r5, #0x44]
_0805ECA2:
	add r0, sp, #8
	adds r1, r5, #0
	bl sub_080421AC
	ldrb r1, [r5, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0805ED18
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r7, r0, #0x1c
	movs r4, #0x80
	lsls r4, r4, #0xe
	adds r0, r4, #0
	bl sub_0802D5EC
	ldr r1, [r5, #0x40]
	adds r6, r1, r0
	adds r0, r4, #0
	bl sub_0802D5EC
	ldr r1, [r5, #0x44]
	adds r1, r1, r0
	ldr r2, [r5, #0x48]
	cmp r2, #0
	bge _0805ECDE
	adds r2, #0x3f
_0805ECDE:
	asrs r2, r2, #6
	ldr r3, [r5, #0x4c]
	cmp r3, #0
	bge _0805ECE8
	adds r3, #0x3f
_0805ECE8:
	asrs r3, r3, #6
	movs r0, #8
	str r0, [sp]
	str r7, [sp, #4]
	adds r0, r6, #0
	bl sub_08045B44
	adds r1, r0, #0
	cmp r1, #0
	beq _0805ED18
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0805ED06
	adds r0, #3
_0805ED06:
	asrs r0, r0, #2
	str r0, [r1, #0x48]
	ldr r0, [r5, #0x4c]
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0805ED14
	adds r0, #3
_0805ED14:
	asrs r0, r0, #2
	str r0, [r1, #0x4c]
_0805ED18:
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _0805ED38
	cmp r0, #1
	beq _0805ED54
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	b _0805ED6C
	.align 2, 0
_0805ED2C: .4byte gEwramData
_0805ED30: .4byte 0x00013110
_0805ED34: .4byte 0xFFF00000
_0805ED38:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805ED6C
	movs r0, #1
	strb r0, [r5, #0xf]
	movs r0, #0x40
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	b _0805ED6C
_0805ED54:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805ED6C
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_0805ED6C:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _0805ED78
	adds r0, r5, #0
	bl sub_0803F17C
_0805ED78:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0805ED80
sub_0805ED80: @ 0x0805ED80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r7, [sp, #0x20]
	ldr r2, _0805EE6C @ =sub_0805EE88
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r6, r0, #0
	cmp r6, #0
	beq _0805EE5A
	str r7, [r6, #0x24]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0
	mov sl, r0
	movs r0, #0x13
	strb r0, [r1]
	ldr r0, _0805EE70 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0805EE74 @ =0x0820ED60
	adds r0, r6, #0
	movs r3, #6
	bl sub_0803B924
	adds r0, r6, #0
	movs r1, #0x16
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	movs r0, #1
	strb r0, [r6, #0xc]
	ldr r0, _0805EE78 @ =sub_0803B9D0
	str r0, [r6, #4]
	ldr r2, _0805EE7C @ =sub_0805F0F0
	adds r0, r6, #0
	movs r1, #0xb
	movs r3, #0
	bl sub_0804277C
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0805EE80 @ =0x0C0CFAFA
	adds r0, r6, #0
	bl sub_08042884
	adds r0, r6, #0
	adds r0, #0x42
	strh r4, [r0]
	adds r0, #4
	strh r5, [r0]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r4, [r7, #0x40]
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	lsls r1, r1, #0xc
	movs r0, #0x80
	lsls r0, r0, #0xc
	adds r1, r1, r0
	ldr r2, [r7, #0x44]
	subs r2, r2, r1
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0802D344
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r0, r1
	ldr r1, _0805EE84 @ =0x0000FFFF
	ands r0, r1
	str r0, [r6, #0x18]
	mov r0, sl
	str r0, [r6, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r6, #0x20]
	mov r0, r8
	adds r0, #5
	adds r1, r6, #0
	adds r1, #0x36
	strb r0, [r1]
	mov r1, sb
	strh r1, [r6, #0x32]
	movs r0, #0xc8
	strb r0, [r6, #0xd]
_0805EE5A:
	adds r0, r6, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805EE6C: .4byte sub_0805EE88
_0805EE70: .4byte 0x081C15F4
_0805EE74: .4byte 0x0820ED60
_0805EE78: .4byte sub_0803B9D0
_0805EE7C: .4byte sub_0805F0F0
_0805EE80: .4byte 0x0C0CFAFA
_0805EE84: .4byte 0x0000FFFF

	thumb_func_start sub_0805EE88
sub_0805EE88: @ 0x0805EE88
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldr r4, [r5, #0x24]
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bhi _0805EF02
	ldr r1, [r4, #0x40]
	ldr r2, [r4, #0x44]
	ldr r0, _0805EF3C @ =0xFFF00000
	adds r2, r2, r0
	ldr r3, [r5, #0x18]
	ldr r0, [r5, #0x1c]
	str r0, [sp]
	adds r0, r5, #0
	bl sub_0802D408
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x1c]
	adds r0, #0x2a
	str r0, [r5, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #7
	cmp r0, r2
	ble _0805EEBC
	str r2, [r5, #0x1c]
_0805EEBC:
	ldr r0, [r5, #0x20]
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r5, #0x20]
	movs r1, #0x80
	lsls r1, r1, #0xc
	cmp r0, r1
	ble _0805EED0
	str r1, [r5, #0x20]
_0805EED0:
	ldr r0, [r5, #0x18]
	adds r0, r0, r2
	bl sub_080009E4
	ldr r1, [r5, #0x20]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x18]
	bl sub_080009E4
	ldr r1, [r5, #0x20]
	asrs r0, r0, #8
	asrs r1, r1, #8
	adds r2, r0, #0
	muls r2, r1, r2
	str r2, [r5, #0x4c]
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	adds r0, r0, r2
	str r0, [r5, #0x44]
_0805EF02:
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r1, [r0]
	subs r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, #4
	ldrh r2, [r0]
	subs r2, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0x20
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x20
	bl sub_08068AD4
	cmp r0, #0
	beq _0805EF40
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	movs r0, #0xbc
	bl sub_080D7910
	b _0805F000
	.align 2, 0
_0805EF3C: .4byte 0xFFF00000
_0805EF40:
	ldrb r1, [r5, #0xd]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805EFAE
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r7, r0, #0x1c
	movs r4, #0x80
	lsls r4, r4, #0xe
	adds r0, r4, #0
	bl sub_0802D5EC
	ldr r1, [r5, #0x40]
	adds r6, r1, r0
	adds r0, r4, #0
	bl sub_0802D5EC
	ldr r1, [r5, #0x44]
	adds r1, r1, r0
	ldr r2, [r5, #0x48]
	cmp r2, #0
	bge _0805EF74
	adds r2, #0x3f
_0805EF74:
	asrs r2, r2, #6
	ldr r3, [r5, #0x4c]
	cmp r3, #0
	bge _0805EF7E
	adds r3, #0x3f
_0805EF7E:
	asrs r3, r3, #6
	movs r0, #8
	str r0, [sp]
	str r7, [sp, #4]
	adds r0, r6, #0
	bl sub_08045B44
	adds r1, r0, #0
	cmp r1, #0
	beq _0805EFAE
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0805EF9C
	adds r0, #3
_0805EF9C:
	asrs r0, r0, #2
	str r0, [r1, #0x48]
	ldr r0, [r5, #0x4c]
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0805EFAA
	adds r0, #3
_0805EFAA:
	asrs r0, r0, #2
	str r0, [r1, #0x4c]
_0805EFAE:
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _0805EFC0
	cmp r0, #1
	beq _0805EFDC
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	b _0805EFF4
_0805EFC0:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805EFF4
	movs r0, #1
	strb r0, [r5, #0xf]
	movs r0, #0x40
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	b _0805EFF4
_0805EFDC:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805EFF4
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_0805EFF4:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _0805F000
	adds r0, r5, #0
	bl sub_0803F17C
_0805F000:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0805F008
sub_0805F008: @ 0x0805F008
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x14]
	adds r0, r1, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #5
	beq _0805F024
	adds r0, r1, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0805F024:
	ldr r0, [r4, #0x18]
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldr r2, [r4, #0x1c]
	adds r2, #0x59
	ldrb r1, [r2]
	movs r3, #8
	orrs r1, r3
	strb r1, [r2]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805F044
sub_0805F044: @ 0x0805F044
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
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
	beq _0805F080
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0805F080
	adds r0, r4, #0
	adds r0, #0x46
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0xaa
	ble _0805F08E
_0805F080:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _0805F0A6
_0805F08E:
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
_0805F0A6:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805F0B0
sub_0805F0B0: @ 0x0805F0B0
	push {lr}
	sub sp, #4
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	ldr r0, _0805F0E4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805F0E8 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0805F0EC @ =0xFFF00000
	str r1, [sp]
	movs r1, #0xc
	movs r2, #6
	movs r3, #0
	bl sub_08045BC8
	movs r0, #0xbc
	bl sub_080D7910
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0805F0E4: .4byte gEwramData
_0805F0E8: .4byte 0x00013110
_0805F0EC: .4byte 0xFFF00000

	thumb_func_start sub_0805F0F0
sub_0805F0F0: @ 0x0805F0F0
	push {lr}
	sub sp, #4
	ldr r3, [r0, #0x24]
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	ldr r0, _0805F11C @ =0xFFF00000
	str r0, [sp]
	adds r0, r3, #0
	movs r1, #0xc
	movs r2, #6
	movs r3, #0
	bl sub_08045BC8
	movs r0, #0xbc
	bl sub_080D7910
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0805F11C: .4byte 0xFFF00000

	thumb_func_start sub_0805f120
sub_0805f120: @ 0x0805F120
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x21
	bl sub_08012078
	cmp r0, #0
	bne _0805F142
	ldr r5, _0805F150 @ =gEwramData
	ldr r0, [r5]
	ldr r1, _0805F154 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x80
	ble _0805F158
_0805F142:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _0805F1BC
	.align 2, 0
_0805F150: .4byte gEwramData
_0805F154: .4byte 0x00013110
_0805F158:
	adds r0, r4, #0
	movs r1, #5
	bl sub_0805B754
	cmp r0, #0
	bne _0805F16C
	adds r0, r4, #0
	bl sub_08000E14
	b _0805F1BC
_0805F16C:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r3, [r5]
	ldr r0, _0805F1C4 @ =0x0000A094
	adds r2, r3, r0
	ldrh r1, [r2, #6]
	movs r0, #0xa0
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r1, [r2, #0xa]
	movs r0, #0xc0
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #8
	str r0, [r4, #0x48]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0805F1C8 @ =0x0000042C
	adds r3, r3, r1
	ldr r0, [r3]
	movs r1, #1
	orrs r0, r1
	str r0, [r3]
_0805F1BC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805F1C4: .4byte 0x0000A094
_0805F1C8: .4byte 0x0000042C

	thumb_func_start sub_0805F1CC
sub_0805F1CC: @ 0x0805F1CC
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	ldrb r0, [r4, #0x18]
	cmp r0, #5
	bhi _0805F25E
	lsls r0, r0, #2
	ldr r1, _0805F1E4 @ =_0805F1E8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805F1E4: .4byte _0805F1E8
_0805F1E8: @ jump table
	.4byte _0805F200 @ case 0
	.4byte _0805F210 @ case 1
	.4byte _0805F25E @ case 2
	.4byte _0805F226 @ case 3
	.4byte _0805F238 @ case 4
	.4byte _0805F25C @ case 5
_0805F200:
	ldr r0, _0805F20C @ =0x00001010
	bl sub_080D7910
	movs r0, #0xa0
	strb r0, [r4, #0x19]
	b _0805F250
	.align 2, 0
_0805F20C: .4byte 0x00001010
_0805F210:
	ldrb r0, [r4, #0x19]
	subs r0, #1
	strb r0, [r4, #0x19]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805F25E
	movs r0, #0x16
	bl sub_08013CF0
	b _0805F250
_0805F226:
	ldr r0, _0805F234 @ =0x00001010
	bl sub_080D7910
	movs r0, #0xa0
	strb r0, [r4, #0x19]
	b _0805F250
	.align 2, 0
_0805F234: .4byte 0x00001010
_0805F238:
	ldrb r0, [r4, #0x19]
	subs r0, #1
	strb r0, [r4, #0x19]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805F25E
	ldr r0, _0805F258 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x60
	bl sub_08013960
_0805F250:
	ldrb r0, [r4, #0x18]
	adds r0, #1
	strb r0, [r4, #0x18]
	b _0805F25E
	.align 2, 0
_0805F258: .4byte gEwramData
_0805F25C:
	movs r5, #1
_0805F25E:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805f268
sub_0805f268: @ 0x0805F268
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r0, #0
	mov r8, r0
	ldr r7, _0805F28C @ =gEwramData
	ldr r6, [r7]
	adds r0, r6, #0
	adds r0, #0x60
	ldrb r5, [r4, #0xa]
	cmp r5, #1
	beq _0805F2E0
	cmp r5, #1
	bgt _0805F290
	cmp r5, #0
	beq _0805F298
	b _0805F49E
	.align 2, 0
_0805F28C: .4byte gEwramData
_0805F290:
	cmp r5, #0x80
	bne _0805F296
	b _0805F48C
_0805F296:
	b _0805F49E
_0805F298:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0805F2BE
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_0805B878
	movs r0, #0xf
	bl sub_08067934
	ldr r0, _0805F2DC @ =0x00000417
	adds r1, r6, r0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x20
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_0805F2BE:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0805F2CE
	b _0805F49E
_0805F2CE:
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	mov r1, r8
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	b _0805F49E
	.align 2, 0
_0805F2DC: .4byte 0x00000417
_0805F2E0:
	bl sub_08067A04
	cmp r0, #0
	beq _0805F2EC
	movs r0, #0x80
	strb r0, [r4, #0xa]
_0805F2EC:
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _0805F388
	cmp r0, #1
	bgt _0805F2FC
	cmp r0, #0
	beq _0805F302
	b _0805F49E
_0805F2FC:
	cmp r0, #2
	beq _0805F3DC
	b _0805F49E
_0805F302:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0805F322
	cmp r0, #1
	bgt _0805F312
	cmp r0, #0
	beq _0805F31C
	b _0805F49E
_0805F312:
	cmp r0, #2
	beq _0805F334
	cmp r0, #3
	beq _0805F36E
	b _0805F49E
_0805F31C:
	strb r5, [r4, #0xc]
	movs r0, #0x30
	strb r0, [r4, #0xd]
_0805F322:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0805F332
	b _0805F49E
_0805F332:
	b _0805F438
_0805F334:
	ldr r0, [r7]
	ldr r1, _0805F364 @ =0x00013110
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x56
	ble _0805F368
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, [r7]
	ldr r1, _0805F364 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x42
	movs r1, #0x57
	strh r1, [r0]
	b _0805F438
	.align 2, 0
_0805F364: .4byte 0x00013110
_0805F368:
	movs r0, #0x10
	mov r8, r0
	b _0805F49E
_0805F36E:
	movs r0, #0x16
	bl sub_08013CF0
	ldr r1, _0805F384 @ =0x00000417
	adds r0, r6, r1
	mov r1, r8
	strb r1, [r0]
	strb r5, [r4, #0xb]
	strb r1, [r4, #0xc]
	b _0805F49E
	.align 2, 0
_0805F384: .4byte 0x00000417
_0805F388:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0805F394
	cmp r0, #1
	beq _0805F39C
	b _0805F49E
_0805F394:
	mov r0, r8
	strb r0, [r4, #0x14]
	movs r0, #0xff
	b _0805F436
_0805F39C:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	movs r5, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805F49E
	ldr r0, _0805F3D8 @ =0x0852682C
	ldrb r1, [r4, #0x14]
	adds r2, r1, #1
	strb r2, [r4, #0x14]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r1, r1, r0
	ldrb r1, [r1]
	cmp r1, #0xff
	bne _0805F3C6
	movs r1, #0
	mov r0, r8
	strb r0, [r4, #0x14]
_0805F3C6:
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r4, #0xd]
	orrs r0, r5
	strb r0, [r4, #0xd]
	b _0805F49E
	.align 2, 0
_0805F3D8: .4byte 0x0852682C
_0805F3DC:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0805F428
	cmp r0, #1
	bgt _0805F3EC
	cmp r0, #0
	beq _0805F3F2
	b _0805F49E
_0805F3EC:
	cmp r0, #2
	beq _0805F44E
	b _0805F49E
_0805F3F2:
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_0805B878
	ldr r1, _0805F440 @ =0x00000417
	adds r0, r6, r1
	strb r5, [r0]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _0805F422
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0805F422:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_0805F428:
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0xff
	ble _0805F444
	movs r0, #0x10
_0805F436:
	strb r0, [r4, #0xd]
_0805F438:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	b _0805F49E
	.align 2, 0
_0805F440: .4byte 0x00000417
_0805F444:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	b _0805F49E
_0805F44E:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805F49E
	ldr r1, _0805F484 @ =0x00000417
	adds r0, r6, r1
	mov r1, r8
	strb r1, [r0]
	ldr r0, _0805F488 @ =0x00000414
	adds r2, r6, r0
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #4
	strb r0, [r4, #0x18]
	b _0805F49E
	.align 2, 0
_0805F484: .4byte 0x00000417
_0805F488: .4byte 0x00000414
_0805F48C:
	bl sub_08013960
	movs r0, #0x21
	bl sub_08012048
	adds r0, r4, #0
	movs r1, #1
	bl sub_0805B66C
_0805F49E:
	ldrb r0, [r4, #0xa]
	cmp r0, #0x80
	beq _0805F4AA
	adds r0, r4, #0
	bl sub_0803F17C
_0805F4AA:
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805f4b8
sub_0805f4b8: @ 0x0805F4B8
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x22
	bl sub_08012078
	cmp r0, #0
	beq _0805F4D0
	adds r0, r4, #0
	movs r1, #1
	bl sub_0805B66C
	b _0805F52C
_0805F4D0:
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805B754
	cmp r0, #0
	bne _0805F4E4
	adds r0, r4, #0
	bl sub_08000E14
	b _0805F52C
_0805F4E4:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _0805F534 @ =gEwramData
	ldr r3, [r0]
	ldr r0, _0805F538 @ =0x0000A094
	adds r2, r3, r0
	ldrh r0, [r2, #6]
	movs r1, #0xa0
	subs r0, r1, r0
	movs r5, #0x42
	strh r0, [r5, r4]
	ldrh r0, [r2, #0xa]
	subs r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x46
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _0805F53C @ =0x0000042C
	adds r3, r3, r0
	ldr r0, [r3]
	movs r1, #1
	orrs r0, r1
	str r0, [r3]
_0805F52C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805F534: .4byte gEwramData
_0805F538: .4byte 0x0000A094
_0805F53C: .4byte 0x0000042C

	thumb_func_start sub_0805f540
sub_0805f540: @ 0x0805F540
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	movs r0, #0
	mov sb, r0
	ldr r1, _0805F568 @ =gEwramData
	mov r8, r1
	ldr r7, [r1]
	adds r0, r7, #0
	adds r0, #0x60
	ldrb r5, [r4, #0xa]
	cmp r5, #1
	beq _0805F5BC
	cmp r5, #1
	bgt _0805F56C
	cmp r5, #0
	beq _0805F574
	b _0805F712
	.align 2, 0
_0805F568: .4byte gEwramData
_0805F56C:
	cmp r5, #0x80
	bne _0805F572
	b _0805F700
_0805F572:
	b _0805F712
_0805F574:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0805F59A
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_0805B878
	movs r0, #0x10
	bl sub_08067934
	ldr r2, _0805F5B8 @ =0x00000417
	adds r1, r7, r2
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x20
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_0805F59A:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0805F5AA
	b _0805F712
_0805F5AA:
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	mov r0, sb
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xb]
	b _0805F712
	.align 2, 0
_0805F5B8: .4byte 0x00000417
_0805F5BC:
	bl sub_08067A04
	cmp r0, #0
	beq _0805F5C8
	movs r0, #0x80
	strb r0, [r4, #0xa]
_0805F5C8:
	ldrb r6, [r4, #0xb]
	cmp r6, #0
	beq _0805F5D4
	cmp r6, #1
	beq _0805F644
	b _0805F712
_0805F5D4:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0805F5F4
	cmp r0, #1
	bgt _0805F5E4
	cmp r0, #0
	beq _0805F5EE
	b _0805F712
_0805F5E4:
	cmp r0, #2
	beq _0805F606
	cmp r0, #3
	beq _0805F62E
	b _0805F712
_0805F5EE:
	strb r5, [r4, #0xc]
	movs r0, #0x30
	strb r0, [r4, #0xd]
_0805F5F4:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0805F604
	b _0805F712
_0805F604:
	b _0805F6EE
_0805F606:
	mov r1, r8
	ldr r0, [r1]
	ldr r2, _0805F624 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x42
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0x4f
	ble _0805F628
	movs r0, #0x50
	strh r0, [r1]
	b _0805F6EE
	.align 2, 0
_0805F624: .4byte 0x00013110
_0805F628:
	movs r0, #0x10
	mov sb, r0
	b _0805F712
_0805F62E:
	movs r0, #0x16
	bl sub_08013CF0
	ldr r1, _0805F640 @ =0x00000417
	adds r0, r7, r1
	mov r2, sb
	strb r2, [r0]
	b _0805F712
	.align 2, 0
_0805F640: .4byte 0x00000417
_0805F644:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0805F6B6
	cmp r0, #1
	bgt _0805F654
	cmp r0, #0
	beq _0805F65A
	b _0805F712
_0805F654:
	cmp r0, #2
	beq _0805F6D4
	b _0805F712
_0805F65A:
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_0805B878
	ldr r1, _0805F6CC @ =0x00000417
	adds r0, r7, r1
	movs r2, #1
	strb r6, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x48]
	mov r1, r8
	ldr r0, [r1]
	ldr r1, _0805F6D0 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	adds r3, r4, #0
	adds r3, #0x58
	ands r1, r2
	lsls r1, r1, #6
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _0805F6B0
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0805F6B0:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_0805F6B6:
	adds r0, r4, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0xff
	bgt _0805F6EE
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	b _0805F712
	.align 2, 0
_0805F6CC: .4byte 0x00000417
_0805F6D0: .4byte 0x00013110
_0805F6D4:
	ldr r1, _0805F6F8 @ =0x00000417
	adds r0, r7, r1
	mov r2, sb
	strb r2, [r0]
	ldr r0, _0805F6FC @ =0x00000414
	adds r2, r7, r0
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
_0805F6EE:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	b _0805F712
	.align 2, 0
_0805F6F8: .4byte 0x00000417
_0805F6FC: .4byte 0x00000414
_0805F700:
	bl sub_08013960
	movs r0, #0x22
	bl sub_08012048
	adds r0, r4, #0
	movs r1, #1
	bl sub_0805B66C
_0805F712:
	ldrb r0, [r4, #0xa]
	cmp r0, #0x80
	beq _0805F71E
	adds r0, r4, #0
	bl sub_0803F17C
_0805F71E:
	mov r0, sb
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0805f72c
sub_0805f72c: @ 0x0805F72C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x23
	bl sub_08012078
	cmp r0, #0
	beq _0805F748
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _0805F7B2
_0805F748:
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805B754
	cmp r0, #0
	bne _0805F75C
	adds r0, r4, #0
	bl sub_08000E14
	b _0805F7B2
_0805F75C:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _0805F7B8 @ =gEwramData
	ldr r3, [r0]
	ldr r0, _0805F7BC @ =0x0000A094
	adds r2, r3, r0
	ldrh r1, [r2, #6]
	movs r0, #0x50
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r1, [r2, #0xa]
	movs r0, #0xc0
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0805F7C0 @ =0x0000042C
	adds r2, r3, r0
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r0, _0805F7C4 @ =0x00007864
	adds r3, r3, r0
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
_0805F7B2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805F7B8: .4byte gEwramData
_0805F7BC: .4byte 0x0000A094
_0805F7C0: .4byte 0x0000042C
_0805F7C4: .4byte 0x00007864

	thumb_func_start sub_0805f7c8
sub_0805f7c8: @ 0x0805F7C8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0
	mov r8, r0
	ldr r6, _0805F7F0 @ =gEwramData
	ldr r4, [r6]
	adds r7, r4, #0
	adds r7, #0x60
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _0805F82C
	cmp r0, #1
	bgt _0805F7F4
	cmp r0, #0
	beq _0805F7FC
	b _0805FA2E
	.align 2, 0
_0805F7F0: .4byte gEwramData
_0805F7F4:
	cmp r0, #0x80
	bne _0805F7FA
	b _0805FA10
_0805F7FA:
	b _0805FA2E
_0805F7FC:
	mov r1, r8
	str r1, [sp, #4]
	ldr r1, _0805F848 @ =0x040000D4
	add r2, sp, #4
	str r2, [r1]
	ldr r0, _0805F84C @ =0x06004000
	str r0, [r1, #4]
	ldr r0, _0805F850 @ =0x85000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_0805B878
	movs r0, #0x11
	bl sub_08067934
	ldr r3, _0805F854 @ =0x00000417
	adds r1, r4, r3
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
_0805F82C:
	bl sub_08067A04
	cmp r0, #0
	beq _0805F838
	movs r0, #0x80
	strb r0, [r5, #0xa]
_0805F838:
	ldrb r4, [r5, #0xb]
	cmp r4, #0
	beq _0805F858
	cmp r4, #1
	bne _0805F844
	b _0805F944
_0805F844:
	b _0805FA2E
	.align 2, 0
_0805F848: .4byte 0x040000D4
_0805F84C: .4byte 0x06004000
_0805F850: .4byte 0x85000400
_0805F854: .4byte 0x00000417
_0805F858:
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	beq _0805F886
	cmp r0, #1
	bgt _0805F868
	cmp r0, #0
	beq _0805F86E
	b _0805FA2E
_0805F868:
	cmp r0, #2
	beq _0805F88C
	b _0805FA2E
_0805F86E:
	ldr r1, _0805F8A8 @ =0x000003B7
	adds r0, r7, r1
	movs r1, #1
	strb r1, [r0]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	ldr r0, _0805F8AC @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0805F8B0 @ =0x00000427
	adds r0, r0, r2
	strb r1, [r0]
_0805F886:
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
_0805F88C:
	ldr r0, _0805F8AC @ =gEwramData
	ldr r0, [r0]
	ldr r3, _0805F8B4 @ =0x0000A094
	adds r1, r0, r3
	ldr r0, [r1, #4]
	cmp r0, #0
	ble _0805F8BC
	ldr r1, _0805F8B8 @ =0xFFFE8000
	movs r0, #1
	movs r2, #0
	bl sub_0800ED24
	b _0805F8C0
	.align 2, 0
_0805F8A8: .4byte 0x000003B7
_0805F8AC: .4byte gEwramData
_0805F8B0: .4byte 0x00000427
_0805F8B4: .4byte 0x0000A094
_0805F8B8: .4byte 0xFFFE8000
_0805F8BC:
	movs r0, #0
	str r0, [r1, #4]
_0805F8C0:
	ldr r3, _0805F8EC @ =gEwramData
	ldr r1, [r3]
	ldr r2, _0805F8F0 @ =0x00013110
	adds r0, r1, r2
	ldr r0, [r0]
	adds r6, r0, #0
	adds r6, #0x42
	movs r0, #0
	ldrsh r2, [r6, r0]
	ldr r0, _0805F8F4 @ =0x0000A094
	adds r4, r1, r0
	movs r0, #6
	ldrsh r1, [r4, r0]
	movs r0, #0xae
	subs r0, r0, r1
	cmp r2, r0
	bgt _0805F8F8
	ldrh r1, [r4, #6]
	movs r0, #0xae
	subs r0, r0, r1
	strh r0, [r6]
	b _0805F900
	.align 2, 0
_0805F8EC: .4byte gEwramData
_0805F8F0: .4byte 0x00013110
_0805F8F4: .4byte 0x0000A094
_0805F8F8:
	movs r0, #0x20
	mov r1, r8
	orrs r1, r0
	mov r8, r1
_0805F900:
	ldr r0, [r3]
	ldr r2, _0805F938 @ =0x0000A094
	adds r1, r0, r2
	ldr r4, [r1, #4]
	cmp r4, #0
	beq _0805F90E
	b _0805FA2E
_0805F90E:
	ldr r3, _0805F93C @ =0x00013110
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, #0x42
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r0, #6
	ldrsh r1, [r1, r0]
	movs r0, #0xae
	subs r0, r0, r1
	cmp r2, r0
	beq _0805F928
	b _0805FA2E
_0805F928:
	movs r0, #0x16
	bl sub_08013CF0
	ldr r1, _0805F940 @ =0x000003B7
	adds r0, r7, r1
	strb r4, [r0]
	b _0805F9FA
	.align 2, 0
_0805F938: .4byte 0x0000A094
_0805F93C: .4byte 0x00013110
_0805F940: .4byte 0x000003B7
_0805F944:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _0805F950
	cmp r0, #1
	beq _0805F988
	b _0805FA2E
_0805F950:
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_0805B878
	ldr r2, _0805FA04 @ =0x000003B7
	adds r0, r7, r2
	strb r4, [r0]
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _0805F982
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0805F982:
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
_0805F988:
	adds r0, r5, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r0, #0x10
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0805F9BE
	movs r1, #0x80
	lsls r1, r1, #9
	movs r2, #0x80
	lsls r2, r2, #0xe
	movs r3, #0x80
	lsls r3, r3, #0xa
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	bl sub_0806E140
	movs r1, #4
	ands r1, r0
	cmp r1, #0
	bne _0805F9BE
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
_0805F9BE:
	movs r1, #0x80
	lsls r1, r1, #9
	movs r0, #1
	movs r2, #0
	bl sub_0800ED24
	ldr r0, _0805FA08 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805FA0C @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0x78
	bne _0805FA2E
	ldr r3, _0805FA04 @ =0x000003B7
	adds r1, r7, r3
	movs r0, #0
	strb r0, [r1]
	movs r0, #0xed
	lsls r0, r0, #2
	adds r2, r7, r0
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
_0805F9FA:
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	b _0805FA2E
	.align 2, 0
_0805FA04: .4byte 0x000003B7
_0805FA08: .4byte gEwramData
_0805FA0C: .4byte 0x00013110
_0805FA10:
	adds r0, r7, #0
	bl sub_08013960
	ldr r0, [r6]
	ldr r1, _0805FA48 @ =0x00000427
	adds r0, r0, r1
	mov r2, r8
	strb r2, [r0]
	movs r0, #0x23
	bl sub_08012048
	adds r0, r5, #0
	movs r1, #1
	bl sub_0805B66C
_0805FA2E:
	ldrb r0, [r5, #0xa]
	cmp r0, #0x80
	beq _0805FA3A
	adds r0, r5, #0
	bl sub_0803F17C
_0805FA3A:
	mov r0, r8
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805FA48: .4byte 0x00000427

	thumb_func_start sub_0805fa4c
sub_0805fa4c: @ 0x0805FA4C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0x24
	bl sub_08012078
	adds r3, r0, #0
	cmp r3, #0
	bne _0805FA72
	ldr r6, _0805FA80 @ =gEwramData
	ldr r2, [r6]
	ldr r7, _0805FA84 @ =0x00013110
	adds r0, r2, r7
	ldr r0, [r0]
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x1f
	bgt _0805FA88
_0805FA72:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _0805FB2C
	.align 2, 0
_0805FA80: .4byte gEwramData
_0805FA84: .4byte 0x00013110
_0805FA88:
	ldr r0, _0805FAC0 @ =0x00007864
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	str r3, [sp]
	ldr r1, _0805FAC4 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, [r6]
	ldr r2, _0805FAC8 @ =0x0000786C
	adds r0, r0, r2
	str r0, [r1, #4]
	ldr r0, _0805FACC @ =0x85000280
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r5, #0
	movs r1, #5
	bl sub_0805B754
	cmp r0, #0
	bne _0805FAD0
	adds r0, r5, #0
	bl sub_08000E14
	b _0805FB2C
	.align 2, 0
_0805FAC0: .4byte 0x00007864
_0805FAC4: .4byte 0x040000D4
_0805FAC8: .4byte 0x0000786C
_0805FACC: .4byte 0x85000280
_0805FAD0:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	ldr r1, [r6]
	ldr r0, _0805FB34 @ =0x0000A094
	adds r1, r1, r0
	ldrh r2, [r1, #6]
	movs r0, #0xbe
	subs r0, r0, r2
	adds r2, r5, #0
	adds r2, #0x42
	strh r0, [r2]
	ldrh r1, [r1, #0xa]
	movs r0, #0xa0
	subs r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
	adds r1, #0x12
	ldrb r0, [r1]
	movs r4, #0x40
	orrs r0, r4
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0806AF98
	ldr r0, [r6]
	adds r0, r0, r7
	ldr r1, [r0]
	adds r1, #0x58
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	ldr r1, [r6]
	ldr r2, _0805FB38 @ =0x0000042C
	adds r1, r1, r2
	ldr r0, [r1]
	movs r2, #1
	orrs r0, r2
	str r0, [r1]
_0805FB2C:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805FB34: .4byte 0x0000A094
_0805FB38: .4byte 0x0000042C

	thumb_func_start sub_0805fb3c
sub_0805fb3c: @ 0x0805FB3C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r7, #0
	ldr r1, _0805FB5C @ =gEwramData
	ldr r4, [r1]
	adds r6, r4, #0
	adds r6, #0x60
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _0805FB8E
	cmp r0, #1
	bgt _0805FB60
	cmp r0, #0
	beq _0805FB68
	b _0805FD48
	.align 2, 0
_0805FB5C: .4byte gEwramData
_0805FB60:
	cmp r0, #0x80
	bne _0805FB66
	b _0805FD2C
_0805FB66:
	b _0805FD48
_0805FB68:
	ldr r1, _0805FBAC @ =0x00013110
	adds r0, r4, r1
	ldr r0, [r0]
	str r7, [r0, #0x4c]
	str r7, [r0, #0x48]
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_0805B878
	movs r0, #0x12
	bl sub_08067934
	ldr r2, _0805FBB0 @ =0x00000417
	adds r1, r4, r2
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
_0805FB8E:
	bl sub_08067A04
	cmp r0, #0
	beq _0805FB9A
	movs r0, #0x80
	strb r0, [r5, #0xa]
_0805FB9A:
	ldrb r1, [r5, #0xb]
	cmp r1, #1
	beq _0805FC34
	cmp r1, #1
	bgt _0805FBB4
	cmp r1, #0
	beq _0805FBBC
	b _0805FD48
	.align 2, 0
_0805FBAC: .4byte 0x00013110
_0805FBB0: .4byte 0x00000417
_0805FBB4:
	cmp r1, #2
	bne _0805FBBA
	b _0805FCD0
_0805FBBA:
	b _0805FD48
_0805FBBC:
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	beq _0805FBE0
	cmp r0, #1
	bgt _0805FBCC
	cmp r0, #0
	beq _0805FBD2
	b _0805FD48
_0805FBCC:
	cmp r0, #2
	beq _0805FBE6
	b _0805FD48
_0805FBD2:
	ldr r0, _0805FC0C @ =0x000003B7
	adds r1, r6, r0
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
_0805FBE0:
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
_0805FBE6:
	ldr r2, _0805FC10 @ =gEwramData
	ldr r0, [r2]
	ldr r1, _0805FC14 @ =0x00000427
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldr r0, [r2]
	ldr r2, _0805FC18 @ =0x0000A094
	adds r0, r0, r2
	movs r1, #6
	ldrsh r0, [r0, r1]
	cmp r0, #0x94
	ble _0805FC20
	ldr r1, _0805FC1C @ =0xFFFF8000
	movs r0, #1
	movs r2, #0
	bl sub_0800ED24
	b _0805FD48
	.align 2, 0
_0805FC0C: .4byte 0x000003B7
_0805FC10: .4byte gEwramData
_0805FC14: .4byte 0x00000427
_0805FC18: .4byte 0x0000A094
_0805FC1C: .4byte 0xFFFF8000
_0805FC20:
	movs r0, #0x16
	bl sub_08013CF0
	ldr r2, _0805FC30 @ =0x000003B7
	adds r1, r6, r2
	movs r0, #0
	strb r0, [r1]
	b _0805FD16
	.align 2, 0
_0805FC30: .4byte 0x000003B7
_0805FC34:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _0805FC40
	cmp r0, #1
	beq _0805FC80
	b _0805FD48
_0805FC40:
	ldr r2, _0805FCB8 @ =0x000003B7
	adds r0, r6, r2
	movs r4, #1
	strb r1, [r0]
	adds r3, r5, #0
	adds r3, #0x58
	ldrb r2, [r3]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1f
	movs r0, #1
	subs r0, r0, r1
	ands r0, r4
	lsls r0, r0, #6
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #8
	beq _0805FC7A
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0805FC7A:
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
_0805FC80:
	adds r0, r5, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0805FCBC
	movs r1, #0x80
	lsls r1, r1, #9
	movs r2, #0x80
	lsls r2, r2, #0xe
	movs r3, #0x80
	lsls r3, r3, #0xa
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	bl sub_0806E140
	movs r1, #4
	ands r1, r0
	cmp r1, #0
	bne _0805FD48
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	b _0805FD48
	.align 2, 0
_0805FCB8: .4byte 0x000003B7
_0805FCBC:
	ldrb r0, [r5, #0xc]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xc]
	ldr r2, _0805FCCC @ =0x000003B7
	adds r0, r6, r2
	strb r1, [r0]
	b _0805FD48
	.align 2, 0
_0805FCCC: .4byte 0x000003B7
_0805FCD0:
	ldr r0, _0805FD20 @ =0x000003B7
	adds r4, r6, r0
	movs r0, #1
	strb r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #8
	movs r2, #0
	bl sub_0800ED24
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_0805B878
	ldr r0, _0805FD24 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805FD28 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0x78
	bne _0805FD48
	movs r0, #0
	strb r0, [r4]
	movs r0, #0xed
	lsls r0, r0, #2
	adds r2, r6, r0
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
_0805FD16:
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	b _0805FD48
	.align 2, 0
_0805FD20: .4byte 0x000003B7
_0805FD24: .4byte gEwramData
_0805FD28: .4byte 0x00013110
_0805FD2C:
	ldr r2, _0805FD60 @ =0x00000427
	adds r0, r4, r2
	strb r7, [r0]
	ldr r0, [r1]
	adds r0, #0x60
	bl sub_08013960
	movs r0, #0x24
	bl sub_08012048
	adds r0, r5, #0
	movs r1, #1
	bl sub_0805B66C
_0805FD48:
	ldrb r0, [r5, #0xa]
	cmp r0, #0x80
	beq _0805FD54
	adds r0, r5, #0
	bl sub_0803F17C
_0805FD54:
	adds r0, r7, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805FD60: .4byte 0x00000427

	thumb_func_start sub_0805fd64
sub_0805fd64: @ 0x0805FD64
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x25
	bl sub_08012078
	cmp r0, #0
	beq _0805FD80
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _0805FDDE
_0805FD80:
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805B754
	cmp r0, #0
	bne _0805FD94
	adds r0, r4, #0
	bl sub_08000E14
	b _0805FDDE
_0805FD94:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _0805FDE4 @ =gEwramData
	ldr r3, [r0]
	ldr r0, _0805FDE8 @ =0x0000A094
	adds r2, r3, r0
	ldrh r1, [r2, #6]
	movs r0, #0x50
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r1, [r2, #0xa]
	movs r0, #0xa0
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0805FDEC @ =0x0000042C
	adds r3, r3, r0
	ldr r0, [r3]
	movs r1, #1
	orrs r0, r1
	str r0, [r3]
_0805FDDE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805FDE4: .4byte gEwramData
_0805FDE8: .4byte 0x0000A094
_0805FDEC: .4byte 0x0000042C

	thumb_func_start sub_0805fdf0
sub_0805fdf0: @ 0x0805FDF0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	movs r0, #0
	mov sb, r0
	ldr r1, _0805FE18 @ =gEwramData
	mov r8, r1
	ldr r6, [r1]
	adds r7, r6, #0
	adds r7, #0x60
	ldrb r5, [r4, #0xa]
	cmp r5, #1
	beq _0805FE6C
	cmp r5, #1
	bgt _0805FE1C
	cmp r5, #0
	beq _0805FE24
	b _0805FFC8
	.align 2, 0
_0805FE18: .4byte gEwramData
_0805FE1C:
	cmp r5, #0x80
	bne _0805FE22
	b _0805FFB2
_0805FE22:
	b _0805FFC8
_0805FE24:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0805FE4A
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_0805B878
	movs r0, #0x13
	bl sub_08067934
	ldr r2, _0805FE68 @ =0x00000417
	adds r1, r6, r2
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x20
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_0805FE4A:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0805FE5A
	b _0805FFC8
_0805FE5A:
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	mov r0, sb
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xb]
	b _0805FFC8
	.align 2, 0
_0805FE68: .4byte 0x00000417
_0805FE6C:
	bl sub_08067A04
	cmp r0, #0
	beq _0805FE78
	movs r0, #0x80
	strb r0, [r4, #0xa]
_0805FE78:
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _0805FF0E
	cmp r0, #1
	bgt _0805FE88
	cmp r0, #0
	beq _0805FE8E
	b _0805FFC8
_0805FE88:
	cmp r0, #2
	beq _0805FF20
	b _0805FFC8
_0805FE8E:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0805FEB4
	cmp r0, #1
	bgt _0805FE9E
	cmp r0, #0
	beq _0805FEA4
	b _0805FFC8
_0805FE9E:
	cmp r0, #2
	beq _0805FECC
	b _0805FFC8
_0805FEA4:
	ldr r1, _0805FEC8 @ =0x00000417
	adds r0, r6, r1
	strb r5, [r0]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x30
	strb r0, [r4, #0xd]
_0805FEB4:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0805FEC4
	b _0805FFC8
_0805FEC4:
	b _0805FF92
	.align 2, 0
_0805FEC8: .4byte 0x00000417
_0805FECC:
	mov r2, r8
	ldr r0, [r2]
	ldr r1, _0805FF00 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0xa0
	bgt _0805FF08
	movs r0, #0x16
	bl sub_08013CF0
	ldr r1, _0805FF04 @ =0x00000417
	adds r0, r6, r1
	mov r2, sb
	strb r2, [r0]
	mov r1, r8
	ldr r0, [r1]
	ldr r2, _0805FF00 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x42
	movs r1, #0xa0
	strh r1, [r0]
	b _0805FF92
	.align 2, 0
_0805FF00: .4byte 0x00013110
_0805FF04: .4byte 0x00000417
_0805FF08:
	movs r0, #0x20
	mov sb, r0
	b _0805FFC8
_0805FF0E:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0805FFC8
	ldr r0, _0805FF1C @ =0x000001B7
	bl sub_080D7910
	b _0805FF92
	.align 2, 0
_0805FF1C: .4byte 0x000001B7
_0805FF20:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0805FF2C
	cmp r0, #1
	beq _0805FF68
	b _0805FFC8
_0805FF2C:
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_0805B878
	ldr r1, _0805FF9C @ =0x00000417
	adds r0, r6, r1
	strb r5, [r0]
	ldr r0, _0805FFA0 @ =0xFFFF8000
	str r0, [r4, #0x48]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _0805FF62
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0805FF62:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_0805FF68:
	adds r0, r4, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #8
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0805FFA8
	ldr r0, _0805FFA4 @ =0x000003B7
	adds r1, r7, r0
	movs r0, #0
	strb r0, [r1]
	movs r1, #0xed
	lsls r1, r1, #2
	adds r2, r7, r1
	ldrb r1, [r2]
	subs r0, #0x10
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
_0805FF92:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	b _0805FFC8
	.align 2, 0
_0805FF9C: .4byte 0x00000417
_0805FFA0: .4byte 0xFFFF8000
_0805FFA4: .4byte 0x000003B7
_0805FFA8:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	b _0805FFC8
_0805FFB2:
	adds r0, r7, #0
	bl sub_08013960
	movs r0, #0x25
	bl sub_08012048
	adds r0, r4, #0
	movs r1, #1
	bl sub_0805B66C
	b _0805FFD0
_0805FFC8:
	adds r0, r4, #0
	bl sub_0803F17C
	mov r0, sb
_0805FFD0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0805ffdc
sub_0805ffdc: @ 0x0805FFDC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	movs r0, #0x26
	bl sub_08012078
	str r0, [sp, #8]
	cmp r0, #0
	bne _08060010
	ldr r0, _08060020 @ =gEwramData
	mov sl, r0
	ldr r0, [r0]
	ldr r1, _08060024 @ =0x00013110
	mov sb, r1
	add r0, sb
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0x7f
	bgt _08060028
_08060010:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _080601B6
	.align 2, 0
_08060020: .4byte gEwramData
_08060024: .4byte 0x00013110
_08060028:
	adds r0, r1, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r3, #0x40
	mov r8, r3
	mov r2, r8
	orrs r1, r2
	strb r1, [r0]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805B754
	cmp r0, #0
	bne _08060046
	b _08060158
_08060046:
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	mov r3, sl
	ldr r2, [r3]
	ldr r0, _08060160 @ =0x0000A094
	adds r3, r2, r0
	ldrh r1, [r3, #6]
	movs r0, #0x48
	subs r0, r0, r1
	adds r6, r4, #0
	adds r6, #0x42
	strh r0, [r6]
	ldrh r1, [r3, #0xa]
	movs r0, #0xa0
	subs r0, r0, r1
	adds r7, r4, #0
	adds r7, #0x46
	strh r0, [r7]
	adds r5, r4, #0
	adds r5, #0x58
	ldrb r0, [r5]
	mov r1, r8
	orrs r0, r1
	strb r0, [r5]
	add r2, sb
	ldr r0, [r2]
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	movs r2, #0x5c
	adds r2, r2, r4
	mov r8, r2
	strb r0, [r2]
	movs r0, #5
	bl sub_0805B5E8
	str r0, [r4, #0x14]
	cmp r0, #0
	beq _08060158
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, [r4, #0x14]
	bl sub_0803F17C
	ldr r1, [r4, #0x14]
	ldrh r0, [r6]
	adds r0, #0x13
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r4, #0x14]
	ldrh r1, [r7]
	adds r0, #0x46
	strh r1, [r0]
	ldr r1, [r4, #0x14]
	ldr r0, _08060164 @ =0xFFFE8000
	str r0, [r1, #0x48]
	ldr r2, [r4, #0x14]
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	adds r2, #0x58
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	ldrb r3, [r2]
	movs r6, #0x41
	rsbs r6, r6, #0
	adds r0, r6, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r4, #0x14]
	mov r3, r8
	ldrb r0, [r3]
	adds r0, #1
	adds r1, #0x5c
	strb r0, [r1]
	movs r0, #1
	bl sub_0803E654
	adds r5, r0, #0
	cmp r5, #0
	blt _08060158
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	ldr r2, [r4, #0x14]
	adds r2, #0x58
	movs r1, #0x1f
	ands r5, r1
	ldrb r3, [r2]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r5
	strb r1, [r2]
	ldr r2, [r4, #0x14]
	adds r2, #0x59
	ldrb r1, [r2]
	movs r3, #0x10
	orrs r1, r3
	strb r1, [r2]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, #0x20]
	ldr r3, [sp, #8]
	str r3, [sp]
	ldr r3, [r4, #0x14]
	adds r3, #0x58
	ldrb r3, [r3]
	lsls r3, r3, #0x1b
	lsrs r3, r3, #0x1b
	str r3, [sp, #4]
	movs r3, #0
	bl sub_0803E058
	movs r0, #1
	bl sub_0805B5E8
	str r0, [r4, #0x18]
	cmp r0, #0
	bne _08060168
	ldr r0, [r4, #0x14]
	bl sub_08000E14
_08060158:
	adds r0, r4, #0
	bl sub_08000E14
	b _080601B6
	.align 2, 0
_08060160: .4byte 0x0000A094
_08060164: .4byte 0xFFFE8000
_08060168:
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldr r0, [r4, #0x18]
	bl sub_0803F17C
	ldr r1, [r4, #0x18]
	mov r2, sl
	ldr r0, [r2]
	ldr r3, _080601C8 @ =0x0000A094
	adds r0, r0, r3
	ldrh r2, [r0, #6]
	movs r0, #0xff
	subs r0, r0, r2
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r4, #0x18]
	ldrh r1, [r7]
	adds r0, #0x46
	strh r1, [r0]
	ldr r1, [r4, #0x18]
	ldr r0, _080601CC @ =0xFFFFA000
	str r0, [r1, #0x48]
	ldr r1, [r4, #0x18]
	adds r1, #0x58
	ldrb r2, [r1]
	adds r0, r6, #0
	ands r0, r2
	strb r0, [r1]
	mov r0, sl
	ldr r1, [r0]
	ldr r2, _080601D0 @ =0x0000042C
	adds r1, r1, r2
	ldr r0, [r1]
	movs r2, #1
	orrs r0, r2
	str r0, [r1]
_080601B6:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080601C8: .4byte 0x0000A094
_080601CC: .4byte 0xFFFFA000
_080601D0: .4byte 0x0000042C

	thumb_func_start sub_080601D4
sub_080601D4: @ 0x080601D4
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	adds r4, #0x58
	ldrb r0, [r4]
	movs r5, #0x40
	orrs r0, r5
	strb r0, [r4]
	ldr r0, _08060240 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08060244 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r3, #0
	adds r1, #0x5c
	strb r0, [r1]
	adds r1, #9
	movs r0, #0x12
	strb r0, [r1]
	ldr r1, [r3, #0x14]
	ldr r0, [r1]
	cmp r0, #0
	beq _08060214
	adds r0, r1, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_08060214:
	ldr r1, [r3, #0x18]
	ldr r0, [r1]
	cmp r0, #0
	beq _08060226
	ldr r0, [r3, #0x40]
	movs r2, #0xc0
	lsls r2, r2, #0xf
	adds r0, r0, r2
	str r0, [r1, #0x40]
_08060226:
	ldr r0, [r3, #0x18]
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r1, [r4]
	orrs r1, r5
	strb r1, [r4]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08060240: .4byte gEwramData
_08060244: .4byte 0x00013110

	thumb_func_start sub_08060248
sub_08060248: @ 0x08060248
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r7, #0
	ldr r3, _08060268 @ =gEwramData
	ldr r4, [r3]
	adds r6, r4, #0
	adds r6, #0x60
	ldrb r1, [r5, #0xa]
	cmp r1, #1
	beq _0806029A
	cmp r1, #1
	bgt _0806026C
	cmp r1, #0
	beq _0806027A
	b _080606B6
	.align 2, 0
_08060268: .4byte gEwramData
_0806026C:
	cmp r1, #3
	bne _08060272
	b _08060670
_08060272:
	cmp r1, #0x80
	bne _08060278
	b _080606BE
_08060278:
	b _080606B6
_0806027A:
	movs r0, #0xdc
	lsls r0, r0, #1
	bl sub_080D7910
	movs r0, #0x28
	bl sub_08013EEC
	movs r0, #0x14
	bl sub_08067934
	ldr r1, _080602BC @ =0x00000417
	adds r0, r4, r1
	strb r7, [r0]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
_0806029A:
	bl sub_08067A04
	cmp r0, #0
	beq _080602C0
	adds r0, r5, #0
	bl sub_080601D4
	movs r0, #0x80
	strb r0, [r5, #0xa]
	adds r0, r5, #0
	movs r1, #0
	bl sub_0805B66C
	movs r0, #0x26
	bl sub_08012048
	b _080606BE
	.align 2, 0
_080602BC: .4byte 0x00000417
_080602C0:
	ldrb r0, [r5, #0xb]
	cmp r0, #7
	bls _080602C8
	b _08060626
_080602C8:
	lsls r0, r0, #2
	ldr r1, _080602D4 @ =_080602D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080602D4: .4byte _080602D8
_080602D8: @ jump table
	.4byte _08060626 @ case 0
	.4byte _080602F8 @ case 1
	.4byte _080603D4 @ case 2
	.4byte _080604DE @ case 3
	.4byte _08060554 @ case 4
	.4byte _080605BC @ case 5
	.4byte _080605FE @ case 6
	.4byte _08060626 @ case 7
_080602F8:
	ldrb r0, [r5, #0xc]
	cmp r0, #4
	bls _08060300
	b _08060626
_08060300:
	lsls r0, r0, #2
	ldr r1, _0806030C @ =_08060310
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806030C: .4byte _08060310
_08060310: @ jump table
	.4byte _08060324 @ case 0
	.4byte _08060332 @ case 1
	.4byte _08060376 @ case 2
	.4byte _080603B0 @ case 3
	.4byte _080603C8 @ case 4
_08060324:
	ldr r2, _080603AC @ =0x000003B7
	adds r1, r6, r2
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
_08060332:
	ldr r1, [r5, #0x14]
	ldr r0, [r1]
	cmp r0, #0
	beq _08060364
	adds r0, r1, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r2, [r5, #0x14]
	adds r2, #0x58
	ldrb r3, [r2]
	lsls r0, r3, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
_08060364:
	adds r0, r5, #0
	movs r1, #5
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
_08060376:
	ldr r2, [r5, #0x14]
	adds r0, r2, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08060388
	b _08060626
_08060388:
	adds r0, r2, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #7
	beq _0806039E
	adds r0, r2, #0
	movs r1, #7
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0806039E:
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	movs r0, #8
	strb r0, [r5, #0xd]
	b _08060626
	.align 2, 0
_080603AC: .4byte 0x000003B7
_080603B0:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080603C0
	b _08060626
_080603C0:
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	b _08060626
_080603C8:
	ldr r3, _080603D0 @ =0x000003B7
	adds r1, r6, r3
	movs r0, #0
	b _08060624
	.align 2, 0
_080603D0: .4byte 0x000003B7
_080603D4:
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	beq _08060416
	cmp r0, #1
	bgt _080603E4
	cmp r0, #0
	beq _080603EE
	b _08060496
_080603E4:
	cmp r0, #2
	beq _08060434
	cmp r0, #3
	beq _0806048A
	b _08060496
_080603EE:
	ldr r0, _08060430 @ =0x000003B7
	adds r1, r6, r0
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	movs r0, #0x10
	strb r0, [r5, #0xd]
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #4
	beq _08060416
	adds r0, r5, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_08060416:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08060496
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	movs r0, #0
	strb r0, [r5, #0xd]
	b _08060496
	.align 2, 0
_08060430: .4byte 0x000003B7
_08060434:
	ldrb r0, [r5, #0xd]
	cmp r0, #0x24
	bne _08060444
	movs r0, #0xab
	lsls r0, r0, #1
	bl sub_080D7910
	b _0806044E
_08060444:
	cmp r0, #0
	bne _0806044E
	ldr r0, _08060478 @ =0x00000155
	bl sub_080D7910
_0806044E:
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	ldr r0, _0806047C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08060480 @ =0x00013110
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r5, #0x40]
	movs r3, #0x80
	lsls r3, r3, #0xe
	adds r1, r0, r3
	ldr r0, [r2, #0x40]
	cmp r0, r1
	bgt _08060484
	str r1, [r2, #0x40]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	b _08060496
	.align 2, 0
_08060478: .4byte 0x00000155
_0806047C: .4byte gEwramData
_08060480: .4byte 0x00013110
_08060484:
	movs r0, #0x20
	orrs r7, r0
	b _08060496
_0806048A:
	movs r0, #0x80
	orrs r7, r0
	ldr r0, _080604C8 @ =0x000003B7
	adds r1, r6, r0
	movs r0, #0
	strb r0, [r1]
_08060496:
	ldr r1, [r5, #0x1c]
	cmp r1, #0
	beq _080604D0
	ldr r2, _080604CC @ =0xFFFFF800
	adds r1, r1, r2
	str r1, [r5, #0x1c]
	ldr r2, [r5, #0x20]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r2, r2, r3
	str r2, [r5, #0x20]
	movs r0, #0x80
	lsls r0, r0, #9
	movs r3, #0
	str r3, [sp]
	ldr r3, [r5, #0x14]
	adds r3, #0x58
	ldrb r3, [r3]
	lsls r3, r3, #0x1b
	lsrs r3, r3, #0x1b
	str r3, [sp, #4]
	movs r3, #0
	bl sub_0803E058
	b _08060626
	.align 2, 0
_080604C8: .4byte 0x000003B7
_080604CC: .4byte 0xFFFFF800
_080604D0:
	ldr r0, [r5, #0x14]
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	b _08060626
_080604DE:
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	beq _08060506
	cmp r0, #1
	bgt _080604EE
	cmp r0, #0
	beq _080604F4
	b _080605F8
_080604EE:
	cmp r0, #2
	beq _0806053C
	b _080605F8
_080604F4:
	ldr r0, _08060538 @ =0x000003B7
	adds r1, r6, r0
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	movs r0, #0x30
	strb r0, [r5, #0xd]
_08060506:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080605F8
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	movs r0, #0x60
	strb r0, [r5, #0xd]
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #7
	beq _080605F8
	adds r0, r5, #0
	movs r1, #7
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _080605F8
	.align 2, 0
_08060538: .4byte 0x000003B7
_0806053C:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080605F8
	ldr r2, _08060550 @ =0x000003B7
	adds r1, r6, r2
	b _080605B0
	.align 2, 0
_08060550: .4byte 0x000003B7
_08060554:
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	beq _08060592
	cmp r0, #1
	bgt _08060564
	cmp r0, #0
	beq _0806056A
	b _080605F8
_08060564:
	cmp r0, #2
	beq _080605AC
	b _080605F8
_0806056A:
	ldr r3, _080605A8 @ =0x000003B7
	adds r1, r6, r3
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x30
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #8
	beq _08060592
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_08060592:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080605F8
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	b _080605F8
	.align 2, 0
_080605A8: .4byte 0x000003B7
_080605AC:
	ldr r0, _080605B8 @ =0x000003B7
	adds r1, r6, r0
_080605B0:
	movs r0, #0
	strb r0, [r1]
	b _080605F8
	.align 2, 0
_080605B8: .4byte 0x000003B7
_080605BC:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _080605C8
	cmp r0, #1
	beq _080605DA
	b _080605F8
_080605C8:
	ldr r2, _080605F0 @ =0x000003B7
	adds r1, r6, r2
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	movs r0, #0x30
	strb r0, [r5, #0xd]
_080605DA:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #0
	cmp r1, #0
	bne _080605F4
	ldr r3, _080605F0 @ =0x000003B7
	adds r0, r6, r3
	strb r1, [r0]
	ldr r1, [r5, #0x18]
	movs r0, #1
	strb r0, [r1, #0xa]
	b _080605F8
	.align 2, 0
_080605F0: .4byte 0x000003B7
_080605F4:
	subs r0, #1
	strb r0, [r5, #0xd]
_080605F8:
	movs r0, #0x80
	orrs r7, r0
	b _08060626
_080605FE:
	ldr r4, _08060660 @ =gEwramData
	ldr r0, [r4]
	ldr r3, _08060664 @ =0x00013110
	adds r0, r0, r3
	ldr r1, [r0]
	adds r1, #0x58
	ldrb r2, [r1]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
_08060624:
	strb r0, [r1]
_08060626:
	ldr r1, [r5, #0x18]
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	beq _080606B6
	ldr r0, [r5, #0x40]
	movs r2, #0xc0
	lsls r2, r2, #0xf
	adds r0, r0, r2
	ldr r2, [r1, #0x40]
	cmp r2, r0
	bge _08060668
	str r0, [r1, #0x40]
	ldr r1, [r5, #0x18]
	adds r0, r1, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _08060656
	adds r0, r1, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_08060656:
	ldr r1, [r5, #0x18]
	movs r0, #0
	strb r0, [r1, #0xa]
	b _080606B6
	.align 2, 0
_08060660: .4byte gEwramData
_08060664: .4byte 0x00013110
_08060668:
	ldr r0, [r1, #0x48]
	adds r0, r2, r0
	str r0, [r1, #0x40]
	b _080606B6
_08060670:
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	beq _08060694
	cmp r0, #1
	bgt _080606B6
	cmp r0, #0
	bne _080606B6
	ldr r1, _080606B0 @ =0x00013110
	adds r0, r4, r1
	ldr r1, [r0]
	adds r1, #0x58
	ldrb r0, [r1]
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r1]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
_08060694:
	ldr r0, [r3]
	ldr r2, _080606B0 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x42
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #2
	bgt _080606B4
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	b _080606B6
	.align 2, 0
_080606B0: .4byte 0x00013110
_080606B4:
	movs r7, #0x20
_080606B6:
	adds r0, r5, #0
	bl sub_0803F17C
	adds r0, r7, #0
_080606BE:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080606c8
sub_080606c8: @ 0x080606C8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0x27
	bl sub_08012078
	adds r3, r0, #0
	cmp r3, #0
	beq _080606E6
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	b _080607D4
_080606E6:
	ldr r5, _08060704 @ =gEwramData
	ldr r2, [r5]
	ldr r1, _08060708 @ =0x0000037E
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806070C
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	b _080607D4
	.align 2, 0
_08060704: .4byte gEwramData
_08060708: .4byte 0x0000037E
_0806070C:
	ldr r6, _08060728 @ =0x00013110
	adds r0, r2, r6
	ldr r0, [r0]
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x80
	ble _0806072C
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	b _080607D4
	.align 2, 0
_08060728: .4byte 0x00013110
_0806072C:
	ldr r0, _08060764 @ =0x00007864
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	str r3, [sp]
	ldr r1, _08060768 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, [r5]
	ldr r2, _0806076C @ =0x0000786C
	adds r0, r0, r2
	str r0, [r1, #4]
	ldr r0, _08060770 @ =0x85000280
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r4, #0
	movs r1, #7
	bl sub_0805B754
	cmp r0, #0
	bne _08060774
	adds r0, r4, #0
	bl sub_08000E14
	b _080607D6
	.align 2, 0
_08060764: .4byte 0x00007864
_08060768: .4byte 0x040000D4
_0806076C: .4byte 0x0000786C
_08060770: .4byte 0x85000280
_08060774:
	adds r0, r4, #0
	movs r1, #4
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r3, [r5]
	ldr r5, _080607E0 @ =0x0000A094
	adds r2, r3, r5
	ldrh r1, [r2, #6]
	movs r5, #0x8c
	lsls r5, r5, #1
	adds r0, r5, #0
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r1, [r2, #0xa]
	movs r0, #0xc0
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	movs r2, #0
	adds r5, r3, r6
	ldr r0, [r5]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	bge _080607B8
	movs r2, #1
_080607B8:
	adds r3, r4, #0
	adds r3, #0x58
	lsls r4, r2, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	orrs r0, r4
	strb r0, [r3]
	ldr r0, [r5]
	adds r0, #0x58
	ldrb r2, [r0]
	ands r1, r2
_080607D4:
	strb r1, [r0]
_080607D6:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080607E0: .4byte 0x0000A094

	thumb_func_start sub_080607e4
sub_080607e4: @ 0x080607E4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0
	mov sb, r0
	ldr r1, _08060810 @ =gEwramData
	mov r8, r1
	ldr r6, [r1]
	adds r7, r6, #0
	adds r7, #0x60
	ldrb r4, [r5, #0xa]
	cmp r4, #1
	beq _080608B8
	cmp r4, #1
	bgt _08060814
	cmp r4, #0
	beq _08060820
	b _08060B76
	.align 2, 0
_08060810: .4byte gEwramData
_08060814:
	cmp r4, #2
	beq _080608DA
	cmp r4, #0x80
	bne _0806081E
	b _08060B56
_0806081E:
	b _08060B76
_08060820:
	ldr r2, _08060888 @ =0x00013110
	adds r0, r6, r2
	ldr r0, [r0]
	adds r0, #0x42
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0x60
	ble _080608A0
	ldr r0, _0806088C @ =0x00007864
	adds r2, r6, r0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	mov r1, sb
	str r1, [sp]
	ldr r1, _08060890 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _08060894 @ =0x0000786C
	adds r0, r2, r3
	str r0, [r1, #4]
	ldr r0, _08060898 @ =0x85000280
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0806089C @ =0x0000042C
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r2]
	bl sub_0800EB04
	bl sub_080235C8
	bl sub_0802DFF0
	bl sub_0803D270
	bl sub_0803CED4
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	mov r1, sb
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
	b _08060B76
	.align 2, 0
_08060888: .4byte 0x00013110
_0806088C: .4byte 0x00007864
_08060890: .4byte 0x040000D4
_08060894: .4byte 0x0000786C
_08060898: .4byte 0x85000280
_0806089C: .4byte 0x0000042C
_080608A0:
	ldr r2, _080608B0 @ =0x0000042C
	adds r0, r6, r2
	ldr r1, [r0]
	ldr r2, _080608B4 @ =0xFFFFFDFF
	ands r1, r2
	str r1, [r0]
	b _08060B76
	.align 2, 0
_080608B0: .4byte 0x0000042C
_080608B4: .4byte 0xFFFFFDFF
_080608B8:
	ldr r3, _080608F8 @ =0x0000042C
	adds r1, r6, r3
	ldr r0, [r1]
	orrs r0, r4
	str r0, [r1]
	movs r0, #0x15
	bl sub_08067934
	ldr r1, _080608FC @ =0x00000417
	adds r0, r6, r1
	strb r4, [r0]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	mov r2, sb
	strb r2, [r5, #0xc]
	strb r2, [r5, #0xb]
_080608DA:
	bl sub_08067A04
	cmp r0, #0
	beq _080608E6
	movs r0, #0x80
	strb r0, [r5, #0xa]
_080608E6:
	ldrb r2, [r5, #0xb]
	cmp r2, #1
	bne _080608EE
	b _080609FC
_080608EE:
	cmp r2, #1
	bgt _08060900
	cmp r2, #0
	beq _08060908
	b _08060B76
	.align 2, 0
_080608F8: .4byte 0x0000042C
_080608FC: .4byte 0x00000417
_08060900:
	cmp r2, #2
	bne _08060906
	b _08060A88
_08060906:
	b _08060B76
_08060908:
	ldrb r0, [r5, #0xc]
	cmp r0, #4
	bls _08060910
	b _08060B76
_08060910:
	lsls r0, r0, #2
	ldr r1, _0806091C @ =_08060920
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806091C: .4byte _08060920
_08060920: @ jump table
	.4byte _08060934 @ case 0
	.4byte _08060946 @ case 1
	.4byte _08060964 @ case 2
	.4byte _080609C2 @ case 3
	.4byte _08060B76 @ case 4
_08060934:
	ldr r3, _08060960 @ =0x000003B7
	adds r1, r7, r3
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	movs r0, #0x30
	strb r0, [r5, #0xd]
_08060946:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08060956
	b _08060B76
_08060956:
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_0805B878
	b _08060B34
	.align 2, 0
_08060960: .4byte 0x000003B7
_08060964:
	ldr r7, _080609A8 @ =gEwramData
	ldr r1, [r7]
	ldr r0, _080609AC @ =0x00013110
	adds r6, r1, r0
	ldr r0, [r6]
	adds r4, r0, #0
	adds r4, #0x42
	movs r3, #0
	ldrsh r2, [r4, r3]
	ldr r0, _080609B0 @ =0x0000A094
	adds r3, r1, r0
	movs r0, #6
	ldrsh r1, [r3, r0]
	movs r0, #0xe0
	subs r0, r0, r1
	cmp r2, r0
	ble _080609B8
	ldrh r1, [r3, #6]
	movs r0, #0xe0
	subs r0, r0, r1
	strh r0, [r4]
	ldr r1, [r6]
	adds r1, #0x58
	ldrb r2, [r1]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r0, [r7]
	ldr r1, _080609B4 @ =0x00000427
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	b _08060B34
	.align 2, 0
_080609A8: .4byte gEwramData
_080609AC: .4byte 0x00013110
_080609B0: .4byte 0x0000A094
_080609B4: .4byte 0x00000427
_080609B8:
	movs r0, #0x10
	mov r2, sb
	orrs r2, r0
	mov sb, r2
	b _08060B76
_080609C2:
	ldr r0, _080609E0 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _080609E4 @ =0x0000A094
	adds r0, r0, r3
	movs r1, #6
	ldrsh r0, [r0, r1]
	cmp r0, #0x89
	bgt _080609E8
	movs r1, #0x80
	lsls r1, r1, #8
	movs r0, #1
	movs r2, #0
	bl sub_0800ED24
	b _08060B76
	.align 2, 0
_080609E0: .4byte gEwramData
_080609E4: .4byte 0x0000A094
_080609E8:
	movs r0, #0x16
	bl sub_08013CF0
	ldr r2, _080609F8 @ =0x000003B7
	adds r1, r7, r2
	movs r0, #0
	strb r0, [r1]
	b _08060B34
	.align 2, 0
_080609F8: .4byte 0x000003B7
_080609FC:
	ldrb r1, [r5, #0xc]
	cmp r1, #1
	beq _08060A3C
	cmp r1, #1
	bgt _08060A0C
	cmp r1, #0
	beq _08060A16
	b _08060B76
_08060A0C:
	cmp r1, #2
	beq _08060A66
	cmp r1, #3
	beq _08060A78
	b _08060B76
_08060A16:
	ldr r3, _08060A38 @ =0x000003B7
	adds r0, r7, r3
	strb r2, [r0]
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0xf
	bne _08060A28
	b _08060B34
_08060A28:
	adds r0, r5, #0
	movs r1, #0xf
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
	b _08060B34
	.align 2, 0
_08060A38: .4byte 0x000003B7
_08060A3C:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	bne _08060A4A
	b _08060B76
_08060A4A:
	movs r0, #0x40
	strb r0, [r5, #0xd]
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _08060B34
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
	b _08060B34
_08060A66:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08060A76
	b _08060B76
_08060A76:
	b _08060B34
_08060A78:
	ldr r0, _08060A84 @ =0x000003B7
	adds r1, r7, r0
	movs r0, #0
	strb r0, [r1]
	b _08060B76
	.align 2, 0
_08060A84: .4byte 0x000003B7
_08060A88:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _08060A94
	cmp r0, #1
	beq _08060AD6
	b _08060B76
_08060A94:
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_0805B878
	ldr r2, _08060B3C @ =0x000003B7
	adds r1, r7, r2
	movs r0, #1
	strb r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r5, #0x48]
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _08060ACC
	adds r0, r5, #0
	movs r1, #1
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
_08060ACC:
	movs r0, #0x10
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
_08060AD6:
	adds r0, r5, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, _08060B40 @ =0x000001FF
	cmp r1, r0
	bgt _08060AEC
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
_08060AEC:
	ldrb r0, [r5, #0xd]
	adds r4, r0, #0
	cmp r4, #0
	bne _08060B50
	ldr r1, _08060B44 @ =0xFFFF8000
	movs r0, #1
	movs r2, #0
	bl sub_0800ED24
	ldr r0, _08060B48 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08060B4C @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0x78
	bne _08060B76
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_0805B878
	ldr r3, _08060B3C @ =0x000003B7
	adds r0, r7, r3
	strb r4, [r0]
	movs r0, #0xed
	lsls r0, r0, #2
	adds r2, r7, r0
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
_08060B34:
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	b _08060B76
	.align 2, 0
_08060B3C: .4byte 0x000003B7
_08060B40: .4byte 0x000001FF
_08060B44: .4byte 0xFFFF8000
_08060B48: .4byte gEwramData
_08060B4C: .4byte 0x00013110
_08060B50:
	subs r0, #1
	strb r0, [r5, #0xd]
	b _08060B76
_08060B56:
	adds r0, r7, #0
	bl sub_08013960
	mov r1, r8
	ldr r0, [r1]
	ldr r2, _08060B94 @ =0x00000427
	adds r0, r0, r2
	mov r3, sb
	strb r3, [r0]
	adds r0, r5, #0
	movs r1, #1
	bl sub_0805B66C
	movs r0, #0x27
	bl sub_08012048
_08060B76:
	ldrb r0, [r5, #0xa]
	cmp r0, #0x80
	beq _08060B82
	adds r0, r5, #0
	bl sub_0803F17C
_08060B82:
	mov r0, sb
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08060B94: .4byte 0x00000427
