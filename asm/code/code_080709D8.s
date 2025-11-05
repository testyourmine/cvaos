	.include "asm/gba_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	thumb_func_start sub_080709D8
sub_080709D8: @ 0x080709D8
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
	movs r2, #1
	strh r2, [r1, #6]
	ldr r1, [r0, #0x40]
	str r1, [sp, #8]
	ldr r1, [r0, #0x44]
	str r1, [sp, #0xc]
	str r2, [r0, #0x1c]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r0}
	bx r0

	thumb_func_start sub_08070A08
sub_08070A08: @ 0x08070A08
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r2, #4]
	bl sub_08021530
	ldr r1, [r4, #0x40]
	ldr r2, [r4, #0x44]
	adds r0, r4, #0
	movs r3, #0xf
	bl sub_08070A30
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xa]
	movs r0, #0x28
	strb r0, [r4, #0xd]
	strb r1, [r4, #0xb]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08070A30
sub_08070A30: @ 0x08070A30
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	ldr r2, _08070AB4 @ =sub_0807091C
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _08070AA8
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
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
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _08070AB8 @ =0x081CBF3C
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08070ABC @ =0x08212FB4
	adds r0, r7, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	adds r0, r4, #0
	adds r0, #0x65
	mov r1, r8
	strb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08070AC0 @ =sub_0803B9D0
	str r0, [r4, #4]
_08070AA8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08070AB4: .4byte sub_0807091C
_08070AB8: .4byte 0x081CBF3C
_08070ABC: .4byte 0x08212FB4
_08070AC0: .4byte sub_0803B9D0

	thumb_func_start sub_08070AC4
sub_08070AC4: @ 0x08070AC4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08070AF8 @ =0x081CBF3C
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _08070B08
	ldr r0, _08070AFC @ =0x0820A464
	movs r1, #0
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _08070B00 @ =0x08212FB4
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _08070B04 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _08070B0A
	.align 2, 0
_08070AF8: .4byte 0x081CBF3C
_08070AFC: .4byte 0x0820A464
_08070B00: .4byte 0x08212FB4
_08070B04: .4byte sub_0803B9D0
_08070B08:
	movs r0, #0
_08070B0A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08070B10
sub_08070B10: @ 0x08070B10
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

	thumb_func_start sub_08070B3C
sub_08070B3C: @ 0x08070B3C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r0, _08070B94 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08070B98 @ =0x0000A094
	adds r1, r1, r0
	mov r8, r1
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	beq _08070BBC
	cmp r0, #2
	beq _08070B78
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
	beq _08070B78
	adds r0, r5, #0
	bl sub_08021924
_08070B78:
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _08070B9C
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	b _08070BAA
	.align 2, 0
_08070B94: .4byte gEwramData
_08070B98: .4byte 0x0000A094
_08070B9C:
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_08070BAA:
	adds r0, r5, #0
	bl sub_0806B0A8
	cmp r0, #0
	beq _08070BBC
	movs r0, #2
	strb r0, [r5, #0xa]
	movs r0, #1
	strb r0, [r5, #0xd]
_08070BBC:
	adds r0, r5, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _08070BD8
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	bne _08070BCE
	b _08070D30
_08070BCE:
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
	b _08070D30
_08070BD8:
	ldrb r0, [r5, #0xa]
	cmp r0, #4
	bls _08070BE0
	b _08070D24
_08070BE0:
	lsls r0, r0, #2
	ldr r1, _08070BEC @ =_08070BF0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08070BEC: .4byte _08070BF0
_08070BF0: @ jump table
	.4byte _08070C04 @ case 0
	.4byte _08070C0C @ case 1
	.4byte _08070C14 @ case 2
	.4byte _08070C5C @ case 3
	.4byte _08070D1C @ case 4
_08070C04:
	adds r0, r5, #0
	bl sub_08070E68
	b _08070D24
_08070C0C:
	adds r0, r5, #0
	bl sub_080714A4
	b _08070D24
_08070C14:
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r2, _08070C58 @ =0xFFE00000
	adds r0, r5, #0
	movs r3, #0
	bl sub_08069F18
	adds r0, r5, #0
	bl sub_0806AEAC
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08070D24
	ldr r1, [r5, #0x18]
	cmp r1, #0
	beq _08070D24
	ldr r0, [r1]
	cmp r0, #0
	beq _08070D24
	adds r0, r1, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #3
	bne _08070D24
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq _08070D24
	subs r0, #1
	str r0, [r1, #0x18]
	b _08070D24
	.align 2, 0
_08070C58: .4byte 0xFFE00000
_08070C5C:
	bl RandomNumberGenerator
	adds r6, r0, #0
	movs r0, #7
	ands r6, r0
	cmp r6, #0
	bne _08070D30
	ldr r0, [r5, #0x18]
	cmp r0, #2
	bgt _08070D30
	ldr r2, _08070D10 @ =EntityUpdateNothing
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _08070D30
	movs r2, #0x30
	ldrsh r7, [r5, r2]
	cmp r7, #1
	bne _08070D30
	ldr r0, [r5, #0x18]
	adds r0, #1
	str r0, [r5, #0x18]
	bl RandomNumberGenerator
	movs r1, #0xff
	ands r1, r0
	adds r1, #0x90
	lsls r1, r1, #0x10
	mov r2, r8
	ldr r0, [r2, #4]
	subs r1, r1, r0
	str r1, [r4, #0x40]
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	adds r0, #0x20
	lsls r0, r0, #0x10
	ldr r1, [r2, #8]
	subs r0, r0, r1
	str r0, [r4, #0x44]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x37
	strb r6, [r0]
	adds r3, r5, #0
	adds r3, #0x36
	ldrb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x36
	strb r0, [r1]
	strh r7, [r4, #0x30]
	strh r6, [r4, #0x32]
	ldr r0, _08070D14 @ =sub_0803B9D0
	str r0, [r4, #4]
	ldr r2, _08070D18 @ =0x080E9644
	ldrb r1, [r3]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #0xc]
	strh r0, [r4, #0x34]
	ldrb r1, [r3]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #0xe]
	strh r0, [r4, #0x2e]
	ldr r0, [r5]
	str r0, [r4]
	adds r0, r4, #0
	bl sub_08070D3C
	movs r0, #0x3c
	strb r0, [r5, #0xd]
	str r5, [r4, #0x18]
	ldrh r0, [r5, #0x1c]
	strh r0, [r4, #0x1c]
	ldrh r0, [r5, #0x1e]
	strh r0, [r4, #0x1e]
	b _08070D30
	.align 2, 0
_08070D10: .4byte EntityUpdateNothing
_08070D14: .4byte sub_0803B9D0
_08070D18: .4byte 0x080E9644
_08070D1C:
	adds r0, r5, #0
	bl sub_0803F17C
	b _08070D30
_08070D24:
	adds r0, r5, #0
	bl sub_0806DF20
	adds r0, r5, #0
	bl sub_0806E314
_08070D30:
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08070D3C
sub_08070D3C: @ 0x08070D3C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r5, _08070D5C @ =gEwramData
	ldr r0, [r5]
	ldr r1, _08070D60 @ =0x0000A094
	adds r6, r0, r1
	adds r0, r4, #0
	bl sub_0807188C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08070D64
	adds r0, r4, #0
	bl EntityDelete
	b _08070E62
	.align 2, 0
_08070D5C: .4byte gEwramData
_08070D60: .4byte 0x0000A094
_08070D64:
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r0, [r5]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r7, #0x40
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08070D92
	movs r0, #4
	strb r0, [r4, #0xa]
	b _08070E62
_08070D92:
	ldr r1, _08070DDC @ =sub_080718D8
	ldr r2, _08070DE0 @ =sub_080715B4
	adds r0, r4, #0
	bl sub_0806D244
	movs r0, #0x32
	ldrsh r5, [r4, r0]
	cmp r5, #0
	beq _08070DE4
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
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r6, #6]
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r0, [r6, #0xa]
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r4, #0x1e]
	b _08070E62
	.align 2, 0
_08070DDC: .4byte sub_080718D8
_08070DE0: .4byte sub_080715B4
_08070DE4:
	strb r5, [r4, #0xa]
	movs r0, #0x3c
	strb r0, [r4, #0xd]
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08070E5C
	adds r0, r4, #0
	bl sub_0806AF98
	movs r0, #0xa
	strb r0, [r4, #0xb]
	str r5, [r4, #0x50]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r4, #0x54]
	strb r5, [r4, #0x14]
	strb r5, [r4, #0x15]
	strb r5, [r4, #0x16]
	strb r5, [r4, #0x17]
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
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
	ands r1, r7
	cmp r1, #0
	beq _08070E46
	movs r0, #0x80
	lsls r0, r0, #8
	b _08070E48
_08070E46:
	ldr r0, _08070E58 @ =0xFFFF8000
_08070E48:
	str r0, [r4, #0x48]
	movs r0, #0
	strb r0, [r4, #0xd]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	b _08070E62
	.align 2, 0
_08070E58: .4byte 0xFFFF8000
_08070E5C:
	adds r0, r4, #0
	adds r0, #0x20
	strb r5, [r0]
_08070E62:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08070E68
sub_08070E68: @ 0x08070E68
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _08070E88 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08070E8C @ =0x0000A094
	adds r6, r0, r1
_08070E74:
	ldrb r0, [r5, #0xb]
	cmp r0, #0xa
	bls _08070E7C
	b _0807149E
_08070E7C:
	lsls r0, r0, #2
	ldr r1, _08070E90 @ =_08070E94
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08070E88: .4byte gEwramData
_08070E8C: .4byte 0x0000A094
_08070E90: .4byte _08070E94
_08070E94: @ jump table
	.4byte _08070EC0 @ case 0
	.4byte _08070EEC @ case 1
	.4byte _08070F78 @ case 2
	.4byte _080710E4 @ case 3
	.4byte _080710F6 @ case 4
	.4byte _08071130 @ case 5
	.4byte _08071260 @ case 6
	.4byte _0807149E @ case 7
	.4byte _0807149E @ case 8
	.4byte _08071364 @ case 9
	.4byte _080713D0 @ case 10
_08070EC0:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bhi _08070ED0
	b _0807149E
_08070ED0:
	movs r0, #0
	strb r0, [r5, #0xd]
	ldrb r1, [r5, #0xb]
	adds r1, #1
	strb r1, [r5, #0xb]
	str r0, [r5, #0x48]
	ldr r1, _08070EE8 @ =0xFFFF8000
	str r1, [r5, #0x4c]
	str r0, [r5, #0x50]
	str r0, [r5, #0x54]
	b _0807149E
	.align 2, 0
_08070EE8: .4byte 0xFFFF8000
_08070EEC:
	adds r0, r5, #0
	bl sub_0806D3CC
	adds r0, r5, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r3, #0xa
	ldrsh r1, [r6, r3]
	adds r0, r0, r1
	movs r2, #0x1e
	ldrsh r1, [r5, r2]
	cmp r0, r1
	bge _08070F10
	adds r0, r5, #0
	movs r1, #0x10
	bl sub_0806D4A8
_08070F10:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r5, #0
	bl sub_0806D3D8
	ldr r1, [r5, #0x4c]
	ldr r0, _08070F48 @ =0xFFFFC000
	cmp r1, r0
	ble _08070F28
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
_08070F28:
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08070F4C
	movs r0, #0
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _0807149E
	.align 2, 0
_08070F48: .4byte 0xFFFFC000
_08070F4C:
	movs r4, #1
	strb r1, [r5, #0x15]
	adds r0, r5, #0
	movs r1, #5
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0806CF2C
	adds r3, r5, #0
	adds r3, #0x58
	ands r0, r4
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	b _0807149E
_08070F78:
	bl RandomNumberGenerator
	adds r4, r0, #0
	movs r0, #3
	ands r4, r0
	cmp r4, #0
	beq _0807106C
	movs r0, #0x15
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _08070FF8
	str r0, [r5, #0x54]
	adds r0, r5, #0
	adds r0, #0x46
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r2, #0xa
	ldrsh r1, [r6, r2]
	adds r2, r0, r1
	movs r3, #0x1e
	ldrsh r1, [r5, r3]
	adds r0, r1, #0
	subs r0, #0x18
	cmp r2, r0
	bge _08070FB0
	movs r0, #0x80
	lsls r0, r0, #8
	b _08070FCC
_08070FB0:
	adds r0, r1, #0
	adds r0, #8
	cmp r2, r0
	bgt _08070FCA
	bl RandomNumberGenerator
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08070FCA
	movs r0, #0x80
	lsls r0, r0, #8
	b _08070FCC
_08070FCA:
	ldr r0, _08070FE8 @ =0xFFFF8000
_08070FCC:
	str r0, [r5, #0x4c]
	movs r0, #0
	str r0, [r5, #0x50]
	bl RandomNumberGenerator
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08070FEC
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r5, #0x48]
	b _0807105A
	.align 2, 0
_08070FE8: .4byte 0xFFFF8000
_08070FEC:
	ldr r0, _08070FF4 @ =0xFFFF8000
	str r0, [r5, #0x48]
	b _0807105A
	.align 2, 0
_08070FF4: .4byte 0xFFFF8000
_08070FF8:
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
	str r0, [r5, #0x48]
	str r0, [r5, #0x50]
	str r0, [r5, #0x54]
	adds r0, r5, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r3, #0xa
	ldrsh r0, [r6, r3]
	adds r1, r1, r0
	movs r0, #0x1e
	ldrsh r2, [r5, r0]
	adds r0, r2, #0
	subs r0, #0x18
	cmp r1, r0
	bge _0807103C
	movs r0, #0x80
	lsls r0, r0, #8
	b _08071058
_0807103C:
	adds r0, r2, #0
	adds r0, #8
	cmp r1, r0
	bgt _08071056
	bl RandomNumberGenerator
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08071056
	movs r0, #0x80
	lsls r0, r0, #8
	b _08071058
_08071056:
	ldr r0, _08071068 @ =0xFFFF8000
_08071058:
	str r0, [r5, #0x4c]
_0807105A:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
	b _08070E74
	.align 2, 0
_08071068: .4byte 0xFFFF8000
_0807106C:
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x42
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _08071086
	rsbs r0, r0, #0
_08071086:
	cmp r0, #0x20
	bgt _080710B8
	movs r4, #0x80
	lsls r4, r4, #8
	str r4, [r5, #0x4c]
	bl RandomNumberGenerator
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080710A0
	str r4, [r5, #0x48]
	b _080710A4
_080710A0:
	ldr r0, _080710B4 @ =0xFFFF8000
	str r0, [r5, #0x48]
_080710A4:
	movs r0, #0
	str r0, [r5, #0x50]
	str r0, [r5, #0x54]
	strb r0, [r5, #0xd]
	movs r0, #4
	strb r0, [r5, #0xb]
	b _0807149E
	.align 2, 0
_080710B4: .4byte 0xFFFF8000
_080710B8:
	str r4, [r5, #0x48]
	str r4, [r5, #0x50]
	ldr r0, _080710E0 @ =0xFFFAC000
	str r0, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	movs r0, #5
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	strb r4, [r5, #0x14]
	strb r4, [r5, #0x15]
	strb r4, [r5, #0x16]
	b _0807149E
	.align 2, 0
_080710E0: .4byte 0xFFFAC000
_080710E4:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1f
	bls _080710F6
	movs r0, #2
	strb r0, [r5, #0xb]
_080710F6:
	adds r0, r5, #0
	bl sub_0806D3AC
	movs r3, #0x30
	ldrsh r0, [r5, r3]
	cmp r0, #1
	beq _08071106
	b _0807149E
_08071106:
	adds r3, r5, #0
	adds r3, #0x42
	ldrh r2, [r3]
	ldrh r0, [r6, #6]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x87
	bgt _0807111E
	adds r0, r2, #0
	adds r0, #0x88
	b _0807112A
_0807111E:
	movs r0, #0xcc
	lsls r0, r0, #1
	cmp r1, r0
	bgt _08071128
	b _0807149E
_08071128:
	adds r0, r2, r0
_0807112A:
	subs r0, r0, r1
	strh r0, [r3]
	b _0807149E
_08071130:
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r7, _08071248 @ =0xFFE00000
	adds r0, r5, #0
	adds r2, r7, #0
	movs r3, #1
	bl sub_08069F18
	adds r4, r0, #0
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	bge _0807119C
	movs r0, #0x14
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _0807119C
	adds r2, r5, #0
	adds r2, #0x46
	movs r1, #0
	ldrsh r0, [r2, r1]
	movs r3, #0xa
	ldrsh r1, [r6, r3]
	adds r0, r0, r1
	movs r3, #0x1e
	ldrsh r1, [r5, r3]
	cmp r0, r1
	bge _0807119C
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	bne _0807119C
	movs r0, #1
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r3, #0
	ldrsh r1, [r2, r3]
	subs r1, #0x20
	bl sub_0806E5FC
	ldr r3, [r5, #0x40]
	lsls r0, r0, #0x10
	adds r0, r0, r7
	ldr r1, [r5, #0x44]
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r2, [r0]
	subs r2, #1
	adds r0, r3, #0
	bl sub_0806DC60
_0807119C:
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	ble _080711EA
	movs r0, #0x16
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _080711EA
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _080711EA
	movs r0, #1
	strb r0, [r5, #0x16]
	adds r0, r5, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r5, #0
	adds r1, #0x46
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r1, #7
	bl sub_0806E5FC
	ldr r3, [r5, #0x40]
	lsls r0, r0, #0x10
	ldr r1, _0807124C @ =0xFFF90000
	adds r0, r0, r1
	ldr r1, [r5, #0x44]
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r2, [r0]
	subs r2, #1
	adds r0, r3, #0
	bl sub_0806DC60
	movs r0, #9
	strb r0, [r5, #0xb]
_080711EA:
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	bne _080711F4
	b _0807149E
_080711F4:
	movs r1, #0
	movs r0, #6
	strb r0, [r5, #0xb]
	str r1, [r5, #0x50]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r5, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r5, #0x54]
	strb r1, [r5, #0x14]
	strb r1, [r5, #0x15]
	strb r1, [r5, #0x16]
	strb r1, [r5, #0x17]
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
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
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _08071250
	movs r0, #0x80
	lsls r0, r0, #8
	b _08071252
	.align 2, 0
_08071248: .4byte 0xFFE00000
_0807124C: .4byte 0xFFF90000
_08071250:
	ldr r0, _0807125C @ =0xFFFF8000
_08071252:
	str r0, [r5, #0x48]
	movs r0, #0
	strb r0, [r5, #0xd]
	b _0807149E
	.align 2, 0
_0807125C: .4byte 0xFFFF8000
_08071260:
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r2, _080712B8 @ =0xFFE00000
	adds r0, r5, #0
	movs r3, #0
	bl sub_08069F18
	adds r4, r0, #0
	movs r0, #0x44
	ands r0, r4
	cmp r0, #0x40
	bne _080712C0
	movs r0, #0x16
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _080712C0
	movs r0, #1
	strb r0, [r5, #0x16]
	adds r0, r5, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r5, #0
	adds r1, #0x46
	movs r3, #0
	ldrsh r1, [r1, r3]
	subs r1, #7
	bl sub_0806E5FC
	ldr r3, [r5, #0x40]
	lsls r0, r0, #0x10
	ldr r1, _080712BC @ =0xFFF90000
	adds r0, r0, r1
	ldr r1, [r5, #0x44]
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r2, [r0]
	subs r2, #1
	adds r0, r3, #0
	bl sub_0806DC60
	b _080712C8
	.align 2, 0
_080712B8: .4byte 0xFFE00000
_080712BC: .4byte 0xFFF90000
_080712C0:
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	bne _080712CE
_080712C8:
	movs r0, #9
	strb r0, [r5, #0xb]
	b _0807149E
_080712CE:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bhi _080712DE
	b _0807149E
_080712DE:
	movs r4, #0
	strb r4, [r5, #0xd]
	ldrb r0, [r5, #0x17]
	adds r0, #1
	strb r0, [r5, #0x17]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #8
	ble _08071318
	str r4, [r5, #0x48]
	str r4, [r5, #0x50]
	ldr r0, _08071314 @ =0xFFFD0000
	str r0, [r5, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r5, #0x54]
	movs r0, #9
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	strb r4, [r5, #0x14]
	strb r4, [r5, #0x16]
	b _0807149E
	.align 2, 0
_08071314: .4byte 0xFFFD0000
_08071318:
	bl RandomNumberGenerator
	adds r1, r0, #0
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	beq _0807135C
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
	beq _08071352
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r5, #0x48]
	b _0807149E
_08071352:
	ldr r0, _08071358 @ =0xFFFF8000
	str r0, [r5, #0x48]
	b _0807149E
	.align 2, 0
_08071358: .4byte 0xFFFF8000
_0807135C:
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xb]
	b _0807149E
_08071364:
	movs r1, #0xa0
	lsls r1, r1, #6
	ldr r2, _080713C8 @ =0xFFE00000
	adds r0, r5, #0
	movs r3, #0
	bl sub_0806A0B4
	adds r4, r0, #0
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	bgt _0807137C
	b _0807149E
_0807137C:
	movs r0, #0x16
	ldrsb r0, [r5, r0]
	cmp r0, #0
	beq _08071386
	b _0807149E
_08071386:
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	bne _08071390
	b _0807149E
_08071390:
	movs r0, #1
	strb r0, [r5, #0x16]
	adds r0, r5, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r5, #0
	adds r1, #0x46
	movs r3, #0
	ldrsh r1, [r1, r3]
	subs r1, #7
	bl sub_0806E5FC
	ldr r3, [r5, #0x40]
	lsls r0, r0, #0x10
	ldr r1, _080713CC @ =0xFFF90000
	adds r0, r0, r1
	ldr r1, [r5, #0x44]
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r2, [r0]
	subs r2, #1
	adds r0, r3, #0
	bl sub_0806DC60
	b _0807149E
	.align 2, 0
_080713C8: .4byte 0xFFE00000
_080713CC: .4byte 0xFFF90000
_080713D0:
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r2, _08071478 @ =0xFFE00000
	adds r0, r5, #0
	movs r3, #0
	bl sub_08069F18
	adds r4, r0, #0
	movs r0, #0x44
	ands r0, r4
	cmp r0, #0x40
	bne _08071424
	movs r0, #0x16
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _08071424
	movs r0, #1
	strb r0, [r5, #0x16]
	adds r0, r5, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r5, #0
	adds r1, #0x46
	movs r3, #0
	ldrsh r1, [r1, r3]
	subs r1, #7
	bl sub_0806E5FC
	ldr r3, [r5, #0x40]
	lsls r0, r0, #0x10
	ldr r1, _0807147C @ =0xFFF90000
	adds r0, r0, r1
	ldr r1, [r5, #0x44]
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r2, [r0]
	subs r2, #1
	adds r0, r3, #0
	bl sub_0806DC60
_08071424:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _08071492
	movs r0, #0
	strb r0, [r5, #0xd]
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq _0807149E
	bl RandomNumberGenerator
	adds r1, r0, #0
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	beq _0807148C
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
	beq _08071480
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r5, #0x48]
	b _08071492
	.align 2, 0
_08071478: .4byte 0xFFE00000
_0807147C: .4byte 0xFFF90000
_08071480:
	ldr r0, _08071488 @ =0xFFFF8000
	str r0, [r5, #0x48]
	b _08071492
	.align 2, 0
_08071488: .4byte 0xFFFF8000
_0807148C:
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xb]
_08071492:
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq _0807149E
	movs r0, #0
	strb r0, [r5, #0x16]
_0807149E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080714A4
sub_080714A4: @ 0x080714A4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _080714CC
	cmp r0, #1
	bgt _080714B8
	cmp r0, #0
	beq _080714BE
	b _080715A8
_080714B8:
	cmp r0, #2
	beq _080714EA
	b _080715A8
_080714BE:
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _080714E2
_080714CC:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #3
	bls _080715A8
	movs r0, #0x7a
	bl sub_080D7910
	adds r0, r4, #0
	bl sub_08071648
_080714E2:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	b _080715A8
_080714EA:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r5, #1
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080715A8
	movs r0, #0x30
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bne _08071550
	strb r1, [r4, #0xa]
	movs r0, #0xa
	strb r0, [r4, #0xb]
	str r1, [r4, #0x50]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r4, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r4, #0x54]
	strb r1, [r4, #0x14]
	strb r1, [r4, #0x15]
	strb r1, [r4, #0x16]
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0806CF2C
	adds r3, r4, #0
	adds r3, #0x58
	ands r0, r5
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
	beq _080715A0
	movs r0, #0x80
	lsls r0, r0, #8
	b _080715A2
_08071550:
	movs r1, #0
	strb r1, [r4, #0xa]
	movs r0, #6
	strb r0, [r4, #0xb]
	str r1, [r4, #0x50]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r4, #0x54]
	strb r1, [r4, #0x14]
	strb r1, [r4, #0x15]
	strb r1, [r4, #0x16]
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0806CF2C
	adds r3, r4, #0
	adds r3, #0x58
	ands r0, r5
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
	beq _080715A0
	movs r0, #0x80
	lsls r0, r0, #8
	b _080715A2
_080715A0:
	ldr r0, _080715B0 @ =0xFFFF8000
_080715A2:
	str r0, [r4, #0x48]
	movs r0, #0
	strb r0, [r4, #0xd]
_080715A8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080715B0: .4byte 0xFFFF8000

	thumb_func_start sub_080715B4
sub_080715B4: @ 0x080715B4
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
	bgt _08071640
	adds r0, r6, #0
	bl sub_080683BC
	movs r0, #0x6e
	bl sub_080D7910
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
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
	str r4, [r6, #0x48]
	str r4, [r6, #0x50]
	str r4, [r6, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r6, #0x54]
_08071640:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08071648
sub_08071648: @ 0x08071648
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r2, _080716CC @ =sub_08071764
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	beq _08071712
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_080717E0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08071670
	adds r0, r5, #0
	bl EntityDelete
_08071670:
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_0807171C
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	str r6, [r5, #0x10]
	adds r4, r6, #0
	adds r4, #0x58
	ldrb r0, [r4]
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
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080716D0
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, #5
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #0xa
	b _080716E0
	.align 2, 0
_080716CC: .4byte sub_08071764
_080716D0:
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #5
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, _08071718 @ =0xFFFE0000
_080716E0:
	str r0, [r5, #0x48]
	adds r0, r6, #0
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0x18
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x37
	ldrb r0, [r0]
	subs r1, #0xf
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
_08071712:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08071718: .4byte 0xFFFE0000

	thumb_func_start sub_0807171C
sub_0807171C: @ 0x0807171C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08071758 @ =0x0810FCF8
	str r0, [sp]
	ldr r2, _0807175C @ =sub_08071830
	ldr r3, _08071760 @ =sub_08071870
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
_08071758: .4byte 0x0810FCF8
_0807175C: .4byte sub_08071830
_08071760: .4byte sub_08071870

	thumb_func_start sub_08071764
sub_08071764: @ 0x08071764
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r7, r0, #0
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	beq _080717C8
	cmp r0, #1
	bgt _0807177A
	cmp r0, #0
	beq _08071780
	b _080717C8
_0807177A:
	cmp r0, #2
	beq _08071794
	b _080717C8
_08071780:
	adds r0, r7, #0
	bl sub_0806D3C0
	adds r0, r7, #0
	movs r1, #1
	bl sub_0806D128
	cmp r0, #0
	beq _080717C8
	b _080717C0
_08071794:
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x44]
	movs r5, #0xa0
	lsls r5, r5, #0xc
	movs r6, #0x80
	lsls r6, r6, #0xb
	adds r4, r7, #0
	adds r4, #0x5c
	ldrb r2, [r4]
	str r2, [sp]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0806D5C0
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x44]
	ldrb r2, [r4]
	str r2, [sp]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0806D5C0
_080717C0:
	adds r0, r7, #0
	bl EntityDelete
	b _080717D6
_080717C8:
	add r0, sp, #4
	adds r1, r7, #0
	bl sub_080421AC
	adds r0, r7, #0
	bl sub_0803F17C
_080717D6:
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080717E0
sub_080717E0: @ 0x080717E0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _0807181C @ =0x081CBF44
	bl sub_0803AFB8
	adds r2, r0, #0
	cmp r2, #0
	blt _08071828
	ldr r1, _08071820 @ =0x082133F4
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _08071824 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _0807182A
	.align 2, 0
_0807181C: .4byte 0x081CBF44
_08071820: .4byte 0x082133F4
_08071824: .4byte sub_0803B9D0
_08071828:
	movs r0, #0
_0807182A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08071830
sub_08071830: @ 0x08071830
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	mov r1, sp
	adds r0, #0x3c
	ldrb r0, [r0]
	movs r6, #0
	movs r2, #0
	strh r0, [r1]
	movs r5, #2
	movs r0, #2
	strh r0, [r1, #2]
	mov r0, sp
	strh r2, [r0, #4]
	movs r0, #1
	strh r0, [r1, #6]
	ldr r0, [r4, #0x40]
	str r0, [sp, #8]
	ldr r0, [r4, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	strb r5, [r4, #0xa]
	movs r0, #0x28
	strb r0, [r4, #0xd]
	strb r6, [r4, #0xb]
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08071870
sub_08071870: @ 0x08071870
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r2, #4]
	bl sub_08021530
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xa]
	movs r0, #0x28
	strb r0, [r4, #0xd]
	strb r1, [r4, #0xb]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0807188C
sub_0807188C: @ 0x0807188C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080718C0 @ =0x081CBF44
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _080718D0
	ldr r0, _080718C4 @ =0x0820A488
	movs r1, #0
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _080718C8 @ =0x082133F4
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _080718CC @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _080718D2
	.align 2, 0
_080718C0: .4byte 0x081CBF44
_080718C4: .4byte 0x0820A488
_080718C8: .4byte 0x082133F4
_080718CC: .4byte sub_0803B9D0
_080718D0:
	movs r0, #0
_080718D2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080718D8
sub_080718D8: @ 0x080718D8
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

	thumb_func_start sub_08071904
sub_08071904: @ 0x08071904
	push {r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0807192E
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
	beq _0807192E
	adds r0, r4, #0
	bl sub_08021924
_0807192E:
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _08071948
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	b _08071956
_08071948:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_08071956:
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _08071962
	adds r0, r4, #0
	bl sub_0806AE54
_08071962:
	adds r0, r4, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _08071972
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _08071986
_08071972:
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	beq _08071990
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _08071990
	cmp r0, #2
	beq _08071990
_08071986:
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
	b _080719EC
_08071990:
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bhi _080719E0
	lsls r0, r0, #2
	ldr r1, _080719A0 @ =_080719A4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080719A0: .4byte _080719A4
_080719A4: @ jump table
	.4byte _080719B8 @ case 0
	.4byte _080719C0 @ case 1
	.4byte _080719C8 @ case 2
	.4byte _080719D0 @ case 3
	.4byte _080719D8 @ case 4
_080719B8:
	adds r0, r4, #0
	bl sub_080719F4
	b _080719E0
_080719C0:
	adds r0, r4, #0
	bl sub_08071BA4
	b _080719E0
_080719C8:
	adds r0, r4, #0
	bl sub_08071DBC
	b _080719E0
_080719D0:
	adds r0, r4, #0
	bl sub_08071C30
	b _080719E0
_080719D8:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080719EC
_080719E0:
	adds r0, r4, #0
	bl sub_0806DF20
	adds r0, r4, #0
	bl sub_0806E314
_080719EC:
	add sp, #0x14
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080719F4
sub_080719F4: @ 0x080719F4
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r5, [r4, #0xb]
	cmp r5, #1
	beq _08071AD4
	cmp r5, #1
	bgt _08071A0A
	cmp r5, #0
	beq _08071A10
	b _08071B98
_08071A0A:
	cmp r5, #2
	beq _08071B04
	b _08071B98
_08071A10:
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
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08071A7A
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x3c
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x28
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x78
	movs r3, #0x50
	bl sub_0806CFFC
	cmp r0, #0
	bne _08071A5A
	b _08071B98
_08071A5A:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	adds r2, r4, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	subs r2, #0x13
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _08071B98
_08071A7A:
	cmp r0, #1
	bne _08071A88
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, #0x10
	b _08071A96
_08071A88:
	cmp r0, #2
	beq _08071A8E
	b _08071B98
_08071A8E:
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x4c
_08071A96:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x28
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x3c
	movs r3, #0x50
	bl sub_0806CFFC
	cmp r0, #0
	beq _08071B98
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	adds r2, r4, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	subs r2, #0x13
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	strh r5, [r4, #0x32]
	b _08071B98
_08071AD4:
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	ands r5, r0
	cmp r5, #0
	beq _08071B98
	movs r0, #2
	strb r0, [r4, #0xb]
	ldrb r1, [r2]
	subs r0, #4
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0x64
	strb r0, [r4, #0xd]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x4c]
	b _08071B98
_08071B04:
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r2, _08071B64 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08069A00
	movs r1, #4
	ands r1, r0
	cmp r1, #0
	beq _08071B7C
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _08071B7C
	movs r0, #0
	strb r0, [r4, #0xd]
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
	bl RandomNumberGenerator
	adds r1, r0, #0
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	bne _08071B68
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xb]
	b _08071B98
	.align 2, 0
_08071B64: .4byte 0xFFE00000
_08071B68:
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08071B78
	movs r0, #0x80
	lsls r0, r0, #7
	b _08071B7A
_08071B78:
	ldr r0, _08071BA0 @ =0xFFFFC000
_08071B7A:
	str r0, [r4, #0x48]
_08071B7C:
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _08071B98
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #2
	bl sub_0803F2C8
	movs r0, #0
	strb r0, [r4, #0xb]
_08071B98:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08071BA0: .4byte 0xFFFFC000

	thumb_func_start sub_08071BA4
sub_08071BA4: @ 0x08071BA4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xb]
	cmp r5, #1
	beq _08071BD2
	cmp r5, #1
	bgt _08071BB8
	cmp r5, #0
	beq _08071BBE
	b _08071C2A
_08071BB8:
	cmp r5, #2
	beq _08071BF2
	b _08071C2A
_08071BBE:
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	b _08071C2A
_08071BD2:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #1
	bls _08071C2A
	movs r0, #2
	movs r1, #0
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xd]
	adds r0, r4, #0
	bl sub_08072038
	movs r0, #0x85
	bl sub_080D7910
	b _08071C2A
_08071BF2:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _08071C2A
	movs r0, #0
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x64
	strb r0, [r4, #0xd]
	strb r5, [r4, #0xb]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x4c]
_08071C2A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08071C30
sub_08071C30: @ 0x08071C30
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r7, r0, #0
	ldrb r4, [r7, #0xb]
	cmp r4, #0
	beq _08071C4A
	cmp r4, #1
	bne _08071C48
	b _08071D58
_08071C48:
	b _08071D94
_08071C4A:
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
	str r4, [r7, #0x48]
	str r4, [r7, #0x50]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r7, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r7, #0x54]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08071CFC
	bl RandomNumberGenerator
	ldr r4, _08071CE0 @ =0x0000FFFF
	ands r4, r0
	ldr r6, _08071CE4 @ =0xFFFFF000
	subs r4, r6, r4
	bl RandomNumberGenerator
	ldr r5, _08071CE8 @ =0x00007FFF
	ands r0, r5
	ldr r3, _08071CEC @ =0xFFFF0000
	subs r3, r3, r0
	ldr r1, [r7, #0x40]
	ldr r0, _08071CF0 @ =0xFFFA0000
	mov sb, r0
	add r1, sb
	ldr r2, [r7, #0x44]
	ldr r0, _08071CF4 @ =0xFFEE0000
	mov r8, r0
	add r2, r8
	str r3, [sp]
	adds r0, r7, #0
	adds r3, r4, #0
	bl sub_08072504
	bl RandomNumberGenerator
	ands r0, r5
	subs r6, r6, r0
	bl RandomNumberGenerator
	ands r0, r5
	ldr r3, _08071CF8 @ =0xFFFE8000
	subs r3, r3, r0
	ldr r1, [r7, #0x40]
	add r1, sb
	ldr r2, [r7, #0x44]
	add r2, r8
	str r3, [sp]
	adds r0, r7, #0
	adds r3, r6, #0
	bl sub_08072504
	b _08071D58
	.align 2, 0
_08071CE0: .4byte 0x0000FFFF
_08071CE4: .4byte 0xFFFFF000
_08071CE8: .4byte 0x00007FFF
_08071CEC: .4byte 0xFFFF0000
_08071CF0: .4byte 0xFFFA0000
_08071CF4: .4byte 0xFFEE0000
_08071CF8: .4byte 0xFFFE8000
_08071CFC:
	bl RandomNumberGenerator
	ldr r4, _08071DA4 @ =0x0000FFFF
	ands r4, r0
	movs r0, #0x80
	lsls r0, r0, #5
	mov sb, r0
	add r4, sb
	bl RandomNumberGenerator
	ldr r5, _08071DA8 @ =0x00007FFF
	ands r0, r5
	ldr r3, _08071DAC @ =0xFFFF0000
	subs r3, r3, r0
	ldr r1, [r7, #0x40]
	movs r0, #0xc0
	lsls r0, r0, #0xb
	mov r8, r0
	add r1, r8
	ldr r2, [r7, #0x44]
	ldr r6, _08071DB0 @ =0xFFEE0000
	adds r2, r2, r6
	str r3, [sp]
	adds r0, r7, #0
	adds r3, r4, #0
	bl sub_08072504
	bl RandomNumberGenerator
	adds r4, r0, #0
	ands r4, r5
	add r4, sb
	bl RandomNumberGenerator
	ands r0, r5
	ldr r3, _08071DB4 @ =0xFFFE8000
	subs r3, r3, r0
	ldr r1, [r7, #0x40]
	add r1, r8
	ldr r2, [r7, #0x44]
	adds r2, r2, r6
	str r3, [sp]
	adds r0, r7, #0
	adds r3, r4, #0
	bl sub_08072504
_08071D58:
	movs r1, #0x80
	lsls r1, r1, #0xb
	ldr r2, _08071DB8 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r7, #0
	bl sub_08069A00
	movs r1, #4
	ands r1, r0
	cmp r1, #0
	beq _08071D94
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08071D94
	movs r0, #0
	strb r0, [r7, #0xa]
	strb r0, [r7, #0xb]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #2
	bl sub_0803F2C8
_08071D94:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08071DA4: .4byte 0x0000FFFF
_08071DA8: .4byte 0x00007FFF
_08071DAC: .4byte 0xFFFF0000
_08071DB0: .4byte 0xFFEE0000
_08071DB4: .4byte 0xFFFE8000
_08071DB8: .4byte 0xFFE00000

	thumb_func_start sub_08071DBC
sub_08071DBC: @ 0x08071DBC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	ldrb r4, [r7, #0xb]
	cmp r4, #1
	bne _08071DD2
	b _08071ED8
_08071DD2:
	cmp r4, #1
	bgt _08071DDC
	cmp r4, #0
	beq _08071DE4
	b _08071F64
_08071DDC:
	cmp r4, #2
	bne _08071DE2
	b _08071F30
_08071DE2:
	b _08071F64
_08071DE4:
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
	str r4, [r7, #0x48]
	str r4, [r7, #0x50]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r7, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r7, #0x54]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	strb r4, [r7, #0xd]
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r0, _08071F10 @ =0x0000FFFF
	mov sl, r0
	ands r4, r0
	ldr r6, _08071F14 @ =0xFFFFF000
	subs r4, r6, r4
	bl RandomNumberGenerator
	ldr r1, _08071F18 @ =0x00007FFF
	mov sb, r1
	ands r0, r1
	ldr r5, _08071F1C @ =0xFFFF0000
	subs r0, r5, r0
	ldr r1, [r7, #0x40]
	ldr r2, _08071F20 @ =0xFFFA0000
	adds r1, r1, r2
	ldr r2, [r7, #0x44]
	ldr r3, _08071F24 @ =0xFFF00000
	mov r8, r3
	add r2, r8
	str r0, [sp]
	adds r0, r7, #0
	adds r3, r4, #0
	bl sub_08072504
	bl RandomNumberGenerator
	adds r4, r0, #0
	mov r0, sl
	ands r4, r0
	movs r1, #0x80
	lsls r1, r1, #5
	adds r4, r4, r1
	bl RandomNumberGenerator
	mov r2, sb
	ands r0, r2
	subs r5, r5, r0
	ldr r1, [r7, #0x40]
	movs r3, #0xc0
	lsls r3, r3, #0xb
	adds r1, r1, r3
	ldr r2, [r7, #0x44]
	add r2, r8
	str r5, [sp]
	adds r0, r7, #0
	adds r3, r4, #0
	bl sub_08072504
	bl RandomNumberGenerator
	mov r1, sl
	ands r0, r1
	subs r6, r6, r0
	bl RandomNumberGenerator
	mov r2, sb
	ands r0, r2
	ldr r5, _08071F28 @ =0xFFFE8000
	subs r0, r5, r0
	ldr r1, [r7, #0x40]
	ldr r3, _08071F20 @ =0xFFFA0000
	adds r1, r1, r3
	ldr r2, [r7, #0x44]
	add r2, r8
	str r0, [sp]
	adds r0, r7, #0
	adds r3, r6, #0
	bl sub_08072504
	bl RandomNumberGenerator
	adds r4, r0, #0
	mov r0, sl
	ands r4, r0
	movs r1, #0x80
	lsls r1, r1, #5
	adds r4, r4, r1
	bl RandomNumberGenerator
	mov r2, sb
	ands r0, r2
	subs r5, r5, r0
	ldr r1, [r7, #0x40]
	movs r3, #0xc0
	lsls r3, r3, #0xb
	adds r1, r1, r3
	ldr r2, [r7, #0x44]
	add r2, r8
	str r5, [sp]
	adds r0, r7, #0
	adds r3, r4, #0
	bl sub_08072504
_08071ED8:
	movs r1, #0x80
	lsls r1, r1, #0xb
	ldr r2, _08071F2C @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r7, #0
	bl sub_08069A00
	movs r1, #4
	ands r1, r0
	cmp r1, #0
	beq _08071F64
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08071F64
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0x28
	strb r0, [r7, #0xd]
	b _08071F64
	.align 2, 0
_08071F10: .4byte 0x0000FFFF
_08071F14: .4byte 0xFFFFF000
_08071F18: .4byte 0x00007FFF
_08071F1C: .4byte 0xFFFF0000
_08071F20: .4byte 0xFFFA0000
_08071F24: .4byte 0xFFF00000
_08071F28: .4byte 0xFFFE8000
_08071F2C: .4byte 0xFFE00000
_08071F30:
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
	bgt _08071F64
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_08071F64:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08071F74
sub_08071F74: @ 0x08071F74
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldrh r0, [r5, #4]
	bl sub_08021530
	adds r3, r0, #0
	adds r7, r4, #0
	adds r7, #0x70
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
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
	movs r1, #0x34
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bgt _08072006
	adds r0, r6, #0
	bl sub_080683BC
	movs r0, #0x70
	bl sub_080D7910
	adds r0, r6, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
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
	b _0807202E
_08072006:
	ldrb r0, [r7]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08072032
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r0
	strb r1, [r2]
	movs r0, #3
_0807202E:
	strb r0, [r6, #0xa]
	strb r4, [r6, #0xb]
_08072032:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08072038
sub_08072038: @ 0x08072038
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r2, _080720BC @ =sub_08072120
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	beq _08072112
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08072608
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08072060
	adds r0, r5, #0
	bl EntityDelete
_08072060:
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_08072434
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	str r6, [r5, #0x10]
	adds r4, r6, #0
	adds r4, #0x58
	ldrb r0, [r4]
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
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080720C0
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, #0x10
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #0xa
	b _080720D0
	.align 2, 0
_080720BC: .4byte sub_08072120
_080720C0:
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x10
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, _08072118 @ =0xFFFE0000
_080720D0:
	str r0, [r5, #0x48]
	adds r0, r6, #0
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0x18
	adds r2, r5, #0
	adds r2, #0x46
	movs r1, #0
	strh r0, [r2]
	ldr r0, _0807211C @ =0xFFFF0000
	str r0, [r5, #0x4c]
	str r1, [r5, #0x50]
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
_08072112:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08072118: .4byte 0xFFFE0000
_0807211C: .4byte 0xFFFF0000

	thumb_func_start sub_08072120
sub_08072120: @ 0x08072120
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, _0807214C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08072150 @ =0x0000A094
	adds r1, r1, r0
	mov r8, r1
	ldrb r6, [r5, #0xa]
	cmp r6, #1
	bne _08072140
	b _0807226C
_08072140:
	cmp r6, #1
	bgt _08072154
	cmp r6, #0
	beq _0807215C
	b _08072410
	.align 2, 0
_0807214C: .4byte gEwramData
_08072150: .4byte 0x0000A094
_08072154:
	cmp r6, #2
	bne _0807215A
	b _0807230C
_0807215A:
	b _08072410
_0807215C:
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _080721EC @ =0xFFFC0000
	adds r0, r5, #0
	bl sub_0806D288
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806D128
	cmp r0, #0
	beq _08072178
	b _08072402
_08072178:
	movs r0, #0xc
	ands r0, r4
	cmp r0, #0
	beq _08072240
	ldr r0, [r5, #0x48]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	mov r8, r0
	ldr r0, [r5, #0x4c]
	ldr r6, [r5, #0x40]
	ldr r7, [r5, #0x44]
	rsbs r0, r0, #0
	mov sb, r0
	ldr r2, _080721F0 @ =sub_080725C0
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	bne _080721A6
	b _08072402
_080721A6:
	str r6, [r4, #0x40]
	str r7, [r4, #0x44]
	mov r2, r8
	str r2, [r4, #0x48]
	mov r3, sb
	str r3, [r4, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _080721F4 @ =0x081CBF4C
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _080721F8 @ =0x082138AC
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	mov r0, r8
	cmp r0, #0
	ble _080721FC
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x15
	b _08072202
	.align 2, 0
_080721EC: .4byte 0xFFFC0000
_080721F0: .4byte sub_080725C0
_080721F4: .4byte 0x081CBF4C
_080721F8: .4byte 0x082138AC
_080721FC:
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x12
_08072202:
	strb r0, [r1]
	mov r1, sb
	cmp r1, #0
	ble _08072218
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0]
	b _08072224
_08072218:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
_08072224:
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0807223C @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #0
	strb r0, [r4, #0xd]
	b _08072402
	.align 2, 0
_0807223C: .4byte sub_0803B9D0
_08072240:
	movs r0, #3
	ands r0, r4
	cmp r0, #0
	bne _0807224A
	b _08072410
_0807224A:
	movs r0, #2
	strb r0, [r5, #0xa]
	strb r6, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _08072410
_0807226C:
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	mov sb, r0
	ldr r7, [r5, #0x40]
	ldr r2, [r5, #0x44]
	mov r8, r2
	ldr r2, _080722D4 @ =sub_080725C0
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	bne _08072290
	b _08072402
_08072290:
	str r7, [r4, #0x40]
	mov r3, r8
	str r3, [r4, #0x44]
	mov r0, sb
	str r0, [r4, #0x48]
	str r6, [r4, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _080722D8 @ =0x081CBF4C
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _080722DC @ =0x082138AC
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	mov r1, sb
	cmp r1, #0
	ble _080722E0
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x15
	b _080722E6
	.align 2, 0
_080722D4: .4byte sub_080725C0
_080722D8: .4byte 0x081CBF4C
_080722DC: .4byte 0x082138AC
_080722E0:
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x12
_080722E6:
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08072308 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #0
	strb r0, [r4, #0xd]
	b _08072402
	.align 2, 0
_08072308: .4byte sub_0803B9D0
_0807230C:
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _08072318
	cmp r0, #1
	beq _080723B6
	b _08072410
_08072318:
	movs r2, #1
	mov sl, r2
	mov r3, sl
	strb r3, [r5, #0xb]
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	mov sb, r0
	ldr r6, [r5, #0x40]
	ldr r7, [r5, #0x44]
	ldr r2, _08072384 @ =sub_080725C0
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _080723B6
	str r6, [r4, #0x40]
	str r7, [r4, #0x44]
	mov r0, sb
	str r0, [r4, #0x48]
	mov r1, sl
	str r1, [r4, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _08072388 @ =0x081CBF4C
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0807238C @ =0x082138AC
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	mov r2, sb
	cmp r2, #0
	ble _08072390
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x15
	b _08072396
	.align 2, 0
_08072384: .4byte sub_080725C0
_08072388: .4byte 0x081CBF4C
_0807238C: .4byte 0x082138AC
_08072390:
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x12
_08072396:
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0807240C @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #0
	strb r0, [r4, #0xd]
_080723B6:
	ldr r2, [r5, #0x14]
	cmp r2, #0
	beq _080723F4
	ldr r0, [r2]
	cmp r0, #0
	beq _080723F4
	ldr r1, [r2, #0x40]
	mov r3, r8
	ldr r0, [r3, #4]
	adds r1, r1, r0
	ldr r0, [r5, #0x18]
	subs r1, r1, r0
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r1, [r2, #0x44]
	ldr r0, [r3, #8]
	adds r1, r1, r0
	ldr r0, [r5, #0x1c]
	subs r1, r1, r0
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldr r0, [r2, #0x40]
	ldr r1, [r3, #4]
	adds r0, r0, r1
	str r0, [r5, #0x18]
	ldr r0, [r2, #0x44]
	ldr r1, [r3, #8]
	adds r0, r0, r1
	str r0, [r5, #0x1c]
_080723F4:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08072410
_08072402:
	adds r0, r5, #0
	bl EntityDelete
	b _08072424
	.align 2, 0
_0807240C: .4byte sub_0803B9D0
_08072410:
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _0807241E
	mov r0, sp
	adds r1, r5, #0
	bl sub_080421AC
_0807241E:
	adds r0, r5, #0
	bl sub_0803F17C
_08072424:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08072434
sub_08072434: @ 0x08072434
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08072470 @ =0x0808FCFC
	str r0, [sp]
	ldr r2, _08072474 @ =sub_0807247C
	ldr r3, _08072478 @ =sub_08072658
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
_08072470: .4byte 0x0808FCFC
_08072474: .4byte sub_0807247C
_08072478: .4byte sub_08072658

	thumb_func_start sub_0807247C
sub_0807247C: @ 0x0807247C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x10
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, _080724FC @ =gEwramData
	ldr r5, [r0]
	ldr r0, _08072500 @ =0x0000A094
	adds r5, r5, r0
	mov r2, sp
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	movs r1, #0
	mov r8, r1
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
	str r6, [r4, #0x14]
	ldr r0, [r6, #0x40]
	ldr r1, [r5, #4]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	ldr r0, [r6, #0x44]
	ldr r1, [r5, #8]
	adds r0, r0, r1
	str r0, [r4, #0x1c]
	movs r0, #2
	strb r0, [r4, #0xa]
	mov r0, r8
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r4, #0x59
	ldrb r1, [r4]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080724FC: .4byte gEwramData
_08072500: .4byte 0x0000A094

	thumb_func_start sub_08072504
sub_08072504: @ 0x08072504
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	ldr r2, _08072568 @ =sub_080725C0
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _080725B0
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	mov r0, r8
	str r0, [r4, #0x48]
	ldr r0, [sp, #0x18]
	str r0, [r4, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _0807256C @ =0x081CBF4C
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08072570 @ =0x082138AC
	adds r0, r7, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	mov r0, r8
	cmp r0, #0
	ble _08072574
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x15
	b _0807257A
	.align 2, 0
_08072568: .4byte sub_080725C0
_0807256C: .4byte 0x081CBF4C
_08072570: .4byte 0x082138AC
_08072574:
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x12
_0807257A:
	strb r0, [r1]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ble _08072590
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0]
	b _0807259C
_08072590:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
_0807259C:
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080725BC @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #0
	strb r0, [r4, #0xd]
_080725B0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080725BC: .4byte sub_0803B9D0

	thumb_func_start sub_080725C0
sub_080725C0: @ 0x080725C0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D3D8
	ldrb r0, [r4, #0xd]
	cmp r0, #6
	bne _080725E4
	adds r1, r4, #0
	adds r1, #0x65
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080725E4:
	ldrb r0, [r4, #0xd]
	cmp r0, #0xc
	bne _080725F4
	adds r1, r4, #0
	adds r1, #0x65
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080725F4:
	ldrb r0, [r4, #0xd]
	cmp r0, #0x11
	bls _08072600
	adds r0, r4, #0
	bl EntityDelete
_08072600:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08072608
sub_08072608: @ 0x08072608
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _08072644 @ =0x081CBF4C
	bl sub_0803AFB8
	adds r2, r0, #0
	cmp r2, #0
	blt _08072650
	ldr r1, _08072648 @ =0x082138AC
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _0807264C @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _08072652
	.align 2, 0
_08072644: .4byte 0x081CBF4C
_08072648: .4byte 0x082138AC
_0807264C: .4byte sub_0803B9D0
_08072650:
	movs r0, #0
_08072652:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08072658
sub_08072658: @ 0x08072658
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r2, #4]
	bl sub_08021530
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xb]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08072670
sub_08072670: @ 0x08072670
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080726F0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08072686
	adds r0, r4, #0
	bl EntityDelete
	b _080726E2
_08072686:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #2
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r0, _080726CC @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _080726D0
	movs r0, #4
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	b _080726E2
	.align 2, 0
_080726CC: .4byte gEwramData
_080726D0:
	ldr r1, _080726E8 @ =sub_0807273C
	ldr r2, _080726EC @ =sub_08071F74
	adds r0, r4, #0
	bl sub_0806D244
	adds r0, r4, #0
	bl sub_0806AF98
	strb r5, [r4, #0xa]
_080726E2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080726E8: .4byte sub_0807273C
_080726EC: .4byte sub_08071F74

	thumb_func_start sub_080726F0
sub_080726F0: @ 0x080726F0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08072724 @ =0x081CBF4C
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _08072734
	ldr r0, _08072728 @ =0x0820A4AC
	movs r1, #0
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _0807272C @ =0x082138AC
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _08072730 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _08072736
	.align 2, 0
_08072724: .4byte 0x081CBF4C
_08072728: .4byte 0x0820A4AC
_0807272C: .4byte 0x082138AC
_08072730: .4byte sub_0803B9D0
_08072734:
	movs r0, #0
_08072736:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0807273C
sub_0807273C: @ 0x0807273C
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

	thumb_func_start sub_08072768
sub_08072768: @ 0x08072768
	push {r4, r5, r6, lr}
	sub sp, #0x34
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _08072792
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
	beq _08072792
	adds r0, r5, #0
	bl sub_08021924
_08072792:
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r0, #0x20
	lsls r0, r0, #0x10
	movs r1, #0x88
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _080727B2
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	b _080727C0
_080727B2:
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_080727C0:
	adds r0, r5, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _080727E2
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _0807284A
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
	ldr r1, [r5, #0x14]
	add r0, sp, #4
	bl sub_080421AC
	b _0807284A
_080727E2:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _08072804
	cmp r0, #1
	bgt _080727F2
	cmp r0, #0
	beq _080727FC
	b _0807281C
_080727F2:
	cmp r0, #2
	beq _0807280C
	cmp r0, #3
	beq _08072814
	b _0807281C
_080727FC:
	adds r0, r5, #0
	bl sub_080729E0
	b _0807281C
_08072804:
	adds r0, r5, #0
	bl sub_08072D68
	b _0807281C
_0807280C:
	adds r0, r5, #0
	bl sub_0806AEAC
	b _0807281C
_08072814:
	adds r0, r5, #0
	bl sub_0803F17C
	b _0807284A
_0807281C:
	adds r6, r5, #0
	adds r6, #0x65
	ldrb r4, [r6]
	adds r0, r5, #0
	bl sub_0803F17C
	ldrb r6, [r6]
	cmp r4, r6
	beq _08072834
	adds r0, r5, #0
	bl sub_0806B1FC
_08072834:
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _0807284A
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
	ldr r1, [r5, #0x14]
	add r0, sp, #4
	bl sub_080421AC
_0807284A:
	add sp, #0x34
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08072854
sub_08072854: @ 0x08072854
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r5, r0, #0
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _08072886
	ldr r0, _08072930 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _08072934 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08072886
	ldr r1, _08072938 @ =0x0000037E
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08072886
	b _08072998
_08072886:
	adds r0, r5, #0
	bl sub_0807406C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08072894
	b _08072998
_08072894:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	adds r0, r5, #0
	bl sub_0806B04C
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
	ldr r2, _08072930 @ =gEwramData
	ldr r0, [r2]
	ldr r1, _08072934 @ =0x000004CC
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080728DC
	movs r1, #0xfa
	lsls r1, r1, #2
	adds r0, r1, #0
	ldrh r1, [r5, #0x34]
	adds r0, r0, r1
	strh r0, [r5, #0x34]
	adds r1, r5, #0
	adds r1, #0x3c
	ldrb r0, [r1]
	adds r0, #0x14
	strb r0, [r1]
_080728DC:
	ldr r0, [r2]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807293C
	adds r0, r5, #0
	bl sub_08073120
	str r0, [r5, #0x14]
	movs r4, #0
	mov r6, sp
_080728F6:
	ldr r1, [r5, #0x14]
	adds r0, r5, #0
	movs r2, #0
	adds r3, r4, #0
	bl sub_08073308
	stm r6!, {r0}
	adds r4, #1
	cmp r4, #5
	ble _080728F6
	movs r4, #0
	mov r2, sp
_0807290E:
	ldr r1, [r2]
	ldr r0, [r2, #4]
	str r0, [r1, #0x20]
	adds r2, #4
	adds r4, #1
	cmp r4, #4
	ble _0807290E
	ldr r0, [sp, #0x14]
	ldr r1, [r5, #0x14]
	str r1, [r0, #0x20]
	adds r0, r5, #0
	bl sub_08073024
	movs r0, #3
	strb r0, [r5, #0xa]
	b _080729D0
	.align 2, 0
_08072930: .4byte gEwramData
_08072934: .4byte 0x000004CC
_08072938: .4byte 0x0000037E
_0807293C:
	ldr r1, _080729A0 @ =sub_080740B8
	ldr r2, _080729A4 @ =sub_080740E8
	adds r0, r5, #0
	bl sub_0806D244
	adds r0, r5, #0
	bl sub_0806AF98
	adds r0, r5, #0
	bl sub_08073120
	str r0, [r5, #0x14]
	cmp r0, #0
	beq _08072998
	movs r4, #0
	mov r6, sp
_0807295C:
	ldr r1, [r5, #0x14]
	adds r0, r5, #0
	movs r2, #0
	adds r3, r4, #0
	bl sub_08073308
	str r0, [r6]
	cmp r0, #0
	beq _08072998
	adds r6, #4
	adds r4, #1
	cmp r4, #5
	ble _0807295C
	movs r4, #0
	mov r2, sp
_0807297A:
	ldr r1, [r2]
	ldr r0, [r2, #4]
	str r0, [r1, #0x20]
	adds r2, #4
	adds r4, #1
	cmp r4, #4
	ble _0807297A
	ldr r0, [sp, #0x14]
	ldr r1, [r5, #0x14]
	str r1, [r0, #0x20]
	adds r0, r5, #0
	bl sub_08073024
	cmp r0, #0
	bne _080729A8
_08072998:
	adds r0, r5, #0
	bl EntityDelete
	b _080729D0
	.align 2, 0
_080729A0: .4byte sub_080740B8
_080729A4: .4byte sub_080740E8
_080729A8:
	movs r0, #0
	strb r0, [r5, #0xa]
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080729D0
	movs r0, #0x10
	bl sub_08013CF0
	adds r0, r5, #0
	bl sub_08034498
	ldr r0, _080729D8 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _080729DC @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #2
	orrs r0, r2
	str r0, [r1]
_080729D0:
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080729D8: .4byte gEwramData
_080729DC: .4byte 0x0000042C

	thumb_func_start sub_080729E0
sub_080729E0: @ 0x080729E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _08072A08 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08072A0C @ =0x0000A094
	adds r3, r0, r1
	ldrb r0, [r6, #0xb]
	cmp r0, #5
	bls _080729FE
	b _08072D54
_080729FE:
	lsls r0, r0, #2
	ldr r1, _08072A10 @ =_08072A14
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08072A08: .4byte gEwramData
_08072A0C: .4byte 0x0000A094
_08072A10: .4byte _08072A14
_08072A14: @ jump table
	.4byte _08072A2C @ case 0
	.4byte _08072AA8 @ case 1
	.4byte _08072C4E @ case 2
	.4byte _08072CC8 @ case 3
	.4byte _08072D54 @ case 4
	.4byte _08072D0A @ case 5
_08072A2C:
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
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x78
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x28
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xf0
	movs r3, #0x50
	bl sub_0806CFFC
	cmp r0, #0
	bne _08072A76
	adds r0, r6, #0
	bl sub_0806D54C
	cmp r0, #0
	beq _08072A9E
_08072A76:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r4, #0
	strb r0, [r6, #0xb]
	ldr r1, _08072AA4 @ =0x08526D2C
	adds r0, r6, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F0E4
	adds r1, r6, #0
	adds r1, #0x6e
	movs r0, #9
	strb r0, [r1]
	movs r0, #0x64
	strb r0, [r6, #0xd]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r6, #0x4c]
	str r4, [r6, #0x48]
_08072A9E:
	movs r1, #0x80
	lsls r1, r1, #0xa
	b _08072CAA
	.align 2, 0
_08072AA4: .4byte 0x08526D2C
_08072AA8:
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	mov r8, r0
	ands r0, r1
	movs r1, #0x18
	rsbs r1, r1, #0
	adds r7, r2, #0
	cmp r0, #0
	beq _08072AC0
	movs r1, #0x18
_08072AC0:
	adds r5, r6, #0
	adds r5, #0x42
	ldrh r0, [r5]
	ldrh r2, [r3, #6]
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r6, #0
	adds r4, #0x46
	ldrh r1, [r4]
	ldrh r3, [r3, #0xa]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	mov sb, r5
	mov sl, r4
	cmp r0, #0
	beq _08072AF0
	movs r4, #0
	movs r0, #5
	b _08072C66
_08072AF0:
	adds r0, r6, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0
	bne _08072B24
	adds r0, r6, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #2
	beq _08072B10
	cmp r0, #5
	beq _08072B10
	cmp r0, #8
	beq _08072B10
	cmp r0, #0xb
	bne _08072B24
_08072B10:
	movs r2, #0xc0
	lsls r2, r2, #9
	str r2, [r6, #0x48]
	ldrb r1, [r7]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	bne _08072B24
	rsbs r0, r2, #0
	str r0, [r6, #0x48]
_08072B24:
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r2, _08072BB0 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #0x10
	str r0, [sp]
	adds r0, r6, #0
	bl sub_08069A00
	adds r4, r0, #0
	adds r0, r6, #0
	movs r1, #4
	bl sub_0806D490
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq _08072C3E
	adds r0, r6, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #0xa
	bne _08072C3E
	ldrb r4, [r7]
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x1f
	adds r0, r6, #0
	bl sub_0806CF2C
	cmp r4, r0
	beq _08072B66
	b _08072C62
_08072B66:
	ldrb r1, [r7]
	movs r5, #0x40
	adds r0, r5, #0
	ands r0, r1
	movs r1, #0x40
	rsbs r1, r1, #0
	cmp r0, #0
	beq _08072B78
	movs r1, #0
_08072B78:
	mov r2, sb
	ldrh r0, [r2]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r2, sl
	ldrh r1, [r2]
	subs r1, #0x3c
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x40
	movs r3, #0x46
	bl sub_0806CFFC
	adds r4, r0, #0
	cmp r4, #0
	beq _08072BB4
	bl RandomNumberGenerator
	movs r1, #0xff
	ands r1, r0
	cmp r1, #0x7f
	bhi _08072BF8
	movs r1, #0
	movs r0, #1
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xb]
	b _08072D54
	.align 2, 0
_08072BB0: .4byte 0xFFE00000
_08072BB4:
	ldrb r1, [r7]
	adds r0, r5, #0
	ands r0, r1
	movs r1, #0x60
	rsbs r1, r1, #0
	cmp r0, #0
	beq _08072BC4
	movs r1, #0
_08072BC4:
	mov r2, sb
	ldrh r0, [r2]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r2, sl
	ldrh r1, [r2]
	subs r1, #0x3c
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x60
	movs r3, #0x46
	bl sub_0806CFFC
	cmp r0, #0
	beq _08072BF8
	bl RandomNumberGenerator
	movs r1, #0xff
	ands r1, r0
	cmp r1, #0x3f
	bhi _08072BF8
	movs r0, #1
	strb r0, [r6, #0xa]
	strb r4, [r6, #0xb]
	b _08072D54
_08072BF8:
	ldrb r1, [r7]
	movs r0, #0x40
	ands r0, r1
	movs r1, #0x80
	rsbs r1, r1, #0
	cmp r0, #0
	beq _08072C08
	movs r1, #0
_08072C08:
	mov r2, sb
	ldrh r0, [r2]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r2, sl
	ldrh r1, [r2]
	subs r1, #0x3c
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x80
	movs r3, #0x46
	bl sub_0806CFFC
	cmp r0, #0
	beq _08072C3E
	bl RandomNumberGenerator
	movs r1, #0xff
	ands r1, r0
	cmp r1, #0x7f
	bhi _08072C3E
	movs r0, #1
	strb r0, [r6, #0xa]
	movs r0, #0xa
	strb r0, [r6, #0xb]
	b _08072D54
_08072C3E:
	adds r0, r6, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	bne _08072C4C
	b _08072D54
_08072C4C:
	b _08072CF8
_08072C4E:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r4, [r0]
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x1f
	adds r0, r6, #0
	bl sub_0806CF2C
	cmp r4, r0
	beq _08072C86
_08072C62:
	movs r4, #0
	movs r0, #3
_08072C66:
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	movs r1, #8
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	strb r4, [r6, #0xd]
	b _08072D54
_08072C86:
	movs r4, #0
	movs r0, #1
	strb r0, [r6, #0xb]
	ldr r1, _08072CC0 @ =0x08526D2C
	adds r0, r6, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F0E4
	adds r1, r6, #0
	adds r1, #0x6e
	movs r0, #9
	strb r0, [r1]
	movs r0, #0x64
	strb r0, [r6, #0xd]
	movs r1, #0x80
	lsls r1, r1, #0xa
	str r4, [r6, #0x48]
_08072CAA:
	str r1, [r6, #0x4c]
	ldr r2, _08072CC4 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #0x10
	str r0, [sp]
	adds r0, r6, #0
	bl sub_08069A00
	b _08072D54
	.align 2, 0
_08072CC0: .4byte 0x08526D2C
_08072CC4: .4byte 0xFFE00000
_08072CC8:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08072D54
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
_08072CF8:
	movs r0, #2
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _08072D54
_08072D0A:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08072D54
	adds r4, r6, #0
	adds r4, #0x58
	ldrb r2, [r4]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1f
	movs r3, #1
	eors r1, r3
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	strb r3, [r6, #0xb]
	ldr r1, _08072D64 @ =0x08526D2C
	adds r0, r6, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F0E4
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r6, #0x4c]
	movs r0, #0
	str r0, [r6, #0x48]
_08072D54:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08072D64: .4byte 0x08526D2C

	thumb_func_start sub_08072D68
sub_08072D68: @ 0x08072D68
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x14]
	ldrb r0, [r4, #0xb]
	cmp r0, #0xc
	bls _08072D76
	b _08072F3A
_08072D76:
	lsls r0, r0, #2
	ldr r1, _08072D80 @ =_08072D84
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08072D80: .4byte _08072D84
_08072D84: @ jump table
	.4byte _08072DB8 @ case 0
	.4byte _08072DD0 @ case 1
	.4byte _08072DE8 @ case 2
	.4byte _08072E04 @ case 3
	.4byte _08072E32 @ case 4
	.4byte _08072F3A @ case 5
	.4byte _08072F3A @ case 6
	.4byte _08072F3A @ case 7
	.4byte _08072F3A @ case 8
	.4byte _08072F3A @ case 9
	.4byte _08072E56 @ case 10
	.4byte _08072E9C @ case 11
	.4byte _08072F18 @ case 12
_08072DB8:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xb]
	strb r1, [r5, #0x1f]
	b _08072F3A
_08072DD0:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #0
	bne _08072DDC
	b _08072F3A
_08072DDC:
	adds r2, r4, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	b _08072DFA
_08072DE8:
	ldrb r0, [r5, #0x1f]
	cmp r0, #2
	bhi _08072DF0
	b _08072F3A
_08072DF0:
	adds r2, r4, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
_08072DFA:
	strb r0, [r2]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	b _08072F3A
_08072E04:
	ldrb r0, [r5, #0x1f]
	cmp r0, #4
	bhi _08072E0C
	b _08072F3A
_08072E0C:
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	movs r2, #0
	strb r0, [r4, #0xb]
	adds r3, r4, #0
	adds r3, #0x59
	ldrb r1, [r3]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	strb r2, [r4, #0xd]
	b _08072F3A
_08072E32:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bls _08072F3A
	movs r0, #0
	strb r0, [r4, #0xa]
	movs r0, #2
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _08072F3A
_08072E56:
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xb]
	strb r1, [r5, #0x1f]
	strb r1, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x24
	strb r1, [r0]
	bl RandomNumberGenerator
	movs r1, #0xff
	ands r1, r0
	cmp r1, #0x7f
	bhi _08072E8A
	adds r1, r4, #0
	adds r1, #0x25
	movs r0, #1
	strb r0, [r1]
	b _08072F3A
_08072E8A:
	bl RandomNumberGenerator
	movs r1, #1
	ands r1, r0
	adds r1, #2
	adds r0, r4, #0
	adds r0, #0x25
	strb r1, [r0]
	b _08072F3A
_08072E9C:
	adds r6, r4, #0
	adds r6, #0x6e
	ldr r5, _08072F14 @ =0x0000FFFF
	ldrh r0, [r6]
	cmp r0, #0xe
	bne _08072EC0
	movs r0, #0x7a
	bl sub_080D7910
	adds r0, r4, #0
	bl sub_08073B54
	adds r0, r4, #0
	bl sub_08073D98
	movs r0, #0x77
	bl sub_080D7910
_08072EC0:
	ldrh r0, [r6]
	ands r5, r0
	cmp r5, #0x14
	bne _08072EFA
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	adds r0, #1
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bge _08072EFA
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r4, #0
	adds r1, #0x6f
	movs r0, #0
	strb r0, [r1]
	movs r0, #2
	strb r0, [r6]
_08072EFA:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08072F3A
	ldrb r0, [r4, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xd]
	b _08072F3A
	.align 2, 0
_08072F14: .4byte 0x0000FFFF
_08072F18:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08072F3A
	movs r0, #0
	strb r0, [r4, #0xa]
	movs r0, #2
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_08072F3A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08072F40
sub_08072F40: @ 0x08072F40
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r6, _08072FE0 @ =gEwramData
	ldr r0, [r6]
	ldr r1, _08072FE4 @ =0x0000A094
	adds r5, r0, r1
	adds r1, r4, #0
	adds r1, #0x2d
	movs r0, #8
	strb r0, [r1]
	ldrh r0, [r4, #0x34]
	subs r0, r0, r3
	strh r0, [r4, #0x34]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0807301C
	adds r0, r4, #0
	bl sub_080683BC
	movs r0, #0x72
	bl sub_080D7910
	adds r0, r4, #0
	movs r1, #7
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
	strb r0, [r3]
	movs r0, #0x28
	strb r0, [r4, #0xd]
	movs r0, #2
	strb r0, [r4, #0xa]
	movs r0, #0
	strb r0, [r4, #0xb]
	movs r2, #0x30
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0807301C
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	ldr r2, _08072FE8 @ =0xFFE00000
	adds r1, r1, r2
	bl sub_080D6450
	ldr r0, [r6]
	ldr r1, _08072FEC @ =0x000004CC
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r3, #3
	ands r3, r0
	cmp r3, #0
	beq _08072FF0
	adds r0, r4, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r1, #0
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0xa
	movs r3, #0x60
	bl sub_080D6EF8
	b _08073016
	.align 2, 0
_08072FE0: .4byte gEwramData
_08072FE4: .4byte 0x0000A094
_08072FE8: .4byte 0xFFE00000
_08072FEC: .4byte 0x000004CC
_08072FF0:
	ldrh r1, [r5, #6]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r4, #0
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r5, #0xa]
	movs r4, #0xd4
	lsls r4, r4, #2
	adds r1, r4, #0
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r3, [sp]
	movs r2, #0xa
	movs r3, #0x60
	bl sub_080D6EF8
_08073016:
	movs r0, #0
	bl sub_08034498
_0807301C:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08073024
sub_08073024: @ 0x08073024
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08073038 @ =sub_0807309C
	bl sub_0806DFF8
	adds r4, r0, #0
	cmp r4, #0
	bne _0807303C
	movs r0, #0
	b _0807308A
	.align 2, 0
_08073038: .4byte sub_0807309C
_0807303C:
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #3
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _08073090 @ =0x081CBF54
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08073094 @ =0x08214AA4
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	adds r0, r5, #0
	adds r0, #0x65
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x65
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08073098 @ =sub_0803B9D0
	str r0, [r4, #4]
	str r5, [r4, #0x10]
	adds r0, r4, #0
_0807308A:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08073090: .4byte 0x081CBF54
_08073094: .4byte 0x08214AA4
_08073098: .4byte sub_0803B9D0

	thumb_func_start sub_0807309C
sub_0807309C: @ 0x0807309C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	mov ip, r0
	cmp r0, #0
	beq _08073114
	ldr r0, [r0]
	cmp r0, #0
	beq _08073114
	mov r0, ip
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x36
	bne _08073114
	mov r1, ip
	ldr r0, [r1, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r1, #0x44]
	str r0, [r5, #0x44]
	mov r0, ip
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
	mov r4, ip
	adds r4, #0x58
	ldrb r0, [r4]
	subs r3, #2
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	mov r0, ip
	adds r0, #0x65
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x65
	strb r1, [r0]
	ldrb r0, [r4]
	movs r1, #0x20
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	b _0807311A
_08073114:
	adds r0, r5, #0
	bl EntityDelete
_0807311A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08073120
sub_08073120: @ 0x08073120
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r0, _080731C0 @ =sub_08073214
	bl sub_0806DFF8
	adds r5, r0, #0
	ldr r0, _080731C4 @ =gEwramData
	mov r8, r0
	cmp r5, #0
	beq _08073206
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	movs r4, #0
	strb r0, [r1]
	ldr r0, _080731C8 @ =0x081CBF54
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _080731CC @ =0x082145BC
	adds r0, r6, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r5, #0
	bl sub_0803B924
	adds r7, r5, #0
	adds r7, #0x58
	ldrb r0, [r7]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r7]
	adds r0, r5, #0
	adds r0, #0x65
	strb r4, [r0]
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x36
	strb r0, [r1]
	movs r0, #1
	strh r0, [r5, #0x34]
	adds r4, r5, #0
	adds r4, #0x59
	ldrb r1, [r4]
	subs r0, #4
	ands r0, r1
	strb r0, [r4]
	ldr r0, _080731D0 @ =sub_0803B9D0
	str r0, [r5, #4]
	str r6, [r5, #0x14]
	movs r0, #6
	strb r0, [r5, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r5, #0x20]
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x3c
	strb r1, [r0]
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _080731D4
	adds r0, r5, #0
	bl EntityDelete
	b _08073206
	.align 2, 0
_080731C0: .4byte sub_08073214
_080731C4: .4byte gEwramData
_080731C8: .4byte 0x081CBF54
_080731CC: .4byte 0x082145BC
_080731D0: .4byte sub_0803B9D0
_080731D4:
	movs r0, #0x1f
	ands r2, r0
	ldrb r1, [r7]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r7]
	ldrb r0, [r4]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4]
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08073202
	adds r0, r5, #0
	bl sub_08073E58
_08073202:
	adds r0, r5, #0
	b _08073208
_08073206:
	movs r0, #0
_08073208:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08073214
sub_08073214: @ 0x08073214
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r6, [r5, #0x14]
	cmp r6, #0
	beq _080732EC
	ldr r0, [r6]
	cmp r0, #0
	beq _080732EC
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x36
	bne _080732EC
	ldr r3, [r6, #0x40]
	str r3, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _08073264
	ldrb r0, [r5, #0x1c]
	lsls r0, r0, #0x13
	movs r1, #0xc0
	lsls r1, r1, #0xc
	adds r0, r0, r1
	rsbs r0, r0, #0
	str r0, [r5, #0x48]
	ldr r1, _08073260 @ =0xFFF40000
	adds r0, r3, r1
	str r0, [r5, #0x40]
	b _08073274
	.align 2, 0
_08073260: .4byte 0xFFF40000
_08073264:
	ldrb r0, [r5, #0x1c]
	lsls r0, r0, #0x13
	movs r1, #0xc0
	lsls r1, r1, #0xc
	adds r0, r0, r1
	str r0, [r5, #0x48]
	adds r1, r3, r1
	str r1, [r5, #0x40]
_08073274:
	ldr r0, [r5, #0x44]
	ldr r1, _080732E8 @ =0xFFF20000
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldrb r1, [r7]
	lsrs r1, r1, #6
	movs r0, #1
	eors r1, r0
	ands r1, r0
	adds r4, r5, #0
	adds r4, #0x58
	lsls r1, r1, #6
	ldrb r2, [r4]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	ldrb r2, [r7]
	movs r1, #0x20
	ands r1, r2
	movs r2, #0x21
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	adds r0, r5, #0
	bl sub_08073568
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
	ldr r0, [r5, #0x4c]
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
	b _08073300
	.align 2, 0
_080732E8: .4byte 0xFFF20000
_080732EC:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r5, #0
	bl EntityDelete
_08073300:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08073308
sub_08073308: @ 0x08073308
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r5, r1, #0
	mov r8, r2
	adds r6, r3, #0
	ldr r0, _08073354 @ =sub_080733D4
	bl sub_0806DFF8
	adds r4, r0, #0
	cmp r4, #0
	beq _080733C6
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _08073358 @ =0x081CBF54
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0807335C @ =0x082145BC
	adds r0, r7, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	cmp r6, #5
	bne _08073360
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #1
	b _08073366
	.align 2, 0
_08073354: .4byte sub_080733D4
_08073358: .4byte 0x081CBF54
_0807335C: .4byte 0x082145BC
_08073360:
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #2
_08073366:
	strb r0, [r1]
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	blt _080733C0
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
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x36
	strb r0, [r1]
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _080733BC @ =sub_0803B9D0
	str r0, [r4, #4]
	str r7, [r4, #0x14]
	str r5, [r4, #0x18]
	strb r6, [r4, #0x1c]
	mov r0, r8
	str r0, [r4, #0x20]
	adds r0, r4, #0
	b _080733C8
	.align 2, 0
_080733BC: .4byte sub_0803B9D0
_080733C0:
	adds r0, r4, #0
	bl EntityDelete
_080733C6:
	movs r0, #0
_080733C8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080733D4
sub_080733D4: @ 0x080733D4
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r7, [r5, #0x14]
	cmp r7, #0
	bne _080733E2
	b _0807354A
_080733E2:
	ldr r0, [r7]
	cmp r0, #0
	bne _080733EA
	b _0807354A
_080733EA:
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x36
	beq _080733F6
	b _0807354A
_080733F6:
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	bne _0807340C
	adds r6, r5, #0
	movs r1, #0
	movs r0, #5
_08073402:
	strb r1, [r6, #0x1d]
	ldr r6, [r6, #0x20]
	subs r0, #1
	cmp r0, #0
	bge _08073402
_0807340C:
	ldrb r0, [r5, #0x1d]
	cmp r0, #0
	beq _08073414
	b _0807355E
_08073414:
	ldr r6, [r5, #0x20]
	ldrb r0, [r5, #0x1c]
	cmp r0, #5
	beq _08073428
	ldr r1, [r6]
	cmp r1, #0
	beq _08073428
	adds r0, r6, #0
	bl _call_via_r1
_08073428:
	movs r0, #1
	strb r0, [r5, #0x1d]
	ldr r0, [r7, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r5, #0x44]
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	adds r3, r2, #0
	cmp r0, #0
	beq _0807346C
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	bne _08073452
	lsls r0, r0, #0x13
	movs r1, #0xc0
	lsls r1, r1, #0xb
	b _0807345A
_08073452:
	ldrb r0, [r5, #0x1c]
	lsls r0, r0, #0x13
	movs r1, #0xa0
	lsls r1, r1, #0xc
_0807345A:
	adds r0, r0, r1
	rsbs r0, r0, #0
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x40]
	ldr r1, _08073468 @ =0xFFF40000
	b _0807348C
	.align 2, 0
_08073468: .4byte 0xFFF40000
_0807346C:
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	bne _0807347A
	lsls r0, r0, #0x13
	movs r1, #0xc0
	lsls r1, r1, #0xb
	b _08073482
_0807347A:
	ldrb r0, [r5, #0x1c]
	lsls r0, r0, #0x13
	movs r1, #0xa0
	lsls r1, r1, #0xc
_08073482:
	adds r0, r0, r1
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x40]
	movs r1, #0xc0
	lsls r1, r1, #0xc
_0807348C:
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, _080734FC @ =0xFFEB0000
	adds r0, r0, r1
	str r0, [r5, #0x44]
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
	ldrb r2, [r3]
	movs r1, #0x20
	ands r1, r2
	movs r2, #0x21
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	adds r0, r5, #0
	bl sub_08073568
	adds r0, r7, #0
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
	ldr r1, [r6, #0x40]
	ldr r0, [r5, #0x40]
	subs r2, r1, r0
	ldr r1, [r6, #0x44]
	ldr r0, [r5, #0x44]
	subs r1, r1, r0
	cmp r2, #0
	bge _08073500
	rsbs r0, r2, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _08073502
	.align 2, 0
_080734FC: .4byte 0xFFEB0000
_08073500:
	asrs r2, r2, #0x10
_08073502:
	cmp r1, #0
	bge _08073512
	rsbs r0, r1, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _08073514
_08073512:
	asrs r1, r1, #0x10
_08073514:
	adds r0, r2, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrb r4, [r4]
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	bne _0807352E
	movs r0, #0x80
	lsls r0, r0, #8
	adds r1, r1, r0
_0807352E:
	movs r2, #0x80
	lsls r2, r2, #9
	lsls r3, r4, #0x19
	lsrs r3, r3, #0x1f
	lsrs r0, r4, #7
	str r0, [sp]
	lsls r0, r4, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_0803E058
	b _0807355E
_0807354A:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r5, #0
	bl EntityDelete
_0807355E:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08073568
sub_08073568: @ 0x08073568
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldr r4, [r6, #0x14]
	ldr r0, [r6, #0x18]
	mov sl, r0
	adds r0, r4, #0
	bl sub_0806ADBC
	adds r3, r0, #0
	cmp r3, #0
	beq _08073588
	b _080739D4
_08073588:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	adds r1, r0, #0
	cmp r1, #0
	bne _08073614
	ldrb r0, [r6, #0x1c]
	movs r1, #0x58
	adds r1, r1, r6
	mov sb, r1
	cmp r0, #6
	beq _080735A2
	b _08073A8A
_080735A2:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #7
	bhi _08073600
	lsls r0, r0, #2
	ldr r1, _080735B8 @ =_080735BC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080735B8: .4byte _080735BC
_080735BC: @ jump table
	.4byte _080735DC @ case 0
	.4byte _080735F0 @ case 1
	.4byte _080735F0 @ case 2
	.4byte _080735F0 @ case 3
	.4byte _080735F0 @ case 4
	.4byte _080735DC @ case 5
	.4byte _080735DC @ case 6
	.4byte _080735DC @ case 7
_080735DC:
	ldr r1, [r6, #0x20]
	ldr r0, _080735EC @ =0x00003FFF
	cmp r1, r0
	bgt _08073600
	adds r0, r1, #0
	adds r0, #0x60
	b _080735FE
	.align 2, 0
_080735EC: .4byte 0x00003FFF
_080735F0:
	ldr r1, [r6, #0x20]
	movs r0, #0xe0
	lsls r0, r0, #6
	cmp r1, r0
	ble _08073600
	adds r0, r1, #0
	subs r0, #0x60
_080735FE:
	str r0, [r6, #0x20]
_08073600:
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	mov sb, r2
_0807360C:
	cmp r0, #0
	beq _08073612
	b _080737F6
_08073612:
	b _08073804
_08073614:
	cmp r1, #1
	bne _08073650
	ldrb r0, [r6, #0x1c]
	movs r1, #0x58
	adds r1, r1, r6
	mov sb, r1
	cmp r0, #6
	beq _08073626
	b _08073A8A
_08073626:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #2
	blt _0807363C
	cmp r0, #3
	ble _080735F0
	cmp r0, #9
	bgt _0807363C
	cmp r0, #8
	bge _080735F0
_0807363C:
	ldr r1, [r6, #0x20]
	ldr r0, _0807364C @ =0x00003FFF
	cmp r1, r0
	bgt _08073600
	adds r0, r1, #0
	adds r0, #0x40
	b _080735FE
	.align 2, 0
_0807364C: .4byte 0x00003FFF
_08073650:
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0807365C
	b _080737C0
_0807365C:
	ldrb r0, [r6, #0x1c]
	movs r1, #0x58
	adds r1, r1, r6
	mov sb, r1
	cmp r0, #6
	beq _0807366A
	b _08073A8A
_0807366A:
	ldrb r2, [r6, #0x1f]
	adds r0, r2, #0
	cmp r0, #0
	bne _08073674
	b _0807379A
_08073674:
	cmp r0, #1
	bne _08073722
	ldrb r0, [r6, #0x1e]
	adds r2, r0, #1
	strb r2, [r6, #0x1e]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _080736D8
	ldr r0, [r6, #0x20]
	ldr r2, _080736A0 @ =0xFFFF8000
	adds r1, r0, r2
	adds r2, r1, #0
	cmp r1, #0
	bge _08073694
	rsbs r2, r1, #0
_08073694:
	cmp r2, #0x40
	ble _080736A8
	cmp r1, #0
	ble _080736A4
	subs r0, #0x40
	b _080736A6
	.align 2, 0
_080736A0: .4byte 0xFFFF8000
_080736A4:
	adds r0, #0x40
_080736A6:
	str r0, [r6, #0x20]
_080736A8:
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	mov sb, r2
	cmp r0, #0
	beq _080736D0
	ldrb r2, [r6, #0x1e]
	movs r0, #7
	bics r0, r2
	lsls r0, r0, #9
	ldr r1, _080736CC @ =0xFFFFE000
	subs r1, r1, r0
	ldr r0, [r6, #0x20]
	subs r1, r1, r0
	b _08073708
	.align 2, 0
_080736CC: .4byte 0xFFFFE000
_080736D0:
	ldrb r2, [r6, #0x1e]
	movs r0, #7
	bics r0, r2
	b _080736FC
_080736D8:
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080736F8
	movs r0, #7
	ands r0, r2
	lsls r0, r0, #9
	ldr r1, _080736F4 @ =0xFFFFE000
	subs r1, r1, r0
	ldr r0, [r6, #0x20]
	subs r1, r1, r0
	b _08073708
	.align 2, 0
_080736F4: .4byte 0xFFFFE000
_080736F8:
	movs r0, #7
	ands r0, r2
_080736FC:
	lsls r0, r0, #9
	movs r1, #0x90
	lsls r1, r1, #9
	adds r0, r0, r1
	ldr r1, [r6, #0x20]
	adds r1, r1, r0
_08073708:
	mov r8, r1
	mov r1, r8
	str r1, [r6, #0x4c]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1f
	bls _080737A0
	ldrb r0, [r6, #0x1f]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0x1f]
	strb r1, [r6, #0x1e]
	b _080737A0
_08073722:
	cmp r0, #2
	bne _08073742
	ldrb r0, [r6, #0x1e]
	adds r0, #1
	strb r0, [r6, #0x1e]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bls _080737A0
	strb r3, [r6, #0x1e]
	adds r0, r2, #1
	strb r0, [r6, #0x1f]
	movs r0, #0x86
	bl sub_080D7910
	b _080737A0
_08073742:
	cmp r0, #3
	bne _08073768
	ldr r0, [r6, #0x20]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r6, #0x20]
	ldr r1, _08073764 @ =0x00007FFF
	cmp r0, r1
	ble _080737A0
	adds r0, r2, #1
	strb r0, [r6, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r6, #0x20]
	b _080737A0
	.align 2, 0
_08073764: .4byte 0x00007FFF
_08073768:
	cmp r0, #4
	bne _08073782
	ldrb r0, [r6, #0x1e]
	adds r0, #1
	strb r0, [r6, #0x1e]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb
	bls _080737A0
	strb r3, [r6, #0x1e]
	adds r0, r2, #1
	strb r0, [r6, #0x1f]
	b _080737A0
_08073782:
	cmp r0, #5
	bne _080737A0
	ldr r0, [r6, #0x20]
	ldr r1, _080737B8 @ =0xFFFFFC00
	adds r0, r0, r1
	str r0, [r6, #0x20]
	ldr r1, _080737BC @ =0x00003FFF
	cmp r0, r1
	bgt _080737A0
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r6, #0x20]
_0807379A:
	adds r0, r2, #1
	strb r0, [r6, #0x1f]
	strb r3, [r6, #0x1e]
_080737A0:
	ldrb r0, [r6, #0x1f]
	cmp r0, #1
	bne _080737A8
	b _08073A06
_080737A8:
	mov r2, sb
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080737B6
	b _080739EA
_080737B6:
	b _080739F8
	.align 2, 0
_080737B8: .4byte 0xFFFFFC00
_080737BC: .4byte 0x00003FFF
_080737C0:
	cmp r1, #4
	bne _080737DA
	ldrb r0, [r6, #0x1c]
	movs r1, #0x58
	adds r1, r1, r6
	mov sb, r1
	cmp r0, #6
	beq _080737D2
	b _08073A8A
_080737D2:
	ldrb r1, [r1]
	movs r0, #0x40
	ands r0, r1
	b _0807360C
_080737DA:
	cmp r1, #7
	bne _08073814
	ldrb r0, [r6, #0x1c]
	movs r1, #0x58
	adds r1, r1, r6
	mov sb, r1
	cmp r0, #6
	beq _080737EC
	b _08073A8A
_080737EC:
	ldrb r1, [r1]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08073804
_080737F6:
	ldr r1, [r6, #0x20]
	ldr r0, _08073800 @ =0xFFFFE000
	subs r0, r0, r1
	mov r8, r0
	b _0807380E
	.align 2, 0
_08073800: .4byte 0xFFFFE000
_08073804:
	ldr r0, [r6, #0x20]
	movs r2, #0x90
	lsls r2, r2, #9
	adds r2, r2, r0
	mov r8, r2
_0807380E:
	mov r0, r8
	str r0, [r6, #0x4c]
	b _08073A06
_08073814:
	movs r2, #0x58
	adds r2, r2, r6
	mov sb, r2
	cmp r1, #8
	beq _08073820
	b _08073A06
_08073820:
	ldrb r3, [r6, #0x1c]
	cmp r3, #6
	bne _080738D4
	ldrb r1, [r4, #0xd]
	adds r0, r1, #0
	subs r0, #0xa
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08073868
	ldr r3, [r4, #0x40]
	str r3, [r6, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r6, #0x44]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807385E
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r3, r1
	str r0, [r6, #0x40]
	ldrb r0, [r6, #0x1c]
	lsls r0, r0, #0x13
	movs r1, #0xc0
	lsls r1, r1, #0xc
	adds r0, r0, r1
	b _080738A8
_0807385E:
	ldr r1, _08073864 @ =0xFFF80000
	b _08073898
	.align 2, 0
_08073864: .4byte 0xFFF80000
_08073868:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _080737A8
	ldr r3, [r4, #0x40]
	str r3, [r6, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r6, #0x44]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08073896
	movs r1, #0xc0
	lsls r1, r1, #0xc
	adds r0, r3, r1
	str r0, [r6, #0x40]
	ldrb r0, [r6, #0x1c]
	lsls r0, r0, #0x13
	adds r0, r0, r1
	b _080738A8
_08073896:
	ldr r1, _080738CC @ =0xFFF40000
_08073898:
	adds r0, r3, r1
	str r0, [r6, #0x40]
	ldrb r0, [r6, #0x1c]
	lsls r0, r0, #0x13
	movs r1, #0xc0
	lsls r1, r1, #0xc
	adds r0, r0, r1
	rsbs r0, r0, #0
_080738A8:
	str r0, [r6, #0x48]
	ldr r0, [r6, #0x44]
	ldr r1, _080738D0 @ =0xFFF20000
	adds r0, r0, r1
	str r0, [r6, #0x44]
	ldrb r0, [r2]
	adds r2, r6, #0
	adds r2, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r3, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	mov sb, r2
	b _080737A8
	.align 2, 0
_080738CC: .4byte 0xFFF40000
_080738D0: .4byte 0xFFF20000
_080738D4:
	ldrb r1, [r4, #0xd]
	adds r0, r1, #0
	subs r0, #0xa
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08073940
	ldr r0, [r4, #0x40]
	str r0, [r6, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r6, #0x44]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807391A
	cmp r3, #0
	bne _08073906
	ldrb r0, [r6, #0x1c]
	lsls r0, r0, #0x13
	movs r1, #0xc0
	lsls r1, r1, #0xb
	b _0807390E
_08073906:
	ldrb r0, [r6, #0x1c]
	lsls r0, r0, #0x13
	movs r1, #0xa0
	lsls r1, r1, #0xc
_0807390E:
	adds r0, r0, r1
	str r0, [r6, #0x48]
	ldr r0, [r6, #0x40]
	movs r1, #0x80
	lsls r1, r1, #0xc
	b _080739A0
_0807391A:
	cmp r3, #0
	bne _08073928
	ldrb r0, [r6, #0x1c]
	lsls r0, r0, #0x13
	movs r1, #0xc0
	lsls r1, r1, #0xb
	b _08073930
_08073928:
	ldrb r0, [r6, #0x1c]
	lsls r0, r0, #0x13
	movs r1, #0xa0
	lsls r1, r1, #0xc
_08073930:
	adds r0, r0, r1
	rsbs r0, r0, #0
	str r0, [r6, #0x48]
	ldr r0, [r6, #0x40]
	ldr r1, _0807393C @ =0xFFF80000
	b _080739A0
	.align 2, 0
_0807393C: .4byte 0xFFF80000
_08073940:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _08073A06
	ldr r0, [r4, #0x40]
	str r0, [r6, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r6, #0x44]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08073980
	cmp r3, #0
	bne _0807396C
	ldrb r0, [r6, #0x1c]
	lsls r0, r0, #0x13
	movs r1, #0xc0
	lsls r1, r1, #0xb
	b _08073974
_0807396C:
	ldrb r0, [r6, #0x1c]
	lsls r0, r0, #0x13
	movs r1, #0xa0
	lsls r1, r1, #0xc
_08073974:
	adds r0, r0, r1
	str r0, [r6, #0x48]
	ldr r0, [r6, #0x40]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	b _080739A0
_08073980:
	cmp r3, #0
	bne _0807398E
	ldrb r0, [r6, #0x1c]
	lsls r0, r0, #0x13
	movs r1, #0xc0
	lsls r1, r1, #0xb
	b _08073996
_0807398E:
	ldrb r0, [r6, #0x1c]
	lsls r0, r0, #0x13
	movs r1, #0xa0
	lsls r1, r1, #0xc
_08073996:
	adds r0, r0, r1
	rsbs r0, r0, #0
	str r0, [r6, #0x48]
	ldr r0, [r6, #0x40]
	ldr r1, _080739CC @ =0xFFF40000
_080739A0:
	adds r0, r0, r1
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x44]
	ldr r1, _080739D0 @ =0xFFEB0000
	adds r0, r0, r1
	str r0, [r6, #0x44]
	ldrb r1, [r2]
	lsrs r1, r1, #6
	movs r0, #1
	eors r1, r0
	ands r1, r0
	adds r2, r6, #0
	adds r2, #0x58
	lsls r1, r1, #6
	ldrb r3, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	mov sb, r2
	b _08073A06
	.align 2, 0
_080739CC: .4byte 0xFFF40000
_080739D0: .4byte 0xFFEB0000
_080739D4:
	ldrb r0, [r6, #0x1c]
	movs r2, #0x58
	adds r2, r2, r6
	mov sb, r2
	cmp r0, #6
	bne _08073A8A
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080739F8
_080739EA:
	ldr r1, [r6, #0x20]
	ldr r0, _080739F4 @ =0xFFFFE000
	subs r0, r0, r1
	mov r8, r0
	b _08073A02
	.align 2, 0
_080739F4: .4byte 0xFFFFE000
_080739F8:
	ldr r0, [r6, #0x20]
	movs r1, #0x90
	lsls r1, r1, #9
	adds r1, r1, r0
	mov r8, r1
_08073A02:
	mov r2, r8
	str r2, [r6, #0x4c]
_08073A06:
	ldrb r0, [r6, #0x1c]
	cmp r0, #6
	bne _08073A8A
	ldr r1, [r6, #0x20]
	ldr r2, _08073A4C @ =0xFFFF9000
	adds r0, r1, r2
	cmp r0, #0
	bge _08073A1A
	adds r2, #3
	adds r0, r1, r2
_08073A1A:
	asrs r5, r0, #2
	ldr r0, [r6, #0x48]
	movs r4, #0x80
	lsls r4, r4, #7
	adds r1, r5, r4
	bl sub_0803E86C
	adds r5, r0, #0
	adds r1, r4, #0
	bl sub_0803E8BC
	adds r5, r0, #0
	str r5, [r6, #0x48]
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08073A50
	ldr r1, [r6, #0x20]
	movs r0, #0x80
	lsls r0, r0, #9
	subs r0, r0, r1
	mov r8, r0
	b _08073A54
	.align 2, 0
_08073A4C: .4byte 0xFFFF9000
_08073A50:
	ldr r1, [r6, #0x20]
	mov r8, r1
_08073A54:
	movs r0, #0x80
	lsls r0, r0, #7
	add r0, r8
	bl sub_080009E4
	adds r5, r0, #0
	mov r0, r8
	bl sub_080009E4
	adds r7, r0, #0
	ldr r1, [r6, #0x48]
	adds r0, r5, #0
	bl sub_0803E86C
	adds r5, r0, #0
	ldr r1, [r6, #0x48]
	adds r0, r7, #0
	bl sub_0803E86C
	adds r7, r0, #0
	ldr r0, [r6, #0x40]
	adds r0, r0, r5
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x44]
	adds r0, r0, r7
	str r0, [r6, #0x44]
	b _08073B3A
_08073A8A:
	mov r2, sl
	ldr r4, [r2, #0x20]
	ldr r0, _08073B48 @ =0xFFFFC000
	adds r1, r4, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	movs r1, #6
	bl __divsi3
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	movs r2, #0xe0
	lsls r2, r2, #0xb
	adds r5, r1, r2
	ldrb r0, [r6, #0x1c]
	lsls r0, r0, #0x10
	adds r0, r0, r5
	ldr r1, _08073B4C @ =0xFFFA0000
	adds r7, r0, r1
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_0803E86C
	adds r4, r0, #0
	adds r1, r5, #0
	bl sub_0803E8BC
	adds r4, r0, #0
	mov r2, sl
	ldr r1, [r2, #0x20]
	ldr r2, _08073B50 @ =0xFFFF9000
	adds r0, r1, r2
	cmp r0, #0
	bge _08073AD4
	adds r2, #3
	adds r0, r1, r2
_08073AD4:
	asrs r5, r0, #2
	ldr r0, [r6, #0x48]
	movs r7, #0x80
	lsls r7, r7, #7
	adds r1, r5, r7
	bl sub_0803E86C
	adds r5, r0, #0
	adds r1, r7, #0
	bl sub_0803E8BC
	adds r5, r0, #0
	str r5, [r6, #0x48]
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08073B00
	movs r0, #0x80
	lsls r0, r0, #9
	subs r4, r0, r4
_08073B00:
	mov r1, r8
	str r1, [r6, #0x4c]
	adds r0, r4, r7
	bl sub_080009E4
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_080009E4
	adds r7, r0, #0
	ldr r1, [r6, #0x48]
	adds r0, r5, #0
	bl sub_0803E86C
	adds r5, r0, #0
	ldr r1, [r6, #0x48]
	adds r0, r7, #0
	bl sub_0803E86C
	adds r7, r0, #0
	ldr r0, [r6, #0x40]
	adds r0, r0, r5
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x44]
	adds r0, r0, r7
	str r0, [r6, #0x44]
	movs r0, #0
	str r0, [r6, #0x48]
	str r0, [r6, #0x4c]
_08073B3A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08073B48: .4byte 0xFFFFC000
_08073B4C: .4byte 0xFFFA0000
_08073B50: .4byte 0xFFFF9000

	thumb_func_start sub_08073B54
sub_08073B54: @ 0x08073B54
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r2, _08073BD8 @ =sub_08073C3C
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	beq _08073C30
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08073F54
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08073B7C
	adds r0, r5, #0
	bl EntityDelete
_08073B7C:
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_08073FA4
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	str r6, [r5, #0x10]
	adds r4, r6, #0
	adds r4, #0x58
	ldrb r0, [r4]
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
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08073BDC
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, #0x2c
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #0xb
	b _08073BEC
	.align 2, 0
_08073BD8: .4byte sub_08073C3C
_08073BDC:
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x2c
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, _08073C38 @ =0xFFFC0000
_08073BEC:
	str r0, [r5, #0x48]
	adds r0, r6, #0
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0xf
	adds r2, r5, #0
	adds r2, #0x46
	movs r1, #0
	strh r0, [r2]
	str r1, [r5, #0x4c]
	str r1, [r5, #0x50]
	str r1, [r5, #0x54]
	ldrb r0, [r3]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3]
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
_08073C30:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08073C38: .4byte 0xFFFC0000

	thumb_func_start sub_08073C3C
sub_08073C3C: @ 0x08073C3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _08073CA0
	cmp r0, #1
	bgt _08073C5A
	cmp r0, #0
	beq _08073C60
	b _08073D74
_08073C5A:
	cmp r0, #2
	beq _08073CB8
	b _08073D74
_08073C60:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bhi _08073C70
	b _08073D74
_08073C70:
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	adds r0, r5, #0
	movs r1, #6
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2]
	subs r2, #0x1a
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _08073D74
_08073CA0:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r5, #0
	bl sub_0806D3D8
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806D128
	cmp r0, #0
	beq _08073D74
	b _08073D64
_08073CB8:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r5, #0
	bl sub_0806D3D8
	adds r7, r5, #0
	adds r7, #0x58
	ldrb r1, [r7]
	movs r0, #0x40
	mov sl, r0
	ands r0, r1
	ldr r4, _08073D6C @ =0xFFFD0000
	cmp r0, #0
	beq _08073CD8
	movs r4, #0xc0
	lsls r4, r4, #0xa
_08073CD8:
	bl RandomNumberGenerator
	ldr r1, _08073D70 @ =0xFFFE8000
	mov r8, r1
	add r4, r8
	movs r6, #0xc0
	lsls r6, r6, #0xa
	adds r1, r6, #0
	bl __umodsi3
	adds r4, r4, r0
	bl RandomNumberGenerator
	adds r1, r6, #0
	bl __umodsi3
	mov r2, r8
	adds r3, r0, r2
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	movs r2, #0xa
	mov sb, r2
	str r2, [sp]
	movs r2, #1
	str r2, [sp, #4]
	adds r2, r4, #0
	bl sub_0806D894
	ldrb r1, [r7]
	mov r0, sl
	ands r0, r1
	ldr r4, _08073D6C @ =0xFFFD0000
	cmp r0, #0
	beq _08073D1E
	adds r4, r6, #0
_08073D1E:
	bl RandomNumberGenerator
	add r4, r8
	adds r1, r6, #0
	bl __umodsi3
	adds r4, r4, r0
	bl RandomNumberGenerator
	adds r1, r6, #0
	bl __umodsi3
	mov r1, r8
	adds r3, r0, r1
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	mov r2, sb
	str r2, [sp]
	adds r2, r4, #0
	bl sub_0806D644
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08073D5E
	ldrb r0, [r7]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r7]
_08073D5E:
	ldrb r0, [r5, #0xd]
	cmp r0, #5
	bls _08073D74
_08073D64:
	adds r0, r5, #0
	bl EntityDelete
	b _08073D88
	.align 2, 0
_08073D6C: .4byte 0xFFFD0000
_08073D70: .4byte 0xFFFE8000
_08073D74:
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _08073D82
	add r0, sp, #8
	adds r1, r5, #0
	bl sub_080421AC
_08073D82:
	adds r0, r5, #0
	bl sub_0803F17C
_08073D88:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08073D98
sub_08073D98: @ 0x08073D98
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r2, _08073DE8 @ =sub_08074048
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	beq _08073E44
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
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08073DEC
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, #0x1f
	b _08073DF4
	.align 2, 0
_08073DE8: .4byte sub_08074048
_08073DEC:
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x1f
_08073DF4:
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0xf
	adds r1, r5, #0
	adds r1, #0x46
	movs r4, #0
	strh r0, [r1]
	ldr r0, _08073E4C @ =0x081CBF54
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08073E50 @ =0x082145BC
	adds r0, r6, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r5, #0
	bl sub_0803B924
	adds r0, r5, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08073E54 @ =sub_0803B9D0
	str r0, [r5, #4]
	strb r4, [r5, #0xd]
_08073E44:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08073E4C: .4byte 0x081CBF54
_08073E50: .4byte 0x082145BC
_08073E54: .4byte sub_0803B9D0

	thumb_func_start sub_08073E58
sub_08073E58: @ 0x08073E58
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _08073E8C @ =sub_08073E98
	ldr r3, _08073E90 @ =sub_08073EE8
	movs r1, #8
	bl sub_0804277C
	ldr r5, _08073E94 @ =0x0C0CFAFA
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080428F0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08042884
	adds r4, #0x72
	ldrb r1, [r4]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08073E8C: .4byte sub_08073E98
_08073E90: .4byte sub_08073EE8
_08073E94: .4byte 0x0C0CFAFA

	thumb_func_start sub_08073E98
sub_08073E98: @ 0x08073E98
	push {lr}
	sub sp, #0x10
	adds r3, r0, #0
	ldr r2, [r3, #0x14]
	ldrb r0, [r2, #0xa]
	cmp r0, #1
	bne _08073EB8
	ldrb r0, [r2, #0xb]
	cmp r0, #4
	bhi _08073EB8
	mov r0, sp
	adds r1, r2, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	strh r1, [r0]
	b _08073EC4
_08073EB8:
	mov r1, sp
	adds r0, r2, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsrs r0, r0, #1
	strh r0, [r1]
_08073EC4:
	mov r1, sp
	movs r2, #0
	movs r0, #0x40
	strh r0, [r1, #2]
	mov r0, sp
	strh r2, [r0, #4]
	movs r0, #1
	strh r0, [r1, #6]
	ldr r0, [r3, #0x40]
	str r0, [sp, #8]
	ldr r0, [r3, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r0}
	bx r0

	thumb_func_start sub_08073EE8
sub_08073EE8: @ 0x08073EE8
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
	bl sub_08072F40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08073F54
sub_08073F54: @ 0x08073F54
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _08073F90 @ =0x081CBF54
	bl sub_0803AFB8
	adds r2, r0, #0
	cmp r2, #0
	blt _08073F9C
	ldr r1, _08073F94 @ =0x082145BC
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _08073F98 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _08073F9E
	.align 2, 0
_08073F90: .4byte 0x081CBF54
_08073F94: .4byte 0x082145BC
_08073F98: .4byte sub_0803B9D0
_08073F9C:
	movs r0, #0
_08073F9E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08073FA4
sub_08073FA4: @ 0x08073FA4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _08073FD8 @ =sub_08073FE4
	ldr r3, _08073FDC @ =sub_08074028
	movs r1, #0xa
	bl sub_0804277C
	ldr r5, _08073FE0 @ =0x1818F4F4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080428F0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08042884
	adds r4, #0x72
	ldrb r1, [r4]
	movs r0, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08073FD8: .4byte sub_08073FE4
_08073FDC: .4byte sub_08074028
_08073FE0: .4byte 0x1818F4F4

	thumb_func_start sub_08073FE4
sub_08073FE4: @ 0x08073FE4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	mov r1, sp
	adds r0, #0x3c
	ldrb r0, [r0]
	movs r5, #0
	movs r2, #0
	strh r0, [r1]
	movs r6, #2
	movs r0, #2
	strh r0, [r1, #2]
	mov r0, sp
	strh r2, [r0, #4]
	movs r0, #1
	strh r0, [r1, #6]
	ldr r0, [r4, #0x40]
	str r0, [sp, #8]
	ldr r0, [r4, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	strb r6, [r4, #0xa]
	strb r5, [r4, #0xb]
	strb r5, [r4, #0xd]
	movs r0, #0x76
	bl sub_080D7910
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08074028
sub_08074028: @ 0x08074028
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r2, #4]
	bl sub_08021530
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xb]
	strb r1, [r4, #0xd]
	movs r0, #0x76
	bl sub_080D7910
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08074048
sub_08074048: @ 0x08074048
	push {lr}
	adds r2, r0, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08074060
	adds r0, r2, #0
	bl EntityDelete
	b _08074066
_08074060:
	adds r0, r2, #0
	bl sub_0803F17C
_08074066:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807406C
sub_0807406C: @ 0x0807406C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080740A0 @ =0x081CBF54
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _080740B0
	ldr r0, _080740A4 @ =0x0820A4D0
	movs r1, #0
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _080740A8 @ =0x082145BC
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _080740AC @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _080740B2
	.align 2, 0
_080740A0: .4byte 0x081CBF54
_080740A4: .4byte 0x0820A4D0
_080740A8: .4byte 0x082145BC
_080740AC: .4byte sub_0803B9D0
_080740B0:
	movs r0, #0
_080740B2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080740B8
sub_080740B8: @ 0x080740B8
	push {lr}
	sub sp, #0x10
	mov r3, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	lsrs r1, r1, #1
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
	.align 2, 0

	thumb_func_start sub_080740E8
sub_080740E8: @ 0x080740E8
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
	bl sub_08072F40
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08074130
sub_08074130: @ 0x08074130
	push {r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _08074198
	cmp r0, #2
	beq _0807415E
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
	beq _0807415E
	adds r0, r4, #0
	bl sub_08021924
_0807415E:
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _08074178
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	b _08074186
_08074178:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_08074186:
	adds r0, r4, #0
	bl sub_0806B0A8
	cmp r0, #0
	beq _08074198
	movs r0, #2
	strb r0, [r4, #0xa]
	movs r0, #1
	strb r0, [r4, #0xd]
_08074198:
	adds r0, r4, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _080741B2
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _08074274
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
	b _08074274
_080741B2:
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bhi _08074268
	lsls r0, r0, #2
	ldr r1, _080741C4 @ =_080741C8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080741C4: .4byte _080741C8
_080741C8: @ jump table
	.4byte _080741DC @ case 0
	.4byte _080741E4 @ case 1
	.4byte _080741EC @ case 2
	.4byte _0807424C @ case 3
	.4byte _08074260 @ case 4
_080741DC:
	adds r0, r4, #0
	bl sub_080743B4
	b _08074268
_080741E4:
	adds r0, r4, #0
	bl sub_080748C0
	b _08074268
_080741EC:
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
	adds r2, r4, #0
	adds r2, #0x59
	cmp r0, #0
	bgt _08074220
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_08074220:
	ldrb r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08074268
	ldr r1, [r4, #0x18]
	cmp r1, #0
	beq _08074268
	ldr r0, [r1]
	cmp r0, #0
	beq _08074268
	adds r0, r1, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x3d
	bne _08074268
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq _08074268
	subs r0, #1
	str r0, [r1, #0x18]
	b _08074268
_0807424C:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _08074268
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	b _08074268
_08074260:
	adds r0, r4, #0
	bl sub_0803F17C
	b _08074274
_08074268:
	adds r0, r4, #0
	bl sub_0806DF20
	adds r0, r4, #0
	bl sub_0806E314
_08074274:
	add sp, #0x14
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0807427C
sub_0807427C: @ 0x0807427C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_08074874
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08074292
	adds r0, r5, #0
	bl EntityDelete
	b _080743AE
_08074292:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	adds r0, r5, #0
	bl sub_0806B04C
	ldr r0, _080742D8 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	beq _080742DC
	movs r0, #4
	strb r0, [r5, #0xa]
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	b _080743AE
	.align 2, 0
_080742D8: .4byte gEwramData
_080742DC:
	ldr r1, _0807438C @ =sub_080748E4
	ldr r2, _08074390 @ =sub_0807473C
	adds r0, r5, #0
	bl sub_0806D244
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080743A0
	adds r0, r5, #0
	bl sub_0806AF98
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080743A0
	movs r0, #3
	strb r0, [r5, #0xa]
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1a
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r7, #2
	orrs r0, r7
	strb r0, [r2]
	ldr r2, _08074394 @ =EntityUpdateNothing
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _080743A8
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	adds r1, r4, #0
	adds r1, #0x59
	ldrb r0, [r1]
	orrs r0, r7
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x37
	strb r6, [r0]
	adds r3, r5, #0
	adds r3, #0x36
	ldrb r0, [r3]
	subs r1, #0x23
	strb r0, [r1]
	strh r6, [r4, #0x30]
	strh r6, [r4, #0x32]
	ldr r0, _08074398 @ =sub_0803B9D0
	str r0, [r4, #4]
	ldr r2, _0807439C @ =0x080E9644
	ldrb r1, [r3]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #0xc]
	strh r0, [r4, #0x34]
	ldrb r1, [r3]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #0xe]
	strh r0, [r4, #0x2e]
	ldr r0, [r5]
	str r0, [r4]
	adds r0, r4, #0
	bl sub_0807427C
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	str r5, [r4, #0x18]
	movs r0, #1
	str r0, [r5, #0x18]
	str r0, [r4, #0x1c]
	b _080743A8
	.align 2, 0
_0807438C: .4byte sub_080748E4
_08074390: .4byte sub_0807473C
_08074394: .4byte EntityUpdateNothing
_08074398: .4byte sub_0803B9D0
_0807439C: .4byte 0x080E9644
_080743A0:
	movs r0, #0
	strb r0, [r5, #0xa]
	movs r0, #0x3c
	strb r0, [r5, #0xd]
_080743A8:
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
_080743AE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080743B4
sub_080743B4: @ 0x080743B4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	ldrb r0, [r6, #0xb]
	cmp r0, #0xa
	bls _080743C2
	b _08074732
_080743C2:
	lsls r0, r0, #2
	ldr r1, _080743CC @ =_080743D0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080743CC: .4byte _080743D0
_080743D0: @ jump table
	.4byte _080743FC @ case 0
	.4byte _080744BE @ case 1
	.4byte _080744EC @ case 2
	.4byte _08074534 @ case 3
	.4byte _080745D4 @ case 4
	.4byte _0807471C @ case 5
	.4byte _08074732 @ case 6
	.4byte _08074732 @ case 7
	.4byte _08074732 @ case 8
	.4byte _08074732 @ case 9
	.4byte _080743FC @ case 10
_080743FC:
	ldr r0, [r6, #0x54]
	cmp r0, #0
	beq _08074434
	movs r4, #0x80
	lsls r4, r4, #9
	ldr r2, _08074430 @ =0xFFF80000
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08069770
	adds r1, r0, #0
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08074420
	ldr r0, [r6, #0x48]
	rsbs r0, r0, #0
	str r0, [r6, #0x48]
_08074420:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08074436
	ldr r0, [r6, #0x4c]
	adds r0, r0, r4
	str r0, [r6, #0x4c]
	b _08074436
	.align 2, 0
_08074430: .4byte 0xFFF80000
_08074434:
	movs r1, #0xf
_08074436:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08074440
	b _08074732
_08074440:
	movs r0, #0
	str r0, [r6, #0x48]
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [r6, #0x4c]
	str r0, [r6, #0x54]
	ldrb r0, [r6, #0xb]
	cmp r0, #0xa
	bne _08074464
	movs r0, #1
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0807449C
_08074464:
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x64
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0xa0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #0xa0
	lsls r3, r3, #1
	movs r2, #0xc8
	bl sub_0806CFFC
	cmp r0, #0
	beq _080744AA
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
_0807449C:
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_080744AA:
	bl RandomNumberGenerator
	movs r1, #0xc8
	bl __umodsi3
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r6, #0x20]
	b _08074732
_080744BE:
	adds r4, r6, #0
	adds r4, #0x59
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080744CE
	b _08074732
_080744CE:
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	ldrb r1, [r4]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	b _08074732
_080744EC:
	adds r4, r6, #0
	adds r4, #0x59
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080744FC
	b _08074732
_080744FC:
	adds r0, r6, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	ldrb r1, [r4]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	bl RandomNumberGenerator
	movs r1, #0x28
	bl __umodsi3
	adds r0, #0x64
	strb r0, [r6, #0xd]
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	bne _0807452E
	b _08074732
_0807452E:
	movs r0, #0xa
	strb r0, [r6, #0xd]
	b _08074732
_08074534:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _0807457C
	ldr r7, [r6, #0x18]
	cmp r7, #0
	beq _0807456E
	ldr r0, [r7]
	cmp r0, #0
	beq _0807456E
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x3d
	bne _0807456E
	movs r0, #0x30
	ldrsh r1, [r7, r0]
	ldr r0, [r7, #0x18]
	cmp r0, r1
	bge _0807456E
	strb r2, [r6, #0xd]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	b _08074732
_0807456E:
	bl RandomNumberGenerator
	movs r1, #0x28
	bl __umodsi3
	adds r0, #0x64
	strb r0, [r6, #0xd]
_0807457C:
	ldr r0, [r6, #0x20]
	subs r0, #1
	str r0, [r6, #0x20]
	cmp r0, #0
	ble _08074588
	b _08074732
_08074588:
	ldr r7, [r6, #0x18]
	cmp r7, #0
	bne _08074590
	b _08074732
_08074590:
	ldr r0, [r7]
	cmp r0, #0
	bne _08074598
	b _08074732
_08074598:
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x3d
	beq _080745A4
	b _08074732
_080745A4:
	movs r0, #0x30
	ldrsh r1, [r7, r0]
	ldr r0, [r7, #0x18]
	cmp r0, r1
	blt _080745CE
	movs r0, #5
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _08074732
_080745CE:
	movs r0, #0x8c
	str r0, [r6, #0x20]
	b _08074732
_080745D4:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bls _080745F4
	bl RandomNumberGenerator
	movs r1, #0x28
	bl __umodsi3
	adds r0, #0x64
	strb r0, [r6, #0xd]
	movs r0, #3
	strb r0, [r6, #0xb]
_080745F4:
	ldrb r0, [r6, #0xd]
	cmp r0, #0xf
	bne _080746D8
	ldr r7, [r6, #0x18]
	ldr r2, _0807469C @ =EntityUpdateNothing
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	beq _080746BC
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	ldr r1, _080746A0 @ =0xFFFF0000
	adds r0, r0, r1
	str r0, [r5, #0x44]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x37
	movs r4, #0
	strb r4, [r0]
	adds r3, r6, #0
	adds r3, #0x36
	ldrb r0, [r3]
	adds r1, r5, #0
	adds r1, #0x36
	strb r0, [r1]
	strh r4, [r5, #0x30]
	strh r4, [r5, #0x32]
	ldr r0, _080746A4 @ =sub_0803B9D0
	str r0, [r5, #4]
	ldr r2, _080746A8 @ =0x080E9644
	ldrb r1, [r3]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #0xc]
	strh r0, [r5, #0x34]
	ldrb r1, [r3]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #0xe]
	strh r0, [r5, #0x2e]
	ldr r0, [r6]
	str r0, [r5]
	adds r0, r5, #0
	bl sub_0807427C
	bl RandomNumberGenerator
	ldr r1, _080746AC @ =0x0003FFFF
	ands r1, r0
	ldr r0, _080746B0 @ =0xFFFE0000
	adds r1, r1, r0
	str r1, [r5, #0x48]
	bl RandomNumberGenerator
	ldr r1, _080746B4 @ =0x0001FFFF
	ands r1, r0
	ldr r0, _080746B8 @ =0xFFFD0000
	subs r0, r0, r1
	str r0, [r5, #0x4c]
	str r4, [r5, #0x50]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	movs r0, #0xa
	strb r0, [r5, #0xb]
	str r7, [r5, #0x18]
	ldr r0, [r7, #0x18]
	adds r0, #1
	str r0, [r7, #0x18]
	str r4, [r5, #0x1c]
	b _080746D8
	.align 2, 0
_0807469C: .4byte EntityUpdateNothing
_080746A0: .4byte 0xFFFF0000
_080746A4: .4byte sub_0803B9D0
_080746A8: .4byte 0x080E9644
_080746AC: .4byte 0x0003FFFF
_080746B0: .4byte 0xFFFE0000
_080746B4: .4byte 0x0001FFFF
_080746B8: .4byte 0xFFFD0000
_080746BC:
	ldr r7, [r6, #0x18]
	cmp r7, #0
	beq _080746D8
	ldr r0, [r7]
	cmp r0, #0
	beq _080746D8
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x3d
	bne _080746D8
	ldr r0, [r7, #0x18]
	subs r0, #1
	str r0, [r7, #0x18]
_080746D8:
	ldrb r1, [r6, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08074732
	bl RandomNumberGenerator
	ldr r4, _08074710 @ =0x0003FFFF
	ands r4, r0
	ldr r5, _08074714 @ =0xFFFE0000
	adds r4, r4, r5
	bl RandomNumberGenerator
	ldr r1, _08074718 @ =0x0001FFFF
	ands r1, r0
	subs r5, r5, r1
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x44]
	adds r2, r6, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_080747B4
	b _08074732
	.align 2, 0
_08074710: .4byte 0x0003FFFF
_08074714: .4byte 0xFFFE0000
_08074718: .4byte 0x0001FFFF
_0807471C:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08074732
	movs r0, #2
	strb r0, [r6, #0xa]
	strb r2, [r6, #0xd]
_08074732:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807473C
sub_0807473C: @ 0x0807473C
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
	bgt _080747AC
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
	movs r0, #2
	strb r0, [r6, #0xa]
	movs r0, #0
	strb r0, [r6, #0xb]
_080747AC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080747B4
sub_080747B4: @ 0x080747B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _08074828 @ =sub_08074838
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0807481C
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	str r7, [r4, #0x48]
	mov r0, r8
	str r0, [r4, #0x4c]
	movs r0, #0
	strb r0, [r4, #0xd]
	adds r1, r4, #0
	adds r1, #0x5c
	ldr r0, [sp, #0x18]
	strb r0, [r1]
	ldr r0, _0807482C @ =0x081CBF5C
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08074830 @ =0x08214C38
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08074834 @ =sub_0803B9D0
	str r0, [r4, #4]
_0807481C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08074828: .4byte sub_08074838
_0807482C: .4byte 0x081CBF5C
_08074830: .4byte 0x08214C38
_08074834: .4byte sub_0803B9D0

	thumb_func_start sub_08074838
sub_08074838: @ 0x08074838
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #8
	bl sub_0806D490
	adds r0, r4, #0
	movs r1, #8
	bl sub_0806D4A8
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D3D8
	adds r0, r4, #0
	bl sub_0803F17C
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bls _0807486E
	adds r0, r4, #0
	bl EntityDelete
_0807486E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08074874
sub_08074874: @ 0x08074874
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080748A8 @ =0x081CBF5C
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _080748B8
	ldr r0, _080748AC @ =0x0820A4F4
	movs r1, #0
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _080748B0 @ =0x08214C38
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _080748B4 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _080748BA
	.align 2, 0
_080748A8: .4byte 0x081CBF5C
_080748AC: .4byte 0x0820A4F4
_080748B0: .4byte 0x08214C38
_080748B4: .4byte sub_0803B9D0
_080748B8:
	movs r0, #0
_080748BA:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080748C0
sub_080748C0: @ 0x080748C0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080748DC
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080748DC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080748E4
sub_080748E4: @ 0x080748E4
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

	thumb_func_start sub_08074910
sub_08074910: @ 0x08074910
	push {r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r0, _08074978 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0807497C @ =0x0000A094
	adds r6, r0, r1
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	beq _0807495A
	cmp r0, #2
	beq _08074946
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
	beq _08074946
	adds r0, r5, #0
	bl sub_08021924
_08074946:
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _0807495A
	movs r0, #2
	strb r0, [r5, #0xa]
	movs r0, #1
	strb r0, [r5, #0xd]
_0807495A:
	adds r0, r5, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _08074980
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	bne _0807496C
	b _08074B30
_0807496C:
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
	b _08074B30
	.align 2, 0
_08074978: .4byte gEwramData
_0807497C: .4byte 0x0000A094
_08074980:
	ldrb r0, [r5, #0xa]
	cmp r0, #4
	bls _08074988
	b _08074B24
_08074988:
	lsls r0, r0, #2
	ldr r1, _08074994 @ =_08074998
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08074994: .4byte _08074998
_08074998: @ jump table
	.4byte _080749AC @ case 0
	.4byte _080749B4 @ case 1
	.4byte _080749BC @ case 2
	.4byte _08074A0E @ case 3
	.4byte _08074B1C @ case 4
_080749AC:
	adds r0, r5, #0
	bl sub_08074C24
	b _08074B24
_080749B4:
	adds r0, r5, #0
	bl sub_08075078
	b _08074B24
_080749BC:
	movs r0, #1
	strb r0, [r5, #0xd]
	movs r1, #0x34
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bgt _080749CE
	adds r0, r5, #0
	bl sub_0807540C
_080749CE:
	adds r0, r5, #0
	bl sub_0806AEAC
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080749E4
	b _08074B24
_080749E4:
	ldr r1, [r5, #0x18]
	cmp r1, #0
	bne _080749EC
	b _08074B24
_080749EC:
	ldr r0, [r1]
	cmp r0, #0
	bne _080749F4
	b _08074B24
_080749F4:
	adds r0, r1, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x14
	beq _08074A00
	b _08074B24
_08074A00:
	ldr r0, [r1, #0x18]
	cmp r0, #0
	bne _08074A08
	b _08074B24
_08074A08:
	subs r0, #1
	str r0, [r1, #0x18]
	b _08074B24
_08074A0E:
	bl RandomNumberGenerator
	movs r1, #0x1f
	ands r1, r0
	cmp r1, #0
	beq _08074A1C
	b _08074B30
_08074A1C:
	movs r0, #0x30
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x18]
	cmp r0, r1
	blt _08074A28
	b _08074B30
_08074A28:
	ldr r2, _08074A58 @ =EntityUpdateNothing
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	bne _08074A3A
	b _08074B30
_08074A3A:
	ldr r0, [r5, #0x18]
	adds r0, #1
	str r0, [r5, #0x18]
	ldr r0, _08074A5C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08074A60 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, _08074A64 @ =0x001FFFFF
	cmp r1, r0
	bgt _08074A68
	movs r0, #0x80
	lsls r0, r0, #0x11
	b _08074A84
	.align 2, 0
_08074A58: .4byte EntityUpdateNothing
_08074A5C: .4byte gEwramData
_08074A60: .4byte 0x00013110
_08074A64: .4byte 0x001FFFFF
_08074A68:
	movs r0, #0xd0
	lsls r0, r0, #0x10
	cmp r1, r0
	bgt _08074A82
	bl RandomNumberGenerator
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08074A82
	movs r0, #0x80
	lsls r0, r0, #0x11
	b _08074A84
_08074A82:
	ldr r0, _08074AA0 @ =0xFFF00000
_08074A84:
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x10]
	cmp r0, #0
	bge _08074AA4
	bl RandomNumberGenerator
	movs r1, #0x50
	bl __umodsi3
	subs r0, #0x40
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	b _08074AC4
	.align 2, 0
_08074AA0: .4byte 0xFFF00000
_08074AA4:
	cmp r0, #0
	ble _08074AB4
	bl RandomNumberGenerator
	movs r1, #0x3f
	ands r1, r0
	adds r1, #0x90
	b _08074ABE
_08074AB4:
	bl RandomNumberGenerator
	movs r1, #0x3f
	ands r1, r0
	adds r1, #0x30
_08074ABE:
	adds r0, r4, #0
	adds r0, #0x46
	strh r1, [r0]
_08074AC4:
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x37
	movs r1, #0
	strb r1, [r0]
	adds r3, r5, #0
	adds r3, #0x36
	ldrb r0, [r3]
	subs r2, #0x23
	strb r0, [r2]
	strh r1, [r4, #0x32]
	ldr r0, _08074B14 @ =sub_0803B9D0
	str r0, [r4, #4]
	ldr r2, _08074B18 @ =0x080E9644
	ldrb r1, [r3]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #0xc]
	strh r0, [r4, #0x34]
	ldrb r1, [r3]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #0xe]
	strh r0, [r4, #0x2e]
	ldr r0, [r5]
	str r0, [r4]
	adds r0, r4, #0
	bl sub_08074B38
	str r5, [r4, #0x18]
	b _08074B30
	.align 2, 0
_08074B14: .4byte sub_0803B9D0
_08074B18: .4byte 0x080E9644
_08074B1C:
	adds r0, r5, #0
	bl sub_0803F17C
	b _08074B30
_08074B24:
	adds r0, r5, #0
	bl sub_0806DF20
	adds r0, r5, #0
	bl sub_0806E314
_08074B30:
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08074B38
sub_08074B38: @ 0x08074B38
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_080754E0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08074B4E
	adds r0, r4, #0
	bl EntityDelete
	b _08074C16
_08074B4E:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r0, _08074B80 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08074B84
	movs r0, #4
	strb r0, [r4, #0xa]
	b _08074C16
	.align 2, 0
_08074B80: .4byte gEwramData
_08074B84:
	adds r0, r4, #0
	adds r0, #0x5c
	movs r5, #3
	strb r5, [r0]
	ldr r2, _08074BC4 @ =sub_0807552C
	ldr r3, _08074BC8 @ =sub_080751B4
	adds r0, r4, #0
	movs r1, #8
	bl sub_0804277C
	adds r0, r4, #0
	bl sub_0806B1FC
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _08074BCC
	strb r5, [r4, #0xa]
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
	b _08074C16
	.align 2, 0
_08074BC4: .4byte sub_0807552C
_08074BC8: .4byte sub_080751B4
_08074BCC:
	strb r0, [r4, #0xa]
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
	ands r1, r6
	cmp r1, #0
	beq _08074C08
	bl RandomNumberGenerator
	ldr r1, _08074C04 @ =0x00003FFF
	ands r1, r0
	movs r0, #0xc0
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r4, #0x48]
	b _08074C16
	.align 2, 0
_08074C04: .4byte 0x00003FFF
_08074C08:
	bl RandomNumberGenerator
	ldr r1, _08074C1C @ =0x00003FFF
	ands r1, r0
	ldr r0, _08074C20 @ =0xFFFF4000
	subs r0, r0, r1
	str r0, [r4, #0x48]
_08074C16:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08074C1C: .4byte 0x00003FFF
_08074C20: .4byte 0xFFFF4000

	thumb_func_start sub_08074C24
sub_08074C24: @ 0x08074C24
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _08074C44 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08074C48 @ =0x0000A094
	adds r7, r0, r1
	ldrb r0, [r5, #0xb]
	cmp r0, #4
	bls _08074C38
	b _08075072
_08074C38:
	lsls r0, r0, #2
	ldr r1, _08074C4C @ =_08074C50
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08074C44: .4byte gEwramData
_08074C48: .4byte 0x0000A094
_08074C4C: .4byte _08074C50
_08074C50: @ jump table
	.4byte _08074C64 @ case 0
	.4byte _08074DC4 @ case 1
	.4byte _08074DEC @ case 2
	.4byte _08074F1A @ case 3
	.4byte _0807506C @ case 4
_08074C64:
	adds r0, r5, #0
	bl sub_0806D3AC
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #2
	bne _08074CAA
	adds r0, r5, #0
	adds r0, #0x6e
	ldrh r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	bne _08074D06
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	cmp r0, #0
	bne _08074CCC
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _08074CCC
_08074CAA:
	adds r6, r5, #0
	adds r6, #0x6e
	cmp r0, #0
	bne _08074CCC
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08074CCC
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_08074CCC:
	ldrh r0, [r6]
	cmp r0, #0
	bne _08074D06
	adds r0, r5, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	bge _08074CE2
	rsbs r4, r4, #0
_08074CE2:
	adds r0, r5, #0
	bl sub_0806BDEC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08074CF2
	rsbs r0, r0, #0
_08074CF2:
	adds r0, #0x20
	cmp r4, r0
	bgt _08074D06
	movs r0, #1
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	b _08074E46
_08074D06:
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	bne _08074D98
	adds r0, r5, #0
	bl sub_0806BDEC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08074D1C
	rsbs r0, r0, #0
_08074D1C:
	cmp r0, #0x10
	bgt _08074D22
	b _08075072
_08074D22:
	adds r0, r5, #0
	bl sub_0806BD64
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_0806BDEC
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0
	bge _08074D3A
	rsbs r4, r4, #0
_08074D3A:
	adds r4, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08074D46
	rsbs r0, r0, #0
_08074D46:
	subs r0, r4, r0
	cmp r0, #0
	bge _08074D4E
	rsbs r0, r0, #0
_08074D4E:
	cmp r0, #0x1f
	ble _08074D54
	b _08075072
_08074D54:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08074D7E
	adds r0, r5, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08074D70
	b _08075072
_08074D70:
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	ldrh r2, [r7, #6]
	adds r0, r0, r2
	adds r0, #0x15
	b _08075006
_08074D7E:
	adds r0, r5, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08074D8C
	b _08075072
_08074D8C:
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	ldrh r1, [r7, #6]
	adds r0, r0, r1
	b _08075004
_08074D98:
	ldrh r6, [r6]
	cmp r6, #0
	beq _08074DA0
	b _08075072
_08074DA0:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _08074DB4
	b _08075042
_08074DB4:
	adds r0, r5, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08074DC2
	b _0807505E
_08074DC2:
	b _08075068
_08074DC4:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08074DE4
	adds r0, r5, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
_08074DE4:
	adds r0, r5, #0
	bl sub_0806D3AC
	b _08075072
_08074DEC:
	adds r0, r5, #0
	bl sub_0806D3AC
	adds r0, r5, #0
	adds r0, #0x6e
	ldrh r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	bne _08074E5A
	ldr r0, [r5, #0x48]
	cmp r0, #0
	ble _08074E22
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x42
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r0, r0, r1
	movs r1, #0x10
	rsbs r1, r1, #0
	cmp r0, r1
	bge _08074E5A
	b _08074E3A
_08074E22:
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x42
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r0, r0, r1
	cmp r0, #0x10
	ble _08074E5A
_08074E3A:
	movs r0, #3
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
_08074E46:
	bl sub_0803F2C8
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _08075072
_08074E5A:
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	bne _08074ED4
	adds r0, r5, #0
	bl sub_0806BDEC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08074E70
	rsbs r0, r0, #0
_08074E70:
	cmp r0, #0x10
	bgt _08074E76
	b _08075072
_08074E76:
	adds r0, r5, #0
	bl sub_0806BD64
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_0806BDEC
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0
	bge _08074E8E
	rsbs r4, r4, #0
_08074E8E:
	adds r4, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08074E9A
	rsbs r0, r0, #0
_08074E9A:
	subs r0, r4, r0
	cmp r0, #0
	bge _08074EA2
	rsbs r0, r0, #0
_08074EA2:
	cmp r0, #0x1f
	ble _08074EA8
	b _08075072
_08074EA8:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08074EB8
	b _08074FEE
_08074EB8:
	adds r0, r5, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08074EC6
	b _08075072
_08074EC6:
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	ldrh r1, [r7, #6]
	adds r0, r0, r1
	adds r0, #0x15
	b _08075006
_08074ED4:
	ldrh r6, [r6]
	cmp r6, #0
	beq _08074EDC
	b _08075072
_08074EDC:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _08074F04
	adds r0, r5, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08074EFC
	b _0807504E
_08074EFC:
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r6, [r5, #0xb]
	b _08075072
_08074F04:
	adds r0, r5, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08074F12
	b _08075068
_08074F12:
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r4, [r5, #0xb]
	b _08075072
_08074F1A:
	adds r0, r5, #0
	bl sub_0806D3AC
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #2
	bne _08074F5E
	adds r0, r5, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #0
	bne _08074F7C
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	cmp r0, #0
	bne _08074F7C
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _08074F7C
_08074F5E:
	cmp r0, #0
	bne _08074F7C
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08074F7C
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_08074F7C:
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	bne _08075028
	adds r0, r5, #0
	bl sub_0806BDEC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08074F92
	rsbs r0, r0, #0
_08074F92:
	cmp r0, #0x10
	ble _08075072
	adds r0, r5, #0
	bl sub_0806BD64
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_0806BDEC
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0
	bge _08074FAE
	rsbs r4, r4, #0
_08074FAE:
	adds r4, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08074FBA
	rsbs r0, r0, #0
_08074FBA:
	subs r0, r4, r0
	cmp r0, #0
	bge _08074FC2
	rsbs r0, r0, #0
_08074FC2:
	cmp r0, #0x1f
	bgt _08075072
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08074FEE
	adds r0, r5, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08075072
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	ldrh r1, [r7, #6]
	adds r0, r0, r1
	adds r0, #0x15
	b _08075006
_08074FEE:
	adds r0, r5, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08075072
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	ldrh r2, [r7, #6]
	adds r0, r0, r2
_08075004:
	subs r0, #0x15
_08075006:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	ldrh r7, [r7, #0xa]
	adds r1, r1, r7
	subs r1, #9
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #2
	beq _08075072
	movs r0, #1
	strb r0, [r5, #0x1c]
	b _08075072
_08075028:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrh r6, [r0]
	cmp r6, #0
	bne _08075072
	subs r0, #0x16
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _08075052
_08075042:
	adds r0, r5, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0807505E
_0807504E:
	strb r6, [r5, #0x1c]
	b _08075072
_08075052:
	adds r0, r5, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08075068
_0807505E:
	movs r0, #1
	strb r0, [r5, #0xa]
	movs r0, #0xa
	strb r0, [r5, #0xb]
	b _08075072
_08075068:
	strb r4, [r5, #0x1c]
	b _08075072
_0807506C:
	adds r0, r5, #0
	bl sub_0806D3AC
_08075072:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08075078
sub_08075078: @ 0x08075078
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0xc
	bls _08075084
	b _080751AE
_08075084:
	lsls r0, r0, #2
	ldr r1, _08075090 @ =_08075094
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08075090: .4byte _08075094
_08075094: @ jump table
	.4byte _080750C8 @ case 0
	.4byte _08075100 @ case 1
	.4byte _0807512A @ case 2
	.4byte _0807518C @ case 3
	.4byte _080751AE @ case 4
	.4byte _080751AE @ case 5
	.4byte _080751AE @ case 6
	.4byte _080751AE @ case 7
	.4byte _080751AE @ case 8
	.4byte _080751AE @ case 9
	.4byte _08075150 @ case 10
	.4byte _08075160 @ case 11
	.4byte _0807518C @ case 12
_080750C8:
	adds r0, r4, #0
	bl sub_0806D044
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x50
	ble _080750E0
	movs r0, #1
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #5
	b _080750E8
_080750E0:
	movs r0, #2
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #6
_080750E8:
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _080751AE
_08075100:
	adds r5, r4, #0
	adds r5, #0x59
	ldrb r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080751AE
	movs r0, #2
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r1, [r5]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	b _080751AE
_0807512A:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #2
	bls _080751AE
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	bl sub_08075230
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _08075184
_08075150:
	adds r0, r4, #0
	movs r1, #7
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0xb
	b _080751AC
_08075160:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #2
	bls _080751AE
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_08075230
_08075184:
	movs r0, #0x85
	bl sub_080D7910
	b _080751AE
_0807518C:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080751AE
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0
	strb r0, [r4, #0xa]
	movs r0, #4
_080751AC:
	strb r0, [r4, #0xb]
_080751AE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080751B4
sub_080751B4: @ 0x080751B4
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
	bgt _0807522A
	adds r0, r6, #0
	bl sub_080683BC
	movs r0, #0x6b
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
_0807522A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08075230
sub_08075230: @ 0x08075230
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r2, _080752B4 @ =sub_08075314
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	beq _08075308
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08075558
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08075258
	adds r0, r5, #0
	bl EntityDelete
_08075258:
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_080755A8
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	str r6, [r5, #0x10]
	adds r4, r6, #0
	adds r4, #0x58
	ldrb r0, [r4]
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
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080752B8
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, #0x15
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #0xa
	b _080752C8
	.align 2, 0
_080752B4: .4byte sub_08075314
_080752B8:
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x15
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, _08075310 @ =0xFFFE0000
_080752C8:
	str r0, [r5, #0x48]
	adds r0, r6, #0
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #9
	adds r2, r5, #0
	adds r2, #0x46
	movs r1, #0
	strh r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r5, #0x4c]
	str r1, [r5, #0x50]
	str r1, [r5, #0x54]
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
_08075308:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08075310: .4byte 0xFFFE0000

	thumb_func_start sub_08075314
sub_08075314: @ 0x08075314
	push {r4, r5, lr}
	sub sp, #0x1c
	adds r4, r0, #0
	ldr r0, _08075334 @ =0x0404FC00
	str r0, [sp, #0x10]
	ldr r0, _08075338 @ =0x0404F00C
	str r0, [sp, #0x14]
	ldr r0, _0807533C @ =0x0404E418
	str r0, [sp, #0x18]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08075340
	cmp r0, #1
	beq _080753B4
	b _080753F0
	.align 2, 0
_08075334: .4byte 0x0404FC00
_08075338: .4byte 0x0404F00C
_0807533C: .4byte 0x0404E418
_08075340:
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xd]
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0807535A
	add r1, sp, #0x10
	b _08075360
_0807535A:
	cmp r0, #1
	bne _08075368
	add r1, sp, #0x14
_08075360:
	adds r0, r4, #0
	bl sub_08042848
	b _08075370
_08075368:
	add r1, sp, #0x18
	adds r0, r4, #0
	bl sub_08042848
_08075370:
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _080753B0 @ =0xFFFE0000
	adds r0, r4, #0
	bl sub_08069770
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806D128
	adds r1, r0, #0
	cmp r1, #0
	bne _080753E8
	movs r0, #7
	ands r0, r5
	cmp r0, #0
	beq _080753F0
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xb]
	movs r0, #0x3c
	strb r0, [r4, #0xd]
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	b _08075404
	.align 2, 0
_080753B0: .4byte 0xFFFE0000
_080753B4:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x28
	bgt _080753F0
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
	movs r0, #0xd
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bgt _080753F0
_080753E8:
	adds r0, r4, #0
	bl EntityDelete
	b _08075404
_080753F0:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080753FE
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
_080753FE:
	adds r0, r4, #0
	bl sub_0803F17C
_08075404:
	add sp, #0x1c
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0807540C
sub_0807540C: @ 0x0807540C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r6, #0
_08075412:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _080754C0 @ =sub_08075614
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _080754B2
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	bl RandomNumberGenerator
	ldr r1, _080754C4 @ =0x0003FFFF
	ands r1, r0
	ldr r0, _080754C8 @ =0xFFFE0000
	adds r1, r1, r0
	str r1, [r4, #0x48]
	bl RandomNumberGenerator
	ldr r1, _080754CC @ =0x0000FFFF
	ands r1, r0
	rsbs r1, r1, #0
	ldr r7, _080754D0 @ =0xFFFFC000
	adds r1, r1, r7
	str r1, [r4, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r4, #0x54]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldr r0, _080754D4 @ =0x081CBF64
	bl sub_0803AFB8
	adds r2, r0, #0
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	ldr r1, _080754D8 @ =0x08215CBC
	bl sub_0803B924
	adds r0, r6, #0
	adds r0, #0x24
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
	ldr r0, _080754DC @ =sub_0803B9D0
	str r0, [r4, #4]
	bl RandomNumberGenerator
	movs r1, #3
	ands r1, r0
	adds r1, #0x28
	strb r1, [r4, #0xd]
_080754B2:
	adds r6, #1
	cmp r6, #6
	ble _08075412
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080754C0: .4byte sub_08075614
_080754C4: .4byte 0x0003FFFF
_080754C8: .4byte 0xFFFE0000
_080754CC: .4byte 0x0000FFFF
_080754D0: .4byte 0xFFFFC000
_080754D4: .4byte 0x081CBF64
_080754D8: .4byte 0x08215CBC
_080754DC: .4byte sub_0803B9D0

	thumb_func_start sub_080754E0
sub_080754E0: @ 0x080754E0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08075514 @ =0x081CBF64
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _08075524
	ldr r0, _08075518 @ =0x0820A518
	movs r1, #0
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _0807551C @ =0x08215CBC
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _08075520 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _08075526
	.align 2, 0
_08075514: .4byte 0x081CBF64
_08075518: .4byte 0x0820A518
_0807551C: .4byte 0x08215CBC
_08075520: .4byte sub_0803B9D0
_08075524:
	movs r0, #0
_08075526:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0807552C
sub_0807552C: @ 0x0807552C
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

	thumb_func_start sub_08075558
sub_08075558: @ 0x08075558
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _08075594 @ =0x081CBF64
	bl sub_0803AFB8
	adds r2, r0, #0
	cmp r2, #0
	blt _080755A0
	ldr r1, _08075598 @ =0x08215CBC
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _0807559C @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _080755A2
	.align 2, 0
_08075594: .4byte 0x081CBF64
_08075598: .4byte 0x08215CBC
_0807559C: .4byte sub_0803B9D0
_080755A0:
	movs r0, #0
_080755A2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080755A8
sub_080755A8: @ 0x080755A8
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _080755DC @ =0x0404FC00
	str r0, [sp]
	ldr r2, _080755E0 @ =sub_080755E4
	adds r0, r4, #0
	movs r1, #8
	movs r3, #0
	bl sub_0804277C
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
_080755DC: .4byte 0x0404FC00
_080755E0: .4byte sub_080755E4

	thumb_func_start sub_080755E4
sub_080755E4: @ 0x080755E4
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

	thumb_func_start sub_08075614
sub_08075614: @ 0x08075614
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #8
	bl sub_0806D490
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D3D8
	ldrb r0, [r4, #0xd]
	cmp r0, #0x28
	bhi _08075648
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
_08075648:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0807565A
	adds r0, r4, #0
	bl EntityDelete
_0807565A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08075660
sub_08075660: @ 0x08075660
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0807628C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08075676
	adds r0, r4, #0
	bl EntityDelete
	b _080756EE
_08075676:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	bl RandomNumberGenerator
	movs r1, #0xf
	ands r1, r0
	adds r0, r4, #0
	adds r0, #0x6f
	strb r1, [r0]
	bl RandomNumberGenerator
	movs r1, #5
	bl __umodsi3
	adds r1, r4, #0
	adds r1, #0x6e
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r0, _080756C8 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _080756CC
	movs r0, #4
	strb r0, [r4, #0xa]
	b _080756EE
	.align 2, 0
_080756C8: .4byte gEwramData
_080756CC:
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #3
	strb r0, [r1]
	ldr r2, _080756F4 @ =sub_080762F0
	ldr r3, _080756F8 @ =sub_08075CAC
	adds r0, r4, #0
	movs r1, #8
	bl sub_080427B8
	adds r0, r4, #0
	bl sub_0806B1FC
	strb r5, [r4, #0xa]
	movs r0, #0xa
	strb r0, [r4, #0xb]
	strb r5, [r4, #0xc]
_080756EE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080756F4: .4byte sub_080762F0
_080756F8: .4byte sub_08075CAC

	thumb_func_start sub_080756FC
sub_080756FC: @ 0x080756FC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldrb r4, [r5, #0xb]
	cmp r4, #1
	beq _08075774
	cmp r4, #1
	bgt _08075714
	cmp r4, #0
	beq _0807571C
	b _08075940
_08075714:
	cmp r4, #0xa
	bne _0807571A
	b _08075824
_0807571A:
	b _08075940
_0807571C:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #0
	bne _08075742
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
_08075742:
	adds r0, r5, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08075752
	rsbs r0, r0, #0
_08075752:
	cmp r0, #0x59
	ble _08075762
	adds r0, r5, #0
	bl sub_0806D54C
	cmp r0, #0
	bne _08075762
	b _08075940
_08075762:
	movs r0, #0xa
	strb r0, [r5, #0xb]
	strb r4, [r5, #0xc]
	strb r4, [r5, #0xd]
	str r4, [r5, #0x48]
	str r4, [r5, #0x4c]
	str r4, [r5, #0x50]
	str r4, [r5, #0x54]
	b _08075940
_08075774:
	adds r0, r5, #0
	bl sub_0806CF2C
	adds r4, r5, #0
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
	adds r0, r5, #0
	movs r1, #0xc
	bl sub_0806D490
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r5, #0
	bl sub_0806D3D8
	adds r0, r5, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #1
	bne _080757EC
	ldrb r1, [r5, #0xc]
	adds r0, r1, #0
	cmp r0, #0
	bne _080757D0
	ldr r0, _080757CC @ =0xFFFE0000
	str r0, [r5, #0x4c]
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	adds r0, r1, #1
	strb r0, [r5, #0xc]
	movs r0, #0x8b
	bl sub_080D7910
	b _080757EC
	.align 2, 0
_080757CC: .4byte 0xFFFE0000
_080757D0:
	cmp r0, #1
	bne _080757EC
	ldr r0, [r5, #0x4c]
	ldr r2, _08075820 @ =0xFFFE0000
	adds r0, r0, r2
	str r0, [r5, #0x4c]
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	adds r0, r1, #1
	strb r0, [r5, #0xc]
	movs r0, #0x8b
	bl sub_080D7910
_080757EC:
	ldrb r0, [r5, #0xd]
	cmp r0, #1
	bhi _080757F4
	b _08075940
_080757F4:
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	bgt _080757FC
	b _08075940
_080757FC:
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
	movs r1, #0
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xb]
	b _08075940
	.align 2, 0
_08075820: .4byte 0xFFFE0000
_08075824:
	adds r0, r5, #0
	adds r0, #0x6e
	ldr r4, _0807586C @ =0x0000FFFF
	ldrh r1, [r0]
	mov r8, r0
	cmp r1, #0
	bne _0807584E
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
_0807584E:
	mov r3, r8
	ldrh r0, [r3]
	ands r4, r0
	cmp r4, #1
	bne _08075916
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08075870
	movs r0, #0xa0
	lsls r0, r0, #9
	b _08075872
	.align 2, 0
_0807586C: .4byte 0x0000FFFF
_08075870:
	ldr r0, _08075894 @ =0xFFFEC000
_08075872:
	str r0, [r5, #0x48]
	adds r0, r5, #0
	bl sub_0806CDFC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r2, r5, #0
	adds r2, #0x46
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r1, #0x20
	subs r0, r0, r1
	adds r4, r2, #0
	cmp r0, #0
	bge _0807589C
	ldr r0, _08075898 @ =0xFFFE6000
	b _0807589E
	.align 2, 0
_08075894: .4byte 0xFFFEC000
_08075898: .4byte 0xFFFE6000
_0807589C:
	ldr r0, _08075908 @ =0xFFFF4000
_0807589E:
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r5, #0x54]
	movs r7, #0
	movs r6, #1
	strb r6, [r5, #0xc]
	adds r0, r5, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080758BC
	rsbs r0, r0, #0
_080758BC:
	cmp r0, #0x50
	bgt _08075910
	adds r0, r5, #0
	bl sub_0806CDFC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	cmp r0, #0x1f
	ble _08075910
	adds r0, r5, #0
	bl sub_0806CDFC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r4, r3]
	subs r0, r0, r1
	cmp r0, #0x40
	bgt _08075910
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	strb r6, [r5, #0xb]
	strb r7, [r5, #0xc]
	strb r7, [r5, #0xd]
	ldr r0, _0807590C @ =0xFFFE0000
	str r0, [r5, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r5, #0x54]
	b _08075940
	.align 2, 0
_08075908: .4byte 0xFFFF4000
_0807590C: .4byte 0xFFFE0000
_08075910:
	movs r0, #0x8b
	bl sub_080D7910
_08075916:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _0807592E
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #1
	bne _08075928
	movs r0, #0
	b _0807592C
_08075928:
	movs r0, #0x80
	lsls r0, r0, #5
_0807592C:
	str r0, [r5, #0x54]
_0807592E:
	adds r0, r5, #0
	movs r1, #0x20
	bl sub_0806D490
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r5, #0
	bl sub_0806D3D8
_08075940:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807594C
sub_0807594C: @ 0x0807594C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #0xc
	bls _08075958
	b _08075BD0
_08075958:
	lsls r0, r0, #2
	ldr r1, _08075964 @ =_08075968
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08075964: .4byte _08075968
_08075968: @ jump table
	.4byte _0807599C @ case 0
	.4byte _08075A0E @ case 1
	.4byte _08075A5A @ case 2
	.4byte _08075AA2 @ case 3
	.4byte _08075BD0 @ case 4
	.4byte _08075BD0 @ case 5
	.4byte _08075BD0 @ case 6
	.4byte _08075BD0 @ case 7
	.4byte _08075BD0 @ case 8
	.4byte _08075BD0 @ case 9
	.4byte _08075B08 @ case 10
	.4byte _08075B6C @ case 11
	.4byte _08075BA2 @ case 12
_0807599C:
	bl RandomNumberGenerator
	adds r4, r0, #0
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	beq _080759F8
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #0x87
	bl sub_080D7910
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	ldr r0, _080759EC @ =gEwramData
	ldr r4, [r0]
	ldr r0, _080759F0 @ =0x0000A094
	adds r4, r4, r0
	adds r0, r5, #0
	bl sub_0806CD38
	ldr r1, [r4, #4]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	adds r0, r5, #0
	bl sub_0806CD78
	ldr r1, [r4, #8]
	adds r0, r0, r1
	ldr r1, _080759F4 @ =0xFFE80000
	adds r0, r0, r1
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x44]
	str r0, [r5, #0x1c]
	b _08075BD0
	.align 2, 0
_080759EC: .4byte gEwramData
_080759F0: .4byte 0x0000A094
_080759F4: .4byte 0xFFE80000
_080759F8:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0xa
	strb r0, [r5, #0xb]
	strb r4, [r5, #0xc]
	strb r4, [r5, #0xd]
	b _08075BD0
_08075A0E:
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	movs r3, #0xc0
	lsls r3, r3, #0xa
	adds r0, r5, #0
	bl sub_080694B8
	cmp r0, #0
	beq _08075A52
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	ble _08075A40
	ldr r0, _08075A3C @ =0xFFFFF000
	b _08075A44
	.align 2, 0
_08075A3C: .4byte 0xFFFFF000
_08075A40:
	movs r0, #0x80
	lsls r0, r0, #1
_08075A44:
	str r0, [r5, #0x54]
	adds r0, r5, #0
	movs r1, #8
	bl sub_0806D4A8
	movs r0, #0
	strb r0, [r5, #0xd]
_08075A52:
	adds r0, r5, #0
	bl sub_0806D3AC
	b _08075BD0
_08075A5A:
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r0, r5, #0
	bl sub_0806D3D8
	adds r0, r5, #0
	movs r1, #0x40
	bl sub_0806D490
	movs r1, #0xf0
	lsls r1, r1, #0xf
	adds r0, r5, #0
	bl sub_0806CEF8
	adds r1, r0, #0
	cmp r1, #0
	bne _08075A86
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	str r1, [r5, #0x54]
	b _08075BD0
_08075A86:
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bhi _08075A96
	b _08075BD0
_08075A96:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0
	str r0, [r5, #0x54]
	b _08075BD0
_08075AA2:
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
	movs r1, #8
	bl sub_0806D490
	adds r0, r5, #0
	movs r1, #8
	bl sub_0806D4A8
	adds r0, r5, #0
	bl sub_0806D3AC
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bge _08075ADC
	rsbs r0, r0, #0
_08075ADC:
	ldr r1, _08075B04 @ =0x00007FFF
	cmp r0, r1
	bgt _08075BD0
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	bge _08075AEA
	rsbs r0, r0, #0
_08075AEA:
	cmp r0, r1
	bgt _08075BD0
	movs r1, #0
	strb r1, [r5, #0xa]
	movs r0, #0xa
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xc]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _08075BD0
	.align 2, 0
_08075B04: .4byte 0x00007FFF
_08075B08:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #1
	bne _08075BD0
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08075BD0
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x38
	bne _08075B4A
	adds r0, r5, #0
	movs r1, #0
	bl sub_08075EDC
	adds r0, r5, #0
	movs r1, #2
	bl sub_08075EDC
	adds r0, r5, #0
	movs r1, #4
	bl sub_08075EDC
	movs r0, #0x89
	bl sub_080D7910
	b _08075B96
_08075B4A:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08076054
	adds r0, r5, #0
	movs r1, #1
	bl sub_08076054
	adds r0, r5, #0
	movs r1, #2
	bl sub_08076054
	ldr r0, _08075B68 @ =0x00000137
	b _08075B92
	.align 2, 0
_08075B68: .4byte 0x00000137
_08075B6C:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #1
	bne _08075BD0
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x38
	bne _08075B96
	adds r0, r5, #0
	movs r1, #1
	bl sub_08075EDC
	adds r0, r5, #0
	movs r1, #3
	bl sub_08075EDC
	movs r0, #0x89
_08075B92:
	bl sub_080D7910
_08075B96:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
	b _08075BD0
_08075BA2:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #1
	bne _08075BD0
	ldrb r0, [r5, #0xd]
	adds r0, #1
	movs r4, #0
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08075BD0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	strb r4, [r5, #0xa]
	movs r0, #0xa
	strb r0, [r5, #0xb]
	strb r4, [r5, #0xc]
_08075BD0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08075BD8
sub_08075BD8: @ 0x08075BD8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _08075C34
	cmp r0, #1
	bgt _08075BEC
	cmp r0, #0
	beq _08075BF2
	b _08075C9C
_08075BEC:
	cmp r0, #2
	beq _08075C6A
	b _08075C9C
_08075BF2:
	adds r0, r4, #0
	bl sub_0806CF2C
	movs r1, #1
	eors r0, r1
	adds r3, r4, #0
	adds r3, #0x58
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
	beq _08075C1E
	movs r0, #0xc0
	lsls r0, r0, #0xa
	b _08075C20
_08075C1E:
	ldr r0, _08075C30 @ =0xFFFD0000
_08075C20:
	str r0, [r4, #0x48]
	ldr r0, _08075C30 @ =0xFFFD0000
	str r0, [r4, #0x4c]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	b _08075C9C
	.align 2, 0
_08075C30: .4byte 0xFFFD0000
_08075C34:
	ldr r1, [r4, #0x4c]
	ldr r0, _08075CA4 @ =0xFFFEC000
	cmp r1, r0
	ble _08075C6A
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
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_08075C6A:
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_0806D490
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_0806D4A8
	adds r0, r4, #0
	bl sub_0806D3AC
	ldr r1, [r4, #0x4c]
	ldr r0, _08075CA8 @ =0xFFFFE000
	cmp r1, r0
	ble _08075C9C
	movs r1, #0
	strb r1, [r4, #0xa]
	movs r0, #0xa
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_08075C9C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08075CA4: .4byte 0xFFFEC000
_08075CA8: .4byte 0xFFFFE000

	thumb_func_start sub_08075CAC
sub_08075CAC: @ 0x08075CAC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r7, r4, #0
	adds r7, #0x70
	ldrh r0, [r5, #4]
	bl sub_08021530
	adds r3, r0, #0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
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
	movs r1, #0x34
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bgt _08075D60
	adds r0, r6, #0
	bl sub_080683BC
	ldr r0, _08075D5C @ =0x000001C3
	bl sub_080D7910
	adds r0, r6, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
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
	strb r4, [r6, #0xb]
	ldr r1, [r6, #0x40]
	ldr r2, [r6, #0x44]
	adds r0, r6, #0
	bl sub_08075D90
	ldr r1, [r6, #0x40]
	ldr r2, [r6, #0x44]
	adds r0, r6, #0
	bl sub_08075D90
	ldr r1, [r6, #0x40]
	ldr r2, [r6, #0x44]
	adds r0, r6, #0
	bl sub_08075D90
	ldr r1, [r6, #0x40]
	ldr r2, [r6, #0x44]
	adds r0, r6, #0
	bl sub_08075D90
	b _08075D8A
	.align 2, 0
_08075D5C: .4byte 0x000001C3
_08075D60:
	ldrb r0, [r7]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08075D8A
	adds r0, r6, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	adds r0, r6, #0
	bl sub_0806B1FC
	movs r0, #3
	strb r0, [r6, #0xa]
	strb r4, [r6, #0xb]
_08075D8A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08075D90
sub_08075D90: @ 0x08075D90
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r2, _08075E28 @ =sub_08075E40
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r6, r0, #0
	cmp r6, #0
	beq _08075E22
	str r4, [r6, #0x40]
	str r5, [r6, #0x44]
	bl RandomNumberGenerator
	ldr r5, _08075E2C @ =0x0003FFFF
	ands r0, r5
	ldr r4, _08075E30 @ =0xFFFE0000
	adds r0, r0, r4
	str r0, [r6, #0x48]
	bl RandomNumberGenerator
	ands r0, r5
	adds r0, r0, r4
	str r0, [r6, #0x4c]
	movs r4, #0
	str r4, [r6, #0x50]
	str r4, [r6, #0x54]
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r6, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _08075E34 @ =0x081CBF6C
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08075E38 @ =0x08216060
	adds r0, r7, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r6, #0
	bl sub_0803B924
	adds r1, r6, #0
	adds r1, #0x65
	movs r0, #8
	strb r0, [r1]
	bl RandomNumberGenerator
	movs r1, #1
	adds r3, r6, #0
	adds r3, #0x58
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08075E3C @ =sub_0803B9D0
	str r0, [r6, #4]
	strb r4, [r6, #0xd]
_08075E22:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08075E28: .4byte sub_08075E40
_08075E2C: .4byte 0x0003FFFF
_08075E30: .4byte 0xFFFE0000
_08075E34: .4byte 0x081CBF6C
_08075E38: .4byte 0x08216060
_08075E3C: .4byte sub_0803B9D0

	thumb_func_start sub_08075E40
sub_08075E40: @ 0x08075E40
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xa]
	cmp r5, #0
	beq _08075E50
	cmp r5, #1
	beq _08075E9C
	b _08075ED6
_08075E50:
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_0806D490
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_0806D4A8
	adds r0, r4, #0
	bl sub_0806D3AC
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bge _08075E6E
	rsbs r0, r0, #0
_08075E6E:
	ldr r1, _08075E98 @ =0x00000FFF
	cmp r0, r1
	bgt _08075ED6
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bge _08075E7C
	rsbs r0, r0, #0
_08075E7C:
	cmp r0, r1
	bgt _08075ED6
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #8
	strb r0, [r1]
	str r5, [r4, #0x48]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r4, #0x4c]
	b _08075ED6
	.align 2, 0
_08075E98: .4byte 0x00000FFF
_08075E9C:
	adds r0, r4, #0
	bl sub_0806D3AC
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x27
	bls _08075EB6
	adds r0, r4, #0
	bl EntityDelete
_08075EB6:
	ldrb r1, [r4, #0xd]
	movs r0, #0x28
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
_08075ED6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08075EDC
sub_08075EDC: @ 0x08075EDC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	mov r8, r1
	ldr r2, _08075F5C @ =sub_08076390
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	bne _08075EF8
	b _08076048
_08075EF8:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_080763DC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08075F0C
	adds r0, r5, #0
	bl EntityDelete
_08075F0C:
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_08076244
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	str r6, [r5, #0x10]
	adds r4, r6, #0
	adds r4, #0x58
	ldrb r0, [r4]
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
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08075F60
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, #1
	b _08075F68
	.align 2, 0
_08075F5C: .4byte sub_08076390
_08075F60:
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #1
_08075F68:
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r0, #2
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
	mov r0, r8
	cmp r0, #4
	bhi _08076016
	lsls r0, r0, #2
	ldr r1, _08075F8C @ =_08075F90
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08075F8C: .4byte _08075F90
_08075F90: @ jump table
	.4byte _08075FA4 @ case 0
	.4byte _08075FB0 @ case 1
	.4byte _08075FCA @ case 2
	.4byte _08075FE4 @ case 3
	.4byte _08075FFE @ case 4
_08075FA4:
	movs r7, #0x80
	lsls r7, r7, #7
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0xc
	b _08076014
_08075FB0:
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	movs r7, #0xa0
	lsls r7, r7, #7
	cmp r0, #0
	beq _08075FC2
	movs r7, #0xc0
	lsls r7, r7, #6
_08075FC2:
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0xb
	b _08076014
_08075FCA:
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	movs r7, #0xc0
	lsls r7, r7, #7
	cmp r0, #0
	beq _08075FDC
	movs r7, #0x80
	lsls r7, r7, #6
_08075FDC:
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0xa
	b _08076014
_08075FE4:
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	movs r7, #0xe0
	lsls r7, r7, #7
	cmp r0, #0
	beq _08075FF6
	movs r7, #0x80
	lsls r7, r7, #5
_08075FF6:
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #9
	b _08076014
_08075FFE:
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	movs r7, #0x80
	lsls r7, r7, #8
	cmp r0, #0
	beq _0807600E
	movs r7, #0
_0807600E:
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #8
_08076014:
	strb r0, [r1]
_08076016:
	str r7, [r5, #0x14]
	movs r2, #0xc0
	lsls r2, r2, #0xa
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_0806D2F8
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
_08076048:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08076054
sub_08076054: @ 0x08076054
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r2, _080760D4 @ =sub_080761B8
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	bne _08076070
	b _080761AE
_08076070:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_080763DC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08076084
	adds r0, r5, #0
	bl EntityDelete
_08076084:
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_08076244
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	str r6, [r5, #0x10]
	adds r4, r6, #0
	adds r4, #0x58
	ldrb r0, [r4]
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
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080760D8
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, #1
	b _080760E0
	.align 2, 0
_080760D4: .4byte sub_080761B8
_080760D8:
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #1
_080760E0:
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r0, #2
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
	cmp r7, #1
	beq _08076124
	cmp r7, #1
	bgt _08076102
	cmp r7, #0
	beq _08076108
	b _0807615C
_08076102:
	cmp r7, #2
	beq _08076142
	b _0807615C
_08076108:
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	ldr r1, _0807611C @ =0x0000438E
	mov r8, r1
	cmp r0, #0
	beq _08076154
	ldr r0, _08076120 @ =0x00003C72
	b _08076152
	.align 2, 0
_0807611C: .4byte 0x0000438E
_08076120: .4byte 0x00003C72
_08076124:
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #7
	mov r8, r1
	cmp r0, #0
	beq _0807613A
	movs r0, #0x80
	lsls r0, r0, #6
	mov r8, r0
_0807613A:
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0xd
	b _0807615A
_08076142:
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	ldr r1, _08076170 @ =0x00007C72
	mov r8, r1
	cmp r0, #0
	beq _08076154
	ldr r0, _08076174 @ =0x0000038E
_08076152:
	mov r8, r0
_08076154:
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0xe
_0807615A:
	strb r0, [r1]
_0807615C:
	mov r1, r8
	str r1, [r5, #0x14]
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08076178
	movs r0, #0x18
	b _0807617A
	.align 2, 0
_08076170: .4byte 0x00007C72
_08076174: .4byte 0x0000038E
_08076178:
	movs r0, #8
_0807617A:
	strb r0, [r5, #0xd]
	ldrb r1, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
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
	ldrb r0, [r0]
	lsrs r1, r0, #4
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x3c
	strb r0, [r1]
_080761AE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080761B8
sub_080761B8: @ 0x080761B8
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r2, [r4, #0xa]
	cmp r2, #1
	beq _08076226
	cmp r2, #1
	bgt _080761CE
	cmp r2, #0
	beq _080761D4
	b _0807623A
_080761CE:
	cmp r2, #2
	beq _08076234
	b _0807623A
_080761D4:
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xf
	bhi _080761EE
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r4, #0x14]
	b _08076200
_080761EE:
	cmp r1, #0x1f
	bhi _08076200
	ldr r0, [r4, #0x14]
	ldr r3, _08076230 @ =0xFFFFFC00
	adds r0, r0, r3
	str r0, [r4, #0x14]
	cmp r1, #0x1e
	bls _08076200
	strb r2, [r4, #0xd]
_08076200:
	ldr r1, [r4, #0x14]
	movs r2, #0x80
	lsls r2, r2, #0xa
	adds r0, r4, #0
	bl sub_0806D2F8
	adds r0, r4, #0
	bl sub_0806D3AC
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806D128
	cmp r0, #0
	beq _0807623A
_08076226:
	adds r0, r4, #0
	bl EntityDelete
	b _0807623A
	.align 2, 0
_08076230: .4byte 0xFFFFFC00
_08076234:
	adds r0, r4, #0
	bl EntityDelete
_0807623A:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08076244
sub_08076244: @ 0x08076244
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08076280 @ =0x0606FDFD
	str r0, [sp]
	ldr r2, _08076284 @ =sub_0807642C
	ldr r3, _08076288 @ =sub_08076464
	adds r0, r4, #0
	movs r1, #8
	bl sub_0804277C
	adds r0, r4, #0
	mov r1, sp
	bl sub_080428B4
	adds r0, r4, #0
	mov r1, sp
	bl sub_08042848
	adds r4, #0x72
	ldrb r1, [r4]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08076280: .4byte 0x0606FDFD
_08076284: .4byte sub_0807642C
_08076288: .4byte sub_08076464

	thumb_func_start sub_0807628C
sub_0807628C: @ 0x0807628C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080762A4 @ =0x081CBF6C
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	bge _080762A8
	movs r0, #0
	b _080762DE
	.align 2, 0
_080762A4: .4byte 0x081CBF6C
_080762A8:
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x38
	bne _080762BC
	ldr r0, _080762B8 @ =0x0820A53C
	movs r1, #0
	b _080762C0
	.align 2, 0
_080762B8: .4byte 0x0820A53C
_080762BC:
	ldr r0, _080762E4 @ =0x0820A53C
	movs r1, #1
_080762C0:
	bl sub_08068264
	adds r1, r4, #0
	adds r1, #0x2c
	strb r0, [r1]
	adds r0, r1, #0
	ldr r1, _080762E8 @ =0x08216060
	ldrb r3, [r0]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _080762EC @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
_080762DE:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080762E4: .4byte 0x0820A53C
_080762E8: .4byte 0x08216060
_080762EC: .4byte sub_0803B9D0

	thumb_func_start sub_080762F0
sub_080762F0: @ 0x080762F0
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

	thumb_func_start sub_08076320
sub_08076320: @ 0x08076320
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _08076330
	cmp r0, #1
	beq _08076376
	b _08076386
_08076330:
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
	cmp r1, #0
	beq _0807635C
	ldr r0, _08076358 @ =0xFFFF0000
	b _08076360
	.align 2, 0
_08076358: .4byte 0xFFFF0000
_0807635C:
	movs r0, #0x80
	lsls r0, r0, #9
_08076360:
	str r0, [r4, #0x48]
	ldr r0, _0807638C @ =0xFFFE0000
	str r0, [r4, #0x4c]
	movs r0, #0
	str r0, [r4, #0x50]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_08076376:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D3D8
	adds r0, r4, #0
	bl sub_0806AEAC
_08076386:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0807638C: .4byte 0xFFFE0000

	thumb_func_start sub_08076390
sub_08076390: @ 0x08076390
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080763C6
	cmp r0, #1
	bgt _080763A6
	cmp r0, #0
	beq _080763AC
	b _080763D4
_080763A6:
	cmp r0, #2
	beq _080763CE
	b _080763D4
_080763AC:
	adds r0, r4, #0
	bl sub_0806D3AC
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806D128
	cmp r0, #0
	beq _080763D4
_080763C6:
	adds r0, r4, #0
	bl EntityDelete
	b _080763D4
_080763CE:
	adds r0, r4, #0
	bl EntityDelete
_080763D4:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080763DC
sub_080763DC: @ 0x080763DC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _08076418 @ =0x081CBF6C
	bl sub_0803AFB8
	adds r2, r0, #0
	cmp r2, #0
	blt _08076424
	ldr r1, _0807641C @ =0x08216060
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _08076420 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _08076426
	.align 2, 0
_08076418: .4byte 0x081CBF6C
_0807641C: .4byte 0x08216060
_08076420: .4byte sub_0803B9D0
_08076424:
	movs r0, #0
_08076426:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0807642C
sub_0807642C: @ 0x0807642C
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	mov r2, sp
	adds r0, #0x3c
	ldrb r0, [r0]
	movs r5, #0
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
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xb]
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08076464
sub_08076464: @ 0x08076464
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r2, #4]
	bl sub_08021530
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xb]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0807647C
sub_0807647C: @ 0x0807647C
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	bl sub_0806CC20
	cmp r0, #0
	bne _080764E8
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bhi _080764DC
	lsls r0, r0, #2
	ldr r1, _0807649C @ =_080764A0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807649C: .4byte _080764A0
_080764A0: @ jump table
	.4byte _080764B4 @ case 0
	.4byte _080764BC @ case 1
	.4byte _080764C4 @ case 2
	.4byte _080764CC @ case 3
	.4byte _080764D4 @ case 4
_080764B4:
	adds r0, r4, #0
	bl sub_080756FC
	b _080764DC
_080764BC:
	adds r0, r4, #0
	bl sub_0807594C
	b _080764DC
_080764C4:
	adds r0, r4, #0
	bl sub_08076320
	b _080764DC
_080764CC:
	adds r0, r4, #0
	bl sub_08075BD8
	b _080764DC
_080764D4:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080764E8
_080764DC:
	adds r0, r4, #0
	bl sub_0806DF20
	adds r0, r4, #0
	bl sub_0806E314
_080764E8:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080764F0
sub_080764F0: @ 0x080764F0
	push {lr}
	bl sub_0807647C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080764FC
sub_080764FC: @ 0x080764FC
	push {lr}
	bl sub_08075660
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08076508
sub_08076508: @ 0x08076508
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0807653E
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
	beq _08076532
	adds r0, r4, #0
	bl sub_08021924
_08076532:
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0807653E
	adds r0, r4, #0
	bl sub_0806AE54
_0807653E:
	adds r0, r4, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _0807654E
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _08076562
_0807654E:
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807656C
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _0807656C
	cmp r0, #2
	beq _0807656C
_08076562:
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
	b _0807665C
_0807656C:
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bhi _08076656
	lsls r0, r0, #2
	ldr r1, _0807657C @ =_08076580
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807657C: .4byte _08076580
_08076580: @ jump table
	.4byte _08076594 @ case 0
	.4byte _0807659C @ case 1
	.4byte _080765A4 @ case 2
	.4byte _08076650 @ case 3
	.4byte _08076648 @ case 4
_08076594:
	adds r0, r4, #0
	bl sub_08076824
	b _08076656
_0807659C:
	adds r0, r4, #0
	bl sub_08076B34
	b _08076656
_080765A4:
	ldrb r5, [r4, #0xb]
	cmp r5, #0
	bne _0807662C
	adds r0, r4, #0
	bl sub_08076F20
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08076656
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	subs r2, #1
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	strb r0, [r4, #0xb]
	strb r5, [r4, #0xd]
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	movs r5, #0x80
	lsls r5, r5, #0xc
	cmp r0, #0
	beq _080765E6
	ldr r5, _08076628 @ =0xFFF80000
_080765E6:
	movs r0, #0x6b
	bl sub_080D7910
	ldr r1, [r4, #0x40]
	adds r1, r1, r5
	ldr r2, [r4, #0x44]
	adds r0, r4, #0
	movs r3, #0xa
	bl sub_08077A88
	ldr r1, [r4, #0x40]
	adds r1, r1, r5
	ldr r2, [r4, #0x44]
	adds r0, r4, #0
	movs r3, #0xb
	bl sub_08077A88
	ldr r1, [r4, #0x40]
	ldr r2, [r4, #0x44]
	adds r0, r4, #0
	adds r0, #0x5c
	ldrb r3, [r0]
	subs r3, #1
	adds r0, r4, #0
	bl sub_080777F4
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _08076656
	bl sub_0806C250
	b _08076656
	.align 2, 0
_08076628: .4byte 0xFFF80000
_0807662C:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x31
	bls _08076656
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	b _08076656
_08076648:
	adds r0, r4, #0
	bl sub_08076824
	b _0807665C
_08076650:
	adds r0, r4, #0
	bl sub_08076ED8
_08076656:
	adds r0, r4, #0
	bl sub_0806E314
_0807665C:
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08076664
sub_08076664: @ 0x08076664
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080766E0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080766E4 @ =0x0000A094
	adds r4, r0, r1
	ldr r0, _080766E8 @ =0x0C10F8F8
	str r0, [sp]
	adds r0, r5, #0
	bl sub_08077C40
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807668A
	b _080767E8
_0807668A:
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x32
	bl sub_0806C2CC
	str r0, [r5, #0x20]
	cmp r0, #0
	bne _080766A0
	b _080767E8
_080766A0:
	adds r0, r5, #0
	bl sub_0806B04C
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	strh r0, [r5, #0x14]
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	strh r0, [r5, #0x16]
	ldrh r0, [r4, #6]
	strh r0, [r5, #0x18]
	ldrh r0, [r4, #0xa]
	strh r0, [r5, #0x1a]
	movs r3, #0x30
	ldrsh r0, [r5, r3]
	cmp r0, #0
	beq _080766EC
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	b _080766F8
	.align 2, 0
_080766E0: .4byte gEwramData
_080766E4: .4byte 0x0000A094
_080766E8: .4byte 0x0C10F8F8
_080766EC:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r2, [r0]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
_080766F8:
	strb r1, [r0]
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807670C
	adds r1, r5, #0
	adds r1, #0x4a
	movs r0, #0
	b _08076714
_0807670C:
	adds r1, r5, #0
	adds r1, #0x4a
	movs r0, #0x80
	lsls r0, r0, #8
_08076714:
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x48
	movs r1, #0
	strh r1, [r0]
	adds r0, #6
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	strh r1, [r5, #0x1c]
	strh r1, [r5, #0x1e]
	strh r1, [r5, #0x10]
	strh r1, [r5, #0x12]
	adds r7, r5, #0
	movs r6, #9
	mov sb, r0
	movs r0, #0x2c
	adds r0, r0, r5
	mov r8, r0
_0807673A:
	ldr r0, _080767D4 @ =sub_08077458
	bl sub_0806DFF8
	adds r4, r0, #0
	cmp r4, #0
	beq _080767E8
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _080767D8 @ =0x081CBF74
	bl sub_0803AFB8
	adds r2, r0, #0
	mov r1, r8
	ldrb r3, [r1]
	adds r0, r4, #0
	ldr r1, _080767DC @ =0x0821631C
	bl sub_0803B924
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x36
	strb r0, [r1]
	mov r3, r8
	ldrb r1, [r3]
	adds r0, r4, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r3, #3
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _080767E0 @ =sub_080771C8
	str r0, [r4, #4]
	str r5, [r4, #0x14]
	str r7, [r4, #0x18]
	strb r6, [r4, #0x1c]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r7, r4, #0
	subs r6, #1
	cmp r6, #0
	bge _0807673A
	ldr r0, _080767E4 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _080767F0
	movs r0, #4
	strb r0, [r5, #0xa]
	movs r0, #0x80
	lsls r0, r0, #3
	mov r1, sb
	strh r0, [r1]
	b _0807680E
	.align 2, 0
_080767D4: .4byte sub_08077458
_080767D8: .4byte 0x081CBF74
_080767DC: .4byte 0x0821631C
_080767E0: .4byte sub_080771C8
_080767E4: .4byte gEwramData
_080767E8:
	adds r0, r5, #0
	bl EntityDelete
	b _0807680E
_080767F0:
	ldr r2, _0807681C @ =sub_08077C8C
	ldr r3, _08076820 @ =sub_080773AC
	adds r0, r5, #0
	movs r1, #8
	bl sub_0804277C
	adds r0, r5, #0
	mov r1, sp
	bl sub_080428B4
	adds r0, r5, #0
	mov r1, sp
	bl sub_08042848
	strb r4, [r5, #0xa]
_0807680E:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807681C: .4byte sub_08077C8C
_08076820: .4byte sub_080773AC

	thumb_func_start sub_08076824
sub_08076824: @ 0x08076824
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r0, _08076850 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08076854 @ =0x0000A094
	adds r7, r0, r1
	ldr r6, [r5, #0x20]
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _0807683E
	b _08076B2A
_0807683E:
	adds r1, r5, #0
	adds r1, #0x4e
	ldrh r0, [r1]
	movs r3, #0
	ldrsh r2, [r1, r3]
	cmp r2, #0x47
	bgt _08076858
	adds r0, #1
	b _0807685E
	.align 2, 0
_08076850: .4byte gEwramData
_08076854: .4byte 0x0000A094
_08076858:
	cmp r2, #0x48
	ble _08076860
	subs r0, #1
_0807685E:
	strh r0, [r1]
_08076860:
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r2, [r5, #0x1e]
	adds r0, r0, r2
	strh r0, [r5, #0x1e]
	adds r1, r5, #0
	adds r1, #0x4c
	ldrh r2, [r1]
	adds r4, r2, #0
	ldr r0, _08076884 @ =0x000003FF
	adds r3, r1, #0
	cmp r4, r0
	bhi _08076888
	adds r0, r2, #0
	adds r0, #0x10
	b _08076894
	.align 2, 0
_08076884: .4byte 0x000003FF
_08076888:
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	bls _08076896
	adds r0, r2, #0
	subs r0, #0x10
_08076894:
	strh r0, [r3]
_08076896:
	adds r1, r5, #0
	adds r1, #0x48
	ldrh r0, [r3]
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	movs r3, #0x63
	movs r0, #0x58
	adds r0, r0, r5
	mov r8, r0
	adds r4, r5, #0
	adds r4, #0x4a
	adds r2, r6, #0
	adds r2, #0xc4
_080768B2:
	ldrh r0, [r2]
	strh r0, [r2, #2]
	subs r2, #2
	subs r3, #1
	cmp r3, #0
	bgt _080768B2
	ldrh r0, [r1]
	strh r0, [r6]
	ldrh r0, [r5, #0x1c]
	movs r2, #0x1c
	ldrsh r1, [r5, r2]
	cmp r1, #0x7f
	bgt _080768D0
	adds r0, #1
	b _080768D6
_080768D0:
	cmp r1, #0x80
	ble _080768D8
	subs r0, #1
_080768D6:
	strh r0, [r5, #0x1c]
_080768D8:
	mov r3, r8
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08076918
	ldrh r1, [r4]
	ldr r0, _08076904 @ =0x00007FFF
	cmp r1, r0
	bhi _080768F2
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
_080768F2:
	ldr r0, _08076908 @ =0x0000FFFF
	cmp r1, r0
	bhi _0807690C
	adds r1, #0x40
	adds r0, #1
	cmp r1, r0
	bls _0807693A
	b _08076912
	.align 2, 0
_08076904: .4byte 0x00007FFF
_08076908: .4byte 0x0000FFFF
_0807690C:
	subs r1, #0x40
	cmp r1, r0
	bhi _0807693A
_08076912:
	movs r1, #0x80
	lsls r1, r1, #9
	b _0807693A
_08076918:
	ldrh r1, [r4]
	ldr r0, _0807692C @ =0x00007FFF
	cmp r1, r0
	bhi _08076930
	adds r1, #0x40
	adds r0, #1
	cmp r1, r0
	bls _0807693A
	b _08076936
	.align 2, 0
_0807692C: .4byte 0x00007FFF
_08076930:
	subs r1, #0x40
	cmp r1, r0
	bhi _0807693A
_08076936:
	movs r1, #0x80
	lsls r1, r1, #8
_0807693A:
	strh r1, [r4]
	ldrb r0, [r5, #0xa]
	cmp r0, #4
	bne _08076944
	b _08076B2A
_08076944:
	ldrh r0, [r5, #0x10]
	movs r1, #0x10
	ldrsh r6, [r5, r1]
	cmp r6, #0
	beq _08076952
	subs r0, #1
	b _08076A0C
_08076952:
	bl RandomNumberGenerator
	movs r1, #0xff
	ands r1, r0
	cmp r1, #0x40
	bhi _08076A02
	movs r3, #0x14
	ldrsh r2, [r5, r3]
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	movs r3, #6
	ldrsh r1, [r7, r3]
	subs r0, r0, r1
	adds r3, r2, r0
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _080769C0
	adds r0, r3, #0
	adds r0, #0x28
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x64
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x54
	movs r3, #0xc8
	bl sub_0806CFFC
	cmp r0, #0
	beq _08076A0E
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r6, [r5, #0xb]
	strb r6, [r5, #0xd]
	adds r0, r5, #0
	bl sub_0806CDB8
	ldrh r1, [r7, #6]
	adds r0, r0, r1
	strh r0, [r5, #0x10]
	adds r0, r5, #0
	bl sub_0806CDFC
	ldrh r7, [r7, #0xa]
	adds r0, r0, r7
	subs r0, #0x14
	b _08076B28
_080769C0:
	adds r0, r3, #0
	subs r0, #0x7c
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x64
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x54
	movs r3, #0xc8
	bl sub_0806CFFC
	cmp r0, #0
	beq _08076A0E
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r4, [r5, #0xb]
	strb r4, [r5, #0xd]
	adds r0, r5, #0
	bl sub_0806CDB8
	ldrh r2, [r7, #6]
	adds r0, r0, r2
	strh r0, [r5, #0x10]
	adds r0, r5, #0
	bl sub_0806CDFC
	ldrh r7, [r7, #0xa]
	adds r0, r0, r7
	subs r0, #0x14
	b _08076B28
_08076A02:
	bl RandomNumberGenerator
	movs r1, #0x1e
	bl __umodsi3
_08076A0C:
	strh r0, [r5, #0x10]
_08076A0E:
	ldrh r1, [r5, #0x12]
	movs r3, #0x12
	ldrsh r0, [r5, r3]
	cmp r0, #0
	beq _08076A1C
	subs r0, r1, #1
	b _08076B28
_08076A1C:
	bl RandomNumberGenerator
	movs r1, #0xff
	ands r1, r0
	cmp r1, #0x40
	bhi _08076B1C
	adds r2, r5, #0
	adds r2, #0x42
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	adds r6, r5, #0
	adds r6, #0x46
	mov r8, r2
	cmp r0, #0
	beq _08076A9A
	adds r0, r3, #0
	ldrh r1, [r6]
	subs r1, #0x64
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x50
	movs r3, #0xc8
	bl sub_0806CFFC
	cmp r0, #0
	beq _08076B2A
	movs r4, #1
	strb r4, [r5, #0xa]
	bl RandomNumberGenerator
	ands r0, r4
	cmp r0, #0
	beq _08076A6A
	movs r0, #0x14
	b _08076A6C
_08076A6A:
	movs r0, #0xa
_08076A6C:
	strb r0, [r5, #0xb]
	movs r0, #0
	strb r0, [r5, #0xd]
	adds r0, r5, #0
	bl sub_0806CDB8
	ldrh r1, [r7, #6]
	adds r0, r0, r1
	strh r0, [r5, #0x10]
	adds r0, r5, #0
	bl sub_0806CDFC
	ldrh r7, [r7, #0xa]
	adds r0, r0, r7
	subs r0, #0x14
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl sub_0806CDB8
	adds r4, r0, #0
	mov r2, r8
	ldrh r0, [r2]
	b _08076AF6
_08076A9A:
	adds r0, r3, #0
	subs r0, #0x50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	subs r1, #0x64
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x50
	movs r3, #0xc8
	bl sub_0806CFFC
	cmp r0, #0
	beq _08076B2A
	movs r4, #1
	strb r4, [r5, #0xa]
	bl RandomNumberGenerator
	ands r0, r4
	cmp r0, #0
	beq _08076AC8
	movs r0, #0x14
	b _08076ACA
_08076AC8:
	movs r0, #0xa
_08076ACA:
	strb r0, [r5, #0xb]
	movs r0, #0
	strb r0, [r5, #0xd]
	adds r0, r5, #0
	bl sub_0806CDB8
	ldrh r3, [r7, #6]
	adds r0, r0, r3
	strh r0, [r5, #0x10]
	adds r0, r5, #0
	bl sub_0806CDFC
	ldrh r7, [r7, #0xa]
	adds r0, r0, r7
	subs r0, #0x14
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl sub_0806CDB8
	adds r4, r0, #0
	mov r1, r8
	ldrh r0, [r1]
_08076AF6:
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	bl sub_0806CDFC
	adds r1, r0, #0
	ldrh r0, [r6]
	adds r0, #0x14
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl ArcTan2
	adds r1, r5, #0
	adds r1, #0x52
	strh r0, [r1]
	b _08076B2A
_08076B1C:
	bl RandomNumberGenerator
	movs r1, #0x1e
	bl __umodsi3
	adds r0, #0x1e
_08076B28:
	strh r0, [r5, #0x12]
_08076B2A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08076B34
sub_08076B34: @ 0x08076B34
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r7, [r5, #0x20]
	ldrb r0, [r5, #0xb]
	cmp r0, #0x16
	bls _08076B46
	b _08076EC8
_08076B46:
	lsls r0, r0, #2
	ldr r1, _08076B50 @ =_08076B54
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08076B50: .4byte _08076B54
_08076B54: @ jump table
	.4byte _08076BB0 @ case 0
	.4byte _08076CFE @ case 1
	.4byte _08076EC8 @ case 2
	.4byte _08076EC8 @ case 3
	.4byte _08076EC8 @ case 4
	.4byte _08076EC8 @ case 5
	.4byte _08076EC8 @ case 6
	.4byte _08076EC8 @ case 7
	.4byte _08076EC8 @ case 8
	.4byte _08076EC8 @ case 9
	.4byte _08076D28 @ case 10
	.4byte _08076DAE @ case 11
	.4byte _08076E48 @ case 12
	.4byte _08076EC8 @ case 13
	.4byte _08076EC8 @ case 14
	.4byte _08076EC8 @ case 15
	.4byte _08076EC8 @ case 16
	.4byte _08076EC8 @ case 17
	.4byte _08076EC8 @ case 18
	.4byte _08076EC8 @ case 19
	.4byte _08076D28 @ case 20
	.4byte _08076DAE @ case 21
	.4byte _08076E48 @ case 22
_08076BB0:
	movs r4, #0
	adds r1, r5, #0
	adds r1, #0x4e
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0x20
	ble _08076BC6
	subs r0, r2, #1
	strh r0, [r1]
	movs r4, #1
_08076BC6:
	adds r2, r5, #0
	adds r2, #0x4c
	ldrh r1, [r2]
	ldr r0, _08076C38 @ =0x000007FF
	cmp r1, r0
	bhi _08076BD8
	adds r0, #1
	strh r0, [r2]
	adds r4, #1
_08076BD8:
	adds r1, r5, #0
	adds r1, #0x48
	ldrh r0, [r2]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	movs r3, #0x63
	movs r0, #0x58
	adds r0, r0, r5
	mov r8, r0
	adds r6, r5, #0
	adds r6, #0x4a
	adds r2, r7, #0
	adds r2, #0xc4
_08076BF4:
	ldrh r0, [r2]
	strh r0, [r2, #2]
	subs r2, #2
	subs r3, #1
	cmp r3, #0
	bgt _08076BF4
	ldrh r0, [r1]
	strh r0, [r7]
	ldrh r1, [r5, #0x1c]
	movs r2, #0x1c
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble _08076C1E
	subs r0, r1, #2
	strh r0, [r5, #0x1c]
	adds r4, #1
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08076C1E
	movs r0, #0
	strh r0, [r5, #0x1c]
_08076C1E:
	ldrh r2, [r5, #0x1e]
	adds r1, r2, #0
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	bls _08076C40
	ldr r0, _08076C3C @ =0x0000FEAF
	cmp r1, r0
	bhi _08076C50
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r0, r2, r3
	b _08076C4C
	.align 2, 0
_08076C38: .4byte 0x000007FF
_08076C3C: .4byte 0x0000FEAF
_08076C40:
	ldr r0, _08076CB4 @ =0x00007EAF
	cmp r1, r0
	bhi _08076C50
	movs r7, #0xa0
	lsls r7, r7, #1
	adds r0, r2, r7
_08076C4C:
	strh r0, [r5, #0x1e]
	adds r4, #1
_08076C50:
	movs r1, #0x10
	ldrsh r0, [r5, r1]
	movs r2, #0x18
	ldrsh r1, [r5, r2]
	movs r3, #0x14
	ldrsh r2, [r5, r3]
	adds r1, r1, r2
	subs r0, r0, r1
	movs r7, #0x12
	ldrsh r1, [r5, r7]
	movs r3, #0x1a
	ldrsh r2, [r5, r3]
	movs r7, #0x16
	ldrsh r3, [r5, r7]
	adds r2, r2, r3
	subs r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08076CBC
	ldrh r1, [r6]
	ldr r3, _08076CB8 @ =0x00007FFF
	cmp r1, r3
	bhi _08076C9A
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
_08076C9A:
	cmp r2, r3
	bhi _08076CA4
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
_08076CA4:
	cmp r1, r2
	bhs _08076CCC
	adds r4, #1
	adds r1, #0x80
	cmp r1, r2
	bls _08076CDA
	b _08076CD8
	.align 2, 0
_08076CB4: .4byte 0x00007EAF
_08076CB8: .4byte 0x00007FFF
_08076CBC:
	ldrh r1, [r6]
	cmp r1, r2
	bhs _08076CCC
	adds r4, #1
	adds r1, #0x80
	cmp r1, r2
	bls _08076CDA
	b _08076CD8
_08076CCC:
	cmp r1, r2
	bls _08076CDA
	adds r4, #1
	subs r1, #0x80
	cmp r1, r2
	bhs _08076CDA
_08076CD8:
	adds r1, r2, #0
_08076CDA:
	strh r1, [r6]
	ldrb r0, [r5, #0xd]
	cmp r0, #0x27
	bhi _08076CE8
	adds r0, #1
	strb r0, [r5, #0xd]
	b _08076EC8
_08076CE8:
	cmp r4, #0
	beq _08076CEE
	b _08076EC8
_08076CEE:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	strb r4, [r5, #0xd]
	movs r0, #0x87
	bl sub_080D7910
	b _08076EC8
_08076CFE:
	adds r1, r5, #0
	adds r1, #0x4e
	ldrh r2, [r1]
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, #0x63
	bgt _08076D10
	adds r0, r2, #4
	strh r0, [r1]
_08076D10:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x27
	bhi _08076D20
	b _08076EC8
_08076D20:
	movs r0, #0
	strb r0, [r5, #0xa]
	strb r0, [r5, #0xb]
	b _08076E62
_08076D28:
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	bne _08076D3C
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x77
	bl sub_080D7910
_08076D3C:
	ldrb r1, [r5, #0xd]
	cmp r1, #0x1d
	bhi _08076D5E
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08076D78
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x44]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r3, [r0]
	adds r3, #1
	adds r0, r5, #0
	bl sub_080777F4
	b _08076D78
_08076D5E:
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08076D78
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x44]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r3, [r0]
	adds r3, #1
	adds r0, r5, #0
	bl sub_080777F4
_08076D78:
	ldrb r0, [r5, #0xb]
	cmp r0, #0x14
	bne _08076D92
	ldrb r1, [r5, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #2
	bne _08076D92
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x44]
	adds r0, r5, #0
	bl sub_080778D4
_08076D92:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bhi _08076DA2
	b _08076EC8
_08076DA2:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
	b _08076EC8
_08076DAE:
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	bne _08076DC2
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #2
	strb r0, [r1]
	movs r0, #0x77
	bl sub_080D7910
_08076DC2:
	ldrb r0, [r5, #0xd]
	adds r0, #1
	movs r6, #0
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08076EC8
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	strb r6, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x16
	bne _08076EC8
	adds r0, r5, #0
	bl sub_0806CDB8
	adds r4, r0, #0
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	bl sub_0806CDFC
	adds r1, r0, #0
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r0, #0x14
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r5, #0
	adds r0, #0x52
	ldrh r2, [r0]
	ldr r3, _08076E3C @ =0x00003FFF
	cmp r1, r3
	bhi _08076E26
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
_08076E26:
	cmp r2, r3
	bhi _08076E30
	movs r0, #0x80
	lsls r0, r0, #9
	adds r2, r2, r0
_08076E30:
	cmp r1, r2
	bls _08076E40
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #1
	b _08076EC6
	.align 2, 0
_08076E3C: .4byte 0x00003FFF
_08076E40:
	adds r0, r5, #0
	adds r0, #0x50
	strh r6, [r0]
	b _08076EC8
_08076E48:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _08076E7E
	movs r0, #0
	strb r0, [r5, #0xa]
	strb r0, [r5, #0xb]
	adds r1, r5, #0
	adds r1, #0x65
	strb r0, [r1]
_08076E62:
	bl RandomNumberGenerator
	movs r1, #0x3c
	bl __umodsi3
	adds r0, #0x3c
	strh r0, [r5, #0x10]
	bl RandomNumberGenerator
	movs r1, #0x3c
	bl __umodsi3
	strh r0, [r5, #0x12]
	b _08076EC8
_08076E7E:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bhi _08076EC8
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	bne _08076EC8
	adds r0, r5, #0
	bl sub_08077554
	movs r0, #0x77
	bl sub_080D7910
	ldrb r0, [r5, #0xb]
	cmp r0, #0x16
	bne _08076EC8
	adds r0, r5, #0
	adds r0, #0x50
	ldrh r0, [r0]
	cmp r0, #0
	beq _08076EBA
	adds r1, r5, #0
	adds r1, #0x52
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r0, r2, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	b _08076EC6
_08076EBA:
	adds r1, r5, #0
	adds r1, #0x52
	ldr r7, _08076ED4 @ =0xFFFFFD00
	adds r0, r7, #0
	ldrh r2, [r1]
	adds r0, r0, r2
_08076EC6:
	strh r0, [r1]
_08076EC8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08076ED4: .4byte 0xFFFFFD00

	thumb_func_start sub_08076ED8
sub_08076ED8: @ 0x08076ED8
	push {r4, lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x4e
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0x30
	ble _08076EEE
	subs r0, r3, #2
	strh r0, [r1]
_08076EEE:
	ldrh r1, [r2, #0x1c]
	movs r3, #0x1c
	ldrsh r0, [r2, r3]
	cmp r0, #0xff
	bgt _08076EFC
	adds r0, r1, #2
	strh r0, [r2, #0x1c]
_08076EFC:
	ldrb r0, [r2, #0xd]
	adds r1, r0, #1
	strb r1, [r2, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bls _08076F18
	movs r0, #0
	strb r0, [r2, #0xa]
	strb r0, [r2, #0xb]
	strb r0, [r2, #0xd]
	adds r1, r2, #0
	adds r1, #0x65
	strb r0, [r1]
_08076F18:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08076F20
sub_08076F20: @ 0x08076F20
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r6, [r4, #0x20]
	adds r1, r4, #0
	adds r1, #0x4e
	ldrh r0, [r1]
	movs r3, #0
	ldrsh r2, [r1, r3]
	cmp r2, #0x2f
	bgt _08076F38
	adds r0, #1
	b _08076F3E
_08076F38:
	cmp r2, #0x30
	ble _08076F40
	subs r0, #1
_08076F3E:
	strh r0, [r1]
_08076F40:
	ldrh r2, [r4, #0x1c]
	movs r0, #0x1c
	ldrsh r1, [r4, r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _08076F52
	subs r0, r2, #1
	b _08076F58
_08076F52:
	cmp r1, #0xff
	bgt _08076F5A
	adds r0, r2, #4
_08076F58:
	strh r0, [r4, #0x1c]
_08076F5A:
	adds r1, r4, #0
	adds r1, #0x4c
	ldrh r2, [r1]
	ldr r0, _08076F94 @ =0x000007FF
	cmp r2, r0
	bhi _08076F6C
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
_08076F6C:
	adds r0, r4, #0
	adds r0, #0x48
	ldrh r1, [r1]
	ldrh r2, [r0]
	adds r1, r1, r2
	strh r1, [r0]
	ldrh r3, [r4, #0x1e]
	adds r2, r3, #0
	movs r1, #0x80
	lsls r1, r1, #8
	adds r5, r0, #0
	cmp r2, r1
	bls _08076F9C
	ldr r0, _08076F98 @ =0x0000FEAF
	cmp r2, r0
	bhi _08076FAA
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r3, r1
	b _08076FA8
	.align 2, 0
_08076F94: .4byte 0x000007FF
_08076F98: .4byte 0x0000FEAF
_08076F9C:
	ldr r0, _08076FF4 @ =0x00007EAF
	cmp r2, r0
	bhi _08076FAA
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r3, r2
_08076FA8:
	strh r0, [r4, #0x1e]
_08076FAA:
	movs r3, #0x63
	adds r1, r4, #0
	adds r1, #0x58
	movs r0, #0x4a
	adds r0, r0, r4
	mov ip, r0
	adds r2, r6, #0
	adds r2, #0xc4
_08076FBA:
	ldrh r0, [r2]
	strh r0, [r2, #2]
	subs r2, #2
	subs r3, #1
	cmp r3, #0
	bgt _08076FBA
	ldrh r0, [r5]
	strh r0, [r6]
	ldrb r1, [r1]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08077010
	mov r2, ip
	ldrh r1, [r2]
	ldr r0, _08076FF8 @ =0x00007FFF
	cmp r1, r0
	bhi _08076FE4
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
_08076FE4:
	ldr r0, _08076FFC @ =0x0000FFFF
	cmp r1, r0
	bhi _08077000
	adds r1, #0x40
	adds r0, #1
	cmp r1, r0
	bls _0807700A
	b _08077006
	.align 2, 0
_08076FF4: .4byte 0x00007EAF
_08076FF8: .4byte 0x00007FFF
_08076FFC: .4byte 0x0000FFFF
_08077000:
	subs r1, #0x40
	cmp r1, r0
	bhi _0807700A
_08077006:
	movs r1, #0x80
	lsls r1, r1, #9
_0807700A:
	mov r3, ip
	strh r1, [r3]
	b _08077036
_08077010:
	mov r0, ip
	ldrh r1, [r0]
	ldr r0, _08077024 @ =0x00007FFF
	cmp r1, r0
	bhi _08077028
	adds r1, #0x40
	adds r0, #1
	cmp r1, r0
	bls _08077032
	b _0807702E
	.align 2, 0
_08077024: .4byte 0x00007FFF
_08077028:
	subs r1, #0x40
	cmp r1, r0
	bhi _08077032
_0807702E:
	movs r1, #0x80
	lsls r1, r1, #8
_08077032:
	mov r2, ip
	strh r1, [r2]
_08077036:
	ldrb r1, [r4, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08077052
	ldr r1, [r4, #0x40]
	ldr r2, [r4, #0x44]
	adds r0, r4, #0
	adds r0, #0x5c
	ldrb r3, [r0]
	subs r3, #1
	adds r0, r4, #0
	bl sub_080777F4
_08077052:
	ldrb r1, [r4, #0xd]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08077062
	movs r0, #0x6e
	bl sub_080D7910
_08077062:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0807707A
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0807707A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08077080
sub_08077080: @ 0x08077080
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _0807712C @ =gEwramData
	ldr r2, [r0]
	ldr r0, _08077130 @ =0x0000A094
	adds r2, r2, r0
	ldrh r0, [r5, #0x18]
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	ldrh r1, [r5, #0x14]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r0, [r5, #0x1a]
	ldrh r1, [r2, #0xa]
	subs r0, r0, r1
	ldrh r2, [r5, #0x16]
	adds r0, r0, r2
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x48
	ldrh r0, [r0]
	bl sub_080009E4
	movs r3, #0x1c
	ldrsh r1, [r5, r3]
	muls r0, r1, r0
	cmp r0, #0
	bge _080770CE
	ldr r1, _08077134 @ =0x00000FFF
	adds r0, r0, r1
_080770CE:
	asrs r0, r0, #0xc
	mov sl, r0
	ldrh r0, [r5, #0x1e]
	bl sub_080009E4
	cmp r0, #0
	bge _080770DE
	adds r0, #0xf
_080770DE:
	asrs r7, r0, #4
	adds r4, r5, #0
	adds r4, #0x4a
	movs r2, #0
	ldrsh r0, [r4, r2]
	add r0, sl
	adds r0, r0, r7
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r0, r3
	bl sub_080009E4
	adds r2, r5, #0
	adds r2, #0x4e
	movs r3, #0
	ldrsh r1, [r2, r3]
	muls r0, r1, r0
	adds r6, r4, #0
	mov sb, r2
	cmp r0, #0
	bge _08077138
	movs r1, #0
	ldrsh r0, [r6, r1]
	add r0, sl
	adds r0, r0, r7
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r0, r2
	bl sub_080009E4
	mov r3, sb
	movs r2, #0
	ldrsh r1, [r3, r2]
	muls r0, r1, r0
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _08077154
	.align 2, 0
_0807712C: .4byte gEwramData
_08077130: .4byte 0x0000A094
_08077134: .4byte 0x00000FFF
_08077138:
	movs r3, #0
	ldrsh r0, [r6, r3]
	add r0, sl
	adds r0, r0, r7
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	mov r2, sb
	movs r3, #0
	ldrsh r1, [r2, r3]
	muls r0, r1, r0
	asrs r0, r0, #0x10
_08077154:
	str r0, [sp]
	movs r1, #0
	ldrsh r0, [r6, r1]
	add r0, sl
	adds r0, r0, r7
	bl sub_080009E4
	mov r4, sb
	movs r2, #0
	ldrsh r1, [r4, r2]
	muls r0, r1, r0
	cmp r0, #0
	bge _08077188
	movs r3, #0
	ldrsh r0, [r6, r3]
	add r0, sl
	adds r0, r0, r7
	bl sub_080009E4
	movs r2, #0
	ldrsh r1, [r4, r2]
	muls r0, r1, r0
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r2, r0, #0
	b _0807719E
_08077188:
	movs r3, #0
	ldrsh r0, [r6, r3]
	add r0, sl
	adds r0, r0, r7
	bl sub_080009E4
	mov r2, sb
	movs r3, #0
	ldrsh r1, [r2, r3]
	muls r0, r1, r0
	asrs r2, r0, #0x10
_0807719E:
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r1]
	ldr r3, [sp]
	adds r0, r0, r3
	strh r0, [r1]
	adds r1, #4
	ldrh r0, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_0803B9D0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080771C8
sub_080771C8: @ 0x080771C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r6, [r7, #0x14]
	ldr r0, _080772CC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080772D0 @ =0x0000A094
	adds r2, r0, r1
	cmp r6, #0
	bne _080771E6
	b _08077394
_080771E6:
	ldr r0, [r6]
	cmp r0, #0
	bne _080771EE
	b _08077394
_080771EE:
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0xb
	beq _080771FA
	b _08077394
_080771FA:
	ldr r3, [r6, #0x20]
	ldrb r0, [r6, #0xa]
	movs r1, #8
	mov r8, r1
	cmp r0, #2
	bne _0807720A
	movs r0, #6
	mov r8, r0
_0807720A:
	ldrh r0, [r6, #0x18]
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	ldrh r1, [r6, #0x14]
	adds r0, r0, r1
	adds r5, r7, #0
	adds r5, #0x42
	strh r0, [r5]
	ldrh r0, [r6, #0x1a]
	ldrh r1, [r2, #0xa]
	subs r0, r0, r1
	ldrh r2, [r6, #0x16]
	adds r0, r0, r2
	adds r4, r7, #0
	adds r4, #0x46
	strh r0, [r4]
	movs r0, #0x1c
	ldrsb r0, [r7, r0]
	adds r0, #1
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl sub_080009E4
	movs r2, #0x1c
	ldrsh r1, [r6, r2]
	muls r0, r1, r0
	str r5, [sp, #4]
	str r4, [sp, #8]
	cmp r0, #0
	bge _08077254
	ldr r1, _080772D4 @ =0x00000FFF
	adds r0, r0, r1
_08077254:
	asrs r0, r0, #0xc
	mov sb, r0
	ldrh r0, [r6, #0x1e]
	bl sub_080009E4
	cmp r0, #0
	bge _08077264
	adds r0, #0xf
_08077264:
	asrs r0, r0, #4
	mov r8, r0
	adds r5, r6, #0
	adds r5, #0x4a
	movs r2, #0
	ldrsh r0, [r5, r2]
	add r0, sb
	add r0, r8
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	adds r4, r6, #0
	adds r4, #0x4e
	movs r2, #0
	ldrsh r1, [r4, r2]
	muls r1, r0, r1
	movs r0, #0x1c
	ldrsb r0, [r7, r0]
	movs r6, #9
	subs r0, r6, r0
	muls r0, r1, r0
	movs r1, #0xa
	bl __divsi3
	cmp r0, #0
	bge _080772D8
	movs r1, #0
	ldrsh r0, [r5, r1]
	add r0, sb
	add r0, r8
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r0, r2
	bl sub_080009E4
	movs r2, #0
	ldrsh r1, [r4, r2]
	muls r1, r0, r1
	movs r0, #0x1c
	ldrsb r0, [r7, r0]
	subs r0, r6, r0
	muls r0, r1, r0
	movs r1, #0xa
	bl __divsi3
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _08077300
	.align 2, 0
_080772CC: .4byte gEwramData
_080772D0: .4byte 0x0000A094
_080772D4: .4byte 0x00000FFF
_080772D8:
	movs r1, #0
	ldrsh r0, [r5, r1]
	add r0, sb
	add r0, r8
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r0, r2
	bl sub_080009E4
	movs r2, #0
	ldrsh r1, [r4, r2]
	muls r1, r0, r1
	movs r0, #0x1c
	ldrsb r0, [r7, r0]
	subs r0, r6, r0
	muls r0, r1, r0
	movs r1, #0xa
	bl __divsi3
	asrs r0, r0, #0x10
_08077300:
	str r0, [sp]
	movs r1, #0
	ldrsh r0, [r5, r1]
	add r0, sb
	add r0, r8
	bl sub_080009E4
	adds r6, r4, #0
	movs r2, #0
	ldrsh r1, [r6, r2]
	muls r1, r0, r1
	movs r0, #0x1c
	ldrsb r0, [r7, r0]
	movs r2, #9
	subs r0, r2, r0
	muls r0, r1, r0
	movs r1, #0xa
	bl __divsi3
	cmp r0, #0
	bge _08077354
	movs r1, #0
	ldrsh r0, [r5, r1]
	add r0, sb
	add r0, r8
	bl sub_080009E4
	movs r2, #0
	ldrsh r1, [r6, r2]
	muls r1, r0, r1
	movs r0, #0x1c
	ldrsb r0, [r7, r0]
	movs r2, #9
	subs r0, r2, r0
	muls r0, r1, r0
	movs r1, #0xa
	bl __divsi3
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r1, r0, #0
	b _08077378
_08077354:
	movs r1, #0
	ldrsh r0, [r5, r1]
	add r0, sb
	add r0, r8
	bl sub_080009E4
	movs r2, #0
	ldrsh r1, [r4, r2]
	muls r1, r0, r1
	movs r0, #0x1c
	ldrsb r0, [r7, r0]
	movs r2, #9
	subs r0, r2, r0
	muls r0, r1, r0
	movs r1, #0xa
	bl __divsi3
	asrs r1, r0, #0x10
_08077378:
	ldr r2, [sp, #4]
	ldrh r0, [r2]
	ldr r2, [sp]
	adds r0, r0, r2
	ldr r2, [sp, #4]
	strh r0, [r2]
	ldr r2, [sp, #8]
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	adds r0, r7, #0
	bl sub_0803B9D0
	b _0807739A
_08077394:
	adds r0, r7, #0
	bl EntityDelete
_0807739A:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080773AC
sub_080773AC: @ 0x080773AC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldrh r0, [r5, #4]
	bl sub_08021530
	adds r3, r0, #0
	adds r7, r4, #0
	adds r7, #0x70
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
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
	movs r1, #0x34
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bgt _08077430
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
	movs r0, #0x78
	strb r0, [r6, #0xd]
	movs r0, #2
	strb r0, [r6, #0xa]
	strb r4, [r6, #0xb]
	adds r1, r6, #0
	adds r1, #0x65
	movs r0, #1
	strb r0, [r1]
	b _08077450
_08077430:
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	bne _08077450
	ldrb r0, [r7]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08077450
	movs r0, #3
	strb r0, [r6, #0xa]
	adds r1, r6, #0
	adds r1, #0x65
	movs r0, #1
	strb r0, [r1]
	strb r4, [r6, #0xd]
_08077450:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08077458
sub_08077458: @ 0x08077458
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x14]
	cmp r5, #0
	beq _08077548
	ldr r0, [r5]
	cmp r0, #0
	beq _08077548
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0xb
	bne _08077548
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r6, r4, #0
	adds r6, #0x58
	movs r1, #0x20
	ands r1, r0
	ldrb r2, [r6]
	movs r7, #0x21
	rsbs r7, r7, #0
	adds r0, r7, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6]
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x5a
	movs r1, #0x78
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrh r1, [r5, #0xa]
	movs r0, #0x81
	lsls r0, r0, #1
	cmp r1, r0
	bne _08077500
	ldrb r0, [r6]
	adds r1, r7, #0
	ands r1, r0
	strb r1, [r6]
	movs r0, #0x1c
	ldrsb r0, [r4, r0]
	cmp r0, #5
	bgt _080774DE
	ldrb r1, [r5, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080774DE
	ldr r1, [r4, #0x40]
	ldr r2, [r4, #0x44]
	adds r0, r4, #0
	adds r0, #0x5c
	ldrb r3, [r0]
	subs r3, #1
	adds r0, r4, #0
	bl sub_080777F4
_080774DE:
	ldrb r1, [r5, #0xd]
	lsrs r1, r1, #2
	movs r0, #0x1c
	ldrsb r0, [r4, r0]
	adds r0, #1
	cmp r1, r0
	bne _08077500
	ldr r1, [r4, #0x40]
	ldr r2, [r4, #0x44]
	adds r0, r4, #0
	movs r3, #3
	bl sub_08077A88
	adds r0, r4, #0
	bl EntityDelete
	b _0807754E
_08077500:
	ldrh r0, [r5, #0xa]
	cmp r0, #2
	bne _08077536
	movs r0, #0x1c
	ldrsb r0, [r4, r0]
	cmp r0, #5
	bgt _08077536
	ldrb r2, [r5, #0xd]
	adds r1, r0, #0
	movs r0, #0xa
	subs r0, r0, r1
	lsls r0, r0, #3
	cmp r2, r0
	bge _08077536
	movs r0, #7
	ands r2, r0
	cmp r2, #0
	bne _08077536
	ldr r1, [r4, #0x40]
	ldr r2, [r4, #0x44]
	adds r0, r4, #0
	adds r0, #0x5c
	ldrb r3, [r0]
	subs r3, #1
	adds r0, r4, #0
	bl sub_080777F4
_08077536:
	adds r0, r5, #0
	bl sub_0806ADBC
	cmp r0, #0
	bne _0807754E
	adds r0, r4, #0
	bl sub_0803F17C
	b _0807754E
_08077548:
	adds r0, r4, #0
	bl EntityDelete
_0807754E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08077554
sub_08077554: @ 0x08077554
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r2, _08077640 @ =sub_08077644
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r7, r0, #0
	cmp r7, #0
	beq _08077636
	mov r0, r8
	adds r1, r7, #0
	bl sub_08077B3C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08077580
	adds r0, r7, #0
	bl EntityDelete
_08077580:
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_080777B0
	mov r0, r8
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r7, #0
	adds r1, #0x5c
	strb r0, [r1]
	mov r0, r8
	str r0, [r7, #0x10]
	mov r4, r8
	adds r4, #0x58
	ldrb r0, [r4]
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
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	mov r0, r8
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	mov r0, r8
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x46
	strh r0, [r1]
	mov r4, r8
	adds r4, #0x52
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	adds r5, r0, #0
	movs r1, #0
	ldrsh r0, [r4, r1]
	bl sub_080009E4
	adds r6, r0, #0
	movs r4, #0x80
	lsls r4, r4, #0xb
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0803E86C
	str r0, [r7, #0x48]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0803E86C
	str r0, [r7, #0x4c]
	mov r0, r8
	adds r0, #0x37
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x37
	strb r0, [r1]
	mov r0, r8
	adds r0, #0x2c
	ldrb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x2c
	strb r1, [r0]
	mov r0, r8
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x3c
	strb r1, [r0]
_08077636:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08077640: .4byte sub_08077644

	thumb_func_start sub_08077644
sub_08077644: @ 0x08077644
	push {r4, r5, r6, lr}
	sub sp, #0x1c
	adds r6, r0, #0
	ldr r1, _08077694 @ =0x0A0AFBFB
	str r1, [sp, #0x10]
	ldr r0, _08077698 @ =0x1010F8F8
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
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
	ldrb r0, [r6, #0xa]
	cmp r0, #4
	bls _08077688
	b _080777A8
_08077688:
	lsls r0, r0, #2
	ldr r1, _0807769C @ =_080776A0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08077694: .4byte 0x0A0AFBFB
_08077698: .4byte 0x1010F8F8
_0807769C: .4byte _080776A0
_080776A0: @ jump table
	.4byte _080776B4 @ case 0
	.4byte _080776E8 @ case 1
	.4byte _0807771C @ case 2
	.4byte _08077768 @ case 3
	.4byte _08077794 @ case 4
_080776B4:
	adds r0, r6, #0
	bl sub_0806D3AC
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _0807778A
	ldrb r0, [r6, #0xa]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xd]
	adds r1, r6, #0
	adds r1, #0x65
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	subs r1, #9
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	add r4, sp, #0x10
	b _08077756
_080776E8:
	adds r0, r6, #0
	bl sub_0806D3AC
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _0807778A
	ldrb r0, [r6, #0xa]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xd]
	adds r1, r6, #0
	adds r1, #0x5c
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r1, #9
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	add r4, sp, #0x14
	b _08077756
_0807771C:
	adds r0, r6, #0
	movs r1, #6
	bl sub_0806D490
	adds r0, r6, #0
	movs r1, #6
	bl sub_0806D4A8
	adds r0, r6, #0
	bl sub_0806D3AC
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xd
	bls _0807778A
	ldrb r0, [r6, #0xa]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xd]
	adds r1, r6, #0
	adds r1, #0x65
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	add r4, sp, #0x18
_08077756:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080428B4
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08042848
	b _0807778A
_08077768:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _0807778A
	ldrb r0, [r6, #0xa]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xd]
	adds r1, r6, #0
	adds r1, #0x65
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0807778A:
	mov r0, sp
	adds r1, r6, #0
	bl sub_080421AC
	b _080777A8
_08077794:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _080777A8
	adds r0, r6, #0
	bl EntityDelete
_080777A8:
	add sp, #0x1c
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080777B0
sub_080777B0: @ 0x080777B0
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _080777EC @ =0x0808FCFC
	str r0, [sp]
	ldr r2, _080777F0 @ =sub_08077B80
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
_080777EC: .4byte 0x0808FCFC
_080777F0: .4byte sub_08077B80

	thumb_func_start sub_080777F4
sub_080777F4: @ 0x080777F4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r2, _08077878 @ =sub_08077BB0
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _080778C0
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
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
	strb r7, [r0]
	ldr r0, _0807787C @ =0x081CBF74
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08077880 @ =0x0821631C
	mov r0, r8
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #9
	strb r0, [r1]
	mov r0, r8
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08077884
	bl RandomNumberGenerator
	adds r5, r4, #0
	adds r5, #0x42
	movs r1, #6
	bl __umodsi3
	ldrh r1, [r5]
	adds r1, r1, r0
	b _08077896
	.align 2, 0
_08077878: .4byte sub_08077BB0
_0807787C: .4byte 0x081CBF74
_08077880: .4byte 0x0821631C
_08077884:
	bl RandomNumberGenerator
	adds r5, r4, #0
	adds r5, #0x42
	movs r1, #6
	bl __umodsi3
	ldrh r1, [r5]
	subs r1, r1, r0
_08077896:
	strh r1, [r5]
	bl RandomNumberGenerator
	adds r5, r4, #0
	adds r5, #0x46
	movs r1, #6
	bl __umodsi3
	ldr r1, _080778CC @ =0x0000FFFD
	adds r0, r0, r1
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080778D0 @ =sub_0803B9D0
	str r0, [r4, #4]
_080778C0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080778CC: .4byte 0x0000FFFD
_080778D0: .4byte sub_0803B9D0

	thumb_func_start sub_080778D4
sub_080778D4: @ 0x080778D4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r2, _08077968 @ =sub_080779E4
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	ldr r0, _0807796C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08077970 @ =0x0000A094
	adds r1, r1, r0
	mov r8, r1
	cmp r4, #0
	beq _080779D0
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
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
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _08077974 @ =0x081CBF74
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08077978 @ =0x0821631C
	adds r0, r7, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #9
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807797C
	bl RandomNumberGenerator
	adds r2, r4, #0
	adds r2, #0x42
	movs r1, #7
	ands r1, r0
	adds r1, #0x10
	ldrh r0, [r2]
	adds r0, r0, r1
	b _0807798E
	.align 2, 0
_08077968: .4byte sub_080779E4
_0807796C: .4byte gEwramData
_08077970: .4byte 0x0000A094
_08077974: .4byte 0x081CBF74
_08077978: .4byte 0x0821631C
_0807797C:
	bl RandomNumberGenerator
	adds r2, r4, #0
	adds r2, #0x42
	movs r1, #7
	ands r1, r0
	adds r1, #0x10
	ldrh r0, [r2]
	subs r0, r0, r1
_0807798E:
	strh r0, [r2]
	bl RandomNumberGenerator
	adds r2, r4, #0
	adds r2, #0x46
	movs r1, #0x1f
	ands r1, r0
	ldr r0, _080779DC @ =0x0000FFF0
	adds r1, r1, r0
	ldrh r0, [r2]
	adds r1, r1, r0
	strh r1, [r2]
	adds r1, r7, #0
	adds r1, #0x42
	mov r2, r8
	ldrh r0, [r2, #6]
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r4, #0x14]
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r0, [r2, #0xa]
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r4, #0x16]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080779E0 @ =sub_0803B9D0
	str r0, [r4, #4]
_080779D0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080779DC: .4byte 0x0000FFF0
_080779E0: .4byte sub_0803B9D0

	thumb_func_start sub_080779E4
sub_080779E4: @ 0x080779E4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r0, _08077A80 @ =gEwramData
	ldr r0, [r0]
	mov r8, r0
	ldr r0, _08077A84 @ =0x0000A094
	add r8, r0
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
	movs r1, #0x14
	ldrsh r0, [r7, r1]
	lsls r0, r0, #0x10
	ldr r6, [r7, #0x40]
	mov r2, r8
	ldr r1, [r2, #4]
	adds r1, r6, r1
	subs r0, r0, r1
	ldrb r1, [r7, #0xd]
	movs r5, #8
	subs r5, r5, r1
	adds r1, r5, #0
	bl __divsi3
	mov sb, r0
	movs r1, #0x16
	ldrsh r0, [r7, r1]
	lsls r0, r0, #0x10
	ldr r4, [r7, #0x44]
	mov r2, r8
	ldr r1, [r2, #8]
	adds r1, r4, r1
	subs r0, r0, r1
	adds r1, r5, #0
	bl __divsi3
	add r6, sb
	str r6, [r7, #0x40]
	adds r4, r4, r0
	str r4, [r7, #0x44]
	ldrb r0, [r7, #0xd]
	adds r1, r0, #1
	strb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bls _08077A74
	adds r0, r7, #0
	bl EntityDelete
_08077A74:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08077A80: .4byte gEwramData
_08077A84: .4byte 0x0000A094

	thumb_func_start sub_08077A88
sub_08077A88: @ 0x08077A88
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _08077B24 @ =sub_08077BFC
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	beq _08077B1A
	str r4, [r5, #0x40]
	str r7, [r5, #0x44]
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
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x5c
	movs r4, #0
	strb r1, [r0]
	ldr r0, _08077B28 @ =0x081CBF74
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08077B2C @ =0x0821631C
	adds r0, r6, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r5, #0
	bl sub_0803B924
	adds r0, r5, #0
	adds r0, #0x65
	mov r1, r8
	strb r1, [r0]
	bl RandomNumberGenerator
	ldr r1, _08077B30 @ =0x00007FFF
	ands r1, r0
	ldr r0, _08077B34 @ =0xFFFFC000
	adds r1, r1, r0
	str r1, [r5, #0x48]
	str r4, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r5, #0x54]
	movs r0, #0x2c
	strb r0, [r5, #0xd]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08077B38 @ =sub_0803B9D0
	str r0, [r5, #4]
_08077B1A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08077B24: .4byte sub_08077BFC
_08077B28: .4byte 0x081CBF74
_08077B2C: .4byte 0x0821631C
_08077B30: .4byte 0x00007FFF
_08077B34: .4byte 0xFFFFC000
_08077B38: .4byte sub_0803B9D0

	thumb_func_start sub_08077B3C
sub_08077B3C: @ 0x08077B3C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _08077B6C @ =0x081CBF74
	bl sub_0803AFB8
	adds r2, r0, #0
	cmp r2, #0
	blt _08077B78
	ldr r1, _08077B70 @ =0x0821631C
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #5
	strb r0, [r1]
	ldr r0, _08077B74 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _08077B7A
	.align 2, 0
_08077B6C: .4byte 0x081CBF74
_08077B70: .4byte 0x0821631C
_08077B74: .4byte sub_0803B9D0
_08077B78:
	movs r0, #0
_08077B7A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08077B80
sub_08077B80: @ 0x08077B80
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

	thumb_func_start sub_08077BB0
sub_08077BB0: @ 0x08077BB0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
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
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bls _08077BF4
	adds r0, r6, #0
	bl EntityDelete
_08077BF4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08077BFC
sub_08077BFC: @ 0x08077BFC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xe0
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
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08077C38
	adds r0, r4, #0
	bl EntityDelete
_08077C38:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08077C40
sub_08077C40: @ 0x08077C40
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08077C74 @ =0x081CBF74
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _08077C84
	ldr r0, _08077C78 @ =0x0820A580
	movs r1, #0
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _08077C7C @ =0x0821631C
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _08077C80 @ =sub_08077080
	str r0, [r4, #4]
	movs r0, #1
	b _08077C86
	.align 2, 0
_08077C74: .4byte 0x081CBF74
_08077C78: .4byte 0x0820A580
_08077C7C: .4byte 0x0821631C
_08077C80: .4byte sub_08077080
_08077C84:
	movs r0, #0
_08077C86:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08077C8C
sub_08077C8C: @ 0x08077C8C
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

	thumb_func_start sub_08077CBC
sub_08077CBC: @ 0x08077CBC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r6, r0, #0
	ldrb r0, [r6, #0xa]
	cmp r0, #2
	beq _08077CE6
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r3, #0x88
	lsls r3, r3, #1
	movs r0, #0xb0
	str r0, [sp]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _08077CE6
	adds r0, r6, #0
	bl sub_08021924
_08077CE6:
	adds r0, r6, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _08077D00
	ldrb r0, [r6, #0xa]
	cmp r0, #2
	beq _08077DEC
	add r0, sp, #4
	adds r1, r6, #0
	bl sub_080421AC
	b _08077DEC
_08077D00:
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	beq _08077DE6
	cmp r0, #1
	bgt _08077D10
	cmp r0, #0
	beq _08077D1A
	b _08077DE6
_08077D10:
	cmp r0, #2
	beq _08077D22
	cmp r0, #3
	beq _08077DDE
	b _08077DE6
_08077D1A:
	adds r0, r6, #0
	bl sub_08077FC0
	b _08077DE6
_08077D22:
	ldrb r0, [r6, #0xb]
	adds r1, r0, #0
	cmp r1, #0
	bne _08077DBC
	adds r0, #1
	strb r0, [r6, #0xb]
	adds r7, r6, #0
	adds r7, #0x58
	ldrb r1, [r7]
	movs r0, #0x40
	ands r0, r1
	movs r5, #0x80
	lsls r5, r5, #0xc
	cmp r0, #0
	beq _08077D42
	ldr r5, _08077DB8 @ =0xFFF80000
_08077D42:
	ldr r1, [r6, #0x40]
	adds r1, r1, r5
	ldr r2, [r6, #0x44]
	ldr r4, _08077DB8 @ =0xFFF80000
	adds r2, r2, r4
	adds r0, r6, #0
	movs r3, #0x12
	bl sub_08078588
	ldr r1, [r6, #0x40]
	adds r1, r1, r5
	ldr r2, [r6, #0x44]
	adds r2, r2, r4
	adds r0, r6, #0
	movs r3, #0xb
	bl sub_08078588
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x44]
	adds r5, r6, #0
	adds r5, #0x5c
	ldrb r2, [r5]
	subs r2, #1
	bl sub_0806D578
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x44]
	movs r4, #0x80
	lsls r4, r4, #0xc
	ldrb r2, [r5]
	subs r2, #1
	str r2, [sp]
	adds r2, r4, #0
	adds r3, r4, #0
	bl sub_0806D5C0
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x44]
	ldrb r2, [r5]
	subs r2, #1
	str r2, [sp]
	adds r2, r4, #0
	adds r3, r4, #0
	bl sub_0806D5C0
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x44]
	ldrb r2, [r5]
	subs r2, #1
	str r2, [sp]
	adds r2, r4, #0
	adds r3, r4, #0
	bl sub_0806D5C0
	ldrb r0, [r7]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r7]
	b _08077DE6
	.align 2, 0
_08077DB8: .4byte 0xFFF80000
_08077DBC:
	cmp r1, #1
	bne _08077DD0
	adds r0, #1
	strb r0, [r6, #0xb]
	ldr r0, [r6, #0x20]
	cmp r0, #0
	beq _08077DE6
	bl sub_0806C250
	b _08077DE6
_08077DD0:
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	b _08077DE6
_08077DDE:
	adds r0, r6, #0
	bl sub_08078178
	b _08077DEC
_08077DE6:
	adds r0, r6, #0
	bl sub_0806E314
_08077DEC:
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08077DF4
sub_08077DF4: @ 0x08077DF4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r6, _08077EFC @ =gEwramData
	ldr r0, [r6]
	ldr r1, _08077F00 @ =0x0000A094
	adds r4, r0, r1
	ldr r0, _08077F04 @ =0x0C10F8F8
	str r0, [sp]
	adds r0, r5, #0
	bl sub_080786B0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08077E14
	b _08077F46
_08077E14:
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0xc
	strb r0, [r1]
	movs r0, #0x3c
	bl sub_0806C2CC
	str r0, [r5, #0x20]
	cmp r0, #0
	bne _08077E2A
	b _08077F46
_08077E2A:
	adds r0, r5, #0
	bl sub_0806B04C
	ldr r0, [r6]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08077E44
	adds r0, r5, #0
	bl sub_0806AF98
_08077E44:
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r4, #6]
	strh r0, [r5, #0x18]
	ldrh r0, [r4, #0xa]
	strh r0, [r5, #0x1a]
	movs r7, #0xe
_08077E5A:
	ldr r0, _08077F08 @ =sub_08078318
	bl sub_0806DFF8
	adds r4, r0, #0
	cmp r4, #0
	beq _08077F46
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _08077F0C @ =0x081CBF74
	bl sub_0803AFB8
	adds r2, r0, #0
	adds r6, r5, #0
	adds r6, #0x2c
	ldrb r3, [r6]
	adds r0, r4, #0
	ldr r1, _08077F10 @ =0x0821631C
	bl sub_0803B924
	ldr r0, _08077EFC @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08077EA0
	adds r0, r4, #0
	bl sub_08078544
_08077EA0:
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x36
	strb r0, [r1]
	ldrb r1, [r6]
	adds r0, r4, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r3, #3
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08077F14 @ =sub_0803B9D0
	str r0, [r4, #4]
	str r5, [r4, #0x14]
	strb r7, [r4, #0x1c]
	strb r7, [r4, #0xd]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
	ldrh r0, [r5, #0x18]
	strh r0, [r4, #0x18]
	ldrh r0, [r5, #0x1a]
	strh r0, [r4, #0x1a]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, _08077F18 @ =0xFFFC0000
	adds r0, r0, r1
	str r0, [r4, #0x44]
	cmp r7, #5
	bgt _08077F1C
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #3
	strb r0, [r1]
	b _08077F4E
	.align 2, 0
_08077EFC: .4byte gEwramData
_08077F00: .4byte 0x0000A094
_08077F04: .4byte 0x0C10F8F8
_08077F08: .4byte sub_08078318
_08077F0C: .4byte 0x081CBF74
_08077F10: .4byte 0x0821631C
_08077F14: .4byte sub_0803B9D0
_08077F18: .4byte 0xFFFC0000
_08077F1C:
	cmp r7, #9
	bgt _08077F2A
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0xf
	strb r0, [r1]
	b _08077F4E
_08077F2A:
	cmp r7, #0xd
	bgt _08077F38
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x10
	strb r0, [r1]
	b _08077F4E
_08077F38:
	cmp r7, #0xe
	bgt _08077F4E
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x11
	strb r0, [r1]
	b _08077F4E
_08077F46:
	adds r0, r5, #0
	bl EntityDelete
	b _08077FAE
_08077F4E:
	subs r7, #1
	cmp r7, #0
	bge _08077E5A
	ldr r0, _08077F70 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _08077F74
	movs r0, #3
	strb r0, [r5, #0xa]
	b _08077FAE
	.align 2, 0
_08077F70: .4byte gEwramData
_08077F74:
	ldr r2, _08077FB8 @ =sub_080786FC
	ldr r3, _08077FBC @ =sub_0807829C
	adds r0, r5, #0
	movs r1, #8
	bl sub_0804277C
	adds r0, r5, #0
	mov r1, sp
	bl sub_080428B4
	adds r0, r5, #0
	mov r1, sp
	bl sub_08042848
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
	strb r4, [r5, #0xa]
_08077FAE:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08077FB8: .4byte sub_080786FC
_08077FBC: .4byte sub_0807829C

	thumb_func_start sub_08077FC0
sub_08077FC0: @ 0x08077FC0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x20]
	mov sb, r0
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _08077FEA
	cmp r0, #1
	bgt _08077FE0
	cmp r0, #0
	beq _08077FE6
	b _08078168
_08077FE0:
	cmp r0, #2
	beq _0807809C
	b _08078168
_08077FE6:
	movs r0, #1
	strb r0, [r4, #0xb]
_08077FEA:
	ldrh r1, [r4, #0x14]
	movs r0, #1
	ands r0, r1
	adds r5, r4, #0
	adds r5, #0x58
	cmp r0, #0
	bne _08078010
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
_08078010:
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08078022
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_0806D188
	b _0807802C
_08078022:
	movs r2, #0x30
	ldrsh r1, [r4, r2]
	adds r0, r4, #0
	bl sub_0806D188
_0807802C:
	cmp r0, #1
	bne _0807803A
	ldrb r0, [r5]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r5]
	b _08078048
_0807803A:
	cmp r0, #2
	bne _0807804C
	ldrb r0, [r5]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r0
	strb r1, [r5]
_08078048:
	movs r0, #0
	strh r0, [r4, #0x14]
_0807804C:
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807805C
	movs r0, #0x80
	lsls r0, r0, #0xa
	b _0807805E
_0807805C:
	ldr r0, _08078094 @ =0xFFFE0000
_0807805E:
	str r0, [r4, #0x48]
	ldr r0, _08078098 @ =0xFFFC0000
	str r0, [r4, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xd]
	movs r2, #0x77
	mov r1, sb
	adds r1, #0xec
_0807807A:
	ldrb r0, [r1]
	strb r0, [r1, #2]
	ldrb r0, [r1, #1]
	strb r0, [r1, #3]
	subs r1, #2
	subs r2, #1
	cmp r2, #0
	bgt _0807807A
	movs r0, #0
	mov r1, sb
	strb r0, [r1]
	strb r0, [r1, #1]
	b _08078168
	.align 2, 0
_08078094: .4byte 0xFFFE0000
_08078098: .4byte 0xFFFC0000
_0807809C:
	adds r7, r4, #0
	adds r7, #0x42
	movs r2, #0
	ldrsh r6, [r7, r2]
	movs r0, #0x46
	adds r0, r0, r4
	mov r8, r0
	movs r1, #0
	ldrsh r5, [r0, r1]
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	subs r0, #0x13
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bhi _080780C6
	adds r0, r4, #0
	movs r1, #0x20
	bl sub_0806D490
_080780C6:
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _08078148 @ =0xFFF00000
	movs r3, #0xc0
	lsls r3, r3, #0xb
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08069A00
	mov ip, r0
	movs r2, #0
	ldrsh r0, [r7, r2]
	subs r6, r0, r6
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	subs r5, r0, r5
	movs r2, #0x77
	adds r3, r4, #0
	adds r3, #0x65
	mov r1, sb
	adds r1, #0xec
_080780F4:
	ldrb r0, [r1]
	strb r0, [r1, #2]
	ldrb r0, [r1, #1]
	strb r0, [r1, #3]
	subs r1, #2
	subs r2, #1
	cmp r2, #0
	bgt _080780F4
	mov r0, sb
	strb r6, [r0]
	strb r5, [r0, #1]
	movs r0, #4
	mov r1, ip
	ands r0, r1
	cmp r0, #0
	beq _0807814C
	ldrh r0, [r4, #0x14]
	adds r0, #1
	strh r0, [r4, #0x14]
	movs r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0xc
	strb r0, [r3]
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	adds r2, r4, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	movs r3, #1
	bl sub_0806D7F0
	adds r0, r4, #0
	movs r1, #6
	bl sub_0806D128
	cmp r0, #0
	bne _08078168
	movs r0, #0x7c
	bl sub_080D7910
	b _08078168
	.align 2, 0
_08078148: .4byte 0xFFF00000
_0807814C:
	ldr r0, [r4, #0x4c]
	ldr r2, _0807815C @ =0x0001FFFF
	adds r0, r0, r2
	ldr r1, _08078160 @ =0x0003FFFE
	cmp r0, r1
	bhi _08078164
	movs r0, #0xd
	b _08078166
	.align 2, 0
_0807815C: .4byte 0x0001FFFF
_08078160: .4byte 0x0003FFFE
_08078164:
	movs r0, #0xc
_08078166:
	strb r0, [r3]
_08078168:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08078178
sub_08078178: @ 0x08078178
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #0x20]
	mov sb, r0
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	beq _080781A0
	cmp r0, #1
	bgt _08078196
	cmp r0, #0
	beq _0807819C
	b _08078290
_08078196:
	cmp r0, #2
	beq _0807821C
	b _08078290
_0807819C:
	movs r0, #1
	strb r0, [r5, #0xb]
_080781A0:
	adds r0, r5, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r6, [r0, r1]
	cmp r6, #0x18
	bgt _080781BA
	adds r0, #0x16
	ldrb r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0]
	adds r2, r0, #0
	b _080781CC
_080781BA:
	adds r2, r5, #0
	adds r2, #0x58
	cmp r6, #0x77
	ble _080781CC
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_080781CC:
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080781DC
	movs r0, #0x80
	lsls r0, r0, #8
	b _080781DE
_080781DC:
	ldr r0, _08078214 @ =0xFFFF8000
_080781DE:
	str r0, [r5, #0x48]
	ldr r0, _08078218 @ =0xFFFE0000
	str r0, [r5, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r5, #0x54]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
	movs r2, #0x77
	mov r1, sb
	adds r1, #0xec
_080781FA:
	ldrb r0, [r1]
	strb r0, [r1, #2]
	ldrb r0, [r1, #1]
	strb r0, [r1, #3]
	subs r1, #2
	subs r2, #1
	cmp r2, #0
	bgt _080781FA
	movs r0, #0
	mov r2, sb
	strb r0, [r2]
	strb r0, [r2, #1]
	b _08078290
	.align 2, 0
_08078214: .4byte 0xFFFF8000
_08078218: .4byte 0xFFFE0000
_0807821C:
	movs r0, #0x42
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0
	ldrsh r6, [r0, r1]
	adds r4, r5, #0
	adds r4, #0x46
	movs r2, #0
	ldrsh r7, [r4, r2]
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r5, #0
	bl sub_0806D3D8
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	subs r6, r0, r6
	movs r1, #0
	ldrsh r0, [r4, r1]
	subs r7, r0, r7
	movs r2, #0x77
	adds r3, r5, #0
	adds r3, #0x65
	mov r1, sb
	adds r1, #0xec
_08078250:
	ldrb r0, [r1]
	strb r0, [r1, #2]
	ldrb r0, [r1, #1]
	strb r0, [r1, #3]
	subs r1, #2
	subs r2, #1
	cmp r2, #0
	bgt _08078250
	mov r2, sb
	strb r6, [r2]
	strb r7, [r2, #1]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0x46
	bgt _08078288
	ldr r0, [r5, #0x4c]
	ldr r2, _08078280 @ =0x0000FFFF
	adds r0, r0, r2
	ldr r1, _08078284 @ =0x0001FFFE
	cmp r0, r1
	bhi _0807828C
	movs r0, #0xd
	b _0807828E
	.align 2, 0
_08078280: .4byte 0x0000FFFF
_08078284: .4byte 0x0001FFFE
_08078288:
	movs r0, #1
	strb r0, [r5, #0xb]
_0807828C:
	movs r0, #0xc
_0807828E:
	strb r0, [r3]
_08078290:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0807829C
sub_0807829C: @ 0x0807829C
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
	bgt _08078312
	adds r0, r6, #0
	bl sub_080683BC
	movs r0, #0x6b
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
_08078312:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08078318
sub_08078318: @ 0x08078318
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r7, [r4, #0x14]
	ldr r0, _08078408 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0807840C @ =0x0000A094
	adds r5, r0, r1
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08078334
	b _080784E4
_08078334:
	cmp r7, #0
	bne _0807833A
	b _080784DC
_0807833A:
	ldr r0, [r7]
	cmp r0, #0
	bne _08078342
	b _080784DC
_08078342:
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x1a
	beq _0807834E
	b _080784DC
_0807834E:
	ldr r2, [r7, #0x20]
	mov r8, r2
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r6, r4, #0
	adds r6, #0x58
	movs r1, #0x20
	ands r1, r0
	ldrb r2, [r6]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6]
	adds r0, r7, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x5a
	movs r1, #0x78
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	adds r0, r7, #0
	bl sub_0806ADBC
	cmp r0, #0
	bne _08078444
	movs r0, #0x1c
	ldrsb r0, [r4, r0]
	lsls r0, r0, #3
	add r0, r8
	movs r2, #8
	ldrsb r2, [r0, r2]
	ldrh r0, [r4, #0x18]
	ldrh r1, [r5, #6]
	subs r0, r0, r1
	adds r2, r2, r0
	movs r0, #0x4a
	adds r0, r0, r4
	mov ip, r0
	strh r2, [r0]
	movs r0, #0x1c
	ldrsb r0, [r4, r0]
	lsls r0, r0, #3
	add r0, r8
	movs r2, #9
	ldrsb r2, [r0, r2]
	ldrh r0, [r4, #0x1a]
	ldrh r1, [r5, #0xa]
	subs r0, r0, r1
	adds r2, r2, r0
	adds r3, r4, #0
	adds r3, #0x4e
	strh r2, [r3]
	adds r1, r4, #0
	adds r1, #0x42
	mov r2, ip
	ldrh r0, [r2]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	adds r1, #4
	ldrh r0, [r3]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0x18]
	ldrh r0, [r5, #0xa]
	strh r0, [r4, #0x1a]
	movs r0, #0x1c
	ldrsb r0, [r4, r0]
	lsls r0, r0, #3
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08078410
	ldrb r0, [r6]
	movs r1, #0x40
	orrs r0, r1
	b _0807841C
	.align 2, 0
_08078408: .4byte gEwramData
_0807840C: .4byte 0x0000A094
_08078410:
	cmp r0, #0
	bge _0807841E
	ldrb r1, [r6]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
_0807841C:
	strb r0, [r6]
_0807841E:
	movs r0, #0x1c
	ldrsb r0, [r4, r0]
	cmp r0, #5
	bgt _0807846A
	ldrb r1, [r4, #0xd]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0807843A
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #4
	strb r0, [r1]
	b _0807846A
_0807843A:
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #3
	strb r0, [r1]
	b _0807846A
_08078444:
	adds r2, r4, #0
	adds r2, #0x42
	ldrh r0, [r4, #0x18]
	ldrh r1, [r5, #6]
	subs r0, r0, r1
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	adds r2, #4
	ldrh r0, [r4, #0x1a]
	ldrh r1, [r5, #0xa]
	subs r0, r0, r1
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0x18]
	ldrh r0, [r5, #0xa]
	strh r0, [r4, #0x1a]
_0807846A:
	ldrb r1, [r4, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0807848C
	ldr r0, _080784D8 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0807848C
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
_0807848C:
	ldrb r0, [r7, #0xa]
	cmp r0, #2
	bne _08078538
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xb]
	str r1, [r4, #0x50]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	bl RandomNumberGenerator
	movs r1, #3
	ands r1, r0
	adds r1, #0x3c
	strb r1, [r4, #0xd]
	movs r0, #0x1c
	ldrsb r0, [r4, r0]
	lsls r0, r0, #3
	add r0, r8
	ldrb r0, [r0, #8]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r4, #0
	adds r1, #0x4a
	strh r0, [r1]
	movs r0, #0x1c
	ldrsb r0, [r4, r0]
	lsls r0, r0, #3
	add r0, r8
	movs r1, #9
	ldrsb r1, [r0, r1]
	adds r0, r4, #0
	adds r0, #0x4e
	strh r1, [r0]
	b _08078538
	.align 2, 0
_080784D8: .4byte gEwramData
_080784DC:
	adds r0, r4, #0
	bl EntityDelete
	b _08078538
_080784E4:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080784FA
	adds r0, #1
	strb r0, [r4, #0xb]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_080784FA:
	movs r1, #0xe0
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
	bgt _08078538
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_08078538:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08078544
sub_08078544: @ 0x08078544
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08078580 @ =0x0808FCFC
	str r0, [sp]
	ldr r2, _08078584 @ =sub_08078728
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
_08078580: .4byte 0x0808FCFC
_08078584: .4byte sub_08078728

	thumb_func_start sub_08078588
sub_08078588: @ 0x08078588
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _08078638 @ =sub_08078654
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	beq _0807862E
	str r4, [r5, #0x40]
	str r7, [r5, #0x44]
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
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldr r0, _0807863C @ =0x081CBF74
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08078640 @ =0x0821631C
	adds r0, r6, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r5, #0
	bl sub_0803B924
	adds r0, r5, #0
	adds r0, #0x65
	mov r1, r8
	strb r1, [r0]
	bl RandomNumberGenerator
	ldr r4, _08078644 @ =0x00007FFF
	ands r0, r4
	ldr r1, [r6, #0x48]
	adds r1, r1, r0
	ldr r0, _08078648 @ =0xFFFFC000
	adds r1, r1, r0
	str r1, [r5, #0x48]
	bl RandomNumberGenerator
	ands r0, r4
	ldr r1, _0807864C @ =0xFFFDC000
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	bl RandomNumberGenerator
	movs r1, #3
	ands r1, r0
	adds r1, #0x3c
	strb r1, [r5, #0xd]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08078650 @ =sub_0803B9D0
	str r0, [r5, #4]
_0807862E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08078638: .4byte sub_08078654
_0807863C: .4byte 0x081CBF74
_08078640: .4byte 0x0821631C
_08078644: .4byte 0x00007FFF
_08078648: .4byte 0xFFFFC000
_0807864C: .4byte 0xFFFDC000
_08078650: .4byte sub_0803B9D0

	thumb_func_start sub_08078654
sub_08078654: @ 0x08078654
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xe0
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
	ldrb r1, [r4, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08078696
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	adds r2, r4, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	bl sub_0806D578
_08078696:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080786AA
	adds r0, r4, #0
	bl EntityDelete
_080786AA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080786B0
sub_080786B0: @ 0x080786B0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080786E4 @ =0x081CBF74
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _080786F4
	ldr r0, _080786E8 @ =0x0820A580
	movs r1, #1
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _080786EC @ =0x0821631C
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _080786F0 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _080786F6
	.align 2, 0
_080786E4: .4byte 0x081CBF74
_080786E8: .4byte 0x0820A580
_080786EC: .4byte 0x0821631C
_080786F0: .4byte sub_0803B9D0
_080786F4:
	movs r0, #0
_080786F6:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080786FC
sub_080786FC: @ 0x080786FC
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

	thumb_func_start sub_08078728
sub_08078728: @ 0x08078728
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

	thumb_func_start sub_08078754
sub_08078754: @ 0x08078754
	push {r4, r5, r6, lr}
	sub sp, #0x34
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _0807878C
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _0807876E
	b _08078876
_0807876E:
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
	beq _0807878C
	adds r0, r5, #0
	bl sub_08021924
_0807878C:
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _080787A6
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	b _080787B4
_080787A6:
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_080787B4:
	movs r0, #0
	strb r0, [r5, #0x15]
	strb r0, [r5, #0x14]
	adds r2, r5, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _080787D2
	adds r0, r5, #0
	bl sub_0806AE54
_080787D2:
	adds r0, r5, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _080787E2
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	bne _080787F6
_080787E2:
	adds r0, r5, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	beq _08078800
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	beq _08078800
	cmp r0, #2
	beq _08078800
_080787F6:
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
	b _08078876
_08078800:
	ldrb r0, [r5, #0xa]
	cmp r0, #4
	bhi _08078850
	lsls r0, r0, #2
	ldr r1, _08078810 @ =_08078814
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08078810: .4byte _08078814
_08078814: @ jump table
	.4byte _08078828 @ case 0
	.4byte _08078830 @ case 1
	.4byte _08078838 @ case 2
	.4byte _08078840 @ case 3
	.4byte _08078848 @ case 4
_08078828:
	adds r0, r5, #0
	bl sub_08078880
	b _08078850
_08078830:
	adds r0, r5, #0
	bl sub_08078BB4
	b _08078850
_08078838:
	adds r0, r5, #0
	bl sub_08079294
	b _08078850
_08078840:
	adds r0, r5, #0
	bl sub_080791E8
	b _08078850
_08078848:
	adds r0, r5, #0
	bl sub_0803F17C
	b _08078876
_08078850:
	movs r0, #0x14
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _08078870
	adds r6, r5, #0
	adds r6, #0x65
	ldrb r4, [r6]
	adds r0, r5, #0
	bl sub_0803F17C
	ldrb r6, [r6]
	cmp r4, r6
	beq _08078870
	adds r0, r5, #0
	bl sub_0806B1FC
_08078870:
	adds r0, r5, #0
	bl sub_0806E314
_08078876:
	add sp, #0x34
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08078880
sub_08078880: @ 0x08078880
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldrb r7, [r5, #0xb]
	cmp r7, #1
	beq _0807892C
	cmp r7, #1
	bgt _0807889E
	cmp r7, #0
	beq _080788AC
	b _08078BA4
_0807889E:
	cmp r7, #2
	bne _080788A4
	b _08078B08
_080788A4:
	cmp r7, #3
	bne _080788AA
	b _08078B68
_080788AA:
	b _08078BA4
_080788AC:
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
	str r7, [r5, #0x48]
	str r7, [r5, #0x50]
	movs r1, #0x80
	lsls r1, r1, #0xa
	str r1, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	ldr r2, _08078928 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	bl sub_08069A00
	adds r1, r0, #0
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080788F4
	b _08078BA4
_080788F4:
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x50
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xa0
	movs r3, #0xa0
	bl sub_0806CFFC
	cmp r0, #0
	beq _0807891A
	b _08078B52
_0807891A:
	adds r0, r5, #0
	bl sub_0806D54C
	cmp r0, #0
	bne _08078926
	b _08078BA4
_08078926:
	b _08078B52
	.align 2, 0
_08078928: .4byte 0xFFE00000
_0807892C:
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806D128
	adds r6, r0, #0
	cmp r6, #0
	beq _0807894C
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0
	strb r0, [r5, #0xb]
	b _08078BA4
_0807894C:
	adds r0, r5, #0
	bl sub_0806CF2C
	adds r4, r5, #0
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
	str r6, [r5, #0x48]
	str r6, [r5, #0x50]
	movs r0, #0x80
	lsls r0, r0, #0xa
	mov sb, r0
	str r0, [r5, #0x4c]
	movs r2, #0xa0
	lsls r2, r2, #6
	mov sl, r2
	str r2, [r5, #0x54]
	ldr r2, _080789FC @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	mov r1, sb
	bl sub_08069A00
	adds r1, r0, #0
	movs r0, #4
	ands r0, r1
	mov r8, r4
	cmp r0, #0
	bne _0807899C
	b _08078BA4
_0807899C:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #3
	beq _080789A8
	b _08078BA4
_080789A8:
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	movs r3, #0x78
	cmp r0, #0x4b
	bne _080789B6
	movs r3, #0x28
_080789B6:
	adds r4, r5, #0
	adds r4, #0x42
	ldrh r0, [r4]
	subs r0, #0x3c
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r3, r3, #1
	movs r2, #0x78
	bl sub_0806CFFC
	cmp r0, #0
	beq _08078A00
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	strb r7, [r5, #0xa]
	strb r6, [r5, #0xb]
	strb r6, [r5, #0xd]
	str r6, [r5, #0x48]
	str r6, [r5, #0x50]
	mov r0, sb
	str r0, [r5, #0x4c]
	mov r2, sl
	str r2, [r5, #0x54]
	b _08078BA4
	.align 2, 0
_080789FC: .4byte 0xFFE00000
_08078A00:
	bl sub_080212C8
	movs r1, #0xd8
	lsls r1, r1, #2
	ands r1, r0
	cmp r1, #0
	beq _08078A44
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _08078A24
	rsbs r0, r0, #0
_08078A24:
	cmp r0, #0x4f
	bgt _08078A44
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08078A3C
	ldr r0, _08078A38 @ =0xFFFF0000
	b _08078A40
	.align 2, 0
_08078A38: .4byte 0xFFFF0000
_08078A3C:
	movs r0, #0x80
	lsls r0, r0, #9
_08078A40:
	str r0, [r5, #0x48]
	b _08078ADE
_08078A44:
	bl RandomNumberGenerator
	movs r6, #3
	ands r0, r6
	cmp r0, #0
	bne _08078AA2
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _08078A66
	rsbs r0, r0, #0
_08078A66:
	cmp r0, #0x4f
	bgt _08078AA2
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	cmp r0, #0
	beq _08078A92
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08078A8C
	ldr r0, _08078A88 @ =0xFFFF8000
	b _08078AB6
	.align 2, 0
_08078A88: .4byte 0xFFFF8000
_08078A8C:
	movs r0, #0x80
	lsls r0, r0, #8
	b _08078AB6
_08078A92:
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	strb r6, [r5, #0xb]
	b _08078BA4
_08078AA2:
	mov r2, r8
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08078AB4
	movs r0, #0x80
	lsls r0, r0, #9
	b _08078AB6
_08078AB4:
	ldr r0, _08078B00 @ =0xFFFF0000
_08078AB6:
	str r0, [r5, #0x48]
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _08078ACE
	rsbs r0, r0, #0
_08078ACE:
	cmp r0, #0x63
	ble _08078ADE
	ldr r1, [r5, #0x48]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	adds r1, r1, r0
	str r1, [r5, #0x48]
_08078ADE:
	movs r0, #0
	str r0, [r5, #0x50]
	ldr r0, _08078B04 @ =0xFFFE8000
	str r0, [r5, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r2, r5, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	b _08078BA4
	.align 2, 0
_08078B00: .4byte 0xFFFF0000
_08078B04: .4byte 0xFFFE8000
_08078B08:
	adds r4, r5, #0
	adds r4, #0x6c
	ldrb r1, [r4]
	movs r0, #2
	movs r7, #0
	orrs r0, r1
	strb r0, [r4]
	movs r6, #0x80
	lsls r6, r6, #0xa
	ldr r2, _08078B64 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08069A00
	adds r1, r0, #0
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08078BA4
	ldrb r1, [r4]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r4]
	adds r1, r5, #0
	adds r1, #0x6f
	movs r0, #0xfa
	strb r0, [r1]
	str r7, [r5, #0x48]
	str r7, [r5, #0x50]
	str r6, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
_08078B52:
	movs r0, #1
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #6
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _08078BA4
	.align 2, 0
_08078B64: .4byte 0xFFE00000
_08078B68:
	adds r0, r5, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0
	bne _08078B86
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #1
	beq _08078B80
	cmp r0, #3
	bne _08078B86
_08078B80:
	movs r0, #0x85
	bl sub_080D7910
_08078B86:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08078BA4
	adds r0, r5, #0
	movs r1, #6
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	strb r4, [r5, #0xb]
_08078BA4:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08078BB4
sub_08078BB4: @ 0x08078BB4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #0xd
	bls _08078BC2
	b _080791DE
_08078BC2:
	lsls r0, r0, #2
	ldr r1, _08078BCC @ =_08078BD0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08078BCC: .4byte _08078BD0
_08078BD0: @ jump table
	.4byte _08078C08 @ case 0
	.4byte _08078CD8 @ case 1
	.4byte _08078D4C @ case 2
	.4byte _08078E02 @ case 3
	.4byte _08078F00 @ case 4
	.4byte _08078F5C @ case 5
	.4byte _0807900E @ case 6
	.4byte _080791DE @ case 7
	.4byte _080791DE @ case 8
	.4byte _080791DE @ case 9
	.4byte _08079060 @ case 10
	.4byte _080790F0 @ case 11
	.4byte _0807915C @ case 12
	.4byte _08079180 @ case 13
_08078C08:
	adds r0, r5, #0
	bl sub_0806CF2C
	adds r6, r5, #0
	adds r6, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r6]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r6]
	movs r7, #0x80
	lsls r7, r7, #0xa
	ldr r2, _08078CA0 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08069A00
	adds r1, r0, #0
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08078C46
	b _080791DE
_08078C46:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bhi _08078C62
	bl sub_080212C8
	movs r1, #0xd8
	lsls r1, r1, #2
	ands r1, r0
	cmp r1, #0
	beq _08078CA4
_08078C62:
	movs r4, #0
	strb r4, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	strb r4, [r5, #0x17]
	movs r0, #1
	strb r0, [r5, #0x14]
	strb r4, [r5, #0x16]
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0806B1FC
	str r4, [r5, #0x50]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	ldrb r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08078C9C
	b _08078EC8
_08078C9C:
	str r7, [r5, #0x48]
	b _080791DE
	.align 2, 0
_08078CA0: .4byte 0xFFE00000
_08078CA4:
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x54
	beq _08078CB0
	b _080791DE
_08078CB0:
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x3c
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x78
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x78
	movs r3, #0x6e
	bl sub_0806CFFC
	cmp r0, #0
	bne _08078CD6
	b _080791DE
_08078CD6:
	b _08078FF6
_08078CD8:
	movs r0, #1
	strb r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ldr r2, _08078D48 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	bl sub_08069A00
	adds r4, r0, #0
	movs r0, #4
	ands r4, r0
	cmp r4, #0
	bne _08078CFC
	b _080791CC
_08078CFC:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bhi _08078D34
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _08078D14
	b _080791DE
_08078D14:
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x42
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _08078D2E
	rsbs r0, r0, #0
_08078D2E:
	cmp r0, #0x14
	ble _08078D34
	b _080791DE
_08078D34:
	movs r1, #0
	movs r0, #2
	strb r0, [r5, #0xb]
	str r1, [r5, #0x48]
	adds r0, r5, #0
	adds r0, #0x65
	strb r1, [r0]
	strb r1, [r5, #0xd]
	b _08079052
	.align 2, 0
_08078D48: .4byte 0xFFE00000
_08078D4C:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bhi _08078D5C
	b _080791DE
_08078D5C:
	adds r6, r5, #0
	adds r6, #0x42
	ldrh r0, [r6]
	subs r0, #0x14
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x28
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x28
	movs r3, #0x50
	bl sub_0806CFFC
	adds r4, r0, #0
	cmp r4, #0
	beq _08078DF0
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r6, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _08078D98
	rsbs r0, r0, #0
_08078D98:
	cmp r0, #0xc
	ble _08078E20
	movs r0, #3
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x4b
	bne _08078DDE
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	cmp r0, #0
	beq _08078DBE
	adds r0, r5, #0
	movs r1, #3
	b _08078DD4
_08078DBE:
	bl RandomNumberGenerator
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _08078DD0
	adds r0, r5, #0
	movs r1, #1
	b _08078DD4
_08078DD0:
	adds r0, r5, #0
	movs r1, #2
_08078DD4:
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _08078DEA
_08078DDE:
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_08078DEA:
	movs r0, #0
	strb r0, [r5, #0x14]
	b _080791DE
_08078DF0:
	strb r4, [r5, #0x14]
	adds r0, r5, #0
	movs r1, #6
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	strb r4, [r5, #0xa]
	b _0807917A
_08078E02:
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x42
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _08078E1C
	rsbs r0, r0, #0
_08078E1C:
	cmp r0, #0xc
	bgt _08078E5E
_08078E20:
	movs r4, #0
	strb r4, [r5, #0xd]
	movs r0, #6
	strb r0, [r5, #0xb]
	movs r0, #1
	strb r0, [r5, #0x14]
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0806B1FC
	str r4, [r5, #0x50]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08078EC8
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r5, #0x48]
	b _080791DE
_08078E5E:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08078EEA
	movs r4, #0x17
	ldrsb r4, [r5, r4]
	cmp r4, #0
	beq _08078ED8
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x4b
	bne _08078E94
	movs r1, #0
	movs r0, #5
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _080791DE
_08078E94:
	movs r4, #0
	strb r4, [r5, #0xd]
	movs r0, #0xd
	strb r0, [r5, #0xb]
	strb r6, [r5, #0x14]
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0806B1FC
	str r4, [r5, #0x50]
	movs r2, #0x80
	lsls r2, r2, #0xa
	str r2, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08078ED4
_08078EC8:
	ldr r0, _08078ED0 @ =0xFFFE0000
	str r0, [r5, #0x48]
	b _080791DE
	.align 2, 0
_08078ED0: .4byte 0xFFFE0000
_08078ED4:
	str r2, [r5, #0x48]
	b _080791DE
_08078ED8:
	adds r0, r5, #0
	movs r1, #6
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	strb r4, [r5, #0xa]
	strb r6, [r5, #0xb]
	b _080791DC
_08078EEA:
	strb r6, [r5, #0x15]
	adds r0, r5, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0
	beq _08078EF8
	b _080791DE
_08078EF8:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	b _08078F46
_08078F00:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08078F24
	adds r0, r5, #0
	movs r1, #6
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0
	strb r0, [r5, #0xa]
	strb r4, [r5, #0xb]
	b _080791DE
_08078F24:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #5
	bne _08078F36
	movs r0, #2
	strb r0, [r5, #0x15]
	b _08078F38
_08078F36:
	strb r4, [r5, #0x15]
_08078F38:
	adds r0, r5, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0
	beq _08078F44
	b _080791DE
_08078F44:
	ldrb r0, [r2]
_08078F46:
	cmp r0, #1
	beq _08078F54
	cmp r0, #3
	beq _08078F54
	cmp r0, #5
	beq _08078F54
	b _080791DE
_08078F54:
	movs r0, #0x85
	bl sub_080D7910
	b _080791DE
_08078F5C:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _08079008
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x4b
	bne _08078FF6
	movs r0, #0x16
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _08078FCA
	bl RandomNumberGenerator
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	bne _08078FCA
	movs r4, #1
	strb r4, [r5, #0x16]
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	cmp r0, #0
	beq _08078FA0
	adds r0, r5, #0
	movs r1, #3
	b _08078FAE
_08078FA0:
	bl RandomNumberGenerator
	ands r0, r4
	cmp r0, #0
	bne _08078FB8
	adds r0, r5, #0
	movs r1, #1
_08078FAE:
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _08078FC4
_08078FB8:
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_08078FC4:
	movs r0, #3
	strb r0, [r5, #0xb]
	b _080791DE
_08078FCA:
	bl RandomNumberGenerator
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08078FE4
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _08078FF0
_08078FE4:
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_08078FF0:
	movs r0, #4
	strb r0, [r5, #0xb]
	b _080791DE
_08078FF6:
	adds r0, r5, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #0xa
	strb r0, [r5, #0xb]
	b _080791DE
_08079008:
	movs r0, #1
	strb r0, [r5, #0x15]
	b _080791DE
_0807900E:
	movs r6, #0
	movs r0, #1
	strb r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ldr r2, _0807905C @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	bl sub_08069A00
	adds r4, r0, #0
	movs r0, #4
	ands r4, r0
	cmp r4, #0
	bne _08079034
	b _080791CC
_08079034:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb
	bhi _08079044
	b _080791DE
_08079044:
	movs r0, #2
	strb r0, [r5, #0xb]
	str r6, [r5, #0x48]
	adds r0, r5, #0
	adds r0, #0x65
	strb r6, [r0]
	strb r6, [r5, #0xd]
_08079052:
	adds r0, r5, #0
	bl sub_0806B1FC
	b _080791DE
	.align 2, 0
_0807905C: .4byte 0xFFE00000
_08079060:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #1
	beq _0807906C
	b _080791DE
_0807906C:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xb]
	str r1, [r5, #0x50]
	str r1, [r5, #0x4c]
	str r1, [r5, #0x54]
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _08079090
	movs r0, #0x80
	lsls r0, r0, #0xd
	b _08079092
_08079090:
	ldr r0, _080790B4 @ =0xFFF00000
_08079092:
	str r0, [r5, #0x48]
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r0, r5, #0
	bl sub_0806D3D8
	movs r0, #3
	strb r0, [r5, #0x15]
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080790B8
	movs r0, #0x80
	lsls r0, r0, #9
	b _080790BA
	.align 2, 0
_080790B4: .4byte 0xFFF00000
_080790B8:
	ldr r0, _080790E8 @ =0xFFFF0000
_080790BA:
	str r0, [r5, #0x48]
	ldr r0, _080790EC @ =0xFFFC0000
	str r0, [r5, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	movs r0, #0x86
	bl sub_080D7910
	adds r0, r5, #0
	movs r1, #0x38
	movs r2, #0xc
	movs r3, #1
	bl sub_080458E4
	adds r0, r5, #0
	movs r1, #0x38
	movs r2, #6
	movs r3, #0
	bl sub_080458E4
	b _080791DE
	.align 2, 0
_080790E8: .4byte 0xFFFF0000
_080790EC: .4byte 0xFFFC0000
_080790F0:
	movs r4, #0
	movs r0, #3
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #3
	bne _0807910E
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r2, #2
	orrs r1, r2
	strb r1, [r0]
	strb r4, [r5, #0x15]
_0807910E:
	movs r6, #0x80
	lsls r6, r6, #0xa
	ldr r2, _08079158 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08069A00
	adds r1, r0, #0
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080791DE
	adds r2, r5, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x6f
	movs r0, #0xfa
	strb r0, [r1]
	str r4, [r5, #0x48]
	str r4, [r5, #0x50]
	str r6, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	strb r4, [r5, #0xd]
	b _080791DE
	.align 2, 0
_08079158: .4byte 0xFFE00000
_0807915C:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bls _080791DE
	adds r0, r5, #0
	movs r1, #6
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0
	strb r0, [r5, #0xa]
_0807917A:
	movs r0, #1
	strb r0, [r5, #0xb]
	b _080791DE
_08079180:
	movs r6, #0
	movs r0, #1
	strb r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ldr r2, _080791C8 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	bl sub_08069A00
	adds r4, r0, #0
	movs r0, #4
	ands r4, r0
	cmp r4, #0
	beq _080791CC
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _080791DE
	movs r0, #5
	strb r0, [r5, #0xb]
	strb r6, [r5, #0xd]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	strb r6, [r5, #0x14]
	b _080791DE
	.align 2, 0
_080791C8: .4byte 0xFFE00000
_080791CC:
	strb r4, [r5, #0xa]
	strb r4, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080791DC:
	strb r4, [r5, #0x14]
_080791DE:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080791E8
sub_080791E8: @ 0x080791E8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _080791FA
	cmp r0, #1
	beq _08079242
	b _08079282
_080791FA:
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
	beq _08079228
	ldr r0, _08079224 @ =0xFFFE8000
	b _0807922C
	.align 2, 0
_08079224: .4byte 0xFFFE8000
_08079228:
	movs r0, #0xc0
	lsls r0, r0, #9
_0807922C:
	str r0, [r5, #0x48]
	movs r0, #0
	str r0, [r5, #0x50]
	ldr r0, _0807928C @ =0xFFFDC000
	str r0, [r5, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
_08079242:
	movs r1, #0x80
	lsls r1, r1, #0xb
	ldr r2, _08079290 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	bl sub_08069A00
	movs r1, #4
	ands r1, r0
	cmp r1, #0
	beq _08079282
	movs r4, #0
	strb r4, [r5, #0xa]
	movs r0, #1
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #6
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	str r4, [r5, #0x48]
	str r4, [r5, #0x50]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
_08079282:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807928C: .4byte 0xFFFDC000
_08079290: .4byte 0xFFE00000

	thumb_func_start sub_08079294
sub_08079294: @ 0x08079294
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r1, [r5, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080792BA
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	ldr r2, _080792D8 @ =0xFFFC0000
	adds r1, r1, r2
	adds r2, r5, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	ldrb r4, [r5, #0xd]
	ldr r3, _080792DC @ =0x00000666
	muls r3, r4, r3
	bl sub_08079510
_080792BA:
	ldrb r0, [r5, #0xd]
	bl sub_0806D518
	cmp r0, #0
	beq _080792E0
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x28
	orrs r1, r0
	strb r1, [r2]
	b _080792FC
	.align 2, 0
_080792D8: .4byte 0xFFFC0000
_080792DC: .4byte 0x00000666
_080792E0:
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
_080792FC:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08079314
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_08079314:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807931C
sub_0807931C: @ 0x0807931C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x70
	mov r1, sp
	adds r5, r4, #0
	adds r5, #0x3c
	ldrb r0, [r5]
	movs r2, #0
	strh r0, [r1]
	mov r0, sp
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	ldr r0, [r4, #0x40]
	str r0, [sp, #8]
	ldr r0, [r4, #0x44]
	str r0, [sp, #0xc]
	movs r0, #8
	strb r0, [r6]
	movs r3, #0x15
	ldrsb r3, [r4, r3]
	cmp r3, #1
	beq _0807936C
	cmp r3, #1
	bgt _08079358
	cmp r3, #0
	beq _08079362
	b _080793F4
_08079358:
	cmp r3, #2
	beq _08079388
	cmp r3, #3
	beq _080793C4
	b _080793F4
_08079362:
	mov r0, sp
	strh r3, [r0, #6]
	bl sub_08021654
	b _080793F4
_0807936C:
	movs r0, #9
	strb r0, [r6]
	mov r0, sp
	strh r2, [r0, #6]
	mov r2, sp
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	asrs r0, r0, #2
	strh r0, [r2]
	mov r0, sp
	bl sub_08021654
	b _080793F4
_08079388:
	mov r1, sp
	movs r0, #3
	strh r0, [r1, #6]
	ldrb r0, [r5]
	strh r0, [r1]
	mov r0, sp
	bl sub_08021654
	ldr r2, _080793B8 @ =0xFFFD0000
	ldr r0, _080793BC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080793C0 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r4, #0x40]
	cmp r1, r0
	ble _080793AE
	rsbs r2, r2, #0
_080793AE:
	ldr r1, _080793B8 @ =0xFFFD0000
	adds r0, r2, #0
	bl sub_08021248
	b _080793F4
	.align 2, 0
_080793B8: .4byte 0xFFFD0000
_080793BC: .4byte gEwramData
_080793C0: .4byte 0x00013110
_080793C4:
	mov r2, sp
	ldrb r0, [r5]
	lsrs r1, r0, #2
	adds r0, r0, r1
	strh r0, [r2]
	mov r0, sp
	strh r3, [r0, #6]
	bl sub_08021654
	ldr r2, _0807943C @ =0xFFFD0000
	ldr r0, _08079440 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08079444 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r4, #0x40]
	cmp r1, r0
	ble _080793EC
	rsbs r2, r2, #0
_080793EC:
	ldr r1, _08079448 @ =0xFFFA0000
	adds r0, r2, #0
	bl sub_08021248
_080793F4:
	movs r0, #1
	strb r0, [r4, #0x17]
	adds r0, r4, #0
	adds r0, #0x64
	ldrb r0, [r0]
	lsls r5, r0, #0x10
	cmp r0, #0xef
	bls _08079410
	ldr r0, _0807944C @ =0x08118DC0
	ldr r2, _08079450 @ =0x08118DD4
	movs r1, #0x5e
	movs r3, #1
	bl AGBAssert
_08079410:
	ldr r0, _08079440 @ =gEwramData
	ldr r0, [r0]
	lsrs r1, r5, #0xc
	ldr r2, _08079454 @ =0x0001017C
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	adds r0, #0x65
	ldrb r0, [r0]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r1, [r0, #8]
	adds r0, r4, #0
	bl sub_08042848
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0807943C: .4byte 0xFFFD0000
_08079440: .4byte gEwramData
_08079444: .4byte 0x00013110
_08079448: .4byte 0xFFFA0000
_0807944C: .4byte 0x08118DC0
_08079450: .4byte 0x08118DD4
_08079454: .4byte 0x0001017C

	thumb_func_start sub_08079458
sub_08079458: @ 0x08079458
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldrh r0, [r5, #4]
	bl sub_08021530
	adds r3, r0, #0
	adds r7, r4, #0
	adds r7, #0x70
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
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
	strb r4, [r6, #0x14]
	movs r1, #0x34
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bgt _080794DE
	adds r0, r6, #0
	bl sub_080683BC
	movs r0, #0x6e
	bl sub_080D7910
	adds r0, r6, #0
	movs r1, #5
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
	b _08079504
_080794DE:
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	bne _08079508
	ldrb r0, [r6, #0xb]
	cmp r0, #0
	beq _08079508
	ldrb r0, [r7]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08079508
	adds r0, r6, #0
	movs r1, #5
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #3
_08079504:
	strb r0, [r6, #0xa]
	strb r4, [r6, #0xb]
_08079508:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08079510
sub_08079510: @ 0x08079510
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov sb, r3
	ldr r2, _08079570 @ =sub_080795A8
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	ldr r0, _08079574 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08079578 @ =0x0000A094
	adds r1, r1, r0
	mov r8, r1
	cmp r4, #0
	beq _0807959C
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
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
	strb r7, [r0]
	mov r0, sb
	str r0, [r4, #0x14]
	str r7, [r4, #0x18]
	cmp r5, #0
	bge _0807957C
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0807957E
	.align 2, 0
_08079570: .4byte sub_080795A8
_08079574: .4byte gEwramData
_08079578: .4byte 0x0000A094
_0807957C:
	lsrs r0, r5, #0x10
_0807957E:
	strh r0, [r4, #0x1c]
	mov r1, r8
	ldrh r0, [r1, #6]
	strh r0, [r4, #0x1e]
	cmp r6, #0
	bge _08079592
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _08079594
_08079592:
	lsrs r0, r6, #0x10
_08079594:
	strh r0, [r4, #0x20]
	mov r1, r8
	ldrh r0, [r1, #0xa]
	strh r0, [r4, #0x22]
_0807959C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080795A8
sub_080795A8: @ 0x080795A8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _080795C0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080795C4 @ =0x0000A094
	adds r6, r0, r1
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _080795C8
	cmp r0, #1
	beq _0807960C
	b _08079676
	.align 2, 0
_080795C0: .4byte gEwramData
_080795C4: .4byte 0x0000A094
_080795C8:
	ldr r0, _08079600 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08079604 @ =0x0820ED60
	adds r0, r5, #0
	movs r3, #7
	bl sub_0803B924
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08079608 @ =sub_0803B9D0
	str r0, [r5, #4]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	b _08079676
	.align 2, 0
_08079600: .4byte 0x081C15F4
_08079604: .4byte 0x0820ED60
_08079608: .4byte sub_0803B9D0
_0807960C:
	ldr r0, [r5, #0x14]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r0, r2
	str r1, [r5, #0x14]
	movs r3, #0xa0
	lsls r3, r3, #7
	adds r0, r0, r3
	bl sub_080009E4
	adds r4, r0, #0
	lsls r4, r4, #4
	ldr r0, [r5, #0x14]
	bl sub_080009E4
	lsls r0, r0, #1
	ldrh r1, [r5, #0x20]
	subs r1, #2
	strh r1, [r5, #0x20]
	movs r2, #0x1c
	ldrsh r1, [r5, r2]
	lsls r1, r1, #0x10
	adds r1, r1, r4
	movs r3, #6
	ldrsh r2, [r6, r3]
	movs r4, #0x1e
	ldrsh r3, [r5, r4]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r5, #0x40]
	movs r2, #0x20
	ldrsh r1, [r5, r2]
	lsls r1, r1, #0x10
	adds r1, r1, r0
	movs r3, #0xa
	ldrsh r2, [r6, r3]
	movs r4, #0x22
	ldrsh r3, [r5, r4]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r5, #0x44]
	cmp r0, #0
	ble _0807966C
	ldr r0, [r5, #0x18]
	adds r0, #1
	b _08079670
_0807966C:
	ldr r0, [r5, #0x18]
	subs r0, #1
_08079670:
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
_08079676:
	adds r0, r5, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _08079686
	adds r0, r5, #0
	bl EntityDelete
_08079686:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0807968C
sub_0807968C: @ 0x0807968C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080796A4 @ =0x081CBF7C
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	bge _080796A8
	movs r0, #0
	b _080796DE
	.align 2, 0
_080796A4: .4byte 0x081CBF7C
_080796A8:
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x4b
	bne _080796BC
	ldr r0, _080796B8 @ =0x0820A5C4
	movs r1, #0
	b _080796C0
	.align 2, 0
_080796B8: .4byte 0x0820A5C4
_080796BC:
	ldr r0, _080796E4 @ =0x0820A5C4
	movs r1, #1
_080796C0:
	bl sub_08068264
	adds r1, r4, #0
	adds r1, #0x2c
	strb r0, [r1]
	adds r0, r1, #0
	ldr r1, _080796E8 @ =0x08216A40
	ldrb r3, [r0]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _080796EC @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
_080796DE:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080796E4: .4byte 0x0820A5C4
_080796E8: .4byte 0x08216A40
_080796EC: .4byte sub_0803B9D0

	thumb_func_start sub_080796F0
sub_080796F0: @ 0x080796F0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0807968C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08079706
	adds r0, r4, #0
	bl EntityDelete
	b _0807975E
_08079706:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r0, _08079738 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _0807973C
	movs r0, #4
	strb r0, [r4, #0xa]
	b _0807975E
	.align 2, 0
_08079738: .4byte gEwramData
_0807973C:
	ldr r2, _08079764 @ =sub_0807931C
	ldr r3, _08079768 @ =sub_08079458
	adds r0, r4, #0
	movs r1, #8
	bl sub_080427B8
	adds r0, r4, #0
	bl sub_0806B1FC
	movs r0, #3
	movs r1, #6
	bl sub_08042A54
	adds r0, r4, #0
	bl sub_0806AF98
	strb r5, [r4, #0xa]
_0807975E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08079764: .4byte sub_0807931C
_08079768: .4byte sub_08079458

	thumb_func_start sub_0807976C
sub_0807976C: @ 0x0807976C
	push {r4, r5, r6, lr}
	sub sp, #0x30
	adds r5, r0, #0
	bl sub_08021924
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _08079790
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	b _0807979E
_08079790:
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0807979E:
	movs r0, #0
	strb r0, [r5, #0x15]
	strb r0, [r5, #0x14]
	adds r2, r5, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _080797BC
	adds r0, r5, #0
	bl sub_0806AE54
_080797BC:
	adds r0, r5, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _080797CC
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	bne _080797E0
_080797CC:
	adds r0, r5, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080797EA
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	beq _080797EA
	cmp r0, #2
	beq _080797EA
_080797E0:
	mov r0, sp
	adds r1, r5, #0
	bl sub_080421AC
	b _0807986A
_080797EA:
	ldrb r0, [r5, #0xa]
	cmp r0, #4
	bhi _0807983C
	lsls r0, r0, #2
	ldr r1, _080797FC @ =_08079800
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080797FC: .4byte _08079800
_08079800: @ jump table
	.4byte _08079814 @ case 0
	.4byte _0807981C @ case 1
	.4byte _08079824 @ case 2
	.4byte _0807982C @ case 3
	.4byte _08079834 @ case 4
_08079814:
	adds r0, r5, #0
	bl sub_08078880
	b _0807983C
_0807981C:
	adds r0, r5, #0
	bl sub_08078BB4
	b _0807983C
_08079824:
	adds r0, r5, #0
	bl sub_08079294
	b _0807983C
_0807982C:
	adds r0, r5, #0
	bl sub_080791E8
	b _0807983C
_08079834:
	adds r0, r5, #0
	bl sub_0803F17C
	b _0807986A
_0807983C:
	movs r0, #0x14
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _0807985C
	adds r6, r5, #0
	adds r6, #0x65
	ldrb r4, [r6]
	adds r0, r5, #0
	bl sub_0803F17C
	ldrb r6, [r6]
	cmp r4, r6
	beq _0807985C
	adds r0, r5, #0
	bl sub_0806B1FC
_0807985C:
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _0807986A
	mov r0, sp
	adds r1, r5, #0
	bl sub_080421AC
_0807986A:
	add sp, #0x30
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08079874
sub_08079874: @ 0x08079874
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0807968C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807988A
	adds r0, r4, #0
	bl EntityDelete
	b _080798E2
_0807988A:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r0, _080798BC @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _080798C0
	movs r0, #4
	strb r0, [r4, #0xa]
	b _080798E2
	.align 2, 0
_080798BC: .4byte gEwramData
_080798C0:
	ldr r2, _080798E8 @ =sub_0807931C
	ldr r3, _080798EC @ =sub_08079458
	adds r0, r4, #0
	movs r1, #8
	bl sub_080427B8
	adds r0, r4, #0
	bl sub_0806B1FC
	movs r0, #3
	movs r1, #6
	bl sub_08042A54
	adds r0, r4, #0
	bl sub_0806AF98
	strb r5, [r4, #0xa]
_080798E2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080798E8: .4byte sub_0807931C
_080798EC: .4byte sub_08079458

	thumb_func_start sub_080798F0
sub_080798F0: @ 0x080798F0
	push {r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0807992E
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _08079910
	movs r0, #0x82
	bl sub_08013E18
	b _080799F2
_08079910:
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
	beq _0807992E
	adds r0, r4, #0
	bl sub_08021924
_0807992E:
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _08079948
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	b _08079956
_08079948:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_08079956:
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _08079962
	adds r0, r4, #0
	bl sub_0806AE54
_08079962:
	adds r0, r4, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _08079972
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _08079986
_08079972:
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	beq _08079990
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _08079990
	cmp r0, #2
	beq _08079990
_08079986:
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
	b _080799F2
_08079990:
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bhi _080799E6
	lsls r0, r0, #2
	ldr r1, _080799A0 @ =_080799A4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080799A0: .4byte _080799A4
_080799A4: @ jump table
	.4byte _080799B8 @ case 0
	.4byte _080799C0 @ case 1
	.4byte _080799D0 @ case 2
	.4byte _080799C8 @ case 3
	.4byte _080799D8 @ case 4
_080799B8:
	adds r0, r4, #0
	bl sub_08079B38
	b _080799E6
_080799C0:
	adds r0, r4, #0
	bl sub_08079EF0
	b _080799E6
_080799C8:
	adds r0, r4, #0
	bl sub_0807A2E4
	b _080799E6
_080799D0:
	adds r0, r4, #0
	bl sub_0807A438
	b _080799E6
_080799D8:
	adds r0, r4, #0
	bl sub_0807A9BC
	adds r0, r4, #0
	bl sub_0803F17C
	b _080799F2
_080799E6:
	adds r0, r4, #0
	bl sub_0806DF20
	adds r0, r4, #0
	bl sub_0806E314
_080799F2:
	add sp, #0x14
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080799FC
sub_080799FC: @ 0x080799FC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_0807A970
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08079ADA
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	adds r0, r5, #0
	bl sub_0806B04C
	movs r6, #5
	adds r7, r5, #0
	adds r7, #0x2c
_08079A28:
	ldr r0, _08079A48 @ =sub_0807A590
	bl sub_0806DFF8
	adds r4, r0, #0
	cmp r4, #0
	beq _08079ADA
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _08079A4C
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	b _08079A54
	.align 2, 0
_08079A48: .4byte sub_0807A590
_08079A4C:
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
_08079A54:
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _08079AC4 @ =0x081CBF84
	bl sub_0803AFB8
	adds r2, r0, #0
	ldrb r3, [r7]
	adds r0, r4, #0
	ldr r1, _08079AC8 @ =0x08217464
	bl sub_0803B924
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x36
	strb r0, [r1]
	ldrb r1, [r7]
	adds r0, r4, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r3, #3
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08079ACC @ =sub_0803B9D0
	str r0, [r4, #4]
	str r5, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x20
	strb r6, [r0]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	lsrs r1, r6, #0x1f
	adds r1, r6, r1
	asrs r1, r1, #1
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #0x10
	str r0, [r4, #0x48]
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _08079AD0
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x19
	strb r0, [r1]
	b _08079AE2
	.align 2, 0
_08079AC4: .4byte 0x081CBF84
_08079AC8: .4byte 0x08217464
_08079ACC: .4byte sub_0803B9D0
_08079AD0:
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x15
	strb r0, [r1]
	b _08079AE2
_08079ADA:
	adds r0, r5, #0
	bl EntityDelete
	b _08079B2A
_08079AE2:
	subs r6, #1
	cmp r6, #0
	bge _08079A28
	ldr r0, _08079B0C @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _08079B10
	movs r0, #0
	movs r1, #4
	strb r1, [r5, #0xa]
	adds r1, r5, #0
	adds r1, #0x21
	strb r0, [r1]
	b _08079B2A
	.align 2, 0
_08079B0C: .4byte gEwramData
_08079B10:
	ldr r2, _08079B30 @ =sub_0807A9C0
	ldr r3, _08079B34 @ =sub_0807A4DC
	adds r0, r5, #0
	movs r1, #8
	bl sub_080427B8
	adds r0, r5, #0
	bl sub_0806B1FC
	adds r0, r5, #0
	bl sub_0806AF98
	strb r4, [r5, #0xa]
_08079B2A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08079B30: .4byte sub_0807A9C0
_08079B34: .4byte sub_0807A4DC

	thumb_func_start sub_08079B38
sub_08079B38: @ 0x08079B38
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldrb r5, [r4, #0xb]
	cmp r5, #1
	beq _08079C0A
	cmp r5, #1
	bgt _08079B54
	cmp r5, #0
	beq _08079B5C
	b _08079EE0
_08079B54:
	cmp r5, #2
	bne _08079B5A
	b _08079D7E
_08079B5A:
	b _08079EE0
_08079B5C:
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
	movs r0, #0x42
	adds r0, r0, r4
	mov r8, r0
	ldrh r0, [r0]
	subs r0, #0x50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r7, r4, #0
	adds r7, #0x46
	ldrh r1, [r7]
	subs r1, #0x50
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xa0
	movs r3, #0xa0
	bl sub_0806CFFC
	cmp r0, #0
	bne _08079BAA
	adds r0, r4, #0
	bl sub_0806D54C
	cmp r0, #0
	bne _08079BAA
	b _08079EE0
_08079BAA:
	movs r1, #1
	mov sb, r1
	mov r2, sb
	strb r2, [r4, #0xb]
	adds r6, r4, #0
	adds r6, #0x21
	strb r2, [r6]
	str r5, [r4, #0x18]
	str r5, [r4, #0x1c]
	str r5, [r4, #0x48]
	strb r5, [r4, #0xd]
	mov r1, r8
	ldrh r0, [r1]
	subs r0, #0x3c
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r7]
	subs r1, #0x50
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x78
	movs r3, #0xa0
	bl sub_0806CFFC
	cmp r0, #0
	beq _08079BE2
	movs r0, #2
	b _08079C04
_08079BE2:
	mov r2, r8
	ldrh r0, [r2]
	subs r0, #0x64
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r7]
	subs r1, #0x50
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xc8
	movs r3, #0xa0
	bl sub_0806CFFC
	cmp r0, #0
	beq _08079C02
	b _08079E7A
_08079C02:
	mov r0, sb
_08079C04:
	strb r0, [r6]
	strb r0, [r4, #0xb]
	b _08079EE0
_08079C0A:
	ldr r1, [r4, #0x1c]
	ldr r0, _08079C2C @ =0x0000FFFF
	cmp r1, r0
	bgt _08079C1A
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r1, r2
	str r0, [r4, #0x1c]
_08079C1A:
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	adds r1, r0, r1
	str r1, [r4, #0x18]
	ldr r0, _08079C30 @ =0x0023FFFF
	cmp r1, r0
	ble _08079C38
	ldr r2, _08079C34 @ =0xFFDC0000
	b _08079C40
	.align 2, 0
_08079C2C: .4byte 0x0000FFFF
_08079C30: .4byte 0x0023FFFF
_08079C34: .4byte 0xFFDC0000
_08079C38:
	cmp r1, #0
	bge _08079C44
	movs r2, #0x90
	lsls r2, r2, #0xe
_08079C40:
	adds r0, r1, r2
	str r0, [r4, #0x18]
_08079C44:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r4, #0
	adds r5, #0x58
	cmp r0, #0x1d
	bls _08079C72
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
	movs r0, #0
	strb r0, [r4, #0xd]
_08079C72:
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08079C82
	movs r0, #0x80
	lsls r0, r0, #5
	b _08079C84
_08079C82:
	ldr r0, _08079CA4 @ =0xFFFFF000
_08079C84:
	str r0, [r4, #0x50]
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _08079CAC
	ldr r1, [r4, #0x48]
	ldr r0, _08079CA8 @ =0x00007FFF
	cmp r1, r0
	ble _08079CB6
	movs r0, #0
	str r0, [r4, #0x50]
	b _08079CB6
	.align 2, 0
_08079CA4: .4byte 0xFFFFF000
_08079CA8: .4byte 0x00007FFF
_08079CAC:
	ldr r1, [r4, #0x48]
	ldr r0, _08079D08 @ =0xFFFF8000
	cmp r1, r0
	bgt _08079CB6
	str r2, [r4, #0x50]
_08079CB6:
	movs r6, #0x80
	lsls r6, r6, #9
	ldr r2, _08079D0C @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08069A00
	movs r0, #0x42
	adds r0, r0, r4
	mov r8, r0
	ldrh r0, [r0]
	subs r0, #0x3c
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r7, r4, #0
	adds r7, #0x46
	ldrh r1, [r7]
	subs r1, #0x50
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x78
	movs r3, #0xa0
	bl sub_0806CFFC
	adds r5, r0, #0
	cmp r5, #0
	beq _08079D10
	adds r2, r4, #0
	adds r2, #0x21
	movs r1, #0
	movs r0, #2
	strb r0, [r2]
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xd]
	str r6, [r4, #0x4c]
	b _08079E80
	.align 2, 0
_08079D08: .4byte 0xFFFF8000
_08079D0C: .4byte 0xFFE00000
_08079D10:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806B120
	cmp r0, #0
	beq _08079D2C
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #2
	strb r0, [r1]
	strb r0, [r4, #0xb]
	strb r5, [r4, #0xd]
	str r6, [r4, #0x4c]
	b _08079E80
_08079D2C:
	adds r1, r4, #0
	adds r1, #0x22
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08079D3C
	b _08079EDC
_08079D3C:
	bl RandomNumberGenerator
	adds r5, r0, #0
	movs r0, #0x1f
	ands r5, r0
	cmp r5, #0
	beq _08079D4C
	b _08079EE0
_08079D4C:
	mov r1, r8
	ldrh r0, [r1]
	subs r0, #0x50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r7]
	subs r1, #0x50
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xa0
	movs r3, #0xa0
	bl sub_0806CFFC
	cmp r0, #0
	bne _08079D6C
	b _08079EE0
_08079D6C:
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #3
	strb r0, [r1]
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xb]
	strb r5, [r4, #0xd]
	b _08079EE0
_08079D7E:
	ldr r1, [r4, #0x1c]
	ldr r0, _08079DA0 @ =0xFFFF0000
	cmp r1, r0
	ble _08079D8C
	ldr r2, _08079DA4 @ =0xFFFFE000
	adds r0, r1, r2
	str r0, [r4, #0x1c]
_08079D8C:
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	adds r1, r0, r1
	str r1, [r4, #0x18]
	ldr r0, _08079DA8 @ =0x0023FFFF
	cmp r1, r0
	ble _08079DB0
	ldr r2, _08079DAC @ =0xFFDC0000
	b _08079DB8
	.align 2, 0
_08079DA0: .4byte 0xFFFF0000
_08079DA4: .4byte 0xFFFFE000
_08079DA8: .4byte 0x0023FFFF
_08079DAC: .4byte 0xFFDC0000
_08079DB0:
	cmp r1, #0
	bge _08079DBC
	movs r2, #0x90
	lsls r2, r2, #0xe
_08079DB8:
	adds r0, r1, r2
	str r0, [r4, #0x18]
_08079DBC:
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
	adds r5, r3, #0
	cmp r1, #0
	beq _08079DEC
	ldr r0, _08079DE8 @ =0xFFFFF000
	b _08079DF0
	.align 2, 0
_08079DE8: .4byte 0xFFFFF000
_08079DEC:
	movs r0, #0x80
	lsls r0, r0, #5
_08079DF0:
	str r0, [r4, #0x50]
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _08079E14
	ldr r1, [r4, #0x48]
	ldr r0, _08079E10 @ =0xFFFF8000
	cmp r1, r0
	bgt _08079E1E
	movs r0, #0
	str r0, [r4, #0x50]
	b _08079E1E
	.align 2, 0
_08079E10: .4byte 0xFFFF8000
_08079E14:
	ldr r1, [r4, #0x48]
	ldr r0, _08079E88 @ =0x00007FFF
	cmp r1, r0
	ble _08079E1E
	str r2, [r4, #0x50]
_08079E1E:
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _08079E8C @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08069A00
	movs r1, #3
	mov r8, r1
	ands r0, r1
	cmp r0, #0
	bne _08079E6C
	adds r7, r4, #0
	adds r7, #0x42
	ldrh r0, [r7]
	subs r0, #0x64
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r6, r4, #0
	adds r6, #0x46
	ldrh r1, [r6]
	subs r1, #0x50
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xc8
	movs r3, #0xa0
	bl sub_0806CFFC
	cmp r0, #0
	beq _08079E6C
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806B120
	cmp r0, #0
	beq _08079E90
_08079E6C:
	adds r2, r4, #0
	adds r2, #0x21
	movs r1, #0
	movs r0, #1
	strb r0, [r2]
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xd]
_08079E7A:
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x4c]
_08079E80:
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	b _08079EE0
	.align 2, 0
_08079E88: .4byte 0x00007FFF
_08079E8C: .4byte 0xFFE00000
_08079E90:
	adds r1, r4, #0
	adds r1, #0x22
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08079EDC
	bl RandomNumberGenerator
	adds r5, r0, #0
	movs r0, #0x1f
	ands r5, r0
	cmp r5, #0
	bne _08079EE0
	ldrh r0, [r7]
	subs r0, #0x50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	subs r1, #0x50
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xa0
	movs r3, #0xa0
	bl sub_0806CFFC
	cmp r0, #0
	beq _08079EE0
	adds r0, r4, #0
	adds r0, #0x21
	mov r2, r8
	strb r2, [r0]
	movs r0, #1
	strb r0, [r4, #0xa]
	movs r0, #0xa
	strb r0, [r4, #0xb]
	strb r5, [r4, #0xd]
	b _08079EE0
_08079EDC:
	subs r0, r2, #1
	strb r0, [r1]
_08079EE0:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08079EF0
sub_08079EF0: @ 0x08079EF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov r8, r0
	ldr r0, _08079F14 @ =0x0404FEFE
	str r0, [sp, #0x14]
	mov r0, r8
	ldrb r1, [r0, #0xb]
	cmp r1, #1
	beq _08079FBC
	cmp r1, #1
	bgt _08079F18
	cmp r1, #0
	beq _08079F24
	b _0807A2CE
	.align 2, 0
_08079F14: .4byte 0x0404FEFE
_08079F18:
	cmp r1, #2
	beq _0807A00A
	cmp r1, #0xa
	bne _08079F22
	b _0807A240
_08079F22:
	b _0807A2CE
_08079F24:
	mov r1, r8
	ldr r0, [r1, #0x1c]
	cmp r0, #0
	bge _08079F36
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r0, r2
	str r0, [r1, #0x1c]
	b _08079F42
_08079F36:
	cmp r0, #0
	ble _08079F42
	ldr r1, _08079F58 @ =0xFFFFE000
	adds r0, r0, r1
	mov r2, r8
	str r0, [r2, #0x1c]
_08079F42:
	mov r1, r8
	ldr r0, [r1, #0x18]
	ldr r1, [r1, #0x1c]
	adds r1, r0, r1
	mov r2, r8
	str r1, [r2, #0x18]
	ldr r0, _08079F5C @ =0x0023FFFF
	cmp r1, r0
	ble _08079F64
	ldr r2, _08079F60 @ =0xFFDC0000
	b _08079F6C
	.align 2, 0
_08079F58: .4byte 0xFFFFE000
_08079F5C: .4byte 0x0023FFFF
_08079F60: .4byte 0xFFDC0000
_08079F64:
	cmp r1, #0
	bge _08079F72
	movs r2, #0x90
	lsls r2, r2, #0xe
_08079F6C:
	adds r0, r1, r2
	mov r1, r8
	str r0, [r1, #0x18]
_08079F72:
	mov r0, r8
	movs r1, #8
	bl sub_0806D490
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _08079FB8 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #0xc
	str r0, [sp]
	mov r0, r8
	bl sub_08069A00
	mov r2, r8
	ldrb r0, [r2, #0xd]
	adds r1, r0, #1
	strb r1, [r2, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bhi _08079FA0
	b _0807A2CE
_08079FA0:
	movs r0, #0
	strb r0, [r2, #0xd]
	ldrb r0, [r2, #0xb]
	adds r0, #1
	strb r0, [r2, #0xb]
	mov r0, r8
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0807A2CE
	.align 2, 0
_08079FB8: .4byte 0xFFE00000
_08079FBC:
	mov r0, r8
	adds r0, #0x59
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	bne _08079FCA
	b _0807A2CE
_08079FCA:
	movs r0, #0
	mov r1, r8
	strb r0, [r1, #0xd]
	ldrb r0, [r1, #0xb]
	adds r0, #1
	strb r0, [r1, #0xb]
	mov r0, r8
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	mov r0, r8
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08079FFA
	movs r0, #0xa0
	lsls r0, r0, #6
	mov r2, r8
	str r0, [r2, #0x14]
	b _0807A002
_08079FFA:
	movs r0, #0xb0
	lsls r0, r0, #7
	mov r1, r8
	str r0, [r1, #0x14]
_0807A002:
	movs r0, #0x82
	bl sub_08013D60
	b _0807A2CE
_0807A00A:
	mov r2, r8
	ldrb r0, [r2, #0xd]
	adds r0, #1
	strb r0, [r2, #0xd]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0807A020
	movs r0, #0x82
	bl sub_08013DA8
_0807A020:
	mov r0, r8
	ldr r7, [r0, #0x40]
	ldr r0, [r0, #0x44]
	ldr r1, _0807A044 @ =0xFFD50000
	adds r4, r0, r1
	mov r2, r8
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	str r2, [sp, #0x18]
	cmp r0, #0
	beq _0807A048
	movs r2, #0xd0
	lsls r2, r2, #0xc
	adds r7, r7, r2
	b _0807A04C
	.align 2, 0
_0807A044: .4byte 0xFFD50000
_0807A048:
	ldr r0, _0807A0B4 @ =0xFFF30000
	adds r7, r7, r0
_0807A04C:
	ldr r2, _0807A0B8 @ =sub_0807A900
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r6, r0, #0
	cmp r6, #0
	bne _0807A05E
	b _0807A170
_0807A05E:
	ldr r2, _0807A0BC @ =sub_0807A940
	movs r1, #8
	movs r3, #0
	bl sub_0804277C
	add r1, sp, #0x14
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
	str r7, [r6, #0x40]
	str r4, [r6, #0x44]
	mov r0, r8
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x3c
	strb r1, [r0]
	mov r2, r8
	ldr r1, [r2, #0x14]
	movs r2, #0x80
	lsls r2, r2, #0xc
	adds r0, r6, #0
	bl sub_0806D2F8
	bl RandomNumberGenerator
	movs r4, #3
	bl RandomNumberGenerator
	mov sb, r0
	ands r0, r4
	mov sb, r0
	movs r1, #4
	mov sl, r1
	b _0807A13C
	.align 2, 0
_0807A0B4: .4byte 0xFFF30000
_0807A0B8: .4byte sub_0807A900
_0807A0BC: .4byte sub_0807A940
_0807A0C0:
	adds r0, r6, #0
	movs r1, #0
	bl sub_0806D128
	cmp r0, #0
	bne _0807A16A
	mov r0, r8
	bl sub_0806CD38
	ldr r1, [r6, #0x40]
	subs r7, r0, r1
	mov r0, r8
	bl sub_0806CD78
	ldr r1, [r6, #0x44]
	subs r4, r0, r1
	adds r1, r7, #0
	cmp r7, #0
	bge _0807A0E8
	rsbs r1, r7, #0
_0807A0E8:
	ldr r0, _0807A188 @ =0x0007FFFF
	cmp r1, r0
	bgt _0807A100
	ldr r2, _0807A18C @ =0x0001FFFF
	adds r1, r4, r2
	ldr r0, _0807A190 @ =0x0021FFFE
	cmp r1, r0
	bhi _0807A100
	add r0, sp, #4
	adds r1, r6, #0
	bl sub_080421AC
_0807A100:
	ldrb r1, [r6, #0xd]
	cmp r1, #3
	bhi _0807A136
	movs r0, #3
	ands r0, r1
	cmp sb, r0
	bne _0807A136
	bl RandomNumberGenerator
	ldr r5, _0807A18C @ =0x0001FFFF
	ands r0, r5
	ldr r4, _0807A194 @ =0xFFFF0000
	adds r7, r0, r4
	bl RandomNumberGenerator
	ands r0, r5
	adds r4, r0, r4
	ldr r1, [r6, #0x40]
	adds r1, r1, r7
	ldr r2, [r6, #0x44]
	adds r2, r2, r4
	movs r0, #1
	str r0, [sp]
	mov r0, r8
	movs r3, #7
	bl sub_0807A848
_0807A136:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
_0807A13C:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	bl sub_0806D288
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _0807A0C0
	mov r2, r8
	ldrb r1, [r2, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0807A16A
	ldr r1, [r6, #0x40]
	ldr r2, [r6, #0x44]
	mov r0, sl
	str r0, [sp]
	mov r0, r8
	movs r3, #5
	bl sub_0807A848
_0807A16A:
	adds r0, r6, #0
	bl EntityDelete
_0807A170:
	ldr r2, [sp, #0x18]
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807A198
	mov r1, r8
	ldr r0, [r1, #0x14]
	subs r0, #0x60
	str r0, [r1, #0x14]
	b _0807A1A0
	.align 2, 0
_0807A188: .4byte 0x0007FFFF
_0807A18C: .4byte 0x0001FFFF
_0807A190: .4byte 0x0021FFFE
_0807A194: .4byte 0xFFFF0000
_0807A198:
	mov r2, r8
	ldr r0, [r2, #0x14]
	adds r0, #0x60
	str r0, [r2, #0x14]
_0807A1A0:
	mov r0, r8
	ldrb r1, [r0, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0807A1EC
	bl RandomNumberGenerator
	adds r5, r0, #0
	ldr r4, _0807A234 @ =0x0003FFFF
	ands r5, r4
	bl RandomNumberGenerator
	ands r0, r4
	ldr r1, _0807A238 @ =0xFFD20000
	adds r4, r0, r1
	ldr r2, [sp, #0x18]
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	ldr r1, _0807A23C @ =0xFFF40000
	adds r7, r5, r1
	cmp r0, #0
	beq _0807A1D6
	movs r2, #0x80
	lsls r2, r2, #0xc
	adds r7, r5, r2
_0807A1D6:
	mov r0, r8
	ldr r1, [r0, #0x40]
	adds r1, r1, r7
	ldr r2, [r0, #0x44]
	adds r2, r2, r4
	movs r0, #4
	str r0, [sp]
	mov r0, r8
	movs r3, #4
	bl sub_0807A848
_0807A1EC:
	mov r1, r8
	ldrb r0, [r1, #0xd]
	cmp r0, #0x3b
	bls _0807A2CE
	movs r4, #0
	strb r4, [r1, #0xa]
	movs r0, #1
	strb r0, [r1, #0xb]
	strb r4, [r1, #0xd]
	bl RandomNumberGenerator
	movs r1, #0x3f
	ands r1, r0
	adds r1, #0x3c
	mov r0, r8
	adds r0, #0x22
	strb r1, [r0]
	mov r2, r8
	str r4, [r2, #0x48]
	str r4, [r2, #0x50]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r2, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r2, #0x54]
	mov r0, r8
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0x82
	bl sub_08013E18
	b _0807A2CE
	.align 2, 0
_0807A234: .4byte 0x0003FFFF
_0807A238: .4byte 0xFFD20000
_0807A23C: .4byte 0xFFF40000
_0807A240:
	mov r1, r8
	ldr r0, [r1, #0x1c]
	cmp r0, #0
	bge _0807A252
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r0, r2
	str r0, [r1, #0x1c]
	b _0807A25E
_0807A252:
	cmp r0, #0
	ble _0807A25E
	ldr r1, _0807A274 @ =0xFFFFE000
	adds r0, r0, r1
	mov r2, r8
	str r0, [r2, #0x1c]
_0807A25E:
	mov r1, r8
	ldr r0, [r1, #0x18]
	ldr r1, [r1, #0x1c]
	adds r1, r0, r1
	mov r2, r8
	str r1, [r2, #0x18]
	ldr r0, _0807A278 @ =0x0023FFFF
	cmp r1, r0
	ble _0807A280
	ldr r2, _0807A27C @ =0xFFDC0000
	b _0807A288
	.align 2, 0
_0807A274: .4byte 0xFFFFE000
_0807A278: .4byte 0x0023FFFF
_0807A27C: .4byte 0xFFDC0000
_0807A280:
	cmp r1, #0
	bge _0807A28E
	movs r2, #0x90
	lsls r2, r2, #0xe
_0807A288:
	adds r0, r1, r2
	mov r1, r8
	str r0, [r1, #0x18]
_0807A28E:
	mov r0, r8
	movs r1, #8
	bl sub_0806D490
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _0807A2E0 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #0xc
	str r0, [sp]
	mov r0, r8
	bl sub_08069A00
	mov r2, r8
	ldrb r0, [r2, #0xd]
	adds r1, r0, #1
	strb r1, [r2, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _0807A2CE
	movs r0, #0
	strb r0, [r2, #0xd]
	movs r0, #1
	strb r0, [r2, #0xb]
	mov r0, r8
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0807A2CE:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807A2E0: .4byte 0xFFE00000

	thumb_func_start sub_0807A2E4
sub_0807A2E4: @ 0x0807A2E4
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0807A2F6
	cmp r0, #1
	beq _0807A308
	b _0807A426
_0807A2F6:
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #2
	strb r0, [r1]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	ldr r0, _0807A31C @ =0xFFFE0000
	str r0, [r4, #0x1c]
_0807A308:
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	adds r1, r0, r1
	str r1, [r4, #0x18]
	ldr r0, _0807A320 @ =0x0023FFFF
	cmp r1, r0
	ble _0807A328
	ldr r2, _0807A324 @ =0xFFDC0000
	b _0807A330
	.align 2, 0
_0807A31C: .4byte 0xFFFE0000
_0807A320: .4byte 0x0023FFFF
_0807A324: .4byte 0xFFDC0000
_0807A328:
	cmp r1, #0
	bge _0807A334
	movs r2, #0x90
	lsls r2, r2, #0xe
_0807A330:
	adds r0, r1, r2
	str r0, [r4, #0x18]
_0807A334:
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
	cmp r1, #0
	beq _0807A360
	ldr r0, _0807A35C @ =0xFFFFC000
	b _0807A364
	.align 2, 0
_0807A35C: .4byte 0xFFFFC000
_0807A360:
	movs r0, #0x80
	lsls r0, r0, #7
_0807A364:
	str r0, [r4, #0x50]
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _0807A388
	ldr r1, [r4, #0x48]
	ldr r0, _0807A384 @ =0xFFFE0000
	cmp r1, r0
	bgt _0807A392
	movs r0, #0
	str r0, [r4, #0x50]
	b _0807A392
	.align 2, 0
_0807A384: .4byte 0xFFFE0000
_0807A388:
	ldr r1, [r4, #0x48]
	ldr r0, _0807A430 @ =0x0001FFFF
	cmp r1, r0
	ble _0807A392
	str r2, [r4, #0x50]
_0807A392:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0807A3B6
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #3
	bne _0807A3B6
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0807A3B6:
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _0807A434 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08069A00
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	bne _0807A402
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x64
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x50
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xc8
	movs r3, #0xa0
	bl sub_0806CFFC
	cmp r0, #0
	beq _0807A402
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806B120
	cmp r0, #0
	beq _0807A426
_0807A402:
	adds r2, r4, #0
	adds r2, #0x21
	movs r1, #0
	movs r0, #1
	strb r0, [r2]
	strb r1, [r4, #0xa]
	strb r0, [r4, #0xb]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0807A426:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0807A430: .4byte 0x0001FFFF
_0807A434: .4byte 0xFFE00000

	thumb_func_start sub_0807A438
sub_0807A438: @ 0x0807A438
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r1, [r4, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0807A464
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	ldr r2, _0807A484 @ =0xFFE80000
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
_0807A464:
	ldrb r0, [r4, #0xd]
	bl sub_0806D518
	cmp r0, #0
	beq _0807A488
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x28
	orrs r1, r0
	strb r1, [r2]
	b _0807A4A4
	.align 2, 0
_0807A484: .4byte 0xFFE80000
_0807A488:
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
_0807A4A4:
	ldrb r1, [r4, #0xd]
	adds r0, r1, #0
	subs r0, #9
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x50
	bhi _0807A4BC
	ldr r0, [r4, #0x44]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r0, r2
	str r0, [r4, #0x44]
_0807A4BC:
	subs r0, r1, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0807A4D2
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0807A4D2:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807A4DC
sub_0807A4DC: @ 0x0807A4DC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldrh r0, [r5, #4]
	bl sub_08021530
	adds r3, r0, #0
	adds r7, r4, #0
	adds r7, #0x70
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
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
	movs r1, #0x34
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bgt _0807A566
	movs r0, #0x82
	bl sub_08013E18
	adds r0, r6, #0
	bl sub_080683BC
	movs r0, #0x6e
	bl sub_080D7910
	adds r0, r6, #0
	movs r1, #3
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
	movs r0, #0x5a
	strb r0, [r6, #0xd]
	movs r0, #2
	b _0807A586
_0807A566:
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	beq _0807A58A
	ldrb r0, [r7]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0807A58A
	adds r0, r6, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #3
_0807A586:
	strb r0, [r6, #0xa]
	strb r4, [r6, #0xb]
_0807A58A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0807A590
sub_0807A590: @ 0x0807A590
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x34
	adds r5, r0, #0
	ldr r6, [r5, #0x14]
	add r4, sp, #0x10
	ldr r1, _0807A648 @ =0x08118E5C
	adds r0, r4, #0
	movs r2, #0x24
	bl memcpy
	ldrb r0, [r5, #0xa]
	mov r8, r4
	cmp r0, #0
	beq _0807A5B2
	b _0807A7AA
_0807A5B2:
	cmp r6, #0
	bne _0807A5B8
	b _0807A7A2
_0807A5B8:
	ldr r0, [r6]
	cmp r0, #0
	bne _0807A5C0
	b _0807A7A2
_0807A5C0:
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x17
	beq _0807A5CC
	b _0807A7A2
_0807A5CC:
	adds r4, r6, #0
	adds r4, #0x58
	ldrb r0, [r4]
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
	adds r0, r6, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r1, #0x5a
	adds r1, r1, r5
	mov ip, r1
	movs r1, #0x78
	ands r1, r0
	mov r0, ip
	ldrb r2, [r0]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	ldrb r0, [r4]
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r2, r5, #0
	adds r2, #0x42
	strh r0, [r2]
	adds r0, r6, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807A64C
	adds r1, r5, #0
	adds r1, #0x4a
	ldrh r0, [r2]
	ldrh r1, [r1]
	subs r0, r0, r1
	b _0807A656
	.align 2, 0
_0807A648: .4byte 0x08118E5C
_0807A64C:
	adds r0, r5, #0
	adds r0, #0x4a
	ldrh r0, [r0]
	ldrh r1, [r2]
	adds r0, r0, r1
_0807A656:
	strh r0, [r2]
	adds r0, r6, #0
	adds r0, #0x21
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r7, r0, #0
	cmp r1, #1
	beq _0807A694
	cmp r1, #1
	bgt _0807A670
	cmp r1, #0
	beq _0807A67E
	b _0807A678
_0807A670:
	cmp r1, #2
	beq _0807A6DE
	cmp r1, #3
	beq _0807A73E
_0807A678:
	adds r2, r5, #0
	adds r2, #0x20
	b _0807A77A
_0807A67E:
	adds r2, r5, #0
	adds r2, #0x65
	movs r0, #0x15
	strb r0, [r2]
	strb r1, [r5, #0xb]
	ldrb r0, [r7]
	adds r1, r5, #0
	adds r1, #0x21
	strb r0, [r1]
	subs r2, #0x45
	b _0807A77A
_0807A694:
	ldr r0, [r6, #0x18]
	cmp r0, #0
	bge _0807A6A2
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r4, r0, #0
	b _0807A6A4
_0807A6A2:
	asrs r4, r0, #0x10
_0807A6A4:
	adds r2, r5, #0
	adds r2, #0x20
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r1, r0, #3
	subs r1, r1, r0
	subs r4, r4, r1
	adds r0, r5, #0
	adds r0, #0x21
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r3, r0, #0
	cmp r1, #2
	bne _0807A6CA
	movs r0, #1
	strb r0, [r5, #0xb]
_0807A6CA:
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _0807A726
	cmp r4, #0
	blt _0807A71E
	movs r0, #1
	strb r0, [r5, #0xb]
	ldrb r0, [r7]
	strb r0, [r3]
	b _0807A72C
_0807A6DE:
	ldr r0, [r6, #0x18]
	cmp r0, #0
	bge _0807A6EC
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r4, r0, #0
	b _0807A6EE
_0807A6EC:
	asrs r4, r0, #0x10
_0807A6EE:
	adds r2, r5, #0
	adds r2, #0x20
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r1, r0, #3
	subs r1, r1, r0
	subs r4, r4, r1
	adds r0, r5, #0
	adds r0, #0x21
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r3, r0, #0
	cmp r1, #1
	bne _0807A712
	strb r1, [r5, #0xb]
_0807A712:
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _0807A726
	subs r0, r4, #1
	cmp r0, #0x15
	bls _0807A722
_0807A71E:
	movs r4, #0
	b _0807A72C
_0807A722:
	movs r0, #1
	strb r0, [r5, #0xb]
_0807A726:
	cmp r4, #0
	bge _0807A72C
	adds r4, #0x24
_0807A72C:
	mov r1, r8
	adds r0, r1, r4
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x65
	strb r0, [r1]
	ldrb r0, [r7]
	strb r0, [r3]
	b _0807A77A
_0807A73E:
	ldr r0, [r6, #0x18]
	cmp r0, #0
	bge _0807A74C
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r4, r0, #0
	b _0807A74E
_0807A74C:
	asrs r4, r0, #0x10
_0807A74E:
	adds r2, r5, #0
	adds r2, #0x20
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r1, r0, #3
	subs r1, r1, r0
	subs r4, r4, r1
	cmp r4, #0
	bge _0807A768
	adds r4, #0x24
_0807A768:
	mov r1, r8
	adds r0, r1, r4
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x65
	strb r0, [r1]
	ldrb r0, [r7]
	subs r1, #0x44
	strb r0, [r1]
_0807A77A:
	ldrb r1, [r2]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0807A790
	adds r1, r5, #0
	adds r1, #0x65
	ldrb r0, [r1]
	adds r0, #4
	strb r0, [r1]
_0807A790:
	ldrb r0, [r6, #0xa]
	cmp r0, #2
	bne _0807A83C
	movs r0, #0
	strb r2, [r5, #0xa]
	strb r0, [r5, #0xb]
	movs r0, #0x5a
	strb r0, [r5, #0xd]
	b _0807A83C
_0807A7A2:
	adds r0, r5, #0
	bl EntityDelete
	b _0807A83C
_0807A7AA:
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _0807A7C0
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_0807A7C0:
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
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0807A7FA
	ldrb r1, [r5, #0xd]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _0807A81C
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0x16
	b _0807A822
_0807A7FA:
	cmp r0, #4
	bne _0807A818
	ldrb r1, [r5, #0xd]
	movs r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _0807A810
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0x16
	b _0807A822
_0807A810:
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0x15
	b _0807A822
_0807A818:
	cmp r0, #0
	bne _0807A824
_0807A81C:
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0x17
_0807A822:
	strb r0, [r1]
_0807A824:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0807A83C
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0807A83C:
	add sp, #0x34
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0807A848
sub_0807A848: @ 0x0807A848
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _0807A8C0 @ =sub_0807A900
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0807A8F0
	str r6, [r4, #0x40]
	str r7, [r4, #0x44]
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
	ldr r0, _0807A8C4 @ =0x081CBF84
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0807A8C8 @ =0x08217464
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	ldrb r0, [r5, #0xd]
	cmp r0, #0x80
	beq _0807A8CC
	mov r0, r8
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _0807A8DC
	.align 2, 0
_0807A8C0: .4byte sub_0807A900
_0807A8C4: .4byte 0x081CBF84
_0807A8C8: .4byte 0x08217464
_0807A8CC:
	mov r0, r8
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0807A8DC:
	ldr r0, [sp, #0x18]
	strb r0, [r4, #0xd]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0807A8FC @ =sub_0803B9D0
	str r0, [r4, #4]
_0807A8F0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807A8FC: .4byte sub_0803B9D0

	thumb_func_start sub_0807A900
sub_0807A900: @ 0x0807A900
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803F17C
	ldrb r1, [r4, #0xd]
	lsls r2, r1, #0x18
	lsrs r0, r2, #0x18
	cmp r0, #0x80
	bne _0807A928
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0807A938
	adds r0, r4, #0
	bl EntityDelete
	b _0807A938
_0807A928:
	adds r0, r1, #0
	adds r0, #0xff
	strb r0, [r4, #0xd]
	cmp r2, #0
	bgt _0807A938
	adds r0, r4, #0
	bl EntityDelete
_0807A938:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807A940
sub_0807A940: @ 0x0807A940
	push {lr}
	sub sp, #0x10
	mov r2, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	movs r3, #0
	strh r1, [r2]
	movs r1, #0x80
	lsls r1, r1, #2
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

	thumb_func_start sub_0807A970
sub_0807A970: @ 0x0807A970
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0807A9A4 @ =0x081CBF84
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _0807A9B4
	ldr r0, _0807A9A8 @ =0x0820A608
	movs r1, #0
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _0807A9AC @ =0x08217464
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _0807A9B0 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _0807A9B6
	.align 2, 0
_0807A9A4: .4byte 0x081CBF84
_0807A9A8: .4byte 0x0820A608
_0807A9AC: .4byte 0x08217464
_0807A9B0: .4byte sub_0803B9D0
_0807A9B4:
	movs r0, #0
_0807A9B6:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0807A9BC
sub_0807A9BC: @ 0x0807A9BC
	bx lr
	.align 2, 0

	thumb_func_start sub_0807A9C0
sub_0807A9C0: @ 0x0807A9C0
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

	thumb_func_start sub_0807A9EC
sub_0807A9EC: @ 0x0807A9EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	beq _0807AA38
	cmp r0, #1
	beq _0807AA22
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
	beq _0807AA22
	adds r0, r5, #0
	bl sub_08021924
_0807AA22:
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _0807AA38
	movs r1, #0
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r0, [r5, #0xd]
	strh r1, [r5, #0x34]
_0807AA38:
	adds r0, r5, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _0807AA54
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bne _0807AA4A
	b _0807ABDA
_0807AA4A:
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
	b _0807ABDA
_0807AA54:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _0807AA76
	cmp r0, #1
	bgt _0807AA64
	cmp r0, #0
	beq _0807AA6E
	b _0807AB94
_0807AA64:
	cmp r0, #2
	beq _0807AAB0
	cmp r0, #3
	beq _0807AABE
	b _0807AB94
_0807AA6E:
	adds r0, r5, #0
	bl sub_0807AD28
	b _0807AB94
_0807AA76:
	adds r0, r5, #0
	bl sub_0806AEAC
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0807AA8C
	b _0807AB94
_0807AA8C:
	ldr r1, [r5, #0x18]
	cmp r1, #0
	bne _0807AA94
	b _0807AB94
_0807AA94:
	ldr r0, [r1]
	cmp r0, #0
	beq _0807AB94
	adds r0, r1, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #1
	bne _0807AB94
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq _0807AB94
	subs r0, #1
	str r0, [r1, #0x18]
	b _0807AB94
_0807AAB0:
	adds r0, r5, #0
	bl sub_0807B034
	adds r0, r5, #0
	bl sub_0803F17C
	b _0807ABDA
_0807AABE:
	bl RandomNumberGenerator
	movs r1, #0x1f
	ands r1, r0
	cmp r1, #0
	beq _0807AACC
	b _0807ABDA
_0807AACC:
	movs r0, #0x30
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x18]
	cmp r0, r1
	blt _0807AAD8
	b _0807ABDA
_0807AAD8:
	ldr r2, _0807AB80 @ =EntityUpdateNothing
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0807ABDA
	ldr r0, [r5, #0x18]
	adds r0, #1
	str r0, [r5, #0x18]
	adds r7, r4, #0
	adds r7, #0x42
	movs r1, #0x59
	adds r1, r1, r4
	mov r8, r1
	movs r2, #0x37
	adds r2, r2, r4
	mov sl, r2
	adds r6, r5, #0
	adds r6, #0x36
	movs r0, #0x36
	adds r0, r0, r4
	mov sb, r0
_0807AB08:
	bl RandomNumberGenerator
	movs r1, #0xf0
	bl __umodsi3
	strh r0, [r7]
	ldr r0, _0807AB84 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0807AB88 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r4, #0x40]
	subs r1, r1, r0
	cmp r1, #0
	bge _0807AB2A
	rsbs r1, r1, #0
_0807AB2A:
	movs r0, #0x80
	lsls r0, r0, #0xe
	cmp r1, r0
	ble _0807AB08
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	mov r2, r8
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r1, #0
	mov r0, sl
	strb r1, [r0]
	ldrb r0, [r6]
	mov r2, sb
	strb r0, [r2]
	strh r1, [r4, #0x32]
	ldr r0, _0807AB8C @ =sub_0803B9D0
	str r0, [r4, #4]
	ldr r2, _0807AB90 @ =0x080E9644
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
	bl sub_0807ABEC
	str r5, [r4, #0x18]
	b _0807ABDA
	.align 2, 0
_0807AB80: .4byte EntityUpdateNothing
_0807AB84: .4byte gEwramData
_0807AB88: .4byte 0x00013110
_0807AB8C: .4byte sub_0803B9D0
_0807AB90: .4byte 0x080E9644
_0807AB94:
	adds r6, r5, #0
	adds r6, #0x65
	ldrb r4, [r6]
	adds r0, r5, #0
	bl sub_0803F17C
	ldrb r6, [r6]
	cmp r4, r6
	beq _0807ABAC
	adds r0, r5, #0
	bl sub_0806B1FC
_0807ABAC:
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _0807ABC8
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _0807ABBC
	cmp r0, #3
	bne _0807ABC8
_0807ABBC:
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	b _0807ABD2
_0807ABC8:
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
_0807ABD2:
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_0806E314
_0807ABDA:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807ABEC
sub_0807ABEC: @ 0x0807ABEC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r5, _0807AC28 @ =gEwramData
	ldr r0, [r5]
	ldr r1, _0807AC2C @ =0x0000A094
	adds r7, r0, r1
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0807AC30
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
	adds r0, r4, #0
	bl sub_0806AF98
	b _0807AD14
	.align 2, 0
_0807AC28: .4byte gEwramData
_0807AC2C: .4byte 0x0000A094
_0807AC30:
	adds r0, r4, #0
	bl sub_0807B404
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807AC44
	adds r0, r4, #0
	bl EntityDelete
	b _0807AD14
_0807AC44:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r0, [r5]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807AC7C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #2
	strb r0, [r4, #0xa]
	b _0807AD14
_0807AC7C:
	adds r0, r4, #0
	bl sub_0806D260
	cmp r0, #1
	ble _0807AC9C
	ldr r2, _0807AC94 @ =sub_0807B450
	ldr r3, _0807AC98 @ =sub_0807B0DC
	adds r0, r4, #0
	movs r1, #8
	bl sub_080427B8
	b _0807ACA8
	.align 2, 0
_0807AC94: .4byte sub_0807B450
_0807AC98: .4byte sub_0807B0DC
_0807AC9C:
	ldr r2, _0807AD1C @ =sub_0807B450
	ldr r3, _0807AD20 @ =sub_0807B0DC
	adds r0, r4, #0
	movs r1, #8
	bl sub_0804277C
_0807ACA8:
	adds r0, r4, #0
	bl sub_0806B1FC
	ldr r6, [r4, #0x44]
	adds r0, r4, #0
	bl sub_0806AF98
	movs r5, #0
	strb r5, [r4, #0xa]
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
	ldrh r1, [r7, #6]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	ldrh r7, [r7, #0xa]
	adds r1, r1, r7
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D104
	cmp r0, #0
	beq _0807AD02
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xd]
	strh r5, [r4, #0x34]
_0807AD02:
	ldr r0, _0807AD24 @ =0xFFF80000
	adds r1, r6, r0
	ldr r0, [r4, #0x44]
	cmp r0, r1
	bgt _0807AD14
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xd]
	strh r5, [r4, #0x34]
_0807AD14:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807AD1C: .4byte sub_0807B450
_0807AD20: .4byte sub_0807B0DC
_0807AD24: .4byte 0xFFF80000

	thumb_func_start sub_0807AD28
sub_0807AD28: @ 0x0807AD28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	ldr r0, _0807AD50 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0807AD54 @ =0x0000A094
	adds r1, r1, r0
	mov sb, r1
	ldrb r0, [r6, #0xb]
	cmp r0, #1
	beq _0807ADDC
	cmp r0, #1
	bgt _0807AD58
	cmp r0, #0
	beq _0807AD66
	b _0807B022
	.align 2, 0
_0807AD50: .4byte gEwramData
_0807AD54: .4byte 0x0000A094
_0807AD58:
	cmp r0, #2
	bne _0807AD5E
	b _0807AFD8
_0807AD5E:
	cmp r0, #3
	bne _0807AD64
	b _0807B00A
_0807AD64:
	b _0807B022
_0807AD66:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _0807AD78
	b _0807B022
_0807AD78:
	strb r4, [r6, #0xb]
	bl RandomNumberGenerator
	ands r0, r4
	cmp r0, #0
	beq _0807AD92
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _0807AD9E
_0807AD92:
	adds r0, r6, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0807AD9E:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807ADB2
	movs r0, #0x80
	lsls r0, r0, #0xa
	b _0807ADB4
_0807ADB2:
	ldr r0, _0807ADD4 @ =0xFFFE0000
_0807ADB4:
	str r0, [r6, #0x48]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r6, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r6, #0x54]
	bl RandomNumberGenerator
	ldr r1, _0807ADD8 @ =0x000001FF
	ands r1, r0
	movs r2, #0x96
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r6, #0x1c]
	b _0807B022
	.align 2, 0
_0807ADD4: .4byte 0xFFFE0000
_0807ADD8: .4byte 0x000001FF
_0807ADDC:
	adds r0, r6, #0
	adds r0, #0x6f
	ldrb r1, [r0]
	str r0, [sp, #4]
	cmp r1, #0
	bne _0807AE0A
	subs r0, #0x17
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807ADFA
	movs r0, #0x80
	lsls r0, r0, #0xa
	b _0807ADFC
_0807ADFA:
	ldr r0, _0807AE50 @ =0xFFFE0000
_0807ADFC:
	str r0, [r6, #0x48]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r6, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r6, #0x54]
_0807AE0A:
	adds r0, r6, #0
	movs r1, #4
	bl sub_0806D490
	ldr r7, [r6, #0x40]
	ldr r5, [r6, #0x44]
	mov r8, r5
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _0807AE54 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r6, #0
	bl sub_08069A00
	adds r3, r0, #0
	movs r0, #3
	ands r3, r0
	cmp r3, #0
	beq _0807AE58
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r3, #0
	strb r0, [r6, #0xb]
	adds r2, r6, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	str r7, [r6, #0x40]
	b _0807AEA2
	.align 2, 0
_0807AE50: .4byte 0xFFFE0000
_0807AE54: .4byte 0xFFE00000
_0807AE58:
	movs r0, #0x42
	adds r0, r0, r6
	mov sl, r0
	ldrh r0, [r0]
	mov r1, sb
	ldrh r1, [r1, #6]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r6, #0
	adds r4, #0x46
	ldrh r1, [r4]
	mov r2, sb
	ldrh r2, [r2, #0xa]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r3, [sp, #8]
	bl sub_0806D104
	mov ip, r0
	mov sb, sl
	mov sl, r4
	ldr r3, [sp, #8]
	cmp r0, #0
	beq _0807AEA8
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	adds r2, r6, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	str r7, [r6, #0x40]
	mov r5, r8
_0807AEA2:
	str r5, [r6, #0x44]
	strb r3, [r6, #0xd]
	b _0807B022
_0807AEA8:
	ldr r0, [r6, #0x1c]
	adds r1, r0, #0
	subs r0, #1
	str r0, [r6, #0x1c]
	cmp r1, #0
	bgt _0807AED2
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	adds r2, r6, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	str r7, [r6, #0x40]
	mov r0, r8
	str r0, [r6, #0x44]
	mov r1, ip
	strb r1, [r6, #0xd]
	b _0807B022
_0807AED2:
	adds r0, r6, #0
	adds r0, #0x6e
	ldrb r1, [r0]
	adds r5, r6, #0
	adds r5, #0x58
	adds r4, r0, #0
	cmp r1, #0
	bne _0807AF44
	movs r0, #0x14
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _0807AF3E
	movs r0, #1
	strb r0, [r6, #0x14]
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #4
	bne _0807AF18
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	movs r7, #0x90
	lsls r7, r7, #0xc
	cmp r0, #0
	beq _0807AF08
	ldr r7, _0807AF10 @ =0xFFF70000
_0807AF08:
	ldr r2, _0807AF14 @ =0xFFE80000
	mov r8, r2
	b _0807AF2C
	.align 2, 0
_0807AF10: .4byte 0xFFF70000
_0807AF14: .4byte 0xFFE80000
_0807AF18:
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	ldr r7, _0807AF9C @ =0xFFF70000
	cmp r0, #0
	beq _0807AF28
	movs r7, #0x90
	lsls r7, r7, #0xc
_0807AF28:
	ldr r0, _0807AFA0 @ =0xFFEA0000
	mov r8, r0
_0807AF2C:
	ldr r0, [r6, #0x40]
	adds r7, r7, r0
	ldr r0, [r6, #0x44]
	add r8, r0
	adds r0, r6, #0
	adds r1, r7, #0
	mov r2, r8
	bl sub_0807B1CC
_0807AF3E:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0807AF4A
_0807AF44:
	ldrb r0, [r4]
	cmp r0, #2
	bne _0807AF66
_0807AF4A:
	movs r0, #0x15
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _0807AF66
	movs r0, #1
	strb r0, [r6, #0x15]
	ldr r7, [r6, #0x40]
	ldr r1, [r6, #0x44]
	mov r8, r1
	adds r0, r6, #0
	adds r1, r7, #0
	mov r2, r8
	bl sub_0807B33C
_0807AF66:
	ldrb r0, [r4]
	cmp r0, #1
	beq _0807AF70
	cmp r0, #3
	bne _0807AF76
_0807AF70:
	movs r0, #0
	strb r0, [r6, #0x14]
	strb r0, [r6, #0x15]
_0807AF76:
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807AFA4
	mov r2, sb
	movs r5, #0
	ldrsh r0, [r2, r5]
	mov r2, sl
	ldrh r1, [r2]
	subs r1, #0x20
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x50
	movs r3, #0x40
	bl sub_0806CFFC
	b _0807AFC0
	.align 2, 0
_0807AF9C: .4byte 0xFFF70000
_0807AFA0: .4byte 0xFFEA0000
_0807AFA4:
	mov r5, sb
	ldrh r0, [r5]
	subs r0, #0x50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r2, sl
	ldrh r1, [r2]
	subs r1, #0x20
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x50
	movs r3, #0x40
	bl sub_0806CFFC
_0807AFC0:
	cmp r0, #0
	beq _0807B022
	ldr r0, [r6, #0x1c]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807B022
	ldr r5, [sp, #4]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	b _0807B022
_0807AFD8:
	adds r2, r6, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _0807B022
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #0
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	b _0807B022
_0807B00A:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0807B022
	movs r0, #0
	strb r2, [r6, #0xa]
	strb r2, [r6, #0xd]
	strh r0, [r6, #0x34]
_0807B022:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807B034
sub_0807B034: @ 0x0807B034
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0807B044
	cmp r0, #1
	beq _0807B074
	b _0807B0CC
_0807B044:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0807B0CC
	strb r5, [r4, #0xb]
	bl RandomNumberGenerator
	ands r0, r5
	cmp r0, #0
	beq _0807B066
	adds r0, r4, #0
	movs r1, #1
	b _0807B06A
_0807B066:
	adds r0, r4, #0
	movs r1, #4
_0807B06A:
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _0807B0CC
_0807B074:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0807B0CC
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #4
	bne _0807B0A8
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	movs r1, #0x90
	lsls r1, r1, #0xc
	cmp r0, #0
	beq _0807B09C
	ldr r1, _0807B0A0 @ =0xFFF70000
_0807B09C:
	ldr r2, _0807B0A4 @ =0xFFE80000
	b _0807B0BE
	.align 2, 0
_0807B0A0: .4byte 0xFFF70000
_0807B0A4: .4byte 0xFFE80000
_0807B0A8:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	ldr r1, _0807B0D4 @ =0xFFF90000
	cmp r0, #0
	beq _0807B0BC
	movs r1, #0xe0
	lsls r1, r1, #0xb
_0807B0BC:
	ldr r2, _0807B0D8 @ =0xFFEA0000
_0807B0BE:
	ldr r0, [r4, #0x40]
	adds r1, r1, r0
	ldr r0, [r4, #0x44]
	adds r2, r2, r0
	adds r0, r4, #0
	bl sub_0807B1CC
_0807B0CC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807B0D4: .4byte 0xFFF90000
_0807B0D8: .4byte 0xFFEA0000

	thumb_func_start sub_0807B0DC
sub_0807B0DC: @ 0x0807B0DC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
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
	bgt _0807B1B0
	adds r0, r6, #0
	bl sub_080683BC
	movs r0, #0x70
	bl sub_080D7910
	adds r0, r6, #0
	movs r1, #3
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
	movs r0, #1
	strb r0, [r6, #0xa]
	movs r0, #0
	strb r0, [r6, #0xb]
	bl RandomNumberGenerator
	ldr r1, _0807B1BC @ =0x0007FFFF
	mov r8, r1
	ands r0, r1
	ldr r5, _0807B1C0 @ =0xFFFC0000
	adds r7, r0, r5
	bl RandomNumberGenerator
	ldr r4, _0807B1C4 @ =0x0003FFFF
	ands r0, r4
	ldr r1, [r6, #0x40]
	adds r7, r7, r1
	ldr r1, _0807B1C8 @ =0xFFE60000
	adds r0, r0, r1
	ldr r1, [r6, #0x44]
	adds r2, r0, r1
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_0807B258
	bl RandomNumberGenerator
	mov r1, r8
	ands r0, r1
	adds r7, r0, r5
	bl RandomNumberGenerator
	ands r0, r4
	ldr r1, [r6, #0x40]
	adds r7, r7, r1
	ldr r1, _0807B1C8 @ =0xFFE60000
	adds r0, r0, r1
	ldr r1, [r6, #0x44]
	adds r2, r0, r1
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_0807B258
_0807B1B0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807B1BC: .4byte 0x0007FFFF
_0807B1C0: .4byte 0xFFFC0000
_0807B1C4: .4byte 0x0003FFFF
_0807B1C8: .4byte 0xFFE60000

	thumb_func_start sub_0807B1CC
sub_0807B1CC: @ 0x0807B1CC
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r0, _0807B248 @ =sub_0807B310
	bl sub_0806DFF8
	adds r4, r0, #0
	cmp r4, #0
	beq _0807B242
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	adds r0, r7, #0
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
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldr r0, _0807B24C @ =0x081CBF8C
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0807B250 @ =0x082178B8
	adds r0, r7, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0xd
	strb r0, [r1]
	movs r0, #0x1e
	strb r0, [r4, #0xd]
	movs r0, #0xa0
	lsls r0, r0, #4
	str r0, [r4, #0x54]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0807B254 @ =sub_0803B9D0
	str r0, [r4, #4]
_0807B242:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807B248: .4byte sub_0807B310
_0807B24C: .4byte 0x081CBF8C
_0807B250: .4byte 0x082178B8
_0807B254: .4byte sub_0803B9D0

	thumb_func_start sub_0807B258
sub_0807B258: @ 0x0807B258
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r2, _0807B2F4 @ =sub_0807B3E4
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	beq _0807B2EC
	str r6, [r5, #0x40]
	str r7, [r5, #0x44]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x1c]
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
	adds r0, r4, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldr r0, _0807B2F8 @ =0x081CBF8C
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0807B2FC @ =0x082178B8
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r5, #0
	bl sub_0803B924
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0xd
	strb r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r5, #0x54]
	bl RandomNumberGenerator
	ldr r1, _0807B300 @ =0x0001FFFF
	ands r1, r0
	ldr r4, _0807B304 @ =0xFFFF0000
	adds r1, r1, r4
	str r1, [r5, #0x48]
	bl RandomNumberGenerator
	ldr r1, _0807B308 @ =0x0000FFFF
	ands r1, r0
	subs r4, r4, r1
	str r4, [r5, #0x4c]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0807B30C @ =sub_0803B9D0
	str r0, [r5, #4]
_0807B2EC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807B2F4: .4byte sub_0807B3E4
_0807B2F8: .4byte 0x081CBF8C
_0807B2FC: .4byte 0x082178B8
_0807B300: .4byte 0x0001FFFF
_0807B304: .4byte 0xFFFF0000
_0807B308: .4byte 0x0000FFFF
_0807B30C: .4byte sub_0803B9D0

	thumb_func_start sub_0807B310
sub_0807B310: @ 0x0807B310
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #0xc
	bl sub_0806D384
	adds r0, r4, #0
	bl sub_0806D3CC
	ldrb r0, [r4, #0xd]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0807B336
	adds r0, r4, #0
	bl EntityDelete
_0807B336:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0807B33C
sub_0807B33C: @ 0x0807B33C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	ldr r2, _0807B3B8 @ =sub_0807B3C8
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	beq _0807B3B2
	str r4, [r5, #0x40]
	str r7, [r5, #0x44]
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
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	movs r4, #0
	strb r0, [r1]
	ldr r0, _0807B3BC @ =0x081CBF8C
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0807B3C0 @ =0x082178B8
	adds r0, r6, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r5, #0
	bl sub_0803B924
	adds r0, r5, #0
	adds r0, #0x65
	strb r4, [r0]
	movs r0, #0x78
	str r0, [r5, #0x1c]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0807B3C4 @ =sub_0803B9D0
	str r0, [r5, #4]
_0807B3B2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807B3B8: .4byte sub_0807B3C8
_0807B3BC: .4byte 0x081CBF8C
_0807B3C0: .4byte 0x082178B8
_0807B3C4: .4byte sub_0803B9D0

	thumb_func_start sub_0807B3C8
sub_0807B3C8: @ 0x0807B3C8
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x1c]
	adds r1, r0, #0
	subs r0, #1
	str r0, [r2, #0x1c]
	cmp r1, #0
	bgt _0807B3DE
	adds r0, r2, #0
	bl EntityDelete
_0807B3DE:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807B3E4
sub_0807B3E4: @ 0x0807B3E4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #0xc
	bl sub_0806D3D8
	ldr r1, [r4, #0x44]
	ldr r0, [r4, #0x1c]
	cmp r1, r0
	ble _0807B3FE
	adds r0, r4, #0
	bl EntityDelete
_0807B3FE:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0807B404
sub_0807B404: @ 0x0807B404
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0807B438 @ =0x081CBF8C
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _0807B448
	ldr r0, _0807B43C @ =0x0820A62C
	movs r1, #0
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _0807B440 @ =0x082178B8
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _0807B444 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _0807B44A
	.align 2, 0
_0807B438: .4byte 0x081CBF8C
_0807B43C: .4byte 0x0820A62C
_0807B440: .4byte 0x082178B8
_0807B444: .4byte sub_0803B9D0
_0807B448:
	movs r0, #0
_0807B44A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0807B450
sub_0807B450: @ 0x0807B450
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

	thumb_func_start sub_0807B47C
sub_0807B47C: @ 0x0807B47C
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0807B4B4
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _0807B496
	b _0807B5C8
_0807B496:
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
	beq _0807B4B4
	adds r0, r4, #0
	bl sub_08021924
_0807B4B4:
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _0807B4CC
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	b _0807B4D8
_0807B4CC:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r2, [r0]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
_0807B4D8:
	strb r1, [r0]
	adds r5, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0807B4E8
	adds r0, r4, #0
	bl sub_0806AE54
_0807B4E8:
	adds r0, r4, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _0807B4F8
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _0807B50C
_0807B4F8:
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807B516
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _0807B516
	cmp r0, #2
	beq _0807B516
_0807B50C:
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
	b _0807B5C8
_0807B516:
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bhi _0807B5BC
	lsls r0, r0, #2
	ldr r1, _0807B528 @ =_0807B52C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807B528: .4byte _0807B52C
_0807B52C: @ jump table
	.4byte _0807B540 @ case 0
	.4byte _0807B548 @ case 1
	.4byte _0807B550 @ case 2
	.4byte _0807B5B6 @ case 3
	.4byte _0807B5A8 @ case 4
_0807B540:
	adds r0, r4, #0
	bl sub_0807B680
	b _0807B5BC
_0807B548:
	adds r0, r4, #0
	bl sub_0807BA20
	b _0807B5BC
_0807B550:
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	movs r0, #0
	str r0, [r4, #0x48]
	str r0, [r4, #0x50]
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _0807B5A4 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08069A00
	ldrb r0, [r4, #0xd]
	bl sub_0806D518
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #5
	ldrb r2, [r5]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0807B5BC
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	b _0807B5BC
	.align 2, 0
_0807B5A4: .4byte 0xFFE00000
_0807B5A8:
	adds r0, r4, #0
	bl sub_0807BD70
	adds r0, r4, #0
	bl sub_0803F17C
	b _0807B5C8
_0807B5B6:
	adds r0, r4, #0
	bl sub_0807C014
_0807B5BC:
	adds r0, r4, #0
	bl sub_0806DF20
	adds r0, r4, #0
	bl sub_0806E314
_0807B5C8:
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0807B5D0
sub_0807B5D0: @ 0x0807B5D0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0807BDD0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807B5E6
	adds r0, r4, #0
	bl EntityDelete
	b _0807B672
_0807B5E6:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r0, _0807B614 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807B618
	movs r0, #4
	strb r0, [r4, #0xa]
	b _0807B672
	.align 2, 0
_0807B614: .4byte gEwramData
_0807B618:
	adds r0, r4, #0
	bl sub_0806D260
	cmp r0, #1
	ble _0807B638
	ldr r2, _0807B630 @ =sub_0807C068
	ldr r3, _0807B634 @ =sub_0807BE60
	adds r0, r4, #0
	movs r1, #8
	bl sub_080427B8
	b _0807B644
	.align 2, 0
_0807B630: .4byte sub_0807C068
_0807B634: .4byte sub_0807BE60
_0807B638:
	ldr r2, _0807B678 @ =sub_0807C068
	ldr r3, _0807B67C @ =sub_0807BE60
	adds r0, r4, #0
	movs r1, #8
	bl sub_0804277C
_0807B644:
	adds r0, r4, #0
	bl sub_0806B1FC
	adds r0, r4, #0
	bl sub_0806AF98
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
	movs r0, #0
	strb r0, [r4, #0xa]
	str r4, [r4, #0x14]
_0807B672:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0807B678: .4byte sub_0807C068
_0807B67C: .4byte sub_0807BE60

	thumb_func_start sub_0807B680
sub_0807B680: @ 0x0807B680
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #6
	bls _0807B68E
	b _0807BA18
_0807B68E:
	lsls r0, r0, #2
	ldr r1, _0807B698 @ =_0807B69C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807B698: .4byte _0807B69C
_0807B69C: @ jump table
	.4byte _0807B6B8 @ case 0
	.4byte _0807B71C @ case 1
	.4byte _0807B7BC @ case 2
	.4byte _0807B868 @ case 3
	.4byte _0807BA18 @ case 4
	.4byte _0807B880 @ case 5
	.4byte _0807B94E @ case 6
_0807B6B8:
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x78
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x30
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xf0
	movs r3, #0x60
	bl sub_0806CFFC
	cmp r0, #0
	bne _0807B6E8
	adds r0, r5, #0
	bl sub_0806D54C
	cmp r0, #0
	bne _0807B6E8
	b _0807BA18
_0807B6E8:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r4, #0
	strb r0, [r5, #0xb]
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
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	strb r4, [r5, #0xd]
	b _0807BA18
_0807B71C:
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bne _0807B752
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _0807B740
	ldr r0, _0807B73C @ =0x000001C9
	bl sub_080D7910
	b _0807B752
	.align 2, 0
_0807B73C: .4byte 0x000001C9
_0807B740:
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x3f
	bhi _0807B752
	ldr r0, _0807B7A0 @ =0x000001C9
	bl sub_080D7910
_0807B752:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807B762
	b _0807BA18
_0807B762:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	bl sub_0806CF2C
	adds r4, r5, #0
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
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807B7A4
	movs r0, #0x80
	lsls r0, r0, #9
	b _0807B7A6
	.align 2, 0
_0807B7A0: .4byte 0x000001C9
_0807B7A4:
	ldr r0, _0807B7B8 @ =0xFFFF0000
_0807B7A6:
	str r0, [r5, #0x48]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	movs r0, #0
	b _0807BA16
	.align 2, 0
_0807B7B8: .4byte 0xFFFF0000
_0807B7BC:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bls _0807B808
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
	beq _0807B7F4
	movs r0, #0x80
	lsls r0, r0, #9
	b _0807B7F6
_0807B7F4:
	ldr r0, _0807B860 @ =0xFFFF0000
_0807B7F6:
	str r0, [r5, #0x48]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	movs r0, #0
	strb r0, [r5, #0xd]
_0807B808:
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _0807B864 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	bl sub_08069A00
	movs r1, #4
	ands r1, r0
	cmp r1, #0
	bne _0807B826
	b _0807BA18
_0807B826:
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x28
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x30
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x50
	movs r3, #0x60
	bl sub_0806CFFC
	cmp r0, #0
	bne _0807B84C
	b _0807BA18
_0807B84C:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0807BA18
	.align 2, 0
_0807B860: .4byte 0xFFFF0000
_0807B864: .4byte 0xFFE00000
_0807B868:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0807B87A
	b _0807BA18
_0807B87A:
	movs r0, #0
	strb r2, [r5, #0xa]
	b _0807BA14
_0807B880:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r5, #0
	adds r4, #0x58
	cmp r0, #0x1d
	bls _0807B8AE
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
	movs r0, #0
	strb r0, [r5, #0xd]
_0807B8AE:
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807B8BE
	movs r0, #0x80
	lsls r0, r0, #8
	b _0807B8C0
_0807B8BE:
	ldr r0, _0807B914 @ =0xFFFF8000
_0807B8C0:
	str r0, [r5, #0x48]
	movs r7, #0x80
	lsls r7, r7, #9
	ldr r2, _0807B918 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08069A00
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x28
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x30
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x50
	movs r3, #0x60
	bl sub_0806CFFC
	adds r4, r0, #0
	cmp r4, #0
	beq _0807B91C
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807B90C
	b _0807BA12
_0807B90C:
	movs r0, #0
	movs r1, #6
	b _0807B9DC
	.align 2, 0
_0807B914: .4byte 0xFFFF8000
_0807B918: .4byte 0xFFE00000
_0807B91C:
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806B120
	adds r6, r0, #0
	cmp r6, #0
	beq _0807B932
	movs r0, #6
	strb r0, [r5, #0xb]
	strb r4, [r5, #0xd]
	b _0807B9E0
_0807B932:
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _0807BA18
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	strb r6, [r5, #0xb]
	b _0807BA18
_0807B94E:
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
	beq _0807B97C
	ldr r0, _0807B978 @ =0xFFFF8000
	b _0807B980
	.align 2, 0
_0807B978: .4byte 0xFFFF8000
_0807B97C:
	movs r0, #0x80
	lsls r0, r0, #8
_0807B980:
	str r0, [r5, #0x48]
	movs r7, #0x80
	lsls r7, r7, #9
	ldr r2, _0807B9C8 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08069A00
	adds r6, r5, #0
	adds r6, #0x42
	ldrh r0, [r6]
	subs r0, #0x3c
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r5, #0
	adds r4, #0x46
	ldrh r1, [r4]
	subs r1, #0x30
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x78
	movs r3, #0x60
	bl sub_0806CFFC
	adds r1, r0, #0
	cmp r1, #0
	bne _0807B9CC
	movs r0, #5
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
	b _0807B9E0
	.align 2, 0
_0807B9C8: .4byte 0xFFE00000
_0807B9CC:
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806B120
	cmp r0, #0
	beq _0807B9EA
	movs r0, #0
	movs r1, #5
_0807B9DC:
	strb r1, [r5, #0xb]
	strb r0, [r5, #0xd]
_0807B9E0:
	str r7, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	b _0807BA18
_0807B9EA:
	ldrh r0, [r6]
	subs r0, #0x28
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r4]
	subs r1, #0x30
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x50
	movs r3, #0x60
	bl sub_0806CFFC
	cmp r0, #0
	beq _0807BA18
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807BA18
_0807BA12:
	strb r1, [r5, #0xa]
_0807BA14:
	strb r0, [r5, #0xb]
_0807BA16:
	strb r0, [r5, #0xd]
_0807BA18:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0807BA20
sub_0807BA20: @ 0x0807BA20
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0xb
	bls _0807BA2E
	b _0807BD68
_0807BA2E:
	lsls r0, r0, #2
	ldr r1, _0807BA38 @ =_0807BA3C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807BA38: .4byte _0807BA3C
_0807BA3C: @ jump table
	.4byte _0807BA6C @ case 0
	.4byte _0807BAC8 @ case 1
	.4byte _0807BB46 @ case 2
	.4byte _0807BBC6 @ case 3
	.4byte _0807BD68 @ case 4
	.4byte _0807BD68 @ case 5
	.4byte _0807BD68 @ case 6
	.4byte _0807BD68 @ case 7
	.4byte _0807BD68 @ case 8
	.4byte _0807BD68 @ case 9
	.4byte _0807BC80 @ case 10
	.4byte _0807BCE0 @ case 11
_0807BA6C:
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
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
	bl sub_0806BD64
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bge _0807BAB2
	rsbs r2, r2, #0
_0807BAB2:
	cmp r2, #0x20
	ble _0807BAC8
	bl RandomNumberGenerator
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _0807BAC8
	movs r0, #0xa
	strb r0, [r4, #0xb]
	b _0807BD68
_0807BAC8:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0807BAD4
	b _0807BD68
_0807BAD4:
	movs r0, #0xe5
	lsls r0, r0, #1
	bl sub_080D7910
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bge _0807BAF8
	rsbs r2, r2, #0
_0807BAF8:
	cmp r2, #7
	bgt _0807BB04
	ldr r2, _0807BB00 @ =0xFFFF0000
	b _0807BB28
	.align 2, 0
_0807BB00: .4byte 0xFFFF0000
_0807BB04:
	cmp r2, #0xf
	bgt _0807BB10
	ldr r2, _0807BB0C @ =0xFFFF8000
	b _0807BB28
	.align 2, 0
_0807BB0C: .4byte 0xFFFF8000
_0807BB10:
	cmp r2, #0x1f
	bgt _0807BB1A
	movs r2, #0x80
	lsls r2, r2, #9
	b _0807BB28
_0807BB1A:
	cmp r2, #0x2f
	bgt _0807BB24
	movs r2, #0xd0
	lsls r2, r2, #0xa
	b _0807BB28
_0807BB24:
	movs r2, #0x80
	lsls r2, r2, #0xb
_0807BB28:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807BB3A
	str r2, [r4, #0x48]
	b _0807BB3E
_0807BB3A:
	rsbs r0, r2, #0
	str r0, [r4, #0x48]
_0807BB3E:
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x4c]
	b _0807BC78
_0807BB46:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #4
	bls _0807BB56
	movs r0, #0
	str r0, [r4, #0x48]
_0807BB56:
	adds r0, r4, #0
	movs r1, #8
	bl sub_0806D490
	movs r6, #0x80
	lsls r6, r6, #9
	ldr r2, _0807BBA8 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08069A00
	adds r1, r0, #0
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0807BBAC
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0807BBAC
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	bls _0807BB94
	b _0807BD2A
_0807BB94:
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _0807BBA4
	b _0807BD2A
_0807BBA4:
	b _0807BD4C
	.align 2, 0
_0807BBA8: .4byte 0xFFE00000
_0807BBAC:
	ldrh r0, [r5]
	cmp r0, #3
	beq _0807BBB4
	b _0807BD68
_0807BBB4:
	ldr r1, [r4, #0x40]
	ldr r2, [r4, #0x44]
	adds r0, r4, #0
	bl sub_0807BF1C
	movs r0, #0x85
	bl sub_080D7910
	b _0807BD68
_0807BBC6:
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
	cmp r1, #0
	beq _0807BBF4
	ldr r0, _0807BBF0 @ =0xFFFF8000
	b _0807BBF8
	.align 2, 0
_0807BBF0: .4byte 0xFFFF8000
_0807BBF4:
	movs r0, #0x80
	lsls r0, r0, #8
_0807BBF8:
	str r0, [r4, #0x48]
	movs r5, #0x80
	lsls r5, r5, #9
	ldr r2, _0807BC40 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08069A00
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x3c
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x30
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x78
	movs r3, #0x60
	bl sub_0806CFFC
	adds r1, r0, #0
	cmp r1, #0
	bne _0807BC44
	strb r1, [r4, #0xa]
	movs r0, #5
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xd]
	b _0807BC76
	.align 2, 0
_0807BC40: .4byte 0xFFE00000
_0807BC44:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806B120
	adds r2, r0, #0
	cmp r2, #0
	beq _0807BC5E
	movs r0, #0
	strb r0, [r4, #0xa]
	movs r1, #5
	strb r1, [r4, #0xb]
	strb r0, [r4, #0xd]
	b _0807BC76
_0807BC5E:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bhi _0807BC6E
	b _0807BD68
_0807BC6E:
	strb r2, [r4, #0xa]
	movs r0, #6
	strb r0, [r4, #0xb]
	strb r2, [r4, #0xd]
_0807BC76:
	str r5, [r4, #0x4c]
_0807BC78:
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	b _0807BD68
_0807BC80:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807BD68
	movs r0, #0xe5
	lsls r0, r0, #1
	bl sub_080D7910
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	movs r2, #0xa0
	lsls r2, r2, #9
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807BCB4
	str r2, [r4, #0x48]
	b _0807BCB8
_0807BCB4:
	rsbs r0, r2, #0
	str r0, [r4, #0x48]
_0807BCB8:
	ldr r0, _0807BCD8 @ =0xFFFE0000
	str r0, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _0807BCDC @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08069A00
	b _0807BD68
	.align 2, 0
_0807BCD8: .4byte 0xFFFE0000
_0807BCDC: .4byte 0xFFE00000
_0807BCE0:
	adds r5, r4, #0
	adds r5, #0x6e
	ldrb r0, [r5]
	cmp r0, #4
	bls _0807BCF6
	adds r2, r4, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_0807BCF6:
	movs r6, #0x80
	lsls r6, r6, #9
	ldr r2, _0807BD48 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08069A00
	adds r1, r0, #0
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0807BD52
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	bhi _0807BD2A
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _0807BD4C
_0807BD2A:
	movs r0, #0
	movs r1, #3
	strb r1, [r4, #0xb]
	strb r0, [r4, #0xd]
	str r6, [r4, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _0807BD68
	.align 2, 0
_0807BD48: .4byte 0xFFE00000
_0807BD4C:
	movs r0, #0
	strb r0, [r4, #0xb]
	b _0807BD68
_0807BD52:
	ldrh r0, [r5]
	cmp r0, #3
	bne _0807BD68
	ldr r1, [r4, #0x40]
	ldr r2, [r4, #0x44]
	adds r0, r4, #0
	bl sub_0807BF1C
	movs r0, #0x85
	bl sub_080D7910
_0807BD68:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0807BD70
sub_0807BD70: @ 0x0807BD70
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xb]
	cmp r1, #0
	beq _0807BD80
	cmp r1, #1
	beq _0807BDA2
	b _0807BDC8
_0807BD80:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x77
	bls _0807BDC8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0807BDC8
_0807BDA2:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _0807BDC8
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0
	strb r0, [r4, #0xb]
	bl RandomNumberGenerator
	movs r1, #0x1f
	ands r1, r0
	strb r1, [r4, #0xd]
_0807BDC8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807BDD0
sub_0807BDD0: @ 0x0807BDD0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _0807BDE8 @ =0x081CBF94
	movs r1, #0
	bl sub_0803B800
	adds r4, r0, #0
	cmp r4, #0
	bge _0807BDEC
	movs r0, #0
	b _0807BE56
	.align 2, 0
_0807BDE8: .4byte 0x081CBF94
_0807BDEC:
	ldr r0, _0807BE44 @ =0x0820A650
	movs r1, #0
	bl sub_08068264
	adds r2, r6, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _0807BE48 @ =0x08217D48
	ldrb r3, [r2]
	adds r0, r6, #0
	adds r2, r4, #0
	bl sub_0803B924
	adds r0, r6, #0
	bl sub_08002188
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r6, #0
	bl sub_080021A8
	adds r5, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080018D0
	adds r7, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001894
	cmp r0, #4
	bne _0807BE50
	adds r0, r7, #0
	subs r0, #0xc
	cmp r0, #1
	bhi _0807BE50
	ldr r0, _0807BE4C @ =sub_0806CCE8
	b _0807BE52
	.align 2, 0
_0807BE44: .4byte 0x0820A650
_0807BE48: .4byte 0x08217D48
_0807BE4C: .4byte sub_0806CCE8
_0807BE50:
	ldr r0, _0807BE5C @ =sub_0803B9D0
_0807BE52:
	str r0, [r6, #4]
	movs r0, #1
_0807BE56:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807BE5C: .4byte sub_0803B9D0

	thumb_func_start sub_0807BE60
sub_0807BE60: @ 0x0807BE60
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldrh r0, [r5, #4]
	bl sub_08021530
	adds r3, r0, #0
	adds r7, r4, #0
	adds r7, #0x70
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
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
	movs r1, #0x34
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bgt _0807BEEA
	adds r0, r6, #0
	bl sub_080683BC
	movs r0, #0xe6
	lsls r0, r0, #1
	bl sub_080D7910
	adds r0, r6, #0
	movs r1, #7
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
	movs r0, #0x46
	strb r0, [r6, #0xd]
	movs r0, #2
	strb r0, [r6, #0xa]
	strb r4, [r6, #0xb]
	b _0807BF16
_0807BEEA:
	ldrb r0, [r7]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0807BF16
	bl RandomNumberGenerator
	movs r1, #0xff
	ands r1, r0
	cmp r1, #0x3f
	bhi _0807BF16
	adds r0, r6, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #3
	strb r0, [r6, #0xa]
	strb r4, [r6, #0xb]
	strb r4, [r6, #0xd]
_0807BF16:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0807BF1C
sub_0807BF1C: @ 0x0807BF1C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r2, _0807BFD4 @ =sub_0807BFEC
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	ldr r0, _0807BFD8 @ =0x0E0CE8EC
	str r0, [sp]
	cmp r4, #0
	beq _0807BFCA
	str r6, [r4, #0x40]
	str r7, [r4, #0x44]
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
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _0807BFDC @ =0x081CBF94
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0807BFE0 @ =0x08217D48
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
	str r5, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x14
	strb r0, [r1]
	movs r0, #1
	str r0, [r4, #0x1c]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0807BFE4 @ =sub_0803B9D0
	str r0, [r4, #4]
	ldr r2, _0807BFE8 @ =sub_0807C068
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
	movs r0, #0xfd
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
_0807BFCA:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807BFD4: .4byte sub_0807BFEC
_0807BFD8: .4byte 0x0E0CE8EC
_0807BFDC: .4byte 0x081CBF94
_0807BFE0: .4byte 0x08217D48
_0807BFE4: .4byte sub_0803B9D0
_0807BFE8: .4byte sub_0807C068

	thumb_func_start sub_0807BFEC
sub_0807BFEC: @ 0x0807BFEC
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	ldr r0, [r4, #0x1c]
	adds r1, r0, #0
	subs r0, #1
	str r0, [r4, #0x1c]
	cmp r1, #0
	bgt _0807C00C
	adds r0, r4, #0
	bl EntityDelete
_0807C00C:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0807C014
sub_0807C014: @ 0x0807C014
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r7, #0xa0
	lsls r7, r7, #6
	str r7, [r4, #0x54]
	movs r5, #0
	str r5, [r4, #0x48]
	str r5, [r4, #0x50]
	movs r6, #0x80
	lsls r6, r6, #9
	ldr r2, _0807C064 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08069A00
	movs r1, #4
	ands r1, r0
	cmp r1, #0
	beq _0807C05C
	strb r5, [r4, #0xa]
	movs r0, #6
	strb r0, [r4, #0xb]
	strb r5, [r4, #0xd]
	str r6, [r4, #0x4c]
	str r7, [r4, #0x54]
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0807C05C:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807C064: .4byte 0xFFE00000

	thumb_func_start sub_0807C068
sub_0807C068: @ 0x0807C068
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
	ldr r0, [r4, #0x14]
	adds r0, #0x20
	movs r1, #1
	strb r1, [r0]
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807C0A0
sub_0807C0A0: @ 0x0807C0A0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0807CF20
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807C0B6
	adds r0, r4, #0
	bl EntityDelete
	b _0807C140
_0807C0B6:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r0, _0807C0E4 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807C0E8
	movs r0, #3
	strb r0, [r4, #0xa]
	b _0807C140
	.align 2, 0
_0807C0E4: .4byte gEwramData
_0807C0E8:
	adds r0, r4, #0
	bl sub_0806D260
	cmp r0, #1
	ble _0807C108
	ldr r2, _0807C100 @ =sub_0807CF6C
	ldr r3, _0807C104 @ =sub_0807C8FC
	adds r0, r4, #0
	movs r1, #8
	bl sub_080427B8
	b _0807C114
	.align 2, 0
_0807C100: .4byte sub_0807CF6C
_0807C104: .4byte sub_0807C8FC
_0807C108:
	ldr r2, _0807C148 @ =sub_0807CF6C
	ldr r3, _0807C14C @ =sub_0807C8FC
	adds r0, r4, #0
	movs r1, #8
	bl sub_0804277C
_0807C114:
	adds r0, r4, #0
	bl sub_0806B1FC
	adds r0, r4, #0
	bl sub_0806AF98
	movs r0, #0
	strb r0, [r4, #0xa]
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
_0807C140:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0807C148: .4byte sub_0807CF6C
_0807C14C: .4byte sub_0807C8FC

	thumb_func_start sub_0807C150
sub_0807C150: @ 0x0807C150
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
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
	ldrb r0, [r6, #0xb]
	cmp r0, #0xd
	bls _0807C176
	b _0807C48A
_0807C176:
	lsls r0, r0, #2
	ldr r1, _0807C180 @ =_0807C184
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807C180: .4byte _0807C184
_0807C184: @ jump table
	.4byte _0807C1BC @ case 0
	.4byte _0807C230 @ case 1
	.4byte _0807C24C @ case 2
	.4byte _0807C276 @ case 3
	.4byte _0807C2DC @ case 4
	.4byte _0807C2F6 @ case 5
	.4byte _0807C31E @ case 6
	.4byte _0807C48A @ case 7
	.4byte _0807C48A @ case 8
	.4byte _0807C48A @ case 9
	.4byte _0807C336 @ case 10
	.4byte _0807C378 @ case 11
	.4byte _0807C3BC @ case 12
	.4byte _0807C424 @ case 13
_0807C1BC:
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x5a
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x30
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xb4
	movs r3, #0x60
	bl sub_0806CFFC
	cmp r0, #0
	bne _0807C1EC
	adds r0, r6, #0
	bl sub_0806D54C
	cmp r0, #0
	bne _0807C1EC
	b _0807C48A
_0807C1EC:
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0807C1FE
	movs r0, #1
	strb r0, [r1]
	b _0807C22A
_0807C1FE:
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	adds r1, r0, #0
	cmp r1, #0
	bne _0807C21A
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	movs r1, #1
	b _0807C2B2
_0807C21A:
	cmp r1, #1
	bne _0807C226
	movs r0, #0
	strb r1, [r6, #0xa]
	strb r0, [r6, #0xb]
	b _0807C48A
_0807C226:
	movs r0, #1
	strb r0, [r6, #0xa]
_0807C22A:
	movs r0, #0xa
	strb r0, [r6, #0xb]
	b _0807C48A
_0807C230:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807C240
	b _0807C48A
_0807C240:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	movs r1, #3
	b _0807C2B2
_0807C24C:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807C25C
	b _0807C48A
_0807C25C:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	bl RandomNumberGenerator
	movs r1, #0x3c
	bl __umodsi3
	adds r0, #0x3c
	strb r0, [r6, #0xd]
	adds r0, r6, #0
	movs r1, #4
	b _0807C41A
_0807C276:
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0807C288
	movs r0, #0
	strb r0, [r6, #0xd]
	strb r0, [r1]
_0807C288:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807C298
	b _0807C48A
_0807C298:
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	adds r1, r0, #0
	cmp r1, #0
	bne _0807C2BC
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	movs r1, #0xb
_0807C2B2:
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0807C48A
_0807C2BC:
	cmp r1, #1
	bne _0807C2C6
	strb r1, [r6, #0xa]
	strb r1, [r6, #0xb]
	b _0807C48A
_0807C2C6:
	movs r2, #1
	movs r0, #1
	strb r0, [r6, #0xa]
	movs r0, #0xb
	strb r0, [r6, #0xb]
	adds r1, r6, #0
	adds r1, #0x59
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	b _0807C48A
_0807C2DC:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807C2EC
	b _0807C48A
_0807C2EC:
	adds r0, r6, #0
	movs r1, #0xa
	movs r2, #0
	movs r3, #0
	b _0807C30E
_0807C2F6:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807C306
	b _0807C48A
_0807C306:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
_0807C30E:
	bl sub_0803F2C8
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xd]
	b _0807C48A
_0807C31E:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bhi _0807C32E
	b _0807C48A
_0807C32E:
	movs r0, #0
	strb r0, [r6, #0xb]
	strb r0, [r6, #0xd]
	b _0807C48A
_0807C336:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xd]
	movs r5, #0
	movs r7, #0xf
_0807C344:
	bl RandomNumberGenerator
	adds r1, r0, #0
	ands r1, r7
	lsls r4, r5, #4
	adds r1, r1, r4
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0x28
	bl sub_0807C9A4
	bl RandomNumberGenerator
	adds r1, r0, #0
	ands r1, r7
	rsbs r1, r1, #0
	subs r1, r1, r4
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0x28
	bl sub_0807C9A4
	adds r5, #1
	cmp r5, #3
	ble _0807C344
	b _0807C48A
_0807C378:
	ldrb r1, [r6, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0807C38E
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_08011F7C
	b _0807C398
_0807C38E:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_08011F7C
_0807C398:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xd]
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _0807C3B8 @ =0x00000105
	bl sub_08013D60
	b _0807C48A
	.align 2, 0
_0807C3B8: .4byte 0x00000105
_0807C3BC:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0807C3F4
	bl RandomNumberGenerator
	adds r4, r0, #0
	movs r5, #1
	ands r4, r5
	adds r4, #1
	bl RandomNumberGenerator
	adds r2, r0, #0
	ands r2, r5
	adds r2, #1
	movs r0, #0
	adds r1, r4, #0
	bl sub_08011F7C
	ldr r0, _0807C3F0 @ =0x00000105
	bl sub_08013DA8
	b _0807C3FE
	.align 2, 0
_0807C3F0: .4byte 0x00000105
_0807C3F4:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_08011F7C
_0807C3FE:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0807C48A
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xd]
	adds r0, r6, #0
	movs r1, #2
_0807C41A:
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _0807C48A
_0807C424:
	ldrb r1, [r6, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0807C458
	bl RandomNumberGenerator
	adds r4, r0, #0
	movs r5, #1
	ands r4, r5
	adds r4, #1
	bl RandomNumberGenerator
	adds r2, r0, #0
	ands r2, r5
	adds r2, #1
	movs r0, #0
	adds r1, r4, #0
	bl sub_08011F7C
	ldr r0, _0807C454 @ =0x00000105
	bl sub_08013DA8
	b _0807C462
	.align 2, 0
_0807C454: .4byte 0x00000105
_0807C458:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_08011F7C
_0807C462:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bls _0807C48A
	movs r0, #0
	strb r0, [r6, #0xa]
	movs r0, #2
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _0807C490 @ =0x00000105
	bl sub_08013E18
_0807C48A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807C490: .4byte 0x00000105

	thumb_func_start sub_0807C494
sub_0807C494: @ 0x0807C494
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
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
	ldrb r0, [r6, #0xb]
	cmp r0, #0xd
	bls _0807C4C2
	b _0807C878
_0807C4C2:
	lsls r0, r0, #2
	ldr r1, _0807C4CC @ =_0807C4D0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807C4CC: .4byte _0807C4D0
_0807C4D0: @ jump table
	.4byte _0807C508 @ case 0
	.4byte _0807C51A @ case 1
	.4byte _0807C5E0 @ case 2
	.4byte _0807C620 @ case 3
	.4byte _0807C626 @ case 4
	.4byte _0807C70A @ case 5
	.4byte _0807C732 @ case 6
	.4byte _0807C878 @ case 7
	.4byte _0807C878 @ case 8
	.4byte _0807C878 @ case 9
	.4byte _0807C74C @ case 10
	.4byte _0807C75E @ case 11
	.4byte _0807C784 @ case 12
	.4byte _0807C804 @ case 13
_0807C508:
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r6, #0xb]
	adds r0, #1
	b _0807C876
_0807C51A:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807C52A
	b _0807C878
_0807C52A:
	bl RandomNumberGenerator
	movs r1, #6
	bl __umodsi3
	mov r8, r0
	bl RandomNumberGenerator
	movs r1, #6
	bl __umodsi3
	adds r7, r0, #0
	movs r4, #0
	movs r0, #0x21
	adds r0, r0, r6
	mov sb, r0
	movs r1, #0x6d
	adds r1, r1, r6
	mov sl, r1
	movs r5, #0x28
_0807C552:
	cmp r4, r8
	beq _0807C568
	cmp r4, r7
	beq _0807C568
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #1
	rsbs r2, r2, #0
	movs r3, #0x6e
	bl sub_0807C9A4
_0807C568:
	adds r5, #0x10
	adds r4, #1
	cmp r4, #6
	ble _0807C552
	bl RandomNumberGenerator
	movs r1, #6
	bl __umodsi3
	mov r8, r0
	bl RandomNumberGenerator
	movs r1, #6
	bl __umodsi3
	adds r7, r0, #0
	movs r4, #0
	movs r5, #0x28
	rsbs r5, r5, #0
_0807C58E:
	cmp r4, r8
	beq _0807C5A4
	cmp r4, r7
	beq _0807C5A4
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #1
	rsbs r2, r2, #0
	movs r3, #0x6e
	bl sub_0807C9A4
_0807C5A4:
	subs r5, #0x10
	adds r4, #1
	cmp r4, #6
	ble _0807C58E
	movs r1, #0
	mov r0, sb
	strb r1, [r0]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xd]
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #4
	beq _0807C5D0
	adds r0, r6, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0807C5D2
_0807C5D0:
	strb r0, [r6, #0xb]
_0807C5D2:
	ldr r0, _0807C5DC @ =0x00000105
	bl sub_08013D60
	b _0807C878
	.align 2, 0
_0807C5DC: .4byte 0x00000105
_0807C5E0:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0807C5F4
	ldr r0, _0807C61C @ =0x00000105
	bl sub_08013DA8
_0807C5F4:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807C604
	b _0807C878
_0807C604:
	adds r0, r6, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	movs r0, #0
	strb r0, [r6, #0xd]
	b _0807C878
	.align 2, 0
_0807C61C: .4byte 0x00000105
_0807C620:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
_0807C626:
	ldrb r1, [r6, #0xd]
	movs r4, #3
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _0807C638
	ldr r0, _0807C658 @ =0x00000105
	bl sub_08013DA8
_0807C638:
	ldrb r1, [r6, #0xd]
	adds r0, r1, #0
	cmp r0, #0x1d
	bls _0807C6AC
	cmp r0, #0x5a
	bhi _0807C668
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0807C65C
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_08011F7C
	b _0807C6AC
	.align 2, 0
_0807C658: .4byte 0x00000105
_0807C65C:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_08011F7C
	b _0807C6AC
_0807C668:
	cmp r0, #0x6e
	bne _0807C678
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0807C678:
	ldrb r1, [r6, #0xd]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _0807C6A2
	bl RandomNumberGenerator
	adds r4, r0, #0
	movs r5, #1
	ands r4, r5
	adds r4, #1
	bl RandomNumberGenerator
	adds r2, r0, #0
	ands r2, r5
	adds r2, #1
	movs r0, #0
	adds r1, r4, #0
	bl sub_08011F7C
	b _0807C6AC
_0807C6A2:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_08011F7C
_0807C6AC:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xfc
	bhi _0807C6BC
	b _0807C878
_0807C6BC:
	ldr r0, _0807C6F0 @ =0x00000105
	bl sub_08013E18
	adds r0, r6, #0
	movs r1, #4
	bl sub_0806D128
	adds r4, r0, #0
	cmp r4, #0
	beq _0807C6D2
	b _0807C820
_0807C6D2:
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	adds r1, r0, #0
	cmp r1, #0
	bne _0807C6F4
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xd]
	adds r0, r6, #0
	movs r1, #0xa
	b _0807C85E
	.align 2, 0
_0807C6F0: .4byte 0x00000105
_0807C6F4:
	cmp r1, #1
	bne _0807C6FA
	b _0807C854
_0807C6FA:
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xb
	b _0807C876
_0807C70A:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807C71A
	b _0807C878
_0807C71A:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xd]
	b _0807C878
_0807C732:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x59
	bhi _0807C742
	b _0807C878
_0807C742:
	movs r0, #0
	strb r0, [r6, #0xa]
	strb r0, [r6, #0xb]
	strb r0, [r6, #0xd]
	b _0807C878
_0807C74C:
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r6, #0xb]
	adds r0, #1
	b _0807C876
_0807C75E:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807C76E
	b _0807C878
_0807C76E:
	adds r0, r6, #0
	adds r0, #0x21
	movs r1, #0
	strb r1, [r0]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xd]
	adds r0, r6, #0
	movs r1, #5
	b _0807C85E
_0807C784:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	mov r8, r0
	ands r0, r1
	cmp r0, #0
	beq _0807C7A4
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xd]
	adds r0, r6, #0
	movs r1, #6
	b _0807C82A
_0807C7A4:
	adds r7, r6, #0
	adds r7, #0x6e
	ldr r5, _0807C800 @ =0x0000FFFF
	ldrh r0, [r7]
	cmp r0, #3
	bne _0807C7D2
	adds r4, r6, #0
	adds r4, #0x58
	ldrb r2, [r4]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1f
	adds r0, r6, #0
	movs r1, #0
	bl sub_0807CC9C
	ldrb r0, [r4]
	lsrs r0, r0, #6
	mov r2, r8
	bics r2, r0
	adds r0, r6, #0
	movs r1, #0
	bl sub_0807CC9C
_0807C7D2:
	ldrh r0, [r7]
	ands r5, r0
	cmp r5, #4
	bne _0807C878
	adds r4, r6, #0
	adds r4, #0x58
	ldrb r2, [r4]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1f
	adds r0, r6, #0
	movs r1, #1
	bl sub_0807CC9C
	ldrb r0, [r4]
	lsrs r0, r0, #6
	mov r2, r8
	bics r2, r0
	adds r0, r6, #0
	movs r1, #1
	bl sub_0807CC9C
	b _0807C878
	.align 2, 0
_0807C800: .4byte 0x0000FFFF
_0807C804:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xef
	bls _0807C878
	adds r0, r6, #0
	movs r1, #4
	bl sub_0806D128
	adds r4, r0, #0
	cmp r4, #0
	beq _0807C834
_0807C820:
	movs r0, #0
	strb r0, [r6, #0xa]
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	movs r1, #0
_0807C82A:
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _0807C878
_0807C834:
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	adds r1, r0, #0
	cmp r1, #0
	bne _0807C850
	movs r0, #5
	strb r0, [r6, #0xb]
	strb r4, [r6, #0xd]
	adds r0, r6, #0
	movs r1, #0xa
	b _0807C85E
_0807C850:
	cmp r1, #1
	bne _0807C868
_0807C854:
	strb r4, [r6, #0xa]
	movs r0, #2
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	movs r1, #3
_0807C85E:
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0807C878
_0807C868:
	adds r0, r6, #0
	movs r1, #0xb
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #1
_0807C876:
	strb r0, [r6, #0xb]
_0807C878:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807C888
sub_0807C888: @ 0x0807C888
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0xb]
	cmp r1, #1
	beq _0807C8BC
	cmp r1, #1
	bgt _0807C89C
	cmp r1, #0
	beq _0807C8A2
	b _0807C8F8
_0807C89C:
	cmp r1, #2
	beq _0807C8DA
	b _0807C8F8
_0807C8A2:
	ldrb r0, [r2, #0xd]
	adds r1, r0, #1
	strb r1, [r2, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _0807C8F8
	ldrb r0, [r2, #0xb]
	adds r0, #1
	strb r0, [r2, #0xb]
	adds r0, r2, #0
	movs r1, #1
	b _0807C8D0
_0807C8BC:
	adds r0, r2, #0
	adds r0, #0x59
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _0807C8F8
	movs r0, #2
	strb r0, [r2, #0xb]
	adds r0, r2, #0
	movs r1, #3
_0807C8D0:
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0807C8F8
_0807C8DA:
	adds r0, r2, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0807C8F8
	movs r0, #3
	strb r0, [r2, #0xb]
	adds r0, r2, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0807C8F8:
	pop {r0}
	bx r0

	thumb_func_start sub_0807C8FC
sub_0807C8FC: @ 0x0807C8FC
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
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x2d
	movs r0, #8
	strb r0, [r1]
	bl RandomNumberGenerator
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	bne _0807C93C
	movs r4, #0
	movs r0, #0x6a
	bl sub_080D7910
_0807C93C:
	ldrh r0, [r6, #0x34]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	strh r0, [r6, #0x34]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08042B8C
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #1
	strb r0, [r1]
	movs r1, #0x34
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bgt _0807C998
	ldr r0, _0807C9A0 @ =0x00000105
	bl sub_08013E18
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
	movs r0, #2
	strb r0, [r6, #0xa]
	movs r0, #0
	strb r0, [r6, #0xb]
_0807C998:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0807C9A0: .4byte 0x00000105

	thumb_func_start sub_0807C9A4
sub_0807C9A4: @ 0x0807C9A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	mov sb, r1
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _0807C9DC @ =sub_0807CAD4
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	bne _0807C9C6
	b _0807CAC6
_0807C9C6:
	ldr r0, _0807C9E0 @ =0x081CBF9C
	bl sub_0803AFB8
	adds r2, r0, #0
	cmp r2, #0
	bge _0807C9E4
	adds r0, r4, #0
	bl EntityDelete
	b _0807CAC6
	.align 2, 0
_0807C9DC: .4byte sub_0807CAD4
_0807C9E0: .4byte 0x081CBF9C
_0807C9E4:
	ldr r1, _0807CA54 @ =0x08218D3C
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0xc
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _0807CA58 @ =sub_0803B9D0
	str r0, [r4, #4]
	ldr r2, _0807CA5C @ =sub_0807CEF0
	adds r0, r4, #0
	movs r1, #8
	movs r3, #0
	bl sub_0804277C
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	subs r2, #0x19
	ldrb r0, [r2]
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x5c
	strb r1, [r0]
	subs r2, #1
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	rsbs r0, r0, #0
	adds r6, r2, #0
	cmp r7, r0
	bne _0807CA60
	bl RandomNumberGenerator
	movs r1, #0x1f
	ands r1, r0
	adds r1, #0x20
	strb r1, [r4, #0xd]
	b _0807CA62
	.align 2, 0
_0807CA54: .4byte 0x08218D3C
_0807CA58: .4byte sub_0803B9D0
_0807CA5C: .4byte sub_0807CEF0
_0807CA60:
	strb r7, [r4, #0xd]
_0807CA62:
	mov r0, r8
	strh r0, [r4, #0x20]
	cmp r7, #0
	bne _0807CA88
	adds r0, r4, #0
	movs r1, #7
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	movs r0, #2
	strb r0, [r4, #0xa]
	ldrb r1, [r6]
	subs r0, #0x23
	ands r0, r1
	strb r0, [r6]
_0807CA88:
	str r5, [r4, #0x14]
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	add r0, sb
	adds r2, r4, #0
	adds r2, #0x42
	strh r0, [r2]
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r6]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
_0807CAC6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807CAD4
sub_0807CAD4: @ 0x0807CAD4
	push {r4, r5, r6, lr}
	sub sp, #0x1c
	adds r6, r0, #0
	ldr r0, _0807CAF4 @ =0x3604CAFE
	str r0, [sp, #0x18]
	ldr r4, [r6, #0x14]
	ldrb r0, [r6, #0xa]
	cmp r0, #4
	bls _0807CAE8
	b _0807CC8C
_0807CAE8:
	lsls r0, r0, #2
	ldr r1, _0807CAF8 @ =_0807CAFC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807CAF4: .4byte 0x3604CAFE
_0807CAF8: .4byte _0807CAFC
_0807CAFC: @ jump table
	.4byte _0807CB10 @ case 0
	.4byte _0807CB42 @ case 1
	.4byte _0807CB8A @ case 2
	.4byte _0807CC1C @ case 3
	.4byte _0807CC76 @ case 4
_0807CB10:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807CB20
	b _0807CC8C
_0807CB20:
	adds r0, r6, #0
	movs r1, #0xc
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	b _0807CC8C
_0807CB42:
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807CB52
	b _0807CC8C
_0807CB52:
	cmp r4, #0
	beq _0807CB84
	ldr r0, [r4]
	cmp r0, #0
	beq _0807CB84
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x4d
	bne _0807CB84
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0807CB84
	ldrb r0, [r6, #0xa]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xd]
	adds r0, r6, #0
	movs r1, #7
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0807CC8C
_0807CB84:
	ldrb r0, [r2]
	movs r1, #8
	b _0807CC86
_0807CB8A:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bne _0807CBD0
	bl RandomNumberGenerator
	adds r5, r0, #0
	ldr r4, _0807CC10 @ =0x0001FFFF
	ands r5, r4
	ldr r0, _0807CC14 @ =0xFFFF0000
	adds r5, r5, r0
	bl RandomNumberGenerator
	ands r0, r4
	ldr r4, _0807CC18 @ =0xFFFE0000
	subs r4, r4, r0
	bl RandomNumberGenerator
	movs r3, #1
	ands r3, r0
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x44]
	adds r2, r6, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_0806DCC4
_0807CBD0:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0807CC8C
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	adds r0, r6, #0
	movs r1, #8
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0
	strb r0, [r6, #0xd]
	add r1, sp, #0x18
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
	b _0807CC8C
	.align 2, 0
_0807CC10: .4byte 0x0001FFFF
_0807CC14: .4byte 0xFFFF0000
_0807CC18: .4byte 0xFFFE0000
_0807CC1C:
	add r0, sp, #8
	adds r1, r6, #0
	bl sub_080421AC
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0x20
	ldrsh r1, [r6, r2]
	cmp r0, r1
	blt _0807CC48
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	adds r0, r6, #0
	movs r1, #0xd
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0807CC48:
	cmp r4, #0
	beq _0807CC62
	ldr r0, [r4]
	cmp r0, #0
	beq _0807CC62
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x4d
	bne _0807CC62
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _0807CC8C
_0807CC62:
	adds r0, r6, #0
	movs r1, #0xd
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	b _0807CC92
_0807CC76:
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0807CC8C
	movs r0, #8
_0807CC86:
	orrs r0, r1
	strb r0, [r2]
	b _0807CC92
_0807CC8C:
	adds r0, r6, #0
	bl sub_0803F17C
_0807CC92:
	add sp, #0x1c
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807CC9C
sub_0807CC9C: @ 0x0807CC9C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	ldr r2, _0807CCC8 @ =sub_0807CDA8
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0807CDA2
	ldr r0, _0807CCCC @ =0x081CBF9C
	bl sub_0803AFB8
	adds r2, r0, #0
	cmp r2, #0
	bge _0807CCD0
	adds r0, r4, #0
	bl EntityDelete
	b _0807CDA2
	.align 2, 0
_0807CCC8: .4byte sub_0807CDA8
_0807CCCC: .4byte 0x081CBF9C
_0807CCD0:
	ldr r1, _0807CD84 @ =0x08218D3C
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #9
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _0807CD88 @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_0806B1FC
	ldr r2, _0807CD8C @ =sub_0807CEF0
	adds r0, r4, #0
	movs r1, #8
	movs r3, #0
	bl sub_0804277C
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	movs r1, #4
	orrs r0, r1
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
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	movs r1, #0x42
	adds r1, r1, r4
	mov ip, r1
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	subs r2, #1
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #6
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807CD90
	mov r0, ip
	ldrh r1, [r0]
	subs r1, #0x80
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #1
	adds r1, r1, r0
	b _0807CD9E
	.align 2, 0
_0807CD84: .4byte 0x08218D3C
_0807CD88: .4byte sub_0803B9D0
_0807CD8C: .4byte sub_0807CEF0
_0807CD90:
	mov r0, ip
	ldrh r1, [r0]
	adds r1, #0x80
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #1
	subs r1, r1, r0
_0807CD9E:
	mov r0, ip
	strh r1, [r0]
_0807CDA2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0807CDA8
sub_0807CDA8: @ 0x0807CDA8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r5, [r4, #0x14]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0807CDBC
	cmp r0, #1
	beq _0807CE84
	b _0807CEE2
_0807CDBC:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _0807CDD0
	movs r0, #0x80
	bl sub_080D7910
_0807CDD0:
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _0807CE74
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #0x18]
	adds r0, #1
	strb r0, [r4, #0x18]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #5
	bgt _0807CE6A
	cmp r0, #3
	bne _0807CE16
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r3, [r2]
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	movs r0, #1
	eors r1, r0
	ands r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	b _0807CE38
_0807CE16:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807CE2E
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, #0x28
	b _0807CE36
_0807CE2E:
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r1]
	subs r0, #0x28
_0807CE36:
	strh r0, [r1]
_0807CE38:
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	strb r0, [r4, #0xd]
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	cmp r5, #0
	beq _0807CE6A
	ldr r0, [r5]
	cmp r0, #0
	beq _0807CE6A
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x4d
	bne _0807CE6A
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	bne _0807CEE2
_0807CE6A:
	ldrb r0, [r6]
	movs r1, #8
	orrs r0, r1
	strb r0, [r6]
	b _0807CEE8
_0807CE74:
	adds r0, r4, #0
	bl sub_0806B1FC
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	b _0807CEE2
_0807CE84:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _0807CEBA
	adds r0, r4, #0
	movs r1, #9
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0
	strb r0, [r4, #0xa]
	adds r2, #0x1a
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
_0807CEBA:
	cmp r5, #0
	beq _0807CED4
	ldr r0, [r5]
	cmp r0, #0
	beq _0807CED4
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x4d
	bne _0807CED4
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	bne _0807CEE2
_0807CED4:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _0807CEE8
_0807CEE2:
	adds r0, r4, #0
	bl sub_0803F17C
_0807CEE8:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0807CEF0
sub_0807CEF0: @ 0x0807CEF0
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

	thumb_func_start sub_0807CF20
sub_0807CF20: @ 0x0807CF20
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0807CF54 @ =0x081CBF9C
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _0807CF64
	ldr r0, _0807CF58 @ =0x0820A674
	movs r1, #0
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _0807CF5C @ =0x08218D3C
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _0807CF60 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _0807CF66
	.align 2, 0
_0807CF54: .4byte 0x081CBF9C
_0807CF58: .4byte 0x0820A674
_0807CF5C: .4byte 0x08218D3C
_0807CF60: .4byte sub_0803B9D0
_0807CF64:
	movs r0, #0
_0807CF66:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0807CF6C
sub_0807CF6C: @ 0x0807CF6C
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

	thumb_func_start sub_0807CF9C
sub_0807CF9C: @ 0x0807CF9C
	push {r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	bl sub_0806CC20
	cmp r0, #0
	beq _0807CFD4
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
	bne _0807D020
	ldr r0, _0807CFD0 @ =0x00000105
	bl sub_08013E18
	b _0807D020
	.align 2, 0
_0807CFD0: .4byte 0x00000105
_0807CFD4:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0807CFF6
	cmp r0, #1
	bgt _0807CFE4
	cmp r0, #0
	beq _0807CFEE
	b _0807D014
_0807CFE4:
	cmp r0, #2
	beq _0807CFFE
	cmp r0, #3
	beq _0807D006
	b _0807D014
_0807CFEE:
	adds r0, r4, #0
	bl sub_0807C150
	b _0807D014
_0807CFF6:
	adds r0, r4, #0
	bl sub_0807C494
	b _0807D014
_0807CFFE:
	adds r0, r4, #0
	bl sub_0806AEAC
	b _0807D014
_0807D006:
	adds r0, r4, #0
	bl sub_0807C888
	adds r0, r4, #0
	bl sub_0803F17C
	b _0807D020
_0807D014:
	adds r0, r4, #0
	bl sub_0806DF20
	adds r0, r4, #0
	bl sub_0806E314
_0807D020:
	add sp, #0x14
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0807D028
sub_0807D028: @ 0x0807D028
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r7, r0, #0
	bl sub_0806CC20
	cmp r0, #0
	bne _0807D120
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	beq _0807D05C
	cmp r0, #1
	bgt _0807D04A
	cmp r0, #0
	beq _0807D054
	b _0807D114
_0807D04A:
	cmp r0, #2
	beq _0807D064
	cmp r0, #3
	beq _0807D10C
	b _0807D114
_0807D054:
	adds r0, r7, #0
	bl sub_0807D33C
	b _0807D114
_0807D05C:
	adds r0, r7, #0
	bl sub_0807D65C
	b _0807D114
_0807D064:
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
	bgt _0807D098
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_0807D098:
	ldrb r0, [r7, #0xd]
	cmp r0, #0x28
	bls _0807D114
	movs r1, #7
	mov r8, r1
	mov r2, r8
	ands r2, r0
	mov r8, r2
	cmp r2, #1
	bne _0807D114
	bl RandomNumberGenerator
	adds r5, r0, #0
	ldr r6, _0807D0FC @ =0x001FFFFF
	ands r5, r6
	ldr r0, _0807D100 @ =0xFFF00000
	adds r5, r5, r0
	bl RandomNumberGenerator
	adds r4, r0, #0
	ands r4, r6
	rsbs r4, r4, #0
	bl RandomNumberGenerator
	ldr r6, _0807D104 @ =0x00007FFF
	ands r6, r0
	ldr r1, _0807D108 @ =0xFFFFC000
	adds r6, r6, r1
	bl RandomNumberGenerator
	mov r2, r8
	ands r2, r0
	mov r8, r2
	ldr r0, [r7, #0x40]
	adds r0, r0, r5
	ldr r1, [r7, #0x44]
	adds r1, r1, r4
	adds r2, r7, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	mov r2, r8
	str r2, [sp, #4]
	adds r2, r6, #0
	movs r3, #0
	bl sub_0807E228
	b _0807D114
	.align 2, 0
_0807D0FC: .4byte 0x001FFFFF
_0807D100: .4byte 0xFFF00000
_0807D104: .4byte 0x00007FFF
_0807D108: .4byte 0xFFFFC000
_0807D10C:
	adds r0, r7, #0
	bl sub_0803F17C
	b _0807D120
_0807D114:
	adds r0, r7, #0
	bl sub_0806DF20
	adds r0, r7, #0
	bl sub_0806E314
_0807D120:
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0807D12C
sub_0807D12C: @ 0x0807D12C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	bl sub_0807E2CC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807D13C
	b _0807D2C0
_0807D13C:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	adds r0, r6, #0
	bl sub_0806B04C
	movs r7, #0
_0807D156:
	movs r5, #0
	cmp r7, #1
	beq _0807D174
	cmp r7, #1
	bgt _0807D166
	cmp r7, #0
	beq _0807D16C
	b _0807D184
_0807D166:
	cmp r7, #2
	beq _0807D17C
	b _0807D184
_0807D16C:
	ldr r0, _0807D170 @ =sub_0807D9B8
	b _0807D17E
	.align 2, 0
_0807D170: .4byte sub_0807D9B8
_0807D174:
	ldr r0, _0807D178 @ =sub_0807DBB4
	b _0807D17E
	.align 2, 0
_0807D178: .4byte sub_0807DBB4
_0807D17C:
	ldr r0, _0807D198 @ =sub_0807DE14
_0807D17E:
	bl sub_0806DFF8
	adds r5, r0, #0
_0807D184:
	cmp r5, #0
	bne _0807D18A
	b _0807D2C0
_0807D18A:
	cmp r7, #0
	bne _0807D19C
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	b _0807D1A4
	.align 2, 0
_0807D198: .4byte sub_0807DE14
_0807D19C:
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
_0807D1A4:
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _0807D208 @ =0x081CBFA4
	bl sub_0803AFB8
	adds r2, r0, #0
	adds r4, r6, #0
	adds r4, #0x2c
	ldrb r3, [r4]
	adds r0, r5, #0
	ldr r1, _0807D20C @ =0x08219140
	bl sub_0803B924
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x36
	strb r0, [r1]
	ldrb r1, [r4]
	adds r0, r5, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r3, #3
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _0807D210 @ =sub_0803B9D0
	str r0, [r5, #4]
	str r6, [r5, #0x14]
	adds r0, r5, #0
	adds r0, #0x20
	strb r7, [r0]
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	adds r4, r2, #0
	cmp r7, #1
	beq _0807D220
	cmp r7, #1
	bgt _0807D214
	cmp r7, #0
	beq _0807D21A
	b _0807D23A
	.align 2, 0
_0807D208: .4byte 0x081CBFA4
_0807D20C: .4byte 0x08219140
_0807D210: .4byte sub_0803B9D0
_0807D214:
	cmp r7, #2
	beq _0807D22E
	b _0807D23A
_0807D21A:
	adds r0, r5, #0
	movs r1, #6
	b _0807D224
_0807D220:
	adds r0, r5, #0
	movs r1, #8
_0807D224:
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _0807D23A
_0807D22E:
	adds r0, r5, #0
	movs r1, #7
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0807D23A:
	adds r0, r5, #0
	bl sub_0803F17C
	cmp r7, #0
	bne _0807D288
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	blt _0807D304
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
	ldrb r1, [r4]
	movs r0, #0x10
	orrs r1, r0
	movs r0, #0x20
	orrs r1, r0
	strb r1, [r4]
	adds r2, #2
	ldrb r1, [r2]
	movs r3, #7
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r2]
_0807D288:
	ldr r2, _0807D2B4 @ =gEwramData
	ldr r0, [r2]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807D2C8
	ldr r0, [r5, #0x40]
	ldr r1, _0807D2B8 @ =0xFFE00000
	adds r0, r0, r1
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x44]
	ldr r3, _0807D2BC @ =0xFFD80000
	adds r0, r0, r3
	str r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x22
	movs r0, #0
	strb r0, [r1]
	b _0807D2C8
	.align 2, 0
_0807D2B4: .4byte gEwramData
_0807D2B8: .4byte 0xFFE00000
_0807D2BC: .4byte 0xFFD80000
_0807D2C0:
	adds r0, r6, #0
	bl EntityDelete
	b _0807D32E
_0807D2C8:
	adds r7, #1
	cmp r7, #2
	bgt _0807D2D0
	b _0807D156
_0807D2D0:
	ldr r0, [r2]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807D2E4
	movs r0, #3
	strb r0, [r6, #0xa]
	b _0807D32E
_0807D2E4:
	adds r0, r6, #0
	bl sub_0806D260
	cmp r0, #1
	ble _0807D312
	ldr r2, _0807D2FC @ =sub_0807E328
	ldr r3, _0807D300 @ =sub_0807D88C
	adds r0, r6, #0
	movs r1, #8
	bl sub_080427B8
	b _0807D31E
	.align 2, 0
_0807D2FC: .4byte sub_0807E328
_0807D300: .4byte sub_0807D88C
_0807D304:
	adds r0, r6, #0
	bl EntityDelete
	adds r0, r5, #0
	bl EntityDelete
	b _0807D32E
_0807D312:
	ldr r2, _0807D334 @ =sub_0807E328
	ldr r3, _0807D338 @ =sub_0807D88C
	adds r0, r6, #0
	movs r1, #8
	bl sub_0804277C
_0807D31E:
	adds r0, r6, #0
	bl sub_0806B1FC
	movs r0, #0
	strb r0, [r6, #0xa]
	adds r0, r6, #0
	bl sub_0806CCD0
_0807D32E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807D334: .4byte sub_0807E328
_0807D338: .4byte sub_0807D88C

	thumb_func_start sub_0807D33C
sub_0807D33C: @ 0x0807D33C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _0807D364 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0807D368 @ =0x0000A094
	adds r6, r0, r1
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r0, #0x1c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xdc
	bls _0807D36C
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	b _0807D378
	.align 2, 0
_0807D364: .4byte gEwramData
_0807D368: .4byte 0x0000A094
_0807D36C:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r2, [r0]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
_0807D378:
	strb r1, [r0]
	adds r4, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #0xd
	bls _0807D384
	b _0807D64E
_0807D384:
	lsls r0, r0, #2
	ldr r1, _0807D390 @ =_0807D394
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807D390: .4byte _0807D394
_0807D394: @ jump table
	.4byte _0807D3CC @ case 0
	.4byte _0807D444 @ case 1
	.4byte _0807D4BC @ case 2
	.4byte _0807D4D6 @ case 3
	.4byte _0807D64E @ case 4
	.4byte _0807D64E @ case 5
	.4byte _0807D64E @ case 6
	.4byte _0807D64E @ case 7
	.4byte _0807D64E @ case 8
	.4byte _0807D64E @ case 9
	.4byte _0807D530 @ case 10
	.4byte _0807D53C @ case 11
	.4byte _0807D5A8 @ case 12
	.4byte _0807D5DE @ case 13
_0807D3CC:
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
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	adds r4, r0, #0
	cmp r4, #0
	bne _0807D426
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x50
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xa0
	movs r3, #0xa0
	bl sub_0806CFFC
	cmp r0, #0
	beq _0807D426
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r4, [r5, #0xb]
	str r4, [r5, #0x14]
	adds r0, r5, #0
	movs r1, #0
	b _0807D43A
_0807D426:
	movs r1, #0
	strb r1, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	adds r0, #0x21
	strb r1, [r0]
	adds r0, r5, #0
	movs r1, #3
_0807D43A:
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0807D64E
_0807D444:
	adds r2, r5, #0
	adds r2, #0x21
	movs r7, #0
	ldrsb r7, [r2, r7]
	cmp r7, #0
	beq _0807D45E
	movs r1, #0
	movs r0, #0xa
	strb r0, [r5, #0xb]
	strb r1, [r2]
	adds r0, r5, #0
	movs r1, #2
	b _0807D5D4
_0807D45E:
	ldr r1, [r5, #0x14]
	ldr r0, _0807D4B4 @ =0x0000BFFF
	cmp r1, r0
	bgt _0807D46E
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r1, r2
	str r0, [r5, #0x14]
_0807D46E:
	adds r0, r5, #0
	bl sub_0806CD38
	adds r4, r0, #0
	ldr r0, [r6, #4]
	adds r4, r4, r0
	adds r0, r5, #0
	bl sub_0806CD78
	adds r2, r0, #0
	ldr r0, [r6, #8]
	adds r2, r2, r0
	ldr r0, _0807D4B8 @ =0xFFD00000
	adds r2, r2, r0
	ldr r3, [r5, #0x14]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080694B8
	adds r0, r5, #0
	bl sub_0806D3AC
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bhi _0807D4AA
	b _0807D64E
_0807D4AA:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	b _0807D64C
	.align 2, 0
_0807D4B4: .4byte 0x0000BFFF
_0807D4B8: .4byte 0xFFD00000
_0807D4BC:
	adds r2, r5, #0
	adds r2, #0x21
	movs r4, #0
	ldrsb r4, [r2, r4]
	cmp r4, #0
	beq _0807D5B4
	movs r1, #0
	movs r0, #0xa
	strb r0, [r5, #0xb]
	strb r1, [r2]
	adds r0, r5, #0
	movs r1, #2
	b _0807D5D4
_0807D4D6:
	adds r2, r5, #0
	adds r2, #0x21
	movs r7, #0
	ldrsb r7, [r2, r7]
	cmp r7, #0
	beq _0807D4F0
	movs r1, #0
	movs r0, #0xa
	strb r0, [r5, #0xb]
	strb r1, [r2]
	adds r0, r5, #0
	movs r1, #2
	b _0807D5D4
_0807D4F0:
	ldr r1, [r5, #0x14]
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r1, r0
	ble _0807D500
	ldr r2, _0807D528 @ =0xFFFFF800
	adds r0, r1, r2
	str r0, [r5, #0x14]
_0807D500:
	adds r0, r5, #0
	bl sub_0806CD38
	adds r4, r0, #0
	ldr r0, [r6, #4]
	adds r4, r4, r0
	adds r0, r5, #0
	bl sub_0806CD78
	adds r2, r0, #0
	ldr r0, [r6, #8]
	adds r2, r2, r0
	ldr r0, _0807D52C @ =0xFFD00000
	adds r2, r2, r0
	ldr r3, [r5, #0x14]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080694B8
	b _0807D636
	.align 2, 0
_0807D528: .4byte 0xFFFFF800
_0807D52C: .4byte 0xFFD00000
_0807D530:
	movs r1, #0
	str r1, [r5, #0x14]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
_0807D53C:
	ldr r1, [r5, #0x14]
	ldr r0, _0807D5A0 @ =0x0000BFFF
	cmp r1, r0
	bgt _0807D54C
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r1, r2
	str r0, [r5, #0x14]
_0807D54C:
	adds r0, r5, #0
	bl sub_0806CD38
	adds r4, r0, #0
	ldr r0, [r6, #4]
	adds r4, r4, r0
	adds r0, r5, #0
	bl sub_0806CD78
	adds r2, r0, #0
	ldr r0, [r6, #8]
	adds r2, r2, r0
	ldr r0, _0807D5A4 @ =0xFFD00000
	adds r2, r2, r0
	ldr r3, [r5, #0x14]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080694B8
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x14]
	rsbs r0, r0, #0
	str r0, [r5, #0x4c]
	adds r0, r5, #0
	bl sub_0806D3AC
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bls _0807D64E
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0
	strb r0, [r5, #0xd]
	b _0807D64E
	.align 2, 0
_0807D5A0: .4byte 0x0000BFFF
_0807D5A4: .4byte 0xFFD00000
_0807D5A8:
	adds r2, r5, #0
	adds r2, #0x21
	movs r4, #0
	ldrsb r4, [r2, r4]
	cmp r4, #0
	bne _0807D5EA
_0807D5B4:
	adds r0, r5, #0
	bl sub_0806D3AC
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bls _0807D64E
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	strb r4, [r5, #0xd]
	adds r0, r5, #0
	movs r1, #0
_0807D5D4:
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _0807D64E
_0807D5DE:
	adds r2, r5, #0
	adds r2, #0x21
	movs r7, #0
	ldrsb r7, [r2, r7]
	cmp r7, #0
	beq _0807D5F4
_0807D5EA:
	movs r1, #0
	movs r0, #0xa
	strb r0, [r5, #0xb]
	strb r1, [r2]
	b _0807D64E
_0807D5F4:
	ldr r1, [r5, #0x14]
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r1, r0
	ble _0807D604
	ldr r2, _0807D654 @ =0xFFFFF800
	adds r0, r1, r2
	str r0, [r5, #0x14]
_0807D604:
	adds r0, r5, #0
	bl sub_0806CD38
	adds r4, r0, #0
	ldr r0, [r6, #4]
	adds r4, r4, r0
	adds r0, r5, #0
	bl sub_0806CD78
	adds r2, r0, #0
	ldr r0, [r6, #8]
	adds r2, r2, r0
	ldr r0, _0807D658 @ =0xFFD00000
	adds r2, r2, r0
	ldr r3, [r5, #0x14]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080694B8
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x4c]
	rsbs r0, r0, #0
	str r0, [r5, #0x4c]
_0807D636:
	adds r0, r5, #0
	bl sub_0806D3AC
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bls _0807D64E
	strb r7, [r5, #0xb]
_0807D64C:
	strb r7, [r5, #0xd]
_0807D64E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807D654: .4byte 0xFFFFF800
_0807D658: .4byte 0xFFD00000

	thumb_func_start sub_0807D65C
sub_0807D65C: @ 0x0807D65C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0807D67C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0807D680 @ =0x0000A094
	adds r6, r0, r1
	ldrb r0, [r5, #0xb]
	cmp r0, #6
	bls _0807D670
	b _0807D884
_0807D670:
	lsls r0, r0, #2
	ldr r1, _0807D684 @ =_0807D688
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807D67C: .4byte gEwramData
_0807D680: .4byte 0x0000A094
_0807D684: .4byte _0807D688
_0807D688: @ jump table
	.4byte _0807D6A4 @ case 0
	.4byte _0807D708 @ case 1
	.4byte _0807D720 @ case 2
	.4byte _0807D78C @ case 3
	.4byte _0807D7F4 @ case 4
	.4byte _0807D82C @ case 5
	.4byte _0807D868 @ case 6
_0807D6A4:
	ldr r1, [r5, #0x14]
	ldr r0, _0807D700 @ =0x0000BFFF
	cmp r1, r0
	bgt _0807D6B4
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r1, r2
	str r0, [r5, #0x14]
_0807D6B4:
	adds r0, r5, #0
	bl sub_0806CD38
	adds r4, r0, #0
	ldr r0, [r6, #4]
	adds r4, r4, r0
	adds r0, r5, #0
	bl sub_0806CD78
	adds r2, r0, #0
	ldr r0, [r6, #8]
	adds r2, r2, r0
	ldr r0, _0807D704 @ =0xFFF00000
	adds r2, r2, r0
	ldr r3, [r5, #0x14]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080694B8
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x4c]
	rsbs r0, r0, #0
	str r0, [r5, #0x4c]
	adds r0, r5, #0
	bl sub_0806D3AC
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bhi _0807D6FC
	b _0807D884
_0807D6FC:
	b _0807D778
	.align 2, 0
_0807D700: .4byte 0x0000BFFF
_0807D704: .4byte 0xFFF00000
_0807D708:
	adds r0, r5, #0
	bl sub_0806D3AC
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bhi _0807D71E
	b _0807D884
_0807D71E:
	b _0807D778
_0807D720:
	ldr r1, [r5, #0x14]
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r1, r0
	ble _0807D730
	ldr r2, _0807D784 @ =0xFFFFF800
	adds r0, r1, r2
	str r0, [r5, #0x14]
_0807D730:
	adds r0, r5, #0
	bl sub_0806CD38
	adds r4, r0, #0
	ldr r0, [r6, #4]
	adds r4, r4, r0
	adds r0, r5, #0
	bl sub_0806CD78
	adds r2, r0, #0
	ldr r0, [r6, #8]
	adds r2, r2, r0
	ldr r0, _0807D788 @ =0xFFF00000
	adds r2, r2, r0
	ldr r3, [r5, #0x14]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080694B8
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x4c]
	rsbs r0, r0, #0
	str r0, [r5, #0x4c]
	adds r0, r5, #0
	bl sub_0806D3AC
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bhi _0807D778
	b _0807D884
_0807D778:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0
	strb r0, [r5, #0xd]
	b _0807D884
	.align 2, 0
_0807D784: .4byte 0xFFFFF800
_0807D788: .4byte 0xFFF00000
_0807D78C:
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
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bls _0807D884
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0
	strb r0, [r5, #0xd]
	movs r0, #0x87
	bl sub_080D7910
	adds r0, r5, #0
	bl sub_0806CD38
	ldr r1, [r6, #4]
	adds r0, r0, r1
	str r0, [r5, #0x18]
	adds r0, r5, #0
	bl sub_0806CD78
	ldr r1, [r6, #8]
	adds r0, r0, r1
	ldr r1, _0807D7F0 @ =0xFFF00000
	adds r0, r0, r1
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0807D884
	.align 2, 0
_0807D7F0: .4byte 0xFFF00000
_0807D7F4:
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x1c]
	ldr r0, _0807D828 @ =0xFFE00000
	adds r2, r2, r0
	movs r3, #0x80
	lsls r3, r3, #0xa
	adds r0, r5, #0
	bl sub_080694B8
	cmp r0, #0
	beq _0807D820
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r4, #0
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	strb r4, [r5, #0xd]
_0807D820:
	adds r0, r5, #0
	bl sub_0806D3AC
	b _0807D884
	.align 2, 0
_0807D828: .4byte 0xFFE00000
_0807D82C:
	adds r0, r5, #0
	movs r1, #8
	bl sub_0806D490
	adds r0, r5, #0
	movs r1, #8
	bl sub_0806D4A8
	adds r0, r5, #0
	bl sub_0806D3AC
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x2c
	bls _0807D884
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r4, #0
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	strb r4, [r5, #0xd]
	b _0807D884
_0807D868:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bls _0807D884
	movs r0, #0
	strb r0, [r5, #0xa]
	strb r0, [r5, #0xb]
	strb r0, [r5, #0xd]
	adds r1, r5, #0
	adds r1, #0x21
	strb r0, [r1]
_0807D884:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807D88C
sub_0807D88C: @ 0x0807D88C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
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
	movs r1, #0x34
	ldrsh r0, [r7, r1]
	cmp r0, #0
	bgt _0807D998
	adds r0, r7, #0
	bl sub_080683BC
	movs r0, #0x6b
	bl sub_080D7910
	adds r0, r7, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
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
	movs r0, #0x5a
	strb r0, [r7, #0xd]
	movs r2, #2
	movs r0, #2
	strb r0, [r7, #0xa]
	movs r0, #0
	strb r0, [r7, #0xb]
	ldrb r1, [r3]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	adds r4, r7, #0
	adds r4, #0x5c
	str r4, [sp, #8]
	ldr r0, _0807D9A8 @ =0xFFFF0000
	mov sl, r0
	movs r1, #3
	mov sb, r1
_0807D934:
	bl RandomNumberGenerator
	adds r6, r0, #0
	ldr r4, _0807D9AC @ =0x000FFFFF
	ands r6, r4
	ldr r0, _0807D9B0 @ =0xFFF80000
	adds r6, r6, r0
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r1, _0807D9AC @ =0x000FFFFF
	ands r4, r1
	rsbs r4, r4, #0
	bl RandomNumberGenerator
	mov r8, r0
	ldr r1, _0807D9B4 @ =0x0001FFFF
	ands r0, r1
	mov r8, r0
	add r8, sl
	bl RandomNumberGenerator
	adds r5, r0, #0
	ldr r0, _0807D9B4 @ =0x0001FFFF
	ands r5, r0
	mov r1, sl
	subs r5, r1, r5
	bl RandomNumberGenerator
	movs r3, #1
	ands r3, r0
	ldr r0, [r7, #0x40]
	adds r0, r0, r6
	ldr r1, [r7, #0x44]
	adds r1, r1, r4
	ldr r4, [sp, #8]
	ldrb r2, [r4]
	subs r2, #1
	str r2, [sp]
	str r3, [sp, #4]
	mov r2, r8
	adds r3, r5, #0
	bl sub_0807E228
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	cmp r1, #0
	bge _0807D934
_0807D998:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807D9A8: .4byte 0xFFFF0000
_0807D9AC: .4byte 0x000FFFFF
_0807D9B0: .4byte 0xFFF80000
_0807D9B4: .4byte 0x0001FFFF

	thumb_func_start sub_0807D9B8
sub_0807D9B8: @ 0x0807D9B8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov r8, r0
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	beq _0807D9D0
	b _0807DB1E
_0807D9D0:
	mov r1, r8
	cmp r1, #0
	bne _0807D9D8
	b _0807DB08
_0807D9D8:
	ldr r0, [r1]
	cmp r0, #0
	bne _0807D9E0
	b _0807DB08
_0807D9E0:
	mov r0, r8
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x13
	beq _0807D9EC
	b _0807DB08
_0807D9EC:
	mov r3, r8
	adds r3, #0x58
	ldrb r0, [r3]
	adds r4, r7, #0
	adds r4, #0x58
	movs r1, #0x20
	ands r1, r0
	ldrb r2, [r4]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	mov r0, r8
	adds r0, #0x5a
	ldrb r0, [r0]
	adds r5, r7, #0
	adds r5, #0x5a
	movs r1, #0x78
	ands r1, r0
	ldrb r2, [r5]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	ldrb r0, [r3]
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r4]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	mov r0, r8
	bl sub_0806ADBC
	mov sb, r4
	cmp r0, #0
	bne _0807DA80
	ldr r0, [r7, #0x1c]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r0, r3
	str r0, [r7, #0x1c]
	adds r0, r7, #0
	bl sub_0803F17C
	ldrb r0, [r7, #0xd]
	adds r0, #1
	strb r0, [r7, #0xd]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0807DA80
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r6, _0807DA98 @ =0x0007FFFF
	ands r4, r6
	ldr r5, _0807DA9C @ =0xFFFC0000
	adds r4, r4, r5
	bl RandomNumberGenerator
	ands r0, r6
	adds r0, r0, r5
	ldr r1, [r7, #0x40]
	adds r1, r1, r4
	ldr r2, [r7, #0x44]
	adds r2, r2, r0
	adds r0, r7, #0
	bl sub_0807E074
_0807DA80:
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807DAA0
	mov r0, r8
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #4
	b _0807DAA8
	.align 2, 0
_0807DA98: .4byte 0x0007FFFF
_0807DA9C: .4byte 0xFFFC0000
_0807DAA0:
	mov r0, r8
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, #4
_0807DAA8:
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	mov r0, r8
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0x12
	adds r1, r7, #0
	adds r1, #0x46
	strh r0, [r1]
	ldr r0, [r7, #0x1c]
	bl sub_080009E4
	cmp r0, #0
	bge _0807DAC8
	adds r0, #0xf
_0807DAC8:
	asrs r2, r0, #4
	movs r3, #0xd8
	lsls r3, r3, #9
	adds r1, r2, r3
	str r1, [r7, #0x48]
	movs r0, #0xe8
	lsls r0, r0, #9
	adds r2, r2, r0
	str r2, [r7, #0x4c]
	mov r3, sb
	ldrb r0, [r3]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	lsrs r4, r0, #7
	str r4, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	bl sub_0803E238
	mov r1, r8
	ldrb r0, [r1, #0xa]
	cmp r0, #2
	bne _0807DBA2
	movs r0, #1
	strb r0, [r7, #0xa]
	movs r0, #0
	strb r0, [r7, #0xb]
	movs r0, #0x6e
	strb r0, [r7, #0xd]
	b _0807DBA2
_0807DB08:
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r7, #0
	bl EntityDelete
	b _0807DBA2
_0807DB1E:
	ldrb r0, [r7, #0xb]
	cmp r0, #0
	bne _0807DB34
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_0807DB34:
	ldrb r1, [r7, #0xd]
	ldr r5, [r7, #0x48]
	adds r0, r5, #0
	bl __divsi3
	subs r5, r5, r0
	str r5, [r7, #0x48]
	ldrb r1, [r7, #0xd]
	ldr r4, [r7, #0x4c]
	adds r0, r4, #0
	bl __divsi3
	subs r4, r4, r0
	str r4, [r7, #0x4c]
	ldr r0, _0807DBB0 @ =0x0000FFFF
	cmp r5, r0
	bgt _0807DB62
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
_0807DB62:
	ldr r1, [r7, #0x48]
	ldr r2, [r7, #0x4c]
	adds r5, r7, #0
	adds r5, #0x58
	ldrb r0, [r5]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	lsrs r4, r0, #7
	str r4, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	bl sub_0803E238
	adds r0, r7, #0
	bl sub_0803F17C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0807DBA2
	ldrb r0, [r5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r7, #0
	bl EntityDelete
_0807DBA2:
	add sp, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807DBB0: .4byte 0x0000FFFF

	thumb_func_start sub_0807DBB4
sub_0807DBB4: @ 0x0807DBB4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r6, r0, #0
	ldr r7, [r6, #0x14]
	ldrb r0, [r6, #0xa]
	mov ip, r0
	cmp r0, #0
	beq _0807DBCA
	b _0807DDFC
_0807DBCA:
	cmp r7, #0
	bne _0807DBD0
	b _0807DDF4
_0807DBD0:
	ldr r0, [r7]
	cmp r0, #0
	bne _0807DBD8
	b _0807DDF4
_0807DBD8:
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x13
	beq _0807DBE4
	b _0807DDF4
_0807DBE4:
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
	movs r5, #1
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _0807DC74 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r4, #0x40
	adds r0, r4, #0
	ands r0, r1
	mov r8, r3
	cmp r0, #0
	beq _0807DD24
	adds r2, r6, #0
	adds r2, #0x22
	movs r3, #0
	ldrsb r3, [r2, r3]
	cmp r3, #0
	beq _0807DC7C
	ldr r0, [r6, #0x18]
	ldr r1, _0807DC78 @ =0xFFFF0000
	adds r0, r0, r1
	str r0, [r6, #0x18]
	ldr r0, [r6, #0x1c]
	adds r0, r0, r1
	str r0, [r6, #0x1c]
	adds r1, r6, #0
	adds r1, #0x23
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x3b
	ble _0807DCA6
	mov r0, ip
	strb r0, [r1]
	b _0807DCA0
	.align 2, 0
_0807DC74: .4byte gEwramData
_0807DC78: .4byte 0xFFFF0000
_0807DC7C:
	ldr r0, [r6, #0x18]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	str r0, [r6, #0x18]
	ldr r0, [r6, #0x1c]
	adds r0, r0, r1
	str r0, [r6, #0x1c]
	adds r1, r6, #0
	adds r1, #0x23
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x3b
	ble _0807DCA6
	strb r3, [r1]
_0807DCA0:
	ldrb r0, [r2]
	eors r0, r5
	strb r0, [r2]
_0807DCA6:
	ldr r0, [r7, #0x40]
	ldr r1, _0807DCCC @ =0xFFFF0000
	adds r4, r0, r1
	ldr r0, [r7, #0x44]
	ldr r1, _0807DCD0 @ =0xFFE20000
	adds r5, r0, r1
	ldr r0, [r6, #0x18]
	subs r4, r0, r4
	ldr r0, [r6, #0x1c]
	subs r5, r0, r5
	cmp r4, #0
	bge _0807DCD4
	rsbs r0, r4, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _0807DCD6
	.align 2, 0
_0807DCCC: .4byte 0xFFFF0000
_0807DCD0: .4byte 0xFFE20000
_0807DCD4:
	asrs r2, r4, #0x10
_0807DCD6:
	cmp r5, #0
	bge _0807DCE6
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _0807DCE8
_0807DCE6:
	asrs r1, r5, #0x10
_0807DCE8:
	adds r0, r2, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r5, r1
	bl sub_080009E4
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_080009E4
	adds r5, r0, #0
	lsls r0, r4, #1
	adds r2, r0, r4
	str r2, [r6, #0x48]
	lsls r0, r5, #1
	str r0, [r6, #0x4c]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807DDC4
	ldr r1, _0807DD20 @ =0xFFFF0000
	b _0807DDC8
	.align 2, 0
_0807DD20: .4byte 0xFFFF0000
_0807DD24:
	adds r0, r7, #0
	bl sub_0806ADBC
	cmp r0, #0
	bne _0807DDCC
	mov r0, r8
	ldrb r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0807DD42
	ldr r0, [r7, #0x40]
	movs r1, #0x80
	lsls r1, r1, #9
	b _0807DD46
_0807DD42:
	ldr r0, [r7, #0x40]
	ldr r1, _0807DD70 @ =0xFFFF0000
_0807DD46:
	adds r4, r0, r1
	ldr r0, [r7, #0x44]
	ldr r1, _0807DD70 @ =0xFFFF0000
	adds r5, r0, r1
	adds r0, r6, #0
	bl sub_0806CD38
	subs r4, r0, r4
	adds r0, r6, #0
	bl sub_0806CD78
	subs r5, r0, r5
	cmp r4, #0
	bge _0807DD74
	rsbs r0, r4, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _0807DD76
	.align 2, 0
_0807DD70: .4byte 0xFFFF0000
_0807DD74:
	asrs r2, r4, #0x10
_0807DD76:
	cmp r5, #0
	bge _0807DD86
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _0807DD88
_0807DD86:
	asrs r1, r5, #0x10
_0807DD88:
	adds r0, r2, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r5, r1
	bl sub_080009E4
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_080009E4
	adds r5, r0, #0
	lsls r0, r4, #1
	adds r2, r0, r4
	str r2, [r6, #0x48]
	lsls r0, r5, #1
	str r0, [r6, #0x4c]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807DDC4
	ldr r1, _0807DDC0 @ =0xFFFF0000
	b _0807DDC8
	.align 2, 0
_0807DDC0: .4byte 0xFFFF0000
_0807DDC4:
	movs r1, #0x80
	lsls r1, r1, #9
_0807DDC8:
	adds r0, r2, r1
	str r0, [r6, #0x48]
_0807DDCC:
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
	bne _0807DE08
	movs r0, #1
	strb r0, [r6, #0xa]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	b _0807DE08
_0807DDF4:
	adds r0, r6, #0
	bl EntityDelete
	b _0807DE08
_0807DDFC:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0807DE08:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0807DE14
sub_0807DE14: @ 0x0807DE14
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r6, r0, #0
	ldr r7, [r6, #0x14]
	ldrb r0, [r6, #0xa]
	mov ip, r0
	cmp r0, #0
	beq _0807DE2A
	b _0807E05C
_0807DE2A:
	cmp r7, #0
	bne _0807DE30
	b _0807E054
_0807DE30:
	ldr r0, [r7]
	cmp r0, #0
	bne _0807DE38
	b _0807E054
_0807DE38:
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x13
	beq _0807DE44
	b _0807E054
_0807DE44:
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
	movs r5, #1
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _0807DED4 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r4, #0x40
	adds r0, r4, #0
	ands r0, r1
	mov r8, r3
	cmp r0, #0
	beq _0807DF84
	adds r2, r6, #0
	adds r2, #0x22
	movs r3, #0
	ldrsb r3, [r2, r3]
	cmp r3, #0
	beq _0807DEDC
	ldr r0, [r6, #0x18]
	ldr r1, _0807DED8 @ =0xFFFF0000
	adds r0, r0, r1
	str r0, [r6, #0x18]
	ldr r0, [r6, #0x1c]
	adds r0, r0, r1
	str r0, [r6, #0x1c]
	adds r1, r6, #0
	adds r1, #0x23
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x3b
	ble _0807DF06
	mov r0, ip
	strb r0, [r1]
	b _0807DF00
	.align 2, 0
_0807DED4: .4byte gEwramData
_0807DED8: .4byte 0xFFFF0000
_0807DEDC:
	ldr r0, [r6, #0x18]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	str r0, [r6, #0x18]
	ldr r0, [r6, #0x1c]
	adds r0, r0, r1
	str r0, [r6, #0x1c]
	adds r1, r6, #0
	adds r1, #0x23
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x3b
	ble _0807DF06
	strb r3, [r1]
_0807DF00:
	ldrb r0, [r2]
	eors r0, r5
	strb r0, [r2]
_0807DF06:
	ldr r0, [r7, #0x40]
	ldr r1, _0807DF2C @ =0xFFFC0000
	adds r4, r0, r1
	ldr r0, [r7, #0x44]
	ldr r1, _0807DF30 @ =0xFFDC0000
	adds r5, r0, r1
	ldr r0, [r6, #0x18]
	subs r4, r0, r4
	ldr r0, [r6, #0x1c]
	subs r5, r0, r5
	cmp r4, #0
	bge _0807DF34
	rsbs r0, r4, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _0807DF36
	.align 2, 0
_0807DF2C: .4byte 0xFFFC0000
_0807DF30: .4byte 0xFFDC0000
_0807DF34:
	asrs r2, r4, #0x10
_0807DF36:
	cmp r5, #0
	bge _0807DF46
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _0807DF48
_0807DF46:
	asrs r1, r5, #0x10
_0807DF48:
	adds r0, r2, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r5, r1
	bl sub_080009E4
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_080009E4
	adds r5, r0, #0
	lsls r2, r4, #1
	str r2, [r6, #0x48]
	lsls r0, r5, #1
	str r0, [r6, #0x4c]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807E024
	ldr r1, _0807DF80 @ =0xFFFF0000
	b _0807E028
	.align 2, 0
_0807DF80: .4byte 0xFFFF0000
_0807DF84:
	adds r0, r7, #0
	bl sub_0806ADBC
	cmp r0, #0
	bne _0807E02C
	mov r0, r8
	ldrb r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0807DFA2
	ldr r0, [r7, #0x40]
	movs r1, #0x80
	lsls r1, r1, #0xb
	b _0807DFA6
_0807DFA2:
	ldr r0, [r7, #0x40]
	ldr r1, _0807DFD0 @ =0xFFFC0000
_0807DFA6:
	adds r4, r0, r1
	ldr r0, [r7, #0x44]
	ldr r1, _0807DFD0 @ =0xFFFC0000
	adds r5, r0, r1
	adds r0, r6, #0
	bl sub_0806CD38
	subs r4, r0, r4
	adds r0, r6, #0
	bl sub_0806CD78
	subs r5, r0, r5
	cmp r4, #0
	bge _0807DFD4
	rsbs r0, r4, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _0807DFD6
	.align 2, 0
_0807DFD0: .4byte 0xFFFC0000
_0807DFD4:
	asrs r2, r4, #0x10
_0807DFD6:
	cmp r5, #0
	bge _0807DFE6
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _0807DFE8
_0807DFE6:
	asrs r1, r5, #0x10
_0807DFE8:
	adds r0, r2, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r5, r1
	bl sub_080009E4
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_080009E4
	adds r5, r0, #0
	lsls r2, r4, #1
	str r2, [r6, #0x48]
	lsls r0, r5, #1
	str r0, [r6, #0x4c]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807E024
	ldr r1, _0807E020 @ =0xFFFF0000
	b _0807E028
	.align 2, 0
_0807E020: .4byte 0xFFFF0000
_0807E024:
	movs r1, #0x80
	lsls r1, r1, #9
_0807E028:
	adds r0, r2, r1
	str r0, [r6, #0x48]
_0807E02C:
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
	bne _0807E068
	movs r0, #1
	strb r0, [r6, #0xa]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	b _0807E068
_0807E054:
	adds r0, r6, #0
	bl EntityDelete
	b _0807E068
_0807E05C:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0807E068:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0807E074
sub_0807E074: @ 0x0807E074
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r0, _0807E104 @ =sub_0807E1B0
	bl sub_0806DFF8
	adds r6, r0, #0
	cmp r6, #0
	bne _0807E090
	b _0807E1A0
_0807E090:
	str r4, [r6, #0x40]
	str r5, [r6, #0x44]
	ldr r0, [r7, #0x48]
	str r0, [r6, #0x48]
	ldr r0, [r7, #0x4c]
	str r0, [r6, #0x4c]
	adds r5, r7, #0
	adds r5, #0x58
	ldrb r0, [r5]
	adds r4, r6, #0
	adds r4, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r4]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r6, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _0807E108 @ =0x081CBFA4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0807E10C @ =0x08219140
	adds r0, r7, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r6, #0
	bl sub_0803B924
	ldrb r0, [r5]
	movs r1, #0x20
	ands r1, r0
	ldrb r2, [r4]
	movs r0, #0x21
	rsbs r0, r0, #0
	mov r8, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0807E110
	adds r0, r6, #0
	bl EntityDelete
	b _0807E1A0
	.align 2, 0
_0807E104: .4byte sub_0807E1B0
_0807E108: .4byte 0x081CBFA4
_0807E10C: .4byte 0x08219140
_0807E110:
	movs r0, #0x1f
	ands r2, r0
	ldrb r1, [r4]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	movs r5, #0x20
	orrs r0, r5
	strb r0, [r2]
	adds r3, r6, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r6, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r0, #0x1c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r7, r2, #0
	cmp r0, #0xdc
	bls _0807E15A
	ldrb r0, [r4]
	orrs r0, r5
	b _0807E160
_0807E15A:
	ldrb r1, [r4]
	mov r0, r8
	ands r0, r1
_0807E160:
	strb r0, [r4]
	adds r0, r6, #0
	movs r1, #6
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	ldr r1, [r6, #0x48]
	ldr r2, [r6, #0x4c]
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
	bl sub_0803E238
	movs r0, #4
	strb r0, [r6, #0xd]
	ldrb r0, [r7]
	movs r1, #2
	orrs r0, r1
	strb r0, [r7]
	ldr r0, _0807E1AC @ =sub_0803B9D0
	str r0, [r6, #4]
_0807E1A0:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807E1AC: .4byte sub_0803B9D0

	thumb_func_start sub_0807E1B0
sub_0807E1B0: @ 0x0807E1B0
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r0, #0x1c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xdc
	bls _0807E1D0
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	b _0807E1DC
_0807E1D0:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r2, [r0]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
_0807E1DC:
	strb r1, [r0]
	adds r6, r0, #0
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
	adds r0, r5, #0
	bl sub_0803F17C
	ldrb r0, [r5, #0xd]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0807E21E
	ldrb r0, [r6]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r5, #0
	bl EntityDelete
_0807E21E:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807E228
sub_0807E228: @ 0x0807E228
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _0807E28C @ =sub_08069134
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0807E2BE
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	str r7, [r4, #0x48]
	mov r0, r8
	str r0, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r2, #0
	ldr r0, [sp, #0x18]
	strb r0, [r1]
	movs r0, #0xc8
	strb r0, [r4, #0xd]
	strb r2, [r4, #0x18]
	movs r0, #3
	strb r0, [r4, #0x19]
	ldr r0, _0807E290 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0807E294 @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803B924
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0807E298
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x40
	b _0807E29E
	.align 2, 0
_0807E28C: .4byte sub_08069134
_0807E290: .4byte 0x081C15F4
_0807E294: .4byte 0x0820ED60
_0807E298:
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x41
_0807E29E:
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
	ldr r0, _0807E2C8 @ =sub_0803B9D0
	str r0, [r4, #4]
_0807E2BE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807E2C8: .4byte sub_0803B9D0

	thumb_func_start sub_0807E2CC
sub_0807E2CC: @ 0x0807E2CC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _0807E30C @ =0x081CBFA4
	movs r1, #0
	bl sub_0803B800
	adds r7, r0, #0
	cmp r7, #0
	blt _0807E320
	ldr r5, _0807E310 @ =0x0820A698
	adds r0, r5, #0
	movs r1, #0
	bl sub_08068264
	adds r4, r6, #0
	adds r4, #0x2c
	strb r0, [r4]
	ldr r1, _0807E314 @ =0x08526D60
	ldrb r2, [r4]
	adds r0, r5, #0
	bl sub_0803CC70
	ldr r1, _0807E318 @ =0x08219140
	ldrb r3, [r4]
	adds r0, r6, #0
	adds r2, r7, #0
	bl sub_0803B924
	ldr r0, _0807E31C @ =sub_0803B9D0
	str r0, [r6, #4]
	movs r0, #1
	b _0807E322
	.align 2, 0
_0807E30C: .4byte 0x081CBFA4
_0807E310: .4byte 0x0820A698
_0807E314: .4byte 0x08526D60
_0807E318: .4byte 0x08219140
_0807E31C: .4byte sub_0803B9D0
_0807E320:
	movs r0, #0
_0807E322:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0807E328
sub_0807E328: @ 0x0807E328
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
	strh r3, [r1, #6]
	ldr r1, [r0, #0x40]
	str r1, [sp, #8]
	ldr r1, [r0, #0x44]
	str r1, [sp, #0xc]
	adds r0, #0x21
	movs r1, #1
	strb r1, [r0]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r0}
	bx r0

	thumb_func_start sub_0807E35C
sub_0807E35C: @ 0x0807E35C
	push {r4, r5, lr}
	sub sp, #0x38
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _0807E3A0
	adds r0, r5, #0
	movs r1, #6
	bl sub_0806D128
	cmp r0, #0
	beq _0807E376
	b _0807E4F2
_0807E376:
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
	beq _0807E394
	adds r0, r5, #0
	bl sub_08021924
_0807E394:
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _0807E3A0
	adds r0, r5, #0
	bl sub_0806AE54
_0807E3A0:
	adds r0, r5, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _0807E3B0
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	bne _0807E448
_0807E3B0:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _0807E3D2
	cmp r0, #1
	bgt _0807E3C0
	cmp r0, #0
	beq _0807E3CA
	b _0807E448
_0807E3C0:
	cmp r0, #2
	beq _0807E3DA
	cmp r0, #3
	beq _0807E440
	b _0807E448
_0807E3CA:
	adds r0, r5, #0
	bl sub_0807E8EC
	b _0807E448
_0807E3D2:
	adds r0, r5, #0
	bl sub_0807F494
	b _0807E448
_0807E3DA:
	ldrb r1, [r5, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0807E40E
	bl RandomNumberGenerator
	movs r1, #0xa0
	lsls r1, r1, #0xe
	bl __umodsi3
	adds r4, r0, #0
	ldr r0, _0807E43C @ =0xFFEC0000
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
_0807E40E:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	adds r2, r5, #0
	adds r2, #0x59
	cmp r0, #0
	bgt _0807E426
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_0807E426:
	ldrb r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0807E448
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _0807E448
	bl sub_0806C250
	b _0807E448
	.align 2, 0
_0807E43C: .4byte 0xFFEC0000
_0807E440:
	adds r0, r5, #0
	bl sub_080809C0
	b _0807E4F2
_0807E448:
	ldr r3, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807E46C
	adds r0, r3, #0
	adds r0, #0x80
	ldr r0, [r0]
	cmp r0, #0
	bge _0807E466
	rsbs r0, r0, #0
	b _0807E47E
_0807E466:
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0807E480
_0807E46C:
	adds r0, r3, #0
	adds r0, #0x80
	ldr r0, [r0]
	cmp r0, #0
	bge _0807E47E
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0807E480
_0807E47E:
	asrs r0, r0, #0x10
_0807E480:
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0807E4A4 @ =0xFFFFFF00
	ldr r1, [sp, #0x34]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0x34]
	adds r0, r3, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	bge _0807E4A8
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0807E4AA
	.align 2, 0
_0807E4A4: .4byte 0xFFFFFF00
_0807E4A8:
	asrs r0, r0, #0x10
_0807E4AA:
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	ldr r1, _0807E4FC @ =0xFFFF00FF
	ldr r2, [sp, #0x34]
	ands r2, r1
	orrs r2, r0
	ldr r0, _0807E500 @ =0xFF00FFFF
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #0xd
	orrs r2, r0
	str r2, [sp, #0x34]
	add r4, sp, #0x34
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _0807E4D2
	rsbs r0, r0, #0
_0807E4D2:
	lsls r1, r0, #0x18
	ldr r0, _0807E504 @ =0x00FFFFFF
	ands r2, r0
	orrs r2, r1
	str r2, [sp, #0x34]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08042848
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080428B4
	adds r0, r5, #0
	bl sub_0806E314
_0807E4F2:
	add sp, #0x38
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807E4FC: .4byte 0xFFFF00FF
_0807E500: .4byte 0xFF00FFFF
_0807E504: .4byte 0x00FFFFFF

	thumb_func_start sub_0807E508
sub_0807E508: @ 0x0807E508
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	adds r7, r0, #0
	ldr r1, _0807E5C0 @ =0x08118E80
	add r0, sp, #8
	movs r2, #0xb
	bl memcpy
	mov r0, sp
	adds r0, #0x14
	str r0, [sp, #0x68]
	ldr r1, _0807E5C4 @ =0x08118E8B
	movs r2, #0xb
	bl memcpy
	add r1, sp, #0x20
	mov sl, r1
	ldr r1, _0807E5C8 @ =0x08118E96
	mov r0, sl
	movs r2, #0xb
	bl memcpy
	add r2, sp, #0x2c
	mov sb, r2
	ldr r1, _0807E5CC @ =0x08118EA1
	mov r0, sb
	movs r2, #0xb
	bl memcpy
	add r3, sp, #0x38
	mov r8, r3
	ldr r1, _0807E5D0 @ =0x08118EAC
	mov r0, r8
	movs r2, #0xb
	bl memcpy
	add r6, sp, #0x44
	ldr r1, _0807E5D4 @ =0x08118EB7
	adds r0, r6, #0
	movs r2, #0xb
	bl memcpy
	add r5, sp, #0x50
	ldr r1, _0807E5D8 @ =0x08118EC2
	adds r0, r5, #0
	movs r2, #0xb
	bl memcpy
	add r4, sp, #0x5c
	ldr r1, _0807E5DC @ =0x08118ECD
	adds r0, r4, #0
	movs r2, #0xb
	bl memcpy
	adds r0, r7, #0
	bl sub_08081128
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807E58A
	b _0807E8CE
_0807E58A:
	movs r0, #0x58
	bl sub_0806C2CC
	str r0, [r7, #0x1c]
	cmp r0, #0
	bne _0807E598
	b _0807E8CE
_0807E598:
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
	mov sb, r0
	cmp r1, #0x50
	bne _0807E5E0
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0
	b _0807E5E6
	.align 2, 0
_0807E5C0: .4byte 0x08118E80
_0807E5C4: .4byte 0x08118E8B
_0807E5C8: .4byte 0x08118E96
_0807E5CC: .4byte 0x08118EA1
_0807E5D0: .4byte 0x08118EAC
_0807E5D4: .4byte 0x08118EB7
_0807E5D8: .4byte 0x08118EC2
_0807E5DC: .4byte 0x08118ECD
_0807E5E0:
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #7
_0807E5E6:
	strb r0, [r1]
	str r1, [sp, #0x70]
	adds r0, r7, #0
	bl sub_0806B04C
	movs r4, #0
	mov sl, r4
	mov r6, sb
	str r6, [sp, #0x6c]
_0807E5F8:
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #0x50
	bne _0807E608
	mov r0, sp
	add r0, sl
	adds r0, #0x5c
	b _0807E60E
_0807E608:
	mov r0, sp
	add r0, sl
	adds r0, #0x50
_0807E60E:
	movs r5, #0
	ldrsb r5, [r0, r5]
	ldr r0, _0807E638 @ =sub_080812CC
	bl sub_0806DFF8
	mov r8, r0
	cmp r0, #0
	bne _0807E620
	b _0807E7A0
_0807E620:
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	mov r0, r8
	adds r0, #0x5c
	strb r1, [r0]
	mov r2, sb
	ldrb r0, [r2]
	cmp r0, #0x50
	bne _0807E640
	ldr r0, _0807E63C @ =0x081CBFB4
	b _0807E642
	.align 2, 0
_0807E638: .4byte sub_080812CC
_0807E63C: .4byte 0x081CBFB4
_0807E640:
	ldr r0, _0807E6D4 @ =0x081CBFAC
_0807E642:
	movs r1, #0
	bl sub_0803B800
	adds r2, r0, #0
	adds r4, r7, #0
	adds r4, #0x2c
	ldrb r3, [r4]
	mov r0, r8
	ldr r1, _0807E6D8 @ =0x08219804
	bl sub_0803B924
	ldr r3, [sp, #0x6c]
	ldrb r0, [r3]
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
	movs r4, #3
	rsbs r4, r4, #0
	adds r1, r4, #0
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
	ldr r0, _0807E6DC @ =sub_0803B9D0
	mov r1, r8
	str r0, [r1, #4]
	str r7, [r1, #0x1c]
	mov r0, r8
	adds r0, #0x20
	strb r5, [r0]
	mov r0, sp
	adds r0, r0, r5
	adds r0, #0x44
	ldrb r0, [r0]
	adds r1, #0x21
	strb r0, [r1]
	ldr r0, [r7, #0x40]
	mov r4, r8
	str r0, [r4, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r4, #0x44]
	ldr r6, [sp, #0x6c]
	ldrb r0, [r6]
	adds r6, r3, #0
	adds r4, r2, #0
	cmp r0, #0x50
	bne _0807E6E0
	mov r0, sp
	adds r0, r0, r5
	adds r0, #0x38
	ldrb r0, [r0]
	adds r1, #0x44
	b _0807E718
	.align 2, 0
_0807E6D4: .4byte 0x081CBFAC
_0807E6D8: .4byte 0x08219804
_0807E6DC: .4byte sub_0803B9D0
_0807E6E0:
	cmp r0, #0x65
	bne _0807E6EC
	mov r0, sp
	adds r0, r0, r5
	adds r0, #0x14
	b _0807E712
_0807E6EC:
	cmp r0, #0x22
	bne _0807E70C
	bl RandomNumberGenerator
	movs r1, #0xf
	ands r1, r0
	cmp r1, #0
	bne _0807E704
	mov r0, sp
	adds r0, r0, r5
	adds r0, #0x2c
	b _0807E712
_0807E704:
	mov r0, sp
	adds r0, r0, r5
	adds r0, #0x20
	b _0807E712
_0807E70C:
	mov r0, sp
	adds r0, r0, r5
	adds r0, #8
_0807E712:
	ldrb r0, [r0]
	mov r1, r8
	adds r1, #0x65
_0807E718:
	strb r0, [r1]
	cmp r5, #5
	bls _0807E72E
	cmp r5, #7
	beq _0807E72E
	cmp r5, #8
	beq _0807E72E
	cmp r5, #9
	beq _0807E72E
	cmp r5, #0xa
	bne _0807E776
_0807E72E:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0807E73E
	b _0807E8C8
_0807E73E:
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
_0807E776:
	ldr r0, _0807E794 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0807E7A8
	mov r0, r8
	movs r1, #8
	ldr r2, _0807E798 @ =sub_08081248
	ldr r3, _0807E79C @ =sub_080819D4
	bl sub_0804277C
	b _0807E7A8
	.align 2, 0
_0807E794: .4byte gEwramData
_0807E798: .4byte sub_08081248
_0807E79C: .4byte sub_080819D4
_0807E7A0:
	ldr r0, [r7, #0x1c]
	bl sub_0806C250
	b _0807E8CE
_0807E7A8:
	movs r4, #1
	add sl, r4
	mov r6, sl
	cmp r6, #0xa
	bgt _0807E7B4
	b _0807E5F8
_0807E7B4:
	ldr r4, [r7, #0x1c]
	ldr r0, _0807E7F8 @ =0x08527048
	ldr r2, [sp, #0x70]
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r1, r1, #2
	adds r0, r1, r0
	ldr r2, _0807E7FC @ =0x08527354
	adds r1, r1, r2
	ldr r1, [r1]
	movs r5, #0
	ldr r3, _0807E800 @ =gEwramData
	mov sl, r3
	movs r6, #0x88
	adds r6, r6, r4
	mov r8, r6
	movs r2, #0xa8
	adds r2, r2, r4
	mov ip, r2
	adds r2, r4, #0
	ldr r3, [r0]
_0807E7DE:
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0x10
	str r0, [r2]
	movs r0, #1
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0x10
	str r0, [r2, #4]
	cmp r5, #1
	bne _0807E804
	ldr r0, [r1]
	str r0, [r4, #0x28]
	b _0807E836
	.align 2, 0
_0807E7F8: .4byte 0x08527048
_0807E7FC: .4byte 0x08527354
_0807E800: .4byte gEwramData
_0807E804:
	cmp r5, #3
	bne _0807E80E
	ldr r0, [r1, #4]
	str r0, [r4, #0x68]
	b _0807E836
_0807E80E:
	cmp r5, #4
	bne _0807E81A
	ldr r0, [r1, #8]
	mov r6, r8
	str r0, [r6]
	b _0807E836
_0807E81A:
	cmp r5, #5
	bne _0807E826
	ldr r0, [r1, #0xc]
	mov r6, ip
	str r0, [r6]
	b _0807E836
_0807E826:
	cmp r5, #8
	bne _0807E82E
	ldr r0, [r1, #0x10]
	b _0807E834
_0807E82E:
	cmp r5, #0xa
	bne _0807E836
	ldr r0, [r1, #0x14]
_0807E834:
	str r0, [r2, #8]
_0807E836:
	adds r2, #0x20
	adds r3, #2
	adds r5, #1
	cmp r5, #0xa
	ble _0807E7DE
	mov r1, sl
	ldr r0, [r1]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _0807E86E
	movs r0, #3
	strb r0, [r7, #0xa]
	mov r2, sb
	ldrb r0, [r2]
	cmp r0, #0x50
	bne _0807E864
	movs r0, #0x28
	b _0807E866
_0807E864:
	movs r0, #0x14
_0807E866:
	strb r0, [r7, #0xb]
	movs r0, #0
	strb r0, [r7, #0xd]
	b _0807E8DA
_0807E86E:
	ldr r2, _0807E894 @ =sub_08081A9C
	ldr r3, _0807E898 @ =sub_080811CC
	adds r0, r7, #0
	movs r1, #8
	bl sub_0804277C
	adds r0, r7, #0
	bl sub_08080F84
	adds r0, r7, #0
	bl sub_0806AF98
	strb r4, [r7, #0xa]
	mov r3, sb
	ldrb r0, [r3]
	cmp r0, #0x50
	bne _0807E89C
	movs r0, #0x28
	b _0807E89E
	.align 2, 0
_0807E894: .4byte sub_08081A9C
_0807E898: .4byte sub_080811CC
_0807E89C:
	movs r0, #0x14
_0807E89E:
	strb r0, [r7, #0xb]
	mov r4, sb
	ldrb r0, [r4]
	cmp r0, #0x50
	beq _0807E8D6
	cmp r0, #0x50
	bgt _0807E8B6
	cmp r0, #0x22
	beq _0807E8C4
	cmp r0, #0x35
	beq _0807E8BC
	b _0807E8DA
_0807E8B6:
	cmp r0, #0x65
	beq _0807E8C0
	b _0807E8DA
_0807E8BC:
	movs r0, #0
	b _0807E8D8
_0807E8C0:
	movs r0, #1
	b _0807E8D8
_0807E8C4:
	movs r0, #2
	b _0807E8D8
_0807E8C8:
	mov r0, r8
	bl EntityDelete
_0807E8CE:
	adds r0, r7, #0
	bl EntityDelete
	b _0807E8DA
_0807E8D6:
	movs r0, #3
_0807E8D8:
	str r0, [r7, #0x24]
_0807E8DA:
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807E8EC
sub_0807E8EC: @ 0x0807E8EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0807E930 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0807E934 @ =0x0000A094
	adds r1, r1, r0
	mov sb, r1
	ldr r1, _0807E938 @ =0x08118ED8
	mov r0, sp
	movs r2, #4
	bl memcpy
	add r4, sp, #4
	ldr r1, _0807E93C @ =0x08118EDC
	adds r0, r4, #0
	movs r2, #4
	bl memcpy
	ldrb r0, [r5, #0xb]
	cmp r0, #0x29
	bls _0807E924
	bl _0807F480
_0807E924:
	lsls r0, r0, #2
	ldr r1, _0807E940 @ =_0807E944
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807E930: .4byte gEwramData
_0807E934: .4byte 0x0000A094
_0807E938: .4byte 0x08118ED8
_0807E93C: .4byte 0x08118EDC
_0807E940: .4byte _0807E944
_0807E944: @ jump table
	.4byte _0807E9EC @ case 0
	.4byte _0807ED78 @ case 1
	.4byte _0807EA70 @ case 2
	.4byte _0807EAD0 @ case 3
	.4byte _0807EF50 @ case 4
	.4byte _0807EC34 @ case 5
	.4byte _0807EC78 @ case 6
	.4byte _0807ED78 @ case 7
	.4byte _0807EDB4 @ case 8
	.4byte _0807EDF4 @ case 9
	.4byte _0807EF50 @ case 10
	.4byte _0807EF8C @ case 11
	.4byte _0807F004 @ case 12
	.4byte _0807F480 @ case 13
	.4byte _0807F480 @ case 14
	.4byte _0807F480 @ case 15
	.4byte _0807F480 @ case 16
	.4byte _0807F480 @ case 17
	.4byte _0807F480 @ case 18
	.4byte _0807F480 @ case 19
	.4byte _0807F174 @ case 20
	.4byte _0807F1D0 @ case 21
	.4byte _0807F1FC @ case 22
	.4byte _0807F332 @ case 23
	.4byte _0807F22A @ case 24
	.4byte _0807F250 @ case 25
	.4byte _0807F27C @ case 26
	.4byte _0807F332 @ case 27
	.4byte _0807F2AA @ case 28
	.4byte _0807F2D0 @ case 29
	.4byte _0807F304 @ case 30
	.4byte _0807F332 @ case 31
	.4byte _0807F358 @ case 32
	.4byte _0807F480 @ case 33
	.4byte _0807F480 @ case 34
	.4byte _0807F480 @ case 35
	.4byte _0807F480 @ case 36
	.4byte _0807F480 @ case 37
	.4byte _0807F480 @ case 38
	.4byte _0807F480 @ case 39
	.4byte _0807F394 @ case 40
	.4byte _0807F44E @ case 41
_0807E9EC:
	adds r0, r5, #0
	bl sub_08080F84
	movs r0, #0
	str r0, [r5, #0x48]
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	ldr r2, _0807EA6C @ =0xFFD00000
	adds r0, r5, #0
	bl sub_0806D288
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x50
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xa0
	movs r3, #0xa0
	bl sub_0806CFFC
	cmp r0, #0
	bne _0807EA3C
	adds r0, r5, #0
	bl sub_0806D54C
	cmp r0, #0
	bne _0807EA3C
	bl _0807F480
_0807EA3C:
	movs r1, #2
	strb r1, [r5, #0xb]
	ldr r0, [r5, #0x24]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r5, #0xd]
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r0, #0x38
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0807EA5E
	bl _0807F40C
_0807EA5E:
	ldrb r1, [r5, #0xd]
	lsls r1, r1, #1
	movs r0, #0x80
	lsls r0, r0, #0xd
	bl _0807F412
	.align 2, 0
_0807EA6C: .4byte 0xFFD00000
_0807EA70:
	adds r0, r5, #0
	bl sub_0808197C
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _0807EAC8 @ =0xFFD00000
	adds r0, r5, #0
	bl sub_0806D288
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807EA92
	bl _0807F480
_0807EA92:
	ldr r0, [r5, #0x24]
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0x7c
	bl sub_080D7910
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #2
_0807EAAC:
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	ldr r4, _0807EACC @ =0xFFF80000
	cmp r0, #0
	bne _0807EAC0
	b _0807EFDC
_0807EAC0:
	movs r4, #0x80
	lsls r4, r4, #0xc
	b _0807EFDC
	.align 2, 0
_0807EAC8: .4byte 0xFFD00000
_0807EACC: .4byte 0xFFF80000
_0807EAD0:
	ldrb r1, [r5, #0xd]
	ldr r0, [r5, #0x24]
	adds r0, r4, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #0xa
	cmp r1, r0
	blt _0807EAF4
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	bne _0807EAF4
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_08011F7C
_0807EAF4:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807EB04
	bl _0807F480
_0807EB04:
	bl RandomNumberGenerator
	adds r4, r0, #0
	movs r0, #3
	ands r4, r0
	adds r7, r5, #0
	adds r7, #0x42
	cmp r4, #1
	bhi _0807EB32
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r7, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0807EB2C
	rsbs r0, r0, #0
_0807EB2C:
	cmp r0, #0x3b
	bgt _0807EB32
	b _0807F062
_0807EB32:
	cmp r4, #2
	bne _0807EB52
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r7, r3]
	subs r0, r0, r1
	cmp r0, #0
	bge _0807EB4C
	rsbs r0, r0, #0
_0807EB4C:
	cmp r0, #0x77
	bgt _0807EB52
	b _0807F08A
_0807EB52:
	ldr r0, [r5, #0x24]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r4, r5, #0
	adds r4, #0x20
	movs r0, #3
	strb r0, [r4]
	adds r0, r5, #0
	bl sub_08080F84
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	mov sl, r4
	mov r8, r2
	cmp r0, #0
	beq _0807EB8A
	ldrb r1, [r5, #0xd]
	lsls r1, r1, #1
	movs r0, #0x80
	lsls r0, r0, #0xd
	b _0807EB90
_0807EB8A:
	ldrb r1, [r5, #0xd]
	lsls r1, r1, #1
	ldr r0, _0807EC30 @ =0xFFF00000
_0807EB90:
	bl __divsi3
	str r0, [r5, #0x48]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	movs r4, #0x20
	rsbs r4, r4, #0
	cmp r0, #0
	beq _0807EBA8
	movs r4, #0x20
_0807EBA8:
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r7, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0807EBBE
	rsbs r0, r0, #0
_0807EBBE:
	adds r6, r5, #0
	adds r6, #0x46
	cmp r0, #0x17
	ble _0807EBEC
	ldrh r0, [r7]
	mov r3, sb
	ldrh r3, [r3, #6]
	adds r0, r0, r3
	adds r0, r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	mov r2, sb
	ldrh r2, [r2, #0xa]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	bne _0807EBEC
	bl _0807F418
_0807EBEC:
	mov r3, r8
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	movs r4, #0x20
	cmp r0, #0
	beq _0807EBFC
	subs r4, #0x40
_0807EBFC:
	ldrh r0, [r7]
	mov r1, sb
	ldrh r1, [r1, #6]
	adds r0, r0, r1
	adds r0, r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	mov r2, sb
	ldrh r2, [r2, #0xa]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	beq _0807EC22
	bl _0807F418
_0807EC22:
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	str r0, [r5, #0x48]
	movs r0, #0xa
	strb r0, [r5, #0xb]
	movs r0, #1
	b _0807F16A
	.align 2, 0
_0807EC30: .4byte 0xFFF00000
_0807EC34:
	adds r0, r5, #0
	bl sub_0808197C
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _0807EC74 @ =0xFFD00000
	adds r0, r5, #0
	bl sub_0806D288
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807EC56
	bl _0807F480
_0807EC56:
	ldr r0, [r5, #0x24]
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0x7c
	bl sub_080D7910
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #4
	b _0807EAAC
	.align 2, 0
_0807EC74: .4byte 0xFFD00000
_0807EC78:
	ldrb r1, [r5, #0xd]
	ldr r0, [r5, #0x24]
	adds r0, r4, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #0xa
	cmp r1, r0
	blt _0807EC9C
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	bne _0807EC9C
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_08011F7C
_0807EC9C:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807ECAA
	b _0807F480
_0807ECAA:
	bl RandomNumberGenerator
	adds r4, r0, #0
	movs r0, #3
	ands r4, r0
	adds r7, r5, #0
	adds r7, #0x42
	cmp r4, #1
	bhi _0807ECD8
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r7, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0807ECD2
	rsbs r0, r0, #0
_0807ECD2:
	cmp r0, #0x3b
	bgt _0807ECD8
	b _0807F062
_0807ECD8:
	cmp r4, #2
	bne _0807ECF8
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r7, r3]
	subs r0, r0, r1
	cmp r0, #0
	bge _0807ECF2
	rsbs r0, r0, #0
_0807ECF2:
	cmp r0, #0x77
	bgt _0807ECF8
	b _0807F08A
_0807ECF8:
	ldr r0, [r5, #0x24]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r5, #0xd]
	movs r0, #1
	strb r0, [r5, #0xb]
	adds r4, r5, #0
	adds r4, #0x20
	strb r0, [r4]
	adds r0, r5, #0
	bl sub_08080F84
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	mov sl, r4
	mov r8, r2
	cmp r0, #0
	beq _0807ED2C
	ldrb r1, [r5, #0xd]
	lsls r1, r1, #1
	movs r0, #0x80
	lsls r0, r0, #0xd
	b _0807ED32
_0807ED2C:
	ldrb r1, [r5, #0xd]
	lsls r1, r1, #1
	ldr r0, _0807ED74 @ =0xFFF00000
_0807ED32:
	bl __divsi3
	str r0, [r5, #0x48]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	movs r4, #0x20
	rsbs r4, r4, #0
	cmp r0, #0
	beq _0807ED4A
	movs r4, #0x20
_0807ED4A:
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r7, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0807ED60
	rsbs r0, r0, #0
_0807ED60:
	adds r6, r5, #0
	adds r6, #0x46
	cmp r0, #0x17
	bgt _0807ED6A
	b _0807F12A
_0807ED6A:
	ldrh r0, [r7]
	mov r3, sb
	ldrh r3, [r3, #6]
	adds r0, r0, r3
	b _0807F10E
	.align 2, 0
_0807ED74: .4byte 0xFFF00000
_0807ED78:
	adds r0, r5, #0
	bl sub_0808197C
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _0807EDB0 @ =0xFFD00000
	adds r0, r5, #0
	bl sub_0806D288
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807ED98
	b _0807F480
_0807ED98:
	ldr r0, [r5, #0x24]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	b _0807F480
	.align 2, 0
_0807EDB0: .4byte 0xFFD00000
_0807EDB4:
	adds r0, r5, #0
	bl sub_0808197C
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _0807EDF0 @ =0xFFD00000
	adds r0, r5, #0
	bl sub_0806D288
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807EDD4
	b _0807F480
_0807EDD4:
	ldr r0, [r5, #0x24]
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0x7c
	bl sub_080D7910
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #2
	b _0807EFC6
	.align 2, 0
_0807EDF0: .4byte 0xFFD00000
_0807EDF4:
	ldrb r1, [r5, #0xd]
	ldr r0, [r5, #0x24]
	adds r0, r4, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #0xa
	cmp r1, r0
	blt _0807EE18
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	bne _0807EE18
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_08011F7C
_0807EE18:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807EE26
	b _0807F480
_0807EE26:
	bl RandomNumberGenerator
	adds r4, r0, #0
	movs r0, #3
	ands r4, r0
	adds r7, r5, #0
	adds r7, #0x42
	cmp r4, #1
	bhi _0807EE54
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r7, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0807EE4E
	rsbs r0, r0, #0
_0807EE4E:
	cmp r0, #0x3b
	bgt _0807EE54
	b _0807F062
_0807EE54:
	cmp r4, #2
	bne _0807EE74
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r7, r3]
	subs r0, r0, r1
	cmp r0, #0
	bge _0807EE6E
	rsbs r0, r0, #0
_0807EE6E:
	cmp r0, #0x77
	bgt _0807EE74
	b _0807F08A
_0807EE74:
	ldr r0, [r5, #0x24]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r5, #0xd]
	movs r0, #4
	strb r0, [r5, #0xb]
	adds r4, r5, #0
	adds r4, #0x20
	movs r0, #3
	strb r0, [r4]
	adds r0, r5, #0
	bl sub_08080F84
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	mov sl, r4
	mov r8, r2
	cmp r0, #0
	beq _0807EEAA
	ldrb r1, [r5, #0xd]
	lsls r1, r1, #1
	movs r0, #0x80
	lsls r0, r0, #0xd
	b _0807EEB0
_0807EEAA:
	ldrb r1, [r5, #0xd]
	lsls r1, r1, #1
	ldr r0, _0807EF4C @ =0xFFF00000
_0807EEB0:
	bl __divsi3
	str r0, [r5, #0x48]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	movs r4, #0x20
	rsbs r4, r4, #0
	cmp r0, #0
	beq _0807EEC8
	movs r4, #0x20
_0807EEC8:
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r7, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0807EEDE
	rsbs r0, r0, #0
_0807EEDE:
	adds r6, r5, #0
	adds r6, #0x46
	cmp r0, #0x17
	ble _0807EF0A
	ldrh r0, [r7]
	mov r3, sb
	ldrh r3, [r3, #6]
	adds r0, r0, r3
	adds r0, r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	mov r2, sb
	ldrh r2, [r2, #0xa]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	bne _0807EF0A
	b _0807F418
_0807EF0A:
	mov r3, r8
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	movs r4, #0x20
	cmp r0, #0
	beq _0807EF1A
	subs r4, #0x40
_0807EF1A:
	ldrh r0, [r7]
	mov r1, sb
	ldrh r1, [r1, #6]
	adds r0, r0, r1
	adds r0, r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	mov r2, sb
	ldrh r2, [r2, #0xa]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	beq _0807EF3E
	b _0807F418
_0807EF3E:
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	str r0, [r5, #0x48]
	movs r0, #0xa
	strb r0, [r5, #0xb]
	movs r0, #1
	b _0807F16A
	.align 2, 0
_0807EF4C: .4byte 0xFFF00000
_0807EF50:
	adds r0, r5, #0
	bl sub_0808197C
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _0807EF88 @ =0xFFD00000
	adds r0, r5, #0
	bl sub_0806D288
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807EF70
	b _0807F480
_0807EF70:
	ldr r0, [r5, #0x24]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #4
	strb r0, [r1]
	b _0807F480
	.align 2, 0
_0807EF88: .4byte 0xFFD00000
_0807EF8C:
	adds r0, r5, #0
	bl sub_0808197C
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _0807EFFC @ =0xFFD00000
	adds r0, r5, #0
	bl sub_0806D288
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807EFAC
	b _0807F480
_0807EFAC:
	ldr r0, [r5, #0x24]
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0x7c
	bl sub_080D7910
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #4
_0807EFC6:
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	movs r4, #0xc0
	lsls r4, r4, #0xb
	cmp r0, #0
	beq _0807EFDC
	ldr r4, _0807F000 @ =0xFFFA0000
_0807EFDC:
	ldr r0, [r5, #0x40]
	adds r0, r0, r4
	ldr r1, [r5, #0x44]
	adds r2, r5, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	movs r3, #1
	bl sub_0806D7F0
	movs r0, #0
	movs r1, #1
	movs r2, #2
	bl sub_08011F7C
	b _0807F480
	.align 2, 0
_0807EFFC: .4byte 0xFFD00000
_0807F000: .4byte 0xFFFA0000
_0807F004:
	ldrb r1, [r5, #0xd]
	ldr r0, [r5, #0x24]
	adds r0, r4, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #0xa
	cmp r1, r0
	blt _0807F028
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	bne _0807F028
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_08011F7C
_0807F028:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807F036
	b _0807F480
_0807F036:
	bl RandomNumberGenerator
	adds r4, r0, #0
	movs r0, #3
	ands r4, r0
	adds r7, r5, #0
	adds r7, #0x42
	cmp r4, #1
	bhi _0807F06C
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r7, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0807F05E
	rsbs r0, r0, #0
_0807F05E:
	cmp r0, #0x3b
	bgt _0807F06C
_0807F062:
	movs r0, #1
	strb r0, [r5, #0xa]
	movs r0, #0
	strb r0, [r5, #0xb]
	b _0807F480
_0807F06C:
	cmp r4, #2
	bne _0807F094
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r7, r3]
	subs r0, r0, r1
	cmp r0, #0
	bge _0807F086
	rsbs r0, r0, #0
_0807F086:
	cmp r0, #0x77
	bgt _0807F094
_0807F08A:
	movs r0, #1
	strb r0, [r5, #0xa]
	movs r0, #0x14
	strb r0, [r5, #0xb]
	b _0807F480
_0807F094:
	ldr r0, [r5, #0x24]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r5, #0xd]
	movs r0, #1
	strb r0, [r5, #0xb]
	adds r4, r5, #0
	adds r4, #0x20
	strb r0, [r4]
	adds r0, r5, #0
	bl sub_08080F84
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	mov sl, r4
	mov r8, r2
	cmp r0, #0
	beq _0807F0C8
	ldrb r1, [r5, #0xd]
	lsls r1, r1, #1
	movs r0, #0x80
	lsls r0, r0, #0xd
	b _0807F0CE
_0807F0C8:
	ldrb r1, [r5, #0xd]
	lsls r1, r1, #1
	ldr r0, _0807F170 @ =0xFFF00000
_0807F0CE:
	bl __divsi3
	str r0, [r5, #0x48]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	movs r4, #0x20
	rsbs r4, r4, #0
	cmp r0, #0
	beq _0807F0E6
	movs r4, #0x20
_0807F0E6:
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r2, r7, #0
	movs r3, #0
	ldrsh r1, [r2, r3]
	subs r0, r0, r1
	cmp r0, #0
	bge _0807F0FE
	rsbs r0, r0, #0
_0807F0FE:
	adds r6, r5, #0
	adds r6, #0x46
	cmp r0, #0x17
	ble _0807F12A
	ldrh r0, [r2]
	mov r1, sb
	ldrh r1, [r1, #6]
	adds r0, r0, r1
_0807F10E:
	adds r0, r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	mov r2, sb
	ldrh r2, [r2, #0xa]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	bne _0807F12A
	b _0807F418
_0807F12A:
	mov r3, r8
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	movs r4, #0x20
	cmp r0, #0
	beq _0807F13A
	subs r4, #0x40
_0807F13A:
	ldrh r0, [r7]
	mov r1, sb
	ldrh r1, [r1, #6]
	adds r0, r0, r1
	adds r0, r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	mov r2, sb
	ldrh r2, [r2, #0xa]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	beq _0807F15E
	b _0807F418
_0807F15E:
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	str r0, [r5, #0x48]
	movs r0, #7
	strb r0, [r5, #0xb]
	movs r0, #3
_0807F16A:
	mov r3, sl
	strb r0, [r3]
	b _0807F418
	.align 2, 0
_0807F170: .4byte 0xFFF00000
_0807F174:
	adds r0, r5, #0
	bl sub_08080F84
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	ldr r2, _0807F1CC @ =0xFFD00000
	adds r0, r5, #0
	bl sub_0806D288
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x50
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xa0
	movs r3, #0xa0
	bl sub_0806CFFC
	cmp r0, #0
	bne _0807F1BE
	adds r0, r5, #0
	bl sub_0806D54C
	cmp r0, #0
	bne _0807F1BE
	b _0807F480
_0807F1BE:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0x14
	strb r0, [r5, #0xd]
	b _0807F220
	.align 2, 0
_0807F1CC: .4byte 0xFFD00000
_0807F1D0:
	adds r0, r5, #0
	bl sub_08080F84
	adds r0, r5, #0
	bl sub_0808197C
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807F1EA
	b _0807F480
_0807F1EA:
	movs r0, #4
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #8
	b _0807F2FA
_0807F1FC:
	adds r0, r5, #0
	bl sub_08080F84
	adds r0, r5, #0
	bl sub_0808197C
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807F216
	b _0807F480
_0807F216:
	movs r0, #4
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
_0807F220:
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #6
	strb r0, [r1]
	b _0807F480
_0807F22A:
	adds r0, r5, #0
	bl sub_08080F84
	adds r0, r5, #0
	bl sub_0808197C
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807F244
	b _0807F480
_0807F244:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0x14
	strb r0, [r5, #0xd]
	b _0807F2A0
_0807F250:
	adds r0, r5, #0
	bl sub_08080F84
	adds r0, r5, #0
	bl sub_0808197C
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807F26A
	b _0807F480
_0807F26A:
	movs r0, #4
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #9
	b _0807F2FA
_0807F27C:
	adds r0, r5, #0
	bl sub_08080F84
	adds r0, r5, #0
	bl sub_0808197C
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807F296
	b _0807F480
_0807F296:
	movs r0, #4
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
_0807F2A0:
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #5
	strb r0, [r1]
	b _0807F480
_0807F2AA:
	adds r0, r5, #0
	bl sub_08080F84
	adds r0, r5, #0
	bl sub_0808197C
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807F2C4
	b _0807F480
_0807F2C4:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0x14
	strb r0, [r5, #0xd]
	b _0807F328
_0807F2D0:
	adds r0, r5, #0
	bl sub_08080F84
	adds r0, r5, #0
	bl sub_0808197C
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807F2EA
	b _0807F480
_0807F2EA:
	movs r0, #4
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0xa
_0807F2FA:
	strb r0, [r1]
	movs r0, #0x7e
	bl sub_080D7910
	b _0807F480
_0807F304:
	adds r0, r5, #0
	bl sub_08080F84
	adds r0, r5, #0
	bl sub_0808197C
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807F31E
	b _0807F480
_0807F31E:
	movs r0, #4
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
_0807F328:
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	b _0807F480
_0807F332:
	adds r0, r5, #0
	bl sub_08080F84
	adds r0, r5, #0
	bl sub_0808197C
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807F34C
	b _0807F480
_0807F34C:
	movs r0, #0x14
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	b _0807F480
_0807F358:
	adds r0, r5, #0
	bl sub_0808197C
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807F36C
	b _0807F480
_0807F36C:
	ldr r0, [r5, #0x24]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r5, #0xd]
	movs r1, #2
	strb r1, [r5, #0xb]
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r0, #0x38
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807F40C
	ldrb r1, [r5, #0xd]
	lsls r1, r1, #1
	movs r0, #0x80
	lsls r0, r0, #0xd
	b _0807F412
_0807F394:
	adds r0, r5, #0
	bl sub_08080F84
	movs r0, #0
	str r0, [r5, #0x48]
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	ldr r2, _0807F408 @ =0xFFD00000
	adds r0, r5, #0
	bl sub_0806D288
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x50
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xa0
	movs r3, #0xa0
	bl sub_0806CFFC
	cmp r0, #0
	bne _0807F3E0
	adds r0, r5, #0
	bl sub_0806D54C
	cmp r0, #0
	beq _0807F42C
_0807F3E0:
	movs r1, #2
	strb r1, [r5, #0xb]
	ldr r0, [r5, #0x24]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r5, #0xd]
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r0, #0x38
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807F40C
	ldrb r1, [r5, #0xd]
	lsls r1, r1, #1
	movs r0, #0x80
	lsls r0, r0, #0xd
	b _0807F412
	.align 2, 0
_0807F408: .4byte 0xFFD00000
_0807F40C:
	ldrb r1, [r5, #0xd]
	lsls r1, r1, #1
	ldr r0, _0807F428 @ =0xFFF00000
_0807F412:
	bl __divsi3
	str r0, [r5, #0x48]
_0807F418:
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	b _0807F480
	.align 2, 0
_0807F428: .4byte 0xFFF00000
_0807F42C:
	bl RandomNumberGenerator
	movs r1, #0x3c
	bl __umodsi3
	adds r4, r0, #0
	cmp r4, #0
	bne _0807F480
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_080819E0
	b _0807F47E
_0807F44E:
	adds r0, r5, #0
	bl sub_08080F84
	movs r4, #0
	str r4, [r5, #0x48]
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	ldr r2, _0807F490 @ =0xFFD00000
	adds r0, r5, #0
	bl sub_0806D288
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bls _0807F480
	movs r0, #0x28
	strb r0, [r5, #0xb]
_0807F47E:
	strb r4, [r5, #0xd]
_0807F480:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807F490: .4byte 0xFFD00000

	thumb_func_start sub_0807F494
sub_0807F494: @ 0x0807F494
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r7, r0, #0
	ldr r1, _0807F50C @ =0x08118EE0
	add r0, sp, #8
	movs r2, #0xb
	bl memcpy
	mov r0, sp
	adds r0, #0x14
	str r0, [sp, #0x28]
	ldr r4, _0807F510 @ =0x08118EEB
	adds r1, r4, #0
	movs r2, #4
	bl memcpy
	add r1, sp, #0x18
	mov r8, r1
	mov r0, r8
	adds r1, r4, #0
	movs r2, #4
	bl memcpy
	add r2, sp, #0x1c
	mov sb, r2
	ldr r1, _0807F514 @ =0x08118EEF
	mov r0, sb
	movs r2, #4
	bl memcpy
	add r6, sp, #0x20
	ldr r1, _0807F518 @ =0x08118EF3
	adds r0, r6, #0
	movs r2, #4
	bl memcpy
	add r4, sp, #0x24
	ldr r1, _0807F51C @ =0x08118EF7
	adds r0, r4, #0
	movs r2, #4
	bl memcpy
	ldr r3, [r7, #0x1c]
	mov sl, r3
	ldrb r0, [r7, #0xb]
	mov r8, sb
	mov sb, r6
	cmp r0, #0x38
	bls _0807F502
	bl _080809B0
_0807F502:
	lsls r0, r0, #2
	ldr r1, _0807F520 @ =_0807F524
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807F50C: .4byte 0x08118EE0
_0807F510: .4byte 0x08118EEB
_0807F514: .4byte 0x08118EEF
_0807F518: .4byte 0x08118EF3
_0807F51C: .4byte 0x08118EF7
_0807F520: .4byte _0807F524
_0807F524: @ jump table
	.4byte _0807F608 @ case 0
	.4byte _0807F6C8 @ case 1
	.4byte _0807F736 @ case 2
	.4byte _0807F760 @ case 3
	.4byte _0807F7E4 @ case 4
	.4byte _0807F864 @ case 5
	.4byte _0807F97C @ case 6
	.4byte _0807F9D2 @ case 7
	.4byte _0807FA14 @ case 8
	.4byte _080809B0 @ case 9
	.4byte _0807FA36 @ case 10
	.4byte _0807FA96 @ case 11
	.4byte _0807FAE0 @ case 12
	.4byte _0807FB64 @ case 13
	.4byte _0807FBE4 @ case 14
	.4byte _0807FD18 @ case 15
	.4byte _0807FD52 @ case 16
	.4byte _08080990 @ case 17
	.4byte _080809B0 @ case 18
	.4byte _080809B0 @ case 19
	.4byte _0807FD94 @ case 20
	.4byte _0807FEAC @ case 21
	.4byte _0807FF16 @ case 22
	.4byte _0807FF90 @ case 23
	.4byte _0808012C @ case 24
	.4byte _08080990 @ case 25
	.4byte _080809B0 @ case 26
	.4byte _080809B0 @ case 27
	.4byte _080809B0 @ case 28
	.4byte _080809B0 @ case 29
	.4byte _080809B0 @ case 30
	.4byte _0808017A @ case 31
	.4byte _0808020E @ case 32
	.4byte _080802B6 @ case 33
	.4byte _08080488 @ case 34
	.4byte _080804FE @ case 35
	.4byte _080809B0 @ case 36
	.4byte _080809B0 @ case 37
	.4byte _080809B0 @ case 38
	.4byte _080809B0 @ case 39
	.4byte _0808051C @ case 40
	.4byte _080805B2 @ case 41
	.4byte _080805F6 @ case 42
	.4byte _080806F4 @ case 43
	.4byte _08080736 @ case 44
	.4byte _08080758 @ case 45
	.4byte _08080778 @ case 46
	.4byte _080809B0 @ case 47
	.4byte _080809B0 @ case 48
	.4byte _080809B0 @ case 49
	.4byte _080809B0 @ case 50
	.4byte _08080796 @ case 51
	.4byte _080807DA @ case 52
	.4byte _080808D0 @ case 53
	.4byte _0808091C @ case 54
	.4byte _0808094C @ case 55
	.4byte _08080990 @ case 56
_0807F608:
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x65
	beq _0807F61A
	movs r0, #0x28
	strb r0, [r7, #0xb]
	bl _080809B0
_0807F61A:
	adds r0, r7, #0
	bl sub_08080F84
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	bne _0807F67E
	movs r4, #0
	movs r0, #0xb
	strb r0, [r1]
	movs r0, #1
	strb r0, [r7, #0xb]
	movs r3, #0xe0
	lsls r3, r3, #5
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08081018
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #5
	movs r3, #0
	bl sub_08081018
	movs r3, #0x90
	lsls r3, r3, #7
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	bl sub_08081018
	movs r6, #0x80
	lsls r6, r6, #3
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #5
	adds r3, r6, #0
	bl sub_08081018
	movs r0, #0
	strh r6, [r7, #0x22]
	strb r0, [r7, #0x18]
	b _0807F6C0
_0807F67E:
	movs r4, #0
	movs r0, #0x10
	strb r0, [r1]
	movs r0, #0xa
	strb r0, [r7, #0xb]
	movs r3, #0x90
	lsls r3, r3, #7
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08081018
	movs r3, #0x80
	lsls r3, r3, #5
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	bl sub_08081018
	movs r3, #0x80
	lsls r3, r3, #3
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #5
	bl sub_08081018
	movs r1, #0
	movs r0, #8
	strh r0, [r7, #0x22]
	strb r1, [r7, #0x18]
_0807F6C0:
	ldr r0, [r7, #0x24]
	add r0, sp
	adds r0, #0x14
	b _0807FE9E
_0807F6C8:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r4, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807F6E2
	bl _080809B0
_0807F6E2:
	ldr r0, [r7, #0x24]
	add r0, sp
	adds r0, #0x18
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0xc
	strb r0, [r1]
	movs r3, #0xe0
	lsls r3, r3, #5
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08081018
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #5
	movs r3, #0
	bl sub_08081018
	movs r3, #0x90
	lsls r3, r3, #7
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	bl sub_08081018
	movs r3, #0x80
	lsls r3, r3, #3
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #4
	bl _08080864
_0807F736:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807F74E
	bl _080809B0
_0807F74E:
	ldr r0, [r7, #0x24]
	add r0, r8
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	bl _080809B0
_0807F760:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r5, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807F77A
	bl _080809B0
_0807F77A:
	movs r0, #6
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0xd
	strb r0, [r1]
	ldr r3, _0807F7D4 @ =0xFFFFCC00
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08081018
	ldr r4, _0807F7D8 @ =0xFFFFEC00
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #5
	adds r3, r4, #0
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #5
	adds r3, r4, #0
	bl sub_08081018
	ldr r3, _0807F7DC @ =0xFFFFDE00
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #5
	bl sub_08081018
	ldr r3, _0807F7E0 @ =0xFFFFC000
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	bl _08080910
	.align 2, 0
_0807F7D4: .4byte 0xFFFFCC00
_0807F7D8: .4byte 0xFFFFEC00
_0807F7DC: .4byte 0xFFFFDE00
_0807F7E0: .4byte 0xFFFFC000
_0807F7E4:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r5, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807F7FE
	bl _080809B0
_0807F7FE:
	movs r0, #6
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0xe
	strb r0, [r1]
	ldr r3, _0807F854 @ =0xFFFFCC00
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08081018
	ldr r4, _0807F858 @ =0xFFFFEC00
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #5
	adds r3, r4, #0
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #5
	adds r3, r4, #0
	bl sub_08081018
	ldr r3, _0807F85C @ =0xFFFFDE00
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #5
	bl sub_08081018
	ldr r3, _0807F860 @ =0xFFFFC000
	str r5, [sp]
	bl _080806E2
	.align 2, 0
_0807F854: .4byte 0xFFFFCC00
_0807F858: .4byte 0xFFFFEC00
_0807F85C: .4byte 0xFFFFDE00
_0807F860: .4byte 0xFFFFC000
_0807F864:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807F87C
	bl _080809B0
_0807F87C:
	movs r0, #1
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0xf
	strb r0, [r1]
	movs r5, #0
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	movs r3, #0
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #5
	movs r3, #0
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #5
	movs r3, #0
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #5
	movs r3, #0
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	movs r3, #0
	bl sub_08081018
	movs r0, #0
	movs r1, #1
	movs r2, #2
	bl sub_08011F7C
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	ldr r5, _0807F968 @ =0xFFCC0000
	cmp r0, #0
	beq _0807F8F4
	movs r5, #0xd0
	lsls r5, r5, #0xe
_0807F8F4:
	ldr r0, [r7, #0x40]
	adds r0, r0, r5
	ldr r1, [r7, #0x44]
	adds r6, r7, #0
	adds r6, #0x5c
	str r6, [sp, #0x2c]
	ldrb r2, [r6]
	subs r2, #1
	movs r3, #1
	bl sub_0806D7F0
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r0, _0807F96C @ =0x0000FFFF
	mov sl, r0
	ands r4, r0
	ldr r1, _0807F970 @ =0xFFFF8000
	adds r4, r4, r1
	bl RandomNumberGenerator
	adds r3, r0, #0
	ldr r2, _0807F974 @ =0x0001FFFF
	mov r8, r2
	ands r3, r2
	ldr r6, _0807F978 @ =0xFFFF0000
	subs r3, r6, r3
	ldr r0, [r7, #0x40]
	adds r0, r0, r5
	ldr r1, [r7, #0x44]
	ldr r6, [sp, #0x2c]
	ldrb r2, [r6]
	subs r2, #1
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	adds r2, r4, #0
	bl sub_0806DCC4
	bl RandomNumberGenerator
	adds r4, r0, #0
	mov r3, sl
	ands r4, r3
	ldr r6, _0807F970 @ =0xFFFF8000
	adds r4, r4, r6
	bl RandomNumberGenerator
	mov r1, r8
	ands r0, r1
	ldr r2, _0807F978 @ =0xFFFF0000
	subs r3, r2, r0
	ldr r0, [r7, #0x40]
	adds r0, r0, r5
	ldr r1, [r7, #0x44]
	ldr r5, [sp, #0x2c]
	b _0807FCEA
	.align 2, 0
_0807F968: .4byte 0xFFCC0000
_0807F96C: .4byte 0x0000FFFF
_0807F970: .4byte 0xFFFF8000
_0807F974: .4byte 0x0001FFFF
_0807F978: .4byte 0xFFFF0000
_0807F97C:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r4, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807F996
	bl _080809B0
_0807F996:
	movs r0, #0x3c
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r0, r7, #0
	movs r1, #3
	bl sub_080819C4
	adds r0, r7, #0
	movs r1, #4
	bl sub_080819C4
	adds r0, r7, #0
	movs r1, #2
	bl sub_080819C4
	movs r3, #0x88
	lsls r3, r3, #6
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #5
	bl sub_08081018
	movs r3, #0x80
	lsls r3, r3, #7
	str r4, [sp]
	bl _080806E2
_0807F9D2:
	ldrb r1, [r7, #0xd]
	cmp r1, #0x27
	bls _0807F9EA
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0807F9EA
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_08011F7C
_0807F9EA:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807F9FA
	bl _080809B0
_0807F9FA:
	movs r0, #0x28
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	movs r0, #0
	strh r0, [r7, #0x22]
	bl _0808097E
_0807FA14:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807FA2C
	bl _080809B0
_0807FA2C:
	movs r0, #0x14
	strb r0, [r7, #0xd]
	movs r0, #3
	bl _080809AA
_0807FA36:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r4, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807FA50
	bl _080809B0
_0807FA50:
	ldr r0, [r7, #0x24]
	add r0, sp
	adds r0, #0x18
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x11
	strb r0, [r1]
	movs r3, #0x90
	lsls r3, r3, #7
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08081018
	movs r3, #0x80
	lsls r3, r3, #5
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	bl sub_08081018
	movs r3, #0x80
	lsls r3, r3, #3
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #4
	bl _08080864
_0807FA96:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r4, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807FAB0
	bl _080809B0
_0807FAB0:
	ldr r0, [r7, #0x24]
	add r0, r8
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x11
	strb r0, [r1]
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	movs r3, #0
	bl sub_08081018
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	bl _08080472
_0807FAE0:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r5, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807FAFA
	bl _080809B0
_0807FAFA:
	movs r0, #6
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x12
	strb r0, [r1]
	ldr r3, _0807FB54 @ =0xFFFFC000
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08081018
	ldr r4, _0807FB58 @ =0xFFFFEC00
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #5
	adds r3, r4, #0
	bl sub_08081018
	ldr r3, _0807FB5C @ =0xFFFFDC00
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #5
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #5
	adds r3, r4, #0
	bl sub_08081018
	ldr r3, _0807FB60 @ =0xFFFFD400
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	bl _08080910
	.align 2, 0
_0807FB54: .4byte 0xFFFFC000
_0807FB58: .4byte 0xFFFFEC00
_0807FB5C: .4byte 0xFFFFDC00
_0807FB60: .4byte 0xFFFFD400
_0807FB64:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r5, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807FB7E
	bl _080809B0
_0807FB7E:
	movs r0, #6
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x13
	strb r0, [r1]
	ldr r3, _0807FBD4 @ =0xFFFFC000
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08081018
	ldr r4, _0807FBD8 @ =0xFFFFEC00
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #5
	adds r3, r4, #0
	bl sub_08081018
	ldr r3, _0807FBDC @ =0xFFFFDC00
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #5
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #5
	adds r3, r4, #0
	bl sub_08081018
	ldr r3, _0807FBE0 @ =0xFFFFD400
	str r5, [sp]
	bl _080806E2
	.align 2, 0
_0807FBD4: .4byte 0xFFFFC000
_0807FBD8: .4byte 0xFFFFEC00
_0807FBDC: .4byte 0xFFFFDC00
_0807FBE0: .4byte 0xFFFFD400
_0807FBE4:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807FBFC
	bl _080809B0
_0807FBFC:
	movs r0, #1
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x14
	strb r0, [r1]
	movs r0, #0
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	movs r3, #0
	bl sub_08081018
	movs r1, #0
	str r1, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #5
	movs r3, #0
	bl sub_08081018
	movs r2, #0
	str r2, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #5
	movs r3, #0
	bl sub_08081018
	movs r3, #0
	str r3, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #5
	bl sub_08081018
	movs r5, #0
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	movs r3, #0
	bl sub_08081018
	movs r0, #0
	movs r1, #1
	movs r2, #2
	bl sub_08011F7C
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	ldr r5, _0807FD04 @ =0xFFCC0000
	cmp r0, #0
	beq _0807FC7A
	movs r5, #0xd0
	lsls r5, r5, #0xe
_0807FC7A:
	ldr r0, [r7, #0x40]
	adds r0, r0, r5
	ldr r1, [r7, #0x44]
	adds r6, r7, #0
	adds r6, #0x5c
	str r6, [sp, #0x30]
	ldrb r2, [r6]
	subs r2, #1
	movs r3, #1
	bl sub_0806D7F0
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r0, _0807FD08 @ =0x0000FFFF
	mov sl, r0
	ands r4, r0
	ldr r1, _0807FD0C @ =0xFFFF8000
	adds r4, r4, r1
	bl RandomNumberGenerator
	adds r3, r0, #0
	ldr r2, _0807FD10 @ =0x0001FFFF
	mov r8, r2
	ands r3, r2
	ldr r6, _0807FD14 @ =0xFFFF0000
	subs r3, r6, r3
	ldr r0, [r7, #0x40]
	adds r0, r0, r5
	ldr r1, [r7, #0x44]
	ldr r6, [sp, #0x30]
	ldrb r2, [r6]
	subs r2, #1
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	adds r2, r4, #0
	bl sub_0806DCC4
	bl RandomNumberGenerator
	adds r4, r0, #0
	mov r3, sl
	ands r4, r3
	ldr r6, _0807FD0C @ =0xFFFF8000
	adds r4, r4, r6
	bl RandomNumberGenerator
	mov r1, r8
	ands r0, r1
	ldr r2, _0807FD14 @ =0xFFFF0000
	subs r3, r2, r0
	ldr r0, [r7, #0x40]
	adds r0, r0, r5
	ldr r1, [r7, #0x44]
	ldr r5, [sp, #0x30]
_0807FCEA:
	ldrb r2, [r5]
	subs r2, #1
	str r2, [sp]
	movs r6, #0
	str r6, [sp, #4]
	adds r2, r4, #0
	bl sub_0806DCC4
	movs r0, #0x80
	bl sub_080D7910
	bl _080809B0
	.align 2, 0
_0807FD04: .4byte 0xFFCC0000
_0807FD08: .4byte 0x0000FFFF
_0807FD0C: .4byte 0xFFFF8000
_0807FD10: .4byte 0x0001FFFF
_0807FD14: .4byte 0xFFFF0000
_0807FD18:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807FD30
	bl _080809B0
_0807FD30:
	movs r0, #0x3c
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r0, r7, #0
	movs r1, #3
	bl sub_080819C4
	adds r0, r7, #0
	movs r1, #4
	bl sub_080819C4
	adds r0, r7, #0
	movs r1, #2
	bl _0808097A
_0807FD52:
	ldrb r1, [r7, #0xd]
	cmp r1, #0x27
	bls _0807FD6A
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0807FD6A
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_08011F7C
_0807FD6A:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807FD7A
	bl _080809B0
_0807FD7A:
	movs r0, #0x28
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #4
	strb r0, [r1]
	movs r0, #0
	strh r0, [r7, #0x22]
	bl _080809B0
_0807FD94:
	adds r0, r7, #0
	bl sub_08080F84
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	bne _0807FE3C
	movs r6, #0
	movs r0, #0x15
	strb r0, [r1]
	movs r0, #0x1f
	strb r0, [r7, #0xb]
	ldr r4, _0807FE34 @ =0xFFFFF000
	movs r0, #0xd0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #7
	adds r3, r4, #0
	bl sub_08081018
	movs r3, #0xa0
	lsls r3, r3, #9
	movs r0, #0xa0
	lsls r0, r0, #0xb
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #6
	bl sub_08081018
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #6
	adds r3, r4, #0
	bl sub_08081018
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #5
	adds r3, r4, #0
	bl sub_08081018
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #6
	adds r3, r4, #0
	bl sub_08081018
	ldr r3, _0807FE38 @ =0xFFFFE000
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	bl sub_08081018
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #6
	adds r3, r4, #0
	bl sub_08081018
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	adds r3, r4, #0
	bl sub_08081018
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #1
	b _0807FE96
	.align 2, 0
_0807FE34: .4byte 0xFFFFF000
_0807FE38: .4byte 0xFFFFE000
_0807FE3C:
	movs r6, #0
	movs r0, #0x17
	strb r0, [r1]
	movs r0, #0x15
	strb r0, [r7, #0xb]
	ldr r4, _0807FEA8 @ =0xFFFFF000
	movs r0, #0x90
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #6
	adds r3, r4, #0
	bl sub_08081018
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #6
	adds r3, r4, #0
	bl sub_08081018
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #5
	adds r3, r4, #0
	bl sub_08081018
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #6
	adds r3, r4, #0
	bl sub_08081018
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	adds r3, r4, #0
	bl sub_08081018
	movs r1, #0
	movs r0, #2
_0807FE96:
	strh r0, [r7, #0x22]
	strb r1, [r7, #0x18]
	ldr r0, [r7, #0x24]
	add r0, sb
_0807FE9E:
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	bl _080809B0
	.align 2, 0
_0807FEA8: .4byte 0xFFFFF000
_0807FEAC:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r5, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807FEC6
	bl _080809B0
_0807FEC6:
	ldr r0, [r7, #0x24]
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #6
	movs r3, #0
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #6
	movs r3, #0
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #5
	movs r3, #0
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #6
	movs r3, #0
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	b _08080472
_0807FF16:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r5, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807FF28
	bl _080809B0
_0807FF28:
	movs r0, #0xa
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r3, #0x80
	lsls r3, r3, #7
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #6
	bl sub_08081018
	movs r4, #0xc0
	lsls r4, r4, #5
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #6
	adds r3, r4, #0
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #5
	adds r3, r4, #0
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #6
	adds r3, r4, #0
	bl sub_08081018
	movs r3, #0x80
	lsls r3, r3, #5
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	bl sub_08081018
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x18
	strb r0, [r1]
	bl _080809B0
_0807FF90:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	cmp r0, #6
	beq _0807FFA0
	b _080800BE
_0807FFA0:
	movs r0, #0
	movs r1, #1
	movs r2, #2
	bl sub_08011F7C
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	mov r8, r0
	ands r0, r1
	ldr r5, _0807FFF4 @ =0xFFFF0000
	adds r6, r2, #0
	cmp r0, #0
	beq _0807FFC2
	movs r5, #0x80
	lsls r5, r5, #9
_0807FFC2:
	ldr r0, [r7, #0x40]
	adds r0, r0, r5
	ldr r1, [r7, #0x44]
	adds r4, r7, #0
	adds r4, #0x5c
	ldrb r2, [r4]
	subs r2, #1
	movs r3, #1
	bl sub_0806D7F0
	ldrb r1, [r6]
	mov r0, r8
	ands r0, r1
	mov sb, r4
	cmp r0, #0
	beq _0807FFFC
	movs r5, #0x80
	lsls r5, r5, #9
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r0, _0807FFF8 @ =0x0001FFFF
	ands r4, r0
	b _08080008
	.align 2, 0
_0807FFF4: .4byte 0xFFFF0000
_0807FFF8: .4byte 0x0001FFFF
_0807FFFC:
	ldr r5, _08080048 @ =0xFFFF0000
	bl RandomNumberGenerator
	ldr r1, _0808004C @ =0x0001FFFF
	ands r1, r0
	rsbs r4, r1, #0
_08080008:
	bl RandomNumberGenerator
	ldr r1, _0808004C @ =0x0001FFFF
	mov r8, r1
	ands r0, r1
	ldr r3, _08080050 @ =0xFFFE0000
	subs r3, r3, r0
	ldr r0, [r7, #0x40]
	adds r0, r0, r5
	ldr r1, [r7, #0x44]
	adds r2, r4, r5
	mov r5, sb
	ldrb r4, [r5]
	subs r4, #1
	str r4, [sp]
	movs r4, #0
	str r4, [sp, #4]
	bl sub_0806DCC4
	ldrb r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08080054
	movs r5, #0x80
	lsls r5, r5, #9
	bl RandomNumberGenerator
	adds r4, r0, #0
	mov r0, r8
	ands r4, r0
	b _08080060
	.align 2, 0
_08080048: .4byte 0xFFFF0000
_0808004C: .4byte 0x0001FFFF
_08080050: .4byte 0xFFFE0000
_08080054:
	ldr r5, _08080098 @ =0xFFFF0000
	bl RandomNumberGenerator
	mov r1, r8
	ands r0, r1
	rsbs r4, r0, #0
_08080060:
	bl RandomNumberGenerator
	ldr r1, _0808009C @ =0x0001FFFF
	ands r1, r0
	ldr r3, _080800A0 @ =0xFFFE0000
	subs r3, r3, r1
	ldr r0, [r7, #0x40]
	adds r0, r0, r5
	ldr r1, [r7, #0x44]
	adds r2, r4, r5
	mov r5, sb
	ldrb r4, [r5]
	subs r4, #1
	str r4, [sp]
	movs r4, #0
	str r4, [sp, #4]
	bl sub_0806DCC4
	ldrb r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080800A4
	movs r5, #0x80
	lsls r5, r5, #9
	movs r3, #0x90
	lsls r3, r3, #0xb
	b _080800A8
	.align 2, 0
_08080098: .4byte 0xFFFF0000
_0808009C: .4byte 0x0001FFFF
_080800A0: .4byte 0xFFFE0000
_080800A4:
	ldr r5, _08080120 @ =0xFFFF0000
	ldr r3, _08080124 @ =0xFFFB8000
_080800A8:
	ldr r1, [r7, #0x40]
	adds r1, r1, r5
	ldr r2, [r7, #0x44]
	ldr r0, _08080128 @ =0xFFFD0000
	str r0, [sp]
	adds r0, r7, #0
	bl sub_080816BC
	movs r0, #0x80
	bl sub_080D7910
_080800BE:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r4, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080800D0
	bl _080809B0
_080800D0:
	movs r0, #0xc
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	strh r4, [r7, #0x22]
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #6
	movs r3, #0
	bl sub_08081018
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #6
	movs r3, #0
	bl sub_08081018
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #5
	movs r3, #0
	bl sub_08081018
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #6
	movs r3, #0
	bl sub_08081018
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	b _08080472
	.align 2, 0
_08080120: .4byte 0xFFFF0000
_08080124: .4byte 0xFFFB8000
_08080128: .4byte 0xFFFD0000
_0808012C:
	ldrb r1, [r7, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08080140
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_08011F7C
_08080140:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08080150
	bl _080809B0
_08080150:
	movs r0, #0x1e
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #4
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #1
	bl sub_080819C4
	adds r0, r7, #0
	movs r1, #5
	bl sub_080819C4
	adds r0, r7, #0
	movs r1, #4
	bl _0808097A
_0808017A:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r5, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08080194
	bl _080809B0
_08080194:
	ldr r0, [r7, #0x24]
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #7
	movs r3, #0
	bl sub_08081018
	movs r3, #0xa0
	lsls r3, r3, #9
	movs r0, #0xa0
	lsls r0, r0, #0xb
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #6
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #6
	movs r3, #0
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #5
	movs r3, #0
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #6
	movs r3, #0
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	movs r3, #0
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #6
	movs r3, #0
	bl sub_08081018
	str r5, [sp]
	b _0808046C
_0808020E:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r5, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808021E
	b _080809B0
_0808021E:
	movs r0, #0xa
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r3, #0x90
	lsls r3, r3, #7
	movs r0, #0xd0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #7
	bl sub_08081018
	movs r3, #0xa0
	lsls r3, r3, #9
	movs r0, #0xa0
	lsls r0, r0, #0xb
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #6
	bl sub_08081018
	movs r4, #0xc0
	lsls r4, r4, #5
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #6
	adds r3, r4, #0
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #5
	adds r3, r4, #0
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #6
	adds r3, r4, #0
	bl sub_08081018
	movs r3, #0x80
	lsls r3, r3, #5
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #6
	adds r3, r4, #0
	bl sub_08081018
	movs r3, #0x80
	lsls r3, r3, #6
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08081018
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x16
	strb r0, [r1]
	b _080809B0
_080802B6:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	cmp r0, #6
	beq _080802C6
	b _080803E6
_080802C6:
	movs r0, #0
	movs r1, #1
	movs r2, #2
	bl sub_08011F7C
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r6, #0x40
	mov r8, r6
	mov r0, r8
	ands r0, r1
	ldr r5, _0808031C @ =0xFFFF0000
	adds r6, r2, #0
	cmp r0, #0
	beq _080802EA
	movs r5, #0x80
	lsls r5, r5, #9
_080802EA:
	ldr r0, [r7, #0x40]
	adds r0, r0, r5
	ldr r1, [r7, #0x44]
	adds r4, r7, #0
	adds r4, #0x5c
	ldrb r2, [r4]
	subs r2, #1
	movs r3, #1
	bl sub_0806D7F0
	ldrb r1, [r6]
	mov r0, r8
	ands r0, r1
	mov sb, r4
	cmp r0, #0
	beq _08080324
	movs r5, #0x80
	lsls r5, r5, #9
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r0, _08080320 @ =0x0001FFFF
	ands r4, r0
	b _08080330
	.align 2, 0
_0808031C: .4byte 0xFFFF0000
_08080320: .4byte 0x0001FFFF
_08080324:
	ldr r5, _08080370 @ =0xFFFF0000
	bl RandomNumberGenerator
	ldr r1, _08080374 @ =0x0001FFFF
	ands r1, r0
	rsbs r4, r1, #0
_08080330:
	bl RandomNumberGenerator
	ldr r1, _08080374 @ =0x0001FFFF
	mov r8, r1
	ands r0, r1
	ldr r3, _08080378 @ =0xFFFE0000
	subs r3, r3, r0
	ldr r0, [r7, #0x40]
	adds r0, r0, r5
	ldr r1, [r7, #0x44]
	adds r2, r4, r5
	mov r5, sb
	ldrb r4, [r5]
	subs r4, #1
	str r4, [sp]
	movs r4, #0
	str r4, [sp, #4]
	bl sub_0806DCC4
	ldrb r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0808037C
	movs r5, #0x80
	lsls r5, r5, #9
	bl RandomNumberGenerator
	adds r4, r0, #0
	mov r0, r8
	ands r4, r0
	b _08080388
	.align 2, 0
_08080370: .4byte 0xFFFF0000
_08080374: .4byte 0x0001FFFF
_08080378: .4byte 0xFFFE0000
_0808037C:
	ldr r5, _080803C0 @ =0xFFFF0000
	bl RandomNumberGenerator
	mov r1, r8
	ands r0, r1
	rsbs r4, r0, #0
_08080388:
	bl RandomNumberGenerator
	ldr r1, _080803C4 @ =0x0001FFFF
	ands r1, r0
	ldr r3, _080803C8 @ =0xFFFE0000
	subs r3, r3, r1
	ldr r0, [r7, #0x40]
	adds r0, r0, r5
	ldr r1, [r7, #0x44]
	adds r2, r4, r5
	mov r5, sb
	ldrb r4, [r5]
	subs r4, #1
	str r4, [sp]
	movs r4, #0
	str r4, [sp, #4]
	bl sub_0806DCC4
	ldrb r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080803CC
	movs r5, #0x80
	lsls r5, r5, #9
	movs r3, #0x90
	lsls r3, r3, #0xb
	b _080803D0
	.align 2, 0
_080803C0: .4byte 0xFFFF0000
_080803C4: .4byte 0x0001FFFF
_080803C8: .4byte 0xFFFE0000
_080803CC:
	ldr r5, _0808047C @ =0xFFFF0000
	ldr r3, _08080480 @ =0xFFFB8000
_080803D0:
	ldr r1, [r7, #0x40]
	adds r1, r1, r5
	ldr r2, [r7, #0x44]
	ldr r0, _08080484 @ =0xFFFD0000
	str r0, [sp]
	adds r0, r7, #0
	bl sub_080816BC
	movs r0, #0x80
	bl sub_080D7910
_080803E6:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r4, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080803F6
	b _080809B0
_080803F6:
	movs r0, #0xc
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	strh r4, [r7, #0x22]
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #7
	movs r3, #0
	bl sub_08081018
	movs r3, #0xa0
	lsls r3, r3, #9
	movs r0, #0xa0
	lsls r0, r0, #0xb
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #6
	bl sub_08081018
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #6
	movs r3, #0
	bl sub_08081018
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #5
	movs r3, #0
	bl sub_08081018
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #6
	movs r3, #0
	bl sub_08081018
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	movs r3, #0
	bl sub_08081018
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #6
	movs r3, #0
	bl sub_08081018
	str r4, [sp]
_0808046C:
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
_08080472:
	movs r3, #0
	bl sub_08081018
	b _080809B0
	.align 2, 0
_0808047C: .4byte 0xFFFF0000
_08080480: .4byte 0xFFFB8000
_08080484: .4byte 0xFFFD0000
_08080488:
	ldrb r1, [r7, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0808049C
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_08011F7C
_0808049C:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080804AA
	b _080809B0
_080804AA:
	movs r0, #0x1e
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #8
	bl sub_080819C4
	adds r0, r7, #0
	movs r1, #7
	bl sub_080819C4
	adds r0, r7, #0
	movs r1, #5
	bl sub_080819C4
	adds r0, r7, #0
	movs r1, #4
	bl sub_080819C4
	adds r0, r7, #0
	movs r1, #9
	bl sub_080819C4
	adds r0, r7, #0
	movs r1, #0xa
	bl sub_080819C4
	adds r0, r7, #0
	movs r1, #3
	bl sub_080819C4
	adds r0, r7, #0
	movs r1, #2
	bl sub_080819C4
	b _080809B0
_080804FE:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08080514
	b _080809B0
_08080514:
	movs r0, #0x14
	strb r0, [r7, #0xd]
	movs r0, #3
	b _080809AA
_0808051C:
	adds r0, r7, #0
	bl sub_08080F84
	adds r0, r7, #0
	adds r0, #0x21
	movs r4, #0
	strb r4, [r0]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	bne _08080570
	movs r0, #0x19
	strb r0, [r1]
	movs r0, #0x29
	strb r0, [r7, #0xb]
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #5
	movs r3, #0
	bl sub_08081018
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #5
	movs r3, #0
	bl sub_08081018
	movs r3, #0x80
	lsls r3, r3, #8
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	bl sub_08081018
	movs r0, #0x80
	lsls r0, r0, #3
	b _080805A6
_08080570:
	movs r0, #0x1d
	strb r0, [r1]
	movs r0, #0x33
	strb r0, [r7, #0xb]
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #5
	movs r3, #0
	bl sub_08081018
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #5
	movs r3, #0
	bl sub_08081018
	movs r3, #0x80
	lsls r3, r3, #8
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08081018
	movs r0, #8
_080805A6:
	strh r0, [r7, #0x22]
	movs r0, #1
	strb r0, [r7, #0x18]
	movs r0, #0xc
	strb r0, [r7, #0xd]
	b _080809B0
_080805B2:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080805C8
	b _080809B0
_080805C8:
	adds r0, r7, #0
	adds r0, #0x21
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #1
	movs r0, #0xc
	subs r0, r0, r1
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x1a
	strb r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #8
	movs r0, #0
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	b _08080910
_080805F6:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808060C
	b _080809B0
_0808060C:
	adds r1, r7, #0
	adds r1, #0x21
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r1, #0
	cmp r0, #1
	ble _08080694
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0808063E
	movs r1, #0xa4
	lsls r1, r1, #1
	add r1, sl
	ldr r0, [r1]
	movs r6, #0x80
	lsls r6, r6, #9
	adds r0, r0, r6
	b _0808064A
_0808063E:
	movs r1, #0xa4
	lsls r1, r1, #1
	add r1, sl
	ldr r0, [r1]
	ldr r2, _08080688 @ =0xFFFF0000
	adds r0, r0, r2
_0808064A:
	str r0, [r1]
	movs r4, #0
	movs r0, #6
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x1b
	strb r0, [r1]
	ldr r3, _0808068C @ =0xFFFFE000
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08081018
	movs r3, #0x80
	lsls r3, r3, #7
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	bl sub_08081018
	ldr r3, _08080690 @ =0xFFFFE800
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #9
	b _08080864
	.align 2, 0
_08080688: .4byte 0xFFFF0000
_0808068C: .4byte 0xFFFFE000
_08080690: .4byte 0xFFFFE800
_08080694:
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080806B2
	movs r1, #0xa4
	lsls r1, r1, #1
	add r1, sl
	ldr r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	b _080806BE
_080806B2:
	movs r1, #0xa4
	lsls r1, r1, #1
	add r1, sl
	ldr r0, [r1]
	ldr r5, _080806F0 @ =0xFFFF0000
	adds r0, r0, r5
_080806BE:
	str r0, [r1]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	movs r1, #0xc
	subs r1, r1, r0
	movs r2, #0
	strb r1, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	subs r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x19
	strb r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #8
	str r2, [sp]
_080806E2:
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	bl sub_08081018
	b _080809B0
	.align 2, 0
_080806F0: .4byte 0xFFFF0000
_080806F4:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r4, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808070C
	b _080809B0
_0808070C:
	movs r0, #3
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x1c
	strb r0, [r1]
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #5
	movs r3, #0
	bl sub_08081018
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	b _0808090E
_08080736:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808074C
	b _080809B0
_0808074C:
	movs r0, #0x1e
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	b _0808097E
_08080758:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08080766
	b _080809B0
_08080766:
	movs r0, #0x28
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #2
	b _08080968
_08080778:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808078E
	b _080809B0
_0808078E:
	movs r0, #0x14
	strb r0, [r7, #0xd]
	movs r0, #3
	b _080809AA
_08080796:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080807AC
	b _080809B0
_080807AC:
	adds r0, r7, #0
	adds r0, #0x21
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #1
	movs r0, #0xc
	subs r0, r0, r1
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x1e
	strb r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #8
	movs r0, #0
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	b _08080910
_080807DA:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080807F0
	b _080809B0
_080807F0:
	adds r1, r7, #0
	adds r1, #0x21
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r1, #0
	cmp r0, #1
	ble _08080878
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08080820
	mov r6, sl
	ldr r0, [r6, #0x68]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	str r0, [r6, #0x68]
	b _0808082A
_08080820:
	mov r2, sl
	ldr r0, [r2, #0x68]
	ldr r3, _0808086C @ =0xFFFF0000
	adds r0, r0, r3
	str r0, [r2, #0x68]
_0808082A:
	movs r4, #0
	movs r0, #6
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x1f
	strb r0, [r1]
	ldr r3, _08080870 @ =0xFFFFE000
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	bl sub_08081018
	movs r3, #0x80
	lsls r3, r3, #7
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08081018
	ldr r3, _08080874 @ =0xFFFFE800
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #2
_08080864:
	movs r2, #5
	bl sub_08081018
	b _080809B0
	.align 2, 0
_0808086C: .4byte 0xFFFF0000
_08080870: .4byte 0xFFFFE000
_08080874: .4byte 0xFFFFE800
_08080878:
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08080894
	mov r5, sl
	ldr r0, [r5, #0x68]
	movs r6, #0x80
	lsls r6, r6, #9
	adds r0, r0, r6
	str r0, [r5, #0x68]
	b _0808089E
_08080894:
	mov r1, sl
	ldr r0, [r1, #0x68]
	ldr r3, _080808CC @ =0xFFFF0000
	adds r0, r0, r3
	str r0, [r1, #0x68]
_0808089E:
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	movs r1, #0xc
	subs r1, r1, r0
	movs r2, #0
	strb r1, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	subs r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x1d
	strb r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #8
	str r2, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08081018
	b _080809B0
	.align 2, 0
_080808CC: .4byte 0xFFFF0000
_080808D0:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r4, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080809B0
	movs r0, #3
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x20
	strb r0, [r1]
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #5
	movs r3, #0
	bl sub_08081018
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
_0808090E:
	movs r3, #0
_08080910:
	bl sub_08081018
	movs r0, #0x87
	bl sub_080D7910
	b _080809B0
_0808091C:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080809B0
	movs r0, #0x1e
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r0, r7, #0
	movs r1, #2
	bl sub_080819C4
	adds r0, r7, #0
	movs r1, #3
	bl sub_080819C4
	b _080809B0
_0808094C:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080809B0
	movs r0, #0x28
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #4
_08080968:
	strb r0, [r1]
	movs r0, #0
	strh r0, [r7, #0x22]
	adds r0, r7, #0
	movs r1, #2
	bl sub_080819C4
	adds r0, r7, #0
	movs r1, #3
_0808097A:
	bl sub_080819C4
_0808097E:
	adds r0, r7, #0
	movs r1, #9
	bl sub_080819C4
	adds r0, r7, #0
	movs r1, #0xa
	bl sub_080819C4
	b _080809B0
_08080990:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080809B0
	movs r0, #0x14
	strb r0, [r7, #0xd]
	movs r0, #6
_080809AA:
	strb r0, [r7, #0xb]
	movs r0, #0
	strb r0, [r7, #0xa]
_080809B0:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
