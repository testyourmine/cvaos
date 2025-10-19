	.include "asm/gba_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	thumb_func_start sub_080B0AD4
sub_080B0AD4: @ 0x080B0AD4
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _080B0B3C @ =0x081E41A4
	ldr r2, _080B0B40 @ =0x0820B7B0
	lsls r3, r5, #0x18
	lsrs r3, r3, #0x18
	ldr r0, _080B0B44 @ =0x0823AE10
	str r0, [sp]
	adds r0, r4, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B0B32
	strb r5, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806B04C
	adds r0, r4, #0
	adds r0, #0x5c
	movs r1, #0x13
	strb r1, [r0]
	ldr r0, _080B0B48 @ =sub_080B02E0
	bl sub_0806DFF8
	adds r2, r0, #0
	cmp r2, #0
	beq _080B0B32
	str r4, [r2, #0x14]
	ldrb r0, [r4, #0x10]
	strb r0, [r2, #0x11]
	adds r5, r4, #0
	adds r5, #0x3c
	ldrb r1, [r5]
	adds r0, r2, #0
	adds r0, #0x3c
	strb r1, [r0]
	ldrh r0, [r4, #0x34]
	strh r0, [r2, #0x34]
	ldr r0, _080B0B4C @ =sub_080B0064
	bl sub_0806DFF8
	adds r2, r0, #0
	cmp r2, #0
	bne _080B0B50
_080B0B32:
	adds r0, r4, #0
	bl sub_08000E14
	b _080B0BD6
	.align 2, 0
_080B0B3C: .4byte 0x081E41A4
_080B0B40: .4byte 0x0820B7B0
_080B0B44: .4byte 0x0823AE10
_080B0B48: .4byte sub_080B02E0
_080B0B4C: .4byte sub_080B0064
_080B0B50:
	str r4, [r2, #0x14]
	ldrb r0, [r4, #0x10]
	strb r0, [r2, #0x11]
	ldrb r1, [r5]
	adds r0, r2, #0
	adds r0, #0x3c
	strb r1, [r0]
	ldrh r0, [r4, #0x34]
	strh r0, [r2, #0x34]
	ldr r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	str r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _080B0B94 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B0B98
	movs r0, #4
	strb r0, [r4, #0xa]
	b _080B0BD6
	.align 2, 0
_080B0B94: .4byte gEwramData
_080B0B98:
	ldr r1, _080B0BE0 @ =sub_080B0CCC
	ldr r2, _080B0BE4 @ =sub_080AFF98
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
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080B0BD6
	adds r0, r4, #0
	bl sub_08034498
_080B0BD6:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B0BE0: .4byte sub_080B0CCC
_080B0BE4: .4byte sub_080AFF98

	thumb_func_start sub_080B0BE8
sub_080B0BE8: @ 0x080B0BE8
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r1, #0x10
	rsbs r1, r1, #0
	bl sub_0806E4F8
	adds r0, r4, #0
	movs r1, #6
	bl sub_0806D128
	cmp r0, #0
	bne _080B0C08
	adds r0, r4, #0
	bl sub_08021924
_080B0C08:
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _080B0C14
	adds r0, r4, #0
	bl sub_0806AE54
_080B0C14:
	adds r0, r4, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _080B0C2E
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _080B0C2E
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	b _080B0CC4
_080B0C2E:
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bhi _080B0CA8
	lsls r0, r0, #2
	ldr r1, _080B0C40 @ =_080B0C44
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B0C40: .4byte _080B0C44
_080B0C44: @ jump table
	.4byte _080B0C58 @ case 0
	.4byte _080B0C88 @ case 1
	.4byte _080B0C90 @ case 2
	.4byte _080B0C98 @ case 3
	.4byte _080B0CA0 @ case 4
_080B0C58:
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080B0C78
	ldr r0, _080B0C80 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080B0C84 @ =0x000004CC
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080B0C78
	movs r0, #0x10
	bl sub_08013CF0
_080B0C78:
	adds r0, r4, #0
	bl sub_080B0814
	b _080B0CA8
	.align 2, 0
_080B0C80: .4byte gEwramData
_080B0C84: .4byte 0x000004CC
_080B0C88:
	adds r0, r4, #0
	bl sub_080B0898
	b _080B0CA8
_080B0C90:
	adds r0, r4, #0
	bl sub_080B095C
	b _080B0CA8
_080B0C98:
	adds r0, r4, #0
	bl sub_08079294
	b _080B0CA8
_080B0CA0:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080B0CC4
_080B0CA8:
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _080B0CB6
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
_080B0CB6:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_0806DF20
_080B0CC4:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B0CCC
sub_080B0CCC: @ 0x080B0CCC
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

	thumb_func_start sub_080B0CFC
sub_080B0CFC: @ 0x080B0CFC
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

	thumb_func_start sub_080B0D2C
sub_080B0D2C: @ 0x080B0D2C
	push {lr}
	movs r1, #0
	bl sub_080B0AD4
	pop {r0}
	bx r0

	thumb_func_start sub_080B0D38
sub_080B0D38: @ 0x080B0D38
	push {lr}
	bl sub_080B0BE8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B0D44
sub_080B0D44: @ 0x080B0D44
	push {lr}
	movs r1, #1
	bl sub_080B0AD4
	pop {r0}
	bx r0

	thumb_func_start sub_080B0D50
sub_080B0D50: @ 0x080B0D50
	push {lr}
	bl sub_080B0BE8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B0D5C
sub_080B0D5C: @ 0x080B0D5C
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _080B0DA8
	add r0, sp, #8
	adds r1, r5, #0
	bl sub_080421AC
	movs r1, #0x34
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bgt _080B0D96
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	movs r3, #0x80
	lsls r3, r3, #0xc
	adds r2, r5, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	adds r2, r3, #0
	bl sub_0806D5C0
	movs r0, #2
	strb r0, [r5, #0xa]
	b _080B0DA8
_080B0D96:
	ldr r0, _080B0DBC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080B0DC0 @ =0x000004BE
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080B0DA8
	b _080B0F14
_080B0DA8:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bne _080B0DB0
	b _080B0EBC
_080B0DB0:
	cmp r0, #1
	bgt _080B0DC4
	cmp r0, #0
	beq _080B0DCC
	b _080B0EC6
	.align 2, 0
_080B0DBC: .4byte gEwramData
_080B0DC0: .4byte 0x000004BE
_080B0DC4:
	cmp r0, #2
	bne _080B0DCA
	b _080B0ECC
_080B0DCA:
	b _080B0EC6
_080B0DCC:
	ldr r1, _080B0EA0 @ =0x081E41AC
	ldr r2, _080B0EA4 @ =0x0820B7F4
	ldr r0, _080B0EA8 @ =0x0823C290
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B0EDA
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	blt _080B0EDA
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
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x14
	strb r0, [r1]
	ldrb r0, [r6]
	movs r1, #2
	orrs r0, r1
	strb r0, [r6]
	ldr r0, _080B0EAC @ =0xFFFD8000
	str r0, [r5, #0x48]
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r5, #0x50]
	str r0, [r5, #0x18]
	ldrb r0, [r5, #0xc]
	adds r6, r4, #0
	cmp r0, #1
	bne _080B0E56
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r0, [r1]
	subs r0, #0x14
	strh r0, [r1]
	ldr r0, [r5, #0x18]
	rsbs r0, r0, #0
	str r0, [r5, #0x18]
_080B0E56:
	ldrb r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B0E72
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x50]
	rsbs r0, r0, #0
	str r0, [r5, #0x50]
	ldr r0, [r5, #0x18]
	rsbs r0, r0, #0
	str r0, [r5, #0x18]
_080B0E72:
	movs r4, #1
	strb r4, [r5, #0xa]
	movs r0, #0x86
	bl sub_080D7910
	strh r4, [r5, #0x34]
	ldr r2, _080B0EB0 @ =sub_0806E1E8
	ldr r3, _080B0EB4 @ =sub_080B13BC
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_0804277C
	ldr r4, _080B0EB8 @ =0x1010F8F8
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08042884
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080428F0
	b _080B0EE2
	.align 2, 0
_080B0EA0: .4byte 0x081E41AC
_080B0EA4: .4byte 0x0820B7F4
_080B0EA8: .4byte 0x0823C290
_080B0EAC: .4byte 0xFFFD8000
_080B0EB0: .4byte sub_0806E1E8
_080B0EB4: .4byte sub_080B13BC
_080B0EB8: .4byte 0x1010F8F8
_080B0EBC:
	movs r1, #0xa0
	lsls r1, r1, #0xa
	adds r0, r5, #0
	bl sub_0806D430
_080B0EC6:
	adds r6, r5, #0
	adds r6, #0x58
	b _080B0EE2
_080B0ECC:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080B0EDA:
	adds r0, r5, #0
	bl sub_08000E14
	b _080B0F14
_080B0EE2:
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r2, #0x80
	lsls r2, r2, #9
	ldrb r1, [r6]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	movs r4, #0
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
	beq _080B0F14
	movs r0, #2
	strb r0, [r5, #0xa]
_080B0F14:
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080B0F1C
sub_080B0F1C: @ 0x080B0F1C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0xb]
	cmp r2, #0
	bne _080B1024
	adds r0, #0x6e
	ldrh r1, [r0]
	adds r5, r0, #0
	cmp r1, #0x11
	bne _080B0F66
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080B0F66
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0x30
	ldrsh r1, [r4, r3]
	cmp r0, r1
	ble _080B0F66
	strb r2, [r4, #0xd]
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
_080B0F66:
	ldrb r0, [r5]
	movs r1, #9
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #0xb
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r1, r2
	cmp r0, #6
	bls _080B0F84
	movs r1, #0
_080B0F84:
	ldr r2, _080B102C @ =0x08528708
	adds r0, r4, #0
	movs r3, #0x14
	bl sub_0806CAF8
	adds r1, r0, #0
	movs r3, #0x30
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bne _080B0FBA
	movs r0, #0x1b
	ands r0, r1
	cmp r0, #8
	beq _080B0FBA
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
_080B0FBA:
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B1024
	ldrb r0, [r5]
	cmp r0, #0x11
	bne _080B1024
	adds r5, r4, #0
	adds r5, #0x58
	ldrb r1, [r5]
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080B0FF2
	adds r0, r4, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _080B1004
	ldrb r1, [r5]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080B1014
_080B0FF2:
	adds r0, r4, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080B1014
_080B1004:
	adds r0, r4, #0
	bl sub_0806D044
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	cmp r0, #0x63
	ble _080B1016
_080B1014:
	movs r1, #0
_080B1016:
	cmp r1, #0
	beq _080B1024
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080B1024:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B102C: .4byte 0x08528708

	thumb_func_start sub_080B1030
sub_080B1030: @ 0x080B1030
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r4, [r5, #0xb]
	cmp r4, #1
	beq _080B1082
	cmp r4, #1
	bgt _080B1044
	cmp r4, #0
	beq _080B1052
	b _080B11D4
_080B1044:
	cmp r4, #2
	bne _080B104A
	b _080B117A
_080B104A:
	cmp r4, #3
	bne _080B1050
	b _080B11C0
_080B1050:
	b _080B11D4
_080B1052:
	bl sub_08000A90
	movs r6, #1
	ands r0, r6
	cmp r0, #0
	beq _080B106E
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	strb r4, [r5, #0xc]
	b _080B107C
_080B106E:
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	strb r6, [r5, #0xc]
_080B107C:
	movs r0, #1
	strb r0, [r5, #0xb]
	b _080B11D4
_080B1082:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrh r1, [r0]
	movs r0, #0x83
	lsls r0, r0, #2
	cmp r1, r0
	bne _080B10FC
	ldr r0, _080B116C @ =sub_080B0D5C
	bl sub_0806DFF8
	adds r4, r0, #0
	cmp r4, #0
	beq _080B10FC
	ldr r6, _080B1170 @ =0x0000FFE8
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
	subs r0, #0x10
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
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
	beq _080B10DE
	movs r6, #0x18
_080B10DE:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	mov r2, ip
	ldrh r2, [r2]
	adds r0, r0, r2
	mov r1, ip
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
	ldrb r0, [r5, #0xc]
	strb r0, [r4, #0xc]
_080B10FC:
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B11D4
	adds r4, r5, #0
	adds r4, #0x58
	ldrb r1, [r4]
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080B1132
	adds r0, r5, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _080B1144
	ldrb r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080B1154
_080B1132:
	adds r0, r5, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080B1154
_080B1144:
	adds r0, r5, #0
	bl sub_0806D044
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	cmp r0, #0x63
	ble _080B1156
_080B1154:
	movs r1, #0
_080B1156:
	cmp r1, #0
	beq _080B1174
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #2
	strb r0, [r5, #0xb]
	b _080B11D4
	.align 2, 0
_080B116C: .4byte sub_080B0D5C
_080B1170: .4byte 0x0000FFE8
_080B1174:
	movs r0, #3
	strb r0, [r5, #0xb]
	b _080B11D4
_080B117A:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	movs r1, #9
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #0xb
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r1, r2
	cmp r0, #6
	bls _080B119C
	movs r1, #0
_080B119C:
	rsbs r1, r1, #0
	ldr r2, _080B11BC @ =0x08528708
	adds r0, r5, #0
	movs r3, #0x14
	bl sub_0806CAF8
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B11D4
	movs r0, #0
	strb r0, [r5, #0xb]
	b _080B11D4
	.align 2, 0
_080B11BC: .4byte 0x08528708
_080B11C0:
	movs r0, #0
	strb r0, [r5, #0xa]
	strb r0, [r5, #0xc]
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080B11D4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B11DC
sub_080B11DC: @ 0x080B11DC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r4, [r5, #0xb]
	cmp r4, #0
	beq _080B11EC
	cmp r4, #1
	beq _080B1210
	b _080B12B8
_080B11EC:
	adds r0, r5, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #1
	strb r0, [r5, #0xb]
	ldr r0, _080B120C @ =0xFFD80000
	str r0, [r5, #0x4c]
	str r4, [r5, #0x48]
	movs r0, #0x6f
	bl sub_080D7910
	b _080B12B8
	.align 2, 0
_080B120C: .4byte 0xFFD80000
_080B1210:
	ldrb r0, [r5, #0xd]
	adds r2, r0, #1
	strb r2, [r5, #0xd]
	ldr r1, [r5, #0x44]
	ldr r0, [r5, #0x4c]
	adds r6, r1, r0
	movs r1, #0x90
	lsls r1, r1, #9
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	ldr r3, [r5, #0x48]
	movs r1, #0xa0
	lsls r1, r1, #7
	adds r0, r3, r1
	str r0, [r5, #0x48]
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B1240
	movs r0, #1
	b _080B12BA
_080B1240:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bhi _080B12B8
	ands r2, r4
	cmp r2, #0
	bne _080B1286
	movs r1, #0x90
	lsls r1, r1, #8
	adds r0, r3, r1
	bl sub_080009E4
	adds r4, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl sub_0802D5EC
	lsls r4, r4, #4
	ldr r1, [r5, #0x40]
	adds r1, r1, r4
	adds r4, r1, r0
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #1
	movs r3, #8
	bl sub_08045CEC
	adds r1, r0, #0
	cmp r1, #0
	beq _080B1286
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r1, #0x4c]
	ldr r0, _080B12C0 @ =0xFFFFF000
	str r0, [r1, #0x54]
_080B1286:
	ldrb r1, [r5, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080B12B8
	movs r0, #0x6e
	bl sub_080D7910
	movs r0, #0x10
	bl sub_0802D5EC
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x40]
	adds r4, r1, r0
	movs r0, #4
	bl sub_0802D5EC
	lsls r0, r0, #0x10
	adds r6, r6, r0
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0x10
	movs r3, #6
	bl sub_08045CEC
_080B12B8:
	movs r0, #0
_080B12BA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080B12C0: .4byte 0xFFFFF000

	thumb_func_start sub_080B12C4
sub_080B12C4: @ 0x080B12C4
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _080B12E8 @ =0x081E41AC
	ldr r2, _080B12EC @ =0x0820B7F4
	ldr r0, _080B12F0 @ =0x0823C290
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B12F4
	adds r0, r4, #0
	bl sub_08000E14
	b _080B1360
	.align 2, 0
_080B12E8: .4byte 0x081E41AC
_080B12EC: .4byte 0x0820B7F4
_080B12F0: .4byte 0x0823C290
_080B12F4:
	adds r0, r4, #0
	bl sub_0806B04C
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x13
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _080B132C @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B1330
	movs r0, #3
	strb r0, [r4, #0xa]
	b _080B1360
	.align 2, 0
_080B132C: .4byte gEwramData
_080B1330:
	ldr r1, _080B1368 @ =sub_0806E1B8
	ldr r2, _080B136C @ =sub_080B1370
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
_080B1360:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B1368: .4byte sub_0806E1B8
_080B136C: .4byte sub_080B1370

	thumb_func_start sub_080B1370
sub_080B1370: @ 0x080B1370
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	bl sub_0806BC40
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080B13B6
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
	movs r1, #0
	movs r0, #2
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xc]
	strb r1, [r6, #0xb]
_080B13B6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080B13BC
sub_080B13BC: @ 0x080B13BC
	movs r1, #0
	strh r1, [r0, #0x34]
	bx lr
	.align 2, 0

	thumb_func_start sub_080B13C4
sub_080B13C4: @ 0x080B13C4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806CC20
	cmp r0, #0
	bne _080B1420
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080B13F2
	cmp r0, #1
	bgt _080B13E0
	cmp r0, #0
	beq _080B13EA
	b _080B1414
_080B13E0:
	cmp r0, #2
	beq _080B13FA
	cmp r0, #3
	beq _080B140C
	b _080B1414
_080B13EA:
	adds r0, r4, #0
	bl sub_080B0F1C
	b _080B1414
_080B13F2:
	adds r0, r4, #0
	bl sub_080B1030
	b _080B1414
_080B13FA:
	adds r0, r4, #0
	bl sub_080B11DC
	cmp r0, #0
	beq _080B1414
	adds r0, r4, #0
	bl sub_08000E14
	b _080B1420
_080B140C:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080B1420
_080B1414:
	adds r0, r4, #0
	bl sub_0806E314
	adds r0, r4, #0
	bl sub_0806DF20
_080B1420:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B1428
sub_080B1428: @ 0x080B1428
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080B143A
	cmp r0, #1
	beq _080B148A
	b _080B1494
_080B143A:
	ldr r1, _080B1458 @ =0x081E41B4
	ldr r2, _080B145C @ =0x0820B818
	ldr r0, _080B1460 @ =0x0823D78C
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B1464
	adds r0, r4, #0
	bl sub_08000E14
	b _080B14AA
	.align 2, 0
_080B1458: .4byte 0x081E41B4
_080B145C: .4byte 0x0820B818
_080B1460: .4byte 0x0823D78C
_080B1464:
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x12
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
_080B148A:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D3D8
_080B1494:
	adds r0, r4, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _080B14AA
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080B14AA:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B14B4
sub_080B14B4: @ 0x080B14B4
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _080B14CA
	cmp r0, #2
	beq _080B154C
	adds r4, r5, #0
	adds r4, #0x58
	b _080B1570
_080B14CA:
	ldr r1, _080B153C @ =0x081E41B4
	ldr r2, _080B1540 @ =0x0820B818
	ldr r0, _080B1544 @ =0x0823D78C
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B1568
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	blt _080B1568
	ldr r0, _080B1548 @ =sub_080B23C4
	str r0, [r5, #4]
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
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x14
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #7
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	ldrb r0, [r6]
	movs r1, #2
	orrs r0, r1
	strb r0, [r6]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	b _080B1570
	.align 2, 0
_080B153C: .4byte 0x081E41B4
_080B1540: .4byte 0x0820B818
_080B1544: .4byte 0x0823D78C
_080B1548: .4byte sub_080B23C4
_080B154C:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B1568
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080B1568:
	adds r0, r5, #0
	bl sub_08000E14
	b _080B15DE
_080B1570:
	ldr r0, [r5, #0x20]
	movs r1, #0xc0
	lsls r1, r1, #0xf
	cmp r0, r1
	ble _080B157C
	adds r0, r1, #0
_080B157C:
	movs r1, #3
	bl __divsi3
	cmp r0, #0
	bge _080B1588
	adds r0, #0x1f
_080B1588:
	asrs r6, r0, #5
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	lsls r0, r0, #5
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x14]
	bl sub_080009E4
	lsls r1, r0, #5
	str r1, [r5, #0x1c]
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bge _080B15AE
	ldr r2, _080B15E8 @ =0x0000FFFF
	adds r0, r0, r2
_080B15AE:
	asrs r0, r0, #0x10
	muls r0, r6, r0
	str r0, [r5, #0x18]
	adds r0, r1, #0
	cmp r0, #0
	bge _080B15BE
	ldr r1, _080B15E8 @ =0x0000FFFF
	adds r0, r0, r1
_080B15BE:
	asrs r0, r0, #0x10
	muls r0, r6, r0
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x14]
	movs r2, #0x80
	lsls r2, r2, #9
	movs r1, #0
	str r1, [sp]
	ldrb r1, [r4]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r6, #0
	movs r3, #0
	bl sub_0803E058
_080B15DE:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B15E8: .4byte 0x0000FFFF

	thumb_func_start sub_080B15EC
sub_080B15EC: @ 0x080B15EC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	cmp r6, #0
	beq _080B1670
	adds r0, r5, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bge _080B160E
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	adds r0, r1, r0
	b _080B1612
_080B160E:
	asrs r0, r0, #0x10
	subs r0, r1, r0
_080B1612:
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, #0
	adds r0, #0x46
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bge _080B162C
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	adds r0, r1, r0
	b _080B1630
_080B162C:
	asrs r0, r0, #0x10
	subs r0, r1, r0
_080B1630:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r6, #0x14]
	ldr r0, [r5, #0x40]
	ldr r1, [r4, #0x18]
	subs r0, r0, r1
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r1, [r5, #0x44]
	ldr r2, [r4, #0x1c]
	subs r1, r1, r2
	asrs r1, r1, #0x10
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	str r0, [r6, #0x20]
	ldr r1, [r4, #0x18]
	str r1, [r6, #0x40]
	ldr r1, [r4, #0x1c]
	str r1, [r6, #0x44]
	b _080B1672
_080B1670:
	movs r0, #0
_080B1672:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080B1678
sub_080B1678: @ 0x080B1678
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	mov r8, r0
	ldr r1, [r5, #0x18]
	str r1, [sp, #0x18]
	ldr r2, [r5, #0x40]
	str r2, [sp, #0x1c]
	ldr r3, [r5, #0x44]
	str r3, [sp, #0x20]
	ldrb r0, [r5, #0xa]
	cmp r0, #5
	bhi _080B174E
	adds r0, r1, #0
	adds r1, r5, #0
	mov r2, r8
	bl sub_080B15EC
	adds r4, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #0xf
	cmp r4, r0
	bgt _080B16C8
	mov r4, r8
	movs r1, #0x34
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _080B16D2
	ldrh r1, [r4, #0x38]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080B1718
	b _080B16D2
_080B16C8:
	mov r2, r8
	ldr r0, [r2, #0x14]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x14]
_080B16D2:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B16EC
	ldr r0, [r5, #0x2c]
	ldr r3, _080B16E8 @ =0xFFFF0000
	adds r0, r0, r3
	b _080B16F4
	.align 2, 0
_080B16E8: .4byte 0xFFFF0000
_080B16EC:
	ldr r0, [r5, #0x2c]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r0, r4
_080B16F4:
	str r0, [r5, #0x2c]
	ldrb r0, [r5, #0xa]
	cmp r0, #5
	bne _080B1700
	movs r0, #0
	str r0, [r5, #0x2c]
_080B1700:
	movs r1, #0
	movs r0, #6
	strb r0, [r5, #0xa]
	ldr r0, [r5, #0x2c]
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x30]
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r5, #0x54]
	str r1, [r5, #0x50]
	b _080B174E
_080B1718:
	mov r1, r8
	ldr r0, [r1, #0x14]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B174E
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B1740
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080B1740:
	ldr r1, [r5, #0x18]
	cmp r1, #0
	bne _080B1748
	b _080B1E9A
_080B1748:
	movs r0, #2
	strb r0, [r1, #0xa]
	b _080B1E9A
_080B174E:
	add r0, sp, #8
	adds r1, r5, #0
	bl sub_080421AC
	ldr r0, _080B177C @ =gEwramData
	ldr r0, [r0]
	ldr r2, _080B1780 @ =0x000004BE
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _080B1768
	b _080B1F04
_080B1768:
	ldrb r0, [r5, #0xa]
	cmp r0, #7
	bls _080B1770
	b _080B1EA6
_080B1770:
	lsls r0, r0, #2
	ldr r1, _080B1784 @ =_080B1788
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B177C: .4byte gEwramData
_080B1780: .4byte 0x000004BE
_080B1784: .4byte _080B1788
_080B1788: @ jump table
	.4byte _080B17A8 @ case 0
	.4byte _080B1882 @ case 1
	.4byte _080B19D8 @ case 2
	.4byte _080B1A4A @ case 3
	.4byte _080B1B42 @ case 4
	.4byte _080B1D14 @ case 5
	.4byte _080B1DB8 @ case 6
	.4byte _080B1E76 @ case 7
_080B17A8:
	ldr r1, _080B18A8 @ =0x081E41B4
	ldr r2, _080B18AC @ =0x0820B818
	ldr r0, _080B18B0 @ =0x0823D78C
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B17C0
	b _080B1E9A
_080B17C0:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r0, #0
	bge _080B17D0
	b _080B1E9A
_080B17D0:
	adds r0, r5, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	adds r4, r5, #0
	adds r4, #0x58
	movs r0, #0x1f
	ands r6, r0
	ldrb r1, [r4]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r6
	strb r0, [r4]
	adds r6, r5, #0
	adds r6, #0x59
	ldrb r0, [r6]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r6]
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x13
	strb r0, [r1]
	ldr r0, _080B18B4 @ =sub_080B14B4
	bl sub_0806DFF8
	str r0, [sp, #0x18]
	str r0, [r5, #0x18]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r5, #0x1c]
	movs r2, #0x80
	str r2, [r5, #0x20]
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B1830
	movs r0, #0
	str r0, [r5, #0x1c]
	rsbs r0, r2, #0
	str r0, [r5, #0x20]
_080B1830:
	mov r4, r8
	ldr r0, [r4, #0x18]
	str r0, [r5, #0x40]
	ldr r0, [r4, #0x1c]
	str r0, [r5, #0x44]
	ldr r2, _080B18B8 @ =sub_080B240C
	adds r0, r5, #0
	movs r1, #8
	movs r3, #0
	bl sub_0804277C
	ldr r4, _080B18BC @ =0x1818F4F4
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08042884
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080428F0
	ldrb r0, [r6]
	movs r1, #2
	orrs r0, r1
	strb r0, [r6]
	adds r0, r5, #0
	movs r1, #0x60
	movs r2, #0xc
	movs r3, #2
	bl sub_080458E4
	adds r0, r5, #0
	movs r1, #0x60
	movs r2, #6
	movs r3, #2
	bl sub_080458E4
	movs r0, #0x74
	bl sub_080D7910
	movs r0, #1
	strb r0, [r5, #0xa]
_080B1882:
	ldr r0, [r5, #0x28]
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #5
	cmp r1, #0
	bge _080B18C0
	ldr r0, [r5, #0x28]
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #5
	rsbs r1, r1, #0
	asrs r1, r1, #0x10
	rsbs r4, r1, #0
	b _080B18CE
	.align 2, 0
_080B18A8: .4byte 0x081E41B4
_080B18AC: .4byte 0x0820B818
_080B18B0: .4byte 0x0823D78C
_080B18B4: .4byte sub_080B14B4
_080B18B8: .4byte sub_080B240C
_080B18BC: .4byte 0x1818F4F4
_080B18C0:
	ldr r0, [r5, #0x28]
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #5
	asrs r4, r1, #0x10
_080B18CE:
	ldr r0, [r5, #0x28]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5, #0x28]
	ldr r2, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	adds r2, r2, r1
	str r2, [r5, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #7
	cmp r0, r1
	ble _080B1902
	str r1, [r5, #0x28]
	ldr r0, [r5, #0x54]
	adds r0, r0, r1
	str r0, [r5, #0x54]
	movs r1, #0x80
	lsls r1, r1, #0xc
	cmp r0, r1
	ble _080B18FA
	str r1, [r5, #0x54]
_080B18FA:
	ldr r0, [r5, #0x4c]
	ldr r1, [r5, #0x54]
	adds r0, r0, r1
	b _080B190A
_080B1902:
	adds r0, r2, #0
	bl sub_080009E4
	muls r0, r4, r0
_080B190A:
	str r0, [r5, #0x4c]
	ldr r0, [r5, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r0, r2
	bl sub_080009E4
	adds r1, r4, #0
	muls r1, r0, r1
	str r1, [r5, #0x48]
	mov r3, r8
	ldr r0, [r3, #0x18]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r3, #0x1c]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	adds r0, r5, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	bl sub_080021A8
	lsls r1, r4, #0x10
	asrs r7, r1, #0x10
	adds r1, r7, #0
	subs r1, #0x10
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	adds r0, r1, #0
	adds r1, r6, #0
	bl sub_0800207C
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	beq _080B1968
	lsls r1, r4, #0x10
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	movs r0, #0
	str r0, [r5, #0x28]
	b _080B1984
_080B1968:
	adds r0, r7, #0
	adds r0, #0x10
	adds r1, r6, #0
	bl sub_08002058
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	beq _080B198A
	lsls r0, r3, #0x10
	ldr r1, [r5, #0x40]
	adds r1, r1, r0
	str r1, [r5, #0x40]
	str r4, [r5, #0x28]
_080B1984:
	movs r0, #2
	strb r0, [r5, #0xa]
	b _080B1EA6
_080B198A:
	adds r1, r6, #0
	adds r1, #0x10
	adds r0, r7, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r3, [sp, #0x24]
	bl sub_08001D94
	lsls r2, r0, #0x10
	asrs r1, r2, #0x10
	ldr r3, [sp, #0x24]
	cmp r1, #0
	beq _080B19AC
	lsls r1, r1, #0x10
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
_080B19AC:
	asrs r0, r2, #0x10
	cmp r0, #0
	bne _080B19B4
	b _080B1EA6
_080B19B4:
	lsls r1, r0, #0x10
	ldr r0, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	ldr r1, [r5, #0x28]
	ldr r0, _080B19D0 @ =0x00003FFF
	cmp r1, r0
	bgt _080B19CA
	ldr r0, _080B19D4 @ =0xFFFD0000
	str r0, [r5, #0x54]
	str r3, [r5, #0x28]
_080B19CA:
	str r3, [r5, #0x28]
	b _080B1A44
	.align 2, 0
_080B19D0: .4byte 0x00003FFF
_080B19D4: .4byte 0xFFFD0000
_080B19D8:
	ldr r0, [r5, #0x54]
	movs r4, #0x80
	lsls r4, r4, #7
	adds r0, r0, r4
	str r0, [r5, #0x54]
	movs r1, #0x80
	lsls r1, r1, #0xc
	cmp r0, r1
	ble _080B19EC
	str r1, [r5, #0x54]
_080B19EC:
	ldr r2, [r5, #0x4c]
	ldr r0, [r5, #0x54]
	adds r2, r2, r0
	str r2, [r5, #0x4c]
	mov r1, r8
	ldr r0, [r1, #0x18]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	mov r3, r8
	ldr r0, [r3, #0x1c]
	adds r0, r0, r2
	str r0, [r5, #0x44]
	adds r0, r5, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	bl sub_080021A8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r4, #0x80
	lsls r4, r4, #0xd
	adds r1, r1, r4
	asrs r1, r1, #0x10
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	beq _080B1A3A
	lsls r1, r2, #0x10
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
_080B1A3A:
	cmp r2, #0
	bne _080B1A40
	b _080B1EA6
_080B1A40:
	movs r0, #0
	str r0, [r5, #0x28]
_080B1A44:
	movs r0, #3
	strb r0, [r5, #0xa]
	b _080B1EA6
_080B1A4A:
	ldr r0, [r5, #0x54]
	movs r1, #0x80
	lsls r1, r1, #7
	mov sl, r1
	add r0, sl
	str r0, [r5, #0x54]
	movs r1, #0x80
	lsls r1, r1, #0xc
	cmp r0, r1
	ble _080B1A60
	str r1, [r5, #0x54]
_080B1A60:
	ldr r2, [r5, #0x4c]
	ldr r0, [r5, #0x54]
	adds r2, r2, r0
	str r2, [r5, #0x4c]
	mov r3, r8
	ldr r0, [r3, #0x18]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r3, #0x1c]
	adds r0, r0, r2
	str r0, [r5, #0x44]
	adds r0, r5, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	bl sub_080021A8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r4, #0x80
	lsls r4, r4, #0xd
	adds r1, r1, r4
	asrs r1, r1, #0x10
	bl sub_08001D94
	lsls r2, r0, #0x10
	asrs r1, r2, #0x10
	cmp r1, #0
	beq _080B1AAC
	lsls r1, r1, #0x10
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
_080B1AAC:
	asrs r2, r2, #0x10
	mov sb, r2
	cmp r2, #0
	bne _080B1AB6
	b _080B1EA6
_080B1AB6:
	adds r0, r5, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r7, [r0, r1]
	adds r0, #4
	ldrh r0, [r0]
	adds r0, #0x10
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r4, r0, #0x1f
	ldr r2, _080B1B24 @ =sub_080B1428
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r3, r0, #0
	cmp r3, #0
	beq _080B1B04
	movs r0, #5
	strb r0, [r3, #0x14]
	adds r0, r3, #0
	adds r0, #0x42
	strh r7, [r0]
	adds r0, #4
	strh r6, [r0]
	movs r0, #1
	adds r3, #0x58
	eors r4, r0
	lsls r2, r4, #6
	ldrb r1, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
_080B1B04:
	movs r0, #0x82
	lsls r0, r0, #1
	bl sub_080D7910
	ldr r1, [r5, #0x54]
	ldr r0, _080B1B28 @ =0x00007FFF
	cmp r1, r0
	bgt _080B1B2C
	movs r1, #0
	movs r0, #4
	strb r0, [r5, #0xa]
	mov r2, sl
	str r2, [r5, #0x54]
	str r1, [r5, #0x4c]
	b _080B1EA6
	.align 2, 0
_080B1B24: .4byte sub_080B1428
_080B1B28: .4byte 0x00007FFF
_080B1B2C:
	rsbs r0, r1, #0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r5, #0x54]
	mov r3, sb
	lsls r1, r3, #0x10
	ldr r0, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	b _080B1EA6
_080B1B42:
	ldrb r0, [r5, #0xd]
	adds r6, r5, #0
	adds r6, #0x58
	movs r4, #0x42
	adds r4, r4, r5
	mov sl, r4
	cmp r0, #3
	bhi _080B1B9E
	movs r1, #0
	ldrsh r0, [r4, r1]
	mov sb, r0
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r0, #0x10
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	ldrb r0, [r6]
	lsls r0, r0, #0x19
	lsrs r4, r0, #0x1f
	ldr r2, _080B1C64 @ =sub_080B1428
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r3, r0, #0
	cmp r3, #0
	beq _080B1B9E
	movs r0, #5
	strb r0, [r3, #0x14]
	adds r0, r3, #0
	adds r0, #0x42
	mov r2, sb
	strh r2, [r0]
	adds r0, #4
	strh r7, [r0]
	movs r0, #1
	adds r3, #0x58
	eors r4, r0
	lsls r2, r4, #6
	ldrb r1, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
_080B1B9E:
	ldrb r1, [r5, #0xd]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080B1BAE
	movs r0, #0x73
	bl sub_080D7910
_080B1BAE:
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	ldr r1, [r5, #0x28]
	ldr r0, _080B1C68 @ =0x0003FFFF
	cmp r1, r0
	bgt _080B1BC4
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r1, r3
	str r0, [r5, #0x28]
_080B1BC4:
	ldr r1, [r5, #0x28]
	rsbs r1, r1, #0
	ldr r2, _080B1C6C @ =0x08528720
	adds r0, r5, #0
	movs r3, #8
	bl sub_0806CAF8
	adds r3, r0, #0
	movs r2, #3
	ands r0, r2
	cmp r0, #0
	beq _080B1BEA
	mov r4, r8
	ldr r0, [r4, #0x14]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x14]
	movs r0, #5
	strb r0, [r5, #0xa]
_080B1BEA:
	movs r0, #8
	ands r0, r3
	cmp r0, #0
	beq _080B1C4A
	ldrb r1, [r5, #0xd]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080B1C4A
	mov r0, sl
	movs r1, #0
	ldrsh r7, [r0, r1]
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r0, #0x10
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r4, r0, #0x1f
	ldr r2, _080B1C64 @ =sub_080B1428
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r3, r0, #0
	cmp r3, #0
	beq _080B1C4A
	movs r0, #4
	strb r0, [r3, #0x14]
	adds r0, r3, #0
	adds r0, #0x42
	strh r7, [r0]
	adds r0, #4
	strh r6, [r0]
	movs r0, #1
	adds r3, #0x58
	eors r4, r0
	lsls r2, r4, #6
	ldrb r1, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
_080B1C4A:
	mov r0, r8
	adds r0, #0x42
	movs r3, #0
	ldrsh r2, [r0, r3]
	mov r4, sl
	movs r1, #0
	ldrsh r0, [r4, r1]
	subs r1, r2, r0
	cmp r1, #0
	blt _080B1C70
	cmp r1, #0x2f
	ble _080B1C78
	b _080B1EA6
	.align 2, 0
_080B1C64: .4byte sub_080B1428
_080B1C68: .4byte 0x0003FFFF
_080B1C6C: .4byte 0x08528720
_080B1C70:
	subs r0, r0, r2
	cmp r0, #0x2f
	ble _080B1C78
	b _080B1EA6
_080B1C78:
	mov r2, r8
	ldr r0, [r2, #0x14]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x14]
	movs r0, #5
	strb r0, [r5, #0xa]
	mov r3, sl
	movs r4, #0
	ldrsh r1, [r3, r4]
	ldr r0, [r2, #0x18]
	cmp r0, #0
	bge _080B1C9A
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	adds r0, r1, r0
	b _080B1C9E
_080B1C9A:
	asrs r0, r0, #0x10
	subs r0, r1, r0
_080B1C9E:
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, #0
	adds r0, #0x46
	movs r3, #0
	ldrsh r1, [r0, r3]
	mov r4, r8
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bge _080B1CBA
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	adds r0, r1, r0
	b _080B1CBE
_080B1CBA:
	asrs r0, r0, #0x10
	subs r0, r1, r0
_080B1CBE:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x40]
	mov r2, r8
	ldr r1, [r2, #0x18]
	subs r0, r0, r1
	asrs r0, r0, #0x10
	adds r3, r0, #0
	muls r3, r0, r3
	adds r0, r3, #0
	ldr r1, [r5, #0x44]
	ldr r2, [r2, #0x1c]
	subs r1, r1, r2
	asrs r1, r1, #0x10
	adds r4, r1, #0
	muls r4, r1, r4
	adds r1, r4, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	str r0, [r5, #0x24]
	lsls r0, r0, #1
	movs r1, #3
	bl __divsi3
	str r0, [r5, #0x24]
	movs r0, #0
	str r0, [r5, #0x20]
	strb r0, [r5, #0xd]
	ldr r0, _080B1D10 @ =0x00000103
	bl sub_080D7910
	b _080B1EA6
	.align 2, 0
_080B1D10: .4byte 0x00000103
_080B1D14:
	ldr r0, [r5, #0x24]
	ldr r1, _080B1D5C @ =0xFFFF0000
	adds r0, r0, r1
	str r0, [r5, #0x24]
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _080B1D40
	ldrb r0, [r5, #0xd]
	subs r4, r0, #4
	cmp r4, #3
	bgt _080B1D40
	lsls r0, r4, #0xc
	bl sub_080009E4
	lsls r0, r0, #3
	ldr r1, [r5, #0x24]
	adds r1, r1, r0
	str r1, [r5, #0x24]
_080B1D40:
	ldr r1, [r5, #0x24]
	ldr r0, _080B1D60 @ =0x0001FFFF
	cmp r1, r0
	bgt _080B1D4C
	adds r0, #1
	str r0, [r5, #0x24]
_080B1D4C:
	ldr r0, [r5, #0x24]
	cmp r0, #0
	bge _080B1D64
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r4, r0, #0
	b _080B1D66
	.align 2, 0
_080B1D5C: .4byte 0xFFFF0000
_080B1D60: .4byte 0x0001FFFF
_080B1D64:
	asrs r4, r0, #0x10
_080B1D66:
	ldr r0, [r5, #0x1c]
	bl sub_080009E4
	muls r0, r4, r0
	str r0, [r5, #0x4c]
	ldr r0, [r5, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r0, r2
	bl sub_080009E4
	adds r1, r4, #0
	muls r1, r0, r1
	str r1, [r5, #0x48]
	mov r3, r8
	ldr r0, [r3, #0x18]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r3, #0x1c]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x20]
	ldr r4, _080B1DB4 @ =0xFFFFFEC0
	adds r0, r0, r4
	str r0, [r5, #0x20]
	adds r4, r0, #0
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B1DAC
	rsbs r4, r4, #0
_080B1DAC:
	ldr r0, [r5, #0x1c]
	adds r0, r0, r4
	str r0, [r5, #0x1c]
	b _080B1EA6
	.align 2, 0
_080B1DB4: .4byte 0xFFFFFEC0
_080B1DB8:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _080B1DCA
	str r0, [sp, #0x18]
	movs r1, #0
	movs r0, #2
	ldr r2, [sp, #0x18]
	strb r0, [r2, #0xa]
	str r1, [r5, #0x18]
_080B1DCA:
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	bne _080B1E8C
	ldr r1, [r5, #0x28]
	ldr r2, _080B1DFC @ =0x08528720
	adds r0, r5, #0
	movs r3, #2
	bl sub_0806CAF8
	adds r3, r0, #0
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	beq _080B1E00
	ldr r0, [r5, #0x28]
	cmp r0, #0
	bgt _080B1E18
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r0, r1
	b _080B1E1C
	.align 2, 0
_080B1DFC: .4byte 0x08528720
_080B1E00:
	movs r2, #0x20
	adds r1, r3, #0
	ands r1, r2
	cmp r1, #0
	beq _080B1E24
	ldr r0, [r5, #0x28]
	cmp r0, #0
	ble _080B1E18
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r0, r2
	b _080B1E1C
_080B1E18:
	ldr r4, _080B1E20 @ =0xFFFFE000
	adds r0, r0, r4
_080B1E1C:
	str r0, [r5, #0x28]
	b _080B1E50
	.align 2, 0
_080B1E20: .4byte 0xFFFFE000
_080B1E24:
	ldr r0, [r5, #0x28]
	cmp r0, #0
	blt _080B1E3C
	ldr r4, _080B1E38 @ =0xFFFFFF00
	adds r0, r0, r4
	str r0, [r5, #0x28]
	cmp r0, #0
	bgt _080B1E50
	b _080B1E48
	.align 2, 0
_080B1E38: .4byte 0xFFFFFF00
_080B1E3C:
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r0, r4
	str r0, [r5, #0x28]
	cmp r0, #0
	ble _080B1E50
_080B1E48:
	str r1, [r5, #0x28]
	strb r2, [r5, #0xd]
	movs r0, #7
	strb r0, [r5, #0xa]
_080B1E50:
	ldr r2, [r5, #0x28]
	adds r0, r2, #0
	cmp r2, #0
	bge _080B1E5A
	adds r0, #0x3f
_080B1E5A:
	asrs r0, r0, #6
	ldr r1, [r5, #0x14]
	adds r1, r1, r0
	str r1, [r5, #0x14]
	movs r0, #3
	ands r0, r3
	cmp r0, #0
	beq _080B1EA6
	rsbs r0, r2, #0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r5, #0x28]
	b _080B1EA6
_080B1E76:
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #2
	orrs r1, r0
	strb r1, [r2]
	movs r0, #1
	strb r0, [r5, #0xf]
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	bne _080B1EA2
_080B1E8C:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080B1E9A:
	adds r0, r5, #0
	bl sub_08000E14
	b _080B1F04
_080B1EA2:
	subs r0, #1
	strb r0, [r5, #0xd]
_080B1EA6:
	ldrb r0, [r5, #0xa]
	adds r6, r5, #0
	adds r6, #0x58
	cmp r0, #5
	bhi _080B1EDA
	ldr r0, [sp, #0x18]
	adds r1, r5, #0
	mov r2, r8
	bl sub_080B15EC
	ldrb r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B1ED0
	ldr r0, [r5, #0x14]
	ldr r1, _080B1ECC @ =0xFFFFD100
	adds r0, r0, r1
	b _080B1ED8
	.align 2, 0
_080B1ECC: .4byte 0xFFFFD100
_080B1ED0:
	ldr r0, [r5, #0x14]
	movs r2, #0xbc
	lsls r2, r2, #6
	adds r0, r0, r2
_080B1ED8:
	str r0, [r5, #0x14]
_080B1EDA:
	ldr r0, [r5, #0x40]
	ldr r3, [sp, #0x1c]
	subs r0, r0, r3
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x44]
	ldr r4, [sp, #0x20]
	subs r0, r0, r4
	str r0, [r5, #0x30]
	ldr r0, [r5, #0x14]
	movs r2, #0x80
	lsls r2, r2, #9
	movs r1, #0
	str r1, [sp]
	ldrb r1, [r6]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
_080B1F04:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080B1F14
sub_080B1F14: @ 0x080B1F14
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _080B1F4C
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _080B1F38
	movs r0, #1
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _080B1F48
_080B1F38:
	movs r0, #2
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080B1F48:
	movs r0, #0
	strb r0, [r5, #0xd]
_080B1F4C:
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	beq _080B1FE8
	cmp r0, #2
	bne _080B2050
	adds r4, r5, #0
	adds r4, #0x6e
	ldrb r0, [r4]
	movs r1, #9
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #0xd
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r1, r2
	cmp r0, #6
	bls _080B1F74
	movs r1, #0
_080B1F74:
	ldr r2, _080B2058 @ =0x08528714
	adds r0, r5, #0
	movs r3, #0x14
	bl sub_0806CAF8
	adds r6, r0, #0
	ldrh r0, [r4]
	cmp r0, #0x11
	bne _080B1FB6
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0x30
	ldrsh r1, [r5, r2]
	cmp r0, r1
	ble _080B1FB6
	movs r0, #0
	strb r0, [r5, #0xd]
	adds r3, r5, #0
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
_080B1FB6:
	movs r0, #0x1b
	ands r0, r6
	cmp r0, #8
	beq _080B1FD8
	adds r3, r5, #0
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
_080B1FD8:
	adds r0, r5, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B2050
	ldrb r0, [r4]
	cmp r0, #0x11
	bne _080B2050
_080B1FE8:
	adds r0, r5, #0
	bl sub_0806D044
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x4f
	ble _080B2046
	adds r4, r5, #0
	adds r4, #0x58
	ldrb r1, [r4]
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080B201E
	adds r0, r5, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _080B2030
	ldrb r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080B2040
_080B201E:
	adds r0, r5, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080B2040
_080B2030:
	adds r0, r5, #0
	bl sub_0806D044
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	cmp r0, #0x8b
	ble _080B2042
_080B2040:
	movs r1, #0
_080B2042:
	cmp r1, #0
	beq _080B2050
_080B2046:
	movs r1, #0
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
_080B2050:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B2058: .4byte 0x08528714

	thumb_func_start sub_080B205C
sub_080B205C: @ 0x080B205C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _080B209C
	cmp r0, #1
	bgt _080B2070
	cmp r0, #0
	beq _080B2076
	b _080B2142
_080B2070:
	cmp r0, #2
	beq _080B2100
	b _080B2142
_080B2076:
	adds r0, r4, #0
	bl sub_0806BC40
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #1
	strb r0, [r4, #0xb]
	str r0, [r4, #0x14]
	ldr r0, _080B2098 @ =0x0000FFEC
	strh r0, [r4, #0x20]
	subs r0, #0x10
	strh r0, [r4, #0x22]
	b _080B2142
	.align 2, 0
_080B2098: .4byte 0x0000FFEC
_080B209C:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrh r1, [r0]
	movs r0, #0x86
	lsls r0, r0, #1
	cmp r1, r0
	bne _080B20E2
	ldr r0, _080B20FC @ =sub_080B1678
	bl sub_0806DFF8
	adds r5, r0, #0
	cmp r5, #0
	beq _080B20E2
	str r4, [r5, #0x10]
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
	adds r0, #0x3c
	ldrb r0, [r0]
	lsrs r1, r0, #2
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x3c
	strb r0, [r1]
_080B20E2:
	ldr r0, [r4, #0x14]
	movs r5, #2
	ands r0, r5
	cmp r0, #0
	beq _080B2142
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	strb r5, [r4, #0xb]
	b _080B2142
	.align 2, 0
_080B20FC: .4byte sub_080B1678
_080B2100:
	ldrh r2, [r4, #0x20]
	movs r0, #0x20
	ldrsh r1, [r4, r0]
	movs r0, #0xa
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080B2112
	adds r0, r2, #1
	strh r0, [r4, #0x20]
_080B2112:
	ldrh r2, [r4, #0x22]
	movs r0, #0x22
	ldrsh r1, [r4, r0]
	movs r0, #0x10
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080B2124
	adds r0, r2, #1
	strh r0, [r4, #0x22]
_080B2124:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B2142
	movs r0, #0
	str r0, [r4, #0x14]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	bl sub_0806BC40
_080B2142:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080B2148
sub_080B2148: @ 0x080B2148
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r4, [r5, #0xb]
	cmp r4, #0
	beq _080B2158
	cmp r4, #1
	beq _080B217C
	b _080B2220
_080B2158:
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #1
	strb r0, [r5, #0xb]
	ldr r0, _080B2178 @ =0xFFD80000
	str r0, [r5, #0x4c]
	str r4, [r5, #0x48]
	movs r0, #0x6f
	bl sub_080D7910
	b _080B2220
	.align 2, 0
_080B2178: .4byte 0xFFD80000
_080B217C:
	ldrb r1, [r5, #0xd]
	adds r1, #1
	strb r1, [r5, #0xd]
	ldr r2, [r5, #0x44]
	ldr r0, [r5, #0x4c]
	adds r6, r2, r0
	movs r2, #0x90
	lsls r2, r2, #9
	adds r0, r0, r2
	str r0, [r5, #0x4c]
	ldr r2, [r5, #0x48]
	movs r3, #0xa0
	lsls r3, r3, #7
	adds r0, r2, r3
	str r0, [r5, #0x48]
	ands r1, r4
	cmp r1, #0
	bne _080B21D8
	movs r1, #0x90
	lsls r1, r1, #8
	adds r0, r2, r1
	bl sub_080009E4
	adds r4, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl sub_0802D5EC
	lsls r4, r4, #4
	ldr r1, [r5, #0x40]
	adds r1, r1, r4
	adds r4, r1, r0
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #1
	movs r3, #7
	bl sub_08045CEC
	adds r1, r0, #0
	cmp r1, #0
	beq _080B21D8
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r1, #0x4c]
	ldr r0, _080B221C @ =0xFFFFF000
	str r0, [r1, #0x54]
_080B21D8:
	ldrb r1, [r5, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080B220A
	movs r0, #0x6e
	bl sub_080D7910
	movs r0, #0x10
	bl sub_0802D5EC
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x40]
	adds r4, r1, r0
	movs r0, #4
	bl sub_0802D5EC
	lsls r0, r0, #0x10
	adds r6, r6, r0
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0x10
	movs r3, #7
	bl sub_08045CEC
_080B220A:
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B2220
	movs r0, #1
	b _080B2222
	.align 2, 0
_080B221C: .4byte 0xFFFFF000
_080B2220:
	movs r0, #0
_080B2222:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080B2228
sub_080B2228: @ 0x080B2228
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _080B224C @ =0x081E41B4
	ldr r2, _080B2250 @ =0x0820B818
	ldr r0, _080B2254 @ =0x0823D78C
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B2258
	adds r0, r4, #0
	bl sub_08000E14
	b _080B22C4
	.align 2, 0
_080B224C: .4byte 0x081E41B4
_080B2250: .4byte 0x0820B818
_080B2254: .4byte 0x0823D78C
_080B2258:
	adds r0, r4, #0
	bl sub_0806B04C
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x12
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _080B2290 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B2294
	movs r0, #3
	strb r0, [r4, #0xa]
	b _080B22C4
	.align 2, 0
_080B2290: .4byte gEwramData
_080B2294:
	ldr r1, _080B22CC @ =sub_0806E1B8
	ldr r2, _080B22D0 @ =sub_080B2370
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
_080B22C4:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B22CC: .4byte sub_0806E1B8
_080B22D0: .4byte sub_080B2370

	thumb_func_start sub_080B22D4
sub_080B22D4: @ 0x080B22D4
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #0x22
	ldrsh r3, [r4, r0]
	movs r0, #0x20
	ldrsh r2, [r4, r0]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B22F6
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080B22F6:
	lsls r1, r2, #0x10
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	lsls r1, r3, #0x10
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_0806CC20
	cmp r0, #0
	bne _080B2368
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080B2332
	cmp r0, #1
	bgt _080B2320
	cmp r0, #0
	beq _080B232A
	b _080B2354
_080B2320:
	cmp r0, #2
	beq _080B233A
	cmp r0, #3
	beq _080B234C
	b _080B2354
_080B232A:
	adds r0, r4, #0
	bl sub_080B1F14
	b _080B2354
_080B2332:
	adds r0, r4, #0
	bl sub_080B205C
	b _080B2354
_080B233A:
	adds r0, r4, #0
	bl sub_080B2148
	cmp r0, #0
	beq _080B2354
	adds r0, r4, #0
	bl sub_08000E14
	b _080B2368
_080B234C:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080B2368
_080B2354:
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080B2362
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
_080B2362:
	adds r0, r4, #0
	bl sub_0806DF20
_080B2368:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B2370
sub_080B2370: @ 0x080B2370
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080B2384
	adds r0, r4, #0
	bl sub_0806BC40
_080B2384:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080B23BE
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
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080B23BE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080B23C4
sub_080B23C4: @ 0x080B23C4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r6, [r4, #0x40]
	ldr r7, [r4, #0x44]
	ldr r0, [r4, #0x18]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r0, r6, r0
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x1c]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r0, r7, r0
	str r0, [r4, #0x44]
	movs r5, #3
_080B23E6:
	adds r0, r4, #0
	bl sub_0803AC40
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x1c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	subs r5, #1
	cmp r5, #0
	bne _080B23E6
	str r6, [r4, #0x40]
	str r7, [r4, #0x44]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080B240C
sub_080B240C: @ 0x080B240C
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

	thumb_func_start sub_080B243C
sub_080B243C: @ 0x080B243C
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r0, #0
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
	ldrb r1, [r4, #0xa]
	cmp r1, #0
	beq _080B248E
	movs r2, #0x34
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _080B2476
	cmp r1, #3
	beq _080B248E
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r4, #0
	adds r1, #0x46
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #1
	bl sub_08045A98
	movs r0, #3
	strb r0, [r4, #0xa]
_080B2476:
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _080B248E
	ldr r0, _080B24A0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080B24A4 @ =0x000004BE
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _080B248E
	b _080B2642
_080B248E:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080B2558
	cmp r0, #1
	bgt _080B24A8
	cmp r0, #0
	beq _080B24B6
	b _080B2628
	.align 2, 0
_080B24A0: .4byte gEwramData
_080B24A4: .4byte 0x000004BE
_080B24A8:
	cmp r0, #2
	bne _080B24AE
	b _080B25EC
_080B24AE:
	cmp r0, #3
	bne _080B24B4
	b _080B2620
_080B24B4:
	b _080B2628
_080B24B6:
	ldr r1, _080B25B8 @ =0x081E41BC
	ldr r2, _080B25BC @ =0x0820B83C
	ldr r0, _080B25C0 @ =0x0823EC00
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B24CE
	b _080B2634
_080B24CE:
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x13
	strb r0, [r1]
	ldr r2, _080B25C4 @ =sub_080B2F64
	ldr r3, _080B25C8 @ =sub_080B2F5C
	adds r0, r4, #0
	movs r1, #8
	bl sub_0804277C
	ldr r1, _080B25CC @ =0x3030E8E8
	adds r0, r4, #0
	bl sub_08042884
	ldr r1, _080B25D0 @ =0x1010F8F8
	adds r0, r4, #0
	bl sub_080428F0
	adds r1, r4, #0
	adds r1, #0x72
	ldrb r0, [r1]
	movs r5, #2
	orrs r0, r5
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0806D044
	lsls r0, r0, #0x10
	asrs r0, r0, #6
	ldr r1, _080B25D4 @ =0xFFFFE000
	subs r2, r1, r0
	str r2, [r4, #0x18]
	ldr r0, [r4, #0x44]
	ldr r1, _080B25D8 @ =0xFFC60000
	adds r0, r0, r1
	str r0, [r4, #0x44]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B2534
	rsbs r0, r2, #0
	str r0, [r4, #0x18]
_080B2534:
	ldr r0, _080B25DC @ =0xFFFD8000
	str r0, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	adds r2, r4, #0
	adds r2, #0x3c
	ldrb r0, [r2]
	lsrs r1, r0, #2
	adds r0, r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x59
	ldrb r0, [r1]
	orrs r0, r5
	strb r0, [r1]
	movs r0, #1
	strb r0, [r4, #0xa]
_080B2558:
	ldrb r1, [r4, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080B257E
	ldr r2, _080B25E0 @ =sub_080B2FC4
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r1, r0, #0
	cmp r1, #0
	beq _080B257E
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x40]
	ldr r0, [r4, #0x44]
	ldr r2, _080B25E4 @ =0xFFF80000
	adds r0, r0, r2
	str r0, [r1, #0x44]
_080B257E:
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	ldr r1, [r4, #0x18]
	ldr r2, _080B25E8 @ =0x08528738
	adds r0, r4, #0
	movs r3, #2
	bl sub_0806CAF8
	adds r2, r0, #0
	movs r0, #3
	ands r0, r2
	cmp r0, #0
	beq _080B25A6
	ldr r0, [r4, #0x18]
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r4, #0x18]
_080B25A6:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _080B2628
	movs r0, #2
	strb r0, [r4, #0xa]
	movs r0, #0x10
	strb r0, [r4, #0xd]
	b _080B2628
	.align 2, 0
_080B25B8: .4byte 0x081E41BC
_080B25BC: .4byte 0x0820B83C
_080B25C0: .4byte 0x0823EC00
_080B25C4: .4byte sub_080B2F64
_080B25C8: .4byte sub_080B2F5C
_080B25CC: .4byte 0x3030E8E8
_080B25D0: .4byte 0x1010F8F8
_080B25D4: .4byte 0xFFFFE000
_080B25D8: .4byte 0xFFC60000
_080B25DC: .4byte 0xFFFD8000
_080B25E0: .4byte sub_080B2FC4
_080B25E4: .4byte 0xFFF80000
_080B25E8: .4byte 0x08528738
_080B25EC:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _080B25F8
	subs r0, #1
	strb r0, [r4, #0xd]
	b _080B2628
_080B25F8:
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r4, #0
	adds r1, #0x46
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	bl sub_08045A98
	movs r0, #3
	strb r0, [r4, #0xa]
	b _080B2628
_080B2620:
	movs r0, #0x76
	bl sub_080D7910
	b _080B2634
_080B2628:
	adds r0, r4, #0
	movs r1, #3
	bl sub_0806D128
	cmp r0, #0
	beq _080B263C
_080B2634:
	adds r0, r4, #0
	bl sub_08000E14
	b _080B2642
_080B263C:
	adds r0, r4, #0
	bl sub_0803F17C
_080B2642:
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B264C
sub_080B264C: @ 0x080B264C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080B26F4
	cmp r0, #1
	bgt _080B2662
	cmp r0, #0
	beq _080B2668
	b _080B276C
_080B2662:
	cmp r0, #2
	beq _080B2754
	b _080B276C
_080B2668:
	ldr r1, _080B2688 @ =0x081E41BC
	ldr r2, _080B268C @ =0x0820B83C
	ldr r0, _080B2690 @ =0x0823FFD8
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #1
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B2694
	adds r0, r4, #0
	bl sub_08000E14
	b _080B2790
	.align 2, 0
_080B2688: .4byte 0x081E41BC
_080B268C: .4byte 0x0820B83C
_080B2690: .4byte 0x0823FFD8
_080B2694:
	bl sub_08000A90
	adds r1, r0, #0
	movs r0, #3
	ands r1, r0
	cmp r1, #2
	ble _080B26A4
	movs r1, #2
_080B26A4:
	adds r1, #4
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	movs r0, #0x80
	lsls r0, r0, #9
	bl sub_0802D5EC
	ldr r1, _080B26E8 @ =0xFFFFC000
	adds r2, r0, r1
	str r2, [r4, #0x48]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B26D6
	rsbs r0, r2, #0
	str r0, [r4, #0x48]
_080B26D6:
	bl sub_08000A90
	ldr r1, _080B26EC @ =0x00001FFF
	ands r1, r0
	lsls r1, r1, #4
	ldr r0, _080B26F0 @ =0xFFFF0000
	subs r0, r0, r1
	b _080B2728
	.align 2, 0
_080B26E8: .4byte 0xFFFFC000
_080B26EC: .4byte 0x00001FFF
_080B26F0: .4byte 0xFFFF0000
_080B26F4:
	adds r0, r4, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r1, _080B2734 @ =gEwramData
	ldr r2, [r1]
	ldr r1, _080B2738 @ =0x0000A094
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
	beq _080B273C
	ldr r0, [r4, #0x4c]
	asrs r0, r0, #1
	rsbs r0, r0, #0
_080B2728:
	str r0, [r4, #0x4c]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _080B276C
	.align 2, 0
_080B2734: .4byte gEwramData
_080B2738: .4byte 0x0000A094
_080B273C:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	movs r0, #0x80
	lsls r0, r0, #7
	adds r1, r1, r0
	b _080B276A
_080B2754:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r1, r3
_080B276A:
	str r1, [r4, #0x4c]
_080B276C:
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
	bne _080B2790
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080B2790:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B2798
sub_080B2798: @ 0x080B2798
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	adds r5, r0, #0
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
	ldrb r1, [r5, #0xa]
	cmp r1, #0
	beq _080B27D8
	movs r2, #0x34
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bne _080B27C0
	cmp r1, #2
	beq _080B27D8
	movs r0, #2
	strb r0, [r5, #0xa]
_080B27C0:
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _080B27D8
	ldr r0, _080B27E8 @ =gEwramData
	ldr r0, [r0]
	ldr r7, _080B27EC @ =0x000004BE
	adds r0, r0, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080B27D8
	b _080B296A
_080B27D8:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080B2894
	cmp r0, #1
	bgt _080B27F0
	cmp r0, #0
	beq _080B27F6
	b _080B2958
	.align 2, 0
_080B27E8: .4byte gEwramData
_080B27EC: .4byte 0x000004BE
_080B27F0:
	cmp r0, #2
	beq _080B28D4
	b _080B2958
_080B27F6:
	ldr r1, _080B28AC @ =0x081E41BC
	ldr r2, _080B28B0 @ =0x0820B83C
	ldr r0, _080B28B4 @ =0x0823FFD8
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #1
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B280E
	b _080B2946
_080B280E:
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x13
	strb r0, [r1]
	ldr r2, _080B28B8 @ =sub_080B2F94
	ldr r3, _080B28BC @ =sub_080B2F5C
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_0804277C
	ldr r4, _080B28C0 @ =0x2020F0F0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08042884
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080428F0
	adds r0, r5, #0
	bl sub_0806D044
	lsls r0, r0, #0x10
	asrs r0, r0, #6
	ldr r1, _080B28C4 @ =0xFFFFE000
	subs r2, r1, r0
	str r2, [r5, #0x18]
	ldr r0, [r5, #0x44]
	ldr r7, _080B28C8 @ =0xFFC60000
	adds r0, r0, r7
	str r0, [r5, #0x44]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B2870
	rsbs r0, r2, #0
	str r0, [r5, #0x18]
_080B2870:
	ldr r0, _080B28CC @ =0xFFFE0000
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	adds r2, r5, #0
	adds r2, #0x3c
	ldrb r0, [r2]
	lsrs r1, r0, #2
	adds r0, r0, r1
	strb r0, [r2]
	adds r2, #0x1d
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	strb r0, [r5, #0xa]
_080B2894:
	ldr r1, [r5, #0x18]
	ldr r2, _080B28D0 @ =0x08528738
	adds r0, r5, #0
	movs r3, #2
	bl sub_0806CAF8
	cmp r0, #0
	beq _080B2958
	movs r0, #2
	strb r0, [r5, #0xa]
	b _080B2958
	.align 2, 0
_080B28AC: .4byte 0x081E41BC
_080B28B0: .4byte 0x0820B83C
_080B28B4: .4byte 0x0823FFD8
_080B28B8: .4byte sub_080B2F94
_080B28BC: .4byte sub_080B2F5C
_080B28C0: .4byte 0x2020F0F0
_080B28C4: .4byte 0xFFFFE000
_080B28C8: .4byte 0xFFC60000
_080B28CC: .4byte 0xFFFE0000
_080B28D0: .4byte 0x08528738
_080B28D4:
	movs r0, #0x80
	bl sub_080D7910
	movs r6, #0
	movs r0, #0x80
	lsls r0, r0, #0xd
	mov r8, r0
	b _080B2932
_080B28E4:
	mov r0, r8
	bl sub_0802D5EC
	ldr r1, [r5, #0x40]
	adds r1, r1, r0
	str r1, [r4, #0x40]
	mov r0, r8
	bl sub_0802D5EC
	ldr r1, [r5, #0x44]
	adds r1, r1, r0
	ldr r2, _080B2950 @ =0xFFF80000
	adds r1, r1, r2
	str r1, [r4, #0x44]
	bl sub_08000A90
	movs r1, #1
	ands r0, r1
	adds r3, r4, #0
	adds r3, #0x58
	lsls r0, r0, #6
	ldrb r1, [r3]
	movs r7, #0x41
	rsbs r7, r7, #0
	adds r2, r7, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x12
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r6, #1
_080B2932:
	cmp r6, #7
	bgt _080B2946
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _080B2954 @ =sub_080B264C
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	bne _080B28E4
_080B2946:
	adds r0, r5, #0
	bl sub_08000E14
	b _080B296A
	.align 2, 0
_080B2950: .4byte 0xFFF80000
_080B2954: .4byte sub_080B264C
_080B2958:
	adds r0, r5, #0
	movs r1, #3
	bl sub_0806D128
	cmp r0, #0
	beq _080B296A
	adds r0, r5, #0
	bl sub_08000E14
_080B296A:
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B2978
sub_080B2978: @ 0x080B2978
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0xb]
	cmp r2, #0
	bne _080B2A74
	adds r0, #0x6e
	ldrh r1, [r0]
	adds r5, r0, #0
	cmp r1, #9
	bne _080B29C2
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080B29C2
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0x30
	ldrsh r1, [r4, r3]
	cmp r0, r1
	ble _080B29C2
	strb r2, [r4, #0xd]
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
_080B29C2:
	ldrb r0, [r5]
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #0xe
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r1, r2
	cmp r0, #3
	bls _080B29DC
	movs r1, #0
_080B29DC:
	ldr r2, _080B2A7C @ =0x0852872C
	adds r0, r4, #0
	movs r3, #0x14
	bl sub_0806CAF8
	adds r1, r0, #0
	movs r3, #0x30
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bne _080B2A12
	movs r0, #0x1b
	ands r0, r1
	cmp r0, #8
	beq _080B2A12
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
_080B2A12:
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B2A74
	ldrb r0, [r5]
	cmp r0, #9
	bne _080B2A74
	adds r5, r4, #0
	adds r5, #0x58
	ldrb r1, [r5]
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080B2A48
	adds r0, r4, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _080B2A54
	ldrb r1, [r5]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080B2A64
_080B2A48:
	adds r0, r4, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080B2A64
_080B2A54:
	adds r0, r4, #0
	bl sub_0806D044
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	cmp r0, #0x63
	ble _080B2A66
_080B2A64:
	movs r1, #0
_080B2A66:
	cmp r1, #0
	beq _080B2A74
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080B2A74:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B2A7C: .4byte 0x0852872C

	thumb_func_start sub_080B2A80
sub_080B2A80: @ 0x080B2A80
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	beq _080B2AB2
	cmp r0, #1
	bgt _080B2A94
	cmp r0, #0
	beq _080B2AA0
	b _080B2BD0
_080B2A94:
	cmp r0, #2
	beq _080B2B7A
	cmp r0, #3
	bne _080B2A9E
	b _080B2BBC
_080B2A9E:
	b _080B2BD0
_080B2AA0:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #1
	strb r0, [r5, #0xb]
	b _080B2BD0
_080B2AB2:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #7
	bne _080B2B06
	movs r0, #0x88
	bl sub_080D7910
	ldr r0, _080B2B70 @ =sub_080B243C
	bl sub_0806DFF8
	adds r4, r0, #0
	cmp r4, #0
	beq _080B2B06
	ldrb r0, [r5, #0x10]
	strb r0, [r4, #0x10]
	str r5, [r4, #0x14]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
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
	ldrh r0, [r5, #0x34]
	strh r0, [r4, #0x34]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
_080B2B06:
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B2BD0
	adds r4, r5, #0
	adds r4, #0x58
	ldrb r1, [r4]
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080B2B3A
	adds r0, r5, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _080B2B46
	ldrb r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080B2B56
_080B2B3A:
	adds r0, r5, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080B2B56
_080B2B46:
	adds r0, r5, #0
	bl sub_0806D044
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	cmp r0, #0x63
	ble _080B2B58
_080B2B56:
	movs r1, #0
_080B2B58:
	cmp r1, #0
	beq _080B2B74
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #2
	strb r0, [r5, #0xb]
	b _080B2BD0
	.align 2, 0
_080B2B70: .4byte sub_080B243C
_080B2B74:
	movs r0, #3
	strb r0, [r5, #0xb]
	b _080B2BD0
_080B2B7A:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #0xe
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r1, r2
	cmp r0, #3
	bls _080B2B98
	movs r1, #0
_080B2B98:
	rsbs r1, r1, #0
	ldr r2, _080B2BB8 @ =0x0852872C
	adds r0, r5, #0
	movs r3, #0x14
	bl sub_0806CAF8
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B2BD0
	movs r0, #0
	strb r0, [r5, #0xb]
	b _080B2BD0
	.align 2, 0
_080B2BB8: .4byte 0x0852872C
_080B2BBC:
	movs r0, #0
	strb r0, [r5, #0xa]
	strb r0, [r5, #0xc]
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080B2BD0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B2BD8
sub_080B2BD8: @ 0x080B2BD8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	beq _080B2C04
	cmp r0, #1
	bgt _080B2BEC
	cmp r0, #0
	beq _080B2BF2
	b _080B2CD2
_080B2BEC:
	cmp r0, #2
	beq _080B2CBE
	b _080B2CD2
_080B2BF2:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #1
	strb r0, [r5, #0xb]
	b _080B2CD2
_080B2C04:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #7
	bne _080B2C58
	movs r0, #0x88
	bl sub_080D7910
	ldr r0, _080B2CB4 @ =sub_080B2798
	bl sub_0806DFF8
	adds r4, r0, #0
	cmp r4, #0
	beq _080B2C58
	ldrb r0, [r5, #0x10]
	strb r0, [r4, #0x10]
	str r5, [r4, #0x14]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
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
	ldrh r0, [r5, #0x34]
	strh r0, [r4, #0x34]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
_080B2C58:
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B2CD2
	adds r4, r5, #0
	adds r4, #0x58
	ldrb r1, [r4]
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080B2C8C
	adds r0, r5, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _080B2C98
	ldrb r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080B2CA8
_080B2C8C:
	adds r0, r5, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080B2CA8
_080B2C98:
	adds r0, r5, #0
	bl sub_0806D044
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	cmp r0, #0x63
	ble _080B2CAA
_080B2CA8:
	movs r1, #0
_080B2CAA:
	cmp r1, #0
	beq _080B2CB8
	movs r0, #0
	strb r0, [r5, #0xb]
	b _080B2CD2
	.align 2, 0
_080B2CB4: .4byte sub_080B2798
_080B2CB8:
	movs r0, #2
	strb r0, [r5, #0xb]
	b _080B2CD2
_080B2CBE:
	movs r0, #0
	strb r0, [r5, #0xa]
	strb r0, [r5, #0xc]
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080B2CD2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080B2CD8
sub_080B2CD8: @ 0x080B2CD8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r4, [r5, #0xb]
	cmp r4, #0
	beq _080B2CE8
	cmp r4, #1
	beq _080B2D0C
	b _080B2DB0
_080B2CE8:
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #1
	strb r0, [r5, #0xb]
	ldr r0, _080B2D08 @ =0xFFD80000
	str r0, [r5, #0x4c]
	str r4, [r5, #0x48]
	movs r0, #0x6f
	bl sub_080D7910
	b _080B2DB0
	.align 2, 0
_080B2D08: .4byte 0xFFD80000
_080B2D0C:
	ldrb r1, [r5, #0xd]
	adds r1, #1
	strb r1, [r5, #0xd]
	ldr r2, [r5, #0x44]
	ldr r0, [r5, #0x4c]
	adds r6, r2, r0
	movs r7, #0x80
	lsls r7, r7, #8
	adds r0, r0, r7
	str r0, [r5, #0x4c]
	ldr r2, [r5, #0x48]
	movs r3, #0xa0
	lsls r3, r3, #7
	adds r0, r2, r3
	str r0, [r5, #0x48]
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	bne _080B2D66
	movs r1, #0x90
	lsls r1, r1, #8
	adds r0, r2, r1
	bl sub_080009E4
	adds r4, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl sub_0802D5EC
	lsls r4, r4, #4
	ldr r1, [r5, #0x40]
	adds r1, r1, r4
	adds r4, r1, r0
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0xf
	movs r3, #7
	bl sub_08045CEC
	adds r1, r0, #0
	cmp r1, #0
	beq _080B2D66
	str r7, [r1, #0x4c]
	ldr r0, _080B2DAC @ =0xFFFFE000
	str r0, [r1, #0x54]
_080B2D66:
	ldrb r1, [r5, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080B2D98
	movs r0, #0x72
	bl sub_080D7910
	movs r0, #0x10
	bl sub_0802D5EC
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x40]
	adds r4, r1, r0
	movs r0, #4
	bl sub_0802D5EC
	lsls r0, r0, #0x10
	adds r6, r6, r0
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0x10
	movs r3, #6
	bl sub_08045CEC
_080B2D98:
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B2DB0
	movs r0, #1
	b _080B2DB2
	.align 2, 0
_080B2DAC: .4byte 0xFFFFE000
_080B2DB0:
	movs r0, #0
_080B2DB2:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080B2DB8
sub_080B2DB8: @ 0x080B2DB8
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _080B2DDC @ =0x081E41BC
	ldr r2, _080B2DE0 @ =0x0820B83C
	ldr r0, _080B2DE4 @ =0x0823EC00
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B2DE8
	adds r0, r4, #0
	bl sub_08000E14
	b _080B2E56
	.align 2, 0
_080B2DDC: .4byte 0x081E41BC
_080B2DE0: .4byte 0x0820B83C
_080B2DE4: .4byte 0x0823EC00
_080B2DE8:
	adds r0, r4, #0
	bl sub_0806B04C
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x13
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _080B2E20 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B2E24
	movs r0, #3
	strb r0, [r4, #0xa]
	b _080B2E56
	.align 2, 0
_080B2E20: .4byte gEwramData
_080B2E24:
	ldr r2, _080B2E60 @ =sub_0806E1B8
	ldr r3, _080B2E64 @ =sub_080B2F10
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
_080B2E56:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B2E60: .4byte sub_0806E1B8
_080B2E64: .4byte sub_080B2F10

	thumb_func_start sub_080B2E68
sub_080B2E68: @ 0x080B2E68
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _080B2E8C @ =0x081E41BC
	ldr r2, _080B2E90 @ =0x0820B83C
	ldr r0, _080B2E94 @ =0x0823FFD8
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #1
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B2E98
	adds r0, r4, #0
	bl sub_08000E14
	b _080B2EFE
	.align 2, 0
_080B2E8C: .4byte 0x081E41BC
_080B2E90: .4byte 0x0820B83C
_080B2E94: .4byte 0x0823FFD8
_080B2E98:
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x13
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0806B04C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _080B2ED4 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _080B2ED8
	movs r0, #3
	strb r0, [r4, #0xa]
	b _080B2EFE
	.align 2, 0
_080B2ED4: .4byte gEwramData
_080B2ED8:
	ldr r2, _080B2F08 @ =sub_0806E1B8
	ldr r3, _080B2F0C @ =sub_080B2F10
	adds r0, r4, #0
	movs r1, #8
	bl sub_080427B8
	adds r0, r4, #0
	bl sub_0806B1FC
	adds r0, r4, #0
	bl sub_0806AF98
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	strb r5, [r4, #0xa]
_080B2EFE:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B2F08: .4byte sub_0806E1B8
_080B2F0C: .4byte sub_080B2F10

	thumb_func_start sub_080B2F10
sub_080B2F10: @ 0x080B2F10
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	bl sub_0806BC40
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080B2F56
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
	movs r1, #0
	movs r0, #2
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xc]
	strb r1, [r6, #0xb]
_080B2F56:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080B2F5C
sub_080B2F5C: @ 0x080B2F5C
	movs r1, #0
	strh r1, [r0, #0x34]
	bx lr
	.align 2, 0

	thumb_func_start sub_080B2F64
sub_080B2F64: @ 0x080B2F64
	push {lr}
	sub sp, #0x10
	mov r2, sp
	movs r3, #0
	movs r1, #2
	strh r1, [r2, #2]
	mov r1, sp
	strh r3, [r1, #4]
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	strh r1, [r2]
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

	thumb_func_start sub_080B2F94
sub_080B2F94: @ 0x080B2F94
	push {lr}
	sub sp, #0x10
	mov r1, sp
	movs r2, #0
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	mov r2, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	strh r1, [r2]
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
	.align 2, 0

	thumb_func_start sub_080B2FC4
sub_080B2FC4: @ 0x080B2FC4
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080B3022
	ldr r1, _080B2FF0 @ =0x081E41BC
	ldr r2, _080B2FF4 @ =0x0820B83C
	ldr r0, _080B2FF8 @ =0x0823EC00
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B2FFC
	adds r0, r4, #0
	bl sub_08000E14
	b _080B3038
	.align 2, 0
_080B2FF0: .4byte 0x081E41BC
_080B2FF4: .4byte 0x0820B83C
_080B2FF8: .4byte 0x0823EC00
_080B2FFC:
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x12
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
_080B3022:
	adds r0, r4, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _080B3038
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080B3038:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B3040
sub_080B3040: @ 0x080B3040
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806CC20
	cmp r0, #0
	bne _080B309C
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080B306E
	cmp r0, #1
	bgt _080B305C
	cmp r0, #0
	beq _080B3066
	b _080B3090
_080B305C:
	cmp r0, #2
	beq _080B3076
	cmp r0, #3
	beq _080B3088
	b _080B3090
_080B3066:
	adds r0, r4, #0
	bl sub_080B2978
	b _080B3090
_080B306E:
	adds r0, r4, #0
	bl sub_080B2A80
	b _080B3090
_080B3076:
	adds r0, r4, #0
	bl sub_080B2CD8
	cmp r0, #0
	beq _080B3090
	adds r0, r4, #0
	bl sub_08000E14
	b _080B309C
_080B3088:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080B309C
_080B3090:
	adds r0, r4, #0
	bl sub_0806E314
	adds r0, r4, #0
	bl sub_0806DF20
_080B309C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B30A4
sub_080B30A4: @ 0x080B30A4
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	bl sub_0806CC20
	cmp r0, #0
	bne _080B310A
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080B30D4
	cmp r0, #1
	bgt _080B30C2
	cmp r0, #0
	beq _080B30CC
	b _080B30F6
_080B30C2:
	cmp r0, #2
	beq _080B30DC
	cmp r0, #3
	beq _080B30EE
	b _080B30F6
_080B30CC:
	adds r0, r4, #0
	bl sub_080B2978
	b _080B30F6
_080B30D4:
	adds r0, r4, #0
	bl sub_080B2BD8
	b _080B30F6
_080B30DC:
	adds r0, r4, #0
	bl sub_080B2CD8
	cmp r0, #0
	beq _080B30F6
	adds r0, r4, #0
	bl sub_08000E14
	b _080B310A
_080B30EE:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080B310A
_080B30F6:
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080B3104
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
_080B3104:
	adds r0, r4, #0
	bl sub_0806DF20
_080B310A:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B3114
sub_080B3114: @ 0x080B3114
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080B3126
	cmp r0, #1
	beq _080B316C
	b _080B31D0
_080B3126:
	ldr r0, _080B314C @ =0x081193DC
	adds r3, r0, #0
	adds r3, #0x10
	ldr r1, [r0, #0x10]
	ldr r2, [r3, #4]
	ldr r0, [r3, #8]
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B3150
	adds r0, r4, #0
	bl sub_08000E14
	b _080B31E8
	.align 2, 0
_080B314C: .4byte 0x081193DC
_080B3150:
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x1b
	strb r0, [r1]
	subs r1, #9
	movs r0, #9
	strb r0, [r1]
	movs r0, #0x80
	strb r0, [r4, #0xd]
	ldr r0, _080B31B8 @ =0xFFFFC000
	str r0, [r4, #0x4c]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_080B316C:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D3D8
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _080B31BC @ =gEwramData
	ldr r2, [r1]
	ldr r3, _080B31C0 @ =0x0000A094
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
	bl sub_08001F3C
	cmp r0, #0
	beq _080B31C4
	ldrb r1, [r4, #0xd]
	adds r0, r1, #0
	cmp r0, #0
	beq _080B31C4
	cmp r0, #0x40
	bne _080B31B2
	movs r0, #1
	strb r0, [r4, #0xf]
_080B31B2:
	subs r0, r1, #1
	strb r0, [r4, #0xd]
	b _080B31D0
	.align 2, 0
_080B31B8: .4byte 0xFFFFC000
_080B31BC: .4byte gEwramData
_080B31C0: .4byte 0x0000A094
_080B31C4:
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080B31D0:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806D128
	cmp r0, #0
	beq _080B31E8
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080B31E8:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B31F0
sub_080B31F0: @ 0x080B31F0
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080B3260
	cmp r0, #1
	bgt _080B3206
	cmp r0, #0
	beq _080B320C
	b _080B32EC
_080B3206:
	cmp r0, #2
	beq _080B3280
	b _080B32EC
_080B320C:
	ldr r0, _080B3230 @ =0x081193DC
	adds r3, r0, #0
	adds r3, #0x10
	ldr r1, [r0, #0x10]
	ldr r2, [r3, #4]
	ldr r0, [r3, #8]
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B3234
	adds r0, r4, #0
	bl sub_08000E14
	b _080B32EC
	.align 2, 0
_080B3230: .4byte 0x081193DC
_080B3234:
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x30
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #9
	strb r0, [r1]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_080B3260:
	adds r0, r4, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _080B32EC
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x20
	strb r0, [r4, #0xd]
	movs r0, #2
	strb r0, [r4, #0xa]
	b _080B32EC
_080B3280:
	ldrb r1, [r4, #0xd]
	cmp r1, #0
	beq _080B32E0
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080B32D4
	ldr r2, _080B32DC @ =sub_080B3114
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r5, r0, #0
	cmp r5, #0
	beq _080B32D4
	movs r0, #0x10
	bl sub_0802D5EC
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r1, [r1]
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x42
	strh r1, [r0]
	movs r0, #8
	bl sub_0802D5EC
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	adds r1, r1, r0
	subs r1, #0x10
	adds r0, r5, #0
	adds r0, #0x46
	strh r1, [r0]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_080B32D4:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	b _080B32EC
	.align 2, 0
_080B32DC: .4byte sub_080B3114
_080B32E0:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080B32EC:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080B32F4
sub_080B32F4: @ 0x080B32F4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _080B3306
	cmp r0, #1
	beq _080B339C
	b _080B33BE
_080B3306:
	ldrb r0, [r6, #0xb]
	lsls r0, r0, #4
	ldr r1, _080B332C @ =0x081193DC
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r0, #4]
	ldr r0, [r0, #8]
	str r0, [sp]
	adds r0, r6, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B3330
	adds r0, r6, #0
	bl sub_08000E14
	b _080B33BE
	.align 2, 0
_080B332C: .4byte 0x081193DC
_080B3330:
	ldrb r0, [r6, #0xb]
	cmp r0, #0
	bne _080B333E
	adds r1, r6, #0
	adds r1, #0x65
	movs r0, #0x14
	b _080B3344
_080B333E:
	adds r1, r6, #0
	adds r1, #0x65
	movs r0, #0x1a
_080B3344:
	strb r0, [r1]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #9
	strb r0, [r1]
	adds r2, r6, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	subs r0, #0x10
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	bl sub_08000A90
	movs r5, #1
	ands r0, r5
	adds r4, r6, #0
	adds r4, #0x58
	lsls r0, r0, #6
	ldrb r2, [r4]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	bl sub_08000A90
	ands r0, r5
	lsls r0, r0, #7
	ldrb r2, [r4]
	movs r1, #0x7f
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	bl sub_08000A90
	movs r1, #0xf
	ands r0, r1
	adds r0, #0x10
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
_080B339C:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r6, #0
	bl sub_0806D3D8
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _080B33B2
	subs r0, #1
	strb r0, [r6, #0xd]
	b _080B33BE
_080B33B2:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080B33BE:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B33C8
sub_080B33C8: @ 0x080B33C8
	push {r4, r5, r6, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r5, [r4, #0x14]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080B33DC
	cmp r0, #1
	beq _080B34B2
	b _080B34D2
_080B33DC:
	ldrb r0, [r5, #0x12]
	lsls r0, r0, #4
	ldr r1, _080B3404 @ =0x081193DC
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r0, #4]
	ldr r0, [r0, #8]
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B3408
	adds r0, r4, #0
	bl sub_08000E14
	b _080B34F6
	.align 2, 0
_080B3404: .4byte 0x081193DC
_080B3408:
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #9
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	subs r0, #0x10
	ands r0, r1
	movs r6, #2
	orrs r0, r6
	strb r0, [r2]
	ldrb r0, [r5, #0x12]
	cmp r0, #0
	beq _080B347E
	ldr r2, _080B3500 @ =sub_080B31F0
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	mov ip, r0
	cmp r0, #0
	beq _080B347E
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	mov r1, ip
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r0, #0x10
	adds r1, #4
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	mov r3, ip
	adds r3, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	mov r1, ip
	adds r1, #0x59
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
_080B347E:
	ldr r2, _080B3504 @ =sub_080B3EB0
	adds r0, r4, #0
	movs r1, #8
	movs r3, #0
	bl sub_0804277C
	ldr r1, _080B3508 @ =0x1032F8CE
	adds r0, r4, #0
	bl sub_08042884
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x6e
	bl sub_080D7910
	movs r0, #8
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_080B34B2:
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B34D2
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #4
	bne _080B34D2
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
_080B34D2:
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
	adds r0, r4, #0
	bl sub_0803F17C
	cmp r0, #3
	beq _080B34EA
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	bne _080B34F6
_080B34EA:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080B34F6:
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B3500: .4byte sub_080B31F0
_080B3504: .4byte sub_080B3EB0
_080B3508: .4byte 0x1032F8CE

	thumb_func_start sub_080B350C
sub_080B350C: @ 0x080B350C
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r4, [r5, #0x14]
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _080B3520
	cmp r0, #1
	beq _080B35B4
	b _080B3634
_080B3520:
	ldrb r0, [r4, #0x12]
	lsls r0, r0, #4
	ldr r1, _080B3548 @ =0x081193DC
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r0, #4]
	ldr r0, [r0, #8]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B354C
	adds r0, r5, #0
	bl sub_08000E14
	b _080B367C
	.align 2, 0
_080B3548: .4byte 0x081193DC
_080B354C:
	adds r0, r5, #0
	movs r1, #5
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #9
	strb r0, [r1]
	movs r2, #8
	rsbs r2, r2, #0
	movs r3, #0xc
	rsbs r3, r3, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806E350
	ldr r2, _080B3684 @ =0xFFFE0000
	str r2, [r5, #0x48]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B3586
	rsbs r0, r2, #0
	str r0, [r5, #0x48]
_080B3586:
	movs r0, #0x7a
	bl sub_080D7910
	movs r0, #1
	strh r0, [r5, #0x34]
	ldr r2, _080B3688 @ =sub_080B3EB0
	ldr r3, _080B368C @ =sub_080B3EE0
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_0804277C
	ldr r4, _080B3690 @ =0x0808FCFC
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08042884
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080428F0
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
_080B35B4:
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080B362A
	ldr r2, _080B3694 @ =sub_080B32F4
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	beq _080B362A
	movs r0, #4
	bl sub_0802D5EC
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r1, [r1]
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x42
	strh r1, [r0]
	movs r0, #8
	bl sub_0802D5EC
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x46
	strh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	bl sub_0802D5EC
	ldr r1, [r5, #0x48]
	adds r1, r1, r0
	rsbs r0, r1, #0
	cmp r0, #0
	bge _080B360E
	adds r0, #3
_080B360E:
	asrs r0, r0, #2
	str r0, [r4, #0x48]
	ldr r0, _080B3698 @ =0xFFFFF000
	str r0, [r4, #0x4c]
	ldr r0, _080B369C @ =0xFFFFFF00
	str r0, [r4, #0x50]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r5, #0x12]
	strb r0, [r4, #0xb]
_080B362A:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r5, #0
	bl sub_0806D3D8
_080B3634:
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
	adds r0, r5, #0
	bl sub_0803F17C
	movs r1, #0x34
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _080B3664
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	adds r2, r5, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	bl sub_0806D578
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080B3664:
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806D128
	cmp r0, #0
	beq _080B367C
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080B367C:
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B3684: .4byte 0xFFFE0000
_080B3688: .4byte sub_080B3EB0
_080B368C: .4byte sub_080B3EE0
_080B3690: .4byte 0x0808FCFC
_080B3694: .4byte sub_080B32F4
_080B3698: .4byte 0xFFFFF000
_080B369C: .4byte 0xFFFFFF00

	thumb_func_start sub_080B36A0
sub_080B36A0: @ 0x080B36A0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldrb r0, [r6, #0xb]
	cmp r0, #6
	bls _080B36B2
	b _080B3946
_080B36B2:
	lsls r0, r0, #2
	ldr r1, _080B36BC @ =_080B36C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B36BC: .4byte _080B36C0
_080B36C0: @ jump table
	.4byte _080B36DC @ case 0
	.4byte _080B36EE @ case 1
	.4byte _080B3720 @ case 2
	.4byte _080B3858 @ case 3
	.4byte _080B38A8 @ case 4
	.4byte _080B38F4 @ case 5
	.4byte _080B3932 @ case 6
_080B36DC:
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #1
	strb r0, [r6, #0xb]
	b _080B3946
_080B36EE:
	adds r0, r6, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080B36FE
	b _080B3946
_080B36FE:
	adds r0, r6, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r1, [r6, #0x11]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080B371A
	movs r0, #2
	strb r0, [r6, #0xb]
	b _080B3946
_080B371A:
	movs r0, #3
	strb r0, [r6, #0xb]
	b _080B3946
_080B3720:
	adds r0, r6, #0
	adds r0, #0x6e
	ldrh r1, [r0]
	mov r8, r0
	cmp r1, #2
	bne _080B379C
	ldr r2, _080B3840 @ =sub_080B33C8
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r5, r0, #0
	cmp r5, #0
	beq _080B379C
	ldr r7, _080B3844 @ =0x0000FFFC
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
	beq _080B3764
	movs r7, #4
_080B3764:
	adds r1, r6, #0
	adds r1, #0x42
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0xa
	adds r1, #4
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
	str r6, [r5, #0x14]
_080B379C:
	mov r0, r8
	ldrh r1, [r0]
	ldr r0, _080B3848 @ =0x00002802
	movs r2, #0x6c
	adds r2, r2, r6
	mov sb, r2
	cmp r1, r0
	bne _080B3832
	movs r7, #0xc
	rsbs r7, r7, #0
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B37C0
	movs r7, #0xc
_080B37C0:
	lsls r4, r7, #1
	movs r0, #2
	mov r8, r0
_080B37C6:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _080B384C @ =sub_080B32F4
	bl sub_08000DA0
	adds r5, r0, #0
	cmp r5, #0
	beq _080B3824
	movs r0, #0x10
	bl sub_0802D5EC
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r1, [r1]
	adds r1, r1, r4
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x42
	strh r1, [r0]
	movs r0, #0x10
	bl sub_0802D5EC
	adds r1, r6, #0
	adds r1, #0x46
	subs r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #7
	bl sub_0802D5EC
	ldr r1, _080B3850 @ =0xFFFFF000
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	ldr r0, _080B3854 @ =0xFFFFF800
	str r0, [r5, #0x54]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r6, #0x12]
	strb r0, [r5, #0xb]
_080B3824:
	adds r4, r4, r7
	movs r2, #1
	rsbs r2, r2, #0
	add r8, r2
	mov r0, r8
	cmp r0, #0
	bge _080B37C6
_080B3832:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	mov r2, sb
	ldrb r1, [r2]
	b _080B3892
	.align 2, 0
_080B3840: .4byte sub_080B33C8
_080B3844: .4byte 0x0000FFFC
_080B3848: .4byte 0x00002802
_080B384C: .4byte sub_080B32F4
_080B3850: .4byte 0xFFFFF000
_080B3854: .4byte 0xFFFFF800
_080B3858:
	adds r0, r6, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #2
	bne _080B388C
	ldr r2, _080B38A4 @ =sub_080B350C
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r5, r0, #0
	cmp r5, #0
	beq _080B388C
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
	str r6, [r5, #0x14]
_080B388C:
	adds r0, r6, #0
	adds r0, #0x6c
	ldrb r1, [r0]
_080B3892:
	movs r2, #4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080B3946
	movs r0, #0x20
	strb r0, [r6, #0xd]
	strb r2, [r6, #0xb]
	b _080B3946
	.align 2, 0
_080B38A4: .4byte sub_080B350C
_080B38A8:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	bne _080B393A
	adds r0, r6, #0
	bl sub_0806CD38
	ldr r1, [r6, #0x40]
	movs r7, #1
	cmp r1, r0
	ble _080B38BE
	movs r7, #0
_080B38BE:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	cmp r0, r7
	beq _080B38DE
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #5
	strb r0, [r6, #0xb]
	b _080B3946
_080B38DE:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #6
	strb r0, [r6, #0xb]
	movs r0, #0x80
	strb r0, [r6, #0xd]
	b _080B3946
_080B38F4:
	adds r0, r6, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B3946
	adds r3, r6, #0
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
	movs r0, #0
	strb r0, [r6, #0xa]
	strb r0, [r6, #0xc]
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _080B3946
_080B3932:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #0
	cmp r1, #0
	beq _080B3940
_080B393A:
	subs r0, #1
	strb r0, [r6, #0xd]
	b _080B3946
_080B3940:
	strb r1, [r6, #0xa]
	strb r1, [r6, #0xc]
	strb r1, [r6, #0xb]
_080B3946:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B3954
sub_080B3954: @ 0x080B3954
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	ldrb r0, [r5, #0x12]
	lsls r0, r0, #4
	ldr r1, _080B3974 @ =0x081193DC
	adds r0, r0, r1
	mov r8, r0
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _080B3978
	cmp r0, #1
	beq _080B3A40
	b _080B3A5A
	.align 2, 0
_080B3974: .4byte 0x081193DC
_080B3978:
	movs r0, #0x6b
	bl sub_080D7910
	mov r0, r8
	ldrb r6, [r0, #0xd]
	ldrb r1, [r0, #0xc]
	cmp r6, r1
	blt _080B3A28
_080B3988:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _080B3A34 @ =sub_080B3EE8
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	beq _080B3A1E
	ldrb r0, [r5, #0x12]
	lsls r0, r0, #4
	ldr r1, _080B3A38 @ =0x081193DC
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r0, #4]
	ldr r0, [r0, #8]
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	adds r0, r4, #0
	adds r0, #0x65
	strb r6, [r0]
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
	movs r0, #0x10
	bl sub_0802D5EC
	lsls r0, r0, #0xd
	str r0, [r4, #0x48]
	movs r0, #0x10
	bl sub_0802D5EC
	lsls r0, r0, #0xc
	ldr r7, _080B3A3C @ =0xFFFD0000
	adds r0, r0, r7
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
_080B3A1E:
	subs r6, #1
	mov r0, r8
	ldrb r0, [r0, #0xc]
	cmp r6, r0
	bge _080B3988
_080B3A28:
	movs r0, #8
	strb r0, [r5, #0xd]
	movs r0, #1
	strb r0, [r5, #0xb]
	b _080B3A5A
	.align 2, 0
_080B3A34: .4byte sub_080B3EE8
_080B3A38: .4byte 0x081193DC
_080B3A3C: .4byte 0xFFFD0000
_080B3A40:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	bne _080B3A56
	movs r0, #1
	b _080B3A5C
_080B3A56:
	subs r0, #1
	strb r0, [r5, #0xd]
_080B3A5A:
	movs r0, #0
_080B3A5C:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080B3A68
sub_080B3A68: @ 0x080B3A68
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r4, [r3, #0x14]
	adds r1, r4, #0
	adds r1, #0x18
	ldrb r2, [r3, #0x11]
	cmp r2, #0
	ble _080B3AA8
	ldr r5, _080B3A98 @ =gEwramData
	subs r0, r2, #1
	adds r1, r0, r1
_080B3A7E:
	ldrb r0, [r1]
	cmp r0, #0
	beq _080B3AA0
	lsls r1, r0, #5
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r5]
	adds r1, r1, r0
	ldr r0, _080B3A9C @ =0x0000052A
	adds r1, r1, r0
	movs r5, #0
	ldrsh r2, [r1, r5]
	b _080B3AB0
	.align 2, 0
_080B3A98: .4byte gEwramData
_080B3A9C: .4byte 0x0000052A
_080B3AA0:
	subs r1, #1
	subs r2, #1
	cmp r2, #0
	bgt _080B3A7E
_080B3AA8:
	adds r0, r4, #0
	adds r0, #0x46
	movs r1, #0
	ldrsh r2, [r0, r1]
_080B3AB0:
	subs r2, #0x16
	ldr r0, [r3, #0x44]
	ldr r1, [r3, #0x4c]
	adds r0, r0, r1
	str r0, [r3, #0x44]
	adds r1, r3, #0
	adds r1, #0x46
	ldrh r4, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	cmp r0, r2
	blt _080B3ADC
	subs r0, r2, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r4
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r3, #0x4c]
_080B3ADC:
	ldr r0, [r3, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r3, #0x4c]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080B3AEC
sub_080B3AEC: @ 0x080B3AEC
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r1, [r4, #0x14]
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080B3B06
	ldrb r0, [r1, #0x15]
	cmp r0, #0
	beq _080B3BA4
	adds r0, r4, #0
	bl sub_080B3A68
_080B3B06:
	adds r0, r4, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _080B3B20
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080B3BA4
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	b _080B3BA4
_080B3B20:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080B3B6E
	cmp r0, #1
	bgt _080B3B30
	cmp r0, #0
	beq _080B3B3A
	b _080B3B90
_080B3B30:
	cmp r0, #2
	beq _080B3B76
	cmp r0, #3
	beq _080B3B88
	b _080B3B90
_080B3B3A:
	ldrb r5, [r4, #0xb]
	cmp r5, #0
	bne _080B3B90
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x3c
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xa0
	movs r3, #0x78
	bl sub_0806CFFC
	cmp r0, #0
	beq _080B3B90
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	b _080B3B90
_080B3B6E:
	adds r0, r4, #0
	bl sub_080B36A0
	b _080B3B90
_080B3B76:
	adds r0, r4, #0
	bl sub_080B3954
	cmp r0, #0
	beq _080B3B90
	adds r0, r4, #0
	bl sub_08000E14
	b _080B3BA4
_080B3B88:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080B3BA4
_080B3B90:
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080B3B9E
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
_080B3B9E:
	adds r0, r4, #0
	bl sub_0803F17C
_080B3BA4:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080B3BAC
sub_080B3BAC: @ 0x080B3BAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	mov sl, r1
	movs r0, #0
	str r0, [sp, #4]
	lsls r0, r1, #4
	ldr r1, _080B3C04 @ =0x081193DC
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r0, #4]
	ldr r0, [r0, #8]
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B3BDE
	b _080B3D82
_080B3BDE:
	ldr r1, [sp, #4]
	str r1, [r7, #4]
	ldr r0, _080B3C08 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080B3C0C
	adds r0, r7, #0
	bl sub_0806AF98
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _080B3C10
	.align 2, 0
_080B3C04: .4byte 0x081193DC
_080B3C08: .4byte gEwramData
_080B3C0C:
	movs r0, #2
	strh r0, [r7, #0x30]
_080B3C10:
	movs r2, #0x30
	ldrsh r0, [r7, r2]
	cmp r0, #0
	bgt _080B3C1C
	movs r0, #1
	b _080B3C22
_080B3C1C:
	cmp r0, #8
	ble _080B3C24
	movs r0, #8
_080B3C22:
	strh r0, [r7, #0x30]
_080B3C24:
	ldr r0, [r7, #0x44]
	str r0, [sp, #8]
	movs r1, #0x18
	adds r1, r1, r7
	mov r8, r1
	movs r2, #1
	mov sb, r2
	mov r0, r8
	str r0, [sp, #0xc]
	b _080B3D26
_080B3C38:
	ldrb r0, [r6, #0x10]
	mov r1, r8
	strb r0, [r1]
	mov r0, sb
	subs r0, #1
	strb r0, [r6, #0x11]
	str r7, [r6, #0x14]
	mov r2, sl
	strb r2, [r6, #0x12]
	mov r0, sl
	lsls r3, r0, #4
	ldr r0, _080B3CF4 @ =0x081193DC
	adds r3, r3, r0
	ldr r1, [r3]
	ldr r2, [r3, #4]
	ldr r0, [r3, #8]
	str r0, [sp]
	adds r0, r6, #0
	movs r3, #0
	bl sub_0806E0D0
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x36
	strb r0, [r1]
	adds r0, r6, #0
	bl sub_0806B04C
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	adds r5, r7, #0
	adds r5, #0x58
	ldrb r0, [r5]
	adds r4, r6, #0
	adds r4, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r3, [r4]
	movs r2, #0x41
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4]
	ldrb r3, [r5]
	lsls r0, r3, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	lsls r1, r1, #6
	ands r2, r3
	orrs r2, r1
	strb r2, [r5]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xa
	strb r0, [r1]
	ldr r0, [r7, #0x40]
	str r0, [r6, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r6, #0x44]
	ldr r0, [r7, #0x44]
	ldr r1, _080B3CF8 @ =0xFFEA0000
	adds r0, r0, r1
	str r0, [r7, #0x44]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080B3CFC @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080B3D00
	movs r0, #3
	strb r0, [r6, #0xa]
	b _080B3D20
	.align 2, 0
_080B3CF4: .4byte 0x081193DC
_080B3CF8: .4byte 0xFFEA0000
_080B3CFC: .4byte gEwramData
_080B3D00:
	strb r0, [r6, #0xa]
	ldr r2, _080B3D8C @ =sub_0806E1B8
	ldr r3, _080B3D90 @ =sub_080B3E70
	adds r0, r6, #0
	movs r1, #8
	bl sub_0804277C
	ldr r4, _080B3D94 @ =0x141CECF2
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08042884
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080428F0
_080B3D20:
	movs r2, #1
	add sb, r2
	add r8, r2
_080B3D26:
	movs r1, #0x30
	ldrsh r0, [r7, r1]
	cmp sb, r0
	bgt _080B3D44
	ldr r0, _080B3D98 @ =sub_080B3AEC
	bl sub_0806DFF8
	adds r6, r0, #0
	cmp r6, #0
	beq _080B3D3C
	b _080B3C38
_080B3D3C:
	mov r2, sb
	strh r2, [r7, #0x30]
	movs r0, #1
	str r0, [sp, #4]
_080B3D44:
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _080B3DA4
	ldr r2, [sp, #0xc]
	mov r8, r2
	movs r1, #0x30
	ldrsh r0, [r7, r1]
	mov sb, r0
	cmp r0, #0
	ble _080B3D82
	ldr r4, _080B3D9C @ =gEwramData
_080B3D5A:
	mov r2, r8
	ldrb r0, [r2]
	lsls r1, r0, #5
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080B3DA0 @ =0x000004E4
	adds r1, r1, r0
	ldr r0, [r4]
	adds r6, r0, r1
	adds r0, r6, #0
	bl sub_08000E14
	movs r1, #1
	add r8, r1
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	mov r0, sb
	cmp r0, #0
	bgt _080B3D5A
_080B3D82:
	adds r0, r7, #0
	bl sub_08000E14
	b _080B3DBA
	.align 2, 0
_080B3D8C: .4byte sub_0806E1B8
_080B3D90: .4byte sub_080B3E70
_080B3D94: .4byte 0x141CECF2
_080B3D98: .4byte sub_080B3AEC
_080B3D9C: .4byte gEwramData
_080B3DA0: .4byte 0x000004E4
_080B3DA4:
	ldr r1, [sp, #8]
	movs r2, #0xb0
	lsls r2, r2, #0xd
	adds r0, r1, r2
	str r0, [r7, #0x44]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_080B3DBA:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B3DCC
sub_080B3DCC: @ 0x080B3DCC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	movs r7, #0
	movs r2, #0x20
	rsbs r2, r2, #0
	movs r3, #0x98
	lsls r3, r3, #1
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	lsls r0, r0, #0x15
	movs r1, #0xe0
	lsls r1, r1, #0x10
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r2, #0
	bl sub_08068AD4
	cmp r0, #0
	bne _080B3E00
	strb r7, [r6, #0x15]
	b _080B3E64
_080B3E00:
	movs r0, #1
	strb r0, [r6, #0x15]
	movs r2, #0x30
	ldrsh r1, [r6, r2]
	adds r0, r1, r6
	adds r4, r0, #0
	adds r4, #0x17
	adds r5, r1, #0
	cmp r5, #0
	ble _080B3E5A
	ldr r0, _080B3E3C @ =gEwramData
	mov r8, r0
_080B3E18:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080B3E52
	adds r1, r0, #0
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080B3E40 @ =0x000004E4
	adds r0, r0, r1
	mov r2, r8
	ldr r1, [r2]
	adds r1, r1, r0
	ldrb r0, [r1, #0xa]
	cmp r0, #2
	bne _080B3E44
	movs r0, #0
	strb r0, [r4]
	b _080B3E52
	.align 2, 0
_080B3E3C: .4byte gEwramData
_080B3E40: .4byte 0x000004E4
_080B3E44:
	cmp r7, #0
	bne _080B3E52
	adds r0, r1, #0
	movs r1, #0
	bl sub_08021278
	movs r7, #1
_080B3E52:
	subs r4, #1
	subs r5, #1
	cmp r5, #0
	bgt _080B3E18
_080B3E5A:
	cmp r7, #0
	bne _080B3E64
	adds r0, r6, #0
	bl sub_08000E14
_080B3E64:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080B3E70
sub_080B3E70: @ 0x080B3E70
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080B3EA8
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
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080B3EA8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B3EB0
sub_080B3EB0: @ 0x080B3EB0
	push {lr}
	sub sp, #0x10
	mov r2, sp
	movs r3, #0
	movs r1, #2
	strh r1, [r2, #2]
	mov r1, sp
	strh r3, [r1, #4]
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	strh r1, [r2]
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

	thumb_func_start sub_080B3EE0
sub_080B3EE0: @ 0x080B3EE0
	movs r1, #0
	strh r1, [r0, #0x34]
	bx lr
	.align 2, 0

	thumb_func_start sub_080B3EE8
sub_080B3EE8: @ 0x080B3EE8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x28
	bl sub_0806D490
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D3D8
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _080B3F14
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080B3F14:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B3F1C
sub_080B3F1C: @ 0x080B3F1C
	push {lr}
	movs r1, #0
	bl sub_080B3BAC
	pop {r0}
	bx r0

	thumb_func_start sub_080B3F28
sub_080B3F28: @ 0x080B3F28
	push {lr}
	bl sub_080B3DCC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B3F34
sub_080B3F34: @ 0x080B3F34
	push {lr}
	movs r1, #1
	bl sub_080B3BAC
	pop {r0}
	bx r0

	thumb_func_start sub_080B3F40
sub_080B3F40: @ 0x080B3F40
	push {lr}
	bl sub_080B3DCC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B3F4C
sub_080B3F4C: @ 0x080B3F4C
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	mov r0, sp
	movs r1, #0
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	adds r0, r4, #0
	adds r0, #0x39
	ldrb r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080B3F76
	mov r1, sp
	movs r0, #0x5a
	strh r0, [r1]
	movs r0, #3
	strh r0, [r1, #6]
	b _080B3F8C
_080B3F76:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080B3F84
	mov r0, sp
	movs r1, #0x50
	b _080B3F88
_080B3F84:
	mov r0, sp
	movs r1, #0x37
_080B3F88:
	strh r1, [r0]
	strh r2, [r0, #6]
_080B3F8C:
	ldr r0, [r4, #0x40]
	str r0, [sp, #8]
	ldr r0, [r4, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	mov r0, sp
	ldrh r0, [r0, #6]
	cmp r0, #3
	bne _080B3FB6
	movs r2, #0xc0
	lsls r2, r2, #0xb
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bge _080B3FAE
	rsbs r2, r2, #0
_080B3FAE:
	ldr r1, _080B3FC0 @ =0xFFFE0000
	adds r0, r2, #0
	bl sub_08021248
_080B3FB6:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B3FC0: .4byte 0xFFFE0000

	thumb_func_start sub_080B3FC4
sub_080B3FC4: @ 0x080B3FC4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r7, [r5, #0x14]
	movs r0, #4
	bl sub_0806C2CC
	str r0, [r5, #0x18]
	cmp r0, #0
	beq _080B4040
	movs r0, #4
	bl sub_0806C2CC
	str r0, [r5, #0x1c]
	cmp r0, #0
	beq _080B4040
	movs r0, #0x20
	bl sub_0806C2CC
	adds r6, r0, #0
	str r6, [r5, #0x20]
	cmp r6, #0
	beq _080B4040
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x1c]
	movs r3, #0
	movs r4, #0
	movs r0, #1
	strh r0, [r1]
	strh r4, [r1, #2]
	str r2, [r1, #4]
	str r4, [r1, #8]
	str r4, [r1, #0xc]
	strb r3, [r2]
	strb r3, [r2, #1]
	strb r3, [r2, #4]
	strb r3, [r2, #5]
	str r4, [r2, #8]
	str r6, [r2, #0xc]
	movs r2, #0x17
	ldrsb r2, [r7, r2]
	adds r0, r7, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r5, #0
	bl sub_0803B924
	adds r0, r5, #0
	movs r1, #0
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	ldr r0, _080B403C @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r0, r5, #0
	bl sub_0803F17C
	movs r0, #0
	b _080B4042
	.align 2, 0
_080B403C: .4byte sub_0803B9D0
_080B4040:
	movs r0, #1
_080B4042:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080B4048
sub_080B4048: @ 0x080B4048
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	ldr r2, [r0, #0x14]
	adds r0, r2, #0
	adds r0, #0x65
	ldrb r0, [r0]
	ldr r1, _080B4084 @ =0x08244220
	ldr r6, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r6
	ldr r4, [r0, #0xc]
	mov r0, ip
	ldr r0, [r0, #0x1c]
	mov sb, r0
	mov r1, ip
	ldr r3, [r1, #0x20]
	movs r0, #0x12
	ldrsb r0, [r2, r0]
	cmp r0, #3
	bgt _080B4088
	ldrb r0, [r1, #0x13]
	cmp r0, #0
	bne _080B409A
	mov r1, ip
	adds r1, #0x5c
	movs r0, #0x1d
	b _080B409E
	.align 2, 0
_080B4084: .4byte 0x08244220
_080B4088:
	mov r5, ip
	ldrb r0, [r5, #0x13]
	cmp r0, #0
	beq _080B4098
	mov r1, ip
	adds r1, #0x5c
	movs r0, #0x1d
	b _080B409E
_080B4098:
	mov r1, ip
_080B409A:
	adds r1, #0x5c
	movs r0, #0x1e
_080B409E:
	strb r0, [r1]
	movs r7, #0
	mov r8, r7
	mov r1, ip
	ldrb r0, [r1, #0x13]
	cmp r0, #0
	beq _080B40DC
	ldrb r0, [r6, #5]
	subs r2, r0, #1
	cmp r2, #0
	blt _080B4100
_080B40B4:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080B40D2
	adds r1, r3, #0
	adds r0, r4, #0
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	ldrb r0, [r3]
	rsbs r0, r0, #0
	ldrb r1, [r3, #6]
	subs r0, r0, r1
	strb r0, [r3]
	adds r3, #0xc
	movs r0, #1
	add r8, r0
_080B40D2:
	adds r4, #0xc
	subs r2, #1
	cmp r2, #0
	bge _080B40B4
	b _080B4100
_080B40DC:
	ldrb r0, [r6, #5]
	subs r2, r0, #1
	cmp r2, #0
	blt _080B4100
_080B40E4:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080B40F8
	adds r1, r3, #0
	adds r0, r4, #0
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	adds r3, #0xc
	movs r0, #1
	add r8, r0
_080B40F8:
	adds r4, #0xc
	subs r2, #1
	cmp r2, #0
	bge _080B40E4
_080B4100:
	mov r5, r8
	mov r1, sb
	strb r5, [r1, #5]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B4114
sub_080B4114: @ 0x080B4114
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r5, [r4, #0x14]
	ldrh r1, [r5, #0x1e]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B412A
	movs r0, #2
	strb r0, [r4, #0xa]
_080B412A:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080B417A
	cmp r0, #1
	bgt _080B413A
	cmp r0, #0
	beq _080B4140
	b _080B41BA
_080B413A:
	cmp r0, #2
	beq _080B41A4
	b _080B41BA
_080B4140:
	adds r0, r4, #0
	bl sub_080B3FC4
	cmp r0, #0
	bne _080B41B2
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	blt _080B41B2
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
	movs r0, #1
	strb r0, [r4, #0xa]
_080B417A:
	adds r0, r4, #0
	bl sub_080B4048
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
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
	b _080B41BA
_080B41A4:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080B41B2:
	adds r0, r4, #0
	bl sub_08000E14
	b _080B41D8
_080B41BA:
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	ldr r2, [r5, #0x20]
	ldrb r3, [r4, #0x13]
	movs r1, #0
	str r1, [sp]
	adds r1, r4, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
_080B41D8:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080B41E0
sub_080B41E0: @ 0x080B41E0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r5, [r6, #0x18]
	movs r4, #0
	movs r7, #0
	ldrh r1, [r5, #0x1e]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B41F8
	movs r0, #5
	strb r0, [r6, #0xa]
_080B41F8:
	ldrb r0, [r6, #0xa]
	cmp r0, #5
	bls _080B4200
	b _080B433E
_080B4200:
	lsls r0, r0, #2
	ldr r1, _080B420C @ =_080B4210
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B420C: .4byte _080B4210
_080B4210: @ jump table
	.4byte _080B4228 @ case 0
	.4byte _080B426C @ case 1
	.4byte _080B433E @ case 2
	.4byte _080B433E @ case 3
	.4byte _080B433E @ case 4
	.4byte _080B4336 @ case 5
_080B4228:
	ldr r1, _080B425C @ =0x08244220
	movs r2, #0x17
	ldrsb r2, [r5, r2]
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r6, #0
	bl sub_0803B924
	ldr r0, _080B4260 @ =sub_0803B9D0
	str r0, [r6, #4]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0x1f
	strb r0, [r1]
	ldr r0, _080B4264 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B4268
	movs r0, #3
	strb r0, [r6, #0xa]
	b _080B433E
	.align 2, 0
_080B425C: .4byte 0x08244220
_080B4260: .4byte sub_0803B9D0
_080B4264: .4byte gEwramData
_080B4268:
	movs r0, #1
	strb r0, [r6, #0xa]
_080B426C:
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	bne _080B4276
	movs r0, #2
	strb r0, [r6, #0xa]
_080B4276:
	ldrh r1, [r5, #0x1e]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080B4284
	movs r0, #4
	strb r0, [r6, #0xa]
_080B4284:
	adds r0, r5, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r4, [r0, r1]
	adds r0, r5, #0
	bl sub_0806CD38
	cmp r0, #0
	bge _080B42A4
	adds r0, r5, #0
	bl sub_0806CD38
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080B42AC
_080B42A4:
	adds r0, r5, #0
	bl sub_0806CD38
	asrs r0, r0, #0x10
_080B42AC:
	subs r0, r0, r4
	subs r0, #0x20
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	adds r0, r5, #0
	adds r0, #0x46
	movs r1, #0
	ldrsh r4, [r0, r1]
	adds r0, r5, #0
	bl sub_0806CD78
	cmp r0, #0
	bge _080B42D4
	adds r0, r5, #0
	bl sub_0806CD78
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080B42DC
_080B42D4:
	adds r0, r5, #0
	bl sub_0806CD78
	asrs r0, r0, #0x10
_080B42DC:
	subs r0, r0, r4
	subs r0, #0x10
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r7, #0
	bl ArcTan2
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	lsls r1, r0, #1
	adds r7, r1, r0
	adds r0, r4, #0
	bl sub_080009E4
	lsls r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r4, r0, r1
	ldr r1, [r5, #0x20]
	cmp r7, #0
	bge _080B431A
	rsbs r0, r7, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080B431C
_080B431A:
	asrs r0, r7, #0x10
_080B431C:
	muls r0, r1, r0
	adds r7, r0, #0
	ldr r1, [r5, #0x20]
	cmp r4, #0
	bge _080B432E
	rsbs r0, r4, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080B4330
_080B432E:
	asrs r0, r4, #0x10
_080B4330:
	muls r0, r1, r0
	adds r4, r0, #0
	b _080B433E
_080B4336:
	adds r0, r6, #0
	bl sub_08000E14
	b _080B4366
_080B433E:
	ldr r0, [r5, #0x40]
	adds r0, r0, r7
	str r0, [r6, #0x40]
	ldr r0, [r5, #0x44]
	adds r0, r0, r4
	str r0, [r6, #0x44]
	ldr r1, _080B436C @ =0x085287C4
	movs r0, #0x12
	ldrsb r0, [r5, r0]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r1, #0x24
	adds r0, r6, #0
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
_080B4366:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B436C: .4byte 0x085287C4

	thumb_func_start sub_080B4370
sub_080B4370: @ 0x080B4370
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x18]
	ldrh r1, [r5, #0x1e]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080B4384
	movs r0, #6
	strb r0, [r4, #0xa]
_080B4384:
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bhi _080B4478
	lsls r0, r0, #2
	ldr r1, _080B4394 @ =_080B4398
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B4394: .4byte _080B4398
_080B4398: @ jump table
	.4byte _080B43B4 @ case 0
	.4byte _080B43E6 @ case 1
	.4byte _080B43FC @ case 2
	.4byte _080B4404 @ case 3
	.4byte _080B4430 @ case 4
	.4byte _080B4478 @ case 5
	.4byte _080B4470 @ case 6
_080B43B4:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _080B43F4 @ =0x08244220
	movs r2, #0x17
	ldrsb r2, [r5, r2]
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	ldr r0, _080B43F8 @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x1c
	strb r0, [r1]
	movs r0, #0x1b
	strb r0, [r4, #0x1c]
	movs r0, #1
	strb r0, [r4, #0xa]
_080B43E6:
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	bne _080B4478
	movs r0, #2
	strb r0, [r4, #0xa]
	b _080B4478
	.align 2, 0
_080B43F4: .4byte 0x08244220
_080B43F8: .4byte sub_0803B9D0
_080B43FC:
	movs r0, #0x20
	strb r0, [r4, #0xd]
	movs r0, #3
	strb r0, [r4, #0xa]
_080B4404:
	ldrb r1, [r4, #0xd]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080B4412
	movs r0, #0x1b
	b _080B4414
_080B4412:
	movs r0, #0x12
_080B4414:
	strb r0, [r4, #0x1c]
	lsls r0, r1, #0x18
	cmp r0, #0
	beq _080B4422
	subs r0, r1, #1
	strb r0, [r4, #0xd]
	b _080B4478
_080B4422:
	movs r0, #0x12
	strb r0, [r4, #0x1c]
	movs r0, #8
	strb r0, [r4, #0xd]
	movs r0, #4
	strb r0, [r4, #0xa]
	b _080B4478
_080B4430:
	ldrb r1, [r4, #0xd]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080B4446
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	b _080B4452
_080B4446:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r2, [r0]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
_080B4452:
	strb r1, [r0]
	adds r2, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _080B4462
	subs r0, #1
	strb r0, [r4, #0xd]
	b _080B4478
_080B4462:
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	movs r0, #5
	strb r0, [r4, #0xa]
	b _080B4478
_080B4470:
	adds r0, r4, #0
	bl sub_08000E14
	b _080B44B8
_080B4478:
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
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
	ldrb r1, [r4, #0x1c]
	ldr r2, _080B44C0 @ =0x085287CD
	movs r0, #0x12
	ldrsb r0, [r5, r0]
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
_080B44B8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B44C0: .4byte 0x085287CD

	thumb_func_start sub_080B44C4
sub_080B44C4: @ 0x080B44C4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x18]
	ldrh r1, [r5, #0x1e]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080B44D8
	movs r0, #4
	strb r0, [r4, #0xa]
_080B44D8:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080B4514
	cmp r0, #1
	bgt _080B44E8
	cmp r0, #0
	beq _080B44F2
	b _080B4578
_080B44E8:
	cmp r0, #2
	beq _080B455E
	cmp r0, #4
	beq _080B4570
	b _080B4578
_080B44F2:
	ldr r1, _080B452C @ =0x08244220
	movs r2, #0x17
	ldrsb r2, [r5, r2]
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	ldr r0, _080B4530 @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x1c
	strb r0, [r1]
	movs r0, #1
	strb r0, [r4, #0xa]
_080B4514:
	ldrb r3, [r5, #0xa]
	cmp r3, #3
	bne _080B4534
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	strb r3, [r4, #0xa]
	b _080B4578
	.align 2, 0
_080B452C: .4byte 0x08244220
_080B4530: .4byte sub_0803B9D0
_080B4534:
	adds r3, r4, #0
	adds r3, #0x58
	ldrb r1, [r3]
	movs r0, #0x20
	adds r2, r1, #0
	orrs r2, r0
	strb r2, [r3]
	ldrh r1, [r5, #0x1e]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080B4578
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r2, r0
	strb r2, [r3]
	movs r0, #0x10
	strb r0, [r4, #0xd]
	movs r0, #2
	strb r0, [r4, #0xa]
	b _080B4578
_080B455E:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _080B456A
	subs r0, #1
	strb r0, [r4, #0xd]
	b _080B4578
_080B456A:
	movs r0, #1
	strb r0, [r4, #0xa]
	b _080B4578
_080B4570:
	adds r0, r4, #0
	bl sub_08000E14
	b _080B45B6
_080B4578:
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
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
	ldr r1, _080B45BC @ =0x085287C4
	movs r0, #0x12
	ldrsb r0, [r5, r0]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r1, #9
	adds r0, r4, #0
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
_080B45B6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B45BC: .4byte 0x085287C4

	thumb_func_start sub_080B45C0
sub_080B45C0: @ 0x080B45C0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080B45D8 @ =0x081193FC
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	bge _080B45DC
	movs r0, #0
	b _080B462E
	.align 2, 0
_080B45D8: .4byte 0x081193FC
_080B45DC:
	ldr r0, _080B45F4 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080B45FC
	ldr r0, _080B45F8 @ =0x0820B92C
	movs r1, #7
	b _080B4600
	.align 2, 0
_080B45F4: .4byte gEwramData
_080B45F8: .4byte 0x0820B92C
_080B45FC:
	ldr r0, _080B4634 @ =0x0820B92C
	movs r1, #0
_080B4600:
	bl sub_08068264
	strb r0, [r4, #0x14]
	strb r5, [r4, #0x17]
	ldrb r0, [r4, #0x14]
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _080B4638 @ =0x08244220
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _080B463C @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
_080B462E:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080B4634: .4byte 0x0820B92C
_080B4638: .4byte 0x08244220
_080B463C: .4byte sub_0803B9D0

	thumb_func_start sub_080B4640
sub_080B4640: @ 0x080B4640
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r3, r1, #0
	ldr r1, [r3, #0x10]
	ldr r2, [r3, #0x14]
	ldr r0, [r6, #0x30]
	cmp r0, r1
	beq _080B466C
	cmp r0, r1
	ble _080B465E
	subs r0, r0, r2
	str r0, [r6, #0x30]
	cmp r0, r1
	bge _080B466C
	b _080B466A
_080B465E:
	cmp r0, r1
	bge _080B466C
	adds r0, r0, r2
	str r0, [r6, #0x30]
	cmp r0, r1
	ble _080B466C
_080B466A:
	str r1, [r6, #0x30]
_080B466C:
	ldr r1, [r3, #8]
	ldr r2, [r3, #0xc]
	ldr r0, [r6, #0x10]
	cmp r0, r1
	beq _080B4692
	cmp r0, r1
	ble _080B4684
	subs r0, r0, r2
	str r0, [r6, #0x10]
	cmp r0, r1
	bge _080B4692
	b _080B4690
_080B4684:
	cmp r0, r1
	bge _080B4692
	adds r0, r0, r2
	str r0, [r6, #0x10]
	cmp r0, r1
	ble _080B4692
_080B4690:
	str r1, [r6, #0x10]
_080B4692:
	ldrh r5, [r3]
	ldrh r4, [r3, #2]
	ldrh r2, [r3, #4]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080B46B2
	lsls r0, r5, #0x10
	rsbs r0, r0, #0
	lsrs r5, r0, #0x10
	lsls r0, r2, #0x10
	rsbs r0, r0, #0
	lsrs r2, r0, #0x10
_080B46B2:
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	ldrh r0, [r6, #0x24]
	adds r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldrh r0, [r6, #0x26]
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r6, #0
	adds r0, #0x1c
	ldrh r1, [r3, #6]
	bl sub_080686CC
	lsls r5, r5, #0x10
	lsls r4, r4, #0x10
	ldr r3, [r6, #0x30]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080694B8
	cmp r0, #0
	bne _080B46F2
	adds r0, r6, #0
	bl sub_0806D3AC
	movs r0, #0
	b _080B46F4
_080B46F2:
	movs r0, #1
_080B46F4:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B46FC
sub_080B46FC: @ 0x080B46FC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080B470E
	cmp r0, #1
	beq _080B471C
	movs r0, #0
	b _080B4770
_080B470E:
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r4, #0x30]
	movs r0, #0x40
	strb r0, [r4, #0xd]
	movs r0, #1
	strb r0, [r4, #0xb]
_080B471C:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _080B4768
	subs r0, #1
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r6, [r0]
	ldrb r0, [r4, #0xd]
	lsrs r0, r0, #3
	adds r3, r0, #0
	adds r3, #8
	adds r0, r6, #0
	subs r0, #0xa
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r5, _080B4778 @ =gEwramData
	ldr r0, [r5]
	movs r2, #0xfc
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r2, r0, r1
	ldrb r0, [r2]
	cmp r0, r3
	beq _080B4768
	strb r3, [r2]
	ldr r0, [r5]
	lsls r1, r1, #2
	movs r2, #0xf8
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r3, #0
	movs r2, #1
	adds r3, r6, #0
	bl sub_0803C7B4
_080B4768:
	ldr r1, _080B477C @ =0x08528764
	adds r0, r4, #0
	bl sub_080B4640
_080B4770:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080B4778: .4byte gEwramData
_080B477C: .4byte 0x08528764

	thumb_func_start sub_080B4780
sub_080B4780: @ 0x080B4780
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _080B47AC
	cmp r0, #1
	bgt _080B4794
	cmp r0, #0
	beq _080B479E
	b _080B4848
_080B4794:
	cmp r0, #2
	beq _080B4806
	cmp r0, #3
	beq _080B4810
	b _080B4848
_080B479E:
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r4, #0x30]
	movs r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0x20
	strb r0, [r4, #0xd]
_080B47AC:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _080B47C2
	subs r0, #1
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xd]
	lsrs r0, r0, #4
	adds r0, #0x2e
	adds r1, r4, #0
	adds r1, #0x38
	strb r0, [r1]
_080B47C2:
	ldr r1, _080B47F0 @ =0x0852877C
	adds r0, r4, #0
	bl sub_080B4640
	cmp r0, #0
	beq _080B4848
	movs r0, #0xa8
	lsls r0, r0, #0xb
	str r0, [r4, #0x30]
	movs r0, #0x86
	bl sub_080D7910
	bl sub_08000AB0
	movs r1, #0x3f
	ands r1, r0
	cmp r1, #0x1f
	bhi _080B47F4
	movs r0, #3
	strb r0, [r4, #0xb]
	movs r0, #0x2f
	strb r0, [r4, #0xd]
	b _080B47F8
	.align 2, 0
_080B47F0: .4byte 0x0852877C
_080B47F4:
	movs r0, #2
	strb r0, [r4, #0xb]
_080B47F8:
	adds r2, r4, #0
	adds r2, #0x39
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	b _080B4848
_080B4806:
	ldr r1, _080B480C @ =0x08528794
	b _080B4828
	.align 2, 0
_080B480C: .4byte 0x08528794
_080B4810:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _080B4826
	subs r0, #1
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xd]
	lsrs r0, r0, #4
	adds r0, #0x2e
	adds r1, r4, #0
	adds r1, #0x38
	strb r0, [r1]
_080B4826:
	ldr r1, _080B4844 @ =0x085287AC
_080B4828:
	adds r0, r4, #0
	bl sub_080B4640
	cmp r0, #0
	beq _080B4848
	adds r2, r4, #0
	adds r2, #0x39
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	movs r0, #1
	b _080B484A
	.align 2, 0
_080B4844: .4byte 0x085287AC
_080B4848:
	movs r0, #0
_080B484A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080B4850
sub_080B4850: @ 0x080B4850
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r5, [r7, #0x28]
	ldrb r0, [r7, #0xb]
	cmp r0, #1
	beq _080B48F0
	cmp r0, #1
	bgt _080B486C
	cmp r0, #0
	beq _080B4876
	b _080B4A18
_080B486C:
	cmp r0, #2
	beq _080B4924
	cmp r0, #3
	beq _080B496A
	b _080B4A18
_080B4876:
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r7, #0x30]
	adds r1, r7, #0
	adds r1, #0x38
	movs r0, #0x2e
	strb r0, [r1]
	adds r0, r7, #0
	bl sub_0806CD38
	ldr r1, [r7, #0x40]
	subs r6, r0, r1
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080B489E
	rsbs r6, r6, #0
_080B489E:
	cmp r6, #0
	bge _080B48AA
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080B48AC
_080B48AA:
	asrs r0, r6, #0x10
_080B48AC:
	subs r0, #0x20
	strh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080B48BC
	movs r0, #0
	b _080B48C2
_080B48BC:
	cmp r0, #0x60
	ble _080B48C4
	movs r0, #0x60
_080B48C2:
	strh r0, [r5]
_080B48C4:
	ldr r0, _080B491C @ =0x0000FFF0
	strh r0, [r5, #2]
	movs r0, #0xf0
	lsls r0, r0, #8
	strh r0, [r5, #4]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r5, #6]
	movs r0, #0x98
	lsls r0, r0, #0xf
	str r0, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r5, #0xc]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r5, #0x10]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r5, #0x14]
	movs r0, #1
	strb r0, [r7, #0xb]
_080B48F0:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_080B4640
	cmp r0, #0
	bne _080B48FE
	b _080B4A18
_080B48FE:
	movs r1, #0x80
	lsls r1, r1, #8
	str r1, [r7, #0x30]
	ldr r0, _080B4920 @ =0x0000FFE0
	strh r0, [r5, #2]
	movs r0, #0xe0
	lsls r0, r0, #8
	strh r0, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #6]
	str r1, [r5, #0x10]
	movs r0, #2
	strb r0, [r7, #0xb]
	b _080B4A18
	.align 2, 0
_080B491C: .4byte 0x0000FFF0
_080B4920: .4byte 0x0000FFE0
_080B4924:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_080B4640
	cmp r0, #0
	beq _080B4A18
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r7, #0x30]
	movs r0, #0x28
	strh r0, [r5, #2]
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #6]
	movs r0, #0xa0
	lsls r0, r0, #0xb
	str r0, [r5, #0x10]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r5, #0x14]
	adds r2, r7, #0
	adds r2, #0x39
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x86
	bl sub_080D7910
	movs r0, #3
	strb r0, [r7, #0xb]
	b _080B4A18
_080B496A:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_080B4640
	cmp r0, #0
	beq _080B4A18
	movs r6, #0x8c
	lsls r6, r6, #0xf
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080B498A
	rsbs r6, r6, #0
_080B498A:
	ldr r0, [r7, #0x40]
	adds r6, r6, r0
	movs r0, #0x10
	mov r8, r0
	movs r1, #0x39
	adds r1, r1, r7
	mov sb, r1
_080B4998:
	movs r0, #0x10
	bl sub_0802D5EC
	adds r4, r0, #0
	lsls r4, r4, #0x10
	adds r4, r6, r4
	ldr r5, [r7, #0x44]
	movs r0, #0xf0
	lsls r0, r0, #0xd
	adds r5, r5, r0
	bl sub_08000A90
	movs r2, #1
	ands r2, r0
	adds r2, #0x40
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #6
	bl sub_08045DC8
	adds r4, r0, #0
	cmp r4, #0
	beq _080B49E6
	bl sub_08000A90
	movs r1, #0x3f
	ands r1, r0
	lsls r1, r1, #0xc
	ldr r0, _080B4A14 @ =0xFFFD0000
	subs r0, r0, r1
	str r0, [r4, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	movs r0, #0x40
	bl sub_0802D5EC
	lsls r0, r0, #0xb
	str r0, [r4, #0x48]
_080B49E6:
	movs r1, #1
	rsbs r1, r1, #0
	add r8, r1
	mov r0, r8
	cmp r0, #0
	bne _080B4998
	movs r0, #0x80
	bl sub_080D7910
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #0xfd
	ands r0, r1
	mov r1, sb
	strb r0, [r1]
	movs r0, #0
	movs r1, #8
	movs r2, #3
	movs r3, #7
	bl sub_08011FC0
	movs r0, #1
	b _080B4A1A
	.align 2, 0
_080B4A14: .4byte 0xFFFD0000
_080B4A18:
	movs r0, #0
_080B4A1A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B4A28
sub_080B4A28: @ 0x080B4A28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r6, r0, #0
	ldr r4, [r6, #0x18]
	ldr r0, [r6, #0x14]
	mov r8, r0
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _080B4A4E
	mov r1, r8
	ldrb r0, [r1, #0xa]
	cmp r0, #0xa
	bne _080B4A4E
	movs r0, #3
	strb r0, [r6, #0xa]
_080B4A4E:
	ldr r0, [r6, #0x40]
	str r0, [r6, #0x50]
	ldr r0, [r6, #0x44]
	str r0, [r6, #0x54]
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	beq _080B4B0C
	cmp r0, #1
	bgt _080B4A66
	cmp r0, #0
	beq _080B4A74
	b _080B4A6E
_080B4A66:
	cmp r0, #2
	beq _080B4B2A
	cmp r0, #3
	beq _080B4B46
_080B4A6E:
	adds r7, r6, #0
	adds r7, #0x58
	b _080B4B5C
_080B4A74:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	blt _080B4B54
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
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0x19
	strb r0, [r1]
	ldr r1, _080B4AF8 @ =0x08244220
	movs r2, #0x17
	ldrsb r2, [r4, r2]
	mov r0, r8
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r6, #0
	bl sub_0803B924
	adds r0, r6, #0
	movs r1, #0x30
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	ldr r0, _080B4AFC @ =sub_0803B9D0
	str r0, [r6, #4]
	ldr r2, _080B4B00 @ =sub_080B3F4C
	ldr r3, _080B4B04 @ =sub_080B6B68
	adds r0, r6, #0
	movs r1, #8
	bl sub_0804277C
	ldr r4, _080B4B08 @ =0x2828ECEC
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08042884
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080428F0
	movs r0, #1
	strb r0, [r6, #0xa]
	adds r7, r5, #0
	b _080B4B5C
	.align 2, 0
_080B4AF8: .4byte 0x08244220
_080B4AFC: .4byte sub_0803B9D0
_080B4B00: .4byte sub_080B3F4C
_080B4B04: .4byte sub_080B6B68
_080B4B08: .4byte 0x2828ECEC
_080B4B0C:
	mov r2, r8
	ldrb r0, [r2, #0xa]
	adds r7, r6, #0
	adds r7, #0x58
	cmp r0, #7
	bne _080B4B5C
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #2
	orrs r1, r0
	strb r1, [r2]
	movs r0, #2
	strb r0, [r6, #0xa]
	b _080B4B5C
_080B4B2A:
	mov r0, r8
	ldrb r3, [r0, #0xa]
	adds r7, r6, #0
	adds r7, #0x58
	cmp r3, #1
	bne _080B4B5C
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	strb r3, [r6, #0xa]
	b _080B4B5C
_080B4B46:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080B4B54:
	adds r0, r6, #0
	bl sub_08000E14
	b _080B4C6C
_080B4B5C:
	mov r0, r8
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
	mov r3, r8
	adds r3, #0x58
	ldrb r0, [r3]
	movs r1, #0x20
	ands r1, r0
	ldrb r2, [r7]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r7]
	mov r0, r8
	adds r0, #0x39
	ldrb r0, [r0]
	adds r2, r6, #0
	adds r2, #0x39
	strb r0, [r2]
	ldrb r1, [r7]
	movs r0, #0x20
	ands r0, r1
	mov sb, r3
	mov sl, r2
	cmp r0, #0
	bne _080B4C6C
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B4BB8
	mov r1, r8
	movs r2, #0x1c
	ldrsh r5, [r1, r2]
	b _080B4BC4
_080B4BB8:
	mov r1, r8
	movs r2, #0x1c
	ldrsh r0, [r1, r2]
	movs r1, #0x80
	lsls r1, r1, #8
	adds r5, r0, r1
_080B4BC4:
	mov r2, r8
	ldr r0, [r2, #0x10]
	cmp r0, #0
	bge _080B4BD4
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r4, r0, #0
	b _080B4BD6
_080B4BD4:
	asrs r4, r0, #0x10
_080B4BD6:
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r5, r1
	bl sub_080009E4
	adds r1, r4, #0
	muls r1, r0, r1
	mov r2, r8
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r6, #0x40]
	adds r0, r5, #0
	bl sub_080009E4
	muls r0, r4, r0
	mov r1, r8
	ldr r2, [r1, #0x44]
	adds r2, r2, r0
	str r2, [r6, #0x44]
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x50]
	subs r0, r0, r1
	str r0, [r6, #0x48]
	ldr r0, [r6, #0x54]
	subs r2, r2, r0
	str r2, [r6, #0x4c]
	mov r2, sl
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B4C1E
	adds r0, r6, #0
	movs r1, #3
	bl sub_08021278
_080B4C1E:
	add r0, sp, #8
	adds r1, r6, #0
	bl sub_080421AC
	mov r1, r8
	movs r2, #0x1c
	ldrsh r0, [r1, r2]
	movs r2, #0x80
	lsls r2, r2, #9
	mov r1, sb
	ldrb r3, [r1]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1f
	movs r1, #0
	str r1, [sp]
	ldrb r1, [r7]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
	adds r0, r6, #0
	adds r0, #0x6d
	mov r3, r8
	adds r3, #0x38
	ldrb r0, [r0]
	ldrb r2, [r3]
	cmp r0, r2
	beq _080B4C66
	ldrb r1, [r3]
	adds r0, r6, #0
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
_080B4C66:
	adds r0, r6, #0
	bl sub_0803F17C
_080B4C6C:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080B4C7C
sub_080B4C7C: @ 0x080B4C7C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r5, [r6, #0x18]
	ldrb r2, [r6, #0xa]
	cmp r2, #0
	beq _080B4C9C
	ldrh r1, [r5, #0x1e]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080B4C9C
	cmp r2, #6
	bhi _080B4C9C
	movs r0, #7
	strb r0, [r6, #0xa]
_080B4C9C:
	ldrb r0, [r6, #0xa]
	cmp r0, #0xa
	bls _080B4CA4
	b _080B4F5A
_080B4CA4:
	lsls r0, r0, #2
	ldr r1, _080B4CB0 @ =_080B4CB4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B4CB0: .4byte _080B4CB4
_080B4CB4: @ jump table
	.4byte _080B4CE0 @ case 0
	.4byte _080B4D70 @ case 1
	.4byte _080B4D9E @ case 2
	.4byte _080B4DB8 @ case 3
	.4byte _080B4DCE @ case 4
	.4byte _080B4DEC @ case 5
	.4byte _080B4E12 @ case 6
	.4byte _080B4E38 @ case 7
	.4byte _080B4E76 @ case 8
	.4byte _080B4F12 @ case 9
	.4byte _080B4F3E @ case 10
_080B4CE0:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _080B4CF0
	b _080B4F52
_080B4CF0:
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
	strb r0, [r2]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0x1a
	strb r0, [r1]
	movs r0, #7
	bl sub_0806C2CC
	str r0, [r6, #0x28]
	ldr r0, _080B4D64 @ =0x0820B92C
	movs r1, #0xf
	bl sub_08068264
	adds r3, r6, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _080B4D68 @ =0x08244220
	movs r2, #0x17
	ldrsb r2, [r5, r2]
	ldrb r3, [r3]
	adds r0, r6, #0
	bl sub_0803B924
	adds r0, r6, #0
	movs r1, #0x2d
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	ldr r0, _080B4D6C @ =sub_0803B9D0
	str r0, [r6, #4]
	adds r1, r6, #0
	adds r1, #0x38
	movs r0, #0x30
	strb r0, [r1]
	movs r0, #0x98
	lsls r0, r0, #0xe
	str r0, [r6, #0x10]
	movs r0, #1
	strb r0, [r6, #0xa]
	b _080B4F5A
	.align 2, 0
_080B4D64: .4byte 0x0820B92C
_080B4D68: .4byte 0x08244220
_080B4D6C: .4byte sub_0803B9D0
_080B4D70:
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	subs r2, #0x1f
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	bl sub_080B46FC
	cmp r0, #0
	bne _080B4D94
	b _080B4F5A
_080B4D94:
	movs r0, #2
	strb r0, [r6, #0xa]
	movs r0, #0
	strb r0, [r6, #0xb]
	b _080B4F5A
_080B4D9E:
	ldrb r1, [r5, #0x18]
	adds r0, r1, #0
	cmp r0, #0
	bne _080B4DA8
	b _080B4F5A
_080B4DA8:
	ldrb r2, [r6, #0xa]
	cmp r0, r2
	bne _080B4DB0
	b _080B4F5A
_080B4DB0:
	movs r0, #0
	strb r1, [r6, #0xa]
	strb r0, [r6, #0xb]
	b _080B4F5A
_080B4DB8:
	adds r2, r6, #0
	adds r2, #0x39
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r6, #0x30]
	movs r0, #4
	strb r0, [r6, #0xa]
_080B4DCE:
	ldr r1, _080B4DE8 @ =0x08528764
	adds r0, r6, #0
	bl sub_080B4640
	cmp r0, #0
	bne _080B4DDC
	b _080B4F5A
_080B4DDC:
	ldrb r0, [r6, #0xc]
	movs r1, #0
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xb]
	b _080B4F5A
	.align 2, 0
_080B4DE8: .4byte 0x08528764
_080B4DEC:
	adds r2, r6, #0
	adds r2, #0x39
	ldrb r0, [r2]
	movs r1, #4
	orrs r1, r0
	strb r1, [r2]
	adds r0, r6, #0
	bl sub_080B4780
	cmp r0, #0
	bne _080B4E04
	b _080B4F5A
_080B4E04:
	movs r0, #3
	strb r0, [r6, #0xa]
	movs r0, #0
	strb r0, [r6, #0xb]
	movs r0, #6
	strb r0, [r6, #0xc]
	b _080B4F5A
_080B4E12:
	adds r2, r6, #0
	adds r2, #0x39
	ldrb r0, [r2]
	movs r1, #0xfb
	ands r1, r0
	strb r1, [r2]
	adds r0, r6, #0
	bl sub_080B4850
	cmp r0, #0
	bne _080B4E2A
	b _080B4F5A
_080B4E2A:
	movs r0, #3
	strb r0, [r6, #0xa]
	movs r0, #0
	strb r0, [r6, #0xb]
	movs r0, #2
	strb r0, [r6, #0xc]
	b _080B4F5A
_080B4E38:
	adds r2, r6, #0
	adds r2, #0x39
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B4E58
	ldrh r1, [r5, #0x1e]
	movs r0, #8
	b _080B4E5C
_080B4E58:
	ldrh r1, [r5, #0x1e]
	movs r0, #0x10
_080B4E5C:
	orrs r0, r1
	strh r0, [r5, #0x1e]
	ldrh r1, [r5, #0x1e]
	movs r0, #0x18
	ands r0, r1
	cmp r0, #0x18
	bne _080B4F5A
	movs r0, #0
	movs r1, #0x10
	strb r1, [r6, #0xd]
	movs r1, #8
	strb r1, [r6, #0xa]
	strb r0, [r6, #0xb]
_080B4E76:
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r6, #0x30]
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _080B4ECC
	subs r0, #1
	strb r0, [r6, #0xd]
	adds r0, r6, #0
	adds r0, #0x2c
	ldrb r7, [r0]
	ldrb r1, [r6, #0xd]
	lsrs r1, r1, #1
	movs r0, #0xf
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r7, #0
	subs r0, #0xa
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r3, _080B4EF4 @ =gEwramData
	ldr r0, [r3]
	movs r2, #0xfc
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r2, r0, r1
	ldrb r0, [r2]
	cmp r0, r4
	beq _080B4ECC
	strb r4, [r2]
	ldr r0, [r3]
	lsls r1, r1, #2
	movs r2, #0xf8
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r4, #0
	movs r2, #1
	adds r3, r7, #0
	bl sub_0803C7B4
_080B4ECC:
	ldr r1, _080B4EF8 @ =0x0852874C
	adds r0, r6, #0
	bl sub_080B4640
	cmp r0, #0
	beq _080B4F5A
	ldrh r0, [r5, #0x1e]
	movs r1, #0x20
	orrs r1, r0
	ldr r0, _080B4EFC @ =0x0000FFE7
	ands r1, r0
	strh r1, [r5, #0x1e]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080B4F00
	movs r0, #0xa
	strb r0, [r6, #0xa]
	b _080B4F5A
	.align 2, 0
_080B4EF4: .4byte gEwramData
_080B4EF8: .4byte 0x0852874C
_080B4EFC: .4byte 0x0000FFE7
_080B4F00:
	movs r0, #9
	strb r0, [r6, #0xa]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	b _080B4F5A
_080B4F12:
	ldrb r0, [r5, #0x18]
	cmp r0, #1
	bne _080B4F5A
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r6, #0
	adds r1, #0x38
	movs r2, #0
	movs r0, #0x30
	strb r0, [r1]
	movs r0, #0x98
	lsls r0, r0, #0xe
	str r0, [r6, #0x10]
	ldrb r0, [r5, #0x18]
	strb r0, [r6, #0xa]
	strb r2, [r6, #0xb]
	b _080B4F5A
_080B4F3E:
	ldr r0, [r6, #0x28]
	bl sub_0806C250
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080B4F52:
	adds r0, r6, #0
	bl sub_08000E14
	b _080B4FA8
_080B4F5A:
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x20
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	bne _080B4FA8
	ldr r0, [r6, #0x10]
	cmp r0, #0
	bge _080B4F78
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080B4F7A
_080B4F78:
	asrs r0, r0, #0x10
_080B4F7A:
	lsls r0, r0, #0x10
	movs r1, #0x4c
	bl __divsi3
	adds r1, r0, #0
	str r1, [r6, #0x20]
	movs r2, #0x1c
	ldrsh r0, [r6, r2]
	movs r2, #0x80
	lsls r2, r2, #9
	ldrb r4, [r4]
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
_080B4FA8:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080B4FB0
sub_080B4FB0: @ 0x080B4FB0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r7, [sp, #0x18]
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	cmp r7, #0
	bne _080B4FD4
	ldr r0, _080B4FD0 @ =sub_080B4C7C
	b _080B4FD6
	.align 2, 0
_080B4FD0: .4byte sub_080B4C7C
_080B4FD4:
	ldr r0, _080B5048 @ =sub_080B6524
_080B4FD6:
	bl sub_0806DFF8
	adds r3, r0, #0
	cmp r3, #0
	beq _080B5086
	mov r0, r8
	str r0, [r3, #0x18]
	movs r0, #0
	str r0, [r3, #0x10]
	strh r4, [r3, #0x24]
	strh r5, [r3, #0x26]
	ldr r0, _080B504C @ =gEwramData
	ldr r1, [r0]
	ldr r0, _080B5050 @ =0x0000A094
	adds r1, r1, r0
	ldrh r2, [r1, #6]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	adds r2, r3, #0
	adds r2, #0x42
	strh r0, [r2]
	ldrh r1, [r1, #0xa]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	adds r1, r3, #0
	adds r1, #0x46
	strh r0, [r1]
	adds r4, r3, #0
	adds r4, #0x58
	movs r0, #1
	adds r1, r6, #0
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	adds r2, r3, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r5, r3, #0
	cmp r7, #0
	bne _080B5058
	ldrb r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4]
	ldr r0, _080B5054 @ =sub_080B4A28
	b _080B505A
	.align 2, 0
_080B5048: .4byte sub_080B6524
_080B504C: .4byte gEwramData
_080B5050: .4byte 0x0000A094
_080B5054: .4byte sub_080B4A28
_080B5058:
	ldr r0, _080B5090 @ =sub_080B6298
_080B505A:
	bl sub_0806DFF8
	adds r3, r0, #0
	cmp r3, #0
	beq _080B5086
	mov r0, r8
	str r0, [r3, #0x18]
	str r5, [r3, #0x14]
	adds r2, r3, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	cmp r7, #0
	bne _080B5086
	adds r0, r3, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
_080B5086:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B5090: .4byte sub_080B6298

	thumb_func_start sub_080B5094
sub_080B5094: @ 0x080B5094
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r6, [r5, #0x18]
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _080B50B4
	cmp r0, #2
	bhi _080B50B4
	ldrh r1, [r6, #0x1e]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080B50B4
	movs r0, #3
	strb r0, [r5, #0xa]
_080B50B4:
	ldrb r0, [r5, #0xa]
	cmp r0, #4
	bls _080B50BC
	b _080B51E2
_080B50BC:
	lsls r0, r0, #2
	ldr r1, _080B50C8 @ =_080B50CC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B50C8: .4byte _080B50CC
_080B50CC: @ jump table
	.4byte _080B50E0 @ case 0
	.4byte _080B5186 @ case 1
	.4byte _080B5198 @ case 2
	.4byte _080B51B8 @ case 3
	.4byte _080B51CC @ case 4
_080B50E0:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	blt _080B51DA
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
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x13
	strb r0, [r1]
	ldr r0, _080B516C @ =0x0820B92C
	movs r1, #0x10
	bl sub_08068264
	adds r3, r5, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _080B5170 @ =0x08244220
	movs r2, #0x17
	ldrsb r2, [r6, r2]
	ldrb r3, [r3]
	adds r0, r5, #0
	bl sub_0803B924
	ldr r0, _080B5174 @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r0, r5, #0
	movs r1, #0x31
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	movs r1, #1
	strb r1, [r5, #0xf]
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _080B5178
	strb r1, [r5, #0xe]
	ldrb r0, [r4]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4]
	movs r0, #0xa0
	lsls r0, r0, #7
	strh r0, [r5, #0x1c]
	movs r0, #0xe0
	strh r0, [r5, #0x1e]
	movs r0, #2
	strb r0, [r5, #0xa]
	b _080B51E2
	.align 2, 0
_080B516C: .4byte 0x0820B92C
_080B5170: .4byte 0x08244220
_080B5174: .4byte sub_0803B9D0
_080B5178:
	movs r0, #0xc0
	lsls r0, r0, #6
	strh r0, [r5, #0x1c]
	movs r0, #0x80
	strh r0, [r5, #0x1e]
	strb r1, [r5, #0xa]
	b _080B51E2
_080B5186:
	ldr r1, [r5, #0x20]
	ldr r0, _080B5194 @ =0x0000FFFF
	cmp r1, r0
	bgt _080B51A8
	movs r2, #0x80
	lsls r2, r2, #3
	b _080B51A4
	.align 2, 0
_080B5194: .4byte 0x0000FFFF
_080B5198:
	ldr r1, [r5, #0x20]
	ldr r0, _080B51B4 @ =0x0000BFFF
	cmp r1, r0
	bgt _080B51A8
	movs r2, #0x80
	lsls r2, r2, #2
_080B51A4:
	adds r0, r1, r2
	str r0, [r5, #0x20]
_080B51A8:
	ldrh r0, [r5, #0x1e]
	ldrh r1, [r5, #0x1c]
	adds r0, r0, r1
	strh r0, [r5, #0x1c]
	b _080B51E2
	.align 2, 0
_080B51B4: .4byte 0x0000BFFF
_080B51B8:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	ble _080B51CC
	ldr r2, _080B51C8 @ =0xFFFFFC00
	adds r0, r0, r2
	str r0, [r5, #0x20]
	b _080B51E2
	.align 2, 0
_080B51C8: .4byte 0xFFFFFC00
_080B51CC:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080B51DA:
	adds r0, r5, #0
	bl sub_08000E14
	b _080B521C
_080B51E2:
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x15
	adds r1, r5, #0
	adds r1, #0x42
	movs r4, #0
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #9
	adds r1, #4
	strh r0, [r1]
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	ldr r2, [r5, #0x20]
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
_080B521C:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080B5224
sub_080B5224: @ 0x080B5224
	push {r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r4, [r5, #0x18]
	ldrb r1, [r5, #0xa]
	cmp r1, #1
	beq _080B52AE
	cmp r1, #1
	bgt _080B523C
	cmp r1, #0
	beq _080B5248
	b _080B53F0
_080B523C:
	cmp r1, #2
	beq _080B52CE
	cmp r1, #3
	bne _080B5246
	b _080B537C
_080B5246:
	b _080B53F0
_080B5248:
	ldr r0, _080B52F8 @ =0x0820B92C
	movs r1, #0x10
	bl sub_08068264
	adds r3, r5, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _080B52FC @ =0x08244220
	movs r2, #0x17
	ldrsb r2, [r4, r2]
	ldrb r3, [r3]
	adds r0, r5, #0
	bl sub_0803B924
	ldr r0, _080B5300 @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r0, r5, #0
	movs r1, #0x33
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x13
	strb r0, [r1]
	ldr r2, _080B5304 @ =sub_080B6B3C
	adds r0, r5, #0
	movs r1, #8
	movs r3, #0
	bl sub_0804277C
	ldr r1, _080B5308 @ =0x2810D8F8
	adds r0, r5, #0
	bl sub_08042884
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	subs r2, #0x1a
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	strb r0, [r5, #0xa]
_080B52AE:
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _080B52B6
	b _080B53D4
_080B52B6:
	movs r0, #0x6e
	bl sub_080D7910
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #2
	strb r0, [r5, #0xa]
_080B52CE:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r5, #0
	bl sub_0806D430
	mov r0, sp
	adds r1, r5, #0
	bl sub_080421AC
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #3
	bne _080B530C
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	b _080B5316
	.align 2, 0
_080B52F8: .4byte 0x0820B92C
_080B52FC: .4byte 0x08244220
_080B5300: .4byte sub_0803B9D0
_080B5304: .4byte sub_080B6B3C
_080B5308: .4byte 0x2810D8F8
_080B530C:
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
_080B5316:
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _080B53F0
	movs r0, #0x80
	lsls r0, r0, #0xd
	bl sub_0802D5EC
	ldr r4, [r5, #0x40]
	adds r4, r4, r0
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl sub_0802D5EC
	ldr r1, [r5, #0x44]
	adds r1, r1, r0
	ldr r0, _080B5374 @ =0xFFFC0000
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #1
	movs r3, #7
	bl sub_08045CEC
	adds r4, r0, #0
	cmp r4, #0
	beq _080B5368
	movs r0, #0x80
	lsls r0, r0, #6
	bl sub_0802D5EC
	ldr r1, _080B5378 @ =0xFFFF8000
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	rsbs r0, r0, #0
	cmp r0, #0
	bge _080B5364
	adds r0, #0x3f
_080B5364:
	asrs r0, r0, #6
	str r0, [r4, #0x54]
_080B5368:
	movs r0, #3
	strb r0, [r5, #0xa]
	movs r0, #8
	strb r0, [r5, #0xd]
	b _080B53F0
	.align 2, 0
_080B5374: .4byte 0xFFFC0000
_080B5378: .4byte 0xFFFF8000
_080B537C:
	ldrb r0, [r5, #0xd]
	ands r1, r0
	cmp r1, #0
	bne _080B53CE
	movs r0, #0x80
	lsls r0, r0, #0xe
	bl sub_0802D5EC
	ldr r4, [r5, #0x40]
	adds r4, r4, r0
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl sub_0802D5EC
	ldr r1, [r5, #0x44]
	adds r1, r1, r0
	ldr r0, _080B53DC @ =0xFFFC0000
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #5
	movs r3, #6
	bl sub_08045CEC
	adds r4, r0, #0
	cmp r4, #0
	beq _080B53CE
	movs r0, #1
	strb r0, [r4, #0xf]
	movs r0, #0x80
	lsls r0, r0, #6
	bl sub_0802D5EC
	ldr r1, _080B53E0 @ =0xFFFF8000
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	rsbs r0, r0, #0
	cmp r0, #0
	bge _080B53CA
	adds r0, #0x3f
_080B53CA:
	asrs r0, r0, #6
	str r0, [r4, #0x54]
_080B53CE:
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _080B53E4
_080B53D4:
	subs r0, #1
	strb r0, [r5, #0xd]
	b _080B53F0
	.align 2, 0
_080B53DC: .4byte 0xFFFC0000
_080B53E0: .4byte 0xFFFF8000
_080B53E4:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080B53F0:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080B53F8
sub_080B53F8: @ 0x080B53F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r6, [r7, #0x18]
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	beq _080B541C
	cmp r0, #1
	bhi _080B541C
	ldrh r1, [r6, #0x1e]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080B541C
	movs r0, #2
	strb r0, [r7, #0xa]
_080B541C:
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	beq _080B551A
	cmp r0, #1
	bgt _080B5432
	cmp r0, #0
	beq _080B5446
	movs r0, #0x58
	adds r0, r0, r7
	mov r8, r0
	b _080B5604
_080B5432:
	cmp r0, #2
	bne _080B5438
	b _080B55CE
_080B5438:
	cmp r0, #3
	bne _080B543E
	b _080B55E8
_080B543E:
	movs r1, #0x58
	adds r1, r1, r7
	mov r8, r1
	b _080B5604
_080B5446:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _080B5456
	b _080B55FC
_080B5456:
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
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0x14
	strb r0, [r1]
	ldr r0, _080B54F4 @ =0x0820B92C
	movs r1, #0x10
	bl sub_08068264
	adds r3, r7, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _080B54F8 @ =0x08244220
	movs r2, #0x17
	ldrsb r2, [r6, r2]
	ldrb r3, [r3]
	adds r0, r7, #0
	bl sub_0803B924
	ldr r0, _080B54FC @ =sub_080B6BF4
	str r0, [r7, #4]
	adds r0, r7, #0
	movs r1, #0x32
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r7, #0
	bl sub_0803F17C
	adds r2, r7, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #0x11
	str r0, [r7, #0x1c]
	movs r4, #0x40
	strb r4, [r7, #0xd]
	bl sub_08000AB0
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r5]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	ands r1, r4
	cmp r1, #0
	bne _080B5504
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r7, #0x20]
	ldr r0, _080B5500 @ =0xFFFFFE40
	b _080B550E
	.align 2, 0
_080B54F4: .4byte 0x0820B92C
_080B54F8: .4byte 0x08244220
_080B54FC: .4byte sub_080B6BF4
_080B5500: .4byte 0xFFFFFE40
_080B5504:
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r7, #0x20]
	movs r0, #0xe0
	lsls r0, r0, #1
_080B550E:
	str r0, [r7, #0x30]
	movs r0, #0x66
	bl sub_08013D60
	movs r0, #1
	strb r0, [r7, #0xa]
_080B551A:
	ldrb r1, [r7, #0xd]
	movs r0, #3
	ands r0, r1
	movs r3, #0x58
	adds r3, r3, r7
	mov r8, r3
	cmp r0, #0
	bne _080B55A4
	ldr r0, _080B55C4 @ =sub_080B5224
	bl sub_0806DFF8
	adds r2, r0, #0
	cmp r2, #0
	beq _080B55A4
	ldr r0, [r7, #0x40]
	str r0, [r2, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r2, #0x44]
	adds r3, r2, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	adds r4, r2, #0
	ldr r0, [r7, #0x20]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	movs r1, #0xb0
	muls r1, r0, r1
	ldr r0, [r7, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	adds r1, r4, #0
	adds r1, #0x46
	movs r0, #0x90
	strh r0, [r1]
	ldrb r0, [r7, #0xd]
	movs r3, #0x40
	subs r0, r3, r0
	lsls r0, r0, #9
	movs r1, #0x80
	lsls r1, r1, #8
	adds r2, r0, r1
	str r2, [r4, #0x48]
	mov r0, r8
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080B558A
	rsbs r0, r2, #0
	str r0, [r4, #0x48]
_080B558A:
	ldr r0, [r4, #0x48]
	rsbs r0, r0, #0
	cmp r0, #0
	bge _080B5594
	adds r0, #0x3f
_080B5594:
	asrs r0, r0, #6
	str r0, [r4, #0x50]
	str r6, [r4, #0x18]
	ldrb r0, [r7, #0xd]
	subs r0, r3, r0
	asrs r0, r0, #2
	adds r0, #8
	strb r0, [r4, #0xd]
_080B55A4:
	ldrb r0, [r7, #0xd]
	lsls r0, r0, #9
	bl sub_080009E4
	str r0, [r7, #0x24]
	ldr r0, [r7, #0x20]
	ldr r1, [r7, #0x30]
	adds r0, r0, r1
	str r0, [r7, #0x20]
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	beq _080B55C8
	subs r0, #1
	strb r0, [r7, #0xd]
	b _080B5604
	.align 2, 0
_080B55C4: .4byte sub_080B5224
_080B55C8:
	movs r0, #3
	strb r0, [r7, #0xa]
	b _080B5604
_080B55CE:
	ldr r0, [r7, #0x24]
	cmp r0, #0
	ble _080B55E8
	ldr r1, _080B55E4 @ =0xFFFFFC00
	adds r0, r0, r1
	str r0, [r7, #0x24]
	movs r3, #0x58
	adds r3, r3, r7
	mov r8, r3
	b _080B5604
	.align 2, 0
_080B55E4: .4byte 0xFFFFFC00
_080B55E8:
	movs r0, #0x66
	bl sub_08013E18
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080B55FC:
	adds r0, r7, #0
	bl sub_08000E14
	b _080B568E
_080B5604:
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x15
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #9
	adds r1, #4
	strh r0, [r1]
	ldr r0, [r7, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #0x11
	cmp r0, r1
	ble _080B562A
	adds r0, r1, #0
_080B562A:
	adds r6, r0, #0
	cmp r0, #0
	bge _080B5632
	adds r6, r0, #7
_080B5632:
	asrs r6, r6, #3
	cmp r6, #0
	bge _080B563A
	adds r6, #0x1f
_080B563A:
	asrs r6, r6, #5
	ldr r0, [r7, #0x20]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	lsls r0, r0, #5
	str r0, [r7, #0x28]
	ldr r0, [r7, #0x20]
	bl sub_080009E4
	adds r4, r0, #0
	lsls r4, r4, #5
	str r4, [r7, #0x2c]
	ldr r0, [r7, #0x28]
	movs r5, #0x84
	lsls r5, r5, #9
	adds r1, r5, #0
	bl __divsi3
	muls r0, r6, r0
	str r0, [r7, #0x28]
	adds r0, r4, #0
	adds r1, r5, #0
	bl __divsi3
	muls r0, r6, r0
	str r0, [r7, #0x2c]
	ldr r0, [r7, #0x20]
	ldr r2, [r7, #0x24]
	movs r1, #0
	str r1, [sp]
	mov r3, r8
	ldrb r1, [r3]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r6, #0
	movs r3, #0
	bl sub_0803E058
_080B568E:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B569C
sub_080B569C: @ 0x080B569C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r3, [r4, #0xb]
	cmp r3, #1
	beq _080B56C0
	cmp r3, #1
	bgt _080B56B2
	cmp r3, #0
	beq _080B56B8
	b _080B5774
_080B56B2:
	cmp r3, #2
	beq _080B570C
	b _080B5774
_080B56B8:
	movs r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0x40
	strb r0, [r4, #0xd]
_080B56C0:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _080B56FA
	cmp r0, #0x38
	bne _080B56DA
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x40
	movs r2, #0x80
	movs r3, #1
	bl sub_080B4FB0
_080B56DA:
	ldrb r0, [r4, #0xd]
	cmp r0, #0x18
	bne _080B56F2
	movs r1, #0xe0
	lsls r1, r1, #1
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #0x80
	movs r3, #0
	bl sub_080B4FB0
_080B56F2:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	b _080B5774
_080B56FA:
	movs r0, #2
	strb r0, [r4, #0xb]
	movs r0, #0x40
	strb r0, [r4, #0xd]
	movs r0, #0xea
	lsls r0, r0, #1
	bl sub_080D7910
	b _080B5774
_080B570C:
	ldr r0, [r4, #0x44]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldrb r0, [r4, #0xd]
	adds r5, r0, #0
	cmp r5, #0
	beq _080B5764
	subs r0, #1
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	ldrb r0, [r4, #0xd]
	lsrs r4, r0, #3
	adds r0, r3, #0
	subs r0, #0xa
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r5, _080B5760 @ =gEwramData
	ldr r0, [r5]
	movs r2, #0xfc
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r2, r0, r1
	ldrb r0, [r2]
	cmp r0, r4
	beq _080B5774
	strb r4, [r2]
	ldr r0, [r5]
	lsls r1, r1, #2
	movs r2, #0xf8
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r4, #0
	movs r2, #1
	bl sub_0803C7B4
	b _080B5774
	.align 2, 0
_080B5760: .4byte gEwramData
_080B5764:
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	strb r3, [r4, #0xa]
	strb r5, [r4, #0xb]
_080B5774:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080B577C
sub_080B577C: @ 0x080B577C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _080B579E
	cmp r0, #1
	bgt _080B5790
	cmp r0, #0
	beq _080B579A
	b _080B5858
_080B5790:
	cmp r0, #2
	beq _080B581C
	cmp r0, #3
	beq _080B5844
	b _080B5858
_080B579A:
	movs r0, #1
	strb r0, [r4, #0xb]
_080B579E:
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #8
	bl sub_080009E4
	cmp r0, #0
	bge _080B57AC
	adds r0, #7
_080B57AC:
	asrs r1, r0, #3
	ldr r0, [r4, #0x44]
	subs r0, r0, r1
	str r0, [r4, #0x44]
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	bl sub_0806CD38
	ldr r1, [r4, #0x40]
	subs r0, r0, r1
	cmp r0, #0
	bge _080B57D8
	adds r0, r4, #0
	bl sub_0806CD38
	ldr r1, [r4, #0x40]
	subs r1, r1, r0
	asrs r1, r1, #0x10
	rsbs r0, r1, #0
	b _080B57E4
_080B57D8:
	adds r0, r4, #0
	bl sub_0806CD38
	ldr r1, [r4, #0x40]
	subs r0, r0, r1
	asrs r0, r0, #0x10
_080B57E4:
	cmp r0, #0
	bge _080B57EA
	adds r0, #0xf
_080B57EA:
	asrs r0, r0, #4
	adds r0, #4
	strb r0, [r4, #0x12]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _080B57FC
	movs r0, #0
	b _080B5802
_080B57FC:
	cmp r0, #8
	ble _080B5804
	movs r0, #8
_080B5802:
	strb r0, [r4, #0x12]
_080B5804:
	movs r0, #5
	strb r0, [r4, #0x18]
	movs r0, #0x34
	ldrsh r1, [r4, r0]
	ldr r0, _080B5818 @ =0x000007CF
	cmp r1, r0
	bgt _080B5858
	movs r0, #2
	strb r0, [r4, #0xb]
	b _080B5858
	.align 2, 0
_080B5818: .4byte 0x000007CF
_080B581C:
	movs r0, #7
	strb r0, [r4, #0x18]
	ldrh r1, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080B5858
	ldr r0, _080B5840 @ =0x0000FFDF
	ands r0, r1
	movs r1, #0
	strh r0, [r4, #0x1e]
	movs r0, #4
	strb r0, [r4, #0x12]
	movs r0, #3
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xb]
	b _080B5858
	.align 2, 0
_080B5840: .4byte 0x0000FFDF
_080B5844:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _080B584E
	subs r0, #1
	b _080B5856
_080B584E:
	movs r0, #1
	strb r0, [r4, #0x18]
	strb r0, [r4, #0xb]
	movs r0, #0xf0
_080B5856:
	strb r0, [r4, #0xd]
_080B5858:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B5860
sub_080B5860: @ 0x080B5860
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _080B58E2
	cmp r0, #1
	bgt _080B5874
	cmp r0, #0
	beq _080B587A
	b _080B5944
_080B5874:
	cmp r0, #2
	beq _080B5928
	b _080B5944
_080B587A:
	ldr r0, _080B58F0 @ =sub_080B5094
	bl sub_0806DFF8
	adds r2, r0, #0
	cmp r2, #0
	beq _080B589C
	ldr r0, [r4, #0x40]
	str r0, [r2, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r2, #0x44]
	adds r3, r2, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	str r4, [r2, #0x18]
_080B589C:
	ldr r0, _080B58F0 @ =sub_080B5094
	bl sub_0806DFF8
	adds r2, r0, #0
	cmp r2, #0
	beq _080B58C4
	ldr r0, [r4, #0x40]
	str r0, [r2, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r2, #0x44]
	adds r3, r2, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	adds r1, r2, #0
	movs r0, #1
	strb r0, [r1, #0xb]
	str r4, [r1, #0x18]
_080B58C4:
	ldr r0, _080B58F4 @ =0x000001D5
	bl sub_080D7910
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xa
	strb r0, [r1]
	ldr r1, _080B58F8 @ =0x1010F0F0
	adds r0, r4, #0
	bl sub_080428F0
	movs r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0x60
	strb r0, [r4, #0xd]
_080B58E2:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _080B58FC
	subs r0, #1
	strb r0, [r4, #0xd]
	b _080B5944
	.align 2, 0
_080B58F0: .4byte sub_080B5094
_080B58F4: .4byte 0x000001D5
_080B58F8: .4byte 0x1010F0F0
_080B58FC:
	ldr r0, _080B5924 @ =sub_080B53F8
	bl sub_0806DFF8
	adds r2, r0, #0
	cmp r2, #0
	beq _080B591E
	ldr r0, [r4, #0x40]
	str r0, [r2, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r2, #0x44]
	adds r3, r2, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	str r4, [r2, #0x18]
_080B591E:
	movs r0, #2
	b _080B5942
	.align 2, 0
_080B5924: .4byte sub_080B53F8
_080B5928:
	movs r0, #0x34
	ldrsh r1, [r4, r0]
	ldr r0, _080B5938 @ =0x000003E7
	cmp r1, r0
	bgt _080B593C
	movs r0, #0x50
	b _080B593E
	.align 2, 0
_080B5938: .4byte 0x000003E7
_080B593C:
	movs r0, #0x80
_080B593E:
	strb r0, [r4, #0xd]
	movs r0, #1
_080B5942:
	strb r0, [r4, #0xb]
_080B5944:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B594C
sub_080B594C: @ 0x080B594C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	ldrb r0, [r7, #0xb]
	cmp r0, #6
	bls _080B595A
	b _080B5C2E
_080B595A:
	lsls r0, r0, #2
	ldr r1, _080B5964 @ =_080B5968
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B5964: .4byte _080B5968
_080B5968: @ jump table
	.4byte _080B5984 @ case 0
	.4byte _080B59C4 @ case 1
	.4byte _080B5A20 @ case 2
	.4byte _080B5A32 @ case 3
	.4byte _080B5AA0 @ case 4
	.4byte _080B5BD0 @ case 5
	.4byte _080B5BF0 @ case 6
_080B5984:
	ldr r0, _080B5A18 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080B5A1C @ =0x0000042C
	adds r0, r0, r1
	ldr r6, [r0]
	movs r0, #0x10
	ands r6, r0
	cmp r6, #0
	bne _080B59BC
	movs r5, #0x80
	lsls r5, r5, #9
	str r6, [sp]
	movs r4, #4
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
_080B59BC:
	movs r0, #1
	strb r0, [r7, #0xb]
	movs r0, #4
	strb r0, [r7, #0xd]
_080B59C4:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	beq _080B59CC
	b _080B5C2A
_080B59CC:
	ldr r0, _080B5A18 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _080B5A1C @ =0x0000042C
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080B5A04
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
_080B5A04:
	movs r0, #0x20
	strb r0, [r7, #0xd]
	movs r0, #3
	strb r0, [r7, #0xb]
	movs r0, #0xeb
	lsls r0, r0, #1
	bl sub_080D7910
	b _080B5C2E
	.align 2, 0
_080B5A18: .4byte gEwramData
_080B5A1C: .4byte 0x0000042C
_080B5A20:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	beq _080B5A28
	b _080B5C2A
_080B5A28:
	movs r0, #0x80
	strb r0, [r7, #0xd]
	movs r0, #3
	strb r0, [r7, #0xb]
	b _080B5C2E
_080B5A32:
	ldrb r1, [r7, #0xd]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080B5A8E
	adds r0, r7, #0
	adds r0, #0x42
	movs r4, #0
	ldrsh r0, [r0, r4]
	subs r0, #0x10
	lsls r2, r0, #0x10
	adds r0, r7, #0
	adds r0, #0x46
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #0x10
	lsls r1, r0, #0x10
	adds r0, r2, #0
	movs r2, #0xd
	movs r3, #8
	bl sub_08045CEC
	adds r4, r0, #0
	cmp r4, #0
	beq _080B5A8E
	bl sub_08000A90
	movs r5, #1
	ands r0, r5
	adds r4, #0x58
	lsls r0, r0, #6
	ldrb r2, [r4]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	bl sub_08000A90
	ands r0, r5
	lsls r0, r0, #7
	ldrb r2, [r4]
	movs r1, #0x7f
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
_080B5A8E:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	beq _080B5A96
	b _080B5C2A
_080B5A96:
	movs r0, #0x80
	strb r0, [r7, #0xd]
	movs r0, #4
	strb r0, [r7, #0xb]
	b _080B5C2E
_080B5AA0:
	ldrb r0, [r7, #0xd]
	cmp r0, #0x20
	bls _080B5B56
	adds r0, r7, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r0, #0x15
	lsls r2, r0, #0x10
	adds r0, r7, #0
	adds r0, #0x46
	movs r4, #0
	ldrsh r0, [r0, r4]
	subs r0, #9
	lsls r1, r0, #0x10
	adds r0, r2, #0
	movs r2, #0xf
	movs r3, #7
	bl sub_08045CEC
	adds r4, r0, #0
	cmp r4, #0
	beq _080B5B56
	bl sub_08000AB0
	movs r1, #0xff
	ands r1, r0
	lsls r5, r1, #8
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r5, r1
	bl sub_080009E4
	ldrb r1, [r7, #0xd]
	muls r0, r1, r0
	cmp r0, #0
	bge _080B5AEC
	adds r0, #0x1f
_080B5AEC:
	asrs r0, r0, #5
	str r0, [r4, #0x48]
	adds r0, r5, #0
	bl sub_080009E4
	ldrb r1, [r7, #0xd]
	muls r1, r0, r1
	cmp r1, #0
	bge _080B5B00
	adds r1, #0x1f
_080B5B00:
	asrs r1, r1, #5
	str r1, [r4, #0x4c]
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bge _080B5B0C
	adds r0, #0x1f
_080B5B0C:
	asrs r0, r0, #5
	str r0, [r4, #0x50]
	adds r0, r1, #0
	cmp r0, #0
	bge _080B5B18
	adds r0, #0x1f
_080B5B18:
	asrs r0, r0, #5
	str r0, [r4, #0x54]
	bl sub_08000A90
	movs r5, #1
	ands r0, r5
	adds r4, #0x58
	lsls r0, r0, #6
	ldrb r2, [r4]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	bl sub_08000A90
	ands r0, r5
	lsls r0, r0, #7
	ldrb r2, [r4]
	movs r1, #0x7f
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	ldrb r1, [r7, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080B5B56
	movs r0, #0x77
	bl sub_080D7910
_080B5B56:
	ldr r1, [r7, #0x20]
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	ble _080B5B66
	ldr r2, _080B5BB8 @ =0xFFFFFF00
	adds r0, r1, r2
	str r0, [r7, #0x20]
_080B5B66:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	beq _080B5BC0
	subs r0, #1
	strb r0, [r7, #0xd]
	adds r0, r7, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	ldrb r1, [r7, #0xd]
	lsrs r1, r1, #4
	movs r0, #7
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r3, #0
	subs r0, #0xa
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r5, _080B5BBC @ =gEwramData
	ldr r0, [r5]
	movs r4, #0xfc
	lsls r4, r4, #2
	adds r0, r0, r4
	adds r4, r0, r1
	ldrb r0, [r4]
	cmp r0, r2
	beq _080B5C2E
	strb r2, [r4]
	ldr r0, [r5]
	lsls r1, r1, #2
	movs r4, #0xf8
	lsls r4, r4, #2
	adds r0, r0, r4
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r2, #0
	movs r2, #1
	bl sub_0803C7B4
	b _080B5C2E
	.align 2, 0
_080B5BB8: .4byte 0xFFFFFF00
_080B5BBC: .4byte gEwramData
_080B5BC0:
	ldrh r1, [r7, #0x1e]
	movs r0, #4
	orrs r0, r1
	strh r0, [r7, #0x1e]
	movs r0, #5
	strb r0, [r7, #0xb]
	movs r0, #0x20
	b _080B5C2C
_080B5BD0:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	bne _080B5C2A
	movs r0, #0x7c
	bl sub_080D7910
	movs r0, #0
	movs r1, #0x20
	movs r2, #0
	movs r3, #7
	bl sub_08011FC0
	movs r0, #6
	strb r0, [r7, #0xb]
	movs r0, #0x20
	b _080B5C2C
_080B5BF0:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	bne _080B5C2A
	adds r4, r7, #0
	adds r4, #0x42
	movs r1, #0
	ldrsh r0, [r4, r1]
	subs r0, #0x10
	adds r1, r7, #0
	adds r1, #0x46
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r2, r7, #0
	adds r2, #0x36
	ldrb r2, [r2]
	movs r3, #6
	bl sub_080D7308
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r1, #1
	str r1, [sp]
	movs r1, #0x20
	movs r2, #6
	movs r3, #0x60
	bl sub_080D6EF8
	movs r0, #1
	b _080B5C30
_080B5C2A:
	subs r0, #1
_080B5C2C:
	strb r0, [r7, #0xd]
_080B5C2E:
	movs r0, #0
_080B5C30:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080B5C38
sub_080B5C38: @ 0x080B5C38
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080B5C88
	ldr r0, _080B5C78 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _080B5C7C @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080B5C88
	ldr r1, _080B5C80 @ =0x0000037E
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080B5C94
	ldr r1, _080B5C84 @ =0x0000042C
	adds r0, r2, r1
	ldr r1, [r0]
	movs r2, #2
	orrs r1, r2
	str r1, [r0]
	adds r0, r4, #0
	bl sub_080B67A8
	b _080B5DAC
	.align 2, 0
_080B5C78: .4byte gEwramData
_080B5C7C: .4byte 0x000004CC
_080B5C80: .4byte 0x0000037E
_080B5C84: .4byte 0x0000042C
_080B5C88:
	adds r0, r4, #0
	bl sub_080B45C0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B5C9C
_080B5C94:
	adds r0, r4, #0
	bl sub_08000E14
	b _080B5DAC
_080B5C9C:
	ldr r0, _080B5D64 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080B5CB6
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
_080B5CB6:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0806B04C
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x1e
	strb r0, [r1]
	movs r0, #4
	strb r0, [r4, #0x12]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	ldr r0, _080B5D68 @ =sub_080B41E0
	bl sub_0806DFF8
	adds r2, r0, #0
	cmp r2, #0
	beq _080B5CFC
	ldr r0, [r4, #0x40]
	str r0, [r2, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r2, #0x44]
	adds r3, r2, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	str r4, [r2, #0x18]
_080B5CFC:
	ldr r0, _080B5D6C @ =sub_080B4370
	bl sub_0806DFF8
	adds r2, r0, #0
	cmp r2, #0
	beq _080B5D1E
	ldr r0, [r4, #0x40]
	str r0, [r2, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r2, #0x44]
	adds r3, r2, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	str r4, [r2, #0x18]
_080B5D1E:
	ldr r0, _080B5D70 @ =sub_080B44C4
	bl sub_0806DFF8
	adds r2, r0, #0
	cmp r2, #0
	beq _080B5D40
	ldr r0, [r4, #0x40]
	str r0, [r2, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r2, #0x44]
	adds r3, r2, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	str r4, [r2, #0x18]
_080B5D40:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r5, _080B5D64 @ =gEwramData
	ldr r0, [r5]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B5D74
	movs r0, #5
	strb r0, [r4, #0xa]
	b _080B5DAC
	.align 2, 0
_080B5D64: .4byte gEwramData
_080B5D68: .4byte sub_080B41E0
_080B5D6C: .4byte sub_080B4370
_080B5D70: .4byte sub_080B44C4
_080B5D74:
	ldr r3, _080B5DB4 @ =sub_080B6AE8
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0
	bl sub_0804277C
	ldr r1, _080B5DB8 @ =0x1010F010
	adds r0, r4, #0
	bl sub_080428F0
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_08034498
	ldr r1, [r5]
	ldr r0, _080B5DBC @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #2
	orrs r0, r2
	str r0, [r1]
_080B5DAC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B5DB4: .4byte sub_080B6AE8
_080B5DB8: .4byte 0x1010F010
_080B5DBC: .4byte 0x0000042C

	thumb_func_start sub_080B5DC0
sub_080B5DC0: @ 0x080B5DC0
	push {r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	beq _080B5DD2
	adds r0, r4, #0
	bl sub_0806AE54
_080B5DD2:
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bhi _080B5E42
	lsls r0, r0, #2
	ldr r1, _080B5DE4 @ =_080B5DE8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B5DE4: .4byte _080B5DE8
_080B5DE8: @ jump table
	.4byte _080B5E00 @ case 0
	.4byte _080B5E10 @ case 1
	.4byte _080B5E18 @ case 2
	.4byte _080B5E20 @ case 3
	.4byte _080B5E30 @ case 4
	.4byte _080B5E28 @ case 5
_080B5E00:
	movs r0, #0x11
	bl sub_08013CF0
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xb]
	b _080B5E42
_080B5E10:
	adds r0, r4, #0
	bl sub_080B569C
	b _080B5E42
_080B5E18:
	adds r0, r4, #0
	bl sub_080B577C
	b _080B5E42
_080B5E20:
	adds r0, r4, #0
	bl sub_080B5860
	b _080B5E42
_080B5E28:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080B5E8A
_080B5E30:
	adds r0, r4, #0
	bl sub_080B594C
	cmp r0, #0
	beq _080B5E42
	adds r0, r4, #0
	bl sub_08000E14
	b _080B5E8A
_080B5E42:
	ldrh r0, [r4, #0x1e]
	ldr r1, _080B5E94 @ =0x0000FFFE
	ands r1, r0
	strh r1, [r4, #0x1e]
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	beq _080B5E70
	movs r1, #8
	rsbs r1, r1, #0
	movs r3, #0x80
	lsls r3, r3, #1
	movs r0, #0xb0
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _080B5E70
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
_080B5E70:
	ldr r0, _080B5E98 @ =0x085287C4
	movs r1, #0x12
	ldrsb r1, [r4, r1]
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r0, r4, #0
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
_080B5E8A:
	add sp, #0x14
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B5E94: .4byte 0x0000FFFE
_080B5E98: .4byte 0x085287C4

	thumb_func_start sub_080B5E9C
sub_080B5E9C: @ 0x080B5E9C
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, [r4, #0x18]
	ldrb r0, [r3, #0xa]
	cmp r0, #0xa
	bne _080B5EAC
	movs r0, #2
	strb r0, [r4, #0xa]
_080B5EAC:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080B5EE8
	cmp r0, #1
	bgt _080B5EBC
	cmp r0, #0
	beq _080B5EC2
	b _080B5F10
_080B5EBC:
	cmp r0, #2
	beq _080B5F00
	b _080B5F10
_080B5EC2:
	ldr r1, _080B5F08 @ =0x08244D4C
	movs r2, #0x17
	ldrsb r2, [r3, r2]
	adds r0, r3, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	ldrb r1, [r4, #0xb]
	adds r0, r4, #0
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _080B5F0C @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	strb r0, [r4, #0xa]
_080B5EE8:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D3D8
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B5F10
_080B5F00:
	adds r0, r4, #0
	bl sub_08000E14
	b _080B5F16
	.align 2, 0
_080B5F08: .4byte 0x08244D4C
_080B5F0C: .4byte sub_0803B9D0
_080B5F10:
	adds r0, r4, #0
	bl sub_0803F17C
_080B5F16:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B5F1C
sub_080B5F1C: @ 0x080B5F1C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x18]
	ldrb r0, [r4, #0xa]
	cmp r0, #0xa
	bne _080B5F2C
	movs r0, #6
	strb r0, [r5, #0xa]
_080B5F2C:
	ldrb r0, [r5, #0xa]
	cmp r0, #6
	bls _080B5F34
	b _080B60E0
_080B5F34:
	lsls r0, r0, #2
	ldr r1, _080B5F40 @ =_080B5F44
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B5F40: .4byte _080B5F44
_080B5F44: @ jump table
	.4byte _080B5F60 @ case 0
	.4byte _080B5F9A @ case 1
	.4byte _080B5FF4 @ case 2
	.4byte _080B600E @ case 3
	.4byte _080B602A @ case 4
	.4byte _080B6074 @ case 5
	.4byte _080B60D8 @ case 6
_080B5F60:
	ldr r1, _080B5FEC @ =0x08244D4C
	movs r2, #0x17
	ldrsb r2, [r4, r2]
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r5, #0
	bl sub_0803B924
	adds r0, r5, #0
	movs r1, #1
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	bl sub_08000A90
	movs r1, #7
	ands r0, r1
	adds r1, r5, #0
	adds r1, #0x6f
	strb r0, [r1]
	ldr r0, _080B5FF0 @ =sub_0803B9D0
	str r0, [r5, #4]
	subs r1, #0x13
	movs r0, #9
	strb r0, [r1]
	movs r0, #1
	strb r0, [r5, #0xa]
_080B5F9A:
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _080B5FA2
	b _080B60E0
_080B5FA2:
	adds r6, r5, #0
	adds r6, #0x20
	ldrb r1, [r6]
	cmp r1, #0xf
	ble _080B5FB0
	movs r0, #0x1f
	subs r1, r0, r1
_080B5FB0:
	lsls r4, r1, #0xb
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	str r0, [r5, #0x48]
	cmp r0, #0
	bge _080B5FC4
	adds r0, #3
_080B5FC4:
	asrs r0, r0, #2
	str r0, [r5, #0x50]
	adds r0, r4, #0
	bl sub_080009E4
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r5, #0x4c]
	cmp r0, #0
	bge _080B5FDC
	adds r0, #3
_080B5FDC:
	asrs r0, r0, #2
	str r0, [r5, #0x54]
	movs r0, #2
	strb r0, [r5, #0xa]
	ldrb r0, [r6]
	strb r0, [r5, #0xd]
	b _080B60E0
	.align 2, 0
_080B5FEC: .4byte 0x08244D4C
_080B5FF0: .4byte sub_0803B9D0
_080B5FF4:
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	bne _080B601E
	adds r0, r5, #0
	movs r1, #2
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0x50
	strb r0, [r5, #0xd]
	movs r0, #3
	strb r0, [r5, #0xa]
_080B600E:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r5, #0
	bl sub_0806D3D8
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _080B6024
_080B601E:
	subs r0, #1
	strb r0, [r5, #0xd]
	b _080B60E0
_080B6024:
	movs r0, #4
	strb r0, [r5, #0xa]
	b _080B60E0
_080B602A:
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bne _080B60E0
	bl sub_08000A90
	strh r0, [r5, #0x1c]
	adds r4, r5, #0
	adds r4, #0x20
	ldrb r0, [r4]
	adds r0, #0x80
	strh r0, [r5, #0x1e]
	ldr r2, _080B6070 @ =0x08119428
	ldrb r3, [r4]
	movs r1, #0xf
	adds r0, r1, #0
	ands r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r3, r5, #0
	adds r3, #0x4a
	strh r0, [r3]
	ldrb r0, [r4]
	ands r1, r0
	lsls r1, r1, #2
	adds r2, #2
	adds r1, r1, r2
	ldrh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x4e
	strh r0, [r1]
	movs r0, #5
	strb r0, [r5, #0xa]
	b _080B60E0
	.align 2, 0
_080B6070: .4byte 0x08119428
_080B6074:
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r1, [r5, #0x1c]
	adds r0, r0, r1
	strh r0, [r5, #0x1c]
	movs r3, #0x1c
	ldrsh r0, [r5, r3]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	ldr r1, [r4, #0x40]
	ldr r2, [r5, #0x48]
	adds r1, r1, r2
	movs r3, #0x1e
	ldrsh r2, [r5, r3]
	muls r0, r2, r0
	adds r1, r1, r0
	str r1, [r5, #0x40]
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	bl sub_080009E4
	ldr r1, [r4, #0x44]
	ldr r2, [r5, #0x4c]
	adds r1, r1, r2
	movs r3, #0x1e
	ldrsh r2, [r5, r3]
	muls r0, r2, r0
	adds r1, r1, r0
	str r1, [r5, #0x44]
	ldrh r2, [r5, #0x1e]
	lsls r1, r2, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0x20
	ble _080B60C6
	asrs r0, r1, #0x15
	subs r0, r2, r0
	strh r0, [r5, #0x1e]
_080B60C6:
	ldrh r0, [r5, #0x1e]
	subs r0, #1
	strh r0, [r5, #0x1e]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080B60E0
	movs r0, #6
	strb r0, [r5, #0xa]
	b _080B60E0
_080B60D8:
	adds r0, r5, #0
	bl sub_08000E14
	b _080B60E6
_080B60E0:
	adds r0, r5, #0
	bl sub_0803F17C
_080B60E6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080B60EC
sub_080B60EC: @ 0x080B60EC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r6, [r4, #0x18]
	ldrb r0, [r6, #0xa]
	cmp r0, #0xa
	bne _080B60FC
	movs r0, #5
	strb r0, [r4, #0xa]
_080B60FC:
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bls _080B6104
	b _080B628A
_080B6104:
	lsls r0, r0, #2
	ldr r1, _080B6110 @ =_080B6114
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B6110: .4byte _080B6114
_080B6114: @ jump table
	.4byte _080B612C @ case 0
	.4byte _080B615E @ case 1
	.4byte _080B6190 @ case 2
	.4byte _080B6224 @ case 3
	.4byte _080B6260 @ case 4
	.4byte _080B6282 @ case 5
_080B612C:
	ldr r1, _080B616C @ =0x08244D4C
	movs r2, #0x17
	ldrsb r2, [r6, r2]
	adds r0, r6, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #3
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _080B6170 @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x1a
	strb r0, [r1]
	movs r0, #1
	strb r0, [r4, #0xa]
	movs r0, #0x10
	strb r0, [r4, #0xd]
_080B615E:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _080B6174
	subs r0, #1
	strb r0, [r4, #0xd]
	b _080B61A4
	.align 2, 0
_080B616C: .4byte 0x08244D4C
_080B6170: .4byte sub_0803B9D0
_080B6174:
	adds r0, r4, #0
	movs r1, #4
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #2
	strb r0, [r4, #0xa]
	movs r0, #0x30
	strb r0, [r4, #0xd]
	adds r0, #0xd2
	bl sub_080D7910
	b _080B628A
_080B6190:
	ldrb r0, [r4, #0xd]
	adds r5, r0, #0
	cmp r5, #0
	beq _080B61F8
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bls _080B628A
_080B61A4:
	adds r0, r6, #0
	adds r0, #0x2c
	ldrb r6, [r0]
	ldr r2, _080B61F0 @ =0x085287D6
	ldrb r0, [r4, #0xd]
	lsrs r0, r0, #1
	movs r1, #3
	ands r0, r1
	adds r0, r0, r2
	ldrb r3, [r0]
	adds r0, r6, #0
	subs r0, #0xa
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r5, _080B61F4 @ =gEwramData
	ldr r0, [r5]
	movs r2, #0xfc
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r2, r0, r1
	ldrb r0, [r2]
	cmp r0, r3
	beq _080B628A
	strb r3, [r2]
	ldr r0, [r5]
	lsls r1, r1, #2
	movs r2, #0xf8
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r3, #0
	movs r2, #1
	adds r3, r6, #0
	bl sub_0803C7B4
	b _080B628A
	.align 2, 0
_080B61F0: .4byte 0x085287D6
_080B61F4: .4byte gEwramData
_080B61F8:
	adds r0, r4, #0
	movs r1, #0xe
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #3
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xd]
	ldr r0, _080B621C @ =0xFFFE1000
	str r0, [r4, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #4
	str r0, [r4, #0x54]
	ldr r0, _080B6220 @ =0x00000101
	bl sub_080D7910
	b _080B628A
	.align 2, 0
_080B621C: .4byte 0xFFFE1000
_080B6220: .4byte 0x00000101
_080B6224:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D460
	ldrb r0, [r4, #0xd]
	cmp r0, #0x4f
	bhi _080B623A
	adds r0, #1
	strb r0, [r4, #0xd]
	b _080B628A
_080B623A:
	movs r0, #0
	str r0, [r4, #0x4c]
	str r0, [r4, #0x54]
	adds r0, r4, #0
	movs r1, #6
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #4
	strb r0, [r4, #0xa]
	movs r0, #0xc0
	lsls r0, r0, #0xb
	str r0, [r4, #0x48]
	ldr r0, _080B625C @ =0xFFFF8000
	str r0, [r4, #0x50]
	b _080B628A
	.align 2, 0
_080B625C: .4byte 0xFFFF8000
_080B6260:
	ldr r1, [r4, #0x48]
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r1, r0
	ble _080B6274
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D430
_080B6274:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B628A
_080B6282:
	adds r0, r4, #0
	bl sub_08000E14
	b _080B6290
_080B628A:
	adds r0, r4, #0
	bl sub_0803F17C
_080B6290:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B6298
sub_080B6298: @ 0x080B6298
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4, #0x18]
	mov r8, r0
	ldr r7, [r4, #0x14]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080B62BE
	mov r1, r8
	ldrb r0, [r1, #0xa]
	cmp r0, #0xa
	bne _080B62C2
_080B62BE:
	movs r0, #4
	strb r0, [r4, #0xa]
_080B62C2:
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bls _080B62CA
	b _080B6460
_080B62CA:
	lsls r0, r0, #2
	ldr r1, _080B62D4 @ =_080B62D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B62D4: .4byte _080B62D8
_080B62D8: @ jump table
	.4byte _080B62EC @ case 0
	.4byte _080B6358 @ case 1
	.4byte _080B636E @ case 2
	.4byte _080B6460 @ case 3
	.4byte _080B643C @ case 4
_080B62EC:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _080B62FC
	b _080B6458
_080B62FC:
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
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldr r1, _080B6350 @ =0x08244D4C
	mov r3, r8
	movs r2, #0x17
	ldrsb r2, [r3, r2]
	adds r0, r7, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _080B6354 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	strb r0, [r4, #0xa]
	b _080B6460
	.align 2, 0
_080B6350: .4byte 0x08244D4C
_080B6354: .4byte sub_0803B9D0
_080B6358:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #8
	beq _080B6364
	b _080B6460
_080B6364:
	movs r0, #2
	strb r0, [r4, #0xa]
	movs r0, #0x10
	strb r0, [r4, #0xd]
	b _080B6460
_080B636E:
	ldrb r1, [r4, #0xd]
	cmp r1, #0
	beq _080B63EC
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080B63DC
	bl sub_08000A90
	adds r2, r4, #0
	adds r2, #0x42
	ldr r3, _080B63E4 @ =0x0000FFF8
	adds r1, r3, #0
	ldrh r2, [r2]
	adds r1, r1, r2
	movs r2, #7
	ands r0, r2
	adds r1, r1, r0
	lsls r1, r1, #0x10
	asrs r6, r1, #0x10
	adds r0, r4, #0
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0x16
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	ldr r2, _080B63E8 @ =sub_080B5E9C
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r1, r0, #0
	cmp r1, #0
	beq _080B63DC
	mov r0, r8
	str r0, [r1, #0x18]
	movs r0, #0xc
	strb r0, [r1, #0xb]
	adds r0, r1, #0
	adds r0, #0x42
	strh r6, [r0]
	adds r0, #4
	strh r5, [r0]
	adds r3, r1, #0
	adds r3, #0x5c
	movs r0, #0x1c
	strb r0, [r3]
	adds r2, r1, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x14
	strb r0, [r3]
_080B63DC:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	b _080B6460
	.align 2, 0
_080B63E4: .4byte 0x0000FFF8
_080B63E8: .4byte sub_080B5E9C
_080B63EC:
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r6, [r0, r1]
	adds r0, #4
	ldrh r0, [r0]
	adds r0, #0x18
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	ldr r2, _080B6438 @ =sub_080B5E9C
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r2, r0, #0
	cmp r2, #0
	beq _080B6432
	mov r3, r8
	str r3, [r2, #0x18]
	movs r0, #0xb
	strb r0, [r2, #0xb]
	adds r0, r2, #0
	adds r0, #0x42
	strh r6, [r0]
	adds r0, #4
	strh r5, [r0]
	adds r1, r2, #0
	adds r1, #0x5c
	movs r0, #0x1c
	strb r0, [r1]
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_080B6432:
	movs r0, #3
	strb r0, [r4, #0xa]
	b _080B6460
	.align 2, 0
_080B6438: .4byte sub_080B5E9C
_080B643C:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B6458
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080B6458:
	adds r0, r4, #0
	bl sub_08000E14
	b _080B6516
_080B6460:
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
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	mov r8, r2
	cmp r0, #0
	beq _080B6490
	movs r0, #0x1c
	ldrsh r6, [r7, r0]
	b _080B649A
_080B6490:
	movs r1, #0x1c
	ldrsh r0, [r7, r1]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r6, r0, r3
_080B649A:
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bge _080B64A8
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r5, r0, #0
	b _080B64AA
_080B64A8:
	asrs r5, r0, #0x10
_080B64AA:
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r6, r1
	bl sub_080009E4
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, [r7, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	adds r0, r6, #0
	bl sub_080009E4
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, [r7, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	movs r3, #0x1c
	ldrsh r0, [r7, r3]
	movs r2, #0x80
	lsls r2, r2, #9
	mov r1, r8
	ldrb r3, [r1]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1f
	movs r1, #0
	str r1, [sp]
	adds r1, r4, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
	adds r0, r4, #0
	adds r0, #0x6d
	adds r2, r7, #0
	adds r2, #0x38
	ldrb r0, [r0]
	ldrb r3, [r2]
	cmp r0, r3
	beq _080B6510
	ldrb r1, [r2]
	adds r0, r4, #0
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
_080B6510:
	adds r0, r4, #0
	bl sub_0803F17C
_080B6516:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B6524
sub_080B6524: @ 0x080B6524
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r4, [r6, #0x18]
	ldrb r0, [r4, #0xa]
	cmp r0, #0xa
	bne _080B6536
	movs r0, #5
	strb r0, [r6, #0xa]
_080B6536:
	ldrb r0, [r6, #0xa]
	cmp r0, #5
	bls _080B653E
	b _080B6750
_080B653E:
	lsls r0, r0, #2
	ldr r1, _080B6548 @ =_080B654C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B6548: .4byte _080B654C
_080B654C: @ jump table
	.4byte _080B6564 @ case 0
	.4byte _080B65E2 @ case 1
	.4byte _080B6668 @ case 2
	.4byte _080B66A0 @ case 3
	.4byte _080B66B6 @ case 4
	.4byte _080B672C @ case 5
_080B6564:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _080B6574
	b _080B6748
_080B6574:
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
	strb r0, [r2]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0x1a
	strb r0, [r1]
	ldr r0, _080B6654 @ =0x0820B92C
	movs r1, #0xf
	bl sub_08068264
	adds r3, r6, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _080B6658 @ =0x08244D4C
	movs r2, #0x17
	ldrsb r2, [r4, r2]
	ldrb r3, [r3]
	adds r0, r6, #0
	bl sub_0803B924
	adds r0, r6, #0
	movs r1, #7
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _080B665C @ =sub_0803B9D0
	str r0, [r6, #4]
	adds r1, r6, #0
	adds r1, #0x38
	movs r0, #0xa
	strb r0, [r1]
	movs r0, #0x98
	lsls r0, r0, #0xe
	str r0, [r6, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [r6, #0x30]
	movs r0, #0x10
	strb r0, [r6, #0xd]
	movs r0, #1
	strb r0, [r6, #0xa]
_080B65E2:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _080B662C
	subs r0, #1
	strb r0, [r6, #0xd]
	adds r0, r6, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	ldrb r0, [r6, #0xd]
	lsrs r0, r0, #1
	adds r4, r0, #0
	adds r4, #8
	adds r0, r3, #0
	subs r0, #0xa
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r5, _080B6660 @ =gEwramData
	ldr r0, [r5]
	movs r2, #0xfc
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r2, r0, r1
	ldrb r0, [r2]
	cmp r0, r4
	beq _080B662C
	strb r4, [r2]
	ldr r0, [r5]
	lsls r1, r1, #2
	movs r2, #0xf8
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r4, #0
	movs r2, #1
	bl sub_0803C7B4
_080B662C:
	ldr r1, _080B6664 @ =0x085287DC
	adds r0, r6, #0
	bl sub_080B4640
	cmp r0, #0
	bne _080B663A
	b _080B6750
_080B663A:
	movs r0, #0x11
	bl sub_08013CF0
	adds r1, r6, #0
	adds r1, #0x38
	movs r0, #9
	strb r0, [r1]
	movs r0, #8
	strb r0, [r6, #0xd]
	movs r0, #2
	strb r0, [r6, #0xa]
	b _080B6750
	.align 2, 0
_080B6654: .4byte 0x0820B92C
_080B6658: .4byte 0x08244D4C
_080B665C: .4byte sub_0803B9D0
_080B6660: .4byte gEwramData
_080B6664: .4byte 0x085287DC
_080B6668:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B6682
	movs r0, #0x9f
	bl sub_080D7910
	adds r1, r6, #0
	adds r1, #0x38
	movs r0, #8
	strb r0, [r1]
_080B6682:
	ldr r1, _080B669C @ =0x085287F4
	adds r0, r6, #0
	bl sub_080B4640
	cmp r0, #0
	beq _080B6750
	movs r0, #0x9f
	bl sub_080D7910
	movs r0, #3
	strb r0, [r6, #0xa]
	b _080B6750
	.align 2, 0
_080B669C: .4byte 0x085287F4
_080B66A0:
	ldrb r0, [r4, #0xa]
	cmp r0, #8
	bne _080B6750
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r6, #0x30]
	movs r0, #0x40
	strb r0, [r6, #0xd]
	movs r0, #4
	strb r0, [r6, #0xa]
	b _080B6750
_080B66B6:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _080B6704
	subs r0, #1
	strb r0, [r6, #0xd]
	adds r0, r6, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	ldrb r1, [r6, #0xd]
	lsrs r1, r1, #3
	movs r0, #0xf
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r3, #0
	subs r0, #0xa
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r5, _080B6724 @ =gEwramData
	ldr r0, [r5]
	movs r2, #0xfc
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r2, r0, r1
	ldrb r0, [r2]
	cmp r0, r4
	beq _080B6704
	strb r4, [r2]
	ldr r0, [r5]
	lsls r1, r1, #2
	movs r2, #0xf8
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r4, #0
	movs r2, #1
	bl sub_0803C7B4
_080B6704:
	ldr r1, _080B6728 @ =0x0852880C
	adds r0, r6, #0
	bl sub_080B4640
	cmp r0, #0
	beq _080B6750
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	movs r0, #5
	strb r0, [r6, #0xa]
	b _080B6750
	.align 2, 0
_080B6724: .4byte gEwramData
_080B6728: .4byte 0x0852880C
_080B672C:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B6748
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080B6748:
	adds r0, r6, #0
	bl sub_08000E14
	b _080B679E
_080B6750:
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x20
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	bne _080B679E
	ldr r0, [r6, #0x10]
	cmp r0, #0
	bge _080B676E
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080B6770
_080B676E:
	asrs r0, r0, #0x10
_080B6770:
	lsls r0, r0, #0x10
	movs r1, #0x4c
	bl __divsi3
	adds r1, r0, #0
	str r1, [r6, #0x20]
	movs r2, #0x1c
	ldrsh r0, [r6, r2]
	movs r2, #0x80
	lsls r2, r2, #9
	ldrb r4, [r4]
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
_080B679E:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B67A8
sub_080B67A8: @ 0x080B67A8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _080B67C4 @ =sub_080B6880
	str r0, [r4]
	ldr r0, _080B67C8 @ =0x0811940C
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	bge _080B67CC
	movs r0, #0
	b _080B67F8
	.align 2, 0
_080B67C4: .4byte sub_080B6880
_080B67C8: .4byte 0x0811940C
_080B67CC:
	ldr r0, _080B6804 @ =0x0820B92C
	movs r1, #0x11
	bl sub_08068264
	strb r0, [r4, #0x14]
	strb r5, [r4, #0x17]
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _080B6808 @ =0x08244D4C
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
_080B67F8:
	cmp r0, #0
	bne _080B680C
	adds r0, r4, #0
	bl sub_08000E14
	b _080B6874
	.align 2, 0
_080B6804: .4byte 0x0820B92C
_080B6808: .4byte 0x08244D4C
_080B680C:
	adds r0, r4, #0
	movs r1, #4
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x14
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	movs r5, #0
	adds r7, r4, #0
	adds r7, #0x42
	movs r6, #0x80
	rsbs r6, r6, #0
_080B683C:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _080B687C @ =sub_080B5F1C
	bl sub_08000DA0
	adds r2, r0, #0
	cmp r2, #0
	beq _080B6874
	str r4, [r2, #0x18]
	adds r0, #0x20
	strb r5, [r0]
	ldrh r0, [r7]
	adds r0, r0, r6
	adds r1, r2, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x20
	strh r0, [r1]
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r6, #8
	adds r5, #1
	cmp r5, #0x1f
	ble _080B683C
_080B6874:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B687C: .4byte sub_080B5F1C

	thumb_func_start sub_080B6880
sub_080B6880: @ 0x080B6880
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0xb
	bls _080B688E
	b _080B6A90
_080B688E:
	lsls r0, r0, #2
	ldr r1, _080B6898 @ =_080B689C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B6898: .4byte _080B689C
_080B689C: @ jump table
	.4byte _080B68CC @ case 0
	.4byte _080B68D6 @ case 1
	.4byte _080B6928 @ case 2
	.4byte _080B695C @ case 3
	.4byte _080B696C @ case 4
	.4byte _080B69AC @ case 5
	.4byte _080B69BC @ case 6
	.4byte _080B69D6 @ case 7
	.4byte _080B69E6 @ case 8
	.4byte _080B69F6 @ case 9
	.4byte _080B6A08 @ case 10
	.4byte _080B6A1A @ case 11
_080B68CC:
	movs r0, #0x80
	strb r0, [r4, #0xd]
	movs r0, #1
	strb r0, [r4, #0xa]
	b _080B6A90
_080B68D6:
	ldr r5, _080B6914 @ =gEwramData
	ldr r0, [r5]
	ldr r1, _080B6918 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r2, [r0, #0x44]
	adds r0, r4, #0
	bl sub_0806E3F8
	ldr r1, _080B691C @ =0x00BFFFFF
	cmp r0, r1
	ble _080B68F2
	b _080B6A90
_080B68F2:
	movs r0, #2
	strb r0, [r4, #0xa]
	ldr r0, _080B6920 @ =0x00001010
	bl sub_080D7910
	ldr r1, [r5]
	ldr r0, _080B6924 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #1
	orrs r0, r2
	str r0, [r1]
	movs r0, #0
	bl sub_0800C5A8
	b _080B6A90
	.align 2, 0
_080B6914: .4byte gEwramData
_080B6918: .4byte 0x00013110
_080B691C: .4byte 0x00BFFFFF
_080B6920: .4byte 0x00001010
_080B6924: .4byte 0x0000042C
_080B6928:
	ldr r0, _080B6950 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080B6954 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r2, [r0, #0x44]
	adds r0, r4, #0
	bl sub_0806E3F8
	ldr r1, _080B6958 @ =0x003FFFFF
	cmp r0, r1
	ble _080B6944
	b _080B6A90
_080B6944:
	movs r0, #3
	strb r0, [r4, #0xa]
	movs r0, #0x10
	bl sub_08013CF0
	b _080B6A90
	.align 2, 0
_080B6950: .4byte gEwramData
_080B6954: .4byte 0x00013110
_080B6958: .4byte 0x003FFFFF
_080B695C:
	movs r0, #4
	strb r0, [r4, #0xa]
	movs r0, #0xa0
	strb r0, [r4, #0xd]
	adds r0, #0x60
	bl sub_080D7910
	b _080B6A90
_080B696C:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _080B6980
	cmp r0, #0x50
	bne _080B697C
	movs r0, #0xff
	bl sub_080D7910
_080B697C:
	ldrb r0, [r4, #0xd]
	b _080B69FC
_080B6980:
	ldr r2, _080B69B8 @ =sub_080B60EC
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r2, r0, #0
	cmp r2, #0
	beq _080B69A4
	str r4, [r2, #0x18]
	ldr r0, [r4, #0x40]
	str r0, [r2, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r2, #0x44]
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_080B69A4:
	movs r0, #0x80
	strb r0, [r4, #0xd]
	movs r0, #5
	strb r0, [r4, #0xa]
_080B69AC:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _080B69FC
	movs r0, #6
	strb r0, [r4, #0xa]
	b _080B6A90
	.align 2, 0
_080B69B8: .4byte sub_080B60EC
_080B69BC:
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x40
	movs r2, #0x90
	movs r3, #1
	bl sub_080B4FB0
	movs r0, #7
	strb r0, [r4, #0xa]
	movs r0, #0x70
	strb r0, [r4, #0xd]
	b _080B6A90
_080B69D6:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _080B69FC
	movs r0, #8
	strb r0, [r4, #0xa]
	movs r0, #0x30
	strb r0, [r4, #0xd]
	b _080B6A90
_080B69E6:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #0
	cmp r1, #0
	bne _080B69FC
	movs r0, #9
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xd]
	b _080B6A90
_080B69F6:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _080B6A02
_080B69FC:
	subs r0, #1
	strb r0, [r4, #0xd]
	b _080B6A90
_080B6A02:
	movs r0, #0xa
	strb r0, [r4, #0xa]
	b _080B6A90
_080B6A08:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xb
	strb r0, [r4, #0xa]
	b _080B6A90
_080B6A1A:
	ldr r0, _080B6A84 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _080B6A88 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #2
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1]
	movs r0, #1
	bl sub_0800C5A8
	bl sub_08068F48
	movs r0, #0x17
	ldrsb r0, [r4, r0]
	bl sub_0803B980
	ldr r0, _080B6A8C @ =sub_080B5DC0
	bl sub_0806DFF8
	adds r2, r0, #0
	cmp r2, #0
	beq _080B6A7A
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r2, #0
	adds r1, #0x36
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x37
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r3, r2, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	ldr r0, [r4, #0x40]
	str r0, [r2, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r2, #0x44]
	adds r0, r2, #0
	bl sub_080B5C38
_080B6A7A:
	adds r0, r4, #0
	bl sub_08000E14
	b _080B6ADE
	.align 2, 0
_080B6A84: .4byte gEwramData
_080B6A88: .4byte 0x0000042C
_080B6A8C: .4byte sub_080B5DC0
_080B6A90:
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _080B6AC4 @ =gEwramData
	ldr r3, [r0]
	ldr r1, _080B6AC8 @ =0x0000042C
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B6ADE
	movs r2, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _080B6AD0
	ldr r1, _080B6ACC @ =0x00013110
	adds r0, r3, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r4, #0x40]
	movs r2, #0x20
	cmp r0, r1
	ble _080B6AD6
	movs r2, #0x10
	b _080B6AD6
	.align 2, 0
_080B6AC4: .4byte gEwramData
_080B6AC8: .4byte 0x0000042C
_080B6ACC: .4byte 0x00013110
_080B6AD0:
	cmp r0, #5
	bls _080B6AD6
	movs r2, #0x80
_080B6AD6:
	movs r0, #2
	adds r1, r2, #0
	bl sub_080009A0
_080B6ADE:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B6AE8
sub_080B6AE8: @ 0x080B6AE8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r3, [r4, #0x1e]
	movs r0, #1
	movs r5, #0
	orrs r0, r3
	strh r0, [r4, #0x1e]
	adds r0, r4, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080B6B36
	ldrh r0, [r4, #0x1e]
	movs r1, #2
	orrs r0, r1
	strh r0, [r4, #0x1e]
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
	movs r0, #4
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xb]
	movs r0, #0
	bl sub_08034498
_080B6B36:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080B6B3C
sub_080B6B3C: @ 0x080B6B3C
	push {lr}
	sub sp, #0x10
	mov r2, sp
	movs r3, #0
	movs r1, #2
	strh r1, [r2, #2]
	mov r1, sp
	strh r3, [r1, #4]
	movs r1, #0x4b
	strh r1, [r2]
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

	thumb_func_start sub_080B6B68
sub_080B6B68: @ 0x080B6B68
	push {lr}
	adds r2, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	movs r2, #0
	bl sub_0806E6B4
	movs r0, #0x6a
	bl sub_080D7910
	pop {r0}
	bx r0

	thumb_func_start sub_080B6B80
sub_080B6B80: @ 0x080B6B80
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r5, [r0, r1]
	adds r0, r4, #0
	bl sub_0806CD38
	cmp r0, #0
	bge _080B6BA2
	adds r0, r4, #0
	bl sub_0806CD38
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080B6BAA
_080B6BA2:
	adds r0, r4, #0
	bl sub_0806CD38
	asrs r0, r0, #0x10
_080B6BAA:
	subs r0, r0, r5
	subs r0, #0x20
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	adds r0, r4, #0
	adds r0, #0x46
	movs r1, #0
	ldrsh r5, [r0, r1]
	adds r0, r4, #0
	bl sub_0806CD78
	cmp r0, #0
	bge _080B6BD2
	adds r0, r4, #0
	bl sub_0806CD78
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080B6BDA
_080B6BD2:
	adds r0, r4, #0
	bl sub_0806CD78
	asrs r0, r0, #0x10
_080B6BDA:
	subs r0, r0, r5
	subs r0, #0x10
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r6, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B6BF4
sub_080B6BF4: @ 0x080B6BF4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r6, [r4, #0x40]
	ldr r7, [r4, #0x44]
	ldr r0, [r4, #0x28]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r0, r6, r0
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x2c]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r0, r7, r0
	str r0, [r4, #0x44]
	movs r5, #8
_080B6C16:
	adds r0, r4, #0
	bl sub_0803AC40
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x28]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x2c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	subs r5, #1
	cmp r5, #0
	bne _080B6C16
	str r6, [r4, #0x40]
	str r7, [r4, #0x44]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080B6C3C
sub_080B6C3C: @ 0x080B6C3C
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bls _080B6C4A
	b _080B6D44
_080B6C4A:
	lsls r0, r0, #2
	ldr r1, _080B6C54 @ =_080B6C58
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B6C54: .4byte _080B6C58
_080B6C58: @ jump table
	.4byte _080B6C6C @ case 0
	.4byte _080B6CCC @ case 1
	.4byte _080B6CFA @ case 2
	.4byte _080B6D0C @ case 3
	.4byte _080B6D20 @ case 4
_080B6C6C:
	ldr r1, _080B6CE0 @ =0x081EC1EC
	ldr r2, _080B6CE4 @ =0x0820BBB0
	ldr r0, _080B6CE8 @ =0x08245CA8
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B6D3C
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	blt _080B6D3C
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
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x12
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	movs r0, #1
	strb r0, [r4, #0xa]
_080B6CCC:
	ldr r1, [r4, #0x18]
	ldr r0, _080B6CEC @ =0x0000FFFF
	cmp r1, r0
	bgt _080B6CF0
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r1, r2
	str r0, [r4, #0x18]
	b _080B6D44
	.align 2, 0
_080B6CE0: .4byte 0x081EC1EC
_080B6CE4: .4byte 0x0820BBB0
_080B6CE8: .4byte 0x08245CA8
_080B6CEC: .4byte 0x0000FFFF
_080B6CF0:
	movs r0, #2
	strb r0, [r4, #0xa]
	movs r0, #0x20
	strb r0, [r4, #0xd]
	b _080B6D44
_080B6CFA:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _080B6D06
	subs r0, #1
	strb r0, [r4, #0xd]
	b _080B6D44
_080B6D06:
	movs r0, #3
	strb r0, [r4, #0xa]
	b _080B6D44
_080B6D0C:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ble _080B6D20
	ldr r1, _080B6D1C @ =0xFFFFE000
	adds r0, r0, r1
	str r0, [r4, #0x18]
	b _080B6D44
	.align 2, 0
_080B6D1C: .4byte 0xFFFFE000
_080B6D20:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B6D3C
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080B6D3C:
	adds r0, r4, #0
	bl sub_08000E14
	b _080B6D60
_080B6D44:
	ldr r2, [r4, #0x18]
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
_080B6D60:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B6D68
sub_080B6D68: @ 0x080B6D68
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _080B6D90 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _080B6D94 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x42
	movs r5, #0
	ldrsh r3, [r0, r5]
	adds r2, r4, #0
	adds r2, #0x42
	movs r5, #0
	ldrsh r0, [r2, r5]
	subs r0, r3, r0
	cmp r0, #0
	bge _080B6D98
	ldrh r0, [r2]
	subs r0, r0, r3
	b _080B6D9C
	.align 2, 0
_080B6D90: .4byte gEwramData
_080B6D94: .4byte 0x00013110
_080B6D98:
	ldrh r0, [r2]
	subs r0, r3, r0
_080B6D9C:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r1, [r1]
	ldr r2, _080B6DBC @ =0x000004BE
	adds r0, r1, r2
	movs r5, #0
	ldrsh r2, [r0, r5]
	cmp r2, #0
	beq _080B6DC0
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	b _080B6DE2
	.align 2, 0
_080B6DBC: .4byte 0x000004BE
_080B6DC0:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x6f
	ble _080B6DDA
	ldr r3, _080B6DE8 @ =0x00013110
	adds r0, r1, r3
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	movs r1, #0xd8
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080B6DE2
_080B6DDA:
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r2, [r4, #0xc]
	strb r2, [r4, #0xb]
_080B6DE2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B6DE8: .4byte 0x00013110

	thumb_func_start sub_080B6DEC
sub_080B6DEC: @ 0x080B6DEC
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #7
	bls _080B6DFA
	b _080B6FB0
_080B6DFA:
	lsls r0, r0, #2
	ldr r1, _080B6E04 @ =_080B6E08
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B6E04: .4byte _080B6E08
_080B6E08: @ jump table
	.4byte _080B6E28 @ case 0
	.4byte _080B6E4E @ case 1
	.4byte _080B6E6C @ case 2
	.4byte _080B6E82 @ case 3
	.4byte _080B6EA8 @ case 4
	.4byte _080B6F12 @ case 5
	.4byte _080B6F38 @ case 6
	.4byte _080B6F8C @ case 7
_080B6E28:
	ldr r0, _080B6E64 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080B6E68 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	movs r1, #0xd8
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080B6E5E
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #1
	strb r0, [r4, #0xb]
_080B6E4E:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080B6E5E
	b _080B6FB0
_080B6E5E:
	movs r0, #2
	strb r0, [r4, #0xb]
	b _080B6FB0
	.align 2, 0
_080B6E64: .4byte gEwramData
_080B6E68: .4byte 0x00013110
_080B6E6C:
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #3
	strb r0, [r4, #0xb]
	movs r0, #0x18
	strb r0, [r4, #0xd]
	b _080B6FB0
_080B6E82:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #0
	cmp r1, #0
	beq _080B6EA0
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	beq _080B6E98
	b _080B6FB0
_080B6E98:
	movs r0, #0xec
	bl sub_080D7910
	b _080B6FB0
_080B6EA0:
	strb r1, [r4, #0xd]
	movs r0, #4
	strb r0, [r4, #0xb]
	b _080B6FB0
_080B6EA8:
	ldr r0, _080B6ED0 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _080B6ED4 @ =0x000004BE
	adds r0, r1, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _080B6EE8
	ldr r0, _080B6ED8 @ =0x00012FE4
	adds r1, r1, r0
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #0xc
	str r0, [r1]
	ldrb r0, [r4, #0xd]
	cmp r0, #0xf
	bhi _080B6EDC
	adds r0, #1
	strb r0, [r4, #0xd]
	b _080B6FB0
	.align 2, 0
_080B6ED0: .4byte gEwramData
_080B6ED4: .4byte 0x000004BE
_080B6ED8: .4byte 0x00012FE4
_080B6EDC:
	movs r0, #6
	bl sub_080212F4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B6F06
_080B6EE8:
	movs r3, #0x80
	lsls r3, r3, #8
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	bl sub_0803D18C
	movs r0, #6
	strb r0, [r4, #0xb]
	b _080B6FB0
_080B6F06:
	movs r0, #5
	strb r0, [r4, #0xb]
	movs r0, #0
	bl sub_0800C5A8
	b _080B6FB0
_080B6F12:
	ldr r0, _080B6F30 @ =0x08515DB0
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0x70
	str r1, [sp]
	movs r1, #0
	movs r3, #0x20
	bl sub_08011F44
	ldr r0, _080B6F34 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x60
	bl sub_08011AD0
	b _080B6FB0
	.align 2, 0
_080B6F30: .4byte 0x08515DB0
_080B6F34: .4byte gEwramData
_080B6F38:
	ldr r0, _080B6F9C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080B6FA0 @ =0x00012FE4
	adds r0, r0, r1
	movs r1, #1
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B6FB0
	ldr r2, _080B6FA4 @ =sub_080B6C3C
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r2, r0, #0
	cmp r2, #0
	beq _080B6F84
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0x20
	adds r1, #4
	strh r0, [r1]
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_080B6F84:
	movs r0, #7
	strb r0, [r4, #0xb]
	movs r0, #0x30
	strb r0, [r4, #0xd]
_080B6F8C:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #0
	cmp r1, #0
	beq _080B6FA8
	subs r0, #1
	strb r0, [r4, #0xd]
	b _080B6FB0
	.align 2, 0
_080B6F9C: .4byte gEwramData
_080B6FA0: .4byte 0x00012FE4
_080B6FA4: .4byte sub_080B6C3C
_080B6FA8:
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080B6FB0:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B6FB8
sub_080B6FB8: @ 0x080B6FB8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _080B6FF2
	cmp r0, #1
	bgt _080B6FCC
	cmp r0, #0
	beq _080B6FD6
	b _080B708E
_080B6FCC:
	cmp r0, #2
	beq _080B7006
	cmp r0, #3
	beq _080B7044
	b _080B708E
_080B6FD6:
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #0xfb
	ands r1, r0
	strb r1, [r2]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #1
	strb r0, [r4, #0xb]
_080B6FF2:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B708E
	movs r0, #2
	strb r0, [r4, #0xb]
	b _080B708E
_080B7006:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	adds r0, r4, #0
	bl sub_0806CD38
	ldr r1, [r4, #0x40]
	cmp r0, r1
	ble _080B7034
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _080B7040
_080B7034:
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080B7040:
	movs r0, #3
	strb r0, [r4, #0xb]
_080B7044:
	ldr r1, [r4, #0x18]
	ldr r0, _080B7064 @ =0x0002FFFF
	cmp r1, r0
	bgt _080B7054
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r1, r2
	str r0, [r4, #0x18]
_080B7054:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #4
	bne _080B7068
	ldr r1, [r4, #0x18]
	rsbs r1, r1, #0
	b _080B706A
	.align 2, 0
_080B7064: .4byte 0x0002FFFF
_080B7068:
	ldr r1, [r4, #0x18]
_080B706A:
	ldr r2, _080B70AC @ =0x08528824
	adds r0, r4, #0
	movs r3, #2
	bl sub_0806CAF8
	adds r1, r0, #0
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080B708E
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080B708E
	ldr r0, [r4, #0x4c]
	ldr r1, _080B70B0 @ =0xFFFD0000
	adds r0, r0, r1
	str r0, [r4, #0x4c]
_080B708E:
	adds r0, r4, #0
	movs r1, #3
	bl sub_0806D128
	cmp r0, #0
	beq _080B70A6
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080B70A6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B70AC: .4byte 0x08528824
_080B70B0: .4byte 0xFFFD0000

	thumb_func_start sub_080B70B4
sub_080B70B4: @ 0x080B70B4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _080B70E4
	cmp r0, #1
	bgt _080B70C8
	cmp r0, #0
	beq _080B70CE
	b _080B711E
_080B70C8:
	cmp r0, #2
	beq _080B7100
	b _080B711E
_080B70CE:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0x80
	strb r0, [r4, #0xd]
	b _080B711E
_080B70E4:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _080B70F0
	subs r0, #1
	strb r0, [r4, #0xd]
	b _080B711E
_080B70F0:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #2
	b _080B711C
_080B7100:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B711E
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #3
_080B711C:
	strb r0, [r4, #0xb]
_080B711E:
	adds r0, r4, #0
	bl sub_0803F17C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B712C
sub_080B712C: @ 0x080B712C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _080B7150 @ =0x081EC1EC
	ldr r2, _080B7154 @ =0x0820BBB0
	ldr r0, _080B7158 @ =0x08245CA8
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B715C
	adds r0, r5, #0
	bl sub_08000E14
	b _080B71E2
	.align 2, 0
_080B7150: .4byte 0x081EC1EC
_080B7154: .4byte 0x0820BBB0
_080B7158: .4byte 0x08245CA8
_080B715C:
	adds r0, r5, #0
	bl sub_0806B04C
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x13
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	ldr r0, _080B7194 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B7198
	movs r0, #4
	strb r0, [r5, #0xa]
	b _080B71E2
	.align 2, 0
_080B7194: .4byte gEwramData
_080B7198:
	ldr r2, _080B71EC @ =sub_0806E1B8
	ldr r3, _080B71F0 @ =sub_080B72B8
	adds r0, r5, #0
	movs r1, #8
	bl sub_0804277C
	ldr r4, _080B71F4 @ =0x2008E0FC
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080428F0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08042884
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_0806AF98
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r0, [r1]
	adds r0, #1
	movs r2, #0
	strh r0, [r1]
	adds r3, r5, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	strb r2, [r5, #0xa]
_080B71E2:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B71EC: .4byte sub_0806E1B8
_080B71F0: .4byte sub_080B72B8
_080B71F4: .4byte 0x2008E0FC

	thumb_func_start sub_080B71F8
sub_080B71F8: @ 0x080B71F8
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _080B720A
	adds r0, r4, #0
	bl sub_0806AE54
_080B720A:
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bhi _080B729A
	lsls r0, r0, #2
	ldr r1, _080B721C @ =_080B7220
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B721C: .4byte _080B7220
_080B7220: @ jump table
	.4byte _080B7234 @ case 0
	.4byte _080B723C @ case 1
	.4byte _080B7244 @ case 2
	.4byte _080B724C @ case 3
	.4byte _080B7292 @ case 4
_080B7234:
	adds r0, r4, #0
	bl sub_080B6D68
	b _080B729A
_080B723C:
	adds r0, r4, #0
	bl sub_080B6DEC
	b _080B729A
_080B7244:
	adds r0, r4, #0
	bl sub_080B6FB8
	b _080B729A
_080B724C:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080B7258
	cmp r0, #1
	beq _080B726E
	b _080B7284
_080B7258:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0x28
	strb r0, [r4, #0xd]
	b _080B7284
_080B726E:
	adds r0, r4, #0
	bl sub_0806AEAC
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _080B7286
_080B7284:
	movs r1, #0
_080B7286:
	cmp r1, #0
	beq _080B729A
	adds r0, r4, #0
	bl sub_08000E14
	b _080B72AE
_080B7292:
	adds r0, r4, #0
	bl sub_080B70B4
	b _080B72AE
_080B729A:
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _080B72A8
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
_080B72A8:
	adds r0, r4, #0
	bl sub_0803F17C
_080B72AE:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B72B8
sub_080B72B8: @ 0x080B72B8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080B72F0
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
	movs r0, #3
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080B72F0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B72F8
sub_080B72F8: @ 0x080B72F8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r1, [r6, #0x18]
	ldr r2, _080B7318 @ =0x08528830
	movs r3, #4
	bl sub_0806CAF8
	ldrb r1, [r6, #0xb]
	cmp r1, #1
	beq _080B732E
	cmp r1, #1
	bgt _080B731C
	cmp r1, #0
	beq _080B7326
	b _080B7470
	.align 2, 0
_080B7318: .4byte 0x08528830
_080B731C:
	cmp r1, #2
	beq _080B735A
	cmp r1, #3
	beq _080B73E4
	b _080B7470
_080B7326:
	str r1, [r6, #0x18]
	strb r1, [r6, #0xc]
	movs r0, #1
	strb r0, [r6, #0xb]
_080B732E:
	adds r0, r6, #0
	movs r1, #0x64
	movs r2, #0x3c
	bl sub_0806E29C
	cmp r0, #0
	beq _080B735A
	adds r0, r6, #0
	adds r0, #0x6e
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _080B735A
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #2
	strb r0, [r6, #0xb]
_080B735A:
	ldrb r0, [r6, #0xd]
	movs r1, #0x19
	bl __umodsi3
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B7388
	movs r2, #0x40
	rsbs r2, r2, #0
	movs r3, #0xb8
	lsls r3, r3, #1
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r2, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _080B7388
	movs r0, #0x7d
	bl sub_080D7910
_080B7388:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	ldr r1, [r6, #0x18]
	ldr r0, _080B73D8 @ =0x0001FFFF
	cmp r1, r0
	bgt _080B739E
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r1, r2
	str r0, [r6, #0x18]
_080B739E:
	ldrb r0, [r6, #0x1c]
	adds r0, #1
	strb r0, [r6, #0x1c]
	adds r0, r6, #0
	adds r0, #0x6e
	ldrh r1, [r0]
	ldr r0, _080B73DC @ =0x00000101
	cmp r1, r0
	bne _080B73B6
	ldrb r0, [r6, #0xc]
	adds r0, #1
	strb r0, [r6, #0xc]
_080B73B6:
	ldrb r0, [r6, #0x1c]
	cmp r0, #0x64
	bls _080B7470
	ldr r0, _080B73E0 @ =0x00000127
	bl sub_080D7910
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #3
	strb r0, [r6, #0xb]
	movs r0, #0
	strb r0, [r6, #0xd]
	b _080B7470
	.align 2, 0
_080B73D8: .4byte 0x0001FFFF
_080B73DC: .4byte 0x00000101
_080B73E0: .4byte 0x00000127
_080B73E4:
	ldr r0, [r6, #0x18]
	cmp r0, #0
	ble _080B73F0
	ldr r2, _080B7478 @ =0xFFFFF000
	adds r0, r0, r2
	str r0, [r6, #0x18]
_080B73F0:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	ands r0, r1
	cmp r0, #0
	bne _080B7436
	ldr r4, [r6, #0x40]
	ldr r5, [r6, #0x44]
	bl sub_08000A90
	adds r2, r0, #0
	movs r7, #1
	ands r2, r7
	adds r2, #4
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #6
	bl sub_08045CEC
	adds r2, r0, #0
	cmp r2, #0
	beq _080B7436
	strb r7, [r2, #0xf]
	movs r3, #0x80
	lsls r3, r3, #8
	str r3, [r2, #0x48]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B7436
	rsbs r0, r3, #0
	str r0, [r2, #0x48]
_080B7436:
	adds r0, r6, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B7470
	movs r4, #0
	strb r4, [r6, #0x1c]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	strb r4, [r6, #0xb]
	adds r3, r6, #0
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
_080B7470:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B7478: .4byte 0xFFFFF000

	thumb_func_start sub_080B747C
sub_080B747C: @ 0x080B747C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrb r4, [r5, #0xb]
	cmp r4, #0
	beq _080B748E
	cmp r4, #1
	beq _080B74BE
	b _080B7588
_080B748E:
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #1
	strb r0, [r5, #0xb]
	ldr r2, _080B74E8 @ =0xFFFD8000
	str r2, [r5, #0x48]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B74B4
	rsbs r0, r2, #0
	str r0, [r5, #0x48]
_080B74B4:
	str r2, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	strb r4, [r5, #0xd]
_080B74BE:
	ldrb r0, [r5, #0xd]
	cmp r0, #0x27
	bhi _080B7508
	adds r1, r0, #0
	movs r0, #0x28
	subs r0, r0, r1
	bl sub_0806D518
	cmp r0, #0
	beq _080B74EC
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x28
	orrs r1, r0
	strb r1, [r2]
	b _080B7508
	.align 2, 0
_080B74E8: .4byte 0xFFFD8000
_080B74EC:
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
_080B7508:
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080B751C
	movs r0, #0x6e
	bl sub_080D7910
_080B751C:
	ldrb r1, [r5, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080B754A
	movs r0, #0x10
	bl sub_0802D5EC
	lsls r0, r0, #0x10
	ldr r4, [r5, #0x40]
	adds r4, r4, r0
	movs r0, #0x10
	bl sub_0802D5EC
	subs r0, #0x20
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x44]
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #1
	movs r3, #7
	bl sub_08045CEC
_080B754A:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r5, #0
	bl sub_0806D3D8
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
	beq _080B7584
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B7588
	ldrb r0, [r5, #0xd]
	cmp r0, #0x80
	bhi _080B7588
_080B7584:
	movs r0, #1
	b _080B758A
_080B7588:
	movs r0, #0
_080B758A:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B7594
sub_080B7594: @ 0x080B7594
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _080B75B8 @ =0x081EC1F4
	ldr r2, _080B75BC @ =0x0820BBD4
	ldr r0, _080B75C0 @ =0x08246F00
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B75C4
	adds r0, r4, #0
	bl sub_08000E14
	b _080B7634
	.align 2, 0
_080B75B8: .4byte 0x081EC1F4
_080B75BC: .4byte 0x0820BBD4
_080B75C0: .4byte 0x08246F00
_080B75C4:
	adds r0, r4, #0
	bl sub_0806B04C
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x13
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _080B75FC @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B7600
	movs r0, #2
	strb r0, [r4, #0xa]
	b _080B7634
	.align 2, 0
_080B75FC: .4byte gEwramData
_080B7600:
	ldr r1, _080B763C @ =sub_0806E1B8
	ldr r2, _080B7640 @ =sub_080B7644
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
	movs r0, #0x32
	strb r0, [r4, #0x1c]
_080B7634:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B763C: .4byte sub_0806E1B8
_080B7640: .4byte sub_080B7644

	thumb_func_start sub_080B7644
sub_080B7644: @ 0x080B7644
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080B767C
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
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080B767C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B7684
sub_080B7684: @ 0x080B7684
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806CC20
	cmp r0, #0
	bne _080B76DE
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r0, r4, #0
	bl sub_0806E4F8
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080B76B8
	cmp r0, #1
	bgt _080B76AA
	cmp r0, #0
	beq _080B76B0
	b _080B76D2
_080B76AA:
	cmp r0, #2
	beq _080B76CA
	b _080B76D2
_080B76B0:
	adds r0, r4, #0
	bl sub_080B72F8
	b _080B76D2
_080B76B8:
	adds r0, r4, #0
	bl sub_080B747C
	cmp r0, #0
	beq _080B76D2
	adds r0, r4, #0
	bl sub_08000E14
	b _080B76DE
_080B76CA:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080B76DE
_080B76D2:
	adds r0, r4, #0
	bl sub_0806E314
	adds r0, r4, #0
	bl sub_0806DF20
_080B76DE:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B76E4
sub_080B76E4: @ 0x080B76E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r0, #0
	ldrb r1, [r6, #0x14]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080B7704 @ =0x0852883C
	adds r7, r0, r1
	ldrb r0, [r6, #0xa]
	cmp r0, #2
	bne _080B7708
	mov r1, sp
	ldrh r0, [r7, #8]
	b _080B770C
	.align 2, 0
_080B7704: .4byte 0x0852883C
_080B7708:
	mov r1, sp
	movs r0, #0
_080B770C:
	strh r0, [r1, #2]
	mov r0, sp
	movs r1, #0
	strh r1, [r0, #4]
	ldrb r0, [r6, #0x14]
	cmp r0, #2
	beq _080B7726
	mov r0, sp
	adds r1, r6, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	strh r1, [r0]
	b _080B7758
_080B7726:
	ldr r0, _080B7774 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _080B7778 @ =0x000131FE
	adds r0, r2, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r0, r1, #0x11
	asrs r1, r1, #0x12
	adds r0, r0, r1
	ldr r1, _080B777C @ =0x0001327E
	adds r2, r2, r1
	ldrh r1, [r2]
	lsrs r1, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r5, sp
	adds r1, r6, #0
	adds r1, #0x3c
	ldrb r4, [r1]
	movs r1, #3
	bl __udivsi3
	adds r4, r4, r0
	strh r4, [r5]
_080B7758:
	mov r1, sp
	ldrh r0, [r7, #0xa]
	strh r0, [r1, #6]
	ldr r0, [r6, #0x40]
	str r0, [sp, #8]
	ldr r0, [r6, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B7774: .4byte gEwramData
_080B7778: .4byte 0x000131FE
_080B777C: .4byte 0x0001327E

	thumb_func_start sub_080B7780
sub_080B7780: @ 0x080B7780
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [r5, #0x14]
	mov ip, r0
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bhi _080B77CC
	mov r1, ip
	ldrb r0, [r1, #0xa]
	cmp r0, #3
	bne _080B779E
	movs r0, #2
	strb r0, [r5, #0xa]
	b _080B77CC
_080B779E:
	ldr r0, _080B77E4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080B77E8 @ =0x000004BE
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080B77CC
	mov r0, ip
	adds r0, #0x36
	ldrb r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080B77EC @ =0x080E9644
	adds r0, r0, r1
	ldrh r1, [r0, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080B77CC
	b _080B797E
_080B77CC:
	ldrb r0, [r5, #0xa]
	adds r6, r5, #0
	adds r6, #0x58
	cmp r0, #4
	bls _080B77D8
	b _080B7960
_080B77D8:
	lsls r0, r0, #2
	ldr r1, _080B77F0 @ =_080B77F4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B77E4: .4byte gEwramData
_080B77E8: .4byte 0x000004BE
_080B77EC: .4byte 0x080E9644
_080B77F0: .4byte _080B77F4
_080B77F4: @ jump table
	.4byte _080B7808 @ case 0
	.4byte _080B7828 @ case 1
	.4byte _080B789C @ case 2
	.4byte _080B7912 @ case 3
	.4byte _080B7946 @ case 4
_080B7808:
	mov r0, ip
	adds r0, #0x6d
	ldrb r0, [r0]
	adds r6, r5, #0
	adds r6, #0x58
	cmp r0, #3
	beq _080B7818
	b _080B7960
_080B7818:
	movs r0, #0
	strh r0, [r5, #0x1a]
	ldrb r1, [r6]
	subs r0, #0x21
	ands r0, r1
	strb r0, [r6]
	movs r0, #1
	strb r0, [r5, #0xa]
_080B7828:
	mov r0, ip
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #3
	beq _080B7840
	ldrb r0, [r6]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r6]
	movs r0, #0
	strb r0, [r5, #0xa]
	b _080B7960
_080B7840:
	mov r0, ip
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
	ldr r4, _080B7898 @ =0x0000FFF4
	movs r2, #0xee
	lsls r2, r2, #8
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B786C
	movs r4, #0xc
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	rsbs r2, r0, #0
_080B786C:
	mov r1, ip
	adds r1, #0x42
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	mov r0, ip
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #6
	adds r1, #4
	strh r0, [r1]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r5, #0x1a]
	adds r0, r0, r1
	strh r0, [r5, #0x1a]
	b _080B7960
	.align 2, 0
_080B7898: .4byte 0x0000FFF4
_080B789C:
	adds r3, r5, #0
	adds r3, #0x58
	ldrb r0, [r3]
	movs r2, #0x21
	rsbs r2, r2, #0
	ands r2, r0
	strb r2, [r3]
	mov r0, ip
	adds r0, #0x58
	ldrb r0, [r0]
	movs r1, #0x40
	ands r1, r0
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r4, _080B7958 @ =0x0000FFF4
	movs r1, #0x40
	ands r0, r1
	adds r6, r3, #0
	cmp r0, #0
	beq _080B78CC
	movs r4, #0xc
_080B78CC:
	mov r1, ip
	adds r1, #0x42
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x42
	movs r4, #0
	strh r0, [r1]
	mov r0, ip
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #6
	adds r1, #4
	strh r0, [r1]
	movs r0, #0x10
	bl sub_0802D5EC
	lsls r0, r0, #0xc
	ldr r1, _080B795C @ =0xFFFC8000
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	movs r0, #0x40
	bl sub_0802D5EC
	lsls r0, r0, #0xc
	str r0, [r5, #0x48]
	str r4, [r5, #0x50]
	strh r4, [r5, #0x1a]
	movs r0, #3
	strb r0, [r5, #0xa]
_080B7912:
	movs r2, #0xb0
	lsls r2, r2, #4
	ldrb r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B7926
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080B7926:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r5, #0x1a]
	adds r0, r0, r1
	strh r0, [r5, #0x1a]
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r5, #0
	bl sub_0806D3D8
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _080B7960
_080B7946:
	ldrb r0, [r6]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r5, #0
	bl sub_08000E14
	b _080B797E
	.align 2, 0
_080B7958: .4byte 0x0000FFF4
_080B795C: .4byte 0xFFFC8000
_080B7960:
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	movs r2, #0x80
	lsls r2, r2, #9
	ldrb r1, [r6]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	movs r4, #0
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
_080B797E:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B7988
sub_080B7988: @ 0x080B7988
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080B7A14 @ =sub_080B7780
	bl sub_0806DFF8
	adds r4, r0, #0
	ldrb r1, [r5, #0x14]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080B7A18 @ =0x0852883C
	adds r0, r0, r1
	cmp r4, #0
	beq _080B7A2A
	ldr r1, _080B7A1C @ =0x081F4214
	ldr r2, _080B7A20 @ =0x0820BCA0
	ldrb r3, [r0, #4]
	ldr r0, [r0]
	str r0, [sp]
	adds r0, r4, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B7A2A
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	blt _080B7A24
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
	adds r3, r4, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0xd
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	str r5, [r4, #0x14]
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	b _080B7A2C
	.align 2, 0
_080B7A14: .4byte sub_080B7780
_080B7A18: .4byte 0x0852883C
_080B7A1C: .4byte 0x081F4214
_080B7A20: .4byte 0x0820BCA0
_080B7A24:
	adds r0, r4, #0
	bl sub_08000E14
_080B7A2A:
	movs r0, #0
_080B7A2C:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080B7A34
sub_080B7A34: @ 0x080B7A34
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0x14]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080B7A50 @ =0x0852883C
	adds r6, r1, r0
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _080B7A54
	cmp r0, #1
	beq _080B7A62
	b _080B7AE4
	.align 2, 0
_080B7A50: .4byte 0x0852883C
_080B7A54:
	movs r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0x80
	lsls r0, r0, #8
	strh r0, [r5, #0x18]
	ldrb r0, [r6, #7]
	strb r0, [r5, #0xd]
_080B7A62:
	ldrh r0, [r5, #0x18]
	adds r0, #1
	movs r7, #0
	strh r0, [r5, #0x18]
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	movs r0, #0xb6
	lsls r0, r0, #3
	muls r0, r1, r0
	ldr r1, _080B7A98 @ =0x0000FFFF
	ands r0, r1
	bl sub_080009E4
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r5, #0x4c]
	ldr r1, [r5, #0x44]
	adds r1, r1, r0
	str r1, [r5, #0x44]
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _080B7A9C
	subs r0, #1
	strb r0, [r5, #0xd]
	b _080B7AE4
	.align 2, 0
_080B7A98: .4byte 0x0000FFFF
_080B7A9C:
	adds r4, r5, #0
	adds r4, #0x46
	ldrh r0, [r4]
	adds r0, #0x28
	strh r0, [r4]
	adds r0, r5, #0
	movs r1, #0xdc
	movs r2, #0xa0
	bl sub_0806E29C
	cmp r0, #0
	beq _080B7ADE
	adds r0, r5, #0
	bl sub_0806BC40
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r7, [r5, #0xc]
	strb r7, [r5, #0xb]
	ldrb r1, [r6, #5]
	ands r0, r1
	cmp r0, #0
	beq _080B7ADE
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080B7ADE
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080B7ADE:
	ldrh r0, [r4]
	subs r0, #0x28
	strh r0, [r4]
_080B7AE4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B7AEC
sub_080B7AEC: @ 0x080B7AEC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldrb r0, [r6, #0x14]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080B7B10 @ =0x0852883C
	adds r1, r1, r0
	mov r8, r1
	ldrb r0, [r6, #0xb]
	cmp r0, #0
	beq _080B7B14
	cmp r0, #1
	beq _080B7B1A
	b _080B7BBC
	.align 2, 0
_080B7B10: .4byte 0x0852883C
_080B7B14:
	str r0, [r6, #0x20]
	movs r0, #1
	strb r0, [r6, #0xb]
_080B7B1A:
	adds r0, r6, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B7B2A
	adds r0, r6, #0
	bl sub_0806BC40
_080B7B2A:
	ldr r1, [r6, #0x20]
	mov r2, r8
	ldr r0, [r2, #0xc]
	cmp r1, r0
	bge _080B7B3C
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r1, r2
	str r0, [r6, #0x20]
_080B7B3C:
	adds r0, r6, #0
	bl sub_0806CDB8
	ldr r5, _080B7B80 @ =gEwramData
	ldr r1, [r5]
	ldr r4, _080B7B84 @ =0x0000A094
	adds r1, r1, r4
	movs r2, #6
	ldrsh r1, [r1, r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r7, r1, #0x10
	adds r0, r6, #0
	bl sub_0806CDFC
	ldr r1, [r5]
	adds r1, r1, r4
	movs r2, #0xa
	ldrsh r1, [r1, r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	subs r1, #0x50
	lsls r4, r1, #0x10
	adds r0, r6, #0
	bl sub_0806CD38
	ldr r1, [r6, #0x40]
	cmp r0, r1
	ble _080B7B88
	ldr r0, [r6, #0x20]
	subs r7, r7, r0
	b _080B7B8C
	.align 2, 0
_080B7B80: .4byte gEwramData
_080B7B84: .4byte 0x0000A094
_080B7B88:
	ldr r0, [r6, #0x20]
	adds r7, r7, r0
_080B7B8C:
	bl sub_0806CE40
	mov r2, r8
	movs r1, #6
	ldrsb r1, [r2, r1]
	muls r0, r1, r0
	adds r7, r7, r0
	ldr r3, [r6, #0x20]
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_080694B8
	adds r4, r0, #0
	adds r0, r6, #0
	bl sub_0806D3AC
	cmp r4, #0
	beq _080B7BBC
	movs r1, #0
	movs r0, #2
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xc]
	strb r1, [r6, #0xb]
_080B7BBC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B7BC8
sub_080B7BC8: @ 0x080B7BC8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x14]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080B7BEC @ =0x0852883C
	adds r5, r1, r0
	ldrb r0, [r4, #0xb]
	cmp r0, #5
	bls _080B7BE0
	b _080B7D88
_080B7BE0:
	lsls r0, r0, #2
	ldr r1, _080B7BF0 @ =_080B7BF4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B7BEC: .4byte 0x0852883C
_080B7BF0: .4byte _080B7BF4
_080B7BF4: @ jump table
	.4byte _080B7C0C @ case 0
	.4byte _080B7C2A @ case 1
	.4byte _080B7C56 @ case 2
	.4byte _080B7CB4 @ case 3
	.4byte _080B7CDC @ case 4
	.4byte _080B7D06 @ case 5
_080B7C0C:
	ldrb r1, [r5, #5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080B7C2A
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0x40
	strb r0, [r4, #0xd]
	movs r0, #5
	b _080B7D86
_080B7C2A:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _080B7CAC @ =0xFFFE0000
	str r0, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #0x54]
	ldr r0, [r4, #0x48]
	rsbs r0, r0, #0
	cmp r0, #0
	bge _080B7C4A
	adds r0, #0xf
_080B7C4A:
	asrs r0, r0, #4
	str r0, [r4, #0x50]
	movs r0, #2
	strb r0, [r4, #0xb]
	movs r0, #0x20
	strb r0, [r4, #0xd]
_080B7C56:
	adds r0, r4, #0
	bl sub_0806D3AC
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _080B7C6E
	subs r0, #1
	strb r0, [r4, #0xd]
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x50]
	adds r0, r0, r1
	str r0, [r4, #0x48]
_080B7C6E:
	ldr r0, [r4, #0x4c]
	ldr r1, [r4, #0x54]
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	cmp r0, #0
	ble _080B7C7E
	movs r0, #0
	str r0, [r4, #0x4c]
_080B7C7E:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #4
	beq _080B7C8A
	b _080B7D88
_080B7C8A:
	movs r0, #3
	strb r0, [r4, #0xb]
	ldr r0, [r5, #0x10]
	str r0, [r4, #0x4c]
	ldr r0, _080B7CB0 @ =0xFFFFE000
	str r0, [r4, #0x54]
	movs r0, #0x87
	bl sub_080D7910
	ldrb r0, [r4, #0x14]
	cmp r0, #1
	bne _080B7D88
	movs r0, #0xdd
	lsls r0, r0, #1
	bl sub_080D7910
	b _080B7D88
	.align 2, 0
_080B7CAC: .4byte 0xFFFE0000
_080B7CB0: .4byte 0xFFFFE000
_080B7CB4:
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r0, r4, #0
	bl sub_0806D460
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r2, #4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080B7D88
	ldr r0, _080B7CD8 @ =0xFFFFE000
	str r0, [r4, #0x54]
	strb r2, [r4, #0xb]
	b _080B7D88
	.align 2, 0
_080B7CD8: .4byte 0xFFFFE000
_080B7CDC:
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x54]
	adds r1, r1, r0
	str r1, [r4, #0x4c]
	cmp r1, #0
	bge _080B7D88
	movs r0, #0
	str r0, [r4, #0x4c]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _080B7D88
_080B7D06:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #0
	bne _080B7D16
	adds r0, r4, #0
	bl sub_0806BC40
_080B7D16:
	adds r0, r4, #0
	bl sub_0806CD38
	ldr r1, [r4, #0x40]
	cmp r0, r1
	ble _080B7D28
	movs r0, #0xc0
	lsls r0, r0, #6
	b _080B7D2A
_080B7D28:
	ldr r0, _080B7D44 @ =0xFFFFD000
_080B7D2A:
	str r0, [r4, #0x50]
	adds r0, r4, #0
	bl sub_0806CD78
	ldr r1, _080B7D48 @ =0xFF980000
	adds r0, r0, r1
	ldr r1, [r4, #0x44]
	cmp r0, r1
	ble _080B7D4C
	movs r0, #0xc0
	lsls r0, r0, #5
	b _080B7D58
	.align 2, 0
_080B7D44: .4byte 0xFFFFD000
_080B7D48: .4byte 0xFF980000
_080B7D4C:
	ldr r0, [r4, #0x4c]
	ldr r1, _080B7D7C @ =0xFFFFF000
	cmp r0, r1
	ble _080B7D56
	str r1, [r4, #0x4c]
_080B7D56:
	ldr r0, _080B7D80 @ =0xFFFFD000
_080B7D58:
	str r0, [r4, #0x54]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	adds r0, r4, #0
	bl sub_0806D430
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r4, #0
	bl sub_0806D460
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _080B7D84
	subs r0, #1
	strb r0, [r4, #0xd]
	b _080B7D88
	.align 2, 0
_080B7D7C: .4byte 0xFFFFF000
_080B7D80: .4byte 0xFFFFD000
_080B7D84:
	movs r0, #1
_080B7D86:
	strb r0, [r4, #0xb]
_080B7D88:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B7D90
sub_080B7D90: @ 0x080B7D90
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	beq _080B7DC8
	cmp r0, #1
	bgt _080B7DA6
	cmp r0, #0
	beq _080B7DAC
	b _080B7E54
_080B7DA6:
	cmp r0, #2
	beq _080B7E44
	b _080B7E54
_080B7DAC:
	movs r0, #0xde
	lsls r0, r0, #1
	bl sub_080D7910
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0x20
	strb r0, [r5, #0xd]
_080B7DC8:
	ldrb r1, [r5, #0xd]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080B7E1E
	movs r0, #8
	bl sub_0802D5EC
	lsls r0, r0, #0x10
	ldr r4, [r5, #0x40]
	adds r4, r4, r0
	movs r0, #0x10
	bl sub_0802D5EC
	subs r0, #0x10
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x44]
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0xd
	movs r3, #8
	bl sub_08045CEC
	adds r4, r0, #0
	cmp r4, #0
	beq _080B7E1E
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
	movs r0, #4
	strb r0, [r1]
_080B7E1E:
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _080B7E2A
	subs r0, #1
	strb r0, [r5, #0xd]
	b _080B7E54
_080B7E2A:
	ldr r0, _080B7E40 @ =0xFFFF8000
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r5, #0x54]
	movs r0, #2
	strb r0, [r5, #0xb]
	movs r0, #0x32
	strb r0, [r5, #0xd]
	b _080B7E54
	.align 2, 0
_080B7E40: .4byte 0xFFFF8000
_080B7E44:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r5, #0
	bl sub_0806D460
	adds r0, r5, #0
	bl sub_0806AEAC
_080B7E54:
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
	beq _080B7E74
	movs r0, #0
	b _080B7E76
_080B7E74:
	movs r0, #1
_080B7E76:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B7E80
sub_080B7E80: @ 0x080B7E80
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _080B7EE4 @ =0x0852883C
	adds r6, r0, r1
	ldr r1, _080B7EE8 @ =0x081F4214
	ldr r2, _080B7EEC @ =0x0820BCA0
	ldrb r3, [r6, #4]
	ldr r0, [r6]
	str r0, [sp]
	adds r0, r4, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B7F28
	adds r0, r4, #0
	bl sub_0806B04C
	adds r0, r4, #0
	adds r0, #0x5c
	movs r7, #4
	strb r7, [r0]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	strb r5, [r4, #0x14]
	ldr r0, _080B7EF0 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _080B7EF4
	strb r7, [r4, #0xa]
	b _080B7F34
	.align 2, 0
_080B7EE4: .4byte 0x0852883C
_080B7EE8: .4byte 0x081F4214
_080B7EEC: .4byte 0x0820BCA0
_080B7EF0: .4byte gEwramData
_080B7EF4:
	ldr r2, _080B7F2C @ =sub_080B76E4
	ldr r3, _080B7F30 @ =sub_080B8004
	adds r0, r4, #0
	movs r1, #8
	bl sub_080427B8
	adds r0, r4, #0
	bl sub_0806B1FC
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	strb r5, [r4, #0xa]
	ldrb r1, [r6, #5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080B7F34
	adds r0, r4, #0
	bl sub_080B7988
	cmp r0, #0
	bne _080B7F34
_080B7F28:
	movs r0, #1
	b _080B7F36
	.align 2, 0
_080B7F2C: .4byte sub_080B76E4
_080B7F30: .4byte sub_080B8004
_080B7F34:
	movs r0, #0
_080B7F36:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B7F40
sub_080B7F40: @ 0x080B7F40
	push {r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r1, #4
	bl sub_0806D128
	adds r4, r5, #0
	adds r4, #0x58
	movs r1, #1
	ands r0, r1
	lsls r3, r0, #5
	ldrb r2, [r4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r3
	strb r1, [r4]
	cmp r0, #0
	bne _080B7F6C
	adds r0, r5, #0
	bl sub_08021924
_080B7F6C:
	adds r0, r5, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _080B7F86
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	beq _080B7FFC
	mov r0, sp
	adds r1, r5, #0
	bl sub_080421AC
	b _080B7FFC
_080B7F86:
	ldrb r0, [r5, #0xa]
	cmp r0, #4
	bhi _080B7FE2
	lsls r0, r0, #2
	ldr r1, _080B7F98 @ =_080B7F9C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B7F98: .4byte _080B7F9C
_080B7F9C: @ jump table
	.4byte _080B7FB0 @ case 0
	.4byte _080B7FB8 @ case 1
	.4byte _080B7FC0 @ case 2
	.4byte _080B7FC8 @ case 3
	.4byte _080B7FDA @ case 4
_080B7FB0:
	adds r0, r5, #0
	bl sub_080B7A34
	b _080B7FE2
_080B7FB8:
	adds r0, r5, #0
	bl sub_080B7AEC
	b _080B7FE2
_080B7FC0:
	adds r0, r5, #0
	bl sub_080B7BC8
	b _080B7FE2
_080B7FC8:
	adds r0, r5, #0
	bl sub_080B7D90
	cmp r0, #0
	beq _080B7FE2
	adds r0, r5, #0
	bl sub_08000E14
	b _080B7FFC
_080B7FDA:
	adds r0, r5, #0
	bl sub_0803F17C
	b _080B7FFC
_080B7FE2:
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	beq _080B7FF6
	mov r0, sp
	adds r1, r5, #0
	bl sub_080421AC
	adds r0, r5, #0
	bl sub_0806DF20
_080B7FF6:
	adds r0, r5, #0
	bl sub_0803F17C
_080B7FFC:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080B8004
sub_080B8004: @ 0x080B8004
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080B803C
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
	movs r0, #3
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080B803C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B8044
sub_080B8044: @ 0x080B8044
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl sub_080B7E80
	cmp r0, #0
	beq _080B8058
	adds r0, r4, #0
	bl sub_08000E14
_080B8058:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B8060
sub_080B8060: @ 0x080B8060
	push {lr}
	bl sub_080B7F40
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B806C
sub_080B806C: @ 0x080B806C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_080B7E80
	cmp r0, #0
	beq _080B8080
	adds r0, r4, #0
	bl sub_08000E14
_080B8080:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B8088
sub_080B8088: @ 0x080B8088
	push {lr}
	bl sub_080B7F40
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B8094
sub_080B8094: @ 0x080B8094
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #2
	bl sub_080B7E80
	cmp r0, #0
	beq _080B80A8
	adds r0, r4, #0
	bl sub_08000E14
_080B80A8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B80B0
sub_080B80B0: @ 0x080B80B0
	push {lr}
	bl sub_080B7F40
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B80BC
sub_080B80BC: @ 0x080B80BC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r1, [r6, #0x18]
	ldr r2, _080B80DC @ =0x08528878
	movs r3, #4
	bl sub_0806CAF8
	ldrb r0, [r6, #0xb]
	cmp r0, #1
	beq _080B80EC
	cmp r0, #1
	bgt _080B80E0
	cmp r0, #0
	beq _080B80E6
	b _080B8230
	.align 2, 0
_080B80DC: .4byte 0x08528878
_080B80E0:
	cmp r0, #2
	beq _080B8188
	b _080B8230
_080B80E6:
	str r0, [r6, #0x18]
	movs r0, #1
	strb r0, [r6, #0xb]
_080B80EC:
	ldrb r0, [r6, #0xd]
	movs r1, #0x19
	bl __umodsi3
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B811A
	movs r2, #0x40
	rsbs r2, r2, #0
	movs r3, #0xb8
	lsls r3, r3, #1
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r2, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _080B811A
	movs r0, #0x7d
	bl sub_080D7910
_080B811A:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	ldr r1, [r6, #0x18]
	ldr r0, _080B817C @ =0x00027FFF
	cmp r1, r0
	bgt _080B8130
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r1, r2
	str r0, [r6, #0x18]
_080B8130:
	ldrb r0, [r6, #0x1c]
	adds r0, #1
	strb r0, [r6, #0x1c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x50
	bls _080B8230
	ldrh r1, [r6, #0x30]
	adds r1, #2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bne _080B816A
	ldr r4, _080B8180 @ =0x1810E0F8
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080428F0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08042884
_080B816A:
	ldr r0, _080B8184 @ =0x00000127
	bl sub_080D7910
	movs r0, #2
	strb r0, [r6, #0xb]
	movs r0, #0
	strb r0, [r6, #0xd]
	b _080B8230
	.align 2, 0
_080B817C: .4byte 0x00027FFF
_080B8180: .4byte 0x1810E0F8
_080B8184: .4byte 0x00000127
_080B8188:
	ldr r0, [r6, #0x18]
	cmp r0, #0
	ble _080B8194
	ldr r2, _080B8238 @ =0xFFFFF000
	adds r0, r0, r2
	str r0, [r6, #0x18]
_080B8194:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080B81DC
	ldr r4, [r6, #0x40]
	ldr r5, [r6, #0x44]
	bl sub_08000A90
	adds r2, r0, #0
	movs r7, #1
	ands r2, r7
	adds r2, #4
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #6
	bl sub_08045CEC
	adds r2, r0, #0
	cmp r2, #0
	beq _080B81DC
	strb r7, [r2, #0xf]
	movs r3, #0x80
	lsls r3, r3, #8
	str r3, [r2, #0x48]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B81DC
	rsbs r0, r3, #0
	str r0, [r2, #0x48]
_080B81DC:
	adds r0, r6, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B8230
	movs r5, #0
	strb r5, [r6, #0x1c]
	ldrh r1, [r6, #0x30]
	adds r0, r6, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bne _080B8214
	ldr r4, _080B823C @ =0x1838E0F0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080428F0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08042884
_080B8214:
	strb r5, [r6, #0xb]
	adds r3, r6, #0
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
_080B8230:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B8238: .4byte 0xFFFFF000
_080B823C: .4byte 0x1838E0F0

	thumb_func_start sub_080B8240
sub_080B8240: @ 0x080B8240
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrb r4, [r5, #0xb]
	cmp r4, #0
	beq _080B8252
	cmp r4, #1
	beq _080B82C0
	b _080B8390
_080B8252:
	ldrb r0, [r5, #0x14]
	cmp r0, #0
	beq _080B826E
	ldr r2, _080B82E8 @ =gEwramData
	lsls r1, r0, #5
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080B82EC @ =0x000004E4
	adds r1, r1, r0
	ldr r0, [r2]
	adds r0, r0, r1
	bl sub_08045E38
	strb r4, [r5, #0x14]
_080B826E:
	ldrb r0, [r5, #0x15]
	cmp r0, #0
	beq _080B828A
	ldr r2, _080B82E8 @ =gEwramData
	lsls r1, r0, #5
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080B82EC @ =0x000004E4
	adds r1, r1, r0
	ldr r0, [r2]
	adds r0, r0, r1
	bl sub_08045E38
	strb r4, [r5, #0x15]
_080B828A:
	ldrh r1, [r5, #0x30]
	adds r1, #2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #1
	strb r0, [r5, #0xb]
	ldr r2, _080B82F0 @ =0xFFFD8000
	str r2, [r5, #0x48]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B82B6
	rsbs r0, r2, #0
	str r0, [r5, #0x48]
_080B82B6:
	str r2, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	strb r4, [r5, #0xd]
_080B82C0:
	ldrb r0, [r5, #0xd]
	cmp r0, #0x27
	bhi _080B8310
	adds r1, r0, #0
	movs r0, #0x28
	subs r0, r0, r1
	bl sub_0806D518
	cmp r0, #0
	beq _080B82F4
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x28
	orrs r1, r0
	strb r1, [r2]
	b _080B8310
	.align 2, 0
_080B82E8: .4byte gEwramData
_080B82EC: .4byte 0x000004E4
_080B82F0: .4byte 0xFFFD8000
_080B82F4:
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
_080B8310:
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080B8324
	movs r0, #0x6e
	bl sub_080D7910
_080B8324:
	ldrb r1, [r5, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080B8352
	movs r0, #0x10
	bl sub_0802D5EC
	lsls r0, r0, #0x10
	ldr r4, [r5, #0x40]
	adds r4, r4, r0
	movs r0, #0x10
	bl sub_0802D5EC
	subs r0, #0x20
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x44]
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #1
	movs r3, #7
	bl sub_08045CEC
_080B8352:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r5, #0
	bl sub_0806D3D8
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
	beq _080B838C
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B8390
	ldrb r0, [r5, #0xd]
	cmp r0, #0x80
	bhi _080B8390
_080B838C:
	movs r0, #1
	b _080B8392
_080B8390:
	movs r0, #0
_080B8392:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B839C
sub_080B839C: @ 0x080B839C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _080B83C0 @ =0x081EC1FC
	ldr r2, _080B83C4 @ =0x0820BBF8
	ldr r0, _080B83C8 @ =0x08247488
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B83CC
	adds r0, r5, #0
	bl sub_08000E14
	b _080B849C
	.align 2, 0
_080B83C0: .4byte 0x081EC1FC
_080B83C4: .4byte 0x0820BBF8
_080B83C8: .4byte 0x08247488
_080B83CC:
	adds r0, r5, #0
	bl sub_0806B04C
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #9
	strb r0, [r1]
	ldr r0, _080B8408 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B840C
	movs r0, #1
	strh r0, [r5, #0x30]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	movs r0, #3
	strb r0, [r5, #0xa]
	b _080B849C
	.align 2, 0
_080B8408: .4byte gEwramData
_080B840C:
	ldrh r1, [r5, #0x30]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	ldr r0, _080B844C @ =sub_080B8628
	str r0, [r5, #4]
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _080B845C
	ldr r2, _080B8450 @ =sub_0806E1B8
	ldr r3, _080B8454 @ =sub_080B85E8
	adds r0, r5, #0
	movs r1, #8
	bl sub_0804277C
	ldr r4, _080B8458 @ =0x1838E0F0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080428F0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08042884
	b _080B8478
	.align 2, 0
_080B844C: .4byte sub_080B8628
_080B8450: .4byte sub_0806E1B8
_080B8454: .4byte sub_080B85E8
_080B8458: .4byte 0x1838E0F0
_080B845C:
	ldr r2, _080B84A4 @ =sub_0806E1B8
	ldr r3, _080B84A8 @ =sub_080B85E8
	adds r0, r5, #0
	movs r1, #8
	bl sub_080427B8
	ldr r1, _080B84AC @ =0x1838E0F0
	adds r0, r5, #0
	bl sub_080428F0
	ldr r1, _080B84B0 @ =0x2010C400
	adds r0, r5, #0
	bl sub_08042884
_080B8478:
	adds r0, r5, #0
	bl sub_0806AF98
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r0, [r1]
	adds r0, #1
	movs r2, #0
	strh r0, [r1]
	adds r3, r5, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	strb r2, [r5, #0xa]
	movs r0, #0x28
	strb r0, [r5, #0x1c]
_080B849C:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B84A4: .4byte sub_0806E1B8
_080B84A8: .4byte sub_080B85E8
_080B84AC: .4byte 0x1838E0F0
_080B84B0: .4byte 0x2010C400

	thumb_func_start sub_080B84B4
sub_080B84B4: @ 0x080B84B4
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r0, #0
	movs r5, #1
	bl sub_08002188
	strh r0, [r4, #0x20]
	adds r0, r4, #0
	bl sub_080021A8
	strh r0, [r4, #0x22]
	movs r1, #0x20
	rsbs r1, r1, #0
	adds r0, r4, #0
	bl sub_0806E4F8
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080B8518
	ldr r1, _080B8544 @ =0xFFFFFF00
	movs r2, #0x60
	rsbs r2, r2, #0
	movs r3, #0xbc
	lsls r3, r3, #2
	movs r0, #0xb0
	lsls r0, r0, #1
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _080B85DE
	adds r0, r4, #0
	bl sub_08021924
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080B8518
	adds r0, r4, #0
	bl sub_0806D4C0
	movs r5, #0
	cmp r0, #0
	bne _080B8518
	movs r5, #1
_080B8518:
	adds r0, r4, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _080B8548
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080B85DE
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080B85DE
	adds r0, r4, #0
	movs r1, #0
	bl sub_08021278
	b _080B85DE
	.align 2, 0
_080B8544: .4byte 0xFFFFFF00
_080B8548:
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080B855E
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _080B855E
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_08021278
_080B855E:
	ldrb r5, [r4, #0xa]
	cmp r5, #1
	beq _080B85A8
	cmp r5, #1
	bgt _080B856E
	cmp r5, #0
	beq _080B8578
	b _080B85CA
_080B856E:
	cmp r5, #2
	beq _080B85B0
	cmp r5, #3
	beq _080B85C2
	b _080B85CA
_080B8578:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #1
	bl sub_080458E4
	cmp r0, #0
	beq _080B858C
	ldrb r0, [r0, #0x10]
	strb r0, [r4, #0x14]
_080B858C:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080458E4
	cmp r0, #0
	beq _080B85A0
	ldrb r0, [r0, #0x10]
	strb r0, [r4, #0x15]
_080B85A0:
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
_080B85A8:
	adds r0, r4, #0
	bl sub_080B80BC
	b _080B85CA
_080B85B0:
	adds r0, r4, #0
	bl sub_080B8240
	cmp r0, #0
	beq _080B85CA
	adds r0, r4, #0
	bl sub_08000E14
	b _080B85DE
_080B85C2:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080B85DE
_080B85CA:
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080B85D8
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
_080B85D8:
	adds r0, r4, #0
	bl sub_0803F17C
_080B85DE:
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B85E8
sub_080B85E8: @ 0x080B85E8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080B8620
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
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080B8620:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B8628
sub_080B8628: @ 0x080B8628
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x40]
	ldr r6, [r4, #0x44]
	ldr r0, _080B8660 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _080B8664 @ =0x0000A094
	adds r2, r2, r0
	ldrh r0, [r4, #0x20]
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r0, [r4, #0x22]
	ldrh r1, [r2, #0xa]
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_0803B9D0
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B8660: .4byte gEwramData
_080B8664: .4byte 0x0000A094

	thumb_func_start sub_080B8668
sub_080B8668: @ 0x080B8668
	push {r4, r5, r6, lr}
	sub sp, #0x14
	adds r6, r0, #0
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	beq _080B871E
	cmp r0, #1
	bgt _080B867E
	cmp r0, #0
	beq _080B8686
	b _080B8792
_080B867E:
	cmp r0, #2
	bne _080B8684
	b _080B8784
_080B8684:
	b _080B8792
_080B8686:
	ldr r1, _080B86B8 @ =0x081E41C4
	ldr r2, _080B86BC @ =0x0820B880
	ldr r0, _080B86C0 @ =0x08241790
	str r0, [sp]
	adds r0, r6, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B869E
	b _080B879E
_080B869E:
	ldrb r1, [r6, #0xb]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080B86C4
	adds r0, r6, #0
	movs r1, #0xb
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _080B86D0
	.align 2, 0
_080B86B8: .4byte 0x081E41C4
_080B86BC: .4byte 0x0820B880
_080B86C0: .4byte 0x08241790
_080B86C4:
	adds r0, r6, #0
	movs r1, #6
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080B86D0:
	adds r1, r6, #0
	adds r1, #0x5c
	movs r5, #0
	movs r0, #0x13
	strb r0, [r1]
	ldr r2, _080B8770 @ =sub_0806E1B8
	ldr r3, _080B8774 @ =sub_080B9F88
	adds r0, r6, #0
	movs r1, #8
	bl sub_0804277C
	ldr r4, _080B8778 @ =0x1018F0F4
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080428F0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08042884
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r6, #0x54]
	str r5, [r6, #0x4c]
	ldrb r1, [r6, #0xb]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080B8716
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_080B8716:
	movs r1, #1
	movs r0, #1
	strh r0, [r6, #0x34]
	strb r1, [r6, #0xa]
_080B871E:
	ldr r1, [r6, #0x14]
	ldr r0, _080B877C @ =0x0001FFFF
	cmp r1, r0
	bgt _080B872E
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r1, r2
	str r0, [r6, #0x14]
_080B872E:
	ldr r1, [r6, #0x14]
	ldr r2, _080B8780 @ =0x08528890
	adds r0, r6, #0
	movs r3, #8
	bl sub_0806CAF8
	adds r4, r0, #0
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _080B8760
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _080B8754
	movs r0, #1
	strb r0, [r6, #0xc]
	movs r0, #0x68
	bl sub_080D7910
_080B8754:
	movs r0, #3
	ands r0, r4
	cmp r0, #0
	beq _080B8760
	movs r0, #2
	strb r0, [r6, #0xa]
_080B8760:
	movs r1, #0x34
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bne _080B8792
	movs r0, #2
	strb r0, [r6, #0xa]
	b _080B8792
	.align 2, 0
_080B8770: .4byte sub_0806E1B8
_080B8774: .4byte sub_080B9F88
_080B8778: .4byte 0x1018F0F4
_080B877C: .4byte 0x0001FFFF
_080B8780: .4byte 0x08528890
_080B8784:
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x44]
	movs r2, #0
	movs r3, #7
	bl sub_08045CEC
	b _080B879E
_080B8792:
	adds r0, r6, #0
	movs r1, #3
	bl sub_0806D128
	cmp r0, #0
	beq _080B87A6
_080B879E:
	adds r0, r6, #0
	bl sub_08000E14
	b _080B87BA
_080B87A6:
	ldrb r0, [r6, #0xa]
	cmp r0, #2
	beq _080B87B4
	add r0, sp, #4
	adds r1, r6, #0
	bl sub_080421AC
_080B87B4:
	adds r0, r6, #0
	bl sub_0803F17C
_080B87BA:
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B87C4
sub_080B87C4: @ 0x080B87C4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r3, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r0, _080B884C @ =sub_080B8668
	bl sub_0806DFF8
	mov ip, r0
	cmp r0, #0
	beq _080B8846
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsrs r0, r0, #1
	mov r1, ip
	adds r1, #0x3c
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	mov r3, ip
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
	beq _080B8814
	lsls r0, r4, #0x10
	rsbs r0, r0, #0
	lsrs r4, r0, #0x10
_080B8814:
	adds r2, r5, #0
	adds r2, #0x42
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r2]
	adds r0, r0, r2
	mov r2, ip
	adds r2, #0x42
	strh r0, [r2]
	adds r1, r5, #0
	adds r1, #0x46
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r3, ip
	adds r3, #0x46
	strh r0, [r3]
	mov r0, ip
	strb r7, [r0, #0xb]
	adds r2, #0x17
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_080B8846:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B884C: .4byte sub_080B8668

	thumb_func_start sub_080B8850
sub_080B8850: @ 0x080B8850
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080B8860
	cmp r0, #1
	beq _080B8864
	b _080B894C
_080B8860:
	movs r0, #1
	strb r0, [r4, #0xb]
_080B8864:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #2
	bgt _080B887A
	cmp r1, #1
	bge _080B8886
	cmp r1, #0
	beq _080B8880
	b _080B88AC
_080B887A:
	cmp r1, #3
	beq _080B889C
	b _080B88AC
_080B8880:
	movs r0, #0xc0
	lsls r0, r0, #8
	b _080B88AA
_080B8886:
	ldr r0, [r4, #0x14]
	ldr r1, _080B8898 @ =0xFFFFEE00
	adds r0, r0, r1
	str r0, [r4, #0x14]
	cmp r0, #0
	bge _080B88AC
	movs r0, #0
	b _080B88AA
	.align 2, 0
_080B8898: .4byte 0xFFFFEE00
_080B889C:
	ldr r1, [r4, #0x14]
	ldr r0, _080B8910 @ =0x0000BFFF
	cmp r1, r0
	bgt _080B88AC
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r1, r2
_080B88AA:
	str r0, [r4, #0x14]
_080B88AC:
	ldr r1, [r4, #0x14]
	ldr r2, _080B8914 @ =0x08528884
	adds r0, r4, #0
	movs r3, #8
	bl sub_0806CAF8
	adds r5, r0, #0
	movs r6, #3
	ands r0, r6
	cmp r0, #0
	beq _080B88DC
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
_080B88DC:
	movs r1, #8
	ands r1, r5
	cmp r1, #0
	beq _080B8918
	ldrh r5, [r7]
	cmp r5, #0
	bne _080B894C
	adds r0, r4, #0
	movs r1, #0xa0
	movs r2, #0x3c
	bl sub_0806E29C
	adds r1, r0, #0
	cmp r1, #0
	beq _080B8922
	bl sub_08000A90
	adds r1, r0, #0
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _080B8918
	strb r6, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	b _080B894C
	.align 2, 0
_080B8910: .4byte 0x0000BFFF
_080B8914: .4byte 0x08528884
_080B8918:
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	b _080B894C
_080B8922:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _080B894C
	strb r1, [r4, #0xc]
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
_080B894C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B8954
sub_080B8954: @ 0x080B8954
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _080B8982
	cmp r0, #1
	bgt _080B8968
	cmp r0, #0
	beq _080B8974
	b _080B8A86
_080B8968:
	cmp r0, #2
	beq _080B8A18
	cmp r0, #3
	bne _080B8972
	b _080B8A72
_080B8972:
	b _080B8A86
_080B8974:
	adds r0, r4, #0
	bl sub_0806BC40
	movs r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0x78
	strh r0, [r4, #0x18]
_080B8982:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #2
	bgt _080B8996
	cmp r0, #1
	bge _080B89A2
	cmp r0, #0
	beq _080B899C
	b _080B89C8
_080B8996:
	cmp r0, #3
	beq _080B89B8
	b _080B89C8
_080B899C:
	movs r0, #0xc0
	lsls r0, r0, #8
	b _080B89C6
_080B89A2:
	ldr r0, [r4, #0x14]
	ldr r1, _080B89B4 @ =0xFFFFEE00
	adds r0, r0, r1
	str r0, [r4, #0x14]
	cmp r0, #0
	bge _080B89C8
	movs r0, #0
	b _080B89C6
	.align 2, 0
_080B89B4: .4byte 0xFFFFEE00
_080B89B8:
	ldr r1, [r4, #0x14]
	ldr r0, _080B89EC @ =0x0000BFFF
	cmp r1, r0
	bgt _080B89C8
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r1, r2
_080B89C6:
	str r0, [r4, #0x14]
_080B89C8:
	ldr r1, [r4, #0x14]
	ldr r2, _080B89F0 @ =0x08528884
	adds r0, r4, #0
	movs r3, #0xd
	bl sub_0806CAF8
	ldrh r0, [r4, #0x18]
	subs r0, #1
	movs r1, #0
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080B89F4
	strb r1, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	b _080B8A86
	.align 2, 0
_080B89EC: .4byte 0x0000BFFF
_080B89F0: .4byte 0x08528884
_080B89F4:
	adds r0, r4, #0
	movs r1, #0x64
	movs r2, #0x3c
	bl sub_0806E29C
	cmp r0, #0
	beq _080B8A86
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #2
	strb r0, [r4, #0xb]
	movs r0, #0
	str r0, [r4, #0x14]
	b _080B8A86
_080B8A18:
	ldr r1, [r4, #0x14]
	ldr r2, _080B8A4C @ =0x08528884
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_0806CAF8
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #8
	bls _080B8A60
	cmp r0, #9
	bne _080B8A50
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B8A44
	movs r0, #0xe5
	lsls r0, r0, #1
	bl sub_080D7910
_080B8A44:
	movs r0, #0x80
	lsls r0, r0, #0xa
	b _080B8A5E
	.align 2, 0
_080B8A4C: .4byte 0x08528884
_080B8A50:
	ldr r0, [r4, #0x14]
	ldr r1, _080B8A8C @ =0xFFFFE000
	adds r0, r0, r1
	str r0, [r4, #0x14]
	cmp r0, #0
	bge _080B8A60
	movs r0, #0
_080B8A5E:
	str r0, [r4, #0x14]
_080B8A60:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B8A86
	movs r0, #3
	strb r0, [r4, #0xb]
_080B8A72:
	adds r0, r4, #0
	movs r1, #7
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xb]
_080B8A86:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B8A8C: .4byte 0xFFFFE000

	thumb_func_start sub_080B8A90
sub_080B8A90: @ 0x080B8A90
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xb]
	cmp r5, #1
	beq _080B8AE4
	cmp r5, #1
	bgt _080B8AA4
	cmp r5, #0
	beq _080B8AB0
	b _080B8BF8
_080B8AA4:
	cmp r5, #2
	beq _080B8B6C
	cmp r5, #3
	bne _080B8AAE
	b _080B8BE4
_080B8AAE:
	b _080B8BF8
_080B8AB0:
	adds r0, r4, #0
	bl sub_0806BC40
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x14]
	bl sub_08000A90
	movs r1, #7
	ands r1, r0
	lsls r1, r1, #0xb
	ldr r0, _080B8B64 @ =0xFFFF4000
	subs r0, r0, r1
	str r0, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r4, #0x54]
	strh r5, [r4, #0x18]
	movs r0, #1
	strb r0, [r4, #0xb]
_080B8AE4:
	ldrh r0, [r4, #0x18]
	adds r1, r0, #1
	strh r1, [r4, #0x18]
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080B8B4A
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x14
	ble _080B8B2C
	cmp r0, #0x1d
	bgt _080B8B2C
	bl sub_08000A90
	movs r1, #0x3f
	ands r1, r0
	cmp r1, #0
	bne _080B8B2C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x17
	movs r3, #0x11
	bl sub_080458E4
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #0x10
	bl sub_080458E4
	ldr r0, [r4, #0x4c]
	ldr r1, _080B8B64 @ =0xFFFF4000
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	movs r0, #1
	strb r0, [r4, #0xc]
_080B8B2C:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080B8B4A
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0x1e
	bne _080B8B4A
	adds r0, r4, #0
	movs r1, #9
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #2
	strb r0, [r4, #0xb]
_080B8B4A:
	ldr r1, [r4, #0x14]
	ldr r2, _080B8B68 @ =0x08528884
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806CAF8
	adds r1, r0, #0
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080B8BF8
	movs r0, #3
	b _080B8BF6
	.align 2, 0
_080B8B64: .4byte 0xFFFF4000
_080B8B68: .4byte 0x08528884
_080B8B6C:
	ldrh r0, [r4, #0x18]
	adds r0, #1
	strh r0, [r4, #0x18]
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080B8BA2
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #6
	bne _080B8BA2
	ldr r0, _080B8BDC @ =0x000001CB
	bl sub_080D7910
	movs r0, #0x81
	bl sub_080D7910
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r2, #0x14
	rsbs r2, r2, #0
	adds r0, r4, #0
	movs r3, #0
	bl sub_080B87C4
	movs r0, #1
	strb r0, [r4, #0xc]
_080B8BA2:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B8BC0
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #1
	strb r0, [r4, #0xb]
_080B8BC0:
	ldr r1, [r4, #0x14]
	ldr r2, _080B8BE0 @ =0x08528884
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806CAF8
	adds r1, r0, #0
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080B8BF8
	movs r0, #3
	b _080B8BF6
	.align 2, 0
_080B8BDC: .4byte 0x000001CB
_080B8BE0: .4byte 0x08528884
_080B8BE4:
	adds r0, r4, #0
	movs r1, #7
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xc]
_080B8BF6:
	strb r0, [r4, #0xb]
_080B8BF8:
	ldr r0, [r4, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #9
	cmp r0, r1
	ble _080B8C04
	str r1, [r4, #0x4c]
_080B8C04:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B8C0C
sub_080B8C0C: @ 0x080B8C0C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	beq _080B8C30
	cmp r0, #1
	bgt _080B8C20
	cmp r0, #0
	beq _080B8C26
	b _080B8C98
_080B8C20:
	cmp r0, #2
	beq _080B8C86
	b _080B8C98
_080B8C26:
	movs r0, #1
	strb r0, [r5, #0xb]
	strb r0, [r5, #0xf]
	movs r0, #0x20
	strb r0, [r5, #0xd]
_080B8C30:
	ldrb r1, [r5, #0xd]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080B8C6E
	ldrb r0, [r5, #0xd]
	lsrs r4, r0, #1
	rsbs r4, r4, #0
	adds r4, #4
	lsls r4, r4, #0x10
	lsls r0, r0, #0xd
	bl sub_080009E4
	lsls r0, r0, #3
	ldr r2, [r5, #0x40]
	adds r2, r2, r0
	ldr r1, [r5, #0x44]
	adds r1, r1, r4
	adds r0, r2, #0
	movs r2, #5
	movs r3, #6
	bl sub_08045CEC
	adds r1, r0, #0
	cmp r1, #0
	beq _080B8C6E
	ldr r0, _080B8C7C @ =0xFFFE8000
	str r0, [r1, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r1, #0x54]
_080B8C6E:
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _080B8C80
	subs r0, #1
	strb r0, [r5, #0xd]
	b _080B8C98
	.align 2, 0
_080B8C7C: .4byte 0xFFFE8000
_080B8C80:
	movs r0, #2
	strb r0, [r5, #0xb]
	b _080B8C98
_080B8C86:
	movs r2, #0x10
	rsbs r2, r2, #0
	adds r0, r5, #0
	movs r1, #0
	movs r3, #2
	bl sub_080B87C4
	movs r0, #1
	b _080B8C9A
_080B8C98:
	movs r0, #0
_080B8C9A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080B8CA0
sub_080B8CA0: @ 0x080B8CA0
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _080B8CC4 @ =0x081E41C4
	ldr r2, _080B8CC8 @ =0x0820B880
	ldr r0, _080B8CCC @ =0x08241790
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B8CD0
	adds r0, r4, #0
	bl sub_08000E14
	b _080B8D3E
	.align 2, 0
_080B8CC4: .4byte 0x081E41C4
_080B8CC8: .4byte 0x0820B880
_080B8CCC: .4byte 0x08241790
_080B8CD0:
	adds r0, r4, #0
	bl sub_0806B04C
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x13
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #7
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _080B8D08 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B8D0C
	movs r0, #5
	strb r0, [r4, #0xa]
	b _080B8D3E
	.align 2, 0
_080B8D08: .4byte gEwramData
_080B8D0C:
	ldr r2, _080B8D48 @ =sub_0806E1B8
	ldr r3, _080B8D4C @ =sub_080B9EEC
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
_080B8D3E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B8D48: .4byte sub_0806E1B8
_080B8D4C: .4byte sub_080B9EEC

	thumb_func_start sub_080B8D50
sub_080B8D50: @ 0x080B8D50
	push {r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r1, #4
	bl sub_0806D128
	adds r4, r5, #0
	adds r4, #0x58
	movs r1, #1
	ands r0, r1
	lsls r3, r0, #5
	ldrb r2, [r4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r3
	strb r1, [r4]
	cmp r0, #0
	bne _080B8D7C
	adds r0, r5, #0
	bl sub_08021924
_080B8D7C:
	adds r0, r5, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _080B8D96
	ldrb r0, [r5, #0xa]
	cmp r0, #4
	beq _080B8E0A
	mov r0, sp
	adds r1, r5, #0
	bl sub_080421AC
	b _080B8E0A
_080B8D96:
	ldrb r0, [r5, #0xa]
	cmp r0, #5
	bhi _080B8DF6
	lsls r0, r0, #2
	ldr r1, _080B8DA8 @ =_080B8DAC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B8DA8: .4byte _080B8DAC
_080B8DAC: @ jump table
	.4byte _080B8DC4 @ case 0
	.4byte _080B8DF6 @ case 1
	.4byte _080B8DD4 @ case 2
	.4byte _080B8DCC @ case 3
	.4byte _080B8DDC @ case 4
	.4byte _080B8DEE @ case 5
_080B8DC4:
	adds r0, r5, #0
	bl sub_080B8850
	b _080B8DF6
_080B8DCC:
	adds r0, r5, #0
	bl sub_080B8954
	b _080B8DF6
_080B8DD4:
	adds r0, r5, #0
	bl sub_080B8A90
	b _080B8DF6
_080B8DDC:
	adds r0, r5, #0
	bl sub_080B8C0C
	cmp r0, #0
	beq _080B8DF6
	adds r0, r5, #0
	bl sub_08000E14
	b _080B8E0A
_080B8DEE:
	adds r0, r5, #0
	bl sub_0803F17C
	b _080B8E0A
_080B8DF6:
	ldrb r0, [r5, #0xa]
	cmp r0, #4
	beq _080B8E04
	mov r0, sp
	adds r1, r5, #0
	bl sub_080421AC
_080B8E04:
	adds r0, r5, #0
	bl sub_0806DF20
_080B8E0A:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B8E14
sub_080B8E14: @ 0x080B8E14
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _080B8E44 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _080B8E48 @ =0x0000A094
	adds r2, r2, r0
	ldr r0, [r4, #0x40]
	ldr r1, [r2, #4]
	adds r0, r0, r1
	ldr r1, [r4, #0x1c]
	subs r5, r1, r0
	ldr r0, [r4, #0x44]
	ldr r1, [r2, #8]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	subs r6, r1, r0
	movs r0, #0x80
	lsls r0, r0, #0xb
	cmp r5, r0
	ble _080B8E4C
	movs r0, #0x80
	lsls r0, r0, #5
	b _080B8E62
	.align 2, 0
_080B8E44: .4byte gEwramData
_080B8E48: .4byte 0x0000A094
_080B8E4C:
	ldr r0, _080B8E58 @ =0xFFFC0000
	cmp r5, r0
	bge _080B8E60
	ldr r0, _080B8E5C @ =0xFFFFF000
	b _080B8E62
	.align 2, 0
_080B8E58: .4byte 0xFFFC0000
_080B8E5C: .4byte 0xFFFFF000
_080B8E60:
	movs r0, #0
_080B8E62:
	str r0, [r4, #0x50]
	movs r0, #0x80
	lsls r0, r0, #0xb
	cmp r6, r0
	ble _080B8E72
	movs r0, #0x80
	lsls r0, r0, #5
	b _080B8E86
_080B8E72:
	ldr r0, _080B8E7C @ =0xFFFC0000
	cmp r6, r0
	bge _080B8E84
	ldr r0, _080B8E80 @ =0xFFFFF000
	b _080B8E86
	.align 2, 0
_080B8E7C: .4byte 0xFFFC0000
_080B8E80: .4byte 0xFFFFF000
_080B8E84:
	movs r0, #0
_080B8E86:
	str r0, [r4, #0x54]
	adds r0, r4, #0
	movs r1, #0x20
	bl sub_0806D490
	adds r0, r4, #0
	movs r1, #0x20
	bl sub_0806D4A8
	movs r1, #0xa0
	lsls r1, r1, #0xa
	adds r0, r4, #0
	bl sub_0806D3D8
	adds r1, r5, #0
	cmp r1, #0
	bge _080B8EAA
	rsbs r1, r1, #0
_080B8EAA:
	ldr r0, _080B8EC0 @ =0x0007FFFF
	cmp r1, r0
	bgt _080B8EC4
	adds r1, r6, #0
	cmp r1, #0
	bge _080B8EB8
	rsbs r1, r1, #0
_080B8EB8:
	cmp r1, r0
	bgt _080B8EC4
	movs r0, #1
	b _080B8EC6
	.align 2, 0
_080B8EC0: .4byte 0x0007FFFF
_080B8EC4:
	movs r0, #0
_080B8EC6:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080B8ECC
sub_080B8ECC: @ 0x080B8ECC
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _080B8EDE
	cmp r0, #1
	beq _080B8F2C
	b _080B8FC6
_080B8EDE:
	ldr r1, _080B8EFC @ =0x081E41C4
	ldr r2, _080B8F00 @ =0x0820B880
	ldr r0, _080B8F04 @ =0x08241790
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B8F08
	adds r0, r5, #0
	bl sub_08000E14
	b _080B8FC6
	.align 2, 0
_080B8EFC: .4byte 0x081E41C4
_080B8F00: .4byte 0x0820B880
_080B8F04: .4byte 0x08241790
_080B8F08:
	adds r0, r5, #0
	movs r1, #0xd
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #3
	strb r0, [r1]
	movs r0, #0x20
	strb r0, [r5, #0xd]
	movs r0, #0xa0
	lsls r0, r0, #0xf
	str r0, [r5, #0x10]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
_080B8F2C:
	ldr r0, _080B8FB4 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _080B8FB8 @ =0x0000A094
	adds r2, r2, r0
	ldr r0, [r5, #0x50]
	ldr r1, [r2, #0xc]
	subs r0, r0, r1
	str r0, [r5, #0x50]
	ldr r0, [r5, #0x54]
	ldr r1, [r2, #0x10]
	subs r0, r0, r1
	str r0, [r5, #0x54]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bge _080B8F52
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
_080B8F52:
	lsrs r4, r0, #0x10
	movs r1, #0x14
	ldrsh r0, [r5, r1]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, [r5, #0x50]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	movs r1, #0x14
	ldrsh r0, [r5, r1]
	bl sub_080009E4
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, [r5, #0x54]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldr r1, [r5, #0x48]
	ldr r0, _080B8FBC @ =0xFFFFD800
	adds r1, r1, r0
	str r1, [r5, #0x48]
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0x10]
	ldrh r0, [r5, #0x16]
	ldrh r1, [r5, #0x14]
	adds r0, r0, r1
	strh r0, [r5, #0x14]
	adds r0, r5, #0
	bl sub_0803F17C
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _080B8FC0
	cmp r0, #0x10
	bne _080B8FAC
	movs r0, #1
	strb r0, [r5, #0xf]
_080B8FAC:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	b _080B8FC6
	.align 2, 0
_080B8FB4: .4byte gEwramData
_080B8FB8: .4byte 0x0000A094
_080B8FBC: .4byte 0xFFFFD800
_080B8FC0:
	adds r0, r5, #0
	bl sub_08000E14
_080B8FC6:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B8FD0
sub_080B8FD0: @ 0x080B8FD0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	movs r0, #2
	mov r8, r0
_080B8FE0:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _080B9044 @ =sub_080B8ECC
	bl sub_08000DA0
	mov ip, r0
	cmp r0, #0
	beq _080B9068
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	mov r4, ip
	adds r4, #0x52
	strh r0, [r4]
	adds r0, r6, #0
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0x10
	mov r1, ip
	adds r1, #0x56
	strh r0, [r1]
	movs r0, #0xfc
	lsls r0, r0, #8
	mov r1, ip
	strh r0, [r1, #0x16]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	mov r3, ip
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
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B9048
	mov r1, ip
	ldrh r0, [r1, #0x16]
	rsbs r0, r0, #0
	strh r0, [r1, #0x16]
	ldrh r0, [r4]
	adds r0, #0x20
	b _080B904C
	.align 2, 0
_080B9044: .4byte sub_080B8ECC
_080B9048:
	ldrh r0, [r4]
	subs r0, #0x20
_080B904C:
	strh r0, [r4]
	mov r7, ip
	strh r5, [r7, #0x14]
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x16
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	movs r7, #1
	rsbs r7, r7, #0
	add r8, r7
	mov r0, r8
	cmp r0, #0
	bne _080B8FE0
_080B9068:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B9074
sub_080B9074: @ 0x080B9074
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080B90C4
	cmp r0, #1
	bgt _080B908A
	cmp r0, #0
	beq _080B9090
	b _080B910C
_080B908A:
	cmp r0, #2
	beq _080B90E2
	b _080B910C
_080B9090:
	ldr r1, _080B90FC @ =0x081E41C4
	ldr r2, _080B9100 @ =0x0820B880
	ldr r0, _080B9104 @ =0x08241790
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B90F2
	adds r0, r4, #0
	movs r1, #0xe
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #3
	strb r0, [r1]
	movs r0, #6
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_080B90C4:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D3D8
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _080B9108
	movs r0, #1
	strb r0, [r4, #0xf]
	movs r0, #4
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_080B90E2:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D3D8
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _080B9108
_080B90F2:
	adds r0, r4, #0
	bl sub_08000E14
	b _080B9112
	.align 2, 0
_080B90FC: .4byte 0x081E41C4
_080B9100: .4byte 0x0820B880
_080B9104: .4byte 0x08241790
_080B9108:
	subs r0, #1
	strb r0, [r4, #0xd]
_080B910C:
	adds r0, r4, #0
	bl sub_0803F17C
_080B9112:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B911C
sub_080B911C: @ 0x080B911C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r6, r0, #0
	ldr r2, _080B9148 @ =gEwramData
	adds r0, #0x28
	ldrb r1, [r0]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080B914C @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r7, r1, r0
	ldrb r0, [r6, #0xa]
	cmp r0, #4
	bls _080B913E
	b _080B92F4
_080B913E:
	lsls r0, r0, #2
	ldr r1, _080B9150 @ =_080B9154
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B9148: .4byte gEwramData
_080B914C: .4byte 0x000004E4
_080B9150: .4byte _080B9154
_080B9154: @ jump table
	.4byte _080B9168 @ case 0
	.4byte _080B923A @ case 1
	.4byte _080B92AC @ case 2
	.4byte _080B92D0 @ case 3
	.4byte _080B92DE @ case 4
_080B9168:
	ldr r1, _080B924C @ =0x081E41C4
	ldr r2, _080B9250 @ =0x0820B880
	ldr r0, _080B9254 @ =0x08241790
	str r0, [sp]
	adds r0, r6, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B9180
	b _080B92EC
_080B9180:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _080B9190
	b _080B92EC
_080B9190:
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
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #3
	strb r0, [r1]
	adds r0, r6, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldr r2, _080B9258 @ =sub_080B9F90
	adds r0, r6, #0
	movs r1, #8
	movs r3, #0
	bl sub_0804277C
	ldr r4, _080B925C @ =0x2020F0F0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080428F0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08042884
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r4, _080B9260 @ =0x0000FFE0
	ldr r2, _080B9264 @ =0xFFFE8000
	str r2, [r6, #0x48]
	movs r3, #0xfd
	lsls r3, r3, #8
	strh r3, [r6, #0x16]
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B920E
	rsbs r0, r2, #0
	str r0, [r6, #0x48]
	movs r4, #0x20
	rsbs r0, r3, #0
	strh r0, [r6, #0x16]
_080B920E:
	adds r1, r7, #0
	adds r1, #0x42
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r6, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0x10
	adds r2, r6, #0
	adds r2, #0x46
	strh r0, [r2]
	movs r0, #0x95
	lsls r0, r0, #1
	bl sub_080D7910
	movs r0, #1
	strb r0, [r6, #0xa]
_080B923A:
	ldr r1, [r6, #0x10]
	ldr r0, _080B9268 @ =0x0000FFFF
	cmp r1, r0
	bgt _080B926C
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r1, r2
	str r0, [r6, #0x10]
	b _080B92F4
	.align 2, 0
_080B924C: .4byte 0x081E41C4
_080B9250: .4byte 0x0820B880
_080B9254: .4byte 0x08241790
_080B9258: .4byte sub_080B9F90
_080B925C: .4byte 0x2020F0F0
_080B9260: .4byte 0x0000FFE0
_080B9264: .4byte 0xFFFE8000
_080B9268: .4byte 0x0000FFFF
_080B926C:
	adds r0, r6, #0
	bl sub_0806CD38
	ldr r5, _080B92A0 @ =gEwramData
	ldr r1, [r5]
	ldr r4, _080B92A4 @ =0x0000A094
	adds r1, r1, r4
	ldr r1, [r1, #4]
	adds r1, r1, r0
	str r1, [r6, #0x1c]
	adds r0, r6, #0
	bl sub_0806CD78
	ldr r1, [r5]
	adds r1, r1, r4
	ldr r1, [r1, #8]
	adds r1, r1, r0
	ldr r0, _080B92A8 @ =0xFFF00000
	adds r1, r1, r0
	str r1, [r6, #0x20]
	movs r0, #0x20
	strh r0, [r6, #0x18]
	movs r0, #2
	strb r0, [r6, #0xa]
	b _080B92F4
	.align 2, 0
_080B92A0: .4byte gEwramData
_080B92A4: .4byte 0x0000A094
_080B92A8: .4byte 0xFFF00000
_080B92AC:
	adds r0, r6, #0
	bl sub_080B8E14
	cmp r0, #0
	beq _080B92BA
	movs r0, #3
	strb r0, [r6, #0xa]
_080B92BA:
	ldrh r1, [r6, #0x18]
	movs r2, #0x18
	ldrsh r0, [r6, r2]
	cmp r0, #0
	beq _080B92CA
	subs r0, r1, #1
	strh r0, [r6, #0x18]
	b _080B92F4
_080B92CA:
	movs r0, #3
	strb r0, [r6, #0xa]
	b _080B92F4
_080B92D0:
	adds r0, r6, #0
	bl sub_0806D3C0
	adds r0, r6, #0
	bl sub_0806D3CC
	b _080B92F4
_080B92DE:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080B92EC:
	adds r0, r6, #0
	bl sub_08000E14
	b _080B93C4
_080B92F4:
	add r0, sp, #8
	adds r1, r6, #0
	bl sub_080421AC
	adds r0, r6, #0
	movs r1, #3
	bl sub_0806D128
	cmp r0, #0
	beq _080B930C
	movs r0, #4
	strb r0, [r6, #0xa]
_080B930C:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B9396
	ldr r2, _080B93CC @ =sub_080B9074
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	beq _080B9396
	movs r0, #0x20
	bl sub_0802D5EC
	lsls r0, r0, #0x10
	ldr r1, [r6, #0x40]
	adds r1, r1, r0
	str r1, [r4, #0x40]
	movs r0, #0x20
	bl sub_0802D5EC
	lsls r0, r0, #0x10
	ldr r1, [r6, #0x44]
	adds r1, r1, r0
	str r1, [r4, #0x44]
	movs r0, #0x80
	lsls r0, r0, #8
	bl sub_0802D5EC
	adds r1, r0, #0
	ldr r0, [r6, #0x48]
	cmp r0, #0
	bge _080B9358
	adds r0, #3
_080B9358:
	asrs r0, r0, #2
	adds r0, r0, r1
	str r0, [r4, #0x48]
	movs r0, #0x80
	lsls r0, r0, #6
	bl sub_0802D5EC
	adds r1, r0, #0
	ldr r0, [r6, #0x4c]
	cmp r0, #0
	bge _080B9372
	ldr r2, _080B93D0 @ =0x000003FF
	adds r0, r0, r2
_080B9372:
	asrs r0, r0, #0xa
	ldr r2, _080B93D4 @ =0xFFFEC000
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r4, #0x4c]
	ldr r0, [r4, #0x48]
	rsbs r0, r0, #0
	cmp r0, #0
	bge _080B9386
	adds r0, #0x3f
_080B9386:
	asrs r0, r0, #6
	str r0, [r4, #0x50]
	rsbs r0, r1, #0
	cmp r0, #0
	bge _080B9392
	adds r0, #0x3f
_080B9392:
	asrs r0, r0, #6
	str r0, [r4, #0x54]
_080B9396:
	movs r1, #0x14
	ldrsh r0, [r6, r1]
	ldr r2, [r6, #0x10]
	adds r1, r6, #0
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
	adds r0, r6, #0
	bl sub_0803F17C
	ldrh r0, [r6, #0x16]
	ldrh r2, [r6, #0x14]
	adds r0, r0, r2
	strh r0, [r6, #0x14]
_080B93C4:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B93CC: .4byte sub_080B9074
_080B93D0: .4byte 0x000003FF
_080B93D4: .4byte 0xFFFEC000

	thumb_func_start sub_080B93D8
sub_080B93D8: @ 0x080B93D8
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _080B9404 @ =gEwramData
	adds r0, #0x28
	ldrb r1, [r0]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080B9408 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r5, r1, r0
	ldrb r1, [r4, #0xa]
	cmp r1, #1
	beq _080B945C
	cmp r1, #1
	bgt _080B940C
	cmp r1, #0
	beq _080B9416
	b _080B949E
	.align 2, 0
_080B9404: .4byte gEwramData
_080B9408: .4byte 0x000004E4
_080B940C:
	cmp r1, #2
	beq _080B9478
	cmp r1, #3
	beq _080B9488
	b _080B949E
_080B9416:
	ldr r1, _080B946C @ =0x081E41C4
	ldr r2, _080B9470 @ =0x0820B880
	ldr r0, _080B9474 @ =0x08241790
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B9492
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #3
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r1, #1
	strb r1, [r4, #0xf]
	movs r0, #0x10
	strb r0, [r4, #0xd]
	strb r1, [r4, #0xa]
_080B945C:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #0
	cmp r1, #0
	bne _080B949A
	strb r1, [r4, #0xf]
	movs r0, #2
	strb r0, [r4, #0xa]
	b _080B949E
	.align 2, 0
_080B946C: .4byte 0x081E41C4
_080B9470: .4byte 0x0820B880
_080B9474: .4byte 0x08241790
_080B9478:
	ldrb r0, [r5, #0x14]
	ands r1, r0
	cmp r1, #0
	bne _080B949E
	movs r0, #3
	strb r0, [r4, #0xa]
	movs r0, #0x10
	b _080B949C
_080B9488:
	movs r0, #1
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _080B949A
_080B9492:
	adds r0, r4, #0
	bl sub_08000E14
	b _080B94DA
_080B949A:
	subs r0, #1
_080B949C:
	strb r0, [r4, #0xd]
_080B949E:
	adds r0, r4, #0
	bl sub_0803F17C
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bhi _080B94DA
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	bne _080B94B8
	strb r0, [r4, #0xa]
	movs r0, #0x10
	strb r0, [r4, #0xd]
	b _080B94DA
_080B94B8:
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
_080B94DA:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B94E4
sub_080B94E4: @ 0x080B94E4
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080B94F6
	cmp r0, #1
	beq _080B953E
	b _080B9558
_080B94F6:
	ldr r1, _080B9514 @ =0x081E41C4
	ldr r2, _080B9518 @ =0x0820B880
	ldr r0, _080B951C @ =0x08241790
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B9520
	adds r0, r4, #0
	bl sub_08000E14
	b _080B9558
	.align 2, 0
_080B9514: .4byte 0x081E41C4
_080B9518: .4byte 0x0820B880
_080B951C: .4byte 0x08241790
_080B9520:
	adds r0, r4, #0
	movs r1, #0xd
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
	movs r0, #8
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_080B953E:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D3D8
	adds r0, r4, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _080B9558
	adds r0, r4, #0
	bl sub_08000E14
_080B9558:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B9560
sub_080B9560: @ 0x080B9560
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r2, _080B9610 @ =sub_080B94E4
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	beq _080B9608
	movs r6, #0x10
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B958A
	rsbs r0, r6, #0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_080B958A:
	movs r0, #4
	bl sub_0802D5EC
	adds r2, r5, #0
	adds r2, #0x42
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r2]
	adds r1, r1, r2
	adds r1, r1, r0
	adds r2, r4, #0
	adds r2, #0x42
	strh r1, [r2]
	movs r0, #4
	bl sub_0802D5EC
	adds r1, r5, #0
	adds r1, #0x46
	subs r0, #4
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r4, #0x48]
	movs r0, #8
	bl sub_0802D5EC
	adds r1, r0, #0
	ldr r0, [r5, #0x4c]
	rsbs r0, r0, #0
	cmp r0, #0
	bge _080B95D8
	adds r0, #3
_080B95D8:
	asrs r0, r0, #2
	lsls r1, r1, #0xe
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	cmp r0, #0
	bge _080B95EA
	adds r0, #0x3f
_080B95EA:
	asrs r0, r0, #6
	str r0, [r4, #0x50]
	ldr r0, [r5, #0x4c]
	rsbs r0, r0, #0
	cmp r0, #0
	bge _080B95F8
	adds r0, #0x3f
_080B95F8:
	asrs r0, r0, #6
	str r0, [r4, #0x54]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_080B9608:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B9610: .4byte sub_080B94E4

	thumb_func_start sub_080B9614
sub_080B9614: @ 0x080B9614
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r2, #0xa0
	movs r3, #0xdc
	ldrb r1, [r4, #0x14]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B962A
	adds r3, #0xb4
	movs r2, #0xf0
_080B962A:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #0
	bne _080B96D6
	adds r1, r3, #0
	adds r0, r4, #0
	bl sub_0806E29C
	cmp r0, #0
	beq _080B96D6
	ldrb r0, [r4, #0x14]
	movs r1, #4
	orrs r0, r1
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r6, r0, #0x1f
	adds r5, r4, #0
	adds r5, #0x42
	adds r0, r4, #0
	bl sub_0806CDB8
	movs r2, #0
	ldrsh r1, [r5, r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _080B966C
	movs r0, #0
	b _080B966E
_080B966C:
	movs r0, #1
_080B966E:
	cmp r6, r0
	bne _080B96CC
	bl sub_08000A90
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	beq _080B96CC
	adds r0, r4, #0
	bl sub_0806CDFC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r5, r4, #0
	adds r5, #0x46
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r1, #0x30
	subs r0, r0, r1
	cmp r0, #0
	bge _080B96B0
	adds r0, r4, #0
	bl sub_0806CDFC
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r1, #0x30
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	cmp r1, #0x1f
	ble _080B96C6
	b _080B96CC
_080B96B0:
	adds r0, r4, #0
	bl sub_0806CDFC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r1, #0x30
	subs r0, r0, r1
	cmp r0, #0x1f
	bgt _080B96CC
_080B96C6:
	movs r1, #0
	movs r0, #2
	b _080B96D0
_080B96CC:
	movs r1, #0
	movs r0, #1
_080B96D0:
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080B96D6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080B96DC
sub_080B96DC: @ 0x080B96DC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldrb r0, [r6, #0xb]
	cmp r0, #6
	bls _080B96EC
	b _080B9B16
_080B96EC:
	lsls r0, r0, #2
	ldr r1, _080B96F8 @ =_080B96FC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B96F8: .4byte _080B96FC
_080B96FC: @ jump table
	.4byte _080B9718 @ case 0
	.4byte _080B9724 @ case 1
	.4byte _080B98A0 @ case 2
	.4byte _080B9956 @ case 3
	.4byte _080B99E8 @ case 4
	.4byte _080B9A64 @ case 5
	.4byte _080B9AF4 @ case 6
_080B9718:
	movs r0, #0
	strh r0, [r6, #0x18]
	str r0, [r6, #0x48]
	str r0, [r6, #0x4c]
	movs r0, #1
	strb r0, [r6, #0xb]
_080B9724:
	ldrh r0, [r6, #0x18]
	adds r0, #1
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	bl sub_0806CF2C
	lsls r0, r0, #6
	rsbs r0, r0, #0
	adds r0, #0x20
	lsls r4, r0, #0x10
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	lsls r0, r0, #9
	bl sub_080009E4
	lsls r0, r0, #3
	ldr r2, _080B9774 @ =0xFFD00000
	adds r5, r0, r2
	adds r0, r6, #0
	bl sub_0806CD38
	adds r0, r0, r4
	str r0, [r6, #0x1c]
	adds r0, r6, #0
	bl sub_0806CD78
	adds r0, r0, r5
	str r0, [r6, #0x20]
	ldr r2, [r6, #0x1c]
	ldr r1, [r6, #0x40]
	subs r4, r2, r1
	ldr r1, [r6, #0x44]
	subs r5, r0, r1
	movs r0, #0x80
	lsls r0, r0, #0xb
	cmp r4, r0
	ble _080B9778
	movs r0, #0x80
	lsls r0, r0, #5
	b _080B978E
	.align 2, 0
_080B9774: .4byte 0xFFD00000
_080B9778:
	ldr r0, _080B9784 @ =0xFFFC0000
	cmp r4, r0
	bge _080B978C
	ldr r0, _080B9788 @ =0xFFFFF000
	b _080B978E
	.align 2, 0
_080B9784: .4byte 0xFFFC0000
_080B9788: .4byte 0xFFFFF000
_080B978C:
	movs r0, #0
_080B978E:
	str r0, [r6, #0x50]
	movs r0, #0x80
	lsls r0, r0, #0xb
	cmp r5, r0
	ble _080B979E
	movs r0, #0x80
	lsls r0, r0, #5
	b _080B97B2
_080B979E:
	ldr r0, _080B97A8 @ =0xFFFC0000
	cmp r5, r0
	bge _080B97B0
	ldr r0, _080B97AC @ =0xFFFFF000
	b _080B97B2
	.align 2, 0
_080B97A8: .4byte 0xFFFC0000
_080B97AC: .4byte 0xFFFFF000
_080B97B0:
	movs r0, #0
_080B97B2:
	str r0, [r6, #0x54]
	adds r0, r6, #0
	movs r1, #0x20
	bl sub_0806D490
	adds r0, r6, #0
	movs r1, #0x20
	bl sub_0806D4A8
	adds r0, r6, #0
	movs r1, #0xa0
	lsls r1, r1, #0xa
	bl sub_0806D3D8
	adds r2, r4, #0
	cmp r2, #0
	bge _080B97D6
	rsbs r2, r2, #0
_080B97D6:
	ldr r3, _080B980C @ =0x0003FFFF
	cmp r2, r3
	bgt _080B97EA
	adds r0, r5, #0
	cmp r0, #0
	bge _080B97E4
	rsbs r0, r0, #0
_080B97E4:
	movs r1, #1
	cmp r0, r3
	ble _080B97EC
_080B97EA:
	movs r1, #0
_080B97EC:
	cmp r1, #0
	bne _080B97FE
	adds r0, r6, #0
	movs r1, #0x50
	movs r2, #0x36
	bl sub_0806E29C
	cmp r0, #0
	beq _080B9810
_080B97FE:
	movs r0, #0
	movs r1, #0x20
	strb r1, [r6, #0xd]
	movs r1, #3
	strb r1, [r6, #0xb]
	strb r0, [r6, #0xc]
	b _080B9B16
	.align 2, 0
_080B980C: .4byte 0x0003FFFF
_080B9810:
	adds r4, r6, #0
	adds r4, #0x58
	ldrb r5, [r4]
	lsls r5, r5, #0x19
	lsrs r5, r5, #0x1f
	adds r0, r6, #0
	bl sub_0806CF2C
	adds r7, r4, #0
	cmp r5, r0
	beq _080B988C
	adds r0, r6, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r4, #0x16
	movs r2, #0
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _080B9852
	adds r0, r6, #0
	bl sub_0806CDB8
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	cmp r1, #8
	bgt _080B9866
	b _080B988C
_080B9852:
	adds r0, r6, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	cmp r0, #8
	ble _080B988C
_080B9866:
	ldrb r2, [r7]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r7]
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #2
	b _080B9B14
_080B988C:
	ldrh r1, [r6, #0x18]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080B9898
	b _080B9B16
_080B9898:
	adds r0, r6, #0
	bl sub_080B9560
	b _080B9B16
_080B98A0:
	adds r0, r6, #0
	bl sub_0806CF2C
	lsls r0, r0, #6
	rsbs r0, r0, #0
	adds r0, #0x20
	lsls r4, r0, #0x10
	adds r0, r6, #0
	bl sub_0806CD38
	adds r0, r0, r4
	str r0, [r6, #0x1c]
	adds r0, r6, #0
	bl sub_0806CD78
	ldr r1, _080B98DC @ =0xFFC80000
	adds r0, r0, r1
	str r0, [r6, #0x20]
	ldr r2, [r6, #0x1c]
	ldr r1, [r6, #0x40]
	subs r4, r2, r1
	ldr r1, [r6, #0x44]
	subs r1, r0, r1
	movs r0, #0x80
	lsls r0, r0, #0xb
	cmp r4, r0
	ble _080B98E0
	movs r0, #0x80
	lsls r0, r0, #5
	b _080B98F6
	.align 2, 0
_080B98DC: .4byte 0xFFC80000
_080B98E0:
	ldr r0, _080B98EC @ =0xFFFC0000
	cmp r4, r0
	bge _080B98F4
	ldr r0, _080B98F0 @ =0xFFFFF000
	b _080B98F6
	.align 2, 0
_080B98EC: .4byte 0xFFFC0000
_080B98F0: .4byte 0xFFFFF000
_080B98F4:
	movs r0, #0
_080B98F6:
	str r0, [r6, #0x50]
	movs r0, #0x80
	lsls r0, r0, #0xb
	cmp r1, r0
	ble _080B9906
	movs r0, #0x80
	lsls r0, r0, #5
	b _080B991A
_080B9906:
	ldr r0, _080B9910 @ =0xFFFC0000
	cmp r1, r0
	bge _080B9918
	ldr r0, _080B9914 @ =0xFFFFF000
	b _080B991A
	.align 2, 0
_080B9910: .4byte 0xFFFC0000
_080B9914: .4byte 0xFFFFF000
_080B9918:
	movs r0, #0
_080B991A:
	str r0, [r6, #0x54]
	adds r0, r6, #0
	movs r1, #0x20
	bl sub_0806D490
	adds r0, r6, #0
	movs r1, #0x20
	bl sub_0806D4A8
	adds r0, r6, #0
	movs r1, #0xa0
	lsls r1, r1, #0xa
	bl sub_0806D3D8
	adds r0, r6, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080B9946
	b _080B9B16
_080B9946:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #1
	b _080B9B14
_080B9956:
	adds r0, r6, #0
	movs r1, #0x40
	bl sub_0806D490
	adds r0, r6, #0
	movs r1, #0x40
	bl sub_0806D4A8
	adds r0, r6, #0
	bl sub_0806D3C0
	adds r0, r6, #0
	bl sub_0806D3CC
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _080B99D2
	ldrb r0, [r6, #0xd]
	cmp r0, #8
	bls _080B99D2
	adds r4, r6, #0
	adds r4, #0x58
	ldrb r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	mov r8, r0
	adds r5, r6, #0
	adds r5, #0x42
	adds r0, r6, #0
	bl sub_0806CDB8
	movs r2, #0
	ldrsh r1, [r5, r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r7, r4, #0
	cmp r1, r0
	blt _080B99A6
	movs r0, #0
	b _080B99A8
_080B99A6:
	movs r0, #1
_080B99A8:
	cmp r8, r0
	beq _080B99D2
	ldrb r2, [r7]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r4, #1
	adds r1, r4, #0
	eors r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r7]
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	strb r4, [r6, #0xc]
_080B99D2:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	bne _080B9AD2
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #4
	b _080B9B14
_080B99E8:
	adds r0, r6, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080B99F8
	b _080B9B16
_080B99F8:
	movs r0, #0x40
	strb r0, [r6, #0xd]
	movs r0, #5
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r0, [r6, #0x14]
	movs r5, #2
	orrs r0, r5
	strb r0, [r6, #0x14]
	ldr r0, _080B9A60 @ =sub_080B93D8
	bl sub_0806DFF8
	adds r4, r0, #0
	cmp r4, #0
	beq _080B9A56
	ldrb r1, [r6, #0x10]
	adds r0, #0x28
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x59
	ldrb r0, [r1]
	orrs r0, r5
	strb r0, [r1]
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
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
_080B9A56:
	movs r0, #0x81
	bl sub_080D7910
	b _080B9B16
	.align 2, 0
_080B9A60: .4byte sub_080B93D8
_080B9A64:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _080B9ADC
	cmp r0, #0x30
	bls _080B9A86
	bl sub_08000A90
	ldrb r1, [r6, #0xd]
	lsls r1, r1, #0xa
	movs r2, #0xf
	ands r0, r2
	adds r1, r1, r0
	lsls r1, r1, #0x14
	asrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_080B8FD0
_080B9A86:
	ldrb r0, [r6, #0xd]
	cmp r0, #0x20
	bne _080B9AD0
	ldr r0, _080B9AD8 @ =sub_080B911C
	bl sub_0806DFF8
	adds r4, r0, #0
	cmp r4, #0
	beq _080B9AD0
	ldrb r1, [r6, #0x10]
	adds r0, #0x28
	strb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
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
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
_080B9AD0:
	ldrb r0, [r6, #0xd]
_080B9AD2:
	subs r0, #1
	strb r0, [r6, #0xd]
	b _080B9B16
	.align 2, 0
_080B9AD8: .4byte sub_080B911C
_080B9ADC:
	ldrb r0, [r6, #0x14]
	movs r1, #0xfd
	ands r1, r0
	strb r1, [r6, #0x14]
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #6
	b _080B9B14
_080B9AF4:
	adds r0, r6, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B9B16
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0
	strb r0, [r6, #0xa]
	strb r0, [r6, #0xc]
_080B9B14:
	strb r0, [r6, #0xb]
_080B9B16:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080B9B20
sub_080B9B20: @ 0x080B9B20
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	beq _080B9BAE
	cmp r0, #1
	bgt _080B9B34
	cmp r0, #0
	beq _080B9B40
	b _080B9CF0
_080B9B34:
	cmp r0, #2
	beq _080B9C28
	cmp r0, #3
	bne _080B9B3E
	b _080B9C5C
_080B9B3E:
	b _080B9CF0
_080B9B40:
	movs r0, #0x40
	strb r0, [r5, #0xd]
	movs r2, #0xc0
	lsls r2, r2, #9
	str r2, [r5, #0x48]
	ldr r3, _080B9C18 @ =0xFFFFFA00
	str r3, [r5, #0x50]
	adds r6, r5, #0
	adds r6, #0x58
	ldrb r1, [r6]
	ands r0, r1
	cmp r0, #0
	beq _080B9B62
	rsbs r0, r2, #0
	str r0, [r5, #0x48]
	rsbs r0, r3, #0
	str r0, [r5, #0x50]
_080B9B62:
	ldrb r0, [r5, #0x14]
	movs r1, #3
	orrs r0, r1
	strb r0, [r5, #0x14]
	ldr r0, _080B9C1C @ =sub_080B93D8
	bl sub_0806DFF8
	adds r4, r0, #0
	cmp r4, #0
	beq _080B9BAA
	ldrb r1, [r5, #0x10]
	adds r0, #0x28
	strb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r6]
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
_080B9BAA:
	movs r0, #1
	strb r0, [r5, #0xb]
_080B9BAE:
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r5, #0
	bl sub_0806D430
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _080B9BC0
	b _080B9CD8
_080B9BC0:
	ldr r3, _080B9C20 @ =0xFFFC8000
	str r3, [r5, #0x48]
	movs r4, #0xc0
	lsls r4, r4, #3
	str r4, [r5, #0x50]
	movs r0, #0xe0
	lsls r0, r0, #9
	str r0, [r5, #0x4c]
	ldr r0, _080B9C24 @ =0xFFFFF600
	str r0, [r5, #0x54]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x40
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080B9BEC
	rsbs r0, r3, #0
	str r0, [r5, #0x48]
	rsbs r0, r4, #0
	str r0, [r5, #0x50]
_080B9BEC:
	strb r2, [r5, #0xd]
	movs r0, #2
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #0xc
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	movs r1, #0x50
	movs r2, #0xc
	movs r3, #1
	bl sub_080458E4
	adds r0, r5, #0
	movs r1, #0x50
	movs r2, #6
	movs r3, #0
	bl sub_080458E4
	b _080B9CF0
	.align 2, 0
_080B9C18: .4byte 0xFFFFFA00
_080B9C1C: .4byte sub_080B93D8
_080B9C20: .4byte 0xFFFC8000
_080B9C24: .4byte 0xFFFFF600
_080B9C28:
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r5, #0
	bl sub_0806D3D8
	ldrb r1, [r5, #0xd]
	cmp r1, #0
	beq _080B9C4A
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080B9C46
	adds r0, r5, #0
	bl sub_080B9560
_080B9C46:
	ldrb r0, [r5, #0xd]
	b _080B9CD8
_080B9C4A:
	ldrb r1, [r5, #0x14]
	movs r0, #0xfc
	ands r0, r1
	strb r0, [r5, #0x14]
	movs r0, #0x20
	strb r0, [r5, #0xd]
	movs r0, #3
	strb r0, [r5, #0xb]
	b _080B9CF0
_080B9C5C:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _080B9CB4
	adds r4, r5, #0
	adds r4, #0x58
	ldrb r0, [r4]
	lsls r0, r0, #0x19
	lsrs r7, r0, #0x1f
	adds r6, r5, #0
	adds r6, #0x42
	adds r0, r5, #0
	bl sub_0806CDB8
	movs r2, #0
	ldrsh r1, [r6, r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r3, r4, #0
	cmp r1, r0
	blt _080B9C88
	movs r0, #0
	b _080B9C8A
_080B9C88:
	movs r0, #1
_080B9C8A:
	cmp r7, r0
	beq _080B9CB4
	ldrb r2, [r3]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r4, #1
	adds r1, r4, #0
	eors r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	strb r4, [r5, #0xc]
_080B9CB4:
	adds r0, r5, #0
	movs r1, #0x20
	bl sub_0806D490
	adds r0, r5, #0
	movs r1, #0x20
	bl sub_0806D4A8
	adds r0, r5, #0
	bl sub_0806D3C0
	adds r0, r5, #0
	bl sub_0806D3CC
	ldrb r0, [r5, #0xd]
	adds r4, r0, #0
	cmp r4, #0
	beq _080B9CDE
_080B9CD8:
	subs r0, #1
	strb r0, [r5, #0xd]
	b _080B9CF0
_080B9CDE:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	strb r4, [r5, #0xa]
	strb r4, [r5, #0xc]
	strb r4, [r5, #0xb]
_080B9CF0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B9CF8
sub_080B9CF8: @ 0x080B9CF8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	beq _080B9D1C
	cmp r0, #1
	bgt _080B9D0C
	cmp r0, #0
	beq _080B9D12
	b _080B9D88
_080B9D0C:
	cmp r0, #2
	beq _080B9D76
	b _080B9D88
_080B9D12:
	movs r0, #1
	strb r0, [r5, #0xb]
	strb r0, [r5, #0xf]
	movs r0, #0x20
	strb r0, [r5, #0xd]
_080B9D1C:
	ldrb r1, [r5, #0xd]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080B9D60
	ldrb r0, [r5, #0xd]
	lsrs r4, r0, #1
	rsbs r4, r4, #0
	adds r4, #4
	lsls r4, r4, #0x10
	lsls r0, r0, #0xd
	bl sub_080009E4
	lsls r0, r0, #3
	ldr r2, [r5, #0x40]
	adds r2, r2, r0
	ldr r1, [r5, #0x44]
	adds r1, r1, r4
	adds r0, r2, #0
	movs r2, #5
	movs r3, #6
	bl sub_08045CEC
	adds r1, r0, #0
	cmp r1, #0
	beq _080B9D60
	ldr r0, _080B9D6C @ =0xFFFE8000
	str r0, [r1, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r1, #0x54]
	adds r1, #0x5c
	movs r0, #3
	strb r0, [r1]
_080B9D60:
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _080B9D70
	subs r0, #1
	strb r0, [r5, #0xd]
	b _080B9D88
	.align 2, 0
_080B9D6C: .4byte 0xFFFE8000
_080B9D70:
	movs r0, #2
	strb r0, [r5, #0xb]
	b _080B9D88
_080B9D76:
	movs r2, #0x10
	rsbs r2, r2, #0
	adds r0, r5, #0
	movs r1, #0
	movs r3, #1
	bl sub_080B87C4
	movs r0, #1
	b _080B9D8A
_080B9D88:
	movs r0, #0
_080B9D8A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080B9D90
sub_080B9D90: @ 0x080B9D90
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _080B9DB4 @ =0x081E41C4
	ldr r2, _080B9DB8 @ =0x0820B880
	ldr r0, _080B9DBC @ =0x08241790
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B9DC0
	adds r0, r4, #0
	bl sub_08000E14
	b _080B9E1A
	.align 2, 0
_080B9DB4: .4byte 0x081E41C4
_080B9DB8: .4byte 0x0820B880
_080B9DBC: .4byte 0x08241790
_080B9DC0:
	adds r0, r4, #0
	bl sub_0806B04C
	adds r0, r4, #0
	adds r0, #0x5c
	movs r6, #4
	strb r6, [r0]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _080B9DF8 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _080B9DFC
	strb r6, [r4, #0xa]
	b _080B9E1A
	.align 2, 0
_080B9DF8: .4byte gEwramData
_080B9DFC:
	ldr r1, _080B9E24 @ =sub_0806E1B8
	ldr r2, _080B9E28 @ =sub_080B9F2C
	adds r0, r4, #0
	bl sub_0806D244
	adds r0, r4, #0
	bl sub_0806B1FC
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	strb r5, [r4, #0xa]
_080B9E1A:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B9E24: .4byte sub_0806E1B8
_080B9E28: .4byte sub_080B9F2C

	thumb_func_start sub_080B9E2C
sub_080B9E2C: @ 0x080B9E2C
	push {r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r1, #4
	bl sub_0806D128
	adds r4, r5, #0
	adds r4, #0x58
	movs r1, #1
	ands r0, r1
	lsls r3, r0, #5
	ldrb r2, [r4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r3
	strb r1, [r4]
	cmp r0, #0
	bne _080B9E58
	adds r0, r5, #0
	bl sub_08021924
_080B9E58:
	adds r0, r5, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _080B9E72
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	beq _080B9EE2
	mov r0, sp
	adds r1, r5, #0
	bl sub_080421AC
	b _080B9EE2
_080B9E72:
	ldrb r0, [r5, #0xa]
	cmp r0, #4
	bhi _080B9ECE
	lsls r0, r0, #2
	ldr r1, _080B9E84 @ =_080B9E88
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B9E84: .4byte _080B9E88
_080B9E88: @ jump table
	.4byte _080B9E9C @ case 0
	.4byte _080B9EA4 @ case 1
	.4byte _080B9EAC @ case 2
	.4byte _080B9EB4 @ case 3
	.4byte _080B9EC6 @ case 4
_080B9E9C:
	adds r0, r5, #0
	bl sub_080B9614
	b _080B9ECE
_080B9EA4:
	adds r0, r5, #0
	bl sub_080B96DC
	b _080B9ECE
_080B9EAC:
	adds r0, r5, #0
	bl sub_080B9B20
	b _080B9ECE
_080B9EB4:
	adds r0, r5, #0
	bl sub_080B9CF8
	cmp r0, #0
	beq _080B9ECE
	adds r0, r5, #0
	bl sub_08000E14
	b _080B9EE2
_080B9EC6:
	adds r0, r5, #0
	bl sub_0803F17C
	b _080B9EE2
_080B9ECE:
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	beq _080B9EDC
	mov r0, sp
	adds r1, r5, #0
	bl sub_080421AC
_080B9EDC:
	adds r0, r5, #0
	bl sub_0806DF20
_080B9EE2:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B9EEC
sub_080B9EEC: @ 0x080B9EEC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080B9F24
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
	movs r0, #4
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080B9F24:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B9F2C
sub_080B9F2C: @ 0x080B9F2C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x14]
	movs r5, #1
	ands r5, r0
	cmp r5, #0
	beq _080B9F4C
	movs r0, #0x69
	bl sub_080D7910
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_08042B8C
	b _080B9F80
_080B9F4C:
	adds r0, r4, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080B9F80
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
	movs r0, #3
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
_080B9F80:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B9F88
sub_080B9F88: @ 0x080B9F88
	movs r1, #0
	strh r1, [r0, #0x34]
	bx lr
	.align 2, 0

	thumb_func_start sub_080B9F90
sub_080B9F90: @ 0x080B9F90
	push {r4, lr}
	sub sp, #0x10
	mov r2, sp
	movs r4, #0
	movs r1, #2
	strh r1, [r2, #2]
	mov r1, sp
	strh r4, [r1, #4]
	mov r3, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	lsrs r2, r1, #2
	adds r1, r1, r2
	strh r1, [r3]
	mov r1, sp
	strh r4, [r1, #6]
	ldr r1, [r0, #0x40]
	str r1, [sp, #8]
	ldr r0, [r0, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B9FC8
sub_080B9FC8: @ 0x080B9FC8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	mov r8, r1
	adds r6, r2, #0
	ldr r2, _080BA014 @ =gEwramData
	ldrb r1, [r5, #0x14]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080BA018 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r4, r1, r0
	ldrh r0, [r6, #4]
	bl sub_08021530
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r2, r4, #0
	adds r2, #0x3e
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080BA092
	movs r3, #1
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080BA01C
	adds r1, r5, #0
	adds r1, #0x3e
	ldrb r0, [r1]
	orrs r0, r3
	strb r0, [r1]
	b _080BA022
	.align 2, 0
_080BA014: .4byte gEwramData
_080BA018: .4byte 0x000004E4
_080BA01C:
	adds r0, r1, #0
	orrs r0, r3
	strb r0, [r2]
_080BA022:
	lsls r3, r7, #0x10
	asrs r3, r3, #0x10
	adds r0, r5, #0
	mov r1, r8
	adds r2, r6, #0
	bl sub_0806B7D8
	adds r1, r0, #0
	ldrb r0, [r4, #0x11]
	movs r7, #2
	movs r6, #0
	orrs r0, r7
	strb r0, [r4, #0x11]
	ldrh r0, [r4, #0x34]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x34]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08042B8C
	movs r1, #0x34
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _080BA092
	ldr r2, _080BA09C @ =gEwramData
	ldrb r1, [r4, #0x14]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080BA0A0 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r1, r1, r0
	ldrb r0, [r1, #0x1c]
	subs r0, #1
	strb r0, [r1, #0x1c]
	adds r1, r4, #0
	adds r1, #0x3e
	ldrb r0, [r1]
	orrs r0, r7
	strb r0, [r1]
	subs r1, #0x12
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
_080BA092:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BA09C: .4byte gEwramData
_080BA0A0: .4byte 0x000004E4

	thumb_func_start sub_080BA0A4
sub_080BA0A4: @ 0x080BA0A4
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080BA0B6
	cmp r0, #1
	beq _080BA0F6
	b _080BA112
_080BA0B6:
	ldr r1, _080BA0D4 @ =0x081F4224
	ldr r2, _080BA0D8 @ =0x0820BD28
	ldr r0, _080BA0DC @ =0x0824B178
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080BA0E0
	adds r0, r4, #0
	bl sub_08000E14
	b _080BA112
	.align 2, 0
_080BA0D4: .4byte 0x081F4224
_080BA0D8: .4byte 0x0820BD28
_080BA0DC: .4byte 0x0824B178
_080BA0E0:
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x19
	strb r0, [r1]
	subs r1, #9
	movs r0, #0x11
	strb r0, [r1]
	movs r0, #0x10
	strb r0, [r4, #0xd]
	movs r0, #1
	strb r0, [r4, #0xa]
_080BA0F6:
	ldrb r1, [r4, #0xd]
	adds r0, r1, #0
	cmp r0, #0
	beq _080BA10C
	cmp r0, #8
	bne _080BA106
	movs r0, #1
	strb r0, [r4, #0xf]
_080BA106:
	subs r0, r1, #1
	strb r0, [r4, #0xd]
	b _080BA112
_080BA10C:
	adds r0, r4, #0
	bl sub_08000E14
_080BA112:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BA11C
sub_080BA11C: @ 0x080BA11C
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _080BA144
	movs r1, #0x34
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080BA144
	adds r0, r5, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _080BA144
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
	b _080BA276
_080BA144:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080BA1F8
	cmp r0, #1
	bgt _080BA154
	cmp r0, #0
	beq _080BA15C
	b _080BA270
_080BA154:
	cmp r0, #2
	bne _080BA15A
	b _080BA268
_080BA15A:
	b _080BA270
_080BA15C:
	ldr r1, _080BA24C @ =0x081F4224
	ldr r2, _080BA250 @ =0x0820BD28
	ldr r0, _080BA254 @ =0x0824B178
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080BA268
	adds r0, r5, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
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
	strh r0, [r5, #0x34]
	ldr r2, _080BA258 @ =sub_080BB014
	ldr r3, _080BA25C @ =sub_080BB04C
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_0804277C
	ldr r4, _080BA260 @ =0x0C0CFAFA
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080428F0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08042884
	adds r0, r5, #0
	bl sub_0806BAC8
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	asrs r0, r0, #8
	lsls r0, r0, #6
	str r0, [r5, #0x48]
	adds r0, r4, #0
	bl sub_080009E4
	asrs r0, r0, #8
	lsls r1, r0, #6
	str r1, [r5, #0x4c]
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bge _080BA1E4
	adds r0, #0x1f
_080BA1E4:
	asrs r0, r0, #5
	str r0, [r5, #0x50]
	adds r0, r1, #0
	cmp r0, #0
	bge _080BA1F0
	adds r0, #0x1f
_080BA1F0:
	asrs r0, r0, #5
	str r0, [r5, #0x54]
	movs r0, #1
	strb r0, [r5, #0xa]
_080BA1F8:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, #0
	bl sub_0806D3D8
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
	adds r0, r5, #0
	movs r1, #3
	bl sub_0806D128
	cmp r0, #0
	beq _080BA21A
	movs r0, #2
	strb r0, [r5, #0xa]
_080BA21A:
	movs r1, #0x34
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _080BA270
	ldr r2, _080BA264 @ =sub_080BA0A4
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r2, r0, #0
	cmp r2, #0
	beq _080BA244
	ldr r0, [r5, #0x40]
	str r0, [r2, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r2, #0x44]
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_080BA244:
	movs r0, #2
	strb r0, [r5, #0xa]
	b _080BA270
	.align 2, 0
_080BA24C: .4byte 0x081F4224
_080BA250: .4byte 0x0820BD28
_080BA254: .4byte 0x0824B178
_080BA258: .4byte sub_080BB014
_080BA25C: .4byte sub_080BB04C
_080BA260: .4byte 0x0C0CFAFA
_080BA264: .4byte sub_080BA0A4
_080BA268:
	adds r0, r5, #0
	bl sub_08000E14
	b _080BA276
_080BA270:
	adds r0, r5, #0
	bl sub_0803F17C
_080BA276:
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BA280
sub_080BA280: @ 0x080BA280
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r2, _080BA2BC @ =gEwramData
	ldrb r1, [r5, #0x14]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _080BA2C0 @ =0x000004E4
	adds r0, r0, r3
	ldr r2, [r2]
	adds r6, r2, r0
	ldrb r1, [r5, #0x15]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	adds r2, r2, r0
	ldrb r1, [r6, #0x11]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080BA2C4
	ldrb r0, [r6, #0xb]
	cmp r0, #1
	bne _080BA2C4
	adds r0, r5, #0
	bl sub_08000E14
	b _080BA376
	.align 2, 0
_080BA2BC: .4byte gEwramData
_080BA2C0: .4byte 0x000004E4
_080BA2C4:
	ldrb r3, [r5, #0xa]
	cmp r3, #1
	beq _080BA2EA
	cmp r3, #1
	bgt _080BA2D4
	cmp r3, #0
	beq _080BA2DA
	b _080BA376
_080BA2D4:
	cmp r3, #2
	beq _080BA31C
	b _080BA376
_080BA2DA:
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	b _080BA374
_080BA2EA:
	ldrb r1, [r6, #0x11]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080BA312
	movs r1, #0
	strb r3, [r5, #0x1c]
	movs r0, #2
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xb]
	movs r0, #0x64
	strb r0, [r5, #0xd]
	ldr r0, [r6, #0x40]
	ldr r1, [r5, #0x40]
	subs r0, r0, r1
	str r0, [r5, #0x50]
	ldr r0, [r6, #0x44]
	ldr r1, [r5, #0x44]
	subs r0, r0, r1
	str r0, [r5, #0x54]
_080BA312:
	ldr r0, [r2, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r2, #0x44]
	str r0, [r5, #0x44]
	b _080BA376
_080BA31C:
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
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl ArcTan2
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	ldr r1, [r5, #0x40]
	adds r1, r1, r0
	str r1, [r5, #0x40]
	adds r0, r4, #0
	bl sub_080009E4
	ldr r1, [r5, #0x44]
	adds r1, r1, r0
	str r1, [r5, #0x44]
	ldrb r0, [r6, #0xa]
	cmp r0, #2
	beq _080BA376
	ldrb r0, [r5, #0x1c]
_080BA374:
	strb r0, [r5, #0xa]
_080BA376:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080BA37C
sub_080BA37C: @ 0x080BA37C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	ldr r2, _080BA418 @ =gEwramData
	ldrb r1, [r7, #0x14]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _080BA41C @ =0x000004E4
	adds r0, r0, r3
	ldr r2, [r2]
	adds r0, r0, r2
	mov sb, r0
	ldrb r1, [r7, #0x15]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	adds r0, r2, r0
	str r0, [sp, #0x14]
	ldrb r1, [r7, #0x16]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	adds r2, r2, r0
	mov sl, r2
	mov r0, sb
	ldrb r1, [r0, #0x11]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080BA420
	mov r2, sb
	ldrb r1, [r2, #0xb]
	ldrb r0, [r7, #0x17]
	adds r0, #1
	lsls r0, r0, #2
	cmp r1, r0
	bge _080BA420
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x44]
	movs r2, #0xd
	movs r3, #8
	bl sub_08045CEC
	adds r4, r0, #0
	cmp r4, #0
	beq _080BA410
	bl sub_08000A90
	movs r5, #1
	ands r0, r5
	adds r4, #0x58
	lsls r0, r0, #6
	ldrb r2, [r4]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	bl sub_08000A90
	ands r0, r5
	lsls r0, r0, #7
	ldrb r2, [r4]
	movs r1, #0x7f
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
_080BA410:
	movs r0, #0x70
	bl sub_080D7910
	b _080BA472
	.align 2, 0
_080BA418: .4byte gEwramData
_080BA41C: .4byte 0x000004E4
_080BA420:
	ldrb r2, [r7, #0xa]
	cmp r2, #2
	bhi _080BA43C
	mov r0, sb
	ldrb r1, [r0, #0x11]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080BA43C
	movs r1, #0
	strb r2, [r7, #0x1c]
	movs r0, #3
	strb r0, [r7, #0xa]
	strb r1, [r7, #0xb]
_080BA43C:
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	bne _080BA444
	b _080BA578
_080BA444:
	cmp r0, #1
	bgt _080BA44E
	cmp r0, #0
	beq _080BA45C
	b _080BA684
_080BA44E:
	cmp r0, #2
	bne _080BA454
	b _080BA592
_080BA454:
	cmp r0, #3
	bne _080BA45A
	b _080BA5B0
_080BA45A:
	b _080BA684
_080BA45C:
	ldr r1, _080BA47C @ =0x081F4224
	ldr r2, _080BA480 @ =0x0820BD28
	ldr r0, _080BA484 @ =0x0824B178
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080BA488
_080BA472:
	adds r0, r7, #0
	bl sub_08000E14
	b _080BA774
	.align 2, 0
_080BA47C: .4byte 0x081F4224
_080BA480: .4byte 0x0820BD28
_080BA484: .4byte 0x0824B178
_080BA488:
	adds r0, r7, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldr r2, [r7, #0x68]
	ldrb r1, [r7, #0x17]
	movs r0, #6
	subs r0, r0, r1
	ldrh r1, [r2]
	bl __modsi3
	adds r1, r7, #0
	adds r1, #0x6e
	strb r0, [r1]
	ldrb r0, [r7, #0x17]
	strb r0, [r7, #0xc]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bne _080BA4C4
	movs r0, #1
	strb r0, [r7, #0x1d]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080BA4C4:
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xc0
	lsls r0, r0, #0xb
	str r0, [r7, #0x20]
	movs r0, #0x60
	strh r0, [r7, #0x1a]
	ldrb r0, [r7, #0x17]
	lsls r0, r0, #3
	strh r0, [r7, #0x1e]
	ldrh r2, [r7, #0x18]
	movs r0, #0x18
	ldrsh r1, [r7, r0]
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r1, r0
	bgt _080BA4F2
	movs r0, #1
	b _080BA4FE
_080BA4F2:
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r1, #0
	subs r0, r0, r2
	strh r0, [r7, #0x18]
	movs r0, #2
_080BA4FE:
	strb r0, [r7, #0xa]
	mov r0, sb
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x36
	strb r0, [r1]
	adds r0, r7, #0
	bl sub_0806B04C
	ldr r0, _080BA564 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _080BA568 @ =0x000004CC
	adds r0, r0, r2
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080BA53A
	adds r0, r7, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r1, #0x14
	strb r1, [r0]
	movs r1, #0xfa
	lsls r1, r1, #2
	adds r0, r1, #0
	ldrh r2, [r7, #0x34]
	adds r0, r0, r2
	strh r0, [r7, #0x34]
_080BA53A:
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
	ldr r2, _080BA56C @ =sub_0806E1B8
	ldr r3, _080BA570 @ =sub_080B9FC8
	adds r0, r7, #0
	movs r1, #8
	bl sub_0804277C
	ldr r4, _080BA574 @ =0x1010F8F8
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080428F0
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08042884
	b _080BA684
	.align 2, 0
_080BA564: .4byte gEwramData
_080BA568: .4byte 0x000004CC
_080BA56C: .4byte sub_0806E1B8
_080BA570: .4byte sub_080B9FC8
_080BA574: .4byte 0x1010F8F8
_080BA578:
	ldrh r0, [r7, #0x1a]
	ldrh r1, [r7, #0x18]
	adds r0, r0, r1
	strh r0, [r7, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #6
	cmp r0, r1
	ble _080BA684
	strh r1, [r7, #0x18]
	movs r0, #2
	b _080BA682
_080BA592:
	ldrh r0, [r7, #0x18]
	ldrh r1, [r7, #0x1a]
	subs r0, r0, r1
	strh r0, [r7, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080BA5AC @ =0xFFFFE000
	cmp r0, r1
	bge _080BA684
	strh r1, [r7, #0x18]
	movs r0, #1
	b _080BA682
	.align 2, 0
_080BA5AC: .4byte 0xFFFFE000
_080BA5B0:
	ldrb r2, [r7, #0xb]
	cmp r2, #1
	beq _080BA5E2
	cmp r2, #1
	bgt _080BA5C0
	cmp r2, #0
	beq _080BA5C6
	b _080BA684
_080BA5C0:
	cmp r2, #2
	beq _080BA64C
	b _080BA684
_080BA5C6:
	mov r1, sb
	ldr r0, [r1, #0x40]
	ldr r1, [r7, #0x40]
	subs r0, r0, r1
	str r0, [r7, #0x50]
	mov r1, sb
	ldr r0, [r1, #0x44]
	ldr r1, [r7, #0x44]
	subs r0, r0, r1
	str r0, [r7, #0x54]
	strb r2, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
_080BA5E2:
	mov r2, sb
	ldr r4, [r2, #0x40]
	ldr r0, [r7, #0x50]
	subs r4, r4, r0
	str r4, [r7, #0x40]
	ldr r5, [r2, #0x44]
	ldr r0, [r7, #0x54]
	subs r5, r5, r0
	str r5, [r7, #0x44]
	ldrb r2, [r7, #0x17]
	ldrb r0, [r7, #0xd]
	muls r0, r2, r0
	movs r1, #7
	subs r1, r1, r2
	bl __divsi3
	adds r0, #0x60
	mov r8, r0
	mov r0, sl
	ldr r6, [r0, #0x40]
	subs r4, r4, r6
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #5
	mov r1, r8
	bl __divsi3
	adds r6, r6, r0
	mov r1, sl
	ldr r4, [r1, #0x44]
	subs r5, r5, r4
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #5
	mov r1, r8
	bl __divsi3
	str r6, [r7, #0x40]
	adds r4, r4, r0
	str r4, [r7, #0x44]
	ldrb r0, [r7, #0xd]
	cmp r0, #0x2f
	bhi _080BA63C
	adds r0, #2
	strb r0, [r7, #0xd]
_080BA63C:
	mov r2, sb
	ldrb r0, [r2, #0xa]
	cmp r0, #3
	bne _080BA684
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	b _080BA684
_080BA64C:
	mov r1, sb
	ldr r0, [r1, #0x40]
	ldr r1, [r7, #0x50]
	subs r0, r0, r1
	ldr r4, [r7, #0x40]
	subs r0, r0, r4
	movs r1, #0xc
	bl __divsi3
	adds r4, r4, r0
	str r4, [r7, #0x40]
	mov r2, sb
	ldr r0, [r2, #0x44]
	ldr r1, [r7, #0x54]
	subs r0, r0, r1
	ldr r4, [r7, #0x44]
	subs r0, r0, r4
	movs r1, #0xc
	bl __divsi3
	adds r4, r4, r0
	str r4, [r7, #0x44]
	mov r1, sb
	ldrb r0, [r1, #0xa]
	cmp r0, #3
	beq _080BA684
	ldrb r0, [r7, #0x1c]
_080BA682:
	strb r0, [r7, #0xa]
_080BA684:
	ldrb r0, [r7, #0xa]
	cmp r0, #2
	bhi _080BA740
	ldrb r0, [r7, #0x17]
	cmp r0, #0
	beq _080BA69E
	mov r2, sb
	ldr r0, [r2, #0x20]
	cmp r0, #0
	bge _080BA69A
	adds r0, #0xff
_080BA69A:
	asrs r0, r0, #8
	b _080BA6A0
_080BA69E:
	movs r0, #0
_080BA6A0:
	mov r8, r0
	ldrh r0, [r7, #0x18]
	ldr r1, [sp, #0x14]
	ldrh r1, [r1, #0x18]
	adds r0, r0, r1
	mov r2, sb
	ldrh r1, [r2, #0x18]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	cmp r0, #0
	bge _080BA6C4
	adds r0, #0xff
_080BA6C4:
	asrs r0, r0, #8
	mov r1, r8
	muls r1, r0, r1
	ldr r2, [sp, #0x14]
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r7, #0x40]
	adds r0, r4, #0
	bl sub_080009E4
	cmp r0, #0
	bge _080BA6DE
	adds r0, #0xff
_080BA6DE:
	asrs r0, r0, #8
	mov r1, r8
	muls r1, r0, r1
	ldr r2, [sp, #0x14]
	ldr r0, [r2, #0x44]
	adds r0, r0, r1
	str r0, [r7, #0x44]
	ldrb r0, [r7, #0x1d]
	cmp r0, #0
	beq _080BA740
	mov r1, sb
	movs r2, #0x34
	ldrsh r0, [r1, r2]
	cmp r0, #0xc7
	bgt _080BA740
	adds r0, r7, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #2
	bhi _080BA740
	adds r0, r7, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080BA740
	bl sub_08000A90
	movs r1, #7
	ands r1, r0
	cmp r1, #0
	beq _080BA740
	ldr r0, _080BA784 @ =sub_080BA11C
	bl sub_0806DFF8
	adds r2, r0, #0
	cmp r2, #0
	beq _080BA740
	ldr r0, [r7, #0x40]
	str r0, [r2, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r2, #0x44]
	adds r0, r7, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsrs r1, r0, #3
	subs r0, r0, r1
	adds r1, r2, #0
	adds r1, #0x3c
	strb r0, [r1]
_080BA740:
	ldrb r0, [r7, #0xc]
	adds r0, #1
	strb r0, [r7, #0xc]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080BA76E
	subs r1, #0x17
	movs r3, #0x88
	lsls r3, r3, #1
	movs r0, #0xb0
	str r0, [sp]
	adds r0, r7, #0
	movs r2, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _080BA76E
	add r0, sp, #4
	adds r1, r7, #0
	mov r2, sb
	bl sub_080429D0
_080BA76E:
	adds r0, r7, #0
	bl sub_0803F17C
_080BA774:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BA784: .4byte sub_080BA11C

	thumb_func_start sub_080BA788
sub_080BA788: @ 0x080BA788
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r2, _080BA7D8 @ =gEwramData
	ldrb r1, [r7, #0x14]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080BA7DC @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r1, r1, r0
	mov sl, r1
	ldrb r0, [r7, #0x17]
	lsls r0, r0, #2
	ldr r1, _080BA7E0 @ =0x0852889C
	adds r0, r0, r1
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080BA7EE
	ldrb r1, [r7, #0x11]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080BA7E4
	ldrb r0, [r7, #0xb]
	cmp r0, #0
	beq _080BA83E
	subs r0, #1
	b _080BA7EC
	.align 2, 0
_080BA7D8: .4byte gEwramData
_080BA7DC: .4byte 0x000004E4
_080BA7E0: .4byte 0x0852889C
_080BA7E4:
	movs r0, #4
	orrs r0, r1
	strb r0, [r7, #0x11]
	movs r0, #0x18
_080BA7EC:
	strb r0, [r7, #0xb]
_080BA7EE:
	ldrb r4, [r7, #0xa]
	cmp r4, #1
	bne _080BA7F6
	b _080BA904
_080BA7F6:
	cmp r4, #1
	bgt _080BA800
	cmp r4, #0
	beq _080BA80E
	b _080BAA38
_080BA800:
	cmp r4, #2
	bne _080BA806
	b _080BA9F8
_080BA806:
	cmp r4, #3
	bne _080BA80C
	b _080BAA28
_080BA80C:
	b _080BAA38
_080BA80E:
	ldr r1, _080BA848 @ =0x081F4224
	ldr r2, _080BA84C @ =0x0820BD28
	ldr r0, _080BA850 @ =0x0824B178
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080BA83E
	adds r0, r7, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r6, r7, #0
	ldr r0, _080BA854 @ =sub_080BA280
	bl sub_0806DFF8
	mov sb, r0
	cmp r0, #0
	bne _080BA858
_080BA83E:
	adds r0, r7, #0
	bl sub_08000E14
	b _080BAAAE
	.align 2, 0
_080BA848: .4byte 0x081F4224
_080BA84C: .4byte 0x0820BD28
_080BA850: .4byte 0x0824B178
_080BA854: .4byte sub_080BA280
_080BA858:
	mov r0, sl
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x36
	strb r0, [r1]
	adds r0, r7, #0
	bl sub_0806B04C
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0x12
	strb r0, [r1]
	ldr r2, _080BA89C @ =sub_0806E1B8
	ldr r3, _080BA8A0 @ =sub_080B9FC8
	adds r0, r7, #0
	movs r1, #8
	bl sub_0804277C
	ldr r4, _080BA8A4 @ =0x1010F8F8
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080428F0
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08042884
	movs r5, #0
	movs r2, #0x59
	adds r2, r2, r7
	mov r8, r2
	b _080BA8D0
	.align 2, 0
_080BA89C: .4byte sub_0806E1B8
_080BA8A0: .4byte sub_080B9FC8
_080BA8A4: .4byte 0x1010F8F8
_080BA8A8:
	ldrb r0, [r7, #0x17]
	lsls r0, r0, #2
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldrb r0, [r7, #0x10]
	strb r0, [r4, #0x14]
	ldrb r0, [r6, #0x10]
	strb r0, [r4, #0x15]
	ldr r0, _080BA8F8 @ =0x00000AAA
	muls r0, r2, r0
	ldr r3, _080BA8FC @ =0xFFFFE000
	adds r0, r0, r3
	strh r0, [r4, #0x18]
	strb r5, [r4, #0x17]
	mov r1, sb
	ldrb r0, [r1, #0x10]
	strb r0, [r4, #0x16]
	adds r6, r4, #0
	adds r5, #1
_080BA8D0:
	cmp r5, #5
	bgt _080BA8E0
	ldr r0, _080BA900 @ =sub_080BA37C
	bl sub_0806DFF8
	adds r4, r0, #0
	cmp r4, #0
	bne _080BA8A8
_080BA8E0:
	mov r4, sb
	ldrb r0, [r7, #0x10]
	strb r0, [r4, #0x14]
	ldrb r0, [r6, #0x10]
	strb r0, [r4, #0x15]
	mov r2, r8
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	b _080BAA34
	.align 2, 0
_080BA8F8: .4byte 0x00000AAA
_080BA8FC: .4byte 0xFFFFE000
_080BA900: .4byte sub_080BA37C
_080BA904:
	ldr r1, [r7, #0x20]
	ldr r0, _080BA964 @ =0x0005FFFF
	cmp r1, r0
	bgt _080BA968
	ldrb r1, [r7, #0xd]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080BA952
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x44]
	movs r2, #0xd
	movs r3, #8
	bl sub_08045CEC
	adds r4, r0, #0
	cmp r4, #0
	beq _080BA952
	bl sub_08000A90
	movs r5, #1
	ands r0, r5
	adds r4, #0x58
	lsls r0, r0, #6
	ldrb r2, [r4]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	bl sub_08000A90
	ands r0, r5
	lsls r0, r0, #7
	ldrb r2, [r4]
	movs r1, #0x7f
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
_080BA952:
	ldrb r0, [r7, #0xd]
	adds r0, #1
	strb r0, [r7, #0xd]
	ldr r0, [r7, #0x20]
	movs r3, #0xc0
	lsls r3, r3, #5
	adds r0, r0, r3
	str r0, [r7, #0x20]
	b _080BA992
	.align 2, 0
_080BA964: .4byte 0x0005FFFF
_080BA968:
	bl sub_08000A90
	ldr r1, _080BA9F0 @ =0x000003FF
	ands r1, r0
	cmp r1, #0xf
	bhi _080BA992
	adds r0, r7, #0
	movs r1, #0xc8
	movs r2, #0x78
	bl sub_0806E29C
	cmp r0, #0
	beq _080BA992
	movs r0, #2
	strb r0, [r7, #0xa]
	ldrb r1, [r7, #0x11]
	movs r0, #1
	orrs r0, r1
	strb r0, [r7, #0x11]
	movs r0, #0x80
	strb r0, [r7, #0xd]
_080BA992:
	adds r0, r7, #0
	bl sub_0806CDB8
	adds r4, r0, #0
	adds r0, r7, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r7, #0
	bl sub_0806CDFC
	adds r1, r0, #0
	adds r0, r7, #0
	adds r0, #0x46
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r7, #0
	adds r0, #0x18
	movs r1, #0x40
	bl sub_080686CC
	movs r0, #0x18
	ldrsh r2, [r7, r0]
	movs r3, #0x1a
	ldrsh r1, [r7, r3]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r1, r3
	cmp r2, r0
	bgt _080BA9E8
	ldr r3, _080BA9F4 @ =0xFFFFE000
	adds r0, r1, r3
	cmp r2, r0
	bge _080BAA38
_080BA9E8:
	ldrh r0, [r7, #0x1a]
	adds r0, r0, r3
	strh r0, [r7, #0x18]
	b _080BAA38
	.align 2, 0
_080BA9F0: .4byte 0x000003FF
_080BA9F4: .4byte 0xFFFFE000
_080BA9F8:
	bl sub_08000A90
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080BAA10
	ldrb r0, [r7, #0x11]
	ands r4, r0
	cmp r4, #0
	beq _080BAA10
	movs r0, #0
	strb r0, [r7, #0xd]
_080BAA10:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	bne _080BAA2E
	movs r0, #0x30
	strb r0, [r7, #0xd]
	movs r0, #3
	strb r0, [r7, #0xa]
	ldrb r1, [r7, #0x11]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r7, #0x11]
	b _080BAA38
_080BAA28:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	beq _080BAA34
_080BAA2E:
	subs r0, #1
	strb r0, [r7, #0xd]
	b _080BAA38
_080BAA34:
	movs r0, #1
	strb r0, [r7, #0xa]
_080BAA38:
	ldrb r1, [r7, #0x11]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r7, #0x11]
	ldr r0, [sp, #4]
	ldrh r4, [r0]
	mov r1, sl
	ldrh r1, [r1, #0x18]
	adds r4, r4, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r2, #0x80
	lsls r2, r2, #7
	mov r8, r2
	adds r0, r4, r2
	bl sub_080009E4
	ldr r3, [sp, #4]
	movs r2, #2
	ldrsh r1, [r3, r2]
	muls r0, r1, r0
	mov r3, sl
	ldr r5, [r3, #0x40]
	adds r5, r5, r0
	adds r0, r4, #0
	bl sub_080009E4
	ldr r2, [sp, #4]
	movs r3, #2
	ldrsh r1, [r2, r3]
	muls r0, r1, r0
	mov r1, sl
	ldr r6, [r1, #0x44]
	adds r6, r6, r0
	ldrh r4, [r1, #0x18]
	ldrh r2, [r7, #0x24]
	adds r4, r4, r2
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	add r8, r4
	mov r0, r8
	bl sub_080009E4
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r5, r5, r1
	str r5, [r7, #0x40]
	adds r0, r4, #0
	bl sub_080009E4
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r6, r6, r1
	str r6, [r7, #0x44]
	adds r0, r7, #0
	bl sub_0803F17C
_080BAAAE:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BAAC0
sub_080BAAC0: @ 0x080BAAC0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _080BAAF0 @ =gEwramData
	ldrb r1, [r4, #0x14]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080BAAF4 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r6, r1, r0
	ldrb r0, [r4, #0x17]
	lsls r0, r0, #2
	ldr r1, _080BAAF8 @ =0x085288A8
	adds r7, r0, r1
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080BAB54
	cmp r0, #1
	bgt _080BAAFC
	cmp r0, #0
	beq _080BAB06
	b _080BABC2
	.align 2, 0
_080BAAF0: .4byte gEwramData
_080BAAF4: .4byte 0x000004E4
_080BAAF8: .4byte 0x085288A8
_080BAAFC:
	cmp r0, #2
	beq _080BAB88
	cmp r0, #3
	beq _080BABA0
	b _080BABC2
_080BAB06:
	ldr r1, _080BAB7C @ =0x081F4224
	ldr r2, _080BAB80 @ =0x0820BD28
	ldr r0, _080BAB84 @ =0x0824B178
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080BABBA
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	lsls r1, r1, #0x1b
	adds r3, r4, #0
	adds r3, #0x58
	lsrs r1, r1, #0x1b
	ldrb r2, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r7]
	adds r1, r4, #0
	adds r1, #0x65
	strb r0, [r1]
	subs r1, #9
	movs r0, #0x12
	strb r0, [r1]
	movs r0, #1
	strb r0, [r4, #0xa]
_080BAB54:
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	bne _080BABC2
	ldrb r5, [r6, #0xd]
	cmp r5, #0x30
	bne _080BABC2
	ldrb r0, [r4, #0x17]
	ldrb r1, [r6, #0xb]
	cmp r0, r1
	bne _080BABC2
	ldrb r1, [r7, #1]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xd]
	b _080BABC2
	.align 2, 0
_080BAB7C: .4byte 0x081F4224
_080BAB80: .4byte 0x0820BD28
_080BAB84: .4byte 0x0824B178
_080BAB88:
	adds r0, r4, #0
	bl sub_0803F17C
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _080BAB9A
	subs r0, #1
	strb r0, [r4, #0xd]
	b _080BABC2
_080BAB9A:
	movs r0, #3
	strb r0, [r4, #0xa]
	b _080BABC2
_080BABA0:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r2]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_080BABBA:
	adds r0, r4, #0
	bl sub_08000E14
	b _080BABCA
_080BABC2:
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x44]
_080BABCA:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BABD4
sub_080BABD4: @ 0x080BABD4
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r1, #0x50
	bl sub_0806D490
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D3D8
	ldrb r0, [r4, #0xd]
	cmp r0, #0xa
	bne _080BABF4
	movs r0, #1
	strb r0, [r4, #0xf]
_080BABF4:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080BAC1C
	ldrb r1, [r4, #0xd]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080BAC1C
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	movs r3, #0xc0
	lsls r3, r3, #0xc
	adds r2, r4, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	adds r2, r3, #0
	bl sub_0806D5C0
_080BAC1C:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080BAC34
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080BAC34:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080BAC3C
sub_080BAC3C: @ 0x080BAC3C
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080BAC6C
	ldr r0, _080BAC98 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _080BAC9C @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080BAC6C
	ldr r1, _080BACA0 @ =0x0000037E
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080BAC90
_080BAC6C:
	ldr r1, _080BACA4 @ =0x081F4224
	ldr r2, _080BACA8 @ =0x0820BD28
	ldr r0, _080BACAC @ =0x0824B178
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080BAC90
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _080BACB0
_080BAC90:
	adds r0, r5, #0
	bl sub_08000E14
	b _080BAD60
	.align 2, 0
_080BAC98: .4byte gEwramData
_080BAC9C: .4byte 0x000004CC
_080BACA0: .4byte 0x0000037E
_080BACA4: .4byte 0x081F4224
_080BACA8: .4byte 0x0820BD28
_080BACAC: .4byte 0x0824B178
_080BACB0:
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
	adds r0, r5, #0
	adds r0, #0x65
	movs r4, #0
	strb r4, [r0]
	ldrb r0, [r2]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r0
	strb r1, [r2]
	movs r2, #0x18
	ldrsh r0, [r5, r2]
	movs r2, #0x80
	lsls r2, r2, #9
	movs r3, #0
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
	adds r0, r5, #0
	bl sub_0806B04C
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x12
	strb r0, [r1]
	movs r0, #3
	strb r0, [r5, #0x1c]
_080BAD0C:
	ldr r0, _080BAD44 @ =sub_080BAAC0
	bl sub_0806DFF8
	adds r2, r0, #0
	cmp r2, #0
	beq _080BAD28
	ldrb r0, [r5, #0x10]
	strb r0, [r2, #0x14]
	strb r4, [r2, #0x17]
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_080BAD28:
	adds r4, #1
	cmp r4, #2
	ble _080BAD0C
	ldr r0, _080BAD48 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080BAD4C
	movs r0, #4
	strb r0, [r5, #0xa]
	b _080BAD60
	.align 2, 0
_080BAD44: .4byte sub_080BAAC0
_080BAD48: .4byte gEwramData
_080BAD4C:
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080BAD60
	movs r0, #0x10
	bl sub_08013CF0
	adds r0, r5, #0
	bl sub_08034498
_080BAD60:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080BAD68
sub_080BAD68: @ 0x080BAD68
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	ldrb r0, [r6, #0xa]
	cmp r0, #3
	beq _080BADCC
	movs r4, #0x1c
	ldrsb r4, [r6, r4]
	cmp r4, #0
	bne _080BADCC
	adds r1, r6, #0
	adds r1, #0x65
	movs r0, #0x11
	strb r0, [r1]
	adds r0, r6, #0
	bl sub_080683BC
	movs r0, #3
	strb r0, [r6, #0xa]
	movs r0, #0x80
	strb r0, [r6, #0xd]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r6, #0x54]
	movs r0, #0x6b
	bl sub_080D7910
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #0
	beq _080BADCC
	movs r0, #0
	bl sub_08034498
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x44]
	ldr r2, _080BADDC @ =0xFFE00000
	adds r1, r1, r2
	bl sub_080D6450
	adds r0, r6, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	str r4, [sp]
	movs r1, #0x20
	movs r2, #0xd
	movs r3, #0x60
	bl sub_080D6EF8
_080BADCC:
	ldrb r4, [r6, #0xa]
	cmp r4, #1
	beq _080BAE06
	cmp r4, #1
	bgt _080BADE0
	cmp r4, #0
	beq _080BADEA
	b _080BAFD0
	.align 2, 0
_080BADDC: .4byte 0xFFE00000
_080BADE0:
	cmp r4, #2
	beq _080BAE88
	cmp r4, #3
	beq _080BAEC0
	b _080BAFD0
_080BADEA:
	adds r0, r6, #0
	movs r1, #0xa0
	movs r2, #0x78
	bl sub_0806E29C
	cmp r0, #0
	bne _080BADFA
	b _080BB00C
_080BADFA:
	movs r0, #1
	strb r0, [r6, #0xa]
	movs r0, #0x30
	strb r0, [r6, #0xd]
	strb r4, [r6, #0xb]
	b _080BAFD0
_080BAE06:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _080BAE12
	subs r0, #1
	strb r0, [r6, #0xd]
	b _080BAFD0
_080BAE12:
	ldr r0, _080BAE80 @ =sub_080BA788
	bl sub_0806DFF8
	adds r7, r0, #0
	cmp r7, #0
	bne _080BAE20
	b _080BB00C
_080BAE20:
	ldrb r0, [r6, #0x10]
	strb r0, [r7, #0x14]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	lsls r0, r0, #0x10
	movs r1, #3
	bl __divsi3
	ldr r2, _080BAE84 @ =0xFFFFC000
	adds r0, r0, r2
	strh r0, [r7, #0x18]
	strh r0, [r7, #0x24]
	strh r0, [r7, #0x1a]
	ldrb r0, [r6, #0xb]
	strb r0, [r7, #0x17]
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r0, r2
	bl sub_080009E4
	lsls r0, r0, #4
	ldr r1, [r6, #0x40]
	adds r1, r1, r0
	str r1, [r7, #0x40]
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	bl sub_080009E4
	lsls r0, r0, #4
	ldr r1, [r6, #0x44]
	adds r1, r1, r0
	str r1, [r7, #0x44]
	movs r0, #0x30
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _080BAE78
	b _080BAFD0
_080BAE78:
	movs r0, #2
	strb r0, [r6, #0xa]
	b _080BAFD0
	.align 2, 0
_080BAE80: .4byte sub_080BA788
_080BAE84: .4byte 0xFFFFC000
_080BAE88:
	movs r5, #0x80
	lsls r5, r5, #0xe
	adds r0, r6, #0
	bl sub_0806CD38
	ldr r1, [r6, #0x40]
	cmp r1, r0
	bge _080BAE9A
	rsbs r5, r5, #0
_080BAE9A:
	adds r0, r6, #0
	bl sub_0806CD38
	adds r4, r0, #0
	adds r4, r4, r5
	adds r0, r6, #0
	bl sub_0806CD78
	adds r2, r0, #0
	ldr r0, _080BAEBC @ =0xFFD00000
	adds r2, r2, r0
	adds r0, r6, #0
	adds r1, r4, #0
	movs r3, #8
	bl sub_0806E43C
	b _080BAFD0
	.align 2, 0
_080BAEBC: .4byte 0xFFD00000
_080BAEC0:
	ldrb r0, [r6, #0xd]
	ands r4, r0
	cmp r4, #0
	bne _080BAF86
	ldr r2, _080BAFAC @ =sub_080BABD4
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r7, r0, #0
	cmp r7, #0
	beq _080BAF86
	movs r4, #0x80
	lsls r4, r4, #0xe
	adds r0, r4, #0
	bl sub_0802D5EC
	ldr r1, [r6, #0x40]
	adds r1, r1, r0
	str r1, [r7, #0x40]
	adds r0, r4, #0
	bl sub_0802D5EC
	ldr r1, [r6, #0x44]
	adds r1, r1, r0
	str r1, [r7, #0x44]
	movs r0, #0x80
	lsls r0, r0, #0xa
	bl sub_0802D5EC
	str r0, [r7, #0x48]
	movs r0, #0x80
	lsls r0, r0, #8
	bl sub_0802D5EC
	ldr r1, _080BAFB0 @ =0xFFFE8000
	adds r0, r0, r1
	str r0, [r7, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x54]
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldr r1, _080BAFB4 @ =0x081F4224
	ldr r2, _080BAFB8 @ =0x0820BD28
	ldr r0, _080BAFBC @ =0x0824B178
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_0806E0D0
	bl sub_08000A90
	movs r1, #3
	bl __umodsi3
	adds r0, #0x12
	adds r1, r7, #0
	adds r1, #0x65
	strb r0, [r1]
	bl sub_08000A90
	movs r5, #1
	ands r0, r5
	adds r4, r7, #0
	adds r4, #0x58
	lsls r0, r0, #6
	ldrb r2, [r4]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	bl sub_08000A90
	ands r0, r5
	lsls r0, r0, #7
	ldrb r2, [r4]
	movs r1, #0x7f
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	bl sub_08000A90
	movs r1, #0xf
	ands r0, r1
	adds r0, #0x28
	strb r0, [r7, #0xd]
	strb r5, [r7, #0xb]
_080BAF86:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r6, #0
	bl sub_0806D3D8
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	bne _080BAFC0
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r6, #0
	bl sub_08000E14
	b _080BB00C
	.align 2, 0
_080BAFAC: .4byte sub_080BABD4
_080BAFB0: .4byte 0xFFFE8000
_080BAFB4: .4byte 0x081F4224
_080BAFB8: .4byte 0x0820BD28
_080BAFBC: .4byte 0x0824B178
_080BAFC0:
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x30
	bne _080BAFD0
	movs r0, #1
	strb r0, [r6, #0xf]
_080BAFD0:
	ldrh r0, [r6, #0x1e]
	adds r0, #0x80
	strh r0, [r6, #0x1e]
	movs r2, #0x1e
	ldrsh r0, [r6, r2]
	bl sub_080009E4
	cmp r0, #0
	bge _080BAFE4
	adds r0, #0xff
_080BAFE4:
	asrs r0, r0, #8
	lsls r0, r0, #4
	strh r0, [r6, #0x18]
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r6, #0
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
_080BB00C:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080BB014
sub_080BB014: @ 0x080BB014
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	mov r1, sp
	movs r5, #0
	movs r0, #4
	strh r0, [r1, #2]
	mov r0, sp
	strh r5, [r0, #4]
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	strh r0, [r1]
	mov r0, sp
	strh r5, [r0, #6]
	ldr r0, [r4, #0x40]
	str r0, [sp, #8]
	ldr r0, [r4, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	strh r5, [r4, #0x34]
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BB04C
sub_080BB04C: @ 0x080BB04C
	movs r1, #0
	strh r1, [r0, #0x34]
	bx lr
	.align 2, 0

	thumb_func_start sub_080BB054
sub_080BB054: @ 0x080BB054
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r5, [r4, #0x14]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080BB068
	cmp r0, #1
	beq _080BB0BE
	b _080BB0E6
_080BB068:
	ldr r1, _080BB088 @ =0x081F421C
	ldr r2, _080BB08C @ =0x0820BD04
	ldr r0, _080BB090 @ =0x0824AE0C
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080BB094
	adds r0, r4, #0
	bl sub_08000E14
	b _080BB0E6
	.align 2, 0
_080BB088: .4byte 0x081F421C
_080BB08C: .4byte 0x0820BD04
_080BB090: .4byte 0x0824AE0C
_080BB094:
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x14
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	subs r0, #0x1b
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_080BB0BE:
	movs r2, #0xc
	rsbs r2, r2, #0
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #4
	bl sub_0806E350
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080BB0E6
	adds r0, r4, #0
	bl sub_08000E14
_080BB0E6:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BB0F0
sub_080BB0F0: @ 0x080BB0F0
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r5, [r4, #0x14]
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	bne _080BB104
	movs r0, #4
	strb r0, [r4, #0xa]
	b _080BB128
_080BB104:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080BB128
	ldr r0, _080BB13C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080BB140 @ =0x000004BE
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _080BB11C
	b _080BB2CA
_080BB11C:
	adds r0, r5, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080BB128
	b _080BB2CA
_080BB128:
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bls _080BB130
	b _080BB298
_080BB130:
	lsls r0, r0, #2
	ldr r1, _080BB144 @ =_080BB148
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080BB13C: .4byte gEwramData
_080BB140: .4byte 0x000004BE
_080BB144: .4byte _080BB148
_080BB148: @ jump table
	.4byte _080BB15C @ case 0
	.4byte _080BB1C4 @ case 1
	.4byte _080BB1EC @ case 2
	.4byte _080BB23C @ case 3
	.4byte _080BB282 @ case 4
_080BB15C:
	ldr r1, _080BB200 @ =0x081F421C
	ldr r2, _080BB204 @ =0x0820BD04
	ldr r0, _080BB208 @ =0x0824AE0C
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080BB174
	b _080BB290
_080BB174:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _080BB184
	b _080BB290
_080BB184:
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
	adds r3, r4, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x12
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	subs r1, #9
	strb r0, [r1]
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	strb r0, [r4, #0xa]
_080BB1C4:
	ldrh r1, [r5, #0x1a]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080BB1D0
	b _080BB2CA
_080BB1D0:
	movs r0, #0
	str r0, [r4, #0x1c]
	movs r0, #0xd0
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #2
	strb r0, [r4, #0xa]
_080BB1EC:
	ldrh r1, [r5, #0x1a]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080BB20C
	movs r0, #8
	strb r0, [r4, #0xd]
	movs r0, #3
	strb r0, [r4, #0xa]
	b _080BB298
	.align 2, 0
_080BB200: .4byte 0x081F421C
_080BB204: .4byte 0x0820BD04
_080BB208: .4byte 0x0824AE0C
_080BB20C:
	ldr r1, [r4, #0x1c]
	ldr r0, _080BB238 @ =0x0000FFFF
	cmp r1, r0
	bgt _080BB21C
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r1, r2
	str r0, [r4, #0x1c]
_080BB21C:
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r1, #0
	ldrh r2, [r4, #0x1a]
	adds r0, r0, r2
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #8
	movs r3, #0
	bl sub_0806E350
	b _080BB298
	.align 2, 0
_080BB238: .4byte 0x0000FFFF
_080BB23C:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	ble _080BB248
	ldr r1, _080BB26C @ =0xFFFFE000
	adds r0, r0, r1
	str r0, [r4, #0x1c]
_080BB248:
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ldrh r1, [r4, #0x1a]
	adds r0, r0, r1
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #8
	movs r3, #0
	bl sub_0806E350
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _080BB270
	subs r0, #1
	strb r0, [r4, #0xd]
	b _080BB298
	.align 2, 0
_080BB26C: .4byte 0xFFFFE000
_080BB270:
	movs r0, #1
	strb r0, [r4, #0xa]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	b _080BB298
_080BB282:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080BB290:
	adds r0, r4, #0
	bl sub_08000E14
	b _080BB2CA
_080BB298:
	ldrh r1, [r4, #0x1a]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r5, [r0]
	movs r0, #0x40
	ands r0, r5
	cmp r0, #0
	beq _080BB2AE
	lsls r0, r1, #0x10
	rsbs r0, r0, #0
	lsrs r1, r0, #0x10
_080BB2AE:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #9
	lsls r3, r5, #0x19
	lsrs r3, r3, #0x1f
	movs r4, #0
	str r4, [sp]
	lsls r4, r5, #0x1b
	lsrs r4, r4, #0x1b
	str r4, [sp, #4]
	bl sub_0803E058
_080BB2CA:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BB2D4
sub_080BB2D4: @ 0x080BB2D4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r4, [r5, #0xb]
	cmp r4, #1
	beq _080BB306
	cmp r4, #1
	bgt _080BB2E8
	cmp r4, #0
	beq _080BB2EE
	b _080BB510
_080BB2E8:
	cmp r4, #2
	beq _080BB338
	b _080BB510
_080BB2EE:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #1
	str r4, [r5, #0x4c]
	str r4, [r5, #0x54]
	strb r4, [r5, #0xc]
	strh r4, [r5, #0x18]
	strb r0, [r5, #0xb]
_080BB306:
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080BB316
	b _080BB510
_080BB316:
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #2
	strb r0, [r5, #0xb]
	bl sub_08000A90
	movs r1, #0xff
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	str r1, [r5, #0x14]
	b _080BB510
_080BB338:
	ldrh r0, [r5, #0x18]
	adds r0, #1
	strh r0, [r5, #0x18]
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0xb
	bl sub_080009E4
	movs r1, #0x30
	bl __divsi3
	str r0, [r5, #0x54]
	movs r2, #0x18
	ldrsh r1, [r5, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #8
	bl sub_080009E4
	cmp r0, #0
	bge _080BB364
	adds r0, #0xff
_080BB364:
	asrs r0, r0, #8
	ldr r1, [r5, #0x14]
	adds r6, r1, #0
	muls r6, r0, r6
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _080BB374
	rsbs r6, r6, #0
_080BB374:
	movs r0, #0
	strb r0, [r5, #0xd]
	bl sub_080212C8
	movs r1, #0xd8
	lsls r1, r1, #2
	ands r1, r0
	cmp r1, #0
	beq _080BB43E
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r5, #0
	adds r4, #0x42
	movs r2, #0
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _080BB3B4
	adds r0, r5, #0
	bl sub_0806CDB8
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	cmp r1, #0x4f
	ble _080BB3C8
	b _080BB43E
_080BB3B4:
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	cmp r0, #0x4f
	bgt _080BB43E
_080BB3C8:
	ldrb r4, [r5, #0xc]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080BB3DC
	movs r0, #1
	eors r4, r0
_080BB3DC:
	cmp r4, #0
	bne _080BB3F4
	adds r0, r5, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080BB402
	b _080BB43E
_080BB3F4:
	adds r0, r5, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _080BB43E
_080BB402:
	adds r0, r5, #0
	bl sub_0806E3B0
	cmp r0, #0
	bne _080BB41E
	adds r0, r5, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080BB436
_080BB41E:
	adds r0, r5, #0
	bl sub_0806E3B0
	cmp r0, #0
	beq _080BB43E
	adds r0, r5, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _080BB43E
_080BB436:
	movs r0, #0x30
	strh r0, [r5, #0x18]
	movs r0, #1
	strb r0, [r5, #0xd]
_080BB43E:
	ldr r2, _080BB474 @ =0x085288B4
	adds r0, r5, #0
	adds r1, r6, #0
	movs r3, #0
	bl sub_0806CAF8
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	cmp r0, #0x2f
	ble _080BB510
	adds r0, r5, #0
	movs r1, #0xa0
	movs r2, #0x46
	bl sub_0806E29C
	rsbs r1, r0, #0
	orrs r1, r0
	cmp r1, #0
	bge _080BB478
	ldrb r1, [r5, #0xd]
	cmp r1, #0
	bne _080BB478
	movs r0, #2
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
	b _080BB510
	.align 2, 0
_080BB474: .4byte 0x085288B4
_080BB478:
	ldrb r0, [r5, #0xc]
	movs r1, #1
	eors r0, r1
	strb r0, [r5, #0xc]
	cmp r0, #0
	bne _080BB492
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _080BB49E
_080BB492:
	adds r0, r5, #0
	movs r1, #7
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080BB49E:
	ldrb r4, [r5, #0xc]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080BB4B2
	movs r0, #1
	eors r4, r0
_080BB4B2:
	bl sub_08000A90
	movs r1, #0xff
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	str r1, [r5, #0x14]
	cmp r4, #0
	bne _080BB4DA
	adds r0, r5, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080BB4E8
	b _080BB4FC
_080BB4DA:
	adds r0, r5, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _080BB4FC
_080BB4E8:
	bl sub_08000A90
	ldr r2, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r1, #0x3f
	ands r1, r0
	adds r2, r2, r1
	str r2, [r5, #0x14]
_080BB4FC:
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _080BB50C
	ldr r0, [r5, #0x14]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r5, #0x14]
_080BB50C:
	movs r0, #0
	strh r0, [r5, #0x18]
_080BB510:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BB518
sub_080BB518: @ 0x080BB518
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _080BB552
	cmp r0, #1
	bgt _080BB52C
	cmp r0, #0
	beq _080BB536
	b _080BB654
_080BB52C:
	cmp r0, #2
	beq _080BB5B0
	cmp r0, #3
	beq _080BB624
	b _080BB654
_080BB536:
	adds r0, r4, #0
	bl sub_0806BC40
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrh r0, [r4, #0x1a]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #0x1a]
	strb r1, [r4, #0xb]
_080BB552:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080BB654
	movs r0, #2
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #0x80
	lsls r0, r0, #6
	bl sub_0802D5EC
	ldr r1, _080BB5AC @ =0xFFFE6000
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #0x54]
	bl sub_08000A90
	movs r1, #0x1f
	ands r1, r0
	lsls r1, r1, #8
	movs r0, #0x90
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r4, #0x14]
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x89
	bl sub_080D7910
	b _080BB654
	.align 2, 0
_080BB5AC: .4byte 0xFFFE6000
_080BB5B0:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	ble _080BB5BC
	ldr r1, _080BB618 @ =0xFFFFE000
	adds r0, r0, r1
	str r0, [r4, #0x14]
_080BB5BC:
	ldr r1, [r4, #0x14]
	ldr r2, _080BB61C @ =0x085288B4
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806CAF8
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080BB654
	ldr r0, _080BB620 @ =sub_080BB054
	bl sub_0806DFF8
	adds r2, r0, #0
	cmp r2, #0
	beq _080BB5F0
	adds r3, r2, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	str r4, [r2, #0x14]
_080BB5F0:
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	ldrh r1, [r4, #0x1a]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strh r0, [r4, #0x1a]
	movs r0, #3
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _080BB654
	.align 2, 0
_080BB618: .4byte 0xFFFFE000
_080BB61C: .4byte 0x085288B4
_080BB620: .4byte sub_080BB054
_080BB624:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	ble _080BB630
	ldr r1, _080BB65C @ =0xFFFFF000
	adds r0, r0, r1
	str r0, [r4, #0x14]
_080BB630:
	ldr r1, [r4, #0x14]
	ldr r2, _080BB660 @ =0x085288B4
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806CAF8
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080BB654
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080BB654:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BB65C: .4byte 0xFFFFF000
_080BB660: .4byte 0x085288B4

	thumb_func_start sub_080BB664
sub_080BB664: @ 0x080BB664
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #0xb]
	cmp r0, #0
	beq _080BB674
	cmp r0, #1
	beq _080BB68A
	b _080BB704
_080BB674:
	adds r0, r6, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #1
	strb r0, [r6, #0xb]
	movs r0, #0x6d
	bl sub_080D7910
_080BB68A:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080BB6F2
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x44]
	movs r2, #0x16
	movs r3, #8
	bl sub_08045CEC
	adds r5, r0, #0
	cmp r5, #0
	beq _080BB6F2
	bl sub_08000A90
	adds r4, r0, #0
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	str r0, [r5, #0x48]
	adds r0, r4, #0
	bl sub_080009E4
	adds r4, r0, #0
	str r4, [r5, #0x4c]
	ldr r0, [r5, #0x48]
	movs r1, #0x18
	bl __divsi3
	str r0, [r5, #0x50]
	adds r0, r4, #0
	movs r1, #0x18
	bl __divsi3
	str r0, [r5, #0x54]
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x14
	strb r0, [r1]
_080BB6F2:
	adds r0, r6, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080BB704
	movs r0, #1
	b _080BB706
_080BB704:
	movs r0, #0
_080BB706:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080BB70C
sub_080BB70C: @ 0x080BB70C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _080BB730 @ =0x081F421C
	ldr r2, _080BB734 @ =0x0820BD04
	ldr r0, _080BB738 @ =0x0824AE0C
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080BB73C
	adds r0, r4, #0
	bl sub_08000E14
	b _080BB7C8
	.align 2, 0
_080BB730: .4byte 0x081F421C
_080BB734: .4byte 0x0820BD04
_080BB738: .4byte 0x0824AE0C
_080BB73C:
	adds r0, r4, #0
	bl sub_0806B04C
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x13
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _080BB778 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	beq _080BB77C
	movs r0, #4
	strb r0, [r4, #0xa]
	b _080BB7C8
	.align 2, 0
_080BB778: .4byte gEwramData
_080BB77C:
	ldr r2, _080BB7D0 @ =sub_0806E1E8
	ldr r3, _080BB7D4 @ =sub_080BB7E4
	adds r0, r4, #0
	movs r1, #8
	bl sub_080427B8
	ldr r1, _080BB7D8 @ =0x1010F8F8
	adds r0, r4, #0
	bl sub_080428F0
	ldr r1, _080BB7DC @ =0x1414F6EC
	adds r0, r4, #0
	bl sub_08042884
	adds r1, r4, #0
	adds r1, #0x72
	ldrb r0, [r1]
	movs r5, #2
	orrs r0, r5
	strb r0, [r1]
	ldr r0, _080BB7E0 @ =sub_080BB0F0
	bl sub_0806DFF8
	adds r1, r0, #0
	cmp r1, #0
	beq _080BB7BC
	adds r2, r1, #0
	adds r2, #0x59
	ldrb r0, [r2]
	orrs r0, r5
	strb r0, [r2]
	str r4, [r1, #0x14]
_080BB7BC:
	adds r1, r4, #0
	adds r1, #0x59
	ldrb r0, [r1]
	orrs r0, r5
	strb r0, [r1]
	strb r6, [r4, #0xa]
_080BB7C8:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080BB7D0: .4byte sub_0806E1E8
_080BB7D4: .4byte sub_080BB7E4
_080BB7D8: .4byte 0x1010F8F8
_080BB7DC: .4byte 0x1414F6EC
_080BB7E0: .4byte sub_080BB0F0

	thumb_func_start sub_080BB7E4
sub_080BB7E4: @ 0x080BB7E4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080BB81C
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
	movs r0, #3
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080BB81C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BB824
sub_080BB824: @ 0x080BB824
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806CC20
	cmp r0, #0
	bne _080BB8A8
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bhi _080BB89C
	lsls r0, r0, #2
	ldr r1, _080BB840 @ =_080BB844
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080BB840: .4byte _080BB844
_080BB844: @ jump table
	.4byte _080BB858 @ case 0
	.4byte _080BB872 @ case 1
	.4byte _080BB87A @ case 2
	.4byte _080BB882 @ case 3
	.4byte _080BB894 @ case 4
_080BB858:
	adds r0, r4, #0
	movs r1, #0xdc
	movs r2, #0xa0
	bl sub_0806E29C
	cmp r0, #0
	beq _080BB89C
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	b _080BB89C
_080BB872:
	adds r0, r4, #0
	bl sub_080BB2D4
	b _080BB89C
_080BB87A:
	adds r0, r4, #0
	bl sub_080BB518
	b _080BB89C
_080BB882:
	adds r0, r4, #0
	bl sub_080BB664
	cmp r0, #0
	beq _080BB89C
	adds r0, r4, #0
	bl sub_08000E14
	b _080BB8A8
_080BB894:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080BB8A8
_080BB89C:
	adds r0, r4, #0
	bl sub_0806E314
	adds r0, r4, #0
	bl sub_0803F17C
_080BB8A8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BB8B0
sub_080BB8B0: @ 0x080BB8B0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r0, _080BB920 @ =0x08119490
	ldrh r5, [r0]
	adds r0, r6, #0
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
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080BB8E4
	lsls r0, r5, #0x10
	rsbs r0, r0, #0
	lsrs r5, r0, #0x10
_080BB8E4:
	mov r4, sp
	adds r0, r6, #0
	movs r1, #4
	mov r2, sp
	bl sub_0806C3F8
	adds r2, r6, #0
	adds r2, #0x42
	mov r0, sp
	ldrh r1, [r0]
	ldrh r2, [r2]
	adds r1, r1, r2
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r1, r6, #0
	adds r1, #0x46
	ldrh r0, [r4, #2]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r7, #0
	adds r1, #0x46
	strh r0, [r1]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BB920: .4byte 0x08119490

	thumb_func_start sub_080BB924
sub_080BB924: @ 0x080BB924
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r4, [r5, #0x14]
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080BB9AA
	cmp r0, #1
	bgt _080BB93C
	cmp r0, #0
	beq _080BB946
	b _080BBA22
_080BB93C:
	cmp r0, #2
	beq _080BB9F0
	cmp r0, #3
	beq _080BBA0C
	b _080BBA22
_080BB946:
	ldr r1, _080BB9D8 @ =0x081E41CC
	ldr r2, _080BB9DC @ =0x0820B8A4
	ldrb r3, [r4, #0x14]
	ldr r0, _080BB9E0 @ =0x08242994
	str r0, [sp]
	adds r0, r5, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080BBA1A
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	blt _080BBA1A
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
	adds r2, #1
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x5c
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r5, #0x1c]
	movs r0, #8
	strh r0, [r5, #0x20]
	movs r0, #1
	strb r0, [r5, #0xa]
_080BB9AA:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080BB8B0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _080BB9BA
	strb r0, [r5, #0xa]
_080BB9BA:
	ldr r0, _080BB9E4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080BB9E8 @ =0x000004BE
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _080BBA22
	ldr r1, _080BB9EC @ =0xFFFFFD50
	adds r0, r1, #0
	ldrh r2, [r5, #0x1a]
	adds r0, r0, r2
	strh r0, [r5, #0x1a]
	b _080BBA22
	.align 2, 0
_080BB9D8: .4byte 0x081E41CC
_080BB9DC: .4byte 0x0820B8A4
_080BB9E0: .4byte 0x08242994
_080BB9E4: .4byte gEwramData
_080BB9E8: .4byte 0x000004BE
_080BB9EC: .4byte 0xFFFFFD50
_080BB9F0:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080BB8B0
	ldr r1, _080BBA08 @ =0xFFFFE850
	adds r0, r1, #0
	ldrh r2, [r5, #0x1a]
	adds r0, r0, r2
	strh r0, [r5, #0x1a]
	movs r0, #0x10
	strh r0, [r5, #0x20]
	b _080BBA22
	.align 2, 0
_080BBA08: .4byte 0xFFFFE850
_080BBA0C:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080BBA1A:
	adds r0, r5, #0
	bl sub_08000E14
	b _080BBABA
_080BBA22:
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	bne _080BBA40
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	bl sub_080009E4
	movs r2, #0x20
	ldrsh r1, [r5, r2]
	b _080BBA4E
_080BBA40:
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	bl sub_080009E4
	movs r2, #0x20
	ldrsh r1, [r5, r2]
	rsbs r1, r1, #0
_080BBA4E:
	muls r0, r1, r0
	cmp r0, #0
	bge _080BBA56
	adds r0, #0xff
_080BBA56:
	asrs r0, r0, #8
	strh r0, [r5, #0x18]
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r0, r2
	bl sub_080009E4
	lsls r0, r0, #0xd
	asrs r0, r0, #0x10
	movs r1, #0xe0
	lsls r1, r1, #8
	adds r0, r0, r1
	str r0, [r5, #0x1c]
	adds r0, r4, #0
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
	ldr r0, [r4, #0x18]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BBA9C
	movs r0, #3
	strb r0, [r5, #0xa]
_080BBA9C:
	movs r2, #0x18
	ldrsh r0, [r5, r2]
	ldr r1, [r5, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #9
	ldrb r4, [r6]
	lsls r3, r4, #0x19
	lsrs r3, r3, #0x1f
	movs r5, #0
	str r5, [sp]
	lsls r4, r4, #0x1b
	lsrs r4, r4, #0x1b
	str r4, [sp, #4]
	bl sub_0803E058
_080BBABA:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BBAC4
sub_080BBAC4: @ 0x080BBAC4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldr r6, [r5, #0x14]
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080BBBB0
	cmp r0, #1
	bgt _080BBAE0
	cmp r0, #0
	beq _080BBAEC
	adds r4, r5, #0
	adds r4, #0x58
	b _080BBC3E
_080BBAE0:
	adds r4, r5, #0
	adds r4, #0x58
	cmp r0, #2
	bne _080BBAEA
	b _080BBC26
_080BBAEA:
	b _080BBC3E
_080BBAEC:
	ldr r1, _080BBBE8 @ =0x081E41CC
	ldr r2, _080BBBEC @ =0x0820B8A4
	ldrb r3, [r6, #0x14]
	ldr r0, _080BBBF0 @ =0x08242994
	str r0, [sp]
	adds r0, r5, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080BBB04
	b _080BBC36
_080BBB04:
	adds r0, r5, #0
	adds r0, #0x65
	movs r7, #1
	strb r7, [r0]
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _080BBBF4 @ =sub_080BC128
	str r0, [r5, #4]
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _080BBB2E
	b _080BBC36
_080BBB2E:
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
	movs r0, #0x80
	lsls r0, r0, #0x11
	str r0, [r5, #0x24]
	movs r2, #0x18
	rsbs r2, r2, #0
	movs r3, #0x21
	rsbs r3, r3, #0
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0806E350
	movs r0, #0xd8
	lsls r0, r0, #7
	strh r0, [r5, #0x18]
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080BBB78
	ldr r0, _080BBBF8 @ =0xFFFF1400
	strh r0, [r5, #0x18]
_080BBB78:
	ldr r2, _080BBBFC @ =sub_080BC0F4
	adds r0, r5, #0
	movs r1, #8
	movs r3, #0
	bl sub_0804277C
	ldr r1, _080BBC00 @ =0x10440CBC
	adds r0, r5, #0
	bl sub_08042884
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	subs r2, #0x18
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	strb r7, [r5, #0xa]
	movs r0, #0x65
	bl sub_08013D60
_080BBBB0:
	ldrh r0, [r5, #0x1a]
	adds r0, #1
	strh r0, [r5, #0x1a]
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0xa
	bl sub_080009E4
	str r0, [r5, #0x1c]
	movs r2, #0x1a
	ldrsh r0, [r5, r2]
	cmp r0, #0xf
	bgt _080BBBD2
	ldr r0, [r5, #0x44]
	ldr r1, _080BBC04 @ =0xFFFFE000
	adds r0, r0, r1
	str r0, [r5, #0x44]
_080BBBD2:
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	bne _080BBC08
	ldrh r0, [r5, #0x18]
	adds r0, #8
	b _080BBC0C
	.align 2, 0
_080BBBE8: .4byte 0x081E41CC
_080BBBEC: .4byte 0x0820B8A4
_080BBBF0: .4byte 0x08242994
_080BBBF4: .4byte sub_080BC128
_080BBBF8: .4byte 0xFFFF1400
_080BBBFC: .4byte sub_080BC0F4
_080BBC00: .4byte 0x10440CBC
_080BBC04: .4byte 0xFFFFE000
_080BBC08:
	ldrh r0, [r5, #0x18]
	subs r0, #8
_080BBC0C:
	strh r0, [r5, #0x18]
	movs r2, #0x1a
	ldrsh r0, [r5, r2]
	cmp r0, #0x10
	bne _080BBC1E
	add r0, sp, #8
	adds r1, r5, #0
	bl sub_080421AC
_080BBC1E:
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	cmp r0, #0x1f
	ble _080BBC3E
_080BBC26:
	movs r0, #0x65
	bl sub_08013E18
	ldrb r0, [r4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080BBC36:
	adds r0, r5, #0
	bl sub_08000E14
	b _080BBCB6
_080BBC3E:
	ldr r0, [r5, #0x24]
	movs r1, #0x80
	lsls r1, r1, #0x11
	cmp r0, r1
	ble _080BBC4A
	adds r0, r1, #0
_080BBC4A:
	adds r1, r0, #0
	cmp r0, #0
	bge _080BBC52
	adds r1, #0xf
_080BBC52:
	asrs r0, r1, #4
	cmp r0, #0
	bge _080BBC5A
	adds r0, #0xf
_080BBC5A:
	asrs r6, r0, #4
	movs r2, #0x18
	ldrsh r0, [r5, r2]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	lsls r0, r0, #4
	str r0, [r5, #0x28]
	movs r2, #0x18
	ldrsh r0, [r5, r2]
	bl sub_080009E4
	lsls r1, r0, #4
	str r1, [r5, #0x2c]
	ldr r0, [r5, #0x28]
	cmp r0, #0
	bge _080BBC84
	ldr r2, _080BBCC0 @ =0x0000FFFF
	adds r0, r0, r2
_080BBC84:
	asrs r0, r0, #0x10
	muls r0, r6, r0
	str r0, [r5, #0x28]
	adds r0, r1, #0
	cmp r0, #0
	bge _080BBC94
	ldr r1, _080BBCC0 @ =0x0000FFFF
	adds r0, r0, r1
_080BBC94:
	asrs r0, r0, #0x10
	muls r0, r6, r0
	str r0, [r5, #0x2c]
	movs r2, #0x18
	ldrsh r0, [r5, r2]
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, [r5, #0x1c]
	movs r3, #0
	str r3, [sp]
	ldrb r3, [r4]
	lsls r3, r3, #0x1b
	lsrs r3, r3, #0x1b
	str r3, [sp, #4]
	movs r3, #0
	bl sub_0803E058
_080BBCB6:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BBCC0: .4byte 0x0000FFFF

	thumb_func_start sub_080BBCC4
sub_080BBCC4: @ 0x080BBCC4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080BBCD4
	cmp r0, #1
	beq _080BBCD8
	b _080BBD8A
_080BBCD4:
	movs r0, #1
	strb r0, [r4, #0xb]
_080BBCD8:
	adds r5, r4, #0
	adds r5, #0x6e
	ldrb r1, [r5]
	adds r2, r1, #1
	adds r0, r2, #0
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r2, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #0xe
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r1, r2
	cmp r0, #4
	bls _080BBCFA
	movs r1, #0
_080BBCFA:
	ldr r2, _080BBD34 @ =0x085288C0
	adds r0, r4, #0
	movs r3, #0x14
	bl sub_0806CAF8
	movs r1, #0x1b
	ands r1, r0
	cmp r1, #8
	beq _080BBD38
	adds r0, r4, #0
	adds r0, #0x4a
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080BBD68
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
	b _080BBD68
	.align 2, 0
_080BBD34: .4byte 0x085288C0
_080BBD38:
	ldrh r5, [r5]
	cmp r5, #0
	bne _080BBD68
	ldrb r0, [r4, #0xc]
	adds r1, r0, #1
	strb r1, [r4, #0xc]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _080BBD68
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
	strb r5, [r4, #0xc]
_080BBD68:
	adds r0, r4, #0
	movs r1, #0xf0
	movs r2, #0x64
	bl sub_0806E29C
	cmp r0, #0
	bne _080BBD80
	adds r0, r4, #0
	bl sub_0806D54C
	cmp r0, #0
	beq _080BBD8A
_080BBD80:
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080BBD8A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080BBD90
sub_080BBD90: @ 0x080BBD90
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _080BBDB4
	cmp r0, #1
	bgt _080BBDA4
	cmp r0, #0
	beq _080BBDB0
	b _080BBEDC
_080BBDA4:
	cmp r0, #2
	beq _080BBE6C
	cmp r0, #3
	bne _080BBDAE
	b _080BBEBC
_080BBDAE:
	b _080BBEDC
_080BBDB0:
	movs r0, #1
	strb r0, [r4, #0xb]
_080BBDB4:
	adds r5, r4, #0
	adds r5, #0x6e
	ldrb r1, [r5]
	adds r2, r1, #1
	adds r0, r2, #0
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r2, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #0xe
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r1, r2
	cmp r0, #4
	bls _080BBDD6
	movs r1, #0
_080BBDD6:
	ldr r2, _080BBE60 @ =0x085288C0
	adds r0, r4, #0
	movs r3, #0x14
	bl sub_0806CAF8
	ldrh r0, [r5]
	cmp r0, #0
	bne _080BBEDC
	adds r5, r4, #0
	adds r5, #0x58
	ldrb r1, [r5]
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080BBE0E
	adds r0, r4, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _080BBE20
	ldrb r1, [r5]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080BBE30
_080BBE0E:
	adds r0, r4, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080BBE30
_080BBE20:
	adds r0, r4, #0
	bl sub_0806D044
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	cmp r0, #0x77
	ble _080BBE32
_080BBE30:
	movs r1, #0
_080BBE32:
	cmp r1, #0
	beq _080BBE58
	ldr r0, _080BBE64 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080BBE68 @ =0x00013270
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080BBE58
	movs r0, #2
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080BBE58:
	adds r0, r4, #0
	bl sub_0806BC40
	b _080BBEDC
	.align 2, 0
_080BBE60: .4byte 0x085288C0
_080BBE64: .4byte gEwramData
_080BBE68: .4byte 0x00013270
_080BBE6C:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #0xa
	bne _080BBEA0
	ldr r0, _080BBEB8 @ =sub_080BBAC4
	bl sub_0806DFF8
	adds r2, r0, #0
	cmp r2, #0
	beq _080BBEA0
	str r4, [r2, #0x14]
	adds r3, r2, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsrs r1, r0, #3
	subs r0, r0, r1
	adds r1, r2, #0
	adds r1, #0x3c
	strb r0, [r1]
_080BBEA0:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080BBEDC
	movs r0, #0x20
	strb r0, [r4, #0xd]
	movs r0, #3
	strb r0, [r4, #0xb]
	b _080BBEDC
	.align 2, 0
_080BBEB8: .4byte sub_080BBAC4
_080BBEBC:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #0
	cmp r1, #0
	beq _080BBECA
	subs r0, #1
	strb r0, [r4, #0xd]
	b _080BBEDC
_080BBECA:
	strb r1, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080BBEDC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BBEE4
sub_080BBEE4: @ 0x080BBEE4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	beq _080BBF18
	cmp r0, #1
	bgt _080BBEF8
	cmp r0, #0
	beq _080BBEFE
	b _080BBFE6
_080BBEF8:
	cmp r0, #2
	beq _080BBFE2
	b _080BBFE6
_080BBEFE:
	movs r0, #0x65
	bl sub_08013E18
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0x40
	strb r0, [r5, #0xd]
	movs r0, #1
	strb r0, [r5, #0xb]
_080BBF18:
	ldr r0, [r5, #0x4c]
	ldr r1, _080BBFA4 @ =0xFFFFA000
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	ldr r0, [r5, #0x48]
	movs r1, #0xe8
	lsls r1, r1, #6
	adds r0, r0, r1
	str r0, [r5, #0x48]
	ldrb r1, [r5, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080BBF3A
	movs r0, #0x6e
	bl sub_080D7910
_080BBF3A:
	ldrb r1, [r5, #0xd]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080BBF86
	ldr r0, [r5, #0x48]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	adds r4, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl sub_0802D5EC
	adds r2, r0, #0
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #3
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	adds r0, r0, r2
	ldr r1, [r5, #0x44]
	ldr r2, [r5, #0x4c]
	adds r1, r1, r2
	movs r2, #1
	movs r3, #7
	bl sub_08045CEC
	adds r1, r0, #0
	cmp r1, #0
	beq _080BBF86
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r1, #0x4c]
	ldr r0, _080BBFA8 @ =0xFFFFF000
	str r0, [r1, #0x54]
_080BBF86:
	ldrb r0, [r5, #0xd]
	bl sub_0806D518
	cmp r0, #0
	beq _080BBFAC
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x28
	orrs r1, r0
	strb r1, [r2]
	b _080BBFC8
	.align 2, 0
_080BBFA4: .4byte 0xFFFFA000
_080BBFA8: .4byte 0xFFFFF000
_080BBFAC:
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
_080BBFC8:
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _080BBFD4
	subs r0, #1
	strb r0, [r5, #0xd]
	b _080BBFE6
_080BBFD4:
	movs r0, #2
	strb r0, [r5, #0xb]
	ldr r0, [r5, #0x18]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #0x18]
	b _080BBFE6
_080BBFE2:
	movs r0, #1
	b _080BBFE8
_080BBFE6:
	movs r0, #0
_080BBFE8:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BBFF0
sub_080BBFF0: @ 0x080BBFF0
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _080BC018 @ =0x081E41CC
	ldr r2, _080BC01C @ =0x0820B8A4
	lsls r3, r5, #0x18
	lsrs r3, r3, #0x18
	ldr r0, _080BC020 @ =0x08242994
	str r0, [sp]
	adds r0, r4, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080BC024
	adds r0, r4, #0
	bl sub_08000E14
	b _080BC0A2
	.align 2, 0
_080BC018: .4byte 0x081E41CC
_080BC01C: .4byte 0x0820B8A4
_080BC020: .4byte 0x08242994
_080BC024:
	strb r5, [r4, #0x14]
	adds r0, r4, #0
	bl sub_0806B04C
	adds r0, r4, #0
	adds r0, #0x5c
	movs r1, #0x11
	strb r1, [r0]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _080BC074 @ =sub_080BB924
	bl sub_0806DFF8
	cmp r0, #0
	beq _080BC05C
	str r4, [r0, #0x14]
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #2
	orrs r1, r2
	strb r1, [r0]
_080BC05C:
	ldr r0, _080BC078 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080BC07C
	movs r0, #3
	strb r0, [r4, #0xa]
	b _080BC0A2
	.align 2, 0
_080BC074: .4byte sub_080BB924
_080BC078: .4byte gEwramData
_080BC07C:
	ldr r2, _080BC0AC @ =sub_0806E1B8
	ldr r3, _080BC0B0 @ =sub_080BC0B4
	adds r0, r4, #0
	movs r1, #8
	bl sub_0804277C
	adds r0, r4, #0
	bl sub_0806B1FC
	adds r0, r4, #0
	bl sub_0806AF98
	adds r2, r4, #0
	adds r2, #0x46
	ldrh r0, [r2]
	adds r0, #1
	movs r1, #0
	strh r0, [r2]
	strb r1, [r4, #0xa]
_080BC0A2:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BC0AC: .4byte sub_0806E1B8
_080BC0B0: .4byte sub_080BC0B4

	thumb_func_start sub_080BC0B4
sub_080BC0B4: @ 0x080BC0B4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080BC0EC
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
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080BC0EC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BC0F4
sub_080BC0F4: @ 0x080BC0F4
	push {lr}
	sub sp, #0x10
	mov r2, sp
	movs r3, #0
	movs r1, #0x80
	lsls r1, r1, #1
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
	.align 2, 0

	thumb_func_start sub_080BC128
sub_080BC128: @ 0x080BC128
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r6, [r4, #0x40]
	ldr r7, [r4, #0x44]
	movs r5, #0x10
_080BC132:
	adds r0, r4, #0
	bl sub_0803AC40
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x28]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x2c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	subs r5, #1
	cmp r5, #0
	bne _080BC132
	str r6, [r4, #0x40]
	str r7, [r4, #0x44]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080BC158
sub_080BC158: @ 0x080BC158
	push {lr}
	movs r1, #0
	bl sub_080BBFF0
	pop {r0}
	bx r0

	thumb_func_start sub_080BC164
sub_080BC164: @ 0x080BC164
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r1, #0x20
	rsbs r1, r1, #0
	bl sub_0806E4F8
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080BC198
	adds r0, r4, #0
	movs r1, #6
	bl sub_0806D128
	cmp r0, #0
	bne _080BC1F0
	adds r0, r4, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _080BC198
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	b _080BC1F0
_080BC198:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080BC1BA
	cmp r0, #1
	bgt _080BC1A8
	cmp r0, #0
	beq _080BC1B2
	b _080BC1DC
_080BC1A8:
	cmp r0, #2
	beq _080BC1C2
	cmp r0, #3
	beq _080BC1D4
	b _080BC1DC
_080BC1B2:
	adds r0, r4, #0
	bl sub_080BBCC4
	b _080BC1DC
_080BC1BA:
	adds r0, r4, #0
	bl sub_080BBD90
	b _080BC1DC
_080BC1C2:
	adds r0, r4, #0
	bl sub_080BBEE4
	cmp r0, #0
	beq _080BC1DC
	adds r0, r4, #0
	bl sub_08000E14
	b _080BC1F0
_080BC1D4:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080BC1F0
_080BC1DC:
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080BC1EA
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
_080BC1EA:
	adds r0, r4, #0
	bl sub_0803F17C
_080BC1F0:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080BC1F8
sub_080BC1F8: @ 0x080BC1F8
	push {lr}
	movs r1, #1
	bl sub_080BBFF0
	pop {r0}
	bx r0

	thumb_func_start sub_080BC204
sub_080BC204: @ 0x080BC204
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r1, #0x20
	rsbs r1, r1, #0
	bl sub_0806E4F8
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080BC238
	adds r0, r4, #0
	movs r1, #6
	bl sub_0806D128
	cmp r0, #0
	bne _080BC290
	adds r0, r4, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _080BC238
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	b _080BC290
_080BC238:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080BC25A
	cmp r0, #1
	bgt _080BC248
	cmp r0, #0
	beq _080BC252
	b _080BC27C
_080BC248:
	cmp r0, #2
	beq _080BC262
	cmp r0, #3
	beq _080BC274
	b _080BC27C
_080BC252:
	adds r0, r4, #0
	bl sub_080BBCC4
	b _080BC27C
_080BC25A:
	adds r0, r4, #0
	bl sub_080BBD90
	b _080BC27C
_080BC262:
	adds r0, r4, #0
	bl sub_080BBEE4
	cmp r0, #0
	beq _080BC27C
	adds r0, r4, #0
	bl sub_08000E14
	b _080BC290
_080BC274:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080BC290
_080BC27C:
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080BC28A
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
_080BC28A:
	adds r0, r4, #0
	bl sub_0803F17C
_080BC290:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080BC298
sub_080BC298: @ 0x080BC298
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _080BC2C4 @ =gEwramData
	ldrb r1, [r4, #0x14]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080BC2C8 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r5, r1, r0
	ldrb r0, [r5, #0xa]
	cmp r0, #7
	beq _080BC2E2
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080BC2CC
	cmp r0, #1
	beq _080BC322
	b _080BC356
	.align 2, 0
_080BC2C4: .4byte gEwramData
_080BC2C8: .4byte 0x000004E4
_080BC2CC:
	ldr r1, _080BC2EC @ =0x08119498
	ldr r2, _080BC2F0 @ =0x0820BC1C
	ldr r0, _080BC2F4 @ =0x08249C48
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080BC2F8
_080BC2E2:
	adds r0, r4, #0
	bl sub_08000E14
	b _080BC386
	.align 2, 0
_080BC2EC: .4byte 0x08119498
_080BC2F0: .4byte 0x0820BC1C
_080BC2F4: .4byte 0x08249C48
_080BC2F8:
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	strb r0, [r4, #0xa]
_080BC322:
	ldrb r0, [r5, #0xa]
	cmp r0, #4
	beq _080BC332
	ldrh r1, [r5, #0x14]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080BC340
_080BC332:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	b _080BC34E
_080BC340:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_080BC34E:
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
_080BC356:
	adds r3, r5, #0
	adds r3, #0x5a
	ldrb r0, [r3]
	adds r5, r4, #0
	adds r5, #0x5a
	movs r1, #6
	ands r1, r0
	ldrb r2, [r5]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	ldrb r2, [r3]
	movs r1, #0x78
	ands r1, r2
	movs r2, #0x79
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	adds r0, r4, #0
	bl sub_0803F17C
_080BC386:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BC390
sub_080BC390: @ 0x080BC390
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	adds r4, r1, #0
	adds r2, r6, #0
	adds r2, #0x42
	ldr r0, _080BC3D8 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _080BC3DC @ =0x0000A094
	adds r1, r1, r0
	ldrh r0, [r1, #6]
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r2, r6, #0
	adds r2, #0x46
	ldrh r0, [r1, #0xa]
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldrb r0, [r6, #0xc]
	cmp r0, #7
	bls _080BC3CE
	b _080BC7CE
_080BC3CE:
	lsls r0, r0, #2
	ldr r1, _080BC3E0 @ =_080BC3E4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080BC3D8: .4byte gEwramData
_080BC3DC: .4byte 0x0000A094
_080BC3E0: .4byte _080BC3E4
_080BC3E4: @ jump table
	.4byte _080BC404 @ case 0
	.4byte _080BC41C @ case 1
	.4byte _080BC458 @ case 2
	.4byte _080BC4E0 @ case 3
	.4byte _080BC590 @ case 4
	.4byte _080BC618 @ case 5
	.4byte _080BC6B4 @ case 6
	.4byte _080BC778 @ case 7
_080BC404:
	movs r0, #0
	str r0, [r6, #0x20]
	strh r0, [r6, #0x1a]
	movs r1, #1
	strb r1, [r6, #0xc]
	ldr r1, _080BC418 @ =0xFFFE8000
	str r1, [r6, #0x4c]
	str r0, [r6, #0x48]
	str r0, [r6, #0x50]
	b _080BC7CE
	.align 2, 0
_080BC418: .4byte 0xFFFE8000
_080BC41C:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x18
	bl sub_08001C1C
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	bne _080BC438
	b _080BC7CE
_080BC438:
	ldr r0, _080BC454 @ =0x00000105
	bl sub_08013D60
	adds r2, r6, #0
	adds r2, #0x46
	ldrh r0, [r2]
	adds r0, r4, r0
	movs r1, #0
	strh r0, [r2]
	str r1, [r6, #0x4c]
	movs r0, #2
	strb r0, [r6, #0xc]
	b _080BC7CE
	.align 2, 0
_080BC454: .4byte 0x00000105
_080BC458:
	ldrb r1, [r6, #0xd]
	movs r7, #1
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _080BC4A8
	ldr r5, [r6, #0x40]
	movs r0, #0x18
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	ldr r4, [r6, #0x44]
	adds r4, r4, r0
	bl sub_08000A90
	adds r2, r0, #0
	ands r2, r7
	adds r2, #0x40
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #6
	bl sub_08045DC8
	adds r4, r0, #0
	cmp r4, #0
	beq _080BC4A8
	movs r0, #0x80
	lsls r0, r0, #8
	bl sub_0802D5EC
	ldr r3, _080BC4DC @ =0xFFFF8000
	adds r0, r0, r3
	str r0, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	movs r0, #0x80
	lsls r0, r0, #0xa
	bl sub_0802D5EC
	str r0, [r4, #0x48]
_080BC4A8:
	ldr r0, [r6, #0x20]
	str r0, [r6, #0x48]
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x18
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	bl sub_08002058
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _080BC4C8
	b _080BC7CE
_080BC4C8:
	adds r2, r6, #0
	adds r2, #0x42
	ldrh r0, [r2]
	adds r0, r1, r0
	movs r1, #0
	strh r0, [r2]
	str r1, [r6, #0x48]
	movs r0, #3
	strb r0, [r6, #0xc]
	b _080BC7CE
	.align 2, 0
_080BC4DC: .4byte 0xFFFF8000
_080BC4E0:
	ldrb r1, [r6, #0xd]
	movs r7, #1
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _080BC532
	ldr r4, [r6, #0x40]
	movs r3, #0xc0
	lsls r3, r3, #0xd
	adds r4, r4, r3
	ldr r5, [r6, #0x44]
	bl sub_08000A90
	adds r2, r0, #0
	ands r2, r7
	adds r2, #0x40
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #6
	bl sub_08045DC8
	adds r4, r0, #0
	cmp r4, #0
	beq _080BC532
	movs r0, #0x80
	lsls r0, r0, #8
	bl sub_0802D5EC
	ldr r1, _080BC588 @ =0xFFFF8000
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	movs r0, #0x80
	lsls r0, r0, #0xa
	bl sub_0802D5EC
	ldr r2, _080BC58C @ =0xFFFE0000
	adds r0, r0, r2
	str r0, [r4, #0x48]
_080BC532:
	ldr r0, [r6, #0x20]
	str r0, [r6, #0x4c]
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r5, r0, #0x10
	adds r0, r5, #0
	adds r0, #8
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r4, r1, #0x10
	adds r1, r4, #0
	adds r1, #0x28
	bl sub_08002058
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	beq _080BC560
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, r2, r0
	strh r0, [r1]
_080BC560:
	adds r1, r4, #0
	adds r1, #0x18
	adds r0, r5, #0
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _080BC574
	b _080BC7CE
_080BC574:
	adds r2, r6, #0
	adds r2, #0x46
	ldrh r0, [r2]
	adds r0, r1, r0
	movs r1, #0
	strh r0, [r2]
	str r1, [r6, #0x4c]
	movs r0, #4
	strb r0, [r6, #0xc]
	b _080BC7CE
	.align 2, 0
_080BC588: .4byte 0xFFFF8000
_080BC58C: .4byte 0xFFFE0000
_080BC590:
	ldrb r1, [r6, #0xd]
	movs r7, #1
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _080BC5DE
	ldr r5, [r6, #0x40]
	ldr r4, [r6, #0x44]
	movs r3, #0xc0
	lsls r3, r3, #0xd
	adds r4, r4, r3
	bl sub_08000A90
	adds r2, r0, #0
	ands r2, r7
	adds r2, #0x40
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #6
	bl sub_08045DC8
	adds r4, r0, #0
	cmp r4, #0
	beq _080BC5DE
	movs r0, #0x80
	lsls r0, r0, #8
	bl sub_0802D5EC
	ldr r1, _080BC614 @ =0xFFFD8000
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	movs r0, #0x80
	lsls r0, r0, #0xa
	bl sub_0802D5EC
	str r0, [r4, #0x48]
_080BC5DE:
	ldr r0, [r6, #0x20]
	rsbs r0, r0, #0
	str r0, [r6, #0x48]
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, #0x20
	mov r3, sb
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	bl sub_0800207C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _080BC600
	b _080BC7CE
_080BC600:
	adds r2, r6, #0
	adds r2, #0x42
	ldrh r0, [r2]
	adds r0, r1, r0
	movs r1, #0
	strh r0, [r2]
	str r1, [r6, #0x48]
	movs r0, #5
	strb r0, [r6, #0xc]
	b _080BC7CE
	.align 2, 0
_080BC614: .4byte 0xFFFD8000
_080BC618:
	ldrb r1, [r6, #0xd]
	movs r7, #1
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _080BC66E
	movs r0, #0x18
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	ldr r4, [r6, #0x40]
	adds r4, r4, r0
	ldr r5, [r6, #0x44]
	bl sub_08000A90
	adds r2, r0, #0
	ands r2, r7
	adds r2, #0x40
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #6
	bl sub_08045DC8
	adds r4, r0, #0
	cmp r4, #0
	beq _080BC66E
	movs r0, #0x80
	lsls r0, r0, #8
	bl sub_0802D5EC
	ldr r1, _080BC6A8 @ =0xFFFF8000
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	movs r0, #0x80
	lsls r0, r0, #0xa
	bl sub_0802D5EC
	movs r2, #0x80
	lsls r2, r2, #0xa
	adds r0, r0, r2
	str r0, [r4, #0x48]
_080BC66E:
	ldr r0, [r6, #0x20]
	rsbs r0, r0, #0
	str r0, [r6, #0x4c]
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x20
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	bne _080BC690
	b _080BC7CE
_080BC690:
	ldr r0, _080BC6AC @ =0x00000105
	bl sub_08013E18
	adds r1, r6, #0
	adds r1, #0x46
	ldrh r0, [r1]
	adds r0, r4, r0
	strh r0, [r1]
	movs r0, #6
	strb r0, [r6, #0xc]
	ldr r0, _080BC6B0 @ =0x0000F877
	b _080BC7CC
	.align 2, 0
_080BC6A8: .4byte 0xFFFF8000
_080BC6AC: .4byte 0x00000105
_080BC6B0: .4byte 0x0000F877
_080BC6B4:
	ldrh r0, [r6, #0x1a]
	ldrh r3, [r6, #0x18]
	adds r0, r0, r3
	strh r0, [r6, #0x18]
	ldrb r1, [r6, #0xd]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080BC6CC
	ldr r0, _080BC70C @ =0x00000135
	bl sub_080D7910
_080BC6CC:
	ldr r5, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, _080BC710 @ =0xFFDA0000
	adds r4, r0, r1
	ldr r2, [r6, #0x40]
	mov r8, r2
	ldr r3, [r6, #0x44]
	mov sb, r3
	subs r0, r2, r5
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	subs r1, r3, r4
	asrs r1, r1, #0x10
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r7, r0, #0x10
	adds r0, r6, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r1, [r0, r3]
	cmp r5, #0
	bge _080BC714
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080BC716
	.align 2, 0
_080BC70C: .4byte 0x00000135
_080BC710: .4byte 0xFFDA0000
_080BC714:
	asrs r0, r5, #0x10
_080BC716:
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r6, #0
	adds r0, #0x46
	movs r3, #0
	ldrsh r1, [r0, r3]
	cmp r4, #0
	bge _080BC730
	rsbs r0, r4, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080BC732
_080BC730:
	asrs r0, r4, #0x10
_080BC732:
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, #0
	bl ArcTan2
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsrs r4, r7, #4
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_08068CDC
	ldr r0, [r6, #0x40]
	mov r1, r8
	subs r0, r0, r1
	str r0, [r6, #0x48]
	ldr r0, [r6, #0x44]
	mov r2, sb
	subs r0, r0, r2
	str r0, [r6, #0x4c]
	ldr r0, _080BC774 @ =0x00007FFF
	cmp r4, r0
	bgt _080BC7CE
	movs r0, #7
	strb r0, [r6, #0xc]
	b _080BC7CE
	.align 2, 0
_080BC774: .4byte 0x00007FFF
_080BC778:
	ldrh r0, [r6, #0x1a]
	ldrh r3, [r6, #0x18]
	adds r0, r0, r3
	strh r0, [r6, #0x18]
	ldrb r1, [r6, #0xd]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _080BC790
	ldr r0, _080BC7B4 @ =0x00000135
	bl sub_080D7910
_080BC790:
	ldrh r2, [r6, #0x1a]
	movs r0, #0x1a
	ldrsh r1, [r6, r0]
	ldr r0, _080BC7B8 @ =0xFFFFFE00
	cmp r1, r0
	blt _080BC7C8
	ldrh r0, [r6, #0x18]
	ldr r1, _080BC7BC @ =0x00007FFF
	ands r1, r0
	ldr r2, _080BC7C0 @ =0xFFFFCFFF
	adds r1, r1, r2
	lsls r1, r1, #0x10
	ldr r0, _080BC7C4 @ =0x07FE0000
	cmp r1, r0
	bhi _080BC7CE
	movs r0, #1
	b _080BC816
	.align 2, 0
_080BC7B4: .4byte 0x00000135
_080BC7B8: .4byte 0xFFFFFE00
_080BC7BC: .4byte 0x00007FFF
_080BC7C0: .4byte 0xFFFFCFFF
_080BC7C4: .4byte 0x07FE0000
_080BC7C8:
	adds r0, r2, #0
	adds r0, #0x20
_080BC7CC:
	strh r0, [r6, #0x1a]
_080BC7CE:
	ldrb r0, [r6, #0xc]
	cmp r0, #5
	bhi _080BC7E6
	movs r1, #0xe0
	lsls r1, r1, #0xb
	adds r0, r6, #0
	bl sub_0806D3D8
	ldrh r0, [r6, #0x1a]
	ldrh r3, [r6, #0x18]
	adds r0, r0, r3
	strh r0, [r6, #0x18]
_080BC7E6:
	ldrb r1, [r6, #0xc]
	cmp r1, #1
	bls _080BC814
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	cmp r1, #5
	bhi _080BC814
	ldr r1, [r6, #0x20]
	ldr r0, _080BC824 @ =0x0006FFFF
	cmp r1, r0
	bgt _080BC814
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r1, r2
	str r0, [r6, #0x20]
	movs r1, #0x60
	bl __divsi3
	ldr r3, _080BC828 @ =0xFFFFFF00
	adds r1, r3, #0
	subs r1, r1, r0
	strh r1, [r6, #0x1a]
_080BC814:
	movs r0, #0
_080BC816:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080BC824: .4byte 0x0006FFFF
_080BC828: .4byte 0xFFFFFF00

	thumb_func_start sub_080BC82C
sub_080BC82C: @ 0x080BC82C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	ldr r2, _080BC8B4 @ =gEwramData
	ldrb r1, [r7, #0x14]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080BC8B8 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r6, r1, r0
	ldrb r0, [r6, #0x18]
	lsls r0, r0, #3
	ldr r1, _080BC8BC @ =0x085288CC
	adds r5, r0, r1
	ldrb r0, [r7, #0xa]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _080BC8A0
	adds r0, r6, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080BC8A0
	ldr r0, _080BC8C0 @ =0x00000105
	bl sub_08013E18
	adds r1, r7, #0
	adds r1, #0x3c
	movs r2, #0
	movs r0, #0x28
	strb r0, [r1]
	movs r0, #9
	strb r0, [r7, #0xa]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r7, #0x48]
	str r2, [r7, #0x50]
	ldr r0, _080BC8C4 @ =0xFFFC0000
	str r0, [r7, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x54]
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_080BC8A0:
	ldrb r0, [r7, #0xa]
	cmp r0, #0xa
	bls _080BC8A8
	b _080BCCB4
_080BC8A8:
	lsls r0, r0, #2
	ldr r1, _080BC8C8 @ =_080BC8CC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080BC8B4: .4byte gEwramData
_080BC8B8: .4byte 0x000004E4
_080BC8BC: .4byte 0x085288CC
_080BC8C0: .4byte 0x00000105
_080BC8C4: .4byte 0xFFFC0000
_080BC8C8: .4byte _080BC8CC
_080BC8CC: @ jump table
	.4byte _080BC8F8 @ case 0
	.4byte _080BC9BC @ case 1
	.4byte _080BCA3A @ case 2
	.4byte _080BCA72 @ case 3
	.4byte _080BCC6A @ case 4
	.4byte _080BCB8C @ case 5
	.4byte _080BCBBC @ case 6
	.4byte _080BCC14 @ case 7
	.4byte _080BCCB4 @ case 8
	.4byte _080BCC88 @ case 9
	.4byte _080BCCF4 @ case 10
_080BC8F8:
	ldr r1, _080BC9A4 @ =0x08119498
	ldr r2, _080BC9A8 @ =0x0820BC1C
	ldr r0, _080BC9AC @ =0x08249C48
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #1
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080BC910
	b _080BCD02
_080BC910:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _080BC920
	b _080BCD02
_080BC920:
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
	adds r2, #1
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	adds r4, r7, #0
	adds r4, #0x3c
	strb r0, [r4]
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x36
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x5c
	strb r1, [r0]
	adds r0, r7, #0
	movs r1, #0x11
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r7, #0
	bl sub_0803F17C
	ldr r2, _080BC9B0 @ =sub_080BF578
	adds r0, r7, #0
	movs r1, #8
	movs r3, #0
	bl sub_0804277C
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x3c
	strb r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #7
	strh r0, [r7, #0x18]
	ldrb r0, [r7, #0x16]
	cmp r0, #0
	beq _080BC9B4
	movs r0, #8
	strb r0, [r7, #0xa]
	b _080BCCB4
	.align 2, 0
_080BC9A4: .4byte 0x08119498
_080BC9A8: .4byte 0x0820BC1C
_080BC9AC: .4byte 0x08249C48
_080BC9B0: .4byte sub_080BF578
_080BC9B4:
	movs r0, #1
	strb r0, [r7, #0xa]
	movs r0, #8
	strb r0, [r7, #0xd]
_080BC9BC:
	ldr r0, [r6, #0x40]
	str r0, [r7, #0x40]
	ldr r0, [r6, #0x44]
	ldr r2, _080BC9FC @ =0xFFD80000
	adds r0, r0, r2
	str r0, [r7, #0x44]
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	beq _080BCA18
	subs r1, r0, #1
	strb r1, [r7, #0xd]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _080BC9DC
	b _080BCCB4
_080BC9DC:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080BCA00
	adds r0, r6, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	adds r3, r7, #0
	adds r3, #0x5a
	movs r1, #0x78
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x79
	rsbs r0, r0, #0
	b _080BCB80
	.align 2, 0
_080BC9FC: .4byte 0xFFD80000
_080BCA00:
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
	b _080BCB80
_080BCA18:
	movs r0, #4
	strb r0, [r7, #0xd]
	adds r0, r6, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	adds r3, r7, #0
	adds r3, #0x5a
	movs r1, #0x78
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r0, #2
	strb r0, [r7, #0xa]
_080BCA3A:
	ldrb r0, [r7, #0xd]
	lsls r0, r0, #0xa
	ldrh r3, [r5]
	adds r0, r0, r3
	strh r0, [r7, #0x18]
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r5, #2]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r1, r6, #0
	adds r1, #0x46
	ldrh r0, [r5, #4]
	ldrh r1, [r1]
	adds r0, r0, r1
	ldrb r1, [r7, #0xd]
	subs r0, r0, r1
	adds r3, r7, #0
	adds r3, #0x46
	strh r0, [r3]
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	beq _080BCA70
	b _080BCC64
_080BCA70:
	b _080BCC7E
_080BCA72:
	ldrh r1, [r6, #0x14]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _080BCAD4
	adds r1, r7, #0
	adds r1, #0x3c
	movs r3, #0
	movs r0, #0x41
	strb r0, [r1]
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	subs r0, #0x62
	ands r0, r1
	strb r0, [r2]
	movs r2, #0xf4
	lsls r2, r2, #3
	strh r2, [r7, #0x1a]
	movs r4, #0x90
	lsls r4, r4, #0xb
	str r4, [r7, #0x48]
	ldr r5, _080BCAD0 @ =0xFFFFF000
	str r5, [r7, #0x50]
	str r3, [r7, #0x4c]
	str r3, [r7, #0x54]
	movs r0, #0x10
	strb r0, [r7, #0xd]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080BCAC8
	rsbs r0, r2, #0
	strh r0, [r7, #0x1a]
	rsbs r0, r4, #0
	str r0, [r7, #0x48]
	rsbs r0, r5, #0
	str r0, [r7, #0x50]
_080BCAC8:
	movs r0, #5
	strb r0, [r7, #0xa]
	b _080BCCB4
	.align 2, 0
_080BCAD0: .4byte 0xFFFFF000
_080BCAD4:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080BCAF8
	adds r1, r7, #0
	adds r1, #0x3c
	movs r0, #0x46
	strb r0, [r1]
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	subs r0, #0x67
	ands r0, r1
	strb r0, [r2]
	movs r0, #4
	strb r0, [r7, #0xa]
	strb r3, [r7, #0xc]
	b _080BCCB4
_080BCAF8:
	adds r1, r7, #0
	adds r1, #0x3c
	movs r0, #0x3c
	strb r0, [r1]
	adds r3, r7, #0
	adds r3, #0x58
	movs r0, #1
	ldrb r1, [r5, #7]
	ands r1, r0
	lsls r1, r1, #5
	ldrb r2, [r3]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080BCB36
	ldrh r0, [r5]
	strh r0, [r7, #0x18]
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r5, #2]
	ldrh r1, [r1]
	adds r0, r0, r1
	b _080BCB4A
_080BCB36:
	ldrh r1, [r5]
	ldr r3, _080BCB88 @ =0xFFFF8000
	adds r0, r3, #0
	subs r0, r0, r1
	strh r0, [r7, #0x18]
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
_080BCB4A:
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r1, r6, #0
	adds r1, #0x46
	ldrh r0, [r5, #4]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r7, #0
	adds r1, #0x46
	strh r0, [r1]
	adds r1, r6, #0
	adds r1, #0x5c
	ldrb r0, [r5, #6]
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r1, r7, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldrb r0, [r2]
	adds r3, r7, #0
	adds r3, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
_080BCB80:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	b _080BCCB4
	.align 2, 0
_080BCB88: .4byte 0xFFFF8000
_080BCB8C:
	ldrh r0, [r7, #0x1a]
	ldrh r1, [r7, #0x18]
	adds r0, r0, r1
	strh r0, [r7, #0x18]
	ldrb r1, [r7, #0xb]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _080BCBA4
	ldr r0, _080BCBB8 @ =0x00000135
	bl sub_080D7910
_080BCBA4:
	ldrh r1, [r6, #0x14]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080BCBB0
	b _080BCCB4
_080BCBB0:
	movs r0, #6
	strb r0, [r7, #0xa]
	b _080BCCB4
	.align 2, 0
_080BCBB8: .4byte 0x00000135
_080BCBBC:
	ldrb r1, [r7, #0xb]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _080BCBCC
	ldr r0, _080BCC08 @ =0x00000135
	bl sub_080D7910
_080BCBCC:
	ldrh r0, [r7, #0x1a]
	ldrh r2, [r7, #0x18]
	adds r0, r0, r2
	strh r0, [r7, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r7, #0
	bl sub_0806D3D8
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	bne _080BCC64
	ldr r1, [r6, #0x40]
	ldr r0, [r7, #0x40]
	subs r5, r1, r0
	cmp r5, #0
	bge _080BCBF0
	subs r5, r0, r1
_080BCBF0:
	ldr r0, _080BCC0C @ =0x0001FFFF
	cmp r5, r0
	bgt _080BCCB4
	ldrh r1, [r6, #0x14]
	ldr r0, _080BCC10 @ =0x0000FFF3
	ands r0, r1
	strh r0, [r6, #0x14]
	movs r0, #0x34
	strb r0, [r7, #0xd]
	movs r0, #7
	strb r0, [r7, #0xa]
	b _080BCCB4
	.align 2, 0
_080BCC08: .4byte 0x00000135
_080BCC0C: .4byte 0x0001FFFF
_080BCC10: .4byte 0x0000FFF3
_080BCC14:
	ldrh r0, [r7, #0x1a]
	ldrh r3, [r7, #0x18]
	adds r1, r0, r3
	strh r1, [r7, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080BCC32
	movs r0, #0x1a
	ldrsh r1, [r7, r0]
	movs r0, #0xb
	muls r0, r1, r0
	movs r1, #0xc
	bl __divsi3
	b _080BCC42
_080BCC32:
	movs r2, #0x1a
	ldrsh r1, [r7, r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	cmp r0, #0
	bge _080BCC40
	adds r0, #0xf
_080BCC40:
	asrs r0, r0, #4
_080BCC42:
	strh r0, [r7, #0x1a]
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0x26
	adds r3, r7, #0
	adds r3, #0x46
	strh r0, [r3]
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	beq _080BCC7E
_080BCC64:
	subs r0, #1
	strb r0, [r7, #0xd]
	b _080BCCB4
_080BCC6A:
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_080BC390
	cmp r0, #0
	beq _080BCCB4
	ldrh r0, [r6, #0x14]
	ldr r1, _080BCC84 @ =0x0000FFEF
	ands r1, r0
	strh r1, [r6, #0x14]
_080BCC7E:
	movs r0, #3
	strb r0, [r7, #0xa]
	b _080BCCB4
	.align 2, 0
_080BCC84: .4byte 0x0000FFEF
_080BCC88:
	movs r3, #0xf2
	lsls r3, r3, #3
	adds r0, r3, #0
	ldrh r1, [r7, #0x18]
	adds r0, r0, r1
	strh r0, [r7, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r7, #0
	bl sub_0806D3D8
	adds r0, r7, #0
	movs r1, #3
	bl sub_0806D128
	cmp r0, #0
	beq _080BCCB4
	movs r0, #0xa
	strb r0, [r7, #0xa]
	movs r0, #0
	bl sub_08034498
_080BCCB4:
	ldrb r5, [r7, #0x16]
	cmp r5, #0
	bne _080BCCDC
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r4, r7, #0
	adds r4, #0x58
	ldrb r1, [r4]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	str r5, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
	b _080BCD96
_080BCCDC:
	ldr r2, _080BCD0C @ =gEwramData
	ldrb r1, [r7, #0x15]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _080BCD10 @ =0x000004E4
	adds r0, r0, r3
	ldr r1, [r2]
	adds r6, r1, r0
	ldrb r0, [r6, #0xa]
	cmp r0, #0xa
	bne _080BCD14
_080BCCF4:
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080BCD02:
	adds r0, r7, #0
	bl sub_08000E14
	b _080BCEB8
	.align 2, 0
_080BCD0C: .4byte gEwramData
_080BCD10: .4byte 0x000004E4
_080BCD14:
	adds r3, r6, #0
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
	adds r0, r6, #0
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
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x5c
	movs r5, #0
	strb r1, [r0]
	ldrb r0, [r3]
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r4]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	ldr r0, [r6, #0x40]
	str r0, [r7, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r7, #0x44]
	ldr r1, _080BCE78 @ =0xFFFF8000
	adds r0, r1, #0
	ldrh r6, [r6, #0x18]
	adds r0, r0, r6
	strh r0, [r7, #0x18]
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	movs r2, #0x80
	lsls r2, r2, #9
	ldrb r1, [r4]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	str r5, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
_080BCD96:
	mov r8, r4
	mov r3, r8
	ldrb r1, [r3]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080BCDA6
	b _080BCEB8
_080BCDA6:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BCE0E
	ldr r0, _080BCE7C @ =0xFFFFC000
	adds r4, r0, #0
	ldrh r1, [r7, #0x18]
	adds r4, r4, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r4, r2
	bl sub_080009E4
	adds r5, r0, #0
	movs r6, #0x80
	lsls r6, r6, #0xc
	adds r0, r6, #0
	bl sub_0802D5EC
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #4
	adds r5, r1, r0
	adds r0, r4, #0
	bl sub_080009E4
	adds r4, r0, #0
	adds r0, r6, #0
	bl sub_0802D5EC
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #4
	adds r6, r1, r0
	ldr r0, [r7, #0x40]
	adds r0, r0, r5
	ldr r1, [r7, #0x44]
	adds r1, r1, r6
	movs r2, #0
	movs r3, #6
	bl sub_08045CEC
	adds r1, r0, #0
	cmp r1, #0
	beq _080BCE0E
	ldr r0, _080BCE80 @ =0xFFFFF800
	str r0, [r1, #0x54]
_080BCE0E:
	ldr r3, _080BCE7C @ =0xFFFFC000
	adds r4, r3, #0
	ldrh r0, [r7, #0x18]
	adds r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	mov sb, r1
	adds r0, r4, r1
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r5, r1, #3
	adds r0, r4, #0
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r6, r1, #3
	ldrh r4, [r7, #0x18]
	mov r2, r8
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080BCE50
	lsls r0, r4, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x18
	adds r0, r0, r3
	lsrs r4, r0, #0x10
_080BCE50:
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r1, sb
	adds r0, r4, r1
	bl sub_080009E4
	lsls r0, r0, #4
	adds r5, r5, r0
	adds r0, r4, #0
	bl sub_080009E4
	lsls r0, r0, #4
	adds r6, r6, r0
	cmp r5, #0
	bge _080BCE84
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080BCE86
	.align 2, 0
_080BCE78: .4byte 0xFFFF8000
_080BCE7C: .4byte 0xFFFFC000
_080BCE80: .4byte 0xFFFFF800
_080BCE84:
	asrs r0, r5, #0x10
_080BCE86:
	adds r2, r0, #0
	subs r2, #0x10
	movs r0, #0xff
	ands r2, r0
	cmp r6, #0
	bge _080BCE9A
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080BCE9C
_080BCE9A:
	asrs r0, r6, #0x10
_080BCE9C:
	subs r0, #0x10
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #8
	adds r0, r2, r0
	ldr r1, _080BCEC8 @ =0x20200000
	adds r1, r0, r1
	adds r0, r7, #0
	bl sub_08042884
	add r0, sp, #8
	adds r1, r7, #0
	bl sub_080421AC
_080BCEB8:
	add sp, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BCEC8: .4byte 0x20200000

	thumb_func_start sub_080BCECC
sub_080BCECC: @ 0x080BCECC
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080BCF4C
	cmp r0, #1
	bgt _080BCEE2
	cmp r0, #0
	beq _080BCEE8
	b _080BCF9E
_080BCEE2:
	cmp r0, #2
	beq _080BCF88
	b _080BCF9E
_080BCEE8:
	ldr r1, _080BCF7C @ =0x08119498
	ldr r2, _080BCF80 @ =0x0820BC1C
	ldr r0, _080BCF84 @ =0x08249C48
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080BCF96
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	blt _080BCF96
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
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x14
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xc
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	movs r0, #0xa
	strb r0, [r4, #0xd]
	movs r0, #1
	strb r0, [r4, #0xa]
_080BCF4C:
	ldrb r0, [r4, #0xd]
	cmp r0, #8
	bne _080BCF64
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #7
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r2]
_080BCF64:
	ldrb r2, [r4, #0xd]
	adds r1, r2, #0
	cmp r1, #4
	bne _080BCF70
	movs r0, #1
	strb r0, [r4, #0xf]
_080BCF70:
	cmp r1, #0
	beq _080BCF88
	subs r0, r2, #1
	strb r0, [r4, #0xd]
	b _080BCF9E
	.align 2, 0
_080BCF7C: .4byte 0x08119498
_080BCF80: .4byte 0x0820BC1C
_080BCF84: .4byte 0x08249C48
_080BCF88:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080BCF96:
	adds r0, r4, #0
	bl sub_08000E14
	b _080BCFC0
_080BCF9E:
	movs r1, #0x18
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
_080BCFC0:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080BCFC8
sub_080BCFC8: @ 0x080BCFC8
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _080BCFF0 @ =gEwramData
	ldrb r1, [r4, #0x14]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080BCFF4 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r5, r1, r0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080BD052
	cmp r0, #1
	bgt _080BCFF8
	cmp r0, #0
	beq _080BCFFE
	b _080BD08A
	.align 2, 0
_080BCFF0: .4byte gEwramData
_080BCFF4: .4byte 0x000004E4
_080BCFF8:
	cmp r0, #2
	beq _080BD084
	b _080BD08A
_080BCFFE:
	ldr r1, _080BD01C @ =0x08119498
	ldr r2, _080BD020 @ =0x0820BC1C
	ldr r0, _080BD024 @ =0x08249C48
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #2
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080BD028
	adds r0, r4, #0
	bl sub_08000E14
	b _080BD08A
	.align 2, 0
_080BD01C: .4byte 0x08119498
_080BD020: .4byte 0x0820BC1C
_080BD024: .4byte 0x08249C48
_080BD028:
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldrb r1, [r4, #0xb]
	adds r0, r4, #0
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	movs r1, #1
	strb r1, [r4, #0xf]
	movs r0, #0xc
	strb r0, [r4, #0xd]
	strb r1, [r4, #0xa]
_080BD052:
	ldrb r0, [r4, #0xd]
	cmp r0, #8
	bne _080BD06E
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	strb r0, [r4, #0xf]
_080BD06E:
	ldrb r2, [r4, #0xd]
	adds r1, r2, #0
	cmp r1, #4
	bne _080BD07A
	movs r0, #1
	strb r0, [r4, #0xf]
_080BD07A:
	cmp r1, #0
	beq _080BD084
	subs r0, r2, #1
	strb r0, [r4, #0xd]
	b _080BD08A
_080BD084:
	adds r0, r4, #0
	bl sub_08000E14
_080BD08A:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BD094
sub_080BD094: @ 0x080BD094
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r2, _080BD0BC @ =gEwramData
	ldrb r1, [r5, #0x14]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080BD0C0 @ =0x000004E4
	adds r0, r0, r1
	ldr r2, [r2]
	adds r6, r2, r0
	ldrb r4, [r5, #0xa]
	cmp r4, #1
	beq _080BD118
	cmp r4, #1
	bgt _080BD0C4
	cmp r4, #0
	beq _080BD0CE
	b _080BD1FC
	.align 2, 0
_080BD0BC: .4byte gEwramData
_080BD0C0: .4byte 0x000004E4
_080BD0C4:
	cmp r4, #2
	beq _080BD164
	cmp r4, #3
	beq _080BD1A8
	b _080BD1FC
_080BD0CE:
	ldr r1, _080BD150 @ =0x08119498
	ldr r2, _080BD154 @ =0x0820BC1C
	ldr r0, _080BD158 @ =0x08249C48
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #2
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080BD0E6
	b _080BD1EA
_080BD0E6:
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x19
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #0x18
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #0x10
	str r0, [r5, #0x48]
	movs r0, #0xc0
	lsls r0, r0, #0xf
	str r0, [r5, #0x4c]
	movs r0, #1
	strb r0, [r5, #0xa]
_080BD118:
	ldr r0, _080BD15C @ =gEwramData
	ldr r2, [r0]
	ldr r0, _080BD160 @ =0x0000A094
	adds r2, r2, r0
	ldr r1, [r2, #4]
	lsrs r0, r1, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	ldr r0, [r5, #0x48]
	subs r0, r0, r1
	str r0, [r5, #0x40]
	ldr r1, [r2, #8]
	lsrs r0, r1, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	ldr r0, [r5, #0x4c]
	subs r0, r0, r1
	str r0, [r5, #0x44]
	ldrh r1, [r6, #0x14]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080BD1FC
	movs r0, #0x30
	strb r0, [r5, #0xd]
	movs r0, #2
	strb r0, [r5, #0xa]
	b _080BD1FC
	.align 2, 0
_080BD150: .4byte 0x08119498
_080BD154: .4byte 0x0820BC1C
_080BD158: .4byte 0x08249C48
_080BD15C: .4byte gEwramData
_080BD160: .4byte 0x0000A094
_080BD164:
	ldr r1, _080BD19C @ =0x0000A094
	adds r2, r2, r1
	ldr r1, [r2, #4]
	lsrs r0, r1, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	ldr r0, [r5, #0x48]
	subs r0, r0, r1
	str r0, [r5, #0x40]
	ldr r1, [r2, #8]
	lsrs r0, r1, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	ldr r0, [r5, #0x4c]
	subs r0, r0, r1
	str r0, [r5, #0x44]
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	bne _080BD1F8
	movs r0, #3
	strb r0, [r5, #0xa]
	movs r0, #0x20
	strb r0, [r5, #0xd]
	ldr r0, _080BD1A0 @ =0xFFFF0000
	str r0, [r5, #0x4c]
	ldr r0, _080BD1A4 @ =0xFFFFE000
	str r0, [r5, #0x54]
	b _080BD1FC
	.align 2, 0
_080BD19C: .4byte 0x0000A094
_080BD1A0: .4byte 0xFFFF0000
_080BD1A4: .4byte 0xFFFFE000
_080BD1A8:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r5, #0
	bl sub_0806D460
	ldrb r0, [r5, #0xd]
	ands r4, r0
	cmp r4, #0
	bne _080BD1E4
	ldr r0, _080BD1F4 @ =sub_080BCFC8
	bl sub_0806DFF8
	adds r2, r0, #0
	cmp r2, #0
	beq _080BD1E4
	ldrb r0, [r5, #0x10]
	strb r0, [r2, #0x14]
	adds r3, r2, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	adds r1, r2, #0
	ldr r0, [r5, #0x40]
	str r0, [r1, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r1, #0x44]
	movs r0, #0x18
	strb r0, [r1, #0xb]
_080BD1E4:
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	bne _080BD1F8
_080BD1EA:
	adds r0, r5, #0
	bl sub_08000E14
	b _080BD202
	.align 2, 0
_080BD1F4: .4byte sub_080BCFC8
_080BD1F8:
	subs r0, #1
	strb r0, [r5, #0xd]
_080BD1FC:
	adds r0, r5, #0
	bl sub_0803F17C
_080BD202:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BD20C
sub_080BD20C: @ 0x080BD20C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r2, _080BD23C @ =gEwramData
	ldrb r1, [r5, #0x14]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080BD240 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r6, r1, r0
	ldr r2, _080BD244 @ =gUnk_03002CB0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _080BD248
	cmp r0, #1
	beq _080BD2AC
	b _080BD2B8
	.align 2, 0
_080BD23C: .4byte gEwramData
_080BD240: .4byte 0x000004E4
_080BD244: .4byte gUnk_03002CB0
_080BD248:
	ldr r1, _080BD2C0 @ =gDisplayRegisters
	adds r0, r1, #0
	adds r0, #0x42
	movs r4, #0x3f
	strb r4, [r0]
	adds r1, #0x43
	movs r0, #0x2f
	strb r0, [r1]
	ldr r0, _080BD2C4 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _080BD2C8 @ =0x0820ED60
	adds r0, r5, #0
	movs r3, #6
	bl sub_0803B924
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x12
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x65
	strb r4, [r0]
	ldr r0, _080BD2CC @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, #0x20
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r0, #0x18
	adds r1, #4
	strh r0, [r1]
	movs r0, #1
	strb r0, [r5, #0xa]
_080BD2AC:
	ldrb r0, [r6, #0xa]
	cmp r0, #2
	bls _080BD2B8
	adds r0, r5, #0
	bl sub_08000E14
_080BD2B8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080BD2C0: .4byte gDisplayRegisters
_080BD2C4: .4byte 0x081C15F4
_080BD2C8: .4byte 0x0820ED60
_080BD2CC: .4byte sub_0803B9D0

	thumb_func_start sub_080BD2D0
sub_080BD2D0: @ 0x080BD2D0
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r2, _080BD2F8 @ =gEwramData
	ldrb r1, [r4, #0x14]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080BD2FC @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r5, r1, r0
	movs r1, #0x34
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bgt _080BD300
	adds r0, r4, #0
	bl sub_08000E14
	b _080BD350
	.align 2, 0
_080BD2F8: .4byte gEwramData
_080BD2FC: .4byte 0x000004E4
_080BD300:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080BD30C
	cmp r0, #1
	beq _080BD330
	b _080BD350
_080BD30C:
	ldr r3, _080BD32C @ =sub_080BF5A8
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0
	bl sub_0804277C
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _080BD350
	.align 2, 0
_080BD32C: .4byte sub_080BF5A8
_080BD330:
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	adds r0, r5, #0
	bl sub_08042A6C
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080428F0
	mov r0, sp
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080429D0
_080BD350:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080BD358
sub_080BD358: @ 0x080BD358
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r7, r0, #0
	ldr r2, _080BD38C @ =gEwramData
	ldrb r1, [r7, #0x14]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080BD390 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r1, r1, r0
	mov sb, r1
	ldrb r0, [r7, #0xa]
	cmp r0, #8
	bls _080BD382
	b _080BD90E
_080BD382:
	lsls r0, r0, #2
	ldr r1, _080BD394 @ =_080BD398
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080BD38C: .4byte gEwramData
_080BD390: .4byte 0x000004E4
_080BD394: .4byte _080BD398
_080BD398: @ jump table
	.4byte _080BD3BC @ case 0
	.4byte _080BD4EC @ case 1
	.4byte _080BD50C @ case 2
	.4byte _080BD5B4 @ case 3
	.4byte _080BD668 @ case 4
	.4byte _080BD772 @ case 5
	.4byte _080BD7A8 @ case 6
	.4byte _080BD87E @ case 7
	.4byte _080BD8F8 @ case 8
_080BD3BC:
	ldr r1, _080BD49C @ =0x08119498
	ldr r2, _080BD4A0 @ =0x0820BC1C
	ldr r0, _080BD4A4 @ =0x08249C48
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080BD3D4
	b _080BD906
_080BD3D4:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	bge _080BD3E4
	b _080BD906
_080BD3E4:
	mov r0, sb
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x36
	strb r0, [r1]
	adds r0, r7, #0
	bl sub_0806B04C
	movs r0, #0xfa
	lsls r0, r0, #3
	strh r0, [r7, #0x34]
	ldr r2, _080BD4A8 @ =sub_0806E1E8
	ldr r3, _080BD4AC @ =sub_080BF504
	adds r0, r7, #0
	movs r1, #8
	bl sub_0804277C
	adds r2, r7, #0
	adds r2, #0x58
	movs r0, #0x1f
	ands r4, r0
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
	adds r2, #1
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0x12
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r7, #0
	bl sub_0803F17C
	mov r2, sb
	movs r1, #0x30
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _080BD4BC
	ldr r0, _080BD4B0 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _080BD4B4 @ =0x0000A094
	adds r1, r1, r2
	ldrh r2, [r1, #6]
	movs r0, #0xe8
	subs r0, r0, r2
	adds r2, r7, #0
	adds r2, #0x42
	strh r0, [r2]
	ldrh r1, [r1, #0xa]
	movs r0, #0x64
	subs r0, r0, r1
	adds r1, r7, #0
	adds r1, #0x46
	strh r0, [r1]
	movs r0, #1
	strb r0, [r7, #0xa]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r7, #0x18]
	ldr r0, _080BD4B8 @ =sub_080BD20C
	bl sub_0806DFF8
	adds r2, r0, #0
	cmp r2, #0
	beq _080BD48E
	ldrb r0, [r7, #0x10]
	strb r0, [r2, #0x14]
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_080BD48E:
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	b _080BD4CA
	.align 2, 0
_080BD49C: .4byte 0x08119498
_080BD4A0: .4byte 0x0820BC1C
_080BD4A4: .4byte 0x08249C48
_080BD4A8: .4byte sub_0806E1E8
_080BD4AC: .4byte sub_080BF504
_080BD4B0: .4byte gEwramData
_080BD4B4: .4byte 0x0000A094
_080BD4B8: .4byte sub_080BD20C
_080BD4BC:
	mov r1, sb
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x40]
	ldr r0, [r1, #0x44]
	str r0, [r7, #0x44]
	movs r0, #4
	strb r0, [r7, #0xa]
_080BD4CA:
	ldr r0, _080BD4E8 @ =sub_080BD2D0
	bl sub_0806DFF8
	adds r2, r0, #0
	cmp r2, #0
	bne _080BD4D8
	b _080BD90E
_080BD4D8:
	ldrb r0, [r7, #0x10]
	strb r0, [r2, #0x14]
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	b _080BD90E
	.align 2, 0
_080BD4E8: .4byte sub_080BD2D0
_080BD4EC:
	mov r2, sb
	ldrh r1, [r2, #0x14]
	movs r2, #0x20
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080BD4FC
	b _080BD90E
_080BD4FC:
	movs r0, #2
	strb r0, [r7, #0xa]
	strh r2, [r7, #0x16]
	movs r0, #0x92
	lsls r0, r0, #1
	bl sub_080D7910
	b _080BD90E
_080BD50C:
	mov r1, sb
	ldr r0, [r1, #0x40]
	movs r2, #0xa0
	lsls r2, r2, #0xf
	adds r4, r0, r2
	ldr r6, [r7, #0x40]
	ldr r0, [r7, #0x44]
	mov r8, r0
	subs r0, r6, r4
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r1, _080BD550 @ =0xFFE00000
	add r1, r8
	asrs r1, r1, #0x10
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r5, r0, #0x10
	adds r0, r7, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	cmp r4, #0
	bge _080BD554
	rsbs r0, r4, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080BD556
	.align 2, 0
_080BD550: .4byte 0xFFE00000
_080BD554:
	asrs r0, r4, #0x10
_080BD556:
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r7, #0
	adds r0, #0x46
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0x20
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	bl ArcTan2
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsrs r5, r5, #5
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_08068CDC
	ldr r0, [r7, #0x40]
	subs r0, r0, r6
	str r0, [r7, #0x48]
	ldr r0, [r7, #0x44]
	mov r2, r8
	subs r0, r0, r2
	str r0, [r7, #0x4c]
	ldrh r0, [r7, #0x18]
	subs r0, #0x66
	strh r0, [r7, #0x18]
	ldrh r1, [r7, #0x16]
	movs r2, #0x16
	ldrsh r0, [r7, r2]
	cmp r0, #0
	beq _080BD5AA
	b _080BD86A
_080BD5AA:
	movs r0, #3
	strb r0, [r7, #0xa]
	movs r0, #0x60
	strh r0, [r7, #0x16]
	b _080BD90E
_080BD5B4:
	mov r1, sb
	ldr r0, [r1, #0x40]
	movs r2, #0x80
	lsls r2, r2, #0xe
	adds r4, r0, r2
	ldr r6, [r7, #0x40]
	ldr r0, [r7, #0x44]
	mov r8, r0
	subs r0, r6, r4
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r1, _080BD5F8 @ =0xFFD00000
	add r1, r8
	asrs r1, r1, #0x10
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r5, r0, #0x10
	adds r0, r7, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	cmp r4, #0
	bge _080BD5FC
	rsbs r0, r4, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080BD5FE
	.align 2, 0
_080BD5F8: .4byte 0xFFD00000
_080BD5FC:
	asrs r0, r4, #0x10
_080BD5FE:
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r7, #0
	adds r0, #0x46
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0x30
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	bl ArcTan2
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsrs r5, r5, #4
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_08068CDC
	ldr r0, [r7, #0x40]
	subs r0, r0, r6
	str r0, [r7, #0x48]
	ldr r0, [r7, #0x44]
	mov r2, r8
	subs r0, r0, r2
	str r0, [r7, #0x4c]
	ldr r1, _080BD664 @ =0xFFFFF9EA
	adds r0, r1, #0
	ldrh r2, [r7, #0x18]
	adds r0, r0, r2
	strh r0, [r7, #0x18]
	ldrh r1, [r7, #0x16]
	movs r2, #0x16
	ldrsh r0, [r7, r2]
	cmp r0, #0
	beq _080BD656
	b _080BD86A
_080BD656:
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #0xfb
	ands r1, r0
	strb r1, [r2]
	b _080BD878
	.align 2, 0
_080BD664: .4byte 0xFFFFF9EA
_080BD668:
	mov r0, sb
	ldrh r3, [r0, #0x14]
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	bne _080BD686
	movs r0, #0x34
	ldrsh r1, [r7, r0]
	ldr r0, _080BD6EC @ =0x000004AF
	cmp r1, r0
	bgt _080BD686
	movs r0, #0x40
	orrs r0, r3
	mov r1, sb
	strh r0, [r1, #0x14]
_080BD686:
	movs r0, #0x80
	lsls r0, r0, #0xe
	mov r8, r0
	ldr r0, [r2]
	ldr r1, _080BD6F0 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	ldr r1, [r7, #0x40]
	cmp r1, r0
	bge _080BD6A2
	mov r2, r8
	rsbs r2, r2, #0
	mov r8, r2
_080BD6A2:
	mov r2, sb
	ldr r0, [r2, #0x40]
	mov r2, r8
	adds r4, r0, r2
	mov r2, sb
	ldr r0, [r2, #0x44]
	ldr r2, _080BD6F4 @ =0xFFE00000
	adds r5, r0, r2
	mov r8, r1
	ldr r0, [r7, #0x44]
	mov sl, r0
	subs r0, r1, r4
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	mov r2, sl
	subs r1, r2, r5
	asrs r1, r1, #0x10
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r6, r0, #0x10
	adds r0, r7, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	cmp r4, #0
	bge _080BD6F8
	rsbs r0, r4, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080BD6FA
	.align 2, 0
_080BD6EC: .4byte 0x000004AF
_080BD6F0: .4byte 0x00013110
_080BD6F4: .4byte 0xFFE00000
_080BD6F8:
	asrs r0, r4, #0x10
_080BD6FA:
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	adds r0, r7, #0
	adds r0, #0x46
	movs r1, #0
	ldrsh r2, [r0, r1]
	cmp r5, #0
	bge _080BD714
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080BD716
_080BD714:
	asrs r0, r5, #0x10
_080BD716:
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r3, #0
	bl ArcTan2
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsrs r6, r6, #4
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_08068CDC
	ldr r1, [r7, #0x40]
	mov r2, r8
	subs r1, r1, r2
	str r1, [r7, #0x48]
	ldr r0, [r7, #0x44]
	mov r2, sl
	subs r0, r0, r2
	str r0, [r7, #0x4c]
	adds r0, r1, r0
	cmp r0, #0
	bge _080BD752
	adds r0, #0xff
_080BD752:
	asrs r0, r0, #8
	ldrh r1, [r7, #0x18]
	adds r0, r0, r1
	strh r0, [r7, #0x18]
	mov r2, sb
	ldrh r1, [r2, #0x14]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080BD768
	b _080BD90E
_080BD768:
	movs r0, #5
	strb r0, [r7, #0xa]
	movs r0, #0x40
	strh r0, [r7, #0x16]
	b _080BD90E
_080BD772:
	ldr r1, _080BD7A0 @ =0x00000789
	adds r0, r1, #0
	ldrh r2, [r7, #0x18]
	adds r0, r0, r2
	strh r0, [r7, #0x18]
	ldrb r1, [r7, #0xd]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _080BD78C
	ldr r0, _080BD7A4 @ =0x00000135
	bl sub_080D7910
_080BD78C:
	ldrh r1, [r7, #0x16]
	movs r2, #0x16
	ldrsh r0, [r7, r2]
	cmp r0, #0
	bne _080BD86A
	movs r0, #0x80
	strh r0, [r7, #0x16]
	movs r0, #6
	strb r0, [r7, #0xa]
	b _080BD90E
	.align 2, 0
_080BD7A0: .4byte 0x00000789
_080BD7A4: .4byte 0x00000135
_080BD7A8:
	ldr r0, [r2]
	ldr r1, _080BD7F0 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r4, [r0, #0x40]
	ldr r5, [r0, #0x44]
	ldr r2, [r7, #0x40]
	mov r8, r2
	ldr r0, [r7, #0x44]
	mov sl, r0
	subs r0, r2, r4
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	mov r2, sl
	subs r1, r2, r5
	asrs r1, r1, #0x10
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r6, r0, #0x10
	adds r0, r7, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	cmp r4, #0
	bge _080BD7F4
	rsbs r0, r4, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080BD7F6
	.align 2, 0
_080BD7F0: .4byte 0x00013110
_080BD7F4:
	asrs r0, r4, #0x10
_080BD7F6:
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	adds r0, r7, #0
	adds r0, #0x46
	movs r1, #0
	ldrsh r2, [r0, r1]
	cmp r5, #0
	bge _080BD810
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080BD812
_080BD810:
	asrs r0, r5, #0x10
_080BD812:
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r3, #0
	bl ArcTan2
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsrs r6, r6, #7
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_08068CDC
	ldr r0, [r7, #0x40]
	mov r2, r8
	subs r0, r0, r2
	str r0, [r7, #0x48]
	ldr r0, [r7, #0x44]
	mov r1, sl
	subs r0, r0, r1
	str r0, [r7, #0x4c]
	ldr r2, _080BD870 @ =0x00000789
	adds r0, r2, #0
	ldrh r1, [r7, #0x18]
	adds r0, r0, r1
	strh r0, [r7, #0x18]
	ldrb r1, [r7, #0xd]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _080BD860
	ldr r0, _080BD874 @ =0x00000135
	bl sub_080D7910
_080BD860:
	ldrh r1, [r7, #0x16]
	movs r2, #0x16
	ldrsh r0, [r7, r2]
	cmp r0, #0
	beq _080BD878
_080BD86A:
	subs r0, r1, #1
	strh r0, [r7, #0x16]
	b _080BD90E
	.align 2, 0
_080BD870: .4byte 0x00000789
_080BD874: .4byte 0x00000135
_080BD878:
	movs r0, #4
	strb r0, [r7, #0xa]
	b _080BD90E
_080BD87E:
	ldrb r1, [r7, #0xd]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080BD8E6
	ldr r2, _080BD8F4 @ =0xFFFFC000
	adds r0, r2, #0
	ldrh r2, [r7, #0x18]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080BD8A6
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r4, r0, #0x10
_080BD8A6:
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r4, r2
	bl sub_080009E4
	ldrb r1, [r7, #0xd]
	lsrs r1, r1, #1
	adds r2, r1, #0
	muls r2, r0, r2
	mov r8, r2
	adds r0, r4, #0
	bl sub_080009E4
	ldrb r1, [r7, #0xd]
	lsrs r1, r1, #1
	adds r3, r1, #0
	muls r3, r0, r3
	ldr r0, [r7, #0x40]
	add r0, r8
	ldr r1, [r7, #0x44]
	adds r1, r1, r3
	movs r3, #0x80
	lsls r3, r3, #0xb
	adds r2, r7, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	str r2, [sp]
	adds r2, r3, #0
	bl sub_0806D5C0
_080BD8E6:
	ldrb r0, [r7, #0xd]
	cmp r0, #0x2f
	bhi _080BD8F8
	adds r0, #1
	strb r0, [r7, #0xd]
	b _080BD90E
	.align 2, 0
_080BD8F4: .4byte 0xFFFFC000
_080BD8F8:
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080BD906:
	adds r0, r7, #0
	bl sub_08000E14
	b _080BDADE
_080BD90E:
	ldrb r0, [r7, #0xa]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _080BD956
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bne _080BD956
	movs r0, #0
	strb r0, [r7, #0xb]
	ldr r0, _080BD9C8 @ =sub_080BCECC
	bl sub_0806DFF8
	adds r2, r0, #0
	cmp r2, #0
	beq _080BD956
	ldrb r0, [r7, #0x10]
	strb r0, [r2, #0x14]
	adds r3, r2, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	adds r1, r2, #0
	ldrh r0, [r7, #0x18]
	strh r0, [r1, #0x18]
	ldr r0, [r7, #0x40]
	str r0, [r1, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r1, #0x44]
_080BD956:
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r7, #0
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
	ldrb r0, [r7, #0xa]
	cmp r0, #6
	bls _080BD980
	b _080BDADE
_080BD980:
	ldr r2, _080BD9CC @ =0xFFFFC000
	adds r5, r2, #0
	ldrh r0, [r7, #0x18]
	adds r5, r5, r0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r5, r1
	bl sub_080009E4
	ldrb r2, [r7, #0xd]
	movs r4, #3
	adds r1, r4, #0
	ands r1, r2
	lsls r1, r1, #4
	subs r1, #0x20
	adds r2, r1, #0
	muls r2, r0, r2
	mov r8, r2
	adds r0, r5, #0
	bl sub_080009E4
	ldrb r1, [r7, #0xd]
	ands r4, r1
	lsls r4, r4, #4
	subs r4, #0x20
	adds r3, r4, #0
	muls r3, r0, r3
	mov r0, r8
	cmp r0, #0
	bge _080BD9D0
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080BD9D4
	.align 2, 0
_080BD9C8: .4byte sub_080BCECC
_080BD9CC: .4byte 0xFFFFC000
_080BD9D0:
	mov r1, r8
	asrs r0, r1, #0x10
_080BD9D4:
	adds r2, r0, #0
	subs r2, #8
	movs r0, #0xff
	ands r2, r0
	cmp r3, #0
	bge _080BD9E8
	rsbs r0, r3, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080BD9EA
_080BD9E8:
	asrs r0, r3, #0x10
_080BD9EA:
	subs r0, #8
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #8
	adds r0, r2, r0
	ldr r1, _080BDA64 @ =0x10100000
	adds r1, r0, r1
	adds r0, r7, #0
	bl sub_080428F0
	ldr r2, _080BDA68 @ =0xFFFFC000
	adds r4, r2, #0
	ldrh r0, [r7, #0x18]
	adds r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r5, #0x80
	lsls r5, r5, #7
	adds r0, r4, r5
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	mov r8, r1
	adds r0, r4, #0
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r3, r1, #3
	movs r1, #0x18
	ldrsh r6, [r7, r1]
	adds r5, r6, r5
	adds r0, r5, #0
	str r3, [sp, #0x18]
	bl sub_080009E4
	ldrb r2, [r7, #0xd]
	movs r4, #3
	adds r1, r4, #0
	ands r1, r2
	lsls r0, r0, #3
	muls r0, r1, r0
	add r8, r0
	adds r0, r6, #0
	bl sub_080009E4
	ldrb r1, [r7, #0xd]
	ands r4, r1
	lsls r0, r0, #3
	muls r0, r4, r0
	ldr r3, [sp, #0x18]
	adds r3, r3, r0
	mov r2, r8
	cmp r2, #0
	bge _080BDA6C
	rsbs r0, r2, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080BDA70
	.align 2, 0
_080BDA64: .4byte 0x10100000
_080BDA68: .4byte 0xFFFFC000
_080BDA6C:
	mov r1, r8
	asrs r0, r1, #0x10
_080BDA70:
	adds r2, r0, #0
	subs r2, #8
	movs r0, #0xff
	ands r2, r0
	cmp r3, #0
	bge _080BDA84
	rsbs r0, r3, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080BDA86
_080BDA84:
	asrs r0, r3, #0x10
_080BDA86:
	subs r0, #8
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #8
	adds r0, r2, r0
	ldr r1, _080BDAC0 @ =0x10100000
	adds r1, r0, r1
	adds r0, r7, #0
	bl sub_08042884
	ldrb r0, [r7, #0xd]
	adds r0, #1
	strb r0, [r7, #0xd]
	adds r0, r7, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080BDAC4
	adds r0, r7, #0
	bl sub_0806AE54
	add r0, sp, #8
	adds r1, r7, #0
	bl sub_080421AC
	b _080BDADE
	.align 2, 0
_080BDAC0: .4byte 0x10100000
_080BDAC4:
	movs r0, #0x6e
	bl sub_080D7910
	mov r2, sb
	ldrh r1, [r2, #0x14]
	movs r0, #1
	movs r2, #0
	orrs r0, r1
	mov r1, sb
	strh r0, [r1, #0x14]
	movs r0, #7
	strb r0, [r7, #0xa]
	strb r2, [r7, #0xd]
_080BDADE:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BDAF0
sub_080BDAF0: @ 0x080BDAF0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	ldr r2, _080BDB20 @ =gEwramData
	ldrb r1, [r7, #0x14]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080BDB24 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r4, r1, r0
	ldrb r0, [r7, #0xa]
	cmp r0, #4
	bls _080BDB16
	b _080BDD30
_080BDB16:
	lsls r0, r0, #2
	ldr r1, _080BDB28 @ =_080BDB2C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080BDB20: .4byte gEwramData
_080BDB24: .4byte 0x000004E4
_080BDB28: .4byte _080BDB2C
_080BDB2C: @ jump table
	.4byte _080BDB40 @ case 0
	.4byte _080BDC4E @ case 1
	.4byte _080BDCA0 @ case 2
	.4byte _080BDD0C @ case 3
	.4byte _080BDD1A @ case 4
_080BDB40:
	ldr r1, _080BDC80 @ =0x08119498
	ldr r2, _080BDC84 @ =0x0820BC1C
	ldr r0, _080BDC88 @ =0x08249C48
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080BDB58
	b _080BDD28
_080BDB58:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r0, #0
	bge _080BDB68
	b _080BDD28
_080BDB68:
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	movs r1, #0xa
	bl __divsi3
	adds r1, r7, #0
	adds r1, #0x3c
	strb r0, [r1]
	movs r2, #1
	mov sb, r2
	movs r0, #1
	strh r0, [r7, #0x34]
	ldr r2, _080BDC8C @ =sub_0806E1E8
	ldr r3, _080BDC90 @ =sub_080BF540
	adds r0, r7, #0
	movs r1, #0xa
	bl sub_0804277C
	ldr r4, _080BDC94 @ =0x1010F8F8
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
	adds r5, r7, #0
	adds r5, #0x58
	movs r0, #0x1f
	ands r6, r0
	ldrb r1, [r5]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r6
	strb r0, [r5]
	subs r2, #0x19
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0x10
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	bl sub_08000A90
	movs r4, #0x7f
	ands r0, r4
	adds r0, #0x40
	movs r1, #0x42
	adds r1, r1, r7
	mov r8, r1
	strh r0, [r1]
	bl sub_08000A90
	adds r3, r0, #0
	ands r3, r4
	adds r3, #0x10
	adds r0, r7, #0
	adds r0, #0x46
	strh r3, [r0]
	ldr r0, _080BDC98 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _080BDC9C @ =0x00013110
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x42
	movs r4, #0
	ldrsh r0, [r0, r4]
	mov r4, r8
	ldrh r1, [r4]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r2, #0x46
	movs r4, #0
	ldrsh r1, [r2, r4]
	subs r1, r1, r3
	subs r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	strh r0, [r7, #0x18]
	bl sub_08000A90
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r5]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	mov r2, sb
	strb r2, [r7, #0xa]
_080BDC4E:
	adds r0, r7, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080BDC6C
	movs r0, #2
	strb r0, [r7, #0xa]
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
_080BDC6C:
	add r0, sp, #8
	adds r1, r7, #0
	bl sub_080421AC
	movs r4, #0x34
	ldrsh r0, [r7, r4]
	cmp r0, #0
	bne _080BDD30
	b _080BDD02
	.align 2, 0
_080BDC80: .4byte 0x08119498
_080BDC84: .4byte 0x0820BC1C
_080BDC88: .4byte 0x08249C48
_080BDC8C: .4byte sub_0806E1E8
_080BDC90: .4byte sub_080BF540
_080BDC94: .4byte 0x1010F8F8
_080BDC98: .4byte gEwramData
_080BDC9C: .4byte 0x00013110
_080BDCA0:
	ldr r1, [r7, #0x20]
	ldr r0, _080BDD08 @ =0x00017FFF
	cmp r1, r0
	bgt _080BDCB0
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r1, r2
	str r0, [r7, #0x20]
_080BDCB0:
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r0, r2
	bl sub_080009E4
	ldr r1, [r7, #0x20]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	str r0, [r7, #0x48]
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	bl sub_080009E4
	ldr r1, [r7, #0x20]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	str r0, [r7, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r7, #0
	bl sub_0806D3D8
	add r0, sp, #8
	adds r1, r7, #0
	bl sub_080421AC
	movs r2, #0x34
	ldrsh r0, [r7, r2]
	cmp r0, #0
	bne _080BDCF8
	movs r0, #3
	strb r0, [r7, #0xa]
_080BDCF8:
	ldrh r1, [r4, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080BDD30
_080BDD02:
	movs r0, #3
	strb r0, [r7, #0xa]
	b _080BDD30
	.align 2, 0
_080BDD08: .4byte 0x00017FFF
_080BDD0C:
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x44]
	adds r2, r7, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	bl sub_0806D578
_080BDD1A:
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080BDD28:
	adds r0, r7, #0
	bl sub_08000E14
	b _080BDD84
_080BDD30:
	adds r0, r7, #0
	movs r1, #3
	bl sub_0806D128
	cmp r0, #0
	beq _080BDD40
	movs r0, #4
	strb r0, [r7, #0xa]
_080BDD40:
	movs r4, #0xf4
	lsls r4, r4, #3
	adds r0, r4, #0
	ldrh r1, [r7, #0x1a]
	adds r0, r0, r1
	strh r0, [r7, #0x1a]
	ldrh r1, [r7, #0x1a]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r4, [r0]
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _080BDD62
	lsls r0, r1, #0x10
	rsbs r0, r0, #0
	lsrs r1, r0, #0x10
_080BDD62:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	lsls r3, r4, #0x19
	lsrs r3, r3, #0x1f
	movs r1, #0
	str r1, [sp]
	lsls r1, r4, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
	adds r0, r7, #0
	bl sub_0803F17C
_080BDD84:
	add sp, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BDD94
sub_080BDD94: @ 0x080BDD94
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldr r6, _080BDDBC @ =gEwramData
	ldrb r0, [r5, #0x14]
	lsls r1, r0, #5
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080BDDC0 @ =0x000004E4
	adds r1, r1, r0
	ldr r0, [r6]
	adds r4, r0, r1
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080BDE8A
	cmp r0, #1
	bgt _080BDDC4
	cmp r0, #0
	beq _080BDDD2
	b _080BDFAA
	.align 2, 0
_080BDDBC: .4byte gEwramData
_080BDDC0: .4byte 0x000004E4
_080BDDC4:
	cmp r0, #2
	bne _080BDDCA
	b _080BDEE6
_080BDDCA:
	cmp r0, #3
	bne _080BDDD0
	b _080BDF94
_080BDDD0:
	b _080BDFAA
_080BDDD2:
	ldr r1, _080BDEBC @ =0x08119498
	ldr r2, _080BDEC0 @ =0x0820BC1C
	ldr r0, _080BDEC4 @ =0x08249C48
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #2
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080BDDEA
	b _080BDFA2
_080BDDEA:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _080BDDFA
	b _080BDFA2
_080BDDFA:
	ldr r0, [r6]
	ldr r1, _080BDEC8 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	str r0, [r5, #0x40]
	adds r1, r5, #0
	adds r1, #0x46
	movs r0, #0x90
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsrs r1, r0, #2
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x3c
	strb r0, [r1]
	movs r4, #1
	movs r0, #1
	strh r0, [r5, #0x34]
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
	adds r2, #1
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #0xd
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r5, #0x1c]
	ldr r2, _080BDECC @ =sub_080BF548
	adds r0, r5, #0
	movs r1, #8
	movs r3, #0
	bl sub_0804277C
	ldr r1, _080BDED0 @ =0x800880FC
	adds r0, r5, #0
	bl sub_08042884
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080BDED4 @ =0x0000011F
	bl sub_080D7910
	strb r4, [r5, #0xa]
_080BDE8A:
	ldr r1, [r5, #0x1c]
	ldr r2, [r5, #0x20]
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
	movs r0, #0
	bl sub_0803E058
	ldr r1, [r5, #0x20]
	ldr r0, _080BDED8 @ =0x0000FFFF
	cmp r1, r0
	bgt _080BDEDC
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r1, r2
	str r0, [r5, #0x20]
	b _080BDFAA
	.align 2, 0
_080BDEBC: .4byte 0x08119498
_080BDEC0: .4byte 0x0820BC1C
_080BDEC4: .4byte 0x08249C48
_080BDEC8: .4byte 0x00013110
_080BDECC: .4byte sub_080BF548
_080BDED0: .4byte 0x800880FC
_080BDED4: .4byte 0x0000011F
_080BDED8: .4byte 0x0000FFFF
_080BDEDC:
	movs r0, #0x20
	strb r0, [r5, #0xd]
	movs r0, #2
	strb r0, [r5, #0xa]
	b _080BDFAA
_080BDEE6:
	ldrb r0, [r5, #0xd]
	lsls r0, r0, #0xa
	bl sub_080009E4
	adds r1, r0, #0
	str r1, [r5, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #9
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
	movs r0, #0
	bl sub_0803E058
	ldrb r1, [r5, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080BDF5E
	movs r0, #0x80
	lsls r0, r0, #0xd
	bl sub_0802D5EC
	ldr r4, [r5, #0x40]
	adds r4, r4, r0
	bl sub_08000A90
	ldr r1, _080BDF80 @ =0x00000FFF
	ands r1, r0
	ldr r3, _080BDF84 @ =0xFFFFF800
	subs r3, r3, r1
	ldr r1, [r5, #0x44]
	ldr r0, _080BDF88 @ =0xFFFC0000
	adds r1, r1, r0
	movs r0, #4
	str r0, [sp]
	movs r0, #6
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08045B44
	adds r4, r0, #0
	cmp r4, #0
	beq _080BDF5E
	bl sub_08000A90
	ldr r1, _080BDF8C @ =0x000001FF
	ands r1, r0
	lsls r1, r1, #8
	ldr r0, _080BDF90 @ =0xFFFFE000
	subs r0, r0, r1
	str r0, [r4, #0x4c]
_080BDF5E:
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _080BDF94
	subs r0, #0xf
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _080BDF76
	add r0, sp, #8
	adds r1, r5, #0
	bl sub_080421AC
_080BDF76:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	b _080BDFAA
	.align 2, 0
_080BDF80: .4byte 0x00000FFF
_080BDF84: .4byte 0xFFFFF800
_080BDF88: .4byte 0xFFFC0000
_080BDF8C: .4byte 0x000001FF
_080BDF90: .4byte 0xFFFFE000
_080BDF94:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080BDFA2:
	adds r0, r5, #0
	bl sub_08000E14
	b _080BDFBA
_080BDFAA:
	adds r0, r5, #0
	movs r1, #3
	bl sub_0806D128
	cmp r0, #0
	beq _080BDFBA
	movs r0, #3
	strb r0, [r5, #0xa]
_080BDFBA:
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BDFC4
sub_080BDFC4: @ 0x080BDFC4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r5, _080BDFE4 @ =gEwramData
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	beq _080BE086
	cmp r0, #1
	bgt _080BDFE8
	cmp r0, #0
	beq _080BDFF4
	b _080BE11A
	.align 2, 0
_080BDFE4: .4byte gEwramData
_080BDFE8:
	cmp r0, #2
	beq _080BE0B4
	cmp r0, #3
	bne _080BDFF2
	b _080BE0F0
_080BDFF2:
	b _080BE11A
_080BDFF4:
	ldr r4, _080BE098 @ =0x0820BC1C
	adds r0, r4, #0
	movs r1, #2
	bl sub_08068340
	ldr r1, _080BE09C @ =0x08119498
	ldr r0, _080BE0A0 @ =0x08249C48
	str r0, [sp]
	adds r0, r6, #0
	adds r2, r4, #0
	movs r3, #3
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080BE016
	b _080BE112
_080BE016:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	blt _080BE112
	ldr r1, [r5]
	ldr r0, _080BE0A4 @ =0x0000A094
	adds r1, r1, r0
	ldrh r2, [r1, #6]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r4, #0
	subs r0, r0, r2
	adds r2, r6, #0
	adds r2, #0x42
	strh r0, [r2]
	ldrh r1, [r1, #0xa]
	movs r0, #0x80
	subs r0, r0, r1
	adds r2, #4
	strh r0, [r2]
	adds r2, #0x12
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
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0x14
	strb r0, [r1]
	adds r0, r6, #0
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_080D7910
	movs r0, #1
	strb r0, [r6, #0xa]
_080BE086:
	ldr r1, [r6, #0x1c]
	ldr r0, _080BE0A8 @ =0x0000FFFF
	cmp r1, r0
	bgt _080BE0AC
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r1, r2
	str r0, [r6, #0x1c]
	b _080BE11A
	.align 2, 0
_080BE098: .4byte 0x0820BC1C
_080BE09C: .4byte 0x08119498
_080BE0A0: .4byte 0x08249C48
_080BE0A4: .4byte 0x0000A094
_080BE0A8: .4byte 0x0000FFFF
_080BE0AC:
	movs r0, #0x60
	strb r0, [r6, #0xd]
	movs r0, #2
	strb r0, [r6, #0xa]
_080BE0B4:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _080BE0C0
	subs r0, #1
	strb r0, [r6, #0xd]
	b _080BE11A
_080BE0C0:
	adds r4, r6, #0
	adds r4, #0x42
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r1, r6, #0
	adds r1, #0x46
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0x6b
	movs r3, #1
	bl sub_080D7308
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r1, #1
	str r1, [sp]
	movs r1, #0x20
	movs r2, #1
	movs r3, #0x60
	bl sub_080D6EF8
	movs r0, #3
	strb r0, [r6, #0xa]
	b _080BE11A
_080BE0F0:
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	ble _080BE104
	ldr r2, _080BE100 @ =0xFFFFFC00
	adds r0, r0, r2
	str r0, [r6, #0x1c]
	b _080BE11A
	.align 2, 0
_080BE100: .4byte 0xFFFFFC00
_080BE104:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080BE112:
	adds r0, r6, #0
	bl sub_08000E14
	b _080BE208
_080BE11A:
	ldrh r0, [r6, #0x16]
	adds r0, #1
	strh r0, [r6, #0x16]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BE1DC
	bl sub_08000A90
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	adds r1, r0, #0
	ldr r0, [r6, #0x1c]
	lsls r0, r0, #5
	cmp r0, #0
	bge _080BE14E
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080BE150
_080BE14E:
	asrs r0, r0, #0x10
_080BE150:
	adds r2, r0, #0
	muls r2, r1, r2
	mov sb, r2
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	bl sub_080009E4
	adds r1, r0, #0
	ldr r0, [r6, #0x1c]
	lsls r0, r0, #5
	cmp r0, #0
	bge _080BE176
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	adds r4, r0, #0
	muls r4, r1, r4
	mov r8, r4
	b _080BE17E
_080BE176:
	asrs r0, r0, #0x10
	adds r2, r0, #0
	muls r2, r1, r2
	mov r8, r2
_080BE17E:
	ldr r0, [r6, #0x40]
	add r0, sb
	ldr r1, [r6, #0x44]
	add r1, r8
	movs r2, #0x10
	movs r3, #6
	bl sub_08045CEC
	adds r7, r0, #0
	cmp r7, #0
	beq _080BE1DC
	bl sub_08000A90
	movs r5, #1
	ands r0, r5
	adds r4, r7, #0
	adds r4, #0x58
	lsls r0, r0, #6
	ldrb r2, [r4]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	bl sub_08000A90
	ands r0, r5
	lsls r0, r0, #7
	ldrb r2, [r4]
	movs r1, #0x7f
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	mov r4, sb
	rsbs r0, r4, #0
	cmp r0, #0
	bge _080BE1CA
	adds r0, #0xff
_080BE1CA:
	asrs r0, r0, #8
	str r0, [r7, #0x50]
	mov r1, r8
	rsbs r0, r1, #0
	cmp r0, #0
	bge _080BE1D8
	adds r0, #0xff
_080BE1D8:
	asrs r0, r0, #8
	str r0, [r7, #0x54]
_080BE1DC:
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r4, [r6, #0x18]
	adds r0, r0, r4
	movs r4, #0
	strh r0, [r6, #0x18]
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	ldr r2, [r6, #0x1c]
	adds r1, r6, #0
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
_080BE208:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BE218
sub_080BE218: @ 0x080BE218
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080BE2FE
	cmp r0, #1
	bgt _080BE22E
	cmp r0, #0
	beq _080BE23A
	b _080BE386
_080BE22E:
	cmp r0, #2
	beq _080BE32C
	cmp r0, #3
	bne _080BE238
	b _080BE370
_080BE238:
	b _080BE386
_080BE23A:
	ldr r1, _080BE30C @ =0x08119498
	ldr r2, _080BE310 @ =0x0820BC1C
	ldr r0, _080BE314 @ =0x08249C48
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080BE252
	b _080BE37E
_080BE252:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _080BE262
	b _080BE37E
_080BE262:
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
	adds r2, #1
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x13
	strb r0, [r1]
	ldrb r1, [r5, #0xb]
	adds r1, #0x14
	adds r0, r5, #0
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	adds r1, r5, #0
	adds r1, #0x42
	ldr r2, _080BE318 @ =0xFFFFFF00
	adds r0, r2, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x80
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	strh r0, [r5, #0x1a]
	ldr r0, _080BE31C @ =gEwramData
	ldr r2, [r0]
	ldr r3, _080BE320 @ =0x0000A094
	adds r2, r2, r3
	ldr r0, [r5, #0x40]
	ldr r1, [r2, #4]
	subs r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, [r2, #8]
	subs r0, r0, r1
	str r0, [r5, #0x44]
	movs r1, #0x80
	lsls r1, r1, #0x11
	movs r2, #0x80
	lsls r2, r2, #0x10
	adds r0, r5, #0
	bl sub_0806D298
	str r0, [r5, #0x20]
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [r5, #0x1c]
	ldr r1, _080BE324 @ =0xFFFFFEAB
	str r1, [r5, #0x24]
	movs r1, #0xc0
	bl __divsi3
	rsbs r0, r0, #0
	str r0, [r5, #0x2c]
	movs r0, #1
	strb r0, [r5, #0xa]
_080BE2FE:
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _080BE328
	subs r0, #1
	strb r0, [r5, #0xd]
	b _080BE386
	.align 2, 0
_080BE30C: .4byte 0x08119498
_080BE310: .4byte 0x0820BC1C
_080BE314: .4byte 0x08249C48
_080BE318: .4byte 0xFFFFFF00
_080BE31C: .4byte gEwramData
_080BE320: .4byte 0x0000A094
_080BE324: .4byte 0xFFFFFEAB
_080BE328:
	movs r0, #2
	strb r0, [r5, #0xa]
_080BE32C:
	ldrh r2, [r5, #0x28]
	movs r0, #0x28
	ldrsh r1, [r5, r0]
	ldr r0, _080BE36C @ =0x000005FF
	cmp r1, r0
	bgt _080BE33E
	adds r0, r2, #0
	adds r0, #0x10
	strh r0, [r5, #0x28]
_080BE33E:
	ldrh r0, [r5, #0x28]
	ldrh r2, [r5, #0x18]
	adds r1, r0, r2
	strh r1, [r5, #0x18]
	ldrh r3, [r5, #0x1a]
	adds r0, r0, r3
	strh r0, [r5, #0x1a]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x24]
	adds r0, r0, r1
	str r0, [r5, #0x1c]
	cmp r0, #0
	bge _080BE35C
	movs r0, #0
	str r0, [r5, #0x1c]
_080BE35C:
	ldr r1, [r5, #0x20]
	cmp r1, #0
	ble _080BE370
	ldr r0, [r5, #0x2c]
	adds r0, r1, r0
	str r0, [r5, #0x20]
	b _080BE386
	.align 2, 0
_080BE36C: .4byte 0x000005FF
_080BE370:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080BE37E:
	adds r0, r5, #0
	bl sub_08000E14
	b _080BE400
_080BE386:
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r0, r2
	bl sub_080009E4
	ldr r1, [r5, #0x20]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	str r0, [r5, #0x48]
	movs r3, #0x1a
	ldrsh r0, [r5, r3]
	bl sub_080009E4
	ldr r1, [r5, #0x20]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	str r0, [r5, #0x4c]
	adds r1, r5, #0
	adds r1, #0x4a
	ldr r0, _080BE408 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _080BE40C @ =0x0000A094
	adds r2, r2, r0
	ldr r3, _080BE410 @ =0xFFFFFF00
	adds r0, r3, #0
	ldrh r3, [r2, #6]
	adds r0, r0, r3
	ldrh r1, [r1]
	subs r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x42
	movs r4, #0
	strh r1, [r0]
	adds r1, r5, #0
	adds r1, #0x4e
	ldrh r0, [r2, #0xa]
	subs r0, #0x80
	ldrh r1, [r1]
	subs r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x46
	strh r1, [r0]
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	ldr r2, [r5, #0x1c]
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
_080BE400:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BE408: .4byte gEwramData
_080BE40C: .4byte 0x0000A094
_080BE410: .4byte 0xFFFFFF00

	thumb_func_start sub_080BE414
sub_080BE414: @ 0x080BE414
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	beq _080BE44E
	cmp r0, #1
	bgt _080BE42E
	cmp r0, #0
	beq _080BE438
	b _080BE5B8
_080BE42E:
	cmp r0, #2
	beq _080BE4A4
	cmp r0, #3
	beq _080BE508
	b _080BE5B8
_080BE438:
	ldr r0, _080BE494 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080BE498 @ =0x0000042C
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BE44C
	b _080BE5B8
_080BE44C:
	strb r1, [r5, #0xb]
_080BE44E:
	ldr r4, _080BE494 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _080BE498 @ =0x0000042C
	adds r1, r1, r2
	ldr r0, [r1]
	movs r2, #1
	orrs r0, r2
	str r0, [r1]
	movs r0, #0
	bl sub_0800C5A8
	ldr r1, [r4]
	ldr r3, _080BE49C @ =0x00013110
	adds r0, r1, r3
	ldr r0, [r0]
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r3, _080BE4A0 @ =0x0000A094
	adds r1, r1, r3
	movs r2, #6
	ldrsh r1, [r1, r2]
	adds r0, r0, r1
	cmp r0, #0xc0
	ble _080BE482
	b _080BE5B8
_080BE482:
	ldrh r1, [r5, #0x14]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r5, #0x14]
	movs r0, #0x60
	strh r0, [r5, #0x16]
	movs r0, #2
	strb r0, [r5, #0xb]
	b _080BE5B8
	.align 2, 0
_080BE494: .4byte gEwramData
_080BE498: .4byte 0x0000042C
_080BE49C: .4byte 0x00013110
_080BE4A0: .4byte 0x0000A094
_080BE4A4:
	ldrh r1, [r5, #0x16]
	movs r3, #0x16
	ldrsh r0, [r5, r3]
	cmp r0, #0
	beq _080BE4B4
	subs r0, r1, #1
	strh r0, [r5, #0x16]
	b _080BE5B8
_080BE4B4:
	movs r0, #0x30
	strh r0, [r5, #0x16]
	movs r0, #3
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #0x31
	bl sub_080458E4
	adds r0, r5, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0x30
	bl sub_080458E4
	ldr r0, _080BE4FC @ =0x00000121
	bl sub_080D7910
	movs r0, #0x10
	bl sub_08013CF0
	ldr r0, _080BE500 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _080BE504 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #2
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1]
	movs r0, #1
	bl sub_0800C5A8
	b _080BE5B8
	.align 2, 0
_080BE4FC: .4byte 0x00000121
_080BE500: .4byte gEwramData
_080BE504: .4byte 0x0000042C
_080BE508:
	ldr r0, _080BE544 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080BE548 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x44]
	ldr r2, _080BE54C @ =0xFFD80000
	adds r4, r0, r2
	ldr r7, [r5, #0x40]
	ldr r3, [r5, #0x44]
	mov r8, r3
	subs r0, r3, r4
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	bl Sqrt
	lsls r6, r0, #0x10
	adds r0, r5, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	cmp r7, #0
	bge _080BE550
	rsbs r0, r7, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080BE552
	.align 2, 0
_080BE544: .4byte gEwramData
_080BE548: .4byte 0x00013110
_080BE54C: .4byte 0xFFD80000
_080BE550:
	asrs r0, r7, #0x10
_080BE552:
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, #0
	adds r0, #0x46
	movs r3, #0
	ldrsh r1, [r0, r3]
	cmp r4, #0
	bge _080BE56C
	rsbs r0, r4, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080BE56E
_080BE56C:
	asrs r0, r4, #0x10
_080BE56E:
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, #0
	bl ArcTan2
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsrs r6, r6, #4
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_08068CDC
	ldr r0, [r5, #0x40]
	subs r0, r0, r7
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x44]
	mov r1, r8
	subs r0, r0, r1
	str r0, [r5, #0x4c]
	ldrh r0, [r5, #0x16]
	movs r2, #0x16
	ldrsh r1, [r5, r2]
	cmp r1, #0
	beq _080BE5B0
	subs r0, #1
	strh r0, [r5, #0x16]
	b _080BE5B8
_080BE5B0:
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
_080BE5B8:
	ldrb r0, [r5, #0xb]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080BE5EE
	movs r2, #0
	ldr r0, _080BE5FC @ =gEwramData
	ldr r1, [r0]
	ldr r3, _080BE600 @ =0x00013110
	adds r0, r1, r3
	ldr r0, [r0]
	adds r0, #0x42
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r3, _080BE604 @ =0x0000A094
	adds r1, r1, r3
	movs r3, #6
	ldrsh r1, [r1, r3]
	adds r0, r0, r1
	cmp r0, #0x7f
	ble _080BE5E6
	movs r2, #0x20
_080BE5E6:
	movs r0, #2
	adds r1, r2, #0
	bl sub_080009A0
_080BE5EE:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BE5FC: .4byte gEwramData
_080BE600: .4byte 0x00013110
_080BE604: .4byte 0x0000A094

	thumb_func_start sub_080BE608
sub_080BE608: @ 0x080BE608
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	ldrb r0, [r7, #0xb]
	cmp r0, #7
	bls _080BE61A
	b _080BE918
_080BE61A:
	lsls r0, r0, #2
	ldr r1, _080BE624 @ =_080BE628
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080BE624: .4byte _080BE628
_080BE628: @ jump table
	.4byte _080BE648 @ case 0
	.4byte _080BE64C @ case 1
	.4byte _080BE75C @ case 2
	.4byte _080BE7A0 @ case 3
	.4byte _080BE82E @ case 4
	.4byte _080BE852 @ case 5
	.4byte _080BE89E @ case 6
	.4byte _080BE8AE @ case 7
_080BE648:
	movs r0, #1
	strb r0, [r7, #0xb]
_080BE64C:
	ldr r4, _080BE698 @ =gEwramData
	ldr r0, [r4]
	ldr r1, _080BE69C @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x44]
	ldr r2, _080BE6A0 @ =0xFFD00000
	adds r2, r2, r0
	mov r8, r2
	ldr r0, _080BE6A4 @ =0x003FFFFF
	cmp r8, r0
	bgt _080BE66A
	movs r3, #0x80
	lsls r3, r3, #0xf
	mov r8, r3
_080BE66A:
	ldrb r0, [r7, #0xd]
	lsls r0, r0, #7
	bl sub_080009E4
	ldr r1, [r7, #0x44]
	adds r1, r1, r0
	str r1, [r7, #0x44]
	ldr r0, [r4]
	ldr r1, _080BE69C @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, [r0, #0x40]
	movs r4, #0x80
	lsls r4, r4, #3
	ldr r1, [r7, #0x40]
	ldr r3, _080BE6A8 @ =0xFFC00000
	adds r0, r1, r3
	cmp r2, r0
	bge _080BE6B0
	ldr r0, _080BE6AC @ =0xFFFFFC00
	str r0, [r7, #0x50]
	b _080BE6CA
	.align 2, 0
_080BE698: .4byte gEwramData
_080BE69C: .4byte 0x00013110
_080BE6A0: .4byte 0xFFD00000
_080BE6A4: .4byte 0x003FFFFF
_080BE6A8: .4byte 0xFFC00000
_080BE6AC: .4byte 0xFFFFFC00
_080BE6B0:
	movs r3, #0x80
	lsls r3, r3, #0xf
	adds r0, r1, r3
	cmp r2, r0
	ble _080BE6BE
	str r4, [r7, #0x50]
	b _080BE6CA
_080BE6BE:
	movs r0, #0
	str r0, [r7, #0x50]
	adds r0, r7, #0
	movs r1, #0x28
	bl sub_0806D490
_080BE6CA:
	ldr r1, [r7, #0x44]
	ldr r2, _080BE6DC @ =0xFFF00000
	adds r0, r1, r2
	cmp r8, r0
	bge _080BE6E4
	ldr r0, _080BE6E0 @ =0xFFFFFC00
	str r0, [r7, #0x54]
	b _080BE6FE
	.align 2, 0
_080BE6DC: .4byte 0xFFF00000
_080BE6E0: .4byte 0xFFFFFC00
_080BE6E4:
	movs r3, #0x80
	lsls r3, r3, #0xd
	adds r0, r1, r3
	cmp r8, r0
	ble _080BE6F2
	str r4, [r7, #0x54]
	b _080BE6FE
_080BE6F2:
	movs r0, #0
	str r0, [r7, #0x54]
	adds r0, r7, #0
	movs r1, #0x28
	bl sub_0806D4A8
_080BE6FE:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r7, #0
	bl sub_0806D3D8
	ldrh r0, [r7, #0x16]
	adds r0, #1
	strh r0, [r7, #0x16]
	movs r1, #0xff
	ands r0, r1
	cmp r0, #0
	beq _080BE718
	b _080BE918
_080BE718:
	ldrh r1, [r7, #0x14]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080BE738
	bl sub_08000A90
	movs r1, #7
	ands r1, r0
	cmp r1, #0
	beq _080BE738
	movs r0, #2
	strb r0, [r7, #0xb]
	adds r0, r7, #0
	movs r1, #3
	b _080BE894
_080BE738:
	movs r1, #0
	movs r0, #7
	strb r0, [r7, #0xb]
	strb r1, [r7, #0xc]
	ldr r0, _080BE758 @ =0x081194C0
	ldrb r1, [r0]
	adds r0, r7, #0
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	ldrh r1, [r7, #0x14]
	movs r0, #4
	orrs r0, r1
	b _080BE916
	.align 2, 0
_080BE758: .4byte 0x081194C0
_080BE75C:
	movs r0, #0
	str r0, [r7, #0x50]
	str r0, [r7, #0x54]
	adds r0, r7, #0
	movs r1, #0x28
	bl sub_0806D490
	adds r0, r7, #0
	movs r1, #0x28
	bl sub_0806D4A8
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r7, #0
	bl sub_0806D3D8
	adds r0, r7, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080BE78C
	b _080BE918
_080BE78C:
	movs r0, #0x40
	strh r0, [r7, #0x16]
	adds r0, #0xd1
	bl sub_080D7910
	movs r0, #3
	strb r0, [r7, #0xb]
	adds r0, r7, #0
	movs r1, #4
	b _080BE8F6
_080BE7A0:
	bl sub_08000A90
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	bl sub_08000A90
	adds r4, r0, #0
	movs r0, #0xf
	ands r4, r0
	adds r4, #0x20
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r5, r1
	bl sub_080009E4
	adds r6, r4, #0
	muls r6, r0, r6
	adds r0, r5, #0
	bl sub_080009E4
	adds r2, r4, #0
	muls r2, r0, r2
	mov r8, r2
	adds r0, r7, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r5, [r0, r3]
	subs r5, #0xc
	lsls r5, r5, #0x10
	adds r5, r5, r6
	adds r0, #4
	movs r1, #0
	ldrsh r4, [r0, r1]
	subs r4, #0x30
	lsls r4, r4, #0x10
	add r4, r8
	rsbs r6, r6, #0
	adds r0, r6, #0
	movs r1, #0xc0
	bl __divsi3
	adds r6, r0, #0
	mov r2, r8
	rsbs r0, r2, #0
	movs r1, #0xc0
	bl __divsi3
	adds r3, r0, #0
	movs r0, #4
	mov r8, r0
	str r0, [sp]
	movs r0, #6
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_08045B44
	ldrh r1, [r7, #0x16]
	movs r2, #0x16
	ldrsh r0, [r7, r2]
	cmp r0, #0
	bne _080BE880
	mov r3, r8
	strb r3, [r7, #0xb]
	adds r0, r7, #0
	movs r1, #5
	b _080BE894
_080BE82E:
	adds r0, r7, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080BE918
	adds r0, r7, #0
	movs r1, #0x12
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0x40
	strh r0, [r7, #0x16]
	movs r0, #5
	strb r0, [r7, #0xb]
	b _080BE918
_080BE852:
	ldrh r1, [r7, #0x16]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080BE876
	ldr r0, _080BE888 @ =sub_080BDD94
	bl sub_0806DFF8
	adds r2, r0, #0
	cmp r2, #0
	beq _080BE876
	ldrb r0, [r7, #0x10]
	strb r0, [r2, #0x14]
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_080BE876:
	ldrh r1, [r7, #0x16]
	movs r2, #0x16
	ldrsh r0, [r7, r2]
	cmp r0, #0
	beq _080BE88C
_080BE880:
	subs r0, r1, #1
	strh r0, [r7, #0x16]
	b _080BE918
	.align 2, 0
_080BE888: .4byte sub_080BDD94
_080BE88C:
	movs r0, #6
	strb r0, [r7, #0xb]
	adds r0, r7, #0
	movs r1, #0x13
_080BE894:
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	b _080BE918
_080BE89E:
	adds r0, r7, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080BE918
	b _080BE8EE
_080BE8AE:
	movs r0, #0
	str r0, [r7, #0x50]
	str r0, [r7, #0x54]
	adds r0, r7, #0
	movs r1, #0x28
	bl sub_0806D490
	adds r0, r7, #0
	movs r1, #0x28
	bl sub_0806D4A8
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r7, #0
	bl sub_0806D3D8
	adds r0, r7, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080BE918
	ldrb r0, [r7, #0xc]
	adds r0, #1
	strb r0, [r7, #0xc]
	ldr r1, _080BE900 @ =0x081194C0
	ldrb r0, [r7, #0xc]
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _080BE904
_080BE8EE:
	movs r0, #1
	strb r0, [r7, #0xb]
	adds r0, r7, #0
	movs r1, #1
_080BE8F6:
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	b _080BE918
	.align 2, 0
_080BE900: .4byte 0x081194C0
_080BE904:
	ldrb r1, [r1]
	adds r0, r7, #0
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	ldrh r1, [r7, #0x14]
	ldr r0, _080BE934 @ =0x0000FFFB
	ands r0, r1
_080BE916:
	strh r0, [r7, #0x14]
_080BE918:
	ldrb r0, [r7, #0xd]
	adds r2, r0, #1
	strb r2, [r7, #0xd]
	ldr r0, _080BE938 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0xa1
	ldrb r1, [r0]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	bne _080BE93C
	movs r0, #0x7f
	b _080BE93E
	.align 2, 0
_080BE934: .4byte 0x0000FFFB
_080BE938: .4byte gEwramData
_080BE93C:
	movs r0, #0x3f
_080BE93E:
	ands r2, r0
	cmp r2, #0
	bne _080BE95E
	ldr r0, _080BE980 @ =sub_080BDAF0
	bl sub_0806DFF8
	adds r2, r0, #0
	cmp r2, #0
	beq _080BE95E
	ldrb r0, [r7, #0x10]
	strb r0, [r2, #0x14]
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_080BE95E:
	ldrh r1, [r7, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080BE972
	movs r1, #0
	movs r0, #2
	strb r0, [r7, #0xa]
	strb r1, [r7, #0xc]
	strb r1, [r7, #0xb]
_080BE972:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BE980: .4byte sub_080BDAF0

	thumb_func_start sub_080BE984
sub_080BE984: @ 0x080BE984
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _080BE9AC
	cmp r0, #1
	bgt _080BE99E
	cmp r0, #0
	beq _080BE9A4
	b _080BEB42
_080BE99E:
	cmp r0, #2
	beq _080BEA80
	b _080BEB42
_080BE9A4:
	movs r0, #0x40
	strb r0, [r4, #0xd]
	movs r0, #1
	strb r0, [r4, #0xb]
_080BE9AC:
	ldr r0, _080BE9F8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080BE9FC @ =0x0000A094
	adds r0, r0, r1
	movs r2, #6
	ldrsh r1, [r0, r2]
	movs r0, #0xa0
	subs r0, r0, r1
	lsls r5, r0, #0x10
	ldr r7, [r4, #0x40]
	ldr r0, [r4, #0x44]
	mov r8, r0
	subs r0, r7, r5
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r1, _080BEA00 @ =0xFFA00000
	add r1, r8
	asrs r1, r1, #0x10
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r6, r0, #0x10
	adds r0, r4, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	cmp r5, #0
	bge _080BEA04
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080BEA06
	.align 2, 0
_080BE9F8: .4byte gEwramData
_080BE9FC: .4byte 0x0000A094
_080BEA00: .4byte 0xFFA00000
_080BEA04:
	asrs r0, r5, #0x10
_080BEA06:
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r4, #0
	adds r0, #0x46
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0x60
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	bl ArcTan2
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsrs r6, r6, #6
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_08068CDC
	ldr r0, [r4, #0x40]
	subs r0, r0, r7
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x44]
	mov r2, r8
	subs r0, r0, r2
	str r0, [r4, #0x4c]
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _080BEA54
	subs r0, #1
	strb r0, [r4, #0xd]
	b _080BEB42
_080BEA54:
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #6
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _080BEA7C @ =0x00000121
	bl sub_080D7910
	movs r0, #2
	strb r0, [r4, #0xb]
	b _080BEB42
	.align 2, 0
_080BEA7C: .4byte 0x00000121
_080BEA80:
	adds r6, r4, #0
	adds r6, #0x6e
	ldr r5, _080BEAC8 @ =0x0000FFFF
	ldrh r0, [r6]
	cmp r0, #0x25
	bne _080BEA94
	movs r0, #0x92
	lsls r0, r0, #1
	bl sub_080D7910
_080BEA94:
	ldrh r1, [r6]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0x2b
	bne _080BEAA6
	movs r0, #0x92
	lsls r0, r0, #1
	bl sub_080D7910
_080BEAA6:
	ldrh r0, [r6]
	ands r5, r0
	cmp r5, #0x30
	bne _080BEB12
	movs r0, #0x92
	lsls r0, r0, #1
	bl sub_080D7910
	ldr r0, _080BEACC @ =sub_080BC82C
	bl sub_0806DFF8
	adds r2, r0, #0
	cmp r2, #0
	bne _080BEAD0
	movs r5, #0
	b _080BEAE2
	.align 2, 0
_080BEAC8: .4byte 0x0000FFFF
_080BEACC: .4byte sub_080BC82C
_080BEAD0:
	ldrb r0, [r4, #0x10]
	strb r0, [r2, #0x14]
	adds r3, r2, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	adds r5, r2, #0
_080BEAE2:
	ldr r0, _080BEAF4 @ =sub_080BC82C
	bl sub_0806DFF8
	adds r2, r0, #0
	cmp r2, #0
	bne _080BEAF8
	movs r1, #0
	b _080BEB0A
	.align 2, 0
_080BEAF4: .4byte sub_080BC82C
_080BEAF8:
	ldrb r0, [r4, #0x10]
	strb r0, [r2, #0x14]
	adds r3, r2, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	adds r1, r2, #0
_080BEB0A:
	ldrb r0, [r5, #0x10]
	strb r0, [r1, #0x15]
	movs r0, #1
	strb r0, [r1, #0x16]
_080BEB12:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080BEB42
	adds r0, r4, #0
	movs r1, #7
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
_080BEB42:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BEB50
sub_080BEB50: @ 0x080BEB50
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	beq _080BEB6C
	cmp r0, #1
	ble _080BEB60
	b _080BEC7C
_080BEB60:
	cmp r0, #0
	beq _080BEB66
	b _080BEC7C
_080BEB66:
	strb r0, [r5, #0xd]
	movs r0, #1
	strb r0, [r5, #0xb]
_080BEB6C:
	ldr r6, _080BEBC4 @ =gEwramData
	ldr r0, [r6]
	ldr r1, _080BEBC8 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r4, [r0, #0x44]
	ldrb r0, [r5, #0xd]
	lsls r0, r0, #8
	bl sub_080009E4
	adds r1, r0, #0
	cmp r4, #0
	bge _080BEB88
	adds r4, #7
_080BEB88:
	asrs r0, r4, #3
	lsls r1, r1, #4
	movs r2, #0xa0
	lsls r2, r2, #0xf
	adds r1, r1, r2
	adds r4, r0, r1
	ldr r0, _080BEBCC @ =0x003FFFFF
	cmp r4, r0
	bgt _080BEB9E
	movs r4, #0x80
	lsls r4, r4, #0xf
_080BEB9E:
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	ldr r0, [r6]
	ldr r3, _080BEBC8 @ =0x00013110
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r2, [r0, #0x40]
	movs r6, #0x80
	lsls r6, r6, #3
	ldr r1, [r5, #0x40]
	ldr r3, _080BEBD0 @ =0xFFC00000
	adds r0, r1, r3
	cmp r2, r0
	bge _080BEBD8
	ldr r0, _080BEBD4 @ =0xFFFFFC00
	str r0, [r5, #0x50]
	b _080BEBF2
	.align 2, 0
_080BEBC4: .4byte gEwramData
_080BEBC8: .4byte 0x00013110
_080BEBCC: .4byte 0x003FFFFF
_080BEBD0: .4byte 0xFFC00000
_080BEBD4: .4byte 0xFFFFFC00
_080BEBD8:
	movs r3, #0x80
	lsls r3, r3, #0xf
	adds r0, r1, r3
	cmp r2, r0
	ble _080BEBE6
	str r6, [r5, #0x50]
	b _080BEBF2
_080BEBE6:
	movs r0, #0
	str r0, [r5, #0x50]
	adds r0, r5, #0
	movs r1, #0x28
	bl sub_0806D490
_080BEBF2:
	ldr r1, [r5, #0x44]
	ldr r2, _080BEC04 @ =0xFFF00000
	adds r0, r1, r2
	cmp r4, r0
	bge _080BEC0C
	ldr r0, _080BEC08 @ =0xFFFFFC00
	str r0, [r5, #0x54]
	b _080BEC26
	.align 2, 0
_080BEC04: .4byte 0xFFF00000
_080BEC08: .4byte 0xFFFFFC00
_080BEC0C:
	movs r3, #0x80
	lsls r3, r3, #0xd
	adds r0, r1, r3
	cmp r4, r0
	ble _080BEC1A
	str r6, [r5, #0x54]
	b _080BEC26
_080BEC1A:
	movs r0, #0
	str r0, [r5, #0x54]
	adds r0, r5, #0
	movs r1, #0x28
	bl sub_0806D4A8
_080BEC26:
	movs r1, #0xa0
	lsls r1, r1, #9
	adds r0, r5, #0
	bl sub_0806D3D8
	ldrb r0, [r5, #0xd]
	movs r4, #0x1f
	ands r4, r0
	cmp r4, #0
	bne _080BEC7C
	bl sub_08000A90
	movs r1, #0x3f
	ands r1, r0
	cmp r1, #0x2f
	bhi _080BEC7C
	bl sub_08000A90
	movs r1, #0x3f
	ands r0, r1
	strb r0, [r5, #0x19]
	cmp r0, #0x14
	bhi _080BEC58
	movs r0, #4
	b _080BEC6A
_080BEC58:
	cmp r0, #0x29
	bhi _080BEC72
	adds r0, r5, #0
	adds r0, #0x46
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x60
	ble _080BEC72
	movs r0, #6
_080BEC6A:
	strb r0, [r5, #0xa]
	strb r4, [r5, #0xc]
	strb r4, [r5, #0xb]
	b _080BEC7C
_080BEC72:
	movs r1, #0
	movs r0, #5
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
_080BEC7C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BEC84
sub_080BEC84: @ 0x080BEC84
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	beq _080BED20
	cmp r0, #1
	bgt _080BECA0
	cmp r0, #0
	beq _080BECAE
	b _080BEEF4
_080BECA0:
	cmp r0, #2
	bne _080BECA6
	b _080BEE44
_080BECA6:
	cmp r0, #3
	bne _080BECAC
	b _080BEE6C
_080BECAC:
	b _080BEEF4
_080BECAE:
	ldr r6, _080BED78 @ =gEwramData
	ldr r0, [r6]
	ldr r1, _080BED7C @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	movs r3, #0
	ldr r0, [r5, #0x40]
	cmp r0, r1
	bge _080BECC4
	movs r3, #1
_080BECC4:
	adds r2, r5, #0
	adds r2, #0x58
	lsls r3, r3, #6
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	movs r0, #2
	strb r0, [r5, #0x18]
	adds r0, r5, #0
	movs r1, #9
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	movs r4, #0x78
	ldr r3, [r6]
	ldr r2, _080BED7C @ =0x00013110
	adds r6, r3, r2
	ldr r2, [r6]
	ldr r1, [r2, #0x40]
	ldr r0, [r5, #0x40]
	cmp r0, r1
	bge _080BECFA
	rsbs r4, r4, #0
_080BECFA:
	adds r0, r2, #0
	adds r0, #0x42
	ldr r2, _080BED80 @ =0x0000A094
	adds r1, r3, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldrh r2, [r1, #6]
	adds r0, r0, r2
	adds r0, r0, r4
	strh r0, [r5, #0x1c]
	ldr r0, [r6]
	adds r0, #0x46
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldrh r1, [r1, #0xa]
	adds r0, r0, r1
	strh r0, [r5, #0x1e]
	movs r0, #1
	strb r0, [r5, #0xb]
_080BED20:
	movs r0, #0x1c
	ldrsh r2, [r5, r0]
	ldr r0, _080BED78 @ =gEwramData
	ldr r1, [r0]
	ldr r3, _080BED80 @ =0x0000A094
	adds r1, r1, r3
	movs r3, #6
	ldrsh r0, [r1, r3]
	subs r2, r2, r0
	lsls r4, r2, #0x10
	movs r2, #0x1e
	ldrsh r0, [r5, r2]
	movs r3, #0xa
	ldrsh r1, [r1, r3]
	subs r0, r0, r1
	lsls r6, r0, #0x10
	ldr r0, [r5, #0x40]
	mov r8, r0
	ldr r1, [r5, #0x44]
	mov sb, r1
	subs r0, r0, r4
	asrs r0, r0, #0x10
	adds r2, r0, #0
	muls r2, r0, r2
	adds r0, r2, #0
	subs r1, r1, r6
	asrs r1, r1, #0x10
	adds r3, r1, #0
	muls r3, r1, r3
	adds r1, r3, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r7, r0, #0x10
	adds r0, r5, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r2, [r0, r1]
	cmp r4, #0
	bge _080BED84
	rsbs r0, r4, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080BED86
	.align 2, 0
_080BED78: .4byte gEwramData
_080BED7C: .4byte 0x00013110
_080BED80: .4byte 0x0000A094
_080BED84:
	asrs r0, r4, #0x10
_080BED86:
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, #0
	adds r0, #0x46
	movs r3, #0
	ldrsh r1, [r0, r3]
	cmp r6, #0
	bge _080BEDA0
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080BEDA2
_080BEDA0:
	asrs r0, r6, #0x10
_080BEDA2:
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, #0
	bl ArcTan2
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsrs r4, r7, #4
	movs r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_08068CDC
	ldr r0, [r5, #0x40]
	mov r1, r8
	subs r0, r0, r1
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x44]
	mov r2, sb
	subs r0, r0, r2
	str r0, [r5, #0x4c]
	ldr r0, _080BEE3C @ =0x00003FFF
	cmp r4, r0
	ble _080BEDDE
	b _080BEEF4
_080BEDDE:
	adds r0, r5, #0
	movs r1, #0xa
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #2
	strb r0, [r5, #0xb]
	ldr r2, _080BEE40 @ =0xFFFB0000
	str r2, [r5, #0x48]
	movs r3, #0xf0
	lsls r3, r3, #4
	str r3, [r5, #0x50]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080BEE0E
	rsbs r0, r2, #0
	str r0, [r5, #0x48]
	rsbs r0, r3, #0
	str r0, [r5, #0x50]
_080BEE0E:
	str r6, [r5, #0x4c]
	str r6, [r5, #0x54]
	movs r0, #0x10
	strb r0, [r5, #0xd]
	movs r0, #3
	strb r0, [r5, #0x18]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #0x31
	bl sub_080458E4
	adds r0, r5, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0x30
	bl sub_080458E4
	movs r0, #0x87
	bl sub_080D7910
	b _080BEEF4
	.align 2, 0
_080BEE3C: .4byte 0x00003FFF
_080BEE40: .4byte 0xFFFB0000
_080BEE44:
	movs r1, #0xa0
	lsls r1, r1, #0xb
	adds r0, r5, #0
	bl sub_0806D3D8
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _080BEE5A
	subs r0, #1
	strb r0, [r5, #0xd]
	b _080BEEF4
_080BEE5A:
	adds r0, r5, #0
	movs r1, #0xb
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #3
	strb r0, [r5, #0xb]
	b _080BEEF4
_080BEE6C:
	movs r1, #0xa0
	lsls r1, r1, #0xb
	adds r0, r5, #0
	bl sub_0806D3D8
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #3
	beq _080BEE98
	cmp r0, #3
	bgt _080BEE8A
	cmp r0, #1
	beq _080BEE94
	b _080BEEC0
_080BEE8A:
	cmp r0, #5
	beq _080BEE94
	cmp r0, #6
	beq _080BEEAC
	b _080BEEC0
_080BEE94:
	movs r0, #1
	b _080BEEBE
_080BEE98:
	adds r0, r5, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080BEEA8
	movs r0, #0x86
	bl sub_080D7910
_080BEEA8:
	movs r0, #4
	b _080BEEBE
_080BEEAC:
	adds r0, r5, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080BEEBC
	movs r0, #0x85
	bl sub_080D7910
_080BEEBC:
	movs r0, #5
_080BEEBE:
	strb r0, [r5, #0x18]
_080BEEC0:
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080BEEF4
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r4, #0
	strb r4, [r5, #0x18]
	adds r0, r5, #0
	movs r1, #7
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #3
	strb r0, [r5, #0xa]
	strb r4, [r5, #0xc]
	strb r4, [r5, #0xb]
_080BEEF4:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BEF04
sub_080BEF04: @ 0x080BEF04
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #4
	bls _080BEF18
	b _080BF0F8
_080BEF18:
	lsls r0, r0, #2
	ldr r1, _080BEF24 @ =_080BEF28
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080BEF24: .4byte _080BEF28
_080BEF28: @ jump table
	.4byte _080BEF3C @ case 0
	.4byte _080BEFA0 @ case 1
	.4byte _080BF078 @ case 2
	.4byte _080BF0A0 @ case 3
	.4byte _080BF0D4 @ case 4
_080BEF3C:
	ldr r0, _080BEF94 @ =gEwramData
	ldr r7, [r0]
	ldr r0, _080BEF98 @ =0x00013110
	adds r6, r7, r0
	ldr r0, [r6]
	ldr r1, [r0, #0x40]
	movs r3, #0
	ldr r0, [r5, #0x40]
	cmp r0, r1
	bge _080BEF52
	movs r3, #1
_080BEF52:
	adds r2, r5, #0
	adds r2, #0x58
	lsls r3, r3, #6
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	movs r4, #0x50
	rsbs r4, r4, #0
	ldr r2, [r6]
	ldr r1, [r2, #0x40]
	ldr r0, [r5, #0x40]
	cmp r0, r1
	bge _080BEF74
	movs r4, #0x50
_080BEF74:
	adds r0, r2, #0
	adds r0, #0x42
	ldr r2, _080BEF9C @ =0x0000A094
	adds r1, r7, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldrh r2, [r1, #6]
	adds r0, r0, r2
	subs r0, r0, r4
	strh r0, [r5, #0x1c]
	ldrh r0, [r1, #0xa]
	adds r0, #0x78
	strh r0, [r5, #0x1e]
	movs r0, #1
	strb r0, [r5, #0xb]
	b _080BF0F8
	.align 2, 0
_080BEF94: .4byte gEwramData
_080BEF98: .4byte 0x00013110
_080BEF9C: .4byte 0x0000A094
_080BEFA0:
	movs r3, #0x1c
	ldrsh r2, [r5, r3]
	ldr r0, _080BEFF8 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _080BEFFC @ =0x0000A094
	adds r1, r1, r0
	movs r3, #6
	ldrsh r0, [r1, r3]
	subs r2, r2, r0
	lsls r4, r2, #0x10
	movs r2, #0x1e
	ldrsh r0, [r5, r2]
	movs r3, #0xa
	ldrsh r1, [r1, r3]
	subs r0, r0, r1
	lsls r6, r0, #0x10
	ldr r0, [r5, #0x40]
	mov r8, r0
	ldr r1, [r5, #0x44]
	mov sb, r1
	subs r0, r0, r4
	asrs r0, r0, #0x10
	adds r2, r0, #0
	muls r2, r0, r2
	adds r0, r2, #0
	subs r1, r1, r6
	asrs r1, r1, #0x10
	adds r3, r1, #0
	muls r3, r1, r3
	adds r1, r3, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r7, r0, #0x10
	adds r0, r5, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r2, [r0, r1]
	cmp r4, #0
	bge _080BF000
	rsbs r0, r4, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080BF002
	.align 2, 0
_080BEFF8: .4byte gEwramData
_080BEFFC: .4byte 0x0000A094
_080BF000:
	asrs r0, r4, #0x10
_080BF002:
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, #0
	adds r0, #0x46
	movs r3, #0
	ldrsh r1, [r0, r3]
	cmp r6, #0
	bge _080BF01C
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080BF01E
_080BF01C:
	asrs r0, r6, #0x10
_080BF01E:
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, #0
	bl ArcTan2
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsrs r4, r7, #4
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_08068CDC
	ldr r0, [r5, #0x40]
	mov r1, r8
	subs r0, r0, r1
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x44]
	mov r2, sb
	subs r0, r0, r2
	str r0, [r5, #0x4c]
	ldr r0, _080BF074 @ =0x00003FFF
	cmp r4, r0
	bgt _080BF0F8
	adds r0, r5, #0
	movs r1, #0x19
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	ldrh r0, [r5, #0x14]
	movs r1, #8
	orrs r1, r0
	strh r1, [r5, #0x14]
	movs r0, #2
	strb r0, [r5, #0xb]
	b _080BF0F8
	.align 2, 0
_080BF074: .4byte 0x00003FFF
_080BF078:
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080BF0F8
	adds r0, r5, #0
	movs r1, #0x1a
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	ldrh r0, [r5, #0x14]
	movs r1, #0x84
	orrs r1, r0
	strh r1, [r5, #0x14]
	movs r0, #3
	strb r0, [r5, #0xb]
	b _080BF0F8
_080BF0A0:
	ldrh r1, [r5, #0x14]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080BF0F8
	ldr r0, _080BF0D0 @ =0x0000FF7F
	ands r0, r1
	strh r0, [r5, #0x14]
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	movs r1, #0x19
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #4
	strb r0, [r5, #0xb]
	b _080BF0F8
	.align 2, 0
_080BF0D0: .4byte 0x0000FF7F
_080BF0D4:
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080BF0F8
	adds r0, r5, #0
	movs r1, #7
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	movs r1, #0
	movs r0, #3
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
_080BF0F8:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BF108
sub_080BF108: @ 0x080BF108
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _080BF13C
	cmp r0, #1
	bgt _080BF11C
	cmp r0, #0
	beq _080BF122
	b _080BF172
_080BF11C:
	cmp r0, #2
	beq _080BF150
	b _080BF172
_080BF122:
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	ldrh r0, [r4, #0x14]
	movs r1, #0x10
	orrs r1, r0
	strh r1, [r4, #0x14]
	movs r0, #1
	strb r0, [r4, #0xb]
	b _080BF172
_080BF13C:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080BF172
	movs r0, #2
	strb r0, [r4, #0xb]
	b _080BF172
_080BF150:
	ldrh r1, [r4, #0x14]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _080BF172
	adds r0, r4, #0
	movs r1, #7
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #3
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
_080BF172:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080BF178
sub_080BF178: @ 0x080BF178
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	beq _080BF1B4
	cmp r0, #1
	bgt _080BF192
	cmp r0, #0
	beq _080BF1A0
	b _080BF2D8
_080BF192:
	cmp r0, #2
	bne _080BF198
	b _080BF2A0
_080BF198:
	cmp r0, #3
	bne _080BF19E
	b _080BF2D4
_080BF19E:
	b _080BF2D8
_080BF1A0:
	adds r0, r5, #0
	movs r1, #0xe
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0x40
	strb r0, [r5, #0xd]
	movs r0, #1
	strb r0, [r5, #0xb]
_080BF1B4:
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	bne _080BF2A6
	ldr r0, _080BF28C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080BF290 @ =0x0000042C
	adds r0, r0, r1
	ldr r0, [r0]
	movs r6, #0x10
	ands r0, r6
	cmp r0, #0
	bne _080BF1F2
	movs r4, #0x80
	lsls r4, r4, #9
	str r4, [sp]
	str r6, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	movs r3, #0
	bl sub_0803D18C
	movs r3, #0x80
	lsls r3, r3, #7
	str r4, [sp]
	str r6, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	bl sub_0803CDF0
_080BF1F2:
	movs r6, #3
	movs r2, #0x58
	adds r2, r2, r5
	mov r8, r2
	adds r7, r5, #0
	adds r7, #0x42
_080BF1FE:
	ldr r0, _080BF294 @ =sub_080BE218
	bl sub_0806DFF8
	adds r2, r0, #0
	cmp r2, #0
	beq _080BF254
	ldrb r0, [r5, #0x10]
	strb r0, [r2, #0x14]
	adds r3, r2, #0
	adds r3, #0x59
	ldrb r1, [r3]
	movs r0, #2
	orrs r1, r0
	adds r4, r2, #0
	movs r2, #3
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r1, r0
	strb r1, [r3]
	strb r6, [r4, #0xb]
	ldr r0, _080BF28C @ =gEwramData
	ldr r1, [r0]
	ldr r0, _080BF298 @ =0x0000A094
	adds r1, r1, r0
	ldrh r0, [r1, #6]
	ldrh r2, [r7]
	adds r0, r0, r2
	adds r2, r4, #0
	adds r2, #0x42
	strh r0, [r2]
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r1, [r1, #0xa]
	ldrh r0, [r0]
	adds r1, r1, r0
	lsls r0, r6, #4
	subs r0, #0x30
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x46
	strh r1, [r0]
	lsls r0, r6, #2
	strb r0, [r4, #0xd]
_080BF254:
	subs r6, #1
	cmp r6, #0
	bge _080BF1FE
	movs r0, #2
	strb r0, [r5, #0xb]
	ldr r0, _080BF29C @ =sub_080BDFC4
	bl sub_0806DFF8
	adds r2, r0, #0
	cmp r2, #0
	beq _080BF278
	ldrb r0, [r5, #0x10]
	strb r0, [r2, #0x14]
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_080BF278:
	mov r1, r8
	ldrb r0, [r1]
	movs r1, #0x20
	orrs r0, r1
	mov r2, r8
	strb r0, [r2]
	movs r0, #0x10
	strb r0, [r5, #0xd]
	b _080BF2D8
	.align 2, 0
_080BF28C: .4byte gEwramData
_080BF290: .4byte 0x0000042C
_080BF294: .4byte sub_080BE218
_080BF298: .4byte 0x0000A094
_080BF29C: .4byte sub_080BDFC4
_080BF2A0:
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _080BF2AC
_080BF2A6:
	subs r0, #1
	strb r0, [r5, #0xd]
	b _080BF2D8
_080BF2AC:
	movs r0, #3
	strb r0, [r5, #0xb]
	ldr r0, _080BF2CC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080BF2D0 @ =0x0000042C
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080BF2D8
	bl sub_0803D270
	bl sub_0803CED4
	b _080BF2D8
	.align 2, 0
_080BF2CC: .4byte gEwramData
_080BF2D0: .4byte 0x0000042C
_080BF2D4:
	movs r0, #1
	b _080BF2DA
_080BF2D8:
	movs r0, #0
_080BF2DA:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BF2E8
sub_080BF2E8: @ 0x080BF2E8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080BF316
	ldr r0, _080BF334 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _080BF338 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080BF316
	ldr r1, _080BF33C @ =0x0000037E
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080BF32C
_080BF316:
	ldr r1, _080BF340 @ =0x08119498
	ldr r2, _080BF344 @ =0x0820BC1C
	ldr r0, _080BF348 @ =0x08249C48
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080BF34C
_080BF32C:
	adds r0, r5, #0
	bl sub_08000E14
	b _080BF492
	.align 2, 0
_080BF334: .4byte gEwramData
_080BF338: .4byte 0x000004CC
_080BF33C: .4byte 0x0000037E
_080BF340: .4byte 0x08119498
_080BF344: .4byte 0x0820BC1C
_080BF348: .4byte 0x08249C48
_080BF34C:
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_0806B04C
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x13
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	ldr r0, _080BF3B0 @ =sub_080BC298
	bl sub_0806DFF8
	adds r2, r0, #0
	cmp r2, #0
	beq _080BF394
	ldrb r0, [r5, #0x10]
	strb r0, [r2, #0x14]
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_080BF394:
	ldr r7, _080BF3B4 @ =gEwramData
	ldr r0, [r7]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	beq _080BF3B8
	movs r0, #8
	strb r0, [r5, #0xa]
	b _080BF492
	.align 2, 0
_080BF3B0: .4byte sub_080BC298
_080BF3B4: .4byte gEwramData
_080BF3B8:
	ldr r2, _080BF42C @ =sub_0806E1B8
	ldr r3, _080BF430 @ =sub_080BF4AC
	adds r0, r5, #0
	movs r1, #8
	bl sub_080427B8
	ldr r4, _080BF434 @ =0x3230CEE8
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080428F0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08042884
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r4, #2
	orrs r0, r4
	strb r0, [r2]
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080BF444
	strb r6, [r5, #0xa]
	ldr r1, [r7]
	ldr r0, _080BF438 @ =0x0000A094
	adds r1, r1, r0
	ldrh r2, [r1, #6]
	movs r0, #0x80
	subs r0, r0, r2
	adds r2, r5, #0
	adds r2, #0x42
	strh r0, [r2]
	ldrh r1, [r1, #0xa]
	movs r0, #0x20
	subs r0, r0, r1
	adds r2, #4
	strh r0, [r2]
	ldr r0, _080BF43C @ =0x00001010
	bl sub_080D7910
	ldr r0, _080BF440 @ =sub_080BD094
	bl sub_0806DFF8
	adds r1, r0, #0
	cmp r1, #0
	beq _080BF44E
	ldrb r0, [r5, #0x10]
	strb r0, [r1, #0x14]
	adds r1, #0x59
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	b _080BF44E
	.align 2, 0
_080BF42C: .4byte sub_0806E1B8
_080BF430: .4byte sub_080BF4AC
_080BF434: .4byte 0x3230CEE8
_080BF438: .4byte 0x0000A094
_080BF43C: .4byte 0x00001010
_080BF440: .4byte sub_080BD094
_080BF444:
	movs r0, #1
	strb r0, [r5, #0xa]
	movs r0, #0x10
	bl sub_08013CF0
_080BF44E:
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r4, #2
	orrs r0, r4
	strb r0, [r2]
	ldr r0, _080BF49C @ =0x0000098C
	strh r0, [r5, #0x34]
	ldr r0, _080BF4A0 @ =sub_080BD358
	bl sub_0806DFF8
	adds r1, r0, #0
	cmp r1, #0
	beq _080BF47C
	ldrb r0, [r5, #0x10]
	strb r0, [r1, #0x14]
	adds r1, #0x59
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
_080BF47C:
	adds r0, r5, #0
	bl sub_08034498
	ldr r0, _080BF4A4 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _080BF4A8 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #2
	orrs r0, r2
	str r0, [r1]
_080BF492:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BF49C: .4byte 0x0000098C
_080BF4A0: .4byte sub_080BD358
_080BF4A4: .4byte gEwramData
_080BF4A8: .4byte 0x0000042C

	thumb_func_start sub_080BF4AC
sub_080BF4AC: @ 0x080BF4AC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r3, [r4, #0x14]
	movs r0, #2
	movs r5, #0
	orrs r0, r3
	strh r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080BF4FA
	adds r0, r4, #0
	bl sub_080683BC
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	ldr r2, _080BF500 @ =0xFFE00000
	adds r1, r1, r2
	bl sub_080D6450
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
	movs r0, #7
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
_080BF4FA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BF500: .4byte 0xFFE00000

	thumb_func_start sub_080BF504
sub_080BF504: @ 0x080BF504
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080BF538
	adds r2, r4, #0
	adds r2, #0x3e
	ldrb r1, [r2]
	movs r0, #2
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
_080BF538:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BF540
sub_080BF540: @ 0x080BF540
	movs r1, #0
	strh r1, [r0, #0x34]
	bx lr
	.align 2, 0

	thumb_func_start sub_080BF548
sub_080BF548: @ 0x080BF548
	push {lr}
	sub sp, #0x10
	mov r1, sp
	movs r2, #0
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	mov r2, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	strh r1, [r2]
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
	.align 2, 0

	thumb_func_start sub_080BF578
sub_080BF578: @ 0x080BF578
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

	thumb_func_start sub_080BF5A8
sub_080BF5A8: @ 0x080BF5A8
	push {r4, lr}
	ldr r4, _080BF5F4 @ =gEwramData
	ldrb r3, [r0, #0x14]
	lsls r0, r3, #5
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r3, _080BF5F8 @ =0x000004E4
	adds r0, r0, r3
	ldr r3, [r4]
	adds r4, r3, r0
	adds r0, r4, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080BF5EE
	adds r2, r4, #0
	adds r2, #0x3e
	ldrb r1, [r2]
	movs r0, #2
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
_080BF5EE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BF5F4: .4byte gEwramData
_080BF5F8: .4byte 0x000004E4

	thumb_func_start sub_080BF5FC
sub_080BF5FC: @ 0x080BF5FC
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #8
	bhi _080BF68E
	lsls r0, r0, #2
	ldr r1, _080BF614 @ =_080BF618
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080BF614: .4byte _080BF618
_080BF618: @ jump table
	.4byte _080BF63C @ case 0
	.4byte _080BF644 @ case 1
	.4byte _080BF64C @ case 2
	.4byte _080BF654 @ case 3
	.4byte _080BF65C @ case 4
	.4byte _080BF664 @ case 5
	.4byte _080BF66C @ case 6
	.4byte _080BF674 @ case 7
	.4byte _080BF686 @ case 8
_080BF63C:
	adds r0, r4, #0
	bl sub_080BE414
	b _080BF68E
_080BF644:
	adds r0, r4, #0
	bl sub_080BE608
	b _080BF68E
_080BF64C:
	adds r0, r4, #0
	bl sub_080BE984
	b _080BF68E
_080BF654:
	adds r0, r4, #0
	bl sub_080BEB50
	b _080BF68E
_080BF65C:
	adds r0, r4, #0
	bl sub_080BEC84
	b _080BF68E
_080BF664:
	adds r0, r4, #0
	bl sub_080BEF04
	b _080BF68E
_080BF66C:
	adds r0, r4, #0
	bl sub_080BF108
	b _080BF68E
_080BF674:
	adds r0, r4, #0
	bl sub_080BF178
	cmp r0, #0
	beq _080BF68E
	adds r0, r4, #0
	bl sub_08000E14
	b _080BF6B0
_080BF686:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080BF6B0
_080BF68E:
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080BF6AA
	adds r0, r4, #0
	bl sub_0806AE54
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
_080BF6AA:
	adds r0, r4, #0
	bl sub_0803F17C
_080BF6B0:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080BF6B8
sub_080BF6B8: @ 0x080BF6B8
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080BF6CA
	cmp r0, #1
	beq _080BF70C
	b _080BF72E
_080BF6CA:
	ldr r1, _080BF6EC @ =0x082052D0
	ldr r2, _080BF6F0 @ =0x0820C27C
	ldrh r3, [r4, #0x32]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r0, _080BF6F4 @ =0x08256720
	str r0, [sp]
	adds r0, r4, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080BF6F8
	adds r0, r4, #0
	bl sub_08000E14
	b _080BF72E
	.align 2, 0
_080BF6EC: .4byte 0x082052D0
_080BF6F0: .4byte 0x0820C27C
_080BF6F4: .4byte 0x08256720
_080BF6F8:
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #9
	strb r0, [r1]
	subs r1, #9
	movs r0, #0x13
	strb r0, [r1]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_080BF70C:
	ldrb r1, [r4, #0xd]
	adds r0, r1, #0
	cmp r0, #0
	beq _080BF722
	cmp r0, #4
	bne _080BF71C
	movs r0, #1
	strb r0, [r4, #0xf]
_080BF71C:
	subs r0, r1, #1
	strb r0, [r4, #0xd]
	b _080BF72E
_080BF722:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080BF72E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BF738
sub_080BF738: @ 0x080BF738
	push {r4, r5, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _080BF760
	movs r1, #0x34
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080BF760
	adds r0, r5, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _080BF760
	add r0, sp, #8
	adds r1, r5, #0
	bl sub_080421AC
	b _080BF97A
_080BF760:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080BF82C
	cmp r0, #1
	bgt _080BF770
	cmp r0, #0
	beq _080BF77E
	b _080BF97A
_080BF770:
	cmp r0, #2
	bne _080BF776
	b _080BF91C
_080BF776:
	cmp r0, #3
	bne _080BF77C
	b _080BF95C
_080BF77C:
	b _080BF97A
_080BF77E:
	ldr r1, _080BF808 @ =0x082052D0
	ldr r2, _080BF80C @ =0x0820C27C
	ldrh r3, [r5, #0x32]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r0, _080BF810 @ =0x08256720
	str r0, [sp]
	adds r0, r5, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080BF79A
	b _080BF8B2
_080BF79A:
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #8
	strb r0, [r1]
	subs r1, #9
	movs r0, #0x13
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r3, _080BF814 @ =0xFFFD8000
	str r3, [r5, #0x48]
	ldr r0, _080BF818 @ =0x0000FFFA
	strh r0, [r5, #0x1c]
	ldr r2, _080BF81C @ =0x00001234
	strh r2, [r5, #0x1a]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080BF7DA
	rsbs r0, r3, #0
	str r0, [r5, #0x48]
	movs r0, #6
	strh r0, [r5, #0x1c]
	rsbs r0, r2, #0
	strh r0, [r5, #0x1a]
_080BF7DA:
	movs r0, #0x89
	bl sub_080D7910
	movs r0, #1
	strb r0, [r5, #0xa]
	strh r0, [r5, #0x34]
	ldr r2, _080BF820 @ =sub_0806E1E8
	ldr r3, _080BF824 @ =sub_080BFF0C
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_0804277C
	ldr r4, _080BF828 @ =0x0810FCF8
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08042884
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080428F0
	b _080BF97A
	.align 2, 0
_080BF808: .4byte 0x082052D0
_080BF80C: .4byte 0x0820C27C
_080BF810: .4byte 0x08256720
_080BF814: .4byte 0xFFFD8000
_080BF818: .4byte 0x0000FFFA
_080BF81C: .4byte 0x00001234
_080BF820: .4byte sub_0806E1E8
_080BF824: .4byte sub_080BFF0C
_080BF828: .4byte 0x0810FCF8
_080BF82C:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r5, #0
	bl sub_0806D3D8
	add r0, sp, #8
	adds r1, r5, #0
	bl sub_080421AC
	adds r0, r5, #0
	movs r1, #3
	bl sub_0806D128
	cmp r0, #0
	beq _080BF84E
	movs r0, #3
	strb r0, [r5, #0xa]
_080BF84E:
	movs r3, #0x34
	ldrsh r0, [r5, r3]
	cmp r0, #0
	bne _080BF872
	movs r0, #3
	strb r0, [r5, #0xa]
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	movs r3, #0x80
	lsls r3, r3, #0xb
	adds r2, r5, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	str r2, [sp]
	adds r2, r3, #0
	bl sub_0806D5C0
	b _080BF97A
_080BF872:
	adds r0, r5, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _080BF8BC @ =gEwramData
	ldr r2, [r1]
	ldr r3, _080BF8C0 @ =0x0000A094
	adds r2, r2, r3
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	movs r3, #0x1c
	ldrsh r1, [r5, r3]
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
	beq _080BF97A
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	bge _080BF8C4
_080BF8B2:
	adds r0, r5, #0
	bl sub_08000E14
	b _080BF97A
	.align 2, 0
_080BF8BC: .4byte gEwramData
_080BF8C0: .4byte 0x0000A094
_080BF8C4:
	movs r0, #0x9d
	lsls r0, r0, #1
	bl sub_080D7910
	movs r0, #0
	strh r0, [r5, #0x34]
	adds r2, r5, #0
	adds r2, #0x58
	movs r0, #0x1f
	ands r4, r0
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
	adds r2, #1
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	bl sub_08000A90
	ldr r1, [r5, #0x48]
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	asrs r1, r1, #1
	ldr r2, _080BF984 @ =0x00007FFF
	ands r2, r0
	adds r1, r1, r2
	rsbs r1, r1, #0
	str r1, [r5, #0x48]
	movs r0, #0x80
	lsls r0, r0, #8
	bl sub_0802D5EC
	ldr r1, _080BF988 @ =0xFFFE8000
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	movs r0, #2
	strb r0, [r5, #0xa]
_080BF91C:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r5, #0
	bl sub_0806D3D8
	ldrh r0, [r5, #0x1a]
	ldrh r3, [r5, #0x18]
	adds r0, r0, r3
	movs r4, #0
	strh r0, [r5, #0x18]
	movs r1, #0x18
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
	adds r0, r5, #0
	movs r1, #3
	bl sub_0806D128
	cmp r0, #0
	beq _080BF97A
_080BF95C:
	adds r2, r5, #0
	adds r2, #0x58
	ldrh r1, [r2]
	ldr r0, _080BF98C @ =0x0000101F
	ands r0, r1
	cmp r0, #0
	beq _080BF974
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080BF974:
	adds r0, r5, #0
	bl sub_08000E14
_080BF97A:
	add sp, #0x18
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BF984: .4byte 0x00007FFF
_080BF988: .4byte 0xFFFE8000
_080BF98C: .4byte 0x0000101F

	thumb_func_start sub_080BF990
sub_080BF990: @ 0x080BF990
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	ldrb r5, [r4, #0xa]
	cmp r5, #1
	beq _080BFA3C
	cmp r5, #1
	bgt _080BF9A6
	cmp r5, #0
	beq _080BF9B4
	b _080BFA56
_080BF9A6:
	cmp r5, #2
	bne _080BF9AC
	b _080BFADC
_080BF9AC:
	cmp r5, #3
	bne _080BF9B2
	b _080BFAFE
_080BF9B2:
	b _080BFA56
_080BF9B4:
	ldr r1, _080BFA30 @ =0x082052D0
	ldr r2, _080BFA34 @ =0x0820C27C
	ldrh r3, [r4, #0x32]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r0, _080BFA38 @ =0x08256720
	str r0, [sp]
	adds r0, r4, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080BF9D0
	b _080BFB16
_080BF9D0:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _080BF9E0
	b _080BFB16
_080BF9E0:
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
	adds r3, r4, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #0x10
	orrs r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #8
	strb r0, [r1]
	subs r1, #9
	movs r0, #0x12
	strb r0, [r1]
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0xc0
	lsls r0, r0, #8
	strh r0, [r4, #0x18]
	movs r0, #1
	strb r0, [r4, #0xa]
	str r5, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	adds r3, r2, #0
	b _080BFB34
	.align 2, 0
_080BFA30: .4byte 0x082052D0
_080BFA34: .4byte 0x0820C27C
_080BFA38: .4byte 0x08256720
_080BFA3C:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D3D8
	adds r0, r4, #0
	movs r1, #3
	bl sub_0806D128
	cmp r0, #0
	beq _080BFA5C
	movs r0, #3
	strb r0, [r4, #0xa]
_080BFA56:
	adds r3, r4, #0
	adds r3, #0x58
	b _080BFB34
_080BFA5C:
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _080BFB20 @ =gEwramData
	ldr r2, [r1]
	ldr r3, _080BFB24 @ =0x0000A094
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
	adds r1, #4
	bl sub_080020A0
	adds r3, r4, #0
	adds r3, #0x58
	cmp r0, #0
	beq _080BFB34
	movs r0, #0x9d
	lsls r0, r0, #1
	bl sub_080D7910
	movs r0, #0x80
	lsls r0, r0, #4
	bl sub_0802D5EC
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r0, r1
	strh r0, [r4, #0x1a]
	bl sub_08000A90
	ldr r1, _080BFB28 @ =0x00003FFF
	ands r1, r0
	movs r6, #0x80
	lsls r6, r6, #8
	adds r1, r1, r6
	str r1, [r4, #0x48]
	bl sub_08000A90
	ands r5, r0
	cmp r5, #0
	beq _080BFACC
	ldrh r0, [r4, #0x1a]
	rsbs r0, r0, #0
	strh r0, [r4, #0x1a]
	ldr r0, [r4, #0x48]
	rsbs r0, r0, #0
	str r0, [r4, #0x48]
_080BFACC:
	adds r0, r6, #0
	bl sub_0802D5EC
	ldr r3, _080BFB2C @ =0xFFFE0000
	adds r0, r0, r3
	str r0, [r4, #0x4c]
	movs r0, #2
	strb r0, [r4, #0xa]
_080BFADC:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D3D8
	ldrh r0, [r4, #0x1a]
	ldrh r1, [r4, #0x18]
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #3
	bl sub_0806D128
	adds r3, r4, #0
	adds r3, #0x58
	cmp r0, #0
	beq _080BFB34
_080BFAFE:
	adds r2, r4, #0
	adds r2, #0x58
	ldrh r1, [r2]
	ldr r0, _080BFB30 @ =0x0000101F
	ands r0, r1
	cmp r0, #0
	beq _080BFB16
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080BFB16:
	adds r0, r4, #0
	bl sub_08000E14
	b _080BFB50
	.align 2, 0
_080BFB20: .4byte gEwramData
_080BFB24: .4byte 0x0000A094
_080BFB28: .4byte 0x00003FFF
_080BFB2C: .4byte 0xFFFE0000
_080BFB30: .4byte 0x0000101F
_080BFB34:
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	movs r2, #0x80
	lsls r2, r2, #9
	movs r1, #0
	str r1, [sp]
	ldrb r1, [r3]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
_080BFB50:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080BFB58
sub_080BFB58: @ 0x080BFB58
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080BFBEA
	adds r0, r4, #0
	adds r0, #0x6e
	ldrh r5, [r0]
	adds r6, r0, #0
	cmp r5, #0
	bne _080BFBB2
	adds r0, r4, #0
	movs r1, #0xa0
	movs r2, #0x78
	bl sub_0806E29C
	adds r2, r0, #0
	cmp r2, #0
	beq _080BFB88
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	b _080BFBEA
_080BFB88:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _080BFBB2
	strb r2, [r4, #0xd]
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
_080BFBB2:
	ldrb r2, [r6]
	movs r0, #1
	ands r2, r0
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	lsls r0, r0, #0xb
	movs r1, #0xa0
	lsls r1, r1, #8
	subs r1, r1, r0
	cmp r2, #0
	beq _080BFBCE
	movs r1, #0xc0
	lsls r1, r1, #6
_080BFBCE:
	ldr r2, _080BFBF0 @ =0x085288FC
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_0806CAF8
	movs r1, #0x1b
	ands r1, r0
	cmp r1, #8
	beq _080BFBEA
	ldrb r0, [r4, #0xd]
	cmp r0, #2
	bhi _080BFBEA
	movs r0, #3
	strb r0, [r4, #0xd]
_080BFBEA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080BFBF0: .4byte 0x085288FC

	thumb_func_start sub_080BFBF4
sub_080BFBF4: @ 0x080BFBF4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _080BFC26
	cmp r0, #1
	bgt _080BFC08
	cmp r0, #0
	beq _080BFC0E
	b _080BFCD0
_080BFC08:
	cmp r0, #3
	beq _080BFCBC
	b _080BFCD0
_080BFC0E:
	adds r0, r4, #0
	bl sub_0806BC40
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #1
	strb r0, [r4, #0xb]
	b _080BFCD0
_080BFC26:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrh r1, [r0]
	ldr r0, _080BFCB0 @ =0x00000202
	cmp r1, r0
	bne _080BFC9A
	ldr r0, _080BFCB4 @ =sub_080BF738
	bl sub_0806DFF8
	mov ip, r0
	cmp r0, #0
	beq _080BFC9A
	ldr r6, _080BFCB8 @ =0x0000FFF0
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	mov r5, ip
	adds r5, #0x42
	strh r0, [r5]
	adds r0, r4, #0
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0x18
	mov r1, ip
	adds r1, #0x46
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	mov r3, ip
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
	beq _080BFC7E
	movs r6, #0x10
_080BFC7E:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	mov r0, ip
	adds r0, #0x3c
	strb r1, [r0]
	ldrh r0, [r4, #0x32]
	mov r1, ip
	strh r0, [r1, #0x32]
_080BFC9A:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080BFCD0
	movs r0, #3
	strb r0, [r4, #0xb]
	b _080BFCD0
	.align 2, 0
_080BFCB0: .4byte 0x00000202
_080BFCB4: .4byte sub_080BF738
_080BFCB8: .4byte 0x0000FFF0
_080BFCBC:
	movs r0, #0
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080BFCD0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BFCD8
sub_080BFCD8: @ 0x080BFCD8
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrb r4, [r6, #0xb]
	cmp r4, #0
	beq _080BFCE8
	cmp r4, #1
	beq _080BFD64
	b _080BFE14
_080BFCE8:
	ldr r0, _080BFD58 @ =0x000001C1
	bl sub_080D7910
	ldr r2, _080BFD5C @ =sub_080BF990
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r5, r0, #0
	cmp r5, #0
	beq _080BFD44
	movs r7, #0x90
	lsls r7, r7, #0xd
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080BFD12
	rsbs r7, r7, #0
_080BFD12:
	movs r4, #0x80
	lsls r4, r4, #0xa
	adds r0, r4, #0
	bl sub_0802D5EC
	ldr r1, [r6, #0x40]
	adds r1, r1, r7
	adds r1, r1, r0
	str r1, [r5, #0x40]
	adds r0, r4, #0
	bl sub_0802D5EC
	ldr r1, [r6, #0x44]
	adds r1, r1, r0
	ldr r0, _080BFD60 @ =0xFFE00000
	adds r1, r1, r0
	str r1, [r5, #0x44]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r6, #0x32]
	strh r0, [r5, #0x32]
_080BFD44:
	adds r1, r6, #0
	adds r1, #0x65
	movs r0, #6
	strb r0, [r1]
	movs r0, #1
	strb r0, [r6, #0xb]
	movs r0, #0x40
	strb r0, [r6, #0xd]
	b _080BFE14
	.align 2, 0
_080BFD58: .4byte 0x000001C1
_080BFD5C: .4byte sub_080BF990
_080BFD60: .4byte 0xFFE00000
_080BFD64:
	ldrb r1, [r6, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080BFDF0
	bl sub_08000A90
	ands r4, r0
	cmp r4, #0
	beq _080BFDA4
	movs r0, #0x80
	lsls r0, r0, #0xc
	bl sub_0802D5EC
	ldr r4, [r6, #0x40]
	adds r4, r4, r0
	movs r0, #0x80
	lsls r0, r0, #0xd
	bl sub_0802D5EC
	ldr r1, [r6, #0x44]
	adds r1, r1, r0
	ldr r0, _080BFDA0 @ =0xFFF00000
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0xd
	movs r3, #8
	bl sub_08045CEC
	b _080BFDF0
	.align 2, 0
_080BFDA0: .4byte 0xFFF00000
_080BFDA4:
	ldr r2, _080BFE08 @ =sub_080BF6B8
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r5, r0, #0
	cmp r5, #0
	beq _080BFDF0
	movs r0, #0x80
	lsls r0, r0, #0xc
	bl sub_0802D5EC
	ldr r1, [r6, #0x40]
	adds r1, r1, r0
	str r1, [r5, #0x40]
	movs r0, #0x80
	lsls r0, r0, #0xd
	bl sub_0802D5EC
	ldr r1, [r6, #0x44]
	adds r1, r1, r0
	ldr r0, _080BFE0C @ =0xFFF00000
	adds r1, r1, r0
	str r1, [r5, #0x44]
	bl sub_08000A90
	movs r1, #7
	ands r0, r1
	adds r0, #8
	strb r0, [r5, #0xd]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r6, #0x32]
	strh r0, [r5, #0x32]
_080BFDF0:
	ldrb r1, [r6, #0xd]
	adds r0, r1, #0
	cmp r0, #0
	beq _080BFE10
	cmp r0, #0x10
	bne _080BFE00
	movs r0, #1
	strb r0, [r6, #0xf]
_080BFE00:
	subs r0, r1, #1
	strb r0, [r6, #0xd]
	b _080BFE14
	.align 2, 0
_080BFE08: .4byte sub_080BF6B8
_080BFE0C: .4byte 0xFFF00000
_080BFE10:
	movs r0, #1
	b _080BFE16
_080BFE14:
	movs r0, #0
_080BFE16:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080BFE1C
sub_080BFE1C: @ 0x080BFE1C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _080BFE44 @ =0x082052D0
	ldr r2, _080BFE48 @ =0x0820C27C
	ldrh r3, [r4, #0x32]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r0, _080BFE4C @ =0x08256720
	str r0, [sp]
	adds r0, r4, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080BFE50
	adds r0, r4, #0
	bl sub_08000E14
	b _080BFEBC
	.align 2, 0
_080BFE44: .4byte 0x082052D0
_080BFE48: .4byte 0x0820C27C
_080BFE4C: .4byte 0x08256720
_080BFE50:
	adds r0, r4, #0
	bl sub_0806B04C
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x13
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _080BFE88 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080BFE8C
	movs r0, #3
	strb r0, [r4, #0xa]
	b _080BFEBC
	.align 2, 0
_080BFE88: .4byte gEwramData
_080BFE8C:
	ldr r1, _080BFEC4 @ =sub_0806E1B8
	ldr r2, _080BFEC8 @ =sub_080BFECC
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
_080BFEBC:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BFEC4: .4byte sub_0806E1B8
_080BFEC8: .4byte sub_080BFECC

	thumb_func_start sub_080BFECC
sub_080BFECC: @ 0x080BFECC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080BFF04
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
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080BFF04:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BFF0C
sub_080BFF0C: @ 0x080BFF0C
	movs r1, #0
	strh r1, [r0, #0x34]
	bx lr
	.align 2, 0

	thumb_func_start sub_080BFF14
sub_080BFF14: @ 0x080BFF14
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806CC20
	cmp r0, #0
	bne _080BFF76
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080BFF42
	cmp r0, #1
	bgt _080BFF30
	cmp r0, #0
	beq _080BFF3A
	b _080BFF64
_080BFF30:
	cmp r0, #2
	beq _080BFF4A
	cmp r0, #3
	beq _080BFF5C
	b _080BFF64
_080BFF3A:
	adds r0, r4, #0
	bl sub_080BFB58
	b _080BFF64
_080BFF42:
	adds r0, r4, #0
	bl sub_080BFBF4
	b _080BFF64
_080BFF4A:
	adds r0, r4, #0
	bl sub_080BFCD8
	cmp r0, #0
	beq _080BFF64
	adds r0, r4, #0
	bl sub_08000E14
	b _080BFF76
_080BFF5C:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080BFF76
_080BFF64:
	adds r0, r4, #0
	bl sub_0806E314
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080BFF76
	adds r0, r4, #0
	bl sub_0806DF20
_080BFF76:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080BFF7C
sub_080BFF7C: @ 0x080BFF7C
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	mov r0, sp
	movs r1, #0
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	ldr r2, [r4, #0x14]
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _080BFFAA
	mov r2, sp
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsrs r1, r0, #2
	adds r0, r0, r1
	strh r0, [r2]
	mov r1, sp
	movs r0, #3
	strh r0, [r1, #6]
	b _080BFFB8
_080BFFAA:
	mov r1, sp
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	strh r0, [r1]
	mov r0, sp
	strh r2, [r0, #6]
_080BFFB8:
	ldr r0, [r4, #0x40]
	str r0, [sp, #8]
	ldr r0, [r4, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	mov r0, sp
	ldrh r0, [r0, #6]
	cmp r0, #3
	bne _080BFFE2
	movs r2, #0xb0
	lsls r2, r2, #0xb
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bge _080BFFDA
	rsbs r2, r2, #0
_080BFFDA:
	ldr r1, _080BFFEC @ =0xFFFE8000
	adds r0, r2, #0
	bl sub_08021248
_080BFFE2:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BFFEC: .4byte 0xFFFE8000

	thumb_func_start sub_080BFFF0
sub_080BFFF0: @ 0x080BFFF0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #0xb]
	cmp r0, #7
	bls _080BFFFC
	b _080C0246
_080BFFFC:
	lsls r0, r0, #2
	ldr r1, _080C0008 @ =_080C000C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C0008: .4byte _080C000C
_080C000C: @ jump table
	.4byte _080C002C @ case 0
	.4byte _080C0036 @ case 1
	.4byte _080C0046 @ case 2
	.4byte _080C007C @ case 3
	.4byte _080C00C0 @ case 4
	.4byte _080C0120 @ case 5
	.4byte _080C0160 @ case 6
	.4byte _080C021C @ case 7
_080C002C:
	adds r0, r6, #0
	bl sub_0806BC40
	movs r0, #1
	strb r0, [r6, #0xb]
_080C0036:
	adds r0, r6, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #2
	b _080C0244
_080C0046:
	adds r0, r6, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080C0056
	b _080C0246
_080C0056:
	adds r0, r6, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r6, #0x18]
	ldr r0, _080C0078 @ =0xFFFD0000
	str r0, [r6, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r6, #0x54]
	movs r0, #3
	b _080C0244
	.align 2, 0
_080C0078: .4byte 0xFFFD0000
_080C007C:
	ldr r1, [r6, #0x18]
	ldr r2, _080C0098 @ =0x08528908
	adds r0, r6, #0
	movs r3, #0
	bl sub_0806CAF8
	adds r4, r0, #0
	movs r5, #4
	ands r4, r5
	cmp r4, #0
	beq _080C009C
	movs r0, #7
	b _080C0244
	.align 2, 0
_080C0098: .4byte 0x08528908
_080C009C:
	ldr r1, [r6, #0x4c]
	ldr r0, _080C00BC @ =0xFFFE8000
	cmp r1, r0
	bge _080C00A6
	b _080C0246
_080C00A6:
	adds r0, r6, #0
	bl sub_0806BC40
	adds r0, r6, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	strb r5, [r6, #0xb]
	b _080C0246
	.align 2, 0
_080C00BC: .4byte 0xFFFE8000
_080C00C0:
	ldr r1, [r6, #0x18]
	ldr r2, _080C011C @ =0x08528908
	adds r0, r6, #0
	movs r3, #0
	bl sub_0806CAF8
	adds r0, r6, #0
	adds r0, #0x6e
	ldrh r4, [r0]
	cmp r4, #5
	beq _080C00D8
	b _080C0246
_080C00D8:
	adds r0, r6, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r6, #0
	movs r1, #0x30
	movs r2, #0xc
	movs r3, #0x11
	bl sub_080458E4
	adds r0, r6, #0
	movs r1, #0x30
	movs r2, #6
	movs r3, #0x10
	bl sub_080458E4
	movs r0, #0xa0
	lsls r0, r0, #0xa
	str r0, [r6, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r6, #0x4c]
	ldr r0, [r6, #0x14]
	movs r1, #1
	orrs r0, r1
	str r0, [r6, #0x14]
	movs r0, #0x87
	bl sub_080D7910
	strb r4, [r6, #0xb]
	b _080C0246
	.align 2, 0
_080C011C: .4byte 0x08528908
_080C0120:
	ldr r1, [r6, #0x18]
	ldr r2, _080C0158 @ =0x08528908
	adds r0, r6, #0
	movs r3, #0
	bl sub_0806CAF8
	adds r4, r0, #0
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	bne _080C0138
	b _080C0246
_080C0138:
	adds r0, r6, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, [r6, #0x14]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x14]
	ldr r0, _080C015C @ =0x00000127
	bl sub_080D7910
	movs r0, #6
	b _080C0244
	.align 2, 0
_080C0158: .4byte 0x08528908
_080C015C: .4byte 0x00000127
_080C0160:
	ldr r1, [r6, #0x18]
	ldr r2, _080C020C @ =0x08528908
	adds r0, r6, #0
	movs r3, #0
	bl sub_0806CAF8
	adds r4, r0, #0
	ldr r1, [r6, #0x18]
	movs r0, #0x1f
	muls r0, r1, r0
	movs r1, #0x20
	bl __divsi3
	str r0, [r6, #0x18]
	ldr r1, _080C0210 @ =0x00007FFF
	cmp r0, r1
	ble _080C0232
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _080C0246
	movs r2, #3
	ands r4, r2
	cmp r4, #0
	beq _080C0196
	movs r0, #0
	str r0, [r6, #0x18]
_080C0196:
	ldr r1, [r6, #0x18]
	ldr r0, _080C0214 @ =0x0000BFFF
	cmp r1, r0
	ble _080C0246
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	ands r0, r2
	cmp r0, #0
	bne _080C0246
	movs r0, #0x10
	bl sub_0802D5EC
	lsls r0, r0, #0x10
	ldr r5, [r6, #0x40]
	adds r5, r5, r0
	movs r0, #4
	bl sub_0802D5EC
	lsls r0, r0, #0x10
	ldr r4, [r6, #0x44]
	adds r4, r4, r0
	movs r0, #0xc0
	lsls r0, r0, #0xc
	adds r4, r4, r0
	bl sub_08000A90
	adds r2, r0, #0
	movs r7, #1
	ands r2, r7
	adds r2, #4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #6
	bl sub_08045CEC
	adds r4, r0, #0
	cmp r4, #0
	beq _080C0246
	strb r7, [r4, #0xf]
	movs r2, #0x80
	lsls r2, r2, #8
	str r2, [r4, #0x48]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080C01FE
	rsbs r0, r2, #0
	str r0, [r4, #0x48]
_080C01FE:
	bl sub_08000A90
	ldr r1, _080C0218 @ =0x000003FF
	ands r1, r0
	rsbs r1, r1, #0
	str r1, [r4, #0x54]
	b _080C0246
	.align 2, 0
_080C020C: .4byte 0x08528908
_080C0210: .4byte 0x00007FFF
_080C0214: .4byte 0x0000BFFF
_080C0218: .4byte 0x000003FF
_080C021C:
	ldr r1, [r6, #0x18]
	ldr r2, _080C024C @ =0x08528908
	adds r0, r6, #0
	movs r3, #0
	bl sub_0806CAF8
	adds r4, r0, #0
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _080C0246
_080C0232:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0
	strb r0, [r6, #0xa]
	strb r0, [r6, #0xc]
_080C0244:
	strb r0, [r6, #0xb]
_080C0246:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C024C: .4byte 0x08528908

	thumb_func_start sub_080C0250
sub_080C0250: @ 0x080C0250
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x6b
	bl sub_080D7910
	movs r6, #0x1a
_080C025C:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _080C0310 @ =sub_0806C5AC
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	beq _080C0302
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	bl sub_08000A90
	movs r1, #7
	ands r1, r0
	lsls r1, r1, #0xe
	movs r0, #0x80
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r5, #0x20]
	muls r0, r1, r0
	str r0, [r4, #0x48]
	bl sub_08000A90
	movs r1, #0xf
	ands r1, r0
	subs r1, #8
	lsls r1, r1, #0xc
	ldr r7, _080C0314 @ =0xFFFD8000
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
	ldr r0, _080C0318 @ =0x08259214
	bl sub_0803AFB8
	adds r2, r0, #0
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	ldr r1, _080C031C @ =0x0825DA58
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
	ldr r0, _080C0320 @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	bl sub_08000A90
	movs r1, #0xf
	ands r0, r1
	adds r0, #0x28
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x65
	strb r6, [r0]
_080C0302:
	adds r6, #1
	cmp r6, #0x20
	ble _080C025C
	movs r0, #1
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080C0310: .4byte sub_0806C5AC
_080C0314: .4byte 0xFFFD8000
_080C0318: .4byte 0x08259214
_080C031C: .4byte 0x0825DA58
_080C0320: .4byte sub_0803B9D0

	thumb_func_start sub_080C0324
sub_080C0324: @ 0x080C0324
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _080C0348 @ =0x08259214
	ldr r2, _080C034C @ =0x0825C320
	ldr r0, _080C0350 @ =0x0825DA58
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C0354
	adds r0, r4, #0
	bl sub_08000E14
	b _080C03C0
	.align 2, 0
_080C0348: .4byte 0x08259214
_080C034C: .4byte 0x0825C320
_080C0350: .4byte 0x0825DA58
_080C0354:
	adds r0, r4, #0
	bl sub_0806B04C
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x13
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _080C038C @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080C0390
	movs r0, #3
	strb r0, [r4, #0xa]
	b _080C03C0
	.align 2, 0
_080C038C: .4byte gEwramData
_080C0390:
	ldr r1, _080C03C8 @ =sub_080BFF7C
	ldr r2, _080C03CC @ =sub_080C0478
	adds r0, r4, #0
	bl sub_0806D244
	adds r0, r4, #0
	bl sub_0806B1FC
	adds r0, r4, #0
	bl sub_0806AF98
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r0, [r1]
	subs r0, #0x10
	movs r2, #0
	strh r0, [r1]
	adds r3, r4, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	strb r2, [r4, #0xa]
_080C03C0:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C03C8: .4byte sub_080BFF7C
_080C03CC: .4byte sub_080C0478

	thumb_func_start sub_080C03D0
sub_080C03D0: @ 0x080C03D0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0806CC20
	cmp r0, #0
	bne _080C0472
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080C043E
	cmp r0, #1
	bgt _080C03EC
	cmp r0, #0
	beq _080C03F6
	b _080C0460
_080C03EC:
	cmp r0, #2
	beq _080C0446
	cmp r0, #3
	beq _080C0458
	b _080C0460
_080C03F6:
	ldrb r5, [r4, #0xb]
	cmp r5, #0
	bne _080C0460
	bl sub_08000A90
	movs r1, #0x3f
	ands r1, r0
	cmp r1, #0
	bne _080C041C
	bl sub_08000A90
	adds r1, r0, #0
	movs r0, #1
	ands r1, r0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080C041C:
	adds r0, r4, #0
	movs r1, #0xc8
	movs r2, #0x50
	bl sub_0806E29C
	cmp r0, #0
	bne _080C0434
	adds r0, r4, #0
	bl sub_0806D54C
	cmp r0, #0
	beq _080C0460
_080C0434:
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	b _080C0460
_080C043E:
	adds r0, r4, #0
	bl sub_080BFFF0
	b _080C0460
_080C0446:
	adds r0, r4, #0
	bl sub_080C0250
	cmp r0, #0
	beq _080C0460
	adds r0, r4, #0
	bl sub_08000E14
	b _080C0472
_080C0458:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080C0472
_080C0460:
	adds r0, r4, #0
	bl sub_0806E314
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080C0472
	adds r0, r4, #0
	bl sub_0806DF20
_080C0472:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080C0478
sub_080C0478: @ 0x080C0478
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080C04C2
	adds r0, r4, #0
	bl sub_080683BC
	movs r2, #1
	str r2, [r4, #0x20]
	ldr r1, [r4, #0x40]
	ldr r0, [r5, #0x40]
	cmp r1, r0
	bge _080C049C
	rsbs r0, r2, #0
	str r0, [r4, #0x20]
_080C049C:
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
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080C04C2:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080C04C8
sub_080C04C8: @ 0x080C04C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	str r2, [sp, #4]
	mov sl, r3
	movs r7, #0
	cmp r7, r8
	bge _080C05C8
	movs r0, #1
	mov sb, r0
_080C04E6:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _080C0518 @ =sub_080C1454
	bl sub_08000DA0
	adds r5, r0, #0
	cmp r5, #0
	beq _080C05C8
	ldrh r3, [r6, #0x32]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r0, _080C051C @ =0x0826798C
	str r0, [sp]
	adds r0, r5, #0
	ldr r1, _080C0520 @ =0x08260320
	ldr r2, _080C0524 @ =0x082664DC
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C0528
	adds r0, r5, #0
	bl sub_08000E14
	b _080C05C8
	.align 2, 0
_080C0518: .4byte sub_080C1454
_080C051C: .4byte 0x0826798C
_080C0520: .4byte 0x08260320
_080C0524: .4byte 0x082664DC
_080C0528:
	bl sub_08000A90
	movs r1, #3
	ands r0, r1
	adds r0, #7
	adds r1, r5, #0
	adds r1, #0x65
	strb r0, [r1]
	subs r1, #9
	movs r0, #0x11
	strb r0, [r1]
	bl sub_08000A90
	mov r1, sb
	ands r0, r1
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
	bl sub_08000A90
	mov r1, sb
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
	movs r0, #0x10
	bl sub_0802D5EC
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r1, [r1]
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x42
	strh r1, [r0]
	movs r0, #0x10
	bl sub_0802D5EC
	adds r1, r6, #0
	adds r1, #0x46
	ldrh r1, [r1]
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x46
	strh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0xa
	bl sub_0802D5EC
	ldr r3, [sp, #4]
	adds r0, r3, r0
	str r0, [r5, #0x48]
	movs r0, #0x80
	lsls r0, r0, #9
	bl sub_0802D5EC
	add r0, sl
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	adds r7, #1
	cmp r7, r8
	blt _080C04E6
_080C05C8:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080C05D8
sub_080C05D8: @ 0x080C05D8
	push {lr}
	bl sub_08001D94
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _080C0610 @ =gUnk_03002CB0
	ldr r1, _080C0614 @ =0x0000100D
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r3, #0
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080C05FC
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _080C0620
_080C05FC:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080C0618
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080C061A
	movs r0, #2
	b _080C061A
	.align 2, 0
_080C0610: .4byte gUnk_03002CB0
_080C0614: .4byte 0x0000100D
_080C0618:
	movs r0, #0
_080C061A:
	cmp r0, #1
	beq _080C0620
	movs r3, #1
_080C0620:
	cmp r3, #0
	bne _080C0628
	movs r0, #0
	b _080C062C
_080C0628:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
_080C062C:
	pop {r1}
	bx r1

	thumb_func_start sub_080C0630
sub_080C0630: @ 0x080C0630
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	mov r8, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	ldrh r4, [r5, #0x20]
	ldr r3, _080C0660 @ =0x00007FFF
	ldr r2, _080C0664 @ =0x08528922
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	ldr r7, [r5, #0x14]
	strb r1, [r5, #0x13]
	adds r1, r3, #0
	ands r1, r4
	ands r3, r0
	cmp r1, r3
	ble _080C0668
	subs r0, r1, r3
	b _080C066A
	.align 2, 0
_080C0660: .4byte 0x00007FFF
_080C0664: .4byte 0x08528922
_080C0668:
	subs r0, r3, r1
_080C066A:
	movs r1, #4
	bl __divsi3
	str r0, [r5, #0x14]
	cmp r6, #0
	bne _080C0686
	ldr r0, [r5, #0x14]
	adds r1, r0, #0
	cmp r1, #0
	bge _080C0680
	adds r0, #0xf
_080C0680:
	asrs r0, r0, #4
	strh r0, [r5, #0x22]
	b _080C068A
_080C0686:
	strh r6, [r5, #0x22]
	ldr r1, [r5, #0x14]
_080C068A:
	mov r2, r8
	adds r0, r1, r2
	str r0, [r5, #0x14]
	cmp r7, #0
	bge _080C0698
	rsbs r0, r0, #0
	str r0, [r5, #0x14]
_080C0698:
	movs r0, #1
	strb r0, [r5, #0xb]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C06A8
sub_080C06A8: @ 0x080C06A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	ldrh r6, [r5, #0x20]
	movs r0, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r5, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	cmp r1, #0
	bge _080C0708
	adds r0, r4, #0
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	rsbs r1, r1, #0
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	lsls r1, r1, #0x10
	b _080C0714
_080C0708:
	adds r0, r4, #0
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
_080C0714:
	lsrs r0, r1, #0x10
	mov sb, r0
	lsls r0, r6, #0x10
	asrs r4, r0, #0x10
	adds r0, r4, #0
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	cmp r1, #0
	bge _080C0742
	adds r0, r4, #0
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	rsbs r1, r1, #0
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	lsls r1, r1, #0x10
	b _080C074E
_080C0742:
	adds r0, r4, #0
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
_080C074E:
	lsrs r0, r1, #0x10
	mov r8, r0
	lsls r0, r6, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x17
	adds r0, r0, r2
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	cmp r1, #0
	bge _080C078A
	adds r0, r4, #0
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	rsbs r1, r1, #0
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	lsls r1, r1, #0x10
	b _080C0796
_080C078A:
	adds r0, r4, #0
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
_080C0796:
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r0, r6, #0x10
	asrs r4, r0, #0x10
	adds r0, r4, #0
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	cmp r1, #0
	bge _080C07C4
	adds r0, r4, #0
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	rsbs r1, r1, #0
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	lsls r1, r1, #0x10
	b _080C07D0
_080C07C4:
	adds r0, r4, #0
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
_080C07D0:
	lsrs r1, r1, #0x10
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bgt _080C07EC
	mov r2, sb
	lsls r0, r2, #0x10
	rsbs r0, r0, #0
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r2, r8
	lsls r0, r2, #0x10
	rsbs r0, r0, #0
	lsrs r0, r0, #0x10
	mov r8, r0
_080C07EC:
	lsls r0, r7, #0x10
	asrs r7, r0, #0x10
	mov r0, sb
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r0, r7, r4
	mov r2, sl
	lsls r3, r2, #0x10
	asrs r3, r3, #0x10
	adds r0, r3, r0
	strh r0, [r5, #0x24]
	ldr r2, [sp, #4]
	lsls r0, r2, #0x10
	asrs r6, r0, #0x10
	mov r0, r8
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, r0
	strh r0, [r5, #0x26]
	subs r4, r7, r4
	adds r3, r3, r4
	strh r3, [r5, #0x28]
	subs r2, r6, r2
	adds r1, r1, r2
	strh r1, [r5, #0x2a]
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	beq _080C0906
	cmp r0, #1
	bgt _080C0834
	cmp r0, #0
	beq _080C0840
	b _080C09CA
_080C0834:
	cmp r0, #2
	beq _080C089C
	cmp r0, #3
	bne _080C083E
	b _080C0962
_080C083E:
	b _080C09CA
_080C0840:
	adds r1, r6, #0
	adds r1, #0xb
	adds r0, r7, #0
	bl sub_080C05D8
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	beq _080C0860
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r0, [r1]
	adds r0, #6
	adds r0, r2, r0
	strh r0, [r1]
	b _080C0864
_080C0860:
	movs r1, #1
	str r1, [sp, #8]
_080C0864:
	adds r0, r5, #0
	bl sub_08002188
	adds r0, r5, #0
	bl sub_080021A8
	movs r2, #0x24
	ldrsh r0, [r5, r2]
	movs r2, #0x26
	ldrsh r1, [r5, r2]
	adds r1, #6
	bl sub_080C05D8
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080C088C
	ldrh r0, [r5, #0x26]
	adds r0, r1, r0
	strh r0, [r5, #0x26]
_080C088C:
	movs r1, #0x28
	ldrsh r0, [r5, r1]
	movs r2, #0x2a
	ldrsh r1, [r5, r2]
	adds r1, #6
	bl sub_080C05D8
	b _080C08F6
_080C089C:
	adds r1, r6, #0
	subs r1, #0xb
	adds r0, r7, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	beq _080C08BC
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r0, [r1]
	subs r0, #6
	adds r0, r2, r0
	strh r0, [r1]
	b _080C08C0
_080C08BC:
	movs r0, #1
	str r0, [sp, #8]
_080C08C0:
	adds r0, r5, #0
	bl sub_08002188
	adds r0, r5, #0
	bl sub_080021A8
	movs r1, #0x24
	ldrsh r0, [r5, r1]
	movs r2, #0x26
	ldrsh r1, [r5, r2]
	subs r1, #6
	bl sub_08001C1C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080C08E8
	ldrh r0, [r5, #0x26]
	adds r0, r1, r0
	strh r0, [r5, #0x26]
_080C08E8:
	movs r1, #0x28
	ldrsh r0, [r5, r1]
	movs r2, #0x2a
	ldrsh r1, [r5, r2]
	subs r1, #6
	bl sub_08001C1C
_080C08F6:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080C09CA
	ldrh r0, [r5, #0x2a]
	adds r0, r1, r0
	strh r0, [r5, #0x2a]
	b _080C09CA
_080C0906:
	adds r0, r7, #0
	adds r0, #0xb
	adds r1, r6, #0
	bl sub_08002058
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	beq _080C0926
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, #6
	adds r0, r2, r0
	strh r0, [r1]
	b _080C092A
_080C0926:
	movs r0, #1
	str r0, [sp, #8]
_080C092A:
	adds r0, r5, #0
	bl sub_08002188
	adds r0, r5, #0
	bl sub_080021A8
	movs r1, #0x24
	ldrsh r0, [r5, r1]
	adds r0, #6
	movs r2, #0x26
	ldrsh r1, [r5, r2]
	bl sub_08002058
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080C0952
	ldrh r0, [r5, #0x24]
	adds r0, r1, r0
	strh r0, [r5, #0x24]
_080C0952:
	movs r1, #0x28
	ldrsh r0, [r5, r1]
	adds r0, #6
	movs r2, #0x2a
	ldrsh r1, [r5, r2]
	bl sub_08002058
	b _080C09BC
_080C0962:
	adds r0, r7, #0
	subs r0, #0xb
	adds r1, r6, #0
	bl sub_0800207C
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	beq _080C0982
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r1]
	subs r0, #6
	adds r0, r2, r0
	strh r0, [r1]
	b _080C0986
_080C0982:
	movs r0, #1
	str r0, [sp, #8]
_080C0986:
	adds r0, r5, #0
	bl sub_08002188
	adds r0, r5, #0
	bl sub_080021A8
	movs r1, #0x24
	ldrsh r0, [r5, r1]
	subs r0, #6
	movs r2, #0x26
	ldrsh r1, [r5, r2]
	bl sub_0800207C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080C09AE
	ldrh r0, [r5, #0x24]
	adds r0, r1, r0
	strh r0, [r5, #0x24]
_080C09AE:
	movs r1, #0x28
	ldrsh r0, [r5, r1]
	subs r0, #6
	movs r2, #0x2a
	ldrsh r1, [r5, r2]
	bl sub_0800207C
_080C09BC:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080C09CA
	ldrh r0, [r5, #0x28]
	adds r0, r1, r0
	strh r0, [r5, #0x28]
_080C09CA:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	ble _080C09E0
	ldrh r0, [r5, #0x24]
	ldrh r1, [r5, #0x28]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r5, #0x26]
	ldrh r2, [r5, #0x2a]
	b _080C09EE
_080C09E0:
	ldrh r0, [r5, #0x28]
	ldrh r1, [r5, #0x24]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r5, #0x2a]
	ldrh r2, [r5, #0x26]
_080C09EE:
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #0
	adds r0, #0x20
	ldr r1, [sp]
	adds r2, r6, #0
	bl sub_080686CC
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
