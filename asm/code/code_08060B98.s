	.include "asm/gba_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	thumb_func_start sub_08060B98
sub_08060B98: @ 0x08060B98
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, _08060BC0 @ =gEwramData
	ldr r0, [r5]
	ldr r6, _08060BC4 @ =0x0000042C
	adds r0, r0, r6
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08060BC8
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _08060C16
	.align 2, 0
_08060BC0: .4byte gEwramData
_08060BC4: .4byte 0x0000042C
_08060BC8:
	adds r0, r4, #0
	movs r1, #4
	bl sub_0805B754
	cmp r0, #0
	bne _08060BDC
	adds r0, r4, #0
	bl EntityDelete
	b _08060C16
_08060BDC:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r3, [r5]
	ldr r1, _08060C1C @ =0x00013110
	adds r0, r3, r1
	ldr r0, [r0]
	adds r0, #0x58
	ldrb r0, [r0]
	adds r4, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r4]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	adds r3, r3, r6
	ldr r0, [r3]
	movs r1, #1
	orrs r0, r1
	str r0, [r3]
_08060C16:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060C1C: .4byte 0x00013110

	thumb_func_start sub_08060c20
sub_08060c20: @ 0x08060C20
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r0, #0
	mov r8, r0
	ldr r0, _08060C50 @ =gEwramData
	ldr r5, [r0]
	adds r6, r5, #0
	adds r6, #0x60
	ldr r0, _08060C54 @ =0x0000042C
	adds r1, r5, r0
	ldr r0, [r1]
	movs r7, #1
	orrs r0, r7
	str r0, [r1]
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _08060C84
	cmp r0, #1
	bgt _08060C58
	cmp r0, #0
	beq _08060C5E
	b _08060D2E
	.align 2, 0
_08060C50: .4byte gEwramData
_08060C54: .4byte 0x0000042C
_08060C58:
	cmp r0, #0x80
	beq _08060D20
	b _08060D2E
_08060C5E:
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_0805B878
	movs r0, #0x16
	bl sub_08067934
	ldr r1, _08060C80 @ =0x00000417
	adds r0, r5, r1
	strb r7, [r0]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	movs r0, #0x90
	strb r0, [r4, #0xd]
	b _08060D2E
	.align 2, 0
_08060C80: .4byte 0x00000417
_08060C84:
	bl sub_08067A04
	cmp r0, #0
	beq _08060C92
	movs r0, #0x80
	strb r0, [r4, #0xa]
	b _08060D2E
_08060C92:
	ldrb r0, [r4, #0xb]
	cmp r0, #4
	bhi _08060D2E
	lsls r0, r0, #2
	ldr r1, _08060CA4 @ =_08060CA8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08060CA4: .4byte _08060CA8
_08060CA8: @ jump table
	.4byte _08060CBC @ case 0
	.4byte _08060D2E @ case 1
	.4byte _08060CE0 @ case 2
	.4byte _08060D0C @ case 3
	.4byte _08060D2E @ case 4
_08060CBC:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08060D2E
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	ldr r0, _08060CDC @ =0x000003B7
	adds r1, r6, r0
	movs r0, #0
	strb r0, [r1]
	b _08060D2E
	.align 2, 0
_08060CDC: .4byte 0x000003B7
_08060CE0:
	ldr r0, _08060D00 @ =0x000003B7
	adds r1, r6, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08060D04 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08060D08 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08002188
	cmp r0, #0xb6
	ble _08060D14
	movs r0, #0x20
	mov r8, r0
	b _08060D2E
	.align 2, 0
_08060D00: .4byte 0x000003B7
_08060D04: .4byte gEwramData
_08060D08: .4byte 0x00013110
_08060D0C:
	ldr r0, _08060D1C @ =0x000003B7
	adds r1, r6, r0
	movs r0, #0
	strb r0, [r1]
_08060D14:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	b _08060D2E
	.align 2, 0
_08060D1C: .4byte 0x000003B7
_08060D20:
	movs r0, #0x28
	bl sub_08012048
	adds r0, r4, #0
	movs r1, #1
	bl sub_0805B66C
_08060D2E:
	ldrb r0, [r4, #0xa]
	cmp r0, #0x80
	beq _08060D3A
	adds r0, r4, #0
	bl sub_0803F17C
_08060D3A:
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08060d48
sub_08060d48: @ 0x08060D48
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_0805B754
	cmp r0, #0
	bne _08060D5E
	adds r0, r4, #0
	bl EntityDelete
	b _08060D9E
_08060D5E:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r1, r4, #0
	adds r1, #0x42
	ldr r0, _08060DB4 @ =0x0000FFF0
	strh r0, [r1]
	ldr r0, _08060DB8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08060DBC @ =0x0000A094
	adds r0, r0, r1
	ldrh r1, [r0, #0xa]
	movs r0, #0xa0
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r4, #0x48]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
_08060D9E:
	ldr r0, _08060DB8 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08060DC0 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #1
	orrs r0, r2
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08060DB4: .4byte 0x0000FFF0
_08060DB8: .4byte gEwramData
_08060DBC: .4byte 0x0000A094
_08060DC0: .4byte 0x0000042C

	thumb_func_start sub_08060dc4
sub_08060dc4: @ 0x08060DC4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _08060E08
	cmp r0, #1
	bgt _08060DDA
	cmp r0, #0
	beq _08060DE2
	b _08060F08
_08060DDA:
	cmp r0, #0x80
	bne _08060DE0
	b _08060EF2
_08060DE0:
	b _08060F08
_08060DE2:
	ldr r0, _08060E00 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08060E04 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #1
	orrs r0, r2
	str r0, [r1]
	movs r0, #0x19
	bl sub_08067934
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _08060F08
	.align 2, 0
_08060E00: .4byte gEwramData
_08060E04: .4byte 0x0000042C
_08060E08:
	bl sub_08067A04
	cmp r0, #0
	beq _08060E16
	movs r0, #0x80
	strb r0, [r4, #0xa]
	b _08060F08
_08060E16:
	ldrb r5, [r4, #0xb]
	cmp r5, #1
	bne _08060EB4
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08060E4A
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _08060E40
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_08060E40:
	ldr r0, _08060E60 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08060E64 @ =0x00000417
	adds r0, r0, r1
	strb r5, [r0]
_08060E4A:
	adds r0, r4, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #7
	bgt _08060E68
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	b _08060F08
	.align 2, 0
_08060E60: .4byte gEwramData
_08060E64: .4byte 0x00000417
_08060E68:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #4
	beq _08060E7E
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_08060E7E:
	ldr r3, _08060EA8 @ =gEwramData
	ldr r0, [r3]
	ldr r1, _08060EAC @ =0x00013110
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, #0x58
	ldrb r0, [r1]
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r1]
	ldr r0, [r3]
	ldr r2, _08060EB0 @ =0x00000417
	adds r0, r0, r2
	movs r1, #0
	strb r1, [r0]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
	b _08060F08
	.align 2, 0
_08060EA8: .4byte gEwramData
_08060EAC: .4byte 0x00013110
_08060EB0: .4byte 0x00000417
_08060EB4:
	cmp r5, #2
	bls _08060F08
	movs r6, #0x40
	cmp r5, #4
	bne _08060F08
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #1
	bne _08060ED0
	strb r6, [r4, #0xd]
	b _08060ED8
_08060ED0:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #0
	cmp r1, #0
	bne _08060EEC
_08060ED8:
	ldr r0, _08060EE4 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08060EE8 @ =0x00000417
	adds r0, r0, r2
	strb r1, [r0]
	b _08060F08
	.align 2, 0
_08060EE4: .4byte gEwramData
_08060EE8: .4byte 0x00000417
_08060EEC:
	subs r0, #1
	strb r0, [r4, #0xd]
	b _08060F08
_08060EF2:
	movs r6, #0x40
	bl sub_08067898
	ldr r0, _08060F1C @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08060F20 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #1
	orrs r0, r2
	str r0, [r1]
_08060F08:
	ldrb r0, [r4, #0xa]
	cmp r0, #0x80
	beq _08060F14
	adds r0, r4, #0
	bl sub_0803F17C
_08060F14:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08060F1C: .4byte gEwramData
_08060F20: .4byte 0x0000042C

	thumb_func_start sub_08060f24
sub_08060f24: @ 0x08060F24
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_0805B754
	cmp r0, #0
	bne _08060F3A
	adds r0, r4, #0
	bl EntityDelete
	b _08060F84
_08060F3A:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _08060F8C @ =gEwramData
	ldr r2, [r0]
	ldr r0, _08060F90 @ =0x0000A094
	adds r1, r2, r0
	ldrh r0, [r1, #6]
	rsbs r0, r0, #0
	adds r3, r4, #0
	adds r3, #0x42
	strh r0, [r3]
	ldrh r1, [r1, #0xa]
	movs r0, #0xa0
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	adds r3, #0x16
	ldrb r0, [r3]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _08060F94 @ =0x0000042C
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
_08060F84:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08060F8C: .4byte gEwramData
_08060F90: .4byte 0x0000A094
_08060F94: .4byte 0x0000042C

	thumb_func_start sub_08060f98
sub_08060f98: @ 0x08060F98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r6, r0, #0
	add r0, sp, #8
	ldr r1, _08060FE4 @ =0x081188E4
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
	movs r0, #0
	str r0, [sp, #0x30]
	ldr r5, _08060FE8 @ =gEwramData
	ldr r4, [r5]
	movs r1, #0x60
	adds r1, r1, r4
	mov r8, r1
	movs r2, #0xaa
	mov sl, r2
	movs r7, #0x50
	movs r3, #0xff
	mov sb, r3
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	beq _08061010
	cmp r0, #1
	bgt _08060FEC
	cmp r0, #0
	beq _08060FF4
	b _0806163C
	.align 2, 0
_08060FE4: .4byte 0x081188E4
_08060FE8: .4byte gEwramData
_08060FEC:
	cmp r0, #0x80
	bne _08060FF2
	b _080615AA
_08060FF2:
	b _0806163C
_08060FF4:
	movs r0, #0x1c
	bl sub_08067934
	ldr r0, _0806100C @ =0x00000417
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	b _0806163C
	.align 2, 0
_0806100C: .4byte 0x00000417
_08061010:
	bl sub_08067A04
	cmp r0, #0
	beq _0806101C
	movs r0, #0x80
	strb r0, [r6, #0xa]
_0806101C:
	ldrb r0, [r6, #0xb]
	cmp r0, #0xb
	bls _08061024
	b _0806163C
_08061024:
	lsls r0, r0, #2
	ldr r1, _08061030 @ =_08061034
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08061030: .4byte _08061034
_08061034: @ jump table
	.4byte _08061064 @ case 0
	.4byte _0806163C @ case 1
	.4byte _080610D0 @ case 2
	.4byte _08061112 @ case 3
	.4byte _08061144 @ case 4
	.4byte _080611D8 @ case 5
	.4byte _08061244 @ case 6
	.4byte _080612FC @ case 7
	.4byte _0806149C @ case 8
	.4byte _080614B0 @ case 9
	.4byte _0806163C @ case 10
	.4byte _08061588 @ case 11
_08061064:
	bl sub_080212C8
	movs r1, #0x1e
	ands r1, r0
	cmp r1, #0
	beq _08061072
	b _0806163C
_08061072:
	ldrb r2, [r6, #0x11]
	ldr r0, _080610C0 @ =gEwramData
	ldr r1, [r0]
	lsls r0, r2, #5
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r4, r0, r1
	ldr r3, _080610C4 @ =0x000004E4
	adds r2, r4, r3
	movs r3, #0
	ldr r0, _080610C8 @ =0x00013110
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r1, [r2, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	bge _08061096
	movs r3, #1
_08061096:
	ldr r1, _080610CC @ =0x0000053C
	adds r2, r4, r1
	lsls r3, r3, #6
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	mov r0, sl
	movs r1, #0x3c
	movs r2, #0x21
	bl sub_08061824
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806110C
	movs r0, #2
	strb r0, [r6, #0xb]
	b _0806163C
	.align 2, 0
_080610C0: .4byte gEwramData
_080610C4: .4byte 0x000004E4
_080610C8: .4byte 0x00013110
_080610CC: .4byte 0x0000053C
_080610D0:
	mov r4, sl
	adds r0, r4, #0
	movs r1, #0x3c
	movs r2, #0x21
	bl sub_08061824
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _0806110C
	ldr r0, _08061104 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08061108 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x42
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r1, #0x10
	str r1, [sp, #0x30]
	cmp r4, r0
	blt _080610FE
	b _0806163C
_080610FE:
	movs r2, #0x20
	str r2, [sp, #0x30]
	b _0806163C
	.align 2, 0
_08061104: .4byte gEwramData
_08061108: .4byte 0x00013110
_0806110C:
	movs r0, #3
	strb r0, [r6, #0xb]
	b _0806163C
_08061112:
	ldrb r1, [r6, #0xc]
	cmp r1, #0
	bne _08061128
	movs r0, #0x60
	strb r0, [r6, #0xd]
	adds r0, r1, #1
	strb r0, [r6, #0xc]
	movs r0, #0xb6
	lsls r0, r0, #1
	bl sub_08013EEC
_08061128:
	ldrb r1, [r6, #0xd]
	cmp r1, #0
	beq _08061130
	b _0806163C
_08061130:
	ldr r0, _08061140 @ =0x000003B7
	add r0, r8
	strb r1, [r0]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xc]
	b _0806163C
	.align 2, 0
_08061140: .4byte 0x000003B7
_08061144:
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _08061182
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
	movs r0, #0xb8
	lsls r0, r0, #1
	bl PlaySong
	ldrb r0, [r6, #0xc]
	adds r0, #1
	strb r0, [r6, #0xc]
_08061182:
	ldrb r1, [r6, #0xd]
	adds r0, r1, #0
	adds r0, #0xff
	strb r0, [r6, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080611B8
	ldr r0, _080611B0 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _080611B4 @ =0x00013110
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
	b _080612E6
	.align 2, 0
_080611B0: .4byte gEwramData
_080611B4: .4byte 0x00013110
_080611B8:
	ldr r0, _080611D0 @ =gEwramData
	ldr r0, [r0]
	ldr r4, _080611D4 @ =0x00013110
	adds r0, r0, r4
	ldr r1, [r0]
	adds r1, #0x5a
	ldrb r2, [r1]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	b _080612E6
	.align 2, 0
_080611D0: .4byte gEwramData
_080611D4: .4byte 0x00013110
_080611D8:
	ldrb r1, [r6, #0xd]
	adds r0, r1, #0
	adds r0, #0xff
	strb r0, [r6, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0806120C
	ldr r0, _08061204 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08061208 @ =0x00013110
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
	b _08061222
	.align 2, 0
_08061204: .4byte gEwramData
_08061208: .4byte 0x00013110
_0806120C:
	ldr r0, _0806123C @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08061240 @ =0x00013110
	adds r0, r0, r2
	ldr r1, [r0]
	adds r1, #0x5a
	ldrb r2, [r1]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
_08061222:
	ldrb r0, [r6, #0xd]
	ldrb r1, [r6, #0x14]
	lsls r1, r1, #2
	add r1, sp
	adds r1, #8
	ldr r2, [r1]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	asrs r1, r1, #1
	b _0806129A
	.align 2, 0
_0806123C: .4byte gEwramData
_08061240: .4byte 0x00013110
_08061244:
	ldrb r1, [r6, #0xd]
	adds r0, r1, #0
	adds r0, #0xff
	strb r0, [r6, #0xd]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08061278
	ldr r0, _08061270 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _08061274 @ =0x00013110
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
	b _0806128E
	.align 2, 0
_08061270: .4byte gEwramData
_08061274: .4byte 0x00013110
_08061278:
	ldr r0, _080612F4 @ =gEwramData
	ldr r0, [r0]
	ldr r4, _080612F8 @ =0x00013110
	adds r0, r0, r4
	ldr r1, [r0]
	adds r1, #0x5a
	ldrb r2, [r1]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
_0806128E:
	ldrb r0, [r6, #0xd]
	ldrb r1, [r6, #0x14]
	lsls r1, r1, #2
	add r1, sp
	adds r1, #8
	ldr r1, [r1]
_0806129A:
	bl __modsi3
	adds r5, r0, #0
	cmp r5, #0
	bne _080612E6
	movs r0, #0xb8
	lsls r0, r0, #1
	bl PlaySong
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
	ldrb r0, [r6, #0x14]
	adds r0, #1
	strb r0, [r6, #0x14]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa
	bne _080612E6
	strb r5, [r6, #0x14]
_080612E6:
	movs r0, #0x52
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0801D028
	b _0806163C
	.align 2, 0
_080612F4: .4byte gEwramData
_080612F8: .4byte 0x00013110
_080612FC:
	ldrb r7, [r6, #0xc]
	cmp r7, #1
	beq _08061368
	cmp r7, #1
	bgt _0806130C
	cmp r7, #0
	beq _0806131A
	b _08061486
_0806130C:
	cmp r7, #2
	bne _08061312
	b _08061424
_08061312:
	cmp r7, #3
	bne _08061318
	b _08061452
_08061318:
	b _08061486
_0806131A:
	ldr r1, _08061390 @ =0x000003B7
	add r1, r8
	movs r0, #1
	strb r0, [r1]
	mov r0, sb
	lsrs r4, r0, #1
	adds r0, r4, #0
	adds r0, #8
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xc]
	adds r0, #1
	strb r0, [r6, #0xc]
	ldr r0, _08061394 @ =0x0000816C
	bl PlaySong
	ldr r0, _08061398 @ =0x00000197
	bl PlaySong
	ldr r0, _0806139C @ =0x00000169
	bl PlaySong
	movs r5, #0x80
	lsls r5, r5, #9
	str r7, [sp]
	str r4, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	adds r3, r5, #0
	bl sub_0803D18C
	str r7, [sp]
	str r4, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	adds r3, r5, #0
	bl sub_0803CDF0
_08061368:
	ldrb r1, [r6, #0xd]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080613A8
	ldr r0, _080613A0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080613A4 @ =0x00013110
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
	b _080613BE
	.align 2, 0
_08061390: .4byte 0x000003B7
_08061394: .4byte 0x0000816C
_08061398: .4byte 0x00000197
_0806139C: .4byte 0x00000169
_080613A0: .4byte gEwramData
_080613A4: .4byte 0x00013110
_080613A8:
	ldr r0, _0806141C @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08061420 @ =0x00013110
	adds r0, r0, r2
	ldr r1, [r0]
	adds r1, #0x5a
	ldrb r2, [r1]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
_080613BE:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08061486
	movs r0, #0x40
	bl sub_08000EA8
	movs r4, #0x80
	lsls r4, r4, #9
	str r4, [sp]
	mov r3, sb
	str r3, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	movs r3, #0
	bl sub_0803D18C
	str r4, [sp]
	mov r4, sb
	str r4, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	movs r3, #0
	bl sub_0803CDF0
	strb r4, [r6, #0xd]
	ldrb r0, [r6, #0xc]
	adds r0, #1
	strb r0, [r6, #0xc]
	ldr r0, _0806141C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08061420 @ =0x00013110
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, #0x5a
	ldrb r2, [r1]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	b _08061486
	.align 2, 0
_0806141C: .4byte gEwramData
_08061420: .4byte 0x00013110
_08061424:
	ldrb r0, [r6, #0xd]
	cmp r0, #0x20
	bne _08061430
	movs r0, #0x21
	bl sub_08013CF0
_08061430:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08061486
	bl sub_0803D270
	bl sub_0803CED4
	ldrb r0, [r6, #0xc]
	adds r0, #1
	strb r0, [r6, #0xc]
	movs r0, #0x40
	strb r0, [r6, #0xd]
	b _08061486
_08061452:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	movs r3, #0
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08061486
	ldr r0, _08061490 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08061494 @ =0x00013110
	adds r0, r0, r2
	ldr r1, [r0]
	adds r1, #0x5a
	ldrb r2, [r1]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	strb r3, [r6, #0xc]
	ldr r0, _08061498 @ =0x000003B7
	add r0, r8
	strb r3, [r0]
_08061486:
	movs r0, #0x80
	ldr r3, [sp, #0x30]
	orrs r3, r0
	str r3, [sp, #0x30]
	b _0806163C
	.align 2, 0
_08061490: .4byte gEwramData
_08061494: .4byte 0x00013110
_08061498: .4byte 0x000003B7
_0806149C:
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _080614A6
	adds r0, #1
	strb r0, [r6, #0xc]
_080614A6:
	movs r0, #0x80
	ldr r4, [sp, #0x30]
	orrs r4, r0
	str r4, [sp, #0x30]
	b _0806163C
_080614B0:
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	beq _080614BC
	cmp r0, #1
	beq _080614EE
	b _0806163C
_080614BC:
	ldr r0, _08061520 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08061524 @ =0x00013110
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, #0x58
	ldrb r0, [r1]
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r1]
	ldr r1, _08061528 @ =0x000003B7
	add r1, r8
	movs r0, #1
	strb r0, [r1]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r1, [r2]
	subs r0, #0x22
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r6, #0xc]
	adds r0, #1
	strb r0, [r6, #0xc]
	movs r0, #0xc0
	strb r0, [r6, #0xd]
_080614EE:
	movs r1, #0xc0
	lsls r1, r1, #7
	movs r2, #0x80
	lsls r2, r2, #0xe
	movs r3, #0x80
	lsls r3, r3, #9
	movs r0, #1
	str r0, [sp]
	adds r0, r6, #0
	bl sub_0806E140
	movs r1, #4
	ands r1, r0
	cmp r1, #0
	bne _0806152C
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x48]
	adds r0, r0, r1
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x44]
	ldr r1, [r6, #0x4c]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	b _08061542
	.align 2, 0
_08061520: .4byte gEwramData
_08061524: .4byte 0x00013110
_08061528: .4byte 0x000003B7
_0806152C:
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _08061542
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_08061542:
	adds r1, r6, #0
	adds r1, #0x42
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, r7
	blt _0806163C
	movs r4, #0
	strh r7, [r1]
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _08061568
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_08061568:
	adds r1, r6, #0
	adds r1, #0x46
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r0, _08061584 @ =0x000003B7
	add r0, r8
	strb r4, [r0]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	strb r4, [r6, #0xc]
	b _0806163C
	.align 2, 0
_08061584: .4byte 0x000003B7
_08061588:
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _0806163C
	adds r0, #1
	strb r0, [r6, #0xc]
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #4
	beq _0806163C
	adds r0, r6, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _0806163C
_080615AA:
	movs r0, #0x3a
	bl sub_08012048
	bl sub_0803CED4
	bl sub_0803D270
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_0805B878
	movs r4, #0
	mov r3, sp
	ldrh r0, [r3, #0x30]
	mov r3, r8
	strh r0, [r3, #0x30]
	adds r0, r6, #0
	movs r1, #0
	bl sub_0805B66C
	ldr r0, [r5]
	ldr r1, _0806165C @ =0x00013110
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, #0x5a
	ldrb r2, [r1]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x42
	strh r7, [r0]
	ldr r0, [r5]
	ldr r2, _08061660 @ =0x0000A094
	adds r0, r0, r2
	ldrh r1, [r0, #0xa]
	movs r0, #0xc0
	subs r0, r0, r1
	adds r1, r6, #0
	adds r1, #0x46
	strh r0, [r1]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #4
	beq _08061622
	adds r0, r6, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_08061622:
	adds r0, r6, #0
	bl sub_0803F17C
	ldr r0, _08061664 @ =0x0000816C
	bl PlaySong
	movs r0, #0x40
	bl sub_08000EA8
	movs r0, #0x81
	strb r0, [r6, #0xa]
	strb r4, [r6, #0xc]
	strb r4, [r6, #0xb]
_0806163C:
	movs r0, #0xa
	ldrsb r0, [r6, r0]
	cmp r0, #0
	blt _0806164A
	adds r0, r6, #0
	bl sub_0803F17C
_0806164A:
	ldr r0, [sp, #0x30]
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806165C: .4byte 0x00013110
_08061660: .4byte 0x0000A094
_08061664: .4byte 0x0000816C

	thumb_func_start sub_08061668
sub_08061668: @ 0x08061668
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08061690 @ =gEwramData
	ldr r0, [r5]
	ldr r1, _08061694 @ =0x0000042C
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08061698
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _080616EE
	.align 2, 0
_08061690: .4byte gEwramData
_08061694: .4byte 0x0000042C
_08061698:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0805B754
	cmp r0, #0
	bne _080616AC
	adds r0, r4, #0
	bl EntityDelete
	b _080616EE
_080616AC:
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r1, [r5]
	ldr r0, _080616F4 @ =0x0000A094
	adds r1, r1, r0
	ldrh r2, [r1, #6]
	movs r0, #0x50
	subs r0, r0, r2
	adds r2, r4, #0
	adds r2, #0x42
	strh r0, [r2]
	ldrh r1, [r1, #0xa]
	movs r0, #0xc0
	subs r0, r0, r1
	adds r2, #4
	strh r0, [r2]
	adds r2, #0x12
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	subs r2, #0x1a
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
_080616EE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080616F4: .4byte 0x0000A094

	thumb_func_start sub_080616f8
sub_080616f8: @ 0x080616F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0
	mov r8, r0
	ldr r0, _0806171C @ =gEwramData
	ldr r0, [r0]
	ldrh r5, [r0, #0x16]
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _08061734
	cmp r0, #1
	bgt _08061720
	cmp r0, #0
	beq _08061726
	b _08061814
	.align 2, 0
_0806171C: .4byte gEwramData
_08061720:
	cmp r0, #2
	beq _080617FC
	b _08061814
_08061726:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0805B66C
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_08061734:
	ldr r6, _080617A4 @ =gEwramData
	ldr r0, [r6]
	ldr r7, _080617A8 @ =0x00013110
	adds r0, r0, r7
	ldr r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r1, [r1]
	subs r1, #0x20
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r4, #0
	adds r2, #0x46
	ldrh r2, [r2]
	subs r2, #0x20
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r3, #0x40
	str r3, [sp]
	bl sub_08068AD4
	cmp r0, #0
	beq _08061814
	movs r0, #0x42
	ands r5, r0
	cmp r5, #0
	beq _08061814
	ldr r1, [r6]
	ldr r2, _080617AC @ =0x000004BE
	adds r0, r1, r2
	movs r3, #0
	ldrsh r2, [r0, r3]
	cmp r2, #0
	bne _08061814
	adds r1, r1, r7
	ldr r0, [r1]
	str r2, [r0, #0x48]
	ldr r0, [r1]
	str r2, [r0, #0x50]
	ldr r1, [r1]
	ldr r0, [r1, #0x4c]
	cmp r0, #0
	bge _0806178C
	str r2, [r1, #0x4c]
_0806178C:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _080617B0
	movs r0, #0x1e
	bl sub_08067934
	b _080617B6
	.align 2, 0
_080617A4: .4byte gEwramData
_080617A8: .4byte 0x00013110
_080617AC: .4byte 0x000004BE
_080617B0:
	movs r0, #0x1d
	bl sub_08067934
_080617B6:
	movs r3, #0
	ldr r0, _080617F0 @ =gEwramData
	ldr r5, [r0]
	ldr r1, _080617F4 @ =0x00013110
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	bge _080617CC
	movs r3, #1
_080617CC:
	adds r2, r4, #0
	adds r2, #0x58
	lsls r3, r3, #6
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	ldr r3, _080617F8 @ =0x0000042C
	adds r2, r5, r3
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	b _08061812
	.align 2, 0
_080617F0: .4byte gEwramData
_080617F4: .4byte 0x00013110
_080617F8: .4byte 0x0000042C
_080617FC:
	bl sub_08067A04
	cmp r0, #0
	beq _08061814
	movs r0, #0x80
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0805B66C
	mov r0, r8
_08061812:
	strb r0, [r4, #0xa]
_08061814:
	mov r0, r8
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08061824
sub_08061824: @ 0x08061824
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r3, r1, #0x10
	lsrs r5, r3, #0x10
	lsls r2, r2, #0x10
	ldr r0, _08061860 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08061864 @ =0x00013110
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, #0x42
	lsrs r0, r2, #0x11
	subs r0, r4, r0
	ldrh r1, [r1]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	cmp r0, r2
	bhs _0806186C
	lsrs r0, r3, #0x11
	subs r0, r4, r0
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r5
	bhs _08061868
	movs r0, #1
	rsbs r0, r0, #0
	b _0806186E
	.align 2, 0
_08061860: .4byte gEwramData
_08061864: .4byte 0x00013110
_08061868:
	movs r0, #0
	b _0806186E
_0806186C:
	movs r0, #1
_0806186E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08061874
sub_08061874: @ 0x08061874
	ldr r0, _08061888 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0806188C @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #1
	orrs r0, r2
	str r0, [r1]
	bx lr
	.align 2, 0
_08061888: .4byte gEwramData
_0806188C: .4byte 0x0000042C

	thumb_func_start sub_08061890
sub_08061890: @ 0x08061890
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080618A0
	cmp r0, #1
	beq _080618AE
	b _080618BE
_080618A0:
	movs r0, #0x1a
	bl sub_08067934
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _080618BE
_080618AE:
	bl sub_08067A04
	cmp r0, #0
	beq _080618BE
	adds r0, r4, #0
	movs r1, #1
	bl sub_0805B66C
_080618BE:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080618c8
sub_080618c8: @ 0x080618C8
	ldr r0, _080618DC @ =gEwramData
	ldr r1, [r0]
	ldr r0, _080618E0 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #1
	orrs r0, r2
	str r0, [r1]
	bx lr
	.align 2, 0
_080618DC: .4byte gEwramData
_080618E0: .4byte 0x0000042C

	thumb_func_start sub_080618e4
sub_080618e4: @ 0x080618E4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080618F4
	cmp r0, #1
	beq _08061902
	b _0806191A
_080618F4:
	movs r0, #0x1b
	bl sub_08067934
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _0806191A
_08061902:
	bl sub_08067A04
	cmp r0, #0
	beq _0806191A
	bl sub_08067898
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0806191A:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08061924
sub_08061924: @ 0x08061924
	bx lr
	.align 2, 0

	thumb_func_start sub_08061928
sub_08061928: @ 0x08061928
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08061938
	cmp r0, #1
	beq _08061960
	b _08061970
_08061938:
	ldr r0, _08061958 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0806195C @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #1
	orrs r0, r2
	str r0, [r1]
	movs r0, #0x17
	bl sub_08067934
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _08061970
	.align 2, 0
_08061958: .4byte gEwramData
_0806195C: .4byte 0x0000042C
_08061960:
	bl sub_08067A04
	cmp r0, #0
	beq _08061970
	adds r0, r4, #0
	movs r1, #1
	bl sub_0805B66C
_08061970:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08061978
sub_08061978: @ 0x08061978
	ldr r0, _0806198C @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08061990 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #1
	orrs r0, r2
	str r0, [r1]
	bx lr
	.align 2, 0
_0806198C: .4byte gEwramData
_08061990: .4byte 0x0000042C

	thumb_func_start sub_08061994
sub_08061994: @ 0x08061994
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080619D4
	cmp r0, #1
	bgt _080619A8
	cmp r0, #0
	beq _080619AE
	b _080619F6
_080619A8:
	cmp r0, #0x80
	beq _080619EE
	b _080619F6
_080619AE:
	ldr r0, _080619CC @ =gEwramData
	ldr r1, [r0]
	ldr r0, _080619D0 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #1
	orrs r0, r2
	str r0, [r1]
	movs r0, #0x18
	bl sub_08067934
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _080619F6
	.align 2, 0
_080619CC: .4byte gEwramData
_080619D0: .4byte 0x0000042C
_080619D4:
	bl sub_08067A04
	cmp r0, #0
	beq _080619F6
	bl sub_08067898
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _080619F6
_080619EE:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0805B66C
_080619F6:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08061a00
sub_08061a00: @ 0x08061A00
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x29
	bl sub_08012078
	cmp r0, #0
	bne _08061A2C
	ldr r6, _08061A3C @ =gEwramData
	ldr r2, [r6]
	ldr r1, _08061A40 @ =0x00013110
	adds r0, r2, r1
	ldr r0, [r0]
	adds r0, #0x42
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r5, _08061A44 @ =0x0000A094
	adds r2, r2, r5
	movs r3, #6
	ldrsh r0, [r2, r3]
	adds r1, r1, r0
	cmp r1, #0x7f
	bgt _08061A48
_08061A2C:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _08061AAC
	.align 2, 0
_08061A3C: .4byte gEwramData
_08061A40: .4byte 0x00013110
_08061A44: .4byte 0x0000A094
_08061A48:
	adds r0, r4, #0
	bl sub_08061FDC
	cmp r0, #0
	bne _08061A62
	adds r0, r4, #0
	movs r1, #1
	bl sub_0805B66C
	adds r0, r4, #0
	bl EntityDelete
	b _08061AAC
_08061A62:
	ldr r0, [r6]
	adds r0, r0, r5
	ldrh r1, [r0, #6]
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r0, r2, #0
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, _08061AB4 @ =0xFFFF0000
	str r0, [r4, #0x48]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r1, [r6]
	ldr r3, _08061AB8 @ =0x0000042C
	adds r1, r1, r3
	ldr r0, [r1]
	movs r2, #1
	orrs r0, r2
	str r0, [r1]
_08061AAC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08061AB4: .4byte 0xFFFF0000
_08061AB8: .4byte 0x0000042C

	thumb_func_start sub_08061abc
sub_08061abc: @ 0x08061ABC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r6, _08061ADC @ =gEwramData
	ldr r5, [r6]
	movs r7, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _08061B52
	cmp r0, #2
	bgt _08061AE0
	cmp r0, #0
	beq _08061AEC
	cmp r0, #1
	beq _08061B04
	b _08061D02
	.align 2, 0
_08061ADC: .4byte gEwramData
_08061AE0:
	cmp r0, #3
	beq _08061B64
	cmp r0, #0x80
	bne _08061AEA
	b _08061CF6
_08061AEA:
	b _08061D02
_08061AEC:
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_0805B878
	movs r0, #0x2b
	bl sub_08013D60
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	strb r7, [r4, #0xc]
	strb r7, [r4, #0xb]
_08061B04:
	ldr r0, _08061B3C @ =gEwramData
	ldr r2, [r0]
	ldr r0, _08061B40 @ =0x0000042C
	adds r3, r2, r0
	ldr r0, [r3]
	movs r1, #1
	orrs r0, r1
	str r0, [r3]
	ldr r1, _08061B44 @ =0x00013110
	adds r0, r2, r1
	ldr r0, [r0]
	adds r0, #0x42
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r1, _08061B48 @ =0x0000A094
	adds r2, r2, r1
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	cmp r0, #0xbf
	bgt _08061B4C
	ldrb r0, [r4, #0xa]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	b _08061D02
	.align 2, 0
_08061B3C: .4byte gEwramData
_08061B40: .4byte 0x0000042C
_08061B44: .4byte 0x00013110
_08061B48: .4byte 0x0000A094
_08061B4C:
	movs r0, #0x20
	orrs r7, r0
	b _08061D02
_08061B52:
	movs r0, #0x1f
	bl sub_08067934
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	strb r7, [r4, #0xc]
	strb r7, [r4, #0xb]
	b _08061D02
_08061B64:
	bl sub_08067A04
	cmp r0, #0
	beq _08061B9C
	movs r0, #0x29
	bl sub_08012048
	movs r0, #0x2b
	bl sub_08013E18
	ldr r1, [r6]
	ldr r0, _08061B94 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, _08061B98 @ =0xFFFBFFFF
	ands r0, r2
	str r0, [r1]
	movs r0, #0x14
	bl sub_08013CF0
	movs r0, #0x80
	strb r0, [r4, #0xa]
	b _08061D02
	.align 2, 0
_08061B94: .4byte 0x0000042C
_08061B98: .4byte 0xFFFBFFFF
_08061B9C:
	ldrb r3, [r4, #0xb]
	cmp r3, #1
	beq _08061BB0
	cmp r3, #1
	bgt _08061BA8
	b _08061CEE
_08061BA8:
	cmp r3, #2
	bne _08061BAE
	b _08061CE4
_08061BAE:
	b _08061CEE
_08061BB0:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _08061BFC
	cmp r0, #1
	bgt _08061BC0
	cmp r0, #0
	beq _08061BC6
	b _08061CEE
_08061BC0:
	cmp r0, #2
	beq _08061CB8
	b _08061CEE
_08061BC6:
	ldr r0, [r6]
	ldr r1, _08061C18 @ =0x00013110
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, #0x58
	ldrb r2, [r1]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r2, _08061C1C @ =0x00000417
	adds r0, r5, r2
	strb r3, [r0]
	ldr r0, [r6]
	ldr r1, _08061C20 @ =0x00000427
	adds r0, r0, r1
	strb r3, [r0]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_08061BFC:
	ldr r0, _08061C24 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08061C28 @ =0x0000A094
	adds r0, r0, r2
	movs r3, #6
	ldrsh r0, [r0, r3]
	cmp r0, #0x70
	ble _08061C2C
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl sub_0800ED24
	b _08061C38
	.align 2, 0
_08061C18: .4byte 0x00013110
_08061C1C: .4byte 0x00000417
_08061C20: .4byte 0x00000427
_08061C24: .4byte gEwramData
_08061C28: .4byte 0x0000A094
_08061C2C:
	movs r1, #0x80
	lsls r1, r1, #9
	movs r0, #1
	movs r2, #0
	bl sub_0800ED24
_08061C38:
	adds r0, r4, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _08061C78 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _08061C7C @ =0x0000A094
	adds r0, r0, r3
	movs r2, #6
	ldrsh r0, [r0, r2]
	adds r1, r1, r0
	ldr r0, _08061C80 @ =0x0000011F
	cmp r1, r0
	bgt _08061C84
	movs r0, #0x28
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _08061CEE
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
	b _08061CEE
	.align 2, 0
_08061C78: .4byte gEwramData
_08061C7C: .4byte 0x0000A094
_08061C80: .4byte 0x0000011F
_08061C84:
	ldr r0, _08061CB0 @ =0x00000127
	cmp r1, r0
	bgt _08061CA4
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #2
	beq _08061CA0
	adds r0, r4, #0
	movs r1, #2
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
_08061CA0:
	ldr r0, _08061CB4 @ =0xFFFF8000
	str r0, [r4, #0x48]
_08061CA4:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	b _08061CEE
	.align 2, 0
_08061CB0: .4byte 0x00000127
_08061CB4: .4byte 0xFFFF8000
_08061CB8:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl sub_0800ED24
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08061CEE
	ldr r3, _08061CE0 @ =0x00000417
	adds r0, r5, r3
	strb r7, [r0]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	strb r7, [r4, #0xc]
	b _08061CEE
	.align 2, 0
_08061CE0: .4byte 0x00000417
_08061CE4:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl sub_0800ED24
_08061CEE:
	adds r0, r4, #0
	bl sub_0803F17C
	b _08061D02
_08061CF6:
	ldr r1, _08061D0C @ =0x00000427
	adds r0, r5, r1
	strb r7, [r0]
	adds r0, r4, #0
	bl sub_08062020
_08061D02:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08061D0C: .4byte 0x00000427

	thumb_func_start sub_08061d10
sub_08061d10: @ 0x08061D10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	ldr r6, _08061D3C @ =gEwramData
	ldr r5, [r6]
	movs r0, #0
	mov sb, r0
	movs r1, #0x60
	adds r1, r1, r5
	mov sl, r1
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _08061D62
	cmp r0, #1
	bgt _08061D40
	cmp r0, #0
	beq _08061D4E
	b _08061FCC
	.align 2, 0
_08061D3C: .4byte gEwramData
_08061D40:
	cmp r0, #0x7f
	bne _08061D46
	b _08061F94
_08061D46:
	cmp r0, #0x80
	bne _08061D4C
	b _08061FC4
_08061D4C:
	b _08061FCC
_08061D4E:
	movs r0, #0x20
	bl sub_08067934
	ldr r2, _08061D84 @ =0x00000417
	adds r1, r5, r2
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_08061D62:
	bl sub_08067A04
	cmp r0, #0
	beq _08061D72
	movs r0, #0x40
	strb r0, [r4, #0xd]
	movs r0, #0x7f
	strb r0, [r4, #0xa]
_08061D72:
	ldrb r0, [r4, #0xb]
	cmp r0, #2
	beq _08061E22
	cmp r0, #2
	bgt _08061D88
	cmp r0, #0
	beq _08061D94
	b _08061FCC
	.align 2, 0
_08061D84: .4byte 0x00000417
_08061D88:
	cmp r0, #3
	beq _08061E64
	cmp r0, #4
	bne _08061D92
	b _08061F02
_08061D92:
	b _08061FCC
_08061D94:
	bl sub_080212C8
	movs r1, #0x1e
	ands r1, r0
	cmp r1, #0
	beq _08061DA2
	b _08061FCC
_08061DA2:
	ldrb r2, [r4, #0x11]
	ldr r0, _08061E00 @ =gEwramData
	ldr r1, [r0]
	lsls r0, r2, #5
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r5, r0, r1
	ldr r0, _08061E04 @ =0x000004E4
	adds r2, r5, r0
	movs r3, #0
	ldr r0, _08061E08 @ =0x00013110
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r1, [r2, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	bge _08061DC6
	movs r3, #1
_08061DC6:
	ldr r1, _08061E0C @ =0x0000053C
	adds r2, r5, r1
	lsls r3, r3, #6
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r1, #0x3c
	movs r2, #0x64
	bl sub_0805B814
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	cmp r1, #0
	bne _08061DF2
	b _08061EFC
_08061DF2:
	cmp r1, #0
	bgt _08061E10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08061E16
	b _08061FCC
	.align 2, 0
_08061E00: .4byte gEwramData
_08061E04: .4byte 0x000004E4
_08061E08: .4byte 0x00013110
_08061E0C: .4byte 0x0000053C
_08061E10:
	cmp r1, #1
	beq _08061E1C
	b _08061FCC
_08061E16:
	movs r0, #3
	strb r0, [r4, #0xb]
	b _08061FCC
_08061E1C:
	movs r0, #2
	strb r0, [r4, #0xb]
	b _08061FCC
_08061E22:
	adds r5, r4, #0
	adds r5, #0x42
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r1, #0x3c
	movs r2, #0x64
	bl sub_0805B814
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08061EFC
	ldr r0, _08061E5C @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08061E60 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r5, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r2, #0x10
	mov sb, r2
	cmp r1, r0
	blt _08061E58
	b _08061FCC
_08061E58:
	b _08061EF6
	.align 2, 0
_08061E5C: .4byte gEwramData
_08061E60: .4byte 0x00013110
_08061E64:
	ldrb r2, [r4, #0x11]
	ldr r6, _08061EC8 @ =gEwramData
	ldr r1, [r6]
	lsls r0, r2, #5
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r5, r0, r1
	ldr r0, _08061ECC @ =0x000004E4
	adds r2, r5, r0
	movs r3, #0
	ldr r0, _08061ED0 @ =0x00013110
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r1, [r2, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	bge _08061E88
	movs r3, #1
_08061E88:
	ldr r1, _08061ED4 @ =0x0000053C
	adds r2, r5, r1
	lsls r3, r3, #6
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r1, #0x3c
	movs r2, #0x64
	bl sub_0805B814
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08061EFC
	ldr r0, [r6]
	ldr r1, _08061ED8 @ =0x0000A094
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r1]
	cmp r0, #1
	beq _08061EDC
	lsls r5, r0, #5
	b _08061EDE
	.align 2, 0
_08061EC8: .4byte gEwramData
_08061ECC: .4byte 0x000004E4
_08061ED0: .4byte 0x00013110
_08061ED4: .4byte 0x0000053C
_08061ED8: .4byte 0x0000A094
_08061EDC:
	movs r5, #0x1e
_08061EDE:
	adds r0, r4, #0
	bl sub_08002188
	cmp r0, #0
	bge _08061EEA
	adds r0, #7
_08061EEA:
	asrs r1, r0, #3
	lsrs r0, r5, #1
	movs r2, #0x10
	mov sb, r2
	cmp r1, r0
	ble _08061FCC
_08061EF6:
	movs r0, #0x20
	mov sb, r0
	b _08061FCC
_08061EFC:
	movs r0, #4
	strb r0, [r4, #0xb]
	b _08061FCC
_08061F02:
	ldrb r1, [r4, #0xc]
	mov ip, r1
	cmp r1, #0
	bne _08061FCC
	ldr r2, _08061F84 @ =gEwramData
	mov r8, r2
	ldrb r1, [r4, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08061F88 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r3, r1, r0
	movs r2, #0
	ldr r5, _08061F8C @ =0x00013110
	adds r1, r1, r5
	ldr r0, [r1]
	ldr r1, [r3, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	bge _08061F30
	movs r2, #1
_08061F30:
	adds r3, #0x58
	movs r6, #1
	lsls r2, r2, #6
	ldrb r0, [r3]
	movs r7, #0x41
	rsbs r7, r7, #0
	adds r1, r7, #0
	ands r1, r0
	orrs r1, r2
	strb r1, [r3]
	mov r2, r8
	ldr r0, [r2]
	adds r0, r0, r5
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0x58
	ldrb r3, [r5]
	movs r2, #0x40
	adds r0, r2, #0
	ands r0, r3
	ands r1, r2
	cmp r0, r1
	beq _08061F72
	lsls r0, r3, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	ands r1, r6
	lsls r1, r1, #6
	adds r0, r7, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r5]
_08061F72:
	ldr r0, _08061F90 @ =0x000003B7
	add r0, sl
	mov r1, ip
	strb r1, [r0]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	b _08061FCC
	.align 2, 0
_08061F84: .4byte gEwramData
_08061F88: .4byte 0x000004E4
_08061F8C: .4byte 0x00013110
_08061F90: .4byte 0x000003B7
_08061F94:
	movs r0, #0x2a
	bl sub_08012048
	ldr r1, [r6]
	ldr r2, _08061FC0 @ =0x0000042C
	adds r1, r1, r2
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0xf
	orrs r0, r2
	str r0, [r1]
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08061FCC
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _08061FCC
	.align 2, 0
_08061FC0: .4byte 0x0000042C
_08061FC4:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0805B66C
_08061FCC:
	mov r0, sb
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08061FDC
sub_08061FDC: @ 0x08061FDC
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _08062004 @ =0x0820C028
	ldr r0, _08062008 @ =0x08252748
	ldr r1, _0806200C @ =0x0811892C
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08062010
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
	movs r0, #1
	b _08062018
	.align 2, 0
_08062004: .4byte 0x0820C028
_08062008: .4byte 0x08252748
_0806200C: .4byte 0x0811892C
_08062010:
	adds r0, r4, #0
	bl EntityDelete
	movs r0, #0
_08062018:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08062020
sub_08062020: @ 0x08062020
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0806203C @ =0x0811892C
	bl sub_0803AFB8
	bl sub_0803B980
	adds r0, r4, #0
	movs r1, #1
	bl sub_0805B66C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806203C: .4byte 0x0811892C

	thumb_func_start sub_08062040
sub_08062040: @ 0x08062040
	push {lr}
	ldr r0, _08062060 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08062064 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #1
	orrs r0, r2
	str r0, [r1]
	bl sub_0803D270
	bl sub_0803CED4
	pop {r0}
	bx r0
	.align 2, 0
_08062060: .4byte gEwramData
_08062064: .4byte 0x0000042C

	thumb_func_start sub_08062068
sub_08062068: @ 0x08062068
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	bx lr

	thumb_func_start sub_08062074
sub_08062074: @ 0x08062074
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_0805B878
	movs r0, #0x25
	bl sub_08013EEC
	adds r0, r4, #0
	movs r1, #1
	bl sub_0805B66C
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08062098
sub_08062098: @ 0x08062098
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r0, _080620BC @ =gEwramData
	ldr r0, [r0]
	movs r5, #1
	ldrb r1, [r2, #0xc]
	adds r3, r1, #0
	cmp r3, #0
	bne _080620C4
	ldr r1, _080620C0 @ =0x00000417
	adds r0, r0, r1
	strb r5, [r0]
	strb r4, [r2, #0xd]
	ldrb r0, [r2, #0xc]
	adds r0, #1
	strb r0, [r2, #0xc]
	b _080620DE
	.align 2, 0
_080620BC: .4byte gEwramData
_080620C0: .4byte 0x00000417
_080620C4:
	cmp r3, #1
	bne _080620DC
	ldrb r0, [r2, #0xd]
	subs r0, #1
	strb r0, [r2, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080620DE
	adds r0, r1, #1
	strb r0, [r2, #0xc]
	b _080620DE
_080620DC:
	movs r5, #0
_080620DE:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080620e8
sub_080620e8: @ 0x080620E8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r7, #0
	ldr r0, _08062108 @ =gEwramData
	mov r8, r0
	ldr r6, [r0]
	ldrb r5, [r4, #0xa]
	cmp r5, #1
	beq _08062148
	cmp r5, #1
	bgt _0806210C
	cmp r5, #0
	beq _08062112
	b _08062234
	.align 2, 0
_08062108: .4byte gEwramData
_0806210C:
	cmp r5, #2
	beq _08062168
	b _08062234
_08062112:
	movs r0, #0x2d
	bl sub_08013EEC
	movs r0, #0x2b
	bl sub_08012078
	adds r1, r0, #0
	cmp r1, #0
	beq _08062132
	adds r1, r4, #0
	adds r1, #0x59
	ldrb r2, [r1]
	movs r3, #8
	orrs r2, r3
	strb r2, [r1]
	b _08062236
_08062132:
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _08062144 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #1
	orrs r0, r2
	str r0, [r1]
	b _08062158
	.align 2, 0
_08062144: .4byte 0x0000042C
_08062148:
	bl sub_0800D154
	movs r0, #0x22
	bl sub_08067934
	ldr r1, _08062164 @ =0x00000417
	adds r0, r6, r1
	strb r5, [r0]
_08062158:
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	strb r7, [r4, #0xc]
	strb r7, [r4, #0xb]
	b _08062234
	.align 2, 0
_08062164: .4byte 0x00000417
_08062168:
	bl sub_08067A04
	cmp r0, #0
	beq _080621A8
	movs r0, #0x80
	strb r0, [r4, #0xa]
	movs r0, #0x2b
	bl sub_08012048
	adds r0, r4, #0
	movs r1, #1
	bl sub_0805B66C
	bl sub_0800D1F0
	ldr r0, _080621A0 @ =0x00001041
	bl sub_0805B878
	mov r1, r8
	ldr r0, [r1]
	ldr r1, _080621A4 @ =0x000254CC
	adds r0, r0, r1
	movs r1, #0x2d
	strh r1, [r0]
	movs r0, #0x2d
	bl PlaySong
	b _08062236
	.align 2, 0
_080621A0: .4byte 0x00001041
_080621A4: .4byte 0x000254CC
_080621A8:
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _080621D8
	cmp r0, #1
	bgt _080621B8
	cmp r0, #0
	beq _080621C2
	b _08062234
_080621B8:
	cmp r0, #2
	beq _08062208
	cmp r0, #3
	beq _08062216
	b _08062234
_080621C2:
	adds r0, r4, #0
	movs r1, #0x40
	bl sub_08062098
	cmp r0, #0
	bne _08062234
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	strb r7, [r4, #0xc]
	b _08062234
_080621D8:
	mov r1, r8
	ldr r0, [r1]
	ldr r1, _080621F4 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r2, r0, #0
	adds r2, #0x42
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0x9f
	ble _080621F8
	movs r7, #0x20
	b _08062234
	.align 2, 0
_080621F4: .4byte 0x00013110
_080621F8:
	movs r1, #0
	movs r0, #0x9f
	strh r0, [r2]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
	b _08062234
_08062208:
	adds r0, r4, #0
	movs r1, #0x40
	bl sub_08062098
	cmp r0, #0
	bne _08062234
	b _0806222E
_08062216:
	adds r0, r4, #0
	movs r1, #0x40
	bl sub_08062098
	cmp r0, #0
	bne _08062234
	movs r0, #0x2d
	bl sub_08013E18
	movs r0, #0x24
	bl sub_08013CF0
_0806222E:
	ldr r1, _08062240 @ =0x00000417
	adds r0, r6, r1
	strb r7, [r0]
_08062234:
	adds r0, r7, #0
_08062236:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08062240: .4byte 0x00000417

	thumb_func_start sub_08062244
sub_08062244: @ 0x08062244
	ldr r0, _08062258 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0806225C @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #1
	orrs r0, r2
	str r0, [r1]
	bx lr
	.align 2, 0
_08062258: .4byte gEwramData
_0806225C: .4byte 0x0000042C

	thumb_func_start sub_08062260
sub_08062260: @ 0x08062260
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r0, _08062294 @ =gEwramData
	mov r8, r0
	ldr r0, [r0]
	ldr r1, _08062298 @ =0x0000042C
	mov sb, r1
	add r0, sb
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _0806229C
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _080623CA
	.align 2, 0
_08062294: .4byte gEwramData
_08062298: .4byte 0x0000042C
_0806229C:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0805B754
	cmp r0, #0
	beq _0806231E
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	mov r2, r8
	ldr r3, [r2]
	ldr r0, _08062328 @ =0x0000A094
	adds r2, r3, r0
	ldrh r1, [r2, #6]
	movs r0, #0x40
	subs r0, r0, r1
	adds r6, r4, #0
	adds r6, #0x42
	movs r1, #0
	mov sl, r1
	strh r0, [r6]
	ldrh r1, [r2, #0xa]
	movs r0, #0xc0
	subs r0, r0, r1
	adds r5, r4, #0
	adds r5, #0x46
	strh r0, [r5]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r7, #0x41
	rsbs r7, r7, #0
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r2]
	ldr r2, _0806232C @ =0x00013110
	adds r3, r3, r2
	ldr r1, [r3]
	ldrh r0, [r6]
	adds r0, #0x20
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r3]
	ldrh r1, [r5]
	adds r0, #0x46
	strh r1, [r0]
	ldr r1, [r3]
	adds r1, #0x58
	ldrb r2, [r1]
	adds r0, r7, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_0805B5E8
	adds r1, r0, #0
	str r1, [r4, #0x14]
	cmp r1, #0
	bne _08062330
_0806231E:
	adds r0, r4, #0
	bl EntityDelete
	b _080623CA
	.align 2, 0
_08062328: .4byte 0x0000A094
_0806232C: .4byte 0x00013110
_08062330:
	ldrh r0, [r6]
	adds r0, #0x60
	adds r1, #0x42
	strh r0, [r1]
	ldr r1, [r4, #0x14]
	ldrh r0, [r5]
	adds r0, #1
	adds r1, #0x46
	strh r0, [r1]
	ldr r0, [r4, #0x14]
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldr r1, [r4, #0x14]
	adds r1, #0x58
	ldrb r2, [r1]
	adds r0, r7, #0
	ands r0, r2
	strb r0, [r1]
	mov r0, r8
	ldr r1, [r0]
	add r1, sb
	ldr r0, [r1]
	movs r2, #1
	orrs r0, r2
	str r0, [r1]
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
	mov r1, sl
	str r1, [sp, #8]
	ldr r1, _080623DC @ =0x040000D4
	add r2, sp, #8
	str r2, [r1]
	ldr r0, _080623E0 @ =0x06004000
	str r0, [r1, #4]
	ldr r0, _080623E4 @ =0x85000800
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add r0, sp, #0xc
	mov r2, sl
	strh r2, [r0]
	str r0, [r1]
	ldr r0, _080623E8 @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _080623EC @ =0x81000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r0, r8
	ldr r2, [r0]
	add r2, sb
	ldr r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	orrs r0, r5
	str r0, [r2]
	movs r0, #0x19
	bl sub_08013CF0
_080623CA:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080623DC: .4byte 0x040000D4
_080623E0: .4byte 0x06004000
_080623E4: .4byte 0x85000800
_080623E8: .4byte 0x0600E000
_080623EC: .4byte 0x81000400

	thumb_func_start sub_080623f0
sub_080623f0: @ 0x080623F0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r4, r0, #0
	movs r6, #0
	ldr r5, _08062424 @ =gEwramData
	ldr r1, [r5]
	ldr r0, _08062428 @ =0x0000042C
	mov r8, r0
	add r1, r8
	ldr r0, [r1]
	movs r7, #1
	orrs r0, r7
	str r0, [r1]
	movs r0, #0
	bl sub_0800C5A8
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080624A8
	cmp r0, #1
	bgt _0806242C
	cmp r0, #0
	beq _08062436
	b _0806253E
	.align 2, 0
_08062424: .4byte gEwramData
_08062428: .4byte 0x0000042C
_0806242C:
	cmp r0, #2
	beq _08062504
	cmp r0, #0x80
	beq _08062516
	b _0806253E
_08062436:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0806247A
	str r6, [sp, #8]
	ldr r1, _08062494 @ =0x040000D4
	add r0, sp, #8
	str r0, [r1]
	ldr r0, _08062498 @ =0x06004000
	str r0, [r1, #4]
	ldr r0, _0806249C @ =0x85000800
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add r0, sp, #0xc
	strh r6, [r0]
	str r0, [r1]
	ldr r0, _080624A0 @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _080624A4 @ =0x81000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, [r5]
	add r2, r8
	ldr r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r2]
	movs r0, #0x80
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_0806247A:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0806253E
	movs r0, #0x23
	bl sub_08067934
	ldrb r0, [r4, #0xa]
	adds r0, #1
	b _0806250E
	.align 2, 0
_08062494: .4byte 0x040000D4
_08062498: .4byte 0x06004000
_0806249C: .4byte 0x85000800
_080624A0: .4byte 0x0600E000
_080624A4: .4byte 0x81000400
_080624A8:
	bl sub_08067A04
	cmp r0, #0
	beq _0806253E
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	strb r6, [r4, #0xc]
	strb r6, [r4, #0xb]
	movs r5, #0x80
	lsls r5, r5, #9
	str r6, [sp]
	movs r4, #0xff
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
	ldr r2, _080624FC @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _08062500 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0x2c
	bl sub_08012048
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_0805B878
	b _0806253E
	.align 2, 0
_080624FC: .4byte gUnk_03002CB0
_08062500: .4byte 0x0000FEFF
_08062504:
	bl sub_0803D408
	cmp r0, #0
	bne _0806253E
	movs r0, #0x80
_0806250E:
	strb r0, [r4, #0xa]
	strb r6, [r4, #0xc]
	strb r6, [r4, #0xb]
	b _0806253E
_08062516:
	ldr r1, [r5]
	ldr r0, [r1, #0x60]
	orrs r0, r7
	str r0, [r1, #0x60]
	bl sub_08013788
	ldr r0, [r5]
	movs r1, #0x85
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #0
	bl sub_080127F0
	bl sub_08067898
	ldr r0, [r5]
	adds r0, #0x64
	movs r1, #0xa
	strb r1, [r0]
_0806253E:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0801D028
	ldr r0, _08062568 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0806256C @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #0x20
	orrs r0, r2
	str r0, [r1]
	adds r0, r6, #0
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08062568: .4byte gEwramData
_0806256C: .4byte 0x0000042C

	thumb_func_start sub_08062570
sub_08062570: @ 0x08062570
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	movs r1, #0
	bl sub_0805B754
	cmp r0, #0
	bne _0806258C
	adds r0, r7, #0
	bl EntityDelete
	b _08062632
_0806258C:
	adds r0, r7, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r7, #0
	bl sub_0803F17C
	ldr r5, _08062640 @ =gEwramData
	ldr r4, [r5]
	ldr r0, _08062644 @ =0x0000A094
	adds r2, r4, r0
	ldrh r1, [r2, #6]
	movs r0, #0x40
	subs r0, r0, r1
	movs r1, #0x42
	adds r1, r1, r7
	mov r8, r1
	movs r6, #0
	strh r0, [r1]
	ldrh r1, [r2, #0xa]
	movs r0, #0xc0
	subs r0, r0, r1
	movs r3, #0x46
	adds r3, r3, r7
	mov ip, r3
	strh r0, [r3]
	adds r3, r7, #0
	adds r3, #0x58
	ldrb r1, [r3]
	movs r2, #0x41
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r3]
	ldr r0, _08062648 @ =0x00013110
	adds r4, r4, r0
	ldr r1, [r4]
	mov r3, r8
	ldrh r0, [r3]
	adds r0, #0x18
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r4]
	mov r3, ip
	ldrh r1, [r3]
	adds r0, #0x46
	strh r1, [r0]
	ldr r0, [r4]
	adds r0, #0x58
	ldrb r1, [r0]
	ands r2, r1
	strb r2, [r0]
	ldr r2, [r5]
	ldr r0, _0806264C @ =0x0000042C
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #0x20
	orrs r0, r1
	str r0, [r2]
	str r6, [sp]
	ldr r1, _08062650 @ =0x040000D4
	mov r3, sp
	str r3, [r1]
	ldr r0, _08062654 @ =0x06004000
	str r0, [r1, #4]
	ldr r0, _08062658 @ =0x85000800
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add r0, sp, #4
	strh r6, [r0]
	str r0, [r1]
	ldr r0, _0806265C @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _08062660 @ =0x81000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x18
	bl sub_08013CF0
_08062632:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08062640: .4byte gEwramData
_08062644: .4byte 0x0000A094
_08062648: .4byte 0x00013110
_0806264C: .4byte 0x0000042C
_08062650: .4byte 0x040000D4
_08062654: .4byte 0x06004000
_08062658: .4byte 0x85000800
_0806265C: .4byte 0x0600E000
_08062660: .4byte 0x81000400

	thumb_func_start sub_08062664
sub_08062664: @ 0x08062664
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	movs r7, #0
	ldrb r4, [r6, #0xa]
	cmp r4, #1
	beq _080626EA
	cmp r4, #1
	bgt _0806267C
	cmp r4, #0
	beq _08062688
	b _0806287E
_0806267C:
	cmp r4, #2
	beq _0806272E
	cmp r4, #3
	bne _08062686
	b _080627F4
_08062686:
	b _0806287E
_08062688:
	ldrb r0, [r6, #0xb]
	cmp r0, #0
	bne _080626D4
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _080626C2
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
	ldrb r0, [r6, #0xc]
	adds r0, #1
	strb r0, [r6, #0xc]
	b _0806278E
_080626C2:
	bl sub_0803D408
	cmp r0, #0
	beq _0806278E
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	strb r7, [r6, #0xc]
	b _0806278E
_080626D4:
	adds r0, r6, #0
	bl sub_08062570
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	strb r7, [r6, #0xc]
	strb r7, [r6, #0xb]
	movs r0, #0xff
	strb r0, [r6, #0xd]
	b _0806278E
_080626EA:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0806278E
	movs r5, #0
	bl sub_08032DF0
	ldr r1, _08062714 @ =0x0000031F
	cmp r0, r1
	ble _08062706
	movs r5, #1
_08062706:
	cmp r5, #0
	beq _08062718
	movs r0, #0x26
	bl sub_08067934
	strb r4, [r6, #0x13]
	b _08062720
	.align 2, 0
_08062714: .4byte 0x0000031F
_08062718:
	movs r0, #0x27
	bl sub_08067934
	strb r7, [r6, #0x13]
_08062720:
	ldrb r0, [r6, #0xa]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xc]
	strb r1, [r6, #0xb]
	b _0806278E
_0806272E:
	bl sub_08067A04
	cmp r0, #0
	beq _08062788
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	strb r7, [r6, #0xc]
	strb r7, [r6, #0xb]
	movs r5, #0x80
	lsls r5, r5, #9
	str r7, [sp]
	movs r4, #0xff
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
	ldr r2, _08062780 @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _08062784 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	bl sub_080137FC
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_0805B878
	b _0806287E
	.align 2, 0
_08062780: .4byte gUnk_03002CB0
_08062784: .4byte 0x0000FEFF
_08062788:
	ldrb r0, [r6, #0xb]
	cmp r0, #0
	bne _0806279C
_0806278E:
	movs r0, #0x51
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0801D028
	b _0806287E
_0806279C:
	cmp r0, #1
	bne _080627D4
	ldr r0, _080627CC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080627D0 @ =0x00013110
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, #0x58
	ldrb r0, [r1]
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806287E
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0806287E
	.align 2, 0
_080627CC: .4byte gEwramData
_080627D0: .4byte 0x00013110
_080627D4:
	ldr r0, _080627EC @ =gEwramData
	ldr r0, [r0]
	ldr r2, _080627F0 @ =0x00013110
	adds r0, r0, r2
	ldr r1, [r0]
	adds r1, #0x58
	ldrb r2, [r1]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	b _0806287E
	.align 2, 0
_080627EC: .4byte gEwramData
_080627F0: .4byte 0x00013110
_080627F4:
	bl sub_0803D408
	cmp r0, #0
	bne _08062818
	bl sub_08067898
	movs r0, #0x2d
	bl sub_08012048
	ldr r0, _08062814 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x64
	movs r1, #0xa
	strb r1, [r0]
	b _0806287E
	.align 2, 0
_08062814: .4byte gEwramData
_08062818:
	ldrb r0, [r6, #0x13]
	cmp r0, #0
	beq _0806287E
	ldr r0, _08062860 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08062864 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r0, #0xc
	adds r1, r6, #0
	adds r1, #0x42
	movs r2, #0
	ldrsh r1, [r1, r2]
	cmp r0, r1
	ble _08062868
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #6
	beq _08062852
	adds r0, r6, #0
	movs r1, #6
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_08062852:
	ldr r0, [r6, #0x40]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r0, r1
	str r0, [r6, #0x40]
	b _0806287E
	.align 2, 0
_08062860: .4byte gEwramData
_08062864: .4byte 0x00013110
_08062868:
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _0806287E
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0806287E:
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _0806288A
	adds r0, r6, #0
	bl sub_0803F17C
_0806288A:
	ldr r0, _080628A4 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _080628A8 @ =0x0000042C
	adds r1, r1, r2
	ldr r0, [r1]
	movs r2, #0x20
	orrs r0, r2
	str r0, [r1]
	adds r0, r7, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080628A4: .4byte gEwramData
_080628A8: .4byte 0x0000042C

	thumb_func_start sub_080628AC
sub_080628AC: @ 0x080628AC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	movs r0, #0
	mov sb, r0
	ldrb r0, [r7, #0xb]
	cmp r0, #6
	bls _080628C4
	b _08062B40
_080628C4:
	lsls r0, r0, #2
	ldr r1, _080628D0 @ =_080628D4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080628D0: .4byte _080628D4
_080628D4: @ jump table
	.4byte _080628F0 @ case 0
	.4byte _0806295C @ case 1
	.4byte _080629E8 @ case 2
	.4byte _08062A40 @ case 3
	.4byte _08062A70 @ case 4
	.4byte _08062AD0 @ case 5
	.4byte _08062B3C @ case 6
_080628F0:
	ldrb r1, [r7, #0xc]
	cmp r1, #0
	bne _080628FE
	movs r0, #4
	strb r0, [r7, #0xd]
	adds r0, r1, #1
	strb r0, [r7, #0xc]
_080628FE:
	ldr r0, _08062950 @ =gUnk_03002CB0
	movs r1, #0
	strh r1, [r0]
	ldr r3, _08062954 @ =gDisplayRegisters
	strh r1, [r3, #8]
	strh r1, [r3, #0xa]
	strh r1, [r3, #0xc]
	strh r1, [r3, #0xe]
	strh r1, [r3, #0x10]
	strh r1, [r3, #0x12]
	adds r2, r3, #0
	adds r2, #0x48
	movs r0, #0xff
	strh r0, [r2]
	adds r2, #4
	movs r0, #0x10
	strh r0, [r2]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r3, #0
	adds r0, #0x4a
	strh r2, [r0]
	ldr r0, _08062958 @ =gEwramData
	ldr r0, [r0]
	strh r1, [r0, #6]
	strh r1, [r0, #4]
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08062942
	b _08062B40
_08062942:
	bl sub_0803D270
	bl sub_0803CED4
	movs r0, #1
	strb r0, [r7, #0xb]
	b _08062B40
	.align 2, 0
_08062950: .4byte gUnk_03002CB0
_08062954: .4byte gDisplayRegisters
_08062958: .4byte gEwramData
_0806295C:
	ldr r1, _080629C4 @ =gUnk_03002CB0
	ldr r0, _080629C8 @ =0x00001E01
	strh r0, [r1]
	ldr r1, _080629CC @ =gDisplayRegisters
	subs r0, #0xf8
	strh r0, [r1, #2]
	movs r0, #0xbd
	lsls r0, r0, #7
	strh r0, [r1, #4]
	movs r0, #0x16
	movs r1, #1
	bl sub_0803DD14
	movs r0, #6
	movs r1, #2
	bl sub_0803DD14
	bl sub_0803FD60
	ldr r0, _080629D0 @ =0x08119890
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0
	bl sub_0803FD9C
	ldr r0, _080629D4 @ =0x08119898
	ldr r1, _080629D8 @ =0x06008000
	movs r2, #0
	bl sub_0803FD9C
	ldr r0, _080629DC @ =0x08119FDC
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl sub_0803C918
	ldr r1, _080629E0 @ =0x0815DE6C
	movs r0, #1
	movs r2, #0
	movs r3, #0x30
	bl sub_0803F8A8
	ldr r1, _080629E4 @ =0x0815DDDC
	movs r0, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	movs r0, #2
	strb r0, [r7, #0xb]
	b _08062B40
	.align 2, 0
_080629C4: .4byte gUnk_03002CB0
_080629C8: .4byte 0x00001E01
_080629CC: .4byte gDisplayRegisters
_080629D0: .4byte 0x08119890
_080629D4: .4byte 0x08119898
_080629D8: .4byte 0x06008000
_080629DC: .4byte 0x08119FDC
_080629E0: .4byte 0x0815DE6C
_080629E4: .4byte 0x0815DDDC
_080629E8:
	adds r0, r7, #0
	bl sub_08064518
	bl sub_08065800
	ldr r4, _08062A20 @ =gDisplayRegisters
	ldr r0, _08062A24 @ =gEwramData
	ldr r3, [r0]
	ldrh r1, [r3, #4]
	lsrs r1, r1, #1
	movs r0, #0x10
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08062A28
	ldrb r0, [r7, #0xd]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08062A38
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	b _08062A38
	.align 2, 0
_08062A20: .4byte gDisplayRegisters
_08062A24: .4byte gEwramData
_08062A28:
	adds r0, r4, #0
	adds r0, #0x48
	movs r1, #0xfd
	lsls r1, r1, #6
	strh r1, [r0]
	strh r2, [r3, #4]
	movs r0, #3
	strb r0, [r7, #0xb]
_08062A38:
	ldrb r0, [r7, #0xd]
	adds r0, #1
	strb r0, [r7, #0xd]
	b _08062B40
_08062A40:
	adds r0, r7, #0
	bl sub_08064518
	bl sub_08065800
	ldrb r0, [r7, #0x15]
	cmp r0, #0xa
	bne _08062B40
	ldr r0, _08062A6C @ =gEwramData
	ldr r2, [r0]
	ldrh r0, [r2, #4]
	adds r1, r0, #1
	strh r1, [r2, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x32
	bls _08062B40
	movs r0, #0
	strh r0, [r2, #4]
	movs r0, #4
	strb r0, [r7, #0xb]
	b _08062B40
	.align 2, 0
_08062A6C: .4byte gEwramData
_08062A70:
	adds r0, r7, #0
	bl sub_08064518
	bl sub_08065800
	ldr r1, _08062ACC @ =gEwramData
	mov r8, r1
	ldr r0, [r1]
	ldrh r1, [r0, #4]
	adds r2, r1, #1
	strh r2, [r0, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x80
	bls _08062B40
	bl sub_0803D270
	bl sub_0803CED4
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
	mov r1, r8
	ldr r0, [r1]
	strh r4, [r0, #4]
	movs r0, #5
	strb r0, [r7, #0xb]
	b _08062B40
	.align 2, 0
_08062ACC: .4byte gEwramData
_08062AD0:
	adds r0, r7, #0
	bl sub_08064518
	bl sub_08065800
	ldr r0, _08062B24 @ =gEwramData
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	adds r0, #1
	movs r3, #0
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x40
	bls _08062B40
	str r3, [sp, #8]
	ldr r0, _08062B28 @ =0x040000D4
	add r1, sp, #8
	str r1, [r0]
	ldr r1, _08062B2C @ =0x0600E800
	str r1, [r0, #4]
	ldr r2, _08062B30 @ =0x85000200
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r3, [sp, #8]
	add r1, sp, #8
	str r1, [r0]
	ldr r1, _08062B34 @ =0x0600F000
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r3, [sp, #8]
	add r1, sp, #8
	str r1, [r0]
	ldr r1, _08062B38 @ =0x0600F800
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	movs r0, #6
	strb r0, [r7, #0xb]
	b _08062B40
	.align 2, 0
_08062B24: .4byte gEwramData
_08062B28: .4byte 0x040000D4
_08062B2C: .4byte 0x0600E800
_08062B30: .4byte 0x85000200
_08062B34: .4byte 0x0600F000
_08062B38: .4byte 0x0600F800
_08062B3C:
	movs r0, #1
	mov sb, r0
_08062B40:
	ldr r0, _08062B5C @ =gEwramData
	ldr r1, [r0]
	ldrh r0, [r1, #6]
	adds r0, #1
	strh r0, [r1, #6]
	mov r0, sb
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08062B5C: .4byte gEwramData

	thumb_func_start sub_08062B60
sub_08062B60: @ 0x08062B60
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r2, _08062BBC @ =EntityUpdateNothing
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _08062C0E
	ldr r0, _08062BC0 @ =0x08260390
	movs r1, #0
	bl sub_0803B800
	adds r2, r0, #0
	cmp r2, #0
	blt _08062BB0
	adds r1, r4, #0
	adds r1, #0x2c
	movs r0, #0xe
	strb r0, [r1]
	ldr r1, _08062BC4 @ =0x08267EE4
	adds r0, r4, #0
	movs r3, #0xe
	bl sub_0803B924
	ldr r0, _08062BC8 @ =sub_0803B9D0
	str r0, [r4, #4]
	cmp r5, #0
	beq _08062C06
	movs r0, #0x90
	lsls r0, r0, #9
	str r0, [r4, #0x1c]
	movs r0, #1
	bl sub_0803E654
	adds r2, r0, #0
	cmp r2, #0
	bge _08062BCC
_08062BB0:
	adds r0, r4, #0
	bl EntityDelete
	movs r0, #0
	b _08062C10
	.align 2, 0
_08062BBC: .4byte EntityUpdateNothing
_08062BC0: .4byte 0x08260390
_08062BC4: .4byte 0x08267EE4
_08062BC8: .4byte sub_0803B9D0
_08062BCC:
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
	movs r0, #0x80
	lsls r0, r0, #9
	ldr r2, [r4, #0x1c]
	movs r1, #0
	str r1, [sp]
	ldrb r1, [r3]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
_08062C06:
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
_08062C0E:
	adds r0, r4, #0
_08062C10:
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08062C18
sub_08062C18: @ 0x08062C18
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldrb r1, [r5, #0xa]
	cmp r1, #0
	beq _08062C2A
	cmp r1, #1
	beq _08062CCC
	b _08062D80
_08062C2A:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08062C3A
	b _08062D80
_08062C3A:
	strb r1, [r5, #0xd]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r5, #0x38]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r6, [r0, r1]
	adds r0, #4
	movs r1, #0
	ldrsh r5, [r0, r1]
	ldr r2, _08062C98 @ =sub_08065834
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	bne _08062C7A
	b _08062D80
_08062C7A:
	ldr r1, _08062C9C @ =0x08260390
	ldr r2, _08062CA0 @ =0x08266544
	ldr r0, _08062CA4 @ =0x08267EE4
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08062CA8
	adds r0, r4, #0
	bl EntityDelete
	b _08062D80
	.align 2, 0
_08062C98: .4byte sub_08065834
_08062C9C: .4byte 0x08260390
_08062CA0: .4byte 0x08266544
_08062CA4: .4byte 0x08267EE4
_08062CA8:
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	strh r6, [r0]
	adds r0, #4
	strh r5, [r0]
	adds r0, #0x16
	strb r1, [r0]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	b _08062D80
_08062CCC:
	ldrh r4, [r5, #0x18]
	lsls r4, r4, #0x1b
	lsrs r4, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	asrs r0, r0, #8
	lsls r0, r0, #0xa
	str r0, [r5, #0x48]
	adds r0, r4, #0
	bl sub_080009E4
	asrs r0, r0, #8
	lsls r0, r0, #0xa
	str r0, [r5, #0x4c]
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x48]
	adds r1, r1, r2
	str r1, [r5, #0x40]
	ldr r1, [r5, #0x44]
	adds r1, r1, r0
	str r1, [r5, #0x44]
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bls _08062D12
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x11
	b _08062D18
_08062D12:
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #3
_08062D18:
	strb r0, [r1]
	ldrb r0, [r5, #0xd]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08062D46
	ldrb r0, [r5, #0x16]
	cmp r0, #0
	beq _08062D38
	ldrh r0, [r5, #0x18]
	adds r0, #1
	strh r0, [r5, #0x18]
	ldr r0, [r5, #0x38]
	movs r1, #0x80
	lsls r1, r1, #2
	b _08062D42
_08062D38:
	ldrh r0, [r5, #0x18]
	subs r0, #1
	strh r0, [r5, #0x18]
	ldr r0, [r5, #0x38]
	ldr r1, _08062D88 @ =0xFFFFFE00
_08062D42:
	adds r0, r0, r1
	str r0, [r5, #0x38]
_08062D46:
	ldr r0, [r5, #0x38]
	movs r2, #0x90
	lsls r2, r2, #9
	movs r1, #0
	str r1, [sp]
	adds r4, r5, #0
	adds r4, #0x58
	ldrb r1, [r4]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	ldrb r0, [r5, #0xd]
	cmp r0, #0x3f
	bls _08062D80
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
_08062D80:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08062D88: .4byte 0xFFFFFE00

	thumb_func_start sub_08062D8C
sub_08062D8C: @ 0x08062D8C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r5, _08062DF4 @ =0x085268B8
	movs r6, #0
_08062D94:
	movs r0, #1
	bl sub_08062B60
	adds r4, r0, #0
	cmp r4, #0
	beq _08062DE4
	ldr r0, _08062DF8 @ =sub_08062C18
	str r0, [r4]
	ldrh r0, [r5, #4]
	ldrh r1, [r7, #0x20]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r0, [r5, #6]
	ldrh r1, [r7, #0x22]
	adds r0, r0, r1
	adds r0, #0x20
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	ldrb r0, [r5, #8]
	strb r0, [r4, #0xd]
	ldr r0, [r5]
	adds r1, #0x1f
	strb r0, [r1]
	bl RandomNumberGenerator
	strh r0, [r4, #0x18]
	movs r1, #1
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r4, #0x16]
	strb r6, [r4, #0x17]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
_08062DE4:
	adds r6, #1
	adds r5, #0xc
	cmp r6, #8
	ble _08062D94
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08062DF4: .4byte 0x085268B8
_08062DF8: .4byte sub_08062C18

	thumb_func_start sub_08062DFC
sub_08062DFC: @ 0x08062DFC
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r2, _08062E48 @ =gEwramData
	ldrb r1, [r4, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08062E4C @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r5, r1, r0
	ldrb r3, [r4, #0xa]
	adds r2, r3, #0
	cmp r2, #0
	bne _08062E50
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x54]
	adds r1, r1, r0
	str r1, [r4, #0x4c]
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08062F14
	adds r0, r3, #1
	strb r0, [r4, #0xa]
	strb r2, [r4, #0xc]
	strb r2, [r4, #0xb]
	str r2, [r4, #0x54]
	str r2, [r4, #0x4c]
	b _08062F14
	.align 2, 0
_08062E48: .4byte gEwramData
_08062E4C: .4byte 0x000004E4
_08062E50:
	cmp r2, #1
	bne _08062EA2
	ldrh r0, [r4, #0x18]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r0, r2
	bl sub_080009E4
	cmp r0, #0
	bge _08062E66
	adds r0, #3
_08062E66:
	asrs r1, r0, #2
	str r1, [r4, #0x4c]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	ldrh r2, [r4, #0x18]
	adds r0, r0, r2
	movs r2, #0
	strh r0, [r4, #0x18]
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08062F14
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	strb r2, [r4, #0xc]
	strb r2, [r4, #0xb]
	bl RandomNumberGenerator
	movs r1, #0x1f
	ands r1, r0
	strb r1, [r4, #0xd]
	b _08062F14
_08062EA2:
	cmp r2, #2
	bne _08062EC4
	ldrb r0, [r4, #0xd]
	subs r0, #1
	movs r1, #0
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08062F14
	movs r0, #0x12
	strb r0, [r4, #0xd]
	adds r0, r3, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	b _08062F14
_08062EC4:
	cmp r2, #3
	bne _08062F14
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08062ED2
	adds r0, #1
	strb r0, [r4, #0xc]
_08062ED2:
	movs r1, #0xf0
	lsls r1, r1, #0xf
	movs r2, #0xa0
	lsls r2, r2, #0xf
	adds r0, r4, #0
	movs r3, #4
	bl sub_0806E43C
	cmp r0, #0
	bne _08062F02
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
	b _08062F7A
_08062F02:
	ldrb r1, [r4, #0xd]
	cmp r1, #0
	beq _08062F14
	ldr r0, [r4, #0x1c]
	ldr r2, _08062F84 @ =0xFFFFF000
	adds r0, r0, r2
	str r0, [r4, #0x1c]
	subs r0, r1, #1
	strb r0, [r4, #0xd]
_08062F14:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _08062F3E
	ldrh r0, [r4, #0x3e]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	lsls r0, r0, #1
	str r0, [r4, #0x48]
	ldrh r0, [r4, #0x3e]
	bl sub_080009E4
	lsls r0, r0, #1
	str r0, [r4, #0x4c]
	ldr r2, _08062F88 @ =0x00000155
	adds r0, r2, #0
	ldrh r1, [r4, #0x3e]
	adds r0, r0, r1
	strh r0, [r4, #0x3e]
_08062F3E:
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
	ldr r0, [r4, #0x38]
	ldr r2, [r4, #0x1c]
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
	ldr r0, [r4, #0x38]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r4, #0x38]
_08062F7A:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08062F84: .4byte 0xFFFFF000
_08062F88: .4byte 0x00000155

	thumb_func_start sub_08062F8C
sub_08062F8C: @ 0x08062F8C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	mov r8, r3
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	movs r0, #1
	bl sub_08062B60
	adds r4, r0, #0
	cmp r4, #0
	beq _08063018
	ldr r0, _08062FFC @ =sub_08062DFC
	str r0, [r4]
	ldrb r0, [r5, #0x10]
	movs r1, #0
	strb r0, [r4, #0x11]
	movs r0, #0x90
	lsls r0, r0, #9
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x42
	strh r6, [r0]
	adds r0, #4
	strh r7, [r0]
	str r1, [r4, #0x48]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r4, #0x4c]
	str r1, [r4, #0x50]
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r4, #0x54]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
	movs r0, #0x14
	strb r0, [r4, #0xd]
	adds r1, #7
	movs r0, #1
	strb r0, [r1]
	mov r0, r8
	cmp r0, #0
	bne _08063000
	bl RandomNumberGenerator
	movs r1, #5
	bl __umodsi3
	adds r0, #9
	b _0806300C
	.align 2, 0
_08062FFC: .4byte sub_08062DFC
_08063000:
	bl RandomNumberGenerator
	movs r1, #7
	bl __umodsi3
	adds r0, #2
_0806300C:
	adds r1, r4, #0
	adds r1, #0x65
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #8
	strh r0, [r4, #0x3e]
_08063018:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08063024
sub_08063024: @ 0x08063024
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	mov sb, r2
	mov r8, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r0, #0
	bl sub_08062B60
	adds r4, r0, #0
	mov r1, sp
	ldr r0, _080630AC @ =0x081189A0
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	cmp r4, #0
	beq _080630D6
	ldr r0, _080630B0 @ =sub_08065858
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0x42
	strh r5, [r0]
	adds r0, #4
	strh r6, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r4, #0x48]
	ldr r1, _080630B4 @ =0xFFFF8000
	str r1, [r4, #0x4c]
	movs r2, #0x80
	lsls r2, r2, #4
	str r2, [r4, #0x50]
	ldr r3, _080630B8 @ =0xFFFFFF00
	str r3, [r4, #0x54]
	mov r5, sb
	cmp r5, #0
	beq _08063086
	rsbs r0, r0, #0
	str r0, [r4, #0x48]
	rsbs r0, r1, #0
	str r0, [r4, #0x4c]
	rsbs r0, r2, #0
	str r0, [r4, #0x50]
	rsbs r0, r3, #0
	str r0, [r4, #0x54]
_08063086:
	movs r0, #0x40
	strb r0, [r4, #0xd]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #3
	strb r0, [r1]
	mov r7, r8
	cmp r7, #0
	bne _080630BC
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	b _080630C8
	.align 2, 0
_080630AC: .4byte 0x081189A0
_080630B0: .4byte sub_08065858
_080630B4: .4byte 0xFFFF8000
_080630B8: .4byte 0xFFFFFF00
_080630BC:
	bl RandomNumberGenerator
	movs r1, #7
	bl __umodsi3
	adds r0, #2
_080630C8:
	adds r1, r4, #0
	adds r1, #0x65
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #0x80
	strb r0, [r1]
_080630D6:
	adds r0, r4, #0
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080630E8
sub_080630E8: @ 0x080630E8
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08063118
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08063160
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
	b _08063160
_08063118:
	cmp r0, #1
	bne _08063160
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
	bne _08063160
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_08063160:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08063168
sub_08063168: @ 0x08063168
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	add r3, sp, #4
	ldr r2, _080631B4 @ =0x081189AC
	ldm r2!, {r4, r5, r6}
	stm r3!, {r4, r5, r6}
	lsrs r2, r0, #0x10
	mov r8, r2
	asrs r5, r0, #0x10
	lsrs r7, r1, #0x10
	asrs r6, r1, #0x10
	ldr r2, _080631B8 @ =sub_08065834
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _080631EA
	ldr r1, _080631BC @ =0x08260390
	ldr r2, _080631C0 @ =0x08266544
	ldr r0, _080631C4 @ =0x08267EE4
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080631C8
	adds r0, r4, #0
	bl EntityDelete
	b _080631EA
	.align 2, 0
_080631B4: .4byte 0x081189AC
_080631B8: .4byte sub_08065834
_080631BC: .4byte 0x08260390
_080631C0: .4byte 0x08266544
_080631C4: .4byte 0x08267EE4
_080631C8:
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	strh r5, [r0]
	adds r0, #4
	strh r6, [r0]
	adds r0, #0x16
	strb r1, [r0]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
_080631EA:
	movs r6, #7
	movs r5, #2
_080631EE:
	movs r0, #0
	bl sub_08062B60
	adds r4, r0, #0
	cmp r4, #0
	beq _08063292
	ldr r0, _080632A4 @ =sub_080630E8
	str r0, [r4]
	bl RandomNumberGenerator
	mov r1, r8
	adds r1, #4
	ands r0, r6
	subs r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x42
	strh r1, [r0]
	bl RandomNumberGenerator
	adds r1, r7, #4
	ands r0, r6
	subs r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x46
	strh r1, [r0]
	bl RandomNumberGenerator
	ldr r1, _080632A8 @ =0x00007FFF
	ands r1, r0
	movs r0, #0xa0
	lsls r0, r0, #9
	subs r0, r0, r1
	str r0, [r4, #0x4c]
	bl RandomNumberGenerator
	adds r1, r0, #0
	ldr r0, _080632AC @ =0x000007FF
	ands r1, r0
	adds r0, #1
	adds r2, r1, r0
	str r2, [r4, #0x54]
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bge _08063248
	adds r0, #7
_08063248:
	asrs r0, r0, #3
	str r0, [r4, #0x4c]
	adds r0, r2, #0
	asrs r0, r0, #3
	str r0, [r4, #0x54]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #3
	strb r0, [r1]
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #2
	add r0, sp
	adds r0, #4
	ldr r0, [r0]
	adds r1, r4, #0
	adds r1, #0x65
	strb r0, [r1]
	subs r1, #2
	movs r0, #0x80
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	bl RandomNumberGenerator
	movs r1, #0x14
	bl __umodsi3
	adds r0, #0x20
	strb r0, [r4, #0xd]
_08063292:
	subs r5, #1
	cmp r5, #0
	bge _080631EE
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080632A4: .4byte sub_080630E8
_080632A8: .4byte 0x00007FFF
_080632AC: .4byte 0x000007FF

	thumb_func_start sub_080632B0
sub_080632B0: @ 0x080632B0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x24
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	add r3, sp, #4
	ldr r2, _08063320 @ =0x081189AC
	ldm r2!, {r4, r5, r6}
	stm r3!, {r4, r5, r6}
	add r4, sp, #0x10
	adds r3, r4, #0
	ldr r2, _08063324 @ =0x081189B8
	ldm r2!, {r5, r6, r7}
	stm r3!, {r5, r6, r7}
	ldm r2!, {r5, r7}
	stm r3!, {r5, r7}
	lsrs r6, r0, #0x10
	mov sb, r6
	asrs r6, r0, #0x10
	lsrs r7, r1, #0x10
	mov r8, r7
	asrs r7, r1, #0x10
	bl RandomNumberGenerator
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #2
	adds r4, r4, r0
	ldr r5, [r4]
	ldr r2, _08063328 @ =sub_08065834
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806335C
	ldr r1, _0806332C @ =0x08260390
	ldr r2, _08063330 @ =0x08266544
	ldr r0, _08063334 @ =0x08267EE4
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08063338
	adds r0, r4, #0
	bl EntityDelete
	b _0806335C
	.align 2, 0
_08063320: .4byte 0x081189AC
_08063324: .4byte 0x081189B8
_08063328: .4byte sub_08065834
_0806332C: .4byte 0x08260390
_08063330: .4byte 0x08266544
_08063334: .4byte 0x08267EE4
_08063338:
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	strh r6, [r0]
	adds r0, #4
	strh r7, [r0]
	adds r0, #0x16
	strb r1, [r0]
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
_0806335C:
	movs r6, #1
_0806335E:
	movs r0, #0
	bl sub_08062B60
	adds r4, r0, #0
	cmp r4, #0
	beq _08063400
	ldr r0, _08063414 @ =sub_080630E8
	str r0, [r4]
	bl RandomNumberGenerator
	mov r1, sb
	adds r1, #4
	movs r5, #7
	ands r0, r5
	subs r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x42
	strh r1, [r0]
	bl RandomNumberGenerator
	mov r1, r8
	adds r1, #4
	ands r0, r5
	subs r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x46
	strh r1, [r0]
	bl RandomNumberGenerator
	ldr r1, _08063418 @ =0x00007FFF
	ands r1, r0
	movs r0, #0xa0
	lsls r0, r0, #9
	subs r0, r0, r1
	str r0, [r4, #0x4c]
	bl RandomNumberGenerator
	adds r1, r0, #0
	ldr r0, _0806341C @ =0x000007FF
	ands r1, r0
	adds r0, #1
	adds r2, r1, r0
	str r2, [r4, #0x54]
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bge _080633BC
	adds r0, #7
_080633BC:
	asrs r0, r0, #3
	str r0, [r4, #0x4c]
	adds r0, r2, #0
	asrs r0, r0, #3
	str r0, [r4, #0x54]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #3
	strb r0, [r1]
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #2
	add r0, sp
	adds r0, #4
	ldr r0, [r0]
	adds r1, r4, #0
	adds r1, #0x65
	strb r0, [r1]
	subs r1, #2
	movs r0, #0x80
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	bl RandomNumberGenerator
	ands r0, r5
	strb r0, [r4, #0xd]
_08063400:
	subs r6, #1
	cmp r6, #0
	bge _0806335E
	add sp, #0x24
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063414: .4byte sub_080630E8
_08063418: .4byte 0x00007FFF
_0806341C: .4byte 0x000007FF

	thumb_func_start sub_08063420
sub_08063420: @ 0x08063420
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x7c
	adds r5, r0, #0
	ldr r1, _0806344C @ =0x081189CC
	add r0, sp, #4
	movs r2, #0x78
	bl memcpy
	ldrb r1, [r5, #0xa]
	adds r0, r1, #0
	cmp r0, #0
	bne _08063450
	ldrb r0, [r5, #0xc]
	lsls r0, r0, #3
	add r0, sp
	adds r0, #4
	ldrb r0, [r0, #4]
	strb r0, [r5, #0xd]
	b _08063462
	.align 2, 0
_0806344C: .4byte 0x081189CC
_08063450:
	cmp r0, #1
	bne _08063468
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0806353A
_08063462:
	adds r0, r1, #1
	strb r0, [r5, #0xa]
	b _0806353A
_08063468:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806349C
	ldrb r0, [r5, #0xc]
	lsls r0, r0, #3
	mov r1, sp
	adds r1, r1, r0
	adds r1, #4
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r2, r5, #0
	adds r2, #0x46
	ldrh r1, [r1, #2]
	ldrh r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08063168
	b _08063530
_0806349C:
	ldrb r0, [r5, #0xc]
	lsls r0, r0, #3
	mov r1, sp
	adds r1, r1, r0
	adds r1, #4
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	adds r2, r5, #0
	adds r2, #0x46
	ldrh r0, [r1, #2]
	ldrh r1, [r2]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	bl RandomNumberGenerator
	adds r6, r0, #0
	movs r0, #3
	ands r6, r0
	ldr r2, _080634FC @ =sub_08065834
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _08063530
	ldr r1, _08063500 @ =0x08260390
	ldr r2, _08063504 @ =0x08266544
	ldr r0, _08063508 @ =0x08267EE4
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806350C
	adds r0, r4, #0
	bl EntityDelete
	b _08063530
	.align 2, 0
_080634FC: .4byte sub_08065834
_08063500: .4byte 0x08260390
_08063504: .4byte 0x08266544
_08063508: .4byte 0x08267EE4
_0806350C:
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	mov r2, r8
	strh r2, [r1]
	adds r1, #4
	strh r7, [r1]
	adds r1, #0x16
	strb r0, [r1]
	adds r1, r6, #0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
_08063530:
	movs r0, #0
	strb r0, [r5, #0xa]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
_0806353A:
	ldrb r0, [r5, #0xc]
	cmp r0, #0xf
	bne _0806354C
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0806354C:
	add sp, #0x7c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08063558
sub_08063558: @ 0x08063558
	push {r4, r5, r6, lr}
	sub sp, #0x50
	adds r6, r0, #0
	ldr r1, _0806357C @ =0x08118A44
	mov r0, sp
	movs r2, #0x50
	bl memcpy
	ldrb r1, [r6, #0xa]
	adds r0, r1, #0
	cmp r0, #0
	bne _08063580
	ldrb r0, [r6, #0xc]
	lsls r0, r0, #3
	add r0, sp
	ldrb r0, [r0, #4]
	strb r0, [r6, #0xd]
	b _08063592
	.align 2, 0
_0806357C: .4byte 0x08118A44
_08063580:
	cmp r0, #1
	bne _08063598
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080635E6
_08063592:
	adds r0, r1, #1
	strb r0, [r6, #0xa]
	b _080635E6
_08063598:
	bl RandomNumberGenerator
	ldrb r1, [r6, #0xc]
	lsls r1, r1, #3
	add r1, sp
	adds r2, r6, #0
	adds r2, #0x42
	ldrh r4, [r2]
	ldrh r1, [r1]
	adds r4, r4, r1
	movs r5, #3
	ands r0, r5
	subs r0, #2
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl RandomNumberGenerator
	ldrb r1, [r6, #0xc]
	lsls r1, r1, #3
	add r1, sp
	adds r2, r6, #0
	adds r2, #0x46
	ldrh r1, [r1, #2]
	ldrh r2, [r2]
	adds r1, r1, r2
	ands r0, r5
	subs r0, #2
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_080632B0
	movs r0, #0
	strb r0, [r6, #0xa]
	ldrb r0, [r6, #0xc]
	adds r0, #1
	strb r0, [r6, #0xc]
_080635E6:
	ldrb r0, [r6, #0xc]
	cmp r0, #0xa
	bne _080635F8
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080635F8:
	add sp, #0x50
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08063600
sub_08063600: @ 0x08063600
	push {r4, r5, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r0, sp
	ldr r1, _08063630 @ =0x08118A94
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldr r1, [r1]
	str r1, [r0]
	ldrb r1, [r4, #0xa]
	adds r0, r1, #0
	cmp r0, #0
	bne _08063634
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #3
	add r0, sp
	ldrb r0, [r0, #4]
	strb r0, [r4, #0xd]
	b _08063646
	.align 2, 0
_08063630: .4byte 0x08118A94
_08063634:
	cmp r0, #1
	bne _0806364C
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0806367E
_08063646:
	adds r0, r1, #1
	strb r0, [r4, #0xa]
	b _0806367E
_0806364C:
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #3
	mov r2, sp
	adds r1, r2, r0
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	ldrh r3, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r2, r4, #0
	adds r2, #0x46
	ldrh r1, [r1, #2]
	ldrh r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08063168
	movs r0, #0
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_0806367E:
	ldrb r0, [r4, #0xc]
	cmp r0, #5
	bne _08063690
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_08063690:
	add sp, #0x28
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08063698
sub_08063698: @ 0x08063698
	push {r4, r5, r6, lr}
	sub sp, #0x50
	adds r6, r0, #0
	ldr r1, _080636BC @ =0x08118ABC
	mov r0, sp
	movs r2, #0x50
	bl memcpy
	ldrb r1, [r6, #0xa]
	adds r0, r1, #0
	cmp r0, #0
	bne _080636C0
	ldrb r0, [r6, #0xc]
	lsls r0, r0, #3
	add r0, sp
	ldrb r0, [r0, #4]
	strb r0, [r6, #0xd]
	b _080636D2
	.align 2, 0
_080636BC: .4byte 0x08118ABC
_080636C0:
	cmp r0, #1
	bne _080636D8
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08063726
_080636D2:
	adds r0, r1, #1
	strb r0, [r6, #0xa]
	b _08063726
_080636D8:
	bl RandomNumberGenerator
	ldrb r1, [r6, #0xc]
	lsls r1, r1, #3
	add r1, sp
	adds r2, r6, #0
	adds r2, #0x42
	ldrh r4, [r2]
	ldrh r1, [r1]
	adds r4, r4, r1
	movs r5, #3
	ands r0, r5
	subs r0, #2
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl RandomNumberGenerator
	ldrb r1, [r6, #0xc]
	lsls r1, r1, #3
	add r1, sp
	adds r2, r6, #0
	adds r2, #0x46
	ldrh r1, [r1, #2]
	ldrh r2, [r2]
	adds r1, r1, r2
	ands r0, r5
	subs r0, #2
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_080632B0
	movs r0, #0
	strb r0, [r6, #0xa]
	ldrb r0, [r6, #0xc]
	adds r0, #1
	strb r0, [r6, #0xc]
_08063726:
	ldrb r0, [r6, #0xc]
	cmp r0, #0xa
	bne _08063738
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_08063738:
	add sp, #0x50
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08063740
sub_08063740: @ 0x08063740
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x2c
	adds r5, r0, #0
	add r0, sp, #4
	ldr r1, _08063774 @ =0x08118B0C
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
	ldrb r1, [r5, #0xa]
	adds r0, r1, #0
	cmp r0, #0
	bne _08063778
	ldrb r0, [r5, #0xc]
	lsls r0, r0, #3
	add r0, sp
	adds r0, #4
	ldrb r0, [r0, #4]
	strb r0, [r5, #0xd]
	b _0806378A
	.align 2, 0
_08063774: .4byte 0x08118B0C
_08063778:
	cmp r0, #1
	bne _08063790
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0806382E
_0806378A:
	adds r0, r1, #1
	strb r0, [r5, #0xa]
	b _0806382E
_08063790:
	ldrb r0, [r5, #0xc]
	lsls r0, r0, #3
	mov r1, sp
	adds r1, r1, r0
	adds r1, #4
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	adds r2, r5, #0
	adds r2, #0x46
	ldrh r0, [r1, #2]
	ldrh r1, [r2]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	bl RandomNumberGenerator
	adds r6, r0, #0
	movs r0, #3
	ands r6, r0
	ldr r2, _080637F0 @ =sub_08065834
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _08063824
	ldr r1, _080637F4 @ =0x08260390
	ldr r2, _080637F8 @ =0x08266544
	ldr r0, _080637FC @ =0x08267EE4
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08063800
	adds r0, r4, #0
	bl EntityDelete
	b _08063824
	.align 2, 0
_080637F0: .4byte sub_08065834
_080637F4: .4byte 0x08260390
_080637F8: .4byte 0x08266544
_080637FC: .4byte 0x08267EE4
_08063800:
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	mov r3, r8
	strh r3, [r1]
	adds r1, #4
	strh r7, [r1]
	adds r1, #0x16
	strb r0, [r1]
	adds r1, r6, #0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
_08063824:
	movs r0, #0
	strb r0, [r5, #0xa]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
_0806382E:
	ldrb r0, [r5, #0xc]
	cmp r0, #5
	bne _08063840
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_08063840:
	add sp, #0x2c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0806384C
sub_0806384C: @ 0x0806384C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r1, _08063878 @ =0x08118B48
	mov r0, sp
	movs r2, #4
	bl memcpy
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	adds r5, r0, #0
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	beq _0806387C
	cmp r0, #1
	beq _0806388C
	b _08063918
	.align 2, 0
_08063878: .4byte 0x08118B48
_0806387C:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	bne _08063888
	movs r0, #1
	strb r0, [r7, #0xa]
	b _08063918
_08063888:
	subs r0, #1
	b _08063916
_0806388C:
	movs r0, #1
	bl sub_08062B60
	adds r6, r0, #0
	cmp r6, #0
	beq _08063918
	ldr r0, _08063938 @ =sub_080658AC
	str r0, [r6]
	bl RandomNumberGenerator
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r1, [r1]
	adds r1, #8
	movs r4, #0xf
	ands r0, r4
	subs r1, r1, r0
	adds r0, r6, #0
	adds r0, #0x42
	movs r2, #0
	mov r8, r2
	strh r1, [r0]
	bl RandomNumberGenerator
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r1, [r1]
	adds r1, #8
	ands r0, r4
	subs r1, r1, r0
	adds r0, r6, #0
	adds r0, #0x46
	strh r1, [r0]
	movs r2, #0xc0
	lsls r2, r2, #9
	ldr r3, _0806393C @ =0xFFFFC000
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r6, #0x50]
	ldr r0, _08063940 @ =0xFFFFFF00
	str r0, [r6, #0x54]
	adds r1, r5, #1
	adds r0, r1, #0
	muls r0, r2, r0
	str r0, [r6, #0x48]
	adds r0, r1, #0
	muls r0, r3, r0
	str r0, [r6, #0x4c]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #3
	strb r0, [r1]
	ldrb r0, [r7, #0xc]
	add r0, sp
	ldrb r0, [r0]
	adds r1, #9
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r6, #0x26]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r6, #0x1c]
	ldrb r0, [r7, #0xc]
	adds r0, #1
	strb r0, [r7, #0xc]
	mov r0, r8
	strb r0, [r7, #0xa]
	movs r0, #4
_08063916:
	strb r0, [r7, #0xd]
_08063918:
	ldrb r0, [r7, #0xc]
	cmp r0, #4
	bne _0806392A
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0806392A:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063938: .4byte sub_080658AC
_0806393C: .4byte 0xFFFFC000
_08063940: .4byte 0xFFFFFF00

	thumb_func_start sub_08063944
sub_08063944: @ 0x08063944
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r2, _08063A48 @ =gEwramData
	ldrb r1, [r5, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08063A4C @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r1, r1, r0
	mov r8, r1
	ldrb r1, [r5, #0xa]
	adds r0, r1, #0
	cmp r0, #0
	bne _08063A50
	ldrh r0, [r5, #0x24]
	movs r7, #0x80
	lsls r7, r7, #7
	adds r0, r0, r7
	bl sub_080009E4
	ldrh r0, [r5, #0x24]
	bl sub_080009E4
	ldrh r0, [r5, #0x20]
	adds r4, r5, #0
	adds r4, #0x42
	strh r0, [r4]
	ldrh r0, [r5, #0x22]
	adds r6, r5, #0
	adds r6, #0x46
	strh r0, [r6]
	ldrh r0, [r5, #0x24]
	adds r0, r0, r7
	bl sub_080009E4
	adds r1, r5, #0
	adds r1, #0x28
	ldrb r1, [r1]
	muls r0, r1, r0
	asrs r0, r0, #0xd
	ldrh r2, [r4]
	adds r0, r0, r2
	strh r0, [r4]
	ldrh r0, [r5, #0x24]
	bl sub_080009E4
	adds r1, r5, #0
	adds r1, #0x29
	ldrb r1, [r1]
	muls r0, r1, r0
	asrs r0, r0, #0xd
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r6]
	ldrh r0, [r5, #0x24]
	adds r0, r0, r7
	bl sub_080009E4
	asrs r0, r0, #1
	str r0, [r5, #0x48]
	ldrh r0, [r5, #0x24]
	bl sub_080009E4
	asrs r0, r0, #1
	str r0, [r5, #0x4c]
	movs r1, #0x2a
	ldrsh r2, [r5, r1]
	ldr r1, [r5, #0x48]
	muls r2, r1, r2
	ldr r1, [r5, #0x40]
	adds r1, r1, r2
	str r1, [r5, #0x40]
	movs r2, #0x2a
	ldrsh r1, [r5, r2]
	muls r1, r0, r1
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldrb r0, [r5, #0xd]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08063A04
	ldrh r0, [r5, #0x2a]
	adds r0, #1
	strh r0, [r5, #0x2a]
_08063A04:
	ldrh r0, [r5, #0x24]
	adds r0, #0x20
	strh r0, [r5, #0x24]
	mov r0, r8
	adds r0, #0x3c
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	adds r4, r5, #0
	adds r4, #0x58
	cmp r0, #0
	beq _08063AC6
	ldrh r0, [r5, #0x24]
	adds r0, r0, r7
	bl sub_080009E4
	asrs r0, r0, #2
	str r0, [r5, #0x48]
	ldrh r0, [r5, #0x24]
	bl sub_080009E4
	asrs r0, r0, #2
	str r0, [r5, #0x4c]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	ldrb r2, [r5, #0x17]
	lsrs r1, r2, #2
	movs r0, #6
	subs r0, r0, r1
	muls r0, r2, r0
	strb r0, [r5, #0xd]
	b _08063AC6
	.align 2, 0
_08063A48: .4byte gEwramData
_08063A4C: .4byte 0x000004E4
_08063A50:
	cmp r0, #1
	bne _08063A82
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08063A6C
	adds r0, r1, #1
	strb r0, [r5, #0xa]
	movs r0, #0
	strb r0, [r5, #0xd]
	b _08063A7C
_08063A6C:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
_08063A7C:
	adds r4, r5, #0
	adds r4, #0x58
	b _08063AC6
_08063A82:
	movs r1, #0xf0
	lsls r1, r1, #0xf
	movs r2, #0xa0
	lsls r2, r2, #0xf
	adds r0, r5, #0
	movs r3, #3
	bl sub_0806E43C
	cmp r0, #0
	beq _08063AAC
	ldr r0, [r5, #0x1c]
	adds r4, r5, #0
	adds r4, #0x58
	cmp r0, #0
	beq _08063AC6
	ldr r1, _08063AA8 @ =0xFFFFF000
	adds r0, r0, r1
	str r0, [r5, #0x1c]
	b _08063AC6
	.align 2, 0
_08063AA8: .4byte 0xFFFFF000
_08063AAC:
	adds r4, r5, #0
	adds r4, #0x58
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
_08063AC6:
	ldr r0, [r5, #0x38]
	ldr r2, [r5, #0x1c]
	movs r1, #0
	str r1, [sp]
	ldrb r1, [r4]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08063AEC
sub_08063AEC: @ 0x08063AEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xac
	str r0, [sp, #0xa0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xa4]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0xa8]
	ldr r1, _08063C38 @ =0x08118B4C
	mov r0, sp
	movs r2, #0xa0
	bl memcpy
	movs r0, #0
	mov sl, r0
	mov r8, sp
_08063B16:
	movs r0, #1
	bl sub_08062B60
	adds r5, r0, #0
	cmp r5, #0
	beq _08063C18
	mov r1, r8
	ldrh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r0, r2
	bl sub_080009E4
	mov r1, r8
	ldrh r0, [r1]
	bl sub_080009E4
	ldr r0, _08063C3C @ =sub_08063944
	str r0, [r5]
	ldr r2, [sp, #0xa0]
	ldrb r0, [r2, #0x10]
	strb r0, [r5, #0x11]
	mov r0, sl
	strb r0, [r5, #0x17]
	add r1, sp, #0xa4
	ldrh r1, [r1]
	strh r1, [r5, #0x20]
	add r2, sp, #0xa8
	ldrh r2, [r2]
	strh r2, [r5, #0x22]
	mov r1, r8
	ldrb r0, [r1, #2]
	adds r4, r5, #0
	adds r4, #0x28
	strb r0, [r4]
	ldrb r0, [r1, #3]
	lsrs r0, r0, #1
	movs r2, #0x29
	adds r2, r2, r5
	mov sb, r2
	strb r0, [r2]
	bl RandomNumberGenerator
	ldr r1, _08063C40 @ =0x00000FFF
	ands r1, r0
	movs r0, #0xa0
	lsls r0, r0, #2
	adds r1, r1, r0
	mov r2, r8
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r5, #0x24]
	movs r0, #0
	str r0, [r5, #0x38]
	movs r0, #1
	strh r0, [r5, #0x26]
	ldrh r0, [r5, #0x20]
	adds r6, r5, #0
	adds r6, #0x42
	strh r0, [r6]
	ldrh r0, [r5, #0x22]
	adds r7, r5, #0
	adds r7, #0x46
	strh r0, [r7]
	ldrh r0, [r5, #0x24]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	ldrb r1, [r4]
	muls r0, r1, r0
	asrs r0, r0, #0xd
	ldrh r2, [r6]
	adds r0, r0, r2
	strh r0, [r6]
	ldrh r0, [r5, #0x24]
	bl sub_080009E4
	mov r2, sb
	ldrb r1, [r2]
	muls r0, r1, r0
	asrs r0, r0, #0xd
	ldrh r1, [r7]
	adds r0, r0, r1
	strh r0, [r7]
	movs r2, #0
	strh r2, [r5, #0x2a]
	ldrh r0, [r5, #0x24]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	asrs r0, r0, #8
	str r0, [r5, #0x48]
	ldrh r0, [r5, #0x24]
	bl sub_080009E4
	asrs r0, r0, #8
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r5, #0x1c]
	mov r2, r8
	ldrh r0, [r2, #4]
	lsls r0, r0, #1
	strh r0, [r5, #0x26]
	mov r4, sl
	subs r4, #0x80
	mov r0, sl
	movs r1, #5
	bl __divsi3
	subs r4, r4, r0
	strb r4, [r5, #0xd]
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	adds r0, #0xa
	adds r1, r5, #0
	adds r1, #0x65
	strb r0, [r1]
_08063C18:
	movs r0, #8
	add r8, r0
	movs r1, #1
	add sl, r1
	mov r2, sl
	cmp r2, #0x13
	bgt _08063C28
	b _08063B16
_08063C28:
	add sp, #0xac
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063C38: .4byte 0x08118B4C
_08063C3C: .4byte sub_08063944
_08063C40: .4byte 0x00000FFF

	thumb_func_start sub_08063C44
sub_08063C44: @ 0x08063C44
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r1, _08063C70 @ =0x08118BEC
	mov r0, sp
	movs r2, #5
	bl memcpy
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	adds r5, r0, #0
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	beq _08063C74
	cmp r0, #1
	beq _08063C84
	b _08063D12
	.align 2, 0
_08063C70: .4byte 0x08118BEC
_08063C74:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	bne _08063C80
	movs r0, #1
	strb r0, [r7, #0xa]
	b _08063D12
_08063C80:
	subs r0, #1
	b _08063D10
_08063C84:
	movs r0, #1
	bl sub_08062B60
	adds r6, r0, #0
	cmp r6, #0
	beq _08063D12
	ldr r0, _08063D30 @ =sub_0806592C
	str r0, [r6]
	bl RandomNumberGenerator
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r1, [r1]
	adds r1, #8
	movs r4, #0xf
	ands r0, r4
	subs r1, r1, r0
	adds r0, r6, #0
	adds r0, #0x42
	movs r2, #0
	mov r8, r2
	strh r1, [r0]
	bl RandomNumberGenerator
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r1, [r1]
	adds r1, #8
	ands r0, r4
	subs r1, r1, r0
	adds r0, r6, #0
	adds r0, #0x46
	strh r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #9
	ldr r3, _08063D34 @ =0xFFFFC000
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r6, #0x50]
	ldr r0, _08063D38 @ =0xFFFFFF00
	str r0, [r6, #0x54]
	adds r2, r5, #1
	adds r0, r2, #0
	muls r0, r1, r0
	str r0, [r6, #0x48]
	adds r0, r2, #0
	muls r0, r3, r0
	str r0, [r6, #0x4c]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
	ldrb r0, [r7, #0xc]
	add r0, sp
	ldrb r0, [r0]
	adds r1, #9
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r6, #0x26]
	lsls r0, r2, #3
	adds r0, r0, r2
	lsls r0, r0, #0xc
	str r0, [r6, #0x1c]
	ldrb r0, [r7, #0xc]
	adds r0, #1
	strb r0, [r7, #0xc]
	mov r0, r8
	strb r0, [r7, #0xa]
	movs r0, #0x10
_08063D10:
	strb r0, [r7, #0xd]
_08063D12:
	ldrb r0, [r7, #0xc]
	cmp r0, #5
	bne _08063D24
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_08063D24:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063D30: .4byte sub_0806592C
_08063D34: .4byte 0xFFFFC000
_08063D38: .4byte 0xFFFFFF00

	thumb_func_start sub_08063D3C
sub_08063D3C: @ 0x08063D3C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	mov sb, r2
	mov r8, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r0, #0
	bl sub_08062B60
	adds r4, r0, #0
	mov r1, sp
	ldr r0, _08063DC0 @ =0x081189A0
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	cmp r4, #0
	beq _08063DE6
	ldr r0, _08063DC4 @ =sub_08065858
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0x42
	movs r3, #0
	strh r5, [r0]
	adds r0, #4
	strh r6, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0xb
	str r0, [r4, #0x48]
	str r3, [r4, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #4
	str r1, [r4, #0x50]
	ldr r2, _08063DC8 @ =0xFFFFFF00
	str r2, [r4, #0x54]
	mov r5, sb
	cmp r5, #0
	beq _08063D9A
	rsbs r0, r0, #0
	str r0, [r4, #0x48]
	rsbs r0, r1, #0
	str r0, [r4, #0x50]
	rsbs r0, r2, #0
	str r0, [r4, #0x54]
_08063D9A:
	movs r0, #0x40
	strb r0, [r4, #0xd]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #3
	strb r0, [r1]
	mov r7, r8
	cmp r7, #0
	bne _08063DCC
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	b _08063DD8
	.align 2, 0
_08063DC0: .4byte 0x081189A0
_08063DC4: .4byte sub_08065858
_08063DC8: .4byte 0xFFFFFF00
_08063DCC:
	bl RandomNumberGenerator
	movs r1, #7
	bl __umodsi3
	adds r0, #2
_08063DD8:
	adds r1, r4, #0
	adds r1, #0x65
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #0x80
	strb r0, [r1]
_08063DE6:
	adds r0, r4, #0
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08063DF8
sub_08063DF8: @ 0x08063DF8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x5c
	adds r6, r0, #0
	ldr r2, _08063E30 @ =gEwramData
	ldrb r1, [r6, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08063E34 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r7, r1, r0
	ldr r1, _08063E38 @ =0x08118BF4
	add r0, sp, #8
	movs r2, #0x54
	bl memcpy
	ldrb r4, [r6, #0xa]
	cmp r4, #1
	beq _08063EE0
	cmp r4, #1
	bgt _08063E3C
	cmp r4, #0
	beq _08063E4A
	b _08063F8E
	.align 2, 0
_08063E30: .4byte gEwramData
_08063E34: .4byte 0x000004E4
_08063E38: .4byte 0x08118BF4
_08063E3C:
	cmp r4, #2
	bne _08063E42
	b _08063F42
_08063E42:
	cmp r4, #3
	bne _08063E48
	b _08063F94
_08063E48:
	b _08063F8E
_08063E4A:
	movs r2, #0x24
	ldrsh r1, [r7, r2]
	ldr r0, _08063E94 @ =0x00000107
	cmp r1, r0
	bne _08063E6C
	adds r0, r6, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r6, #0
	adds r1, #0x46
	ldrh r1, [r1]
	adds r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08063168
_08063E6C:
	movs r2, #0x24
	ldrsh r0, [r7, r2]
	cmp r0, #0xff
	bne _08063E9C
	strb r4, [r6, #0xd]
	ldrb r0, [r6, #0xa]
	adds r0, #2
	strb r0, [r6, #0xa]
	ldr r0, _08063E98 @ =0xFFFFF800
	str r0, [r6, #0x38]
	movs r0, #0xc0
	lsls r0, r0, #3
	str r0, [r6, #0x48]
	str r4, [r6, #0x4c]
	movs r0, #0x18
	str r0, [r6, #0x50]
	subs r0, #0x20
	str r0, [r6, #0x54]
	b _08063F8E
	.align 2, 0
_08063E94: .4byte 0x00000107
_08063E98: .4byte 0xFFFFF800
_08063E9C:
	ldrb r0, [r6, #0xd]
	cmp r0, #0x1d
	bhi _08063EA6
	adds r0, #1
	strb r0, [r6, #0xd]
_08063EA6:
	adds r0, r7, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #0x18
	ldrh r1, [r7, #0x20]
	adds r0, r0, r1
	adds r1, r6, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r0, [r7, #0x22]
	subs r0, #0x48
	adds r1, r7, #0
	adds r1, #0x27
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r4, r4, r0
	ldrb r0, [r6, #0xd]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r4
	adds r1, r6, #0
	adds r1, #0x46
	strh r0, [r1]
	b _08063F8E
_08063EE0:
	ldrb r0, [r6, #0xd]
	cmp r0, #0x13
	bhi _08063EEA
	adds r0, #1
	strb r0, [r6, #0xd]
_08063EEA:
	movs r2, #0x24
	ldrsh r0, [r7, r2]
	cmp r0, #0xa0
	bne _08063EFE
	movs r0, #0
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	b _08063F8E
_08063EFE:
	adds r0, r7, #0
	adds r0, #0x26
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r1, #0x18
	ldrh r0, [r7, #0x20]
	adds r1, r1, r0
	ldrb r0, [r6, #0xd]
	lsls r0, r0, #2
	add r0, sp
	adds r0, #8
	ldr r0, [r0]
	adds r0, r0, r1
	adds r1, r6, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r0, [r7, #0x22]
	subs r0, #0x48
	adds r1, r7, #0
	adds r1, #0x27
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r4, r4, r0
	ldrb r0, [r6, #0xd]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r4
	adds r1, r6, #0
	adds r1, #0x46
	strh r0, [r1]
	b _08063F8E
_08063F42:
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
	ldr r1, _08063F84 @ =0x0000FFF0
	subs r0, r1, #1
	strh r0, [r6, #0x26]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x38]
	adds r0, r0, r1
	str r0, [r6, #0x38]
	movs r1, #0x24
	ldrsh r0, [r7, r1]
	cmp r0, #0
	bne _08063F88
	movs r0, #0
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	b _08063F8E
	.align 2, 0
_08063F84: .4byte 0x0000FFF0
_08063F88:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
_08063F8E:
	adds r5, r6, #0
	adds r5, #0x58
	b _08064060
_08063F94:
	ldrb r1, [r6, #0xd]
	movs r0, #1
	ands r0, r1
	movs r2, #0x42
	adds r2, r2, r6
	mov r8, r2
	cmp r0, #0
	bne _08063FE0
	adds r0, r1, #0
	cmp r0, #0x27
	bhi _08063FE0
	cmp r0, #0x18
	bls _08063FE0
	bl RandomNumberGenerator
	mov r1, r8
	ldrh r4, [r1]
	adds r4, #4
	movs r5, #7
	ands r0, r5
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl RandomNumberGenerator
	adds r1, r6, #0
	adds r1, #0x46
	ldrh r1, [r1]
	adds r1, #4
	ands r0, r5
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_08063024
_08063FE0:
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
	ldrb r1, [r6, #0xd]
	movs r0, #0xd
	ldrsb r0, [r6, r0]
	cmp r0, #0
	blt _0806400A
	adds r0, r1, #1
	strb r0, [r6, #0xd]
_0806400A:
	ldrb r0, [r6, #0xd]
	cmp r0, #0x48
	bne _08064024
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r6, #0x48]
	ldr r0, _08064094 @ =0xFFFFEE00
	str r0, [r6, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r6, #0x50]
	ldr r0, _08064098 @ =0xFFFFFE00
	str r0, [r6, #0x54]
_08064024:
	movs r2, #0x26
	ldrsh r1, [r6, r2]
	ldr r0, [r6, #0x38]
	adds r0, r0, r1
	str r0, [r6, #0x38]
	ldrh r2, [r6, #0x26]
	ldr r0, _0806409C @ =0xFFFFFDC0
	cmp r1, r0
	ble _0806403A
	subs r0, r2, #1
	strh r0, [r6, #0x26]
_0806403A:
	mov r2, r8
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, _080640A0 @ =0x0000010F
	adds r5, r6, #0
	adds r5, #0x58
	cmp r1, r0
	ble _08064060
	ldrb r0, [r5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_08064060:
	ldrh r0, [r7, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #1
	subs r2, r2, r0
	lsls r2, r2, #8
	movs r1, #0x80
	lsls r1, r1, #9
	adds r2, r2, r1
	str r2, [r6, #0x1c]
	ldr r0, [r6, #0x38]
	movs r1, #0
	str r1, [sp]
	ldrb r1, [r5]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	add sp, #0x5c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08064094: .4byte 0xFFFFEE00
_08064098: .4byte 0xFFFFFE00
_0806409C: .4byte 0xFFFFFDC0
_080640A0: .4byte 0x0000010F

	thumb_func_start sub_080640A4
sub_080640A4: @ 0x080640A4
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r7, _08064100 @ =sub_08063DF8
	movs r0, #0x1b
	movs r1, #0x48
	adds r2, r7, #0
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _08064186
	ldr r0, _08064104 @ =0x08260390
	movs r1, #0
	bl sub_0803B800
	adds r2, r0, #0
	cmp r2, #0
	blt _080640F8
	adds r1, r4, #0
	adds r1, #0x2c
	movs r6, #0
	movs r0, #0xe
	strb r0, [r1]
	ldr r1, _08064108 @ =0x08267EE4
	adds r0, r4, #0
	movs r3, #0xe
	bl sub_0803B924
	ldr r0, _0806410C @ =sub_0803B9D0
	str r0, [r4, #4]
	ldrb r0, [r5, #0x10]
	strb r0, [r4, #0x11]
	movs r0, #0xd0
	lsls r0, r0, #9
	str r0, [r4, #0x1c]
	movs r0, #1
	bl sub_0803E654
	adds r2, r0, #0
	cmp r2, #0
	bge _08064110
_080640F8:
	adds r0, r4, #0
	bl EntityDelete
	b _08064186
	.align 2, 0
_08064100: .4byte sub_08063DF8
_08064104: .4byte 0x08260390
_08064108: .4byte 0x08267EE4
_0806410C: .4byte sub_0803B9D0
_08064110:
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
	movs r0, #0x80
	lsls r0, r0, #9
	ldr r2, [r4, #0x1c]
	str r6, [sp]
	ldrb r1, [r3]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	str r7, [r4]
	movs r0, #0x20
	strb r0, [r4, #0xd]
	movs r2, #0
	strh r6, [r4, #0x18]
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0x82
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x1c
	strh r0, [r1]
	ldr r0, _08064190 @ =0xFFFFF800
	str r0, [r4, #0x48]
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r4, #0x4c]
	ldr r0, _08064194 @ =0xFFFFFF00
	str r0, [r4, #0x50]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r4, #0x54]
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r4, #0x26]
	adds r1, #0x16
	movs r0, #3
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x65
	strb r2, [r0]
_08064186:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08064190: .4byte 0xFFFFF800
_08064194: .4byte 0xFFFFFF00

	thumb_func_start sub_08064198
sub_08064198: @ 0x08064198
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r2, _080641C0 @ =gEwramData
	ldrb r1, [r5, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080641C4 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r3, r1, r0
	ldrb r2, [r5, #0xa]
	cmp r2, #1
	beq _08064238
	cmp r2, #1
	bgt _080641C8
	cmp r2, #0
	beq _080641CE
	b _08064368
	.align 2, 0
_080641C0: .4byte gEwramData
_080641C4: .4byte 0x000004E4
_080641C8:
	cmp r2, #2
	beq _080642C4
	b _08064368
_080641CE:
	movs r6, #0x24
	ldrsh r0, [r3, r6]
	cmp r0, #0xa0
	bne _080641DE
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #1
	strb r0, [r1]
_080641DE:
	movs r1, #0x24
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bne _080641F0
	strb r2, [r5, #0xd]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	b _080641F6
_080641F0:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
_080641F6:
	adds r0, r3, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #0x30
	ldrh r2, [r3, #0x20]
	adds r0, r0, r2
	adds r2, r5, #0
	adds r2, #0x42
	movs r1, #0
	strh r0, [r2]
	adds r0, r3, #0
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #8
	ldrh r6, [r3, #0x22]
	adds r0, r0, r6
	adds r2, #4
	strh r0, [r2]
	ldrh r0, [r3, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #1
	subs r2, r2, r0
	lsls r2, r2, #8
	movs r0, #0x80
	lsls r0, r0, #9
	adds r2, r2, r0
	str r2, [r5, #0x1c]
	ldr r0, [r5, #0x38]
	b _080642A8
_08064238:
	adds r0, r3, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #0x30
	ldrh r1, [r3, #0x20]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x42
	movs r4, #0
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #8
	ldrh r6, [r3, #0x22]
	adds r0, r0, r6
	adds r1, #4
	strh r0, [r1]
	ldr r1, [r5, #0x1c]
	movs r0, #0x90
	lsls r0, r0, #9
	cmp r1, r0
	beq _08064274
	ldr r6, _080642C0 @ =0xFFFFFC00
	adds r0, r1, r6
	str r0, [r5, #0x1c]
_08064274:
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x51
	bne _08064292
	adds r0, r5, #0
	adds r0, #0x65
	strb r2, [r0]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	strb r4, [r5, #0xc]
	strb r4, [r5, #0xb]
_08064292:
	ldrh r0, [r3, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #1
	subs r2, r2, r0
	lsls r2, r2, #8
	movs r0, #0x80
	lsls r0, r0, #9
	adds r2, r2, r0
	str r2, [r5, #0x1c]
	ldr r0, [r5, #0x38]
	movs r1, #0
_080642A8:
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
	b _08064368
	.align 2, 0
_080642C0: .4byte 0xFFFFFC00
_080642C4:
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
	ldrh r0, [r3, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #1
	subs r2, r2, r0
	lsls r2, r2, #8
	movs r6, #0x80
	lsls r6, r6, #9
	adds r2, r2, r6
	str r2, [r5, #0x1c]
	ldr r0, [r5, #0x38]
	movs r1, #0
	str r1, [sp]
	adds r4, r5, #0
	adds r4, #0x58
	ldrb r1, [r4]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	ldrb r0, [r5, #0xd]
	cmp r0, #0x68
	bne _08064334
	ldr r0, _0806432C @ =0xFFFC0000
	str r0, [r5, #0x48]
	str r6, [r5, #0x4c]
	ldr r0, _08064330 @ =0xFFFF0000
	str r0, [r5, #0x50]
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r5, #0x54]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #0x26]
	b _08064338
	.align 2, 0
_0806432C: .4byte 0xFFFC0000
_08064330: .4byte 0xFFFF0000
_08064334:
	adds r0, #1
	strb r0, [r5, #0xd]
_08064338:
	movs r2, #0x26
	ldrsh r1, [r5, r2]
	ldr r0, [r5, #0x38]
	adds r0, r0, r1
	str r0, [r5, #0x38]
	adds r0, r5, #0
	adds r0, #0x42
	movs r6, #0
	ldrsh r1, [r0, r6]
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08064368
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
_08064368:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08064370
sub_08064370: @ 0x08064370
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r2, _080643CC @ =sub_08064198
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _08064466
	ldr r0, _080643D0 @ =0x08260390
	movs r1, #0
	bl sub_0803B800
	adds r2, r0, #0
	cmp r2, #0
	blt _080643C2
	adds r1, r4, #0
	adds r1, #0x2c
	movs r6, #0
	movs r0, #0xe
	strb r0, [r1]
	ldr r1, _080643D4 @ =0x08267EE4
	adds r0, r4, #0
	movs r3, #0xe
	bl sub_0803B924
	ldr r0, _080643D8 @ =sub_0803B9D0
	str r0, [r4, #4]
	ldrb r0, [r5, #0x10]
	strb r0, [r4, #0x11]
	movs r0, #0xd0
	lsls r0, r0, #9
	str r0, [r4, #0x1c]
	movs r0, #1
	bl sub_0803E654
	adds r2, r0, #0
	cmp r2, #0
	bge _080643DC
_080643C2:
	adds r0, r4, #0
	bl EntityDelete
	b _08064466
	.align 2, 0
_080643CC: .4byte sub_08064198
_080643D0: .4byte 0x08260390
_080643D4: .4byte 0x08267EE4
_080643D8: .4byte sub_0803B9D0
_080643DC:
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
	movs r0, #0x80
	lsls r0, r0, #9
	ldr r2, [r4, #0x1c]
	str r6, [sp]
	ldrb r1, [r3]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	strh r6, [r4, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #0x30
	ldrh r1, [r5, #0x20]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #8
	ldrh r5, [r5, #0x22]
	adds r0, r0, r5
	adds r1, #4
	strh r0, [r1]
	ldr r0, _08064470 @ =0xFFFFFC18
	str r0, [r4, #0x48]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #0x4c]
	ldr r0, _08064474 @ =0xFFFFF800
	str r0, [r4, #0x50]
	movs r0, #0xc0
	lsls r0, r0, #3
	str r0, [r4, #0x54]
	str r6, [r4, #0x38]
	ldr r0, _08064478 @ =0x0000FF56
	strh r0, [r4, #0x26]
	adds r1, #0x16
	movs r0, #3
	strb r0, [r1]
	adds r1, #9
	movs r0, #0x18
	strb r0, [r1]
_08064466:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08064470: .4byte 0xFFFFFC18
_08064474: .4byte 0xFFFFF800
_08064478: .4byte 0x0000FF56

	thumb_func_start sub_0806447C
sub_0806447C: @ 0x0806447C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	adds r4, r6, #0
	adds r4, #0x34
	ldrb r1, [r4]
	lsls r0, r1, #3
	ldr r2, _08064514 @ =0x08526924
	mov r8, r2
	adds r5, r0, r2
	cmp r1, #5
	bhi _08064506
	ldrh r0, [r6, #0x36]
	adds r1, r0, #1
	strh r1, [r6, #0x36]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r5, #6]
	cmp r0, r1
	ble _08064506
	movs r7, #0
	strh r7, [r6, #0x36]
	ldr r0, [r5]
	ldrh r1, [r5, #4]
	movs r2, #1
	movs r3, #0
	bl sub_0803C918
	ldr r0, [r5]
	ldrh r1, [r5, #4]
	movs r2, #1
	movs r3, #0xe
	bl sub_0803C7B4
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bhi _08064506
	ldrb r0, [r4]
	lsls r0, r0, #3
	mov r2, r8
	adds r5, r0, r2
	ldr r1, [r5]
	ldrh r2, [r5, #4]
	movs r4, #0x80
	lsls r4, r4, #9
	str r7, [sp]
	ldrh r0, [r5, #6]
	str r0, [sp, #4]
	movs r0, #0
	adds r3, r4, #0
	bl sub_0803D2D0
	adds r0, r6, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	ldr r1, [r5]
	ldrh r2, [r5, #4]
	str r7, [sp]
	ldrh r3, [r5, #6]
	str r3, [sp, #4]
	adds r3, r4, #0
	bl sub_0803CF34
_08064506:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08064514: .4byte 0x08526924

	thumb_func_start sub_08064518
sub_08064518: @ 0x08064518
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r7, r0, #0
	ldr r0, _08064570 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _08064574 @ =0x00007864
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r3, _08064578 @ =0x0000786C
	adds r0, r0, r3
	adds r2, r2, r0
	mov r8, r2
	movs r5, #0
	mov sb, r5
	movs r6, #0
	str r6, [sp, #0x30]
	mov sl, r6
	ldr r3, _0806457C @ =0x04000020
	movs r0, #0
	movs r1, #0xa0
	movs r2, #0x10
	bl sub_08001718
	ldrb r0, [r7, #0x15]
	cmp r0, #0xa
	bls _08064566
	bl _080650CE
_08064566:
	lsls r0, r0, #2
	ldr r1, _08064580 @ =_08064584
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08064570: .4byte gEwramData
_08064574: .4byte 0x00007864
_08064578: .4byte 0x0000786C
_0806457C: .4byte 0x04000020
_08064580: .4byte _08064584
_08064584: @ jump table
	.4byte _080645B0 @ case 0
	.4byte _080650CE @ case 1
	.4byte _08064664 @ case 2
	.4byte _08064A38 @ case 3
	.4byte _08064AB8 @ case 4
	.4byte _08064AB8 @ case 5
	.4byte _08064F72 @ case 6
	.4byte _08064F72 @ case 7
	.4byte _08064FE0 @ case 8
	.4byte _08065060 @ case 9
	.4byte _0806507A @ case 10
_080645B0:
	ldrb r0, [r7, #0x16]
	cmp r0, #0
	bne _080645F4
	movs r2, #0
	movs r1, #0xb8
	strh r1, [r7, #0x20]
	movs r0, #0x70
	strh r0, [r7, #0x22]
	movs r0, #0xb0
	strh r0, [r7, #0x1c]
	strh r0, [r7, #0x1e]
	strb r2, [r7, #0x14]
	adds r0, r7, #0
	adds r0, #0x42
	strh r1, [r0]
	ldrh r0, [r7, #0x22]
	adds r1, r7, #0
	adds r1, #0x46
	strh r0, [r1]
	ldr r0, _08064660 @ =0x08119FDC
	movs r1, #0
	movs r2, #1
	movs r3, #0xe
	bl sub_0803C7B4
	adds r1, r7, #0
	adds r1, #0x2c
	movs r0, #0xe
	strb r0, [r1]
	movs r0, #0x10
	strh r0, [r7, #0x24]
	ldrb r0, [r7, #0x16]
	adds r0, #1
	strb r0, [r7, #0x16]
_080645F4:
	movs r5, #0
	add r4, sp, #8
	movs r6, #0x80
	lsls r6, r6, #8
_080645FC:
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	ldrh r0, [r7, #0x20]
	add r0, sb
	strh r0, [r4, #8]
	ldrh r0, [r7, #0x22]
	subs r0, r0, r5
	strh r0, [r4, #0xa]
	ldrh r0, [r7, #0x1c]
	strh r0, [r4, #0xc]
	ldrh r0, [r7, #0x1e]
	strh r0, [r4, #0xe]
	ldrb r0, [r7, #0x14]
	lsls r0, r0, #8
	strh r0, [r4, #0x10]
	add r0, sp, #8
	mov r1, r8
	movs r2, #1
	bl BgAffineSet
	movs r0, #0x10
	add r8, r0
	adds r5, #1
	cmp r5, #0x9f
	ble _080645FC
	ldrh r0, [r7, #0x24]
	subs r0, #1
	strh r0, [r7, #0x24]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08064644
	bl _080650CE
_08064644:
	movs r0, #0xb3
	lsls r0, r0, #1
	bl PlaySong
	movs r0, #0
	strh r0, [r7, #0x24]
	ldrb r0, [r7, #0x15]
	adds r0, #2
	strb r0, [r7, #0x15]
	movs r0, #0
	strb r0, [r7, #0x16]
	bl _080650CE
	.align 2, 0
_08064660: .4byte 0x08119FDC
_08064664:
	ldrb r1, [r7, #0x16]
	cmp r1, #0
	bne _08064682
	ldr r0, _08064698 @ =0x0000029E
	strh r0, [r7, #0x24]
	adds r0, r1, #1
	strb r0, [r7, #0x16]
	adds r0, r7, #0
	bl sub_080640A4
	adds r0, r7, #0
	bl sub_08064370
	movs r0, #1
	strb r0, [r7, #0xd]
_08064682:
	movs r1, #0x24
	ldrsh r0, [r7, r1]
	cmp r0, #0xff
	ble _0806469C
	bl RandomNumberGenerator
	movs r5, #1
	ands r0, r5
	movs r4, #1
	b _080646A6
	.align 2, 0
_08064698: .4byte 0x0000029E
_0806469C:
	bl RandomNumberGenerator
	movs r5, #3
	ands r0, r5
	movs r4, #2
_080646A6:
	subs r0, r4, r0
	adds r6, r7, #0
	adds r6, #0x26
	strb r0, [r6]
	bl RandomNumberGenerator
	ands r0, r5
	subs r4, r4, r0
	adds r0, r7, #0
	adds r0, #0x27
	strb r4, [r0]
	mov sb, r6
	adds r6, r0, #0
	movs r5, #0
	add r4, sp, #8
	movs r2, #0
	mov sl, r2
_080646C8:
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldrh r2, [r7, #0x20]
	strh r2, [r4, #8]
	ldrh r0, [r7, #0x22]
	subs r3, r0, r5
	strh r3, [r4, #0xa]
	ldrh r1, [r7, #0x24]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080646F8
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r0, r2, r0
	strh r0, [r4, #8]
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r0, r3, r0
	strh r0, [r4, #0xa]
	b _08064700
_080646F8:
	mov r3, sl
	mov r2, sb
	strb r3, [r2]
	strb r3, [r6]
_08064700:
	ldrh r0, [r7, #0x1c]
	strh r0, [r4, #0xc]
	ldrh r0, [r7, #0x1e]
	strh r0, [r4, #0xe]
	ldrb r0, [r7, #0x14]
	lsls r0, r0, #8
	strh r0, [r4, #0x10]
	add r0, sp, #8
	mov r1, r8
	movs r2, #1
	bl BgAffineSet
	movs r0, #0x10
	add r8, r0
	adds r5, #1
	cmp r5, #0x9f
	ble _080646C8
	movs r2, #0x24
	ldrsh r1, [r7, r2]
	movs r0, #0xff
	lsls r0, r0, #1
	cmp r1, r0
	bne _0806475A
	movs r3, #0x20
	ldrsh r4, [r7, r3]
	movs r6, #0x22
	ldrsh r5, [r7, r6]
	add r0, sp, #0x1c
	ldr r1, _080647F8 @ =0x08118B34
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	ldr r2, [sp, #0x24]
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	cmp r0, #0
	beq _0806475A
	adds r1, r0, #0
	adds r1, #0x42
	strh r4, [r1]
	adds r0, #0x46
	strh r5, [r0]
_0806475A:
	movs r5, #0x24
	ldrsh r1, [r7, r5]
	ldr r0, _080647FC @ =0x0000011F
	cmp r1, r0
	bne _080647C6
	movs r6, #0x20
	ldrsh r4, [r7, r6]
	movs r1, #0x22
	ldrsh r0, [r7, r1]
	mov r8, r0
	ldr r6, _080647F8 @ =0x08118B34
	add r0, sp, #0x1c
	adds r1, r6, #0
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	ldr r2, [sp, #0x20]
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	cmp r0, #0
	beq _08064796
	adds r1, r0, #0
	adds r1, #0x42
	strh r4, [r1]
	adds r0, #0x46
	mov r5, r8
	strh r5, [r0]
_08064796:
	movs r0, #0x20
	ldrsh r4, [r7, r0]
	movs r1, #0x22
	ldrsh r5, [r7, r1]
	add r0, sp, #0x1c
	adds r1, r6, #0
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	ldr r2, [sp, #0x24]
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	cmp r0, #0
	beq _080647C2
	adds r1, r0, #0
	adds r1, #0x42
	strh r4, [r1]
	adds r0, #0x46
	strh r5, [r0]
_080647C2:
	movs r0, #1
	strb r0, [r7, #0xd]
_080647C6:
	movs r5, #0x24
	ldrsh r0, [r7, r5]
	cmp r0, #0xff
	bne _08064800
	movs r5, #0x80
	lsls r5, r5, #9
	str r5, [sp]
	movs r4, #0x10
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
	b _0806482A
	.align 2, 0
_080647F8: .4byte 0x08118B34
_080647FC: .4byte 0x0000011F
_08064800:
	cmp r0, #0xef
	bne _0806482A
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
_0806482A:
	ldrh r1, [r7, #0x24]
	adds r0, r1, #0
	subs r0, #0xa1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r5, r1, #0
	cmp r0, #0x5d
	bhi _0806486A
	ldrb r0, [r7, #0x14]
	subs r4, r0, #1
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf7
	bls _0806485E
	movs r6, #0x24
	ldrsh r0, [r7, r6]
	ldrb r1, [r7, #0xd]
	bl __modsi3
	cmp r0, #0
	bne _0806486A
	strb r4, [r7, #0x14]
	ldrb r0, [r7, #0xd]
	adds r0, #1
	strb r0, [r7, #0xd]
	b _0806486A
_0806485E:
	ldrh r0, [r7, #0x24]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0806486A
	strb r4, [r7, #0x14]
_0806486A:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc0
	bne _080648A2
	movs r0, #0x20
	ldrsh r4, [r7, r0]
	movs r1, #0x22
	ldrsh r5, [r7, r1]
	add r0, sp, #0x1c
	ldr r1, _080648D4 @ =0x08118B34
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	ldr r2, [sp, #0x28]
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	cmp r0, #0
	beq _0806489E
	adds r1, r0, #0
	adds r1, #0x42
	strh r4, [r1]
	adds r0, #0x46
	strh r5, [r0]
_0806489E:
	movs r0, #1
	strb r0, [r7, #0xd]
_080648A2:
	movs r5, #0x24
	ldrsh r0, [r7, r5]
	cmp r0, #0xa0
	bne _080648D8
	movs r5, #0x80
	lsls r5, r5, #9
	str r5, [sp]
	movs r4, #0x10
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
	b _08064902
	.align 2, 0
_080648D4: .4byte 0x08118B34
_080648D8:
	cmp r0, #0x98
	bne _08064902
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
_08064902:
	movs r6, #0x24
	ldrsh r0, [r7, r6]
	ldrh r1, [r7, #0x24]
	cmp r0, #0x9f
	bgt _0806492C
	cmp r0, #0x9c
	ble _08064918
	ldrb r0, [r7, #0x14]
	adds r0, #1
	strb r0, [r7, #0x14]
	b _0806492C
_08064918:
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _0806492C
	ldrb r0, [r7, #0x14]
	adds r0, #1
	strb r0, [r7, #0x14]
	ldrb r0, [r7, #0xd]
	adds r0, #1
	strb r0, [r7, #0xd]
_0806492C:
	movs r0, #0xf
	ands r1, r0
	cmp r1, #0
	bne _08064944
	ldrh r0, [r7, #0x1c]
	cmp r0, #0xd0
	beq _08064944
	adds r0, #1
	strh r0, [r7, #0x1c]
	ldrh r0, [r7, #0x1e]
	adds r0, #1
	strh r0, [r7, #0x1e]
_08064944:
	movs r1, #0x24
	ldrsh r0, [r7, r1]
	movs r1, #0x19
	bl __modsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08064962
	ldrh r1, [r7, #0x20]
	movs r2, #0x20
	ldrsh r0, [r7, r2]
	cmp r0, #0x78
	ble _08064962
	subs r0, r1, #1
	strh r0, [r7, #0x20]
_08064962:
	movs r3, #0x24
	ldrsh r0, [r7, r3]
	movs r1, #0x32
	bl __modsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08064980
	ldrh r1, [r7, #0x22]
	movs r5, #0x22
	ldrsh r0, [r7, r5]
	cmp r0, #0x50
	ble _08064980
	subs r0, r1, #1
	strh r0, [r7, #0x22]
_08064980:
	movs r6, #0x24
	ldrsh r0, [r7, r6]
	cmp r0, #0x40
	bne _080649B4
	movs r0, #0x20
	ldrsh r4, [r7, r0]
	movs r1, #0x22
	ldrsh r5, [r7, r1]
	add r0, sp, #0x1c
	ldr r1, _08064A34 @ =0x08118B34
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	ldr r2, [sp, #0x1c]
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	cmp r0, #0
	beq _080649B4
	adds r1, r0, #0
	adds r1, #0x42
	strh r4, [r1]
	adds r0, #0x46
	strh r5, [r0]
_080649B4:
	movs r6, #0x24
	ldrsh r5, [r7, r6]
	cmp r5, #0x20
	bne _080649E0
	movs r4, #0x80
	lsls r4, r4, #9
	str r4, [sp]
	str r5, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	movs r3, #0
	bl sub_0803D18C
	str r4, [sp]
	str r5, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	movs r3, #0
	bl sub_0803CDF0
_080649E0:
	movs r1, #0x24
	ldrsh r0, [r7, r1]
	cmp r0, #0x30
	bne _08064A0E
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
_08064A0E:
	ldrh r0, [r7, #0x24]
	subs r0, #1
	movs r2, #0
	strh r0, [r7, #0x24]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08064A24
	b _080650CE
_08064A24:
	movs r0, #0
	strh r0, [r7, #0x24]
	strb r2, [r7, #0xd]
	ldrb r0, [r7, #0x15]
	adds r0, #1
	strb r0, [r7, #0x15]
	strb r2, [r7, #0x16]
	b _080650CE
	.align 2, 0
_08064A34: .4byte 0x08118B34
_08064A38:
	ldrb r0, [r7, #0x16]
	cmp r0, #0
	bne _08064A50
	strb r0, [r7, #0xd]
	movs r1, #0
	strh r0, [r7, #0x36]
	adds r0, r7, #0
	adds r0, #0x34
	strb r1, [r0]
	ldrb r0, [r7, #0x16]
	adds r0, #1
	strb r0, [r7, #0x16]
_08064A50:
	movs r5, #0
	add r4, sp, #8
	movs r6, #0x80
	lsls r6, r6, #8
_08064A58:
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	ldrh r0, [r7, #0x20]
	strh r0, [r4, #8]
	ldrh r0, [r7, #0x22]
	subs r0, r0, r5
	strh r0, [r4, #0xa]
	ldrh r0, [r7, #0x1c]
	strh r0, [r4, #0xc]
	ldrh r0, [r7, #0x1e]
	strh r0, [r4, #0xe]
	ldrb r0, [r7, #0x14]
	lsls r0, r0, #8
	strh r0, [r4, #0x10]
	add r0, sp, #8
	mov r1, r8
	movs r2, #1
	bl BgAffineSet
	movs r2, #0x10
	add r8, r2
	adds r5, #1
	cmp r5, #0x9f
	ble _08064A58
	ldrb r1, [r7, #0xd]
	movs r0, #1
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	beq _08064AB2
	ldrh r0, [r7, #0x1c]
	cmp r0, #0xd0
	beq _08064AA6
	adds r0, #1
	strh r0, [r7, #0x1c]
	ldrh r0, [r7, #0x1e]
	adds r0, #1
	strh r0, [r7, #0x1e]
	b _08064AB2
_08064AA6:
	movs r0, #0
	movs r1, #0
	strh r1, [r7, #0x18]
	movs r1, #5
	strb r1, [r7, #0x15]
	strb r0, [r7, #0x16]
_08064AB2:
	adds r0, r2, #1
	strb r0, [r7, #0xd]
	b _080650CE
_08064AB8:
	ldrb r6, [r7, #0x16]
	cmp r6, #0
	bne _08064B2C
	movs r3, #0x20
	ldrsh r4, [r7, r3]
	movs r0, #0x22
	ldrsh r5, [r7, r0]
	mov sb, r5
	add r0, sp, #0x1c
	ldr r1, _08064BA8 @ =0x08118B34
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	ldr r2, [sp, #0x2c]
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	cmp r0, #0
	beq _08064AEE
	adds r1, r0, #0
	adds r1, #0x42
	strh r4, [r1]
	adds r0, #0x46
	mov r5, sb
	strh r5, [r0]
_08064AEE:
	movs r5, #0x80
	lsls r5, r5, #9
	str r5, [sp]
	movs r4, #0xff
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
	movs r0, #0x80
	bl sub_08000EA8
	strb r6, [r7, #0x14]
	strb r6, [r7, #0xd]
	adds r1, r7, #0
	adds r1, #0x38
	movs r0, #5
	strb r0, [r1]
	ldrb r0, [r7, #0x16]
	adds r0, #1
	strb r0, [r7, #0x16]
_08064B2C:
	movs r6, #0x26
	adds r6, r6, r7
	mov sb, r6
	movs r0, #0
	strb r0, [r6]
	adds r6, r7, #0
	adds r6, #0x27
	strb r0, [r6]
	ldrb r0, [r7, #0x14]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe5
	bls _08064B6C
	bl RandomNumberGenerator
	movs r5, #3
	ands r0, r5
	movs r4, #2
	subs r0, r4, r0
	str r0, [sp, #0x30]
	bl RandomNumberGenerator
	ands r0, r5
	subs r0, r4, r0
	mov sl, r0
	add r0, sp, #0x30
	ldrb r1, [r0]
	mov r0, sb
	strb r1, [r0]
	mov r1, sl
	strb r1, [r6]
_08064B6C:
	movs r5, #0
	movs r6, #0
	add r4, sp, #8
_08064B72:
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldrh r2, [r7, #0x20]
	strh r2, [r4, #8]
	movs r3, #0x22
	ldrsh r0, [r7, r3]
	subs r0, #0x54
	cmp r5, r0
	ble _08064BCA
	movs r0, #0
	mov sb, r0
	adds r6, #1
	cmp r6, #0x4f
	bgt _08064BAC
	ldrh r0, [r7, #0x18]
	cmp r6, r0
	bge _08064B9C
	subs r0, r0, r6
	mov sb, r0
_08064B9C:
	mov r1, sb
	lsls r0, r1, #1
	add sb, r0
	mov r3, sb
	adds r0, r2, r3
	b _08064BC8
	.align 2, 0
_08064BA8: .4byte 0x08118B34
_08064BAC:
	movs r0, #0xa0
	subs r0, r0, r6
	ldrh r1, [r7, #0x18]
	cmp r0, r1
	bge _08064BBE
	adds r0, r1, #0
	subs r0, #0xa0
	adds r0, r0, r6
	mov sb, r0
_08064BBE:
	mov r1, sb
	lsls r0, r1, #1
	add sb, r0
	mov r3, sb
	subs r0, r2, r3
_08064BC8:
	strh r0, [r4, #8]
_08064BCA:
	ldrh r0, [r7, #0x22]
	subs r2, r0, r5
	strh r2, [r4, #0xa]
	ldrh r1, [r7, #0x24]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08064BE8
	ldrh r0, [r4, #8]
	ldr r1, [sp, #0x30]
	adds r0, r0, r1
	strh r0, [r4, #8]
	mov r3, sl
	adds r0, r2, r3
	strh r0, [r4, #0xa]
_08064BE8:
	ldrh r0, [r7, #0x1c]
	strh r0, [r4, #0xc]
	ldrh r0, [r7, #0x1e]
	strh r0, [r4, #0xe]
	ldrb r0, [r7, #0x14]
	lsls r0, r0, #8
	strh r0, [r4, #0x10]
	add r0, sp, #8
	mov r1, r8
	movs r2, #1
	bl BgAffineSet
	movs r0, #0x10
	add r8, r0
	adds r5, #1
	cmp r5, #0x9f
	ble _08064B72
	movs r1, #0x24
	ldrsh r0, [r7, r1]
	movs r1, #5
	bl __modsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08064C28
	ldrh r1, [r7, #0x20]
	movs r2, #0x20
	ldrsh r0, [r7, r2]
	cmp r0, #0x78
	ble _08064C28
	subs r0, r1, #1
	strh r0, [r7, #0x20]
_08064C28:
	movs r3, #0x24
	ldrsh r0, [r7, r3]
	movs r1, #0xa
	bl __modsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08064C46
	ldrh r1, [r7, #0x22]
	movs r5, #0x22
	ldrsh r0, [r7, r5]
	cmp r0, #0x50
	ble _08064C46
	subs r0, r1, #1
	strh r0, [r7, #0x22]
_08064C46:
	movs r6, #0x24
	ldrsh r0, [r7, r6]
	cmp r0, #0x1e
	bne _08064C76
	movs r6, #0x80
	lsls r6, r6, #9
	movs r5, #0
	str r5, [sp]
	movs r4, #0x60
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
_08064C76:
	movs r1, #0x24
	ldrsh r0, [r7, r1]
	cmp r0, #0x9e
	bne _08064CEC
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
	movs r0, #0x80
	bl sub_08000EA8
	movs r6, #0xdf
	ldr r2, _08064F00 @ =gEwramData
	mov r8, r2
	ldr r5, _08064F04 @ =0x000077E0
_08064CB2:
	mov r3, r8
	ldr r0, [r3]
	adds r4, r0, r5
	adds r0, r4, #0
	adds r0, #0x63
	ldrb r0, [r0]
	cmp r0, #1
	bne _08064CD6
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r4, #0
	bl EntityDelete
_08064CD6:
	subs r5, #0x84
	subs r6, #1
	cmp r6, #0
	bge _08064CB2
	movs r5, #0x20
	ldrsh r1, [r7, r5]
	movs r6, #0x22
	ldrsh r2, [r7, r6]
	adds r0, r7, #0
	bl sub_08063AEC
_08064CEC:
	movs r1, #0x24
	ldrsh r0, [r7, r1]
	cmp r0, #0x9f
	ble _08064CF6
	b _08064F0C
_08064CF6:
	ldrh r2, [r7, #0x18]
	cmp r2, #0x53
	bhi _08064D0A
	ldrh r0, [r7, #0x24]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08064D0A
	adds r0, r2, #1
	strh r0, [r7, #0x18]
_08064D0A:
	movs r2, #0x24
	ldrsh r0, [r7, r2]
	movs r1, #5
	bl __modsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08064D28
	ldrb r0, [r7, #0x14]
	subs r1, r0, #1
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xbf
	bls _08064D28
	strb r1, [r7, #0x14]
_08064D28:
	movs r3, #0x24
	ldrsh r0, [r7, r3]
	movs r1, #0xa
	bl __modsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08064DAA
	movs r5, #0x24
	ldrsh r0, [r7, r5]
	cmp r0, #0x4f
	bgt _08064DAA
	bl RandomNumberGenerator
	adds r5, r0, #0
	movs r6, #0x24
	ldrsh r0, [r7, r6]
	movs r1, #0xa
	bl __divsi3
	adds r4, r0, #0
	movs r6, #0xf
	ands r5, r6
	subs r5, #0x88
	subs r4, r4, r5
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl RandomNumberGenerator
	ands r0, r6
	movs r1, #0x26
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_08063024
	bl RandomNumberGenerator
	movs r5, #0x1f
	ands r0, r5
	movs r4, #0x80
	subs r4, r4, r0
	movs r1, #0x24
	ldrsh r0, [r7, r1]
	movs r1, #0xa
	bl __divsi3
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl RandomNumberGenerator
	ands r0, r5
	movs r1, #0x92
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #1
	movs r3, #0
	bl sub_08063024
_08064DAA:
	ldrh r0, [r7, #0x24]
	subs r0, #0x48
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bhi _08064DDE
	bl RandomNumberGenerator
	movs r5, #0xf
	ands r0, r5
	movs r4, #0xb2
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl RandomNumberGenerator
	ands r0, r5
	movs r1, #0x80
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #1
	movs r3, #0
	bl sub_08063024
_08064DDE:
	movs r2, #0x24
	ldrsh r0, [r7, r2]
	cmp r0, #0x60
	bne _08064E08
	ldr r2, _08064F08 @ =sub_0806384C
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r1, r0, #0
	cmp r1, #0
	beq _08064E08
	adds r2, r1, #0
	adds r2, #0x42
	movs r0, #0x8c
	strh r0, [r2]
	adds r2, #4
	movs r0, #0x32
	strh r0, [r2]
	movs r0, #4
	strb r0, [r1, #0xd]
_08064E08:
	ldrh r0, [r7, #0x24]
	subs r0, #0x70
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bhi _08064E3E
	bl RandomNumberGenerator
	movs r1, #0xf
	ands r1, r0
	movs r4, #0x9e
	subs r4, r4, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl RandomNumberGenerator
	movs r2, #7
	ands r2, r0
	movs r1, #0x70
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #1
	movs r3, #0
	bl sub_08063024
_08064E3E:
	ldrh r0, [r7, #0x24]
	subs r0, #0x80
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bhi _08064E7E
	bl RandomNumberGenerator
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _08064E7E
	bl RandomNumberGenerator
	movs r5, #7
	ands r0, r5
	movs r4, #0x48
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl RandomNumberGenerator
	ands r0, r5
	movs r1, #0x4e
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_08063024
_08064E7E:
	ldrh r1, [r7, #0x24]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08064F64
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x70
	ble _08064F64
	cmp r0, #0x97
	bgt _08064F64
	bl RandomNumberGenerator
	adds r5, r0, #0
	movs r3, #0x24
	ldrsh r0, [r7, r3]
	movs r1, #0xa
	bl __divsi3
	adds r4, r0, #0
	movs r6, #0xf
	ands r5, r6
	subs r5, #0x88
	subs r4, r4, r5
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl RandomNumberGenerator
	ands r0, r6
	movs r1, #0x4e
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_08063024
	bl RandomNumberGenerator
	ands r0, r6
	movs r4, #0x78
	subs r4, r4, r0
	movs r5, #0x24
	ldrsh r0, [r7, r5]
	movs r1, #0xa
	bl __divsi3
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl RandomNumberGenerator
	ands r0, r6
	movs r1, #0x62
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #1
	movs r3, #0
	bl sub_08063024
	b _08064F64
	.align 2, 0
_08064F00: .4byte gEwramData
_08064F04: .4byte 0x000077E0
_08064F08: .4byte sub_0806384C
_08064F0C:
	ldrh r1, [r7, #0x24]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _08064F40
	ldrb r0, [r7, #0x14]
	subs r2, r0, #1
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xbf
	bhi _08064F3E
	movs r0, #0
	strh r1, [r7, #0x18]
	strh r1, [r7, #0x24]
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0x15]
	adds r0, #2
	strb r0, [r7, #0x15]
	adds r2, r7, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	b _080650CE
_08064F3E:
	strb r2, [r7, #0x14]
_08064F40:
	ldrh r0, [r7, #0x1c]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r0, _08064F50 @ =0x00003FFF
	cmp r1, r0
	bgt _08064F54
	strh r1, [r7, #0x1c]
	b _08064F5A
	.align 2, 0
_08064F50: .4byte 0x00003FFF
_08064F54:
	movs r0, #0x80
	lsls r0, r0, #7
	strh r0, [r7, #0x1c]
_08064F5A:
	ldrh r0, [r7, #0x1e]
	cmp r0, #0
	beq _08064F64
	subs r0, #4
	strh r0, [r7, #0x1e]
_08064F64:
	ldrh r0, [r7, #0x24]
	adds r0, #1
	strh r0, [r7, #0x24]
	adds r0, r7, #0
	bl sub_0806447C
	b _080650CE
_08064F72:
	movs r5, #0
	add r4, sp, #8
	movs r6, #0x80
	lsls r6, r6, #8
_08064F7A:
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	ldrh r0, [r7, #0x20]
	strh r0, [r4, #8]
	ldrh r0, [r7, #0x22]
	subs r0, r0, r5
	strh r0, [r4, #0xa]
	ldrh r0, [r7, #0x1c]
	strh r0, [r4, #0xc]
	ldrh r0, [r7, #0x1e]
	strh r0, [r4, #0xe]
	ldrb r0, [r7, #0x14]
	lsls r0, r0, #8
	strh r0, [r4, #0x10]
	add r0, sp, #8
	mov r1, r8
	movs r2, #1
	bl BgAffineSet
	movs r0, #0x10
	add r8, r0
	adds r5, #1
	cmp r5, #0x9f
	ble _08064F7A
	ldrh r1, [r7, #0x1c]
	ldr r0, _08064FDC @ =0x0000FFFE
	cmp r1, r0
	bhi _08064FBA
	movs r2, #0xc8
	lsls r2, r2, #3
	adds r0, r1, r2
	strh r0, [r7, #0x1c]
_08064FBA:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08064FCA
	b _080650CE
_08064FCA:
	movs r1, #0
	movs r0, #0
	strh r0, [r7, #0x18]
	ldrb r0, [r7, #0x15]
	adds r0, #1
	strb r0, [r7, #0x15]
	strb r1, [r7, #0xd]
	b _080650CE
	.align 2, 0
_08064FDC: .4byte 0x0000FFFE
_08064FE0:
	movs r5, #0
	add r4, sp, #8
	movs r6, #0x80
	lsls r6, r6, #8
_08064FE8:
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	ldrh r0, [r7, #0x20]
	add r0, sb
	strh r0, [r4, #8]
	ldrh r0, [r7, #0x22]
	subs r0, r0, r5
	strh r0, [r4, #0xa]
	ldrh r0, [r7, #0x1c]
	strh r0, [r4, #0xc]
	ldrh r0, [r7, #0x1e]
	strh r0, [r4, #0xe]
	ldrb r0, [r7, #0x14]
	lsls r0, r0, #8
	strh r0, [r4, #0x10]
	add r0, sp, #8
	mov r1, r8
	movs r2, #1
	bl BgAffineSet
	movs r3, #0x10
	add r8, r3
	adds r5, #1
	cmp r5, #0x9f
	ble _08064FE8
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	bne _0806505A
	ldrh r0, [r7, #0x1c]
	ldrh r2, [r7, #0x1e]
	movs r3, #0xc0
	lsls r3, r3, #1
	movs r5, #0x80
	lsls r5, r5, #6
	adds r0, r0, r5
	movs r1, #0x80
	lsls r1, r1, #7
	cmp r0, r1
	bgt _0806503A
	strh r0, [r7, #0x1c]
	b _0806503C
_0806503A:
	strh r1, [r7, #0x1c]
_0806503C:
	adds r0, r2, r3
	movs r1, #0x80
	lsls r1, r1, #7
	cmp r0, r1
	bgt _0806504C
	ldrh r0, [r7, #0x1e]
	adds r0, r0, r3
	b _080650CC
_0806504C:
	strh r1, [r7, #0x1e]
	ldrb r0, [r7, #0x15]
	adds r0, #1
	strb r0, [r7, #0x15]
	movs r0, #0x10
	strb r0, [r7, #0xd]
	b _080650CE
_0806505A:
	subs r0, #1
	strb r0, [r7, #0xd]
	b _080650CE
_08065060:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080650CE
	movs r0, #0
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0x15]
	adds r0, #1
	strb r0, [r7, #0x15]
	b _080650CE
_0806507A:
	movs r5, #0
	add r4, sp, #8
	movs r6, #0x80
	lsls r6, r6, #8
_08065082:
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	ldrh r0, [r7, #0x20]
	add r0, sb
	strh r0, [r4, #8]
	ldrh r0, [r7, #0x22]
	subs r0, r0, r5
	strh r0, [r4, #0xa]
	ldrh r0, [r7, #0x1c]
	strh r0, [r4, #0xc]
	ldrh r0, [r7, #0x1e]
	strh r0, [r4, #0xe]
	ldrb r0, [r7, #0x14]
	lsls r0, r0, #8
	strh r0, [r4, #0x10]
	add r0, sp, #8
	mov r1, r8
	movs r2, #1
	bl BgAffineSet
	movs r0, #0x10
	add r8, r0
	adds r5, #1
	cmp r5, #0x9f
	ble _08065082
	ldrb r1, [r7, #0xd]
	adds r0, r1, #1
	strb r0, [r7, #0xd]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080650C8
	movs r0, #0x80
	lsls r0, r0, #7
	b _080650CC
_080650C8:
	movs r0, #0xc0
	lsls r0, r0, #6
_080650CC:
	strh r0, [r7, #0x1e]
_080650CE:
	ldr r0, _080650F0 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _080650F4 @ =0x00007864
	adds r1, r1, r2
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080650F0: .4byte gEwramData
_080650F4: .4byte 0x00007864

	thumb_func_start sub_080650f8
sub_080650f8: @ 0x080650F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r6, r0, #0
	ldr r0, _08065148 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0806514C @ =0x00007864
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _08065150 @ =0x0000786C
	adds r0, r0, r1
	adds r2, r2, r0
	mov r8, r2
	movs r2, #0
	mov sb, r2
	ldr r3, _08065154 @ =0x04000020
	movs r0, #0
	movs r1, #0xa0
	movs r2, #0x10
	bl sub_08001718
	ldrb r0, [r6, #0x15]
	cmp r0, #8
	bls _0806513E
	b _08065450
_0806513E:
	lsls r0, r0, #2
	ldr r1, _08065158 @ =_0806515C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08065148: .4byte gEwramData
_0806514C: .4byte 0x00007864
_08065150: .4byte 0x0000786C
_08065154: .4byte 0x04000020
_08065158: .4byte _0806515C
_0806515C: @ jump table
	.4byte _08065180 @ case 0
	.4byte _0806519E @ case 1
	.4byte _080651AE @ case 2
	.4byte _0806520A @ case 3
	.4byte _080652DC @ case 4
	.4byte _08065388 @ case 5
	.4byte _08065450 @ case 6
	.4byte _08065450 @ case 7
	.4byte _080653EC @ case 8
_08065180:
	ldrb r0, [r6, #0x15]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0x15]
	movs r0, #0x98
	strh r0, [r6, #0x20]
	movs r0, #0x60
	strh r0, [r6, #0x22]
	movs r0, #0xd0
	strh r0, [r6, #0x1c]
	strh r0, [r6, #0x1e]
	strh r1, [r6, #0x28]
	movs r0, #0x80
	strh r0, [r6, #0x2a]
	b _08065450
_0806519E:
	movs r1, #0
	movs r0, #0x20
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0x15]
	adds r0, #1
	strb r0, [r6, #0x15]
	strh r1, [r6, #0x18]
	b _08065450
_080651AE:
	movs r7, #0
	movs r3, #0x80
	lsls r3, r3, #8
	mov r4, sp
	movs r0, #0
	mov sb, r0
	movs r5, #0xd0
_080651BC:
	str r3, [sp]
	str r3, [sp, #4]
	ldrh r0, [r6, #0x20]
	strh r0, [r4, #8]
	ldrh r0, [r6, #0x22]
	subs r0, r0, r7
	strh r0, [r4, #0xa]
	strh r5, [r4, #0xc]
	strh r5, [r4, #0xe]
	mov r1, sb
	strh r1, [r4, #0x10]
	mov r0, sp
	mov r1, r8
	movs r2, #1
	str r3, [sp, #0x14]
	bl BgAffineSet
	movs r2, #0x10
	add r8, r2
	adds r7, #1
	ldr r3, [sp, #0x14]
	cmp r7, #0x9f
	ble _080651BC
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080651FA
	b _08065450
_080651FA:
	movs r1, #0
	movs r0, #0
	strh r0, [r6, #0x18]
	ldrb r0, [r6, #0x15]
	adds r0, #1
	strb r0, [r6, #0x15]
	strb r1, [r6, #0xd]
	b _08065450
_0806520A:
	ldr r0, _080652D8 @ =0x08119FDC
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_0803C918
	ldrb r0, [r6, #0xd]
	movs r1, #0x18
	bl __umodsi3
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08065256
	bl RandomNumberGenerator
	ldrh r4, [r6, #0x20]
	adds r4, #0x18
	movs r1, #0x30
	bl __umodsi3
	subs r4, r4, r0
	subs r4, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl RandomNumberGenerator
	ldrh r2, [r6, #0x22]
	movs r1, #0x7f
	ands r1, r0
	subs r2, r2, r1
	adds r2, #0x30
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	movs r3, #0
	bl sub_08062F8C
_08065256:
	bl RandomNumberGenerator
	movs r5, #3
	ands r0, r5
	movs r4, #2
	subs r0, r4, r0
	mov sb, r0
	bl RandomNumberGenerator
	ands r0, r5
	subs r4, r4, r0
	movs r7, #0
	mov r5, sp
	movs r0, #0
	mov sl, r0
_08065274:
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [sp]
	str r0, [sp, #4]
	ldrh r3, [r6, #0x20]
	strh r3, [r5, #8]
	ldrh r0, [r6, #0x22]
	subs r2, r0, r7
	strh r2, [r5, #0xa]
	ldrb r1, [r6, #0xd]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806529A
	mov r1, sb
	adds r0, r3, r1
	strh r0, [r5, #8]
	adds r0, r2, r4
	strh r0, [r5, #0xa]
_0806529A:
	movs r0, #0xd0
	strh r0, [r5, #0xc]
	strh r0, [r5, #0xe]
	mov r2, sl
	strh r2, [r5, #0x10]
	mov r0, sp
	mov r1, r8
	movs r2, #1
	bl BgAffineSet
	movs r0, #0x10
	add r8, r0
	adds r7, #1
	cmp r7, #0x9f
	ble _08065274
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x81
	beq _080652C8
	b _08065450
_080652C8:
	movs r1, #0
	movs r0, #0
	strh r0, [r6, #0x18]
	strb r1, [r6, #0xd]
	ldrb r0, [r6, #0x15]
	adds r0, #1
	strb r0, [r6, #0x15]
	b _08065450
	.align 2, 0
_080652D8: .4byte 0x08119FDC
_080652DC:
	movs r7, #0
	mov r4, sp
_080652E0:
	cmp r7, #0x4f
	bgt _08065314
	movs r1, #0
	str r1, [sp]
	movs r2, #0x2a
	ldrsh r0, [r6, r2]
	lsls r0, r0, #8
	str r0, [sp, #4]
	strh r1, [r4, #8]
	ldrh r0, [r6, #0x22]
	subs r0, r0, r7
	strh r0, [r4, #0xa]
	mov sb, r1
	ldrh r0, [r6, #0x18]
	cmp r7, r0
	bge _08065304
	subs r0, r0, r7
	mov sb, r0
_08065304:
	ldrh r0, [r6, #0x1c]
	mov r2, sb
	subs r0, r0, r2
	strh r0, [r4, #0xc]
	ldrh r0, [r6, #0x1e]
	strh r0, [r4, #0xe]
	strh r1, [r4, #0x10]
	b _08065350
_08065314:
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [sp]
	movs r1, #0x2a
	ldrsh r0, [r6, r1]
	lsls r0, r0, #8
	str r0, [sp, #4]
	movs r2, #0
	movs r0, #0xc8
	strh r0, [r4, #8]
	ldrh r0, [r6, #0x22]
	subs r0, r0, r7
	strh r0, [r4, #0xa]
	mov sb, r2
	movs r0, #0xa0
	subs r0, r0, r7
	ldrh r1, [r6, #0x18]
	cmp r0, r1
	bge _08065342
	adds r0, r1, #0
	subs r0, #0xa0
	adds r0, r0, r7
	mov sb, r0
_08065342:
	ldrh r0, [r6, #0x1c]
	mov r1, sb
	subs r0, r0, r1
	strh r0, [r4, #0xc]
	ldrh r0, [r6, #0x1e]
	strh r0, [r4, #0xe]
	strh r2, [r4, #0x10]
_08065350:
	mov r0, sp
	mov r1, r8
	movs r2, #1
	bl BgAffineSet
	movs r2, #0x10
	add r8, r2
	adds r7, #1
	cmp r7, #0x9f
	ble _080652E0
	ldrh r0, [r6, #0x18]
	adds r0, #1
	strh r0, [r6, #0x18]
	ldrb r0, [r6, #0xd]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0806537A
	ldrh r0, [r6, #0x1e]
	adds r0, #1
	strh r0, [r6, #0x1e]
_0806537A:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	ldrh r0, [r6, #0x24]
	adds r0, #1
	strh r0, [r6, #0x24]
	b _08065450
_08065388:
	ldr r0, _080653E8 @ =0x08119FDC
	movs r1, #8
	movs r2, #1
	movs r3, #0
	bl sub_0803C918
	movs r7, #0
	mov r4, sp
	movs r5, #0x80
	lsls r5, r5, #8
_0806539C:
	str r5, [sp]
	str r5, [sp, #4]
	ldrh r0, [r6, #0x20]
	strh r0, [r4, #8]
	ldrh r0, [r6, #0x22]
	subs r0, r0, r7
	strh r0, [r4, #0xa]
	ldrh r0, [r6, #0x1c]
	strh r0, [r4, #0xc]
	ldrh r0, [r6, #0x1e]
	strh r0, [r4, #0xe]
	ldrb r0, [r6, #0x14]
	lsls r0, r0, #8
	strh r0, [r4, #0x10]
	mov r0, sp
	mov r1, r8
	movs r2, #1
	bl BgAffineSet
	movs r0, #0x10
	add r8, r0
	adds r7, #1
	cmp r7, #0x9f
	ble _0806539C
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x80
	bls _08065450
	movs r0, #0
	movs r1, #0
	strh r1, [r6, #0x18]
	strb r0, [r6, #0xd]
	movs r0, #8
	strb r0, [r6, #0x15]
	b _08065450
	.align 2, 0
_080653E8: .4byte 0x08119FDC
_080653EC:
	ldr r0, _08065470 @ =0x08119FDC
	movs r1, #9
	movs r2, #1
	movs r3, #0
	bl sub_0803C918
	ldr r0, _08065474 @ =0x08266544
	adds r1, r6, #0
	adds r1, #0x2c
	ldrb r3, [r1]
	movs r1, #1
	movs r2, #1
	bl sub_0803C7B4
	movs r7, #0
	mov r4, sp
	movs r5, #0x80
	lsls r5, r5, #8
_08065410:
	str r5, [sp]
	str r5, [sp, #4]
	ldrh r0, [r6, #0x20]
	add r0, sb
	strh r0, [r4, #8]
	ldrh r0, [r6, #0x22]
	subs r0, r0, r7
	strh r0, [r4, #0xa]
	ldrh r0, [r6, #0x1c]
	strh r0, [r4, #0xc]
	ldrh r0, [r6, #0x1e]
	strh r0, [r4, #0xe]
	ldrb r0, [r6, #0x14]
	lsls r0, r0, #8
	strh r0, [r4, #0x10]
	mov r0, sp
	mov r1, r8
	movs r2, #1
	bl BgAffineSet
	movs r1, #0x10
	add r8, r1
	adds r7, #1
	cmp r7, #0x9f
	ble _08065410
	ldrh r1, [r6, #0x1e]
	ldr r0, _08065478 @ =0x0000FFFE
	cmp r1, r0
	bhi _08065450
	adds r0, r1, #0
	adds r0, #0x40
	strh r0, [r6, #0x1e]
_08065450:
	ldr r0, _0806547C @ =gEwramData
	ldr r1, [r0]
	ldr r2, _08065480 @ =0x00007864
	adds r1, r1, r2
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08065470: .4byte 0x08119FDC
_08065474: .4byte 0x08266544
_08065478: .4byte 0x0000FFFE
_0806547C: .4byte gEwramData
_08065480: .4byte 0x00007864

	thumb_func_start sub_08065484
sub_08065484: @ 0x08065484
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _080655D4 @ =0x08522C54
	mov sl, r0
	ldr r4, _080655D8 @ =gEwramData
	ldr r0, [r4]
	adds r0, #0x60
	str r0, [sp]
	ldr r1, _080655DC @ =gUnk_03002CB0
	mov r2, sl
	ldrh r0, [r2]
	strh r0, [r1]
	mov r0, sl
	bl sub_080108DC
	mov r0, sl
	bl sub_080108FC
	mov r3, sl
	ldr r6, [r3, #8]
	ldr r0, _080655E0 @ =gDisplayRegisters
	movs r7, #1
	movs r1, #0x1c
	mov r8, r1
	adds r0, #2
	mov sb, r0
_080654C0:
	ldrh r0, [r6, #2]
	mov r2, sb
	strh r0, [r2]
	ldr r3, _080655D8 @ =gEwramData
	ldr r0, [r3]
	add r0, r8
	ldrb r1, [r6, #1]
	ldr r2, _080655E4 @ =0x0000A090
	adds r0, r0, r2
	strb r1, [r0]
	ldr r1, [r3]
	add r1, r8
	ldrh r2, [r6, #4]
	ldr r3, _080655E8 @ =0x0000A08C
	adds r0, r1, r3
	strh r2, [r0]
	ldrh r0, [r6, #6]
	ldr r2, _080655EC @ =0x0000A08E
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
	movs r0, #0
	bl sub_0800ED5C
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldrb r1, [r6, #1]
	ldr r0, [r6, #8]
	ldrb r2, [r0, #1]
	ldrh r3, [r6, #6]
	movs r0, #0
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
	movs r0, #2
	add sb, r0
	adds r7, #1
	cmp r7, #3
	ble _080654C0
	movs r0, #0
	movs r1, #0
	bl sub_0803DD14
	bl sub_0803FD60
	mov r0, sl
	adds r0, #0x22
	ldrb r1, [r0]
	lsls r1, r1, #0x19
	ldr r3, [sp]
	adds r3, #0x2c
	lsrs r1, r1, #0x19
	ldrb r2, [r3]
	movs r0, #0x80
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	mov r1, sl
	ldrh r0, [r1, #0x22]
	movs r1, #0xfe
	lsls r1, r1, #6
	ands r1, r0
	ldr r3, [sp]
	ldrh r2, [r3, #0x2c]
	ldr r0, _080655F0 @ =0xFFFFC07F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #0x2c]
	mov r4, sl
	adds r4, #0x23
	ldrb r1, [r4]
	lsls r1, r1, #0x19
	adds r3, #0x2e
	lsrs r1, r1, #0x1f
	ldrb r2, [r3]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _080655D8 @ =gEwramData
	ldr r2, [r0]
	ldrb r1, [r4]
	ldr r0, _080655F4 @ =0x0000A074
	adds r2, r2, r0
	lsrs r1, r1, #7
	lsls r1, r1, #6
	ldrb r3, [r2]
	movs r0, #0x3f
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	bl sub_08002278
	ldr r0, _080655F8 @ =0x081183F4
	movs r1, #0
	movs r2, #1
	movs r3, #0xe
	bl sub_0803C918
	ldr r0, _080655FC @ =0x06004000
	bl sub_080412DC
	movs r0, #8
	bl sub_080412F0
	movs r0, #0
	bl sub_08041304
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080655D4: .4byte 0x08522C54
_080655D8: .4byte gEwramData
_080655DC: .4byte gUnk_03002CB0
_080655E0: .4byte gDisplayRegisters
_080655E4: .4byte 0x0000A090
_080655E8: .4byte 0x0000A08C
_080655EC: .4byte 0x0000A08E
_080655F0: .4byte 0xFFFFC07F
_080655F4: .4byte 0x0000A074
_080655F8: .4byte 0x081183F4
_080655FC: .4byte 0x06004000

	thumb_func_start sub_08065600
sub_08065600: @ 0x08065600
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08065668 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0806566C @ =0x00007864
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _08065670 @ =0x0000786C
	adds r0, r0, r1
	adds r5, r2, r0
	ldr r4, [r2]
	lsls r4, r4, #0xa
	ldr r0, _08065674 @ =gDisplayRegisters
	ldrh r0, [r0, #0x12]
	mov r8, r0
	ldr r3, _08065678 @ =0x04000018
	movs r0, #0
	movs r1, #0xa0
	movs r2, #2
	bl sub_08001718
	movs r6, #0
	movs r7, #2
_0806563E:
	mov r0, r8
	adds r2, r6, r0
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r2, r0
	bgt _0806565E
	movs r0, #1
	ands r2, r0
	ldr r0, _08065668 @ =gEwramData
	ldr r0, [r0]
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	lsrs r0, r0, #4
	cmp r2, r0
	bne _0806567C
_0806565E:
	lsls r0, r7, #1
	adds r0, r0, r5
	movs r1, #0
	strh r1, [r0]
	b _08065686
	.align 2, 0
_08065668: .4byte gEwramData
_0806566C: .4byte 0x00007864
_08065670: .4byte 0x0000786C
_08065674: .4byte gDisplayRegisters
_08065678: .4byte 0x04000018
_0806567C:
	adds r0, r4, #0
	bl sub_080009E4
	asrs r0, r0, #0xf
	strh r0, [r5]
_08065686:
	adds r5, #2
	ldr r1, _080656B0 @ =0xFFFFE000
	adds r4, r4, r1
	adds r6, #1
	adds r7, #3
	cmp r6, #0x9f
	ble _0806563E
	ldr r0, _080656B4 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _080656B8 @ =0x00007864
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
_080656B0: .4byte 0xFFFFE000
_080656B4: .4byte gEwramData
_080656B8: .4byte 0x00007864

	thumb_func_start sub_080656BC
sub_080656BC: @ 0x080656BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _08065740 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x99
	lsls r1, r1, #3
	adds r0, r2, r1
	ldr r0, [r0]
	mov r8, r0
	ldr r1, _08065744 @ =0x00007864
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _08065748 @ =0x0000786C
	adds r0, r0, r1
	adds r7, r2, r0
	movs r6, #0
	ldr r3, _0806574C @ =0x04000020
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
_08065710:
	mov r0, sl
	str r0, [sp]
	movs r0, #0x78
	strh r0, [r4, #8]
	mov r1, sb
	strh r1, [r4, #0xa]
	cmp r5, #0x7f
	bgt _08065750
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
	b _0806576A
	.align 2, 0
_08065740: .4byte gEwramData
_08065744: .4byte 0x00007864
_08065748: .4byte 0x0000786C
_0806574C: .4byte 0x04000020
_08065750:
	lsls r0, r5, #7
	ldr r2, _080657A8 @ =0xFFFFC400
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
_0806576A:
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
	ble _08065710
	ldr r0, _080657AC @ =gEwramData
	ldr r1, [r0]
	ldr r0, _080657B0 @ =0x00007864
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
_080657A8: .4byte 0xFFFFC400
_080657AC: .4byte gEwramData
_080657B0: .4byte 0x00007864

	thumb_func_start sub_080657b4
sub_080657b4: @ 0x080657B4
	push {lr}
	adds r3, r0, #0
	ldr r0, _080657DC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080657E0 @ =0x0000042C
	adds r2, r0, r1
	ldr r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080657E4
	adds r0, r3, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _080657FC
	.align 2, 0
_080657DC: .4byte gEwramData
_080657E0: .4byte 0x0000042C
_080657E4:
	movs r0, #0x20
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r1, r0
	str r1, [r2]
	bl sub_0800EF6C
	movs r0, #0x80
	lsls r0, r0, #5
	bl PlaySong
_080657FC:
	pop {r0}
	bx r0

	thumb_func_start sub_08065800
sub_08065800: @ 0x08065800
	push {r4, lr}
	ldr r4, _0806582C @ =0x085268A8
	ldr r0, _08065830 @ =gEwramData
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	lsrs r0, r0, #1
	ldrh r1, [r4]
	bl __modsi3
	lsls r0, r0, #3
	ldr r1, [r4, #4]
	adds r1, r1, r0
	ldr r0, [r1]
	ldrh r1, [r1, #4]
	ldrh r3, [r4, #2]
	movs r2, #1
	bl sub_0803C918
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806582C: .4byte 0x085268A8
_08065830: .4byte gEwramData

	thumb_func_start sub_08065834
sub_08065834: @ 0x08065834
	push {lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x59
	ldrb r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806584E
	movs r0, #8
	orrs r0, r1
	strb r0, [r3]
	b _08065854
_0806584E:
	adds r0, r2, #0
	bl sub_0803F17C
_08065854:
	pop {r0}
	bx r0

	thumb_func_start sub_08065858
sub_08065858: @ 0x08065858
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
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
	bne _080658A2
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080658A2:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080658AC
sub_080658AC: @ 0x080658AC
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
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
	movs r0, #0x26
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	ldr r2, [r4, #0x1c]
	movs r1, #0
	str r1, [sp]
	adds r5, r4, #0
	adds r5, #0x58
	ldrb r1, [r5]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
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
	bne _08065924
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
_08065924:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0806592C
sub_0806592C: @ 0x0806592C
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
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
	movs r0, #0x26
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	ldr r2, [r4, #0x1c]
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
	bne _0806599A
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0806599A:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080659a4
sub_080659a4: @ 0x080659A4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x2e
	bl sub_08012078
	cmp r0, #0
	beq _080659C0
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _08065A44
_080659C0:
	adds r0, r4, #0
	movs r1, #3
	bl sub_0805B754
	cmp r0, #0
	bne _080659D4
	adds r0, r4, #0
	bl EntityDelete
	b _08065A44
_080659D4:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _08065A4C @ =gEwramData
	ldr r5, [r0]
	ldr r0, _08065A50 @ =0x0000A094
	adds r2, r5, r0
	ldrh r1, [r2, #6]
	movs r0, #0x60
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
	movs r3, #0
	ldr r0, _08065A54 @ =0x00013110
	adds r6, r5, r0
	ldr r0, [r6]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	bge _08065A18
	movs r3, #1
_08065A18:
	adds r2, r4, #0
	adds r2, #0x58
	lsls r3, r3, #6
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	ldr r0, [r6]
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _08065A58 @ =0x0000042C
	adds r2, r5, r0
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
_08065A44:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08065A4C: .4byte gEwramData
_08065A50: .4byte 0x0000A094
_08065A54: .4byte 0x00013110
_08065A58: .4byte 0x0000042C

	thumb_func_start sub_08065a5c
sub_08065a5c: @ 0x08065A5C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r7, #0
	ldr r0, _08065A7C @ =gEwramData
	ldr r5, [r0]
	adds r6, r5, #0
	adds r6, #0x60
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _08065AA2
	cmp r0, #1
	bgt _08065A80
	cmp r0, #0
	beq _08065A88
	b _08065C16
	.align 2, 0
_08065A7C: .4byte gEwramData
_08065A80:
	cmp r0, #0x80
	bne _08065A86
	b _08065C02
_08065A86:
	b _08065C16
_08065A88:
	movs r0, #0xd
	bl sub_08013CF0
	movs r0, #0x28
	bl sub_08067934
	ldr r0, _08065ABC @ =0x00000417
	adds r1, r5, r0
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_08065AA2:
	bl sub_08067A04
	cmp r0, #0
	beq _08065AAE
	movs r0, #0x80
	strb r0, [r4, #0xa]
_08065AAE:
	ldrb r1, [r4, #0xb]
	cmp r1, #0
	beq _08065AC0
	cmp r1, #1
	beq _08065B3C
	b _08065C16
	.align 2, 0
_08065ABC: .4byte 0x00000417
_08065AC0:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _08065AEC
	cmp r0, #1
	bgt _08065AD0
	cmp r0, #0
	beq _08065ADA
	b _08065C16
_08065AD0:
	cmp r0, #2
	beq _08065B04
	cmp r0, #3
	beq _08065B2E
	b _08065C16
_08065ADA:
	ldr r2, _08065B00 @ =0x000003B7
	adds r1, r6, r2
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x30
	strb r0, [r4, #0xd]
_08065AEC:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08065AFC
	b _08065C16
_08065AFC:
	b _08065BB0
	.align 2, 0
_08065B00: .4byte 0x000003B7
_08065B04:
	ldr r0, _08065B20 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08065B24 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x42
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0xa0
	bgt _08065B28
	movs r0, #0xa0
	strh r0, [r1]
	b _08065BB0
	.align 2, 0
_08065B20: .4byte gEwramData
_08065B24: .4byte 0x00013110
_08065B28:
	movs r0, #0x20
	orrs r7, r0
	b _08065C16
_08065B2E:
	ldr r2, _08065B38 @ =0x000003B7
	adds r0, r6, r2
	strb r1, [r0]
	b _08065C16
	.align 2, 0
_08065B38: .4byte 0x000003B7
_08065B3C:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _08065B94
	cmp r0, #1
	bgt _08065C16
	cmp r0, #0
	bne _08065C16
	ldr r2, _08065BB8 @ =0x000003B7
	adds r0, r6, r2
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x48]
	ldr r0, _08065BBC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08065BC0 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
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
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _08065B8E
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_08065B8E:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_08065B94:
	adds r0, r4, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0xff
	ble _08065BC4
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_0805B878
	ldr r0, _08065BB8 @ =0x000003B7
	adds r1, r6, r0
	movs r0, #0
	strb r0, [r1]
_08065BB0:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	b _08065C16
	.align 2, 0
_08065BB8: .4byte 0x000003B7
_08065BBC: .4byte gEwramData
_08065BC0: .4byte 0x00013110
_08065BC4:
	ldr r1, [r4, #0x40]
	ldr r0, [r4, #0x48]
	adds r1, r1, r0
	str r1, [r4, #0x40]
	ldr r0, _08065BEC @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08065BF0 @ =0x00013110
	adds r0, r0, r2
	ldr r2, [r0]
	ldr r0, [r2, #0x40]
	cmp r1, r0
	ble _08065BF4
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _08065C16
	.align 2, 0
_08065BEC: .4byte gEwramData
_08065BF0: .4byte 0x00013110
_08065BF4:
	adds r0, r2, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0]
	b _08065C16
_08065C02:
	adds r0, r6, #0
	bl sub_08013960
	movs r0, #0x2e
	bl sub_08012048
	adds r0, r4, #0
	movs r1, #1
	bl sub_0805B66C
_08065C16:
	ldrb r0, [r4, #0xa]
	cmp r0, #0x80
	beq _08065C22
	adds r0, r4, #0
	bl sub_0803F17C
_08065C22:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08065C2C
sub_08065C2C: @ 0x08065C2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	adds r3, r7, #0
	adds r3, #0x42
	ldrh r0, [r3]
	str r0, [sp]
	movs r2, #1
	ldr r0, _08065C94 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08065C98 @ =0x0000037E
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08065C58
	movs r2, #2
_08065C58:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08065C62
	adds r2, #1
_08065C62:
	movs r5, #0
	adds r4, r3, #0
	cmp r5, r2
	bge _08065CC2
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r1, r1, r0
	mov sl, r1
	movs r1, #0x10
	adds r1, r1, r0
	mov sb, r1
	movs r1, #8
	rsbs r1, r1, #0
	adds r1, r1, r0
	mov r8, r1
	adds r6, r0, #0
	adds r6, #8
_08065C8A:
	cmp r5, #0
	bne _08065C9C
	mov r0, sl
	strh r0, [r4]
	b _08065CB2
	.align 2, 0
_08065C94: .4byte gEwramData
_08065C98: .4byte 0x0000037E
_08065C9C:
	cmp r5, #1
	bne _08065CA6
	mov r1, sb
	strh r1, [r4]
	b _08065CB2
_08065CA6:
	cmp r5, #2
	bne _08065CB0
	mov r0, r8
	strh r0, [r4]
	b _08065CB2
_08065CB0:
	strh r6, [r4]
_08065CB2:
	adds r0, r7, #0
	str r2, [sp, #4]
	bl sub_0803AC40
	adds r5, #1
	ldr r2, [sp, #4]
	cmp r5, r2
	blt _08065C8A
_08065CC2:
	mov r1, sp
	ldrh r1, [r1]
	strh r1, [r4]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08065cd8
sub_08065cd8: @ 0x08065CD8
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x20
	bl sub_08012078
	cmp r0, #0
	beq _08065CFC
	movs r0, #0x2e
	bl sub_08012078
	cmp r0, #0
	beq _08065CFC
	adds r0, r4, #0
	movs r1, #3
	bl sub_0805B754
	cmp r0, #0
	bne _08065D0A
_08065CFC:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _08065DA2
_08065D0A:
	bl RandomNumberGenerator
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _08065D24
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _08065D30
_08065D24:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_08065D30:
	adds r0, r4, #0
	bl sub_0803F17C
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08065DA8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08065DAC @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r5, r4, #0
	adds r5, #0x5c
	strb r0, [r5]
	movs r0, #3
	bl sub_0805B5E8
	str r0, [r4, #0x18]
	cmp r0, #0
	beq _08065DA2
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, [r4, #0x18]
	bl sub_0803F17C
	ldr r0, [r4, #0x18]
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r1, [r1]
	adds r0, #0x42
	strh r1, [r0]
	ldr r0, [r4, #0x18]
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	adds r0, #0x46
	strh r1, [r0]
	ldr r1, [r4, #0x18]
	ldrb r0, [r5]
	adds r0, #1
	adds r1, #0x5c
	strb r0, [r1]
	ldr r1, [r4, #0x18]
	ldr r0, _08065DB0 @ =sub_08065C2C
	str r0, [r1, #4]
	ldr r1, [r4, #0x18]
	ldr r0, _08065DB4 @ =EntityUpdateNothing
	str r0, [r1]
_08065DA2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065DA8: .4byte gEwramData
_08065DAC: .4byte 0x00013110
_08065DB0: .4byte sub_08065C2C
_08065DB4: .4byte EntityUpdateNothing

	thumb_func_start sub_08065db8
sub_08065db8: @ 0x08065DB8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0
	mov r8, r0
	ldr r4, _08065DE0 @ =gEwramData
	ldr r2, [r4]
	ldrh r6, [r2, #0x16]
	ldrb r0, [r5, #0xa]
	adds r7, r4, #0
	cmp r0, #1
	beq _08065E0A
	cmp r0, #1
	bgt _08065DE4
	cmp r0, #0
	beq _08065DF2
	b _08065FC8
	.align 2, 0
_08065DE0: .4byte gEwramData
_08065DE4:
	cmp r0, #2
	bne _08065DEA
	b _08065F70
_08065DEA:
	cmp r0, #3
	bne _08065DF0
	b _08065F9C
_08065DF0:
	b _08065FC8
_08065DF2:
	ldr r1, _08065E88 @ =0x0000042C
	adds r2, r2, r1
	ldr r0, [r2]
	ldr r1, _08065E8C @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r2]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	mov r2, r8
	strb r2, [r5, #0xc]
	strb r2, [r5, #0xb]
_08065E0A:
	ldr r0, [r7]
	ldr r4, _08065E90 @ =0x00013110
	adds r0, r0, r4
	ldr r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r1, [r1]
	subs r1, #0x20
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r5, #0
	adds r2, #0x46
	ldrh r2, [r2]
	subs r2, #0x20
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r3, #0x40
	str r3, [sp]
	bl sub_08068AD4
	cmp r0, #0
	bne _08065E38
	b _08065FC8
_08065E38:
	movs r0, #0x42
	ands r6, r0
	cmp r6, #0
	bne _08065E42
	b _08065FC8
_08065E42:
	ldr r1, [r7]
	ldr r3, _08065E94 @ =0x000004BE
	adds r0, r1, r3
	movs r3, #0
	ldrsh r2, [r0, r3]
	cmp r2, #0
	beq _08065E52
	b _08065FC8
_08065E52:
	adds r1, r1, r4
	ldr r0, [r1]
	str r2, [r0, #0x48]
	ldr r0, [r1]
	str r2, [r0, #0x50]
	ldr r1, [r1]
	ldr r0, [r1, #0x4c]
	cmp r0, #0
	bge _08065E66
	str r2, [r1, #0x4c]
_08065E66:
	movs r0, #0x2d
	str r0, [r5, #0x14]
	bl sub_0805B864
	cmp r0, #0
	beq _08065E98
	movs r0, #0x32
	bl sub_08012078
	cmp r0, #0
	bne _08065EF6
	movs r0, #0x2c
	str r0, [r5, #0x14]
	movs r0, #0x32
	bl sub_08012048
	b _08065EF6
	.align 2, 0
_08065E88: .4byte 0x0000042C
_08065E8C: .4byte 0xFFFFFDFF
_08065E90: .4byte 0x00013110
_08065E94: .4byte 0x000004BE
_08065E98:
	movs r0, #0x26
	bl sub_08012078
	cmp r0, #0
	beq _08065EB8
	movs r0, #0x31
	bl sub_08012078
	cmp r0, #0
	bne _08065EF6
	movs r0, #0x2b
	str r0, [r5, #0x14]
	movs r0, #0x31
	bl sub_08012048
	b _08065EF6
_08065EB8:
	movs r0, #0x25
	bl sub_08012078
	cmp r0, #0
	beq _08065ED8
	movs r0, #0x30
	bl sub_08012078
	cmp r0, #0
	bne _08065EF6
	movs r0, #0x2a
	str r0, [r5, #0x14]
	movs r0, #0x30
	bl sub_08012048
	b _08065EF6
_08065ED8:
	movs r0, #0x2e
	bl sub_08012078
	cmp r0, #0
	beq _08065EF6
	movs r0, #0x2f
	bl sub_08012078
	cmp r0, #0
	bne _08065EF6
	movs r0, #0x29
	str r0, [r5, #0x14]
	movs r0, #0x2f
	bl sub_08012048
_08065EF6:
	ldr r4, _08065F64 @ =gEwramData
	ldr r1, [r4]
	ldr r0, _08065F68 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #1
	orrs r0, r2
	str r0, [r1]
	ldr r0, [r5, #0x14]
	bl sub_08067934
	movs r3, #0
	ldr r0, [r4]
	ldr r1, _08065F6C @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	bge _08065F20
	movs r3, #1
_08065F20:
	adds r2, r5, #0
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
	movs r1, #0
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
	movs r0, #0x26
	bl sub_08013E18
	movs r0, #0x1e
	bl sub_08013CF0
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #2
	bne _08065FC8
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _08065FC8
	.align 2, 0
_08065F64: .4byte gEwramData
_08065F68: .4byte 0x0000042C
_08065F6C: .4byte 0x00013110
_08065F70:
	bl sub_08067A04
	cmp r0, #0
	beq _08065FC8
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #3
	bne _08065F8E
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_08065F8E:
	bl sub_08067898
	movs r0, #3
	strb r0, [r5, #0xa]
	bl sub_0805AF68
	b _08065FC8
_08065F9C:
	adds r0, r5, #0
	movs r1, #0
	bl sub_0805B66C
	ldr r0, _08065FDC @ =0x00001041
	bl sub_0805B878
	ldr r0, [r4]
	ldr r3, _08065FE0 @ =0x000254CC
	adds r2, r0, r3
	movs r1, #0x26
	strh r1, [r2]
	adds r0, #0x90
	mov r1, r8
	strh r1, [r0]
	movs r0, #0x26
	bl PlaySong
	movs r0, #0x2d
	str r0, [r5, #0x14]
	movs r0, #1
	strb r0, [r5, #0xa]
_08065FC8:
	adds r0, r5, #0
	bl sub_0803F17C
	mov r0, r8
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08065FDC: .4byte 0x00001041
_08065FE0: .4byte 0x000254CC

	thumb_func_start sub_08065FE4
sub_08065FE4: @ 0x08065FE4
	push {lr}
	ldr r0, _08066010 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08066014 @ =0x00013110
	adds r0, r0, r1
	ldr r2, [r0]
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _0806601C
	ldr r1, [r2, #0x48]
	cmp r1, #0
	bge _08065FFE
	rsbs r1, r1, #0
_08065FFE:
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	bgt _0806601C
	ldr r0, [r2, #0x10]
	ldr r1, _08066018 @ =0x30010000
	ands r0, r1
	b _0806601E
	.align 2, 0
_08066010: .4byte gEwramData
_08066014: .4byte 0x00013110
_08066018: .4byte 0x30010000
_0806601C:
	movs r0, #1
_0806601E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08066024
sub_08066024: @ 0x08066024
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x20
	bl sub_08012078
	cmp r0, #0
	beq _0806603E
	adds r0, r4, #0
	movs r1, #0
	bl sub_0805B754
	cmp r0, #0
	bne _0806604C
_0806603E:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _08066086
_0806604C:
	adds r0, r4, #0
	movs r1, #0
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
	ldr r0, _0806608C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08066090 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	movs r0, #1
	strb r0, [r4, #0x18]
_08066086:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806608C: .4byte gEwramData
_08066090: .4byte 0x00013110

	thumb_func_start sub_08066094
sub_08066094: @ 0x08066094
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	movs r0, #0
	mov r8, r0
	ldr r5, _080660B8 @ =gEwramData
	ldr r0, [r5]
	ldrh r4, [r0, #0x16]
	ldrb r3, [r6, #0xa]
	cmp r3, #1
	beq _080660E8
	cmp r3, #1
	bgt _080660BC
	cmp r3, #0
	beq _080660CA
	b _080662FA
	.align 2, 0
_080660B8: .4byte gEwramData
_080660BC:
	cmp r3, #2
	bne _080660C2
	b _08066210
_080660C2:
	cmp r3, #3
	bne _080660C8
	b _08066272
_080660C8:
	b _080662FA
_080660CA:
	ldr r1, _08066170 @ =0x0000042C
	adds r2, r0, r1
	ldr r0, [r2]
	ldr r1, _08066174 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r2]
	movs r0, #0x26
	bl sub_08013EEC
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	mov r0, r8
	strb r0, [r6, #0xc]
	strb r0, [r6, #0xb]
_080660E8:
	ldr r5, _08066178 @ =gEwramData
	ldr r0, [r5]
	ldr r7, _0806617C @ =0x00013110
	adds r0, r0, r7
	ldr r0, [r0]
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r1, [r1]
	subs r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r6, #0
	adds r2, #0x46
	ldrh r2, [r2]
	subs r2, #0x20
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r3, #0x40
	str r3, [sp]
	movs r3, #0x30
	bl sub_08068AD4
	cmp r0, #0
	bne _0806611A
	b _080662FA
_0806611A:
	movs r0, #0x42
	ands r4, r0
	cmp r4, #0
	bne _08066124
	b _080662FA
_08066124:
	ldr r3, [r5]
	ldr r1, _08066180 @ =0x000004BE
	adds r0, r3, r1
	movs r1, #0
	ldrsh r4, [r0, r1]
	cmp r4, #0
	beq _08066134
	b _080662FA
_08066134:
	ldr r0, _08066170 @ =0x0000042C
	adds r2, r3, r0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r2]
	adds r1, r3, r7
	ldr r0, [r1]
	str r4, [r0, #0x48]
	ldr r0, [r1]
	str r4, [r0, #0x50]
	ldr r1, [r1]
	ldr r0, [r1, #0x4c]
	cmp r0, #0
	bge _08066156
	str r4, [r1, #0x4c]
_08066156:
	ldrb r0, [r6, #0x18]
	cmp r0, #0
	beq _08066184
	bl sub_080213BC
	movs r0, #0xdb
	lsls r0, r0, #1
	bl PlaySong
	adds r0, r6, #0
	bl sub_08066308
	b _0806619C
	.align 2, 0
_08066170: .4byte 0x0000042C
_08066174: .4byte 0xFFFFFDFF
_08066178: .4byte gEwramData
_0806617C: .4byte 0x00013110
_08066180: .4byte 0x000004BE
_08066184:
	bl sub_0805B864
	cmp r0, #0
	beq _08066196
	bl sub_0806666C
	movs r0, #0x44
	strh r0, [r6, #0x14]
	b _0806619C
_08066196:
	adds r0, r6, #0
	bl sub_0806668C
_0806619C:
	movs r2, #0
	ldr r0, _08066204 @ =gEwramData
	ldr r7, [r0]
	ldr r1, _08066208 @ =0x00013110
	adds r0, r7, r1
	ldr r0, [r0]
	ldr r1, [r6, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	bge _080661B2
	movs r2, #1
_080661B2:
	adds r4, r6, #0
	adds r4, #0x58
	movs r5, #1
	lsls r2, r2, #6
	ldrb r0, [r4]
	movs r3, #0x41
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r1, r0
	orrs r1, r2
	lsrs r2, r2, #6
	movs r0, #1
	subs r0, r0, r2
	ands r0, r5
	lsls r0, r0, #6
	ands r1, r3
	orrs r1, r0
	strb r1, [r4]
	ldr r0, _0806620C @ =0x0000042C
	adds r2, r7, r0
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	ldrh r0, [r6, #0x14]
	bl sub_08067934
	ldrb r0, [r6, #0xa]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xc]
	strb r1, [r6, #0xb]
	movs r0, #0x1d
	bl sub_08013CF0
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_0805B878
	b _080662FA
	.align 2, 0
_08066204: .4byte gEwramData
_08066208: .4byte 0x00013110
_0806620C: .4byte 0x0000042C
_08066210:
	bl sub_08067A04
	cmp r0, #0
	beq _080662FA
	ldrb r0, [r6, #0x18]
	cmp r0, #0
	beq _08066222
	mov r1, r8
	strb r1, [r6, #0x18]
_08066222:
	ldr r0, _08066254 @ =0x000001B5
	bl PlaySong
	ldr r1, [r5]
	ldr r0, _08066258 @ =0x000254CC
	adds r2, r1, r0
	movs r4, #0
	movs r0, #0x26
	strh r0, [r2]
	adds r1, #0x90
	mov r0, r8
	strh r0, [r1]
	movs r0, #0x26
	bl PlaySong
	ldr r0, _0806625C @ =0x00001041
	bl sub_0805B878
	bl sub_0805B864
	cmp r0, #0
	beq _08066260
	ldrb r0, [r6, #0xa]
	adds r0, #1
	b _0806626A
	.align 2, 0
_08066254: .4byte 0x000001B5
_08066258: .4byte 0x000254CC
_0806625C: .4byte 0x00001041
_08066260:
	adds r0, r6, #0
	movs r1, #0
	bl sub_0805B66C
	movs r0, #1
_0806626A:
	strb r0, [r6, #0xa]
	strb r4, [r6, #0xc]
	strb r4, [r6, #0xb]
	b _080662FA
_08066272:
	ldrb r4, [r6, #0xb]
	adds r3, r4, #0
	cmp r3, #0
	bne _08066288
	movs r0, #0x10
	strb r0, [r6, #0xd]
	adds r0, r4, #1
	strb r0, [r6, #0xb]
	mov r1, r8
	strb r1, [r6, #0xc]
	b _080662FA
_08066288:
	cmp r3, #1
	bne _080662E8
	movs r2, #0
	ldr r1, _080662E4 @ =0x00013110
	adds r7, r0, r1
	ldr r0, [r7]
	ldr r1, [r6, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	bge _0806629E
	movs r2, #1
_0806629E:
	adds r4, r6, #0
	adds r4, #0x58
	movs r5, #1
	lsls r2, r2, #6
	ldrb r0, [r4]
	movs r3, #0x41
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r1, r0
	orrs r1, r2
	lsrs r2, r2, #6
	movs r0, #1
	subs r0, r0, r2
	ands r0, r5
	lsls r0, r0, #6
	ands r1, r3
	orrs r1, r0
	strb r1, [r4]
	movs r0, #0x10
	mov r8, r0
	ldr r0, [r6, #0x40]
	movs r1, #0xc0
	lsls r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [r7]
	ldr r1, [r1, #0x40]
	cmp r0, r1
	bge _080662FA
	movs r1, #0
	strb r1, [r6, #0xd]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xc]
	b _080662FA
	.align 2, 0
_080662E4: .4byte 0x00013110
_080662E8:
	adds r0, r6, #0
	movs r1, #0
	bl sub_0805B66C
	movs r0, #1
	strb r0, [r6, #0xa]
	mov r0, r8
	strb r0, [r6, #0xc]
	strb r0, [r6, #0xb]
_080662FA:
	mov r0, r8
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08066308
sub_08066308: @ 0x08066308
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	adds r6, r0, #0
	movs r0, #0
	strh r0, [r6, #0x14]
	bl sub_0805B864
	cmp r0, #0
	beq _08066330
	movs r0, #0x36
	bl sub_080120AC
	cmp r0, #0
	bne _0806641C
	movs r0, #0x43
	b _0806641A
_08066330:
	ldr r0, _08066388 @ =gEwramData
	ldr r4, [r0]
	movs r5, #0
	movs r0, #0x3b
	bl sub_08012078
	cmp r0, #0
	bne _08066366
	ldr r1, _0806638C @ =0x000132AE
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08066366
	adds r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08066366
	adds r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08066366
	movs r0, #0x3b
	bl sub_08012048
	movs r5, #1
_08066366:
	cmp r5, #0
	beq _08066394
	ldr r0, _08066388 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08066390 @ =0x000138F4
	adds r1, r1, r0
	movs r2, #0
	movs r0, #0x45
	strh r0, [r6, #0x14]
	strh r0, [r1]
	strh r2, [r1, #2]
	movs r0, #4
	strh r0, [r1, #4]
	movs r0, #8
	strh r0, [r1, #6]
	b _0806641C
	.align 2, 0
_08066388: .4byte gEwramData
_0806638C: .4byte 0x000132AE
_08066390: .4byte 0x000138F4
_08066394:
	movs r0, #0x26
	bl sub_08012078
	cmp r0, #0
	beq _080663C6
	movs r0, #0x35
	bl sub_080120AC
	cmp r0, #0
	bne _080663AC
	movs r0, #0x30
	b _0806641A
_080663AC:
	bl RandomNumberGenerator
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _0806641C
	movs r0, #0x31
	strh r0, [r6, #0x14]
	movs r1, #0
	movs r2, #0
	bl sub_08066648
	b _0806641C
_080663C6:
	movs r0, #0x2e
	bl sub_08012078
	cmp r0, #0
	beq _080663EC
	movs r0, #0x34
	bl sub_080120AC
	cmp r0, #0
	bne _080663DE
	movs r0, #0x2f
	b _0806641A
_080663DE:
	movs r0, #0x37
	bl sub_080120AC
	cmp r0, #0
	bne _0806641C
	movs r0, #0x53
	b _0806641A
_080663EC:
	movs r0, #0x21
	bl sub_08012078
	cmp r0, #0
	beq _08066404
	movs r0, #0x37
	bl sub_080120AC
	cmp r0, #0
	bne _0806641C
	movs r0, #0x53
	b _0806641A
_08066404:
	movs r0, #0x20
	bl sub_08012078
	cmp r0, #0
	beq _0806641C
	movs r0, #0x33
	bl sub_080120AC
	cmp r0, #0
	bne _0806641C
	movs r0, #0x2e
_0806641A:
	strh r0, [r6, #0x14]
_0806641C:
	ldrh r0, [r6, #0x14]
	cmp r0, #0
	beq _08066424
	b _080665A4
_08066424:
	ldr r1, _08066478 @ =gEwramData
	mov r8, r1
	ldr r4, [r1]
	ldr r0, _0806647C @ =0x0001325C
	adds r0, r0, r4
	mov sb, r0
	movs r7, #0
	ldr r1, _08066480 @ =0x08118C85
	mov r0, sp
	movs r2, #0x38
	bl memcpy
	ldr r1, _08066484 @ =0x000133E8
	adds r4, r4, r1
	ldrb r0, [r4]
	lsrs r0, r0, #4
	mov sl, r0
	mov r1, r8
	ldr r0, [r1]
	ldr r1, _08066488 @ =0x000138F4
	adds r5, r0, r1
	movs r0, #0x45
	strh r0, [r6, #0x14]
	strh r0, [r5]
	strh r7, [r5, #2]
	movs r0, #4
	strh r0, [r5, #4]
	bl RandomNumberGenerator
	movs r1, #9
	bl __umodsi3
	strh r0, [r5, #6]
	bl sub_0805B864
	cmp r0, #0
	beq _0806648C
	movs r7, #5
	movs r0, #6
	strh r0, [r5, #4]
	b _080664F4
	.align 2, 0
_08066478: .4byte gEwramData
_0806647C: .4byte 0x0001325C
_08066480: .4byte 0x08118C85
_08066484: .4byte 0x000133E8
_08066488: .4byte 0x000138F4
_0806648C:
	movs r0, #0x21
	bl sub_08012078
	cmp r0, #0
	beq _080664F4
	mov r1, r8
	ldr r0, [r1]
	ldr r4, _080664AC @ =0x0000037E
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080664B0
	movs r7, #1
	b _080664F4
	.align 2, 0
_080664AC: .4byte 0x0000037E
_080664B0:
	movs r0, #0x24
	bl sub_08012078
	cmp r0, #0
	bne _080664D8
	movs r0, #0x3c
	bl sub_08012078
	cmp r0, #0
	beq _080664D4
	movs r0, #0x3d
	bl sub_08012078
	movs r7, #3
	cmp r0, #0
	bne _080664F4
	movs r7, #6
	b _080664F4
_080664D4:
	movs r7, #2
	b _080664F4
_080664D8:
	mov r1, r8
	ldr r0, [r1]
	adds r0, r0, r4
	ldrh r4, [r0]
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _080664F2
	movs r0, #0x40
	ands r0, r4
	movs r7, #4
	cmp r0, #0
	bne _080664F4
_080664F2:
	movs r7, #3
_080664F4:
	cmp r7, sl
	beq _08066502
	lsls r1, r7, #4
	movs r0, #0xc6
	lsls r0, r0, #1
	add r0, sb
	strb r1, [r0]
_08066502:
	movs r4, #0xc6
	lsls r4, r4, #1
	add r4, sb
	ldrb r1, [r4]
	movs r2, #0xf
	adds r0, r2, #0
	ands r0, r1
	lsls r1, r7, #3
	adds r0, r0, r1
	add r0, sp
	ldrb r0, [r0]
	strh r0, [r5, #6]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	ands r0, r2
	adds r6, r1, #0
	cmp r0, #8
	bne _0806652C
	lsls r0, r7, #4
	strb r0, [r4]
_0806652C:
	movs r0, #0x39
	bl sub_08012078
	cmp r0, #0
	beq _08066566
	ldrh r0, [r5, #6]
	cmp r0, #7
	bne _08066566
	adds r2, r4, #0
	movs r3, #0xf
	adds r4, r6, #0
_08066542:
	ldrb r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	adds r0, r0, r4
	add r0, sp
	ldrb r0, [r0]
	strh r0, [r5, #6]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ands r0, r3
	cmp r0, #8
	bne _08066560
	lsls r0, r7, #4
	strb r0, [r2]
_08066560:
	ldrh r0, [r5, #6]
	cmp r0, #7
	beq _08066542
_08066566:
	movs r0, #0x3d
	bl sub_08012078
	cmp r0, #0
	beq _080665A4
	ldrh r0, [r5, #6]
	cmp r0, #9
	bne _080665A4
	movs r4, #0xc6
	lsls r4, r4, #1
	add r4, sb
	movs r2, #0xf
	adds r3, r6, #0
_08066580:
	ldrb r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	adds r0, r0, r3
	add r0, sp
	ldrb r0, [r0]
	strh r0, [r5, #6]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	ands r0, r2
	cmp r0, #8
	bne _0806659E
	lsls r0, r7, #4
	strb r0, [r4]
_0806659E:
	ldrh r0, [r5, #6]
	cmp r0, #9
	beq _08066580
_080665A4:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080665B4
sub_080665B4: @ 0x080665B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r1, #0
	ldr r0, _080665F4 @ =gEwramData
	ldr r4, [r0]
	movs r0, #0x60
	adds r0, r0, r4
	mov r8, r0
	ldr r2, _080665F8 @ =0x000138F4
	adds r0, r4, r2
	adds r2, #2
	adds r6, r4, r2
	ldrh r2, [r0, #4]
	ldrh r7, [r0, #6]
	ldrh r3, [r6]
	cmp r3, #1
	bhi _08066636
	ldr r0, _080665FC @ =0x085269DC
	lsls r1, r2, #2
	adds r0, #4
	adds r1, r1, r0
	ldr r5, [r1]
	cmp r3, #0
	bne _08066622
	cmp r2, #4
	beq _080665EE
	cmp r2, #6
	bne _08066600
_080665EE:
	adds r0, r7, #0
	b _0806660E
	.align 2, 0
_080665F4: .4byte gEwramData
_080665F8: .4byte 0x000138F4
_080665FC: .4byte 0x085269DC
_08066600:
	bl RandomNumberGenerator
	ldrh r1, [r5, #4]
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_0806660E:
	lsls r1, r0, #1
	adds r0, r5, #6
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_08041434
	movs r1, #0xeb
	lsls r1, r1, #2
	add r1, r8
	b _0806662C
_08066622:
	ldrh r0, [r5, #2]
	bl sub_08041434
	ldr r2, _08066644 @ =0x0000040C
	adds r1, r4, r2
_0806662C:
	str r0, [r1]
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	movs r1, #1
_08066636:
	adds r0, r1, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08066644: .4byte 0x0000040C

	thumb_func_start sub_08066648
sub_08066648: @ 0x08066648
	push {r4, lr}
	ldr r3, _08066664 @ =gEwramData
	ldr r3, [r3]
	ldr r4, _08066668 @ =0x000138F4
	adds r3, r3, r4
	strh r0, [r3]
	movs r0, #0
	strh r0, [r3, #2]
	strh r1, [r3, #4]
	strh r2, [r3, #6]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08066664: .4byte gEwramData
_08066668: .4byte 0x000138F4

	thumb_func_start sub_0806666C
sub_0806666C: @ 0x0806666C
	ldr r0, _08066684 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08066688 @ =0x000138F4
	adds r0, r0, r1
	movs r2, #0
	strh r2, [r0]
	movs r1, #0xff
	strh r1, [r0, #2]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	bx lr
	.align 2, 0
_08066684: .4byte gEwramData
_08066688: .4byte 0x000138F4

	thumb_func_start sub_0806668C
sub_0806668C: @ 0x0806668C
	push {r4, lr}
	ldr r1, _080666BC @ =gEwramData
	ldr r1, [r1]
	ldr r2, _080666C0 @ =0x000138F4
	adds r4, r1, r2
	movs r2, #0
	movs r1, #0x36
	strh r1, [r0, #0x14]
	strh r1, [r4]
	strh r2, [r4, #2]
	strh r2, [r4, #6]
	movs r0, #0x2e
	bl sub_08012078
	cmp r0, #0
	beq _080666C8
	movs r0, #0x26
	bl sub_08012078
	cmp r0, #0
	beq _080666C4
	movs r0, #3
	b _080666CA
	.align 2, 0
_080666BC: .4byte gEwramData
_080666C0: .4byte 0x000138F4
_080666C4:
	movs r0, #2
	b _080666CA
_080666C8:
	movs r0, #1
_080666CA:
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080666d4
sub_080666d4: @ 0x080666D4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r0, #0
	movs r6, #0
	ldr r0, _080666FC @ =gEwramData
	ldr r2, [r0]
	ldrh r5, [r2, #0x16]
	ldrb r3, [r4, #0xa]
	mov sb, r0
	cmp r3, #1
	beq _0806671C
	cmp r3, #1
	bgt _08066700
	cmp r3, #0
	beq _08066706
	b _080667CC
	.align 2, 0
_080666FC: .4byte gEwramData
_08066700:
	cmp r3, #2
	beq _080667B0
	b _080667CC
_08066706:
	ldr r0, _080667A0 @ =0x0000042C
	adds r2, r2, r0
	ldr r0, [r2]
	ldr r1, _080667A4 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r2]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	strb r6, [r4, #0xc]
	strb r6, [r4, #0xb]
_0806671C:
	mov r7, sb
	ldr r0, [r7]
	ldr r1, _080667A8 @ =0x00013110
	mov r8, r1
	add r0, r8
	ldr r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r1, [r1]
	subs r1, #0x18
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r4, #0
	adds r2, #0x46
	ldrh r2, [r2]
	subs r2, #0x20
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r3, #0x40
	str r3, [sp]
	movs r3, #0x24
	bl sub_08068AD4
	cmp r0, #0
	beq _080667CC
	movs r0, #0x42
	ands r5, r0
	cmp r5, #0
	beq _080667CC
	ldr r1, [r7]
	ldr r2, _080667AC @ =0x000004BE
	adds r0, r1, r2
	movs r2, #0
	ldrsh r5, [r0, r2]
	cmp r5, #0
	bne _080667CC
	add r1, r8
	ldr r0, [r1]
	str r5, [r0, #0x48]
	ldr r0, [r1]
	str r5, [r0, #0x50]
	ldr r1, [r1]
	ldr r0, [r1, #0x4c]
	cmp r0, #0
	bge _08066778
	str r5, [r1, #0x4c]
_08066778:
	adds r0, r4, #0
	bl sub_080667DC
	mov r0, sb
	ldr r1, [r0]
	ldr r2, _080667A0 @ =0x0000042C
	adds r1, r1, r2
	ldr r0, [r1]
	movs r2, #1
	orrs r0, r2
	str r0, [r1]
	ldr r0, [r4, #0x14]
	bl sub_08067934
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	b _080667CC
	.align 2, 0
_080667A0: .4byte 0x0000042C
_080667A4: .4byte 0xFFFFFDFF
_080667A8: .4byte 0x00013110
_080667AC: .4byte 0x000004BE
_080667B0:
	bl sub_08067A04
	cmp r0, #0
	beq _080667CC
	movs r0, #0x38
	bl sub_08012048
	adds r0, r4, #0
	movs r1, #0
	bl sub_0805B66C
	strb r6, [r4, #0xa]
	strb r6, [r4, #0xc]
	strb r6, [r4, #0xb]
_080667CC:
	adds r0, r6, #0
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080667DC
sub_080667DC: @ 0x080667DC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	str r0, [r4, #0x14]
	bl sub_0805B864
	cmp r0, #0
	beq _080667FC
	bl RandomNumberGenerator
	movs r1, #0xf
	ands r1, r0
	cmp r1, #3
	bhi _080667FC
	movs r0, #0x59
	str r0, [r4, #0x14]
_080667FC:
	ldr r2, [r4, #0x14]
	cmp r2, #0
	bne _08066818
	ldr r0, _08066820 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08066824 @ =0x000138F4
	adds r1, r1, r0
	movs r0, #0x54
	str r0, [r4, #0x14]
	strh r0, [r1]
	strh r2, [r1, #2]
	movs r0, #5
	strh r0, [r1, #4]
	strh r2, [r1, #6]
_08066818:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08066820: .4byte gEwramData
_08066824: .4byte 0x000138F4

	thumb_func_start sub_08066828
sub_08066828: @ 0x08066828
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x20
	bl sub_08012078
	cmp r0, #0
	bne _08066840
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	b _08066882
_08066840:
	movs r0, #0x26
	bl sub_08012078
	cmp r0, #0
	bne _08066854
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	b _08066882
_08066854:
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805B754
	cmp r0, #0
	bne _08066868
	adds r0, r4, #0
	bl EntityDelete
	b _08066886
_08066868:
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x40
_08066882:
	orrs r1, r2
	strb r1, [r0]
_08066886:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0806688C
sub_0806688C: @ 0x0806688C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r6, [sp, #0x14]
	adds r3, #1
	ldrb r0, [r5, #0x17]
	adds r3, r3, r0
	ldrb r1, [r3]
	lsls r1, r1, #2
	ldr r0, _080668E0 @ =0x085269FC
	adds r1, r1, r0
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	bl sub_08067660
	adds r1, r0, #0
	adds r2, r1, #0
	ldrb r0, [r5, #0x17]
	ldr r3, _080668E4 @ =0x000003D1
	adds r0, r0, r3
	adds r4, r4, r0
	movs r0, #0x16
	ldrsb r0, [r5, r0]
	mov ip, r0
	movs r7, #0
	movs r0, #0x10
	ands r0, r6
	cmp r0, #0
	beq _080668FA
	ldrb r0, [r4]
	cmp r0, #0
	beq _080668FA
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	bne _080668E8
	ldrb r0, [r4]
	ldrb r2, [r5, #0x14]
	cmp r0, r1
	bge _080669C4
	adds r0, #1
	b _080668F4
	.align 2, 0
_080668E0: .4byte 0x085269FC
_080668E4: .4byte 0x000003D1
_080668E8:
	ldrb r1, [r4]
	adds r0, r1, r2
	ldrb r2, [r5, #0x14]
	cmp r0, #8
	bgt _080669C4
	adds r0, r1, #1
_080668F4:
	strb r0, [r4]
	movs r7, #1
	b _080669C4
_080668FA:
	movs r0, #0x20
	ands r0, r6
	cmp r0, #0
	beq _08066910
	ldrb r0, [r4]
	cmp r0, #1
	bls _08066910
	subs r0, #1
	strb r0, [r4]
	movs r7, #1
	b _080669C2
_08066910:
	movs r0, #0x40
	ands r0, r6
	cmp r0, #0
	beq _08066932
	ldrb r0, [r5, #0x17]
	ldrb r2, [r5, #0x14]
	cmp r0, #0
	beq _080669C4
	subs r0, #1
	strb r0, [r5, #0x17]
	movs r0, #0x16
	ldrsb r0, [r5, r0]
	ldrb r1, [r5, #0x17]
	cmp r0, r1
	ble _080669C0
	strb r1, [r5, #0x16]
	b _080669C0
_08066932:
	movs r0, #0x80
	ands r0, r6
	cmp r0, #0
	beq _0806695C
	ldrb r1, [r5, #0x17]
	movs r0, #0x14
	ldrsb r0, [r5, r0]
	subs r0, #1
	ldrb r2, [r5, #0x14]
	cmp r1, r0
	bge _080669C4
	adds r0, r1, #1
	strb r0, [r5, #0x17]
	movs r1, #0x16
	ldrsb r1, [r5, r1]
	ldrb r0, [r5, #0x17]
	subs r0, #3
	cmp r1, r0
	bge _080669C0
	strb r0, [r5, #0x16]
	b _080669C0
_0806695C:
	movs r3, #0x80
	lsls r3, r3, #1
	ands r3, r6
	cmp r3, #0
	beq _08066996
	ldrb r1, [r5, #0x17]
	movs r3, #0x14
	ldrsb r3, [r5, r3]
	subs r0, r3, #1
	ldrb r2, [r5, #0x14]
	cmp r1, r0
	bge _080669C4
	ldrb r0, [r5, #0x16]
	adds r0, #4
	strb r0, [r5, #0x16]
	ldrb r0, [r5, #0x17]
	adds r0, #4
	strb r0, [r5, #0x17]
	movs r1, #0x16
	ldrsb r1, [r5, r1]
	subs r0, r3, #4
	cmp r1, r0
	ble _08066992
	subs r0, r2, #4
	strb r0, [r5, #0x16]
	subs r0, r2, #1
	strb r0, [r5, #0x17]
_08066992:
	movs r7, #2
	b _080669C4
_08066996:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r6, r0
	ldrb r2, [r5, #0x14]
	cmp r6, #0
	beq _080669C4
	ldrb r4, [r5, #0x17]
	cmp r4, #0
	beq _080669C4
	ldrb r1, [r5, #0x16]
	movs r0, #0x16
	ldrsb r0, [r5, r0]
	cmp r0, #3
	bgt _080669B8
	strb r3, [r5, #0x16]
	strb r3, [r5, #0x17]
	b _080669C0
_080669B8:
	subs r0, r1, #4
	strb r0, [r5, #0x16]
	subs r0, r4, #4
	strb r0, [r5, #0x17]
_080669C0:
	movs r7, #2
_080669C2:
	ldrb r2, [r5, #0x14]
_080669C4:
	ldrb r0, [r5, #0x17]
	ldrb r1, [r5, #0x16]
	subs r0, r0, r1
	strb r0, [r5, #0x15]
	lsls r0, r0, #0x18
	lsls r1, r2, #0x18
	asrs r3, r1, #0x18
	cmp r0, r1
	blt _080669E2
	cmp r3, #0
	beq _080669E2
	subs r0, r2, #1
	strb r0, [r5, #0x15]
	strb r0, [r5, #0x17]
	movs r7, #3
_080669E2:
	movs r0, #0x16
	ldrsb r0, [r5, r0]
	cmp r0, ip
	beq _080669EC
	movs r7, #3
_080669EC:
	cmp r7, #0
	beq _080669F6
	movs r0, #0xf1
	bl PlaySong
_080669F6:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08066A00
sub_08066A00: @ 0x08066A00
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r6, r1, #0
	ldr r1, _08066A60 @ =gEwramData
	ldr r0, [r1]
	ldr r3, _08066A64 @ =0x000131EE
	adds r7, r0, r3
	add r4, sp, #0x14
	mov sl, r4
	adds r4, r7, #0
	add r3, sp, #8
	movs r0, #5
	mov r8, r0
_08066A22:
	ldrh r0, [r4]
	strh r0, [r3]
	adds r4, #2
	adds r3, #2
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	mov r0, r8
	cmp r0, #0
	bge _08066A22
	ldr r0, [r1]
	ldr r1, _08066A68 @ =0x00013268
	adds r3, r0, r1
	ldrb r4, [r3]
	str r4, [sp, #0x18]
	adds r1, #4
	adds r5, r0, r1
	ldrb r1, [r5]
	mov r4, sl
	strb r1, [r4]
	ldr r1, _08066A6C @ =0x0001326D
	adds r4, r0, r1
	ldrb r0, [r4]
	mov r1, sl
	strb r0, [r1, #1]
	cmp r6, #3
	beq _08066A70
	cmp r6, #4
	beq _08066A74
	b _08066A8E
	.align 2, 0
_08066A60: .4byte gEwramData
_08066A64: .4byte 0x000131EE
_08066A68: .4byte 0x00013268
_08066A6C: .4byte 0x0001326D
_08066A70:
	strb r2, [r3]
	b _08066A8E
_08066A74:
	ldr r0, _08066A88 @ =0x085063B0
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #8]
	cmp r0, #0
	bne _08066A8C
	strb r2, [r5]
	b _08066A8E
	.align 2, 0
_08066A88: .4byte 0x085063B0
_08066A8C:
	strb r2, [r4]
_08066A8E:
	bl sub_0804AD9C
	ldr r0, _08066AC0 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08066AC4 @ =0x0001326B
	adds r0, r0, r2
	ldrb r0, [r0]
	movs r1, #1
	bl sub_08031FC4
	movs r3, #0
	mov r8, r3
	add r4, sp, #8
	mov sb, r4
_08066AAA:
	ldrh r0, [r7]
	mov r2, sb
	ldrh r1, [r2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08066AC8
	movs r2, #0
	movs r6, #3
	b _08066AD6
	.align 2, 0
_08066AC0: .4byte gEwramData
_08066AC4: .4byte 0x0001326B
_08066AC8:
	cmp r0, #0
	ble _08066AD2
	movs r2, #1
	movs r6, #9
	b _08066AD6
_08066AD2:
	movs r2, #2
	movs r6, #8
_08066AD6:
	movs r3, #0
	ldrsh r5, [r7, r3]
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r5, r0
	ble _08066AE4
	ldr r5, _08066B58 @ =0x000003E7
_08066AE4:
	mov r4, r8
	adds r4, #2
	movs r0, #0x18
	adds r1, r4, #0
	bl sub_08047180
	str r6, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #0x1b
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #3
	bl sub_08046FFC
	movs r4, #2
	add sb, r4
	adds r7, #2
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #5
	ble _08066AAA
	ldr r4, _08066B5C @ =gEwramData
	ldr r0, [r4]
	ldr r2, _08066B60 @ =0x00013268
	adds r0, r0, r2
	mov r3, sp
	ldrb r3, [r3, #0x18]
	strb r3, [r0]
	ldr r0, [r4]
	mov r2, sl
	ldrb r1, [r2]
	ldr r3, _08066B64 @ =0x0001326C
	adds r0, r0, r3
	strb r1, [r0]
	ldr r0, [r4]
	ldrb r1, [r2, #1]
	ldr r2, _08066B68 @ =0x0001326D
	adds r0, r0, r2
	strb r1, [r0]
	bl sub_0804AD9C
	ldr r0, [r4]
	ldr r3, _08066B6C @ =0x0001326B
	adds r0, r0, r3
	ldrb r0, [r0]
	movs r1, #1
	bl sub_08031FC4
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066B58: .4byte 0x000003E7
_08066B5C: .4byte gEwramData
_08066B60: .4byte 0x00013268
_08066B64: .4byte 0x0001326C
_08066B68: .4byte 0x0001326D
_08066B6C: .4byte 0x0001326B

	thumb_func_start sub_08066B70
sub_08066B70: @ 0x08066B70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	adds r6, r1, #0
	str r2, [sp]
	adds r7, r3, #0
	movs r1, #0x16
	ldrsb r1, [r6, r1]
	ldrb r0, [r7]
	subs r0, #4
	cmp r1, r0
	ble _08066B9C
	strb r0, [r6, #0x16]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08066B9C
	movs r0, #0
	strb r0, [r6, #0x16]
_08066B9C:
	movs r5, #0
	movs r0, #0xb
	mov sb, r0
_08066BA2:
	movs r0, #0x16
	ldrsb r0, [r6, r0]
	adds r0, r0, r5
	mov r8, r0
	ldr r1, [sp, #0x24]
	cmp r1, #2
	ble _08066C4E
	adds r0, r7, #1
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r1, _08066BCC @ =0x085269FC
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #3
	beq _08066BD0
	cmp r1, #3
	ble _08066BF8
	cmp r1, #4
	beq _08066BE4
	b _08066BF8
	.align 2, 0
_08066BCC: .4byte 0x085269FC
_08066BD0:
	ldr r2, _08066BE0 @ =0x08505D3C
	ldrb r1, [r0, #1]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	b _08066C00
	.align 2, 0
_08066BE0: .4byte 0x08505D3C
_08066BE4:
	ldr r2, _08066BF4 @ =0x085063B0
	ldrb r1, [r0, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	b _08066C00
	.align 2, 0
_08066BF4: .4byte 0x085063B0
_08066BF8:
	ldr r1, _08066C34 @ =0x08505B3C
	ldrb r0, [r0, #1]
	lsls r0, r0, #4
	adds r0, r0, r1
_08066C00:
	ldrh r4, [r0]
	adds r1, r5, #0
	adds r1, #0xc
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0
	movs r2, #0xf
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	ldrb r0, [r7]
	cmp r5, r0
	blt _08066C3C
	cmp r5, #0
	bne _08066C4E
	cmp r0, #0
	bne _08066C4E
	ldr r0, _08066C38 @ =0x0000034F
	bl sub_08041434
	movs r1, #0
	bl sub_08041338
	b _08066C4E
	.align 2, 0
_08066C34: .4byte 0x08505B3C
_08066C38: .4byte 0x0000034F
_08066C3C:
	ldr r1, _08066C6C @ =0x08506734
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_08041434
	movs r1, #0
	bl sub_08041338
_08066C4E:
	ldrb r2, [r7]
	cmp r5, r2
	blt _08066C70
	movs r0, #0xe
	mov r1, sb
	movs r2, #3
	bl sub_08046E04
	movs r0, #0x15
	mov r1, sb
	movs r2, #8
	bl sub_08046E04
	b _08066CF2
	.align 2, 0
_08066C6C: .4byte 0x08506734
_08066C70:
	ldr r0, _08066CA0 @ =0x000003D1
	add r0, sl
	add r0, r8
	ldrb r2, [r0]
	movs r0, #0xf
	mov r1, sb
	movs r3, #1
	bl sub_08046EF4
	adds r0, r7, #1
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r1, _08066CA4 @ =0x085269FC
	adds r0, r0, r1
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	mov r4, sb
	cmp r2, #0xff
	beq _08066CA8
	adds r0, r2, #0
	bl sub_08044E94
	b _08066CAE
	.align 2, 0
_08066CA0: .4byte 0x000003D1
_08066CA4: .4byte 0x085269FC
_08066CA8:
	adds r0, r1, #0
	bl sub_08044EDC
_08066CAE:
	ldr r1, [r0, #4]
	ldrb r0, [r6, #0xa]
	cmp r0, #2
	bne _08066CBE
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r1, r0, #1
	b _08066CD0
_08066CBE:
	ldr r2, [sp]
	ldrb r0, [r2, #0xf]
	cmp r0, #9
	bne _08066CD0
	lsls r0, r1, #3
	movs r1, #0xa
	bl Div
	adds r1, r0, #0
_08066CD0:
	ldr r0, _08066D40 @ =0x000003D1
	add r0, sl
	add r0, r8
	ldrb r0, [r0]
	adds r2, r0, #0
	muls r2, r1, r2
	movs r0, #0x1c
	adds r1, r4, #0
	movs r3, #1
	bl sub_08046EF4
	movs r2, #8
	subs r2, r2, r0
	movs r0, #0x15
	adds r1, r4, #0
	bl sub_08046E04
_08066CF2:
	movs r0, #1
	add sb, r0
	adds r5, #1
	cmp r5, #3
	bgt _08066CFE
	b _08066BA2
_08066CFE:
	ldrb r0, [r7]
	cmp r0, #0
	bne _08066D4C
	movs r0, #0xc
	movs r1, #6
	movs r2, #2
	bl sub_08047098
	ldr r0, _08066D44 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0xeb
	lsls r1, r1, #4
	adds r0, r0, r1
	bl EntityDelete
	bl sub_08040FE0
	movs r5, #0
	ldr r7, _08066D48 @ =0x00007FFF
	adds r4, r6, #0
	adds r4, #0x18
_08066D28:
	adds r1, r5, #2
	movs r0, #0x18
	movs r2, #4
	bl sub_08046E04
	strh r7, [r4]
	adds r4, #2
	adds r5, #1
	cmp r5, #5
	ble _08066D28
	b _08066E94
	.align 2, 0
_08066D40: .4byte 0x000003D1
_08066D44: .4byte gEwramData
_08066D48: .4byte 0x00007FFF
_08066D4C:
	ldrb r0, [r6, #0x16]
	ldrb r2, [r6, #0x15]
	adds r0, r0, r2
	strb r0, [r6, #0x17]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldrb r0, [r7]
	strb r0, [r6, #0x14]
	adds r4, r7, #1
	mov r0, r8
	adds r7, r4, r0
	ldrb r1, [r7]
	lsls r1, r1, #2
	ldr r5, _08066DA0 @ =0x085269FC
	adds r1, r1, r5
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	bl sub_08067660
	adds r2, r0, #0
	movs r0, #0xc
	movs r1, #6
	movs r3, #1
	bl sub_08046EF4
	mov sb, r4
	ldr r1, [sp, #0x24]
	cmp r1, #1
	ble _08066E40
	ldrb r0, [r7]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrb r1, [r0]
	cmp r1, #3
	beq _08066DA4
	cmp r1, #3
	ble _08066DCC
	cmp r1, #4
	beq _08066DB8
	b _08066DCC
	.align 2, 0
_08066DA0: .4byte 0x085269FC
_08066DA4:
	ldr r2, _08066DB4 @ =0x08505D3C
	ldrb r1, [r0, #1]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	b _08066DD4
	.align 2, 0
_08066DB4: .4byte 0x08505D3C
_08066DB8:
	ldr r2, _08066DC8 @ =0x085063B0
	ldrb r1, [r0, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	b _08066DD4
	.align 2, 0
_08066DC8: .4byte 0x085063B0
_08066DCC:
	ldr r1, _08066E18 @ =0x08505B3C
	ldrb r0, [r0, #1]
	lsls r0, r0, #4
	adds r0, r0, r1
_08066DD4:
	ldrh r4, [r0]
	bl sub_08040FE0
	ldr r1, _08066E1C @ =0x08506936
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r1, #2
	bl sub_08047390
	mov r5, sb
	add r5, r8
	ldrb r0, [r5]
	lsls r0, r0, #2
	ldr r4, _08066E20 @ =0x085269FC
	adds r0, r0, r4
	ldrb r2, [r0]
	ldrb r3, [r0, #1]
	movs r0, #0x1c
	movs r1, #0x90
	bl sub_08048804
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r3, r0, r4
	ldrb r0, [r3]
	cmp r0, #2
	beq _08066E24
	adds r1, r0, #0
	ldrb r2, [r3, #1]
	adds r0, r6, #0
	bl sub_08066A00
	b _08066E40
	.align 2, 0
_08066E18: .4byte 0x08505B3C
_08066E1C: .4byte 0x08506936
_08066E20: .4byte 0x085269FC
_08066E24:
	movs r5, #0
	ldr r7, _08066E5C @ =0x00007FFF
	adds r4, r6, #0
	adds r4, #0x18
_08066E2C:
	adds r1, r5, #2
	movs r0, #0x18
	movs r2, #4
	bl sub_08046E04
	strh r7, [r4]
	adds r4, #2
	adds r5, #1
	cmp r5, #5
	ble _08066E2C
_08066E40:
	ldr r5, _08066E60 @ =0x0000334D
	movs r7, #0x1d
	movs r4, #0xb
	movs r0, #0x16
	ldrsb r0, [r6, r0]
	cmp r0, #0
	ble _08066E64
	movs r0, #0x1d
	movs r1, #0xb
	adds r2, r5, #0
	movs r3, #1
	bl sub_08046DD4
	b _08066E6E
	.align 2, 0
_08066E5C: .4byte 0x00007FFF
_08066E60: .4byte 0x0000334D
_08066E64:
	movs r0, #0x1d
	movs r1, #0xb
	movs r2, #1
	bl sub_08047128
_08066E6E:
	movs r0, #0x14
	ldrsb r0, [r6, r0]
	subs r0, #4
	movs r1, #0x16
	ldrsb r1, [r6, r1]
	cmp r0, r1
	ble _08066E8A
	adds r1, r4, #3
	adds r2, r5, #1
	adds r0, r7, #0
	movs r3, #1
	bl sub_08046DD4
	b _08066E94
_08066E8A:
	adds r1, r4, #3
	adds r0, r7, #0
	movs r2, #1
	bl sub_08047128
_08066E94:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08066EA4
sub_08066EA4: @ 0x08066EA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	ldr r0, _08066EF4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08066EF8 @ =0x000135F4
	adds r1, r1, r0
	mov r8, r1
	movs r0, #0
	strb r0, [r1]
	movs r7, #0
_08066EC2:
	adds r0, r7, #0
	bl sub_08044F24
	adds r4, r0, #0
	adds r0, r7, #0
	bl sub_08044F50
	adds r6, r0, #0
	adds r0, r7, #0
	bl sub_08044EDC
	mov sl, r0
	ldr r0, _08066EF4 @ =gEwramData
	ldr r5, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08044E94
	cmp r4, #3
	beq _08066F0C
	cmp r4, #3
	bgt _08066EFC
	cmp r4, #2
	beq _08066F02
	b _08066F22
	.align 2, 0
_08066EF4: .4byte gEwramData
_08066EF8: .4byte 0x000135F4
_08066EFC:
	cmp r4, #4
	beq _08066F18
	b _08066F22
_08066F02:
	ldr r2, _08066F08 @ =0x00013294
	adds r0, r5, r2
	b _08066F1C
	.align 2, 0
_08066F08: .4byte 0x00013294
_08066F0C:
	ldr r3, _08066F14 @ =0x000132B4
	adds r0, r5, r3
	b _08066F1C
	.align 2, 0
_08066F14: .4byte 0x000132B4
_08066F18:
	ldr r1, _08066FA4 @ =0x000132EF
	adds r0, r5, r1
_08066F1C:
	adds r0, r0, r6
	ldrb r0, [r0]
	mov sb, r0
_08066F22:
	movs r0, #0
	mov r2, sb
	cmp r2, #0
	beq _08066F34
	mov r3, sl
	ldr r1, [r3, #4]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
_08066F34:
	adds r5, r7, #1
	cmp r0, #0
	beq _08066F80
	adds r0, r7, #0
	bl sub_08044F24
	adds r4, r0, #0
	adds r0, r7, #0
	bl sub_08044F50
	adds r3, r0, #0
	ldr r1, _08066FA8 @ =0x085269FC
	movs r2, #0
_08066F4E:
	ldrb r0, [r1, #1]
	cmp r0, r3
	bne _08066F5A
	ldrb r0, [r1]
	cmp r0, r4
	beq _08066F66
_08066F5A:
	adds r2, #1
	adds r1, #4
	cmp r2, #0x7f
	ble _08066F4E
	movs r2, #1
	rsbs r2, r2, #0
_08066F66:
	cmp r2, #0
	blt _08066F80
	mov r0, r8
	ldrb r1, [r0]
	adds r0, r1, #1
	mov r3, r8
	strb r0, [r3]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r0, r8
	adds r0, #1
	adds r0, r0, r1
	strb r2, [r0]
_08066F80:
	adds r7, r5, #0
	cmp r7, #0x87
	ble _08066EC2
	ldr r0, _08066FAC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08066FB0 @ =0x000135F4
	adds r1, r1, r0
	mov r8, r1
	ldr r2, [sp]
	ldr r3, _08066FB4 @ =0x000003D1
	adds r0, r2, r3
	movs r1, #0
	movs r2, #0x80
	bl memset
	movs r7, #0
	b _08066FE0
	.align 2, 0
_08066FA4: .4byte 0x000132EF
_08066FA8: .4byte 0x085269FC
_08066FAC: .4byte gEwramData
_08066FB0: .4byte 0x000135F4
_08066FB4: .4byte 0x000003D1
_08066FB8:
	mov r0, r8
	adds r0, #1
	adds r0, r0, r7
	ldrb r1, [r0]
	lsls r1, r1, #2
	ldr r0, _08066FF8 @ =0x085269FC
	adds r1, r1, r0
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	bl sub_08067660
	ldr r1, [sp]
	ldr r3, _08066FFC @ =0x000003D1
	adds r2, r1, r3
	adds r2, r2, r7
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	strb r1, [r2]
	adds r7, #1
_08066FE0:
	mov r0, r8
	ldrb r0, [r0]
	cmp r7, r0
	blt _08066FB8
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066FF8: .4byte 0x085269FC
_08066FFC: .4byte 0x000003D1

	thumb_func_start sub_08067000
sub_08067000: @ 0x08067000
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
	mov sl, r1
	adds r5, r2, #0
	str r3, [sp]
	lsls r1, r3, #2
	ldr r0, _0806704C @ =0x085269FC
	adds r4, r1, r0
	ldr r0, _08067050 @ =0x000003D1
	add r0, sb
	mov r1, sl
	ldrb r1, [r1, #0x17]
	adds r0, r0, r1
	ldrb r7, [r0]
	ldrb r0, [r4]
	ldrb r1, [r4, #1]
	bl sub_08044E94
	ldrb r1, [r0, #8]
	ldrb r0, [r4]
	cmp r0, #3
	beq _08067054
	cmp r0, #4
	beq _0806707C
	adds r1, r5, #0
	adds r1, #0x38
	ldrb r2, [r4, #1]
	adds r1, r1, r2
	ldrb r0, [r1]
	subs r0, r0, r7
	strb r0, [r1]
	b _080670B0
	.align 2, 0
_0806704C: .4byte 0x085269FC
_08067050: .4byte 0x000003D1
_08067054:
	ldrb r3, [r4, #1]
	adds r1, r5, #0
	adds r1, #0x58
	adds r0, r1, r3
	ldrb r2, [r0]
	subs r2, r2, r7
	adds r6, r1, #0
	cmp r2, #0
	bgt _08067076
	ldrb r0, [r5, #0xc]
	cmp r0, r3
	bne _08067074
	movs r0, #0xff
	strb r0, [r5, #0xc]
	bl sub_0804AD9C
_08067074:
	movs r2, #0
_08067076:
	ldrb r0, [r4, #1]
	adds r0, r6, r0
	b _080670AE
_0806707C:
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r6, r0, #0x1f
	ldrb r3, [r4, #1]
	adds r1, r5, #0
	adds r1, #0x93
	adds r0, r1, r3
	ldrb r2, [r0]
	subs r2, r2, r7
	mov r8, r1
	cmp r2, #0
	bgt _080670AA
	adds r0, r5, #0
	adds r0, #0x10
	adds r1, r0, r6
	ldrb r0, [r1]
	cmp r0, r3
	bne _080670A8
	movs r0, #0xff
	strb r0, [r1]
	bl sub_0804AD9C
_080670A8:
	movs r2, #0
_080670AA:
	ldrb r0, [r4, #1]
	add r0, r8
_080670AE:
	strb r2, [r0]
_080670B0:
	ldrb r0, [r4]
	ldrb r1, [r4, #1]
	cmp r0, #0xff
	beq _080670BE
	bl sub_08044E94
	b _080670C4
_080670BE:
	adds r0, r1, #0
	bl sub_08044EDC
_080670C4:
	ldr r0, [r0, #4]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r1, r0, #0
	muls r1, r7, r1
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
	str r0, [r5, #0x34]
	ldr r3, [sp]
	lsls r1, r3, #2
	ldr r0, _08067114 @ =0x085269FC
	adds r1, r1, r0
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	bl sub_08067660
	ldr r2, _08067118 @ =0x000003D1
	add r2, sb
	mov r1, sl
	ldrb r1, [r1, #0x17]
	adds r2, r2, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	strb r1, [r2]
	mov r0, sb
	mov r1, sl
	adds r2, r5, #0
	bl sub_08066EA4
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08067114: .4byte 0x085269FC
_08067118: .4byte 0x000003D1

	thumb_func_start sub_0806711C
sub_0806711C: @ 0x0806711C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	lsls r3, r3, #2
	ldr r0, _08067144 @ =0x085269FC
	adds r3, r3, r0
	ldr r1, _08067148 @ =0x000003D1
	adds r0, r7, r1
	ldrb r1, [r6, #0x17]
	adds r0, r0, r1
	ldrb r5, [r0]
	ldrb r0, [r3]
	cmp r0, #3
	beq _0806714C
	cmp r0, #4
	beq _08067152
	adds r1, r4, #0
	adds r1, #0x38
	b _08067156
	.align 2, 0
_08067144: .4byte 0x085269FC
_08067148: .4byte 0x000003D1
_0806714C:
	adds r1, r4, #0
	adds r1, #0x58
	b _08067156
_08067152:
	adds r1, r4, #0
	adds r1, #0x93
_08067156:
	ldrb r0, [r3, #1]
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r5
	strb r0, [r1]
	ldrb r0, [r3]
	ldrb r1, [r3, #1]
	cmp r0, #0xff
	beq _0806716E
	bl sub_08044E94
	b _08067174
_0806716E:
	adds r0, r1, #0
	bl sub_08044EDC
_08067174:
	ldr r1, [r0, #4]
	ldrb r0, [r4, #0xf]
	cmp r0, #9
	bne _08067186
	lsls r0, r1, #3
	movs r1, #0xa
	bl Div
	adds r1, r0, #0
_08067186:
	muls r1, r5, r1
	ldr r0, [r4, #0x34]
	subs r0, r0, r1
	str r0, [r4, #0x34]
	ldr r1, _080671A0 @ =0x000003D1
	adds r0, r7, r1
	ldrb r6, [r6, #0x17]
	adds r0, r0, r6
	movs r1, #1
	strb r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080671A0: .4byte 0x000003D1

	thumb_func_start sub_080671A4
sub_080671A4: @ 0x080671A4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r4, r3, #2
	ldr r0, _080671D0 @ =0x085269FC
	adds r4, r4, r0
	ldrb r0, [r4]
	ldrb r1, [r4, #1]
	bl sub_08067660
	adds r7, r0, #0
	ldrb r0, [r4]
	ldrb r1, [r4, #1]
	cmp r0, #0xff
	beq _080671D4
	bl sub_08044E94
	b _080671DA
	.align 2, 0
_080671D0: .4byte 0x085269FC
_080671D4:
	adds r0, r1, #0
	bl sub_08044EDC
_080671DA:
	ldr r1, [r0, #4]
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	bne _0806720C
	lsrs r1, r1, #1
	ldr r0, _08067204 @ =0x000003D1
	add r0, r8
	ldrb r5, [r5, #0x17]
	adds r0, r0, r5
	ldrb r2, [r0]
	muls r1, r2, r1
	ldr r0, [r6, #0x34]
	adds r0, r0, r1
	ldr r1, _08067208 @ =0x000F423F
	cmp r0, r1
	bhi _0806723A
	cmp r2, #0
	beq _0806723A
_080671FE:
	movs r0, #1
	b _0806723C
	.align 2, 0
_08067204: .4byte 0x000003D1
_08067208: .4byte 0x000F423F
_0806720C:
	ldrb r0, [r5, #0x17]
	ldr r4, _08067248 @ =0x000003D1
	add r4, r8
	adds r0, r4, r0
	ldrb r0, [r0]
	adds r0, r7, r0
	cmp r0, #9
	bgt _0806723A
	ldrb r0, [r6, #0xf]
	cmp r0, #9
	bne _0806722C
	lsls r0, r1, #3
	movs r1, #0xa
	bl Div
	adds r1, r0, #0
_0806722C:
	ldrb r0, [r5, #0x17]
	adds r0, r4, r0
	ldrb r0, [r0]
	muls r1, r0, r1
	ldr r0, [r6, #0x34]
	cmp r0, r1
	bhs _080671FE
_0806723A:
	movs r0, #0
_0806723C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08067248: .4byte 0x000003D1

	thumb_func_start sub_0806724C
sub_0806724C: @ 0x0806724C
	push {r4, r5, r6, lr}
	ldr r0, _080672F0 @ =gEwramData
	ldr r4, [r0]
	ldr r1, _080672F4 @ =0x00007864
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r2, _080672F8 @ =0x0000786C
	adds r0, r0, r2
	adds r4, r4, r0
	adds r5, r4, #0
	adds r5, #0xc0
	ldr r3, _080672FC @ =0x04000016
	movs r0, #0xa0
	movs r1, #0xa0
	movs r2, #2
	bl sub_08001718
	movs r1, #0x40
	adds r4, #0xc2
	movs r0, #0x3f
_08067282:
	strh r1, [r4]
	adds r4, #2
	subs r0, #1
	cmp r0, #0
	bne _08067282
	movs r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r1, #0
	strh r1, [r0]
	ldr r0, _080672F0 @ =gEwramData
	ldr r1, [r0]
	ldr r6, _080672F4 @ =0x00007864
	adds r1, r1, r6
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	ldr r3, _08067300 @ =gUnk_03002CB0
	ldrh r2, [r3]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	orrs r2, r0
	ldr r6, _08067304 @ =gDisplayRegisters
	mov ip, r6
	mov r5, ip
	adds r5, #0x42
	movs r4, #0x3f
	mov r1, ip
	adds r1, #0x40
	movs r0, #0x3e
	strb r0, [r1]
	ldr r0, _08067308 @ =0x000028F0
	mov r1, ip
	strh r0, [r1, #0x38]
	ldr r1, _0806730C @ =0x00007898
	strh r1, [r6, #0x3c]
	movs r6, #0x80
	lsls r6, r6, #7
	adds r0, r6, #0
	orrs r2, r0
	strh r2, [r3]
	strb r4, [r5]
	mov r2, ip
	adds r2, #0x41
	movs r0, #0x2f
	strb r0, [r2]
	movs r0, #0x28
	mov r2, ip
	strh r0, [r2, #0x3a]
	strh r1, [r2, #0x3e]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080672F0: .4byte gEwramData
_080672F4: .4byte 0x00007864
_080672F8: .4byte 0x0000786C
_080672FC: .4byte 0x04000016
_08067300: .4byte gUnk_03002CB0
_08067304: .4byte gDisplayRegisters
_08067308: .4byte 0x000028F0
_0806730C: .4byte 0x00007898

	thumb_func_start sub_08067310
sub_08067310: @ 0x08067310
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r0, _08067418 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806741C @ =0x0001325C
	adds r1, r1, r0
	mov r8, r1
	movs r3, #0
	str r3, [sp, #8]
	ldr r1, _08067420 @ =0x040000D4
	add r2, sp, #8
	str r2, [r1]
	ldr r0, _08067424 @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _08067428 @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r0, r8
	ldr r2, [r0, #0x34]
	movs r0, #6
	str r0, [sp]
	str r3, [sp, #4]
	movs r0, #0x11
	movs r1, #9
	movs r3, #6
	bl sub_08046FFC
	movs r0, #0x16
	movs r1, #2
	bl sub_0804679C
	movs r0, #0x16
	movs r1, #4
	bl sub_080466C8
	movs r5, #0
_08067360:
	adds r1, r5, #0
	adds r1, #0x10
	lsls r4, r5, #5
	ldr r0, _0806742C @ =0xFFFFF060
	adds r2, r4, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #5
	movs r3, #0x18
	bl sub_08046DD4
	adds r1, r5, #0
	adds r1, #0xb
	ldr r2, _08067430 @ =0xFFFFF180
	adds r4, r4, r2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #2
	adds r2, r4, #0
	movs r3, #0xa
	bl sub_08046DD4
	adds r5, #1
	cmp r5, #3
	ble _08067360
	movs r0, #0
	movs r1, #2
	movs r2, #0x23
	movs r3, #5
	bl sub_08040748
	movs r0, #0
	movs r1, #0xc
	movs r2, #0x20
	movs r3, #4
	bl sub_08040970
	bl sub_08041204
	adds r0, r6, #0
	movs r1, #0
	bl sub_08046E28
	movs r0, #0
	strb r0, [r6, #0x16]
	strb r0, [r6, #0x14]
	strb r0, [r6, #0x17]
	strb r0, [r6, #0x15]
	movs r1, #0xf4
	lsls r1, r1, #2
	adds r2, r7, r1
	strb r0, [r2]
	ldr r4, _08067418 @ =gEwramData
	ldr r0, [r4]
	ldr r3, _08067434 @ =0x0000037E
	adds r0, r0, r3
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080673DE
	movs r0, #1
	strb r0, [r2]
_080673DE:
	ldr r0, [r4]
	adds r0, r0, r3
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080673F0
	movs r0, #2
	strb r0, [r2]
_080673F0:
	ldrb r0, [r6, #0xa]
	cmp r0, #2
	bne _0806743C
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, r8
	bl sub_08066EA4
	ldr r3, [r4]
	ldr r2, _08067438 @ =0x000135F4
	adds r3, r3, r2
	movs r0, #3
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, r8
	bl sub_08066B70
	b _08067474
	.align 2, 0
_08067418: .4byte gEwramData
_0806741C: .4byte 0x0001325C
_08067420: .4byte 0x040000D4
_08067424: .4byte 0x0600E000
_08067428: .4byte 0x85000200
_0806742C: .4byte 0xFFFFF060
_08067430: .4byte 0xFFFFF180
_08067434: .4byte 0x0000037E
_08067438: .4byte 0x000135F4
_0806743C:
	ldr r1, _08067480 @ =0x08526C6C
	movs r2, #0xf4
	lsls r2, r2, #2
	adds r0, r7, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0]
	movs r1, #0
	ldrb r0, [r3]
	cmp r1, r0
	bge _08067466
	ldr r0, _08067484 @ =0x000003D1
	adds r2, r7, r0
	movs r4, #1
_0806745A:
	adds r0, r2, r1
	strb r4, [r0]
	adds r1, #1
	ldrb r0, [r3]
	cmp r1, r0
	blt _0806745A
_08067466:
	movs r0, #3
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, r8
	bl sub_08066B70
_08067474:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08067480: .4byte 0x08526C6C
_08067484: .4byte 0x000003D1

	thumb_func_start sub_08067488
sub_08067488: @ 0x08067488
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r0, _080674B0 @ =gEwramData
	ldr r3, [r0]
	ldr r0, _080674B4 @ =0x0001325C
	adds r7, r3, r0
	ldrh r2, [r3, #0x18]
	movs r1, #0
	mov sb, r1
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _080674BC
	ldr r0, _080674B8 @ =0x000135F4
	adds r5, r3, r0
	b _080674CC
	.align 2, 0
_080674B0: .4byte gEwramData
_080674B4: .4byte 0x0001325C
_080674B8: .4byte 0x000135F4
_080674BC:
	ldr r1, _080674EC @ =0x08526C6C
	movs r3, #0xf4
	lsls r3, r3, #2
	adds r0, r6, r3
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r5, [r0]
_080674CC:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08067550
	movs r0, #2
	mov r8, r0
	mov r1, r8
	ands r1, r2
	mov r8, r1
	cmp r1, #0
	beq _080674F0
	movs r0, #0xf0
	bl PlaySong
	movs r3, #1
	mov sb, r3
	b _0806764E
	.align 2, 0
_080674EC: .4byte 0x08526C6C
_080674F0:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0806752C
	adds r0, r5, #1
	ldrb r1, [r4, #0x17]
	adds r0, r0, r1
	ldrb r3, [r0]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl sub_080671A4
	cmp r0, #0
	beq _08067524
	bl sub_0806724C
	movs r0, #0xf3
	bl PlaySong
	mov r3, r8
	strb r3, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	b _0806764E
_08067524:
	movs r0, #0xef
	bl PlaySong
	b _0806764E
_0806752C:
	str r2, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r7, #0
	adds r3, r5, #0
	bl sub_0806688C
	cmp r0, #0
	bne _08067540
	b _0806764E
_08067540:
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r7, #0
	adds r3, r5, #0
	bl sub_08066B70
	b _0806764E
_08067550:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _080675D4
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _080675D4
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _08067578
	adds r0, r5, #1
	ldrb r1, [r4, #0x17]
	adds r0, r0, r1
	ldrb r3, [r0]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl sub_08067000
	b _0806758A
_08067578:
	adds r0, r5, #1
	ldrb r3, [r4, #0x17]
	adds r0, r0, r3
	ldrb r3, [r0]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl sub_0806711C
_0806758A:
	movs r0, #0xf5
	bl PlaySong
	movs r0, #3
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r7, #0
	adds r3, r5, #0
	bl sub_08066B70
	ldr r2, [r7, #0x34]
	movs r0, #6
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #0x11
	movs r1, #9
	movs r3, #6
	bl sub_08046FFC
	movs r2, #9
	subs r2, r2, r0
	movs r0, #0xa
	movs r1, #3
	bl sub_08046E04
	ldr r0, _080675CC @ =gEwramData
	ldr r1, [r0]
	ldr r0, _080675D0 @ =0x00007864
	adds r1, r1, r0
	b _080675EA
	.align 2, 0
_080675CC: .4byte gEwramData
_080675D0: .4byte 0x00007864
_080675D4:
	movs r0, #3
	ands r0, r2
	cmp r0, #0
	beq _0806761C
	movs r0, #0xf0
	bl PlaySong
	ldr r0, _08067608 @ =gEwramData
	ldr r1, [r0]
	ldr r3, _0806760C @ =0x00007864
	adds r1, r1, r3
_080675EA:
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	ldr r3, _08067610 @ =gUnk_03002CB0
	ldrh r1, [r3]
	ldr r0, _08067614 @ =0x0000DFFF
	ands r0, r1
	movs r2, #0
	ldr r1, _08067618 @ =0x0000BFFF
	ands r0, r1
	strh r0, [r3]
	strb r2, [r4, #0xc]
	b _0806764E
	.align 2, 0
_08067608: .4byte gEwramData
_0806760C: .4byte 0x00007864
_08067610: .4byte gUnk_03002CB0
_08067614: .4byte 0x0000DFFF
_08067618: .4byte 0x0000BFFF
_0806761C:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08067636
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _08067636
	movs r0, #0xf1
	bl PlaySong
	ldrb r0, [r4, #0xd]
	adds r0, #1
	b _0806764C
_08067636:
	movs r0, #0x20
	ands r2, r0
	cmp r2, #0
	beq _0806764E
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _0806764E
	movs r0, #0xf1
	bl PlaySong
	movs r0, #0
_0806764C:
	strb r0, [r4, #0xd]
_0806764E:
	mov r0, sb
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08067660
sub_08067660: @ 0x08067660
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, _08067680 @ =gEwramData
	ldr r5, [r0]
	adds r0, r4, #0
	bl sub_08044E94
	cmp r4, #3
	beq _08067698
	cmp r4, #3
	bgt _08067684
	cmp r4, #2
	beq _0806768A
	b _080676B0
	.align 2, 0
_08067680: .4byte gEwramData
_08067684:
	cmp r4, #4
	beq _080676A8
	b _080676B0
_0806768A:
	ldr r1, _08067694 @ =0x00013294
	adds r0, r5, r1
	adds r0, r0, r6
	ldrb r0, [r0]
	b _080676B0
	.align 2, 0
_08067694: .4byte 0x00013294
_08067698:
	ldr r1, _080676A4 @ =0x000132B4
	adds r0, r5, r1
	adds r0, r0, r6
	ldrb r0, [r0]
	b _080676B0
	.align 2, 0
_080676A4: .4byte 0x000132B4
_080676A8:
	ldr r1, _080676B8 @ =0x000132EF
	adds r0, r5, r1
	adds r0, r0, r6
	ldrb r0, [r0]
_080676B0:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080676B8: .4byte 0x000132EF

	thumb_func_start sub_080676BC
sub_080676BC: @ 0x080676BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x70
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r4, _08067700 @ =gEwramData
	ldr r1, [r4]
	ldr r0, _08067704 @ =0x0000A078
	adds r1, r1, r0
	mov r0, sp
	movs r2, #0x70
	bl memcpy
	ldr r1, _08067708 @ =gDisplayRegisters
	ldr r0, _0806770C @ =0x00001C04
	strh r0, [r1]
	ldr r0, [r4]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _08067714
	cmp r0, #3
	beq _08067738
	ldr r0, _08067710 @ =0x0827B200
	movs r2, #0
	ldrb r1, [r0]
	cmp r1, #0
	beq _0806776C
	cmp r1, #1
	bne _0806776E
	b _08067754
	.align 2, 0
_08067700: .4byte gEwramData
_08067704: .4byte 0x0000A078
_08067708: .4byte gDisplayRegisters
_0806770C: .4byte 0x00001C04
_08067710: .4byte 0x0827B200
_08067714:
	ldr r0, _08067730 @ =0x08277984
	movs r2, #0
	ldrb r1, [r0]
	cmp r1, #0
	beq _0806776C
	cmp r1, #1
	bne _0806776E
	bl sub_0803B9B4
	ldr r0, [r4]
	ldr r3, _08067734 @ =0x000153F8
	adds r2, r0, r3
	b _0806776E
	.align 2, 0
_08067730: .4byte 0x08277984
_08067734: .4byte 0x000153F8
_08067738:
	ldr r0, _08067750 @ =0x0826C848
	movs r2, #0
	ldrb r1, [r0]
	cmp r1, #0
	beq _0806776C
	cmp r1, #1
	bne _0806776E
	bl sub_0803B9B4
	ldr r0, [r4]
	b _0806775C
	.align 2, 0
_08067750: .4byte 0x0826C848
_08067754:
	bl sub_0803B9B4
	ldr r0, _08067764 @ =gEwramData
	ldr r0, [r0]
_0806775C:
	ldr r1, _08067768 @ =0x000153F8
	adds r2, r0, r1
	b _0806776E
	.align 2, 0
_08067764: .4byte gEwramData
_08067768: .4byte 0x000153F8
_0806776C:
	adds r2, r0, #4
_0806776E:
	ldr r1, _080677E8 @ =0x040000D4
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r2, r3
	str r0, [r1]
	ldr r0, _080677EC @ =0x06005800
	str r0, [r1, #4]
	ldr r0, _080677F0 @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _080677F4 @ =0x080E5C20
	movs r1, #4
	movs r2, #1
	movs r3, #0xf
	bl sub_0803C918
	ldr r1, _080677F8 @ =0x06006000
	adds r0, r5, #0
	movs r2, #1
	bl sub_0803FD9C
	adds r0, r6, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xd
	bl sub_0803C918
	movs r0, #0
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F970
	ldr r1, [sp, #0x38]
	mov r0, sp
	ldrh r2, [r0, #0x3e]
	adds r0, #0x42
	ldrh r3, [r0]
	movs r0, #2
	bl sub_0803F8A8
	ldr r1, _080677FC @ =gDisplayRegisters
	movs r0, #4
	strh r0, [r1, #8]
	ldr r1, _08067800 @ =0x0600E000
	movs r0, #0xd1
	lsls r0, r0, #8
	adds r3, r0, #0
	movs r2, #0x80
	lsls r2, r2, #3
_080677D2:
	ldrh r0, [r1]
	orrs r0, r3
	strh r0, [r1]
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bne _080677D2
	add sp, #0x70
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080677E8: .4byte 0x040000D4
_080677EC: .4byte 0x06005800
_080677F0: .4byte 0x80000200
_080677F4: .4byte 0x080E5C20
_080677F8: .4byte 0x06006000
_080677FC: .4byte gDisplayRegisters
_08067800: .4byte 0x0600E000

	thumb_func_start sub_08067804
sub_08067804: @ 0x08067804
	push {r4, r5, lr}
	movs r5, #0
	ldr r3, _08067854 @ =gDisplayRegisters
	adds r2, r3, #0
	adds r2, #0x4c
	movs r1, #8
	strh r1, [r2]
	adds r3, #0x48
	ldrh r2, [r3]
	ldr r1, _08067858 @ =0x0000FF3F
	ands r1, r2
	movs r2, #0xc0
	orrs r1, r2
	movs r2, #0x3f
	orrs r1, r2
	ldr r2, _0806785C @ =0x0000FFFE
	ands r1, r2
	strh r1, [r3]
	ldr r3, _08067860 @ =gUnk_03002CB0
	ldrh r2, [r3]
	movs r4, #0x84
	lsls r4, r4, #6
	adds r1, r4, #0
	orrs r1, r2
	strh r1, [r3]
	ldr r4, _08067864 @ =gEwramData
	ldr r2, [r4]
	ldr r3, _08067868 @ =0x0000041B
	adds r2, r2, r3
	ldrb r1, [r2]
	adds r1, r1, r0
	strb r1, [r2]
	ldr r0, [r4]
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0x23
	ble _0806786C
	movs r0, #0x24
	b _08067872
	.align 2, 0
_08067854: .4byte gDisplayRegisters
_08067858: .4byte 0x0000FF3F
_0806785C: .4byte 0x0000FFFE
_08067860: .4byte gUnk_03002CB0
_08067864: .4byte gEwramData
_08067868: .4byte 0x0000041B
_0806786C:
	cmp r0, #0
	bgt _08067874
	movs r0, #0
_08067872:
	movs r5, #1
_08067874:
	lsls r0, r0, #5
	movs r1, #0x24
	bl Div
	ldr r2, _08067894 @ =gDisplayRegisters
	movs r1, #0x7c
	subs r1, r1, r0
	lsls r1, r1, #8
	adds r0, #0x7c
	orrs r1, r0
	strh r1, [r2, #0x3c]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08067894: .4byte gDisplayRegisters

	thumb_func_start sub_08067898
sub_08067898: @ 0x08067898
	push {r4, lr}
	sub sp, #4
	ldr r2, _080678DC @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _080678E0 @ =0x00009FFF
	ands r0, r1
	movs r3, #0
	ldr r1, _080678E4 @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _080678E8 @ =gDisplayRegisters
	adds r0, #0x4c
	strh r3, [r0]
	ldr r4, _080678EC @ =gEwramData
	ldr r0, [r4]
	ldr r1, _080678F0 @ =0x0000042C
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08067900
	str r3, [sp]
	ldr r1, _080678F4 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _080678F8 @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _080678FC @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	b _08067914
	.align 2, 0
_080678DC: .4byte gUnk_03002CB0
_080678E0: .4byte 0x00009FFF
_080678E4: .4byte 0x00001FFF
_080678E8: .4byte gDisplayRegisters
_080678EC: .4byte gEwramData
_080678F0: .4byte 0x0000042C
_080678F4: .4byte 0x040000D4
_080678F8: .4byte 0x0600E000
_080678FC: .4byte 0x85000200
_08067900:
	bl sub_0800DA50
	ldr r0, [r4]
	ldr r1, _08067928 @ =0x0000042C
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #0x21
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0]
_08067914:
	ldr r0, _0806792C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08067930 @ =0x00000417
	adds r0, r0, r1
	movs r1, #0xff
	strb r1, [r0]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08067928: .4byte 0x0000042C
_0806792C: .4byte gEwramData
_08067930: .4byte 0x00000417

	thumb_func_start sub_08067934
sub_08067934: @ 0x08067934
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	mov r8, r0
	ldr r0, _080679D8 @ =gEwramData
	ldr r4, [r0]
	ldr r2, _080679DC @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _080679E0 @ =0x0000FEFF
	ands r0, r1
	movs r6, #0
	movs r5, #0
	strh r0, [r2]
	ldr r0, _080679E4 @ =0x0000042C
	adds r2, r4, r0
	ldr r0, [r2]
	movs r1, #0x21
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080679E8 @ =0x06004000
	bl sub_080412DC
	movs r0, #0
	bl sub_08041304
	movs r0, #0
	movs r1, #0
	movs r2, #0x1f
	movs r3, #4
	bl sub_08040748
	bl sub_08040FE0
	ldr r1, _080679EC @ =gDisplayRegisters
	ldr r0, _080679F0 @ =0x000008E8
	strh r0, [r1, #0x38]
	ldr r0, _080679F4 @ =0x0000C0C1
	strh r0, [r1, #0x3c]
	adds r2, r1, #0
	adds r2, #0x40
	movs r0, #0x3f
	strb r0, [r2]
	adds r1, #0x42
	movs r0, #0x1f
	strb r0, [r1]
	mov r0, r8
	bl sub_08041434
	ldr r2, _080679F8 @ =0x0000040C
	adds r1, r4, r2
	str r0, [r1]
	movs r1, #0x82
	lsls r1, r1, #3
	adds r0, r4, r1
	str r5, [r0]
	ldr r0, _080679FC @ =0x00000414
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _08067A00 @ =0x0000041A
	adds r0, r4, r1
	strb r6, [r0]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r0, r4, r2
	strh r5, [r0]
	subs r1, #3
	adds r0, r4, r1
	strb r6, [r0]
	subs r2, #2
	adds r4, r4, r2
	movs r0, #1
	strb r0, [r4]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080679D8: .4byte gEwramData
_080679DC: .4byte gUnk_03002CB0
_080679E0: .4byte 0x0000FEFF
_080679E4: .4byte 0x0000042C
_080679E8: .4byte 0x06004000
_080679EC: .4byte gDisplayRegisters
_080679F0: .4byte 0x000008E8
_080679F4: .4byte 0x0000C0C1
_080679F8: .4byte 0x0000040C
_080679FC: .4byte 0x00000414
_08067A00: .4byte 0x0000041A

	thumb_func_start sub_08067A04
sub_08067A04: @ 0x08067A04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _08067A38 @ =gEwramData
	ldr r1, [r0]
	adds r7, r1, #0
	adds r7, #0x60
	movs r0, #0
	str r0, [sp, #8]
	ldr r2, _08067A3C @ =0x00000417
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08067A44
	ldr r3, _08067A40 @ =0x00000414
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #4
	bhi _08067A44
	movs r0, #0
	b _080680EE
	.align 2, 0
_08067A38: .4byte gEwramData
_08067A3C: .4byte 0x00000417
_08067A40: .4byte 0x00000414
_08067A44:
	movs r0, #0xed
	lsls r0, r0, #2
	adds r2, r7, r0
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #4
	bne _08067A72
	ldr r3, _08067A90 @ =0x000003B5
	adds r1, r7, r3
	ldrb r0, [r1]
	cmp r0, #0
	beq _08067A68
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08067A72
_08067A68:
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_08067A72:
	movs r1, #0xed
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #6
	bls _08067A84
	b _08068076
_08067A84:
	lsls r0, r0, #2
	ldr r1, _08067A94 @ =_08067A98
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08067A90: .4byte 0x000003B5
_08067A94: .4byte _08067A98
_08067A98: @ jump table
	.4byte _08067AB4 @ case 0
	.4byte _08067E7A @ case 1
	.4byte _08067EF0 @ case 2
	.4byte _08068010 @ case 3
	.4byte _08068076 @ case 4
	.4byte _0806802E @ case 5
	.4byte _08068060 @ case 6
_08067AB4:
	movs r2, #1
	mov sl, r2
	movs r3, #0xef
	lsls r3, r3, #2
	adds r0, r7, r3
	ldr r0, [r0]
	str r0, [sp, #0xc]
	ldr r1, _08067AE0 @ =gDisplayRegisters
	ldr r0, _08067AE4 @ =0x00001C04
	strh r0, [r1]
_08067AC8:
	movs r1, #0xec
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08067AEC
	adds r1, r0, #0
	ldr r2, _08067AE8 @ =0x000003BA
	adds r0, r7, r2
	ldrb r6, [r0]
	b _08067AFC
	.align 2, 0
_08067AE0: .4byte gDisplayRegisters
_08067AE4: .4byte 0x00001C04
_08067AE8: .4byte 0x000003BA
_08067AEC:
	movs r3, #0xeb
	lsls r3, r3, #2
	adds r0, r7, r3
	ldr r1, [r0]
	movs r2, #0xee
	lsls r2, r2, #2
	adds r0, r7, r2
	ldrh r6, [r0]
_08067AFC:
	adds r1, #2
	mov sb, r1
	mov r8, sb
	adds r4, r6, #0
	ldr r6, _08067B08 @ =sub_08040AB8
	b _08067B6A
	.align 2, 0
_08067B08: .4byte sub_08040AB8
_08067B0C:
	mov r3, r8
	adds r5, r3, r4
	ldrb r0, [r5]
	bl _call_via_r6
	adds r1, r0, #0
	movs r0, #0xff
	ands r1, r0
	cmp r1, #7
	beq _08067B70
	cmp r1, #7
	bgt _08067B2E
	cmp r1, #5
	bgt _08067B40
	cmp r1, #1
	bge _08067B70
	b _08067B68
_08067B2E:
	cmp r1, #9
	beq _08067B5A
	cmp r1, #9
	blt _08067B50
	cmp r1, #0xa
	beq _08067B70
	cmp r1, #0xff
	bne _08067B68
	b _08067B70
_08067B40:
	adds r4, #1
	ldr r0, _08067B4C @ =sub_08040814
	bl _call_via_r0
	b _08067B6A
	.align 2, 0
_08067B4C: .4byte sub_08040814
_08067B50:
	ldrb r0, [r5, #1]
	adds r4, #2
	bl sub_080412F0
	b _08067B6A
_08067B5A:
	adds r4, #1
	ldr r1, _08067B64 @ =sub_08040FE0
	bl _call_via_r1
	b _08067B6A
	.align 2, 0
_08067B64: .4byte sub_08040FE0
_08067B68:
	adds r4, #1
_08067B6A:
	movs r2, #1
	cmp r2, #0
	bne _08067B0C
_08067B70:
	adds r6, r4, #0
	movs r3, #0xec
	lsls r3, r3, #2
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, #0
	beq _08067B8C
	ldr r1, _08067B88 @ =0x000003BA
	adds r0, r7, r1
	strb r6, [r0]
	b _08067B94
	.align 2, 0
_08067B88: .4byte 0x000003BA
_08067B8C:
	movs r2, #0xee
	lsls r2, r2, #2
	adds r0, r7, r2
	strh r6, [r0]
_08067B94:
	mov r3, sb
	adds r1, r3, r6
	ldrb r2, [r1]
	movs r0, #0xe0
	ands r0, r2
	adds r5, r1, #0
	cmp r0, #0
	beq _08067BF4
	adds r6, #1
	ldr r0, _08067BBC @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x14]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08067BC4
	ldr r1, _08067BC0 @ =0x000003B6
	adds r0, r7, r1
	ldrb r1, [r0]
	b _08067BC6
	.align 2, 0
_08067BBC: .4byte gEwramData
_08067BC0: .4byte 0x000003B6
_08067BC4:
	movs r1, #0
_08067BC6:
	ldr r2, _08067BEC @ =0x000003B5
	adds r0, r7, r2
	strb r1, [r0]
	ldr r3, _08067BF0 @ =0x000003B6
	adds r0, r7, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _08067BD8
	b _08067E4E
_08067BD8:
	movs r0, #0xed
	lsls r0, r0, #2
	adds r2, r7, r0
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	b _08067E3C
	.align 2, 0
_08067BEC: .4byte 0x000003B5
_08067BF0: .4byte 0x000003B6
_08067BF4:
	subs r0, r2, #1
	cmp r0, #9
	bls _08067BFC
	b _08067E4C
_08067BFC:
	lsls r0, r0, #2
	ldr r1, _08067C08 @ =_08067C0C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08067C08: .4byte _08067C0C
_08067C0C: @ jump table
	.4byte _08067D4C @ case 0
	.4byte _08067D5E @ case 1
	.4byte _08067C34 @ case 2
	.4byte _08067CD4 @ case 3
	.4byte _08067D8C @ case 4
	.4byte _08067E4C @ case 5
	.4byte _08067DB0 @ case 6
	.4byte _08067E4C @ case 7
	.4byte _08067E4C @ case 8
	.4byte _08067E00 @ case 9
_08067C34:
	ldrb r3, [r5, #1]
	movs r2, #0
	str r2, [sp]
	ldr r1, _08067CA8 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08067CAC @ =0x06006000
	str r0, [r1, #4]
	ldr r0, _08067CB0 @ =0x85000555
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add r0, sp, #4
	movs r4, #0
	strh r2, [r0]
	str r0, [r1]
	ldr r0, _08067CB4 @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _08067CB8 @ =0x81000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	str r2, [sp]
	mov r2, sp
	str r2, [r1]
	ldr r0, _08067CBC @ =0x06004000
	str r0, [r1, #4]
	ldr r0, _08067CC0 @ =0x85000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrb r1, [r5, #1]
	ldr r2, _08067CC4 @ =0x0000046E
	adds r0, r7, r2
	strb r1, [r0]
	ldr r2, _08067CC8 @ =gDisplayRegisters
	ldr r1, _08067CCC @ =0x08526CE4
	lsls r3, r3, #1
	adds r0, r3, r1
	ldrb r0, [r0]
	lsls r0, r0, #3
	strh r0, [r2, #8]
	adds r1, #1
	adds r3, r3, r1
	ldrb r0, [r3]
	lsls r0, r0, #3
	subs r0, #4
	strh r0, [r2, #0xa]
	adds r6, #2
	ldr r3, _08067CD0 @ =0x000003BB
	adds r0, r7, r3
	strb r4, [r0]
	movs r0, #0xed
	lsls r0, r0, #2
	adds r2, r7, r0
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	b _08067E3C
	.align 2, 0
_08067CA8: .4byte 0x040000D4
_08067CAC: .4byte 0x06006000
_08067CB0: .4byte 0x85000555
_08067CB4: .4byte 0x0600E000
_08067CB8: .4byte 0x81000400
_08067CBC: .4byte 0x06004000
_08067CC0: .4byte 0x85000400
_08067CC4: .4byte 0x0000046E
_08067CC8: .4byte gDisplayRegisters
_08067CCC: .4byte 0x08526CE4
_08067CD0: .4byte 0x000003BB
_08067CD4:
	adds r6, #1
	bl sub_08040FE0
	bl sub_08041204
	ldr r2, _08067D30 @ =0x000003BB
	adds r1, r7, r2
	movs r0, #0x24
	strb r0, [r1]
	movs r3, #0xed
	lsls r3, r3, #2
	adds r2, r7, r3
	ldrb r1, [r2]
	subs r0, #0x34
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	mov sl, r0
	str r0, [sp]
	ldr r1, _08067D34 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r2, _08067D38 @ =0x06006000
	str r2, [r1, #4]
	ldr r0, _08067D3C @ =0x85000555
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r3, sl
	str r3, [sp]
	mov r0, sp
	str r0, [r1]
	str r2, [r1, #4]
	ldr r0, _08067D40 @ =0x85000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add r0, sp, #4
	strh r3, [r0]
	str r0, [r1]
	ldr r0, _08067D44 @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _08067D48 @ =0x81000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	b _08067E4E
	.align 2, 0
_08067D30: .4byte 0x000003BB
_08067D34: .4byte 0x040000D4
_08067D38: .4byte 0x06006000
_08067D3C: .4byte 0x85000555
_08067D40: .4byte 0x85000400
_08067D44: .4byte 0x0600E000
_08067D48: .4byte 0x81000400
_08067D4C:
	ldrb r0, [r5, #1]
	bl sub_08041434
	movs r2, #0xec
	lsls r2, r2, #2
	adds r1, r7, r2
	str r0, [r1]
_08067D5A:
	movs r6, #0
	b _08067E4E
_08067D5E:
	ldrb r0, [r5, #1]
	adds r6, #2
	cmp r0, #0
	beq _08067D6C
	cmp r0, #1
	beq _08067D7C
	b _08067E4E
_08067D6C:
	ldr r3, _08067D78 @ =0x000003B7
	adds r1, r7, r3
	movs r0, #1
	strb r0, [r1]
	b _08067E4E
	.align 2, 0
_08067D78: .4byte 0x000003B7
_08067D7C:
	ldr r1, [sp, #0xc]
	ldrb r0, [r1, #0xb]
	adds r0, #1
	movs r1, #0
	ldr r2, [sp, #0xc]
	strb r0, [r2, #0xb]
	strb r1, [r2, #0xc]
	b _08067E4E
_08067D8C:
	adds r6, #1
	movs r3, #0
	mov sl, r3
	movs r0, #0xed
	lsls r0, r0, #2
	adds r3, r7, r0
	ldrb r2, [r3]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x1c
	adds r1, #1
	movs r0, #0xf
	ands r1, r0
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	b _08067E4E
_08067DB0:
	ldrb r5, [r5, #1]
	adds r6, #2
	movs r1, #0xed
	lsls r1, r1, #2
	adds r4, r7, r1
	lsls r2, r5, #4
	ldrb r1, [r4]
	movs r0, #0xf
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
	bl sub_08041204
	adds r0, r5, #0
	bl sub_08041434
	movs r1, #0
	movs r2, #0
	bl sub_08068104
	ldr r2, _08067DF8 @ =0x000003B6
	adds r0, r7, r2
	ldrb r1, [r0]
	ldr r3, _08067DFC @ =0x000003B5
	adds r0, r7, r3
	strb r1, [r0]
	ldrb r1, [r4]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r4]
	movs r0, #0
	mov sl, r0
	b _08067E4E
	.align 2, 0
_08067DF8: .4byte 0x000003B6
_08067DFC: .4byte 0x000003B5
_08067E00:
	movs r2, #0xec
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #0
	beq _08067E1C
	movs r0, #0
	str r0, [r1]
	movs r3, #0xee
	lsls r3, r3, #2
	adds r0, r7, r3
	ldrh r0, [r0]
	adds r6, r0, #2
	b _08067E4E
_08067E1C:
	bl sub_080665B4
	adds r1, r0, #0
	cmp r1, #0
	bne _08067D5A
	ldr r0, _08067E48 @ =gDisplayRegisters
	adds r0, #0x4c
	strh r1, [r0]
	movs r0, #0xed
	lsls r0, r0, #2
	adds r2, r7, r0
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
_08067E3C:
	orrs r0, r1
	strb r0, [r2]
	movs r1, #0
	mov sl, r1
	b _08067E4E
	.align 2, 0
_08067E48: .4byte gDisplayRegisters
_08067E4C:
	adds r6, #1
_08067E4E:
	movs r2, #0xec
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _08067E68
	ldr r3, _08067E64 @ =0x000003BA
	adds r0, r7, r3
	strb r6, [r0]
	b _08067E70
	.align 2, 0
_08067E64: .4byte 0x000003BA
_08067E68:
	movs r1, #0xee
	lsls r1, r1, #2
	adds r0, r7, r1
	strh r6, [r0]
_08067E70:
	mov r2, sl
	cmp r2, #0
	beq _08067E78
	b _08067AC8
_08067E78:
	b _08068076
_08067E7A:
	ldr r0, _08067EB0 @ =gEwramData
	ldr r0, [r0]
	ldr r2, [r0]
	movs r0, #8
	ands r2, r0
	ldr r0, _08067EB4 @ =gDisplayRegisters
	ldrh r1, [r0, #8]
	lsrs r1, r1, #3
	lsls r1, r1, #1
	ldrh r0, [r0, #0xa]
	lsrs r0, r0, #3
	lsls r0, r0, #6
	ldr r3, _08067EB8 @ =0x0600E4B6
	adds r0, r0, r3
	adds r1, r1, r0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _08067EBC
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #0x40
	strh r0, [r1]
	b _08068076
	.align 2, 0
_08067EB0: .4byte gEwramData
_08067EB4: .4byte gDisplayRegisters
_08067EB8: .4byte 0x0600E4B6
_08067EBC:
	cmp r2, #0
	beq _08067EC8
	ldr r3, _08067EC4 @ =0x0000F0CE
	b _08067ECA
	.align 2, 0
_08067EC4: .4byte 0x0000F0CE
_08067EC8:
	ldr r3, _08067EDC @ =0x0000F0CF
_08067ECA:
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #0x40
	cmp r2, #0
	beq _08067EE4
	ldr r2, _08067EE0 @ =0x0000F0DE
	adds r0, r2, #0
	strh r0, [r1]
	b _08068076
	.align 2, 0
_08067EDC: .4byte 0x0000F0CF
_08067EE0: .4byte 0x0000F0DE
_08067EE4:
	ldr r3, _08067EEC @ =0x0000F0DF
	adds r0, r3, #0
	strh r0, [r1]
	b _08068076
	.align 2, 0
_08067EEC: .4byte 0x0000F0DF
_08067EF0:
	movs r0, #3
	bl sub_08067804
	cmp r0, #0
	bne _08067EFC
	b _08068076
_08067EFC:
	ldr r1, _08067FE4 @ =0x0000046E
	adds r0, r7, r1
	ldrb r4, [r0]
	bl sub_0805B864
	cmp r0, #0
	beq _08067F24
	ldr r0, _08067FE8 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08067FEC @ =0x0000042C
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	bne _08067F24
	cmp r4, #0
	bne _08067F24
	movs r4, #7
_08067F24:
	ldr r3, _08067FF0 @ =0x08526C78
	lsls r5, r4, #1
	adds r2, r5, r4
	lsls r2, r2, #2
	adds r0, r2, r3
	ldr r0, [r0]
	adds r1, r3, #4
	adds r1, r2, r1
	ldr r1, [r1]
	adds r3, #8
	adds r2, r2, r3
	ldr r2, [r2]
	bl sub_080676BC
	ldr r3, _08067FF4 @ =gDisplayRegisters
	ldr r1, _08067FF8 @ =0x08526CE4
	adds r2, r5, r1
	ldrb r0, [r2]
	lsls r0, r0, #3
	strh r0, [r3, #8]
	adds r1, #1
	adds r5, r5, r1
	ldrb r0, [r5]
	lsls r0, r0, #3
	subs r0, #4
	strh r0, [r3, #0xa]
	ldrb r4, [r2]
	adds r4, #5
	ldrb r6, [r5]
	adds r5, r6, #0
	adds r5, #0xc
	movs r0, #0
	movs r1, #0
	movs r2, #0x1f
	movs r3, #3
	bl sub_08040748
	movs r0, #0
	movs r1, #0
	bl sub_0804066C
	adds r1, r6, #0
	adds r1, #0xe
	adds r0, r4, #0
	movs r2, #0xe0
	lsls r2, r2, #8
	movs r3, #0x16
	bl sub_08046DD4
	adds r1, r6, #0
	adds r1, #0xf
	adds r0, r4, #0
	ldr r2, _08067FFC @ =0x0000E020
	movs r3, #0x16
	bl sub_08046DD4
	adds r1, r6, #0
	adds r1, #0x10
	adds r0, r4, #0
	ldr r2, _08068000 @ =0x0000E040
	movs r3, #0x16
	bl sub_08046DD4
	adds r1, r6, #0
	adds r1, #0x11
	adds r0, r4, #0
	ldr r2, _08068004 @ =0x0000E060
	movs r3, #0x16
	bl sub_08046DD4
	adds r1, r6, #0
	adds r1, #0x12
	adds r0, r4, #0
	ldr r2, _08068008 @ =0x0000E080
	movs r3, #0x16
	bl sub_08046DD4
	movs r0, #0
	movs r1, #6
	movs r2, #0xf
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	adds r0, r4, #0
	adds r1, r5, #0
	ldr r2, _0806800C @ =0x0000E0C0
	movs r3, #0xb
	bl sub_08046DD4
	movs r3, #0xed
	lsls r3, r3, #2
	adds r2, r7, r3
	b _08068022
	.align 2, 0
_08067FE4: .4byte 0x0000046E
_08067FE8: .4byte gEwramData
_08067FEC: .4byte 0x0000042C
_08067FF0: .4byte 0x08526C78
_08067FF4: .4byte gDisplayRegisters
_08067FF8: .4byte 0x08526CE4
_08067FFC: .4byte 0x0000E020
_08068000: .4byte 0x0000E040
_08068004: .4byte 0x0000E060
_08068008: .4byte 0x0000E080
_0806800C: .4byte 0x0000E0C0
_08068010:
	movs r0, #3
	rsbs r0, r0, #0
	bl sub_08067804
	cmp r0, #0
	beq _08068076
	movs r0, #0xed
	lsls r0, r0, #2
	adds r2, r7, r0
_08068022:
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _08068076
_0806802E:
	ldr r2, _08068058 @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _0806805C @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	movs r1, #0xed
	lsls r1, r1, #2
	adds r3, r7, r1
	ldrb r2, [r3]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x1c
	adds r1, #1
	movs r0, #0xf
	ands r1, r0
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	b _08068076
	.align 2, 0
_08068058: .4byte gUnk_03002CB0
_0806805C: .4byte 0x0000FEFF
_08068060:
	bl sub_08067898
	ldr r2, _080680D0 @ =gUnk_03002CB0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	str r0, [sp, #8]
_08068076:
	ldr r0, _080680D4 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x16]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080680EC
	movs r1, #0xed
	lsls r1, r1, #2
	adds r4, r7, r1
	ldrb r1, [r4]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _080680E4
	movs r0, #0x99
	lsls r0, r0, #1
	bl PlaySong
	ldr r0, _080680D8 @ =gDisplayRegisters
	ldrh r1, [r0, #8]
	lsrs r1, r1, #3
	lsls r1, r1, #1
	ldrh r0, [r0, #0xa]
	lsrs r0, r0, #3
	lsls r0, r0, #6
	ldr r2, _080680DC @ =0x0600E4B6
	adds r0, r0, r2
	adds r1, r1, r0
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #0x40
	strh r0, [r1]
	ldr r0, _080680E0 @ =0x000003B6
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1]
	ldrb r1, [r4]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	b _080680EC
	.align 2, 0
_080680D0: .4byte gUnk_03002CB0
_080680D4: .4byte gEwramData
_080680D8: .4byte gDisplayRegisters
_080680DC: .4byte 0x0600E4B6
_080680E0: .4byte 0x000003B6
_080680E4:
	ldr r2, _08068100 @ =0x000003B6
	adds r1, r7, r2
	movs r0, #0
	strb r0, [r1]
_080680EC:
	ldr r0, [sp, #8]
_080680EE:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08068100: .4byte 0x000003B6

	thumb_func_start sub_08068104
sub_08068104: @ 0x08068104
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	movs r0, #1
	mov sl, r0
	adds r5, r6, #2
	adds r4, r1, #0
	cmp r2, #0
	beq _08068134
	ldr r0, _08068128 @ =sub_08040FE0
	mov sb, r0
	ldr r0, _0806812C @ =sub_08040814
	mov r8, r0
	ldr r7, _08068130 @ =sub_08041318
	b _080681C2
	.align 2, 0
_08068128: .4byte sub_08040FE0
_0806812C: .4byte sub_08040814
_08068130: .4byte sub_08041318
_08068134:
	ldr r0, _08068140 @ =sub_08041204
	mov sb, r0
	ldr r0, _08068144 @ =sub_08040A38
	mov r8, r0
	ldr r7, _08068148 @ =sub_08041338
	b _080681C2
	.align 2, 0
_08068140: .4byte sub_08041204
_08068144: .4byte sub_08040A38
_08068148: .4byte sub_08041338
_0806814C:
	adds r0, r6, #0
	adds r1, r4, #0
	bl _call_via_r7
	adds r4, r0, #0
	adds r0, r5, r4
	ldrb r0, [r0]
	adds r0, #1
	cmp r0, #0xb
	bhi _080681C0
	lsls r0, r0, #2
	ldr r1, _0806816C @ =_08068170
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806816C: .4byte _08068170
_08068170: @ jump table
	.4byte _080681C0 @ case 0
	.4byte _080681C0 @ case 1
	.4byte _080681C8 @ case 2
	.4byte _080681C8 @ case 3
	.4byte _080681A0 @ case 4
	.4byte _080681C0 @ case 5
	.4byte _080681C8 @ case 6
	.4byte _080681A4 @ case 7
	.4byte _080681C8 @ case 8
	.4byte _080681AC @ case 9
	.4byte _080681B8 @ case 10
	.4byte _080681C8 @ case 11
_080681A0:
	adds r4, #2
	b _080681C2
_080681A4:
	adds r4, #1
	bl _call_via_r8
	b _080681C2
_080681AC:
	adds r0, r4, r5
	ldrb r0, [r0, #1]
	adds r4, #2
	bl sub_080412F0
	b _080681C2
_080681B8:
	adds r4, #1
	bl _call_via_r9
	b _080681C2
_080681C0:
	adds r4, #1
_080681C2:
	mov r0, sl
	cmp r0, #0
	bne _0806814C
_080681C8:
	adds r0, r4, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080681D8
sub_080681D8: @ 0x080681D8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r2, #0
	ldr r4, _08068210 @ =gEwramData
_080681E0:
	ldr r0, [r4]
	mov ip, r0
	lsls r2, r2, #0x18
	asrs r3, r2, #0x18
	lsls r1, r3, #2
	movs r0, #0xf8
	lsls r0, r0, #2
	add r0, ip
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, r5
	bne _08068214
	movs r0, #0xfc
	lsls r0, r0, #2
	add r0, ip
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _08068214
	adds r0, r3, #0
	adds r0, #0xa
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _0806825E
	.align 2, 0
_08068210: .4byte gEwramData
_08068214:
	ldr r3, [r4]
	asrs r2, r2, #0x18
	lsls r1, r2, #2
	movs r6, #0xf8
	lsls r6, r6, #2
	adds r0, r3, r6
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	bne _0806824E
	str r5, [r0]
	movs r4, #0xfc
	lsls r4, r4, #2
	adds r0, r3, r4
	adds r0, r0, r2
	strb r1, [r0]
	adds r4, r2, #0
	adds r4, #0xa
	lsls r3, r4, #0x10
	lsrs r3, r3, #0x10
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl sub_0803C7B4
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	adds r0, r4, #0
	b _0806825E
_0806824E:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _080681E0
	movs r0, #1
	rsbs r0, r0, #0
_0806825E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08068264
sub_08068264: @ 0x08068264
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	movs r2, #0
	ldr r4, _080682A0 @ =gEwramData
_08068270:
	ldr r0, [r4]
	mov ip, r0
	lsls r2, r2, #0x18
	asrs r3, r2, #0x18
	lsls r1, r3, #2
	movs r0, #0xf8
	lsls r0, r0, #2
	add r0, ip
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, r6
	bne _080682A4
	movs r0, #0xfc
	lsls r0, r0, #2
	add r0, ip
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, r5
	bne _080682A4
	adds r0, r3, #0
	adds r0, #0xa
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _080682EE
	.align 2, 0
_080682A0: .4byte gEwramData
_080682A4:
	ldr r3, [r4]
	asrs r2, r2, #0x18
	lsls r0, r2, #2
	movs r7, #0xf8
	lsls r7, r7, #2
	adds r1, r3, r7
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _080682DE
	str r6, [r1]
	movs r1, #0xfc
	lsls r1, r1, #2
	adds r0, r3, r1
	adds r0, r0, r2
	strb r5, [r0]
	adds r4, r2, #0
	adds r4, #0xa
	lsls r3, r4, #0x10
	lsrs r3, r3, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #1
	bl sub_0803C7B4
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	adds r0, r4, #0
	b _080682EE
_080682DE:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _08068270
	movs r0, #1
	rsbs r0, r0, #0
_080682EE:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080682F4
sub_080682F4: @ 0x080682F4
	push {r4, r5, lr}
	movs r1, #0
_080682F8:
	ldr r0, _0806833C @ =gEwramData
	ldr r2, [r0]
	lsls r0, r1, #0x18
	asrs r4, r0, #0x18
	lsls r1, r4, #2
	movs r3, #0xf8
	lsls r3, r3, #2
	adds r0, r2, r3
	adds r0, r0, r1
	ldr r5, [r0]
	cmp r5, #0
	beq _0806832A
	movs r1, #0xfc
	lsls r1, r1, #2
	adds r0, r2, r1
	adds r0, r0, r4
	ldrb r1, [r0]
	adds r3, r4, #0
	adds r3, #0xa
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r5, #0
	movs r2, #1
	bl sub_0803C7B4
_0806832A:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _080682F8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806833C: .4byte gEwramData

	thumb_func_start sub_08068340
sub_08068340: @ 0x08068340
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	movs r2, #0
	ldr r0, _080683A0 @ =gEwramData
	mov ip, r0
	movs r5, #0
	movs r4, #0xa0
	lsls r4, r4, #0x14
_08068358:
	mov r1, ip
	ldr r3, [r1]
	lsls r0, r2, #2
	movs r7, #0xf8
	lsls r7, r7, #2
	adds r1, r3, r7
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, r8
	bne _080683A4
	movs r1, #0xfc
	lsls r1, r1, #2
	adds r0, r3, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, r6
	bne _080683A4
	lsrs r0, r4, #0x18
	subs r0, #0xa
	lsls r0, r0, #0x18
	asrs r2, r0, #0x18
	cmp r2, #0
	blt _080683B0
	cmp r2, #3
	bgt _080683B0
	lsls r0, r2, #2
	adds r4, r7, #0
	adds r1, r3, r4
	adds r1, r1, r0
	str r5, [r1]
	adds r7, #0x10
	adds r0, r3, r7
	adds r0, r0, r2
	strb r5, [r0]
	b _080683B0
	.align 2, 0
_080683A0: .4byte gEwramData
_080683A4:
	movs r0, #0x80
	lsls r0, r0, #0x11
	adds r4, r4, r0
	adds r2, #1
	cmp r2, #3
	ble _08068358
_080683B0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080683BC
sub_080683BC: @ 0x080683BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r7, r0, #0
	adds r0, #0x36
	ldrb r0, [r0]
	mov r8, r0
	lsls r0, r0, #3
	add r0, r8
	lsls r0, r0, #2
	ldr r1, _08068508 @ =0x080E9644
	adds r6, r0, r1
	ldr r0, _0806850C @ =gEwramData
	ldr r5, [r0]
	ldr r0, _08068510 @ =0x0001325C
	adds r0, r0, r5
	mov sb, r0
	ldr r1, _08068514 @ =0x00013110
	adds r1, r5, r1
	str r1, [sp, #0x14]
	adds r2, r7, #0
	adds r2, #0x3e
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080683FA
	b _08068678
_080683FA:
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r2, _08068518 @ =0x000004CC
	adds r0, r5, r2
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08068410
	b _08068678
_08068410:
	mov r1, sb
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	beq _0806841A
	b _08068678
_0806841A:
	mov r2, r8
	asrs r3, r2, #5
	lsls r0, r3, #2
	ldr r1, _0806851C @ =0x000133A0
	adds r2, r5, r1
	adds r2, r2, r0
	movs r0, #0x1f
	mov r1, r8
	ands r0, r1
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	ldrh r4, [r6, #0x10]
	ldr r2, _08068520 @ =0x00013260
	adds r0, r5, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	str r3, [sp, #0x20]
	cmp r0, #0
	beq _08068450
	ldr r0, _08068524 @ =0x00000133
	muls r0, r4, r0
	lsrs r4, r0, #8
_08068450:
	cmp r4, #0
	beq _08068476
	mov r1, sb
	ldr r0, [r1, #0x30]
	adds r0, r0, r4
	str r0, [r1, #0x30]
	ldr r1, _08068528 @ =0x05F5E0FF
	cmp r0, r1
	bls _08068466
	mov r2, sb
	str r1, [r2, #0x30]
_08068466:
	mov r0, sb
	bl sub_08033CAC
	cmp r0, #0
	beq _08068476
	movs r0, #0
	bl sub_080455BC
_08068476:
	adds r0, r7, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov sl, r1
	adds r0, #4
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #8
	str r0, [sp, #0x18]
	ldrb r0, [r6, #0x12]
	cmp r0, #0
	beq _0806852C
	ldrb r0, [r6, #0x18]
	cmp r0, #0
	beq _0806852C
	movs r5, #3
	ldrb r0, [r6, #0x17]
	ldrb r1, [r6, #0x18]
	subs r1, #1
	bl sub_080326B8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080684BC
	movs r5, #6
	ldr r0, _0806850C @ =gEwramData
	ldr r0, [r0]
	adds r0, #0xa1
	ldrb r1, [r0]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _080684BC
	movs r5, #7
_080684BC:
	movs r0, #1
	bl sub_0804B314
	cmp r0, #0x28
	bne _080684C8
	adds r5, #8
_080684C8:
	ldrb r1, [r6, #0x12]
	lsls r1, r1, #3
	ldr r0, [sp, #0x14]
	adds r0, #0xe8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	subs r0, #0x20
	subs r4, r1, r0
	cmp r4, #0xf
	bgt _080684E0
	movs r4, #0x10
_080684E0:
	bl RandomNumberGenerator
	lsrs r0, r0, #2
	adds r1, r4, #0
	bl Mod
	adds r4, r0, #0
	cmp r4, r5
	bhs _0806852C
	ldrb r2, [r6, #0x17]
	ldrb r3, [r6, #0x18]
	subs r3, #1
	movs r0, #0
	str r0, [sp]
	mov r0, sl
	ldr r1, [sp, #0x18]
	bl sub_0804459C
	b _08068678
	.align 2, 0
_08068508: .4byte 0x080E9644
_0806850C: .4byte gEwramData
_08068510: .4byte 0x0001325C
_08068514: .4byte 0x00013110
_08068518: .4byte 0x000004CC
_0806851C: .4byte 0x000133A0
_08068520: .4byte 0x00013260
_08068524: .4byte 0x00000133
_08068528: .4byte 0x05F5E0FF
_0806852C:
	mov r0, sl
	ldr r1, [sp, #0x18]
	bl sub_08002028
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _08068558
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08068550
	movs r0, #1
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	beq _08068552
	b _08068558
_08068550:
	movs r1, #0
_08068552:
	cmp r1, #0
	bne _08068558
	b _08068678
_08068558:
	movs r2, #0
	str r2, [sp, #0x1c]
	movs r5, #0
	movs r0, #1
	bl sub_0804B314
	cmp r0, #0x27
	bne _0806856A
	movs r5, #0x20
_0806856A:
	bl RandomNumberGenerator
	lsrs r0, r0, #1
	movs r1, #0xff
	ands r0, r1
	adds r1, r5, #0
	adds r1, #0x40
	cmp r0, r1
	bhs _08068586
	ldrh r7, [r6, #0xa]
	ldrb r4, [r6, #0x16]
	movs r0, #1
	str r0, [sp, #0x1c]
	b _0806858A
_08068586:
	ldrh r7, [r6, #8]
	ldrb r4, [r6, #0x15]
_0806858A:
	cmp r7, #0
	beq _080685FC
	movs r5, #4
	movs r0, #1
	bl sub_0804B314
	cmp r0, #0x27
	bne _0806859C
	movs r5, #8
_0806859C:
	lsls r1, r4, #2
	ldr r0, [sp, #0x14]
	adds r0, #0xe8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	subs r0, #0x10
	subs r4, r1, r0
	cmp r4, #0xf
	bgt _080685B2
	movs r4, #0x10
_080685B2:
	bl RandomNumberGenerator
	lsrs r0, r0, #3
	adds r1, r4, #0
	bl Mod
	adds r4, r0, #0
	cmp r4, r5
	bhs _080685FC
	movs r0, #0
	str r0, [sp]
	mov r0, sl
	ldr r1, [sp, #0x18]
	movs r2, #0xff
	adds r3, r7, #0
	bl sub_08044054
	ldr r1, [sp, #0x20]
	lsls r0, r1, #2
	ldr r2, [sp, #0x1c]
	lsls r1, r2, #4
	adds r0, r0, r1
	movs r2, #0xaa
	lsls r2, r2, #1
	add r2, sb
	adds r2, r2, r0
	movs r0, #0x1f
	mov r1, r8
	ands r1, r0
	mov r8, r1
	movs r1, #1
	mov r0, r8
	lsls r1, r0
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	b _08068678
_080685FC:
	ldrh r1, [r6, #8]
	ldrh r0, [r6, #0xa]
	orrs r0, r1
	cmp r0, #0
	beq _08068678
	movs r4, #0
	movs r0, #1
	bl sub_0804B314
	cmp r0, #0x2b
	bne _08068614
	movs r4, #3
_08068614:
	bl RandomNumberGenerator
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x16
	cmp r4, #0
	beq _08068626
	cmp r0, #0x3f
	bls _0806862A
	b _08068642
_08068626:
	cmp r0, #7
	bhi _08068642
_0806862A:
	bl RandomNumberGenerator
	adds r2, r0, #0
	lsrs r2, r2, #1
	movs r0, #3
	ands r2, r0
	adds r2, r4, r2
	mov r0, sl
	ldr r1, [sp, #0x18]
	bl sub_08043F70
	b _08068678
_08068642:
	bl RandomNumberGenerator
	lsls r0, r0, #0x12
	lsrs r4, r0, #0x16
	movs r0, #1
	bl sub_0804B314
	cmp r0, #0x1d
	bne _0806865A
	cmp r4, #0x3f
	bls _0806865E
	b _08068678
_0806865A:
	cmp r4, #7
	bhi _08068678
_0806865E:
	bl RandomNumberGenerator
	movs r2, #0
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0
	bne _0806866E
	movs r2, #1
_0806866E:
	mov r0, sl
	ldr r1, [sp, #0x18]
	movs r3, #1
	bl sub_08043C10
_08068678:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08068688
sub_08068688: @ 0x08068688
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _080686BC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080686C0 @ =0x00013110
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #0x40]
	ldr r3, [r4, #0x40]
	subs r2, r3, r0
	cmp r2, #0
	bge _080686A4
	subs r2, r0, r3
_080686A4:
	cmp r2, r5
	bhi _080686C4
	ldr r3, [r1, #0x44]
	ldr r0, [r4, #0x44]
	subs r2, r0, r3
	cmp r2, #0
	bge _080686B4
	subs r2, r3, r0
_080686B4:
	cmp r2, r5
	bhi _080686C4
	movs r0, #1
	b _080686C6
	.align 2, 0
_080686BC: .4byte gEwramData
_080686C0: .4byte 0x00013110
_080686C4:
	movs r0, #0
_080686C6:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080686CC
sub_080686CC: @ 0x080686CC
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldrh r1, [r4]
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	subs r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r2
	bne _080686EE
	movs r0, #0
	b _080686FA
_080686EE:
	cmp r3, r0
	bls _080686F6
	movs r0, #1
	b _080686FA
_080686F6:
	movs r0, #1
	rsbs r0, r0, #0
_080686FA:
	lsls r0, r0, #0x18
	asrs r3, r0, #0x18
	cmp r3, #0
	beq _0806877A
	cmp r3, #0
	bgt _08068710
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _08068746
	b _0806877E
_08068710:
	cmp r3, #1
	bne _0806877E
	ldrh r0, [r4]
	adds r0, r5, r0
	strh r0, [r4]
	ldrh r1, [r4]
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	subs r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r2
	bne _08068730
	movs r0, #0
	b _0806873C
_08068730:
	cmp r3, r0
	bls _08068738
	movs r0, #1
	b _0806873C
_08068738:
	movs r0, #1
	rsbs r0, r0, #0
_0806873C:
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0806877E
	b _08068778
_08068746:
	ldrh r0, [r4]
	subs r0, r0, r5
	strh r0, [r4]
	ldrh r1, [r4]
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r2
	bne _08068762
	movs r0, #0
	b _0806876C
_08068762:
	cmp r5, r0
	bls _0806876A
	movs r0, #1
	b _0806876C
_0806876A:
	adds r0, r3, #0
_0806876C:
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0806877E
_08068778:
	strh r2, [r4]
_0806877A:
	movs r0, #1
	b _08068780
_0806877E:
	movs r0, #0
_08068780:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08068788
sub_08068788: @ 0x08068788
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	adds r4, r3, #0
	ldr r5, [sp, #0x28]
	ldr r6, [sp, #0x34]
	ldr r0, [sp, #0x38]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	subs r1, r1, r4
	asrs r1, r1, #0x10
	adds r0, r1, #0
	muls r0, r1, r0
	subs r2, r2, r5
	asrs r2, r2, #0x10
	adds r1, r2, #0
	muls r1, r2, r1
	adds r0, r0, r1
	bl Sqrt
	lsls r7, r0, #0x10
	asrs r4, r4, #0x10
	mov r0, sl
	adds r0, #0x42
	ldrh r0, [r0]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	asrs r5, r5, #0x10
	mov r0, sl
	adds r0, #0x46
	ldrh r0, [r0]
	subs r5, r5, r0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	movs r1, #1
	cmp r6, #0
	beq _080687F4
	adds r1, r6, #0
_080687F4:
	ldr r0, [sp, #0x2c]
	bl Div
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	muls r0, r6, r0
	asrs r0, r0, #1
	adds r7, r7, r0
	movs r1, #1
	cmp r6, #0
	beq _08068814
	adds r1, r6, #0
_08068814:
	adds r0, r7, #0
	bl Div
	bl Sqrt
	mov r2, sb
	adds r1, r2, r4
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _0806883A
	lsls r0, r0, #1
	subs r0, r0, r1
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0806883A:
	lsls r0, r4, #0x10
	cmp r0, #0
	bge _08068846
	movs r0, #0
	mov r8, r0
	b _0806886C
_08068846:
	adds r0, r6, #0
	cmp r0, #0
	ble _08068858
	mov r1, sb
	muls r1, r0, r1
	mov r8, r1
	ldr r2, [sp, #0x30]
	cmp r8, r2
	bgt _08068868
_08068858:
	cmp r6, #0
	bge _0806886C
	mov r0, sb
	muls r0, r6, r0
	mov r8, r0
	ldr r1, [sp, #0x30]
	cmp r8, r1
	bge _0806886C
_08068868:
	ldr r2, [sp, #0x30]
	mov r8, r2
_0806886C:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, sl
	adds r1, r5, #0
	mov r2, r8
	movs r3, #0
	bl sub_08068CDC
	mov r0, r8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08068890
sub_08068890: @ 0x08068890
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	lsls r4, r2, #0x18
	lsrs r4, r4, #0x18
	ldr r0, [r7, #0x40]
	ldr r1, [r5, #0x40]
	subs r0, r0, r1
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r1, [r7, #0x44]
	ldr r2, [r5, #0x44]
	subs r1, r1, r2
	asrs r1, r1, #0x10
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r6, r0, #0x10
	adds r0, r5, #0
	adds r0, #0x42
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r5, #0x46
	adds r2, r7, #0
	adds r2, #0x46
	ldrh r1, [r5]
	ldrh r2, [r2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	lsrs r6, r4
	movs r0, #0
	adds r4, r6, #0
	cmp r0, r6
	ble _080688FA
	cmp r6, #0
	bgt _08068902
_080688FA:
	cmp r0, r6
	bge _08068904
	cmp r6, #0
	bge _08068904
_08068902:
	movs r4, #0
_08068904:
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r5, r1
	bl sub_080009E4
	asrs r4, r4, #8
	asrs r0, r0, #8
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, [r7, #0x40]
	adds r0, r0, r1
	str r0, [r7, #0x40]
	adds r0, r5, #0
	bl sub_080009E4
	asrs r0, r0, #8
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, [r7, #0x44]
	adds r0, r0, r1
	str r0, [r7, #0x44]
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08068938
sub_08068938: @ 0x08068938
	push {r4, lr}
	lsls r0, r0, #0x18
	movs r1, #0xf6
	lsls r1, r1, #0x18
	adds r0, r0, r1
	asrs r2, r0, #0x18
	cmp r2, #0
	blt _08068966
	cmp r2, #3
	bgt _08068966
	ldr r0, _0806896C @ =gEwramData
	ldr r3, [r0]
	lsls r1, r2, #2
	movs r4, #0xf8
	lsls r4, r4, #2
	adds r0, r3, r4
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	adds r4, #0x10
	adds r0, r3, r4
	adds r0, r0, r2
	strb r1, [r0]
_08068966:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806896C: .4byte gEwramData

	thumb_func_start sub_08068970
sub_08068970: @ 0x08068970
	push {lr}
	adds r3, r0, #0
	ldr r0, _080689A8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080689AC @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r2, [r0, #0x44]
	ldr r0, [r3, #0x40]
	subs r0, r0, r1
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r1, [r3, #0x44]
	subs r1, r1, r2
	asrs r1, r1, #0x10
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0
_080689A8: .4byte gEwramData
_080689AC: .4byte 0x00013110

	thumb_func_start sub_080689B0
sub_080689B0: @ 0x080689B0
	push {lr}
	ldr r1, _080689CC @ =gEwramData
	ldr r1, [r1]
	ldr r2, _080689D0 @ =0x00013110
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r2, [r1, #0x40]
	ldr r1, [r0, #0x40]
	subs r0, r1, r2
	cmp r0, #0
	bge _080689C8
	subs r0, r2, r1
_080689C8:
	pop {r1}
	bx r1
	.align 2, 0
_080689CC: .4byte gEwramData
_080689D0: .4byte 0x00013110

	thumb_func_start sub_080689D4
sub_080689D4: @ 0x080689D4
	push {lr}
	ldr r1, _080689F0 @ =gEwramData
	ldr r1, [r1]
	ldr r2, _080689F4 @ =0x00013110
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r2, [r1, #0x44]
	ldr r1, [r0, #0x44]
	subs r0, r1, r2
	cmp r0, #0
	bge _080689EC
	subs r0, r2, r1
_080689EC:
	pop {r1}
	bx r1
	.align 2, 0
_080689F0: .4byte gEwramData
_080689F4: .4byte 0x00013110

	thumb_func_start sub_080689F8
sub_080689F8: @ 0x080689F8
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x40]
	ldr r2, [r1, #0x40]
	subs r0, r0, r2
	asrs r0, r0, #0x10
	adds r2, r0, #0
	muls r2, r0, r2
	adds r0, r2, #0
	ldr r2, [r3, #0x44]
	ldr r1, [r1, #0x44]
	subs r2, r2, r1
	asrs r2, r2, #0x10
	adds r1, r2, #0
	muls r1, r2, r1
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08068A24
sub_08068A24: @ 0x08068A24
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _08068A68 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08068A6C @ =0x00013110
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x42
	movs r4, #0
	ldrsh r0, [r0, r4]
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r1, [r1]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r2, #0x46
	movs r4, #0
	ldrsh r1, [r2, r4]
	adds r3, #0x46
	ldrh r2, [r3]
	subs r1, r1, r2
	subs r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08068A68: .4byte gEwramData
_08068A6C: .4byte 0x00013110

	thumb_func_start sub_08068A70
sub_08068A70: @ 0x08068A70
	push {lr}
	adds r3, r0, #0
	adds r0, r1, #0
	adds r0, #0x42
	adds r2, r3, #0
	adds r2, #0x42
	ldrh r0, [r0]
	ldrh r2, [r2]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, #0x46
	adds r3, #0x46
	ldrh r1, [r1]
	ldrh r2, [r3]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1

	thumb_func_start sub_08068AA0
sub_08068AA0: @ 0x08068AA0
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr

	thumb_func_start sub_08068AB4
sub_08068AB4: @ 0x08068AB4
	lsls r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r0, r0, #0x10
	bx lr

	thumb_func_start sub_08068ABC
sub_08068ABC: @ 0x08068ABC
	adds r1, r0, #0
	movs r0, #0xf0
	lsls r0, r0, #0x10
	subs r0, r0, r1
	bx lr
	.align 2, 0

	thumb_func_start sub_08068AC8
sub_08068AC8: @ 0x08068AC8
	adds r1, r0, #0
	movs r0, #0xa0
	lsls r0, r0, #0x10
	subs r0, r0, r1
	bx lr
	.align 2, 0

	thumb_func_start sub_08068AD4
sub_08068AD4: @ 0x08068AD4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [sp, #0xc]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	cmp r0, r3
	bhi _08068B0A
	adds r0, r4, #0
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r2
	bhi _08068B0A
	movs r0, #1
	b _08068B0C
_08068B0A:
	movs r0, #0
_08068B0C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08068B14
sub_08068B14: @ 0x08068B14
	push {lr}
	ldr r1, _08068B2C @ =gEwramData
	ldr r1, [r1]
	ldr r2, _08068B30 @ =0x00013110
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r1, [r1, #0x40]
	ldr r0, [r0, #0x40]
	cmp r0, r1
	bge _08068B34
	movs r0, #1
	b _08068B40
	.align 2, 0
_08068B2C: .4byte gEwramData
_08068B30: .4byte 0x00013110
_08068B34:
	cmp r0, r1
	bgt _08068B3C
	movs r0, #0
	b _08068B40
_08068B3C:
	movs r0, #1
	rsbs r0, r0, #0
_08068B40:
	pop {r1}
	bx r1

	thumb_func_start sub_08068B44
sub_08068B44: @ 0x08068B44
	push {lr}
	ldr r1, _08068B5C @ =gEwramData
	ldr r1, [r1]
	ldr r2, _08068B60 @ =0x00013110
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r1, [r1, #0x44]
	ldr r0, [r0, #0x44]
	cmp r0, r1
	bge _08068B64
	movs r0, #1
	b _08068B70
	.align 2, 0
_08068B5C: .4byte gEwramData
_08068B60: .4byte 0x00013110
_08068B64:
	cmp r0, r1
	bgt _08068B6C
	movs r0, #0
	b _08068B70
_08068B6C:
	movs r0, #1
	rsbs r0, r0, #0
_08068B70:
	pop {r1}
	bx r1

	thumb_func_start sub_08068B74
sub_08068B74: @ 0x08068B74
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	ldr r0, _08068BB0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08068BB4 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r2, [r0, #0x44]
	ldr r0, [r3, #0x40]
	subs r0, r0, r1
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r1, [r3, #0x44]
	subs r1, r1, r2
	asrs r1, r1, #0x10
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	cmp r0, r4
	bls _08068BB8
	movs r0, #0
	b _08068BBA
	.align 2, 0
_08068BB0: .4byte gEwramData
_08068BB4: .4byte 0x00013110
_08068BB8:
	movs r0, #1
_08068BBA:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08068BC0
sub_08068BC0: @ 0x08068BC0
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	subs r2, r0, r1
	lsls r2, r2, #0x10
	lsrs r3, r2, #0x10
	subs r2, r1, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	cmp r0, r1
	bne _08068BDE
	movs r0, #0
	b _08068BEA
_08068BDE:
	cmp r3, r2
	bhi _08068BE8
	movs r0, #1
	rsbs r0, r0, #0
	b _08068BEA
_08068BE8:
	movs r0, #1
_08068BEA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08068BF0
sub_08068BF0: @ 0x08068BF0
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	adds r6, r0, #0
	adds r4, r1, #0
	mov r8, r2
	mov sb, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x80
	lsls r0, r0, #7
	adds r0, r0, r4
	mov sl, r0
	bl sub_080009E4
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_080009E4
	ldr r1, [r6, #0x40]
	mov r2, r8
	subs r1, r1, r2
	asrs r1, r1, #8
	asrs r5, r5, #8
	muls r5, r1, r5
	ldr r1, [r6, #0x44]
	mov r3, sb
	subs r1, r1, r3
	asrs r1, r1, #8
	asrs r0, r0, #8
	muls r0, r1, r0
	subs r5, r5, r0
	add r5, r8
	adds r0, r4, #0
	bl sub_080009E4
	adds r4, r0, #0
	mov r0, sl
	bl sub_080009E4
	ldr r1, [r6, #0x40]
	mov r2, r8
	subs r1, r1, r2
	asrs r1, r1, #8
	asrs r4, r4, #8
	adds r2, r1, #0
	muls r2, r4, r2
	ldr r1, [r6, #0x44]
	mov r3, sb
	subs r1, r1, r3
	asrs r1, r1, #8
	asrs r0, r0, #8
	muls r0, r1, r0
	adds r2, r2, r0
	add r2, sb
	str r2, [r6, #0x44]
	str r5, [r6, #0x40]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08068C74
sub_08068C74: @ 0x08068C74
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [sp, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	muls r0, r3, r0
	adds r3, r1, r0
	cmp r2, r1
	ble _08068C8E
	cmp r3, r2
	bgt _08068C96
_08068C8E:
	cmp r2, r1
	bge _08068C98
	cmp r3, r2
	bge _08068C98
_08068C96:
	adds r3, r2, #0
_08068C98:
	ldr r0, [r4, #0x40]
	adds r0, r0, r3
	str r0, [r4, #0x40]
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08068CA8
sub_08068CA8: @ 0x08068CA8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [sp, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	muls r0, r3, r0
	adds r3, r1, r0
	cmp r2, r1
	ble _08068CC2
	cmp r3, r2
	bgt _08068CCA
_08068CC2:
	cmp r2, r1
	bge _08068CCC
	cmp r3, r2
	bge _08068CCC
_08068CCA:
	adds r3, r2, #0
_08068CCC:
	ldr r0, [r4, #0x44]
	adds r0, r0, r3
	str r0, [r4, #0x44]
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08068CDC
sub_08068CDC: @ 0x08068CDC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r2, #0
	ldr r2, [sp, #0x14]
	ldr r0, [sp, #0x18]
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	muls r0, r2, r0
	adds r5, r4, r0
	cmp r3, r4
	ble _08068CFE
	cmp r5, r3
	bgt _08068D06
_08068CFE:
	cmp r3, r4
	bge _08068D08
	cmp r5, r3
	bge _08068D08
_08068D06:
	adds r5, r3, #0
_08068D08:
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r7, r1
	bl sub_080009E4
	asrs r4, r5, #8
	asrs r0, r0, #8
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	str r0, [r6, #0x40]
	adds r0, r7, #0
	bl sub_080009E4
	asrs r0, r0, #8
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, [r6, #0x44]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08068D3C
sub_08068D3C: @ 0x08068D3C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r6, r2, #0
	adds r5, r3, #0
	ldr r3, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r1, #0
	muls r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r3, #0
	muls r0, r2, r0
	adds r4, r6, r0
	cmp r5, r6
	ble _08068D70
	cmp r4, r5
	bgt _08068D78
_08068D70:
	cmp r5, r6
	bge _08068D7A
	cmp r4, r5
	bge _08068D7A
_08068D78:
	adds r4, r5, #0
_08068D7A:
	movs r0, #0x80
	lsls r0, r0, #7
	add r0, r8
	bl sub_080009E4
	asrs r4, r4, #8
	asrs r0, r0, #8
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, [r7, #0x40]
	adds r0, r0, r1
	str r0, [r7, #0x40]
	mov r0, r8
	bl sub_080009E4
	asrs r0, r0, #8
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, [r7, #0x44]
	adds r0, r0, r1
	str r0, [r7, #0x44]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08068DB0
sub_08068DB0: @ 0x08068DB0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r1, #0
	mov r8, r2
	adds r5, r3, #0
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x24]
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r1, #0
	muls r0, r4, r0
	adds r2, r2, r0
	cmp r3, #0
	ble _08068DD8
	cmp r2, r3
	bgt _08068DE0
_08068DD8:
	cmp r3, #0
	bge _08068DE2
	cmp r2, r3
	bge _08068DE2
_08068DE0:
	adds r2, r3, #0
_08068DE2:
	muls r4, r2, r4
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	lsrs r5, r5, #8
	asrs r0, r0, #8
	muls r0, r5, r0
	adds r0, r7, r0
	str r0, [r6, #0x40]
	adds r0, r4, #0
	bl sub_080009E4
	asrs r0, r0, #8
	muls r0, r5, r0
	add r0, r8
	str r0, [r6, #0x44]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08068E14
sub_08068E14: @ 0x08068E14
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	mov sb, r0
	adds r5, r1, #0
	mov r8, r2
	adds r4, r3, #0
	ldr r6, [sp, #0x18]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r5, r1
	bl sub_080009E4
	mov r2, r8
	asrs r2, r2, #8
	mov r8, r2
	asrs r0, r0, #8
	mov r1, r8
	muls r1, r0, r1
	mov r2, sb
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r2, #0x40]
	adds r0, r5, #0
	bl sub_080009E4
	asrs r0, r0, #8
	mov r1, r8
	muls r1, r0, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	muls r0, r6, r0
	adds r1, r1, r0
	mov r2, sb
	ldr r0, [r2, #0x44]
	adds r0, r0, r1
	str r0, [r2, #0x44]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08068E7C
sub_08068E7C: @ 0x08068E7C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	mov sb, r1
	mov sl, r2
	ldr r5, [sp, #0x28]
	ldr r6, [sp, #0x2c]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r5, #0
	bl __divsi3
	adds r4, r0, #0
	muls r4, r6, r4
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [sp, #0x24]
	adds r1, r5, #0
	bl Div
	muls r0, r6, r0
	add r0, sb
	str r0, [r7, #0x40]
	adds r0, r4, #0
	bl sub_080009E4
	ldr r2, [sp, #0x20]
	asrs r1, r2, #8
	asrs r0, r0, #8
	muls r0, r1, r0
	add r0, sl
	str r0, [r7, #0x44]
	mov r3, r8
	cmp r3, #0
	beq _08068F38
	movs r6, #0x80
	lsls r6, r6, #7
	add r6, r8
	adds r0, r6, #0
	bl sub_080009E4
	adds r4, r0, #0
	mov r0, r8
	bl sub_080009E4
	ldr r1, [r7, #0x40]
	mov r2, sb
	subs r1, r1, r2
	asrs r1, r1, #8
	asrs r4, r4, #8
	adds r5, r1, #0
	muls r5, r4, r5
	ldr r1, [r7, #0x44]
	mov r3, sl
	subs r1, r1, r3
	asrs r1, r1, #8
	asrs r0, r0, #8
	muls r0, r1, r0
	subs r5, r5, r0
	add r5, sb
	mov r0, r8
	bl sub_080009E4
	adds r4, r0, #0
	adds r0, r6, #0
	bl sub_080009E4
	ldr r1, [r7, #0x40]
	mov r2, sb
	subs r1, r1, r2
	asrs r1, r1, #8
	asrs r4, r4, #8
	adds r2, r1, #0
	muls r2, r4, r2
	ldr r1, [r7, #0x44]
	mov r3, sl
	subs r1, r1, r3
	asrs r1, r1, #8
	asrs r0, r0, #8
	muls r0, r1, r0
	adds r2, r2, r0
	add r2, sl
	str r2, [r7, #0x44]
	str r5, [r7, #0x40]
_08068F38:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08068F48
sub_08068F48: @ 0x08068F48
	push {r4, r5, r6, r7, lr}
	movs r3, #0
	ldr r7, _08068F74 @ =gEwramData
	movs r6, #0xf8
	lsls r6, r6, #2
	movs r4, #0
	movs r5, #0xfc
	lsls r5, r5, #2
_08068F58:
	ldr r0, [r7]
	lsls r2, r3, #2
	adds r1, r0, r6
	adds r1, r1, r2
	str r4, [r1]
	adds r0, r0, r5
	adds r0, r0, r3
	strb r4, [r0]
	adds r3, #1
	cmp r3, #3
	ble _08068F58
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08068F74: .4byte gEwramData

	thumb_func_start sub_08068F78
sub_08068F78: @ 0x08068F78
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x18]
	movs r7, #1
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08068F92
	adds r0, r4, #0
	movs r1, #8
	bl sub_0806D490
_08068F92:
	ldrb r1, [r4, #0x18]
	movs r6, #2
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08068FA6
	adds r0, r4, #0
	movs r1, #8
	bl sub_0806D4A8
_08068FA6:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D3D8
	ldrb r1, [r4, #0x19]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08068FD4
	bl RandomNumberGenerator
	ands r0, r5
	adds r3, r4, #0
	adds r3, #0x58
	ands r0, r7
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_08068FD4:
	ldrb r1, [r4, #0x19]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08068FF4
	bl RandomNumberGenerator
	ands r0, r5
	adds r3, r4, #0
	adds r3, #0x58
	lsls r0, r0, #7
	ldrb r2, [r3]
	movs r1, #0x7f
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_08068FF4:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08069026
	ldrb r0, [r4, #0xd]
	cmp r0, #0x27
	bhi _08069008
	adds r0, #1
	strb r0, [r4, #0xd]
_08069008:
	ldrb r1, [r4, #0xd]
	movs r0, #0x28
	subs r0, r0, r1
	bl sub_0806D518
	adds r3, r4, #0
	adds r3, #0x58
	ands r0, r7
	lsls r0, r0, #5
	ldrb r2, [r3]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_08069026:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806903C
	adds r0, r4, #0
	bl EntityDelete
	b _08069042
_0806903C:
	adds r0, r4, #0
	bl sub_0803F17C
_08069042:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08069048
sub_08069048: @ 0x08069048
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x18]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08069060
	adds r0, r4, #0
	movs r1, #8
	bl sub_0806D490
_08069060:
	ldrb r1, [r4, #0x18]
	movs r6, #2
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08069074
	adds r0, r4, #0
	movs r1, #8
	bl sub_0806D4A8
_08069074:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D3D8
	ldrb r1, [r4, #0x19]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080690A4
	bl RandomNumberGenerator
	ands r0, r5
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
_080690A4:
	ldrb r1, [r4, #0x19]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080690C4
	bl RandomNumberGenerator
	ands r0, r5
	adds r3, r4, #0
	adds r3, #0x58
	lsls r0, r0, #7
	ldrb r2, [r3]
	movs r1, #0x7f
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_080690C4:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08069106
	ldrb r0, [r4, #0xd]
	cmp r0, #0x27
	bhi _080690E6
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x20
	bls _080690E6
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
_080690E6:
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
_08069106:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806911C
	adds r0, r4, #0
	bl EntityDelete
	b _0806912E
_0806911C:
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x20
	bls _0806912E
	adds r0, r4, #0
	bl sub_0803F17C
_0806912E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08069134
sub_08069134: @ 0x08069134
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x18]
	movs r7, #1
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0806914E
	adds r0, r4, #0
	movs r1, #8
	bl sub_0806D490
_0806914E:
	ldrb r1, [r4, #0x18]
	movs r6, #2
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08069162
	adds r0, r4, #0
	movs r1, #8
	bl sub_0806D4A8
_08069162:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D3D8
	ldrb r1, [r4, #0x19]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08069190
	bl RandomNumberGenerator
	ands r0, r5
	adds r3, r4, #0
	adds r3, #0x58
	ands r0, r7
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_08069190:
	ldrb r1, [r4, #0x19]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080691B0
	bl RandomNumberGenerator
	ands r0, r5
	adds r3, r4, #0
	adds r3, #0x58
	lsls r0, r0, #7
	ldrb r2, [r3]
	movs r1, #0x7f
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_080691B0:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080691DA
	ldrb r0, [r4, #0xd]
	bl sub_0806D518
	adds r3, r4, #0
	adds r3, #0x58
	ands r0, r7
	lsls r0, r0, #5
	ldrb r2, [r3]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_080691DA:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _080691E8
	adds r0, r4, #0
	bl EntityDelete
	b _080691F8
_080691E8:
	ldrb r1, [r4, #0x18]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080691F8
	adds r0, r4, #0
	bl sub_0803F17C
_080691F8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08069200
sub_08069200: @ 0x08069200
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x18]
	movs r7, #1
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0806921A
	adds r0, r4, #0
	movs r1, #8
	bl sub_0806D490
_0806921A:
	ldrb r1, [r4, #0x18]
	movs r6, #2
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0806922E
	adds r0, r4, #0
	movs r1, #8
	bl sub_0806D4A8
_0806922E:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D3D8
	ldrb r1, [r4, #0x19]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0806925C
	bl RandomNumberGenerator
	ands r0, r5
	adds r3, r4, #0
	adds r3, #0x58
	ands r0, r7
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_0806925C:
	ldrb r1, [r4, #0x19]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0806927C
	bl RandomNumberGenerator
	ands r0, r5
	adds r3, r4, #0
	adds r3, #0x58
	lsls r0, r0, #7
	ldrb r2, [r3]
	movs r1, #0x7f
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_0806927C:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080692AE
	ldrb r0, [r4, #0xd]
	cmp r0, #0x27
	bhi _08069290
	adds r0, #1
	strb r0, [r4, #0xd]
_08069290:
	ldrb r1, [r4, #0xd]
	movs r0, #0x28
	subs r0, r0, r1
	bl sub_0806D518
	adds r3, r4, #0
	adds r3, #0x58
	ands r0, r7
	lsls r0, r0, #5
	ldrb r2, [r3]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_080692AE:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080692D2
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r4, #0
	bl EntityDelete
	b _080692D8
_080692D2:
	adds r0, r4, #0
	bl sub_0803F17C
_080692D8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080692E0
sub_080692E0: @ 0x080692E0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x18]
	movs r7, #1
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080692FA
	ldrb r1, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_0806D490
_080692FA:
	ldrb r1, [r4, #0x18]
	movs r6, #2
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0806930E
	ldrb r1, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_0806D4A8
_0806930E:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D3D8
	ldrb r1, [r4, #0x19]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0806933C
	bl RandomNumberGenerator
	ands r0, r5
	adds r3, r4, #0
	adds r3, #0x58
	ands r0, r7
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_0806933C:
	ldrb r1, [r4, #0x19]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0806935C
	bl RandomNumberGenerator
	ands r0, r5
	adds r3, r4, #0
	adds r3, #0x58
	lsls r0, r0, #7
	ldrb r2, [r3]
	movs r1, #0x7f
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_0806935C:
	ldrb r0, [r4, #0xd]
	cmp r0, #0xf9
	bhi _08069366
	adds r0, #1
	strb r0, [r4, #0xd]
_08069366:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080693A2
	ldrb r0, [r4, #0xd]
	cmp r0, #0x28
	bhi _08069396
	adds r1, r0, #0
	movs r0, #0x28
	subs r0, r0, r1
	bl sub_0806D518
	adds r3, r4, #0
	adds r3, #0x58
	ands r0, r7
	lsls r0, r0, #5
	ldrb r2, [r3]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	b _080693A2
_08069396:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
_080693A2:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080693BA
	adds r0, r4, #0
	bl EntityDelete
	b _080693DC
_080693BA:
	ldrb r1, [r4, #0x18]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080693D6
	ldrb r1, [r4, #0xd]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080693DC
	adds r0, r4, #0
	bl sub_0803F17C
	b _080693DC
_080693D6:
	adds r0, r4, #0
	bl sub_0803F17C
_080693DC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080693E4
sub_080693E4: @ 0x080693E4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	adds r5, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r0, _08069410 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08069414 @ =0x0000A094
	adds r6, r0, r1
	ldr r1, [r6, #4]
	ldr r0, [r7, #0x40]
	adds r1, r1, r0
	subs r0, r5, r1
	cmp r0, #0
	bge _08069418
	subs r0, r1, r5
	asrs r0, r0, #0x10
	rsbs r2, r0, #0
	b _0806941A
	.align 2, 0
_08069410: .4byte gEwramData
_08069414: .4byte 0x0000A094
_08069418:
	asrs r2, r0, #0x10
_0806941A:
	adds r3, r2, #0
	muls r3, r2, r3
	adds r2, r3, #0
	ldr r1, [r6, #8]
	ldr r0, [r7, #0x44]
	adds r1, r1, r0
	mov r3, r8
	subs r0, r3, r1
	cmp r0, #0
	bge _08069436
	subs r0, r1, r3
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _08069438
_08069436:
	asrs r0, r0, #0x10
_08069438:
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r2, r0
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r1, [r6, #4]
	ldr r0, [r7, #0x40]
	adds r1, r1, r0
	subs r0, r5, r1
	cmp r0, #0
	bge _08069462
	subs r0, r1, r5
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	mov r2, sb
	muls r2, r0, r2
	adds r0, r2, #0
	b _0806946A
_08069462:
	asrs r0, r0, #0x10
	mov r3, sb
	muls r3, r0, r3
	adds r0, r3, #0
_0806946A:
	adds r1, r4, #0
	bl __divsi3
	adds r5, r0, #0
	ldr r1, [r6, #8]
	ldr r0, [r7, #0x44]
	adds r1, r1, r0
	mov r2, r8
	subs r0, r2, r1
	cmp r0, #0
	bge _0806948E
	subs r0, r1, r2
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	mov r3, sb
	muls r3, r0, r3
	adds r0, r3, #0
	b _08069496
_0806948E:
	asrs r0, r0, #0x10
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
_08069496:
	adds r1, r4, #0
	bl __divsi3
	str r5, [r7, #0x48]
	str r0, [r7, #0x4c]
	lsls r0, r4, #0x10
	cmp r0, sb
	ble _080694AA
	movs r0, #0
	b _080694AC
_080694AA:
	movs r0, #1
_080694AC:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080694B8
sub_080694B8: @ 0x080694B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	adds r6, r1, #0
	mov sb, r2
	mov sl, r3
	ldr r0, _080694EC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080694F0 @ =0x0000A094
	adds r7, r0, r1
	ldr r1, [r7, #4]
	mov r2, r8
	ldr r0, [r2, #0x40]
	adds r1, r1, r0
	subs r0, r6, r1
	cmp r0, #0
	bge _080694F4
	subs r0, r1, r6
	asrs r0, r0, #0x10
	rsbs r5, r0, #0
	b _080694F6
	.align 2, 0
_080694EC: .4byte gEwramData
_080694F0: .4byte 0x0000A094
_080694F4:
	asrs r5, r0, #0x10
_080694F6:
	ldr r1, [r7, #8]
	mov r2, r8
	ldr r0, [r2, #0x44]
	adds r1, r1, r0
	mov r2, sb
	subs r0, r2, r1
	cmp r0, #0
	bge _0806950E
	subs r0, r1, r2
	asrs r0, r0, #0x10
	rsbs r4, r0, #0
	b _08069510
_0806950E:
	asrs r4, r0, #0x10
_08069510:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
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
	adds r4, r0, #0
	adds r0, r5, #0
	mov r1, sl
	bl sub_0803E86C
	str r0, [sp]
	adds r0, r4, #0
	mov r1, sl
	bl sub_0803E86C
	str r0, [sp, #4]
	ldr r1, [r7, #4]
	mov r2, r8
	ldr r0, [r2, #0x40]
	adds r1, r1, r0
	subs r0, r6, r1
	cmp r0, #0
	bge _08069560
	subs r0, r1, r6
	asrs r0, r0, #0x10
	rsbs r5, r0, #0
	b _08069562
_08069560:
	asrs r5, r0, #0x10
_08069562:
	adds r0, r5, #0
	muls r0, r5, r0
	adds r5, r0, #0
	ldr r1, [r7, #8]
	mov r2, r8
	ldr r0, [r2, #0x44]
	adds r1, r1, r0
	mov r2, sb
	subs r0, r2, r1
	cmp r0, #0
	bge _08069580
	subs r0, r1, r2
	asrs r0, r0, #0x10
	rsbs r4, r0, #0
	b _08069582
_08069580:
	asrs r4, r0, #0x10
_08069582:
	adds r0, r4, #0
	muls r0, r4, r0
	adds r4, r0, #0
	adds r0, r5, r4
	bl Sqrt
	ldr r1, [sp]
	mov r2, r8
	str r1, [r2, #0x48]
	ldr r1, [sp, #4]
	str r1, [r2, #0x4c]
	lsls r0, r0, #0x10
	cmp r0, sl
	ble _080695A2
	movs r0, #0
	b _080695A4
_080695A2:
	movs r0, #1
_080695A4:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080695B4
sub_080695B4: @ 0x080695B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	adds r6, r1, #0
	mov sb, r2
	mov sl, r3
	ldr r0, _080695E8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080695EC @ =0x0000A094
	adds r7, r0, r1
	ldr r1, [r7, #4]
	mov r2, r8
	ldr r0, [r2, #0x40]
	adds r1, r1, r0
	subs r0, r6, r1
	cmp r0, #0
	bge _080695F0
	subs r0, r1, r6
	asrs r0, r0, #0x10
	rsbs r5, r0, #0
	b _080695F2
	.align 2, 0
_080695E8: .4byte gEwramData
_080695EC: .4byte 0x0000A094
_080695F0:
	asrs r5, r0, #0x10
_080695F2:
	ldr r1, [r7, #8]
	mov r2, r8
	ldr r0, [r2, #0x44]
	adds r1, r1, r0
	mov r2, sb
	subs r0, r2, r1
	cmp r0, #0
	bge _0806960A
	subs r0, r1, r2
	asrs r0, r0, #0x10
	rsbs r4, r0, #0
	b _0806960C
_0806960A:
	asrs r4, r0, #0x10
_0806960C:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
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
	adds r4, r0, #0
	adds r0, r5, #0
	mov r1, sl
	bl sub_0803E86C
	str r0, [sp]
	adds r0, r4, #0
	mov r1, sl
	bl sub_0803E86C
	str r0, [sp, #4]
	ldr r1, [r7, #4]
	mov r2, r8
	ldr r0, [r2, #0x40]
	adds r1, r1, r0
	subs r0, r6, r1
	cmp r0, #0
	bge _0806965C
	subs r0, r1, r6
	asrs r0, r0, #0x10
	rsbs r5, r0, #0
	b _0806965E
_0806965C:
	asrs r5, r0, #0x10
_0806965E:
	adds r0, r5, #0
	muls r0, r5, r0
	adds r5, r0, #0
	ldr r1, [r7, #8]
	mov r2, r8
	ldr r0, [r2, #0x44]
	adds r1, r1, r0
	mov r2, sb
	subs r0, r2, r1
	cmp r0, #0
	bge _0806967C
	subs r0, r1, r2
	asrs r0, r0, #0x10
	rsbs r4, r0, #0
	b _0806967E
_0806967C:
	asrs r4, r0, #0x10
_0806967E:
	adds r0, r4, #0
	muls r0, r4, r0
	adds r4, r0, #0
	adds r0, r5, r4
	bl Sqrt
	ldr r1, [sp]
	mov r2, r8
	str r1, [r2, #0x50]
	ldr r1, [sp, #4]
	str r1, [r2, #0x54]
	lsls r0, r0, #0x10
	cmp r0, sl
	ble _0806969E
	movs r0, #0
	b _080696A0
_0806969E:
	movs r0, #1
_080696A0:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080696B0
sub_080696B0: @ 0x080696B0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r1, [r4, #0x40]
	subs r0, r5, r1
	cmp r0, #0
	bge _080696D0
	subs r0, r1, r5
	asrs r0, r0, #0x10
	rsbs r1, r0, #0
	b _080696D2
_080696D0:
	asrs r1, r0, #0x10
_080696D2:
	adds r0, r1, #0
	muls r0, r1, r0
	adds r1, r0, #0
	ldr r2, [r4, #0x44]
	subs r0, r7, r2
	cmp r0, #0
	bge _080696E8
	subs r0, r2, r7
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080696EA
_080696E8:
	asrs r0, r0, #0x10
_080696EA:
	adds r2, r0, #0
	muls r2, r0, r2
	adds r0, r2, #0
	adds r0, r1, r0
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r1, [r4, #0x40]
	subs r0, r5, r1
	cmp r0, #0
	bge _08069710
	subs r0, r1, r5
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	b _08069718
_08069710:
	asrs r0, r0, #0x10
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
_08069718:
	adds r1, r6, #0
	bl __divsi3
	adds r5, r0, #0
	ldr r0, [r4, #0x44]
	subs r1, r7, r0
	mov sb, r0
	cmp r1, #0
	bge _08069738
	subs r0, r0, r7
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	b _08069740
_08069738:
	asrs r0, r1, #0x10
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
_08069740:
	adds r1, r6, #0
	bl __divsi3
	adds r1, r0, #0
	str r5, [r4, #0x48]
	str r1, [r4, #0x4c]
	ldr r0, [r4, #0x40]
	adds r0, r0, r5
	str r0, [r4, #0x40]
	mov r2, sb
	adds r0, r2, r1
	str r0, [r4, #0x44]
	lsls r0, r6, #0x10
	cmp r0, r8
	ble _08069762
	movs r0, #0
	b _08069764
_08069762:
	movs r0, #1
_08069764:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08069770
sub_08069770: @ 0x08069770
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	mov sl, r1
	mov sb, r2
	ldr r0, _08069838 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806983C @ =0x0000A094
	adds r7, r0, r1
	movs r2, #0
	mov r8, r2
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r6, #0
	bl sub_0806D430
	ldr r0, [r6, #0x48]
	cmp r0, #0
	bgt _080697D6
	movs r3, #6
	ldrsh r0, [r7, r3]
	adds r5, r6, #0
	adds r5, #0x42
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r0, r0, r1
	movs r3, #0xa
	ldrsh r1, [r7, r3]
	adds r4, r6, #0
	adds r4, #0x46
	movs r3, #0
	ldrsh r2, [r4, r3]
	adds r1, r1, r2
	bl sub_0800207C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _080697D0
	lsls r1, r0, #0x10
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	str r0, [r6, #0x40]
	movs r0, #2
	mov r8, r0
_080697D0:
	ldr r0, [r6, #0x48]
	cmp r0, #0
	blt _0806980E
_080697D6:
	movs r1, #6
	ldrsh r0, [r7, r1]
	adds r5, r6, #0
	adds r5, #0x42
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r0, r0, r1
	movs r3, #0xa
	ldrsh r1, [r7, r3]
	adds r4, r6, #0
	adds r4, #0x46
	movs r3, #0
	ldrsh r2, [r4, r3]
	adds r1, r1, r2
	bl sub_08002058
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _0806980E
	lsls r0, r0, #0x10
	ldr r1, [r6, #0x40]
	adds r1, r1, r0
	str r1, [r6, #0x40]
	movs r0, #1
	mov r1, r8
	orrs r1, r0
	mov r8, r1
_0806980E:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r6, #0
	bl sub_0806D460
	movs r2, #6
	ldrsh r1, [r7, r2]
	movs r3, #0
	ldrsh r0, [r5, r3]
	adds r2, r1, r0
	movs r0, #0xa
	ldrsh r1, [r7, r0]
	ldr r0, [r6, #0x44]
	add r0, sb
	cmp r0, #0
	bge _08069840
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	subs r1, r1, r0
	b _08069844
	.align 2, 0
_08069838: .4byte gEwramData
_0806983C: .4byte 0x0000A094
_08069840:
	asrs r0, r0, #0x10
	adds r1, r1, r0
_08069844:
	adds r0, r2, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08069862
	lsls r0, r0, #0x10
	ldr r1, [r6, #0x44]
	adds r1, r1, r0
	str r1, [r6, #0x44]
	movs r0, #8
	mov r1, r8
	orrs r1, r0
	mov r8, r1
_08069862:
	movs r2, #6
	ldrsh r0, [r7, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	adds r0, r0, r1
	movs r2, #0xa
	ldrsh r1, [r7, r2]
	movs r3, #0
	ldrsh r2, [r4, r3]
	adds r1, r1, r2
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08069896
	lsls r0, r0, #0x10
	ldr r1, [r6, #0x44]
	adds r1, r1, r0
	str r1, [r6, #0x44]
	mov r0, sl
	str r0, [r6, #0x4c]
	movs r0, #4
	mov r1, r8
	orrs r1, r0
	mov r8, r1
_08069896:
	mov r0, r8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080698A8
sub_080698A8: @ 0x080698A8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	mov sb, r1
	mov r8, r2
	adds r7, r3, #0
	ldr r0, _08069984 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08069988 @ =0x0000A094
	adds r5, r0, r1
	movs r6, #0
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bne _080698CE
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _08069948
_080698CE:
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_0806D430
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bge _0806990E
	movs r2, #6
	ldrsh r0, [r5, r2]
	adds r1, r4, #0
	adds r1, #0x42
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r0, r0, r1
	movs r2, #0xa
	ldrsh r1, [r5, r2]
	adds r2, r4, #0
	adds r2, #0x46
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	bl sub_0800207C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _0806990E
	lsls r1, r0, #0x10
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	movs r6, #2
_0806990E:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	ble _08069948
	movs r1, #6
	ldrsh r0, [r5, r1]
	adds r1, r4, #0
	adds r1, #0x42
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r0, r0, r1
	movs r3, #0xa
	ldrsh r1, [r5, r3]
	adds r2, r4, #0
	adds r2, #0x46
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	bl sub_08002058
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08069948
	lsls r0, r0, #0x10
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	str r1, [r4, #0x40]
	movs r0, #1
	orrs r6, r0
_08069948:
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bne _08069954
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _080699F0
_08069954:
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_0806D460
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bge _080699AA
	movs r1, #6
	ldrsh r0, [r5, r1]
	adds r1, r4, #0
	adds r1, #0x42
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r2, r0, r1
	movs r3, #0xa
	ldrsh r1, [r5, r3]
	ldr r0, [r4, #0x44]
	add r0, r8
	cmp r0, #0
	bge _0806998C
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	subs r1, r1, r0
	b _08069990
	.align 2, 0
_08069984: .4byte gEwramData
_08069988: .4byte 0x0000A094
_0806998C:
	asrs r0, r0, #0x10
	adds r1, r1, r0
_08069990:
	adds r0, r2, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _080699AA
	lsls r0, r0, #0x10
	ldr r1, [r4, #0x44]
	adds r1, r1, r0
	str r1, [r4, #0x44]
	movs r0, #8
	orrs r6, r0
_080699AA:
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	ble _080699F0
	movs r1, #6
	ldrsh r0, [r5, r1]
	adds r1, r4, #0
	adds r1, #0x42
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r0, r0, r1
	movs r3, #0xa
	ldrsh r1, [r5, r3]
	adds r2, r4, #0
	adds r2, #0x46
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _080699F0
	lsls r1, r0, #0x10
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	adds r1, r4, #0
	adds r1, #0x44
	movs r0, #0
	strh r0, [r1]
	mov r0, sb
	str r0, [r4, #0x4c]
	movs r0, #4
	orrs r6, r0
_080699F0:
	adds r0, r6, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08069A00
sub_08069A00: @ 0x08069A00
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	mov sl, r1
	mov sb, r2
	mov r8, r3
	ldr r0, [sp, #0x20]
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, _08069AF4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08069AF8 @ =0x0000A094
	adds r5, r0, r1
	movs r6, #0
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bne _08069A2E
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _08069AB8
_08069A2E:
	adds r0, r4, #0
	mov r1, r8
	bl sub_0806D430
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bge _08069A76
	movs r2, #6
	ldrsh r0, [r5, r2]
	adds r1, r4, #0
	adds r1, #0x42
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r0, r0, r1
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	movs r2, #0xa
	ldrsh r1, [r5, r2]
	adds r2, r4, #0
	adds r2, #0x46
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	subs r1, #0xa
	bl sub_0800207C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08069A76
	lsls r1, r0, #0x10
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	movs r6, #2
_08069A76:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	ble _08069AB8
	movs r1, #6
	ldrsh r0, [r5, r1]
	adds r1, r4, #0
	adds r1, #0x42
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r0, r0, r1
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	movs r3, #0xa
	ldrsh r1, [r5, r3]
	adds r2, r4, #0
	adds r2, #0x46
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	subs r1, #0xa
	bl sub_08002058
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08069AB8
	lsls r0, r0, #0x10
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	str r1, [r4, #0x40]
	movs r0, #1
	orrs r6, r0
_08069AB8:
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bne _08069AC4
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _08069B60
_08069AC4:
	adds r0, r4, #0
	mov r1, r8
	bl sub_0806D460
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bge _08069B1A
	movs r1, #6
	ldrsh r0, [r5, r1]
	adds r1, r4, #0
	adds r1, #0x42
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r2, r0, r1
	movs r3, #0xa
	ldrsh r1, [r5, r3]
	ldr r0, [r4, #0x44]
	add r0, sb
	cmp r0, #0
	bge _08069AFC
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	subs r1, r1, r0
	b _08069B00
	.align 2, 0
_08069AF4: .4byte gEwramData
_08069AF8: .4byte 0x0000A094
_08069AFC:
	asrs r0, r0, #0x10
	adds r1, r1, r0
_08069B00:
	adds r0, r2, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08069B1A
	lsls r0, r0, #0x10
	ldr r1, [r4, #0x44]
	adds r1, r1, r0
	str r1, [r4, #0x44]
	movs r0, #8
	orrs r6, r0
_08069B1A:
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	ble _08069B60
	movs r1, #6
	ldrsh r0, [r5, r1]
	adds r1, r4, #0
	adds r1, #0x42
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r0, r0, r1
	movs r3, #0xa
	ldrsh r1, [r5, r3]
	adds r2, r4, #0
	adds r2, #0x46
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08069B60
	lsls r1, r0, #0x10
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	adds r1, r4, #0
	adds r1, #0x44
	movs r0, #0
	strh r0, [r1]
	mov r0, sl
	str r0, [r4, #0x4c]
	movs r0, #4
	orrs r6, r0
_08069B60:
	adds r0, r6, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08069B70
sub_08069B70: @ 0x08069B70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	mov sl, r2
	mov sb, r3
	ldr r0, _08069BC8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08069BCC @ =0x0000A094
	adds r7, r0, r1
	movs r2, #0
	mov r8, r2
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r6, #0
	bl sub_0806D430
	ldr r0, [r6, #0x48]
	cmp r0, #0
	bge _08069BD0
	movs r3, #6
	ldrsh r0, [r7, r3]
	adds r5, r6, #0
	adds r5, #0x42
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r0, r0, r1
	movs r3, #0xa
	ldrsh r1, [r7, r3]
	adds r4, r6, #0
	adds r4, #0x46
	movs r3, #0
	ldrsh r2, [r4, r3]
	adds r1, r1, r2
	bl sub_0800207C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08069C08
	movs r1, #2
	b _08069BFE
	.align 2, 0
_08069BC8: .4byte gEwramData
_08069BCC: .4byte 0x0000A094
_08069BD0:
	adds r5, r6, #0
	adds r5, #0x42
	adds r4, r6, #0
	adds r4, #0x46
	cmp r0, #0
	ble _08069C08
	movs r2, #6
	ldrsh r0, [r7, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	adds r0, r0, r1
	movs r2, #0xa
	ldrsh r1, [r7, r2]
	movs r3, #0
	ldrsh r2, [r4, r3]
	adds r1, r1, r2
	bl sub_08002058
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08069C08
	movs r1, #1
_08069BFE:
	mov r8, r1
	lsls r1, r0, #0x10
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	str r0, [r6, #0x40]
_08069C08:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r6, #0
	bl sub_0806D460
	mov r2, sb
	cmp r2, #0
	beq _08069C58
	movs r3, #6
	ldrsh r0, [r7, r3]
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r2, r0, r1
	movs r3, #0xa
	ldrsh r1, [r7, r3]
	ldr r0, [r6, #0x44]
	add r0, sl
	cmp r0, #0
	bge _08069C36
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	subs r1, r1, r0
	b _08069C3A
_08069C36:
	asrs r0, r0, #0x10
	adds r1, r1, r0
_08069C3A:
	adds r0, r2, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08069C58
	movs r0, #8
	mov r2, r8
	orrs r2, r0
	mov r8, r2
	lsls r1, r1, #0x10
	ldr r0, [r6, #0x44]
	adds r0, r0, r1
	str r0, [r6, #0x44]
_08069C58:
	movs r3, #6
	ldrsh r0, [r7, r3]
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r0, r0, r1
	movs r3, #0xa
	ldrsh r1, [r7, r3]
	movs r3, #0
	ldrsh r2, [r4, r3]
	adds r1, r1, r2
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08069C88
	movs r0, #4
	mov r2, r8
	orrs r2, r0
	mov r8, r2
	lsls r1, r1, #0x10
	ldr r0, [r6, #0x44]
	adds r0, r0, r1
	str r0, [r6, #0x44]
_08069C88:
	ldrh r0, [r5]
	ldrh r3, [r7, #6]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	movs r0, #0xa
	ldrsh r1, [r7, r0]
	ldr r0, [r6, #0x44]
	add r0, sl
	cmp r0, #0
	bge _08069CA6
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	subs r0, r1, r0
	b _08069CAA
_08069CA6:
	asrs r0, r0, #0x10
	adds r0, r1, r0
_08069CAA:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, #0
	bl sub_0806D0B8
	cmp r0, #3
	bne _08069CC0
	movs r0, #0x80
	mov r1, r8
	orrs r1, r0
	mov r8, r1
_08069CC0:
	ldrh r0, [r5]
	ldrh r2, [r7, #6]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r4]
	ldrh r7, [r7, #0xa]
	adds r1, r1, r7
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #3
	bne _08069CE4
	movs r0, #0x40
	mov r3, r8
	orrs r3, r0
	mov r8, r3
_08069CE4:
	mov r0, r8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08069CF4
sub_08069CF4: @ 0x08069CF4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	mov sl, r2
	str r3, [sp]
	ldr r0, _08069D40 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08069D44 @ =0x0000A094
	adds r7, r0, r1
	movs r2, #0
	mov sb, r2
	adds r0, r5, #0
	ldr r1, [sp, #0x24]
	bl sub_0806D430
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bgt _08069D94
	movs r3, #6
	ldrsh r2, [r7, r3]
	adds r1, r5, #0
	adds r1, #0x42
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r2, r2, r0
	mov r8, r1
	cmp r6, #0
	bge _08069D48
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	adds r2, r2, r0
	b _08069D4C
	.align 2, 0
_08069D40: .4byte gEwramData
_08069D44: .4byte 0x0000A094
_08069D48:
	asrs r0, r6, #0x10
	subs r2, r2, r0
_08069D4C:
	movs r0, #0xa
	ldrsh r1, [r7, r0]
	adds r4, r5, #0
	adds r4, #0x46
	movs r3, #0
	ldrsh r0, [r4, r3]
	adds r1, r1, r0
	adds r0, r2, #0
	bl sub_0800207C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08069D78
	movs r0, #2
	mov r2, sb
	orrs r2, r0
	mov sb, r2
	lsls r1, r1, #0x10
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
_08069D78:
	movs r3, #6
	ldrsh r1, [r7, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r1, r1, r0
	cmp r6, #0
	bge _08069D8E
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	b _08069DFA
_08069D8E:
	asrs r0, r6, #0x10
	subs r2, r1, r0
	b _08069DFC
_08069D94:
	movs r0, #6
	ldrsh r2, [r7, r0]
	adds r1, r5, #0
	adds r1, #0x42
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r2, r2, r0
	mov r8, r1
	cmp r6, #0
	bge _08069DB0
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	subs r2, r2, r0
	b _08069DB4
_08069DB0:
	asrs r0, r6, #0x10
	adds r2, r2, r0
_08069DB4:
	movs r0, #0xa
	ldrsh r1, [r7, r0]
	adds r4, r5, #0
	adds r4, #0x46
	movs r3, #0
	ldrsh r0, [r4, r3]
	adds r1, r1, r0
	adds r0, r2, #0
	bl sub_08002058
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08069DE0
	movs r0, #1
	mov r2, sb
	orrs r2, r0
	mov sb, r2
	lsls r1, r1, #0x10
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
_08069DE0:
	movs r3, #6
	ldrsh r1, [r7, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r1, r1, r0
	cmp r6, #0
	bge _08069DF8
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	subs r2, r1, r0
	b _08069DFC
_08069DF8:
	asrs r0, r6, #0x10
_08069DFA:
	adds r2, r1, r0
_08069DFC:
	movs r0, #0xa
	ldrsh r1, [r7, r0]
	movs r3, #0
	ldrsh r0, [r4, r3]
	adds r1, r1, r0
	adds r0, r2, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08069E1C
	lsls r1, r0, #0x10
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r5, #0x44]
_08069E1C:
	adds r0, r5, #0
	ldr r1, [sp, #0x24]
	bl sub_0806D460
	ldr r0, [sp]
	cmp r0, #0
	beq _08069E6C
	movs r1, #6
	ldrsh r0, [r7, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r2, r0, r1
	movs r0, #0xa
	ldrsh r1, [r7, r0]
	ldr r0, [r5, #0x44]
	add r0, sl
	cmp r0, #0
	bge _08069E4A
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	subs r1, r1, r0
	b _08069E4E
_08069E4A:
	asrs r0, r0, #0x10
	adds r1, r1, r0
_08069E4E:
	adds r0, r2, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08069E6C
	movs r0, #8
	mov r2, sb
	orrs r2, r0
	mov sb, r2
	lsls r1, r1, #0x10
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r5, #0x44]
_08069E6C:
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	ble _08069EA4
	movs r3, #6
	ldrsh r0, [r7, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	movs r2, #0xa
	ldrsh r1, [r7, r2]
	movs r3, #0
	ldrsh r2, [r4, r3]
	adds r1, r1, r2
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08069EA4
	movs r0, #4
	mov r2, sb
	orrs r2, r0
	mov sb, r2
	lsls r1, r1, #0x10
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r5, #0x44]
_08069EA4:
	mov r3, r8
	ldrh r0, [r3]
	ldrh r1, [r7, #6]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	movs r3, #0xa
	ldrsh r1, [r7, r3]
	ldr r0, [r5, #0x44]
	add r0, sl
	cmp r0, #0
	bge _08069EC4
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	subs r0, r1, r0
	b _08069EC8
_08069EC4:
	asrs r0, r0, #0x10
	adds r0, r1, r0
_08069EC8:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, #0
	bl sub_0806D0B8
	cmp r0, #3
	bne _08069EDE
	movs r0, #0x80
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_08069EDE:
	mov r2, r8
	ldrh r0, [r2]
	ldrh r3, [r7, #6]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r4]
	ldrh r7, [r7, #0xa]
	adds r1, r1, r7
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #3
	bne _08069F04
	movs r0, #0x40
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_08069F04:
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

	thumb_func_start sub_08069F18
sub_08069F18: @ 0x08069F18
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	str r1, [sp]
	mov sl, r2
	mov sb, r3
	ldr r0, _08069F74 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08069F78 @ =0x0000A094
	adds r7, r0, r1
	movs r2, #0
	mov r8, r2
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r6, #0
	bl sub_0806D430
	ldr r0, [r6, #0x48]
	cmp r0, #0
	bge _08069F7C
	movs r3, #6
	ldrsh r0, [r7, r3]
	adds r5, r6, #0
	adds r5, #0x42
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r0, r0, r1
	movs r3, #0xa
	ldrsh r1, [r7, r3]
	adds r4, r6, #0
	adds r4, #0x46
	movs r3, #0
	ldrsh r2, [r4, r3]
	adds r1, r1, r2
	bl sub_0800207C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08069FB4
	movs r1, #2
	b _08069FAA
	.align 2, 0
_08069F74: .4byte gEwramData
_08069F78: .4byte 0x0000A094
_08069F7C:
	adds r5, r6, #0
	adds r5, #0x42
	adds r4, r6, #0
	adds r4, #0x46
	cmp r0, #0
	ble _08069FB4
	movs r2, #6
	ldrsh r0, [r7, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	adds r0, r0, r1
	movs r2, #0xa
	ldrsh r1, [r7, r2]
	movs r3, #0
	ldrsh r2, [r4, r3]
	adds r1, r1, r2
	bl sub_08002058
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08069FB4
	movs r1, #1
_08069FAA:
	mov r8, r1
	lsls r1, r0, #0x10
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	str r0, [r6, #0x40]
_08069FB4:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r6, #0
	bl sub_0806D460
	ldr r0, [r6, #0x4c]
	cmp r0, #0
	bgt _0806A010
	mov r2, sb
	cmp r2, #0
	beq _0806A00A
	movs r3, #6
	ldrsh r0, [r7, r3]
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r2, r0, r1
	movs r3, #0xa
	ldrsh r1, [r7, r3]
	ldr r0, [r6, #0x44]
	add r0, sl
	cmp r0, #0
	bge _08069FE8
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	subs r1, r1, r0
	b _08069FEC
_08069FE8:
	asrs r0, r0, #0x10
	adds r1, r1, r0
_08069FEC:
	adds r0, r2, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _0806A00A
	movs r0, #8
	mov r2, r8
	orrs r2, r0
	mov r8, r2
	lsls r1, r1, #0x10
	ldr r0, [r6, #0x44]
	adds r0, r0, r1
	str r0, [r6, #0x44]
_0806A00A:
	ldr r0, [r6, #0x4c]
	cmp r0, #0
	blt _0806A044
_0806A010:
	movs r3, #6
	ldrsh r0, [r7, r3]
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r0, r0, r1
	movs r3, #0xa
	ldrsh r1, [r7, r3]
	movs r3, #0
	ldrsh r2, [r4, r3]
	adds r1, r1, r2
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _0806A044
	movs r0, #4
	mov r2, r8
	orrs r2, r0
	mov r8, r2
	lsls r1, r1, #0x10
	ldr r0, [r6, #0x44]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	ldr r3, [sp]
	str r3, [r6, #0x4c]
_0806A044:
	ldrh r0, [r5]
	ldrh r1, [r7, #6]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	movs r3, #0xa
	ldrsh r1, [r7, r3]
	ldr r0, [r6, #0x44]
	add r0, sl
	cmp r0, #0
	bge _0806A062
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	subs r0, r1, r0
	b _0806A066
_0806A062:
	asrs r0, r0, #0x10
	adds r0, r1, r0
_0806A066:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, #0
	bl sub_0806D0B8
	cmp r0, #3
	bne _0806A07C
	movs r0, #0x80
	mov r1, r8
	orrs r1, r0
	mov r8, r1
_0806A07C:
	ldrh r0, [r5]
	ldrh r2, [r7, #6]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r4]
	ldrh r7, [r7, #0xa]
	adds r1, r1, r7
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #3
	bne _0806A0A0
	movs r0, #0x40
	mov r3, r8
	orrs r3, r0
	mov r8, r3
_0806A0A0:
	mov r0, r8
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806A0B4
sub_0806A0B4: @ 0x0806A0B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	mov sl, r2
	mov sb, r3
	ldr r0, _0806A114 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806A118 @ =0x0000A094
	adds r6, r0, r1
	movs r2, #0
	mov r8, r2
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r7, #0
	bl sub_0806D430
	ldr r0, [r7, #0x48]
	cmp r0, #0
	bge _0806A11C
	movs r3, #6
	ldrsh r0, [r6, r3]
	adds r5, r7, #0
	adds r5, #0x42
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r0, r0, r1
	movs r3, #0xa
	ldrsh r1, [r6, r3]
	adds r4, r7, #0
	adds r4, #0x46
	movs r3, #0
	ldrsh r2, [r4, r3]
	adds r1, r1, r2
	bl sub_0800207C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	rsbs r1, r0, #0
	orrs r1, r0
	asrs r1, r1, #0x1f
	mov r8, r1
	movs r0, #2
	ands r1, r0
	mov r8, r1
	b _0806A14A
	.align 2, 0
_0806A114: .4byte gEwramData
_0806A118: .4byte 0x0000A094
_0806A11C:
	adds r5, r7, #0
	adds r5, #0x42
	adds r4, r7, #0
	adds r4, #0x46
	cmp r0, #0
	ble _0806A14A
	movs r2, #6
	ldrsh r0, [r6, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	adds r0, r0, r1
	movs r2, #0xa
	ldrsh r1, [r6, r2]
	movs r3, #0
	ldrsh r2, [r4, r3]
	adds r1, r1, r2
	bl sub_08002058
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0806A14A
	movs r0, #1
	mov r8, r0
_0806A14A:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r7, #0
	bl sub_0806D460
	mov r1, sb
	cmp r1, #0
	beq _0806A190
	movs r2, #6
	ldrsh r0, [r6, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	adds r2, r0, r1
	movs r0, #0xa
	ldrsh r1, [r6, r0]
	ldr r0, [r7, #0x44]
	add r0, sl
	cmp r0, #0
	bge _0806A178
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	subs r1, r1, r0
	b _0806A17C
_0806A178:
	asrs r0, r0, #0x10
	adds r1, r1, r0
_0806A17C:
	adds r0, r2, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0806A190
	movs r0, #8
	mov r1, r8
	orrs r1, r0
	mov r8, r1
_0806A190:
	movs r2, #6
	ldrsh r0, [r6, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	adds r0, r0, r1
	movs r2, #0xa
	ldrsh r1, [r6, r2]
	movs r3, #0
	ldrsh r2, [r4, r3]
	adds r1, r1, r2
	bl sub_08001D94
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0806A1B6
	movs r0, #4
	mov r1, r8
	orrs r1, r0
	mov r8, r1
_0806A1B6:
	ldrh r0, [r5]
	ldrh r2, [r6, #6]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	movs r3, #0xa
	ldrsh r1, [r6, r3]
	ldr r0, [r7, #0x44]
	add r0, sl
	cmp r0, #0
	bge _0806A1D4
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	subs r0, r1, r0
	b _0806A1D8
_0806A1D4:
	asrs r0, r0, #0x10
	adds r0, r1, r0
_0806A1D8:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, #0
	bl sub_0806D0B8
	cmp r0, #3
	bne _0806A1EE
	movs r0, #0x80
	mov r1, r8
	orrs r1, r0
	mov r8, r1
_0806A1EE:
	ldrh r0, [r5]
	ldrh r2, [r6, #6]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r4]
	ldrh r6, [r6, #0xa]
	adds r1, r1, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #3
	bne _0806A212
	movs r0, #0x40
	mov r3, r8
	orrs r3, r0
	mov r8, r3
_0806A212:
	mov r0, r8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806A224
sub_0806A224: @ 0x0806A224
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	mov sb, r0
	str r1, [sp, #0x10]
	ldr r0, [sp, #0x68]
	ldr r1, [sp, #0x6c]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x14]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x18]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x20]
	ldr r0, _0806A5FC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806A600 @ =0x0000A094
	adds r7, r0, r1
	movs r2, #0
	mov sl, r2
	mov r0, sb
	ldr r1, [sp, #0x70]
	bl sub_0806D430
	mov r3, sb
	ldr r0, [r3, #0x48]
	cmp r0, #0
	ble _0806A26E
	b _0806A378
_0806A26E:
	movs r4, #6
	ldrsh r0, [r7, r4]
	movs r1, #0x42
	add r1, sb
	mov r8, r1
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r0, r0, r1
	ldr r3, [sp, #0x14]
	lsls r6, r3, #0x10
	asrs r4, r6, #0x10
	str r4, [sp, #0x24]
	adds r0, r0, r4
	movs r2, #0xa
	ldrsh r1, [r7, r2]
	mov r5, sb
	adds r5, #0x46
	movs r3, #0
	ldrsh r2, [r5, r3]
	adds r1, r1, r2
	ldr r2, [sp, #0x18]
	lsls r4, r2, #0x10
	asrs r3, r4, #0x10
	str r3, [sp, #0x28]
	adds r1, r1, r3
	bl sub_0800207C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x2c]
	str r6, [sp, #0x40]
	adds r6, r5, #0
	str r4, [sp, #0x44]
	cmp r0, #0
	beq _0806A2FA
	mov r4, r8
	ldrh r0, [r4]
	ldrh r1, [r7, #6]
	adds r0, r0, r1
	ldr r2, [sp, #0x24]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	ldrh r3, [r7, #0xa]
	adds r1, r1, r3
	ldr r4, [sp, #0x28]
	adds r1, r4, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D104
	rsbs r1, r0, #0
	orrs r1, r0
	asrs r1, r1, #0x1f
	mov sl, r1
	movs r0, #0x80
	lsls r0, r0, #4
	ands r1, r0
	mov sl, r1
	ldr r2, [sp, #0x2c]
	lsls r1, r2, #0x10
	mov r3, sb
	ldr r0, [r3, #0x40]
	adds r0, r0, r1
	str r0, [r3, #0x40]
	movs r0, #2
	mov r4, sl
	orrs r4, r0
	mov sl, r4
_0806A2FA:
	movs r1, #6
	ldrsh r0, [r7, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r4, [sp, #0x24]
	adds r0, r0, r4
	movs r2, #0xa
	ldrsh r1, [r7, r2]
	movs r3, #0
	ldrsh r2, [r6, r3]
	adds r1, r1, r2
	ldr r4, [sp, #0x28]
	adds r1, r1, r4
	ldr r2, [sp, #0x20]
	adds r1, r1, r2
	bl sub_0800207C
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	beq _0806A36E
	mov r3, r8
	ldrh r0, [r3]
	ldrh r4, [r7, #6]
	adds r0, r0, r4
	ldr r1, [sp, #0x24]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	ldrh r2, [r7, #0xa]
	adds r1, r1, r2
	ldr r3, [sp, #0x28]
	adds r1, r3, r1
	ldr r4, [sp, #0x20]
	adds r1, r4, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D104
	cmp r0, #0
	beq _0806A35C
	movs r0, #0x80
	lsls r0, r0, #2
	mov r1, sl
	orrs r1, r0
	mov sl, r1
_0806A35C:
	lsls r0, r5, #0x10
	mov r2, sb
	ldr r1, [r2, #0x40]
	adds r1, r1, r0
	str r1, [r2, #0x40]
	movs r0, #2
	mov r3, sl
	orrs r3, r0
	mov sl, r3
_0806A36E:
	mov r4, sb
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bge _0806A378
	b _0806A48A
_0806A378:
	movs r1, #6
	ldrsh r0, [r7, r1]
	movs r2, #0x42
	add r2, sb
	mov r8, r2
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r4, [sp, #0x14]
	lsls r6, r4, #0x10
	asrs r1, r6, #0x10
	str r1, [sp, #0x30]
	adds r0, r0, r1
	ldr r2, [sp, #0x1c]
	adds r0, r0, r2
	movs r3, #0xa
	ldrsh r1, [r7, r3]
	mov r5, sb
	adds r5, #0x46
	movs r4, #0
	ldrsh r2, [r5, r4]
	adds r1, r1, r2
	ldr r2, [sp, #0x18]
	lsls r4, r2, #0x10
	asrs r3, r4, #0x10
	str r3, [sp, #0x34]
	adds r1, r1, r3
	bl sub_08002058
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x38]
	str r6, [sp, #0x40]
	adds r6, r5, #0
	str r4, [sp, #0x44]
	cmp r0, #0
	beq _0806A40A
	mov r4, r8
	ldrh r0, [r4]
	ldrh r1, [r7, #6]
	adds r0, r0, r1
	ldr r2, [sp, #0x30]
	adds r0, r2, r0
	ldr r3, [sp, #0x1c]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	ldrh r4, [r7, #0xa]
	adds r1, r1, r4
	ldr r2, [sp, #0x34]
	adds r1, r2, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D104
	cmp r0, #0
	beq _0806A3F6
	movs r0, #0x80
	lsls r0, r0, #3
	mov r3, sl
	orrs r3, r0
	mov sl, r3
_0806A3F6:
	ldr r4, [sp, #0x38]
	lsls r0, r4, #0x10
	mov r2, sb
	ldr r1, [r2, #0x40]
	adds r1, r1, r0
	str r1, [r2, #0x40]
	movs r0, #1
	mov r3, sl
	orrs r3, r0
	mov sl, r3
_0806A40A:
	movs r4, #6
	ldrsh r0, [r7, r4]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r4, [sp, #0x40]
	asrs r5, r4, #0x10
	adds r0, r0, r5
	ldr r1, [sp, #0x1c]
	adds r0, r0, r1
	movs r2, #0xa
	ldrsh r1, [r7, r2]
	movs r3, #0
	ldrsh r2, [r6, r3]
	adds r1, r1, r2
	ldr r2, [sp, #0x44]
	asrs r4, r2, #0x10
	adds r1, r1, r4
	ldr r3, [sp, #0x20]
	adds r1, r1, r3
	bl sub_08002058
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x3c]
	cmp r0, #0
	beq _0806A48A
	mov r1, r8
	ldrh r0, [r1]
	ldrh r2, [r7, #6]
	adds r0, r0, r2
	adds r0, r5, r0
	ldr r3, [sp, #0x1c]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	ldrh r2, [r7, #0xa]
	adds r1, r1, r2
	adds r1, r4, r1
	ldr r3, [sp, #0x20]
	adds r1, r3, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D104
	cmp r0, #0
	beq _0806A476
	movs r0, #0x80
	lsls r0, r0, #1
	mov r4, sl
	orrs r4, r0
	mov sl, r4
_0806A476:
	ldr r1, [sp, #0x3c]
	lsls r0, r1, #0x10
	mov r2, sb
	ldr r1, [r2, #0x40]
	adds r1, r1, r0
	str r1, [r2, #0x40]
	movs r0, #1
	mov r3, sl
	orrs r3, r0
	mov sl, r3
_0806A48A:
	mov r0, sb
	ldr r1, [sp, #0x70]
	bl sub_0806D460
	mov r4, sb
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bgt _0806A51E
	movs r1, #6
	ldrsh r0, [r7, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r4, [sp, #0x40]
	asrs r5, r4, #0x10
	adds r0, r0, r5
	movs r2, #0xa
	ldrsh r1, [r7, r2]
	movs r3, #0
	ldrsh r2, [r6, r3]
	adds r1, r1, r2
	ldr r2, [sp, #0x44]
	asrs r4, r2, #0x10
	adds r1, r1, r4
	bl sub_08001C1C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _0806A4DA
	lsls r0, r0, #0x10
	mov r3, sb
	ldr r1, [r3, #0x44]
	adds r1, r1, r0
	str r1, [r3, #0x44]
	movs r0, #8
	mov r1, sl
	orrs r1, r0
	mov sl, r1
_0806A4DA:
	movs r2, #6
	ldrsh r0, [r7, r2]
	mov r3, r8
	movs r2, #0
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	adds r0, r0, r5
	ldr r3, [sp, #0x1c]
	adds r0, r0, r3
	movs r2, #0xa
	ldrsh r1, [r7, r2]
	movs r3, #0
	ldrsh r2, [r6, r3]
	adds r1, r1, r2
	adds r1, r1, r4
	bl sub_08001C1C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _0806A516
	lsls r0, r0, #0x10
	mov r4, sb
	ldr r1, [r4, #0x44]
	adds r1, r1, r0
	str r1, [r4, #0x44]
	movs r0, #8
	mov r1, sl
	orrs r1, r0
	mov sl, r1
_0806A516:
	mov r2, sb
	ldr r0, [r2, #0x4c]
	cmp r0, #0
	blt _0806A5BA
_0806A51E:
	movs r3, #6
	ldrsh r0, [r7, r3]
	mov r4, r8
	movs r2, #0
	ldrsh r1, [r4, r2]
	adds r0, r0, r1
	ldr r3, [sp, #0x40]
	asrs r1, r3, #0x10
	adds r0, r0, r1
	movs r4, #0xa
	ldrsh r1, [r7, r4]
	movs r3, #0
	ldrsh r2, [r6, r3]
	adds r1, r1, r2
	ldr r4, [sp, #0x44]
	asrs r2, r4, #0x10
	adds r1, r1, r2
	ldr r2, [sp, #0x20]
	adds r1, r1, r2
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _0806A56A
	lsls r1, r0, #0x10
	mov r3, sb
	ldr r0, [r3, #0x44]
	adds r0, r0, r1
	str r0, [r3, #0x44]
	ldr r4, [sp, #0x10]
	cmp r4, #0
	beq _0806A562
	str r4, [r3, #0x4c]
_0806A562:
	movs r0, #4
	mov r1, sl
	orrs r1, r0
	mov sl, r1
_0806A56A:
	movs r2, #6
	ldrsh r0, [r7, r2]
	mov r3, r8
	movs r4, #0
	ldrsh r1, [r3, r4]
	adds r0, r0, r1
	ldr r2, [sp, #0x40]
	asrs r1, r2, #0x10
	adds r0, r0, r1
	ldr r3, [sp, #0x1c]
	adds r0, r0, r3
	movs r4, #0xa
	ldrsh r1, [r7, r4]
	movs r3, #0
	ldrsh r2, [r6, r3]
	adds r1, r1, r2
	ldr r4, [sp, #0x44]
	asrs r2, r4, #0x10
	adds r1, r1, r2
	ldr r2, [sp, #0x20]
	adds r1, r1, r2
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _0806A5BA
	lsls r1, r0, #0x10
	mov r3, sb
	ldr r0, [r3, #0x44]
	adds r0, r0, r1
	str r0, [r3, #0x44]
	ldr r4, [sp, #0x10]
	cmp r4, #0
	beq _0806A5B2
	str r4, [r3, #0x4c]
_0806A5B2:
	movs r0, #4
	mov r1, sl
	orrs r1, r0
	mov sl, r1
_0806A5BA:
	mov r2, r8
	ldrh r0, [r2]
	ldrh r3, [r7, #6]
	adds r0, r0, r3
	ldr r4, [sp, #0x40]
	asrs r5, r4, #0x10
	adds r0, r5, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	ldrh r2, [r7, #0xa]
	adds r1, r1, r2
	ldr r3, [sp, #0x44]
	asrs r4, r3, #0x10
	adds r1, r4, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	str r0, [sp]
	mov r1, r8
	ldrh r0, [r1]
	ldrh r2, [r7, #6]
	adds r0, r0, r2
	adds r0, r5, r0
	ldr r3, [sp, #0x1c]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	ldrh r2, [r7, #0xa]
	b _0806A604
	.align 2, 0
_0806A5FC: .4byte gEwramData
_0806A600: .4byte 0x0000A094
_0806A604:
	adds r1, r1, r2
	adds r1, r4, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	str r0, [sp, #4]
	mov r3, r8
	ldrh r0, [r3]
	ldrh r1, [r7, #6]
	adds r0, r0, r1
	adds r0, r5, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	ldrh r2, [r7, #0xa]
	adds r1, r1, r2
	adds r1, r4, r1
	ldr r3, [sp, #0x20]
	adds r1, r3, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	str r0, [sp, #8]
	mov r1, r8
	ldrh r0, [r1]
	ldrh r2, [r7, #6]
	adds r0, r0, r2
	adds r5, r5, r0
	ldr r3, [sp, #0x1c]
	adds r5, r3, r5
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	ldrh r0, [r6]
	ldrh r7, [r7, #0xa]
	adds r0, r0, r7
	adds r4, r4, r0
	ldr r0, [sp, #0x20]
	adds r4, r0, r4
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806D0B8
	str r0, [sp, #0xc]
	ldr r0, [sp]
	cmp r0, #3
	bne _0806A676
	ldr r0, [sp, #4]
	cmp r0, #3
	bne _0806A676
	movs r0, #0x80
	mov r1, sl
	orrs r1, r0
	mov sl, r1
_0806A676:
	ldr r1, [sp, #8]
	cmp r1, #3
	bne _0806A68A
	ldr r0, [sp, #0xc]
	cmp r0, #3
	bne _0806A68A
	movs r0, #0x40
	mov r2, sl
	orrs r2, r0
	mov sl, r2
_0806A68A:
	ldr r0, [sp]
	cmp r0, #3
	bne _0806A69C
	cmp r1, #3
	bne _0806A69C
	movs r0, #0x20
	mov r3, sl
	orrs r3, r0
	mov sl, r3
_0806A69C:
	ldr r0, [sp, #4]
	cmp r0, #3
	bne _0806A6B0
	ldr r0, [sp, #0xc]
	cmp r0, #3
	bne _0806A6B0
	movs r0, #0x10
	mov r4, sl
	orrs r4, r0
	mov sl, r4
_0806A6B0:
	mov r0, sl
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806A6C4
sub_0806A6C4: @ 0x0806A6C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	mov sl, r0
	str r1, [sp, #0x10]
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x14]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x18]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x20]
	ldr r0, _0806AA88 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806AA8C @ =0x0000A094
	adds r1, r0, r1
	str r1, [sp, #0x24]
	movs r2, #0
	str r2, [sp, #0x28]
	mov r0, sl
	ldr r1, [sp, #0x58]
	bl sub_0806D430
	mov r3, sl
	ldr r0, [r3, #0x48]
	cmp r0, #0
	ble _0806A710
	b _0806A820
_0806A710:
	ldr r4, [sp, #0x24]
	movs r0, #6
	ldrsh r1, [r4, r0]
	movs r2, #0x42
	add r2, sl
	mov r8, r2
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r1, r1, r0
	ldr r4, [sp, #0x14]
	lsls r6, r4, #0x10
	asrs r0, r6, #0x10
	adds r1, r1, r0
	mov sb, r1
	ldr r0, [sp, #0x24]
	movs r2, #0xa
	ldrsh r1, [r0, r2]
	mov r5, sl
	adds r5, #0x46
	movs r3, #0
	ldrsh r0, [r5, r3]
	adds r1, r1, r0
	ldr r0, [sp, #0x18]
	lsls r4, r0, #0x10
	asrs r0, r4, #0x10
	adds r7, r1, r0
	mov r0, sb
	adds r1, r7, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #3
	ands r1, r0
	str r6, [sp, #0x2c]
	adds r6, r5, #0
	cmp r1, #1
	beq _0806A79A
	mov r0, sb
	adds r1, r7, #0
	bl sub_0800207C
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	beq _0806A79A
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D104
	rsbs r1, r0, #0
	orrs r1, r0
	asrs r1, r1, #0x1f
	movs r0, #0x80
	lsls r0, r0, #4
	ands r1, r0
	str r1, [sp, #0x28]
	lsls r1, r5, #0x10
	mov r2, sl
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r2, #0x40]
	movs r0, #2
	ldr r3, [sp, #0x28]
	orrs r3, r0
	str r3, [sp, #0x28]
_0806A79A:
	ldr r1, [sp, #0x24]
	movs r2, #6
	ldrsh r0, [r1, r2]
	mov r3, r8
	movs r2, #0
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	ldr r3, [sp, #0x2c]
	asrs r1, r3, #0x10
	adds r0, r0, r1
	mov sb, r0
	ldr r1, [sp, #0x24]
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	movs r3, #0
	ldrsh r1, [r6, r3]
	adds r0, r0, r1
	asrs r1, r4, #0x10
	adds r0, r0, r1
	ldr r1, [sp, #0x20]
	adds r7, r0, r1
	mov r0, sb
	adds r1, r7, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _0806A816
	mov r0, sb
	adds r1, r7, #0
	bl sub_0800207C
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	beq _0806A816
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D104
	cmp r0, #0
	beq _0806A804
	movs r0, #0x80
	lsls r0, r0, #2
	ldr r3, [sp, #0x28]
	orrs r3, r0
	str r3, [sp, #0x28]
_0806A804:
	lsls r0, r5, #0x10
	mov r2, sl
	ldr r1, [r2, #0x40]
	adds r1, r1, r0
	str r1, [r2, #0x40]
	movs r0, #2
	ldr r3, [sp, #0x28]
	orrs r3, r0
	str r3, [sp, #0x28]
_0806A816:
	mov r1, sl
	ldr r0, [r1, #0x48]
	cmp r0, #0
	bge _0806A820
	b _0806A92E
_0806A820:
	ldr r2, [sp, #0x24]
	movs r3, #6
	ldrsh r1, [r2, r3]
	movs r4, #0x42
	add r4, sl
	mov r8, r4
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r1, r1, r0
	ldr r3, [sp, #0x14]
	lsls r6, r3, #0x10
	asrs r0, r6, #0x10
	adds r1, r1, r0
	ldr r4, [sp, #0x1c]
	adds r1, r1, r4
	mov sb, r1
	ldr r0, [sp, #0x24]
	movs r2, #0xa
	ldrsh r1, [r0, r2]
	mov r5, sl
	adds r5, #0x46
	movs r3, #0
	ldrsh r0, [r5, r3]
	adds r1, r1, r0
	ldr r0, [sp, #0x18]
	lsls r4, r0, #0x10
	asrs r0, r4, #0x10
	adds r7, r1, r0
	mov r0, sb
	adds r1, r7, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #3
	ands r1, r0
	str r6, [sp, #0x2c]
	adds r6, r5, #0
	cmp r1, #1
	beq _0806A8AE
	mov r0, sb
	adds r1, r7, #0
	bl sub_08002058
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	beq _0806A8AE
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D104
	cmp r0, #0
	beq _0806A89C
	movs r0, #0x80
	lsls r0, r0, #3
	ldr r2, [sp, #0x28]
	orrs r2, r0
	str r2, [sp, #0x28]
_0806A89C:
	lsls r0, r5, #0x10
	mov r3, sl
	ldr r1, [r3, #0x40]
	adds r1, r1, r0
	str r1, [r3, #0x40]
	movs r0, #1
	ldr r1, [sp, #0x28]
	orrs r1, r0
	str r1, [sp, #0x28]
_0806A8AE:
	ldr r2, [sp, #0x24]
	movs r3, #6
	ldrsh r0, [r2, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [sp, #0x2c]
	asrs r1, r2, #0x10
	adds r0, r0, r1
	ldr r3, [sp, #0x1c]
	adds r0, r0, r3
	mov sb, r0
	ldr r1, [sp, #0x24]
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	movs r3, #0
	ldrsh r1, [r6, r3]
	adds r0, r0, r1
	asrs r1, r4, #0x10
	adds r0, r0, r1
	ldr r1, [sp, #0x20]
	adds r7, r0, r1
	mov r0, sb
	adds r1, r7, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _0806A92E
	mov r0, sb
	adds r1, r7, #0
	bl sub_08002058
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	beq _0806A92E
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D104
	cmp r0, #0
	beq _0806A91C
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r3, [sp, #0x28]
	orrs r3, r0
	str r3, [sp, #0x28]
_0806A91C:
	lsls r0, r5, #0x10
	mov r2, sl
	ldr r1, [r2, #0x40]
	adds r1, r1, r0
	str r1, [r2, #0x40]
	movs r0, #1
	ldr r3, [sp, #0x28]
	orrs r3, r0
	str r3, [sp, #0x28]
_0806A92E:
	mov r0, sl
	ldr r1, [sp, #0x58]
	bl sub_0806D460
	mov r1, sl
	ldr r0, [r1, #0x4c]
	cmp r0, #0
	bgt _0806AA3C
	ldr r2, [sp, #0x24]
	movs r3, #6
	ldrsh r0, [r2, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [sp, #0x2c]
	asrs r1, r2, #0x10
	adds r0, r0, r1
	mov sb, r0
	ldr r3, [sp, #0x24]
	movs r1, #0xa
	ldrsh r0, [r3, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	adds r0, r0, r1
	asrs r1, r4, #0x10
	adds r7, r0, r1
	mov r0, sb
	adds r1, r7, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _0806A9B6
	mov r0, sb
	adds r1, r7, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	beq _0806A9B6
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D104
	cmp r0, #0
	beq _0806A9A4
	movs r0, #0x80
	lsls r0, r0, #4
	ldr r1, [sp, #0x28]
	orrs r1, r0
	str r1, [sp, #0x28]
_0806A9A4:
	lsls r0, r5, #0x10
	mov r2, sl
	ldr r1, [r2, #0x44]
	adds r1, r1, r0
	str r1, [r2, #0x44]
	movs r0, #8
	ldr r3, [sp, #0x28]
	orrs r3, r0
	str r3, [sp, #0x28]
_0806A9B6:
	ldr r1, [sp, #0x24]
	movs r2, #6
	ldrsh r0, [r1, r2]
	mov r3, r8
	movs r2, #0
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	ldr r3, [sp, #0x2c]
	asrs r1, r3, #0x10
	adds r0, r0, r1
	ldr r1, [sp, #0x1c]
	adds r0, r0, r1
	mov sb, r0
	ldr r2, [sp, #0x24]
	movs r3, #0xa
	ldrsh r0, [r2, r3]
	movs r2, #0
	ldrsh r1, [r6, r2]
	adds r0, r0, r1
	asrs r1, r4, #0x10
	adds r7, r0, r1
	mov r0, sb
	adds r1, r7, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _0806AA32
	mov r0, sb
	adds r1, r7, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	beq _0806AA32
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D104
	cmp r0, #0
	beq _0806AA20
	movs r0, #0x80
	lsls r0, r0, #3
	ldr r1, [sp, #0x28]
	orrs r1, r0
	str r1, [sp, #0x28]
_0806AA20:
	lsls r0, r5, #0x10
	mov r2, sl
	ldr r1, [r2, #0x44]
	adds r1, r1, r0
	str r1, [r2, #0x44]
	movs r0, #8
	ldr r3, [sp, #0x28]
	orrs r3, r0
	str r3, [sp, #0x28]
_0806AA32:
	mov r1, sl
	ldr r0, [r1, #0x4c]
	cmp r0, #0
	bge _0806AA3C
	b _0806AB52
_0806AA3C:
	ldr r2, [sp, #0x24]
	movs r3, #6
	ldrsh r0, [r2, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [sp, #0x2c]
	asrs r1, r2, #0x10
	adds r0, r0, r1
	mov sb, r0
	ldr r3, [sp, #0x24]
	movs r1, #0xa
	ldrsh r0, [r3, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	adds r0, r0, r1
	asrs r1, r4, #0x10
	adds r0, r0, r1
	ldr r3, [sp, #0x20]
	adds r7, r0, r3
	mov r0, sb
	adds r1, r7, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _0806AACA
	mov r0, sb
	adds r1, r7, #0
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	b _0806AA90
	.align 2, 0
_0806AA88: .4byte gEwramData
_0806AA8C: .4byte 0x0000A094
_0806AA90:
	cmp r5, #0
	beq _0806AACA
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D104
	cmp r0, #0
	beq _0806AAB0
	movs r0, #0x80
	lsls r0, r0, #2
	ldr r2, [sp, #0x28]
	orrs r2, r0
	str r2, [sp, #0x28]
_0806AAB0:
	lsls r1, r5, #0x10
	mov r3, sl
	ldr r0, [r3, #0x44]
	adds r0, r0, r1
	str r0, [r3, #0x44]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0806AAC2
	str r0, [r3, #0x4c]
_0806AAC2:
	movs r0, #4
	ldr r1, [sp, #0x28]
	orrs r1, r0
	str r1, [sp, #0x28]
_0806AACA:
	ldr r2, [sp, #0x24]
	movs r3, #6
	ldrsh r0, [r2, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [sp, #0x2c]
	asrs r1, r2, #0x10
	adds r0, r0, r1
	ldr r3, [sp, #0x1c]
	adds r0, r0, r3
	mov sb, r0
	ldr r1, [sp, #0x24]
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	movs r3, #0
	ldrsh r1, [r6, r3]
	adds r0, r0, r1
	asrs r1, r4, #0x10
	adds r0, r0, r1
	ldr r1, [sp, #0x20]
	adds r7, r0, r1
	mov r0, sb
	adds r1, r7, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _0806AB52
	mov r0, sb
	adds r1, r7, #0
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	beq _0806AB52
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D104
	cmp r0, #0
	beq _0806AB38
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r3, [sp, #0x28]
	orrs r3, r0
	str r3, [sp, #0x28]
_0806AB38:
	lsls r1, r5, #0x10
	mov r2, sl
	ldr r0, [r2, #0x44]
	adds r0, r0, r1
	str r0, [r2, #0x44]
	ldr r3, [sp, #0x10]
	cmp r3, #0
	beq _0806AB4A
	str r3, [r2, #0x4c]
_0806AB4A:
	movs r0, #4
	ldr r1, [sp, #0x28]
	orrs r1, r0
	str r1, [sp, #0x28]
_0806AB52:
	mov r2, r8
	ldrh r0, [r2]
	ldr r3, [sp, #0x24]
	ldrh r3, [r3, #6]
	adds r0, r0, r3
	ldr r1, [sp, #0x2c]
	asrs r5, r1, #0x10
	adds r0, r5, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	ldr r2, [sp, #0x24]
	ldrh r2, [r2, #0xa]
	adds r1, r1, r2
	asrs r4, r4, #0x10
	adds r1, r4, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	str r0, [sp]
	mov r3, r8
	ldrh r0, [r3]
	ldr r1, [sp, #0x24]
	ldrh r1, [r1, #6]
	adds r0, r0, r1
	adds r0, r5, r0
	ldr r2, [sp, #0x1c]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	ldr r3, [sp, #0x24]
	ldrh r3, [r3, #0xa]
	adds r1, r1, r3
	adds r1, r4, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	str r0, [sp, #4]
	mov r1, r8
	ldrh r0, [r1]
	ldr r2, [sp, #0x24]
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	adds r0, r5, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	ldr r3, [sp, #0x24]
	ldrh r3, [r3, #0xa]
	adds r1, r1, r3
	adds r1, r4, r1
	ldr r2, [sp, #0x20]
	adds r1, r2, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	str r0, [sp, #8]
	mov r3, r8
	ldrh r0, [r3]
	ldr r1, [sp, #0x24]
	ldrh r1, [r1, #6]
	adds r0, r0, r1
	adds r5, r5, r0
	ldr r2, [sp, #0x1c]
	adds r5, r2, r5
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	ldrh r0, [r6]
	ldr r3, [sp, #0x24]
	ldrh r3, [r3, #0xa]
	adds r0, r0, r3
	adds r4, r4, r0
	ldr r0, [sp, #0x20]
	adds r4, r0, r4
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806D0B8
	str r0, [sp, #0xc]
	ldr r0, [sp]
	cmp r0, #3
	bne _0806AC10
	ldr r0, [sp, #4]
	cmp r0, #3
	bne _0806AC10
	movs r0, #0x80
	ldr r1, [sp, #0x28]
	orrs r1, r0
	str r1, [sp, #0x28]
_0806AC10:
	ldr r1, [sp, #8]
	cmp r1, #3
	bne _0806AC24
	ldr r0, [sp, #0xc]
	cmp r0, #3
	bne _0806AC24
	movs r0, #0x40
	ldr r2, [sp, #0x28]
	orrs r2, r0
	str r2, [sp, #0x28]
_0806AC24:
	ldr r0, [sp]
	cmp r0, #3
	bne _0806AC36
	cmp r1, #3
	bne _0806AC36
	movs r0, #0x20
	ldr r3, [sp, #0x28]
	orrs r3, r0
	str r3, [sp, #0x28]
_0806AC36:
	ldr r0, [sp, #4]
	cmp r0, #3
	bne _0806AC4A
	ldr r0, [sp, #0xc]
	cmp r0, #3
	bne _0806AC4A
	movs r0, #0x10
	ldr r4, [sp, #0x28]
	orrs r4, r0
	str r4, [sp, #0x28]
_0806AC4A:
	ldr r0, [sp, #0x28]
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0806AC5C
sub_0806AC5C: @ 0x0806AC5C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r0, _0806ACC4 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0806ACC8 @ =0x0000A094
	adds r1, r1, r0
	adds r0, r6, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r3, #6
	ldrsh r0, [r1, r3]
	adds r7, r2, r0
	adds r0, r6, #0
	adds r0, #0x46
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r3, #0xa
	ldrsh r0, [r1, r3]
	adds r5, r2, r0
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0806ACDA
	adds r1, r5, #1
	adds r0, r7, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0
	beq _0806AD1C
	asrs r3, r1, #6
	movs r2, #4
	ands r2, r0
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806ACCC
	cmp r2, #0
	beq _0806ACD0
	b _0806AD1C
	.align 2, 0
_0806ACC4: .4byte gEwramData
_0806ACC8: .4byte 0x0000A094
_0806ACCC:
	cmp r2, #0
	beq _0806AD1C
_0806ACD0:
	cmp r3, #1
	beq _0806AD0A
	cmp r3, #2
	beq _0806AD12
	b _0806AD1C
_0806ACDA:
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0
	beq _0806AD1C
	asrs r3, r1, #6
	movs r2, #4
	ands r2, r0
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806ACFC
	cmp r2, #0
	beq _0806AD00
	b _0806AD1C
_0806ACFC:
	cmp r2, #0
	beq _0806AD1C
_0806AD00:
	cmp r3, #1
	beq _0806AD0A
	cmp r3, #2
	beq _0806AD12
	b _0806AD1C
_0806AD0A:
	lsrs r0, r4, #0x1f
	adds r0, r4, r0
	asrs r0, r0, #1
	b _0806AD1E
_0806AD12:
	lsls r0, r4, #1
	movs r1, #3
	bl __divsi3
	b _0806AD1E
_0806AD1C:
	adds r0, r4, #0
_0806AD1E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0806AD24
sub_0806AD24: @ 0x0806AD24
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x34
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0806AD88
	adds r0, r4, #0
	bl sub_0806AE54
	cmp r0, #0
	bne _0806ADB4
	ldr r0, _0806AD8C @ =gEwramData
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806AD7C
	ldr r1, _0806AD90 @ =0x000004BE
	adds r0, r2, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0806AD7C
	ldr r2, _0806AD94 @ =0x080E9644
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r0, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	beq _0806AD78
	movs r1, #0
_0806AD78:
	cmp r1, #0
	bne _0806ADB4
_0806AD7C:
	ldrh r1, [r4, #0x38]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0806AD98
_0806AD88:
	movs r0, #0
	b _0806ADB6
	.align 2, 0
_0806AD8C: .4byte gEwramData
_0806AD90: .4byte 0x000004BE
_0806AD94: .4byte 0x080E9644
_0806AD98:
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x70
	orrs r0, r1
	strb r0, [r2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	adds r1, r4, #0
	adds r1, #0x2c
	strb r0, [r1]
_0806ADB4:
	movs r0, #1
_0806ADB6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0806ADBC
sub_0806ADBC: @ 0x0806ADBC
	push {lr}
	adds r3, r0, #0
	movs r1, #0x34
	ldrsh r0, [r3, r1]
	cmp r0, #0
	ble _0806AE20
	adds r0, r3, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806AE4C
	ldr r0, _0806AE24 @ =gEwramData
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806AE14
	ldr r1, _0806AE28 @ =0x000004BE
	adds r0, r2, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0806AE14
	ldr r2, _0806AE2C @ =0x080E9644
	adds r0, r3, #0
	adds r0, #0x36
	ldrb r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r0, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	beq _0806AE10
	movs r1, #0
_0806AE10:
	cmp r1, #0
	bne _0806AE4C
_0806AE14:
	ldrh r1, [r3, #0x38]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0806AE30
_0806AE20:
	movs r0, #0
	b _0806AE4E
	.align 2, 0
_0806AE24: .4byte gEwramData
_0806AE28: .4byte 0x000004BE
_0806AE2C: .4byte 0x080E9644
_0806AE30:
	adds r2, r3, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x70
	orrs r0, r1
	strb r0, [r2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	adds r1, r3, #0
	adds r1, #0x2c
	strb r0, [r1]
_0806AE4C:
	movs r0, #1
_0806AE4E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806AE54
sub_0806AE54: @ 0x0806AE54
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x2d
	ldrb r0, [r1]
	cmp r0, #0
	beq _0806AEA4
	subs r0, #1
	strb r0, [r1]
	movs r1, #0xff
	ands r0, r1
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0806AE84
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	b _0806AEA0
_0806AE84:
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
_0806AEA0:
	movs r0, #1
	b _0806AEA6
_0806AEA4:
	movs r0, #0
_0806AEA6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806AEAC
sub_0806AEAC: @ 0x0806AEAC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	adds r7, r0, #0
	ldrb r1, [r7, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0806AF2E
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	ldr r6, [r7, #0x40]
	ldr r5, [r7, #0x44]
	ldr r1, _0806AF44 @ =0xFFFA0000
	adds r5, r5, r1
	subs r0, #1
	mov r8, r0
	bl RandomNumberGenerator
	movs r1, #0x80
	lsls r1, r1, #0xd
	bl __umodsi3
	adds r4, r0, #0
	ldr r0, _0806AF48 @ =0xFFF80000
	adds r4, r4, r0
	bl RandomNumberGenerator
	movs r1, #0xc0
	lsls r1, r1, #0xc
	bl __umodsi3
	ldr r1, _0806AF44 @ =0xFFFA0000
	adds r0, r0, r1
	adds r6, r6, r4
	adds r5, r5, r0
	ldr r2, _0806AF4C @ =sub_0806E524
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806AF2E
	str r6, [r4, #0x40]
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
_0806AF2E:
	ldrb r4, [r7, #0xd]
	adds r5, r4, #0
	ldr r1, _0806AF50 @ =0x08118CE0
	mov r0, sp
	movs r2, #0x28
	bl memcpy
	cmp r4, #0x27
	ble _0806AF54
	movs r2, #0
	b _0806AF5C
	.align 2, 0
_0806AF44: .4byte 0xFFFA0000
_0806AF48: .4byte 0xFFF80000
_0806AF4C: .4byte sub_0806E524
_0806AF50: .4byte 0x08118CE0
_0806AF54:
	mov r1, sp
	adds r0, r1, r5
	movs r2, #0
	ldrsb r2, [r0, r2]
_0806AF5C:
	adds r3, r7, #0
	adds r3, #0x58
	movs r0, #1
	ands r2, r0
	lsls r2, r2, #5
	ldrb r1, [r3]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0806AF8A
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0806AF8A:
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806AF98
sub_0806AF98: @ 0x0806AF98
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _0806AFCC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806AFD0 @ =0x0000A094
	adds r6, r0, r1
	movs r2, #6
	ldrsh r0, [r6, r2]
	adds r5, r7, #0
	adds r5, #0x42
	movs r3, #0
	ldrsh r1, [r5, r3]
	adds r0, r0, r1
	movs r2, #0xa
	ldrsh r1, [r6, r2]
	adds r4, r7, #0
	adds r4, #0x46
	movs r3, #0
	ldrsh r2, [r4, r3]
	adds r1, r1, r2
	bl sub_08001D94
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0806B006
	b _0806AFDA
	.align 2, 0
_0806AFCC: .4byte gEwramData
_0806AFD0: .4byte 0x0000A094
_0806AFD4:
	ldrh r0, [r4]
	subs r0, #8
	strh r0, [r4]
_0806AFDA:
	movs r1, #6
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r0, r0, r1
	movs r3, #0xa
	ldrsh r1, [r6, r3]
	movs r3, #0
	ldrsh r2, [r4, r3]
	adds r1, r1, r2
	bl sub_08001D94
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806AFD4
	ldrh r0, [r4]
	adds r0, #7
	strh r0, [r4]
	b _0806B024
_0806B000:
	ldrh r0, [r4]
	adds r0, #8
	strh r0, [r4]
_0806B006:
	movs r1, #6
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r0, r0, r1
	movs r3, #0xa
	ldrsh r1, [r6, r3]
	movs r3, #0
	ldrsh r2, [r4, r3]
	adds r1, r1, r2
	bl sub_08001D94
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0806B000
_0806B024:
	movs r1, #6
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r0, r0, r1
	movs r3, #0xa
	ldrsh r1, [r6, r3]
	movs r3, #0
	ldrsh r2, [r4, r3]
	adds r1, r1, r2
	bl sub_08001D94
	lsls r0, r0, #0x10
	ldr r1, [r7, #0x44]
	adds r1, r1, r0
	str r1, [r7, #0x44]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806B04C
sub_0806B04C: @ 0x0806B04C
	mov ip, r0
	mov r1, ip
	adds r1, #0x5c
	movs r0, #0x12
	strb r0, [r1]
	ldr r2, _0806B0A4 @ =0x080E9644
	mov r3, ip
	adds r3, #0x36
	ldrb r1, [r3]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #0xc]
	mov r1, ip
	strh r0, [r1, #0x34]
	ldrb r1, [r3]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #0xe]
	mov r1, ip
	strh r0, [r1, #0x2e]
	ldrb r1, [r3]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #0x13]
	mov r0, ip
	adds r0, #0x3c
	strb r1, [r0]
	ldrb r1, [r3]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #0x14]
	mov r0, ip
	adds r0, #0x3d
	strb r1, [r0]
	bx lr
	.align 2, 0
_0806B0A4: .4byte 0x080E9644

	thumb_func_start sub_0806B0A8
sub_0806B0A8: @ 0x0806B0A8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0806B0D8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806B0DC @ =0x0000A094
	adds r0, r0, r1
	ldr r2, [r0]
	adds r3, r0, #0
	adds r0, r4, #0
	adds r0, #0x42
	movs r5, #0
	ldrsh r1, [r0, r5]
	movs r5, #6
	ldrsh r0, [r3, r5]
	adds r1, r1, r0
	cmp r1, #0
	bge _0806B0CC
	adds r1, #7
_0806B0CC:
	asrs r1, r1, #3
	ldrb r0, [r2]
	cmp r0, #1
	beq _0806B0E0
	lsls r0, r0, #5
	b _0806B0E2
	.align 2, 0
_0806B0D8: .4byte gEwramData
_0806B0DC: .4byte 0x0000A094
_0806B0E0:
	movs r0, #0x1e
_0806B0E2:
	cmp r1, #0
	blt _0806B118
	cmp r1, r0
	bge _0806B118
	adds r0, r4, #0
	adds r0, #0x46
	movs r4, #0
	ldrsh r1, [r0, r4]
	movs r5, #0xa
	ldrsh r0, [r3, r5]
	adds r0, r1, r0
	cmp r0, #0
	bge _0806B0FE
	adds r0, #7
_0806B0FE:
	asrs r1, r0, #3
	ldrb r0, [r2, #1]
	cmp r0, #1
	beq _0806B10A
	lsls r0, r0, #5
	b _0806B10C
_0806B10A:
	movs r0, #0x1a
_0806B10C:
	cmp r1, #0
	blt _0806B118
	cmp r1, r0
	bge _0806B118
	movs r0, #0
	b _0806B11A
_0806B118:
	movs r0, #1
_0806B11A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0806B120
sub_0806B120: @ 0x0806B120
	push {r4, r5, lr}
	mov ip, r0
	adds r2, r1, #0
	ldr r0, _0806B154 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806B158 @ =0x0000A094
	adds r0, r0, r1
	ldr r4, [r0]
	adds r3, r0, #0
	mov r0, ip
	adds r0, #0x42
	movs r5, #0
	ldrsh r1, [r0, r5]
	movs r5, #6
	ldrsh r0, [r3, r5]
	adds r1, r1, r0
	cmp r1, #0
	bge _0806B146
	adds r1, #7
_0806B146:
	asrs r1, r1, #3
	ldrb r0, [r4]
	cmp r0, #1
	beq _0806B15C
	lsls r0, r0, #5
	b _0806B15E
	.align 2, 0
_0806B154: .4byte gEwramData
_0806B158: .4byte 0x0000A094
_0806B15C:
	movs r0, #0x1e
_0806B15E:
	cmp r1, r2
	bge _0806B178
	lsls r1, r2, #3
	ldrh r0, [r3, #6]
	subs r1, r1, r0
	mov r3, ip
	adds r3, #0x42
	movs r2, #0
	strh r1, [r3]
	mov r0, ip
	adds r0, #0x40
	strh r2, [r0]
	b _0806B198
_0806B178:
	subs r0, r0, r2
	cmp r1, r0
	bgt _0806B182
	movs r0, #0
	b _0806B19A
_0806B182:
	adds r0, #1
	lsls r0, r0, #3
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	mov r2, ip
	adds r2, #0x42
	movs r1, #0
	strh r0, [r2]
	mov r0, ip
	adds r0, #0x40
	strh r1, [r0]
_0806B198:
	movs r0, #1
_0806B19A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0806B1A0
sub_0806B1A0: @ 0x0806B1A0
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806B1D8
	adds r1, r4, #0
	adds r1, #8
	adds r0, r5, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806B1F0
	subs r1, r4, #7
	adds r0, r5, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806B1F4
	b _0806B1F0
_0806B1D8:
	subs r1, r4, #7
	adds r0, r5, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0806B1F4
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	bne _0806B1F4
_0806B1F0:
	movs r0, #1
	b _0806B1F6
_0806B1F4:
	movs r0, #0
_0806B1F6:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0806B1FC
sub_0806B1FC: @ 0x0806B1FC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x64
	ldr r0, _0806B234 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0806B238 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	adds r0, #0x65
	ldrb r0, [r0]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r5, [r0, #8]
	ldrb r0, [r0, #4]
	cmp r0, #1
	beq _0806B242
	cmp r0, #1
	bgt _0806B23C
	cmp r0, #0
	beq _0806B286
	b _0806B296
	.align 2, 0
_0806B234: .4byte gEwramData
_0806B238: .4byte 0x0001017C
_0806B23C:
	cmp r0, #2
	beq _0806B264
	b _0806B296
_0806B242:
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #0xfb
	ands r1, r0
	movs r0, #0xfd
	ands r1, r0
	strb r1, [r2]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080428B4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08042848
	b _0806B296
_0806B264:
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080428B4
	adds r1, r5, #4
	adds r0, r4, #0
	bl sub_08042848
	b _0806B296
_0806B286:
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_0806B296:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0806B29C
sub_0806B29C: @ 0x0806B29C
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0806B350 @ =0x08118D24
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, #4]
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0806B358
	ldr r0, _0806B354 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1e]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806B2E4
	adds r1, r5, #0
	adds r1, #0x6d
	ldrb r0, [r1]
	cmp r0, #0
	beq _0806B2E4
	adds r1, r0, #0
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0806B2E4:
	ldr r4, _0806B354 @ =gEwramData
	ldr r0, [r4]
	ldrh r1, [r0, #0x1e]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806B304
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r1, [r0]
	adds r1, #1
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0806B304:
	ldr r0, [r4]
	ldrh r1, [r0, #0x1e]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806B320
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r1, [r0]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0806B320:
	adds r0, r5, #0
	bl sub_0803F17C
	ldr r0, [r4]
	ldrh r1, [r0, #0x1e]
	movs r0, #0x82
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806B3DA
	adds r0, r5, #0
	adds r0, #0x20
	movs r2, #0
	movs r1, #1
	strb r1, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, r5, #0
	mov r1, sp
	movs r3, #1
	bl sub_0803F0E4
	b _0806B3DA
	.align 2, 0
_0806B350: .4byte 0x08118D24
_0806B354: .4byte gEwramData
_0806B358:
	adds r3, r5, #0
	adds r3, #0x6f
	movs r0, #0
	strb r0, [r3]
	ldr r2, _0806B3E4 @ =gEwramData
	ldr r0, [r2]
	ldrh r1, [r0, #0x1e]
	movs r0, #0x40
	ands r0, r1
	adds r4, r5, #0
	adds r4, #0x21
	cmp r0, #0
	beq _0806B384
	ldrb r1, [r4]
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _0806B380
	subs r0, r1, #1
	strb r0, [r4]
_0806B380:
	movs r0, #0x64
	strb r0, [r3]
_0806B384:
	ldr r0, [r2]
	ldrh r1, [r0, #0x1e]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806B39A
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	movs r0, #0x64
	strb r0, [r3]
_0806B39A:
	ldr r2, [r2]
	ldrh r1, [r2, #0x1e]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806B3AE
	movs r0, #0
	strb r0, [r4]
	movs r0, #0x64
	strb r0, [r3]
_0806B3AE:
	ldrh r1, [r2, #0x1e]
	movs r0, #0x82
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806B3CE
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0806B3CE:
	ldrb r1, [r4]
	mov r0, sp
	strb r1, [r0, #4]
	adds r0, r5, #0
	bl sub_0803F17C
_0806B3DA:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806B3E4: .4byte gEwramData

	thumb_func_start sub_0806B3E8
sub_0806B3E8: @ 0x0806B3E8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0806B4EC @ =0x08118D24
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, #4]
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0806B4F4
	ldr r0, _0806B4F0 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1e]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806B430
	adds r1, r5, #0
	adds r1, #0x6d
	ldrb r0, [r1]
	cmp r0, #0
	beq _0806B430
	adds r1, r0, #0
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
_0806B430:
	ldr r7, _0806B4F0 @ =gEwramData
	ldr r0, [r7]
	ldrh r1, [r0, #0x1e]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806B450
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r1, [r0]
	adds r1, #1
	adds r0, r5, #0
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
_0806B450:
	ldr r4, [r7]
	ldrh r1, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r1
	adds r6, r4, #0
	cmp r0, #0
	beq _0806B47A
	adds r3, r5, #0
	adds r3, #0x5a
	ldrb r2, [r3]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1c
	subs r1, #1
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #3
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_0806B47A:
	ldrh r1, [r6, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0806B4A0
	adds r3, r5, #0
	adds r3, #0x5a
	ldrb r2, [r3]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1c
	adds r1, #1
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #3
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_0806B4A0:
	ldrh r1, [r4, #0x1e]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806B4BA
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r1, [r0]
	adds r0, r5, #0
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
_0806B4BA:
	adds r0, r5, #0
	bl sub_0803F17C
	ldr r0, [r7]
	ldrh r1, [r0, #0x1e]
	movs r0, #0x82
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0806B4D0
	b _0806B5D0
_0806B4D0:
	adds r0, r5, #0
	adds r0, #0x20
	movs r2, #0
	movs r1, #1
	strb r1, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, r5, #0
	mov r1, sp
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
	b _0806B5D0
	.align 2, 0
_0806B4EC: .4byte 0x08118D24
_0806B4F0: .4byte gEwramData
_0806B4F4:
	adds r3, r5, #0
	adds r3, #0x6f
	movs r0, #0
	strb r0, [r3]
	ldr r2, _0806B5D8 @ =gEwramData
	ldr r0, [r2]
	ldrh r1, [r0, #0x1e]
	movs r0, #0x40
	ands r0, r1
	adds r6, r5, #0
	adds r6, #0x21
	cmp r0, #0
	beq _0806B520
	ldrb r1, [r6]
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	beq _0806B51C
	subs r0, r1, #1
	strb r0, [r6]
_0806B51C:
	movs r0, #0x64
	strb r0, [r3]
_0806B520:
	ldr r0, [r2]
	ldrh r1, [r0, #0x1e]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806B536
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	movs r0, #0x64
	strb r0, [r3]
_0806B536:
	ldr r4, [r2]
	ldrh r1, [r4, #0x1e]
	movs r0, #1
	ands r0, r1
	adds r7, r4, #0
	cmp r0, #0
	beq _0806B54C
	movs r0, #0
	strb r0, [r6]
	movs r0, #0x64
	strb r0, [r3]
_0806B54C:
	ldrh r1, [r7, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0806B572
	adds r3, r5, #0
	adds r3, #0x5a
	ldrb r2, [r3]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1c
	subs r1, #1
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #3
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_0806B572:
	ldrh r1, [r7, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0806B598
	adds r3, r5, #0
	adds r3, #0x5a
	ldrb r2, [r3]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1c
	adds r1, #1
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #3
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_0806B598:
	ldrh r1, [r4, #0x1e]
	movs r0, #0x82
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806B5B8
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
_0806B5B8:
	mov r4, sp
	adds r0, r5, #0
	mov r1, sp
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
	ldrb r0, [r6]
	strb r0, [r4, #4]
	adds r0, r5, #0
	bl sub_0803F17C
_0806B5D0:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806B5D8: .4byte gEwramData

	thumb_func_start sub_0806B5DC
sub_0806B5DC: @ 0x0806B5DC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _0806B62A
	ldrb r4, [r5, #0xb]
	lsls r4, r4, #2
	ldr r0, _0806B648 @ =0x08526D0C
	adds r4, r4, r0
	ldr r0, _0806B64C @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0806B650 @ =0x0820ED60
	ldrb r3, [r4, #1]
	adds r0, r5, #0
	bl sub_0803B924
	ldrb r1, [r4]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #3
	strb r0, [r1]
	ldr r0, _0806B654 @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
_0806B62A:
	adds r0, r5, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _0806B640
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0806B640:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806B648: .4byte 0x08526D0C
_0806B64C: .4byte 0x081C15F4
_0806B650: .4byte 0x0820ED60
_0806B654: .4byte sub_0803B9D0

	thumb_func_start sub_0806B658
sub_0806B658: @ 0x0806B658
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x20
	adds r5, r0, #0
	adds r7, r1, #0
	mov r8, r2
	mov sb, r3
	mov r6, sp
	add r4, sp, #8
	add r1, sp, #0xc
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_08042030
	cmp r0, #0
	bne _0806B67E
	b _0806B7C8
_0806B67E:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806B6A4
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r6, #4]
	ldrb r1, [r4, #2]
	subs r0, r0, r1
	mov r1, sp
	strh r0, [r1]
	b _0806B6BA
_0806B6A4:
	adds r1, r5, #0
	adds r1, #0x42
	movs r0, #0
	ldrsb r0, [r4, r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r1, sp
	strh r0, [r1]
	ldrb r1, [r4, #2]
	adds r0, r0, r1
	strh r0, [r6, #4]
_0806B6BA:
	movs r0, #1
	ldrsb r0, [r4, r0]
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r6, #2]
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	strh r0, [r6, #6]
	add r5, sp, #0x10
	add r0, sp, #0x18
	add r4, sp, #0x1c
	adds r1, r4, #0
	adds r2, r7, #0
	bl sub_08042030
	adds r3, r5, #0
	cmp r0, #0
	beq _0806B7C8
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806B706
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r1, [r1]
	subs r1, r1, r0
	strh r1, [r3, #4]
	ldrb r0, [r4, #2]
	subs r1, r1, r0
	strh r1, [r3]
	b _0806B71A
_0806B706:
	adds r1, r7, #0
	adds r1, #0x42
	movs r0, #0
	ldrsb r0, [r4, r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r3]
	ldrb r1, [r4, #2]
	adds r0, r0, r1
	strh r0, [r3, #4]
_0806B71A:
	movs r0, #1
	ldrsb r0, [r4, r0]
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r5, #2]
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	strh r0, [r5, #6]
	mov r0, sp
	ldrh r2, [r0]
	movs r4, #0
	ldrsh r1, [r0, r4]
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r1, r0
	bge _0806B756
	mov r2, sp
	movs r0, #4
	ldrsh r1, [r2, r0]
	movs r4, #0
	ldrsh r0, [r3, r4]
	subs r1, r1, r0
	lsrs r0, r1, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	ldrh r0, [r2, #4]
	subs r0, r0, r1
	b _0806B76A
_0806B756:
	movs r4, #4
	ldrsh r0, [r3, r4]
	mov r1, sp
	movs r4, #0
	ldrsh r1, [r1, r4]
	subs r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r0, r2, r0
_0806B76A:
	mov r1, r8
	strh r0, [r1]
	mov r2, sp
	movs r4, #6
	ldrsh r1, [r2, r4]
	movs r4, #2
	ldrsh r0, [r2, r4]
	subs r1, r1, r0
	lsrs r0, r1, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	ldrh r0, [r2, #2]
	adds r0, r0, r1
	mov r1, sb
	strh r0, [r1]
	mov r2, r8
	movs r4, #0
	ldrsh r1, [r2, r4]
	ldrh r2, [r3]
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r1, r0
	blt _0806B7A2
	ldrh r2, [r3, #4]
	movs r4, #4
	ldrsh r0, [r3, r4]
	cmp r1, r0
	ble _0806B7A6
_0806B7A2:
	mov r0, r8
	strh r2, [r0]
_0806B7A6:
	ldrh r1, [r3, #2]
	mov r4, sb
	movs r0, #0
	ldrsh r2, [r4, r0]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	bge _0806B7BA
	strh r1, [r4]
	b _0806B7C8
_0806B7BA:
	ldrh r1, [r3, #6]
	movs r4, #6
	ldrsh r0, [r3, r4]
	cmp r2, r0
	ble _0806B7C8
	mov r0, sb
	strh r1, [r0]
_0806B7C8:
	add sp, #0x20
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806B7D8
sub_0806B7D8: @ 0x0806B7D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	str r1, [sp, #8]
	movs r1, #0
	mov r0, sp
	strh r1, [r0]
	lsls r3, r3, #0x10
	mov sb, r3
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0806B860 @ =0x080E9644
	asrs r4, r3, #0x10
	ldrh r6, [r2]
	mov sl, sp
	movs r5, #0
	mov r8, r5
	adds r1, r1, r0
	str r1, [sp, #0xc]
	movs r0, #2
	ands r0, r6
	cmp r0, #0
	beq _0806B834
	bl sub_08023334
	cmp r0, #0
	beq _0806B834
	ldrh r0, [r0, #0x10]
	mov r8, r0
	movs r5, #1
	movs r0, #0x80
	lsls r0, r0, #5
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0806B834
	mov r2, sb
	asrs r4, r2, #0x11
_0806B834:
	ldr r0, _0806B864 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _0806B868 @ =0x000004CC
	adds r0, r0, r3
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806B86C
	cmp r5, #0
	bne _0806B8A8
	movs r0, #8
	ands r0, r6
	cmp r0, #0
	beq _0806B890
	bl sub_0802D244
	movs r5, #1
	ldrh r0, [r0, #0xc]
	mov r8, r0
	b _0806B890
	.align 2, 0
_0806B860: .4byte 0x080E9644
_0806B864: .4byte gEwramData
_0806B868: .4byte 0x000004CC
_0806B86C:
	movs r0, #8
	ands r0, r6
	cmp r0, #0
	beq _0806B890
	movs r0, #1
	bl sub_08023368
	cmp r0, #0
	beq _0806B890
	ldrh r0, [r0, #0x10]
	mov r8, r0
	movs r0, #0x80
	lsls r0, r0, #5
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0806B890
	asrs r4, r4, #1
_0806B890:
	cmp r5, #0
	bne _0806B8A8
	movs r0, #0x10
	ands r6, r0
	cmp r6, #0
	beq _0806B8A8
	ldr r0, _0806B8D8 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0806B8DC @ =0x000131C4
	adds r0, r0, r2
	ldrh r0, [r0]
	mov r8, r0
_0806B8A8:
	ldr r3, [sp, #0xc]
	ldrh r5, [r3, #0x1a]
	mov r0, r8
	ands r5, r0
	movs r1, #0x3d
	adds r1, r1, r7
	mov sb, r1
	cmp r5, #0
	beq _0806B990
	ldrh r0, [r7, #0x38]
	cmp r0, #0
	bne _0806B932
	movs r1, #0xfc
	lsls r1, r1, #4
	ands r1, r5
	strh r1, [r7, #0x38]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806B8E0
	movs r0, #0
	b _0806B9C0
	.align 2, 0
_0806B8D8: .4byte gEwramData
_0806B8DC: .4byte 0x000131C4
_0806B8E0:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806B912
	ldrh r0, [r7, #0x34]
	ldrh r1, [r7, #0x2e]
	strh r1, [r7, #0x34]
	strh r0, [r7, #0x2e]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	blt _0806B90A
	adds r0, r7, #0
	movs r2, #1
	bl sub_08042B8C
	b _0806B912
_0806B90A:
	adds r0, r7, #0
	movs r2, #2
	bl sub_08042B8C
_0806B912:
	ldrh r1, [r7, #0x38]
	movs r0, #0x40
	ands r0, r1
	movs r2, #0x3d
	adds r2, r2, r7
	mov sb, r2
	cmp r0, #0
	beq _0806B932
	movs r0, #0
	strb r0, [r2]
	adds r2, r7, #0
	adds r2, #0x3c
	ldrb r0, [r2]
	lsrs r1, r0, #2
	subs r0, r0, r1
	strb r0, [r2]
_0806B932:
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	beq _0806B942
	ldrh r0, [r7, #0x34]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	adds r4, r4, r0
_0806B942:
	movs r0, #0x3f
	ands r5, r0
	cmp r5, #0
	beq _0806B990
	cmp r5, #1
	bne _0806B954
	asrs r0, r4, #2
	adds r4, r4, r0
	b _0806B956
_0806B954:
	lsls r4, r4, #1
_0806B956:
	movs r2, #0x20
	movs r3, #0
	movs r1, #6
	adds r0, r5, #0
	ands r0, r2
	lsls r4, r4, #0x10
	mov ip, r4
	add r6, sp, #4
	mov r4, sp
	adds r4, #6
	cmp r0, #0
	beq _0806B972
	movs r3, #6
	b _0806B986
_0806B972:
	asrs r2, r2, #1
	subs r1, #1
	cmp r1, #0
	ble _0806B986
	adds r0, r5, #0
	ands r0, r2
	cmp r0, #0
	beq _0806B972
	lsls r0, r1, #0x10
	lsrs r3, r0, #0x10
_0806B986:
	mov r0, sl
	strh r3, [r0]
	mov r1, ip
	lsrs r0, r1, #0x10
	b _0806BA0A
_0806B990:
	movs r5, #0x3f
	mov r2, r8
	ands r5, r2
	cmp r5, #0
	beq _0806B9C8
	ldr r3, [sp, #0xc]
	ldrh r1, [r3, #0x1c]
	ands r1, r5
	ldr r2, _0806B9B4 @ =0x0000FFFE
	ands r2, r1
	cmp r2, #0
	beq _0806B9B8
	movs r0, #2
	rsbs r0, r0, #0
	ands r5, r0
	cmp r5, r2
	bne _0806B9C8
	b _0806B9BC
	.align 2, 0
_0806B9B4: .4byte 0x0000FFFE
_0806B9B8:
	cmp r5, r1
	bne _0806B9C8
_0806B9BC:
	asrs r0, r4, #1
	subs r0, r4, r0
_0806B9C0:
	add r6, sp, #4
	mov r4, sp
	adds r4, #6
	b _0806BA0A
_0806B9C8:
	movs r2, #0x20
	movs r3, #0
	movs r1, #6
	mov r0, r8
	ands r0, r2
	lsls r4, r4, #0x10
	mov ip, r4
	add r6, sp, #4
	mov r4, sp
	adds r4, #6
	cmp r0, #0
	beq _0806B9E4
	movs r3, #6
	b _0806B9F8
_0806B9E4:
	asrs r2, r2, #1
	subs r1, #1
	cmp r1, #0
	ble _0806B9F8
	mov r0, r8
	ands r0, r2
	cmp r0, #0
	beq _0806B9E4
	lsls r0, r1, #0x10
	lsrs r3, r0, #0x10
_0806B9F8:
	mov r0, sl
	strh r3, [r0]
	cmp r3, #1
	bne _0806BA06
	movs r0, #0
	mov r1, sl
	strh r0, [r1]
_0806BA06:
	mov r2, ip
	lsrs r0, r2, #0x10
_0806BA0A:
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #2
	ldr r3, _0806BAC0 @ =0x08526D0C
	adds r0, r0, r3
	ldrh r0, [r0, #2]
	bl PlaySong
	mov r0, sb
	ldrb r1, [r0]
	lsrs r1, r1, #1
	subs r1, r5, r1
	ldrb r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	subs r0, r2, r0
	muls r0, r1, r0
	asrs r5, r0, #8
	cmp r5, #0
	bgt _0806BA38
	movs r5, #1
_0806BA38:
	ldrh r1, [r7, #0x38]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0806BA4A
	lsls r5, r5, #1
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
_0806BA4A:
	mov r0, sp
	ldrh r0, [r0]
	mov sb, r0
	ldr r0, [sp, #8]
	adds r1, r7, #0
	add r2, sp, #4
	mov r3, sp
	adds r3, #6
	bl sub_0806B658
	movs r2, #0
	ldrsh r1, [r6, r2]
	mov r8, r1
	movs r3, #0
	ldrsh r6, [r4, r3]
	ldr r2, _0806BAC4 @ =sub_0806B5DC
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806BAA4
	adds r0, #0x42
	mov r1, r8
	strh r1, [r0]
	adds r0, #4
	strh r6, [r0]
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
	mov r2, sb
	strh r2, [r4, #0x14]
	mov r3, sb
	strb r3, [r4, #0xb]
_0806BAA4:
	adds r0, r7, #0
	bl sub_0800EA98
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806BAC0: .4byte 0x08526D0C
_0806BAC4: .4byte sub_0806B5DC

	thumb_func_start sub_0806BAC8
sub_0806BAC8: @ 0x0806BAC8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806BB00
	ldr r0, _0806BAF8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806BAFC @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x42
	ldrh r6, [r1]
	adds r0, #0x46
	ldrh r5, [r0]
	adds r3, r4, #0
	adds r3, #0x42
	adds r2, r4, #0
	adds r2, #0x46
	b _0806BB98
	.align 2, 0
_0806BAF8: .4byte gEwramData
_0806BAFC: .4byte 0x00013110
_0806BB00:
	ldr r2, _0806BB28 @ =gEwramData
	ldr r3, [r2]
	ldr r1, _0806BB2C @ =0x000004CC
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806BB3C
	ldr r1, _0806BB30 @ =0x00013168
	adds r0, r3, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806BB34
	adds r1, r4, #0
	adds r1, #0x42
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r3, r1, #0
	b _0806BB4C
	.align 2, 0
_0806BB28: .4byte gEwramData
_0806BB2C: .4byte 0x000004CC
_0806BB30: .4byte 0x00013168
_0806BB34:
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	b _0806BB48
_0806BB3C:
	ldr r1, _0806BB78 @ =0x00013118
	adds r0, r3, r1
	ldr r0, [r0]
	adds r0, #0x42
	movs r3, #0
	ldrsh r0, [r0, r3]
_0806BB48:
	adds r3, r4, #0
	adds r3, #0x42
_0806BB4C:
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r2, [r2]
	ldr r1, _0806BB7C @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806BB84
	ldr r1, _0806BB80 @ =0x00013168
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806BB8A
	adds r0, r4, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	b _0806BB94
	.align 2, 0
_0806BB78: .4byte 0x00013118
_0806BB7C: .4byte 0x000004CC
_0806BB80: .4byte 0x00013168
_0806BB84:
	ldr r1, _0806BBC0 @ =0x00013118
	adds r0, r2, r1
	ldr r0, [r0]
_0806BB8A:
	adds r0, #0x46
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r4, #0
	adds r2, #0x46
_0806BB94:
	lsls r0, r1, #0x10
	lsrs r5, r0, #0x10
_0806BB98:
	ldrh r1, [r3]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r2]
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r2
	subs r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0806BBC0: .4byte 0x00013118

	thumb_func_start sub_0806BBC4
sub_0806BBC4: @ 0x0806BBC4
	push {lr}
	adds r3, r0, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806BBE8
	ldr r0, _0806BBE0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806BBE4 @ =0x00013110
	adds r0, r0, r1
	b _0806BC1C
	.align 2, 0
_0806BBE0: .4byte gEwramData
_0806BBE4: .4byte 0x00013110
_0806BBE8:
	ldr r0, _0806BC0C @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0806BC10 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806BC18
	ldr r1, _0806BC14 @ =0x00013168
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806BC1E
	ldr r1, [r3, #0x40]
	adds r0, r1, #0
	b _0806BC22
	.align 2, 0
_0806BC0C: .4byte gEwramData
_0806BC10: .4byte 0x000004CC
_0806BC14: .4byte 0x00013168
_0806BC18:
	ldr r1, _0806BC2C @ =0x00013118
	adds r0, r2, r1
_0806BC1C:
	ldr r0, [r0]
_0806BC1E:
	ldr r1, [r0, #0x40]
	ldr r0, [r3, #0x40]
_0806BC22:
	cmp r0, r1
	bge _0806BC30
	movs r0, #1
	b _0806BC3C
	.align 2, 0
_0806BC2C: .4byte 0x00013118
_0806BC30:
	cmp r0, r1
	bgt _0806BC38
	movs r0, #0
	b _0806BC3C
_0806BC38:
	movs r0, #1
	rsbs r0, r0, #0
_0806BC3C:
	pop {r1}
	bx r1

	thumb_func_start sub_0806BC40
sub_0806BC40: @ 0x0806BC40
	push {lr}
	adds r2, r0, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806BC64
	ldr r0, _0806BC5C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806BC60 @ =0x00013110
	adds r0, r0, r1
	b _0806BC98
	.align 2, 0
_0806BC5C: .4byte gEwramData
_0806BC60: .4byte 0x00013110
_0806BC64:
	ldr r0, _0806BC88 @ =gEwramData
	ldr r3, [r0]
	ldr r1, _0806BC8C @ =0x000004CC
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806BC94
	ldr r1, _0806BC90 @ =0x00013168
	adds r0, r3, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806BC9A
	ldr r0, [r2, #0x40]
	adds r1, r0, #0
	b _0806BC9E
	.align 2, 0
_0806BC88: .4byte gEwramData
_0806BC8C: .4byte 0x000004CC
_0806BC90: .4byte 0x00013168
_0806BC94:
	ldr r1, _0806BCC0 @ =0x00013118
	adds r0, r3, r1
_0806BC98:
	ldr r0, [r0]
_0806BC9A:
	ldr r0, [r0, #0x40]
	ldr r1, [r2, #0x40]
_0806BC9E:
	cmp r0, r1
	beq _0806BCBA
	movs r3, #0
	cmp r1, r0
	bge _0806BCAA
	movs r3, #1
_0806BCAA:
	adds r2, #0x58
	lsls r3, r3, #6
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
_0806BCBA:
	pop {r0}
	bx r0
	.align 2, 0
_0806BCC0: .4byte 0x00013118

	thumb_func_start sub_0806BCC4
sub_0806BCC4: @ 0x0806BCC4
	push {r4, lr}
	mov ip, r0
	movs r4, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806BCE8
	ldr r0, _0806BCE0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806BCE4 @ =0x00013110
	adds r0, r0, r1
	b _0806BD24
	.align 2, 0
_0806BCE0: .4byte gEwramData
_0806BCE4: .4byte 0x00013110
_0806BCE8:
	ldr r0, _0806BD0C @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0806BD10 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806BD20
	ldr r1, _0806BD14 @ =0x00013168
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806BD18
	mov r0, ip
	ldr r2, [r0, #0x40]
	adds r3, r2, #0
	b _0806BD2C
	.align 2, 0
_0806BD0C: .4byte gEwramData
_0806BD10: .4byte 0x000004CC
_0806BD14: .4byte 0x00013168
_0806BD18:
	ldr r2, [r0, #0x40]
	mov r1, ip
	ldr r3, [r1, #0x40]
	b _0806BD2C
_0806BD20:
	ldr r1, _0806BD60 @ =0x00013118
	adds r0, r2, r1
_0806BD24:
	ldr r0, [r0]
	ldr r2, [r0, #0x40]
	mov r0, ip
	ldr r3, [r0, #0x40]
_0806BD2C:
	adds r0, r3, #0
	cmp r2, r0
	beq _0806BD58
	cmp r0, r2
	bge _0806BD44
	mov r0, ip
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806BD56
_0806BD44:
	cmp r3, r2
	ble _0806BD58
	mov r0, ip
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806BD58
_0806BD56:
	movs r4, #1
_0806BD58:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806BD60: .4byte 0x00013118

	thumb_func_start sub_0806BD64
sub_0806BD64: @ 0x0806BD64
	push {lr}
	adds r3, r0, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806BD90
	ldr r0, _0806BD88 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806BD8C @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x42
	ldrh r1, [r0]
	adds r2, r3, #0
	adds r2, #0x42
	b _0806BDD8
	.align 2, 0
_0806BD88: .4byte gEwramData
_0806BD8C: .4byte 0x00013110
_0806BD90:
	ldr r0, _0806BDB8 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0806BDBC @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806BDC4
	ldr r1, _0806BDC0 @ =0x00013168
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806BDCA
	adds r0, r3, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	b _0806BDD4
	.align 2, 0
_0806BDB8: .4byte gEwramData
_0806BDBC: .4byte 0x000004CC
_0806BDC0: .4byte 0x00013168
_0806BDC4:
	ldr r1, _0806BDE8 @ =0x00013118
	adds r0, r2, r1
	ldr r0, [r0]
_0806BDCA:
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r3, #0
	adds r2, #0x42
_0806BDD4:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
_0806BDD8:
	ldrh r0, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0
_0806BDE8: .4byte 0x00013118

	thumb_func_start sub_0806BDEC
sub_0806BDEC: @ 0x0806BDEC
	push {lr}
	adds r3, r0, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806BE18
	ldr r0, _0806BE10 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806BE14 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x46
	ldrh r1, [r0]
	adds r2, r3, #0
	adds r2, #0x46
	b _0806BE60
	.align 2, 0
_0806BE10: .4byte gEwramData
_0806BE14: .4byte 0x00013110
_0806BE18:
	ldr r0, _0806BE40 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0806BE44 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806BE4C
	ldr r1, _0806BE48 @ =0x00013168
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806BE52
	adds r0, r3, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	b _0806BE5C
	.align 2, 0
_0806BE40: .4byte gEwramData
_0806BE44: .4byte 0x000004CC
_0806BE48: .4byte 0x00013168
_0806BE4C:
	ldr r1, _0806BE70 @ =0x00013118
	adds r0, r2, r1
	ldr r0, [r0]
_0806BE52:
	adds r0, #0x46
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r3, #0
	adds r2, #0x46
_0806BE5C:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
_0806BE60:
	ldrh r0, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0
_0806BE70: .4byte 0x00013118

	thumb_func_start sub_0806BE74
sub_0806BE74: @ 0x0806BE74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	mov r8, r0
	adds r7, r2, #0
	adds r6, r3, #0
	ldrb r0, [r0, #0xd]
	bl __modsi3
	cmp r0, #0
	bne _0806BF0A
	mov r0, r8
	adds r0, #0x5c
	ldrb r0, [r0]
	mov r1, r8
	ldr r1, [r1, #0x40]
	mov sb, r1
	mov r2, r8
	ldr r5, [r2, #0x44]
	ldr r1, _0806BF24 @ =0xFFFA0000
	adds r5, r5, r1
	subs r0, #1
	mov sl, r0
	bl RandomNumberGenerator
	adds r1, r7, #0
	bl __umodsi3
	adds r4, r0, #0
	lsrs r0, r7, #0x1f
	adds r0, r7, r0
	asrs r0, r0, #1
	subs r4, r4, r0
	bl RandomNumberGenerator
	adds r1, r6, #0
	bl __umodsi3
	lsrs r1, r6, #0x1f
	adds r1, r6, r1
	asrs r1, r1, #1
	subs r0, r0, r1
	mov r2, sb
	adds r6, r2, r4
	adds r5, r5, r0
	ldr r2, _0806BF28 @ =sub_0806E524
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806BF0A
	str r6, [r4, #0x40]
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
	mov r1, sl
	strb r1, [r0]
_0806BF0A:
	mov r2, r8
	ldrb r4, [r2, #0xd]
	adds r5, r4, #0
	ldr r1, _0806BF2C @ =0x08118CE0
	mov r0, sp
	movs r2, #0x28
	bl memcpy
	cmp r4, #0x27
	ble _0806BF30
	movs r2, #0
	b _0806BF38
	.align 2, 0
_0806BF24: .4byte 0xFFFA0000
_0806BF28: .4byte sub_0806E524
_0806BF2C: .4byte 0x08118CE0
_0806BF30:
	mov r1, sp
	adds r0, r1, r5
	movs r2, #0
	ldrsb r2, [r0, r2]
_0806BF38:
	mov r3, r8
	adds r3, #0x58
	movs r0, #1
	ands r2, r0
	lsls r2, r2, #5
	ldrb r1, [r3]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	mov r2, r8
	ldrb r0, [r2, #0xd]
	subs r0, #1
	strb r0, [r2, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0806BF68
	mov r0, r8
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0806BF68:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0806BF78
sub_0806BF78: @ 0x0806BF78
	push {r4, r5, r6, lr}
	mov ip, r0
	adds r6, r1, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806BFA4
	ldr r0, _0806BF9C @ =gEwramData
	ldr r1, [r0]
	ldr r2, _0806BFA0 @ =0x00013110
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r2, [r1, #0x40]
	adds r5, r0, #0
	b _0806BFE8
	.align 2, 0
_0806BF9C: .4byte gEwramData
_0806BFA0: .4byte 0x00013110
_0806BFA4:
	ldr r2, _0806BFCC @ =gEwramData
	ldr r3, [r2]
	ldr r1, _0806BFD0 @ =0x000004CC
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	bne _0806BFE0
	ldr r2, _0806BFD4 @ =0x00013168
	adds r0, r3, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _0806BFD8
	mov r0, ip
	ldr r4, [r0, #0x40]
	adds r2, r4, #0
	b _0806BFEC
	.align 2, 0
_0806BFCC: .4byte gEwramData
_0806BFD0: .4byte 0x000004CC
_0806BFD4: .4byte 0x00013168
_0806BFD8:
	ldr r2, [r0, #0x40]
	mov r1, ip
	ldr r4, [r1, #0x40]
	b _0806BFEC
_0806BFE0:
	ldr r2, _0806C008 @ =0x00013118
	adds r0, r3, r2
	ldr r0, [r0]
	ldr r2, [r0, #0x40]
_0806BFE8:
	mov r0, ip
	ldr r4, [r0, #0x40]
_0806BFEC:
	subs r0, r4, r2
	cmp r0, #0
	bge _0806C04C
	mov r2, ip
	adds r2, #0x3e
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806C010
	ldr r0, [r5]
	ldr r1, _0806C00C @ =0x00013110
	adds r0, r0, r1
	b _0806C03C
	.align 2, 0
_0806C008: .4byte 0x00013118
_0806C00C: .4byte 0x00013110
_0806C010:
	ldr r3, [r5]
	ldr r1, _0806C030 @ =0x000004CC
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806C038
	ldr r1, _0806C034 @ =0x00013168
	adds r0, r3, r1
	ldr r1, [r0]
	adds r0, r4, #0
	cmp r1, #0
	beq _0806C040
	ldr r0, [r1, #0x40]
	b _0806C040
	.align 2, 0
_0806C030: .4byte 0x000004CC
_0806C034: .4byte 0x00013168
_0806C038:
	ldr r1, _0806C048 @ =0x00013118
	adds r0, r3, r1
_0806C03C:
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
_0806C040:
	subs r0, r0, r4
	cmp r0, r6
	bls _0806C0A0
	b _0806C1A8
	.align 2, 0
_0806C048: .4byte 0x00013118
_0806C04C:
	mov r2, ip
	adds r2, #0x3e
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806C068
	ldr r0, [r5]
	ldr r1, _0806C064 @ =0x00013110
	adds r0, r0, r1
	b _0806C094
	.align 2, 0
_0806C064: .4byte 0x00013110
_0806C068:
	ldr r3, [r5]
	ldr r1, _0806C088 @ =0x000004CC
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806C090
	ldr r1, _0806C08C @ =0x00013168
	adds r0, r3, r1
	ldr r1, [r0]
	adds r0, r4, #0
	cmp r1, #0
	beq _0806C098
	ldr r0, [r1, #0x40]
	b _0806C098
	.align 2, 0
_0806C088: .4byte 0x000004CC
_0806C08C: .4byte 0x00013168
_0806C090:
	ldr r1, _0806C0B4 @ =0x00013118
	adds r0, r3, r1
_0806C094:
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
_0806C098:
	subs r0, r4, r0
	cmp r0, r6
	bls _0806C0A0
	b _0806C1A8
_0806C0A0:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806C0BC
	ldr r0, [r5]
	ldr r1, _0806C0B8 @ =0x00013110
	adds r0, r0, r1
	b _0806C0EC
	.align 2, 0
_0806C0B4: .4byte 0x00013118
_0806C0B8: .4byte 0x00013110
_0806C0BC:
	ldr r3, [r5]
	ldr r1, _0806C0E0 @ =0x000004CC
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806C0E8
	ldr r1, _0806C0E4 @ =0x00013168
	adds r0, r3, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806C0EE
	mov r0, ip
	ldr r3, [r0, #0x44]
	adds r0, r3, #0
	b _0806C0F4
	.align 2, 0
_0806C0E0: .4byte 0x000004CC
_0806C0E4: .4byte 0x00013168
_0806C0E8:
	ldr r1, _0806C10C @ =0x00013118
	adds r0, r3, r1
_0806C0EC:
	ldr r0, [r0]
_0806C0EE:
	ldr r0, [r0, #0x44]
	mov r1, ip
	ldr r3, [r1, #0x44]
_0806C0F4:
	subs r0, r3, r0
	cmp r0, #0
	bge _0806C150
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806C114
	ldr r0, [r5]
	ldr r2, _0806C110 @ =0x00013110
	adds r0, r0, r2
	b _0806C140
	.align 2, 0
_0806C10C: .4byte 0x00013118
_0806C110: .4byte 0x00013110
_0806C114:
	ldr r2, [r5]
	ldr r1, _0806C134 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806C13C
	ldr r1, _0806C138 @ =0x00013168
	adds r0, r2, r1
	ldr r2, [r0]
	adds r0, r3, #0
	cmp r2, #0
	beq _0806C144
	ldr r0, [r2, #0x44]
	b _0806C144
	.align 2, 0
_0806C134: .4byte 0x000004CC
_0806C138: .4byte 0x00013168
_0806C13C:
	ldr r1, _0806C14C @ =0x00013118
	adds r0, r2, r1
_0806C140:
	ldr r0, [r0]
	ldr r0, [r0, #0x44]
_0806C144:
	subs r0, r0, r3
	cmp r0, r6
	bls _0806C19E
	b _0806C1A8
	.align 2, 0
_0806C14C: .4byte 0x00013118
_0806C150:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806C168
	ldr r0, [r5]
	ldr r2, _0806C164 @ =0x00013110
	adds r0, r0, r2
	b _0806C194
	.align 2, 0
_0806C164: .4byte 0x00013110
_0806C168:
	ldr r2, [r5]
	ldr r1, _0806C188 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806C190
	ldr r1, _0806C18C @ =0x00013168
	adds r0, r2, r1
	ldr r2, [r0]
	adds r0, r3, #0
	cmp r2, #0
	beq _0806C198
	ldr r0, [r2, #0x44]
	b _0806C198
	.align 2, 0
_0806C188: .4byte 0x000004CC
_0806C18C: .4byte 0x00013168
_0806C190:
	ldr r1, _0806C1A4 @ =0x00013118
	adds r0, r2, r1
_0806C194:
	ldr r0, [r0]
	ldr r0, [r0, #0x44]
_0806C198:
	subs r0, r3, r0
	cmp r0, r6
	bhi _0806C1A8
_0806C19E:
	movs r0, #1
	b _0806C1AA
	.align 2, 0
_0806C1A4: .4byte 0x00013118
_0806C1A8:
	movs r0, #0
_0806C1AA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0806C1B0
sub_0806C1B0: @ 0x0806C1B0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	mov ip, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806C1DC
	ldr r1, _0806C1D4 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0806C1D8 @ =0x00013110
	b _0806C1E2
	.align 2, 0
_0806C1D4: .4byte gEwramData
_0806C1D8: .4byte 0x00013110
_0806C1DC:
	ldr r1, _0806C234 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0806C238 @ =0x00013168
_0806C1E2:
	adds r0, r0, r2
	ldr r3, [r0]
	adds r2, r1, #0
	mov r0, ip
	adds r0, #0x42
	lsrs r1, r7, #1
	ldrh r0, [r0]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r0, ip
	adds r0, #0x46
	lsrs r1, r6, #1
	ldrh r0, [r0]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r2, [r2]
	ldr r1, _0806C23C @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806C21A
	ldr r1, _0806C240 @ =0x00013118
	adds r0, r2, r1
	ldr r3, [r0]
_0806C21A:
	cmp r3, #0
	beq _0806C244
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	str r6, [sp]
	adds r0, r3, #0
	adds r3, r7, #0
	bl sub_08068AD4
	b _0806C246
	.align 2, 0
_0806C234: .4byte gEwramData
_0806C238: .4byte 0x00013168
_0806C23C: .4byte 0x000004CC
_0806C240: .4byte 0x00013118
_0806C244:
	movs r0, #0
_0806C246:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806C250
sub_0806C250: @ 0x0806C250
	push {r4, r5, r6, r7, lr}
	adds r1, r0, #0
	ldr r0, _0806C2A4 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0806C2A8 @ =0x000143F4
	adds r3, r0, r2
	cmp r1, #0
	beq _0806C2C4
	subs r1, #4
	movs r0, #0
	strh r0, [r1]
	movs r5, #0
_0806C268:
	ldrh r4, [r3, #2]
	ldrh r0, [r3]
	adds r7, r4, #0
	cmp r0, #0
	bne _0806C2B0
	adds r1, r4, r5
	ldr r0, _0806C2AC @ =0x000001FF
	cmp r1, r0
	bgt _0806C2B0
	adds r1, r3, #0
	movs r2, #0
	movs r6, #0xff
	lsls r6, r6, #1
_0806C282:
	ldrh r0, [r1]
	cmp r0, #0
	bne _0806C298
	adds r0, r2, #1
	ldrh r1, [r1, #2]
	adds r2, r0, r1
	lsls r0, r2, #2
	adds r1, r3, r0
	adds r0, r5, r2
	cmp r0, r6
	ble _0806C282
_0806C298:
	adds r0, r7, #1
	cmp r2, r0
	ble _0806C2B0
	subs r0, r2, #1
	strh r0, [r3, #2]
	b _0806C2C4
	.align 2, 0
_0806C2A4: .4byte gEwramData
_0806C2A8: .4byte 0x000143F4
_0806C2AC: .4byte 0x000001FF
_0806C2B0:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, r5, r4
	lsls r0, r4, #2
	adds r3, r3, r0
	movs r0, #0xff
	lsls r0, r0, #1
	cmp r5, r0
	ble _0806C268
_0806C2C4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806C2CC
sub_0806C2CC: @ 0x0806C2CC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _0806C328 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806C32C @ =0x000143F4
	adds r2, r0, r1
	movs r1, #0
	movs r7, #0xfe
	lsls r7, r7, #1
_0806C2E2:
	ldrh r3, [r2, #2]
	ldrh r4, [r2]
	cmp r4, #0
	bne _0806C334
	adds r0, r5, #2
	cmp r3, r0
	blt _0806C334
	adds r0, r1, #1
	strh r0, [r2]
	strh r5, [r2, #2]
	adds r0, r1, r5
	lsls r6, r5, #2
	cmp r0, r7
	bgt _0806C308
	adds r1, r2, r6
	strh r4, [r1, #4]
	subs r0, r3, r5
	subs r0, #1
	strh r0, [r1, #6]
_0806C308:
	adds r3, r2, #4
	str r4, [sp]
	ldr r2, _0806C330 @ =0x040000D4
	mov r0, sp
	str r0, [r2]
	str r3, [r2, #4]
	adds r0, r6, #0
	asrs r0, r0, #2
	movs r1, #0x85
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r3, #0
	b _0806C34A
	.align 2, 0
_0806C328: .4byte gEwramData
_0806C32C: .4byte 0x000143F4
_0806C330: .4byte 0x040000D4
_0806C334:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r1, r1, r3
	lsls r0, r3, #2
	adds r2, r2, r0
	movs r0, #0xff
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806C2E2
	movs r0, #0
_0806C34A:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806C354
sub_0806C354: @ 0x0806C354
	push {r4, lr}
	sub sp, #4
	ldr r4, _0806C3D4 @ =gEwramData
	ldr r1, [r4]
	ldr r0, _0806C3D8 @ =0x000004C4
	adds r2, r1, r0
	ldr r0, _0806C3DC @ =0xFFFF8000
	str r0, [r2]
	adds r1, #0x92
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, [r4]
	ldr r0, _0806C3E0 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, _0806C3E4 @ =0xFFBBF7FF
	ands r0, r2
	str r0, [r1]
	bl sub_08013D30
	bl sub_08013F38
	bl sub_0803D408
	cmp r0, #0
	bne _0806C38C
	bl sub_0803D270
_0806C38C:
	bl sub_0803D06C
	cmp r0, #0
	bne _0806C398
	bl sub_0803CED4
_0806C398:
	movs r0, #0
	bl sub_08034498
	bl sub_080220B4
	bl sub_08068F48
	ldr r2, [r4]
	ldr r1, _0806C3E8 @ =0x000143F4
	adds r2, r2, r1
	movs r3, #0
	str r3, [sp]
	ldr r0, _0806C3EC @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _0806C3F0 @ =0x85000200
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	strh r3, [r2]
	ldr r0, _0806C3F4 @ =0x000001FF
	strh r0, [r2, #2]
	bl sub_08012014
	bl sub_0800EB04
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806C3D4: .4byte gEwramData
_0806C3D8: .4byte 0x000004C4
_0806C3DC: .4byte 0xFFFF8000
_0806C3E0: .4byte 0x0000042C
_0806C3E4: .4byte 0xFFBBF7FF
_0806C3E8: .4byte 0x000143F4
_0806C3EC: .4byte 0x040000D4
_0806C3F0: .4byte 0x85000200
_0806C3F4: .4byte 0x000001FF

	thumb_func_start sub_0806C3F8
sub_0806C3F8: @ 0x0806C3F8
	push {r4, r5, lr}
	mov ip, r0
	adds r4, r1, #0
	adds r5, r2, #0
	mov r2, ip
	adds r2, #0x64
	ldr r0, _0806C454 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0806C458 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	mov r0, ip
	adds r0, #0x65
	ldrb r0, [r0]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r2, [r0, #5]
	adds r1, r2, #0
	ldr r3, [r0, #0xc]
	cmp r4, r2
	blt _0806C42C
	subs r4, r2, #1
_0806C42C:
	subs r1, r1, r4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, #0xc
	adds r3, r3, r0
	mov r2, ip
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806C45C
	movs r0, #0
	ldrsb r0, [r3, r0]
	rsbs r0, r0, #0
	ldrb r1, [r3, #6]
	subs r0, r0, r1
	b _0806C464
	.align 2, 0
_0806C454: .4byte gEwramData
_0806C458: .4byte 0x0001017C
_0806C45C:
	movs r0, #0
	ldrsb r0, [r3, r0]
	ldrb r1, [r3, #6]
	adds r0, r0, r1
_0806C464:
	strh r0, [r5]
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806C47C
	movs r0, #1
	ldrsb r0, [r3, r0]
	rsbs r0, r0, #0
	ldrb r1, [r3, #7]
	subs r0, r0, r1
	b _0806C484
_0806C47C:
	movs r0, #1
	ldrsb r0, [r3, r0]
	ldrb r3, [r3, #7]
	adds r0, r0, r3
_0806C484:
	strh r0, [r5, #2]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0806C48C
sub_0806C48C: @ 0x0806C48C
	push {r4, r5, lr}
	mov ip, r0
	adds r4, r1, #0
	adds r5, r2, #0
	mov r2, ip
	adds r2, #0x64
	ldr r0, _0806C4E8 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0806C4EC @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	mov r0, ip
	adds r0, #0x65
	ldrb r0, [r0]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r2, [r0, #5]
	adds r1, r2, #0
	ldr r3, [r0, #0xc]
	cmp r4, r2
	blt _0806C4C0
	subs r4, r2, #1
_0806C4C0:
	subs r1, r1, r4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, #0xc
	adds r3, r3, r0
	mov r2, ip
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806C4F0
	movs r1, #0
	ldrsb r1, [r3, r1]
	rsbs r1, r1, #0
	ldrb r0, [r3, #6]
	lsrs r0, r0, #1
	subs r1, r1, r0
	b _0806C4FA
	.align 2, 0
_0806C4E8: .4byte gEwramData
_0806C4EC: .4byte 0x0001017C
_0806C4F0:
	movs r1, #0
	ldrsb r1, [r3, r1]
	ldrb r0, [r3, #6]
	lsrs r0, r0, #1
	adds r1, r1, r0
_0806C4FA:
	strh r1, [r5]
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806C514
	movs r1, #1
	ldrsb r1, [r3, r1]
	rsbs r1, r1, #0
	ldrb r0, [r3, #7]
	lsrs r0, r0, #1
	subs r1, r1, r0
	b _0806C51E
_0806C514:
	movs r1, #1
	ldrsb r1, [r3, r1]
	ldrb r0, [r3, #7]
	lsrs r0, r0, #1
	adds r1, r1, r0
_0806C51E:
	strh r1, [r5, #2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806C528
sub_0806C528: @ 0x0806C528
	push {r4, r5, lr}
	mov ip, r0
	adds r4, r1, #0
	adds r5, r2, #0
	mov r2, ip
	adds r2, #0x64
	ldr r0, _0806C580 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0806C584 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	mov r0, ip
	adds r0, #0x65
	ldrb r0, [r0]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r2, [r0, #5]
	adds r1, r2, #0
	ldr r3, [r0, #0xc]
	cmp r4, r2
	blt _0806C55C
	subs r4, r2, #1
_0806C55C:
	subs r1, r1, r4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, #0xc
	adds r3, r3, r0
	mov r2, ip
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806C588
	movs r0, #0
	ldrsb r0, [r3, r0]
	rsbs r0, r0, #0
	b _0806C58C
	.align 2, 0
_0806C580: .4byte gEwramData
_0806C584: .4byte 0x0001017C
_0806C588:
	movs r0, #0
	ldrsb r0, [r3, r0]
_0806C58C:
	strh r0, [r5]
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806C5A0
	movs r0, #1
	ldrsb r0, [r3, r0]
	rsbs r0, r0, #0
	b _0806C5A4
_0806C5A0:
	movs r0, #1
	ldrsb r0, [r3, r0]
_0806C5A4:
	strh r0, [r5, #2]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0806C5AC
sub_0806C5AC: @ 0x0806C5AC
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r1, #0x4f
	ldr r0, [r5, #0x48]
	muls r0, r1, r0
	movs r1, #0x50
	bl __divsi3
	movs r2, #0x80
	lsls r2, r2, #0xc
	ldr r1, [r5, #0x50]
	adds r0, r0, r1
	str r0, [r5, #0x48]
	cmp r1, #0
	blt _0806C5D4
	cmp r0, r2
	ble _0806C5DC
	str r2, [r5, #0x48]
	b _0806C5DC
_0806C5D4:
	ldr r1, _0806C5F0 @ =0xFFF80000
	cmp r0, r1
	bge _0806C5DC
	str r1, [r5, #0x48]
_0806C5DC:
	ldr r0, [r5, #0x4c]
	ldr r1, [r5, #0x54]
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	cmp r1, #0
	blt _0806C5F4
	cmp r0, r2
	ble _0806C5FC
	str r2, [r5, #0x4c]
	b _0806C5FC
	.align 2, 0
_0806C5F0: .4byte 0xFFF80000
_0806C5F4:
	ldr r1, _0806C6DC @ =0xFFF80000
	cmp r0, r1
	bge _0806C5FC
	str r1, [r5, #0x4c]
_0806C5FC:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _0806C62A
	add r4, sp, #4
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_0806C48C
	add r0, sp, #4
	ldrh r0, [r0]
	strh r0, [r5, #0x18]
	ldrh r0, [r4, #2]
	adds r0, #4
	strh r0, [r5, #0x1a]
_0806C62A:
	adds r0, r5, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _0806C6E0 @ =gEwramData
	ldr r2, [r1]
	ldr r3, _0806C6E4 @ =0x0000A094
	adds r2, r2, r3
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	movs r3, #0x18
	ldrsh r1, [r5, r3]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x46
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	movs r3, #0x1a
	ldrsh r2, [r5, r3]
	adds r1, r1, r2
	bl sub_080020A0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0806C6F4
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	lsls r1, r1, #0x10
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	movs r1, #0x1a
	ldrsh r2, [r5, r1]
	lsls r2, r2, #0x10
	ldr r1, [r5, #0x44]
	adds r1, r1, r2
	ldr r2, _0806C6E8 @ =0xFFFC0000
	adds r1, r1, r2
	movs r2, #4
	movs r3, #6
	bl sub_08045CEC
	adds r4, r0, #0
	cmp r4, #0
	beq _0806C6C4
	movs r0, #1
	strb r0, [r4, #0xf]
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_0802D5EC
	adds r1, r0, #0
	ldr r3, _0806C6EC @ =0xFFFFC000
	adds r0, r1, r3
	str r0, [r4, #0x4c]
	cmp r0, #0
	bge _0806C6A6
	ldr r2, _0806C6F0 @ =0xFFFFC01F
	adds r0, r1, r2
_0806C6A6:
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
	bge _0806C6C0
	adds r0, #0x3f
_0806C6C0:
	asrs r0, r0, #6
	str r0, [r4, #0x50]
_0806C6C4:
	movs r0, #0xb1
	lsls r0, r0, #1
	bl PlaySong
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	b _0806C718
	.align 2, 0
_0806C6DC: .4byte 0xFFF80000
_0806C6E0: .4byte gEwramData
_0806C6E4: .4byte 0x0000A094
_0806C6E8: .4byte 0xFFFC0000
_0806C6EC: .4byte 0xFFFFC000
_0806C6F0: .4byte 0xFFFFC01F
_0806C6F4:
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
	bne _0806C718
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0806C718:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0806C720
sub_0806C720: @ 0x0806C720
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x42
	ldr r0, _0806C76C @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0806C770 @ =0x0000A094
	adds r1, r1, r0
	ldrh r0, [r1, #6]
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r2, r4, #0
	adds r2, #0x46
	ldrh r0, [r1, #0xa]
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r1, #0x27
	ldr r0, [r4, #0x48]
	muls r0, r1, r0
	movs r1, #0x28
	bl __divsi3
	movs r2, #0x80
	lsls r2, r2, #0xc
	ldr r1, [r4, #0x50]
	adds r0, r0, r1
	str r0, [r4, #0x48]
	cmp r1, #0
	blt _0806C774
	cmp r0, r2
	ble _0806C77C
	str r2, [r4, #0x48]
	b _0806C77C
	.align 2, 0
_0806C76C: .4byte gEwramData
_0806C770: .4byte 0x0000A094
_0806C774:
	ldr r1, _0806C790 @ =0xFFF80000
	cmp r0, r1
	bge _0806C77C
	str r1, [r4, #0x48]
_0806C77C:
	ldr r0, [r4, #0x4c]
	ldr r1, [r4, #0x54]
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	cmp r1, #0
	blt _0806C794
	cmp r0, r2
	ble _0806C79C
	str r2, [r4, #0x4c]
	b _0806C79C
	.align 2, 0
_0806C790: .4byte 0xFFF80000
_0806C794:
	ldr r1, _0806C7EC @ =0xFFF80000
	cmp r0, r1
	bge _0806C79C
	str r1, [r4, #0x4c]
_0806C79C:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	lsls r0, r6, #0x10
	asrs r6, r0, #0x10
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_080020A0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0806C822
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08001F3C
	cmp r0, #0
	bne _0806C7F4
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	ldr r2, _0806C7F0 @ =0xFFFC0000
	adds r1, r1, r2
	movs r2, #0
	movs r3, #7
	bl sub_08045CEC
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	b _0806C822
	.align 2, 0
_0806C7EC: .4byte 0xFFF80000
_0806C7F0: .4byte 0xFFFC0000
_0806C7F4:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #2
	bl sub_08001E58
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	beq _0806C816
	ldr r0, [r4, #0x40]
	lsls r2, r2, #0x10
	ldr r1, [r4, #0x44]
	adds r1, r1, r2
	movs r2, #0xb
	movs r3, #6
	bl sub_08045CEC
_0806C816:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0806C822:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0806C828
sub_0806C828: @ 0x0806C828
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	str r1, [sp]
	str r3, [sp, #8]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r8, r0
	adds r5, r1, #0
	adds r5, #8
	movs r3, #0
	str r3, [sp, #0xc]
	mov sl, r3
	adds r0, r7, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r7, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #0xc
	ldr r0, [r7, #0x48]
	ldr r1, [r7, #0x50]
	adds r0, r0, r1
	str r0, [r7, #0x48]
	cmp r1, #0
	blt _0806C87C
	cmp r0, r3
	ble _0806C884
	str r3, [r7, #0x48]
	b _0806C884
_0806C87C:
	ldr r1, _0806C8CC @ =0xFFF80000
	cmp r0, r1
	bge _0806C884
	str r1, [r7, #0x48]
_0806C884:
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x48]
	adds r0, r0, r1
	str r0, [r7, #0x40]
	cmp r1, #0
	bge _0806C8F4
	movs r4, #0
	adds r0, r7, #0
	adds r0, #0x3f
	str r0, [sp, #0x10]
	cmp r4, r8
	bge _0806C930
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
	lsls r0, r2, #0x10
	asrs r6, r0, #0x10
_0806C8A6:
	ldr r1, [sp]
	movs r2, #6
	ldrsh r0, [r1, r2]
	mov r3, sb
	subs r0, r3, r0
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r1, r6, r1
	bl sub_0800207C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _0806C8D0
	adds r5, #2
	adds r4, #1
	cmp r4, r8
	blt _0806C8A6
	b _0806C930
	.align 2, 0
_0806C8CC: .4byte 0xFFF80000
_0806C8D0:
	lsls r0, r0, #0x10
	ldr r1, [r7, #0x40]
	adds r1, r1, r0
	str r1, [r7, #0x40]
	movs r0, #1
	mov r3, sl
	orrs r3, r0
	mov sl, r3
	b _0806C930
_0806C8E2:
	lsls r0, r0, #0x10
	ldr r1, [r7, #0x40]
	adds r1, r1, r0
	str r1, [r7, #0x40]
	movs r0, #2
	mov r4, sl
	orrs r4, r0
	mov sl, r4
	b _0806C930
_0806C8F4:
	adds r0, r7, #0
	adds r0, #0x3f
	str r0, [sp, #0x10]
	cmp r1, #0
	ble _0806C930
	movs r4, #0
	cmp r4, r8
	bge _0806C930
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
	lsls r0, r2, #0x10
	asrs r6, r0, #0x10
_0806C90E:
	ldr r1, [sp]
	movs r2, #6
	ldrsh r0, [r1, r2]
	add r0, sb
	movs r3, #0
	ldrsh r1, [r5, r3]
	adds r1, r6, r1
	bl sub_08002058
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _0806C8E2
	adds r5, #2
	adds r4, #1
	cmp r4, r8
	blt _0806C90E
_0806C930:
	movs r2, #0x80
	lsls r2, r2, #0xc
	ldr r0, [r7, #0x4c]
	ldr r1, [r7, #0x54]
	adds r0, r0, r1
	str r0, [r7, #0x4c]
	cmp r1, #0
	blt _0806C948
	cmp r0, r2
	ble _0806C950
	str r2, [r7, #0x4c]
	b _0806C950
_0806C948:
	ldr r1, _0806C9AC @ =0xFFF80000
	cmp r0, r1
	bge _0806C950
	str r1, [r7, #0x4c]
_0806C950:
	ldr r0, [r7, #0x44]
	ldr r1, [r7, #0x4c]
	adds r0, r0, r1
	str r0, [r7, #0x44]
	adds r0, r7, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r7, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r5, #0
	ldr r4, [sp, #0x10]
	strb r5, [r4]
	ldr r0, [r7, #0x4c]
	cmp r0, #0
	bge _0806C9B0
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	ldr r3, [sp]
	movs r4, #2
	ldrsh r2, [r3, r4]
	adds r1, r1, r2
	bl sub_08001C1C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _0806C996
	b _0806CADC
_0806C996:
	lsls r0, r0, #0x10
	ldr r1, [r7, #0x44]
	adds r1, r1, r0
	str r1, [r7, #0x44]
	movs r0, #4
	mov r1, sl
	orrs r1, r0
	mov sl, r1
	str r5, [r7, #0x4c]
	b _0806CADC
	.align 2, 0
_0806C9AC: .4byte 0xFFF80000
_0806C9B0:
	adds r0, r7, #0
	adds r0, #0x4e
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bne _0806C9C0
	ldr r4, [sp, #4]
	str r4, [sp, #0xc]
_0806C9C0:
	lsls r6, r6, #0x10
	asrs r0, r6, #0x10
	lsls r5, r2, #0x10
	asrs r1, r5, #0x10
	ldr r3, [sp]
	movs r4, #4
	ldrsh r2, [r3, r4]
	adds r1, r1, r2
	ldr r2, [sp, #0xc]
	lsls r4, r2, #0x10
	asrs r2, r4, #0x10
	adds r1, r1, r2
	bl sub_08001D94
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r3, #2
	ldr r0, [sp, #8]
	ands r0, r3
	cmp r0, #0
	beq _0806CA30
	ldr r0, _0806CA1C @ =gUnk_03002CB0
	ldr r1, _0806CA20 @ =0x0000100D
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r1, #0
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	bne _0806CA06
	movs r0, #0xc0
	ands r0, r2
	cmp r0, #0
	beq _0806CA2C
_0806CA06:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0806CA24
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _0806CA26
	movs r0, #2
	b _0806CA26
	.align 2, 0
_0806CA1C: .4byte gUnk_03002CB0
_0806CA20: .4byte 0x0000100D
_0806CA24:
	movs r0, #0
_0806CA26:
	cmp r0, #1
	beq _0806CA2C
	movs r1, #1
_0806CA2C:
	cmp r1, #0
	beq _0806CADC
_0806CA30:
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _0806CADC
	asrs r1, r4, #0x10
	adds r1, r0, r1
	lsls r1, r1, #0x10
	ldr r0, [r7, #0x44]
	adds r0, r0, r1
	str r0, [r7, #0x44]
	movs r0, #8
	mov r3, sl
	orrs r3, r0
	mov sl, r3
	movs r0, #0
	str r0, [r7, #0x4c]
	ldr r0, _0806CA94 @ =gUnk_03002CB0
	ldr r4, _0806CA98 @ =0x0000100D
	adds r0, r0, r4
	ldrb r1, [r0]
	ldr r2, [sp, #0x10]
	strb r1, [r2]
	ldrb r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0806CAA4
	movs r0, #0x10
	orrs r3, r0
	mov sl, r3
	ldr r2, [r7, #0x48]
	cmp r2, #0
	ble _0806CA7C
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0806CA88
_0806CA7C:
	cmp r2, #0
	bge _0806CA9C
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0806CA9C
_0806CA88:
	movs r0, #0x40
	mov r3, sl
	orrs r3, r0
	mov sl, r3
	b _0806CAA4
	.align 2, 0
_0806CA94: .4byte gUnk_03002CB0
_0806CA98: .4byte 0x0000100D
_0806CA9C:
	movs r0, #0x20
	mov r4, sl
	orrs r4, r0
	mov sl, r4
_0806CAA4:
	movs r0, #1
	ldr r1, [sp, #8]
	ands r0, r1
	cmp r0, #0
	beq _0806CADC
	asrs r0, r6, #0x10
	asrs r1, r5, #0x10
	ldr r3, [sp]
	movs r4, #4
	ldrsh r2, [r3, r4]
	adds r1, r1, r2
	bl sub_08001D94
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0806CADC
	ldr r0, _0806CAF0 @ =gUnk_03002CB0
	ldr r1, _0806CAF4 @ =0x0000100D
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0806CADC
	movs r0, #0x10
	mov r2, sl
	orrs r2, r0
	mov sl, r2
_0806CADC:
	mov r0, sl
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806CAF0: .4byte gUnk_03002CB0
_0806CAF4: .4byte 0x0000100D

	thumb_func_start sub_0806CAF8
sub_0806CAF8: @ 0x0806CAF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	str r2, [sp]
	adds r6, r3, #0
	ldr r7, [r4, #0x40]
	ldr r0, [r4, #0x44]
	mov r8, r0
	movs r1, #0
	mov sl, r1
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _0806CB2E
	adds r0, r4, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0806CB2E
	adds r0, r4, #0
	bl sub_0806BC40
_0806CB2E:
	movs r0, #2
	ands r0, r6
	cmp r0, #0
	bne _0806CB4A
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806CB4A
	rsbs r0, r5, #0
	str r0, [r4, #0x48]
	b _0806CB4C
_0806CB4A:
	str r5, [r4, #0x48]
_0806CB4C:
	movs r0, #8
	ands r0, r6
	cmp r0, #0
	beq _0806CB9E
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r2, [r0]
	movs r0, #0xc0
	ands r0, r2
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806CB9E
	lsrs r3, r0, #0x1e
	ldr r1, [r4, #0x48]
	cmp r1, #0
	ble _0806CB74
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	bne _0806CB80
_0806CB74:
	cmp r1, #0
	bge _0806CB9E
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	bne _0806CB9E
_0806CB80:
	cmp r3, #1
	beq _0806CB8A
	cmp r3, #2
	beq _0806CB92
	b _0806CB9E
_0806CB8A:
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	b _0806CB9C
_0806CB92:
	adds r0, r1, #0
	movs r1, #3
	bl __divsi3
	lsls r0, r0, #1
_0806CB9C:
	str r0, [r4, #0x48]
_0806CB9E:
	movs r2, #0x10
	mov sb, r2
	adds r5, r6, #0
	ands r5, r2
	cmp r5, #0
	beq _0806CBB2
	movs r0, #1
	mov r1, sl
	orrs r1, r0
	mov sl, r1
_0806CBB2:
	movs r0, #0x20
	ands r0, r6
	cmp r0, #0
	beq _0806CBC2
	movs r0, #2
	mov r2, sl
	orrs r2, r0
	mov sl, r2
_0806CBC2:
	adds r0, r4, #0
	ldr r1, [sp]
	movs r2, #4
	mov r3, sl
	bl sub_0806C828
	adds r1, r0, #0
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0806CBE4
	str r7, [r4, #0x40]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0806CBF8
	b _0806CBF4
_0806CBE4:
	cmp r5, #0
	beq _0806CBF8
	adds r0, r1, #0
	mov r2, sb
	ands r0, r2
	cmp r0, #0
	beq _0806CBF8
	str r7, [r4, #0x40]
_0806CBF4:
	mov r0, r8
	str r0, [r4, #0x44]
_0806CBF8:
	movs r0, #4
	ands r0, r6
	cmp r0, #0
	beq _0806CC0E
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0806CC0E
	str r7, [r4, #0x40]
	mov r2, r8
	str r2, [r4, #0x44]
_0806CC0E:
	adds r0, r1, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0806CC20
sub_0806CC20: @ 0x0806CC20
	push {r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	adds r0, #0x36
	ldrb r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0806CC9C @ =0x080E9644
	adds r0, r0, r1
	movs r1, #0x20
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0806CC46
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r0, r4, #0
	bl sub_0806E4F8
_0806CC46:
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0806CC98
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
	beq _0806CCA8
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
	beq _0806CC8E
	adds r0, r4, #0
	bl sub_08021924
_0806CC8E:
	adds r0, r4, #0
	bl sub_0806AD24
	cmp r0, #0
	bne _0806CCA0
_0806CC98:
	movs r0, #0
	b _0806CCAA
	.align 2, 0
_0806CC9C: .4byte 0x080E9644
_0806CCA0:
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
_0806CCA8:
	movs r0, #1
_0806CCAA:
	add sp, #0x14
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806CCB4
sub_0806CCB4: @ 0x0806CCB4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
_0806CCBA:
	bl RandomNumberGenerator
	adds r1, r5, #0
	bl __umodsi3
	cmp r0, r4
	blo _0806CCBA
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806CCD0
sub_0806CCD0: @ 0x0806CCD0
	push {lr}
	adds r2, r0, #0
	adds r2, #0x20
	movs r1, #0
	strb r1, [r2]
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806CCE8
sub_0806CCE8: @ 0x0806CCE8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	bl sub_0803B9D0
	ldr r0, _0806CD34 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806CD2A
	ldr r5, [r7, #0x40]
	ldr r0, [r7, #0x44]
	mov r8, r0
	adds r4, r7, #0
	adds r4, #0x5c
	ldrb r6, [r4]
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r5, r1
	str r0, [r7, #0x40]
	movs r0, #0x1d
	strb r0, [r4]
	adds r0, r7, #0
	bl sub_0803B9D0
	str r5, [r7, #0x40]
	mov r0, r8
	str r0, [r7, #0x44]
	strb r6, [r4]
_0806CD2A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806CD34: .4byte gEwramData

	thumb_func_start sub_0806CD38
sub_0806CD38: @ 0x0806CD38
	push {lr}
	adds r3, r0, #0
	ldr r0, _0806CD5C @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0806CD60 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806CD68
	ldr r1, _0806CD64 @ =0x00013168
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806CD6E
	ldr r0, [r3, #0x40]
	b _0806CD70
	.align 2, 0
_0806CD5C: .4byte gEwramData
_0806CD60: .4byte 0x000004CC
_0806CD64: .4byte 0x00013168
_0806CD68:
	ldr r1, _0806CD74 @ =0x00013118
	adds r0, r2, r1
	ldr r0, [r0]
_0806CD6E:
	ldr r0, [r0, #0x40]
_0806CD70:
	pop {r1}
	bx r1
	.align 2, 0
_0806CD74: .4byte 0x00013118

	thumb_func_start sub_0806CD78
sub_0806CD78: @ 0x0806CD78
	push {lr}
	adds r3, r0, #0
	ldr r0, _0806CD9C @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0806CDA0 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806CDA8
	ldr r1, _0806CDA4 @ =0x00013168
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806CDAE
	ldr r0, [r3, #0x44]
	b _0806CDB0
	.align 2, 0
_0806CD9C: .4byte gEwramData
_0806CDA0: .4byte 0x000004CC
_0806CDA4: .4byte 0x00013168
_0806CDA8:
	ldr r1, _0806CDB4 @ =0x00013118
	adds r0, r2, r1
	ldr r0, [r0]
_0806CDAE:
	ldr r0, [r0, #0x44]
_0806CDB0:
	pop {r1}
	bx r1
	.align 2, 0
_0806CDB4: .4byte 0x00013118

	thumb_func_start sub_0806CDB8
sub_0806CDB8: @ 0x0806CDB8
	push {lr}
	adds r3, r0, #0
	ldr r0, _0806CDDC @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0806CDE0 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806CDE8
	ldr r1, _0806CDE4 @ =0x00013168
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806CDEE
	adds r0, r3, #0
	b _0806CDEE
	.align 2, 0
_0806CDDC: .4byte gEwramData
_0806CDE0: .4byte 0x000004CC
_0806CDE4: .4byte 0x00013168
_0806CDE8:
	ldr r1, _0806CDF8 @ =0x00013118
	adds r0, r2, r1
	ldr r0, [r0]
_0806CDEE:
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	pop {r1}
	bx r1
	.align 2, 0
_0806CDF8: .4byte 0x00013118

	thumb_func_start sub_0806CDFC
sub_0806CDFC: @ 0x0806CDFC
	push {lr}
	adds r3, r0, #0
	ldr r0, _0806CE20 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0806CE24 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806CE2C
	ldr r1, _0806CE28 @ =0x00013168
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806CE32
	adds r0, r3, #0
	b _0806CE32
	.align 2, 0
_0806CE20: .4byte gEwramData
_0806CE24: .4byte 0x000004CC
_0806CE28: .4byte 0x00013168
_0806CE2C:
	ldr r1, _0806CE3C @ =0x00013118
	adds r0, r2, r1
	ldr r0, [r0]
_0806CE32:
	adds r0, #0x46
	movs r1, #0
	ldrsh r0, [r0, r1]
	pop {r1}
	bx r1
	.align 2, 0
_0806CE3C: .4byte 0x00013118

	thumb_func_start sub_0806CE40
sub_0806CE40: @ 0x0806CE40
	push {lr}
	ldr r0, _0806CE64 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0806CE68 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806CE70
	ldr r1, _0806CE6C @ =0x00013168
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806CE76
	movs r0, #0
	b _0806CE78
	.align 2, 0
_0806CE64: .4byte gEwramData
_0806CE68: .4byte 0x000004CC
_0806CE6C: .4byte 0x00013168
_0806CE70:
	ldr r1, _0806CE7C @ =0x00013118
	adds r0, r2, r1
	ldr r0, [r0]
_0806CE76:
	ldr r0, [r0, #0x48]
_0806CE78:
	pop {r1}
	bx r1
	.align 2, 0
_0806CE7C: .4byte 0x00013118

	thumb_func_start sub_0806CE80
sub_0806CE80: @ 0x0806CE80
	push {lr}
	ldr r0, _0806CEA4 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0806CEA8 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806CEB0
	ldr r1, _0806CEAC @ =0x00013168
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806CEB6
	movs r0, #0
	b _0806CEB8
	.align 2, 0
_0806CEA4: .4byte gEwramData
_0806CEA8: .4byte 0x000004CC
_0806CEAC: .4byte 0x00013168
_0806CEB0:
	ldr r1, _0806CEBC @ =0x00013118
	adds r0, r2, r1
	ldr r0, [r0]
_0806CEB6:
	ldr r0, [r0, #0x4c]
_0806CEB8:
	pop {r1}
	bx r1
	.align 2, 0
_0806CEBC: .4byte 0x00013118

	thumb_func_start sub_0806CEC0
sub_0806CEC0: @ 0x0806CEC0
	push {lr}
	adds r1, r0, #0
	ldr r0, _0806CEDC @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0806CEE0 @ =0x00013168
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _0806CEE4
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	b _0806CEF2
	.align 2, 0
_0806CEDC: .4byte gEwramData
_0806CEE0: .4byte 0x00013168
_0806CEE4:
	adds r0, r1, #0
	adds r0, #0x58
	ldrb r1, [r0]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	movs r0, #1
	eors r0, r1
_0806CEF2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806CEF8
sub_0806CEF8: @ 0x0806CEF8
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r0, _0806CF1C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806CF20 @ =0x00013168
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _0806CF16
	adds r0, r2, #0
	bl sub_080689F8
	cmp r0, r4
	bls _0806CF24
_0806CF16:
	movs r0, #0
	b _0806CF26
	.align 2, 0
_0806CF1C: .4byte gEwramData
_0806CF20: .4byte 0x00013168
_0806CF24:
	movs r0, #1
_0806CF26:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0806CF2C
sub_0806CF2C: @ 0x0806CF2C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0806CF60 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0806CF64 @ =0x00013168
	adds r0, r2, r1
	ldr r3, [r0]
	ldr r1, _0806CF68 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806CF4E
	ldr r1, _0806CF6C @ =0x00013118
	adds r0, r2, r1
	ldr r3, [r0]
_0806CF4E:
	cmp r3, #0
	bne _0806CF70
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	b _0806CF8C
	.align 2, 0
_0806CF60: .4byte gEwramData
_0806CF64: .4byte 0x00013168
_0806CF68: .4byte 0x000004CC
_0806CF6C: .4byte 0x00013118
_0806CF70:
	adds r0, r4, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r3, #0
	adds r1, #0x42
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0806CF8A
	movs r0, #1
	b _0806CF8C
_0806CF8A:
	movs r0, #0
_0806CF8C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806CF94
sub_0806CF94: @ 0x0806CF94
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0806CFC8 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0806CFCC @ =0x00013168
	adds r0, r2, r1
	ldr r3, [r0]
	ldr r1, _0806CFD0 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806CFB6
	ldr r1, _0806CFD4 @ =0x00013118
	adds r0, r2, r1
	ldr r3, [r0]
_0806CFB6:
	cmp r3, #0
	bne _0806CFD8
	bl RandomNumberGenerator
	adds r1, r0, #0
	movs r0, #1
	ands r0, r1
	b _0806CFF4
	.align 2, 0
_0806CFC8: .4byte gEwramData
_0806CFCC: .4byte 0x00013168
_0806CFD0: .4byte 0x000004CC
_0806CFD4: .4byte 0x00013118
_0806CFD8:
	adds r0, r4, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r3, #0
	adds r1, #0x46
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0806CFF2
	movs r0, #1
	b _0806CFF4
_0806CFF2:
	movs r0, #0
_0806CFF4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806CFFC
sub_0806CFFC: @ 0x0806CFFC
	push {r4, r5, r6, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r0, _0806D030 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806D034 @ =0x00013168
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0806D038
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	str r3, [sp]
	adds r3, r6, #0
	bl sub_08068AD4
	b _0806D03A
	.align 2, 0
_0806D030: .4byte gEwramData
_0806D034: .4byte 0x00013168
_0806D038:
	movs r0, #0
_0806D03A:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806D044
sub_0806D044: @ 0x0806D044
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0806CD38
	ldr r1, [r4, #0x40]
	subs r0, r0, r1
	cmp r0, #0
	bge _0806D064
	adds r0, r4, #0
	bl sub_0806CD38
	ldr r1, [r4, #0x40]
	subs r1, r1, r0
	asrs r1, r1, #0x10
	rsbs r5, r1, #0
	b _0806D070
_0806D064:
	adds r0, r4, #0
	bl sub_0806CD38
	ldr r1, [r4, #0x40]
	subs r0, r0, r1
	asrs r5, r0, #0x10
_0806D070:
	adds r0, r5, #0
	muls r0, r5, r0
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_0806CD78
	ldr r1, [r4, #0x44]
	subs r0, r0, r1
	cmp r0, #0
	bge _0806D094
	adds r0, r4, #0
	bl sub_0806CD78
	ldr r1, [r4, #0x44]
	subs r1, r1, r0
	asrs r1, r1, #0x10
	rsbs r0, r1, #0
	b _0806D0A0
_0806D094:
	adds r0, r4, #0
	bl sub_0806CD78
	ldr r1, [r4, #0x44]
	subs r0, r0, r1
	asrs r0, r0, #0x10
_0806D0A0:
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r5, r0
	bl Sqrt
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806D0B8
sub_0806D0B8: @ 0x0806D0B8
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0806D0EE
	adds r1, r4, #1
	adds r0, r5, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	beq _0806D0EA
	movs r0, #0
	b _0806D0FC
_0806D0EA:
	movs r0, #1
	b _0806D0FC
_0806D0EE:
	movs r0, #8
	ands r1, r0
	cmp r1, #0
	bne _0806D0FA
	movs r0, #2
	b _0806D0FC
_0806D0FA:
	movs r0, #3
_0806D0FC:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806D104
sub_0806D104: @ 0x0806D104
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xc0
	ands r0, r1
	cmp r0, #0
	bne _0806D122
	movs r0, #0
	b _0806D124
_0806D122:
	movs r0, #1
_0806D124:
	pop {r1}
	bx r1

	thumb_func_start sub_0806D128
sub_0806D128: @ 0x0806D128
	push {r4, r5, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, _0806D178 @ =0x08118D08
	mov r0, sp
	movs r2, #0x1c
	bl memcpy
	adds r0, r5, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r4, r4, #2
	mov r2, sp
	adds r0, r2, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmn r1, r0
	blt _0806D17C
	adds r0, #0xf0
	cmp r1, r0
	bgt _0806D17C
	adds r0, r5, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r0, sp
	adds r0, #2
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmn r1, r0
	blt _0806D17C
	adds r0, #0xa0
	cmp r1, r0
	bgt _0806D17C
	movs r0, #0
	b _0806D17E
	.align 2, 0
_0806D178: .4byte 0x08118D08
_0806D17C:
	movs r0, #1
_0806D17E:
	add sp, #0x1c
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806D188
sub_0806D188: @ 0x0806D188
	push {r4, r5, lr}
	adds r4, r1, #0
	ldr r1, _0806D1B4 @ =gEwramData
	ldr r1, [r1]
	ldr r2, _0806D1B8 @ =0x0000A094
	adds r1, r1, r2
	ldr r3, [r1]
	adds r0, #0x42
	movs r5, #0
	ldrsh r2, [r0, r5]
	movs r5, #6
	ldrsh r0, [r1, r5]
	adds r2, r2, r0
	cmp r2, #0
	bge _0806D1A8
	adds r2, #7
_0806D1A8:
	asrs r2, r2, #3
	ldrb r0, [r3]
	cmp r0, #1
	beq _0806D1BC
	lsls r0, r0, #5
	b _0806D1BE
	.align 2, 0
_0806D1B4: .4byte gEwramData
_0806D1B8: .4byte 0x0000A094
_0806D1BC:
	movs r0, #0x1e
_0806D1BE:
	cmp r2, r4
	bge _0806D1C6
	movs r0, #1
	b _0806D1D2
_0806D1C6:
	subs r0, r0, r4
	cmp r2, r0
	bgt _0806D1D0
	movs r0, #0
	b _0806D1D2
_0806D1D0:
	movs r0, #2
_0806D1D2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0806D1D8
sub_0806D1D8: @ 0x0806D1D8
	push {lr}
	adds r2, r1, #0
	adds r3, r0, #0
	adds r3, #0x58
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806D1F4
	ldr r0, [r2, #8]
	ldr r1, [r2]
	adds r0, r0, r1
	rsbs r0, r0, #0
	str r0, [r2]
_0806D1F4:
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806D208
	ldr r0, [r2, #0xc]
	ldr r1, [r2, #4]
	adds r0, r0, r1
	rsbs r0, r0, #0
	str r0, [r2, #4]
_0806D208:
	pop {r0}
	bx r0

	thumb_func_start sub_0806D20C
sub_0806D20C: @ 0x0806D20C
	push {lr}
	adds r2, r1, #0
	adds r3, r0, #0
	adds r3, #0x58
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806D22A
	movs r0, #0
	ldrsb r0, [r2, r0]
	ldrb r1, [r2, #2]
	adds r0, r0, r1
	rsbs r0, r0, #0
	strb r0, [r2]
_0806D22A:
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806D240
	movs r0, #1
	ldrsb r0, [r2, r0]
	ldrb r1, [r2, #3]
	adds r0, r0, r1
	rsbs r0, r0, #0
	strb r0, [r2, #3]
_0806D240:
	pop {r0}
	bx r0

	thumb_func_start sub_0806D244
sub_0806D244: @ 0x0806D244
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r3, r2, #0
	movs r1, #8
	adds r2, r5, #0
	bl sub_0804277C
	adds r0, r4, #0
	bl sub_0806B1FC
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0806D260
sub_0806D260: @ 0x0806D260
	push {lr}
	ldr r0, [r0, #0x68]
	ldr r1, [r0, #4]
	movs r3, #0
	ldrh r0, [r0]
	cmp r3, r0
	bge _0806D282
	adds r2, r1, #0
	adds r1, r0, #0
_0806D272:
	ldrb r0, [r2, #4]
	cmp r0, r3
	ble _0806D27A
	adds r3, r0, #0
_0806D27A:
	adds r2, #0x10
	subs r1, #1
	cmp r1, #0
	bne _0806D272
_0806D282:
	adds r0, r3, #0
	pop {r1}
	bx r1

	thumb_func_start sub_0806D288
sub_0806D288: @ 0x0806D288
	push {lr}
	movs r3, #0x80
	lsls r3, r3, #0xc
	bl sub_080698A8
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806D298
sub_0806D298: @ 0x0806D298
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	adds r5, r2, #0
	ldr r0, _0806D2BC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806D2C0 @ =0x0000A094
	adds r2, r0, r1
	ldr r1, [r4, #0x40]
	ldr r0, [r2, #4]
	adds r1, r1, r0
	subs r0, r3, r1
	cmp r0, #0
	bge _0806D2C4
	subs r0, r1, r3
	asrs r0, r0, #0x10
	rsbs r3, r0, #0
	b _0806D2C6
	.align 2, 0
_0806D2BC: .4byte gEwramData
_0806D2C0: .4byte 0x0000A094
_0806D2C4:
	asrs r3, r0, #0x10
_0806D2C6:
	adds r0, r3, #0
	muls r0, r3, r0
	adds r3, r0, #0
	ldr r1, [r4, #0x44]
	ldr r0, [r2, #8]
	adds r1, r1, r0
	subs r0, r5, r1
	cmp r0, #0
	bge _0806D2E0
	subs r0, r1, r5
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0806D2E2
_0806D2E0:
	asrs r0, r0, #0x10
_0806D2E2:
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r3, r0
	bl Sqrt
	lsls r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806D2F8
sub_0806D2F8: @ 0x0806D2F8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	movs r0, #0x80
	lsls r0, r0, #9
	cmp r5, r0
	bne _0806D31C
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	str r0, [r6, #0x48]
	adds r0, r4, #0
	bl sub_080009E4
	b _0806D33A
_0806D31C:
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	adds r1, r5, #0
	bl sub_0803E86C
	str r0, [r6, #0x48]
	adds r0, r4, #0
	bl sub_080009E4
	adds r1, r5, #0
	bl sub_0803E86C
_0806D33A:
	str r0, [r6, #0x4c]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806D344
sub_0806D344: @ 0x0806D344
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_0806D35C
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806D384
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0806D35C
sub_0806D35C: @ 0x0806D35C
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x48]
	ldr r3, [r2, #0x50]
	adds r0, r0, r3
	str r0, [r2, #0x48]
	cmp r1, #0
	beq _0806D37E
	cmp r3, #0
	blt _0806D376
	cmp r0, r1
	ble _0806D37E
	b _0806D37C
_0806D376:
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0806D37E
_0806D37C:
	str r1, [r2, #0x48]
_0806D37E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806D384
sub_0806D384: @ 0x0806D384
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x4c]
	ldr r3, [r2, #0x54]
	adds r0, r0, r3
	str r0, [r2, #0x4c]
	cmp r1, #0
	beq _0806D3A6
	cmp r3, #0
	blt _0806D39E
	cmp r0, r1
	ble _0806D3A6
	b _0806D3A4
_0806D39E:
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0806D3A6
_0806D3A4:
	str r1, [r2, #0x4c]
_0806D3A6:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806D3AC
sub_0806D3AC: @ 0x0806D3AC
	ldr r1, [r0, #0x40]
	ldr r2, [r0, #0x48]
	adds r1, r1, r2
	str r1, [r0, #0x40]
	ldr r1, [r0, #0x44]
	ldr r2, [r0, #0x4c]
	adds r1, r1, r2
	str r1, [r0, #0x44]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806D3C0
sub_0806D3C0: @ 0x0806D3C0
	ldr r1, [r0, #0x40]
	ldr r2, [r0, #0x48]
	adds r1, r1, r2
	str r1, [r0, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806D3CC
sub_0806D3CC: @ 0x0806D3CC
	ldr r1, [r0, #0x44]
	ldr r2, [r0, #0x4c]
	adds r1, r1, r2
	str r1, [r0, #0x44]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806D3D8
sub_0806D3D8: @ 0x0806D3D8
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x48]
	ldr r3, [r2, #0x50]
	adds r0, r0, r3
	str r0, [r2, #0x48]
	cmp r1, #0
	beq _0806D3FC
	cmp r3, #0
	blt _0806D3F4
	cmp r0, r1
	ble _0806D3FC
	str r1, [r2, #0x48]
	b _0806D3FC
_0806D3F4:
	rsbs r3, r1, #0
	cmp r0, r3
	bge _0806D3FC
	str r3, [r2, #0x48]
_0806D3FC:
	ldr r0, [r2, #0x4c]
	ldr r3, [r2, #0x54]
	adds r0, r0, r3
	str r0, [r2, #0x4c]
	cmp r1, #0
	beq _0806D41A
	cmp r3, #0
	blt _0806D412
	cmp r0, r1
	ble _0806D41A
	b _0806D418
_0806D412:
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0806D41A
_0806D418:
	str r1, [r2, #0x4c]
_0806D41A:
	ldr r0, [r2, #0x40]
	ldr r1, [r2, #0x48]
	adds r0, r0, r1
	str r0, [r2, #0x40]
	ldr r0, [r2, #0x44]
	ldr r1, [r2, #0x4c]
	adds r0, r0, r1
	str r0, [r2, #0x44]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806D430
sub_0806D430: @ 0x0806D430
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x48]
	ldr r3, [r2, #0x50]
	adds r0, r0, r3
	str r0, [r2, #0x48]
	cmp r1, #0
	beq _0806D452
	cmp r3, #0
	blt _0806D44A
	cmp r0, r1
	ble _0806D452
	b _0806D450
_0806D44A:
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0806D452
_0806D450:
	str r1, [r2, #0x48]
_0806D452:
	ldr r0, [r2, #0x40]
	ldr r1, [r2, #0x48]
	adds r0, r0, r1
	str r0, [r2, #0x40]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806D460
sub_0806D460: @ 0x0806D460
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x4c]
	ldr r3, [r2, #0x54]
	adds r0, r0, r3
	str r0, [r2, #0x4c]
	cmp r1, #0
	beq _0806D482
	cmp r3, #0
	blt _0806D47A
	cmp r0, r1
	ble _0806D482
	b _0806D480
_0806D47A:
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0806D482
_0806D480:
	str r1, [r2, #0x4c]
_0806D482:
	ldr r0, [r2, #0x44]
	ldr r1, [r2, #0x4c]
	adds r0, r0, r1
	str r0, [r2, #0x44]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806D490
sub_0806D490: @ 0x0806D490
	push {r4, lr}
	adds r4, r0, #0
	subs r2, r1, #1
	ldr r0, [r4, #0x48]
	muls r0, r2, r0
	bl __divsi3
	str r0, [r4, #0x48]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806D4A8
sub_0806D4A8: @ 0x0806D4A8
	push {r4, lr}
	adds r4, r0, #0
	subs r2, r1, #1
	ldr r0, [r4, #0x4c]
	muls r0, r2, r0
	bl __divsi3
	str r0, [r4, #0x4c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806D4C0
sub_0806D4C0: @ 0x0806D4C0
	push {lr}
	adds r3, r0, #0
	ldr r0, _0806D504 @ =gEwramData
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806D510
	ldr r1, _0806D508 @ =0x000004BE
	adds r0, r2, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0806D510
	ldr r2, _0806D50C @ =0x080E9644
	adds r0, r3, #0
	adds r0, #0x36
	ldrb r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r0, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0806D510
	movs r0, #1
	b _0806D512
	.align 2, 0
_0806D504: .4byte gEwramData
_0806D508: .4byte 0x000004BE
_0806D50C: .4byte 0x080E9644
_0806D510:
	movs r0, #0
_0806D512:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806D518
sub_0806D518: @ 0x0806D518
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	ldr r1, _0806D53C @ =0x08118CE0
	mov r0, sp
	movs r2, #0x28
	bl memcpy
	cmp r4, #0x27
	bgt _0806D540
	cmp r4, #0
	blt _0806D540
	mov r1, sp
	adds r0, r1, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _0806D542
	.align 2, 0
_0806D53C: .4byte 0x08118CE0
_0806D540:
	movs r0, #0
_0806D542:
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806D54C
sub_0806D54C: @ 0x0806D54C
	push {lr}
	movs r1, #0x34
	ldrsh r3, [r0, r1]
	ldr r2, _0806D56C @ =0x080E9644
	adds r0, #0x36
	ldrb r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #0xc]
	cmp r3, r0
	blt _0806D570
	movs r0, #0
	b _0806D572
	.align 2, 0
_0806D56C: .4byte 0x080E9644
_0806D570:
	movs r0, #1
_0806D572:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806D578
sub_0806D578: @ 0x0806D578
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r2, _0806D5BC @ =sub_0806E524
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806D5B4
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
_0806D5B4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D5BC: .4byte sub_0806E524

	thumb_func_start sub_0806D5C0
sub_0806D5C0: @ 0x0806D5C0
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	mov r8, r0
	mov sb, r1
	adds r4, r2, #0
	adds r5, r3, #0
	bl RandomNumberGenerator
	adds r1, r4, #0
	bl __umodsi3
	adds r6, r0, #0
	lsrs r0, r4, #0x1f
	adds r4, r4, r0
	asrs r4, r4, #1
	subs r6, r6, r4
	bl RandomNumberGenerator
	adds r1, r5, #0
	bl __umodsi3
	lsrs r1, r5, #0x1f
	adds r5, r5, r1
	asrs r5, r5, #1
	subs r0, r0, r5
	mov r1, r8
	adds r5, r1, r6
	mov r1, sb
	adds r6, r1, r0
	ldr r2, _0806D640 @ =sub_0806E524
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806D634
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
	adds r1, r4, #0
	adds r1, #0x5c
	ldr r0, [sp, #0x18]
	strb r0, [r1]
_0806D634:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806D640: .4byte sub_0806E524

	thumb_func_start sub_0806D644
sub_0806D644: @ 0x0806D644
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _0806D6BC @ =sub_08068F78
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806D6B0
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
	ldr r0, _0806D6C0 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0806D6C4 @ =0x0820ED60
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
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0806D6C8 @ =sub_0803B9D0
	str r0, [r4, #4]
_0806D6B0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D6BC: .4byte sub_08068F78
_0806D6C0: .4byte 0x081C15F4
_0806D6C4: .4byte 0x0820ED60
_0806D6C8: .4byte sub_0803B9D0

	thumb_func_start sub_0806D6CC
sub_0806D6CC: @ 0x0806D6CC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _0806D75C @ =sub_08068F78
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806D752
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
	ldr r0, _0806D760 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0806D764 @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #7
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0x11
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
	ldr r0, _0806D768 @ =sub_0803B9D0
	str r0, [r4, #4]
_0806D752:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D75C: .4byte sub_08068F78
_0806D760: .4byte 0x081C15F4
_0806D764: .4byte 0x0820ED60
_0806D768: .4byte sub_0803B9D0

	thumb_func_start sub_0806D76C
sub_0806D76C: @ 0x0806D76C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _0806D7E0 @ =sub_08069134
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806D7D6
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
	ldr r0, [sp, #0x20]
	strb r0, [r4, #0x18]
	ldr r0, [sp, #0x1c]
	strb r0, [r4, #0x1a]
	ldr r0, _0806D7E4 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0806D7E8 @ =0x0820ED60
	adds r0, r4, #0
	ldr r3, [sp, #0x24]
	bl sub_0803B924
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x35
	strb r0, [r1]
	ldr r0, [sp, #0x28]
	strb r0, [r4, #0xd]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0806D7EC @ =sub_0803B9D0
	str r0, [r4, #4]
_0806D7D6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D7E0: .4byte sub_08069134
_0806D7E4: .4byte 0x081C15F4
_0806D7E8: .4byte 0x0820ED60
_0806D7EC: .4byte sub_0803B9D0

	thumb_func_start sub_0806D7F0
sub_0806D7F0: @ 0x0806D7F0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _0806D84C @ =sub_08068F78
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806D886
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	ldr r0, _0806D850 @ =0xFFFFC000
	str r0, [r4, #0x4c]
	adds r0, r4, #0
	adds r0, #0x5c
	movs r1, #0
	strb r7, [r0]
	strb r1, [r4, #0xd]
	movs r0, #4
	strb r0, [r4, #0x18]
	ldr r0, _0806D854 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0806D858 @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803B924
	mov r0, r8
	cmp r0, #0
	bne _0806D85C
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0806D870
	.align 2, 0
_0806D84C: .4byte sub_08068F78
_0806D850: .4byte 0xFFFFC000
_0806D854: .4byte 0x081C15F4
_0806D858: .4byte 0x0820ED60
_0806D85C:
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r4, #0
	adds r1, #0x6e
	movs r0, #2
	strb r0, [r1]
_0806D870:
	adds r0, r4, #0
	bl sub_0803F17C
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0806D890 @ =sub_0803B9D0
	str r0, [r4, #4]
_0806D886:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D890: .4byte sub_0803B9D0

	thumb_func_start sub_0806D894
sub_0806D894: @ 0x0806D894
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _0806D8F4 @ =sub_08068F78
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806D922
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
	movs r0, #7
	strb r0, [r4, #0x18]
	ldr r0, _0806D8F8 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0806D8FC @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803B924
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0806D900
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0806D90C
	.align 2, 0
_0806D8F4: .4byte sub_08068F78
_0806D8F8: .4byte 0x081C15F4
_0806D8FC: .4byte 0x0820ED60
_0806D900:
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0806D90C:
	adds r0, r4, #0
	bl sub_0803F17C
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0806D92C @ =sub_0803B9D0
	str r0, [r4, #4]
_0806D922:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D92C: .4byte sub_0803B9D0

	thumb_func_start sub_0806D930
sub_0806D930: @ 0x0806D930
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _0806D990 @ =sub_08068F78
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806D9BE
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
	ldr r0, [sp, #0x20]
	strb r0, [r4, #0x18]
	ldr r0, _0806D994 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0806D998 @ =0x0820ED60
	adds r0, r4, #0
	ldr r3, [sp, #0x24]
	bl sub_0803B924
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0806D99C
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0806D9A8
	.align 2, 0
_0806D990: .4byte sub_08068F78
_0806D994: .4byte 0x081C15F4
_0806D998: .4byte 0x0820ED60
_0806D99C:
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0806D9A8:
	adds r0, r4, #0
	bl sub_0803F17C
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0806D9C8 @ =sub_0803B9D0
	str r0, [r4, #4]
_0806D9BE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D9C8: .4byte sub_0803B9D0

	thumb_func_start sub_0806D9CC
sub_0806D9CC: @ 0x0806D9CC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _0806DA30 @ =sub_080692E0
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806DA5E
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
	ldr r0, [sp, #0x24]
	strb r0, [r4, #0x18]
	ldr r0, [sp, #0x20]
	strb r0, [r4, #0x1a]
	ldr r0, _0806DA34 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0806DA38 @ =0x0820ED60
	adds r0, r4, #0
	ldr r3, [sp, #0x28]
	bl sub_0803B924
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0806DA3C
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0806DA48
	.align 2, 0
_0806DA30: .4byte sub_080692E0
_0806DA34: .4byte 0x081C15F4
_0806DA38: .4byte 0x0820ED60
_0806DA3C:
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0806DA48:
	adds r0, r4, #0
	bl sub_0803F17C
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0806DA68 @ =sub_0803B9D0
	str r0, [r4, #4]
_0806DA5E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806DA68: .4byte sub_0803B9D0

	thumb_func_start sub_0806DA6C
sub_0806DA6C: @ 0x0806DA6C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	mov r8, r1
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r7, [sp, #0x18]
	bl RandomNumberGenerator
	adds r1, r4, #0
	bl __umodsi3
	lsrs r1, r4, #0x1f
	adds r4, r4, r1
	asrs r4, r4, #1
	subs r0, r0, r4
	adds r6, r6, r0
	bl RandomNumberGenerator
	adds r1, r5, #0
	bl __umodsi3
	lsrs r1, r5, #0x1f
	adds r5, r5, r1
	asrs r5, r5, #1
	subs r0, r0, r5
	add r8, r0
	adds r0, r6, #0
	mov r1, r8
	adds r2, r7, #0
	ldr r3, [sp, #0x1c]
	bl sub_0806D7F0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806DABC
sub_0806DABC: @ 0x0806DABC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _0806DB1C @ =sub_08069048
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806DB4A
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
	movs r0, #7
	strb r0, [r4, #0x18]
	ldr r0, _0806DB20 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0806DB24 @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803B924
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0806DB28
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0806DB34
	.align 2, 0
_0806DB1C: .4byte sub_08069048
_0806DB20: .4byte 0x081C15F4
_0806DB24: .4byte 0x0820ED60
_0806DB28:
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0806DB34:
	adds r0, r4, #0
	bl sub_0803F17C
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0806DB54 @ =sub_0803B9D0
	str r0, [r4, #4]
_0806DB4A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806DB54: .4byte sub_0803B9D0

	thumb_func_start sub_0806DB58
sub_0806DB58: @ 0x0806DB58
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _0806DBD0 @ =sub_08068F78
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806DBC4
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
	ldr r0, [sp, #0x1c]
	strb r0, [r4, #0x18]
	ldr r0, _0806DBD4 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0806DBD8 @ =0x0820ED60
	adds r0, r4, #0
	ldr r3, [sp, #0x20]
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0xc
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
	ldr r0, _0806DBDC @ =sub_0803B9D0
	str r0, [r4, #4]
_0806DBC4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806DBD0: .4byte sub_08068F78
_0806DBD4: .4byte 0x081C15F4
_0806DBD8: .4byte 0x0820ED60
_0806DBDC: .4byte sub_0803B9D0

	thumb_func_start sub_0806DBE0
sub_0806DBE0: @ 0x0806DBE0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _0806DC50 @ =sub_0806E59C
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806DC46
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	str r7, [r4, #0x48]
	mov r0, r8
	str r0, [r4, #0x4c]
	movs r2, #0
	str r2, [r4, #0x50]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	adds r1, r4, #0
	adds r1, #0x5c
	ldr r0, [sp, #0x18]
	strb r0, [r1]
	strb r2, [r4, #0xd]
	ldr r0, _0806DC54 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0806DC58 @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803B924
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x35
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0806DC5C @ =sub_0803B9D0
	str r0, [r4, #4]
_0806DC46:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806DC50: .4byte sub_0806E59C
_0806DC54: .4byte 0x081C15F4
_0806DC58: .4byte 0x0820ED60
_0806DC5C: .4byte sub_0803B9D0

	thumb_func_start sub_0806DC60
sub_0806DC60: @ 0x0806DC60
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r2, _0806DCB4 @ =sub_0806E5C4
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806DCAE
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	adds r0, #0x5c
	strb r7, [r0]
	ldr r0, _0806DCB8 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0806DCBC @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0806DCC0 @ =sub_0803B9D0
	str r0, [r4, #4]
_0806DCAE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806DCB4: .4byte sub_0806E5C4
_0806DCB8: .4byte 0x081C15F4
_0806DCBC: .4byte 0x0820ED60
_0806DCC0: .4byte sub_0803B9D0

	thumb_func_start sub_0806DCC4
sub_0806DCC4: @ 0x0806DCC4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _0806DD24 @ =sub_08069134
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806DD56
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
	ldr r0, _0806DD28 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0806DD2C @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803B924
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0806DD30
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x40
	b _0806DD44
	.align 2, 0
_0806DD24: .4byte sub_08069134
_0806DD28: .4byte 0x081C15F4
_0806DD2C: .4byte 0x0820ED60
_0806DD30:
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	bne _0806DD3E
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x41
	b _0806DD44
_0806DD3E:
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x42
_0806DD44:
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0806DD60 @ =sub_0803B9D0
	str r0, [r4, #4]
_0806DD56:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806DD60: .4byte sub_0803B9D0

	thumb_func_start sub_0806DD64
sub_0806DD64: @ 0x0806DD64
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _0806DDF4 @ =sub_08068F78
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806DDE8
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	str r7, [r4, #0x48]
	mov r0, r8
	str r0, [r4, #0x4c]
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
	adds r1, r4, #0
	adds r1, #0x5c
	ldr r0, [sp, #0x18]
	strb r0, [r1]
	movs r0, #3
	strb r0, [r4, #0x18]
	ldr r0, _0806DDF8 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0806DDFC @ =0x0820ED60
	ldr r3, [sp, #0x1c]
	adds r3, #6
	adds r0, r4, #0
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0xd
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
	ldr r0, _0806DE00 @ =sub_0803B9D0
	str r0, [r4, #4]
_0806DDE8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806DDF4: .4byte sub_08068F78
_0806DDF8: .4byte 0x081C15F4
_0806DDFC: .4byte 0x0820ED60
_0806DE00: .4byte sub_0803B9D0

	thumb_func_start sub_0806DE04
sub_0806DE04: @ 0x0806DE04
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r2, _0806DE48 @ =sub_0806E5DC
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r2, r0, #0
	cmp r2, #0
	beq _0806DE42
	str r4, [r2, #0x40]
	str r5, [r2, #0x44]
	adds r1, r2, #0
	adds r1, #0x5c
	ldr r0, [sp, #0x10]
	strb r0, [r1]
	adds r3, r2, #0
	adds r3, #0x72
	ldrb r0, [r3]
	movs r1, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	subs r3, #0x19
	ldrb r0, [r3]
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _0806DE4C @ =sub_0803B9D0
	str r0, [r2, #4]
_0806DE42:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806DE48: .4byte sub_0806E5DC
_0806DE4C: .4byte sub_0803B9D0

	thumb_func_start sub_0806DE50
sub_0806DE50: @ 0x0806DE50
	push {lr}
	adds r3, r0, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806DE74
	ldr r0, _0806DE6C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806DE70 @ =0x00013110
	adds r0, r0, r1
	b _0806DEA8
	.align 2, 0
_0806DE6C: .4byte gEwramData
_0806DE70: .4byte 0x00013110
_0806DE74:
	ldr r0, _0806DE98 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0806DE9C @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806DEA4
	ldr r1, _0806DEA0 @ =0x00013168
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806DEAA
	ldr r1, [r3, #0x40]
	adds r0, r1, #0
	b _0806DEAE
	.align 2, 0
_0806DE98: .4byte gEwramData
_0806DE9C: .4byte 0x000004CC
_0806DEA0: .4byte 0x00013168
_0806DEA4:
	ldr r1, _0806DEB4 @ =0x00013118
	adds r0, r2, r1
_0806DEA8:
	ldr r0, [r0]
_0806DEAA:
	ldr r1, [r0, #0x40]
	ldr r0, [r3, #0x40]
_0806DEAE:
	subs r0, r0, r1
	pop {r1}
	bx r1
	.align 2, 0
_0806DEB4: .4byte 0x00013118

	thumb_func_start sub_0806DEB8
sub_0806DEB8: @ 0x0806DEB8
	push {lr}
	adds r3, r0, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806DEDC
	ldr r0, _0806DED4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806DED8 @ =0x00013110
	adds r0, r0, r1
	b _0806DF10
	.align 2, 0
_0806DED4: .4byte gEwramData
_0806DED8: .4byte 0x00013110
_0806DEDC:
	ldr r0, _0806DF00 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0806DF04 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806DF0C
	ldr r1, _0806DF08 @ =0x00013168
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806DF12
	ldr r1, [r3, #0x44]
	adds r0, r1, #0
	b _0806DF16
	.align 2, 0
_0806DF00: .4byte gEwramData
_0806DF04: .4byte 0x000004CC
_0806DF08: .4byte 0x00013168
_0806DF0C:
	ldr r1, _0806DF1C @ =0x00013118
	adds r0, r2, r1
_0806DF10:
	ldr r0, [r0]
_0806DF12:
	ldr r1, [r0, #0x44]
	ldr r0, [r3, #0x44]
_0806DF16:
	subs r0, r0, r1
	pop {r1}
	bx r1
	.align 2, 0
_0806DF1C: .4byte 0x00013118

	thumb_func_start sub_0806DF20
sub_0806DF20: @ 0x0806DF20
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x65
	ldrb r4, [r6]
	bl sub_0803F17C
	ldrb r6, [r6]
	cmp r4, r6
	beq _0806DF3A
	adds r0, r5, #0
	bl sub_0806B1FC
_0806DF3A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0806DF40
sub_0806DF40: @ 0x0806DF40
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r0, _0806DF7C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806DF80 @ =0x0000A094
	adds r0, r0, r1
	ldr r5, [r0]
	adds r0, r6, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r0, r4
	cmp r0, #0
	bge _0806DF6E
	adds r0, #7
_0806DF6E:
	asrs r1, r0, #3
	ldrb r0, [r5]
	cmp r0, #1
	beq _0806DF84
	lsls r0, r0, #5
	b _0806DF86
	.align 2, 0
_0806DF7C: .4byte gEwramData
_0806DF80: .4byte 0x0000A094
_0806DF84:
	movs r0, #0x1e
_0806DF86:
	cmp r1, #0
	blt _0806DFBE
	cmp r1, r0
	bge _0806DFBE
	adds r0, r6, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	cmp r0, #0
	bge _0806DFA4
	adds r0, #7
_0806DFA4:
	asrs r1, r0, #3
	ldrb r0, [r5, #1]
	cmp r0, #1
	beq _0806DFB0
	lsls r0, r0, #5
	b _0806DFB2
_0806DFB0:
	movs r0, #0x1a
_0806DFB2:
	cmp r1, #0
	blt _0806DFBE
	cmp r1, r0
	bge _0806DFBE
	movs r0, #0
	b _0806DFC0
_0806DFBE:
	movs r0, #1
_0806DFC0:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806DFC8
sub_0806DFC8: @ 0x0806DFC8
	push {lr}
	sub sp, #0x10
	mov r2, sp
	movs r3, #0
	movs r1, #1
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

	thumb_func_start sub_0806DFF8
sub_0806DFF8: @ 0x0806DFF8
	push {lr}
	adds r2, r0, #0
	ldr r0, _0806E018 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806E01C
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	b _0806E024
	.align 2, 0
_0806E018: .4byte gEwramData
_0806E01C:
	movs r0, #0xd0
	movs r1, #0xdf
	bl EntityCreateInRange
_0806E024:
	pop {r1}
	bx r1

	thumb_func_start sub_0806E028
sub_0806E028: @ 0x0806E028
	sub sp, #4
	ldr r0, _0806E050 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0806E054 @ =0x000143F4
	adds r2, r2, r0
	movs r3, #0
	str r3, [sp]
	ldr r0, _0806E058 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _0806E05C @ =0x85000200
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	strh r3, [r2]
	ldr r0, _0806E060 @ =0x000001FF
	strh r0, [r2, #2]
	add sp, #4
	bx lr
	.align 2, 0
_0806E050: .4byte gEwramData
_0806E054: .4byte 0x000143F4
_0806E058: .4byte 0x040000D4
_0806E05C: .4byte 0x85000200
_0806E060: .4byte 0x000001FF

	thumb_func_start sub_0806E064
sub_0806E064: @ 0x0806E064
	ldr r0, _0806E088 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806E08C @ =0x000143F4
	adds r2, r0, r1
	ldr r1, _0806E090 @ =0x040000D4
	str r2, [r1]
	ldr r3, _0806E094 @ =0x00014BF4
	adds r0, r0, r3
	str r0, [r1, #4]
	ldr r0, _0806E098 @ =0x84000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	strh r0, [r2]
	ldr r0, _0806E09C @ =0x000001FF
	strh r0, [r2, #2]
	bx lr
	.align 2, 0
_0806E088: .4byte gEwramData
_0806E08C: .4byte 0x000143F4
_0806E090: .4byte 0x040000D4
_0806E094: .4byte 0x00014BF4
_0806E098: .4byte 0x84000200
_0806E09C: .4byte 0x000001FF

	thumb_func_start sub_0806E0A0
sub_0806E0A0: @ 0x0806E0A0
	ldr r2, _0806E0BC @ =0x040000D4
	ldr r0, _0806E0C0 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _0806E0C4 @ =0x00014BF4
	adds r1, r0, r3
	str r1, [r2]
	ldr r1, _0806E0C8 @ =0x000143F4
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E0CC @ =0x84000200
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	bx lr
	.align 2, 0
_0806E0BC: .4byte 0x040000D4
_0806E0C0: .4byte gEwramData
_0806E0C4: .4byte 0x00014BF4
_0806E0C8: .4byte 0x000143F4
_0806E0CC: .4byte 0x84000200

	thumb_func_start sub_0806E0D0
sub_0806E0D0: @ 0x0806E0D0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	adds r6, r2, #0
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	movs r1, #0
	bl sub_0803B800
	adds r7, r0, #0
	cmp r7, #0
	blt _0806E118
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08068264
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	blt _0806E118
	adds r0, r4, #0
	adds r0, #0x2c
	strb r1, [r0]
	ldrb r3, [r0]
	adds r0, r4, #0
	ldr r1, [sp, #0x14]
	adds r2, r7, #0
	bl sub_0803B924
	ldr r0, _0806E114 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _0806E11A
	.align 2, 0
_0806E114: .4byte sub_0803B9D0
_0806E118:
	movs r0, #0
_0806E11A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0806E120
sub_0806E120: @ 0x0806E120
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806E136
	str r3, [r2, #0x48]
	b _0806E13A
_0806E136:
	rsbs r0, r3, #0
	str r0, [r2, #0x48]
_0806E13A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806E140
sub_0806E140: @ 0x0806E140
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	adds r5, r3, #0
	ldr r0, [sp, #0x1c]
	ldr r1, [r4, #0x40]
	mov r8, r1
	ldr r1, [r4, #0x44]
	mov sb, r1
	cmp r0, #0
	bne _0806E16E
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806E16E
	adds r0, r4, #0
	bl sub_0806BC40
_0806E16E:
	str r5, [r4, #0x4c]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806E182
	str r6, [r4, #0x48]
	b _0806E186
_0806E182:
	rsbs r0, r6, #0
	str r0, [r4, #0x48]
_0806E186:
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r2, r7, #0
	movs r3, #0x80
	lsls r3, r3, #0xc
	bl sub_080698A8
	adds r1, r0, #0
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0806E1A8
	mov r0, r8
	str r0, [r4, #0x40]
	mov r0, sb
	str r0, [r4, #0x44]
_0806E1A8:
	adds r0, r1, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806E1B8
sub_0806E1B8: @ 0x0806E1B8
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

	thumb_func_start sub_0806E1E8
sub_0806E1E8: @ 0x0806E1E8
	push {lr}
	sub sp, #0x10
	mov r2, sp
	movs r3, #0
	movs r1, #1
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

	thumb_func_start sub_0806E218
sub_0806E218: @ 0x0806E218
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
	adds r0, r4, #0
	movs r2, #0
	bl sub_08042B8C
	movs r1, #0x34
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0806E25E
	movs r0, #0
	b _0806E260
_0806E25E:
	movs r0, #1
_0806E260:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806E268
sub_0806E268: @ 0x0806E268
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r2, #0x20
	movs r4, #0
	movs r1, #6
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _0806E280
	movs r4, #6
	b _0806E294
_0806E280:
	asrs r2, r2, #1
	subs r1, #1
	cmp r1, #0
	ble _0806E294
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _0806E280
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
_0806E294:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0806E29C
sub_0806E29C: @ 0x0806E29C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r3, _0806E2F8 @ =gEwramData
	ldr r4, [r3]
	ldr r5, _0806E2FC @ =0x00013168
	adds r3, r4, r5
	ldr r5, [r3]
	adds r3, r0, #0
	adds r3, #0x42
	lsrs r1, r1, #0x11
	ldrh r3, [r3]
	subs r3, r3, r1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, #0x46
	lsrs r2, r2, #0x11
	ldrh r0, [r0]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, _0806E300 @ =0x000004CC
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806E2E0
	ldr r5, _0806E304 @ =0x00013118
	adds r0, r4, r5
	ldr r5, [r0]
_0806E2E0:
	cmp r5, #0
	beq _0806E308
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r6, [sp]
	adds r0, r5, #0
	adds r3, r7, #0
	bl sub_08068AD4
	b _0806E30A
	.align 2, 0
_0806E2F8: .4byte gEwramData
_0806E2FC: .4byte 0x00013168
_0806E300: .4byte 0x000004CC
_0806E304: .4byte 0x00013118
_0806E308:
	movs r0, #0
_0806E30A:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806E314
sub_0806E314: @ 0x0806E314
	push {r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0806E346
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
	beq _0806E346
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
_0806E346:
	add sp, #0x14
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806E350
sub_0806E350: @ 0x0806E350
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
	beq _0806E386
	lsls r0, r4, #0x10
	rsbs r0, r0, #0
	lsrs r4, r0, #0x10
_0806E386:
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

	thumb_func_start sub_0806E3B0
sub_0806E3B0: @ 0x0806E3B0
	push {lr}
	adds r3, r0, #0
	ldr r0, _0806E3D4 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0806E3D8 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806E3E0
	ldr r1, _0806E3DC @ =0x00013168
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806E3E6
	adds r0, r3, #0
	b _0806E3E6
	.align 2, 0
_0806E3D4: .4byte gEwramData
_0806E3D8: .4byte 0x000004CC
_0806E3DC: .4byte 0x00013168
_0806E3E0:
	ldr r1, _0806E3F4 @ =0x00013118
	adds r0, r2, r1
	ldr r0, [r0]
_0806E3E6:
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	pop {r1}
	bx r1
	.align 2, 0
_0806E3F4: .4byte 0x00013118

	thumb_func_start sub_0806E3F8
sub_0806E3F8: @ 0x0806E3F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, [r4, #0x40]
	subs r0, r1, r3
	cmp r0, #0
	bge _0806E40C
	subs r0, r3, r1
	asrs r0, r0, #0x10
	rsbs r1, r0, #0
	b _0806E40E
_0806E40C:
	asrs r1, r0, #0x10
_0806E40E:
	adds r0, r1, #0
	muls r0, r1, r0
	adds r1, r0, #0
	ldr r3, [r4, #0x44]
	subs r0, r2, r3
	cmp r0, #0
	bge _0806E424
	subs r0, r3, r2
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0806E426
_0806E424:
	asrs r0, r0, #0x10
_0806E426:
	adds r2, r0, #0
	muls r2, r0, r2
	adds r0, r2, #0
	adds r0, r1, r0
	bl Sqrt
	lsls r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806E43C
sub_0806E43C: @ 0x0806E43C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
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
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r7, r0, #0x10
	adds r0, r5, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	cmp r4, #0
	bge _0806E48C
	rsbs r0, r4, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0806E48E
_0806E48C:
	asrs r0, r4, #0x10
_0806E48E:
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	adds r0, r5, #0
	adds r0, #0x46
	movs r1, #0
	ldrsh r2, [r0, r1]
	cmp r6, #0
	bge _0806E4A8
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0806E4AA
_0806E4A8:
	asrs r0, r6, #0x10
_0806E4AA:
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r3, #0
	bl ArcTan2
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r2, sl
	lsls r4, r2, #0x18
	asrs r4, r4, #0x18
	lsrs r7, r4
	adds r4, r7, #0
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
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0806E4F8
sub_0806E4F8: @ 0x0806E4F8
	push {lr}
	adds r2, r0, #0
	adds r0, #0x46
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, r1
	bge _0806E514
	adds r0, r2, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	b _0806E520
_0806E514:
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0806E520:
	pop {r0}
	bx r0

	thumb_func_start sub_0806E524
sub_0806E524: @ 0x0806E524
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0806E534
	cmp r0, #1
	beq _0806E578
	b _0806E580
_0806E534:
	ldr r0, _0806E56C @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0806E570 @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #7
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0806E574 @ =sub_0803B9D0
	str r0, [r4, #4]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _0806E580
	.align 2, 0
_0806E56C: .4byte 0x081C15F4
_0806E570: .4byte 0x0820ED60
_0806E574: .4byte sub_0803B9D0
_0806E578:
	ldr r0, [r4, #0x44]
	ldr r1, _0806E598 @ =0xFFFF8000
	adds r0, r0, r1
	str r0, [r4, #0x44]
_0806E580:
	adds r0, r4, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _0806E590
	adds r0, r4, #0
	bl EntityDelete
_0806E590:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806E598: .4byte 0xFFFF8000

	thumb_func_start sub_0806E59C
sub_0806E59C: @ 0x0806E59C
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
	cmp r0, #0x78
	bls _0806E5BC
	adds r0, r4, #0
	bl EntityDelete
_0806E5BC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806E5C4
sub_0806E5C4: @ 0x0806E5C4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _0806E5D6
	adds r0, r4, #0
	bl EntityDelete
_0806E5D6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0806E5DC
sub_0806E5DC: @ 0x0806E5DC
	push {lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldrb r0, [r1, #0xd]
	subs r0, #1
	strb r0, [r1, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0806E5F4
	adds r0, r1, #0
	bl EntityDelete
_0806E5F4:
	add sp, #0x10
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806E5FC
sub_0806E5FC: @ 0x0806E5FC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _0806E640 @ =gEwramData
	ldr r2, [r2]
	ldr r3, _0806E644 @ =0x0000A094
	adds r5, r2, r3
	movs r2, #0
	movs r6, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
_0806E618:
	ldrh r0, [r5, #6]
	add r0, r8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r5, #0xa]
	adds r1, r7, r1
	lsls r2, r2, #0x10
	asrs r4, r2, #0x10
	adds r1, r4, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #2
	beq _0806E648
	cmp r0, #3
	bne _0806E648
	adds r0, r4, #0
	b _0806E658
	.align 2, 0
_0806E640: .4byte gEwramData
_0806E644: .4byte 0x0000A094
_0806E648:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r6, #0
	adds r6, #1
	cmp r0, #7
	ble _0806E618
	movs r0, #8
_0806E658:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806E664
sub_0806E664: @ 0x0806E664
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r2, _0806E6B0 @ =sub_0806B5DC
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806E6A8
	adds r0, #0x42
	strh r5, [r0]
	adds r0, #4
	strh r6, [r0]
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
	strh r7, [r4, #0x14]
	strb r7, [r4, #0xb]
_0806E6A8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806E6B0: .4byte sub_0806B5DC

	thumb_func_start sub_0806E6B4
sub_0806E6B4: @ 0x0806E6B4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	mov r4, sp
	adds r4, #2
	mov r2, sp
	adds r3, r4, #0
	bl sub_0806B658
	mov r0, sp
	movs r1, #0
	ldrsh r6, [r0, r1]
	movs r0, #0
	ldrsh r5, [r4, r0]
	ldr r2, _0806E710 @ =sub_0806B5DC
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806E708
	adds r0, #0x42
	strh r6, [r0]
	adds r0, #4
	strh r5, [r0]
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
	strh r7, [r4, #0x14]
	strb r7, [r4, #0xb]
_0806E708:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806E710: .4byte sub_0806B5DC

	thumb_func_start EnemyValkyrieCreate
EnemyValkyrieCreate: @ 0x0806E714
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806EB34
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806E72A
	adds r0, r4, #0
	bl EntityDelete
	b _0806E79A
_0806E72A:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r0, _0806E758 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806E75C
	movs r0, #4
	b _0806E798
	.align 2, 0
_0806E758: .4byte gEwramData
_0806E75C:
	adds r0, r4, #0
	adds r0, #0x5c
	movs r1, #3
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_0806D260
	cmp r0, #1
	ble _0806E784
	ldr r2, _0806E77C @ =sub_0806ECA8
	ldr r3, _0806E780 @ =sub_0806EBDC
	adds r0, r4, #0
	movs r1, #8
	bl sub_080427B8
	b _0806E790
	.align 2, 0
_0806E77C: .4byte sub_0806ECA8
_0806E780: .4byte sub_0806EBDC
_0806E784:
	ldr r2, _0806E7A0 @ =sub_0806ECA8
	ldr r3, _0806E7A4 @ =sub_0806EBDC
	adds r0, r4, #0
	movs r1, #8
	bl sub_0804277C
_0806E790:
	adds r0, r4, #0
	bl sub_0806B1FC
	movs r0, #0
_0806E798:
	strb r0, [r4, #0xa]
_0806E79A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806E7A0: .4byte sub_0806ECA8
_0806E7A4: .4byte sub_0806EBDC

	thumb_func_start sub_0806E7A8
sub_0806E7A8: @ 0x0806E7A8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0806E7B8
	cmp r0, #1
	beq _0806E7F2
	b _0806E89C
_0806E7B8:
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
	movs r1, #0xf0
	lsls r1, r1, #0xf
	adds r0, r4, #0
	bl sub_0806CEF8
	cmp r0, #0
	bne _0806E7EC
	adds r0, r4, #0
	bl sub_0806D54C
	cmp r0, #0
	beq _0806E89C
_0806E7EC:
	movs r0, #1
	strb r0, [r4, #0xb]
	b _0806E89C
_0806E7F2:
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
	beq _0806E824
	adds r0, r4, #0
	bl sub_0806CD38
	ldr r1, _0806E820 @ =0xFFC00000
	b _0806E82E
	.align 2, 0
_0806E820: .4byte 0xFFC00000
_0806E824:
	adds r0, r4, #0
	bl sub_0806CD38
	movs r1, #0x80
	lsls r1, r1, #0xf
_0806E82E:
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_0806CD78
	adds r2, r0, #0
	ldr r0, _0806E858 @ =0xFFD00000
	adds r2, r2, r0
	movs r3, #0x80
	lsls r3, r3, #0xa
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080696B0
	adds r5, r0, #0
	cmp r5, #0
	beq _0806E85C
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xb]
	b _0806E89C
	.align 2, 0
_0806E858: .4byte 0xFFD00000
_0806E85C:
	adds r0, r4, #0
	bl sub_0806CD38
	ldr r1, [r4, #0x40]
	subs r0, r0, r1
	cmp r0, #0
	bge _0806E86C
	rsbs r0, r0, #0
_0806E86C:
	ldr r6, _0806E8A4 @ =0x003BFFFF
	cmp r0, r6
	bgt _0806E89C
	adds r0, r4, #0
	bl sub_0806CD78
	ldr r1, _0806E8A8 @ =0xFFE00000
	adds r0, r0, r1
	ldr r1, [r4, #0x44]
	cmp r1, r0
	bge _0806E89C
	adds r0, r4, #0
	bl sub_0806CD78
	ldr r1, [r4, #0x44]
	subs r0, r0, r1
	cmp r0, #0
	bge _0806E892
	rsbs r0, r0, #0
_0806E892:
	cmp r0, r6
	bgt _0806E89C
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xb]
_0806E89C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806E8A4: .4byte 0x003BFFFF
_0806E8A8: .4byte 0xFFE00000

	thumb_func_start sub_0806E8AC
sub_0806E8AC: @ 0x0806E8AC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #6
	bls _0806E8B8
	b _0806EA84
_0806E8B8:
	lsls r0, r0, #2
	ldr r1, _0806E8C4 @ =_0806E8C8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806E8C4: .4byte _0806E8C8
_0806E8C8: @ jump table
	.4byte _0806E8E4 @ case 0
	.4byte _0806E8FE @ case 1
	.4byte _0806E94A @ case 2
	.4byte _0806E9A0 @ case 3
	.4byte _0806E9C8 @ case 4
	.4byte _0806E9F8 @ case 5
	.4byte _0806EA3C @ case 6
_0806E8E4:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xb]
	str r1, [r5, #0x50]
	str r1, [r5, #0x54]
	strb r1, [r5, #0xd]
_0806E8FE:
	adds r0, r5, #0
	movs r1, #6
	bl sub_0806D490
	adds r0, r5, #0
	movs r1, #6
	bl sub_0806D4A8
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r0, r5, #0
	bl sub_0806D3D8
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #2
	beq _0806E924
	b _0806EA84
_0806E924:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _0806E940
	adds r1, r5, #0
	adds r1, #0x6f
	movs r0, #0x64
	strb r0, [r1]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	b _0806EA82
_0806E940:
	adds r1, r5, #0
	adds r1, #0x6f
	movs r0, #0
	strb r0, [r1]
	b _0806EA84
_0806E94A:
	adds r0, r5, #0
	movs r1, #6
	bl sub_0806D490
	adds r0, r5, #0
	movs r1, #6
	bl sub_0806D4A8
	movs r4, #0xc0
	lsls r4, r4, #0xa
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806D3D8
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #2
	bhi _0806E972
	b _0806EA84
_0806E972:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0x87
	bl PlaySong
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806E990
	str r4, [r5, #0x48]
	b _0806E994
_0806E990:
	ldr r0, _0806E9C0 @ =0xFFFD0000
	str r0, [r5, #0x48]
_0806E994:
	movs r0, #0xa0
	lsls r0, r0, #0xa
	str r0, [r5, #0x4c]
	movs r0, #0
	str r0, [r5, #0x50]
	str r0, [r5, #0x54]
_0806E9A0:
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r0, r5, #0
	bl sub_0806D3D8
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #7
	bls _0806EA84
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	ldr r0, _0806E9C4 @ =0xFFFFC000
	str r0, [r5, #0x54]
	b _0806EA84
	.align 2, 0
_0806E9C0: .4byte 0xFFFD0000
_0806E9C4: .4byte 0xFFFFC000
_0806E9C8:
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r0, r5, #0
	bl sub_0806D3D8
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806EA84
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r4, #0
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	str r4, [r5, #0x10]
	b _0806EA84
_0806E9F8:
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r0, r5, #0
	bl sub_0806D3D8
	adds r0, r5, #0
	movs r1, #0x20
	bl sub_0806D490
	movs r1, #0xf0
	lsls r1, r1, #0xf
	adds r0, r5, #0
	bl sub_0806CEF8
	adds r1, r0, #0
	cmp r1, #0
	bne _0806EA24
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	str r1, [r5, #0x10]
	str r1, [r5, #0x54]
_0806EA24:
	ldr r0, [r5, #0x10]
	adds r0, #1
	str r0, [r5, #0x10]
	cmp r0, #0x13
	ble _0806EA84
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xb]
	str r1, [r5, #0x10]
	str r1, [r5, #0x54]
	b _0806EA84
_0806EA3C:
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
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r0, r5, #0
	bl sub_0806D3D8
	ldr r0, [r5, #0x10]
	adds r0, #1
	str r0, [r5, #0x10]
	cmp r0, #0x2f
	ble _0806EA84
	movs r0, #0
	strb r0, [r5, #0xa]
	movs r0, #1
_0806EA82:
	strb r0, [r5, #0xb]
_0806EA84:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806EA8C
sub_0806EA8C: @ 0x0806EA8C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0806EA9C
	cmp r0, #1
	beq _0806EADC
	b _0806EB24
_0806EA9C:
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
	beq _0806EAC8
	movs r0, #0xc0
	lsls r0, r0, #0xa
	b _0806EACA
_0806EAC8:
	ldr r0, _0806EAD8 @ =0xFFFD0000
_0806EACA:
	str r0, [r4, #0x48]
	ldr r0, _0806EAD8 @ =0xFFFD0000
	str r0, [r4, #0x4c]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	b _0806EB22
	.align 2, 0
_0806EAD8: .4byte 0xFFFD0000
_0806EADC:
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_0806D490
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_0806D4A8
	adds r0, r4, #0
	bl sub_0806D3AC
	ldr r1, [r4, #0x4c]
	ldr r0, _0806EB2C @ =0xFFFEC000
	cmp r1, r0
	ble _0806EB16
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
_0806EB16:
	ldr r1, [r4, #0x4c]
	ldr r0, _0806EB30 @ =0xFFFFE000
	cmp r1, r0
	ble _0806EB24
	movs r0, #0
	strb r0, [r4, #0xa]
_0806EB22:
	strb r0, [r4, #0xb]
_0806EB24:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806EB2C: .4byte 0xFFFEC000
_0806EB30: .4byte 0xFFFFE000

	thumb_func_start sub_0806EB34
sub_0806EB34: @ 0x0806EB34
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _0806EB4C @ =0x081CBF2C
	movs r1, #0
	bl sub_0803B800
	adds r4, r0, #0
	cmp r4, #0
	bge _0806EB50
	movs r0, #0
	b _0806EBD2
	.align 2, 0
_0806EB4C: .4byte 0x081CBF2C
_0806EB50:
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x29
	bne _0806EB64
	ldr r0, _0806EB60 @ =0x0820A3FC
	movs r1, #0
	b _0806EB68
	.align 2, 0
_0806EB60: .4byte 0x0820A3FC
_0806EB64:
	ldr r0, _0806EBC0 @ =0x0820A3FC
	movs r1, #1
_0806EB68:
	bl sub_08068264
	adds r1, r6, #0
	adds r1, #0x2c
	strb r0, [r1]
	adds r0, r1, #0
	ldr r1, _0806EBC4 @ =0x0821285C
	ldrb r3, [r0]
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
	bne _0806EBCC
	adds r0, r7, #0
	subs r0, #0xc
	cmp r0, #1
	bhi _0806EBCC
	ldr r0, _0806EBC8 @ =sub_0806CCE8
	b _0806EBCE
	.align 2, 0
_0806EBC0: .4byte 0x0820A3FC
_0806EBC4: .4byte 0x0821285C
_0806EBC8: .4byte sub_0806CCE8
_0806EBCC:
	ldr r0, _0806EBD8 @ =sub_0803B9D0
_0806EBCE:
	str r0, [r6, #4]
	movs r0, #1
_0806EBD2:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806EBD8: .4byte sub_0803B9D0

	thumb_func_start sub_0806EBDC
sub_0806EBDC: @ 0x0806EBDC
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
	strh r0, [r6, #0x34]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08042B8C
	movs r1, #0x34
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bgt _0806EC70
	adds r0, r6, #0
	bl sub_080683BC
	ldr r0, _0806EC6C @ =0x000001CD
	bl PlaySong
	adds r0, r6, #0
	movs r1, #2
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
	str r0, [r6, #0x50]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r6, #0x54]
	b _0806ECA0
	.align 2, 0
_0806EC6C: .4byte 0x000001CD
_0806EC70:
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x29
	bne _0806ECA0
	ldrb r0, [r7]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0806ECA0
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	bne _0806ECA0
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #3
	strb r0, [r6, #0xa]
	movs r0, #0
	strb r0, [r6, #0xb]
_0806ECA0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806ECA8
sub_0806ECA8: @ 0x0806ECA8
	push {lr}
	sub sp, #0x10
	adds r2, r0, #0
	mov r0, sp
	adds r3, r2, #0
	adds r3, #0x3c
	ldrb r1, [r3]
	lsrs r1, r1, #1
	strh r1, [r0]
	ldrb r0, [r2, #0xa]
	cmp r0, #1
	bne _0806ECE0
	adds r0, r2, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	bne _0806ECE0
	adds r0, r2, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0806ECE0
	mov r1, sp
	ldrb r0, [r3]
	strh r0, [r1]
_0806ECE0:
	mov r0, sp
	movs r1, #0
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
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

	thumb_func_start EnemyValkyrieUpdate
EnemyValkyrieUpdate: @ 0x0806ED00
	push {r4, lr}
	sub sp, #0x14
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
	beq _0806ED24
	adds r0, r4, #0
	bl sub_08021924
_0806ED24:
	adds r0, r4, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _0806ED3E
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0806EDAE
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
	b _0806EDAE
_0806ED3E:
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bhi _0806EDA2
	lsls r0, r0, #2
	ldr r1, _0806ED50 @ =_0806ED54
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806ED50: .4byte _0806ED54
_0806ED54: @ jump table
	.4byte _0806ED68 @ case 0
	.4byte _0806ED70 @ case 1
	.4byte _0806ED78 @ case 2
	.4byte _0806ED92 @ case 3
	.4byte _0806ED9A @ case 4
_0806ED68:
	adds r0, r4, #0
	bl sub_0806E7A8
	b _0806EDA2
_0806ED70:
	adds r0, r4, #0
	bl sub_0806E8AC
	b _0806EDA2
_0806ED78:
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_0806D490
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r0, r4, #0
	bl sub_0806D3D8
	adds r0, r4, #0
	bl sub_0806AEAC
	b _0806EDA2
_0806ED92:
	adds r0, r4, #0
	bl sub_0806EA8C
	b _0806EDA2
_0806ED9A:
	adds r0, r4, #0
	bl sub_0803F17C
	b _0806EDAE
_0806EDA2:
	adds r0, r4, #0
	bl sub_0806DF20
	adds r0, r4, #0
	bl sub_0806E314
_0806EDAE:
	add sp, #0x14
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyWerewolfUpdate
EnemyWerewolfUpdate: @ 0x0806EDB8
	push {r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0806EDEE
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	bne _0806EEAC
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
	beq _0806EDEE
	adds r0, r4, #0
	bl sub_08021924
_0806EDEE:
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _0806EE08
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	b _0806EE16
_0806EE08:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0806EE16:
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0806EE22
	adds r0, r4, #0
	bl sub_0806AE54
_0806EE22:
	adds r0, r4, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _0806EE32
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _0806EE46
_0806EE32:
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806EE50
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _0806EE50
	cmp r0, #2
	beq _0806EE50
_0806EE46:
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
	b _0806EEAC
_0806EE50:
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bhi _0806EEA0
	lsls r0, r0, #2
	ldr r1, _0806EE60 @ =_0806EE64
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806EE60: .4byte _0806EE64
_0806EE64: @ jump table
	.4byte _0806EE78 @ case 0
	.4byte _0806EE80 @ case 1
	.4byte _0806EE88 @ case 2
	.4byte _0806EE90 @ case 3
	.4byte _0806EE98 @ case 4
_0806EE78:
	adds r0, r4, #0
	bl sub_0806EEB4
	b _0806EEA0
_0806EE80:
	adds r0, r4, #0
	bl sub_0806F024
	b _0806EEA0
_0806EE88:
	adds r0, r4, #0
	bl sub_08079294
	b _0806EEA0
_0806EE90:
	adds r0, r4, #0
	bl sub_0806F41C
	b _0806EEA0
_0806EE98:
	adds r0, r4, #0
	bl sub_0803F17C
	b _0806EEAC
_0806EEA0:
	adds r0, r4, #0
	bl sub_0806DF20
	adds r0, r4, #0
	bl sub_0806E314
_0806EEAC:
	add sp, #0x14
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0806EEB4
sub_0806EEB4: @ 0x0806EEB4
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r5, [r4, #0xb]
	cmp r5, #0
	beq _0806EEC6
	cmp r5, #1
	beq _0806EF4C
	b _0806F01C
_0806EEC6:
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
	str r5, [r4, #0x48]
	str r5, [r4, #0x50]
	movs r1, #0x80
	lsls r1, r1, #0xa
	str r1, [r4, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	ldr r2, _0806EF48 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #0xa
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08069A00
	adds r1, r0, #0
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0806EF0E
	b _0806F01C
_0806EF0E:
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x50
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xa0
	movs r3, #0xa0
	bl sub_0806CFFC
	cmp r0, #0
	bne _0806EF3C
	adds r0, r4, #0
	bl sub_0806D54C
	cmp r0, #0
	beq _0806F01C
_0806EF3C:
	movs r0, #1
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #1
	b _0806EFFE
	.align 2, 0
_0806EF48: .4byte 0xFFE00000
_0806EF4C:
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
	movs r1, #3
	bl sub_0806D128
	adds r1, r0, #0
	cmp r1, #0
	bne _0806F00C
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806EFAC
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806EF90
	movs r0, #0x80
	lsls r0, r0, #9
	b _0806EF92
_0806EF90:
	ldr r0, _0806EFA8 @ =0xFFFF0000
_0806EF92:
	str r0, [r4, #0x48]
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #3
	bne _0806EFAE
	ldr r0, [r4, #0x48]
	lsls r0, r0, #2
	str r0, [r4, #0x48]
	b _0806EFAE
	.align 2, 0
_0806EFA8: .4byte 0xFFFF0000
_0806EFAC:
	str r1, [r4, #0x48]
_0806EFAE:
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r2, _0806F008 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #0xa
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08069A00
	adds r1, r0, #0
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806F01C
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
	beq _0806F01C
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xb]
	str r1, [r4, #0x48]
	strb r1, [r4, #0xd]
	adds r0, r4, #0
_0806EFFE:
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _0806F01C
	.align 2, 0
_0806F008: .4byte 0xFFE00000
_0806F00C:
	movs r0, #0
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0806F01C:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0806F024
sub_0806F024: @ 0x0806F024
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0806F044 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806F048 @ =0x0000A094
	adds r4, r0, r1
	ldrb r0, [r5, #0xb]
	cmp r0, #7
	bls _0806F03A
	b _0806F414
_0806F03A:
	lsls r0, r0, #2
	ldr r1, _0806F04C @ =_0806F050
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806F044: .4byte gEwramData
_0806F048: .4byte 0x0000A094
_0806F04C: .4byte _0806F050
_0806F050: @ jump table
	.4byte _0806F070 @ case 0
	.4byte _0806F126 @ case 1
	.4byte _0806F164 @ case 2
	.4byte _0806F268 @ case 3
	.4byte _0806F294 @ case 4
	.4byte _0806F34C @ case 5
	.4byte _0806F3A0 @ case 6
	.4byte _0806F3F0 @ case 7
_0806F070:
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r2, _0806F0BC @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #0xa
	str r0, [sp]
	adds r0, r5, #0
	bl sub_08069A00
	adds r2, r0, #0
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	bne _0806F090
	b _0806F414
_0806F090:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bhi _0806F0A0
	b _0806F414
_0806F0A0:
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0806F0C0
	strb r1, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0806F284
	.align 2, 0
_0806F0BC: .4byte 0xFFE00000
_0806F0C0:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806F0DA
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r0, #0
	adds r1, #0x40
	b _0806F0E4
_0806F0DA:
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r0, #0
	subs r1, #0x20
_0806F0E4:
	ldrh r0, [r4, #6]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	ldrh r4, [r4, #0xa]
	adds r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	bne _0806F114
	movs r0, #3
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0806F284
_0806F114:
	movs r0, #1
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0806F284
_0806F126:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0806F132
	b _0806F414
_0806F132:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806F14C
	movs r0, #0xa0
	lsls r0, r0, #0xb
	b _0806F14E
_0806F14C:
	ldr r0, _0806F184 @ =0xFFFB0000
_0806F14E:
	str r0, [r5, #0x48]
	movs r0, #0
	str r0, [r5, #0x50]
	movs r1, #0x80
	lsls r1, r1, #0xa
	str r1, [r5, #0x4c]
	movs r1, #0xa0
	lsls r1, r1, #6
	str r1, [r5, #0x54]
	strb r0, [r5, #0xd]
	str r0, [r5, #0x10]
_0806F164:
	ldr r4, [r5, #0x10]
	cmp r4, #0
	beq _0806F188
	movs r4, #0
	str r4, [r5, #0x10]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #3
	strb r0, [r5, #0xa]
	strb r4, [r5, #0xb]
	b _0806F414
	.align 2, 0
_0806F184: .4byte 0xFFFB0000
_0806F188:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0806F1D0
	str r4, [r5, #0x48]
	str r4, [r5, #0x50]
	movs r1, #0x80
	lsls r1, r1, #0xa
	str r1, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	ldr r2, _0806F1CC @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #0xa
	str r0, [sp]
	adds r0, r5, #0
	bl sub_08069A00
	strb r4, [r5, #0xa]
	strb r6, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _0806F414
	.align 2, 0
_0806F1CC: .4byte 0xFFE00000
_0806F1D0:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #2
	bls _0806F1FC
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806D490
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r2, _0806F1F8 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #0xa
	str r0, [sp]
	adds r0, r5, #0
	bl sub_08069A00
	b _0806F414
	.align 2, 0
_0806F1F8: .4byte 0xFFE00000
_0806F1FC:
	adds r0, r5, #0
	movs r1, #0x10
	bl sub_0806D490
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r2, _0806F260 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #0xa
	str r0, [sp]
	adds r0, r5, #0
	bl sub_08069A00
	adds r2, r0, #0
	ldrb r1, [r5, #0xd]
	adds r0, r1, #1
	strb r0, [r5, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0806F22A
	b _0806F414
_0806F22A:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	bne _0806F234
	b _0806F414
_0806F234:
	ldr r0, [r5, #0x48]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	ldr r1, [r5, #0x44]
	ldr r2, _0806F264 @ =0xFFFE0000
	adds r1, r1, r2
	movs r2, #0xc0
	lsls r2, r2, #0xb
	movs r3, #0x80
	lsls r3, r3, #0xb
	adds r4, r5, #0
	adds r4, #0x5c
	ldrb r4, [r4]
	subs r4, #1
	str r4, [sp]
	str r6, [sp, #4]
	bl sub_0806DA6C
	b _0806F414
	.align 2, 0
_0806F260: .4byte 0xFFE00000
_0806F264: .4byte 0xFFFE0000
_0806F268:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0806F274
	b _0806F414
_0806F274:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	adds r0, #0x6f
	strb r1, [r0]
	strb r1, [r5, #0xd]
_0806F284:
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _0806F414
_0806F294:
	ldrb r1, [r5, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0806F2FE
	movs r0, #0x77
	bl PlaySong
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806F2DC
	ldr r0, [r5, #0x40]
	ldr r1, _0806F2D4 @ =0xFFF20000
	adds r0, r0, r1
	ldr r1, [r5, #0x44]
	ldr r2, _0806F2D8 @ =0xFFEC0000
	adds r1, r1, r2
	movs r3, #0x80
	lsls r3, r3, #0xb
	adds r2, r5, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	adds r2, r3, #0
	bl sub_0806D5C0
	b _0806F2FE
	.align 2, 0
_0806F2D4: .4byte 0xFFF20000
_0806F2D8: .4byte 0xFFEC0000
_0806F2DC:
	ldr r0, [r5, #0x40]
	movs r1, #0xe0
	lsls r1, r1, #0xc
	adds r0, r0, r1
	ldr r1, [r5, #0x44]
	ldr r2, _0806F348 @ =0xFFEC0000
	adds r1, r1, r2
	movs r3, #0x80
	lsls r3, r3, #0xb
	adds r2, r5, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	adds r2, r3, #0
	bl sub_0806D5C0
_0806F2FE:
	ldrb r0, [r5, #0xd]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xd]
	adds r2, r5, #0
	adds r2, #0x6f
	strb r1, [r2]
	ldrb r0, [r5, #0xd]
	cmp r0, #0x1e
	bne _0806F316
	movs r0, #0xc8
	strb r0, [r2]
_0806F316:
	ldrb r0, [r5, #0xd]
	cmp r0, #0x1f
	bne _0806F324
	adds r0, r5, #0
	movs r1, #0x40
	bl sub_0806F5C8
_0806F324:
	ldrb r0, [r5, #0xd]
	cmp r0, #0x23
	bls _0806F414
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #0x30
	bl sub_0806F5C8
	adds r0, r5, #0
	movs r1, #0x50
	bl sub_0806F5C8
	movs r0, #0x79
	bl PlaySong
	b _0806F414
	.align 2, 0
_0806F348: .4byte 0xFFEC0000
_0806F34C:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #3
	bls _0806F414
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806F36A
	movs r0, #0xb0
	lsls r0, r0, #0xd
	b _0806F36C
_0806F36A:
	ldr r0, _0806F398 @ =0xFFEA0000
_0806F36C:
	str r0, [r5, #0x48]
	movs r4, #0
	str r4, [r5, #0x50]
	movs r1, #0x80
	lsls r1, r1, #0xa
	str r1, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	ldr r2, _0806F39C @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #0xa
	str r0, [sp]
	adds r0, r5, #0
	bl sub_08069A00
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	str r4, [r5, #0x48]
	b _0806F414
	.align 2, 0
_0806F398: .4byte 0xFFEA0000
_0806F39C: .4byte 0xFFE00000
_0806F3A0:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806F414
	movs r4, #0
	str r4, [r5, #0x50]
	movs r1, #0x80
	lsls r1, r1, #0xa
	str r1, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	ldr r2, _0806F3EC @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #0xa
	str r0, [sp]
	adds r0, r5, #0
	bl sub_08069A00
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0806B1FC
	strb r4, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	b _0806F414
	.align 2, 0
_0806F3EC: .4byte 0xFFE00000
_0806F3F0:
	ldrb r0, [r5, #0xd]
	adds r0, #1
	movs r4, #0
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x2c
	bls _0806F414
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	strb r4, [r5, #0xa]
	movs r0, #1
	strb r0, [r5, #0xb]
	strb r4, [r5, #0xd]
_0806F414:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0806F41C
sub_0806F41C: @ 0x0806F41C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0806F42E
	cmp r0, #1
	beq _0806F476
	b _0806F4A8
_0806F42E:
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
	beq _0806F45C
	ldr r0, _0806F458 @ =0xFFFE8000
	b _0806F460
	.align 2, 0
_0806F458: .4byte 0xFFFE8000
_0806F45C:
	movs r0, #0xc0
	lsls r0, r0, #9
_0806F460:
	str r0, [r4, #0x48]
	movs r0, #0
	str r0, [r4, #0x50]
	ldr r0, _0806F4B0 @ =0xFFFDC000
	str r0, [r4, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_0806F476:
	movs r1, #0x80
	lsls r1, r1, #0xb
	ldr r2, _0806F4B4 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #0xa
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08069A00
	movs r1, #4
	ands r1, r0
	cmp r1, #0
	beq _0806F4A8
	movs r0, #0
	str r0, [r4, #0x48]
	strb r0, [r4, #0xa]
	movs r0, #1
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0806F4A8:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806F4B0: .4byte 0xFFFDC000
_0806F4B4: .4byte 0xFFE00000

	thumb_func_start sub_0806F4B8
sub_0806F4B8: @ 0x0806F4B8
	push {r4, lr}
	sub sp, #0x10
	adds r3, r0, #0
	mov r0, sp
	movs r1, #0
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	mov r2, sp
	adds r4, r3, #0
	adds r4, #0x3c
	ldrb r0, [r4]
	lsrs r0, r0, #1
	strh r0, [r2]
	mov r0, sp
	strh r1, [r0, #6]
	str r1, [r3, #0x10]
	ldrb r2, [r3, #0xa]
	cmp r2, #1
	bne _0806F4F4
	ldrb r0, [r3, #0xb]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0806F4F4
	mov r0, sp
	ldrb r1, [r4]
	strh r1, [r0]
	strh r2, [r0, #6]
	str r2, [r3, #0x10]
_0806F4F4:
	ldr r0, [r3, #0x40]
	str r0, [sp, #8]
	ldr r0, [r3, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806F50C
sub_0806F50C: @ 0x0806F50C
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
	bgt _0806F590
	adds r0, r6, #0
	bl sub_080683BC
	movs r0, #0x6e
	bl PlaySong
	adds r0, r6, #0
	movs r1, #4
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
	b _0806F5BC
_0806F590:
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	bne _0806F5C0
	ldrb r0, [r6, #0xb]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0806F5C0
	ldrb r0, [r7]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0806F5C0
	adds r0, r6, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #3
_0806F5BC:
	strb r0, [r6, #0xa]
	strb r4, [r6, #0xb]
_0806F5C0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806F5C8
sub_0806F5C8: @ 0x0806F5C8
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r2, _0806F624 @ =sub_0806F678
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	beq _0806F670
	bl sub_0806F6D4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806F5EE
	adds r0, r5, #0
	bl EntityDelete
_0806F5EE:
	adds r0, r5, #0
	bl sub_0806F71C
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x12
	strb r0, [r1]
	str r6, [r5, #0x10]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _0806F628
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, r0, r4
	b _0806F630
	.align 2, 0
_0806F624: .4byte sub_0806F678
_0806F628:
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, r0, r4
_0806F630:
	adds r2, r5, #0
	adds r2, #0x42
	strh r0, [r2]
	adds r0, r6, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r4, r5, #0
	adds r4, #0x46
	strh r0, [r4]
	adds r0, r5, #0
	bl sub_0806AF98
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	ldrb r0, [r7]
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
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x3c
	strb r1, [r0]
_0806F670:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806F678
sub_0806F678: @ 0x0806F678
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0806F698
	cmp r0, #2
	ble _0806F68E
	cmp r0, #3
	beq _0806F6BE
	b _0806F6CA
_0806F68E:
	cmp r0, #0
	blt _0806F6CA
	movs r0, #2
	strb r0, [r4, #0xa]
	b _0806F6CA
_0806F698:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _0806F6B0
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
_0806F6B0:
	adds r0, r4, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _0806F6CA
	strb r0, [r4, #0xa]
	b _0806F6CA
_0806F6BE:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0806F6CA:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806F6D4
sub_0806F6D4: @ 0x0806F6D4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0806F708 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	cmp r2, #0
	blt _0806F714
	ldr r1, _0806F70C @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #7
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _0806F710 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _0806F716
	.align 2, 0
_0806F708: .4byte 0x081C15F4
_0806F70C: .4byte 0x0820ED60
_0806F710: .4byte sub_0803B9D0
_0806F714:
	movs r0, #0
_0806F716:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0806F71C
sub_0806F71C: @ 0x0806F71C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0806F748 @ =sub_0806F750
	movs r1, #8
	movs r3, #0
	bl sub_0804277C
	ldr r1, _0806F74C @ =0x1810E8F8
	adds r0, r4, #0
	bl sub_08042884
	adds r4, #0x72
	ldrb r1, [r4]
	movs r0, #0xfd
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806F748: .4byte sub_0806F750
_0806F74C: .4byte 0x1810E8F8

	thumb_func_start sub_0806F750
sub_0806F750: @ 0x0806F750
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	mov r1, sp
	adds r0, #0x3c
	ldrb r0, [r0]
	movs r2, #0
	strh r0, [r1]
	movs r0, #2
	strh r0, [r1, #2]
	mov r0, sp
	strh r2, [r0, #4]
	ldr r0, [r4, #0x40]
	str r0, [sp, #8]
	ldr r0, [r4, #0x44]
	str r0, [sp, #0xc]
	movs r0, #3
	strh r0, [r1, #6]
	mov r0, sp
	bl sub_08021654
	ldr r2, _0806F79C @ =0xFFFE0000
	adds r4, #0x58
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806F78A
	rsbs r2, r2, #0
_0806F78A:
	ldr r1, _0806F7A0 @ =0xFFFB0000
	adds r0, r2, #0
	bl sub_08021248
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806F79C: .4byte 0xFFFE0000
_0806F7A0: .4byte 0xFFFB0000

	thumb_func_start EnemyWerewolfCreate
EnemyWerewolfCreate: @ 0x0806F7A4
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0806F818
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806F7BA
	adds r0, r4, #0
	bl EntityDelete
	b _0806F80A
_0806F7BA:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r0, _0806F7EC @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _0806F7F0
	movs r0, #4
	strb r0, [r4, #0xa]
	b _0806F80A
	.align 2, 0
_0806F7EC: .4byte gEwramData
_0806F7F0:
	ldr r2, _0806F810 @ =sub_0806F4B8
	ldr r3, _0806F814 @ =sub_0806F50C
	adds r0, r4, #0
	movs r1, #8
	bl sub_080427B8
	adds r0, r4, #0
	bl sub_0806B1FC
	adds r0, r4, #0
	bl sub_0806AF98
	strb r5, [r4, #0xa]
_0806F80A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806F810: .4byte sub_0806F4B8
_0806F814: .4byte sub_0806F50C

	thumb_func_start sub_0806F818
sub_0806F818: @ 0x0806F818
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0806F84C @ =0x081CBF34
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _0806F85C
	ldr r0, _0806F850 @ =0x0820A440
	movs r1, #0
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _0806F854 @ =0x08212C64
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _0806F858 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _0806F85E
	.align 2, 0
_0806F84C: .4byte 0x081CBF34
_0806F850: .4byte 0x0820A440
_0806F854: .4byte 0x08212C64
_0806F858: .4byte sub_0803B9D0
_0806F85C:
	movs r0, #0
_0806F85E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start EnemyKillerFishUpdate
EnemyKillerFishUpdate: @ 0x0806F864
	push {r4, r5, r6, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0806F89C
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _0806F87E
	b _0806F97E
_0806F87E:
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
	beq _0806F89C
	adds r0, r4, #0
	bl sub_08021924
_0806F89C:
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _0806F8B6
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	b _0806F8C4
_0806F8B6:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0806F8C4:
	adds r0, r4, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _0806F8E4
	ldrb r0, [r4, #0xa]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0806F97E
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
	b _0806F97E
_0806F8E4:
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bhi _0806F946
	lsls r0, r0, #2
	ldr r1, _0806F8F4 @ =_0806F8F8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806F8F4: .4byte _0806F8F8
_0806F8F8: @ jump table
	.4byte _0806F910 @ case 0
	.4byte _0806F918 @ case 1
	.4byte _0806F920 @ case 2
	.4byte _0806F928 @ case 3
	.4byte _0806F930 @ case 4
	.4byte _0806F93E @ case 5
_0806F910:
	adds r0, r4, #0
	bl sub_0806FA50
	b _0806F946
_0806F918:
	adds r0, r4, #0
	bl sub_0806FCA4
	b _0806F946
_0806F920:
	adds r0, r4, #0
	bl sub_0806FF70
	b _0806F946
_0806F928:
	adds r0, r4, #0
	bl sub_0806AEAC
	b _0806F946
_0806F930:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _0806F97E
_0806F93E:
	adds r0, r4, #0
	bl sub_0803F17C
	b _0806F97E
_0806F946:
	adds r5, r4, #0
	adds r5, #0x65
	ldrb r6, [r5]
	ldrb r0, [r4, #0xa]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0806F95E
	adds r0, r4, #0
	bl sub_0803F17C
_0806F95E:
	ldrb r5, [r5]
	cmp r6, r5
	beq _0806F96A
	adds r0, r4, #0
	bl sub_0806B1FC
_0806F96A:
	ldrb r0, [r4, #0xa]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0806F97E
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
_0806F97E:
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyKillerFishCreate
EnemyKillerFishCreate: @ 0x0806F988
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, _0806F9A8 @ =gEwramData
	ldr r0, [r4]
	ldr r1, _0806F9AC @ =0x0000A094
	adds r6, r0, r1
	adds r0, r5, #0
	bl sub_08070AC4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806F9B0
	adds r0, r5, #0
	bl EntityDelete
	b _0806FA48
	.align 2, 0
_0806F9A8: .4byte gEwramData
_0806F9AC: .4byte 0x0000A094
_0806F9B0:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	adds r0, r5, #0
	bl sub_0806B04C
	ldr r0, [r4]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806F9DA
	movs r0, #5
	b _0806FA46
_0806F9DA:
	ldr r1, _0806FA28 @ =sub_08070B10
	ldr r2, _0806FA2C @ =sub_080700CC
	adds r0, r5, #0
	bl sub_0806D244
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	ldrh r1, [r6, #6]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r5, #0
	adds r4, #0x46
	ldrh r1, [r4]
	ldrh r6, [r6, #0xa]
	adds r1, r1, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #3
	beq _0806FA30
	adds r0, r5, #0
	bl sub_0806AF98
	movs r0, #0x63
	strb r0, [r5, #0xb]
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r4]
	subs r0, #8
	strh r0, [r4]
	b _0806FA44
	.align 2, 0
_0806FA28: .4byte sub_08070B10
_0806FA2C: .4byte sub_080700CC
_0806FA30:
	movs r4, #0
	b _0806FA3C
_0806FA34:
	adds r0, r5, #0
	bl sub_08070168
	adds r4, #1
_0806FA3C:
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	cmp r4, r0
	blt _0806FA34
_0806FA44:
	movs r0, #0
_0806FA46:
	strb r0, [r5, #0xa]
_0806FA48:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806FA50
sub_0806FA50: @ 0x0806FA50
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0806FA6C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806FA70 @ =0x0000A094
	adds r6, r0, r1
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _0806FA74
	cmp r0, #1
	beq _0806FAAC
	b _0806FC8A
	.align 2, 0
_0806FA6C: .4byte gEwramData
_0806FA70: .4byte 0x0000A094
_0806FA74:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806FA88
	movs r0, #0x80
	lsls r0, r0, #7
	b _0806FA8A
_0806FA88:
	ldr r0, _0806FAA8 @ =0xFFFFC000
_0806FA8A:
	str r0, [r5, #0x48]
	movs r1, #0
	str r1, [r5, #0x50]
	str r1, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r5, #0x54]
	str r1, [r5, #0x14]
	strh r1, [r5, #0x18]
	strh r1, [r5, #0x1a]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	b _0806FC8A
	.align 2, 0
_0806FAA8: .4byte 0xFFFFC000
_0806FAAC:
	movs r1, #0x80
	lsls r1, r1, #0xc
	ldr r2, _0806FAD0 @ =0xFFF90000
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #1
	bl sub_08069CF4
	adds r7, r0, #0
	ldr r1, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r1, r0
	ble _0806FAD8
	ldr r0, _0806FAD4 @ =0xFFFFFC00
	b _0806FAE2
	.align 2, 0
_0806FAD0: .4byte 0xFFF90000
_0806FAD4: .4byte 0xFFFFFC00
_0806FAD8:
	ldr r0, _0806FB54 @ =0xFFFFC000
	cmp r1, r0
	bge _0806FAE4
	movs r0, #0x80
	lsls r0, r0, #3
_0806FAE2:
	str r0, [r5, #0x54]
_0806FAE4:
	movs r0, #4
	ands r0, r7
	cmp r0, #0
	beq _0806FAF0
	ldr r0, _0806FB58 @ =0xFFFFFC00
	str r0, [r5, #0x54]
_0806FAF0:
	movs r0, #8
	ands r0, r7
	cmp r0, #0
	beq _0806FB02
	movs r0, #0
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r5, #0x54]
_0806FB02:
	ldr r0, [r5, #0x48]
	cmp r0, #0
	ble _0806FB5C
	movs r2, #0x18
	ldrsh r3, [r5, r2]
	movs r4, #6
	ldrsh r1, [r6, r4]
	adds r2, r5, #0
	adds r2, #0x42
	movs r4, #0
	ldrsh r0, [r2, r4]
	adds r1, r1, r0
	adds r4, r2, #0
	cmp r3, r1
	bne _0806FBC0
	ldr r0, [r5, #0x14]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r5, #0x14]
	cmp r1, #0x3b
	ble _0806FBCC
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
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806FBA8
	movs r0, #0x80
	lsls r0, r0, #7
	b _0806FBAA
	.align 2, 0
_0806FB54: .4byte 0xFFFFC000
_0806FB58: .4byte 0xFFFFFC00
_0806FB5C:
	movs r2, #0x18
	ldrsh r3, [r5, r2]
	movs r4, #6
	ldrsh r1, [r6, r4]
	adds r2, r5, #0
	adds r2, #0x42
	movs r4, #0
	ldrsh r0, [r2, r4]
	adds r1, r1, r0
	adds r4, r2, #0
	cmp r3, r1
	bne _0806FBC0
	ldr r0, [r5, #0x14]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r5, #0x14]
	cmp r1, #0x3b
	ble _0806FBCC
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
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806FBA8
	movs r0, #0x80
	lsls r0, r0, #7
	b _0806FBAA
_0806FBA8:
	ldr r0, _0806FBBC @ =0xFFFFC000
_0806FBAA:
	str r0, [r5, #0x48]
	movs r0, #0
	str r0, [r5, #0x14]
	strh r0, [r5, #0x18]
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r5, #0x54]
	b _0806FBCC
	.align 2, 0
_0806FBBC: .4byte 0xFFFFC000
_0806FBC0:
	ldrh r0, [r4]
	ldrh r1, [r6, #6]
	adds r0, r0, r1
	movs r1, #0
	strh r0, [r5, #0x18]
	str r1, [r5, #0x14]
_0806FBCC:
	movs r0, #0x80
	ands r0, r7
	cmp r0, #0
	bne _0806FBF2
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r4, r5, #0
	adds r4, #0x46
	movs r2, #0
	ldrsh r1, [r4, r2]
	subs r1, #7
	bl sub_0806E5FC
	ldrh r1, [r4]
	adds r1, r1, r0
	strh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r5, #0x54]
_0806FBF2:
	ldrh r0, [r5, #0x1a]
	subs r0, #1
	strh r0, [r5, #0x1a]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0806FC3C
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806FC16
	ldr r0, [r5, #0x40]
	movs r4, #0x80
	lsls r4, r4, #0xd
	adds r1, r0, r4
	b _0806FC1C
_0806FC16:
	ldr r0, [r5, #0x40]
	ldr r2, _0806FC94 @ =0xFFF00000
	adds r1, r0, r2
_0806FC1C:
	ldr r2, [r5, #0x44]
	movs r0, #0
	str r0, [sp]
	ldr r0, _0806FC98 @ =0xFFFFC000
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r3, #0x10
	bl sub_080707BC
	bl RandomNumberGenerator
	movs r1, #0x78
	bl __umodsi3
	adds r0, #0x78
	strh r0, [r5, #0x1a]
_0806FC3C:
	ldr r0, _0806FC9C @ =gEwramData
	ldr r0, [r0]
	ldr r4, _0806FCA0 @ =0x00013168
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _0806FC8A
	adds r0, r5, #0
	bl sub_0806CDB8
	adds r4, r0, #0
	ldrh r0, [r6, #6]
	adds r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	bl sub_0806CDFC
	adds r1, r0, #0
	ldrh r6, [r6, #0xa]
	adds r1, r1, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_0806D0B8
	cmp r0, #3
	bne _0806FC8A
	movs r1, #0xa0
	lsls r1, r1, #0xf
	adds r0, r5, #0
	bl sub_0806CEF8
	cmp r0, #0
	beq _0806FC8A
	movs r1, #0
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xb]
_0806FC8A:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806FC94: .4byte 0xFFF00000
_0806FC98: .4byte 0xFFFFC000
_0806FC9C: .4byte gEwramData
_0806FCA0: .4byte 0x00013168

	thumb_func_start sub_0806FCA4
sub_0806FCA4: @ 0x0806FCA4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0806FCCC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806FCD0 @ =0x0000A094
	adds r6, r0, r1
	ldrb r0, [r5, #0xb]
	cmp r0, #4
	bls _0806FCC0
	b _0806FF5E
_0806FCC0:
	lsls r0, r0, #2
	ldr r1, _0806FCD4 @ =_0806FCD8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806FCCC: .4byte gEwramData
_0806FCD0: .4byte 0x0000A094
_0806FCD4: .4byte _0806FCD8
_0806FCD8: @ jump table
	.4byte _0806FCEC @ case 0
	.4byte _0806FD44 @ case 1
	.4byte _0806FD6C @ case 2
	.4byte _0806FE50 @ case 3
	.4byte _0806FEEC @ case 4
_0806FCEC:
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
	str r0, [r5, #0x4c]
	str r0, [r5, #0x54]
	strb r0, [r5, #0xd]
	adds r0, r5, #0
	bl sub_0806CDB8
	adds r4, r0, #0
	bl RandomNumberGenerator
	ldrh r2, [r6, #6]
	adds r4, r4, r2
	movs r1, #7
	ands r1, r0
	adds r4, r4, r1
	subs r4, #4
	strh r4, [r5, #0x1c]
	adds r0, r5, #0
	bl sub_0806CDFC
	ldrh r6, [r6, #0xa]
	adds r0, r0, r6
	subs r0, #0x10
	strh r0, [r5, #0x1e]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	b _0806FF5E
_0806FD44:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x27
	bhi _0806FD54
	b _0806FF5E
_0806FD54:
	movs r0, #0
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0806FF5E
_0806FD6C:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806FD78
	b _0806FF5E
_0806FD78:
	movs r0, #0
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0
	mov r8, r0
	movs r1, #0x58
	adds r1, r1, r5
	mov sb, r1
_0806FD8C:
	mov r2, sb
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806FDB8
	ldr r0, [r5, #0x40]
	ldr r1, _0806FDAC @ =0xFFF60000
	adds r6, r0, r1
	bl RandomNumberGenerator
	ldr r1, _0806FDB0 @ =0x0000FFFF
	ands r1, r0
	ldr r0, _0806FDB4 @ =0xFFFD0000
	subs r7, r0, r1
	b _0806FDCE
	.align 2, 0
_0806FDAC: .4byte 0xFFF60000
_0806FDB0: .4byte 0x0000FFFF
_0806FDB4: .4byte 0xFFFD0000
_0806FDB8:
	ldr r0, [r5, #0x40]
	movs r2, #0xa0
	lsls r2, r2, #0xc
	adds r6, r0, r2
	bl RandomNumberGenerator
	ldr r1, _0806FE0C @ =0x0000FFFF
	ands r1, r0
	movs r0, #0xc0
	lsls r0, r0, #0xa
	adds r7, r1, r0
_0806FDCE:
	bl RandomNumberGenerator
	ldr r2, _0806FE10 @ =0xFFFE0000
	adds r1, r6, r2
	ldr r4, _0806FE14 @ =0x0003FFFF
	ands r0, r4
	adds r6, r1, r0
	bl RandomNumberGenerator
	ands r0, r4
	ldr r1, [r5, #0x44]
	subs r4, r1, r0
	mov r0, r8
	cmp r0, #0
	bne _0806FE20
	bl RandomNumberGenerator
	ldr r1, _0806FE18 @ =0x00001FFF
	ands r1, r0
	ldr r0, _0806FE1C @ =0xFFFFA000
	subs r0, r0, r1
	str r7, [sp]
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	movs r3, #0xf
	bl sub_080707BC
	b _0806FE3C
	.align 2, 0
_0806FE0C: .4byte 0x0000FFFF
_0806FE10: .4byte 0xFFFE0000
_0806FE14: .4byte 0x0003FFFF
_0806FE18: .4byte 0x00001FFF
_0806FE1C: .4byte 0xFFFFA000
_0806FE20:
	bl RandomNumberGenerator
	ldr r1, _0806FE48 @ =0x00001FFF
	ands r1, r0
	ldr r0, _0806FE4C @ =0xFFFFC000
	subs r0, r0, r1
	str r7, [sp]
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	movs r3, #0x10
	bl sub_080707BC
_0806FE3C:
	movs r1, #1
	add r8, r1
	mov r2, r8
	cmp r2, #3
	ble _0806FD8C
	b _0806FF5E
	.align 2, 0
_0806FE48: .4byte 0x00001FFF
_0806FE4C: .4byte 0xFFFFC000
_0806FE50:
	movs r0, #0x1c
	ldrsh r1, [r5, r0]
	lsls r1, r1, #0x10
	movs r0, #0x1e
	ldrsh r2, [r5, r0]
	lsls r2, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #0xa
	adds r0, r5, #0
	bl sub_080693E4
	cmp r0, #0
	beq _0806FE80
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0806FE80:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _0806FEA4
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0806FEA4:
	movs r1, #0x80
	lsls r1, r1, #0xc
	ldr r2, _0806FEE8 @ =0xFFF90000
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #1
	bl sub_08069CF4
	adds r6, r0, #0
	movs r0, #0x80
	ands r6, r0
	cmp r6, #0
	bne _0806FF5E
	adds r0, r5, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r4, r5, #0
	adds r4, #0x46
	movs r2, #0
	ldrsh r1, [r4, r2]
	subs r1, #7
	bl sub_0806E5FC
	ldrh r1, [r4]
	adds r1, r1, r0
	strh r1, [r4]
	str r6, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r5, #0x54]
	b _0806FF5E
	.align 2, 0
_0806FEE8: .4byte 0xFFF90000
_0806FEEC:
	adds r0, r5, #0
	movs r1, #8
	bl sub_0806D490
	adds r0, r5, #0
	movs r1, #8
	bl sub_0806D4A8
	movs r1, #0x80
	lsls r1, r1, #0xc
	ldr r2, _0806FF6C @ =0xFFF90000
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #1
	bl sub_08069CF4
	adds r6, r0, #0
	movs r0, #0x80
	ands r6, r0
	cmp r6, #0
	bne _0806FF3E
	adds r0, r5, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r4, r5, #0
	adds r4, #0x46
	movs r2, #0
	ldrsh r1, [r4, r2]
	subs r1, #7
	bl sub_0806E5FC
	ldrh r1, [r4]
	adds r1, r1, r0
	strh r1, [r4]
	str r6, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r5, #0x54]
_0806FF3E:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bls _0806FF5E
	movs r0, #0
	strb r0, [r5, #0xa]
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0806FF5E:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806FF6C: .4byte 0xFFF90000

	thumb_func_start sub_0806FF70
sub_0806FF70: @ 0x0806FF70
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrb r3, [r5, #0xb]
	cmp r3, #1
	beq _0806FFB0
	cmp r3, #1
	bgt _0806FF86
	cmp r3, #0
	beq _0806FF8C
	b _080700AE
_0806FF86:
	cmp r3, #2
	beq _0807001C
	b _080700AE
_0806FF8C:
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	str r0, [r5, #0x48]
	str r3, [r5, #0x50]
	str r3, [r5, #0x4c]
	ldr r0, _0806FFAC @ =0xFFFFFCE0
	str r0, [r5, #0x54]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	b _080700AE
	.align 2, 0
_0806FFAC: .4byte 0xFFFFFCE0
_0806FFB0:
	ldr r2, _08070014 @ =0xFFF90000
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r3, #1
	bl sub_08069CF4
	adds r2, r0, #0
	ldr r0, [r5, #0x4c]
	ldr r1, _08070018 @ =0xFFFFC000
	cmp r0, r1
	bge _0806FFCE
	str r1, [r5, #0x4c]
_0806FFCE:
	movs r0, #0x88
	ands r0, r2
	cmp r0, #0x80
	beq _080700AE
	adds r0, r5, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r4, r5, #0
	adds r4, #0x46
	movs r2, #0
	ldrsh r1, [r4, r2]
	subs r1, #7
	bl sub_0806E5FC
	ldrh r1, [r4]
	adds r1, r1, r0
	movs r2, #0
	movs r0, #0
	strh r1, [r4]
	str r0, [r5, #0x48]
	str r0, [r5, #0x50]
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r5, #0x54]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	strb r2, [r5, #0xd]
	movs r0, #0x6c
	bl PlaySong
	b _080700AE
	.align 2, 0
_08070014: .4byte 0xFFF90000
_08070018: .4byte 0xFFFFC000
_0807001C:
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r5, #0
	bl sub_0806D3D8
	ldr r1, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r1, r0
	ble _08070038
	ldr r0, _08070034 @ =0xFFFFFE00
	b _08070042
	.align 2, 0
_08070034: .4byte 0xFFFFFE00
_08070038:
	ldr r0, _080700B8 @ =0xFFFFE000
	cmp r1, r0
	bge _08070044
	movs r0, #0x80
	lsls r0, r0, #2
_08070042:
	str r0, [r5, #0x54]
_08070044:
	bl RandomNumberGenerator
	ldr r1, _080700BC @ =0x001FFFFF
	ands r1, r0
	ldr r4, [r5, #0x40]
	adds r4, r4, r1
	ldr r0, _080700C0 @ =0xFFF00000
	adds r4, r4, r0
	bl RandomNumberGenerator
	ldr r1, _080700C4 @ =0x000FFFFF
	ands r1, r0
	ldr r2, [r5, #0x44]
	adds r2, r2, r1
	ldr r1, _080700C8 @ =0xFFF80000
	adds r2, r2, r1
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #0xf
	bl sub_08070A30
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bls _0807009C
	ldrb r1, [r5, #0xd]
	movs r0, #0x46
	subs r0, r0, r1
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
_0807009C:
	ldrb r0, [r5, #0xd]
	cmp r0, #0x45
	bls _080700AE
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080700AE:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080700B8: .4byte 0xFFFFE000
_080700BC: .4byte 0x001FFFFF
_080700C0: .4byte 0xFFF00000
_080700C4: .4byte 0x000FFFFF
_080700C8: .4byte 0xFFF80000

	thumb_func_start sub_080700CC
sub_080700CC: @ 0x080700CC
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
	bgt _08070160
	adds r0, r6, #0
	bl sub_080683BC
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
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
	ldrb r0, [r6, #0xb]
	cmp r0, #0x63
	bne _08070150
	movs r0, #3
	b _08070152
_08070150:
	movs r0, #2
_08070152:
	strb r0, [r6, #0xa]
	movs r0, #0
	strb r0, [r6, #0xb]
	adds r1, r6, #0
	adds r1, #0x37
	movs r0, #0xff
	strb r0, [r1]
_08070160:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08070168
sub_08070168: @ 0x08070168
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r2, _080701B8 @ =sub_08070218
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _08070212
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08070988
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08070190
	adds r0, r4, #0
	bl EntityDelete
_08070190:
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_08070774
	bl RandomNumberGenerator
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _080701BC
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	b _080701C4
	.align 2, 0
_080701B8: .4byte sub_08070218
_080701BC:
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
_080701C4:
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	str r5, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x37
	ldrb r0, [r0]
	subs r1, #0xf
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsrs r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x3c
	strb r0, [r1]
_08070212:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08070218
sub_08070218: @ 0x08070218
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r6, r0, #0
	ldr r0, [r6, #0x10]
	mov r8, r0
	ldr r0, _08070280 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08070284 @ =0x0000A094
	adds r1, r0, r1
	str r1, [sp, #0x1c]
	ldrb r0, [r6, #0xa]
	cmp r0, #2
	beq _08070266
	adds r0, r6, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _08070248
	b _08070762
_08070248:
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
	beq _08070266
	adds r0, r6, #0
	bl sub_08021924
_08070266:
	adds r0, r6, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _08070288
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	b _08070294
	.align 2, 0
_08070280: .4byte gEwramData
_08070284: .4byte 0x0000A094
_08070288:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r2, [r0]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
_08070294:
	strb r1, [r0]
	mov sl, r0
	mov r2, r8
	cmp r2, #0
	beq _080702D6
	ldr r0, [r2]
	cmp r0, #0
	beq _080702D6
	mov r0, r8
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #7
	bne _080702D6
	ldrb r0, [r2, #0xa]
	cmp r0, #4
	bne _080702B8
	movs r0, #1
	strb r0, [r6, #0x18]
_080702B8:
	mov r3, r8
	movs r1, #0x34
	ldrsh r0, [r3, r1]
	cmp r0, #0
	ble _080702D2
	adds r0, r6, #0
	adds r0, #0x37
	mov r1, r8
	adds r1, #0x37
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _080702D6
_080702D2:
	movs r0, #1
	strb r0, [r6, #0x19]
_080702D6:
	ldrb r0, [r6, #0xa]
	cmp r0, #2
	beq _08070300
	ldr r0, _080702F8 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _080702FC @ =0x000004BE
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _08070300
	add r0, sp, #0xc
	adds r1, r6, #0
	bl sub_080421AC
	b _08070762
	.align 2, 0
_080702F8: .4byte gEwramData
_080702FC: .4byte 0x000004BE
_08070300:
	ldrb r0, [r6, #0xa]
	cmp r0, #4
	bls _08070308
	b _0807075C
_08070308:
	lsls r0, r0, #2
	ldr r1, _08070314 @ =_08070318
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08070314: .4byte _08070318
_08070318: @ jump table
	.4byte _0807032C @ case 0
	.4byte _0807033E @ case 1
	.4byte _08070518 @ case 2
	.4byte _0807054E @ case 3
	.4byte _0807033E @ case 4
_0807032C:
	movs r1, #0
	movs r0, #1
	strb r0, [r6, #0xa]
	str r1, [r6, #0x48]
	str r1, [r6, #0x4c]
	str r1, [r6, #0x50]
	str r1, [r6, #0x54]
	str r1, [r6, #0x14]
	strb r1, [r6, #0xb]
_0807033E:
	movs r0, #0x18
	ldrsb r0, [r6, r0]
	cmp r0, #1
	beq _0807034E
	movs r0, #0x19
	ldrsb r0, [r6, r0]
	cmp r0, #1
	bne _08070358
_0807034E:
	movs r1, #0
	movs r0, #3
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xb]
	b _08070300
_08070358:
	ldr r0, [r6, #0x14]
	subs r0, #1
	str r0, [r6, #0x14]
	cmp r0, #0
	bgt _08070424
	bl RandomNumberGenerator
	movs r1, #0x14
	bl __umodsi3
	adds r0, #0x14
	str r0, [r6, #0x14]
	bl RandomNumberGenerator
	mov r2, r8
	ldr r1, [r2, #0x40]
	ldr r5, _080703A4 @ =0xFFF80000
	adds r1, r1, r5
	ldr r4, _080703A8 @ =0x000FFFFF
	ands r0, r4
	adds r7, r1, r0
	bl RandomNumberGenerator
	mov r3, r8
	ldr r1, [r3, #0x44]
	adds r1, r1, r5
	ands r0, r4
	adds r1, r1, r0
	mov sb, r1
	ldr r1, [r6, #0x40]
	subs r0, r7, r1
	cmp r0, #0
	bge _080703AC
	subs r0, r1, r7
	asrs r0, r0, #0x10
	rsbs r1, r0, #0
	b _080703AE
	.align 2, 0
_080703A4: .4byte 0xFFF80000
_080703A8: .4byte 0x000FFFFF
_080703AC:
	asrs r1, r0, #0x10
_080703AE:
	adds r0, r1, #0
	muls r0, r1, r0
	adds r1, r0, #0
	ldr r2, [r6, #0x44]
	mov r3, sb
	subs r0, r3, r2
	cmp r0, #0
	bge _080703C6
	subs r0, r2, r3
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080703C8
_080703C6:
	asrs r0, r0, #0x10
_080703C8:
	adds r2, r0, #0
	muls r2, r0, r2
	adds r0, r2, #0
	adds r0, r1, r0
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r1, [r6, #0x40]
	subs r0, r7, r1
	cmp r0, #0
	bge _080703E8
	subs r0, r1, r7
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080703EA
_080703E8:
	asrs r0, r0, #0x10
_080703EA:
	lsls r0, r0, #0x11
	adds r1, r5, #0
	bl __divsi3
	adds r4, r0, #0
	ldr r1, [r6, #0x44]
	mov r3, sb
	subs r0, r3, r1
	cmp r0, #0
	bge _08070406
	subs r0, r1, r3
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _08070408
_08070406:
	asrs r0, r0, #0x10
_08070408:
	lsls r0, r0, #0x11
	adds r1, r5, #0
	bl __divsi3
	adds r1, r0, #0
	ldrb r0, [r6, #0xa]
	cmp r0, #4
	bne _08070420
	cmp r5, #9
	bgt _08070420
	movs r0, #1
	strb r0, [r6, #0xa]
_08070420:
	str r4, [r6, #0x48]
	str r1, [r6, #0x4c]
_08070424:
	ldr r0, [r6, #0x48]
	cmp r0, #0
	ble _08070438
	mov r1, sl
	ldrb r0, [r1]
	movs r1, #0x40
	orrs r0, r1
	mov r2, sl
	strb r0, [r2]
	b _08070444
_08070438:
	mov r3, sl
	ldrb r1, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
_08070444:
	adds r0, r6, #0
	movs r1, #0x14
	bl sub_0806D490
	adds r0, r6, #0
	movs r1, #0x14
	bl sub_0806D4A8
	movs r3, #4
	rsbs r3, r3, #0
	movs r0, #8
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0xc0
	lsls r0, r0, #0xb
	str r0, [sp, #8]
	adds r0, r6, #0
	movs r1, #0
	adds r2, r3, #0
	bl sub_0806A224
	adds r5, r0, #0
	movs r0, #0x80
	ands r5, r0
	cmp r5, #0
	bne _08070496
	adds r0, r6, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r4, r6, #0
	adds r4, #0x46
	movs r2, #0
	ldrsh r1, [r4, r2]
	subs r1, #3
	bl sub_0806E5FC
	ldrh r1, [r4]
	adds r1, r1, r0
	strh r1, [r4]
	str r5, [r6, #0x4c]
_08070496:
	ldrb r0, [r6, #0xa]
	cmp r0, #4
	beq _08070504
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x20
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xa0
	movs r3, #0x40
	bl sub_0806CFFC
	cmp r0, #0
	beq _08070504
	ldr r0, _08070510 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _08070514 @ =0x00013168
	adds r0, r0, r3
	ldr r0, [r0]
	cmp r0, #0
	beq _08070504
	adds r0, r6, #0
	bl sub_0806CDB8
	adds r4, r0, #0
	ldr r0, [sp, #0x1c]
	ldrh r0, [r0, #6]
	adds r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r6, #0
	bl sub_0806CDFC
	adds r1, r0, #0
	ldr r2, [sp, #0x1c]
	ldrh r2, [r2, #0xa]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_0806D0B8
	adds r1, r0, #0
	cmp r1, #3
	bne _08070504
	movs r0, #0
	strb r1, [r6, #0xa]
	strb r0, [r6, #0xb]
_08070504:
	add r0, sp, #0xc
	adds r1, r6, #0
	bl sub_080421AC
	b _0807075C
	.align 2, 0
_08070510: .4byte gEwramData
_08070514: .4byte 0x00013168
_08070518:
	ldrb r0, [r6, #0xd]
	bl sub_0806D518
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #5
	mov r3, sl
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
	beq _08070540
	b _0807075C
_08070540:
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	b _0807075C
_0807054E:
	ldrb r1, [r6, #0xb]
	cmp r1, #0
	beq _0807055A
	cmp r1, #1
	beq _0807056E
	b _0807075C
_0807055A:
	str r1, [r6, #0x1c]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	str r1, [r6, #0x14]
	str r1, [r6, #0x48]
	str r1, [r6, #0x4c]
	str r1, [r6, #0x50]
	str r1, [r6, #0x54]
	strb r1, [r6, #0xd]
_0807056E:
	ldr r0, [r6, #0x14]
	subs r0, #1
	str r0, [r6, #0x14]
	cmp r0, #0
	ble _0807057A
	b _080706CA
_0807057A:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	bl RandomNumberGenerator
	movs r1, #0x14
	bl __umodsi3
	adds r0, #0x14
	str r0, [r6, #0x14]
	movs r7, #0
	ldr r0, _08070638 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0807063C @ =0x00013168
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080705F8
	adds r0, r6, #0
	bl sub_0806CDB8
	adds r4, r0, #0
	ldr r2, [sp, #0x1c]
	ldrh r2, [r2, #6]
	adds r4, r4, r2
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r6, #0
	bl sub_0806CDFC
	adds r1, r0, #0
	ldr r3, [sp, #0x1c]
	ldrh r3, [r3, #0xa]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_0806D0B8
	cmp r0, #3
	bne _080705F8
	bl RandomNumberGenerator
	adds r4, r0, #0
	adds r0, r6, #0
	bl sub_0806CD38
	ldr r5, _08070640 @ =0x000FFFFF
	ands r4, r5
	ldr r1, _08070644 @ =0xFFF80000
	adds r0, r0, r1
	adds r7, r4, r0
	adds r0, r6, #0
	bl sub_0806CD78
	adds r4, r0, #0
	bl RandomNumberGenerator
	ands r0, r5
	subs r4, r4, r0
	ldr r2, _08070648 @ =0xFFF00000
	adds r2, r2, r4
	mov sb, r2
_080705F8:
	cmp r7, #0
	beq _08070604
	movs r0, #0x18
	ldrsb r0, [r6, r0]
	cmp r0, #1
	bne _08070622
_08070604:
	bl RandomNumberGenerator
	ldr r5, _08070640 @ =0x000FFFFF
	ands r0, r5
	ldr r1, [r6, #0x40]
	ldr r4, _08070644 @ =0xFFF80000
	adds r1, r1, r4
	adds r7, r0, r1
	bl RandomNumberGenerator
	ands r0, r5
	ldr r1, [r6, #0x44]
	adds r1, r1, r4
	adds r0, r0, r1
	mov sb, r0
_08070622:
	adds r0, r6, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r7, #0
	bge _0807064C
	rsbs r0, r7, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0807064E
	.align 2, 0
_08070638: .4byte gEwramData
_0807063C: .4byte 0x00013168
_08070640: .4byte 0x000FFFFF
_08070644: .4byte 0xFFF80000
_08070648: .4byte 0xFFF00000
_0807064C:
	asrs r0, r7, #0x10
_0807064E:
	subs r1, r0, r1
	adds r0, r1, #0
	muls r0, r1, r0
	adds r1, r0, #0
	adds r0, r6, #0
	adds r0, #0x46
	movs r3, #0
	ldrsh r2, [r0, r3]
	mov r8, r0
	mov r0, sb
	cmp r0, #0
	bge _0807066E
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _08070672
_0807066E:
	mov r3, sb
	asrs r0, r3, #0x10
_08070672:
	subs r0, r0, r2
	adds r2, r0, #0
	muls r2, r0, r2
	adds r0, r2, #0
	adds r0, r1, r0
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r3, #0
	ldrsh r1, [r4, r3]
	cmp r7, #0
	bge _08070694
	rsbs r0, r7, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _08070696
_08070694:
	asrs r0, r7, #0x10
_08070696:
	subs r0, r0, r1
	lsls r0, r0, #0x11
	adds r1, r5, #0
	bl __divsi3
	adds r4, r0, #0
	mov r0, r8
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r3, sb
	cmp r3, #0
	bge _080706B6
	rsbs r0, r3, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080706BA
_080706B6:
	mov r2, sb
	asrs r0, r2, #0x10
_080706BA:
	subs r0, r0, r1
	lsls r0, r0, #0x11
	adds r1, r5, #0
	bl __divsi3
	adds r1, r0, #0
	str r4, [r6, #0x48]
	str r1, [r6, #0x4c]
_080706CA:
	ldr r0, [r6, #0x48]
	cmp r0, #0
	ble _080706DC
	mov r3, sl
	ldrb r0, [r3]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r3]
	b _080706EE
_080706DC:
	cmp r0, #0
	bge _080706EE
	mov r0, sl
	ldrb r1, [r0]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, sl
	strb r0, [r1]
_080706EE:
	adds r0, r6, #0
	movs r1, #0x14
	bl sub_0806D490
	adds r0, r6, #0
	movs r1, #0x14
	bl sub_0806D4A8
	movs r3, #4
	rsbs r3, r3, #0
	movs r0, #8
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0xc0
	lsls r0, r0, #0xb
	str r0, [sp, #8]
	adds r0, r6, #0
	movs r1, #0
	adds r2, r3, #0
	bl sub_0806A224
	adds r5, r0, #0
	movs r0, #0x80
	ands r5, r0
	cmp r5, #0
	bne _08070740
	adds r0, r6, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r4, r6, #0
	adds r4, #0x46
	movs r3, #0
	ldrsh r1, [r4, r3]
	subs r1, #3
	bl sub_0806E5FC
	ldrh r1, [r4]
	adds r1, r1, r0
	strh r1, [r4]
	str r5, [r6, #0x4c]
_08070740:
	ldrb r0, [r6, #0xd]
	cmp r0, #5
	bls _0807074A
	movs r0, #4
	strb r0, [r6, #0xa]
_0807074A:
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	beq _08070754
	movs r0, #4
	strb r0, [r6, #0xa]
_08070754:
	add r0, sp, #0xc
	adds r1, r6, #0
	bl sub_080421AC
_0807075C:
	adds r0, r6, #0
	bl sub_0803F17C
_08070762:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08070774
sub_08070774: @ 0x08070774
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _080707B0 @ =0x0808FCFC
	str r0, [sp]
	ldr r2, _080707B4 @ =sub_080709D8
	ldr r3, _080707B8 @ =sub_08070A08
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
_080707B0: .4byte 0x0808FCFC
_080707B4: .4byte sub_080709D8
_080707B8: .4byte sub_08070A08

	thumb_func_start sub_080707BC
sub_080707BC: @ 0x080707BC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	mov sb, r3
	ldr r2, _08070820 @ =sub_080708B0
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	ldr r0, _08070824 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08070828 @ =0x0000A094
	adds r1, r1, r0
	mov r8, r1
	cmp r5, #0
	beq _08070896
	str r4, [r5, #0x40]
	str r7, [r5, #0x44]
	ldr r0, [sp, #0x1c]
	str r0, [r5, #0x48]
	ldr r0, [sp, #0x20]
	str r0, [r5, #0x4c]
	bl RandomNumberGenerator
	movs r4, #1
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
	bl RandomNumberGenerator
	ands r0, r4
	cmp r0, #0
	bne _0807082C
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	b _08070834
	.align 2, 0
_08070820: .4byte sub_080708B0
_08070824: .4byte gEwramData
_08070828: .4byte 0x0000A094
_0807082C:
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
_08070834:
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _080708A4 @ =0x081CBF3C
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _080708A8 @ =0x08212FB4
	adds r0, r6, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r5, #0
	bl sub_0803B924
	adds r0, r5, #0
	adds r0, #0x65
	mov r2, sb
	strb r2, [r0]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080708AC @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	mov r3, r8
	ldrh r3, [r3, #6]
	adds r0, r0, r3
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
	cmp r0, #3
	beq _08070896
	adds r0, r5, #0
	bl EntityDelete
_08070896:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080708A4: .4byte 0x081CBF3C
_080708A8: .4byte 0x08212FB4
_080708AC: .4byte sub_0803B9D0

	thumb_func_start sub_080708B0
sub_080708B0: @ 0x080708B0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xa]
	cmp r1, #0
	beq _080708C0
	cmp r1, #1
	beq _080708C6
	b _08070910
_080708C0:
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xd]
_080708C6:
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #8
	bl sub_0806D490
	ldrb r1, [r4, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080708F6
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080708F0
	ldr r0, _080708EC @ =0xFFFFC000
	b _080708F4
	.align 2, 0
_080708EC: .4byte 0xFFFFC000
_080708F0:
	movs r0, #0x80
	lsls r0, r0, #7
_080708F4:
	str r0, [r4, #0x48]
_080708F6:
	ldr r2, _08070918 @ =0xFFFE0000
	adds r0, r4, #0
	movs r1, #0
	movs r3, #1
	bl sub_08069B70
	movs r1, #0x88
	ands r1, r0
	cmp r1, #0x80
	beq _08070910
	adds r0, r4, #0
	bl EntityDelete
_08070910:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08070918: .4byte 0xFFFE0000

	thumb_func_start sub_0807091C
sub_0807091C: @ 0x0807091C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xa]
	cmp r1, #0
	beq _0807092C
	cmp r1, #1
	beq _08070932
	b _0807097C
_0807092C:
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xd]
_08070932:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08070956
	movs r0, #8
	ands r1, r0
	cmp r1, #0
	beq _08070950
	ldr r0, _0807094C @ =0xFFFFC000
	b _08070954
	.align 2, 0
_0807094C: .4byte 0xFFFFC000
_08070950:
	movs r0, #0x80
	lsls r0, r0, #7
_08070954:
	str r0, [r4, #0x48]
_08070956:
	ldr r0, _08070984 @ =0xFFFFC000
	str r0, [r4, #0x4c]
	adds r0, r4, #0
	bl sub_0806D3AC
	ldrb r0, [r4, #0xd]
	cmp r0, #6
	bne _08070970
	adds r1, r4, #0
	adds r1, #0x65
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
_08070970:
	ldrb r0, [r4, #0xd]
	cmp r0, #0xb
	bls _0807097C
	adds r0, r4, #0
	bl EntityDelete
_0807097C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08070984: .4byte 0xFFFFC000

	thumb_func_start sub_08070988
sub_08070988: @ 0x08070988
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _080709C4 @ =0x081CBF3C
	movs r1, #0
	bl sub_0803B800
	adds r2, r0, #0
	cmp r2, #0
	blt _080709D0
	ldr r1, _080709C8 @ =0x08212FB4
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _080709CC @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _080709D2
	.align 2, 0
_080709C4: .4byte 0x081CBF3C
_080709C8: .4byte 0x08212FB4
_080709CC: .4byte sub_0803B9D0
_080709D0:
	movs r0, #0
_080709D2:
	pop {r4, r5}
	pop {r1}
	bx r1
