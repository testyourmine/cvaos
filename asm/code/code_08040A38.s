	.include "asm/gba_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	thumb_func_start sub_08040A38
sub_08040A38: @ 0x08040A38
	push {r4, r5, lr}
	ldr r4, _08040A9C @ =gEwramData
	ldr r3, [r4]
	ldr r1, _08040AA0 @ =0x000115BC
	adds r0, r3, r1
	ldrh r1, [r0]
	ldr r2, _08040AA4 @ =0x000115B2
	adds r0, r3, r2
	strh r1, [r0]
	ldr r5, _08040AA8 @ =0x000115B4
	adds r2, r3, r5
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	adds r5, #0xe
	adds r1, r3, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r1]
	cmp r0, r1
	bls _08040A6A
	ldr r1, _08040AAC @ =0x000115BE
	adds r0, r3, r1
	ldrh r0, [r0]
	strh r0, [r2]
_08040A6A:
	ldr r2, [r4]
	ldr r3, _08040AB0 @ =0x000115B6
	adds r1, r2, r3
	movs r0, #0
	strh r0, [r1]
	ldr r5, _08040AA4 @ =0x000115B2
	adds r0, r2, r5
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r3, #2
	adds r1, r2, r3
	strh r0, [r1]
	adds r5, #2
	adds r0, r2, r5
	ldrh r0, [r0]
	lsls r0, r0, #3
	ldr r1, _08040AB4 @ =0x000115BA
	adds r2, r2, r1
	strh r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08040A9C: .4byte gEwramData
_08040AA0: .4byte 0x000115BC
_08040AA4: .4byte 0x000115B2
_08040AA8: .4byte 0x000115B4
_08040AAC: .4byte 0x000115BE
_08040AB0: .4byte 0x000115B6
_08040AB4: .4byte 0x000115BA

	thumb_func_start sub_08040AB8
sub_08040AB8: @ 0x08040AB8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r5, r2, #0
	movs r0, #0xe0
	ands r0, r2
	cmp r0, #0
	bne _08040ACC
	adds r0, r2, #0
	b _08040BD2
_08040ACC:
	adds r0, r2, #0
	subs r0, #0x20
	ldr r1, _08040AFC @ =0x080E2B4C
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r3, [r0]
	ldrb r4, [r0, #1]
	ldr r0, _08040B00 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08040B04 @ =0x000115A6
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #7
	ands r0, r1
	adds r0, r0, r4
	cmp r0, #7
	bgt _08040B08
	adds r0, r2, #0
	adds r1, r3, #0
	adds r2, r4, #0
	bl sub_0803FF64
	b _08040B12
	.align 2, 0
_08040AFC: .4byte 0x080E2B4C
_08040B00: .4byte gEwramData
_08040B04: .4byte 0x000115A6
_08040B08:
	adds r0, r5, #0
	adds r1, r3, #0
	adds r2, r4, #0
	bl sub_08040048
_08040B12:
	ldr r5, _08040B9C @ =gEwramData
	ldr r2, [r5]
	ldr r6, _08040BA0 @ =0x000115A4
	adds r3, r2, r6
	ldrh r0, [r3]
	adds r1, r0, r4
	strh r1, [r3]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bls _08040BC4
	subs r0, r1, #6
	strh r0, [r3]
	ldr r0, _08040BA4 @ =0x000115A0
	adds r3, r2, r0
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	adds r6, #0xa
	adds r1, r2, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r1]
	cmp r0, r1
	bls _08040BB8
	ldr r1, _08040BA8 @ =0x000115AA
	adds r0, r2, r1
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r4, _08040BAC @ =0x000115A2
	adds r3, r2, r4
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	adds r6, #2
	adds r1, r2, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r1]
	cmp r0, r1
	bls _08040B6C
	ldr r1, _08040BB0 @ =0x000115AC
	adds r0, r2, r1
	ldrh r0, [r0]
	strh r0, [r3]
_08040B6C:
	ldr r2, [r5]
	ldr r3, _08040BAC @ =0x000115A2
	adds r0, r2, r3
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r4, _08040BB4 @ =0x000115A8
	adds r1, r2, r4
	strh r0, [r1]
	ldr r6, _08040BA0 @ =0x000115A4
	adds r1, r2, r6
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08040BA4 @ =0x000115A0
	adds r0, r2, r1
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r3, #4
	adds r2, r2, r3
	strh r0, [r2]
	b _08040BCE
	.align 2, 0
_08040B9C: .4byte gEwramData
_08040BA0: .4byte 0x000115A4
_08040BA4: .4byte 0x000115A0
_08040BA8: .4byte 0x000115AA
_08040BAC: .4byte 0x000115A2
_08040BB0: .4byte 0x000115AC
_08040BB4: .4byte 0x000115A8
_08040BB8:
	ldr r6, _08040BC0 @ =0x000115A6
	adds r1, r2, r6
	b _08040BC8
	.align 2, 0
_08040BC0: .4byte 0x000115A6
_08040BC4:
	ldr r0, _08040BD8 @ =0x000115A6
	adds r1, r2, r0
_08040BC8:
	ldrh r0, [r1]
	adds r0, r0, r4
	strh r0, [r1]
_08040BCE:
	movs r0, #1
	rsbs r0, r0, #0
_08040BD2:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08040BD8: .4byte 0x000115A6

	thumb_func_start sub_08040BDC
sub_08040BDC: @ 0x08040BDC
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, _08040C4C @ =gEwramData
	ldr r3, [r0]
	ldr r1, _08040C50 @ =0x000115AE
	adds r0, r3, r1
	ldrh r1, [r0]
	cmp r4, r1
	bls _08040BFA
	ldrh r4, [r0]
_08040BFA:
	ldr r1, _08040C54 @ =0x000115B0
	adds r0, r3, r1
	ldrh r1, [r0]
	cmp r5, r1
	bls _08040C06
	ldrh r5, [r0]
_08040C06:
	ldr r1, _08040C58 @ =0x000115A0
	adds r0, r3, r1
	movs r1, #0
	strh r4, [r0]
	ldr r4, _08040C5C @ =0x000115A2
	adds r0, r3, r4
	strh r5, [r0]
	adds r4, #2
	adds r0, r3, r4
	strh r1, [r0]
	ldr r1, _08040C58 @ =0x000115A0
	adds r0, r3, r1
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r4, #2
	adds r1, r3, r4
	strh r0, [r1]
	ldr r1, _08040C5C @ =0x000115A2
	adds r0, r3, r1
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, #2
	adds r1, r3, r4
	strh r0, [r1]
	adds r0, r2, #0
	bl sub_08040AB8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08040C4C: .4byte gEwramData
_08040C50: .4byte 0x000115AE
_08040C54: .4byte 0x000115B0
_08040C58: .4byte 0x000115A0
_08040C5C: .4byte 0x000115A2

	thumb_func_start sub_08040C60
sub_08040C60: @ 0x08040C60
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r5, r2, #0
	movs r0, #0xe0
	ands r0, r2
	cmp r0, #0
	bne _08040C78
	adds r0, r2, #0
	b _08040E02
_08040C78:
	adds r0, r2, #0
	subs r0, #0x20
	ldr r1, _08040D20 @ =0x080E2EC0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r7, [r0]
	ldrb r6, [r0, #1]
	ldr r0, _08040D24 @ =gEwramData
	mov r8, r0
	ldr r3, [r0]
	ldr r1, _08040D28 @ =0x000115B8
	adds r0, r3, r1
	ldrh r1, [r0]
	movs r4, #7
	adds r0, r4, #0
	ands r0, r1
	adds r0, r0, r6
	cmp r0, #7
	bgt _08040D38
	ldr r5, _08040D28 @ =0x000115B8
	adds r0, r3, r5
	ldrh r0, [r0]
	adds r5, r4, #0
	ands r5, r0
	adds r0, r2, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_080402DC
	mov r7, r8
	ldr r2, [r7]
	ldr r0, _08040D2C @ =0x00011598
	adds r1, r2, r0
	ldr r3, _08040D28 @ =0x000115B8
	adds r0, r2, r3
	ldrh r0, [r0]
	lsrs r0, r0, #3
	lsls r0, r0, #5
	ldr r1, [r1]
	adds r1, r1, r0
	ldr r7, _08040D30 @ =0x000115B4
	adds r2, r2, r7
	ldrh r0, [r2]
	lsls r0, r0, #0xa
	adds r1, r1, r0
	mov ip, r1
	movs r4, #0
	adds r3, r5, #0
	adds r0, r3, r6
	cmp r3, r0
	bhs _08040CF0
	movs r7, #0xf
	adds r2, r0, #0
_08040CE2:
	lsls r1, r3, #2
	adds r0, r7, #0
	lsls r0, r1
	orrs r4, r0
	adds r3, #1
	cmp r3, r2
	blo _08040CE2
_08040CF0:
	mvns r0, r4
	mov r8, r0
	lsls r5, r5, #2
	mov r2, ip
	ldr r1, _08040D34 @ =0x03001A18
	mov ip, r1
	movs r3, #7
_08040CFE:
	ldr r1, [r2]
	mov r7, r8
	ands r1, r7
	mov r7, ip
	adds r7, #4
	mov ip, r7
	subs r7, #4
	ldm r7!, {r0}
	lsls r0, r5
	ands r0, r4
	orrs r1, r0
	stm r2!, {r1}
	subs r3, #1
	cmp r3, #0
	bge _08040CFE
	b _08040D42
	.align 2, 0
_08040D20: .4byte 0x080E2EC0
_08040D24: .4byte gEwramData
_08040D28: .4byte 0x000115B8
_08040D2C: .4byte 0x00011598
_08040D30: .4byte 0x000115B4
_08040D34: .4byte 0x03001A18
_08040D38:
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_0804039C
_08040D42:
	ldr r4, _08040DC8 @ =gEwramData
	ldr r2, [r4]
	ldr r0, _08040DCC @ =0x000115B6
	adds r3, r2, r0
	ldrh r0, [r3]
	adds r1, r0, r6
	strh r1, [r3]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bls _08040DF4
	subs r0, r1, #6
	strh r0, [r3]
	ldr r1, _08040DD0 @ =0x000115B2
	adds r3, r2, r1
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	ldr r5, _08040DD4 @ =0x000115C0
	adds r1, r2, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r1]
	cmp r0, r1
	bls _08040DE8
	ldr r7, _08040DD8 @ =0x000115BC
	adds r0, r2, r7
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r0, _08040DDC @ =0x000115B4
	adds r3, r2, r0
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	adds r5, #2
	adds r1, r2, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r1]
	cmp r0, r1
	bls _08040D9C
	adds r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	strh r0, [r3]
_08040D9C:
	ldr r2, [r4]
	ldr r1, _08040DDC @ =0x000115B4
	adds r0, r2, r1
	ldrh r0, [r0]
	lsls r0, r0, #3
	ldr r3, _08040DE0 @ =0x000115BA
	adds r1, r2, r3
	strh r0, [r1]
	ldr r5, _08040DCC @ =0x000115B6
	adds r1, r2, r5
	movs r0, #0
	strh r0, [r1]
	ldr r7, _08040DD0 @ =0x000115B2
	adds r0, r2, r7
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _08040DE4 @ =0x000115B8
	adds r2, r2, r1
	strh r0, [r2]
	b _08040DFE
	.align 2, 0
_08040DC8: .4byte gEwramData
_08040DCC: .4byte 0x000115B6
_08040DD0: .4byte 0x000115B2
_08040DD4: .4byte 0x000115C0
_08040DD8: .4byte 0x000115BC
_08040DDC: .4byte 0x000115B4
_08040DE0: .4byte 0x000115BA
_08040DE4: .4byte 0x000115B8
_08040DE8:
	ldr r3, _08040DF0 @ =0x000115B8
	adds r1, r2, r3
	b _08040DF8
	.align 2, 0
_08040DF0: .4byte 0x000115B8
_08040DF4:
	ldr r5, _08040E0C @ =0x000115B8
	adds r1, r2, r5
_08040DF8:
	ldrh r0, [r1]
	adds r0, r0, r6
	strh r0, [r1]
_08040DFE:
	movs r0, #1
	rsbs r0, r0, #0
_08040E02:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08040E0C: .4byte 0x000115B8

	thumb_func_start sub_08040E10
sub_08040E10: @ 0x08040E10
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, _08040E7C @ =gEwramData
	ldr r3, [r0]
	ldr r1, _08040E80 @ =0x000115C0
	adds r0, r3, r1
	ldrh r1, [r0]
	cmp r4, r1
	bls _08040E2E
	ldrh r4, [r0]
_08040E2E:
	ldr r1, _08040E84 @ =0x000115C2
	adds r0, r3, r1
	ldrh r1, [r0]
	cmp r5, r1
	bls _08040E3A
	ldrh r5, [r0]
_08040E3A:
	ldr r1, _08040E88 @ =0x000115B2
	adds r0, r3, r1
	movs r1, #0
	strh r4, [r0]
	ldr r4, _08040E8C @ =0x000115B4
	adds r0, r3, r4
	strh r5, [r0]
	adds r4, #2
	adds r0, r3, r4
	strh r1, [r0]
	ldr r1, _08040E88 @ =0x000115B2
	adds r0, r3, r1
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r4, #2
	adds r1, r3, r4
	strh r0, [r1]
	ldr r1, _08040E8C @ =0x000115B4
	adds r0, r3, r1
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r4, #2
	adds r1, r3, r4
	strh r0, [r1]
	adds r0, r2, #0
	bl sub_08040C60
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08040E7C: .4byte gEwramData
_08040E80: .4byte 0x000115C0
_08040E84: .4byte 0x000115C2
_08040E88: .4byte 0x000115B2
_08040E8C: .4byte 0x000115B4

	thumb_func_start sub_08040E90
sub_08040E90: @ 0x08040E90
	push {r4, r5, lr}
	ldr r0, _08040EB0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08040EB4 @ =0x000115A6
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #7
	ands r0, r1
	adds r0, #6
	cmp r0, #7
	bgt _08040EB8
	movs r0, #6
	bl sub_0804017C
	b _08040EBE
	.align 2, 0
_08040EB0: .4byte gEwramData
_08040EB4: .4byte 0x000115A6
_08040EB8:
	movs r0, #6
	bl sub_08040208
_08040EBE:
	ldr r4, _08040F48 @ =gEwramData
	ldr r3, [r4]
	ldr r5, _08040F4C @ =0x000115A4
	adds r1, r3, r5
	ldrh r2, [r1]
	adds r0, r2, #6
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bls _08040F70
	strh r2, [r1]
	ldr r0, _08040F50 @ =0x000115A0
	adds r2, r3, r0
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	adds r5, #0xa
	adds r1, r3, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r1]
	cmp r0, r1
	bls _08040F64
	ldr r1, _08040F54 @ =0x000115AA
	adds r0, r3, r1
	ldrh r0, [r0]
	strh r0, [r2]
	subs r5, #0xc
	adds r2, r3, r5
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	adds r5, #0xe
	adds r1, r3, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r1]
	cmp r0, r1
	bls _08040F16
	ldr r1, _08040F58 @ =0x000115AC
	adds r0, r3, r1
	ldrh r0, [r0]
	strh r0, [r2]
_08040F16:
	ldr r2, [r4]
	ldr r3, _08040F5C @ =0x000115A2
	adds r0, r2, r3
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r5, _08040F60 @ =0x000115A8
	adds r1, r2, r5
	strh r0, [r1]
	ldr r0, _08040F4C @ =0x000115A4
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08040F50 @ =0x000115A0
	adds r0, r2, r1
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r3, #4
	adds r2, r2, r3
	strh r0, [r2]
	b _08040F7A
	.align 2, 0
_08040F48: .4byte gEwramData
_08040F4C: .4byte 0x000115A4
_08040F50: .4byte 0x000115A0
_08040F54: .4byte 0x000115AA
_08040F58: .4byte 0x000115AC
_08040F5C: .4byte 0x000115A2
_08040F60: .4byte 0x000115A8
_08040F64:
	ldr r5, _08040F6C @ =0x000115A6
	adds r1, r3, r5
	b _08040F74
	.align 2, 0
_08040F6C: .4byte 0x000115A6
_08040F70:
	ldr r0, _08040F80 @ =0x000115A6
	adds r1, r3, r0
_08040F74:
	ldrh r0, [r1]
	adds r0, #6
	strh r0, [r1]
_08040F7A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08040F80: .4byte 0x000115A6

	thumb_func_start sub_08040F84
sub_08040F84: @ 0x08040F84
	push {r4, lr}
	ldr r2, _08040FCC @ =gEwramData
	ldr r2, [r2]
	ldr r4, _08040FD0 @ =0x000115A0
	adds r3, r2, r4
	movs r4, #0
	strh r0, [r3]
	ldr r3, _08040FD4 @ =0x000115A2
	adds r0, r2, r3
	strh r1, [r0]
	ldr r1, _08040FD8 @ =0x000115A4
	adds r0, r2, r1
	strh r4, [r0]
	subs r3, #2
	adds r0, r2, r3
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r4, _08040FDC @ =0x000115A6
	adds r1, r2, r4
	strh r0, [r1]
	ldr r1, _08040FD4 @ =0x000115A2
	adds r0, r2, r1
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r3, #8
	adds r2, r2, r3
	strh r0, [r2]
	bl sub_08040E90
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08040FCC: .4byte gEwramData
_08040FD0: .4byte 0x000115A0
_08040FD4: .4byte 0x000115A2
_08040FD8: .4byte 0x000115A4
_08040FDC: .4byte 0x000115A6

	thumb_func_start sub_08040FE0
sub_08040FE0: @ 0x08040FE0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08040FF8 @ =gEwramData
	ldr r0, [r2]
	ldr r3, _08040FFC @ =0x000115AC
	adds r1, r0, r3
	ldrh r5, [r1]
	ldr r4, _08041000 @ =0x000115B0
	adds r0, r0, r4
	mov r8, r2
	b _08041044
	.align 2, 0
_08040FF8: .4byte gEwramData
_08040FFC: .4byte 0x000115AC
_08041000: .4byte 0x000115B0
_08041004:
	ldr r0, [r2]
	ldr r2, _0804109C @ =0x000115AA
	adds r1, r0, r2
	ldrh r4, [r1]
	ldr r3, _080410A0 @ =0x000115AE
	adds r0, r0, r3
	ldrh r0, [r0]
	adds r0, #1
	adds r6, r5, #1
	cmp r4, r0
	bgt _08041038
	ldr r7, _080410A4 @ =gEwramData
_0804101C:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08040F84
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, [r7]
	ldr r1, _080410A0 @ =0x000115AE
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #1
	cmp r4, r0
	ble _0804101C
_08041038:
	lsls r0, r6, #0x10
	lsrs r5, r0, #0x10
	ldr r2, _080410A4 @ =gEwramData
	ldr r0, [r2]
	ldr r3, _080410A8 @ =0x000115B0
	adds r0, r0, r3
_08041044:
	ldrh r0, [r0]
	cmp r5, r0
	bls _08041004
	mov r4, r8
	ldr r2, [r4]
	ldr r1, _0804109C @ =0x000115AA
	adds r0, r2, r1
	ldrh r1, [r0]
	ldr r3, _080410AC @ =0x000115A0
	adds r0, r2, r3
	movs r3, #0
	strh r1, [r0]
	ldr r4, _080410B0 @ =0x000115AC
	adds r0, r2, r4
	ldrh r1, [r0]
	subs r4, #0xa
	adds r0, r2, r4
	strh r1, [r0]
	ldr r1, _080410B4 @ =0x000115A4
	adds r0, r2, r1
	strh r3, [r0]
	ldr r3, _080410AC @ =0x000115A0
	adds r0, r2, r3
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r4, #4
	adds r1, r2, r4
	strh r0, [r1]
	ldr r1, _080410B8 @ =0x000115A2
	adds r0, r2, r1
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r3, #8
	adds r2, r2, r3
	strh r0, [r2]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804109C: .4byte 0x000115AA
_080410A0: .4byte 0x000115AE
_080410A4: .4byte gEwramData
_080410A8: .4byte 0x000115B0
_080410AC: .4byte 0x000115A0
_080410B0: .4byte 0x000115AC
_080410B4: .4byte 0x000115A4
_080410B8: .4byte 0x000115A2

	thumb_func_start sub_080410BC
sub_080410BC: @ 0x080410BC
	push {r4, r5, lr}
	ldr r0, _080410DC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080410E0 @ =0x000115B8
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #7
	ands r0, r1
	adds r0, #6
	cmp r0, #7
	bgt _080410E4
	movs r0, #6
	bl sub_080404A0
	b _080410EA
	.align 2, 0
_080410DC: .4byte gEwramData
_080410E0: .4byte 0x000115B8
_080410E4:
	movs r0, #6
	bl sub_08040508
_080410EA:
	ldr r4, _08041170 @ =gEwramData
	ldr r3, [r4]
	ldr r5, _08041174 @ =0x000115B6
	adds r1, r3, r5
	ldrh r2, [r1]
	adds r0, r2, #6
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bls _08041198
	strh r2, [r1]
	ldr r0, _08041178 @ =0x000115B2
	adds r2, r3, r0
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	adds r5, #0xa
	adds r1, r3, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r1]
	cmp r0, r1
	bls _0804118C
	ldr r1, _0804117C @ =0x000115BC
	adds r0, r3, r1
	ldrh r0, [r0]
	strh r0, [r2]
	subs r5, #0xc
	adds r2, r3, r5
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	adds r5, #0xe
	adds r1, r3, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r1]
	cmp r0, r1
	bls _08041142
	ldr r1, _08041180 @ =0x000115BE
	adds r0, r3, r1
	ldrh r0, [r0]
	strh r0, [r2]
_08041142:
	ldr r2, [r4]
	ldr r3, _08041184 @ =0x000115B4
	adds r0, r2, r3
	ldrh r0, [r0]
	lsls r0, r0, #3
	ldr r5, _08041188 @ =0x000115BA
	adds r1, r2, r5
	strh r0, [r1]
	ldr r0, _08041174 @ =0x000115B6
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08041178 @ =0x000115B2
	adds r0, r2, r1
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r3, #4
	adds r2, r2, r3
	strh r0, [r2]
	b _080411A2
	.align 2, 0
_08041170: .4byte gEwramData
_08041174: .4byte 0x000115B6
_08041178: .4byte 0x000115B2
_0804117C: .4byte 0x000115BC
_08041180: .4byte 0x000115BE
_08041184: .4byte 0x000115B4
_08041188: .4byte 0x000115BA
_0804118C:
	ldr r5, _08041194 @ =0x000115B8
	adds r1, r3, r5
	b _0804119C
	.align 2, 0
_08041194: .4byte 0x000115B8
_08041198:
	ldr r0, _080411A8 @ =0x000115B8
	adds r1, r3, r0
_0804119C:
	ldrh r0, [r1]
	adds r0, #6
	strh r0, [r1]
_080411A2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080411A8: .4byte 0x000115B8

	thumb_func_start sub_080411AC
sub_080411AC: @ 0x080411AC
	push {r4, lr}
	ldr r2, _080411F0 @ =gEwramData
	ldr r2, [r2]
	ldr r4, _080411F4 @ =0x000115B2
	adds r3, r2, r4
	movs r4, #0
	strh r0, [r3]
	ldr r3, _080411F8 @ =0x000115B4
	adds r0, r2, r3
	strh r1, [r0]
	ldr r1, _080411FC @ =0x000115B6
	adds r0, r2, r1
	strh r4, [r0]
	subs r3, #2
	adds r0, r2, r3
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r4, _08041200 @ =0x000115B8
	adds r1, r2, r4
	strh r0, [r1]
	ldr r1, _080411F8 @ =0x000115B4
	adds r0, r2, r1
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r3, #8
	adds r2, r2, r3
	strh r0, [r2]
	bl sub_080410BC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080411F0: .4byte gEwramData
_080411F4: .4byte 0x000115B2
_080411F8: .4byte 0x000115B4
_080411FC: .4byte 0x000115B6
_08041200: .4byte 0x000115B8

	thumb_func_start sub_08041204
sub_08041204: @ 0x08041204
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _0804121C @ =gEwramData
	ldr r0, [r2]
	ldr r3, _08041220 @ =0x000115BE
	adds r1, r0, r3
	ldrh r5, [r1]
	ldr r4, _08041224 @ =0x000115C2
	adds r0, r0, r4
	mov r8, r2
	b _08041268
	.align 2, 0
_0804121C: .4byte gEwramData
_08041220: .4byte 0x000115BE
_08041224: .4byte 0x000115C2
_08041228:
	ldr r0, [r2]
	ldr r2, _080412BC @ =0x000115BC
	adds r1, r0, r2
	ldrh r4, [r1]
	ldr r3, _080412C0 @ =0x000115C0
	adds r0, r0, r3
	ldrh r0, [r0]
	adds r0, #1
	adds r6, r5, #1
	cmp r4, r0
	bgt _0804125C
	ldr r7, _080412C4 @ =gEwramData
_08041240:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080411AC
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, [r7]
	ldr r1, _080412C0 @ =0x000115C0
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #1
	cmp r4, r0
	ble _08041240
_0804125C:
	lsls r0, r6, #0x10
	lsrs r5, r0, #0x10
	ldr r2, _080412C4 @ =gEwramData
	ldr r0, [r2]
	ldr r3, _080412C8 @ =0x000115C2
	adds r0, r0, r3
_08041268:
	ldrh r0, [r0]
	cmp r5, r0
	bls _08041228
	mov r4, r8
	ldr r2, [r4]
	ldr r1, _080412BC @ =0x000115BC
	adds r0, r2, r1
	ldrh r1, [r0]
	ldr r3, _080412CC @ =0x000115B2
	adds r0, r2, r3
	movs r3, #0
	strh r1, [r0]
	ldr r4, _080412D0 @ =0x000115BE
	adds r0, r2, r4
	ldrh r1, [r0]
	subs r4, #0xa
	adds r0, r2, r4
	strh r1, [r0]
	ldr r1, _080412D4 @ =0x000115B6
	adds r0, r2, r1
	strh r3, [r0]
	ldr r3, _080412CC @ =0x000115B2
	adds r0, r2, r3
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r4, #4
	adds r1, r2, r4
	strh r0, [r1]
	ldr r1, _080412D8 @ =0x000115B4
	adds r0, r2, r1
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r3, #8
	adds r2, r2, r3
	strh r0, [r2]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080412BC: .4byte 0x000115BC
_080412C0: .4byte 0x000115C0
_080412C4: .4byte gEwramData
_080412C8: .4byte 0x000115C2
_080412CC: .4byte 0x000115B2
_080412D0: .4byte 0x000115BE
_080412D4: .4byte 0x000115B6
_080412D8: .4byte 0x000115B4

	thumb_func_start sub_080412DC
sub_080412DC: @ 0x080412DC
	ldr r1, _080412E8 @ =gEwramData
	ldr r1, [r1]
	ldr r2, _080412EC @ =0x00011598
	adds r1, r1, r2
	str r0, [r1]
	bx lr
	.align 2, 0
_080412E8: .4byte gEwramData
_080412EC: .4byte 0x00011598

	thumb_func_start sub_080412F0
sub_080412F0: @ 0x080412F0
	ldr r1, _080412FC @ =gEwramData
	ldr r1, [r1]
	ldr r2, _08041300 @ =0x000115C4
	adds r1, r1, r2
	strh r0, [r1]
	bx lr
	.align 2, 0
_080412FC: .4byte gEwramData
_08041300: .4byte 0x000115C4

	thumb_func_start sub_08041304
sub_08041304: @ 0x08041304
	ldr r1, _08041310 @ =gEwramData
	ldr r1, [r1]
	ldr r2, _08041314 @ =0x000115C6
	adds r1, r1, r2
	strh r0, [r1]
	bx lr
	.align 2, 0
_08041310: .4byte gEwramData
_08041314: .4byte 0x000115C6

	thumb_func_start sub_08041318
sub_08041318: @ 0x08041318
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #2
	movs r6, #1
	rsbs r6, r6, #0
_08041322:
	adds r0, r5, r4
	ldrb r0, [r0]
	adds r4, #1
	bl sub_08040AB8
	cmp r0, r6
	beq _08041322
	subs r0, r4, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08041338
sub_08041338: @ 0x08041338
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #2
	movs r6, #1
	rsbs r6, r6, #0
_08041342:
	adds r0, r5, r4
	ldrb r0, [r0]
	adds r4, #1
	bl sub_08040C60
	cmp r0, r6
	beq _08041342
	subs r0, r4, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08041358
sub_08041358: @ 0x08041358
	ldr r0, _08041364 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08041368 @ =0x000115A6
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_08041364: .4byte gEwramData
_08041368: .4byte 0x000115A6

	thumb_func_start sub_0804136C
sub_0804136C: @ 0x0804136C
	ldr r0, _08041378 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804137C @ =0x000115B8
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_08041378: .4byte gEwramData
_0804137C: .4byte 0x000115B8

	thumb_func_start sub_08041380
sub_08041380: @ 0x08041380
	ldr r0, _0804138C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08041390 @ =0x000115A0
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_0804138C: .4byte gEwramData
_08041390: .4byte 0x000115A0

	thumb_func_start sub_08041394
sub_08041394: @ 0x08041394
	ldr r0, _080413A0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080413A4 @ =0x000115B2
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_080413A0: .4byte gEwramData
_080413A4: .4byte 0x000115B2

	thumb_func_start sub_080413A8
sub_080413A8: @ 0x080413A8
	ldr r0, _080413B4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080413B8 @ =0x000115A4
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_080413B4: .4byte gEwramData
_080413B8: .4byte 0x000115A4

	thumb_func_start sub_080413BC
sub_080413BC: @ 0x080413BC
	ldr r0, _080413C8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080413CC @ =0x000115B6
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_080413C8: .4byte gEwramData
_080413CC: .4byte 0x000115B6

	thumb_func_start sub_080413D0
sub_080413D0: @ 0x080413D0
	ldr r0, _080413DC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080413E0 @ =0x000115A8
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_080413DC: .4byte gEwramData
_080413E0: .4byte 0x000115A8

	thumb_func_start sub_080413E4
sub_080413E4: @ 0x080413E4
	ldr r0, _080413F0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080413F4 @ =0x000115BA
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_080413F0: .4byte gEwramData
_080413F4: .4byte 0x000115BA

	thumb_func_start sub_080413F8
sub_080413F8: @ 0x080413F8
	ldr r0, _08041404 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08041408 @ =0x000115A2
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_08041404: .4byte gEwramData
_08041408: .4byte 0x000115A2

	thumb_func_start sub_0804140C
sub_0804140C: @ 0x0804140C
	ldr r0, _08041418 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804141C @ =0x000115B4
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_08041418: .4byte gEwramData
_0804141C: .4byte 0x000115B4

	thumb_func_start sub_08041420
sub_08041420: @ 0x08041420
	ldr r1, _08041430 @ =0x080E2EC0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	ldrb r0, [r0]
	subs r1, r1, r0
	adds r0, r1, #0
	bx lr
	.align 2, 0
_08041430: .4byte 0x080E2EC0

	thumb_func_start sub_08041434
sub_08041434: @ 0x08041434
	push {lr}
	adds r2, r0, #0
	movs r1, #0
	ldr r0, _08041454 @ =gEwramData
	ldr r0, [r0]
	movs r3, #0x9a
	lsls r3, r3, #3
	adds r0, r0, r3
	ldr r0, [r0]
	cmp r0, #2
	beq _08041458
	cmp r0, #2
	bls _08041462
	cmp r0, #3
	beq _0804145E
	b _08041462
	.align 2, 0
_08041454: .4byte gEwramData
_08041458:
	movs r1, #0xf1
	lsls r1, r1, #2
	b _08041462
_0804145E:
	movs r1, #0xf1
	lsls r1, r1, #3
_08041462:
	ldr r0, _08041470 @ =0x08506B38
	adds r1, r2, r1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	pop {r1}
	bx r1
	.align 2, 0
_08041470: .4byte 0x08506B38

	thumb_func_start sub_08041474
sub_08041474: @ 0x08041474
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	adds r5, r1, #0
	adds r7, r2, #0
	adds r6, r3, #0
	ldrb r0, [r5, #2]
	cmp r0, #1
	bne _0804148C
	b _08041594
_0804148C:
	ldrb r0, [r5, #3]
	cmp r0, #1
	bne _08041494
	b _08041594
_08041494:
	ldrb r0, [r6, #2]
	cmp r0, #1
	bne _0804149C
	b _08041594
_0804149C:
	ldrb r0, [r6, #3]
	cmp r0, #1
	bne _080414A4
	b _08041594
_080414A4:
	mov r2, ip
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	mov sb, r2
	cmp r0, #0
	bne _080414CA
	mov r0, ip
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0
	ldrsb r1, [r5, r1]
	adds r3, r0, r1
	subs r0, r3, #1
	ldrb r2, [r5, #2]
	adds r4, r0, r2
	b _080414DE
_080414CA:
	mov r0, ip
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0
	ldrsb r0, [r5, r0]
	subs r4, r1, r0
	adds r1, r4, #1
	ldrb r0, [r5, #2]
	subs r3, r1, r0
_080414DE:
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	mov r8, r2
	cmp r0, #0
	bne _08041504
	adds r0, r7, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0
	ldrsb r1, [r6, r1]
	adds r1, r0, r1
	subs r2, r1, #1
	ldrb r0, [r6, #2]
	adds r2, r2, r0
	b _08041518
_08041504:
	adds r0, r7, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0
	ldrsb r0, [r6, r0]
	subs r2, r1, r0
	adds r1, r2, #1
	ldrb r0, [r6, #2]
	subs r1, r1, r0
_08041518:
	cmp r3, r2
	bgt _08041594
	cmp r1, r4
	bgt _08041594
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08041542
	mov r0, ip
	adds r0, #0x46
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #1
	ldrsb r0, [r5, r0]
	adds r3, r1, r0
	subs r0, r3, #1
	ldrb r5, [r5, #3]
	adds r4, r0, r5
	b _08041556
_08041542:
	mov r0, ip
	adds r0, #0x46
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #1
	ldrsb r0, [r5, r0]
	subs r4, r1, r0
	adds r1, r4, #1
	ldrb r0, [r5, #3]
	subs r3, r1, r0
_08041556:
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08041578
	adds r0, r7, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #1
	ldrsb r0, [r6, r0]
	adds r1, r1, r0
	subs r0, r1, #1
	ldrb r6, [r6, #3]
	adds r2, r0, r6
	b _0804158C
_08041578:
	adds r0, r7, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #1
	ldrsb r0, [r6, r0]
	subs r2, r1, r0
	adds r1, r2, #1
	ldrb r0, [r6, #3]
	subs r1, r1, r0
_0804158C:
	cmp r3, r2
	bgt _08041594
	cmp r1, r4
	ble _08041598
_08041594:
	movs r0, #0
	b _0804159A
_08041598:
	movs r0, #1
_0804159A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080415A8
sub_080415A8: @ 0x080415A8
	push {r4, r5, lr}
	mov ip, r0
	adds r4, r1, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080415EC
	ldr r3, _080415DC @ =gEwramData
	ldr r2, [r3]
	mov r0, ip
	adds r0, #0x42
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldrh r0, [r0]
	adds r1, r1, r0
	ldr r5, _080415E0 @ =0x00013074
	adds r0, r2, r5
	strh r1, [r0]
	ldrb r0, [r4, #2]
	ldr r5, _080415E4 @ =0x0000FFFF
	adds r0, r0, r5
	adds r1, r1, r0
	ldr r0, _080415E8 @ =0x00013078
	b _0804160A
	.align 2, 0
_080415DC: .4byte gEwramData
_080415E0: .4byte 0x00013074
_080415E4: .4byte 0x0000FFFF
_080415E8: .4byte 0x00013078
_080415EC:
	ldr r3, _08041640 @ =gEwramData
	ldr r2, [r3]
	mov r1, ip
	adds r1, #0x42
	movs r0, #0
	ldrsb r0, [r4, r0]
	ldrh r1, [r1]
	subs r1, r1, r0
	ldr r5, _08041644 @ =0x00013078
	adds r0, r2, r5
	strh r1, [r0]
	ldrb r0, [r4, #2]
	subs r0, #1
	subs r1, r1, r0
	ldr r0, _08041648 @ =0x00013074
_0804160A:
	adds r2, r2, r0
	strh r1, [r2]
	mov r0, ip
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08041658
	ldr r2, [r3]
	mov r0, ip
	adds r0, #0x46
	movs r1, #1
	ldrsb r1, [r4, r1]
	ldrh r0, [r0]
	adds r1, r1, r0
	ldr r3, _0804164C @ =0x00013076
	adds r0, r2, r3
	strh r1, [r0]
	ldrb r0, [r4, #3]
	ldr r5, _08041650 @ =0x0000FFFF
	adds r0, r0, r5
	adds r1, r1, r0
	ldr r0, _08041654 @ =0x0001307A
	adds r2, r2, r0
	strh r1, [r2]
	b _08041678
	.align 2, 0
_08041640: .4byte gEwramData
_08041644: .4byte 0x00013078
_08041648: .4byte 0x00013074
_0804164C: .4byte 0x00013076
_08041650: .4byte 0x0000FFFF
_08041654: .4byte 0x0001307A
_08041658:
	ldr r3, [r3]
	mov r0, ip
	adds r0, #0x46
	movs r2, #1
	ldrsb r2, [r4, r2]
	ldrh r1, [r0]
	subs r1, r1, r2
	ldr r2, _08041680 @ =0x0001307A
	adds r0, r3, r2
	strh r1, [r0]
	ldrb r0, [r4, #3]
	subs r0, #1
	subs r1, r1, r0
	ldr r5, _08041684 @ =0x00013076
	adds r3, r3, r5
	strh r1, [r3]
_08041678:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08041680: .4byte 0x0001307A
_08041684: .4byte 0x00013076

	thumb_func_start sub_08041688
sub_08041688: @ 0x08041688
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	adds r5, r1, #0
	ldr r3, _080416F0 @ =gEwramData
	ldr r4, [r3]
	ldr r1, _080416F4 @ =0x00013074
	adds r0, r4, r1
	ldr r2, _080416F8 @ =0x00013078
	adds r1, r4, r2
	movs r6, #0
	ldrsh r2, [r0, r6]
	movs r7, #0
	ldrsh r0, [r1, r7]
	adds r6, r3, #0
	cmp r2, r0
	beq _0804178A
	ldr r1, _080416FC @ =0x00013076
	adds r0, r4, r1
	ldr r2, _08041700 @ =0x0001307A
	adds r1, r4, r2
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r2, r0
	beq _0804178A
	ldrb r0, [r5, #2]
	cmp r0, #1
	beq _0804178A
	ldrb r0, [r5, #3]
	cmp r0, #1
	beq _0804178A
	mov r2, ip
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	adds r3, r2, #0
	cmp r0, #0
	bne _08041704
	mov r0, ip
	adds r0, #0x42
	movs r7, #0
	ldrsh r0, [r0, r7]
	movs r1, #0
	ldrsb r1, [r5, r1]
	adds r1, r0, r1
	subs r0, r1, #1
	ldrb r4, [r5, #2]
	adds r2, r0, r4
	b _08041718
	.align 2, 0
_080416F0: .4byte gEwramData
_080416F4: .4byte 0x00013074
_080416F8: .4byte 0x00013078
_080416FC: .4byte 0x00013076
_08041700: .4byte 0x0001307A
_08041704:
	mov r0, ip
	adds r0, #0x42
	movs r7, #0
	ldrsh r1, [r0, r7]
	movs r0, #0
	ldrsb r0, [r5, r0]
	subs r2, r1, r0
	adds r1, r2, #1
	ldrb r0, [r5, #2]
	subs r1, r1, r0
_08041718:
	ldr r4, [r6]
	ldr r7, _08041754 @ =0x00013074
	adds r0, r4, r7
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, r2
	bgt _0804178A
	ldr r2, _08041758 @ =0x00013078
	adds r0, r4, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	bgt _0804178A
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0804175C
	mov r0, ip
	adds r0, #0x46
	movs r7, #0
	ldrsh r1, [r0, r7]
	movs r0, #1
	ldrsb r0, [r5, r0]
	adds r1, r1, r0
	subs r0, r1, #1
	ldrb r5, [r5, #3]
	adds r2, r0, r5
	b _08041770
	.align 2, 0
_08041754: .4byte 0x00013074
_08041758: .4byte 0x00013078
_0804175C:
	mov r0, ip
	adds r0, #0x46
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #1
	ldrsb r0, [r5, r0]
	subs r2, r1, r0
	adds r1, r2, #1
	ldrb r0, [r5, #3]
	subs r1, r1, r0
_08041770:
	ldr r3, [r6]
	ldr r4, _08041790 @ =0x00013076
	adds r0, r3, r4
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r0, r2
	bgt _0804178A
	ldr r7, _08041794 @ =0x0001307A
	adds r0, r3, r7
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	ble _08041798
_0804178A:
	movs r0, #0
	b _0804179A
	.align 2, 0
_08041790: .4byte 0x00013076
_08041794: .4byte 0x0001307A
_08041798:
	movs r0, #1
_0804179A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080417A0
sub_080417A0: @ 0x080417A0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	mov ip, r1
	adds r4, r2, #0
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r2, #4
	ldrsh r0, [r5, r2]
	cmp r1, r0
	beq _08041858
	movs r3, #2
	ldrsh r1, [r5, r3]
	movs r6, #6
	ldrsh r0, [r5, r6]
	cmp r1, r0
	beq _08041858
	ldrb r0, [r4, #2]
	cmp r0, #1
	beq _08041858
	ldrb r0, [r4, #3]
	cmp r0, #1
	beq _08041858
	mov r2, ip
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080417F0
	mov r0, ip
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r1, r0, r1
	subs r0, r1, #1
	ldrb r6, [r4, #2]
	adds r3, r0, r6
	b _08041804
_080417F0:
	mov r0, ip
	adds r0, #0x42
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r0, #0
	ldrsb r0, [r4, r0]
	subs r3, r1, r0
	adds r1, r3, #1
	ldrb r0, [r4, #2]
	subs r1, r1, r0
_08041804:
	movs r6, #0
	ldrsh r0, [r5, r6]
	cmp r0, r3
	bgt _08041858
	movs r3, #4
	ldrsh r0, [r5, r3]
	cmp r1, r0
	bgt _08041858
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08041834
	mov r0, ip
	adds r0, #0x46
	movs r6, #0
	ldrsh r1, [r0, r6]
	movs r0, #1
	ldrsb r0, [r4, r0]
	adds r1, r1, r0
	subs r0, r1, #1
	ldrb r4, [r4, #3]
	adds r2, r0, r4
	b _08041848
_08041834:
	mov r0, ip
	adds r0, #0x46
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #1
	ldrsb r0, [r4, r0]
	subs r2, r1, r0
	adds r1, r2, #1
	ldrb r0, [r4, #3]
	subs r1, r1, r0
_08041848:
	movs r3, #2
	ldrsh r0, [r5, r3]
	cmp r0, r2
	bgt _08041858
	movs r6, #6
	ldrsh r0, [r5, r6]
	cmp r1, r0
	ble _0804185C
_08041858:
	movs r0, #0
	b _0804185E
_0804185C:
	movs r0, #1
_0804185E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08041864
sub_08041864: @ 0x08041864
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r4, r5, #0
	adds r4, #0x70
	adds r6, r0, #0
	adds r6, #0x70
	adds r1, r5, #0
	adds r1, #0x73
	ldrb r1, [r1]
	lsls r1, r1, #3
	ldr r2, _080418B8 @ =0x03001A58
	adds r7, r1, r2
	adds r1, r0, #0
	adds r1, #0x73
	ldrb r1, [r1]
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #4
	bl sub_080415A8
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08041688
	cmp r0, #0
	bne _0804189C
	b _08041A30
_0804189C:
	ldrb r0, [r6, #4]
	cmp r0, #0
	bne _08041924
	ldrb r0, [r4]
	strb r0, [r6, #4]
	ldrb r1, [r4]
	cmp r1, #5
	beq _080418D8
	cmp r1, #5
	bgt _080418BC
	cmp r1, #3
	beq _080418C6
	b _08041914
	.align 2, 0
_080418B8: .4byte 0x03001A58
_080418BC:
	cmp r1, #6
	beq _080418EC
	cmp r1, #9
	beq _08041900
	b _08041914
_080418C6:
	ldr r0, _080418D0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080418D4 @ =0x0001307C
	adds r0, r0, r1
	b _08041918
	.align 2, 0
_080418D0: .4byte gEwramData
_080418D4: .4byte 0x0001307C
_080418D8:
	ldr r0, _080418E4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080418E8 @ =0x0001307D
	adds r0, r0, r1
	b _08041918
	.align 2, 0
_080418E4: .4byte gEwramData
_080418E8: .4byte 0x0001307D
_080418EC:
	ldr r0, _080418F8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080418FC @ =0x0001307E
	adds r0, r0, r1
	b _08041918
	.align 2, 0
_080418F8: .4byte gEwramData
_080418FC: .4byte 0x0001307E
_08041900:
	ldr r0, _0804190C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08041910 @ =0x0001307F
	adds r0, r0, r1
	b _08041918
	.align 2, 0
_0804190C: .4byte gEwramData
_08041910: .4byte 0x0001307F
_08041914:
	ldr r0, _08041920 @ =0x080E33F0
	adds r0, r1, r0
_08041918:
	ldrb r0, [r0]
	adds r0, #1
	strb r0, [r6, #8]
	b _08041A26
	.align 2, 0
_08041920: .4byte 0x080E33F0
_08041924:
	ldrb r0, [r6, #5]
	cmp r0, #0
	bne _080419A8
	ldrb r0, [r4]
	strb r0, [r6, #5]
	ldrb r1, [r4]
	cmp r1, #5
	beq _0804195C
	cmp r1, #5
	bgt _0804193E
	cmp r1, #3
	beq _08041948
	b _08041998
_0804193E:
	cmp r1, #6
	beq _08041970
	cmp r1, #9
	beq _08041984
	b _08041998
_08041948:
	ldr r0, _08041954 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08041958 @ =0x0001307C
	adds r0, r0, r1
	b _0804199C
	.align 2, 0
_08041954: .4byte gEwramData
_08041958: .4byte 0x0001307C
_0804195C:
	ldr r0, _08041968 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804196C @ =0x0001307D
	adds r0, r0, r1
	b _0804199C
	.align 2, 0
_08041968: .4byte gEwramData
_0804196C: .4byte 0x0001307D
_08041970:
	ldr r0, _0804197C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08041980 @ =0x0001307E
	adds r0, r0, r1
	b _0804199C
	.align 2, 0
_0804197C: .4byte gEwramData
_08041980: .4byte 0x0001307E
_08041984:
	ldr r0, _08041990 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08041994 @ =0x0001307F
	adds r0, r0, r1
	b _0804199C
	.align 2, 0
_08041990: .4byte gEwramData
_08041994: .4byte 0x0001307F
_08041998:
	ldr r0, _080419A4 @ =0x080E33F0
	adds r0, r1, r0
_0804199C:
	ldrb r0, [r0]
	adds r0, #1
	strb r0, [r6, #9]
	b _08041A26
	.align 2, 0
_080419A4: .4byte 0x080E33F0
_080419A8:
	ldrb r0, [r6, #6]
	cmp r0, #0
	bne _08041A26
	ldrb r0, [r4]
	strb r0, [r6, #6]
	ldrb r1, [r4]
	cmp r1, #5
	beq _080419E0
	cmp r1, #5
	bgt _080419C2
	cmp r1, #3
	beq _080419CC
	b _08041A1C
_080419C2:
	cmp r1, #6
	beq _080419F4
	cmp r1, #9
	beq _08041A08
	b _08041A1C
_080419CC:
	ldr r0, _080419D8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080419DC @ =0x0001307C
	adds r0, r0, r1
	b _08041A20
	.align 2, 0
_080419D8: .4byte gEwramData
_080419DC: .4byte 0x0001307C
_080419E0:
	ldr r0, _080419EC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080419F0 @ =0x0001307D
	adds r0, r0, r1
	b _08041A20
	.align 2, 0
_080419EC: .4byte gEwramData
_080419F0: .4byte 0x0001307D
_080419F4:
	ldr r0, _08041A00 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08041A04 @ =0x0001307E
	adds r0, r0, r1
	b _08041A20
	.align 2, 0
_08041A00: .4byte gEwramData
_08041A04: .4byte 0x0001307E
_08041A08:
	ldr r0, _08041A14 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08041A18 @ =0x0001307F
	adds r0, r0, r1
	b _08041A20
	.align 2, 0
_08041A14: .4byte gEwramData
_08041A18: .4byte 0x0001307F
_08041A1C:
	ldr r0, _08041A2C @ =0x080E33F0
	adds r0, r1, r0
_08041A20:
	ldrb r0, [r0]
	adds r0, #1
	strb r0, [r6, #0xa]
_08041A26:
	movs r0, #1
	b _08041BD6
	.align 2, 0
_08041A2C: .4byte 0x080E33F0
_08041A30:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _08041A38
	b _08041BD4
_08041A38:
	adds r1, r7, #4
	adds r0, r5, #0
	bl sub_08041688
	cmp r0, #0
	bne _08041A46
	b _08041BD4
_08041A46:
	ldrb r0, [r6, #4]
	cmp r0, #0
	bne _08041AC8
	ldrb r0, [r4]
	strb r0, [r6, #4]
	ldrb r1, [r4]
	cmp r1, #5
	beq _08041A7C
	cmp r1, #5
	bgt _08041A60
	cmp r1, #3
	beq _08041A6A
	b _08041AB8
_08041A60:
	cmp r1, #6
	beq _08041A90
	cmp r1, #9
	beq _08041AA4
	b _08041AB8
_08041A6A:
	ldr r0, _08041A74 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08041A78 @ =0x0001307C
	adds r0, r0, r1
	b _08041ABC
	.align 2, 0
_08041A74: .4byte gEwramData
_08041A78: .4byte 0x0001307C
_08041A7C:
	ldr r0, _08041A88 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08041A8C @ =0x0001307D
	adds r0, r0, r1
	b _08041ABC
	.align 2, 0
_08041A88: .4byte gEwramData
_08041A8C: .4byte 0x0001307D
_08041A90:
	ldr r0, _08041A9C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08041AA0 @ =0x0001307E
	adds r0, r0, r1
	b _08041ABC
	.align 2, 0
_08041A9C: .4byte gEwramData
_08041AA0: .4byte 0x0001307E
_08041AA4:
	ldr r0, _08041AB0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08041AB4 @ =0x0001307F
	adds r0, r0, r1
	b _08041ABC
	.align 2, 0
_08041AB0: .4byte gEwramData
_08041AB4: .4byte 0x0001307F
_08041AB8:
	ldr r0, _08041AC4 @ =0x080E33F0
	adds r0, r1, r0
_08041ABC:
	ldrb r0, [r0]
	adds r0, #1
	strb r0, [r6, #8]
	b _08041BCA
	.align 2, 0
_08041AC4: .4byte 0x080E33F0
_08041AC8:
	ldrb r0, [r6, #5]
	cmp r0, #0
	bne _08041B4C
	ldrb r0, [r4]
	strb r0, [r6, #5]
	ldrb r1, [r4]
	cmp r1, #5
	beq _08041B00
	cmp r1, #5
	bgt _08041AE2
	cmp r1, #3
	beq _08041AEC
	b _08041B3C
_08041AE2:
	cmp r1, #6
	beq _08041B14
	cmp r1, #9
	beq _08041B28
	b _08041B3C
_08041AEC:
	ldr r0, _08041AF8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08041AFC @ =0x0001307C
	adds r0, r0, r1
	b _08041B40
	.align 2, 0
_08041AF8: .4byte gEwramData
_08041AFC: .4byte 0x0001307C
_08041B00:
	ldr r0, _08041B0C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08041B10 @ =0x0001307D
	adds r0, r0, r1
	b _08041B40
	.align 2, 0
_08041B0C: .4byte gEwramData
_08041B10: .4byte 0x0001307D
_08041B14:
	ldr r0, _08041B20 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08041B24 @ =0x0001307E
	adds r0, r0, r1
	b _08041B40
	.align 2, 0
_08041B20: .4byte gEwramData
_08041B24: .4byte 0x0001307E
_08041B28:
	ldr r0, _08041B34 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08041B38 @ =0x0001307F
	adds r0, r0, r1
	b _08041B40
	.align 2, 0
_08041B34: .4byte gEwramData
_08041B38: .4byte 0x0001307F
_08041B3C:
	ldr r0, _08041B48 @ =0x080E33F0
	adds r0, r1, r0
_08041B40:
	ldrb r0, [r0]
	adds r0, #1
	strb r0, [r6, #9]
	b _08041BCA
	.align 2, 0
_08041B48: .4byte 0x080E33F0
_08041B4C:
	ldrb r0, [r6, #6]
	cmp r0, #0
	bne _08041BCA
	ldrb r0, [r4]
	strb r0, [r6, #6]
	ldrb r1, [r4]
	cmp r1, #5
	beq _08041B84
	cmp r1, #5
	bgt _08041B66
	cmp r1, #3
	beq _08041B70
	b _08041BC0
_08041B66:
	cmp r1, #6
	beq _08041B98
	cmp r1, #9
	beq _08041BAC
	b _08041BC0
_08041B70:
	ldr r0, _08041B7C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08041B80 @ =0x0001307C
	adds r0, r0, r1
	b _08041BC4
	.align 2, 0
_08041B7C: .4byte gEwramData
_08041B80: .4byte 0x0001307C
_08041B84:
	ldr r0, _08041B90 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08041B94 @ =0x0001307D
	adds r0, r0, r1
	b _08041BC4
	.align 2, 0
_08041B90: .4byte gEwramData
_08041B94: .4byte 0x0001307D
_08041B98:
	ldr r0, _08041BA4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08041BA8 @ =0x0001307E
	adds r0, r0, r1
	b _08041BC4
	.align 2, 0
_08041BA4: .4byte gEwramData
_08041BA8: .4byte 0x0001307E
_08041BAC:
	ldr r0, _08041BB8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08041BBC @ =0x0001307F
	adds r0, r0, r1
	b _08041BC4
	.align 2, 0
_08041BB8: .4byte gEwramData
_08041BBC: .4byte 0x0001307F
_08041BC0:
	ldr r0, _08041BD0 @ =0x080E33F0
	adds r0, r1, r0
_08041BC4:
	ldrb r0, [r0]
	adds r0, #1
	strb r0, [r6, #0xa]
_08041BCA:
	movs r0, #2
	b _08041BD6
	.align 2, 0
_08041BD0: .4byte 0x080E33F0
_08041BD4:
	movs r0, #0
_08041BD6:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08041BDC
sub_08041BDC: @ 0x08041BDC
	push {r4, r5, r6, lr}
	adds r1, r0, #0
	ldr r5, _08041C24 @ =gEwramData
	ldr r0, [r5]
	ldr r2, _08041C28 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x70
	adds r6, r1, #0
	adds r6, #0x70
	adds r0, r1, #0
	adds r0, #0x73
	ldrb r2, [r0]
	lsls r2, r2, #3
	ldr r0, _08041C2C @ =0x03001A5C
	adds r2, r2, r0
	ldr r0, _08041C30 @ =0x03001A48
	bl sub_080417A0
	cmp r0, #0
	bne _08041C0A
	b _08041D4C
_08041C0A:
	ldrb r0, [r6, #4]
	cmp r0, #0
	bne _08041C80
	ldrb r0, [r4]
	strb r0, [r6, #4]
	ldrb r1, [r4]
	cmp r1, #5
	beq _08041C4C
	cmp r1, #5
	bgt _08041C34
	cmp r1, #3
	beq _08041C3E
	b _08041C70
	.align 2, 0
_08041C24: .4byte gEwramData
_08041C28: .4byte 0x00013110
_08041C2C: .4byte 0x03001A5C
_08041C30: .4byte 0x03001A48
_08041C34:
	cmp r1, #6
	beq _08041C58
	cmp r1, #9
	beq _08041C64
	b _08041C70
_08041C3E:
	ldr r0, [r5]
	ldr r1, _08041C48 @ =0x0001307C
	adds r0, r0, r1
	b _08041C74
	.align 2, 0
_08041C48: .4byte 0x0001307C
_08041C4C:
	ldr r0, [r5]
	ldr r2, _08041C54 @ =0x0001307D
	adds r0, r0, r2
	b _08041C74
	.align 2, 0
_08041C54: .4byte 0x0001307D
_08041C58:
	ldr r0, [r5]
	ldr r1, _08041C60 @ =0x0001307E
	adds r0, r0, r1
	b _08041C74
	.align 2, 0
_08041C60: .4byte 0x0001307E
_08041C64:
	ldr r0, [r5]
	ldr r2, _08041C6C @ =0x0001307F
	adds r0, r0, r2
	b _08041C74
	.align 2, 0
_08041C6C: .4byte 0x0001307F
_08041C70:
	ldr r0, _08041C7C @ =0x080E33F0
	adds r0, r1, r0
_08041C74:
	ldrb r0, [r0]
	adds r0, #1
	strb r0, [r6, #8]
	b _08041D42
	.align 2, 0
_08041C7C: .4byte 0x080E33F0
_08041C80:
	ldrb r0, [r6, #5]
	cmp r0, #0
	bne _08041CE4
	ldrb r0, [r4]
	strb r0, [r6, #5]
	ldrb r1, [r4]
	cmp r1, #5
	beq _08041CB0
	cmp r1, #5
	bgt _08041C9A
	cmp r1, #3
	beq _08041CA4
	b _08041CD4
_08041C9A:
	cmp r1, #6
	beq _08041CBC
	cmp r1, #9
	beq _08041CC8
	b _08041CD4
_08041CA4:
	ldr r0, [r5]
	ldr r1, _08041CAC @ =0x0001307C
	adds r0, r0, r1
	b _08041CD8
	.align 2, 0
_08041CAC: .4byte 0x0001307C
_08041CB0:
	ldr r0, [r5]
	ldr r2, _08041CB8 @ =0x0001307D
	adds r0, r0, r2
	b _08041CD8
	.align 2, 0
_08041CB8: .4byte 0x0001307D
_08041CBC:
	ldr r0, [r5]
	ldr r1, _08041CC4 @ =0x0001307E
	adds r0, r0, r1
	b _08041CD8
	.align 2, 0
_08041CC4: .4byte 0x0001307E
_08041CC8:
	ldr r0, [r5]
	ldr r2, _08041CD0 @ =0x0001307F
	adds r0, r0, r2
	b _08041CD8
	.align 2, 0
_08041CD0: .4byte 0x0001307F
_08041CD4:
	ldr r0, _08041CE0 @ =0x080E33F0
	adds r0, r1, r0
_08041CD8:
	ldrb r0, [r0]
	adds r0, #1
	strb r0, [r6, #9]
	b _08041D42
	.align 2, 0
_08041CE0: .4byte 0x080E33F0
_08041CE4:
	ldrb r0, [r6, #6]
	cmp r0, #0
	bne _08041D42
	ldrb r0, [r4]
	strb r0, [r6, #6]
	ldrb r1, [r4]
	cmp r1, #5
	beq _08041D14
	cmp r1, #5
	bgt _08041CFE
	cmp r1, #3
	beq _08041D08
	b _08041D38
_08041CFE:
	cmp r1, #6
	beq _08041D20
	cmp r1, #9
	beq _08041D2C
	b _08041D38
_08041D08:
	ldr r0, [r5]
	ldr r1, _08041D10 @ =0x0001307C
	adds r0, r0, r1
	b _08041D3C
	.align 2, 0
_08041D10: .4byte 0x0001307C
_08041D14:
	ldr r0, [r5]
	ldr r2, _08041D1C @ =0x0001307D
	adds r0, r0, r2
	b _08041D3C
	.align 2, 0
_08041D1C: .4byte 0x0001307D
_08041D20:
	ldr r0, [r5]
	ldr r1, _08041D28 @ =0x0001307E
	adds r0, r0, r1
	b _08041D3C
	.align 2, 0
_08041D28: .4byte 0x0001307E
_08041D2C:
	ldr r0, [r5]
	ldr r2, _08041D34 @ =0x0001307F
	adds r0, r0, r2
	b _08041D3C
	.align 2, 0
_08041D34: .4byte 0x0001307F
_08041D38:
	ldr r0, _08041D48 @ =0x080E33F0
	adds r0, r1, r0
_08041D3C:
	ldrb r0, [r0]
	adds r0, #1
	strb r0, [r6, #0xa]
_08041D42:
	movs r0, #1
	b _08041D4E
	.align 2, 0
_08041D48: .4byte 0x080E33F0
_08041D4C:
	movs r0, #0
_08041D4E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08041D54
sub_08041D54: @ 0x08041D54
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r6, _08041DAC @ =gEwramData
	ldr r0, [r6]
	ldr r1, _08041DB0 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r7, r0, #0
	adds r7, #0x70
	adds r4, r5, #0
	adds r4, #0x70
	adds r0, r5, #0
	adds r0, #0x73
	ldrb r0, [r0]
	lsls r0, r0, #3
	ldr r1, _08041DB4 @ =0x03001A58
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _08041DB8 @ =0x03001A50
	mov sb, r0
	adds r1, r5, #0
	mov r2, r8
	bl sub_080417A0
	cmp r0, #0
	bne _08041D90
	b _08041ED4
_08041D90:
	ldrb r0, [r7, #4]
	cmp r0, #0
	bne _08041E08
	ldrb r0, [r4]
	strb r0, [r7, #4]
	ldrb r1, [r4]
	cmp r1, #5
	beq _08041DD4
	cmp r1, #5
	bgt _08041DBC
	cmp r1, #3
	beq _08041DC6
	b _08041DF8
	.align 2, 0
_08041DAC: .4byte gEwramData
_08041DB0: .4byte 0x00013110
_08041DB4: .4byte 0x03001A58
_08041DB8: .4byte 0x03001A50
_08041DBC:
	cmp r1, #6
	beq _08041DE0
	cmp r1, #9
	beq _08041DEC
	b _08041DF8
_08041DC6:
	ldr r0, [r6]
	ldr r1, _08041DD0 @ =0x0001307C
	adds r0, r0, r1
	b _08041DFC
	.align 2, 0
_08041DD0: .4byte 0x0001307C
_08041DD4:
	ldr r0, [r6]
	ldr r1, _08041DDC @ =0x0001307D
	adds r0, r0, r1
	b _08041DFC
	.align 2, 0
_08041DDC: .4byte 0x0001307D
_08041DE0:
	ldr r0, [r6]
	ldr r1, _08041DE8 @ =0x0001307E
	adds r0, r0, r1
	b _08041DFC
	.align 2, 0
_08041DE8: .4byte 0x0001307E
_08041DEC:
	ldr r0, [r6]
	ldr r1, _08041DF4 @ =0x0001307F
	adds r0, r0, r1
	b _08041DFC
	.align 2, 0
_08041DF4: .4byte 0x0001307F
_08041DF8:
	ldr r0, _08041E04 @ =0x080E33F0
	adds r0, r1, r0
_08041DFC:
	ldrb r0, [r0]
	adds r0, #1
	strb r0, [r7, #8]
	b _08041ECA
	.align 2, 0
_08041E04: .4byte 0x080E33F0
_08041E08:
	ldrb r0, [r7, #5]
	cmp r0, #0
	bne _08041E6C
	ldrb r0, [r4]
	strb r0, [r7, #5]
	ldrb r1, [r4]
	cmp r1, #5
	beq _08041E38
	cmp r1, #5
	bgt _08041E22
	cmp r1, #3
	beq _08041E2C
	b _08041E5C
_08041E22:
	cmp r1, #6
	beq _08041E44
	cmp r1, #9
	beq _08041E50
	b _08041E5C
_08041E2C:
	ldr r0, [r6]
	ldr r1, _08041E34 @ =0x0001307C
	adds r0, r0, r1
	b _08041E60
	.align 2, 0
_08041E34: .4byte 0x0001307C
_08041E38:
	ldr r0, [r6]
	ldr r1, _08041E40 @ =0x0001307D
	adds r0, r0, r1
	b _08041E60
	.align 2, 0
_08041E40: .4byte 0x0001307D
_08041E44:
	ldr r0, [r6]
	ldr r1, _08041E4C @ =0x0001307E
	adds r0, r0, r1
	b _08041E60
	.align 2, 0
_08041E4C: .4byte 0x0001307E
_08041E50:
	ldr r0, [r6]
	ldr r1, _08041E58 @ =0x0001307F
	adds r0, r0, r1
	b _08041E60
	.align 2, 0
_08041E58: .4byte 0x0001307F
_08041E5C:
	ldr r0, _08041E68 @ =0x080E33F0
	adds r0, r1, r0
_08041E60:
	ldrb r0, [r0]
	adds r0, #1
	strb r0, [r7, #9]
	b _08041ECA
	.align 2, 0
_08041E68: .4byte 0x080E33F0
_08041E6C:
	ldrb r0, [r7, #6]
	cmp r0, #0
	bne _08041ECA
	ldrb r0, [r4]
	strb r0, [r7, #6]
	ldrb r1, [r4]
	cmp r1, #5
	beq _08041E9C
	cmp r1, #5
	bgt _08041E86
	cmp r1, #3
	beq _08041E90
	b _08041EC0
_08041E86:
	cmp r1, #6
	beq _08041EA8
	cmp r1, #9
	beq _08041EB4
	b _08041EC0
_08041E90:
	ldr r0, [r6]
	ldr r1, _08041E98 @ =0x0001307C
	adds r0, r0, r1
	b _08041EC4
	.align 2, 0
_08041E98: .4byte 0x0001307C
_08041E9C:
	ldr r0, [r6]
	ldr r1, _08041EA4 @ =0x0001307D
	adds r0, r0, r1
	b _08041EC4
	.align 2, 0
_08041EA4: .4byte 0x0001307D
_08041EA8:
	ldr r0, [r6]
	ldr r1, _08041EB0 @ =0x0001307E
	adds r0, r0, r1
	b _08041EC4
	.align 2, 0
_08041EB0: .4byte 0x0001307E
_08041EB4:
	ldr r0, [r6]
	ldr r1, _08041EBC @ =0x0001307F
	adds r0, r0, r1
	b _08041EC4
	.align 2, 0
_08041EBC: .4byte 0x0001307F
_08041EC0:
	ldr r0, _08041ED0 @ =0x080E33F0
	adds r0, r1, r0
_08041EC4:
	ldrb r0, [r0]
	adds r0, #1
	strb r0, [r7, #0xa]
_08041ECA:
	movs r0, #1
	b _08042022
	.align 2, 0
_08041ED0: .4byte 0x080E33F0
_08041ED4:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _08041EDC
	b _08042020
_08041EDC:
	mov r2, r8
	adds r2, #4
	mov r0, sb
	adds r1, r5, #0
	bl sub_080417A0
	cmp r0, #0
	bne _08041EEE
	b _08042020
_08041EEE:
	ldrb r0, [r7, #4]
	cmp r0, #0
	bne _08041F54
	ldrb r0, [r4]
	strb r0, [r7, #4]
	ldrb r1, [r4]
	cmp r1, #5
	beq _08041F20
	cmp r1, #5
	bgt _08041F08
	cmp r1, #3
	beq _08041F12
	b _08041F44
_08041F08:
	cmp r1, #6
	beq _08041F2C
	cmp r1, #9
	beq _08041F38
	b _08041F44
_08041F12:
	ldr r0, [r6]
	ldr r1, _08041F1C @ =0x0001307C
	adds r0, r0, r1
	b _08041F48
	.align 2, 0
_08041F1C: .4byte 0x0001307C
_08041F20:
	ldr r0, [r6]
	ldr r1, _08041F28 @ =0x0001307D
	adds r0, r0, r1
	b _08041F48
	.align 2, 0
_08041F28: .4byte 0x0001307D
_08041F2C:
	ldr r0, [r6]
	ldr r1, _08041F34 @ =0x0001307E
	adds r0, r0, r1
	b _08041F48
	.align 2, 0
_08041F34: .4byte 0x0001307E
_08041F38:
	ldr r0, [r6]
	ldr r1, _08041F40 @ =0x0001307F
	adds r0, r0, r1
	b _08041F48
	.align 2, 0
_08041F40: .4byte 0x0001307F
_08041F44:
	ldr r0, _08041F50 @ =0x080E33F0
	adds r0, r1, r0
_08041F48:
	ldrb r0, [r0]
	adds r0, #1
	strb r0, [r7, #8]
	b _08042016
	.align 2, 0
_08041F50: .4byte 0x080E33F0
_08041F54:
	ldrb r0, [r7, #5]
	cmp r0, #0
	bne _08041FB8
	ldrb r0, [r4]
	strb r0, [r7, #5]
	ldrb r1, [r4]
	cmp r1, #5
	beq _08041F84
	cmp r1, #5
	bgt _08041F6E
	cmp r1, #3
	beq _08041F78
	b _08041FA8
_08041F6E:
	cmp r1, #6
	beq _08041F90
	cmp r1, #9
	beq _08041F9C
	b _08041FA8
_08041F78:
	ldr r0, [r6]
	ldr r1, _08041F80 @ =0x0001307C
	adds r0, r0, r1
	b _08041FAC
	.align 2, 0
_08041F80: .4byte 0x0001307C
_08041F84:
	ldr r0, [r6]
	ldr r1, _08041F8C @ =0x0001307D
	adds r0, r0, r1
	b _08041FAC
	.align 2, 0
_08041F8C: .4byte 0x0001307D
_08041F90:
	ldr r0, [r6]
	ldr r1, _08041F98 @ =0x0001307E
	adds r0, r0, r1
	b _08041FAC
	.align 2, 0
_08041F98: .4byte 0x0001307E
_08041F9C:
	ldr r0, [r6]
	ldr r1, _08041FA4 @ =0x0001307F
	adds r0, r0, r1
	b _08041FAC
	.align 2, 0
_08041FA4: .4byte 0x0001307F
_08041FA8:
	ldr r0, _08041FB4 @ =0x080E33F0
	adds r0, r1, r0
_08041FAC:
	ldrb r0, [r0]
	adds r0, #1
	strb r0, [r7, #9]
	b _08042016
	.align 2, 0
_08041FB4: .4byte 0x080E33F0
_08041FB8:
	ldrb r0, [r7, #6]
	cmp r0, #0
	bne _08042016
	ldrb r0, [r4]
	strb r0, [r7, #6]
	ldrb r1, [r4]
	cmp r1, #5
	beq _08041FE8
	cmp r1, #5
	bgt _08041FD2
	cmp r1, #3
	beq _08041FDC
	b _0804200C
_08041FD2:
	cmp r1, #6
	beq _08041FF4
	cmp r1, #9
	beq _08042000
	b _0804200C
_08041FDC:
	ldr r0, [r6]
	ldr r1, _08041FE4 @ =0x0001307C
	adds r0, r0, r1
	b _08042010
	.align 2, 0
_08041FE4: .4byte 0x0001307C
_08041FE8:
	ldr r0, [r6]
	ldr r1, _08041FF0 @ =0x0001307D
	adds r0, r0, r1
	b _08042010
	.align 2, 0
_08041FF0: .4byte 0x0001307D
_08041FF4:
	ldr r0, [r6]
	ldr r1, _08041FFC @ =0x0001307E
	adds r0, r0, r1
	b _08042010
	.align 2, 0
_08041FFC: .4byte 0x0001307E
_08042000:
	ldr r0, [r6]
	ldr r1, _08042008 @ =0x0001307F
	adds r0, r0, r1
	b _08042010
	.align 2, 0
_08042008: .4byte 0x0001307F
_0804200C:
	ldr r0, _0804201C @ =0x080E33F0
	adds r0, r1, r0
_08042010:
	ldrb r0, [r0]
	adds r0, #1
	strb r0, [r7, #0xa]
_08042016:
	movs r0, #2
	b _08042022
	.align 2, 0
_0804201C: .4byte 0x080E33F0
_08042020:
	movs r0, #0
_08042022:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08042030
sub_08042030: @ 0x08042030
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, r2, #0
	adds r0, #0x70
	ldrb r1, [r0, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08042048
	movs r0, #0
	b _0804207C
_08042048:
	adds r2, #0x73
	ldrb r0, [r2]
	lsls r0, r0, #3
	ldr r1, _08042084 @ =0x03001A58
	adds r3, r0, r1
	ldrb r0, [r3]
	strb r0, [r4]
	ldrb r0, [r3, #1]
	strb r0, [r4, #1]
	ldrb r0, [r3, #2]
	strb r0, [r4, #2]
	ldrb r0, [r3, #3]
	strb r0, [r4, #3]
	ldrb r0, [r2]
	lsls r0, r0, #3
	adds r1, #4
	adds r3, r0, r1
	ldrb r0, [r3]
	strb r0, [r5]
	ldrb r0, [r3, #1]
	strb r0, [r5, #1]
	ldrb r0, [r3, #2]
	strb r0, [r5, #2]
	ldrb r0, [r3, #3]
	strb r0, [r5, #3]
	movs r0, #1
_0804207C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08042084: .4byte 0x03001A58

	thumb_func_start sub_08042088
sub_08042088: @ 0x08042088
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	mov r8, r1
	adds r7, r2, #0
	mov r5, r8
	adds r5, #0x70
	adds r6, r7, #0
	adds r6, #0x70
	movs r1, #0
	movs r0, #0
	strh r0, [r4]
	strh r0, [r4, #4]
	strh r0, [r4, #2]
	strb r1, [r4, #7]
	strb r1, [r4, #6]
	ldrb r1, [r5, #2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080420FA
	ldrb r1, [r6, #2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080420FA
	ldrb r0, [r6]
	ldrb r3, [r5, #4]
	cmp r3, r0
	beq _080420FA
	ldrb r2, [r5, #5]
	cmp r2, r0
	beq _080420FA
	ldrb r1, [r5, #6]
	cmp r1, r0
	beq _080420FA
	cmp r3, #0
	beq _080420DE
	cmp r2, #0
	beq _080420DE
	cmp r1, #0
	bne _080420FA
_080420DE:
	adds r0, r7, #0
	mov r1, r8
	bl sub_08041864
	adds r2, r0, #0
	cmp r2, #0
	beq _080420FA
	ldrh r0, [r4]
	movs r1, #1
	orrs r1, r0
	strh r1, [r4]
	ldrb r0, [r6]
	strh r0, [r4, #2]
	strb r2, [r4, #6]
_080420FA:
	ldrb r1, [r5, #2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0804214A
	ldrb r1, [r6, #2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0804214A
	ldrb r0, [r5]
	ldrb r3, [r6, #4]
	cmp r3, r0
	beq _0804214A
	ldrb r2, [r6, #5]
	cmp r2, r0
	beq _0804214A
	ldrb r1, [r6, #6]
	cmp r1, r0
	beq _0804214A
	cmp r3, #0
	beq _0804212E
	cmp r2, #0
	beq _0804212E
	cmp r1, #0
	bne _0804214A
_0804212E:
	mov r0, r8
	adds r1, r7, #0
	bl sub_08041864
	adds r2, r0, #0
	cmp r2, #0
	beq _0804214A
	ldrh r0, [r4]
	movs r1, #2
	orrs r1, r0
	strh r1, [r4]
	ldrb r0, [r5]
	strh r0, [r4, #4]
	strb r2, [r4, #7]
_0804214A:
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08042174
	ldr r3, [r5, #0x10]
	cmp r3, #0
	beq _08042164
	mov r0, r8
	adds r1, r7, #0
	adds r2, r4, #0
	bl _call_via_r3
_08042164:
	ldr r3, [r6, #0xc]
	cmp r3, #0
	beq _08042174
	adds r0, r7, #0
	mov r1, r8
	adds r2, r4, #0
	bl _call_via_r3
_08042174:
	ldrh r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804219E
	ldr r3, [r5, #0xc]
	cmp r3, #0
	beq _0804218E
	mov r0, r8
	adds r1, r7, #0
	adds r2, r4, #0
	bl _call_via_r3
_0804218E:
	ldr r3, [r6, #0x10]
	cmp r3, #0
	beq _0804219E
	adds r0, r7, #0
	mov r1, r8
	adds r2, r4, #0
	bl _call_via_r3
_0804219E:
	ldrh r0, [r4]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080421AC
sub_080421AC: @ 0x080421AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	mov sb, r1
	ldr r0, _08042428 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804242C @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x70
	str r0, [sp]
	mov r7, sb
	adds r7, #0x70
	movs r1, #0
	movs r0, #0
	strh r0, [r5]
	strh r0, [r5, #4]
	strh r0, [r5, #2]
	strb r1, [r5, #6]
	ldr r2, [sp]
	ldrb r1, [r2, #2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0804222C
	ldrb r1, [r7, #2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0804222C
	ldrb r0, [r7]
	ldrb r3, [r2, #4]
	cmp r3, r0
	beq _0804222C
	ldrb r2, [r2, #5]
	cmp r2, r0
	beq _0804222C
	ldr r4, [sp]
	ldrb r1, [r4, #6]
	cmp r1, r0
	beq _0804222C
	cmp r3, #0
	beq _08042212
	cmp r2, #0
	beq _08042212
	cmp r1, #0
	bne _0804222C
_08042212:
	mov r0, sb
	bl sub_08041D54
	adds r2, r0, #0
	cmp r2, #0
	beq _0804222C
	ldrh r0, [r5]
	movs r1, #1
	orrs r1, r0
	strh r1, [r5]
	ldrb r0, [r7]
	strh r0, [r5, #2]
	strb r2, [r5, #6]
_0804222C:
	ldr r0, [sp]
	ldrb r1, [r0, #2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080422BC
	ldrb r1, [r7, #2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080422BC
	ldr r1, [sp]
	ldrb r0, [r1]
	cmp r0, #1
	bls _080422BC
	ldrb r3, [r7, #4]
	cmp r3, r0
	beq _080422BC
	ldrb r2, [r7, #5]
	cmp r2, r0
	beq _080422BC
	ldrb r1, [r7, #6]
	cmp r1, r0
	beq _080422BC
	cmp r3, #0
	beq _08042268
	cmp r2, #0
	beq _08042268
	cmp r1, #0
	bne _080422BC
_08042268:
	mov r0, sb
	bl sub_08041BDC
	cmp r0, #0
	beq _080422BC
	ldrh r1, [r5]
	movs r0, #4
	orrs r0, r1
	strh r0, [r5]
	ldr r2, [sp]
	ldrb r0, [r2]
	strh r0, [r5, #4]
	ldr r0, _08042430 @ =0x03001A48
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r5, #8]
	str r1, [r5, #0xc]
	ldr r3, [r7, #0x10]
	cmp r3, #0
	beq _080422A2
	ldr r0, _08042428 @ =gEwramData
	ldr r0, [r0]
	ldr r4, _0804242C @ =0x00013110
	adds r0, r0, r4
	ldr r1, [r0]
	mov r0, sb
	adds r2, r5, #0
	bl _call_via_r3
_080422A2:
	ldr r0, [sp]
	ldr r3, [r0, #0xc]
	cmp r3, #0
	beq _080422BC
	ldr r0, _08042428 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804242C @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	mov r1, sb
	adds r2, r5, #0
	bl _call_via_r3
_080422BC:
	ldrh r1, [r5]
	movs r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080422CA
	b _0804244E
_080422CA:
	ldrb r1, [r7, #2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0804236E
	ldr r0, _08042428 @ =gEwramData
	ldr r0, [r0]
	ldr r4, _08042434 @ =0x0001311C
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _0804236E
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x70
	adds r0, #0x73
	ldrb r0, [r0]
	lsls r0, r0, #3
	ldr r1, _08042438 @ =0x03001A58
	adds r0, r0, r1
	mov r8, r0
	ldrb r1, [r6, #2]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0804236E
	ldrb r0, [r6]
	ldrb r3, [r7, #4]
	cmp r3, r0
	beq _0804236E
	ldrb r2, [r7, #5]
	cmp r2, r0
	beq _0804236E
	ldrb r1, [r7, #6]
	cmp r1, r0
	beq _0804236E
	cmp r3, #0
	beq _0804231E
	cmp r2, #0
	beq _0804231E
	cmp r1, #0
	bne _0804236E
_0804231E:
	adds r0, r4, #0
	mov r1, sb
	bl sub_08041864
	cmp r0, #0
	beq _0804236E
	ldrh r1, [r5]
	movs r0, #2
	orrs r0, r1
	strh r0, [r5]
	ldrb r0, [r6]
	strh r0, [r5, #4]
	adds r0, r4, #0
	mov r1, r8
	bl sub_080415A8
	ldr r0, _08042428 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804243C @ =0x00013074
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r5, #8]
	str r1, [r5, #0xc]
	ldr r3, [r6, #0xc]
	cmp r3, #0
	beq _0804235E
	adds r0, r4, #0
	mov r1, sb
	adds r2, r5, #0
	bl _call_via_r3
_0804235E:
	ldr r3, [r7, #0x10]
	cmp r3, #0
	beq _0804236E
	mov r0, sb
	adds r1, r4, #0
	adds r2, r5, #0
	bl _call_via_r3
_0804236E:
	ldrh r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0804244E
	ldrb r1, [r7, #2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0804244E
	movs r2, #0
	mov r8, r2
_08042386:
	ldr r0, _08042428 @ =gEwramData
	ldr r0, [r0]
	mov r4, r8
	lsls r1, r4, #2
	ldr r2, _08042440 @ =0x00013124
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r4, [r0]
	cmp r4, #0
	beq _08042444
	adds r6, r4, #0
	adds r6, #0x70
	adds r0, r4, #0
	adds r0, #0x73
	ldrb r0, [r0]
	lsls r0, r0, #3
	ldr r1, _08042438 @ =0x03001A58
	adds r0, r0, r1
	mov sl, r0
	ldrb r1, [r6, #2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08042444
	ldrb r0, [r6]
	ldrb r3, [r7, #4]
	cmp r3, r0
	beq _08042444
	ldrb r2, [r7, #5]
	cmp r2, r0
	beq _08042444
	ldrb r1, [r7, #6]
	cmp r1, r0
	beq _08042444
	cmp r3, #0
	beq _080423D6
	cmp r2, #0
	beq _080423D6
	cmp r1, #0
	bne _08042444
_080423D6:
	adds r0, r4, #0
	mov r1, sb
	bl sub_08041864
	cmp r0, #0
	beq _08042444
	ldrh r1, [r5]
	movs r0, #8
	orrs r0, r1
	strh r0, [r5]
	ldrb r0, [r6]
	strh r0, [r5, #4]
	adds r0, r4, #0
	mov r1, sl
	bl sub_080415A8
	ldr r0, _08042428 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804243C @ =0x00013074
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r5, #8]
	str r1, [r5, #0xc]
	ldr r3, [r6, #0xc]
	cmp r3, #0
	beq _08042416
	adds r0, r4, #0
	mov r1, sb
	adds r2, r5, #0
	bl _call_via_r3
_08042416:
	ldr r3, [r7, #0x10]
	cmp r3, #0
	beq _0804244E
	mov r0, sb
	adds r1, r4, #0
	adds r2, r5, #0
	bl _call_via_r3
	b _0804244E
	.align 2, 0
_08042428: .4byte gEwramData
_0804242C: .4byte 0x00013110
_08042430: .4byte 0x03001A48
_08042434: .4byte 0x0001311C
_08042438: .4byte 0x03001A58
_0804243C: .4byte 0x00013074
_08042440: .4byte 0x00013124
_08042444:
	movs r2, #1
	add r8, r2
	mov r4, r8
	cmp r4, #7
	ble _08042386
_0804244E:
	ldrh r1, [r5]
	movs r0, #0xa
	ands r0, r1
	cmp r0, #0
	bne _0804252E
	ldrb r1, [r7, #2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0804252E
	movs r0, #0
	mov r8, r0
_08042466:
	ldr r0, _08042514 @ =gEwramData
	ldr r0, [r0]
	mov r2, r8
	lsls r1, r2, #2
	ldr r4, _08042518 @ =0x00013144
	adds r0, r0, r4
	adds r0, r0, r1
	ldr r4, [r0]
	cmp r4, #0
	beq _08042524
	adds r6, r4, #0
	adds r6, #0x70
	adds r0, r4, #0
	adds r0, #0x73
	ldrb r0, [r0]
	lsls r0, r0, #3
	ldr r1, _0804251C @ =0x03001A58
	adds r0, r0, r1
	mov sl, r0
	ldrb r0, [r6]
	cmp r0, #7
	bne _08042498
	ldrb r0, [r7]
	cmp r0, #0xa
	bne _08042524
_08042498:
	ldrb r1, [r6, #2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08042524
	ldrb r0, [r6]
	ldrb r3, [r7, #4]
	cmp r3, r0
	beq _08042524
	ldrb r2, [r7, #5]
	cmp r2, r0
	beq _08042524
	ldrb r1, [r7, #6]
	cmp r1, r0
	beq _08042524
	cmp r3, #0
	beq _080424C2
	cmp r2, #0
	beq _080424C2
	cmp r1, #0
	bne _08042524
_080424C2:
	adds r0, r4, #0
	mov r1, sb
	bl sub_08041864
	cmp r0, #0
	beq _08042524
	ldrh r1, [r5]
	movs r0, #0x10
	orrs r0, r1
	strh r0, [r5]
	ldrb r0, [r6]
	strh r0, [r5, #4]
	adds r0, r4, #0
	mov r1, sl
	bl sub_080415A8
	ldr r0, _08042514 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08042520 @ =0x00013074
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r5, #8]
	str r1, [r5, #0xc]
	ldr r3, [r6, #0xc]
	cmp r3, #0
	beq _08042502
	adds r0, r4, #0
	mov r1, sb
	adds r2, r5, #0
	bl _call_via_r3
_08042502:
	ldr r3, [r7, #0x10]
	cmp r3, #0
	beq _0804252E
	mov r0, sb
	adds r1, r4, #0
	adds r2, r5, #0
	bl _call_via_r3
	b _0804252E
	.align 2, 0
_08042514: .4byte gEwramData
_08042518: .4byte 0x00013144
_0804251C: .4byte 0x03001A58
_08042520: .4byte 0x00013074
_08042524:
	movs r2, #1
	add r8, r2
	mov r4, r8
	cmp r4, #7
	ble _08042466
_0804252E:
	ldrh r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804256A
	ldr r0, [sp]
	ldr r3, [r0, #0x10]
	cmp r3, #0
	beq _08042552
	ldr r0, _0804257C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08042580 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	mov r1, sb
	adds r2, r5, #0
	bl _call_via_r3
_08042552:
	ldr r3, [r7, #0xc]
	cmp r3, #0
	beq _0804256A
	ldr r0, _0804257C @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08042580 @ =0x00013110
	adds r0, r0, r2
	ldr r1, [r0]
	mov r0, sb
	adds r2, r5, #0
	bl _call_via_r3
_0804256A:
	ldrh r0, [r5]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804257C: .4byte gEwramData
_08042580: .4byte 0x00013110

	thumb_func_start sub_08042584
sub_08042584: @ 0x08042584
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080425CC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080425D0 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	mov ip, r0
	adds r0, #0x73
	ldrb r1, [r0]
	lsls r1, r1, #3
	ldr r0, _080425D4 @ =0x03001A58
	adds r4, r1, r0
	adds r0, #4
	adds r5, r1, r0
	mov r0, ip
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080425DC
	ldr r2, _080425D8 @ =0x03001A48
	mov r3, ip
	adds r3, #0x42
	movs r0, #0
	ldrsb r0, [r4, r0]
	ldrh r1, [r3]
	adds r0, r0, r1
	strh r0, [r2]
	ldrb r1, [r4, #2]
	adds r0, r0, r1
	strh r0, [r2, #4]
	b _080425F2
	.align 2, 0
_080425CC: .4byte gEwramData
_080425D0: .4byte 0x00013110
_080425D4: .4byte 0x03001A58
_080425D8: .4byte 0x03001A48
_080425DC:
	ldr r2, _08042620 @ =0x03001A48
	mov r3, ip
	adds r3, #0x42
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldrh r0, [r3]
	subs r0, r0, r1
	strh r0, [r2, #4]
	ldrb r1, [r4, #2]
	subs r0, r0, r1
	strh r0, [r2]
_080425F2:
	adds r7, r2, #0
	adds r6, r3, #0
	mov r2, ip
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	mov r8, r2
	cmp r0, #0
	bne _08042624
	mov r0, ip
	adds r0, #0x46
	movs r1, #1
	ldrsb r1, [r4, r1]
	ldrh r2, [r0]
	adds r1, r1, r2
	strh r1, [r7, #2]
	ldrb r2, [r4, #3]
	adds r1, r1, r2
	strh r1, [r7, #6]
	adds r3, r0, #0
	b _0804263A
	.align 2, 0
_08042620: .4byte 0x03001A48
_08042624:
	mov r2, ip
	adds r2, #0x46
	movs r1, #1
	ldrsb r1, [r4, r1]
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r7, #6]
	ldrb r1, [r4, #3]
	subs r0, r0, r1
	strh r0, [r7, #2]
	adds r3, r2, #0
_0804263A:
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08042660
	ldr r0, _0804265C @ =0x03001A50
	movs r1, #0
	ldrsb r1, [r5, r1]
	ldrh r6, [r6]
	adds r1, r1, r6
	strh r1, [r0]
	ldrb r2, [r5, #2]
	adds r1, r1, r2
	strh r1, [r0, #4]
	adds r2, r0, #0
	b _08042672
	.align 2, 0
_0804265C: .4byte 0x03001A50
_08042660:
	ldr r2, _08042690 @ =0x03001A50
	movs r1, #0
	ldrsb r1, [r5, r1]
	ldrh r0, [r6]
	subs r0, r0, r1
	strh r0, [r2, #4]
	ldrb r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r2]
_08042672:
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08042694
	movs r0, #1
	ldrsb r0, [r5, r0]
	ldrh r3, [r3]
	adds r0, r0, r3
	strh r0, [r2, #2]
	ldrb r1, [r5, #3]
	adds r0, r0, r1
	strh r0, [r2, #6]
	b _080426A4
	.align 2, 0
_08042690: .4byte 0x03001A50
_08042694:
	movs r0, #1
	ldrsb r0, [r5, r0]
	ldrh r1, [r3]
	subs r1, r1, r0
	strh r1, [r2, #6]
	ldrb r0, [r5, #3]
	subs r1, r1, r0
	strh r1, [r2, #2]
_080426A4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080426B0
sub_080426B0: @ 0x080426B0
	push {lr}
	adds r2, r0, #0
	adds r2, #0x70
	ldrb r1, [r2, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080426FC
	ldrb r0, [r2, #8]
	cmp r0, #0
	beq _080426D4
	subs r0, #1
	strb r0, [r2, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080426D4
	strb r0, [r2, #4]
_080426D4:
	ldrb r0, [r2, #9]
	cmp r0, #0
	beq _080426E8
	subs r0, #1
	strb r0, [r2, #9]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080426E8
	strb r0, [r2, #5]
_080426E8:
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	beq _080426FC
	subs r0, #1
	strb r0, [r2, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080426FC
	strb r0, [r2, #6]
_080426FC:
	pop {r0}
	bx r0

	thumb_func_start sub_08042700
sub_08042700: @ 0x08042700
	push {r4, lr}
	adds r2, r0, #0
	adds r2, #0x70
	ldrb r0, [r2, #4]
	cmp r0, r1
	bne _08042712
	movs r0, #0
	strb r0, [r2, #8]
	b _0804274C
_08042712:
	ldrb r3, [r2, #5]
	cmp r3, r1
	bne _0804271E
	movs r0, #0
	strb r0, [r2, #9]
	b _0804274C
_0804271E:
	ldrb r4, [r2, #6]
	cmp r4, r1
	bne _08042728
	movs r0, #0
	b _0804274A
_08042728:
	cmp r0, #0
	bne _08042732
	strb r1, [r2, #4]
	strb r0, [r2, #8]
	b _0804274C
_08042732:
	adds r0, r3, #0
	cmp r0, #0
	bne _0804273E
	strb r1, [r2, #5]
	strb r0, [r2, #9]
	b _0804274C
_0804273E:
	adds r0, r4, #0
	cmp r0, #0
	beq _08042748
	movs r0, #0
	b _0804274E
_08042748:
	strb r1, [r2, #6]
_0804274A:
	strb r0, [r2, #0xa]
_0804274C:
	movs r0, #1
_0804274E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08042754
sub_08042754: @ 0x08042754
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r1, _08042770 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08042774 @ =0x03001A58
	str r0, [r1, #4]
	ldr r0, _08042778 @ =0x850001A0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	bx lr
	.align 2, 0
_08042770: .4byte 0x040000D4
_08042774: .4byte 0x03001A58
_08042778: .4byte 0x850001A0

	thumb_func_start sub_0804277C
sub_0804277C: @ 0x0804277C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r6, r2, #0
	mov r8, r3
	adds r4, r0, #0
	adds r4, #0x70
	movs r5, #0
	strb r1, [r4]
	movs r1, #1
	strb r1, [r4, #1]
	strb r1, [r4, #2]
	bl EntityGetSlot
	strb r0, [r4, #3]
	strb r5, [r4, #6]
	strb r5, [r4, #5]
	strb r5, [r4, #4]
	strb r5, [r4, #0xa]
	strb r5, [r4, #9]
	strb r5, [r4, #8]
	str r6, [r4, #0xc]
	mov r0, r8
	str r0, [r4, #0x10]
	movs r0, #1
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080427B8
sub_080427B8: @ 0x080427B8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r6, r2, #0
	mov r8, r3
	adds r4, r0, #0
	adds r4, #0x70
	movs r5, #0
	strb r1, [r4]
	strb r5, [r4, #1]
	movs r1, #1
	strb r1, [r4, #2]
	bl EntityGetSlot
	strb r0, [r4, #3]
	strb r5, [r4, #6]
	strb r5, [r4, #5]
	strb r5, [r4, #4]
	strb r5, [r4, #0xa]
	strb r5, [r4, #9]
	strb r5, [r4, #8]
	str r6, [r4, #0xc]
	mov r0, r8
	str r0, [r4, #0x10]
	movs r0, #1
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080427F4
sub_080427F4: @ 0x080427F4
	push {r4, r5, r6, r7, lr}
	adds r6, r3, #0
	ldr r7, [sp, #0x14]
	adds r4, r0, #0
	adds r4, #0x70
	movs r5, #0
	strb r1, [r4]
	strb r5, [r4, #1]
	movs r1, #1
	strb r1, [r4, #2]
	bl EntityGetSlot
	strb r0, [r4, #3]
	strb r5, [r4, #6]
	strb r5, [r4, #5]
	strb r5, [r4, #4]
	strb r5, [r4, #0xa]
	strb r5, [r4, #9]
	strb r5, [r4, #8]
	str r6, [r4, #0xc]
	str r7, [r4, #0x10]
	movs r0, #1
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08042828
sub_08042828: @ 0x08042828
	adds r0, #0x70
	movs r1, #0
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	movs r2, #0xff
	strb r2, [r0, #3]
	strb r1, [r0, #6]
	strb r1, [r0, #5]
	strb r1, [r0, #4]
	strb r1, [r0, #0xa]
	strb r1, [r0, #9]
	strb r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	bx lr
	.align 2, 0

	thumb_func_start sub_08042848
sub_08042848: @ 0x08042848
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	adds r0, #0x70
	ldrb r1, [r0, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0804285E
	movs r0, #0
	b _0804287C
_0804285E:
	adds r0, r3, #0
	adds r0, #0x73
	ldrb r0, [r0]
	lsls r0, r0, #3
	ldr r1, _08042880 @ =0x03001A58
	adds r0, r0, r1
	ldrb r1, [r2]
	strb r1, [r0]
	ldrb r1, [r2, #1]
	strb r1, [r0, #1]
	ldrb r1, [r2, #2]
	strb r1, [r0, #2]
	ldrb r1, [r2, #3]
	strb r1, [r0, #3]
	movs r0, #1
_0804287C:
	pop {r1}
	bx r1
	.align 2, 0
_08042880: .4byte 0x03001A58

	thumb_func_start sub_08042884
sub_08042884: @ 0x08042884
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	adds r0, #0x70
	ldrb r1, [r0, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0804289A
	movs r0, #0
	b _080428AA
_0804289A:
	adds r0, r2, #0
	adds r0, #0x73
	ldrb r0, [r0]
	lsls r0, r0, #3
	ldr r1, _080428B0 @ =0x03001A58
	adds r0, r0, r1
	str r3, [r0]
	movs r0, #1
_080428AA:
	pop {r1}
	bx r1
	.align 2, 0
_080428B0: .4byte 0x03001A58

	thumb_func_start sub_080428B4
sub_080428B4: @ 0x080428B4
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	adds r0, #0x70
	ldrb r1, [r0, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080428CA
	movs r0, #0
	b _080428E8
_080428CA:
	adds r0, r3, #0
	adds r0, #0x73
	ldrb r0, [r0]
	lsls r0, r0, #3
	ldr r1, _080428EC @ =0x03001A5C
	adds r0, r0, r1
	ldrb r1, [r2]
	strb r1, [r0]
	ldrb r1, [r2, #1]
	strb r1, [r0, #1]
	ldrb r1, [r2, #2]
	strb r1, [r0, #2]
	ldrb r1, [r2, #3]
	strb r1, [r0, #3]
	movs r0, #1
_080428E8:
	pop {r1}
	bx r1
	.align 2, 0
_080428EC: .4byte 0x03001A5C

	thumb_func_start sub_080428F0
sub_080428F0: @ 0x080428F0
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	adds r0, #0x70
	ldrb r1, [r0, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08042906
	movs r0, #0
	b _08042916
_08042906:
	adds r0, r2, #0
	adds r0, #0x73
	ldrb r0, [r0]
	lsls r0, r0, #3
	ldr r1, _0804291C @ =0x03001A5C
	adds r0, r0, r1
	str r3, [r0]
	movs r0, #1
_08042916:
	pop {r1}
	bx r1
	.align 2, 0
_0804291C: .4byte 0x03001A5C

	thumb_func_start sub_08042920
sub_08042920: @ 0x08042920
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	mov sb, r1
	adds r7, r2, #0
	adds r0, r7, #0
	adds r0, #0x70
	ldrb r1, [r0, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08042940
	movs r0, #0
	b _0804297E
_08042940:
	adds r0, r7, #0
	adds r0, #0x73
	ldrb r1, [r0]
	lsls r1, r1, #3
	ldr r0, _0804298C @ =0x03001A58
	adds r1, r1, r0
	adds r6, r1, #4
	adds r0, r7, #0
	bl sub_080415A8
	ldr r5, _08042990 @ =gEwramData
	ldr r0, [r5]
	ldr r4, _08042994 @ =0x00013074
	adds r0, r0, r4
	ldr r1, [r0, #4]
	ldr r0, [r0]
	mov r2, r8
	str r0, [r2]
	str r1, [r2, #4]
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_080415A8
	ldr r0, [r5]
	adds r0, r0, r4
	ldr r1, [r0, #4]
	ldr r0, [r0]
	mov r2, sb
	str r0, [r2]
	str r1, [r2, #4]
	movs r0, #1
_0804297E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804298C: .4byte 0x03001A58
_08042990: .4byte gEwramData
_08042994: .4byte 0x00013074

	thumb_func_start sub_08042998
sub_08042998: @ 0x08042998
	push {lr}
	adds r2, r0, #0
	adds r2, #0x70
	ldrb r0, [r2, #4]
	cmp r0, r1
	bne _080429AC
	movs r0, #0
	strb r0, [r2, #4]
	strb r0, [r2, #8]
	b _080429CA
_080429AC:
	ldrb r0, [r2, #5]
	cmp r0, r1
	bne _080429BA
	movs r0, #0
	strb r0, [r2, #5]
	strb r0, [r2, #9]
	b _080429CA
_080429BA:
	ldrb r0, [r2, #6]
	cmp r0, r1
	beq _080429C4
	movs r0, #0
	b _080429CC
_080429C4:
	movs r0, #0
	strb r0, [r2, #6]
	strb r0, [r2, #0xa]
_080429CA:
	movs r0, #1
_080429CC:
	pop {r1}
	bx r1

	thumb_func_start sub_080429D0
sub_080429D0: @ 0x080429D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	mov ip, r1
	adds r0, r2, #0
	movs r3, #0
	adds r4, r0, #0
	adds r4, #0x74
	movs r1, #0x74
	add r1, ip
	mov sb, r1
	adds r6, r0, #0
	adds r6, #0x74
	movs r1, #0x78
	add r1, ip
	mov sl, r1
	movs r1, #0x78
	adds r1, r1, r0
	mov r8, r1
	mov r1, ip
	adds r1, #0x74
	adds r2, #0x78
_08042A02:
	adds r0, r4, r3
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, r3
	ldrb r0, [r0]
	strb r0, [r1, #4]
	adds r1, #1
	adds r3, #1
	cmp r3, #2
	ble _08042A02
	adds r0, r5, #0
	mov r1, ip
	bl sub_080421AC
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0
	beq _08042A44
	movs r3, #0
	mov r5, sb
	mov r4, r8
	mov r2, sl
_08042A2E:
	adds r1, r6, r3
	adds r0, r5, r3
	ldrb r0, [r0]
	strb r0, [r1]
	adds r1, r4, r3
	adds r0, r2, r3
	ldrb r0, [r0]
	strb r0, [r1]
	adds r3, #1
	cmp r3, #2
	ble _08042A2E
_08042A44:
	adds r0, r7, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08042A54
sub_08042A54: @ 0x08042A54
	ldr r2, _08042A64 @ =gEwramData
	ldr r2, [r2]
	ldr r3, _08042A68 @ =0x0001307C
	adds r2, r2, r3
	adds r2, r2, r0
	strb r1, [r2]
	bx lr
	.align 2, 0
_08042A64: .4byte gEwramData
_08042A68: .4byte 0x0001307C

	thumb_func_start sub_08042A6C
sub_08042A6C: @ 0x08042A6C
	adds r0, #0x73
	ldrb r0, [r0]
	lsls r0, r0, #3
	ldr r1, _08042A78 @ =0x03001A58
	adds r0, r0, r1
	bx lr
	.align 2, 0
_08042A78: .4byte 0x03001A58

	thumb_func_start sub_08042A7C
sub_08042A7C: @ 0x08042A7C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	lsls r4, r1, #0x18
	lsrs r4, r4, #0x18
	movs r0, #0
	mov r8, r0
	ldr r2, _08042AB4 @ =sub_08042D4C
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	strb r4, [r5, #0xa]
	ldr r0, _08042AB8 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _08042AC0
	cmp r0, #3
	beq _08042AC8
	ldr r0, _08042ABC @ =0x081C15F4
	b _08042ACA
	.align 2, 0
_08042AB4: .4byte sub_08042D4C
_08042AB8: .4byte gEwramData
_08042ABC: .4byte 0x081C15F4
_08042AC0:
	ldr r0, _08042AC4 @ =0x0826F8A4
	b _08042ACA
	.align 2, 0
_08042AC4: .4byte 0x0826F8A4
_08042AC8:
	ldr r0, _08042AF8 @ =0x082718A8
_08042ACA:
	movs r1, #0
	bl sub_0803B800
	adds r4, r0, #0
	ldr r6, _08042AFC @ =gEwramData
	ldr r0, [r6]
	ldr r1, _08042B00 @ =0x0001320C
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r5, #0x40]
	bl sub_0801CFB0
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _08042B30
	cmp r0, #1
	bgt _08042B04
	cmp r0, #0
	beq _08042B0A
	b _08042B38
	.align 2, 0
_08042AF8: .4byte 0x082718A8
_08042AFC: .4byte gEwramData
_08042B00: .4byte 0x0001320C
_08042B04:
	cmp r0, #2
	beq _08042B34
	b _08042B38
_08042B0A:
	movs r3, #0
	ldr r0, [r6]
	ldr r1, _08042B28 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x44]
	ldr r1, _08042B2C @ =0xFFE60000
	adds r0, r0, r1
	str r0, [r5, #0x44]
	cmp r7, #0
	bne _08042B3A
	movs r0, #1
	mov r8, r0
	movs r3, #6
	b _08042B3A
	.align 2, 0
_08042B28: .4byte 0x00013110
_08042B2C: .4byte 0xFFE60000
_08042B30:
	movs r3, #7
	b _08042B3A
_08042B34:
	movs r3, #8
	b _08042B3A
_08042B38:
	movs r3, #9
_08042B3A:
	ldr r1, _08042B58 @ =0x0820ED60
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_0803B924
	mov r1, r8
	cmp r1, #0
	bne _08042B60
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08042C78
	ldr r0, _08042B5C @ =sub_0804301C
	str r0, [r5, #4]
	b _08042B6C
	.align 2, 0
_08042B58: .4byte 0x0820ED60
_08042B5C: .4byte sub_0804301C
_08042B60:
	ldr r0, _08042B88 @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0x58
	strb r0, [r1]
_08042B6C:
	adds r1, r5, #0
	adds r1, #0x5c
	movs r2, #2
	movs r0, #2
	strb r0, [r1]
	subs r1, #3
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042B88: .4byte sub_0803B9D0

	thumb_func_start sub_08042B8C
sub_08042B8C: @ 0x08042B8C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r1, #0
	lsls r4, r2, #0x18
	lsrs r4, r4, #0x18
	movs r0, #0
	mov r8, r0
	ldr r2, _08042BC4 @ =sub_08042DE8
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	strb r4, [r5, #0xa]
	ldr r0, _08042BC8 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _08042BD0
	cmp r0, #3
	beq _08042BD8
	ldr r0, _08042BCC @ =0x081C15F4
	b _08042BDA
	.align 2, 0
_08042BC4: .4byte sub_08042DE8
_08042BC8: .4byte gEwramData
_08042BCC: .4byte 0x081C15F4
_08042BD0:
	ldr r0, _08042BD4 @ =0x0826F8A4
	b _08042BDA
	.align 2, 0
_08042BD4: .4byte 0x0826F8A4
_08042BD8:
	ldr r0, _08042BFC @ =0x082718A8
_08042BDA:
	movs r1, #0
	bl sub_0803B800
	adds r2, r0, #0
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	ldrb r1, [r5, #0xa]
	cmp r1, #1
	beq _08042C12
	cmp r1, #1
	bgt _08042C00
	cmp r1, #0
	beq _08042C06
	b _08042C24
	.align 2, 0
_08042BFC: .4byte 0x082718A8
_08042C00:
	cmp r1, #2
	beq _08042C16
	b _08042C24
_08042C06:
	movs r3, #6
	cmp r7, #0
	bne _08042C26
	movs r0, #1
	mov r8, r0
	b _08042C26
_08042C12:
	movs r3, #7
	b _08042C18
_08042C16:
	movs r3, #9
_08042C18:
	ldr r1, _08042C20 @ =0xFFF80000
	adds r0, r0, r1
	str r0, [r5, #0x44]
	b _08042C26
	.align 2, 0
_08042C20: .4byte 0xFFF80000
_08042C24:
	movs r3, #9
_08042C26:
	ldr r1, _08042C44 @ =0x0820ED60
	adds r0, r5, #0
	bl sub_0803B924
	mov r0, r8
	cmp r0, #0
	bne _08042C4C
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08042C78
	ldr r0, _08042C48 @ =sub_0804301C
	str r0, [r5, #4]
	b _08042C58
	.align 2, 0
_08042C44: .4byte 0x0820ED60
_08042C48: .4byte sub_0804301C
_08042C4C:
	ldr r0, _08042C74 @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0x58
	strb r0, [r1]
_08042C58:
	adds r1, r5, #0
	adds r1, #0x5c
	movs r2, #2
	movs r0, #2
	strb r0, [r1]
	subs r1, #3
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042C74: .4byte sub_0803B9D0

	thumb_func_start sub_08042C78
sub_08042C78: @ 0x08042C78
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r3, r0, #0
	adds r4, r1, #0
	movs r6, #0
	ldr r7, _08042CB8 @ =0x3B9ACA00
	cmp r4, #0
	bne _08042CBC
	movs r2, #0
	movs r6, #3
	adds r4, r3, #0
	adds r4, #0x10
	movs r5, #0xc
_08042C96:
	adds r0, r2, #0
	ands r0, r6
	lsrs r1, r2, #2
	adds r1, #2
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r4, r0
	strb r5, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xa
	bls _08042C96
	movs r0, #0
	strb r0, [r3, #0x19]
	b _08042D3E
	.align 2, 0
_08042CB8: .4byte 0x3B9ACA00
_08042CBC:
	cmp r4, #0
	bge _08042CC8
	movs r0, #0xa
	strb r0, [r3, #0x18]
	rsbs r4, r4, #0
	b _08042CD6
_08042CC8:
	ldrb r0, [r3, #0xa]
	cmp r0, #1
	bne _08042CD2
	movs r0, #0xb
	b _08042CD4
_08042CD2:
	movs r0, #0xc
_08042CD4:
	strb r0, [r3, #0x18]
_08042CD6:
	movs r2, #1
	movs r0, #0x10
	adds r0, r0, r3
	mov sb, r0
	adds r3, #0x24
	mov r8, r3
_08042CE2:
	movs r1, #3
	ands r1, r2
	lsrs r0, r2, #2
	adds r0, #2
	lsls r0, r0, #2
	adds r1, r1, r0
	mov r0, sb
	adds r3, r0, r1
	movs r0, #0xc
	strb r0, [r3]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0xa
	subs r0, r0, r1
	cmp r0, r2
	bne _08042D04
	movs r6, #1
_08042D04:
	movs r0, #0
	adds r5, r2, #1
	adds r1, r3, #0
_08042D0A:
	cmp r4, r7
	bge _08042D20
	cmp r0, #0
	beq _08042D18
	cmp r6, #0
	bne _08042D1C
	movs r6, #1
_08042D18:
	cmp r6, #0
	beq _08042D2C
_08042D1C:
	strb r0, [r1]
	b _08042D2C
_08042D20:
	subs r4, r4, r7
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls _08042D0A
_08042D2C:
	adds r0, r7, #0
	movs r1, #0xa
	bl __divsi3
	adds r7, r0, #0
	lsls r0, r5, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xa
	bls _08042CE2
_08042D3E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08042D4C
sub_08042D4C: @ 0x08042D4C
	push {r4, r5, lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0xa]
	cmp r0, #1
	beq _08042DB0
	cmp r0, #1
	bgt _08042D60
	cmp r0, #0
	beq _08042D66
	b _08042DC4
_08042D60:
	cmp r0, #2
	beq _08042DBC
	b _08042DC4
_08042D66:
	ldrb r0, [r3, #0xd]
	movs r1, #0x28
	subs r1, r1, r0
	asrs r1, r1, #4
	lsls r4, r1, #0x10
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08042D7A
	rsbs r4, r4, #0
_08042D7A:
	ldr r2, [r3, #0x4c]
	ldr r1, _08042DA0 @ =0xFFFFC000
	adds r0, r2, r1
	str r0, [r3, #0x4c]
	ldr r0, _08042DA4 @ =gEwramData
	ldr r1, [r0]
	ldr r5, _08042DA8 @ =0x00013110
	adds r1, r1, r5
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	ldr r5, _08042DAC @ =0xFFE5C000
	adds r2, r2, r5
	adds r0, r0, r2
	adds r0, r0, r4
	str r0, [r3, #0x44]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	str r0, [r3, #0x40]
	b _08042DC4
	.align 2, 0
_08042DA0: .4byte 0xFFFFC000
_08042DA4: .4byte gEwramData
_08042DA8: .4byte 0x00013110
_08042DAC: .4byte 0xFFE5C000
_08042DB0:
	ldr r0, [r3, #0x44]
	ldr r1, _08042DB8 @ =0xFFFF8000
	adds r0, r0, r1
	b _08042DC2
	.align 2, 0
_08042DB8: .4byte 0xFFFF8000
_08042DBC:
	ldr r0, [r3, #0x44]
	ldr r5, _08042DE4 @ =0xFFFF8000
	adds r0, r0, r5
_08042DC2:
	str r0, [r3, #0x44]
_08042DC4:
	ldrb r0, [r3, #0xd]
	adds r0, #1
	strb r0, [r3, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x28
	bne _08042DDE
	adds r0, r3, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_08042DDE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08042DE4: .4byte 0xFFFF8000

	thumb_func_start sub_08042DE8
sub_08042DE8: @ 0x08042DE8
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0xa]
	cmp r0, #0
	beq _08042E18
	cmp r0, #0
	blt _08042E94
	cmp r0, #2
	bgt _08042E94
	ldr r0, [r3, #0x44]
	ldr r1, _08042E14 @ =0xFFFF8000
	adds r0, r0, r1
	str r0, [r3, #0x44]
	ldrb r0, [r3, #0xd]
	cmp r0, #0x1e
	bls _08042E7A
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08042E6C
	b _08042E5E
	.align 2, 0
_08042E14: .4byte 0xFFFF8000
_08042E18:
	ldr r0, [r3, #0x44]
	ldr r1, _08042E3C @ =0xFFFF8000
	adds r0, r0, r1
	str r0, [r3, #0x44]
	ldrb r0, [r3, #0xd]
	cmp r0, #0x14
	bls _08042E4E
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08042E40
	adds r0, r3, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	b _08042E4E
	.align 2, 0
_08042E3C: .4byte 0xFFFF8000
_08042E40:
	adds r2, r3, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_08042E4E:
	ldrb r0, [r3, #0xd]
	adds r0, #1
	strb r0, [r3, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1c
	bne _08042E94
	b _08042E88
_08042E5E:
	adds r0, r3, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	b _08042E7A
_08042E6C:
	adds r2, r3, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_08042E7A:
	ldrb r0, [r3, #0xd]
	adds r0, #1
	strb r0, [r3, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x28
	bne _08042E94
_08042E88:
	adds r0, r3, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_08042E94:
	pop {r0}
	bx r0

	thumb_func_start sub_08042E98
sub_08042E98: @ 0x08042E98
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r0, _08042F38 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08042F3C @ =0x0000042C
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08042F2C
	ldr r0, [r5, #0x40]
	mov r8, r0
	movs r4, #0
	adds r6, r5, #0
	adds r6, #0x10
	adds r7, r5, #0
	adds r7, #0x65
	adds r2, r6, #0
	ldr r3, _08042F40 @ =0xFFFD8000
_08042EC4:
	adds r0, r4, #0
	cmp r4, #0
	bge _08042ECC
	adds r0, r4, #3
_08042ECC:
	asrs r0, r0, #2
	lsls r0, r0, #2
	subs r0, r4, r0
	asrs r1, r4, #2
	adds r1, #2
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0xc
	beq _08042EE8
	ldr r0, [r5, #0x40]
	adds r0, r0, r3
	str r0, [r5, #0x40]
_08042EE8:
	adds r4, #1
	cmp r4, #0xa
	ble _08042EC4
	movs r4, #0
_08042EF0:
	adds r1, r4, #0
	cmp r4, #0
	bge _08042EF8
	adds r1, r4, #3
_08042EF8:
	asrs r1, r1, #2
	lsls r1, r1, #2
	subs r1, r4, r1
	asrs r0, r4, #2
	adds r0, #2
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r6, r1
	ldrb r0, [r1]
	strb r0, [r7]
	ldrb r0, [r1]
	cmp r0, #0xc
	beq _08042F22
	adds r0, r5, #0
	bl sub_0803AC40
	ldr r0, [r5, #0x40]
	movs r1, #0xa0
	lsls r1, r1, #0xb
	adds r0, r0, r1
	str r0, [r5, #0x40]
_08042F22:
	adds r4, #1
	cmp r4, #0xa
	ble _08042EF0
	mov r0, r8
	str r0, [r5, #0x40]
_08042F2C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042F38: .4byte gEwramData
_08042F3C: .4byte 0x0000042C
_08042F40: .4byte 0xFFFD8000

	thumb_func_start sub_08042F44
sub_08042F44: @ 0x08042F44
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	mov sb, r1
	mov r8, r2
	adds r4, r3, #0
	ldr r5, [sp, #0x1c]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r2, _08042F9C @ =sub_08042FE0
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r7, r0, #0
	ldr r0, _08042FA0 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08042FA4 @ =0x0820ED60
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	adds r0, r7, #0
	adds r3, r4, #0
	bl sub_0803B924
	mov r0, sb
	str r0, [r7, #0x40]
	mov r1, r8
	str r1, [r7, #0x44]
	adds r0, r7, #0
	adds r0, #0x25
	strb r5, [r0]
	lsls r5, r5, #0x18
	asrs r5, r5, #0x18
	cmp r5, #8
	bne _08042FA8
	movs r0, #0
	ldrsb r0, [r6, r0]
	b _08042FB4
	.align 2, 0
_08042F9C: .4byte sub_08042FE0
_08042FA0: .4byte 0x081C15F4
_08042FA4: .4byte 0x0820ED60
_08042FA8:
	cmp r5, #0x10
	bne _08042FB2
	movs r1, #0
	ldrsh r0, [r6, r1]
	b _08042FB4
_08042FB2:
	ldr r0, [r6]
_08042FB4:
	str r0, [r7, #0x2c]
	str r6, [r7, #0x28]
	ldr r1, [r7, #0x2c]
	adds r0, r7, #0
	bl sub_08042C78
	ldr r0, _08042FDC @ =sub_0804301C
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #2
	strb r0, [r1]
	adds r0, r7, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08042FDC: .4byte sub_0804301C

	thumb_func_start sub_08042FE0
sub_08042FE0: @ 0x08042FE0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x25
	ldrb r0, [r0]
	cmp r0, #8
	beq _08042FF6
	cmp r0, #0x10
	beq _08042FFE
	ldr r0, [r4, #0x28]
	ldr r5, [r0]
	b _08043004
_08042FF6:
	ldr r0, [r4, #0x28]
	movs r5, #0
	ldrsb r5, [r0, r5]
	b _08043004
_08042FFE:
	ldr r0, [r4, #0x28]
	movs r1, #0
	ldrsh r5, [r0, r1]
_08043004:
	ldr r0, [r4, #0x2c]
	cmp r5, r0
	beq _08043014
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08042C78
	str r5, [r4, #0x2c]
_08043014:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804301C
sub_0804301C: @ 0x0804301C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r6, [r4, #0x40]
	movs r5, #0
_08043024:
	adds r1, r5, #0
	cmp r5, #0
	bge _0804302C
	adds r1, r5, #3
_0804302C:
	asrs r1, r1, #2
	lsls r1, r1, #2
	subs r1, r5, r1
	asrs r0, r5, #2
	adds r0, #2
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x10
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x65
	strb r1, [r2]
	ldrb r0, [r0]
	cmp r0, #0xc
	beq _0804305E
	adds r0, r4, #0
	bl sub_0803AC40
	ldr r0, [r4, #0x40]
	movs r1, #0xa0
	lsls r1, r1, #0xb
	adds r0, r0, r1
	str r0, [r4, #0x40]
_0804305E:
	adds r5, #1
	cmp r5, #0xa
	ble _08043024
	str r6, [r4, #0x40]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0804306C
sub_0804306C: @ 0x0804306C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r5, _080430A8 @ =gEwramData
	ldr r0, [r5]
	ldr r1, _080430AC @ =0x00000404
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r4, #0x2c]
	cmp r1, r0
	beq _080430A0
	adds r0, r4, #0
	bl sub_08042C78
	ldr r0, [r5]
	ldr r1, _080430AC @ =0x00000404
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	str r0, [r4, #0x2c]
_080430A0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080430A8: .4byte gEwramData
_080430AC: .4byte 0x00000404

	thumb_func_start sub_080430B0
sub_080430B0: @ 0x080430B0
	push {r4, lr}
	ldr r2, _08043104 @ =sub_0804306C
	movs r0, #0x16
	movs r1, #0x19
	bl EntityCreateInRange
	adds r4, r0, #0
	ldr r0, _08043108 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0804310C @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #7
	bl sub_0803B924
	ldr r0, _08043110 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08043114 @ =0x00000404
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	str r1, [r4, #0x2c]
	adds r0, r4, #0
	bl sub_08042C78
	ldr r0, _08043118 @ =sub_08042E98
	str r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0
	strb r0, [r1]
	subs r1, #0x1a
	movs r0, #0x12
	strh r0, [r1]
	adds r4, #0x46
	movs r0, #0xa
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08043104: .4byte sub_0804306C
_08043108: .4byte 0x081C15F4
_0804310C: .4byte 0x0820ED60
_08043110: .4byte gEwramData
_08043114: .4byte 0x00000404
_08043118: .4byte sub_08042E98

	arm_func_start sub_0804311C
sub_0804311C: @ 0x0804311C
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	ldr r3, _08043364 @ =gEwramData
	sub fp, ip, #4
	sub sp, sp, #0x28
	ldr ip, [r3]
	mov r2, #0
	str r2, [fp, #-0x48]
	mov sl, r0
	add r2, ip, #0x10000
	mov r3, r2
	ldrb r1, [sl, #0x64]
	add r3, r3, #0x17c
	ldr r0, [r3, r1, lsl #4]
	add r2, r2, #0x178
	ldr r1, [r2, r1, lsl #4]
	str r1, [fp, #-0x3c]
	cmp r0, #0
	ldreq r0, [fp, #-0x48]
	beq _08043418
	ldrb r3, [sl, #0x5b]
	cmp r3, #0
	blt _080431A8
	cmp r3, #1
	ble _080431A8
	cmp r3, #2
	bne _080431A8
	ldr r2, [fp, #-0x3c]
	lsl r3, r2, #0x10
	add r3, ip, r3, asr #13
	add r3, r3, #0x12c00
	add r3, r3, #0x3f0
	add r3, r3, #1
	ldrb r3, [r3]
	str r3, [fp, #-0x48]
_080431A8:
	ldrb r2, [sl, #0x65]
	ldrh r3, [r0]
	cmp r2, r3
	ldrlo r3, [r0, #4]
	addlo r3, r3, r2, lsl #4
	ldrhs r3, [r0, #4]
	ldr r5, [r3, #0xc]
	ldrsb r2, [r3]
	ldrb r6, [r3, #5]
	lsl r2, r2, #0x10
	str r2, [fp, #-0x30]
	ldrsb r3, [r3, #1]
	lsl r3, r3, #0x10
	str r3, [fp, #-0x2c]
	ldrb r3, [sl, #0x5a]
	ldr r2, _08043368 @ =0x03005170
	and r1, r3, #1
	lsl r3, r3, #9
	and r3, r3, #0xc00
	orr r1, r3, r1, lsl #12
	str r1, [fp, #-0x44]
	mov r0, r6
	ldr ip, [r2]
	mov lr, pc
	bx ip
	cmp r0, #0
	str r0, [fp, #-0x4c]
	beq _08043418
	cmp r6, #0
	beq _08043414
	sub r3, fp, #0x38
	str r3, [fp, #-0x50]
	str r6, [fp, #-0x40]
_0804322C:
	ldrb r0, [r5, #8]
	ldrsb r2, [r5]
	ldr r4, [fp, #-0x4c]
	ldrb r1, [sl, #0x58]
	lsl r2, r2, #0x10
	lsr r3, r1, #6
	and r7, r3, #1
	lsr sb, r1, #7
	str r2, [fp, #-0x38]
	orrs ip, r7, sb
	ldrsb r3, [r5, #1]
	and lr, r0, #0xf
	ldr r2, [fp, #-0x50]
	lsl r3, r3, #0x10
	str r3, [r2, #4]
	lsr r8, r0, #4
	beq _080432CC
	cmp r7, #0
	sub r6, fp, #0x30
	beq _080432A0
	ldr r0, _0804336C @ =0x080E33FC
	ldr ip, [fp, #-0x30]
	lsl r3, lr, #5
	ldr r2, [fp, #-0x38]
	add r3, r3, r8, lsl #3
	ldr r1, [r0, r3]
	rsb r2, r2, ip, lsl #1
	sub r2, r2, r1, lsl #1
	str r2, [fp, #-0x38]
_080432A0:
	cmp sb, #0
	beq _080432CC
	ldr r0, _08043370 @ =0x080E3400
	ldr ip, [r6, #4]
	lsl r3, lr, #5
	ldr r2, [fp, #-0x34]
	add r3, r3, r8, lsl #3
	ldr r1, [r0, r3]
	rsb r2, r2, ip, lsl #1
	sub r2, r2, r1, lsl #1
	str r2, [fp, #-0x34]
_080432CC:
	ldr r3, [fp, #-0x50]
	ldr ip, [fp, #-0x44]
	mov r1, r4
	ldr r2, [r3, #4]
	add r4, r4, #2
	ldr r3, [sl, #0x44]
	orr r0, ip, lr, lsl #14
	adds r2, r2, r3
	rsbmi r3, r2, #0
	asrmi r3, r3, #0x10
	rsbmi r3, r3, #0
	asrpl r3, r2, #0x10
	and r3, r3, #0xff
	orr r3, r0, r3
	strh r3, [r1]
	lsl r2, r8, #0xe
	mov r1, r4
	ldrb r3, [r5, #0xa]
	add r4, r4, #2
	tst r3, #2
	and r3, r3, #1
	eor r3, sb, r3
	orr r0, r2, r3, lsl #13
	beq _08043340
	cmp r7, #0
	moveq r3, #0x1000
	movne r3, #0
	orr r0, r0, r3
	b _08043344
_08043340:
	orr r0, r0, r7, lsl #12
_08043344:
	ldr r2, [fp, #-0x38]
	ldr r3, [sl, #0x40]
	adds r2, r2, r3
	bpl _08043374
	rsb r3, r2, #0
	asr r3, r3, #0x10
	rsb r3, r3, #0
	b _08043378
	.align 2, 0
_08043364: .4byte gEwramData
_08043368: .4byte 0x03005170
_0804336C: .4byte 0x080E33FC
_08043370: .4byte 0x080E3400
_08043374:
	asr r3, r2, #0x10
_08043378:
	lsl r3, r3, #0x17
	lsr r3, r3, #0x17
	orr r3, r0, r3
	strh r3, [r1]
	ldr r0, [fp, #-0x48]
	ldrb r3, [r5, #9]
	ldr r2, [fp, #-0x3c]
	subs r3, r3, #0
	movne r3, #1
	mla r0, r3, r0, r2
	ldr ip, _0804341C @ =0x0300517C
	ldrsb r1, [r5, #4]
	ldrsb r2, [r5, #5]
	ldr ip, [ip]
	mov lr, pc
	bx ip
	ldrb r3, [sl, #0x5a]
	ldrb r1, [r5, #0xb]
	ldrb r2, [sl, #0x62]
	lsr r3, r3, #3
	and r3, r3, #0xf
	and r2, r2, r1
	add r3, r3, r2
	orr r0, r0, r3, lsl #12
	strh r0, [r4]
	ldr r0, [fp, #-0x4c]
	ldr r3, _08043420 @ =0x03005174
	mov ip, r0
	ldrb r1, [sl, #0x5c]
	add ip, ip, #0xc
	str ip, [fp, #-0x4c]
	ldr ip, [r3]
	mov lr, pc
	bx ip
	ldr r2, [fp, #-0x40]
	subs r2, r2, #1
	str r2, [fp, #-0x40]
	add r5, r5, #0xc
	bne _0804322C
_08043414:
	mov r0, #1
_08043418:
	b _08043424
	.align 2, 0
_0804341C: .4byte 0x0300517C
_08043420: .4byte 0x03005174
_08043424:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start sub_0804342C
sub_0804342C: @ 0x0804342C
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	mov r1, #0
	ldr r3, _080437F4 @ =gEwramData
	sub fp, ip, #4
	sub sp, sp, #0x60
	ldr ip, [r3]
	mov sb, r0
	add r2, ip, #0x10000
	str r1, [fp, #-0x70]
	mov r3, r2
	ldrb r1, [sb, #0x64]
	add r3, r3, #0x17c
	ldr r0, [r3, r1, lsl #4]
	add r2, r2, #0x178
	ldr r1, [r2, r1, lsl #4]
	str r1, [fp, #-0x5c]
	cmp r0, #0
	ldreq r0, [fp, #-0x70]
	beq _080438F4
	ldrb r3, [sb, #0x5b]
	cmp r3, #0
	blt _080434B8
	cmp r3, #1
	ble _080434B8
	cmp r3, #2
	bne _080434B8
	ldr r2, [fp, #-0x5c]
	lsl r3, r2, #0x10
	add r3, ip, r3, asr #13
	add r3, r3, #0x12c00
	add r3, r3, #0x3f0
	add r3, r3, #1
	ldrb r3, [r3]
	str r3, [fp, #-0x70]
_080434B8:
	ldrb r2, [sb, #0x65]
	ldrh r3, [r0]
	cmp r2, r3
	ldrlo r3, [r0, #4]
	addlo ip, r3, r2, lsl #4
	ldrhs ip, [r0, #4]
	ldr sl, [ip, #0xc]
	ldrsb r3, [ip]
	ldrb r5, [ip, #5]
	lsl r3, r3, #0x10
	str r3, [fp, #-0x40]
	ldrb r2, [sb, #0x58]
	ldrsb r3, [ip, #1]
	and r2, r2, #0x1f
	str r2, [fp, #-0x74]
	lsl r3, r3, #0x10
	str r3, [fp, #-0x3c]
	sub r0, fp, #0x38
	ldr r3, _080437F8 @ =0x03005188
	mov r1, r2
	ldr ip, [r3]
	mov lr, pc
	bx ip
	ldr r2, _080437FC @ =0x03005180
	ldr r0, [fp, #-0x74]
	ldr ip, [r2]
	mov lr, pc
	bx ip
	str r0, [fp, #-0x68]
	ldr r0, [fp, #-0x74]
	ldr r3, _08043800 @ =0x03005178
	mov ip, r0
	lsl ip, ip, #9
	str ip, [fp, #-0x74]
	ldr ip, [r3]
	mov lr, pc
	bx ip
	str r0, [fp, #-0x6c]
	ldrb r3, [sb, #0x59]
	ldrb r2, [sb, #0x5a]
	lsr r3, r3, #4
	and r3, r3, #2
	cmp r3, #0
	movne r3, #0x300
	moveq r3, #0x100
	and r1, r2, #1
	orr r3, r3, r1, lsl #12
	lsl r2, r2, #9
	and r2, r2, #0xc00
	ldr r1, _08043804 @ =0x03005170
	orr r3, r3, r2
	str r3, [fp, #-0x64]
	mov r0, r5
	ldr ip, [r1]
	mov lr, pc
	bx ip
	cmp r0, #0
	str r0, [fp, #-0x78]
	beq _080438F4
	cmp r5, #0
	beq _080438F0
	sub lr, fp, #0x48
	str lr, [fp, #-0x84]
	str r5, [fp, #-0x60]
_080435B8:
	ldrsb r3, [sl]
	ldrb r1, [sl, #8]
	ldr r7, [fp, #-0x78]
	ldr r0, [fp, #-0x84]
	lsl r3, r3, #0x10
	str r3, [fp, #-0x48]
	ldrsb r3, [sl, #1]
	ldrb r2, [sb, #0x59]
	lsl r3, r3, #0x10
	str r3, [r0, #4]
	tst r2, #0x80
	and r3, r1, #0xf
	str r3, [fp, #-0x7c]
	lsr r1, r1, #4
	str r1, [fp, #-0x80]
	mov r4, r2
	beq _08043620
	ldr r3, [fp, #-0x48]
	mov r1, #0xe8
	asr r3, r3, #8
	mul r2, r3, r1
	str r2, [fp, #-0x48]
	ldr r3, [r0, #4]
	asr r3, r3, #8
	mul r2, r3, r1
	str r2, [r0, #4]
_08043620:
	ldr ip, [fp, #-0x68]
	ldr lr, [fp, #-0x6c]
	sub r0, fp, #0x80
	ldm r0, {r0, r1}
	orrs ip, ip, lr
	lsl r5, r0, #3
	lsl lr, r1, #5
	beq _080436B8
	ldr r2, [fp, #-0x68]
	ldr r8, [fp, #-0x84]
	sub r3, fp, #0x40
	str r3, [fp, #-0x88]
	cmp r2, #0
	mov r6, r8
	beq _0804367C
	ldr r0, [fp, #-0x40]
	ldr r2, [fp, #-0x48]
	ldr ip, _08043808 @ =0x080E33FC
	add r3, r5, lr
	ldr r1, [ip, r3]
	rsb r2, r2, r0, lsl #1
	sub r2, r2, r1, lsl #1
	str r2, [fp, #-0x48]
_0804367C:
	ldr r0, [fp, #-0x6c]
	cmp r0, #0
	beq _080436B0
	ldr r0, _0804380C @ =0x080E3400
	ldr r1, [fp, #-0x88]
	ldr r2, [r6, #4]
	ldr ip, [r1, #4]
	add r3, r5, lr
	ldr r1, [r0, r3]
	rsb r2, r2, ip, lsl #1
	sub r2, r2, r1, lsl #1
	str r2, [r8, #4]
	b _080436B8
_080436B0:
	ldr r3, [r6, #4]
	str r3, [r8, #4]
_080436B8:
	tst r4, #0x20
	ldr r3, _08043808 @ =0x080E33FC
	add r2, r5, lr
	ldr r4, [r3, r2]
	sub r6, fp, #0x50
	add r3, r3, #4
	ldr r5, [r3, r2]
	sub r1, fp, #0x40
	beq _0804370C
	ldr r3, [fp, #-0x48]
	sub r2, fp, #0x58
	ldr ip, [fp, #-0x84]
	rsb r3, r4, r3
	str r3, [fp, #-0x58]
	mov r8, r2
	ldr r3, [ip, #4]
	lsl r4, r4, #1
	rsb r3, r5, r3
	str r3, [r2, #4]
	lsl r5, r5, #1
	b _08043728
_0804370C:
	ldr r3, [fp, #-0x48]
	ldr lr, [fp, #-0x84]
	str r3, [fp, #-0x58]
	sub r2, fp, #0x58
	ldr r3, [lr, #4]
	mov r8, r2
	str r3, [r2, #4]
_08043728:
	ldr r3, [r1]
	ldr r2, [fp, #-0x58]
	ldr ip, _08043810 @ =0x03005184
	rsb r3, r3, r4
	add r3, r3, r2
	str r3, [fp, #-0x58]
	ldr r2, [r1, #4]
	mov r0, r8
	ldr r3, [r8, #4]
	rsb r2, r2, r5
	add r2, r2, r3
	str r2, [r8, #4]
	sub r1, fp, #0x38
	mov r2, r8
	ldr ip, [ip]
	mov lr, pc
	bx ip
	ldr r3, [fp, #-0x58]
	rsb r3, r4, r3
	str r3, [r6]
	ldr r2, [r8, #4]
	ldrb r3, [sb, #0x59]
	rsb r2, r5, r2
	str r2, [r6, #4]
	tst r3, #0x40
	beq _080437C0
	ldr r3, [fp, #-0x50]
	mov r1, #0xf6
	asr r3, r3, #8
	mul ip, r3, r1
	mov r0, #4
	sub r2, fp, #0x50
	ldr r3, [r2, r0]
	asr r3, r3, #8
	mul r2, r3, r1
	str ip, [fp, #-0x50]
	sub r3, fp, #0x50
	str r2, [r3, r0]
_080437C0:
	ldr r2, [fp, #-0x4c]
	ldr ip, [fp, #-0x64]
	mov r0, r7
	ldr lr, [fp, #-0x7c]
	add r7, r7, #2
	ldr r3, [sb, #0x44]
	orr r1, ip, lr, lsl #14
	adds r2, r2, r3
	bpl _08043814
	rsb r3, r2, #0
	asr r3, r3, #0x10
	rsb r3, r3, #0
	b _08043818
	.align 2, 0
_080437F4: .4byte gEwramData
_080437F8: .4byte 0x03005188
_080437FC: .4byte 0x03005180
_08043800: .4byte 0x03005178
_08043804: .4byte 0x03005170
_08043808: .4byte 0x080E33FC
_0804380C: .4byte 0x080E3400
_08043810: .4byte 0x03005184
_08043814:
	asr r3, r2, #0x10
_08043818:
	and r3, r3, #0xff
	orr r3, r1, r3
	strh r3, [r0]
	ldr r2, [fp, #-0x50]
	ldr ip, [fp, #-0x74]
	ldr lr, [fp, #-0x80]
	mov r0, r7
	add r7, r7, #2
	ldr r3, [sb, #0x40]
	orr r1, ip, lr, lsl #14
	adds r2, r2, r3
	rsbmi r3, r2, #0
	asrmi r3, r3, #0x10
	rsbmi r3, r3, #0
	asrpl r3, r2, #0x10
	lsl r3, r3, #0x17
	lsr r3, r3, #0x17
	orr r3, r1, r3
	strh r3, [r0]
	ldr r0, [fp, #-0x70]
	ldrb r3, [sl, #9]
	ldr r1, [fp, #-0x5c]
	subs r3, r3, #0
	movne r3, #1
	mla r0, r3, r0, r1
	ldr ip, _080438F8 @ =0x0300517C
	ldrsb r2, [sl, #5]
	ldrsb r1, [sl, #4]
	ldr ip, [ip]
	mov lr, pc
	bx ip
	ldrb r3, [sb, #0x5a]
	ldrb r1, [sl, #0xb]
	ldrb r2, [sb, #0x62]
	lsr r3, r3, #3
	and r3, r3, #0xf
	and r2, r2, r1
	add r3, r3, r2
	orr r0, r0, r3, lsl #12
	strh r0, [r7]
	ldr r0, [fp, #-0x78]
	ldr r3, _080438FC @ =0x03005174
	mov r2, r0
	ldrb r1, [sb, #0x5c]
	add r2, r2, #0xc
	str r2, [fp, #-0x78]
	ldr ip, [r3]
	mov lr, pc
	bx ip
	ldr r3, [fp, #-0x60]
	subs r3, r3, #1
	str r3, [fp, #-0x60]
	add sl, sl, #0xc
	bne _080435B8
_080438F0:
	mov r0, #1
_080438F4:
	b _08043900
	.align 2, 0
_080438F8: .4byte 0x0300517C
_080438FC: .4byte 0x03005174
_08043900:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start sub_08043908
sub_08043908: @ 0x08043908
	mov ip, sp
	push {fp, ip, lr, pc}
	ldr r2, _08043970 @ =0x03005188
	ldr r3, _08043974 @ =sub_0803E734
	ldr r1, _08043978 @ =0x03005180
	str r3, [r2]
	ldr r3, _0804397C @ =sub_0803E70C
	ldr r2, _08043980 @ =0x03005178
	str r3, [r1]
	ldr r3, _08043984 @ =sub_0803E720
	ldr r1, _08043988 @ =0x03005170
	str r3, [r2]
	ldr r3, _0804398C @ =sub_0803E4F0
	ldr r2, _08043990 @ =0x03005174
	str r3, [r1]
	ldr r3, _08043994 @ =sub_0803E528
	ldr r1, _08043998 @ =0x03005184
	str r3, [r2]
	ldr r3, _0804399C @ =sub_0803EAE8
	ldr r2, _080439A0 @ =0x0300517C
	str r3, [r1]
	ldr r3, _080439A4 @ =sub_0803DA7C
	sub fp, ip, #4
	str r3, [r2]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_08043970: .4byte 0x03005188
_08043974: .4byte sub_0803E734
_08043978: .4byte 0x03005180
_0804397C: .4byte sub_0803E70C
_08043980: .4byte 0x03005178
_08043984: .4byte sub_0803E720
_08043988: .4byte 0x03005170
_0804398C: .4byte sub_0803E4F0
_08043990: .4byte 0x03005174
_08043994: .4byte sub_0803E528
_08043998: .4byte 0x03005184
_0804399C: .4byte sub_0803EAE8
_080439A0: .4byte 0x0300517C
_080439A4: .4byte sub_0803DA7C

	arm_func_start sub_080439A8
sub_080439A8: @ 0x080439A8
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #0x10
	str r2, [fp, #-0x38]
	ldrsh ip, [r2]
	mov lr, r1
	str r3, [fp, #-0x30]
	mov r8, #0
	str r0, [fp, #-0x2c]
	add r2, r3, #0xe
	str r2, [fp, #-0x34]
	cmn ip, #1
	beq _08043A20
_080439E0:
	ldr r3, [fp, #-0x2c]
	add r1, ip, ip, lsl #1
	ldr r4, [fp, #-0x34]
	add r1, r3, r1, lsl #2
	ldrsh ip, [r1, #8]
	ldrb r2, [r4]
	ldrb r3, [r1, #5]
	and r2, r2, #3
	bic r3, r3, #0xc
	orr r3, r3, r2, lsl #2
	strb r3, [r1, #5]
	ldm r1, {r2, r3}
	stm lr!, {r2, r3}
	add r8, r8, #1
	cmn ip, #1
	bne _080439E0
_08043A20:
	ldr r4, [fp, #-0x38]
	mvn r3, #0
	strh r3, [r4, #2]
	strh r3, [r4]
	mov r5, #1
	ldr r3, _08043B0C @ =gEwramData
	mov r1, #0xfe00
	ldr r0, [r3]
	add r2, r1, #0xc0
	ldrsb sb, [r0, r2]
	add r1, r1, #0xc1
	ldrsb sl, [r0, r1]
_08043A50:
	lsl r3, r5, #2
	ldr r2, [fp, #-0x38]
	mov r6, r3
	ldrsh ip, [r3, r2]
	add r7, r5, #1
	cmn ip, #1
	beq _08043AE0
	mov r0, #0x1fc
	add r0, r0, #3
_08043A74:
	ldr r3, [fp, #-0x34]
	ldr r4, [fp, #-0x2c]
	add r2, ip, ip, lsl #1
	ldrb r1, [r3, r5]
	add r2, r4, r2, lsl #2
	ldrb r3, [r2, #5]
	and r1, r1, #3
	bic r3, r3, #0xc
	orr r3, r3, r1, lsl #2
	strb r3, [r2, #5]
	ldm r2, {r3, r4}
	stm lr, {r3, r4}
	ldrh r1, [lr, #2]
	add r8, r8, #1
	ldrsh ip, [r2, #8]
	and r3, r1, r0
	rsb r3, sb, r3
	lsl r3, r3, #0x17
	orr r3, r3, r1, lsr #9
	ldrb r2, [lr]
	ror r3, r3, #0x17
	strh r3, [lr, #2]
	rsb r2, sl, r2
	strb r2, [lr]
	cmn ip, #1
	add lr, lr, #8
	bne _08043A74
_08043AE0:
	ldr r4, [fp, #-0x38]
	mvn r2, #0
	add r3, r6, r4
	strh r2, [r3, #2]
	mov r5, r7
	strh r2, [r6, r4]
	cmp r5, #0x1f
	ble _08043A50
	ldr r3, [fp, #-0x30]
	str r8, [r3, #0x38]
	b _08043B10
	.align 2, 0
_08043B0C: .4byte gEwramData
_08043B10:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	thumb_func_start sub_08043B18
sub_08043B18: @ 0x08043B18
	push {r4, lr}
	movs r2, #0
	cmp r0, #0
	bne _08043B24
	movs r3, #0
	b _08043B3E
_08043B24:
	subs r1, r0, #1
	cmp r1, #0x1f
	bgt _08043B2E
	movs r2, #2
	b _08043B3C
_08043B2E:
	cmp r1, #0x5a
	bgt _08043B36
	movs r2, #3
	b _08043B3C
_08043B36:
	cmp r1, #0x87
	bgt _08043B3C
	movs r2, #4
_08043B3C:
	adds r3, r2, #0
_08043B3E:
	movs r2, #0
	cmp r0, #0
	beq _08043B60
	subs r1, r0, #1
	cmp r1, #0x1f
	bgt _08043B4E
	adds r2, r1, #0
	b _08043B60
_08043B4E:
	cmp r1, #0x5a
	bgt _08043B58
	adds r2, r0, #0
	subs r2, #0x21
	b _08043B60
_08043B58:
	cmp r1, #0x87
	bgt _08043B60
	adds r2, r0, #0
	subs r2, #0x5c
_08043B60:
	ldr r0, _08043B78 @ =gEwramData
	ldr r0, [r0]
	ldr r4, _08043B7C @ =0x0001325C
	adds r1, r0, r4
	cmp r3, #3
	beq _08043B8E
	cmp r3, #3
	bgt _08043B80
	cmp r3, #2
	beq _08043B86
	b _08043B9E
	.align 2, 0
_08043B78: .4byte gEwramData
_08043B7C: .4byte 0x0001325C
_08043B80:
	cmp r3, #4
	beq _08043B96
	b _08043B9E
_08043B86:
	adds r0, r2, #0
	adds r0, #0x38
	adds r1, r1, r0
	b _08043BA0
_08043B8E:
	adds r0, r2, #0
	adds r0, #0x58
	adds r1, r1, r0
	b _08043BA0
_08043B96:
	adds r0, r2, #0
	adds r0, #0x93
	adds r1, r1, r0
	b _08043BA0
_08043B9E:
	adds r1, #0x38
_08043BA0:
	ldrb r0, [r1]
	cmp r0, #8
	bhi _08043BAA
	adds r0, #1
	strb r0, [r1]
_08043BAA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08043BB0
sub_08043BB0: @ 0x08043BB0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08043BD4 @ =gEwramData
	ldr r0, [r4]
	ldr r1, _08043BD8 @ =0x00013280
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r1, #0x64
	bl __divsi3
	muls r0, r5, r0
	cmp r0, #0
	bge _08043BDC
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r2, r0, #0
	b _08043BDE
	.align 2, 0
_08043BD4: .4byte gEwramData
_08043BD8: .4byte 0x00013280
_08043BDC:
	asrs r2, r0, #0x10
_08043BDE:
	cmp r2, #0
	bne _08043BE4
	movs r2, #1
_08043BE4:
	ldr r0, [r4]
	ldr r1, _08043C08 @ =0x0001327C
	adds r3, r0, r1
	ldrh r1, [r3]
	adds r1, r1, r2
	strh r1, [r3]
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _08043C0C @ =0x00013280
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r1, r0
	ble _08043C00
	strh r0, [r3]
_08043C00:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08043C08: .4byte 0x0001327C
_08043C0C: .4byte 0x00013280

	thumb_func_start sub_08043C10
sub_08043C10: @ 0x08043C10
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _08043CA0 @ =sub_08043CE4
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _08043CD2
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x13
	strb r0, [r1]
	ldr r0, _08043CA4 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08043CA8 @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #7
	bl sub_0803B924
	ldr r0, _08043CAC @ =sub_0803B9D0
	str r0, [r4, #4]
	ldr r2, _08043CB0 @ =sub_080441F8
	adds r0, r4, #0
	movs r1, #0xb
	movs r3, #0
	bl sub_0804277C
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08043CB4 @ =0x0808FCFC
	adds r0, r4, #0
	bl sub_08042884
	adds r0, r4, #0
	adds r0, #0x42
	movs r2, #0
	strh r5, [r0]
	adds r0, #4
	strh r6, [r0]
	adds r3, r4, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x36
	strb r2, [r0]
	cmp r7, #0
	beq _08043CBC
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x27
	strb r0, [r1]
	movs r0, #0xf
	strh r0, [r4, #0x32]
	ldr r0, _08043CB8 @ =sub_08043DD0
	str r0, [r4]
	b _08043CC8
	.align 2, 0
_08043CA0: .4byte sub_08043CE4
_08043CA4: .4byte 0x081C15F4
_08043CA8: .4byte 0x0820ED60
_08043CAC: .4byte sub_0803B9D0
_08043CB0: .4byte sub_080441F8
_08043CB4: .4byte 0x0808FCFC
_08043CB8: .4byte sub_08043DD0
_08043CBC:
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x28
	strb r0, [r1]
	movs r0, #3
	strh r0, [r4, #0x32]
_08043CC8:
	mov r0, r8
	cmp r0, #0
	beq _08043CD2
	ldr r0, _08043CE0 @ =0xFFFE0000
	str r0, [r4, #0x4c]
_08043CD2:
	adds r0, r4, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08043CE0: .4byte 0xFFFE0000

	thumb_func_start sub_08043CE4
sub_08043CE4: @ 0x08043CE4
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _08043D28
	cmp r0, #1
	bgt _08043D02
	cmp r0, #0
	beq _08043D0C
	b _08043DC8
_08043D02:
	cmp r0, #2
	beq _08043D94
	cmp r0, #3
	beq _08043DAC
	b _08043DC8
_08043D0C:
	ldr r1, [r4, #0x4c]
	cmp r1, #0
	blt _08043D18
	movs r0, #1
	strb r0, [r4, #0xa]
	b _08043DC8
_08043D18:
	movs r0, #0x80
	lsls r0, r0, #6
	adds r1, r1, r0
	str r1, [r4, #0x4c]
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	b _08043DC8
_08043D28:
	movs r1, #0x80
	lsls r1, r1, #7
	str r1, [r4, #0x4c]
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #9
	adds r0, r0, r1
	bl sub_080009E4
	asrs r0, r0, #1
	str r0, [r4, #0x48]
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	str r1, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _08043D8C @ =gEwramData
	ldr r2, [r1]
	ldr r3, _08043D90 @ =0x0000A094
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
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08043DC8
	ldr r0, [r4, #0x44]
	subs r0, r0, r1
	str r0, [r4, #0x44]
	movs r0, #0xc8
	b _08043DA2
	.align 2, 0
_08043D8C: .4byte gEwramData
_08043D90: .4byte 0x0000A094
_08043D94:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08043DC8
	movs r0, #0x40
_08043DA2:
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _08043DC8
_08043DAC:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	movs r1, #1
	strb r1, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08043DC8
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_08043DC8:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08043DD0
sub_08043DD0: @ 0x08043DD0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	movs r0, #0x36
	adds r0, r0, r4
	mov ip, r0
	ldrb r0, [r0]
	cmp r0, #4
	bhi _08043E86
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r0, _08043E30 @ =gEwramData
	ldr r1, [r0]
	ldr r3, _08043E34 @ =0x0000A094
	adds r1, r1, r3
	movs r6, #6
	ldrsh r0, [r1, r6]
	adds r5, r2, r0
	adds r3, r4, #0
	adds r3, #0x46
	movs r0, #0
	ldrsh r2, [r3, r0]
	movs r6, #0xa
	ldrsh r0, [r1, r6]
	adds r2, r2, r0
	adds r0, r4, #0
	adds r0, #0x56
	movs r6, #0
	ldrsh r1, [r0, r6]
	mov r6, ip
	ldrb r0, [r6]
	adds r6, r3, #0
	cmp r0, #1
	bhi _08043E38
	adds r0, r1, #0
	adds r0, #8
	adds r1, r2, r0
	b _08043E3A
	.align 2, 0
_08043E30: .4byte gEwramData
_08043E34: .4byte 0x0000A094
_08043E38:
	adds r1, r2, r1
_08043E3A:
	adds r0, r5, #0
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, [r4, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #0xb
	cmp r0, r1
	bls _08043E58
	str r1, [r4, #0x4c]
_08043E58:
	ldrh r1, [r4, #0x1a]
	movs r3, #0x1a
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _08043E66
	subs r0, r1, #1
	strh r0, [r4, #0x1a]
_08043E66:
	cmp r2, #0
	beq _08043EA4
	ldrh r0, [r6]
	adds r0, r0, r2
	movs r1, #0
	strh r0, [r6]
	str r1, [r4, #0x4c]
	ldrb r1, [r4, #0xa]
	cmp r1, #0
	bne _08043EA4
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r4, #0x18]
	adds r0, r1, #1
	strb r0, [r4, #0xa]
	b _08043EA4
_08043E86:
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #9
	bl sub_080009E4
	cmp r0, #0
	bge _08043E94
	adds r0, #3
_08043E94:
	asrs r0, r0, #2
	str r0, [r4, #0x4c]
	ldr r1, [r4, #0x14]
	adds r1, #1
	str r1, [r4, #0x14]
	ldr r1, [r4, #0x44]
	adds r1, r1, r0
	str r1, [r4, #0x44]
_08043EA4:
	ldrb r0, [r4, #0xa]
	cmp r0, #0x63
	beq _08043EF8
	cmp r0, #0x63
	bgt _08043EB8
	cmp r0, #1
	beq _08043EC2
	cmp r0, #2
	beq _08043EDA
	b _08043F5C
_08043EB8:
	cmp r0, #0x64
	beq _08043F0A
	cmp r0, #0x65
	beq _08043F2E
	b _08043F5C
_08043EC2:
	ldrh r0, [r4, #0x18]
	subs r0, #1
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08043F5C
	movs r0, #0x40
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _08043F5C
_08043EDA:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	movs r1, #1
	strb r1, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08043F5C
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	b _08043F5C
_08043EF8:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	adds r1, r4, #0
	adds r1, #0x2c
	strb r0, [r1]
	b _08043F54
_08043F0A:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _08043F14
	subs r0, #1
	b _08043F5A
_08043F14:
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x65
	strb r0, [r4, #0xa]
	movs r0, #4
	b _08043F5A
_08043F2E:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _08043F38
	subs r0, #1
	b _08043F5A
_08043F38:
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
_08043F54:
	movs r0, #0x64
	strb r0, [r4, #0xa]
	movs r0, #0x80
_08043F5A:
	strb r0, [r4, #0xd]
_08043F5C:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _08043F68
	adds r0, r4, #0
	bl sub_0803F17C
_08043F68:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08043F70
sub_08043F70: @ 0x08043F70
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r1
	adds r6, r2, #0
	ldr r2, _08043FDC @ =sub_08043DD0
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0804403E
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #2
	ldr r1, _08043FE0 @ =0x085250E4
	adds r5, r0, r1
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #9
	strb r0, [r1]
	ldr r0, _08043FE4 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08043FE8 @ =0x0820ED60
	ldrb r3, [r5, #8]
	adds r0, r4, #0
	bl sub_0803B924
	ldr r0, _08043FEC @ =sub_0803B9D0
	str r0, [r4, #4]
	ldrh r0, [r5, #0xa]
	cmp r0, #0
	beq _08043FF4
	adds r1, r4, #0
	adds r1, #0x56
	ldr r0, _08043FF0 @ =0x0000FFF8
	strh r0, [r1]
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r5, #9]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	b _08043FFC
	.align 2, 0
_08043FDC: .4byte sub_08043DD0
_08043FE0: .4byte 0x085250E4
_08043FE4: .4byte 0x081C15F4
_08043FE8: .4byte 0x0820ED60
_08043FEC: .4byte sub_0803B9D0
_08043FF0: .4byte 0x0000FFF8
_08043FF4:
	ldrb r0, [r5, #9]
	adds r1, r4, #0
	adds r1, #0x65
	strb r0, [r1]
_08043FFC:
	ldr r2, _0804404C @ =sub_080441F8
	adds r0, r4, #0
	movs r1, #0xb
	movs r3, #0
	bl sub_0804277C
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08044050 @ =0x1010F8F8
	adds r0, r4, #0
	bl sub_08042884
	adds r0, r4, #0
	adds r0, #0x42
	strh r7, [r0]
	adds r0, #4
	mov r1, r8
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x36
	movs r0, #1
	strb r0, [r1]
	strh r6, [r4, #0x32]
_0804403E:
	adds r0, r4, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804404C: .4byte sub_080441F8
_08044050: .4byte 0x1010F8F8

	thumb_func_start sub_08044054
sub_08044054: @ 0x08044054
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	mov sb, r1
	adds r6, r2, #0
	adds r5, r3, #0
	cmp r6, #1
	bne _08044078
	adds r2, r5, #0
	bl sub_08043F70
	adds r4, r0, #0
	cmp r4, #0
	bne _08044076
	b _080441DC
_08044076:
	b _080441D2
_08044078:
	ldr r2, _080440A0 @ =sub_08043DD0
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	bne _0804408A
	b _080441DC
_0804408A:
	cmp r6, #0xff
	beq _080440DC
	movs r0, #0
	cmp r6, #3
	beq _080440B8
	cmp r6, #3
	bgt _080440A4
	cmp r6, #2
	beq _080440AA
	b _080440D2
	.align 2, 0
_080440A0: .4byte sub_08043DD0
_080440A4:
	cmp r6, #4
	beq _080440C8
	b _080440D2
_080440AA:
	lsls r1, r5, #4
	ldr r0, _080440B4 @ =0x08505B3C
	adds r0, r1, r0
	b _080440D2
	.align 2, 0
_080440B4: .4byte 0x08505B3C
_080440B8:
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _080440C4 @ =0x08505D3C
	b _080440D0
	.align 2, 0
_080440C4: .4byte 0x08505D3C
_080440C8:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _080440D8 @ =0x085063B0
_080440D0:
	adds r0, r0, r1
_080440D2:
	adds r7, r0, #0
	b _08044172
	.align 2, 0
_080440D8: .4byte 0x085063B0
_080440DC:
	movs r0, #0
	cmp r5, #0
	bne _080440E6
	movs r7, #0
	b _0804411C
_080440E6:
	subs r1, r5, #1
	cmp r1, #0x1f
	bgt _080440F8
	lsls r1, r1, #4
	ldr r0, _080440F4 @ =0x08505B3C
	adds r0, r1, r0
	b _0804411A
	.align 2, 0
_080440F4: .4byte 0x08505B3C
_080440F8:
	cmp r1, #0x5a
	bgt _0804410C
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08044108 @ =0x085059BC
	b _08044118
	.align 2, 0
_08044108: .4byte 0x085059BC
_0804410C:
	cmp r1, #0x87
	bgt _0804411A
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08044128 @ =0x08505C94
_08044118:
	adds r0, r0, r1
_0804411A:
	adds r7, r0, #0
_0804411C:
	movs r1, #0
	cmp r5, #0
	bne _0804412C
	movs r2, #0
	b _08044146
	.align 2, 0
_08044128: .4byte 0x08505C94
_0804412C:
	subs r0, r5, #1
	cmp r0, #0x1f
	bgt _08044136
	movs r1, #2
	b _08044144
_08044136:
	cmp r0, #0x5a
	bgt _0804413E
	movs r1, #3
	b _08044144
_0804413E:
	cmp r0, #0x87
	bgt _08044144
	movs r1, #4
_08044144:
	adds r2, r1, #0
_08044146:
	adds r6, r2, #0
	movs r1, #0
	cmp r5, #0
	bne _08044152
	movs r2, #0
	b _08044170
_08044152:
	subs r0, r5, #1
	cmp r0, #0x1f
	bgt _0804415C
	adds r1, r0, #0
	b _0804416E
_0804415C:
	cmp r0, #0x5a
	bgt _08044166
	adds r1, r5, #0
	subs r1, #0x21
	b _0804416E
_08044166:
	cmp r0, #0x87
	bgt _0804416E
	adds r1, r5, #0
	subs r1, #0x5c
_0804416E:
	adds r2, r1, #0
_08044170:
	adds r5, r2, #0
_08044172:
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x13
	strb r0, [r1]
	ldrb r0, [r7, #2]
	bl sub_0801232C
	adds r1, r0, #0
	movs r2, #3
	ldrsb r2, [r7, r2]
	adds r0, r4, #0
	bl sub_080124F4
	ldr r0, _080441EC @ =sub_0803B9D0
	str r0, [r4, #4]
	ldr r2, _080441F0 @ =sub_080441F8
	adds r0, r4, #0
	movs r1, #0xb
	movs r3, #0
	bl sub_0804277C
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _080441F4 @ =0x1010F8F8
	adds r0, r4, #0
	bl sub_08042884
	adds r0, r4, #0
	adds r0, #0x42
	mov r1, r8
	strh r1, [r0]
	adds r0, #4
	mov r1, sb
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x36
	strb r6, [r0]
	strh r5, [r4, #0x32]
_080441D2:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _080441DC
	movs r0, #0x63
	strb r0, [r4, #0xa]
_080441DC:
	adds r0, r4, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080441EC: .4byte sub_0803B9D0
_080441F0: .4byte sub_080441F8
_080441F4: .4byte 0x1010F8F8

	thumb_func_start sub_080441F8
sub_080441F8: @ 0x080441F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _08044230 @ =gEwramData
	ldr r0, [r2]
	ldr r1, _08044234 @ =0x0001325C
	adds r6, r0, r1
	movs r5, #0
	mov r8, r5
	adds r3, r4, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #8
	orrs r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #8
	bls _08044226
	b _08044508
_08044226:
	lsls r0, r0, #2
	ldr r1, _08044238 @ =_0804423C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08044230: .4byte gEwramData
_08044234: .4byte 0x0001325C
_08044238: .4byte _0804423C
_0804423C: @ jump table
	.4byte _08044260 @ case 0
	.4byte _08044270 @ case 1
	.4byte _080442BC @ case 2
	.4byte _0804434C @ case 3
	.4byte _080443D8 @ case 4
	.4byte _08044494 @ case 5
	.4byte _08044494 @ case 6
	.4byte _08044494 @ case 7
	.4byte _08044494 @ case 8
_08044260:
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	bl sub_08043BB0
	movs r0, #0xb4
	bl sub_080D7910
	b _08044508
_08044270:
	ldr r3, _080442B0 @ =0x085250E4
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r1, [r0]
	ldr r0, [r2]
	ldr r5, _080442B4 @ =0x00013290
	adds r2, r0, r5
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, _080442B8 @ =0x000F423F
	cmp r0, r1
	bls _08044294
	str r1, [r2]
_08044294:
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r3, #4
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_0800EF98
	movs r0, #0xb6
	bl sub_080D7910
	b _08044508
	.align 2, 0
_080442B0: .4byte 0x085250E4
_080442B4: .4byte 0x00013290
_080442B8: .4byte 0x000F423F
_080442BC:
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r2, [r0]
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	movs r0, #0
	cmp r2, #3
	beq _080442E8
	cmp r2, #3
	bgt _080442D6
	cmp r2, #2
	beq _080442DC
	b _08044302
_080442D6:
	cmp r2, #4
	beq _080442F8
	b _08044302
_080442DC:
	lsls r1, r1, #4
	ldr r0, _080442E4 @ =0x08505B3C
	adds r0, r1, r0
	b _08044302
	.align 2, 0
_080442E4: .4byte 0x08505B3C
_080442E8:
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080442F4 @ =0x08505D3C
	b _08044300
	.align 2, 0
_080442F4: .4byte 0x08505D3C
_080442F8:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08044344 @ =0x085063B0
_08044300:
	adds r0, r0, r1
_08044302:
	adds r5, r0, #0
	movs r0, #0x32
	ldrsh r2, [r4, r0]
	adds r0, r6, #0
	adds r0, #0x38
	adds r1, r0, r2
	ldrb r1, [r1]
	adds r3, r0, #0
	cmp r1, #8
	ble _08044322
	ldrb r1, [r4, #0xb]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08044322
	b _0804443C
_08044322:
	adds r1, r3, r2
	ldrb r0, [r1]
	cmp r0, #8
	bhi _0804432E
	adds r0, #1
	strb r0, [r1]
_0804432E:
	ldr r0, _08044348 @ =0x08506734
	ldrh r1, [r5]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	bl sub_0800EF98
	movs r0, #0xb5
	bl sub_080D7910
	b _08044508
	.align 2, 0
_08044344: .4byte 0x085063B0
_08044348: .4byte 0x08506734
_0804434C:
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r2, [r0]
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	movs r0, #0
	cmp r2, #3
	beq _08044378
	cmp r2, #3
	bgt _08044366
	cmp r2, #2
	beq _0804436C
	b _08044392
_08044366:
	cmp r2, #4
	beq _08044388
	b _08044392
_0804436C:
	lsls r1, r1, #4
	ldr r0, _08044374 @ =0x08505B3C
	adds r0, r1, r0
	b _08044392
	.align 2, 0
_08044374: .4byte 0x08505B3C
_08044378:
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08044384 @ =0x08505D3C
	b _08044390
	.align 2, 0
_08044384: .4byte 0x08505D3C
_08044388:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080443D0 @ =0x085063B0
_08044390:
	adds r0, r0, r1
_08044392:
	adds r3, r0, #0
	movs r0, #0x32
	ldrsh r5, [r4, r0]
	adds r0, r6, #0
	adds r0, #0x58
	adds r1, r0, r5
	ldrb r1, [r1]
	adds r2, r0, #0
	cmp r1, #8
	ble _080443B0
	ldrb r1, [r4, #0xb]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804443C
_080443B0:
	adds r1, r2, r5
	ldrb r0, [r1]
	cmp r0, #8
	bhi _080443BC
	adds r0, #1
	strb r0, [r1]
_080443BC:
	ldr r0, _080443D4 @ =0x08506734
	ldrh r1, [r3]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	bl sub_0800EF98
	movs r0, #3
	b _08044480
	.align 2, 0
_080443D0: .4byte 0x085063B0
_080443D4: .4byte 0x08506734
_080443D8:
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r2, [r0]
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	movs r0, #0
	cmp r2, #3
	beq _08044404
	cmp r2, #3
	bgt _080443F2
	cmp r2, #2
	beq _080443F8
	b _0804441E
_080443F2:
	cmp r2, #4
	beq _08044414
	b _0804441E
_080443F8:
	lsls r1, r1, #4
	ldr r0, _08044400 @ =0x08505B3C
	adds r0, r1, r0
	b _0804441E
	.align 2, 0
_08044400: .4byte 0x08505B3C
_08044404:
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08044410 @ =0x08505D3C
	b _0804441C
	.align 2, 0
_08044410: .4byte 0x08505D3C
_08044414:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0804445C @ =0x085063B0
_0804441C:
	adds r0, r0, r1
_0804441E:
	adds r3, r0, #0
	movs r0, #0x32
	ldrsh r5, [r4, r0]
	adds r0, r6, #0
	adds r0, #0x93
	adds r1, r0, r5
	ldrb r1, [r1]
	adds r2, r0, #0
	cmp r1, #8
	ble _08044464
	ldrb r1, [r4, #0xb]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08044464
_0804443C:
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0804444A
	ldr r0, _08044460 @ =0x0000013B
	bl sub_080D7910
_0804444A:
	movs r0, #0x20
	strh r0, [r4, #0x1a]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r2]
	subs r0, #0x29
	ands r0, r1
	strb r0, [r2]
	b _08044584
	.align 2, 0
_0804445C: .4byte 0x085063B0
_08044460: .4byte 0x0000013B
_08044464:
	adds r1, r2, r5
	ldrb r0, [r1]
	cmp r0, #8
	bhi _08044470
	adds r0, #1
	strb r0, [r1]
_08044470:
	ldr r0, _08044490 @ =0x08506734
	ldrh r1, [r3]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	bl sub_0800EF98
	movs r0, #4
_08044480:
	adds r1, r5, #0
	bl sub_0804AE3C
	movs r0, #0xb7
	bl sub_080D7910
	b _08044508
	.align 2, 0
_08044490: .4byte 0x08506734
_08044494:
	movs r5, #0x32
	ldrsh r6, [r4, r5]
	adds r7, r4, #0
	adds r7, #0x36
	ldrb r0, [r7]
	subs r5, r0, #5
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080326B8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080444C8
	adds r0, r5, #0
	bl sub_08045C34
	movs r0, #1
	mov r8, r0
	ldrb r0, [r7]
	cmp r0, #8
	bne _080444E0
	adds r0, r6, #0
	movs r1, #1
	bl sub_08032ADC
	b _080444E0
_080444C8:
	ldr r0, _08044538 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804453C @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08044540 @ =0xFFF00000
	str r1, [sp]
	movs r1, #0xc
	movs r2, #6
	movs r3, #0
	bl sub_08045BC8
_080444E0:
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #1
	bl sub_0803278C
	movs r0, #1
	bl sub_08032DBC
	adds r0, r6, #0
	adds r1, r5, #0
	mov r2, r8
	bl sub_0800E708
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08049E64
	movs r0, #0xbc
	bl sub_080D7910
_08044508:
	ldrh r5, [r4, #0x30]
	lsls r3, r5, #0x10
	cmp r3, #0
	beq _08044568
	ldrb r1, [r4, #0xb]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08044544
	ldr r0, _08044538 @ =gEwramData
	ldr r2, [r0]
	asrs r0, r3, #0x15
	lsls r0, r0, #2
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r2, r2, r1
	adds r2, r2, r0
	movs r0, #0x1f
	ands r0, r5
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	orrs r0, r1
	b _08044566
	.align 2, 0
_08044538: .4byte gEwramData
_0804453C: .4byte 0x00013110
_08044540: .4byte 0xFFF00000
_08044544:
	ldr r0, _08044590 @ =gEwramData
	ldr r2, [r0]
	ldr r5, _08044594 @ =0x0000037E
	adds r3, r2, r5
	movs r0, #0x30
	ldrsh r1, [r4, r0]
	movs r0, #1
	lsls r0, r1
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
	ldr r1, _08044598 @ =0x0000042C
	adds r2, r2, r1
	ldr r0, [r2]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
_08044566:
	str r0, [r2]
_08044568:
	ldrb r1, [r4, #0xb]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08044584
	ldr r0, _08044590 @ =gEwramData
	ldr r1, [r0]
	ldr r5, _08044598 @ =0x0000042C
	adds r1, r1, r5
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r0, r2
	str r0, [r1]
_08044584:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08044590: .4byte gEwramData
_08044594: .4byte 0x0000037E
_08044598: .4byte 0x0000042C

	thumb_func_start sub_0804459C
sub_0804459C: @ 0x0804459C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	mov r8, r1
	mov sb, r2
	mov sl, r3
	ldr r2, _08044684 @ =sub_080446D4
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r6, r0, #0
	cmp r6, #0
	bne _080445C0
	b _080446C2
_080445C0:
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #3
	strb r0, [r1]
	ldr r0, _08044688 @ =0x081C15F4
	bl sub_0803AFB8
	adds r5, r0, #0
	ldr r4, _0804468C @ =0x0820ED60
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
	ldr r0, _08044690 @ =sub_0803B9D0
	str r0, [r6, #4]
	ldr r2, _08044694 @ =sub_080441F8
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
	ldr r1, _08044698 @ =0x1010F8F8
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
	bne _080446AC
	ldr r0, _0804469C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080446A0 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r5, [r0, #0x40]
	ldr r4, [r0, #0x44]
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	lsls r1, r1, #0xc
	subs r4, r4, r1
	ldr r0, _080446A4 @ =0xFFF80000
	adds r4, r4, r0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0802D344
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r0, r1
	ldr r1, _080446A8 @ =0x0000FFFF
	ands r0, r1
	str r0, [r6, #0x18]
	ldr r0, [sp, #0x20]
	str r0, [r6, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r6, #0x20]
	b _080446B0
	.align 2, 0
_08044684: .4byte sub_080446D4
_08044688: .4byte 0x081C15F4
_0804468C: .4byte 0x0820ED60
_08044690: .4byte sub_0803B9D0
_08044694: .4byte sub_080441F8
_08044698: .4byte 0x1010F8F8
_0804469C: .4byte gEwramData
_080446A0: .4byte 0x00013110
_080446A4: .4byte 0xFFF80000
_080446A8: .4byte 0x0000FFFF
_080446AC:
	movs r0, #0x63
	strb r0, [r6, #0xa]
_080446B0:
	mov r0, sb
	adds r0, #5
	adds r1, r6, #0
	adds r1, #0x36
	strb r0, [r1]
	mov r1, sl
	strh r1, [r6, #0x32]
	movs r0, #0xc8
	strb r0, [r6, #0xd]
_080446C2:
	adds r0, r6, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080446D4
sub_080446D4: @ 0x080446D4
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bhi _08044756
	ldr r0, _080447EC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080447F0 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r2, [r0, #0x44]
	ldr r0, _080447F4 @ =0xFFF00000
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
	ble _08044710
	str r2, [r5, #0x1c]
_08044710:
	ldr r0, [r5, #0x20]
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r5, #0x20]
	movs r1, #0x80
	lsls r1, r1, #0xc
	cmp r0, r1
	ble _08044724
	str r1, [r5, #0x20]
_08044724:
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
_08044756:
	add r0, sp, #8
	adds r1, r5, #0
	bl sub_080421AC
	ldrb r1, [r5, #0xd]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080447D8
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
	bge _08044788
	adds r2, #0x3f
_08044788:
	asrs r2, r2, #6
	ldr r3, [r5, #0x4c]
	cmp r3, #0
	bge _08044792
	adds r3, #0x3f
_08044792:
	asrs r3, r3, #6
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_08045B44
	adds r2, r0, #0
	cmp r2, #0
	beq _080447D8
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	cmp r0, #0
	bge _080447BA
	adds r0, #3
_080447BA:
	asrs r0, r0, #2
	str r0, [r2, #0x48]
	ldr r0, [r5, #0x4c]
	rsbs r0, r0, #0
	cmp r0, #0
	bge _080447C8
	adds r0, #3
_080447C8:
	asrs r0, r0, #2
	str r0, [r2, #0x4c]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x5c
	strb r1, [r0]
_080447D8:
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _080447F8
	cmp r0, #1
	beq _08044814
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	b _0804482C
	.align 2, 0
_080447EC: .4byte gEwramData
_080447F0: .4byte 0x00013110
_080447F4: .4byte 0xFFF00000
_080447F8:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804482C
	movs r0, #1
	strb r0, [r5, #0xf]
	movs r0, #0x40
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	b _0804482C
_08044814:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804482C
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_0804482C:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _08044838
	adds r0, r5, #0
	bl sub_0803F17C
_08044838:
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08044840
sub_08044840: @ 0x08044840
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r6, r0, #0
	add r0, sp, #8
	adds r1, r6, #0
	bl sub_080421AC
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldrb r1, [r6, #0xa]
	cmp r1, #0
	beq _0804485E
	cmp r1, #1
	beq _08044938
	b _08044978
_0804485E:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	movs r4, #7
	ands r0, r4
	cmp r0, #0
	bne _080448C2
	movs r0, #8
	bl sub_0802D5EC
	lsls r0, r0, #0x10
	ldr r5, [r6, #0x40]
	adds r5, r5, r0
	bl RandomNumberGenerator
	ands r0, r4
	adds r0, #0x14
	lsls r0, r0, #0x10
	ldr r4, [r6, #0x44]
	subs r4, r4, r0
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_0802D5EC
	adds r2, r0, #0
	movs r0, #4
	str r0, [sp]
	ldrb r0, [r6, #0x1c]
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #0
	bl sub_08045B44
	adds r4, r0, #0
	cmp r4, #0
	beq _080448C2
	movs r0, #0x80
	lsls r0, r0, #7
	bl sub_0802D5EC
	ldr r1, _08044934 @ =0xFFFF0000
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	rsbs r0, r0, #0
	cmp r0, #0
	bge _080448BE
	adds r0, #0x1f
_080448BE:
	asrs r0, r0, #5
	str r0, [r4, #0x54]
_080448C2:
	ldr r0, [r6, #0x18]
	cmp r0, #0
	beq _080448D2
	adds r4, r0, #0
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x44]
_080448D2:
	movs r0, #0x1e
	ands r0, r7
	cmp r0, #0
	beq _0804492C
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r6, #0
	adds r1, #0x46
	ldrh r1, [r1]
	adds r2, r6, #0
	adds r2, #0x36
	ldrb r2, [r2]
	movs r4, #0x32
	ldrsh r3, [r6, r4]
	movs r4, #0
	str r4, [sp]
	bl sub_0804459C
	adds r4, r0, #0
	cmp r4, #0
	beq _0804492C
	movs r0, #0xa2
	bl sub_080D7910
	ldrh r0, [r6, #0x30]
	strh r0, [r4, #0x30]
	movs r0, #1
	strb r0, [r6, #0xa]
	movs r0, #0x10
	strb r0, [r6, #0xd]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r6, #0x18]
	cmp r0, #0
	beq _0804492C
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0804492C:
	adds r0, r6, #0
	bl sub_0803F17C
	b _08044978
	.align 2, 0
_08044934: .4byte 0xFFFF0000
_08044938:
	ldrb r0, [r6, #0xd]
	ands r1, r0
	cmp r1, #0
	bne _0804495C
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x44]
	ldr r2, _08044968 @ =0xFFE80000
	adds r1, r1, r2
	movs r3, #0x80
	lsls r3, r3, #0xc
	adds r2, r6, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	adds r2, r3, #0
	bl sub_0806D5C0
_0804495C:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _0804496C
	subs r0, #1
	strb r0, [r6, #0xd]
	b _08044978
	.align 2, 0
_08044968: .4byte 0xFFE80000
_0804496C:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_08044978:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08044980
sub_08044980: @ 0x08044980
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	mov sl, r1
	adds r7, r2, #0
	adds r4, r3, #0
	ldr r2, _08044A8C @ =sub_08044840
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	beq _08044A7A
	adds r1, r5, #0
	adds r1, #0x59
	ldrb r0, [r1]
	movs r6, #2
	orrs r0, r6
	strb r0, [r1]
	movs r0, #0x5c
	adds r0, r0, r5
	mov r8, r0
	movs r0, #0x13
	mov r1, r8
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x36
	strb r7, [r0]
	strh r4, [r5, #0x32]
	ldr r0, _08044A90 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	adds r0, r5, #0
	ldr r1, _08044A94 @ =0x0820ED60
	movs r3, #8
	bl sub_0803B924
	adds r0, r5, #0
	movs r1, #0x13
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	ldr r0, _08044A98 @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	adds r1, r5, #0
	adds r1, #0x72
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	ldr r1, _08044A9C @ =0x2010E0F8
	adds r0, r5, #0
	bl sub_080428F0
	adds r0, r5, #0
	adds r0, #0x42
	mov r1, sb
	strh r1, [r0]
	adds r0, #4
	mov r1, sl
	strh r1, [r0]
	adds r0, r5, #0
	bl sub_0806AF98
	adds r0, r7, #0
	bl sub_08032B14
	strb r0, [r5, #0x1c]
	ldr r2, _08044AA0 @ =sub_08044FF4
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _08044A7A
	adds r1, r4, #0
	adds r1, #0x59
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	mov r0, r8
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	ldr r0, _08044A90 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldrb r3, [r5, #0x1c]
	adds r0, r4, #0
	ldr r1, _08044A94 @ =0x0820ED60
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0x12
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r1, _08044A98 @ =sub_0803B9D0
	str r1, [r4, #4]
	str r4, [r5, #0x18]
_08044A7A:
	adds r0, r5, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08044A8C: .4byte sub_08044840
_08044A90: .4byte 0x081C15F4
_08044A94: .4byte 0x0820ED60
_08044A98: .4byte sub_0803B9D0
_08044A9C: .4byte 0x2010E0F8
_08044AA0: .4byte sub_08044FF4

	thumb_func_start sub_08044AA4
sub_08044AA4: @ 0x08044AA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	mov r8, r1
	mov sb, r2
	mov sl, r3
	ldr r2, _08044B54 @ =sub_08044BB4
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r6, r0, #0
	cmp r6, #0
	beq _08044B9A
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #3
	strb r0, [r1]
	ldr r0, _08044B58 @ =0x081C15F4
	bl sub_0803AFB8
	adds r5, r0, #0
	ldr r4, _08044B5C @ =0x0820ED60
	ldr r0, [sp, #0x20]
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
	ldr r0, _08044B60 @ =sub_0803B9D0
	str r0, [r6, #4]
	adds r0, r6, #0
	adds r0, #0x42
	mov r1, r8
	strh r1, [r0]
	adds r0, #4
	mov r1, sb
	strh r1, [r0]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r7, #0x40]
	ldr r2, [r7, #0x44]
	add r2, sl
	adds r0, r6, #0
	bl sub_0802D344
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r6, #0x18]
	ldr r0, _08044B64 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08044B68 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r7, r0
	bne _08044B70
	bl RandomNumberGenerator
	ldr r2, [r6, #0x18]
	movs r1, #0xc0
	lsls r1, r1, #7
	adds r2, r2, r1
	ldr r1, _08044B6C @ =0x00003FFF
	b _08044B7C
	.align 2, 0
_08044B54: .4byte sub_08044BB4
_08044B58: .4byte 0x081C15F4
_08044B5C: .4byte 0x0820ED60
_08044B60: .4byte sub_0803B9D0
_08044B64: .4byte gEwramData
_08044B68: .4byte 0x00013110
_08044B6C: .4byte 0x00003FFF
_08044B70:
	bl RandomNumberGenerator
	ldr r2, [r6, #0x18]
	ldr r1, _08044BAC @ =0xFFFFF000
	adds r2, r2, r1
	ldr r1, _08044BB0 @ =0x00001FFF
_08044B7C:
	ands r1, r0
	adds r2, r2, r1
	str r2, [r6, #0x18]
	ldrh r0, [r6, #0x18]
	str r0, [r6, #0x18]
	movs r0, #0
	str r0, [r6, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r6, #0x20]
	movs r0, #0xc8
	strb r0, [r6, #0xd]
	str r7, [r6, #0x14]
	mov r0, sl
	str r0, [r6, #0x24]
_08044B9A:
	adds r0, r6, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08044BAC: .4byte 0xFFFFF000
_08044BB0: .4byte 0x00001FFF

	thumb_func_start sub_08044BB4
sub_08044BB4: @ 0x08044BB4
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldr r2, [r5, #0x14]
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bhi _08044C2E
	ldr r1, [r2, #0x40]
	ldr r2, [r2, #0x44]
	ldr r0, [r5, #0x24]
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
	ble _08044BE8
	str r2, [r5, #0x1c]
_08044BE8:
	ldr r0, [r5, #0x20]
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r5, #0x20]
	movs r1, #0x80
	lsls r1, r1, #0xc
	cmp r0, r1
	ble _08044BFC
	str r1, [r5, #0x20]
_08044BFC:
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
_08044C2E:
	ldrb r1, [r5, #0xd]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08044C9C
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
	bge _08044C58
	adds r2, #0x3f
_08044C58:
	asrs r2, r2, #6
	ldr r3, [r5, #0x4c]
	cmp r3, #0
	bge _08044C62
	adds r3, #0x3f
_08044C62:
	asrs r3, r3, #6
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_08045B44
	adds r1, r0, #0
	cmp r1, #0
	beq _08044C9C
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	cmp r0, #0
	bge _08044C8A
	adds r0, #3
_08044C8A:
	asrs r0, r0, #2
	str r0, [r1, #0x48]
	ldr r0, [r5, #0x4c]
	rsbs r0, r0, #0
	cmp r0, #0
	bge _08044C98
	adds r0, #3
_08044C98:
	asrs r0, r0, #2
	str r0, [r1, #0x4c]
_08044C9C:
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _08044CAE
	cmp r0, #1
	beq _08044CCA
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	b _08044CE2
_08044CAE:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08044CE2
	movs r0, #1
	strb r0, [r5, #0xf]
	movs r0, #0x40
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	b _08044CE2
_08044CCA:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08044CE2
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_08044CE2:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _08044CEE
	adds r0, r5, #0
	bl sub_0803F17C
_08044CEE:
	ldr r0, [r5, #0x14]
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r1, [r1]
	subs r1, #0xa
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r5, #0
	adds r2, #0x46
	ldrh r2, [r2]
	subs r2, #0xa
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r3, #0x14
	str r3, [sp]
	bl sub_08068AD4
	cmp r0, #0
	beq _08044D36
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x24]
	str r1, [sp]
	movs r1, #0xc
	movs r2, #6
	movs r3, #0
	bl sub_08045BC8
	movs r0, #0xbc
	bl sub_080D7910
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_08044D36:
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08044D40
sub_08044D40: @ 0x08044D40
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	mov r0, sp
	adds r1, r5, #0
	bl sub_080421AC
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r5, #0
	bl sub_0806D3D8
	adds r6, r5, #0
	adds r6, #0x42
	ldr r0, _08044DAC @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08044DB0 @ =0x0000A094
	adds r1, r1, r0
	ldrh r0, [r1, #6]
	ldrh r2, [r6]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, r5, #0
	adds r2, #0x46
	ldrh r0, [r1, #0xa]
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r5, #0
	movs r1, #0x40
	bl sub_0806D490
	ldr r0, [r5, #0x48]
	cmp r0, #0
	ble _08044DB4
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	subs r1, #4
	bl sub_08002058
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	beq _08044DE4
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	adds r0, r0, r1
	b _08044DD6
	.align 2, 0
_08044DAC: .4byte gEwramData
_08044DB0: .4byte 0x0000A094
_08044DB4:
	cmp r0, #0
	bge _08044DE4
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	subs r1, #4
	bl sub_0800207C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	beq _08044DE4
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r6]
	adds r0, r0, r2
_08044DD6:
	strh r0, [r6]
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r5, #0x48]
_08044DE4:
	adds r1, r5, #0
	adds r1, #0x42
	ldr r0, _08044E38 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08044E3C @ =0x0000A094
	adds r0, r0, r2
	ldrh r0, [r0, #6]
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	ble _08044E5A
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	bl sub_08001D94
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	beq _08044E86
	ldr r0, _08044E40 @ =0x0000014F
	bl sub_080D7910
	adds r1, r5, #0
	adds r1, #0x46
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r1]
	adds r0, r0, r2
	movs r2, #0
	strh r0, [r1]
	ldr r1, [r5, #0x4c]
	ldr r0, _08044E44 @ =0x00007FFF
	cmp r1, r0
	bgt _08044E48
	str r2, [r5, #0x4c]
	str r2, [r5, #0x54]
	b _08044E86
	.align 2, 0
_08044E38: .4byte gEwramData
_08044E3C: .4byte 0x0000A094
_08044E40: .4byte 0x0000014F
_08044E44: .4byte 0x00007FFF
_08044E48:
	rsbs r1, r1, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0xa
	bl __divsi3
	str r0, [r5, #0x4c]
	b _08044E86
_08044E5A:
	cmp r0, #0
	bge _08044E86
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	subs r1, #4
	bl sub_08001C1C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	beq _08044E86
	adds r2, r5, #0
	adds r2, #0x46
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r2]
	adds r0, r0, r1
	movs r1, #0
	strh r0, [r2]
	str r1, [r5, #0x4c]
_08044E86:
	adds r0, r5, #0
	bl sub_0803F17C
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08044E94
sub_08044E94: @ 0x08044E94
	push {lr}
	movs r2, #0
	cmp r0, #3
	beq _08044EB8
	cmp r0, #3
	bgt _08044EA6
	cmp r0, #2
	beq _08044EAC
	b _08044ED2
_08044EA6:
	cmp r0, #4
	beq _08044EC8
	b _08044ED2
_08044EAC:
	lsls r1, r1, #4
	ldr r0, _08044EB4 @ =0x08505B3C
	adds r2, r1, r0
	b _08044ED2
	.align 2, 0
_08044EB4: .4byte 0x08505B3C
_08044EB8:
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08044EC4 @ =0x08505D3C
	b _08044ED0
	.align 2, 0
_08044EC4: .4byte 0x08505D3C
_08044EC8:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08044ED8 @ =0x085063B0
_08044ED0:
	adds r2, r0, r1
_08044ED2:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0
_08044ED8: .4byte 0x085063B0

	thumb_func_start sub_08044EDC
sub_08044EDC: @ 0x08044EDC
	push {lr}
	adds r1, r0, #0
	movs r0, #0
	cmp r1, #0
	beq _08044F1A
	subs r1, #1
	cmp r1, #0x1f
	bgt _08044EF8
	lsls r1, r1, #4
	ldr r0, _08044EF4 @ =0x08505B3C
	adds r0, r1, r0
	b _08044F1A
	.align 2, 0
_08044EF4: .4byte 0x08505B3C
_08044EF8:
	cmp r1, #0x5a
	bgt _08044F0C
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08044F08 @ =0x085059BC
	adds r0, r0, r1
	b _08044F1A
	.align 2, 0
_08044F08: .4byte 0x085059BC
_08044F0C:
	cmp r1, #0x87
	bgt _08044F1A
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08044F20 @ =0x08505C94
	adds r0, r0, r1
_08044F1A:
	pop {r1}
	bx r1
	.align 2, 0
_08044F20: .4byte 0x08505C94

	thumb_func_start sub_08044F24
sub_08044F24: @ 0x08044F24
	push {lr}
	movs r1, #0
	cmp r0, #0
	bne _08044F30
	movs r0, #0
	b _08044F4A
_08044F30:
	subs r0, #1
	cmp r0, #0x1f
	bgt _08044F3A
	movs r1, #2
	b _08044F48
_08044F3A:
	cmp r0, #0x5a
	bgt _08044F42
	movs r1, #3
	b _08044F48
_08044F42:
	cmp r0, #0x87
	bgt _08044F48
	movs r1, #4
_08044F48:
	adds r0, r1, #0
_08044F4A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08044F50
sub_08044F50: @ 0x08044F50
	push {lr}
	movs r1, #0
	cmp r0, #0
	bne _08044F5C
	movs r0, #0
	b _08044F7A
_08044F5C:
	subs r0, #1
	cmp r0, #0x1f
	bgt _08044F66
	adds r1, r0, #0
	b _08044F78
_08044F66:
	cmp r0, #0x5a
	bgt _08044F70
	adds r1, r0, #0
	subs r1, #0x20
	b _08044F78
_08044F70:
	cmp r0, #0x87
	bgt _08044F78
	adds r1, r0, #0
	subs r1, #0x5b
_08044F78:
	adds r0, r1, #0
_08044F7A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08044F80
sub_08044F80: @ 0x08044F80
	push {lr}
	ldr r1, _08044F9C @ =gEwramData
	ldr r1, [r1]
	ldr r3, _08044FA0 @ =0x00013290
	adds r2, r1, r3
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
	ldr r0, _08044FA4 @ =0x000F423F
	cmp r1, r0
	bls _08044F98
	str r0, [r2]
_08044F98:
	pop {r0}
	bx r0
	.align 2, 0
_08044F9C: .4byte gEwramData
_08044FA0: .4byte 0x00013290
_08044FA4: .4byte 0x000F423F

	thumb_func_start sub_08044FA8
sub_08044FA8: @ 0x08044FA8
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, _08044FC4 @ =gEwramData
	ldr r0, [r0]
	ldr r4, _08044FC8 @ =0x0001325C
	adds r3, r0, r4
	cmp r2, #3
	beq _08044FDA
	cmp r2, #3
	bgt _08044FCC
	cmp r2, #2
	beq _08044FD2
	b _08044FEA
	.align 2, 0
_08044FC4: .4byte gEwramData
_08044FC8: .4byte 0x0001325C
_08044FCC:
	cmp r2, #4
	beq _08044FE2
	b _08044FEA
_08044FD2:
	adds r0, r1, #0
	adds r0, #0x38
	adds r0, r3, r0
	b _08044FEE
_08044FDA:
	adds r0, r1, #0
	adds r0, #0x58
	adds r0, r3, r0
	b _08044FEE
_08044FE2:
	adds r0, r1, #0
	adds r0, #0x93
	adds r0, r3, r0
	b _08044FEE
_08044FEA:
	adds r0, r3, #0
	adds r0, #0x38
_08044FEE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08044FF4
sub_08044FF4: @ 0x08044FF4
	push {lr}
	bl sub_0803F17C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08045000
sub_08045000: @ 0x08045000
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, [r6, #0x18]
	lsls r0, r0, #3
	ldr r1, _08045018 @ =0x085251A8
	adds r7, r0, r1
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _0804501C
	cmp r0, #1
	beq _0804508C
	b _080450C0
	.align 2, 0
_08045018: .4byte 0x085251A8
_0804501C:
	ldr r0, _08045078 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0804507C @ =0x0820ED60
	adds r0, r6, #0
	adds r0, #0x5a
	ldrb r3, [r0]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1c
	adds r0, r6, #0
	bl sub_0803B924
	bl RandomNumberGenerator
	movs r5, #0x1f
	ands r0, r5
	lsls r0, r0, #0x10
	ldr r4, _08045080 @ =0xFFF00000
	adds r0, r0, r4
	str r0, [r6, #0x1c]
	bl RandomNumberGenerator
	ands r0, r5
	lsls r0, r0, #0x10
	adds r0, r0, r4
	str r0, [r6, #0x20]
	ldr r0, _08045084 @ =sub_08045E4C
	str r0, [r6, #4]
	ldrb r0, [r7]
	adds r1, r6, #0
	adds r1, #0x65
	strb r0, [r1]
	ldr r0, _08045088 @ =0xFFFF0000
	str r0, [r6, #0x4c]
	ldrb r0, [r7, #1]
	strb r0, [r6, #0xd]
	movs r0, #1
	strb r0, [r6, #0xa]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	b _080450C0
	.align 2, 0
_08045078: .4byte 0x081C15F4
_0804507C: .4byte 0x0820ED60
_08045080: .4byte 0xFFF00000
_08045084: .4byte sub_08045E4C
_08045088: .4byte 0xFFFF0000
_0804508C:
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
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080450C0
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080450C0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080450C8
sub_080450C8: @ 0x080450C8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x18]
	lsls r0, r0, #3
	ldr r1, _080450E0 @ =0x085251A8
	adds r5, r0, r1
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080450E4
	cmp r0, #1
	beq _0804512C
	b _08045148
	.align 2, 0
_080450E0: .4byte 0x085251A8
_080450E4:
	ldr r0, _08045120 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08045124 @ =0x0820ED60
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r3, [r0]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1c
	adds r0, r4, #0
	bl sub_0803B924
	ldr r1, [r5, #4]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F0E4
	ldr r0, _08045128 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	strb r0, [r4, #0xa]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	b _08045148
	.align 2, 0
_08045120: .4byte 0x081C15F4
_08045124: .4byte 0x0820ED60
_08045128: .4byte sub_0803B9D0
_0804512C:
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
_08045148:
	adds r0, r4, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _0804515E
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0804515E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08045164
sub_08045164: @ 0x08045164
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x18]
	cmp r5, #0
	beq _080451D8
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0804517A
	cmp r0, #1
	beq _080451BC
	b _080451CC
_0804517A:
	movs r0, #0xbf
	bl sub_080D7910
	ldr r0, _080451E8 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _080451EC @ =0x0820ED60
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
	ldr r0, _080451F0 @ =sub_0803B9D0
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
_080451BC:
	ldr r0, [r5, #0x40]
	ldr r1, [r4, #0x50]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, [r4, #0x54]
	adds r0, r0, r1
	str r0, [r4, #0x44]
_080451CC:
	adds r0, r4, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _080451E2
	adds r0, r4, #0
_080451D8:
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080451E2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080451E8: .4byte 0x081C15F4
_080451EC: .4byte 0x0820ED60
_080451F0: .4byte sub_0803B9D0

	thumb_func_start sub_080451F4
sub_080451F4: @ 0x080451F4
	push {r4, lr}
	adds r3, r0, #0
	ldrb r4, [r3, #0xd]
	ldrb r0, [r3, #0x19]
	cmp r4, r0
	bls _0804520E
	adds r0, r3, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _08045266
_0804520E:
	ldr r0, [r3, #0x40]
	ldr r1, [r3, #0x48]
	adds r0, r0, r1
	str r0, [r3, #0x40]
	ldr r0, [r3, #0x44]
	ldr r2, [r3, #0x4c]
	adds r0, r0, r2
	str r0, [r3, #0x44]
	ldr r0, [r3, #0x50]
	adds r1, r1, r0
	str r1, [r3, #0x48]
	ldr r0, [r3, #0x54]
	adds r2, r2, r0
	str r2, [r3, #0x4c]
	adds r1, r4, #1
	strb r1, [r3, #0xd]
	ldrb r0, [r3, #0x1a]
	cmp r0, #0
	bne _08045240
	ldr r1, _0804523C @ =0xFFFFF000
	adds r0, r2, r1
	str r0, [r3, #0x4c]
	b _08045260
	.align 2, 0
_0804523C: .4byte 0xFFFFF000
_08045240:
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	bne _08045260
	ldrb r0, [r3, #0xb]
	cmp r0, #0
	beq _08045260
	subs r0, #1
	strb r0, [r3, #0xb]
	ldr r1, _0804526C @ =0x08525138
	ldrb r0, [r3, #0xb]
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x65
	strb r0, [r1]
_08045260:
	adds r0, r3, #0
	bl sub_0803AC40
_08045266:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804526C: .4byte 0x08525138

	thumb_func_start sub_08045270
sub_08045270: @ 0x08045270
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r0, _08045334 @ =gEwramData
	mov r8, r0
	ldr r2, _08045338 @ =EntityUpdateNothing
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	beq _0804532A
	adds r4, r5, #0
	adds r4, #0x5c
	movs r0, #2
	strb r0, [r4]
	ldr r0, _0804533C @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08045340 @ =0x0820ED60
	adds r0, r5, #0
	adds r3, r6, #0
	bl sub_0803B924
	ldr r0, _08045344 @ =sub_080451F4
	str r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x65
	strb r7, [r0]
	movs r0, #3
	strb r0, [r4]
	movs r0, #0x14
	strb r0, [r5, #0x19]
	mov r1, r8
	ldr r0, [r1]
	ldr r1, _08045348 @ =0x00013110
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r1, [r1, #0x40]
	str r1, [r5, #0x40]
	ldr r0, [r0]
	ldr r0, [r0, #0x44]
	ldr r1, _0804534C @ =0xFFFA0000
	adds r0, r0, r1
	str r0, [r5, #0x44]
	bl RandomNumberGenerator
	movs r1, #0xff
	ands r1, r0
	lsls r4, r1, #8
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #3
	cmp r0, #0
	bge _080452F6
	adds r0, #0xf
_080452F6:
	asrs r0, r0, #4
	str r0, [r5, #0x48]
	adds r0, r4, #0
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	cmp r1, #0
	bge _0804530C
	adds r1, #0xf
_0804530C:
	asrs r1, r1, #4
	str r1, [r5, #0x4c]
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0804531A
	adds r0, #0x3f
_0804531A:
	asrs r0, r0, #6
	str r0, [r5, #0x50]
	rsbs r0, r1, #0
	cmp r0, #0
	bge _08045326
	adds r0, #0x3f
_08045326:
	asrs r0, r0, #6
	str r0, [r5, #0x54]
_0804532A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08045334: .4byte gEwramData
_08045338: .4byte EntityUpdateNothing
_0804533C: .4byte 0x081C15F4
_08045340: .4byte 0x0820ED60
_08045344: .4byte sub_080451F4
_08045348: .4byte 0x00013110
_0804534C: .4byte 0xFFFA0000

	thumb_func_start sub_08045350
sub_08045350: @ 0x08045350
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, _08045434 @ =gEwramData
	mov r8, r0
	ldr r2, _08045438 @ =EntityUpdateNothing
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r6, r0, #0
	cmp r6, #0
	beq _0804542A
	movs r0, #1
	strb r0, [r6, #0x1a]
	movs r5, #3
	strb r5, [r6, #0xb]
	adds r4, r6, #0
	adds r4, #0x5c
	movs r0, #2
	strb r0, [r4]
	ldr r0, _0804543C @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08045440 @ =0x0820ED60
	adds r0, r6, #0
	adds r3, r7, #0
	bl sub_0803B924
	ldr r0, _08045444 @ =sub_080451F4
	str r0, [r6, #4]
	ldr r1, _08045448 @ =0x08525138
	ldrb r0, [r6, #0xb]
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x65
	strb r0, [r1]
	strb r5, [r4]
	movs r0, #0x14
	strb r0, [r6, #0x19]
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
	adds r3, r0, #0
	mov r0, r8
	ldr r2, [r0]
	ldr r1, _0804544C @ =0x00013110
	adds r2, r2, r1
	ldr r0, [r2]
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #4
	ldr r0, [r0, #0x40]
	adds r0, r0, r1
	str r0, [r6, #0x40]
	ldr r0, [r2]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #4
	ldr r0, [r0, #0x44]
	adds r0, r0, r1
	ldr r1, _08045450 @ =0xFFF00000
	adds r0, r0, r1
	str r0, [r6, #0x44]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	rsbs r0, r0, #0
	cmp r0, #0
	bge _080453FC
	adds r0, #0xf
_080453FC:
	asrs r2, r0, #4
	str r2, [r6, #0x48]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0804540E
	adds r0, #0xf
_0804540E:
	asrs r1, r0, #4
	str r1, [r6, #0x4c]
	adds r0, r2, #0
	cmp r0, #0
	bge _0804541A
	adds r0, #0xf
_0804541A:
	asrs r0, r0, #4
	str r0, [r6, #0x50]
	adds r0, r1, #0
	cmp r0, #0
	bge _08045426
	adds r0, #0xf
_08045426:
	asrs r0, r0, #4
	str r0, [r6, #0x54]
_0804542A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08045434: .4byte gEwramData
_08045438: .4byte EntityUpdateNothing
_0804543C: .4byte 0x081C15F4
_08045440: .4byte 0x0820ED60
_08045444: .4byte sub_080451F4
_08045448: .4byte 0x08525138
_0804544C: .4byte 0x00013110
_08045450: .4byte 0xFFF00000

	thumb_func_start sub_08045454
sub_08045454: @ 0x08045454
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _08045484 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08045488 @ =0x00013110
	adds r0, r0, r1
	ldr r6, [r0]
	ldrb r0, [r4, #0xd]
	cmp r0, #0xf
	bgt _0804548C
	lsls r0, r0, #0xa
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r0, r2
	bl sub_080009E4
	movs r1, #0x80
	lsls r1, r1, #9
	subs r1, r1, r0
	b _08045490
	.align 2, 0
_08045484: .4byte gEwramData
_08045488: .4byte 0x00013110
_0804548C:
	movs r1, #0x80
	lsls r1, r1, #9
_08045490:
	mov r8, r1
	ldrb r0, [r4, #0xd]
	cmp r0, #7
	bgt _0804549E
	movs r2, #0x80
	lsls r2, r2, #6
	b _080454B4
_0804549E:
	cmp r0, #0xf
	bgt _080454B0
	lsls r0, r0, #0xb
	bl sub_080009E4
	movs r1, #0x80
	lsls r1, r1, #9
	subs r2, r1, r0
	b _080454B4
_080454B0:
	movs r2, #0x80
	lsls r2, r2, #9
_080454B4:
	adds r7, r2, #0
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
	ldrb r1, [r4, #0xd]
	adds r5, r0, #0
	ldrb r0, [r4, #0x19]
	cmp r1, r0
	bhi _080454D0
	adds r0, r1, #1
	strb r0, [r4, #0xd]
_080454D0:
	ldrb r1, [r4, #0xd]
	adds r0, r1, #0
	cmp r0, #2
	bhi _080454FC
	cmp r0, #2
	bne _080455AE
	movs r0, #0
	bl sub_0800C5A8
	ldr r0, _080454F4 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _080454F8 @ =0x0000A074
	adds r1, r1, r2
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	b _080455AE
	.align 2, 0
_080454F4: .4byte gEwramData
_080454F8: .4byte 0x0000A074
_080454FC:
	cmp r0, #0x27
	bhi _08045510
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08045510
	movs r0, #0x49
	movs r1, #6
	bl sub_08045270
_08045510:
	ldrb r1, [r4, #0xd]
	adds r0, r1, #0
	ldrb r2, [r4, #0x19]
	cmp r0, r2
	bls _08045568
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	ldr r4, _0804555C @ =gEwramData
	ldr r0, [r4]
	ldr r1, _08045560 @ =0x0000042C
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08045542
	movs r0, #1
	bl sub_0800C5A8
_08045542:
	ldr r1, [r4]
	ldr r2, _08045564 @ =0x0000A074
	adds r1, r1, r2
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldrb r0, [r5]
	movs r1, #8
	orrs r0, r1
	strb r0, [r5]
	b _080455AE
	.align 2, 0
_0804555C: .4byte gEwramData
_08045560: .4byte 0x0000042C
_08045564: .4byte 0x0000A074
_08045568:
	cmp r0, #0x34
	bls _08045574
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080455AE
_08045574:
	adds r0, r6, #0
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0x20
	adds r2, r4, #0
	adds r2, #0x46
	movs r1, #0
	strh r0, [r2]
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r2, #4
	strh r0, [r2]
	str r1, [sp]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	mov r1, r8
	adds r2, r7, #0
	movs r3, #0
	bl sub_0803E058
	adds r0, r4, #0
	bl sub_0803AC40
_080455AE:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080455BC
sub_080455BC: @ 0x080455BC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, _08045640 @ =0x085251F4
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r5, [r0]
	ldr r2, _08045644 @ =EntityUpdateNothing
	movs r0, #0x16
	movs r1, #0x19
	bl EntityCreateInRange
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08045648 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0804564C @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803B924
	ldr r0, _08045650 @ =sub_08045454
	str r0, [r4, #4]
	ldrb r0, [r5]
	adds r1, r4, #0
	adds r1, #0x65
	strb r0, [r1]
	ldrb r0, [r5, #1]
	strb r0, [r4, #0x19]
	cmp r6, #0
	bne _08045632
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r4, #0
	adds r3, #0x58
	movs r1, #0x1f
	ands r0, r1
	ldrb r2, [r3]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xbc
	bl sub_080D7910
_08045632:
	str r5, [r4, #0x14]
	strb r6, [r4, #0x18]
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08045640: .4byte 0x085251F4
_08045644: .4byte EntityUpdateNothing
_08045648: .4byte 0x081C15F4
_0804564C: .4byte 0x0820ED60
_08045650: .4byte sub_08045454

	thumb_func_start sub_08045654
sub_08045654: @ 0x08045654
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_0800CADC
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _08045678
	movs r0, #0
	bl sub_0800C5A8
	ldr r0, _080456A8 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _080456AC @ =0x0000A074
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
_08045678:
	adds r5, r4, #0
	adds r5, #0x59
	ldrb r0, [r5]
	movs r1, #4
	orrs r0, r1
	strb r0, [r5]
	ldrb r0, [r4, #0xd]
	cmp r0, #0x2f
	bhi _08045698
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	bl sub_08045350
_08045698:
	ldrb r0, [r4, #0xd]
	ldrb r1, [r4, #0x19]
	cmp r0, r1
	bhs _080456B0
	adds r0, #1
	strb r0, [r4, #0xd]
	b _0804572C
	.align 2, 0
_080456A8: .4byte gEwramData
_080456AC: .4byte 0x0000A074
_080456B0:
	ldr r4, _08045734 @ =gEwramData
	ldr r0, [r4]
	ldrh r1, [r0, #0x16]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08045728
	movs r0, #1
	bl sub_0800C5A8
	ldr r1, [r4]
	ldr r0, _08045738 @ =0x0000A074
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldrb r0, [r5]
	movs r1, #8
	orrs r0, r1
	strb r0, [r5]
	ldr r0, [r4]
	ldr r1, _0804573C @ =0x00013110
	adds r0, r0, r1
	ldr r4, [r0]
	movs r6, #0xc
	ldr r5, _08045740 @ =0xFFF00000
	cmp r4, #0
	beq _08045728
	ldr r2, _08045744 @ =sub_08045164
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r2, r0, #0
	cmp r2, #0
	beq _08045728
	strb r6, [r2, #0x14]
	str r4, [r2, #0x18]
	adds r3, r2, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x30
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
_08045728:
	bl sub_0800E40C
_0804572C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08045734: .4byte gEwramData
_08045738: .4byte 0x0000A074
_0804573C: .4byte 0x00013110
_08045740: .4byte 0xFFF00000
_08045744: .4byte sub_08045164

	thumb_func_start sub_08045748
sub_08045748: @ 0x08045748
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r6, [r5, #0x18]
	ldr r7, [r5, #0x14]
	cmp r6, #0
	beq _08045772
	ldr r0, [r6]
	cmp r0, #0
	beq _08045772
	ldr r0, [r5, #0x20]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08045776
	movs r1, #0x34
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bgt _08045776
_08045772:
	movs r0, #3
	strb r0, [r5, #0xa]
_08045776:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080457A4
	cmp r0, #1
	bgt _08045786
	cmp r0, #0
	beq _0804578C
	b _080457BE
_08045786:
	cmp r0, #3
	beq _080457B0
	b _080457BE
_0804578C:
	ldrh r0, [r5, #0x1e]
	cmp r0, #0
	beq _08045796
	movs r0, #1
	b _08045798
_08045796:
	movs r0, #2
_08045798:
	strb r0, [r5, #0xa]
	ldr r0, _080457A0 @ =sub_0803B9D0
	str r0, [r5, #4]
	b _080457BE
	.align 2, 0
_080457A0: .4byte sub_0803B9D0
_080457A4:
	ldrh r0, [r5, #0x1e]
	cmp r0, #0
	beq _080457B0
	subs r0, #1
	strh r0, [r5, #0x1e]
	b _080457BE
_080457B0:
	ldr r0, [r5, #0x14]
	bl sub_0806C250
	adds r0, r5, #0
	bl EntityDelete
	b _080458CE
_080457BE:
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
	movs r2, #0x17
	mov r8, r4
	adds r4, r3, #0
	movs r0, #0x65
	adds r0, r0, r6
	mov sb, r0
	adds r1, r7, #0
	adds r1, #0xb0
_080457E8:
	ldrh r0, [r1]
	strh r0, [r1, #8]
	ldrh r0, [r1, #2]
	strh r0, [r1, #0xa]
	ldrb r0, [r1, #4]
	strb r0, [r1, #0xc]
	ldrb r0, [r1, #5]
	strb r0, [r1, #0xd]
	subs r1, #8
	subs r2, #1
	cmp r2, #0
	bgt _080457E8
	adds r0, r6, #0
	bl sub_08002188
	strh r0, [r7]
	adds r0, r6, #0
	bl sub_080021A8
	strh r0, [r7, #2]
	mov r1, sb
	ldrb r0, [r1]
	strb r0, [r7, #4]
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	strb r0, [r7, #5]
	ldrb r0, [r5, #0xd]
	adds r2, r0, #1
	strb r2, [r5, #0xd]
	ldr r0, [r5, #0x20]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0804584C
	movs r1, #3
	ands r2, r1
	cmp r2, #0
	bne _0804584C
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _08045848
	subs r0, #1
	strb r0, [r5, #0xb]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804584C
_08045848:
	strb r1, [r5, #0xa]
	b _080458CE
_0804584C:
	ldr r0, [r5, #0x20]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0804585C
	mov r1, sb
	ldrb r0, [r1]
	b _08045864
_0804585C:
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r0, [r0, #4]
_08045864:
	adds r1, r5, #0
	adds r1, #0x65
	strb r0, [r1]
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #3
	adds r0, r0, r7
	movs r6, #1
	ldrb r0, [r0, #5]
	ands r0, r6
	lsls r0, r0, #6
	ldrb r1, [r4]
	movs r3, #0x41
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r4]
	ldr r0, [r5, #0x20]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080458A2
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r0, r1
	ands r0, r6
	lsls r0, r0, #6
	ands r2, r3
	orrs r2, r0
	strb r2, [r4]
_080458A2:
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldr r1, _080458DC @ =gEwramData
	ldr r2, [r1]
	ldr r1, _080458E0 @ =0x0000A094
	adds r2, r2, r1
	ldrh r0, [r0]
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	ldrh r1, [r2, #0xa]
	subs r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
_080458CE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080458DC: .4byte gEwramData
_080458E0: .4byte 0x0000A094

	thumb_func_start sub_080458E4
sub_080458E4: @ 0x080458E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	mov r8, r3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	bl sub_0803B998
	mov sl, r0
	adds r2, r5, #0
	adds r2, #0x64
	ldr r0, _08045930 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _08045934 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r6, [r1]
	mov sb, r6
	ldr r2, _08045938 @ =sub_08045748
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	bne _0804593C
	movs r0, #0
	b _08045A86
	.align 2, 0
_08045930: .4byte gEwramData
_08045934: .4byte 0x0001017C
_08045938: .4byte sub_08045748
_0804593C:
	cmp r6, #0
	beq _0804594C
	movs r0, #0x31
	bl sub_0806C2CC
	str r0, [r4, #0x14]
	cmp r0, #0
	bne _08045956
_0804594C:
	adds r0, r4, #0
	bl EntityDelete
	movs r0, #0
	b _08045A86
_08045956:
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r3, [r0]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1c
	adds r0, r4, #0
	mov r1, sb
	mov r2, sl
	bl sub_0803B924
	adds r0, r5, #0
	adds r0, #0x65
	str r0, [sp, #4]
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x65
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	subs r1, #9
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_08002188
	adds r1, r4, #0
	adds r1, #0x42
	str r1, [sp, #8]
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_080021A8
	movs r2, #0x46
	adds r2, r2, r4
	mov sl, r2
	strh r0, [r2]
	str r5, [r4, #0x18]
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r4, #0x1e]
	cmp r7, #0x17
	bls _080459AE
	movs r7, #0x17
_080459AE:
	strb r7, [r4, #0xb]
	movs r0, #8
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	bne _080459CC
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #7
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r2]
_080459CC:
	movs r2, #0x58
	adds r2, r2, r5
	mov ip, r2
	ldrb r0, [r2]
	adds r6, r4, #0
	adds r6, #0x58
	movs r1, #1
	mov sb, r1
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r6]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6]
	movs r1, #1
	mov r0, r8
	ands r0, r1
	mov r7, ip
	cmp r0, #0
	beq _080459FA
	strb r1, [r4, #0xf]
_080459FA:
	movs r0, #2
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	beq _08045A36
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	lsls r1, r1, #0x1b
	adds r3, r4, #0
	adds r3, #0x59
	lsrs r1, r1, #0x1f
	mov r0, sb
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r1, [r7]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	ldrb r2, [r6]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6]
_08045A36:
	ldr r1, [r4, #0x14]
	ldr r7, [sp, #8]
	mov r6, sl
	ldr r5, [sp, #4]
	movs r2, #0x17
	mov r3, ip
_08045A42:
	ldrh r0, [r7]
	strh r0, [r1]
	ldrh r0, [r6]
	strh r0, [r1, #2]
	ldrb r0, [r5]
	strb r0, [r1, #4]
	ldrb r0, [r3]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	strb r0, [r1, #5]
	subs r2, #1
	adds r1, #8
	cmp r2, #0
	bge _08045A42
	mov r1, r8
	str r1, [r4, #0x20]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08045A72
	adds r1, r4, #0
	adds r1, #0x5b
	movs r0, #2
	strb r0, [r1]
_08045A72:
	movs r0, #0x40
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	beq _08045A84
	adds r1, r4, #0
	adds r1, #0x5b
	movs r0, #1
	strb r0, [r1]
_08045A84:
	adds r0, r4, #0
_08045A86:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08045A98
sub_08045A98: @ 0x08045A98
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r0, _08045AAC @ =0x08525498
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r5, [r2]
	b _08045B28
	.align 2, 0
_08045AAC: .4byte 0x08525498
_08045AB0:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _08045B34 @ =sub_08045E80
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _08045B2E
	ldr r0, _08045B38 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldrb r3, [r5, #1]
	adds r0, r4, #0
	ldr r1, _08045B3C @ =0x0820ED60
	bl sub_0803B924
	ldrb r1, [r5]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _08045B40 @ =sub_0803B9D0
	str r0, [r4, #4]
	ldrb r1, [r5, #2]
	adds r0, r4, #0
	adds r0, #0x5c
	strb r1, [r0]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r5, #4]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r5, #6]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	ldr r0, [r5, #8]
	str r0, [r4, #0x48]
	ldr r0, [r5, #0xc]
	str r0, [r4, #0x4c]
	ldr r0, [r5, #0x10]
	str r0, [r4, #0x50]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x54]
	ldrb r0, [r5, #3]
	strb r0, [r4, #0xd]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r5, #0x18
_08045B28:
	ldrb r0, [r5, #1]
	cmp r0, #0xff
	bne _08045AB0
_08045B2E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08045B34: .4byte sub_08045E80
_08045B38: .4byte 0x081C15F4
_08045B3C: .4byte 0x0820ED60
_08045B40: .4byte sub_0803B9D0

	thumb_func_start sub_08045B44
sub_08045B44: @ 0x08045B44
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r0, [sp, #0x1c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r1, [sp, #0x18]
	lsls r0, r1, #3
	ldr r1, _08045B6C @ =0x085251A8
	adds r0, r0, r1
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _08045B74
	ldr r2, _08045B70 @ =sub_08045000
	b _08045B76
	.align 2, 0
_08045B6C: .4byte 0x085251A8
_08045B70: .4byte sub_08045000
_08045B74:
	ldr r2, _08045BC4 @ =sub_080450C8
_08045B76:
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r3, r0, #0
	cmp r3, #0
	beq _08045BB6
	adds r1, r3, #0
	adds r1, #0x5c
	movs r0, #0xc
	strb r0, [r1]
	str r4, [r3, #0x40]
	str r5, [r3, #0x44]
	str r6, [r3, #0x50]
	str r7, [r3, #0x54]
	ldr r0, [sp, #0x18]
	str r0, [r3, #0x18]
	movs r1, #0x5a
	adds r1, r1, r3
	mov ip, r1
	movs r0, #0xf
	mov r1, r8
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
_08045BB6:
	adds r0, r3, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08045BC4: .4byte sub_080450C8

	thumb_func_start sub_08045BC8
sub_08045BC8: @ 0x08045BC8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r3, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	cmp r4, #0
	beq _08045C28
	ldr r2, _08045C30 @ =sub_08045164
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r3, r0, #0
	cmp r3, #0
	beq _08045C28
	strb r5, [r3, #0x14]
	str r4, [r3, #0x18]
	movs r0, #0x5a
	adds r0, r0, r3
	mov ip, r0
	movs r0, #0xf
	adds r1, r6, #0
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
	str r7, [r3, #0x50]
	ldr r0, [sp, #0x14]
	str r0, [r3, #0x54]
	ldr r0, [r4, #0x40]
	adds r0, r0, r7
	str r0, [r3, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	str r0, [r3, #0x44]
	adds r1, r3, #0
	adds r1, #0x5c
	movs r0, #0xc
	strb r0, [r1]
_08045C28:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08045C30: .4byte sub_08045164

	thumb_func_start sub_08045C34
sub_08045C34: @ 0x08045C34
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	mov r8, r0
	ldr r2, _08045C8C @ =EntityUpdateNothing
	movs r0, #0x16
	movs r1, #0x19
	bl EntityCreateInRange
	adds r4, r0, #0
	ldr r0, _08045C90 @ =0x081C15F4
	bl sub_0803AFB8
	adds r6, r0, #0
	ldr r5, _08045C94 @ =0x0820ED60
	mov r0, r8
	bl sub_08032B14
	adds r3, r0, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_0803B924
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08045C98 @ =sub_08045654
	str r0, [r4, #4]
	movs r0, #0x40
	strb r0, [r4, #0x19]
	movs r0, #0xbe
	bl sub_080D7910
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08045C8C: .4byte EntityUpdateNothing
_08045C90: .4byte 0x081C15F4
_08045C94: .4byte 0x0820ED60
_08045C98: .4byte sub_08045654

	thumb_func_start sub_08045C9C
sub_08045C9C: @ 0x08045C9C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08045CAE
	ldr r0, _08045CE8 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	strb r0, [r4, #0xa]
_08045CAE:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x50]
	adds r1, r1, r0
	str r1, [r4, #0x48]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x54]
	adds r1, r1, r0
	str r1, [r4, #0x4c]
	adds r0, r4, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _08045CE0
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_08045CE0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08045CE8: .4byte sub_0803B9D0

	thumb_func_start sub_08045CEC
sub_08045CEC: @ 0x08045CEC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r1
	adds r6, r2, #0
	adds r5, r3, #0
	ldr r2, _08045D50 @ =sub_08045C9C
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _08045D44
	ldr r0, _08045D54 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08045D58 @ =0x0820ED60
	adds r0, r4, #0
	adds r3, r5, #0
	bl sub_0803B924
	lsls r1, r6, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	str r7, [r4, #0x40]
	mov r0, r8
	str r0, [r4, #0x44]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_08045D44:
	adds r0, r4, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08045D50: .4byte sub_08045C9C
_08045D54: .4byte 0x081C15F4
_08045D58: .4byte 0x0820ED60

	thumb_func_start sub_08045D5C
sub_08045D5C: @ 0x08045D5C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x50]
	adds r1, r1, r0
	str r1, [r4, #0x48]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x54]
	adds r1, r1, r0
	str r1, [r4, #0x4c]
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
	bne _08045DA2
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_08045DA2:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _08045DBE
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08045DBE
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_08045DBE:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08045DC8
sub_08045DC8: @ 0x08045DC8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r1
	adds r6, r2, #0
	adds r5, r3, #0
	ldr r2, _08045E28 @ =sub_08045D5C
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _08045E1C
	ldr r0, _08045E2C @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08045E30 @ =0x0820ED60
	adds r0, r4, #0
	adds r3, r5, #0
	bl sub_0803B924
	ldr r0, _08045E34 @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x65
	strb r6, [r0]
	str r7, [r4, #0x40]
	mov r0, r8
	str r0, [r4, #0x44]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_08045E1C:
	adds r0, r4, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08045E28: .4byte sub_08045D5C
_08045E2C: .4byte 0x081C15F4
_08045E30: .4byte 0x0820ED60
_08045E34: .4byte sub_0803B9D0

	thumb_func_start sub_08045E38
sub_08045E38: @ 0x08045E38
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1]
	cmp r0, #0
	beq _08045E46
	movs r0, #3
	strb r0, [r1, #0xa]
_08045E46:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08045E4C
sub_08045E4C: @ 0x08045E4C
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

	thumb_func_start sub_08045E80
sub_08045E80: @ 0x08045E80
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _08045EB0
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x20
	orrs r1, r0
	strb r1, [r2]
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _08045EA2
	subs r0, #1
	strb r0, [r5, #0xd]
	b _08045EDA
_08045EA2:
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	strb r1, [r2]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
_08045EB0:
	movs r4, #0x80
	lsls r4, r4, #0xc
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806D430
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806D460
	adds r0, r5, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _08045EDA
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_08045EDA:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08045EE0
sub_08045EE0: @ 0x08045EE0
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
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
	bne _08045F08
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	b _08045F8E
_08045F08:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08045F14
	cmp r0, #1
	beq _08045F52
	b _08045F92
_08045F14:
	adds r5, r4, #0
	adds r5, #0x58
	ldrb r1, [r5]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r2, [r0]
	movs r0, #0x32
	ldrsh r3, [r4, r0]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08045F9C
	cmp r0, #0
	beq _08045F92
	movs r0, #0xa2
	bl sub_080D7910
	ldrb r0, [r5]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r5]
	movs r0, #0x28
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _08045F92
_08045F52:
	ldrb r1, [r4, #0xd]
	cmp r1, #0x1e
	bls _08045F78
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08045F78
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	movs r3, #0x80
	lsls r3, r3, #0xc
	adds r2, r4, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	adds r2, r3, #0
	bl sub_0806D5C0
_08045F78:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08045F92
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
_08045F8E:
	orrs r1, r2
	strb r1, [r0]
_08045F92:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08045F9C
sub_08045F9C: @ 0x08045F9C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	adds r4, r0, #0
	adds r6, r3, #0
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	adds r0, #0x42
	movs r2, #0
	ldrsh r7, [r0, r2]
	adds r0, #4
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, r0, r1
	mov r8, r0
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
	lsls r0, r0, #0x10
	movs r1, #0xf0
	lsls r1, r1, #0xd
	ands r1, r0
	cmp r1, #0
	beq _08046070
	ldr r0, _08045FF4 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _08045FF8 @ =0x00013266
	adds r1, r1, r2
	ldrb r1, [r1]
	cmp r1, #0
	beq _08045FE6
	cmp r5, #0
	beq _08045FE6
	movs r5, #0
	movs r6, #0
_08045FE6:
	cmp r5, #1
	beq _08046050
	cmp r5, #1
	bgt _08045FFC
	cmp r5, #0
	beq _08046002
	b _0804606C
	.align 2, 0
_08045FF4: .4byte gEwramData
_08045FF8: .4byte 0x00013266
_08045FFC:
	cmp r5, #2
	beq _0804605C
	b _0804606C
_08046002:
	ldr r2, [r0]
	ldr r3, _08046030 @ =0x0001327C
	adds r0, r2, r3
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r3, _08046034 @ =0x00013280
	adds r0, r2, r3
	ldrh r0, [r0]
	cmp r1, r0
	bne _08046020
	ldr r1, _08046038 @ =0x00013266
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804603C
_08046020:
	adds r0, r7, #0
	mov r1, r8
	adds r2, r6, #0
	movs r3, #0
	bl sub_08043C10
	b _0804606C
	.align 2, 0
_08046030: .4byte 0x0001327C
_08046034: .4byte 0x00013280
_08046038: .4byte 0x00013266
_0804603C:
	bl RandomNumberGenerator
	movs r2, #1
	ands r2, r0
	adds r2, r2, r6
	adds r0, r7, #0
	mov r1, r8
	bl sub_08043F70
	b _0804606C
_08046050:
	adds r0, r7, #0
	mov r1, r8
	adds r2, r6, #0
	bl sub_08043F70
	b _0804606C
_0804605C:
	movs r0, #0
	str r0, [sp]
	adds r0, r7, #0
	mov r1, r8
	movs r2, #2
	adds r3, r6, #0
	bl sub_08044054
_0804606C:
	movs r0, #1
	b _08046072
_08046070:
	movs r0, #0
_08046072:
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08046080
sub_08046080: @ 0x08046080
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	bl sub_08046148
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
	ldr r0, _080460F0 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _080460F4 @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #7
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #3
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
	ldr r1, _080460F8 @ =0x140CF4FA
	adds r0, r4, #0
	bl sub_080428F0
	ldr r0, _080460FC @ =sub_08046100
	str r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080460F0: .4byte 0x081C15F4
_080460F4: .4byte 0x0820ED60
_080460F8: .4byte 0x140CF4FA
_080460FC: .4byte sub_08046100

	thumb_func_start sub_08046100
sub_08046100: @ 0x08046100
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	bl sub_0803F17C
	adds r0, r7, #0
	bl sub_0803AC40
	ldr r0, _08046144 @ =gEwramData
	ldr r0, [r0]
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0804613E
	adds r6, r7, #0
	adds r6, #0x65
	ldrb r4, [r6]
	adds r5, r7, #0
	adds r5, #0x46
	ldrh r0, [r5]
	subs r0, #6
	strh r0, [r5]
	movs r0, #0x31
	strb r0, [r6]
	adds r0, r7, #0
	bl sub_0803AC40
	strb r4, [r6]
	ldrh r0, [r5]
	adds r0, #6
	strh r0, [r5]
_0804613E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08046144: .4byte gEwramData

	thumb_func_start sub_08046148
sub_08046148: @ 0x08046148
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _080461A8 @ =gEwramData
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x92
	ldrb r0, [r1]
	cmp r0, r6
	beq _080461A2
	strb r6, [r1]
	ldr r5, _080461AC @ =0x081C3E00
	ldr r0, _080461B0 @ =0x081C15F4
	bl sub_0803AFB8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_0803D8B4
	adds r4, r0, #0
	lsls r4, r4, #5
	movs r1, #1
	ands r1, r6
	lsls r1, r1, #8
	lsrs r0, r6, #0x1f
	adds r0, r6, r0
	asrs r0, r0, #1
	lsls r0, r0, #0xa
	adds r1, r1, r0
	adds r5, r1, r5
	ldr r0, _080461B4 @ =0x06010800
	adds r2, r4, r0
	movs r0, #0xc0
	adds r1, r5, #0
	bl sub_080016D0
	movs r0, #0x80
	lsls r0, r0, #2
	adds r5, r5, r0
	ldr r0, _080461B8 @ =0x06010C00
	adds r4, r4, r0
	movs r0, #0xc0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080016D0
_080461A2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080461A8: .4byte gEwramData
_080461AC: .4byte 0x081C3E00
_080461B0: .4byte 0x081C15F4
_080461B4: .4byte 0x06010800
_080461B8: .4byte 0x06010C00

	thumb_func_start sub_080461BC
sub_080461BC: @ 0x080461BC
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r5, #0x16
	ldrsb r5, [r2, r5]
	movs r4, #0
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _080461F0
	movs r0, #0x15
	ldrsb r0, [r2, r0]
	adds r0, #1
	movs r1, #0x14
	ldrsb r1, [r2, r1]
	ldrb r3, [r2, #0x15]
	cmp r0, r1
	blt _080461E8
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	bne _080461E8
	b _080462DC
_080461E8:
	movs r0, #1
	eors r0, r3
	strb r0, [r2, #0x15]
	b _080462DA
_080461F0:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08046218
	ldrb r1, [r2, #0x15]
	movs r0, #0x15
	ldrsb r0, [r2, r0]
	cmp r0, #1
	ble _080462DC
	subs r0, r1, #2
	strb r0, [r2, #0x15]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r3, [r2, #0x16]
	movs r1, #0x16
	ldrsb r1, [r2, r1]
	cmp r0, r1
	bge _080462DA
	subs r0, r3, #2
	b _080462D8
_08046218:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804625A
	movs r1, #0x15
	ldrsb r1, [r2, r1]
	movs r0, #0x14
	ldrsb r0, [r2, r0]
	subs r0, #1
	cmp r1, r0
	bge _080462DC
	ldrb r0, [r2, #0x15]
	adds r0, #2
	strb r0, [r2, #0x15]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r3, [r2, #0x14]
	movs r1, #0x14
	ldrsb r1, [r2, r1]
	cmp r0, r1
	blt _08046246
	subs r0, r3, #1
	strb r0, [r2, #0x15]
_08046246:
	movs r1, #0x15
	ldrsb r1, [r2, r1]
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r0, #8
	cmp r1, r0
	blt _080462DA
	ldrb r0, [r2, #0x16]
	adds r0, #2
	b _080462D8
_0804625A:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080462A0
	adds r0, r5, #0
	adds r0, #8
	movs r3, #0x14
	ldrsb r3, [r2, r3]
	cmp r0, r3
	bge _0804628E
	ldrb r0, [r2, #0x15]
	adds r0, #8
	strb r0, [r2, #0x15]
	ldrb r0, [r2, #0x16]
	adds r0, #8
	strb r0, [r2, #0x16]
	movs r1, #0x15
	ldrsb r1, [r2, r1]
	subs r0, r3, #1
	cmp r1, r0
	ble _080462DA
	ldrb r0, [r2, #0x14]
	subs r0, #1
	strb r0, [r2, #0x15]
	b _080462DA
_0804628E:
	movs r1, #0x15
	ldrsb r1, [r2, r1]
	subs r0, r3, #1
	cmp r1, r0
	bge _080462DC
	ldrb r0, [r2, #0x14]
	subs r0, #1
	strb r0, [r2, #0x15]
	b _080462DA
_080462A0:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080462DC
	ldrb r1, [r2, #0x16]
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	cmp r0, #7
	ble _080462C0
	ldrb r0, [r2, #0x15]
	subs r0, #8
	strb r0, [r2, #0x15]
	adds r0, r1, #0
	subs r0, #8
	b _080462D8
_080462C0:
	ldrb r0, [r2, #0x15]
	movs r1, #0x15
	ldrsb r1, [r2, r1]
	cmp r1, #0
	beq _080462DC
	cmp r1, #7
	bgt _080462D2
	strb r4, [r2, #0x15]
	b _080462D6
_080462D2:
	subs r0, #8
	strb r0, [r2, #0x15]
_080462D6:
	movs r0, #0
_080462D8:
	strb r0, [r2, #0x16]
_080462DA:
	movs r4, #1
_080462DC:
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	cmp r0, r5
	beq _080462E6
	movs r4, #2
_080462E6:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080462F0
sub_080462F0: @ 0x080462F0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r6, _08046328 @ =0x0000B34D
	movs r3, #0xb
	cmp r1, #0
	beq _080462FE
	movs r3, #0xa
_080462FE:
	movs r0, #0x16
	ldrsb r0, [r5, r0]
	cmp r0, #1
	ble _08046330
	adds r2, r6, #0
	lsls r0, r3, #6
	ldr r4, _0804632C @ =0x0600E03A
	adds r1, r0, r4
	adds r4, r3, #3
	adds r7, r2, #1
	movs r6, #0x3a
	movs r3, #0
_08046316:
	strh r2, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, #2
	subs r3, #1
	cmp r3, #0
	bge _08046316
	b _0804634A
	.align 2, 0
_08046328: .4byte 0x0000B34D
_0804632C: .4byte 0x0600E03A
_08046330:
	ldr r2, _08046378 @ =0x0000330D
	lsls r0, r3, #6
	ldr r1, _0804637C @ =0x0600E03A
	adds r0, r0, r1
	adds r4, r3, #3
	adds r7, r6, #1
	movs r6, #0x3a
	movs r1, #0
_08046340:
	strh r2, [r0]
	adds r0, #2
	subs r1, #1
	cmp r1, #0
	bge _08046340
_0804634A:
	movs r0, #0x14
	ldrsb r0, [r5, r0]
	subs r0, #8
	movs r1, #0x16
	ldrsb r1, [r5, r1]
	cmp r0, r1
	ble _08046384
	lsls r0, r7, #0x10
	lsrs r1, r0, #0x10
	lsls r0, r4, #6
	ldr r2, _08046380 @ =0x0600E000
	adds r0, r0, r2
	adds r2, r6, r0
	movs r3, #0
_08046366:
	strh r1, [r2]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r2, #2
	subs r3, #1
	cmp r3, #0
	bge _08046366
	b _0804639A
	.align 2, 0
_08046378: .4byte 0x0000330D
_0804637C: .4byte 0x0600E03A
_08046380: .4byte 0x0600E000
_08046384:
	ldr r2, _080463A0 @ =0x0000330D
	lsls r0, r4, #6
	ldr r4, _080463A4 @ =0x0600E000
	adds r0, r0, r4
	adds r0, r6, r0
	movs r1, #0
_08046390:
	strh r2, [r0]
	adds r0, #2
	subs r1, #1
	cmp r1, #0
	bge _08046390
_0804639A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080463A0: .4byte 0x0000330D
_080463A4: .4byte 0x0600E000

	thumb_func_start sub_080463A8
sub_080463A8: @ 0x080463A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r3, r0, #0
	adds r7, r1, #0
	ldr r0, _08046400 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08046404 @ =0x0001325C
	adds r1, r1, r0
	mov sl, r1
	movs r2, #0x1e
	ldrsh r4, [r1, r2]
	movs r5, #0xcc
	lsls r5, r5, #6
	mov r8, r5
	cmp r4, #0
	bge _0804640C
	mov r4, r8
	lsls r0, r3, #1
	lsls r2, r7, #6
	ldr r5, _08046408 @ =0x0600E000
	adds r1, r2, r5
	adds r1, r0, r1
	mov sb, r0
	str r2, [sp, #0xc]
	adds r0, r7, #1
	str r0, [sp]
	adds r2, r3, #5
	str r2, [sp, #4]
	adds r3, #7
	str r3, [sp, #8]
	movs r2, #0
_080463EE:
	strh r4, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bge _080463EE
	b _0804645E
	.align 2, 0
_08046400: .4byte gEwramData
_08046404: .4byte 0x0001325C
_08046408: .4byte 0x0600E000
_0804640C:
	lsls r0, r3, #1
	lsls r2, r7, #6
	ldr r5, _08046440 @ =0x0600E000
	adds r1, r2, r5
	adds r5, r0, r1
	movs r6, #1
	mov sb, r0
	str r2, [sp, #0xc]
	adds r0, r7, #1
	str r0, [sp]
	adds r1, r3, #5
	str r1, [sp, #4]
	adds r3, #7
	str r3, [sp, #8]
_08046428:
	adds r0, r4, #0
	movs r1, #0xa
	bl Mod
	cmp r6, #1
	beq _08046444
	cmp r4, #0
	bne _08046444
	mov r0, r8
	adds r0, #0xd
	b _08046446
	.align 2, 0
_08046440: .4byte 0x0600E000
_08046444:
	add r0, r8
_08046446:
	strh r0, [r5]
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	adds r4, r0, #0
	subs r5, #2
	adds r6, #1
	cmp r6, #4
	ble _08046428
	cmp r4, #0
	bne _08046428
_0804645E:
	mov r2, sl
	movs r3, #0x20
	ldrsh r4, [r2, r3]
	movs r7, #0xcc
	lsls r7, r7, #6
	cmp r4, #0
	bge _08046494
	adds r2, r7, #0
	ldr r4, [sp]
	lsls r0, r4, #6
	ldr r5, _08046490 @ =0x0600E000
	adds r0, r0, r5
	mov r3, sb
	adds r1, r3, r0
	movs r3, #0
_0804647C:
	strh r2, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, #2
	subs r3, #1
	cmp r3, #0
	bge _0804647C
	b _080464D6
	.align 2, 0
_08046490: .4byte 0x0600E000
_08046494:
	ldr r5, [sp]
	lsls r0, r5, #6
	ldr r1, _080464B8 @ =0x0600E000
	adds r0, r0, r1
	mov r2, sb
	adds r5, r2, r0
	movs r6, #1
_080464A2:
	adds r0, r4, #0
	movs r1, #0xa
	bl Mod
	cmp r6, #1
	beq _080464BC
	cmp r4, #0
	bne _080464BC
	adds r0, r7, #0
	adds r0, #0xd
	b _080464BE
	.align 2, 0
_080464B8: .4byte 0x0600E000
_080464BC:
	adds r0, r7, r0
_080464BE:
	strh r0, [r5]
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	adds r4, r0, #0
	subs r5, #2
	adds r6, #1
	cmp r6, #4
	ble _080464A2
	cmp r4, #0
	bne _080464A2
_080464D6:
	mov r3, sl
	ldrh r4, [r3, #0x22]
	movs r7, #0xcc
	lsls r7, r7, #6
	b _080464EA
_080464E0:
	strh r2, [r1]
	subs r3, #1
	cmp r3, #0
	bge _080464E0
	b _0804652E
_080464EA:
	ldr r5, [sp, #4]
	lsls r1, r5, #1
	ldr r2, [sp, #0xc]
	ldr r3, _08046510 @ =0x0600E000
	adds r0, r2, r3
	adds r5, r1, r0
	movs r6, #1
_080464F8:
	adds r0, r4, #0
	movs r1, #0xa
	bl Mod
	cmp r6, #1
	beq _08046514
	cmp r4, #0
	bne _08046514
	adds r0, r7, #0
	adds r0, #0xd
	b _08046516
	.align 2, 0
_08046510: .4byte 0x0600E000
_08046514:
	adds r0, r7, r0
_08046516:
	strh r0, [r5]
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	adds r4, r0, #0
	subs r5, #2
	adds r6, #1
	cmp r6, #4
	ble _080464F8
	cmp r4, #0
	bne _080464F8
_0804652E:
	mov r5, sl
	ldrh r4, [r5, #0x24]
	movs r7, #0xcc
	lsls r7, r7, #6
	b _08046542
_08046538:
	strh r3, [r1]
	subs r2, #1
	cmp r2, #0
	bge _08046538
	b _08046586
_08046542:
	ldr r5, [sp, #4]
	lsls r1, r5, #1
	ldr r2, [sp]
	lsls r0, r2, #6
	ldr r3, _08046568 @ =0x0600E000
	adds r0, r0, r3
	adds r5, r1, r0
	movs r6, #1
_08046552:
	adds r0, r4, #0
	movs r1, #0xa
	bl Mod
	cmp r6, #1
	beq _0804656C
	cmp r4, #0
	bne _0804656C
	adds r0, r7, #0
	adds r0, #0xd
	b _0804656E
	.align 2, 0
_08046568: .4byte 0x0600E000
_0804656C:
	adds r0, r7, r0
_0804656E:
	strh r0, [r5]
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	adds r4, r0, #0
	subs r5, #2
	adds r6, #1
	cmp r6, #4
	ble _08046552
	cmp r4, #0
	bne _08046552
_08046586:
	mov r4, sl
	movs r5, #0x1e
	ldrsh r2, [r4, r5]
	ldrh r1, [r4, #0x22]
	ldr r4, [sp, #8]
	cmp r2, #0
	ble _080465C0
	movs r0, #0x64
	muls r0, r2, r0
	bl __divsi3
	bl __floatsidf
	ldr r3, _080465BC @ =0x1EB851EC
	ldr r2, _080465B8 @ =0x3FE1EB85
	bl __muldf3
	bl __fixdfsi
	adds r3, r0, #0
	cmp r3, #0
	bne _080465C2
	movs r3, #1
	b _080465C2
	.align 2, 0
_080465B8: .4byte 0x3FE1EB85
_080465BC: .4byte 0x1EB851EC
_080465C0:
	movs r3, #0
_080465C2:
	lsls r1, r4, #1
	ldr r2, [sp, #0xc]
	ldr r4, _08046604 @ =0x0600E000
	adds r0, r2, r4
	adds r2, r1, r0
	movs r1, #0
	movs r5, #0xce
	lsls r5, r5, #2
	adds r7, r5, #0
	movs r0, #3
	lsls r6, r0, #0xc
	movs r4, #0xcc
	lsls r4, r4, #2
	adds r0, r4, #0
	adds r5, r6, #0
	orrs r5, r0
	adds r4, r6, #0
	orrs r4, r7
_080465E6:
	adds r0, r3, #0
	cmp r3, #0
	bge _080465EE
	adds r0, r3, #7
_080465EE:
	asrs r0, r0, #3
	cmp r1, r0
	bne _08046608
	lsls r0, r1, #3
	subs r0, r3, r0
	subs r0, r7, r0
	orrs r0, r6
	strh r0, [r2]
	adds r0, r1, #1
	b _08046616
	.align 2, 0
_08046604: .4byte 0x0600E000
_08046608:
	adds r0, r1, #1
	lsls r1, r0, #3
	cmp r3, r1
	blt _08046614
	strh r5, [r2]
	b _08046616
_08046614:
	strh r4, [r2]
_08046616:
	adds r2, #2
	adds r1, r0, #0
	cmp r1, #6
	ble _080465E6
	mov r5, sl
	movs r0, #0x20
	ldrsh r2, [r5, r0]
	ldrh r1, [r5, #0x24]
	ldr r4, [sp, #8]
	ldr r5, [sp]
	cmp r2, #0
	ble _08046658
	movs r0, #0x64
	muls r0, r2, r0
	bl __divsi3
	bl __floatsidf
	ldr r3, _08046654 @ =0x1EB851EC
	ldr r2, _08046650 @ =0x3FE1EB85
	bl __muldf3
	bl __fixdfsi
	adds r3, r0, #0
	cmp r3, #0
	bne _0804665A
	movs r3, #1
	b _0804665A
	.align 2, 0
_08046650: .4byte 0x3FE1EB85
_08046654: .4byte 0x1EB851EC
_08046658:
	movs r3, #0
_0804665A:
	lsls r1, r4, #1
	lsls r0, r5, #6
	ldr r2, _0804669C @ =0x0600E000
	adds r0, r0, r2
	adds r2, r1, r0
	movs r1, #0
	movs r4, #0xce
	lsls r4, r4, #2
	adds r7, r4, #0
	movs r0, #4
	lsls r6, r0, #0xc
	movs r5, #0xcc
	lsls r5, r5, #2
	adds r0, r5, #0
	adds r5, r6, #0
	orrs r5, r0
	adds r4, r6, #0
	orrs r4, r7
_0804667E:
	adds r0, r3, #0
	cmp r3, #0
	bge _08046686
	adds r0, r3, #7
_08046686:
	asrs r0, r0, #3
	cmp r1, r0
	bne _080466A0
	lsls r0, r1, #3
	subs r0, r3, r0
	subs r0, r7, r0
	orrs r0, r6
	strh r0, [r2]
	adds r0, r1, #1
	b _080466AE
	.align 2, 0
_0804669C: .4byte 0x0600E000
_080466A0:
	adds r0, r1, #1
	lsls r1, r0, #3
	cmp r3, r1
	blt _080466AC
	strh r5, [r2]
	b _080466AE
_080466AC:
	strh r4, [r2]
_080466AE:
	adds r2, #2
	adds r1, r0, #0
	cmp r1, #6
	ble _0804667E
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080466C8
sub_080466C8: @ 0x080466C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r1
	ldr r1, _08046728 @ =gEwramData
	ldr r1, [r1]
	ldr r2, _0804672C @ =0x000131F2
	adds r1, r1, r2
	movs r7, #0
	lsls r0, r0, #1
	mov sb, r0
_080466E4:
	movs r3, #0
	ldrsh r2, [r1, r3]
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r2, r0
	ble _080466F2
	ldr r2, _08046730 @ =0x000003E7
_080466F2:
	mov r4, sl
	adds r0, r4, r7
	adds r4, r2, #0
	movs r2, #0xcc
	lsls r2, r2, #6
	cmp r4, #0
	bge _08046738
	adds r3, r2, #0
	lsls r0, r0, #6
	ldr r2, _08046734 @ =0x0600E000
	adds r0, r0, r2
	mov r4, sb
	adds r2, r4, r0
	adds r7, #1
	adds r1, #2
	mov r8, r1
	movs r1, #0
_08046714:
	strh r3, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bge _08046714
	b _08046786
	.align 2, 0
_08046728: .4byte gEwramData
_0804672C: .4byte 0x000131F2
_08046730: .4byte 0x000003E7
_08046734: .4byte 0x0600E000
_08046738:
	lsls r0, r0, #6
	ldr r3, _08046764 @ =0x0600E000
	adds r0, r0, r3
	mov r3, sb
	adds r5, r3, r0
	movs r6, #1
	adds r7, #1
	adds r1, #2
	mov r8, r1
_0804674A:
	adds r0, r4, #0
	movs r1, #0xa
	str r2, [sp]
	bl Mod
	ldr r2, [sp]
	cmp r6, #1
	beq _08046768
	cmp r4, #0
	bne _08046768
	adds r0, r2, #0
	adds r0, #0xd
	b _0804676A
	.align 2, 0
_08046764: .4byte 0x0600E000
_08046768:
	adds r0, r2, r0
_0804676A:
	strh r0, [r5]
	adds r0, r4, #0
	movs r1, #0xa
	str r2, [sp]
	bl Div
	adds r4, r0, #0
	subs r5, #2
	adds r6, #1
	ldr r2, [sp]
	cmp r6, #3
	ble _0804674A
	cmp r4, #0
	bne _0804674A
_08046786:
	mov r1, r8
	cmp r7, #3
	ble _080466E4
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0804679C
sub_0804679C: @ 0x0804679C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r1
	ldr r1, _080467FC @ =gEwramData
	ldr r1, [r1]
	ldr r2, _08046800 @ =0x000131EE
	adds r1, r1, r2
	movs r7, #0
	lsls r0, r0, #1
	mov sb, r0
_080467B8:
	movs r3, #0
	ldrsh r2, [r1, r3]
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r2, r0
	ble _080467C6
	ldr r2, _08046804 @ =0x000003E7
_080467C6:
	mov r4, sl
	adds r0, r4, r7
	adds r4, r2, #0
	movs r2, #0xcc
	lsls r2, r2, #6
	cmp r4, #0
	bge _0804680C
	adds r3, r2, #0
	lsls r0, r0, #6
	ldr r2, _08046808 @ =0x0600E000
	adds r0, r0, r2
	mov r4, sb
	adds r2, r4, r0
	adds r7, #1
	adds r1, #2
	mov r8, r1
	movs r1, #0
_080467E8:
	strh r3, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bge _080467E8
	b _0804685A
	.align 2, 0
_080467FC: .4byte gEwramData
_08046800: .4byte 0x000131EE
_08046804: .4byte 0x000003E7
_08046808: .4byte 0x0600E000
_0804680C:
	lsls r0, r0, #6
	ldr r3, _08046838 @ =0x0600E000
	adds r0, r0, r3
	mov r3, sb
	adds r5, r3, r0
	movs r6, #1
	adds r7, #1
	adds r1, #2
	mov r8, r1
_0804681E:
	adds r0, r4, #0
	movs r1, #0xa
	str r2, [sp]
	bl Mod
	ldr r2, [sp]
	cmp r6, #1
	beq _0804683C
	cmp r4, #0
	bne _0804683C
	adds r0, r2, #0
	adds r0, #0xd
	b _0804683E
	.align 2, 0
_08046838: .4byte 0x0600E000
_0804683C:
	adds r0, r2, r0
_0804683E:
	strh r0, [r5]
	adds r0, r4, #0
	movs r1, #0xa
	str r2, [sp]
	bl Div
	adds r4, r0, #0
	subs r5, #2
	adds r6, #1
	ldr r2, [sp]
	cmp r6, #3
	ble _0804681E
	cmp r4, #0
	bne _0804681E
_0804685A:
	mov r1, r8
	cmp r7, #1
	ble _080467B8
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08046870
sub_08046870: @ 0x08046870
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	mov sb, r3
	mov r0, sb
	movs r1, #0x3c
	bl Div
	mov sb, r0
	movs r1, #0x3c
	bl Mod
	lsls r6, r4, #0xc
	movs r1, #0xc0
	lsls r1, r1, #2
	mov sl, r1
	mov r2, sl
	orrs r2, r6
	mov sl, r2
	adds r4, r0, #0
	cmp r4, #0
	bge _080468D8
	lsls r0, r2, #0x10
	lsrs r3, r0, #0x10
	lsls r2, r7, #1
	lsls r1, r5, #6
	ldr r4, _080468D4 @ =0x0600E000
	adds r0, r1, r4
	adds r2, r2, r0
	str r6, [sp, #4]
	str r1, [sp]
	subs r6, r7, #3
	subs r0, r7, #6
	str r0, [sp, #8]
	movs r1, #0
_080468C2:
	strh r3, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bge _080468C2
	b _08046916
	.align 2, 0
_080468D4: .4byte 0x0600E000
_080468D8:
	lsls r0, r7, #1
	lsls r2, r5, #6
	ldr r3, _08046958 @ =0x0600E000
	adds r1, r2, r3
	adds r5, r0, r1
	movs r0, #1
	mov r8, r0
	str r6, [sp, #4]
	str r2, [sp]
	subs r6, r7, #3
	subs r1, r7, #6
	str r1, [sp, #8]
_080468F0:
	adds r0, r4, #0
	movs r1, #0xa
	bl Mod
	add r0, sl
	strh r0, [r5]
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	adds r4, r0, #0
	subs r5, #2
	movs r2, #1
	add r8, r2
	mov r3, r8
	cmp r3, #2
	ble _080468F0
	cmp r4, #0
	bne _080468F0
_08046916:
	mov r0, sb
	movs r1, #0x3c
	bl Div
	mov sb, r0
	movs r1, #0x3c
	bl Mod
	movs r7, #0xc0
	lsls r7, r7, #2
	ldr r4, [sp, #4]
	orrs r7, r4
	adds r4, r0, #0
	cmp r4, #0
	bge _0804695C
	lsls r0, r7, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r6, #1
	ldr r3, [sp]
	ldr r4, _08046958 @ =0x0600E000
	adds r0, r3, r4
	adds r1, r1, r0
	movs r3, #0
_08046944:
	strh r2, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, #2
	subs r3, #1
	cmp r3, #0
	bge _08046944
	b _08046992
	.align 2, 0
_08046958: .4byte 0x0600E000
_0804695C:
	lsls r1, r6, #1
	ldr r2, [sp]
	ldr r3, _0804696C @ =0x0600E000
	adds r0, r2, r3
	adds r5, r1, r0
	movs r6, #1
	b _0804698A
	.align 2, 0
_0804696C: .4byte 0x0600E000
_08046970:
	adds r0, r4, #0
	movs r1, #0xa
	bl Mod
	adds r0, r7, r0
	strh r0, [r5]
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	adds r4, r0, #0
	subs r5, #2
	adds r6, #1
_0804698A:
	cmp r6, #2
	ble _08046970
	cmp r4, #0
	bne _08046970
_08046992:
	mov r0, sb
	movs r1, #0x3c
	bl Div
	movs r7, #0xc0
	lsls r7, r7, #2
	ldr r4, [sp, #4]
	orrs r7, r4
	adds r4, r0, #0
	cmp r4, #0
	bge _080469D0
	lsls r0, r7, #0x10
	lsrs r3, r0, #0x10
	ldr r0, [sp, #8]
	lsls r1, r0, #1
	ldr r2, [sp]
	ldr r4, _080469CC @ =0x0600E000
	adds r0, r2, r4
	adds r1, r1, r0
	movs r2, #0
_080469BA:
	strh r3, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bge _080469BA
	b _08046A06
	.align 2, 0
_080469CC: .4byte 0x0600E000
_080469D0:
	ldr r0, [sp, #8]
	lsls r1, r0, #1
	ldr r2, [sp]
	ldr r3, _080469E0 @ =0x0600E000
	adds r0, r2, r3
	adds r5, r1, r0
	movs r6, #1
	b _080469FE
	.align 2, 0
_080469E0: .4byte 0x0600E000
_080469E4:
	adds r0, r4, #0
	movs r1, #0xa
	bl Mod
	adds r0, r7, r0
	strh r0, [r5]
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	adds r4, r0, #0
	subs r5, #2
	adds r6, #1
_080469FE:
	cmp r6, #2
	ble _080469E4
	cmp r4, #0
	bne _080469E4
_08046A06:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08046A18
sub_08046A18: @ 0x08046A18
	push {r4, r5, lr}
	ldr r0, _08046A60 @ =gEwramData
	ldr r0, [r0]
	movs r4, #0
	movs r3, #0xff
	ldr r1, _08046A64 @ =0x000133D0
	adds r2, r0, r1
	ldr r5, _08046A68 @ =0x000133DC
	adds r1, r0, r5
_08046A2A:
	ldrb r0, [r2]
	orrs r0, r3
	strb r0, [r2]
	ldrb r0, [r2, #4]
	orrs r0, r3
	strb r0, [r2, #4]
	ldrb r0, [r2, #8]
	orrs r0, r3
	strb r0, [r2, #8]
	ldrb r0, [r1]
	orrs r0, r3
	strb r0, [r1]
	ldrb r0, [r1, #4]
	orrs r0, r3
	strb r0, [r1, #4]
	ldrb r0, [r1, #8]
	orrs r0, r3
	strb r0, [r1, #8]
	adds r2, #1
	adds r1, #1
	adds r4, #1
	cmp r4, #3
	ble _08046A2A
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08046A60: .4byte gEwramData
_08046A64: .4byte 0x000133D0
_08046A68: .4byte 0x000133DC

	thumb_func_start sub_08046A6C
sub_08046A6C: @ 0x08046A6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r1, [sp]
	ldr r1, _08046AB4 @ =gEwramData
	ldr r1, [r1]
	ldr r3, _08046AB8 @ =0x000115A0
	adds r2, r1, r3
	ldrh r6, [r2]
	ldr r2, _08046ABC @ =0x000115A2
	adds r1, r1, r2
	ldrh r1, [r1]
	mov r8, r1
	movs r3, #0
	mov sl, r3
	movs r1, #1
	str r1, [sp, #4]
	bl sub_08041434
	str r0, [sp, #8]
	movs r7, #0
	movs r2, #0
	mov sb, r2
	movs r3, #0
	str r3, [sp, #0xc]
	bl sub_08040FE0
_08046AA8:
	cmp r7, #0
	beq _08046AC0
	adds r0, r7, #0
	ldr r5, [sp, #0xc]
	b _08046AC4
	.align 2, 0
_08046AB4: .4byte gEwramData
_08046AB8: .4byte 0x000115A0
_08046ABC: .4byte 0x000115A2
_08046AC0:
	ldr r0, [sp, #8]
	mov r5, sb
_08046AC4:
	adds r0, #2
	adds r0, r0, r5
	ldrb r0, [r0]
	bl sub_08040AB8
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08046B2A
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0xa
	beq _08046B1C
	cmp r0, #0xa
	bgt _08046AEA
	cmp r0, #6
	beq _08046AF0
	b _08046B2A
_08046AEA:
	cmp r0, #0x13
	beq _08046B08
	b _08046B2A
_08046AF0:
	adds r5, #1
	movs r0, #1
	add sl, r0
	lsls r4, r6, #0x10
	mov r1, r8
	add r1, sl
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsrs r0, r4, #0x10
	bl sub_0804066C
	b _08046B2E
_08046B08:
	ldr r1, [sp]
	ldr r2, _08046B18 @ =0x0000038B
	adds r0, r1, r2
	bl sub_08041434
	adds r7, r0, #0
	movs r5, #0
	b _08046B2C
	.align 2, 0
_08046B18: .4byte 0x0000038B
_08046B1C:
	cmp r7, #0
	bne _08046B26
	movs r3, #0
	str r3, [sp, #4]
	b _08046B2C
_08046B26:
	movs r7, #0
	mov r5, sb
_08046B2A:
	adds r5, #1
_08046B2C:
	lsls r4, r6, #0x10
_08046B2E:
	cmp r7, #0
	beq _08046B36
	str r5, [sp, #0xc]
	b _08046B38
_08046B36:
	mov sb, r5
_08046B38:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _08046AA8
	lsrs r0, r4, #0x10
	mov r1, r8
	bl sub_0804066C
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08046B58
sub_08046B58: @ 0x08046B58
	push {r4, lr}
	ldr r1, _08046B7C @ =gEwramData
	ldr r2, [r1]
	lsls r0, r0, #1
	ldr r3, _08046B80 @ =0x00013398
	adds r1, r2, r3
	adds r1, r1, r0
	ldrh r4, [r1]
	cmp r4, #1
	bne _08046B84
	movs r0, #0x80
	bl sub_08040AB8
	movs r0, #0x81
	bl sub_08040AB8
	movs r0, #1
	b _08046BC0
	.align 2, 0
_08046B7C: .4byte gEwramData
_08046B80: .4byte 0x00013398
_08046B84:
	cmp r4, #2
	bne _08046B98
	movs r0, #0x82
	bl sub_08040AB8
	movs r0, #0x83
	bl sub_08040AB8
	movs r0, #2
	b _08046BC0
_08046B98:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r4, r0
	bne _08046BB0
	movs r0, #0x84
	bl sub_08040AB8
	movs r0, #0x85
	bl sub_08040AB8
	adds r0, r4, #0
	b _08046BC0
_08046BB0:
	movs r0, #0x86
	bl sub_08040AB8
	movs r0, #0x87
	bl sub_08040AB8
	movs r0, #0x80
	lsls r0, r0, #1
_08046BC0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08046BC8
sub_08046BC8: @ 0x08046BC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r1, _08046C08 @ =gEwramData
	ldr r1, [r1]
	ldr r3, _08046C0C @ =0x000115A0
	adds r2, r1, r3
	ldrh r6, [r2]
	ldr r2, _08046C10 @ =0x000115A2
	adds r1, r1, r2
	ldrh r1, [r1]
	mov r8, r1
	movs r3, #0
	mov sl, r3
	movs r1, #1
	str r1, [sp]
	bl sub_08041434
	str r0, [sp, #4]
	movs r7, #0
	movs r2, #0
	mov sb, r2
	movs r3, #0
	str r3, [sp, #8]
_08046BFE:
	cmp r7, #0
	beq _08046C14
	adds r0, r7, #0
	ldr r5, [sp, #8]
	b _08046C18
	.align 2, 0
_08046C08: .4byte gEwramData
_08046C0C: .4byte 0x000115A0
_08046C10: .4byte 0x000115A2
_08046C14:
	ldr r0, [sp, #4]
	mov r5, sb
_08046C18:
	adds r0, #2
	adds r0, r0, r5
	ldrb r0, [r0]
	bl sub_08040AB8
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08046C2E
	b _08046D3A
_08046C2E:
	movs r0, #0xff
	ands r0, r1
	subs r0, #6
	cmp r0, #0xc
	bls _08046C3A
	b _08046D3A
_08046C3A:
	lsls r0, r0, #2
	ldr r1, _08046C44 @ =_08046C48
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08046C44: .4byte _08046C48
_08046C48: @ jump table
	.4byte _08046C7C @ case 0
	.4byte _08046D3A @ case 1
	.4byte _08046D3A @ case 2
	.4byte _08046D3A @ case 3
	.4byte _08046D2C @ case 4
	.4byte _08046C94 @ case 5
	.4byte _08046C9C @ case 6
	.4byte _08046CA4 @ case 7
	.4byte _08046CAC @ case 8
	.4byte _08046CB4 @ case 9
	.4byte _08046CE0 @ case 10
	.4byte _08046D0C @ case 11
	.4byte _08046D1C @ case 12
_08046C7C:
	adds r5, #1
	movs r0, #1
	add sl, r0
	lsls r4, r6, #0x10
	lsrs r0, r4, #0x10
	mov r1, r8
	add r1, sl
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0804066C
	b _08046D3E
_08046C94:
	movs r0, #0
	bl sub_08046B58
	b _08046D3A
_08046C9C:
	movs r0, #1
	bl sub_08046B58
	b _08046D3A
_08046CA4:
	movs r0, #2
	bl sub_08046B58
	b _08046D3A
_08046CAC:
	movs r0, #3
	bl sub_08046B58
	b _08046D3A
_08046CB4:
	ldr r0, _08046CD4 @ =gEwramData
	ldr r1, [r0]
	ldr r3, _08046CD8 @ =0x000115A4
	adds r2, r1, r3
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	ldr r0, _08046CDC @ =0x000115A6
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r0, #0x88
	bl sub_08040AB8
	b _08046D3A
	.align 2, 0
_08046CD4: .4byte gEwramData
_08046CD8: .4byte 0x000115A4
_08046CDC: .4byte 0x000115A6
_08046CE0:
	ldr r0, _08046D00 @ =gEwramData
	ldr r1, [r0]
	ldr r3, _08046D04 @ =0x000115A4
	adds r2, r1, r3
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	ldr r0, _08046D08 @ =0x000115A6
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r0, #0x89
	bl sub_08040AB8
	b _08046D3A
	.align 2, 0
_08046D00: .4byte gEwramData
_08046D04: .4byte 0x000115A4
_08046D08: .4byte 0x000115A6
_08046D0C:
	movs r0, #0x8c
	bl sub_08040AB8
	movs r0, #0x8d
	bl sub_08040AB8
	adds r5, #2
	b _08046D3C
_08046D1C:
	movs r0, #0x8a
	bl sub_08040AB8
	movs r0, #0x8b
	bl sub_08040AB8
	adds r5, #2
	b _08046D3C
_08046D2C:
	cmp r7, #0
	bne _08046D36
	movs r1, #0
	str r1, [sp]
	b _08046D3C
_08046D36:
	movs r7, #0
	mov r5, sb
_08046D3A:
	adds r5, #1
_08046D3C:
	lsls r4, r6, #0x10
_08046D3E:
	cmp r7, #0
	beq _08046D46
	str r5, [sp, #8]
	b _08046D48
_08046D46:
	mov sb, r5
_08046D48:
	ldr r2, [sp]
	cmp r2, #0
	beq _08046D50
	b _08046BFE
_08046D50:
	lsrs r0, r4, #0x10
	mov r1, r8
	bl sub_0804066C
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08046D68
sub_08046D68: @ 0x08046D68
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	adds r7, r3, #0
	ldr r0, _08046D9C @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x64
	ldrb r0, [r0]
	movs r1, #0xf3
	lsls r1, r1, #8
	mov r8, r1
	cmp r0, #9
	bne _08046D8E
	movs r2, #0xf1
	lsls r2, r2, #8
	mov r8, r2
_08046D8E:
	lsls r1, r5, #1
	lsls r0, r6, #6
	ldr r2, _08046DA0 @ =0x0600E000
	adds r0, r0, r2
	adds r5, r1, r0
	movs r6, #1
	b _08046DBE
	.align 2, 0
_08046D9C: .4byte gEwramData
_08046DA0: .4byte 0x0600E000
_08046DA4:
	adds r0, r4, #0
	movs r1, #0xa
	bl Mod
	add r0, r8
	strh r0, [r5]
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	adds r4, r0, #0
	subs r5, #2
	adds r6, #1
_08046DBE:
	cmp r6, r7
	ble _08046DA4
	cmp r4, #0
	bne _08046DA4
	subs r0, r6, #1
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08046DD4
sub_08046DD4: @ 0x08046DD4
	push {r4, lr}
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r0, r0, #1
	lsls r1, r1, #6
	ldr r4, _08046E00 @ =0x0600E000
	adds r1, r1, r4
	adds r1, r0, r1
	cmp r3, #0
	ble _08046DF8
_08046DE8:
	strh r2, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, #2
	subs r3, #1
	cmp r3, #0
	bne _08046DE8
_08046DF8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08046E00: .4byte 0x0600E000

	thumb_func_start sub_08046E04
sub_08046E04: @ 0x08046E04
	push {lr}
	lsls r0, r0, #1
	lsls r1, r1, #6
	ldr r3, _08046E24 @ =0x0600E000
	adds r1, r1, r3
	adds r0, r0, r1
	cmp r2, #0
	ble _08046E20
	movs r1, #0
_08046E16:
	strh r1, [r0]
	adds r0, #2
	subs r2, #1
	cmp r2, #0
	bne _08046E16
_08046E20:
	pop {r0}
	bx r0
	.align 2, 0
_08046E24: .4byte 0x0600E000

	thumb_func_start sub_08046E28
sub_08046E28: @ 0x08046E28
	movs r2, #0
	strb r2, [r0, #0x16]
	strb r1, [r0, #0x15]
	bx lr

	thumb_func_start sub_08046E30
sub_08046E30: @ 0x08046E30
	bx lr
	.align 2, 0

	thumb_func_start sub_08046E34
sub_08046E34: @ 0x08046E34
	push {r4, r5, lr}
	bl sub_08041434
	adds r5, r0, #0
	movs r1, #0
	bl sub_08041318
	adds r4, r0, #0
	movs r0, #0
	movs r1, #2
	bl sub_0804066C
	adds r4, #1
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08041318
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08046E5C
sub_08046E5C: @ 0x08046E5C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	adds r7, r3, #0
	ldr r0, [sp, #0x18]
	mov r8, r0
	cmp r4, #0
	bge _08046E9C
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r5, #1
	lsls r0, r6, #6
	ldr r3, _08046E98 @ =0x0600E000
	adds r0, r0, r3
	adds r1, r1, r0
	movs r3, #0
_08046E82:
	strh r2, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, #2
	subs r3, #1
	cmp r3, #0
	bge _08046E82
	movs r0, #1
	b _08046EE8
	.align 2, 0
_08046E98: .4byte 0x0600E000
_08046E9C:
	lsls r1, r5, #1
	lsls r0, r6, #6
	ldr r2, _08046EAC @ =0x0600E000
	adds r0, r0, r2
	adds r5, r1, r0
	movs r6, #1
	b _08046EDE
	.align 2, 0
_08046EAC: .4byte 0x0600E000
_08046EB0:
	adds r0, r4, #0
	movs r1, #0xa
	bl Mod
	cmp r6, #1
	beq _08046ECC
	cmp r4, #0
	bne _08046ECC
	ldr r3, [sp, #0x1c]
	cmp r3, #0
	bne _08046ECC
	mov r0, r8
	adds r0, #0xd
	b _08046ECE
_08046ECC:
	add r0, r8
_08046ECE:
	strh r0, [r5]
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	adds r4, r0, #0
	subs r5, #2
	adds r6, #1
_08046EDE:
	cmp r6, r7
	ble _08046EB0
	cmp r4, #0
	bne _08046EB0
	subs r0, r6, #1
_08046EE8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08046EF4
sub_08046EF4: @ 0x08046EF4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r1, #0
	adds r7, r3, #0
	movs r1, #0xcc
	lsls r1, r1, #6
	mov r8, r1
	adds r4, r2, #0
	cmp r4, #0
	bge _08046F30
	mov r3, r8
	lsls r1, r0, #1
	lsls r0, r5, #6
	ldr r2, _08046F2C @ =0x0600E000
	adds r0, r0, r2
	adds r1, r1, r0
	movs r2, #0
_08046F18:
	strh r3, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bge _08046F18
	movs r0, #1
	b _08046F68
	.align 2, 0
_08046F2C: .4byte 0x0600E000
_08046F30:
	lsls r1, r0, #1
	lsls r0, r5, #6
	ldr r2, _08046F40 @ =0x0600E000
	adds r0, r0, r2
	adds r5, r1, r0
	movs r6, #1
	b _08046F5E
	.align 2, 0
_08046F40: .4byte 0x0600E000
_08046F44:
	adds r0, r4, #0
	movs r1, #0xa
	bl Mod
	add r0, r8
	strh r0, [r5]
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	adds r4, r0, #0
	subs r5, #2
	adds r6, #1
_08046F5E:
	cmp r6, r7
	ble _08046F44
	cmp r4, #0
	bne _08046F44
	subs r0, r6, #1
_08046F68:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08046F74
sub_08046F74: @ 0x08046F74
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r3
	ldr r0, [sp, #0x18]
	lsls r7, r0, #0xc
	movs r0, #0xc0
	lsls r0, r0, #2
	orrs r7, r0
	adds r4, r2, #0
	cmp r4, #0
	bge _08046FB8
	lsls r0, r7, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r5, #1
	lsls r0, r6, #6
	ldr r3, _08046FB4 @ =0x0600E000
	adds r0, r0, r3
	adds r1, r1, r0
	movs r3, #0
_08046FA0:
	strh r2, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, #2
	subs r3, #1
	cmp r3, #0
	bge _08046FA0
	movs r0, #1
	b _08046FF0
	.align 2, 0
_08046FB4: .4byte 0x0600E000
_08046FB8:
	lsls r1, r5, #1
	lsls r0, r6, #6
	ldr r2, _08046FC8 @ =0x0600E000
	adds r0, r0, r2
	adds r5, r1, r0
	movs r6, #1
	b _08046FE6
	.align 2, 0
_08046FC8: .4byte 0x0600E000
_08046FCC:
	adds r0, r4, #0
	movs r1, #0xa
	bl Mod
	adds r0, r7, r0
	strh r0, [r5]
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	adds r4, r0, #0
	subs r5, #2
	adds r6, #1
_08046FE6:
	cmp r6, r8
	ble _08046FCC
	cmp r4, #0
	bne _08046FCC
	subs r0, r6, #1
_08046FF0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08046FFC
sub_08046FFC: @ 0x08046FFC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r1, #0
	mov r8, r3
	ldr r0, [sp, #0x18]
	lsls r6, r0, #0xc
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r4, r2, #0
	orrs r6, r0
	cmp r4, #0
	bge _08047040
	lsls r0, r6, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r5, #1
	lsls r0, r7, #6
	ldr r3, _0804703C @ =0x0600E000
	adds r0, r0, r3
	adds r1, r1, r0
	movs r3, #0
_08047028:
	strh r2, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, #2
	subs r3, #1
	cmp r3, #0
	bge _08047028
	movs r0, #1
	b _0804708C
	.align 2, 0
_0804703C: .4byte 0x0600E000
_08047040:
	lsls r1, r5, #1
	lsls r0, r7, #6
	ldr r2, _08047050 @ =0x0600E000
	adds r0, r0, r2
	adds r5, r1, r0
	movs r7, #1
	b _08047082
	.align 2, 0
_08047050: .4byte 0x0600E000
_08047054:
	adds r0, r4, #0
	movs r1, #0xa
	bl Mod
	cmp r7, #1
	beq _08047070
	cmp r4, #0
	bne _08047070
	ldr r3, [sp, #0x1c]
	cmp r3, #0
	bne _08047070
	adds r0, r6, #0
	adds r0, #0xd
	b _08047072
_08047070:
	adds r0, r6, r0
_08047072:
	strh r0, [r5]
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	adds r4, r0, #0
	subs r5, #2
	adds r7, #1
_08047082:
	cmp r7, r8
	ble _08047054
	cmp r4, #0
	bne _08047054
	subs r0, r7, #1
_0804708C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08047098
sub_08047098: @ 0x08047098
	push {lr}
	lsls r0, r0, #1
	lsls r1, r1, #6
	ldr r3, _080470BC @ =0x0600E000
	adds r1, r1, r3
	adds r0, r0, r1
	cmp r2, #0
	ble _080470B6
	ldr r3, _080470C0 @ =0x0000330D
	adds r1, r3, #0
_080470AC:
	strh r1, [r0]
	subs r0, #2
	subs r2, #1
	cmp r2, #0
	bne _080470AC
_080470B6:
	pop {r0}
	bx r0
	.align 2, 0
_080470BC: .4byte 0x0600E000
_080470C0: .4byte 0x0000330D

	thumb_func_start sub_080470C4
sub_080470C4: @ 0x080470C4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r2, #0
	mov r8, r3
	ldr r2, [sp, #0x18]
	lsls r7, r2, #0xc
	movs r2, #0xc0
	lsls r2, r2, #2
	orrs r7, r2
	lsls r0, r0, #1
	lsls r1, r1, #6
	ldr r2, _080470E8 @ =0x0600E000
	adds r1, r1, r2
	adds r4, r0, r1
	movs r6, #1
	b _08047116
	.align 2, 0
_080470E8: .4byte 0x0600E000
_080470EC:
	adds r0, r5, #0
	movs r1, #0xa
	bl Mod
	adds r1, r7, #0
	adds r1, #0x10
	adds r1, r1, r0
	strh r1, [r4]
	adds r2, r4, #0
	adds r2, #0x40
	adds r1, r7, #0
	adds r1, #0x20
	adds r1, r1, r0
	strh r1, [r2]
	adds r0, r5, #0
	movs r1, #0xa
	bl Div
	adds r5, r0, #0
	subs r4, #2
	adds r6, #1
_08047116:
	cmp r6, r8
	ble _080470EC
	cmp r5, #0
	bne _080470EC
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08047128
sub_08047128: @ 0x08047128
	push {r4, lr}
	ldr r3, _0804714C @ =0x0000330D
	lsls r0, r0, #1
	lsls r1, r1, #6
	ldr r4, _08047150 @ =0x0600E000
	adds r1, r1, r4
	adds r0, r0, r1
	cmp r2, #0
	ble _08047144
_0804713A:
	strh r3, [r0]
	adds r0, #2
	subs r2, #1
	cmp r2, #0
	bne _0804713A
_08047144:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804714C: .4byte 0x0000330D
_08047150: .4byte 0x0600E000

	thumb_func_start sub_08047154
sub_08047154: @ 0x08047154
	sub sp, #4
	ldr r0, _08047170 @ =0x330D330D
	str r0, [sp]
	ldr r1, _08047174 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08047178 @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _0804717C @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	bx lr
	.align 2, 0
_08047170: .4byte 0x330D330D
_08047174: .4byte 0x040000D4
_08047178: .4byte 0x0600E000
_0804717C: .4byte 0x85000200

	thumb_func_start sub_08047180
sub_08047180: @ 0x08047180
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov ip, r2
	mov r4, sp
	ldr r3, _080471D8 @ =0x08118438
	ldm r3!, {r2, r5, r6}
	stm r4!, {r2, r5, r6}
	add r5, sp, #0xc
	adds r4, r5, #0
	ldr r3, _080471DC @ =0x08118444
	ldm r3!, {r2, r6, r7}
	stm r4!, {r2, r6, r7}
	mov r7, ip
	lsls r2, r7, #2
	adds r5, r5, r2
	ldr r3, [r5]
	lsls r3, r3, #0xc
	movs r4, #0xc0
	lsls r4, r4, #2
	orrs r3, r4
	add r2, sp
	ldr r2, [r2]
	adds r2, #0x4a
	adds r3, r3, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #1
	lsls r1, r1, #6
	ldr r2, _080471E0 @ =0x0600E000
	adds r1, r1, r2
	adds r1, r0, r1
	movs r2, #0
_080471C0:
	strh r3, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bge _080471C0
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080471D8: .4byte 0x08118438
_080471DC: .4byte 0x08118444
_080471E0: .4byte 0x0600E000

	thumb_func_start sub_080471E4
sub_080471E4: @ 0x080471E4
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	movs r2, #0
	ldr r0, _08047204 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08047208 @ =0x00013270
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804720C
	movs r2, #2
	b _08047222
	.align 2, 0
_08047204: .4byte gEwramData
_08047208: .4byte 0x00013270
_0804720C:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08047218
	movs r2, #3
	b _08047222
_08047218:
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _08047222
	movs r2, #1
_08047222:
	lsls r2, r2, #4
	ldr r0, _0804724C @ =0x0000330A
	orrs r2, r0
	lsls r1, r3, #1
	lsls r0, r4, #6
	ldr r3, _08047250 @ =0x0600E000
	adds r0, r0, r3
	adds r1, r1, r0
	movs r3, #3
_08047234:
	strh r2, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, #2
	subs r3, #1
	cmp r3, #0
	bge _08047234
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804724C: .4byte 0x0000330A
_08047250: .4byte 0x0600E000

	thumb_func_start sub_08047254
sub_08047254: @ 0x08047254
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r2, #0
	movs r7, #0
	ldr r6, _08047288 @ =0x0600E000
_08047260:
	lsls r0, r4, #6
	adds r0, r0, r6
	adds r1, r7, r0
	lsls r0, r2, #4
	adds r4, #1
	adds r3, r2, #1
	adds r0, r5, r0
	movs r2, #0xf
_08047270:
	strh r0, [r1]
	adds r1, #2
	adds r0, #1
	subs r2, #1
	cmp r2, #0
	bge _08047270
	adds r2, r3, #0
	cmp r2, #0xf
	ble _08047260
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08047288: .4byte 0x0600E000

	thumb_func_start sub_0804728C
sub_0804728C: @ 0x0804728C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08040FE0
	adds r0, r4, #0
	bl sub_08046BC8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080472A0
sub_080472A0: @ 0x080472A0
	movs r1, #0
	strb r1, [r0, #0x13]
	strb r1, [r0, #0x14]
	strb r1, [r0, #0x15]
	strb r1, [r0, #0x16]
	strb r1, [r0, #0x17]
	bx lr
	.align 2, 0

	thumb_func_start sub_080472B0
sub_080472B0: @ 0x080472B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r1
	adds r6, r3, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov ip, r2
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #1
	asrs r4, r0, #3
	ldr r1, [sp, #0x18]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	asrs r5, r0, #3
	movs r3, #0
	cmp r3, r5
	bge _0804730C
	lsls r7, r7, #1
_080472DC:
	lsls r0, r3, #5
	add r0, ip
	lsls r0, r0, #0x10
	mov r2, r8
	adds r1, r2, r3
	lsrs r0, r0, #0x10
	lsls r1, r1, #6
	ldr r2, _0804732C @ =0x0600E000
	adds r1, r1, r2
	adds r2, r7, r1
	adds r3, #1
	cmp r4, #0
	ble _08047308
	adds r1, r4, #0
_080472F8:
	strh r0, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _080472F8
_08047308:
	cmp r3, r5
	blt _080472DC
_0804730C:
	lsls r2, r6, #0x10
	lsrs r2, r2, #0x10
	ldr r0, [sp, #0x18]
	lsls r3, r0, #0x10
	lsrs r3, r3, #0x10
	movs r0, #0
	movs r1, #0
	bl sub_08040748
	bl sub_08040FE0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804732C: .4byte 0x0600E000

	thumb_func_start sub_08047330
sub_08047330: @ 0x08047330
	push {r4, lr}
	ldr r4, _08047348 @ =0x0000034F
	cmp r1, #0
	beq _0804736E
	cmp r0, #1
	beq _0804735C
	cmp r0, #1
	bgt _0804734C
	cmp r0, #0
	beq _08047356
	b _0804736A
	.align 2, 0
_08047348: .4byte 0x0000034F
_0804734C:
	cmp r0, #2
	beq _08047362
	cmp r0, #3
	beq _08047368
	b _0804736A
_08047356:
	movs r4, #0xf2
	lsls r4, r4, #1
	b _0804736A
_0804735C:
	movs r4, #0x87
	lsls r4, r4, #2
	b _0804736A
_08047362:
	movs r4, #0x8d
	lsls r4, r4, #2
	b _0804736A
_08047368:
	ldr r4, _0804738C @ =0x00000257
_0804736A:
	subs r0, r4, #1
	adds r4, r0, r1
_0804736E:
	movs r0, #0
	movs r1, #0
	movs r2, #0x1e
	movs r3, #2
	bl sub_08040748
	bl sub_08040FE0
	adds r0, r4, #0
	bl sub_08046BC8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804738C: .4byte 0x00000257

	thumb_func_start sub_08047390
sub_08047390: @ 0x08047390
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	bl sub_08041434
	adds r6, r0, #0
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0
	bl sub_0804066C
	adds r0, r6, #0
	movs r1, #0
	bl sub_08041318
	adds r5, r0, #0
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0
	adds r1, r4, #0
	bl sub_0804066C
	adds r5, #1
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08041318
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080473CC
sub_080473CC: @ 0x080473CC
	push {r4, lr}
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r0, r0, #1
	lsls r1, r1, #6
	ldr r4, _080473F0 @ =0x0600E000
	adds r1, r1, r4
	adds r0, r0, r1
	cmp r3, #0
	ble _080473EA
_080473E0:
	strh r2, [r0]
	adds r0, #2
	subs r3, #1
	cmp r3, #0
	bne _080473E0
_080473EA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080473F0: .4byte 0x0600E000

	thumb_func_start sub_080473F4
sub_080473F4: @ 0x080473F4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r7, _080474EC @ =gEwramData
	ldr r0, [r7]
	ldr r1, _080474F0 @ =0x0000042C
	adds r0, r0, r1
	ldr r6, [r0]
	movs r0, #1
	ands r6, r0
	cmp r6, #0
	bne _080474E2
	adds r0, r5, #0
	bl sub_0801093C
	bl sub_0800D154
	bl sub_0803E75C
	bl sub_0803B04C
	bl sub_080125B4
	bl sub_0803C294
	ldr r2, _080474F4 @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _080474F8 @ =0x0000DFFF
	ands r0, r1
	movs r1, #0
	mov r8, r1
	strh r0, [r2]
	ldr r2, [r7]
	ldr r3, _080474FC @ =0x0000A074
	adds r2, r2, r3
	ldrb r0, [r2]
	movs r1, #0x30
	orrs r0, r1
	movs r1, #0xc
	orrs r0, r1
	strb r0, [r2]
	ldr r4, _08047500 @ =gDisplayRegisters
	adds r1, r4, #0
	adds r1, #0x48
	movs r0, #0xff
	strh r0, [r1]
	ldr r1, [r7]
	adds r1, r1, r3
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r7]
	adds r1, r1, r3
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	movs r0, #6
	strb r0, [r5, #4]
	mov r2, r8
	strb r2, [r5, #5]
	strh r6, [r4, #8]
	strh r6, [r4, #0xa]
	ldr r1, [r7]
	ldr r0, _08047504 @ =0x00007864
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	bl sub_08013BCC
	movs r0, #1
	bl sub_0803FD1C
	ldr r0, [r7]
	ldr r2, _08047508 @ =0x0001326A
	adds r1, r0, r2
	ldrb r1, [r1]
	ldr r2, _0804750C @ =0x00013408
	adds r0, r0, r2
	strb r1, [r0]
	ldr r0, [r7]
	ldr r2, _08047510 @ =0x0001326B
	adds r1, r0, r2
	ldrb r1, [r1]
	ldr r2, _08047514 @ =0x00013409
	adds r0, r0, r2
	strb r1, [r0]
	movs r0, #2
	movs r1, #0
	bl sub_0803DD14
	movs r0, #1
	movs r1, #1
	bl sub_0803DD14
	bl sub_0803FD60
	ldr r0, [r7]
	ldr r1, _08047518 @ =0x0000FEC0
	adds r0, r0, r1
	mov r2, r8
	strb r2, [r0]
	ldr r0, [r7]
	adds r1, #1
	adds r0, r0, r1
	strb r2, [r0]
	adds r4, #0x4c
	movs r0, #0x10
	strh r0, [r4]
	ldr r0, [r7]
	ldr r2, _0804751C @ =0x00025553
	adds r0, r0, r2
	mov r1, r8
	strb r1, [r0]
_080474E2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080474EC: .4byte gEwramData
_080474F0: .4byte 0x0000042C
_080474F4: .4byte gUnk_03002CB0
_080474F8: .4byte 0x0000DFFF
_080474FC: .4byte 0x0000A074
_08047500: .4byte gDisplayRegisters
_08047504: .4byte 0x00007864
_08047508: .4byte 0x0001326A
_0804750C: .4byte 0x00013408
_08047510: .4byte 0x0001326B
_08047514: .4byte 0x00013409
_08047518: .4byte 0x0000FEC0
_0804751C: .4byte 0x00025553

	thumb_func_start sub_08047520
sub_08047520: @ 0x08047520
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r5, r0, #0
	ldr r4, _08047670 @ =gEwramData
	ldr r0, [r4]
	mov r8, r0
	ldr r1, _08047674 @ =0x0001325C
	add r8, r1
	ldr r1, _08047678 @ =0x0815E940
	movs r0, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	bl sub_08047154
	bl sub_0804AD9C
	ldr r0, [r4]
	ldr r1, _0804767C @ =0x0001326B
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	bl sub_08031FC4
	movs r0, #0xe
	movs r1, #2
	bl sub_080463A8
	movs r0, #0xe
	movs r1, #5
	bl sub_080466C8
	movs r0, #0x18
	movs r1, #5
	bl sub_0804679C
	ldr r0, [r4]
	adds r0, #0xac
	ldr r3, [r0]
	movs r0, #0x1c
	movs r1, #8
	movs r2, #3
	bl sub_08046870
	adds r0, r5, #0
	adds r0, #0x2d
	ldrb r1, [r0]
	lsrs r1, r1, #6
	adds r0, r5, #0
	bl sub_08011E24
	adds r6, r0, #0
	movs r1, #0xa
	bl Div
	adds r2, r0, #0
	movs r5, #3
	str r5, [sp]
	movs r4, #0
	str r4, [sp, #4]
	movs r0, #0x17
	movs r1, #9
	movs r3, #3
	bl sub_08046FFC
	adds r0, r6, #0
	movs r1, #0xa
	bl Mod
	adds r2, r0, #0
	str r5, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x19
	movs r1, #9
	movs r3, #1
	bl sub_08046FFC
	mov r0, r8
	ldr r2, [r0, #0x34]
	movs r0, #6
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #0x1a
	movs r1, #0xa
	movs r3, #6
	bl sub_08046FFC
	mov r1, r8
	ldr r2, [r1, #0x30]
	str r5, [sp]
	str r4, [sp, #4]
	movs r0, #0x19
	movs r1, #0xc
	movs r3, #8
	bl sub_08046FFC
	mov r0, r8
	bl sub_08033E10
	adds r2, r0, #0
	str r5, [sp]
	str r4, [sp, #4]
	movs r0, #0x19
	movs r1, #0xd
	movs r3, #8
	bl sub_08046FFC
	mov r0, r8
	ldrb r2, [r0, #0x1d]
	str r5, [sp]
	movs r0, #5
	movs r1, #9
	movs r3, #2
	bl sub_080470C4
	movs r0, #0xc
	movs r1, #9
	bl sub_080471E4
	bl sub_0804059C
	ldr r0, _08047680 @ =0x06008000
	bl sub_080412DC
	movs r0, #1
	bl sub_080412F0
	movs r0, #0
	bl sub_08041304
_0804762C:
	adds r1, r4, #0
	adds r1, #0xf
	lsls r2, r4, #0x15
	movs r0, #0xc8
	lsls r0, r0, #0x16
	adds r2, r2, r0
	lsrs r2, r2, #0x10
	movs r0, #0xa
	movs r3, #0x13
	bl sub_08046DD4
	adds r4, #1
	cmp r4, #2
	ble _0804762C
	movs r0, #0
	movs r1, #0
	movs r2, #0x1a
	movs r3, #3
	bl sub_08040748
	bl sub_08040FE0
	bl sub_08047C4C
	movs r0, #1
	bl sub_08048BC4
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08047670: .4byte gEwramData
_08047674: .4byte 0x0001325C
_08047678: .4byte 0x0815E940
_0804767C: .4byte 0x0001326B
_08047680: .4byte 0x06008000

	thumb_func_start sub_08047684
sub_08047684: @ 0x08047684
	push {r4, r5, r6, lr}
	ldr r5, _080476A4 @ =0x0815E02C
	ldr r4, _080476A8 @ =0x08264398
	ldr r6, _080476AC @ =0x0827B200
	ldr r0, _080476B0 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _080476B4
	cmp r0, #3
	beq _080476C8
	b _080476CE
	.align 2, 0
_080476A4: .4byte 0x0815E02C
_080476A8: .4byte 0x08264398
_080476AC: .4byte 0x0827B200
_080476B0: .4byte gEwramData
_080476B4:
	ldr r5, _080476BC @ =0x0827397C
	ldr r4, _080476C0 @ =0x08275980
	ldr r6, _080476C4 @ =0x08277984
	b _080476CE
	.align 2, 0
_080476BC: .4byte 0x0827397C
_080476C0: .4byte 0x08275980
_080476C4: .4byte 0x08277984
_080476C8:
	ldr r5, _080476EC @ =0x08268838
	ldr r4, _080476F0 @ =0x0826A83C
	ldr r6, _080476F4 @ =0x0826C848
_080476CE:
	bl sub_0805B864
	cmp r0, #0
	beq _080476FC
	ldr r0, _080476F8 @ =0x0826664C
	bl sub_0803C8B0
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r4, #0
	movs r2, #0
	bl sub_0803FD9C
	b _0804770E
	.align 2, 0
_080476EC: .4byte 0x08268838
_080476F0: .4byte 0x0826A83C
_080476F4: .4byte 0x0826C848
_080476F8: .4byte 0x0826664C
_080476FC:
	ldr r0, _08047744 @ =0x080E5C20
	bl sub_0803C8B0
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r5, #0
	movs r2, #0
	bl sub_0803FD9C
_0804770E:
	ldr r1, _08047748 @ =0x0600A000
	adds r0, r6, #0
	movs r2, #0
	bl sub_0803FD9C
	ldr r1, _0804774C @ =gDisplayRegisters
	ldr r0, _08047750 @ =0x00001C04
	strh r0, [r1]
	adds r0, #0xfc
	strh r0, [r1, #2]
	ldr r2, _08047754 @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _08047758 @ =0x000013FF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0804775C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08047760 @ =0x00000E2C
	adds r0, r0, r1
	bl sub_08047F34
	bl sub_08048AA4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08047744: .4byte 0x080E5C20
_08047748: .4byte 0x0600A000
_0804774C: .4byte gDisplayRegisters
_08047750: .4byte 0x00001C04
_08047754: .4byte gUnk_03002CB0
_08047758: .4byte 0x000013FF
_0804775C: .4byte gEwramData
_08047760: .4byte 0x00000E2C

	thumb_func_start sub_08047764
sub_08047764: @ 0x08047764
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r0, _08047790 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08047794 @ =0x00000E2C
	adds r6, r0, r1
	movs r2, #0
	mov sb, r2
	ldrh r4, [r0, #0x18]
	ldrh r2, [r0, #0x16]
	ldrb r0, [r5, #5]
	cmp r0, #7
	bls _08047786
	b _08047B08
_08047786:
	lsls r0, r0, #2
	ldr r1, _08047798 @ =_0804779C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08047790: .4byte gEwramData
_08047794: .4byte 0x00000E2C
_08047798: .4byte _0804779C
_0804779C: @ jump table
	.4byte _080477BC @ case 0
	.4byte _080477BC @ case 1
	.4byte _08047828 @ case 2
	.4byte _08047848 @ case 3
	.4byte _08047984 @ case 4
	.4byte _08047A04 @ case 5
	.4byte _08047A56 @ case 6
	.4byte _08047A9E @ case 7
_080477BC:
	ldr r7, _08047818 @ =gEwramData
	ldr r2, [r7]
	ldr r3, _0804781C @ =0x0000A074
	adds r2, r2, r3
	ldrb r0, [r2]
	movs r1, #0x30
	orrs r0, r1
	movs r1, #0xc
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08047820 @ =gDisplayRegisters
	adds r1, r0, #0
	adds r1, #0x4c
	ldrh r0, [r1]
	adds r0, #3
	movs r4, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bhi _080477E8
	b _08047B08
_080477E8:
	movs r0, #0x10
	strh r0, [r1]
	bl sub_08047684
	adds r0, r5, #0
	bl sub_08047520
	movs r0, #2
	strb r0, [r5, #5]
	strb r4, [r6, #0xc]
	strb r4, [r6, #0xb]
	strb r4, [r6, #0xa]
	ldr r0, [r7]
	ldr r1, _08047824 @ =0x00025553
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #0xc
	movs r0, #1
	bl sub_08048AD8
_08047812:
	bl sub_08048018
	b _08047B08
	.align 2, 0
_08047818: .4byte gEwramData
_0804781C: .4byte 0x0000A074
_08047820: .4byte gDisplayRegisters
_08047824: .4byte 0x00025553
_08047828:
	ldr r0, _08047844 @ =gDisplayRegisters
	adds r1, r0, #0
	adds r1, #0x4c
	ldrh r0, [r1]
	subs r0, #3
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08047812
	movs r0, #3
	strb r0, [r5, #5]
	movs r0, #0
	strh r0, [r1]
	b _08047812
	.align 2, 0
_08047844: .4byte gDisplayRegisters
_08047848:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _0804785C
	movs r0, #0xf0
	bl sub_080D7910
	movs r0, #7
	strb r0, [r5, #5]
	b _08047812
_0804785C:
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _080478A6
	movs r0, #0xf3
	bl sub_080D7910
	ldr r0, _08047894 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _08047898 @ =0x00025553
	adds r2, r0, r3
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #4
	bne _080478A0
	movs r0, #6
	strb r0, [r5, #5]
	ldr r1, _0804789C @ =0x085254C0
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	b _08047812
	.align 2, 0
_08047894: .4byte gEwramData
_08047898: .4byte 0x00025553
_0804789C: .4byte 0x085254C0
_080478A0:
	movs r0, #4
	strb r0, [r5, #5]
	b _08047812
_080478A6:
	movs r0, #0xc0
	ands r0, r4
	cmp r0, #0
	beq _08047812
	movs r0, #0xf1
	bl sub_080D7910
	movs r5, #0x40
	ands r5, r4
	cmp r5, #0
	beq _080478E8
	ldr r2, _080478E0 @ =gEwramData
	ldr r1, [r2]
	ldr r3, _080478E4 @ =0x00025553
	adds r1, r1, r3
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	ldr r0, [r2]
	adds r1, r0, r3
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r4, r2, #0
	cmp r0, #0
	bge _08047906
	movs r0, #6
	strb r0, [r1]
	b _08047906
	.align 2, 0
_080478E0: .4byte gEwramData
_080478E4: .4byte 0x00025553
_080478E8:
	ldr r2, _0804793C @ =gEwramData
	ldr r1, [r2]
	ldr r3, _08047940 @ =0x00025553
	adds r1, r1, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r2]
	adds r1, r0, r3
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r4, r2, #0
	cmp r0, #6
	ble _08047906
	strb r5, [r1]
_08047906:
	ldr r0, [r4]
	ldr r1, _08047940 @ =0x00025553
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #0xc
	movs r0, #1
	bl sub_08048AD8
	movs r2, #2
	mov r8, r2
	movs r7, #0xc
	ldr r0, [r4]
	ldr r3, _08047940 @ =0x00025553
	adds r0, r0, r3
	movs r6, #0
	ldrsb r6, [r0, r6]
	movs r4, #0
	movs r5, #0x40
_0804792C:
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r2, r5, r0
	cmp r4, r6
	bne _08047944
	movs r0, #0xc0
	lsls r0, r0, #6
	b _08047948
	.align 2, 0
_0804793C: .4byte gEwramData
_08047940: .4byte 0x00025553
_08047944:
	movs r0, #0xe0
	lsls r0, r0, #7
_08047948:
	orrs r2, r0
	adds r1, r7, r4
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, r8
	movs r3, #6
	bl sub_08046DD4
	adds r5, #0x10
	adds r4, #1
	cmp r4, #6
	ble _0804792C
	ldr r0, _08047978 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804797C @ =0x00025553
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r2, _08047980 @ =0x00000362
	adds r0, r0, r2
	bl sub_0804728C
	b _08047812
	.align 2, 0
_08047978: .4byte gEwramData
_0804797C: .4byte 0x00025553
_08047980: .4byte 0x00000362
_08047984:
	ldr r0, _080479F0 @ =gDisplayRegisters
	adds r4, r0, #0
	adds r4, #0x4c
	ldrh r0, [r4]
	adds r0, #3
	strh r0, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bhi _0804799A
	b _08047B08
_0804799A:
	ldr r3, _080479F4 @ =gEwramData
	mov r8, r3
	ldr r0, [r3]
	ldr r7, _080479F8 @ =0x00025553
	adds r1, r0, r7
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #6
	beq _080479CA
	ldr r0, _080479FC @ =0x085254A0
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r1, #1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	movs r0, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	bl sub_08047154
_080479CA:
	ldr r1, _08047A00 @ =0x085254C0
	mov r2, r8
	ldr r0, [r2]
	adds r0, r0, r7
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	movs r0, #5
	strb r0, [r5, #5]
	movs r0, #0x10
	strh r0, [r4]
	b _08047B08
	.align 2, 0
_080479F0: .4byte gDisplayRegisters
_080479F4: .4byte gEwramData
_080479F8: .4byte 0x00025553
_080479FC: .4byte 0x085254A0
_08047A00: .4byte 0x085254C0
_08047A04:
	ldr r0, _08047A3C @ =gDisplayRegisters
	adds r1, r0, #0
	adds r1, #0x4c
	ldrh r0, [r1]
	subs r0, #3
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08047A1E
	movs r0, #6
	strb r0, [r5, #5]
	movs r0, #0
	strh r0, [r1]
_08047A1E:
	ldr r0, _08047A40 @ =gEwramData
	ldr r1, [r0]
	ldr r3, _08047A44 @ =0x00025553
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08047A4C
	ldr r2, _08047A48 @ =0x00000FB8
	adds r0, r1, r2
	bl sub_08048108
	b _08047B08
	.align 2, 0
_08047A3C: .4byte gDisplayRegisters
_08047A40: .4byte gEwramData
_08047A44: .4byte 0x00025553
_08047A48: .4byte 0x00000FB8
_08047A4C:
	cmp r0, #0
	blt _08047B08
	cmp r0, #6
	bgt _08047B08
	b _08047812
_08047A56:
	ldr r1, _08047A8C @ =0x085254DC
	ldr r4, _08047A90 @ =gEwramData
	ldr r0, [r4]
	ldr r3, _08047A94 @ =0x00025553
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	cmp r0, #0
	beq _08047B08
	ldr r0, [r4]
	ldr r1, _08047A94 @ =0x00025553
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	bne _08047A98
	movs r0, #3
	strb r0, [r5, #5]
	b _08047B08
	.align 2, 0
_08047A8C: .4byte 0x085254DC
_08047A90: .4byte gEwramData
_08047A94: .4byte 0x00025553
_08047A98:
	movs r0, #1
	strb r0, [r5, #5]
	b _08047B08
_08047A9E:
	ldr r5, _08047B34 @ =gDisplayRegisters
	adds r4, r5, #0
	adds r4, #0x4c
	ldrh r0, [r4]
	adds r0, #3
	strh r0, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08047B08
	bl sub_08047B44
	bl sub_08000B64
	movs r0, #0
	strh r0, [r4]
	adds r2, r5, #0
	adds r2, #0x48
	ldrh r0, [r2]
	movs r3, #0xfc
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	bl sub_08013B44
	ldr r4, _08047B38 @ =gEwramData
	ldr r2, [r4]
	ldr r3, _08047B3C @ =0x0000A074
	adds r2, r2, r3
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r4]
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
	movs r0, #1
	mov sb, r0
_08047B08:
	ldr r0, _08047B38 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08047B40 @ =0x00025553
	adds r0, r0, r1
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08047B24
	bl sub_08048B88
	bl sub_08048BEC
_08047B24:
	mov r0, sb
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08047B34: .4byte gDisplayRegisters
_08047B38: .4byte gEwramData
_08047B3C: .4byte 0x0000A074
_08047B40: .4byte 0x00025553

	thumb_func_start sub_08047B44
sub_08047B44: @ 0x08047B44
	push {r4, r5, lr}
	ldr r4, _08047BFC @ =gEwramData
	ldr r1, [r4]
	ldr r2, _08047C00 @ =0x00000E2C
	adds r0, r1, r2
	adds r1, #0x60
	ldr r5, [r1, #0x28]
	bl EntityDelete
	bl sub_08048BA0
	bl sub_08048BA0
	ldr r0, [r4]
	ldr r3, _08047C04 @ =0x0000A0E8
	adds r1, r0, r3
	ldr r1, [r1]
	adds r3, #4
	adds r2, r0, r3
	ldrh r2, [r2]
	adds r3, #2
	adds r0, r0, r3
	ldrh r3, [r0]
	movs r0, #1
	bl sub_0803F8A8
	bl sub_0800DA50
	bl sub_080682F4
	bl sub_0803C3E0
	bl sub_0801261C
	bl sub_0803B184
	bl sub_0803E7C0
	ldr r1, _08047C08 @ =gUnk_03002CB0
	movs r0, #0
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_080108DC
	adds r0, r5, #0
	bl sub_080108FC
	bl sub_0800D1F0
	ldr r0, [r4]
	adds r0, #0x88
	ldr r0, [r0]
	ldr r5, [r0, #8]
	movs r4, #1
_08047BB0:
	ldrb r0, [r5]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	bl sub_0803DD14
	adds r5, #0xc
	adds r4, #1
	cmp r4, #3
	ble _08047BB0
	bl sub_0803FD60
	ldr r4, _08047BFC @ =gEwramData
	ldr r0, [r4]
	ldr r2, _08047C0C @ =0x00013408
	adds r1, r0, r2
	ldr r3, _08047C10 @ =0x0001326A
	adds r0, r0, r3
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	beq _08047BDE
	bl sub_0802DFF0
_08047BDE:
	ldr r0, [r4]
	ldr r2, _08047C14 @ =0x00013409
	adds r1, r0, r2
	ldr r3, _08047C18 @ =0x0001326B
	adds r0, r0, r3
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	beq _08047BF4
	bl sub_080321C4
_08047BF4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08047BFC: .4byte gEwramData
_08047C00: .4byte 0x00000E2C
_08047C04: .4byte 0x0000A0E8
_08047C08: .4byte gUnk_03002CB0
_08047C0C: .4byte 0x00013408
_08047C10: .4byte 0x0001326A
_08047C14: .4byte 0x00013409
_08047C18: .4byte 0x0001326B

	thumb_func_start sub_08047C1C
sub_08047C1C: @ 0x08047C1C
	push {lr}
	bl sub_0803E75C
	bl sub_0803B04C
	bl sub_080125B4
	bl sub_0803C294
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08047C34
sub_08047C34: @ 0x08047C34
	push {lr}
	bl sub_0803C3E0
	bl sub_0801261C
	bl sub_0803B184
	bl sub_0803E7C0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08047C4C
sub_08047C4C: @ 0x08047C4C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r0, #2
	mov r8, r0
	movs r7, #0xc
	ldr r0, _08047C78 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08047C7C @ =0x00025553
	adds r0, r0, r1
	movs r6, #0
	ldrsb r6, [r0, r6]
	movs r4, #0
	movs r5, #0x40
_08047C68:
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r2, r5, r0
	cmp r4, r6
	bne _08047C80
	movs r0, #0xc0
	lsls r0, r0, #6
	b _08047C84
	.align 2, 0
_08047C78: .4byte gEwramData
_08047C7C: .4byte 0x00025553
_08047C80:
	movs r0, #0xe0
	lsls r0, r0, #7
_08047C84:
	orrs r2, r0
	adds r1, r7, r4
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, r8
	movs r3, #6
	bl sub_08046DD4
	adds r5, #0x10
	adds r4, #1
	cmp r4, #6
	ble _08047C68
	ldr r0, _08047CBC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08047CC0 @ =0x00025553
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, _08047CC4 @ =0x00000362
	adds r0, r0, r1
	bl sub_0804728C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08047CBC: .4byte gEwramData
_08047CC0: .4byte 0x00025553
_08047CC4: .4byte 0x00000362

	thumb_func_start sub_08047CC8
sub_08047CC8: @ 0x08047CC8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x42
	movs r0, #8
	strh r0, [r1]
	adds r1, #0x23
	movs r0, #0x18
	strb r0, [r1]
	movs r0, #0x16
	ldrsb r0, [r5, r0]
	cmp r0, #0
	beq _08047CEE
	subs r1, #0x1f
	movs r0, #0x54
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_0803AC40
_08047CEE:
	movs r1, #0x14
	ldrsb r1, [r5, r1]
	movs r0, #0x16
	ldrsb r0, [r5, r0]
	adds r0, #8
	cmp r1, r0
	ble _08047D1E
	adds r1, r5, #0
	adds r1, #0x46
	movs r0, #0x6c
	strh r0, [r1]
	adds r4, r5, #0
	adds r4, #0x58
	ldrb r0, [r4]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4]
	adds r0, r5, #0
	bl sub_0803AC40
	ldrb r1, [r4]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4]
_08047D1E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08047D24
sub_08047D24: @ 0x08047D24
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	movs r1, #0x15
	ldrsb r1, [r6, r1]
	movs r0, #0x16
	ldrsb r0, [r6, r0]
	subs r2, r1, r0
	ldr r0, _08047D4C @ =gEwramData
	ldr r0, [r0]
	ldr r0, [r0]
	lsrs r1, r0, #1
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08047D50
	movs r0, #7
	ands r1, r0
	movs r0, #3
	subs r3, r0, r1
	b _08047D56
	.align 2, 0
_08047D4C: .4byte gEwramData
_08047D50:
	movs r0, #7
	ands r1, r0
	subs r3, r1, #3
_08047D56:
	movs r7, #1
	adds r1, r2, #0
	ands r1, r7
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #4
	adds r0, #8
	adds r0, r0, r3
	adds r5, r6, #0
	adds r5, #0x42
	strh r0, [r5]
	movs r0, #6
	ands r2, r0
	lsls r0, r2, #2
	adds r0, #0x54
	adds r4, r6, #0
	adds r4, #0x46
	strh r0, [r4]
	adds r0, r6, #0
	bl sub_0803AC40
	adds r0, r6, #0
	bl sub_08047CC8
	ldr r0, _08047D9C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08047DA0 @ =0x00013270
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08047DA4
	movs r2, #0x31
	b _08047DBA
	.align 2, 0
_08047D9C: .4byte gEwramData
_08047DA0: .4byte 0x00013270
_08047DA4:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08047DB0
	movs r2, #2
	b _08047DBA
_08047DB0:
	ands r1, r7
	movs r2, #1
	cmp r1, #0
	beq _08047DBA
	movs r2, #3
_08047DBA:
	movs r0, #0x80
	strh r0, [r5]
	movs r0, #0x38
	strh r0, [r4]
	adds r0, r6, #0
	adds r0, #0x65
	strb r2, [r0]
	adds r0, r6, #0
	bl sub_0803AC40
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08047DD4
sub_08047DD4: @ 0x08047DD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r1, #0
	ldr r0, _08047DFC @ =gEwramData
	ldr r0, [r0]
	ldr r0, [r0]
	lsrs r1, r0, #1
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08047E00
	movs r0, #7
	ands r1, r0
	movs r0, #3
	subs r0, r0, r1
	b _08047E06
	.align 2, 0
_08047DFC: .4byte gEwramData
_08047E00:
	movs r0, #7
	ands r1, r0
	subs r0, r1, #3
_08047E06:
	adds r0, #0x18
	adds r5, r6, #0
	adds r5, #0x42
	strh r0, [r5]
	movs r0, #0x15
	ldrsb r0, [r6, r0]
	lsls r0, r0, #4
	adds r0, #0x24
	adds r4, r6, #0
	adds r4, #0x46
	strh r0, [r4]
	adds r0, r6, #0
	bl sub_0803AC40
	movs r0, #0xac
	strh r0, [r5]
	movs r5, #3
	mov sb, r4
	movs r0, #0x18
	adds r0, r0, r6
	mov r8, r0
	adds r7, r6, #0
	adds r7, #0x65
	ldr r1, _08047E68 @ =0x085254F8
	mov sl, r1
	movs r4, #0x54
_08047E3A:
	mov r0, sb
	strh r4, [r0]
	mov r1, r8
	adds r0, r1, r5
	ldrb r0, [r0]
	add r0, sl
	ldrb r0, [r0]
	strb r0, [r7]
	adds r0, r6, #0
	bl sub_0803AC40
	subs r4, #0x10
	subs r5, #1
	cmp r5, #0
	bge _08047E3A
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08047E68: .4byte 0x085254F8

	thumb_func_start sub_08047E6C
sub_08047E6C: @ 0x08047E6C
	push {r4, lr}
	adds r4, r1, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _08047E80
	cmp r0, #1
	ble _08047F2C
	cmp r0, #2
	beq _08047ECE
	b _08047F2C
_08047E80:
	ldr r0, _08047E9C @ =gEwramData
	ldr r0, [r0]
	ldr r0, [r0]
	lsrs r1, r0, #1
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08047EA0
	movs r0, #7
	ands r1, r0
	movs r0, #3
	subs r2, r0, r1
	b _08047EA6
	.align 2, 0
_08047E9C: .4byte gEwramData
_08047EA0:
	movs r0, #7
	ands r1, r0
	subs r2, r1, #3
_08047EA6:
	ldrb r0, [r4, #0x16]
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #7
	adds r1, #8
	adds r1, r1, r2
	adds r2, r4, #0
	adds r2, #0x42
	strh r1, [r2]
	movs r0, #0x15
	ldrsb r0, [r4, r0]
	lsls r0, r0, #4
	adds r0, #0x34
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_0803AC40
	b _08047F2C
_08047ECE:
	movs r1, #0x15
	ldrsb r1, [r4, r1]
	movs r0, #0x16
	ldrsb r0, [r4, r0]
	subs r2, r1, r0
	ldr r0, _08047EF4 @ =gEwramData
	ldr r0, [r0]
	ldr r0, [r0]
	lsrs r1, r0, #1
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08047EF8
	movs r0, #7
	ands r1, r0
	movs r0, #3
	subs r3, r0, r1
	b _08047EFE
	.align 2, 0
_08047EF4: .4byte gEwramData
_08047EF8:
	movs r0, #7
	ands r1, r0
	subs r3, r1, #3
_08047EFE:
	movs r1, #1
	ands r1, r2
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #4
	adds r0, #8
	adds r0, r0, r3
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	movs r0, #6
	ands r2, r0
	lsls r0, r2, #2
	adds r0, #0x54
	adds r2, r4, #0
	adds r2, #0x46
	strh r0, [r2]
	adds r0, r4, #0
	bl sub_0803AC40
	adds r0, r4, #0
	bl sub_08047CC8
_08047F2C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08047F34
sub_08047F34: @ 0x08047F34
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08047F50 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _08047F58
	cmp r0, #3
	beq _08047F60
	ldr r0, _08047F54 @ =0x082052D8
	b _08047F62
	.align 2, 0
_08047F50: .4byte gEwramData
_08047F54: .4byte 0x082052D8
_08047F58:
	ldr r0, _08047F5C @ =0x0827798C
	b _08047F62
	.align 2, 0
_08047F5C: .4byte 0x0827798C
_08047F60:
	ldr r0, _08047FB0 @ =0x0826C840
_08047F62:
	movs r1, #0
	bl sub_0803B800
	strb r0, [r4, #0x11]
	ldr r4, _08047FB4 @ =0x085254FC
	ldr r0, [r4]
	movs r1, #2
	movs r2, #1
	movs r3, #0xa
	bl sub_0803C7B4
	ldr r0, [r4]
	movs r1, #3
	movs r2, #1
	movs r3, #0xb
	bl sub_0803C7B4
	ldr r0, [r4]
	movs r1, #4
	movs r2, #1
	movs r3, #0xc
	bl sub_0803C7B4
	ldr r0, [r4]
	movs r1, #1
	movs r2, #1
	movs r3, #0xd
	bl sub_0803C7B4
	ldr r0, [r4]
	movs r1, #0
	movs r2, #1
	movs r3, #0xe
	bl sub_0803C7B4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08047FB0: .4byte 0x0826C840
_08047FB4: .4byte 0x085254FC

	thumb_func_start sub_08047FB8
sub_08047FB8: @ 0x08047FB8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08047FD6
	movs r0, #0xc
	strh r0, [r4, #0x34]
	movs r0, #0x15
	ldrsb r0, [r4, r0]
	lsls r0, r0, #3
	adds r0, #0x5c
	strh r0, [r4, #0x36]
	bl sub_08048018
	b _0804800E
_08047FD6:
	ldrb r0, [r4, #0xd]
	movs r1, #0x3c
	cmp r0, #0
	beq _08047FE0
	movs r1, #0x88
_08047FE0:
	strh r1, [r4, #0x34]
	movs r0, #0x88
	strh r0, [r4, #0x36]
	movs r0, #1
	bl sub_08048084
	ldr r0, _08048014 @ =gEwramData
	ldr r0, [r0]
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0804800E
	movs r0, #0x10
	strh r0, [r4, #0x34]
	movs r0, #0x15
	ldrsb r0, [r4, r0]
	lsls r0, r0, #3
	adds r0, #0x5c
	strh r0, [r4, #0x36]
	movs r0, #0
	bl sub_08048084
_0804800E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08048014: .4byte gEwramData

	thumb_func_start sub_08048018
sub_08048018: @ 0x08048018
	push {r4, lr}
	ldr r3, _08048054 @ =gEwramData
	ldr r2, [r3]
	ldr r0, _08048058 @ =0x00000E2C
	adds r4, r2, r0
	adds r0, #0x65
	adds r1, r2, r0
	movs r0, #0x1e
	strb r0, [r1]
	ldr r0, _0804805C @ =0x00000E86
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x68
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r3]
	ldr r0, [r0]
	lsrs r1, r0, #1
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08048060
	movs r0, #7
	ands r1, r0
	movs r0, #3
	subs r1, r0, r1
	b _08048066
	.align 2, 0
_08048054: .4byte gEwramData
_08048058: .4byte 0x00000E2C
_0804805C: .4byte 0x00000E86
_08048060:
	movs r0, #7
	ands r1, r0
	subs r1, #3
_08048066:
	ldrh r0, [r4, #0x34]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r0, [r4, #0x36]
	adds r1, #4
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_0803AC40
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08048084
sub_08048084: @ 0x08048084
	push {r4, r5, r6, lr}
	ldr r6, _080480D4 @ =gEwramData
	ldr r3, [r6]
	ldr r1, _080480D8 @ =0x00000E2C
	adds r5, r3, r1
	ldr r4, _080480DC @ =0x00000E91
	adds r2, r3, r4
	movs r1, #0x1e
	strb r1, [r2]
	ldr r1, _080480E0 @ =0x00000E86
	adds r4, r3, r1
	ldrb r2, [r4]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #0x68
	orrs r1, r2
	strb r1, [r4]
	ldrh r2, [r5, #0x34]
	ldr r4, _080480E4 @ =0x00000E6E
	adds r1, r3, r4
	strh r2, [r1]
	ldrh r1, [r5, #0x36]
	ldr r2, _080480E8 @ =0x00000E72
	adds r3, r3, r2
	strh r1, [r3]
	cmp r0, #0
	beq _080480FC
	ldr r0, [r6]
	ldr r0, [r0]
	lsrs r3, r0, #1
	movs r0, #8
	ands r0, r3
	cmp r0, #0
	beq _080480EC
	movs r0, #7
	ands r3, r0
	movs r0, #3
	subs r3, r0, r3
	b _080480F2
	.align 2, 0
_080480D4: .4byte gEwramData
_080480D8: .4byte 0x00000E2C
_080480DC: .4byte 0x00000E91
_080480E0: .4byte 0x00000E86
_080480E4: .4byte 0x00000E6E
_080480E8: .4byte 0x00000E72
_080480EC:
	movs r0, #7
	ands r3, r0
	subs r3, #3
_080480F2:
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, r0, r3
	strh r0, [r1]
_080480FC:
	adds r0, r5, #0
	bl sub_0803AC40
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08048108
sub_08048108: @ 0x08048108
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _08048134 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08048138 @ =0x0001325C
	adds r7, r0, r1
	ldrb r1, [r5, #0xa]
	cmp r1, #3
	bgt _0804813C
	cmp r1, #2
	bge _080481A2
	cmp r1, #0
	beq _0804814A
	cmp r1, #1
	beq _08048188
	b _080486D0
	.align 2, 0
_08048134: .4byte gEwramData
_08048138: .4byte 0x0001325C
_0804813C:
	cmp r1, #4
	bne _08048142
	b _0804865E
_08048142:
	cmp r1, #0xff
	bne _08048148
	b _080486AC
_08048148:
	b _080486D0
_0804814A:
	ldr r1, _080481C8 @ =0x08256EF8
	ldr r2, _080481CC @ =0x00000E2C
	adds r0, r0, r2
	ldrb r2, [r0, #0x11]
	adds r0, r5, #0
	movs r3, #0xd
	bl sub_0803B924
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #2
	bl sub_0803E654
	movs r4, #0
	strh r0, [r5, #0x28]
	movs r0, #2
	bl sub_0803E654
	strh r0, [r5, #0x2a]
	movs r0, #2
	bl sub_0803E654
	strh r0, [r5, #0x2c]
	adds r0, r5, #0
	adds r0, #0x65
	strb r4, [r0]
	strb r4, [r5, #0x10]
_08048188:
	movs r0, #0
	movs r1, #2
	strb r1, [r5, #0xa]
	strb r0, [r5, #0xd]
	str r0, [r5, #0x14]
	str r0, [r5, #0x18]
	str r0, [r5, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #8
	str r1, [r5, #0x20]
	adds r1, r5, #0
	adds r1, #0x39
	strb r0, [r1]
_080481A2:
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	bne _080481DE
	ldr r0, [r5, #0x20]
	cmp r0, #0
	blt _080481D4
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r1, #0
	ldrh r2, [r5, #0x2e]
	adds r0, r0, r2
	strh r0, [r5, #0x2e]
	lsls r0, r0, #0x10
	ldr r1, _080481D0 @ =0x3FFF0000
	cmp r0, r1
	ble _080481DE
	movs r0, #0x80
	lsls r0, r0, #7
	b _080481DC
	.align 2, 0
_080481C8: .4byte 0x08256EF8
_080481CC: .4byte 0x00000E2C
_080481D0: .4byte 0x3FFF0000
_080481D4:
	ldr r1, _080481F0 @ =0xFFFFFC00
	adds r0, r1, #0
	ldrh r2, [r5, #0x2e]
	adds r0, r0, r2
_080481DC:
	strh r0, [r5, #0x2e]
_080481DE:
	movs r0, #0x10
	ldrsb r0, [r5, r0]
	cmp r0, #1
	beq _0804820A
	cmp r0, #1
	bgt _080481F4
	cmp r0, #0
	beq _080481FA
	b _0804822C
	.align 2, 0
_080481F0: .4byte 0xFFFFFC00
_080481F4:
	cmp r0, #2
	beq _0804821A
	b _0804822C
_080481FA:
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x50
	b _08048228
_0804820A:
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x58
	b _08048228
_0804821A:
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x60
_08048228:
	orrs r1, r0
	strb r1, [r2]
_0804822C:
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	bne _080482A4
	adds r3, r5, #0
	adds r3, #0x58
	movs r0, #0x1f
	ldrh r1, [r5, #0x28]
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r5, #0x20]
	mov sb, r3
	mov sl, r2
	cmp r0, #0
	blt _0804827E
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	lsls r0, r0, #1
	movs r2, #0x80
	lsls r2, r2, #9
	subs r2, r2, r0
	movs r0, #0
	str r0, [sp]
	ldrh r0, [r5, #0x28]
	str r0, [sp, #4]
	movs r0, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	b _0804829A
_0804827E:
	movs r0, #0x2e
	ldrsh r2, [r5, r0]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r2, r2, r1
	movs r0, #0
	str r0, [sp]
	ldrh r0, [r5, #0x28]
	str r0, [sp, #4]
	movs r0, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
_0804829A:
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x20]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	b _080482BE
_080482A4:
	adds r1, r5, #0
	adds r1, #0x59
	ldrb r2, [r1]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	str r0, [r5, #0x14]
	movs r2, #0x58
	adds r2, r2, r5
	mov sb, r2
	mov sl, r1
_080482BE:
	movs r2, #0xa8
	lsls r2, r2, #0xd
	str r2, [r5, #0x40]
	movs r0, #0x80
	lsls r0, r0, #0xe
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x20]
	cmp r0, #0
	blt _080482F0
	movs r1, #0xa0
	lsls r1, r1, #8
	movs r2, #0xe0
	lsls r2, r2, #9
	ldrb r0, [r5, #0xd]
	muls r0, r1, r0
	movs r1, #0xa8
	lsls r1, r1, #0xd
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldrb r0, [r5, #0xd]
	muls r0, r2, r0
	movs r2, #0x80
	lsls r2, r2, #0xe
	adds r0, r0, r2
	b _08048306
_080482F0:
	movs r1, #0xa0
	lsls r1, r1, #8
	ldrb r0, [r5, #0xd]
	muls r0, r1, r0
	subs r0, r2, r0
	str r0, [r5, #0x40]
	ldrb r0, [r5, #0xd]
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xe
	adds r0, r0, r1
_08048306:
	str r0, [r5, #0x44]
	movs r6, #0
	movs r0, #0x10
	ldrsb r0, [r5, r0]
	cmp r0, #1
	beq _08048326
	cmp r0, #1
	bgt _0804831C
	cmp r0, #0
	beq _08048322
	b _08048338
_0804831C:
	cmp r0, #2
	beq _08048330
	b _08048338
_08048322:
	ldrb r0, [r7, #0xd]
	b _08048328
_08048326:
	ldrb r0, [r7, #0xe]
_08048328:
	cmp r0, #0
	beq _08048338
	movs r6, #1
	b _08048342
_08048330:
	ldrb r0, [r7, #0xf]
	cmp r0, #0
	beq _08048338
	movs r6, #1
_08048338:
	movs r2, #0x65
	adds r2, r2, r5
	mov r8, r2
	cmp r6, #0
	beq _0804835C
_08048342:
	adds r4, r5, #0
	adds r4, #0x65
	movs r0, #1
	strb r0, [r4]
	adds r0, r5, #0
	bl sub_0803F17C
	adds r0, r5, #0
	bl sub_0803AC40
	mov r8, r4
	cmp r6, #0
	bne _08048368
_0804835C:
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0803AC40
_08048368:
	movs r0, #0x10
	ldrsb r0, [r5, r0]
	cmp r0, #1
	beq _0804839E
	cmp r0, #1
	bgt _0804837A
	cmp r0, #0
	beq _0804838E
	b _080483B0
_0804837A:
	cmp r0, #2
	bne _080483B0
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x50
	b _080483AC
_0804838E:
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x58
	b _080483AC
_0804839E:
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x60
_080483AC:
	orrs r1, r0
	strb r1, [r2]
_080483B0:
	movs r0, #0x1f
	ldrh r1, [r5, #0x2a]
	ands r1, r0
	mov r0, sb
	ldrb r2, [r0]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, sb
	strb r0, [r1]
	mov r2, sl
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	bne _080483FC
	movs r0, #0x2e
	ldrsh r2, [r5, r0]
	movs r1, #0xc0
	lsls r1, r1, #8
	adds r2, r2, r1
	movs r0, #0
	str r0, [sp]
	ldrh r0, [r5, #0x2a]
	str r0, [sp, #4]
	movs r0, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x20]
	adds r0, r0, r1
	str r0, [r5, #0x18]
	b _08048414
_080483FC:
	movs r2, #0xc0
	lsls r2, r2, #8
	movs r4, #0
	str r4, [sp]
	ldrh r0, [r5, #0x2a]
	str r0, [sp, #4]
	movs r0, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	str r4, [r5, #0x18]
_08048414:
	movs r0, #0xb0
	lsls r0, r0, #0xc
	str r0, [r5, #0x40]
	movs r2, #0xc0
	lsls r2, r2, #0xe
	str r2, [r5, #0x44]
	ldr r0, [r5, #0x20]
	cmp r0, #0
	blt _0804843E
	movs r1, #0xa0
	lsls r1, r1, #8
	ldrb r0, [r5, #0xd]
	muls r0, r1, r0
	movs r1, #0xb0
	lsls r1, r1, #0xc
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldrb r0, [r5, #0xd]
	lsls r0, r0, #0x10
	subs r0, r2, r0
	b _0804845C
_0804843E:
	movs r1, #0xa0
	lsls r1, r1, #9
	movs r2, #0xc0
	lsls r2, r2, #8
	ldrb r0, [r5, #0xd]
	muls r0, r1, r0
	movs r1, #0xb0
	lsls r1, r1, #0xc
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldrb r0, [r5, #0xd]
	muls r0, r2, r0
	movs r2, #0xc0
	lsls r2, r2, #0xe
	adds r0, r0, r2
_0804845C:
	str r0, [r5, #0x44]
	movs r4, #0
	movs r0, #0x10
	ldrsb r0, [r5, r0]
	cmp r0, #1
	beq _08048484
	cmp r0, #1
	bgt _08048472
	cmp r0, #0
	beq _0804847A
	b _0804848C
_08048472:
	cmp r0, #2
	bne _0804848C
	ldrb r0, [r7, #0xd]
	b _0804847C
_0804847A:
	ldrb r0, [r7, #0xe]
_0804847C:
	cmp r0, #0
	beq _0804848C
	movs r4, #1
	b _08048490
_08048484:
	ldrb r0, [r7, #0xf]
	cmp r0, #0
	beq _0804848C
	movs r4, #1
_0804848C:
	cmp r4, #0
	beq _080484A0
_08048490:
	movs r0, #1
	mov r1, r8
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0803AC40
	cmp r4, #0
	bne _080484AC
_080484A0:
	movs r0, #0
	mov r2, r8
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_0803AC40
_080484AC:
	movs r0, #0x10
	ldrsb r0, [r5, r0]
	cmp r0, #1
	beq _080484C4
	cmp r0, #1
	bgt _080484BE
	cmp r0, #0
	beq _080484E4
	b _080484F6
_080484BE:
	cmp r0, #2
	beq _080484D4
	b _080484F6
_080484C4:
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x50
	b _080484F2
_080484D4:
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x58
	b _080484F2
_080484E4:
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x60
_080484F2:
	orrs r1, r0
	strb r1, [r2]
_080484F6:
	movs r0, #0x1f
	ldrh r1, [r5, #0x2c]
	ands r1, r0
	mov r0, sb
	ldrb r2, [r0]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, sb
	strb r0, [r1]
	mov r2, sl
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	bne _08048568
	ldr r0, [r5, #0x20]
	cmp r0, #0
	blt _08048540
	movs r0, #0x2e
	ldrsh r2, [r5, r0]
	movs r1, #0x80
	lsls r1, r1, #8
	adds r2, r2, r1
	movs r0, #0
	str r0, [sp]
	ldrh r0, [r5, #0x2c]
	str r0, [sp, #4]
	movs r0, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	b _0804855E
_08048540:
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	lsls r0, r0, #1
	movs r2, #0x80
	lsls r2, r2, #8
	subs r2, r2, r0
	movs r0, #0
	str r0, [sp]
	ldrh r0, [r5, #0x2c]
	str r0, [sp, #4]
	movs r0, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
_0804855E:
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	adds r0, r0, r1
	str r0, [r5, #0x1c]
	b _08048580
_08048568:
	movs r2, #0x80
	lsls r2, r2, #8
	movs r4, #0
	str r4, [sp]
	ldrh r0, [r5, #0x2c]
	str r0, [sp, #4]
	movs r0, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	str r4, [r5, #0x1c]
_08048580:
	movs r3, #0xf8
	lsls r3, r3, #0xd
	str r3, [r5, #0x40]
	movs r4, #0xf0
	lsls r4, r4, #0xe
	str r4, [r5, #0x44]
	ldr r0, [r5, #0x20]
	cmp r0, #0
	blt _0804859C
	movs r1, #0xa0
	lsls r1, r1, #9
	movs r2, #0xc0
	lsls r2, r2, #8
	b _080485A4
_0804859C:
	movs r1, #0xa0
	lsls r1, r1, #8
	movs r2, #0xe0
	lsls r2, r2, #9
_080485A4:
	ldrb r0, [r5, #0xd]
	muls r0, r1, r0
	subs r0, r3, r0
	str r0, [r5, #0x40]
	ldrb r0, [r5, #0xd]
	muls r0, r2, r0
	subs r0, r4, r0
	str r0, [r5, #0x44]
	movs r4, #0
	movs r0, #0x10
	ldrsb r0, [r5, r0]
	cmp r0, #1
	beq _080485CE
	cmp r0, #1
	bgt _080485C8
	cmp r0, #0
	beq _080485DC
	b _080485E4
_080485C8:
	cmp r0, #2
	beq _080485D2
	b _080485E4
_080485CE:
	ldrb r0, [r7, #0xd]
	b _080485D4
_080485D2:
	ldrb r0, [r7, #0xe]
_080485D4:
	cmp r0, #0
	beq _080485E4
	movs r4, #1
	b _080485E8
_080485DC:
	ldrb r0, [r7, #0xf]
	cmp r0, #0
	beq _080485E4
	movs r4, #1
_080485E4:
	cmp r4, #0
	beq _080485F8
_080485E8:
	movs r0, #1
	mov r1, r8
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0803AC40
	cmp r4, #0
	bne _08048604
_080485F8:
	movs r0, #0
	mov r2, r8
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_0803AC40
_08048604:
	ldrb r1, [r5, #0xa]
	cmp r1, #3
	bne _080486D0
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _080486D0
	movs r2, #0
	movs r0, #0
	strh r0, [r5, #0x2e]
	subs r0, r1, #1
	strb r0, [r5, #0xa]
	strb r2, [r5, #0xd]
	adds r1, r5, #0
	adds r1, #0x38
	ldrb r0, [r1]
	cmp r0, #0
	bne _08048658
	ldr r0, [r5, #0x20]
	cmp r0, #0
	blt _08048646
	ldrb r0, [r5, #0x10]
	adds r0, #1
	strb r0, [r5, #0x10]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	ble _0804865A
	strb r2, [r5, #0x10]
	b _0804865A
_08048646:
	ldrb r0, [r5, #0x10]
	subs r0, #1
	strb r0, [r5, #0x10]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _0804865A
	movs r0, #2
	strb r0, [r5, #0x10]
	b _0804865A
_08048658:
	strb r2, [r1]
_0804865A:
	movs r0, #0
	b _080486A4
_0804865E:
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r1, [r2]
	cmp r1, #0
	bne _08048696
	movs r0, #3
	strb r0, [r5, #0xa]
	ldr r0, [r5, #0x20]
	cmp r0, #0
	blt _08048684
	ldrb r0, [r5, #0x10]
	adds r0, #1
	strb r0, [r5, #0x10]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	ble _0804869E
	strb r1, [r5, #0x10]
	b _0804869E
_08048684:
	ldrb r0, [r5, #0x10]
	subs r0, #1
	strb r0, [r5, #0x10]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _0804869E
	movs r0, #2
	strb r0, [r5, #0x10]
	b _0804869E
_08048696:
	movs r0, #2
	movs r1, #0
	strb r0, [r5, #0xa]
	strb r1, [r2]
_0804869E:
	movs r0, #0
	strb r0, [r5, #0xd]
	strh r0, [r5, #0x2e]
_080486A4:
	str r0, [r5, #0x14]
	str r0, [r5, #0x18]
	str r0, [r5, #0x1c]
	b _080486D0
_080486AC:
	movs r1, #0x28
	ldrsh r0, [r5, r1]
	bl sub_0803E6BC
	movs r2, #0x2a
	ldrsh r0, [r5, r2]
	bl sub_0803E6BC
	movs r1, #0x2c
	ldrsh r0, [r5, r1]
	bl sub_0803E6BC
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080486D0:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080486E0
sub_080486E0: @ 0x080486E0
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	adds r0, #0x39
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0
	beq _08048708
	ldrb r0, [r2, #0xa]
	cmp r0, #3
	bne _08048708
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	beq _08048708
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
_08048708:
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08048734
	adds r1, r2, #0
	adds r1, #0x39
	movs r0, #0xff
	strb r0, [r1]
	movs r1, #0x12
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _08048726
	rsbs r0, r0, #0
_08048726:
	rsbs r0, r0, #0
	strh r0, [r2, #0x12]
	ldr r0, [r2, #0x20]
	cmp r0, #0
	bge _0804874E
	rsbs r0, r0, #0
	b _0804874E
_08048734:
	adds r1, r2, #0
	adds r1, #0x39
	movs r0, #1
	strb r0, [r1]
	movs r1, #0x12
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _08048746
	rsbs r0, r0, #0
_08048746:
	strh r0, [r2, #0x12]
	ldr r0, [r2, #0x20]
	cmp r0, #0
	bge _08048750
_0804874E:
	rsbs r0, r0, #0
_08048750:
	str r0, [r2, #0x20]
	ldrb r0, [r2, #0xa]
	adds r0, #1
	strb r0, [r2, #0xa]
	pop {r0}
	bx r0

	thumb_func_start sub_0804875C
sub_0804875C: @ 0x0804875C
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0x24
	ldrb r0, [r3]
	cmp r0, #1
	beq _08048776
	cmp r0, #1
	ble _080487FC
	cmp r0, #2
	beq _0804878C
	b _080487FC
_08048776:
	adds r2, r4, #0
	adds r2, #0x42
	movs r1, #0
	movs r0, #0x35
	strh r0, [r2]
	adds r2, #4
	movs r0, #9
	strh r0, [r2]
	strb r1, [r4, #0xd]
	movs r0, #2
	strb r0, [r3]
_0804878C:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _080487C6
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x70
	orrs r0, r1
	strb r0, [r2]
	adds r3, r4, #0
	adds r3, #0x58
	movs r0, #0x1f
	ldrh r1, [r4, #0x2c]
	ands r1, r0
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
_080487C6:
	ldrb r0, [r4, #0xd]
	adds r2, r0, #0
	cmp r2, #0xf
	bhi _080487E8
	adds r0, #1
	strb r0, [r4, #0xd]
	lsls r2, r2, #0xc
	movs r0, #0
	str r0, [sp]
	ldrh r0, [r4, #0x2c]
	str r0, [sp, #4]
	movs r0, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	b _080487F6
_080487E8:
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_080487F6:
	adds r0, r4, #0
	bl sub_0803AC40
_080487FC:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08048804
sub_08048804: @ 0x08048804
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	mov sb, r1
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r0, _0804886C @ =gEwramData
	ldr r1, [r0]
	movs r0, #0xeb
	lsls r0, r0, #4
	adds r4, r1, r0
	ldr r2, _08048870 @ =0x00000EE6
	adds r0, r1, r2
	ldrb r0, [r0]
	mov ip, r0
	cmp r0, #0
	beq _08048886
	ldr r5, _08048874 @ =0x00007024
	adds r2, r1, r5
	movs r3, #0
	adds r5, #0x36
	adds r0, r1, r5
	ldrb r0, [r0]
	cmp r0, ip
	beq _08048852
_0804883A:
	adds r3, #1
	adds r2, #0x84
	cmp r3, #2
	bgt _0804885E
	adds r0, r2, #0
	adds r0, #0x36
	adds r1, r4, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0804883A
_08048852:
	movs r0, #0x32
	ldrsh r1, [r2, r0]
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	cmp r1, r0
	bne _0804883A
_0804885E:
	cmp r3, #3
	bne _08048878
	adds r0, r4, #0
	movs r1, #1
	bl sub_08012534
	b _08048880
	.align 2, 0
_0804886C: .4byte gEwramData
_08048870: .4byte 0x00000EE6
_08048874: .4byte 0x00007024
_08048878:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08012534
_08048880:
	adds r0, r4, #0
	bl EntityDelete
_08048886:
	cmp r4, #0
	beq _080488EA
	cmp r6, #0xff
	beq _0804889A
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08044E94
	adds r5, r0, #0
	b _080488AA
_0804889A:
	adds r0, r7, #0
	bl sub_08044EDC
	adds r5, r0, #0
	adds r0, r7, #0
	bl sub_08044F24
	adds r6, r0, #0
_080488AA:
	ldrb r0, [r5, #2]
	bl sub_0801232C
	strb r0, [r4, #0x11]
	ldrb r1, [r4, #0x11]
	movs r2, #3
	ldrsb r2, [r5, r2]
	adds r0, r4, #0
	bl sub_080124F4
	ldr r0, _080488F8 @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x42
	movs r2, #0
	mov r1, r8
	strh r1, [r0]
	adds r0, #4
	mov r5, sb
	strh r5, [r0]
	adds r3, r4, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x36
	strb r6, [r0]
	strh r7, [r4, #0x32]
	adds r0, #0x26
	strb r2, [r0]
_080488EA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080488F8: .4byte sub_0803B9D0

	thumb_func_start sub_080488FC
sub_080488FC: @ 0x080488FC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	mov sb, r1
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r0, [sp, #0x1c]
	ldr r2, _08048950 @ =gEwramData
	lsls r1, r0, #5
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08048954 @ =0x00007024
	adds r1, r1, r0
	ldr r0, [r2]
	adds r5, r0, r1
	adds r1, r5, #0
	adds r1, #0x36
	ldrb r1, [r1]
	cmp r1, #0
	beq _08048966
	movs r3, #0xeb
	lsls r3, r3, #4
	adds r2, r0, r3
	adds r3, #0x36
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, r1
	bne _08048958
	movs r0, #0x32
	ldrsh r1, [r2, r0]
	movs r2, #0x32
	ldrsh r0, [r5, r2]
	cmp r1, r0
	bne _08048958
	adds r0, r5, #0
	movs r1, #0
	bl sub_08012534
	b _08048960
	.align 2, 0
_08048950: .4byte gEwramData
_08048954: .4byte 0x00007024
_08048958:
	adds r0, r5, #0
	movs r1, #1
	bl sub_08012534
_08048960:
	adds r0, r5, #0
	bl EntityDelete
_08048966:
	cmp r5, #0
	beq _080489D8
	cmp r6, #0xff
	beq _0804897A
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08044E94
	adds r4, r0, #0
	b _0804898A
_0804897A:
	adds r0, r7, #0
	bl sub_08044EDC
	adds r4, r0, #0
	adds r0, r7, #0
	bl sub_08044F24
	adds r6, r0, #0
_0804898A:
	ldrb r0, [r4, #2]
	bl sub_0801232C
	strb r0, [r5, #0x11]
	ldrb r1, [r5, #0x11]
	movs r2, #3
	ldrsb r2, [r4, r2]
	adds r0, r5, #0
	bl sub_080124F4
	ldr r0, _080489E4 @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x42
	movs r4, #0
	mov r3, r8
	strh r3, [r0]
	adds r0, #4
	mov r1, sb
	strh r1, [r0]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x36
	strb r6, [r0]
	strh r7, [r5, #0x32]
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08044E94
	ldrh r0, [r0]
	strh r0, [r5, #0x30]
	adds r0, r5, #0
	adds r0, #0x5c
	strb r4, [r0]
_080489D8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080489E4: .4byte sub_0803B9D0

	thumb_func_start sub_080489E8
sub_080489E8: @ 0x080489E8
	push {lr}
	adds r2, r0, #0
	ldr r0, _08048A10 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08048A14 @ =0x0001325C
	adds r3, r0, r1
	adds r1, r2, #0
	adds r1, #0x65
	movs r0, #0
	strb r0, [r1]
	ldrb r0, [r2, #0xa]
	subs r0, #1
	cmp r0, #9
	bhi _08048A60
	lsls r0, r0, #2
	ldr r1, _08048A18 @ =_08048A1C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08048A10: .4byte gEwramData
_08048A14: .4byte 0x0001325C
_08048A18: .4byte _08048A1C
_08048A1C: @ jump table
	.4byte _08048A60 @ case 0
	.4byte _08048A60 @ case 1
	.4byte _08048A44 @ case 2
	.4byte _08048A60 @ case 3
	.4byte _08048A60 @ case 4
	.4byte _08048A4E @ case 5
	.4byte _08048A58 @ case 6
	.4byte _08048A60 @ case 7
	.4byte _08048A60 @ case 8
	.4byte _08048A60 @ case 9
_08048A44:
	adds r0, r3, #0
	adds r1, r2, #0
	bl sub_08047D24
	b _08048A60
_08048A4E:
	adds r0, r3, #0
	adds r1, r2, #0
	bl sub_08047DD4
	b _08048A60
_08048A58:
	adds r0, r3, #0
	adds r1, r2, #0
	bl sub_08047E6C
_08048A60:
	pop {r0}
	bx r0

	thumb_func_start sub_08048A64
sub_08048A64: @ 0x08048A64
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x65
	movs r0, #0
	strb r0, [r1]
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _08048A8C
	movs r0, #0x30
	strh r0, [r2, #0x34]
	ldrb r1, [r2, #0xb]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x28
	strh r0, [r2, #0x36]
	bl sub_08048018
	b _08048A9E
_08048A8C:
	cmp r0, #0
	blt _08048A9E
	cmp r0, #2
	bgt _08048A9E
	adds r0, r2, #0
	bl sub_08047FB8
	bl sub_08048B88
_08048A9E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08048AA4
sub_08048AA4: @ 0x08048AA4
	push {r4, lr}
	ldr r0, _08048AC8 @ =gEwramData
	ldr r4, [r0]
	ldr r1, _08048ACC @ =0x00000E2C
	adds r0, r4, r1
	ldr r1, _08048AD0 @ =0x08256EF8
	ldrb r2, [r0, #0x11]
	movs r3, #0xd
	bl sub_0803B924
	ldr r0, _08048AD4 @ =0x00000E91
	adds r4, r4, r0
	movs r0, #0x1e
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08048AC8: .4byte gEwramData
_08048ACC: .4byte 0x00000E2C
_08048AD0: .4byte 0x08256EF8
_08048AD4: .4byte 0x00000E91

	thumb_func_start sub_08048AD8
sub_08048AD8: @ 0x08048AD8
	ldr r2, _08048AF0 @ =gEwramData
	ldr r2, [r2]
	ldr r3, _08048AF4 @ =0x00000E2C
	adds r2, r2, r3
	lsls r0, r0, #3
	adds r0, #6
	strh r0, [r2, #0x34]
	lsls r1, r1, #3
	adds r1, #3
	strh r1, [r2, #0x36]
	bx lr
	.align 2, 0
_08048AF0: .4byte gEwramData
_08048AF4: .4byte 0x00000E2C

	thumb_func_start sub_08048AF8
sub_08048AF8: @ 0x08048AF8
	ldr r0, _08048B04 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08048B08 @ =0x00000E2C
	adds r0, r0, r1
	bx lr
	.align 2, 0
_08048B04: .4byte gEwramData
_08048B08: .4byte 0x00000E2C

	thumb_func_start sub_08048B0C
sub_08048B0C: @ 0x08048B0C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r3, _08048B54 @ =0x08256EF8
	ldr r0, _08048B58 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08048B5C @ =0x00000E2C
	adds r1, r0, r2
	ldrb r2, [r1, #0x11]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #3
	bne _08048B2C
	ldr r3, _08048B60 @ =0x0827B1F0
_08048B2C:
	adds r0, r4, #0
	adds r1, r3, #0
	movs r3, #0xe
	bl sub_0803B924
	movs r0, #2
	bl sub_0803E654
	str r0, [r4, #0x2c]
	adds r0, r4, #0
	adds r0, #0x65
	strb r5, [r0]
	adds r1, r4, #0
	adds r1, #0x24
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08048B54: .4byte 0x08256EF8
_08048B58: .4byte gEwramData
_08048B5C: .4byte 0x00000E2C
_08048B60: .4byte 0x0827B1F0

	thumb_func_start sub_08048B64
sub_08048B64: @ 0x08048B64
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_0803E6BC
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	adds r4, #0x24
	movs r0, #0
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08048B88
sub_08048B88: @ 0x08048B88
	push {lr}
	ldr r0, _08048B9C @ =gEwramData
	ldr r0, [r0]
	movs r1, #0xeb
	lsls r1, r1, #4
	adds r0, r0, r1
	bl sub_0803B9D0
	pop {r0}
	bx r0
	.align 2, 0
_08048B9C: .4byte gEwramData

	thumb_func_start sub_08048BA0
sub_08048BA0: @ 0x08048BA0
	push {r4, lr}
	ldr r0, _08048BC0 @ =gEwramData
	ldr r4, [r0]
	movs r0, #0xeb
	lsls r0, r0, #4
	adds r4, r4, r0
	adds r0, r4, #0
	movs r1, #1
	bl sub_08012534
	adds r0, r4, #0
	bl EntityDelete
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08048BC0: .4byte gEwramData

	thumb_func_start sub_08048BC4
sub_08048BC4: @ 0x08048BC4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08048BE4 @ =gEwramData
	ldr r2, [r1]
	ldr r1, _08048BE8 @ =0x00000F08
	adds r2, r2, r1
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #5
	ldrb r3, [r2]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r0
	strb r1, [r2]
	bx lr
	.align 2, 0
_08048BE4: .4byte gEwramData
_08048BE8: .4byte 0x00000F08

	thumb_func_start sub_08048BEC
sub_08048BEC: @ 0x08048BEC
	push {r4, r5, lr}
	ldr r0, _08048C0C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08048C10 @ =0x00007024
	adds r4, r0, r1
	movs r5, #2
_08048BF8:
	adds r0, r4, #0
	bl sub_0803B9D0
	subs r5, #1
	adds r4, #0x84
	cmp r5, #0
	bge _08048BF8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08048C0C: .4byte gEwramData
_08048C10: .4byte 0x00007024

	thumb_func_start sub_08048C14
sub_08048C14: @ 0x08048C14
	push {r4, r5, lr}
	ldr r0, _08048C3C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08048C40 @ =0x00007024
	adds r4, r0, r1
	movs r5, #2
_08048C20:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08012534
	adds r0, r4, #0
	bl EntityDelete
	subs r5, #1
	adds r4, #0x84
	cmp r5, #0
	bge _08048C20
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08048C3C: .4byte gEwramData
_08048C40: .4byte 0x00007024

	thumb_func_start sub_08048C44
sub_08048C44: @ 0x08048C44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r3, _08048C6C @ =gEwramData
	lsls r2, r1, #5
	adds r2, r2, r1
	lsls r2, r2, #2
	ldr r1, [r3]
	adds r2, r2, r1
	ldr r1, _08048C70 @ =0x0000707C
	adds r2, r2, r1
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #5
	ldrb r3, [r2]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r0
	strb r1, [r2]
	bx lr
	.align 2, 0
_08048C6C: .4byte gEwramData
_08048C70: .4byte 0x0000707C

	thumb_func_start sub_08048C74
sub_08048C74: @ 0x08048C74
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	bl EntityDelete
	ldr r0, _08048C98 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _08048CA0
	cmp r0, #3
	beq _08048CA8
	ldr r0, _08048C9C @ =0x082052D8
	b _08048CAA
	.align 2, 0
_08048C98: .4byte gEwramData
_08048C9C: .4byte 0x082052D8
_08048CA0:
	ldr r0, _08048CA4 @ =0x0827798C
	b _08048CAA
	.align 2, 0
_08048CA4: .4byte 0x0827798C
_08048CA8:
	ldr r0, _08048CE0 @ =0x0826C840
_08048CAA:
	movs r1, #0
	bl sub_0803B800
	adds r4, r0, #0
	cmp r4, #0
	blt _08048CF0
	ldr r0, _08048CE4 @ =0x0820C2C0
	movs r1, #1
	movs r2, #1
	adds r3, r6, #0
	bl sub_0803C7B4
	ldr r1, _08048CE8 @ =0x08256EF8
	adds r0, r5, #0
	adds r2, r4, #0
	adds r3, r6, #0
	bl sub_0803B924
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0x1e
	strb r0, [r1]
	ldr r0, _08048CEC @ =sub_08048D3C
	str r0, [r5]
	movs r0, #1
	b _08048CF2
	.align 2, 0
_08048CE0: .4byte 0x0826C840
_08048CE4: .4byte 0x0820C2C0
_08048CE8: .4byte 0x08256EF8
_08048CEC: .4byte sub_08048D3C
_08048CF0:
	movs r0, #0
_08048CF2:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08048CF8
sub_08048CF8: @ 0x08048CF8
	push {lr}
	bl EntityDelete
	ldr r0, _08048D18 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _08048D20
	cmp r0, #3
	beq _08048D28
	ldr r0, _08048D1C @ =0x082052D8
	b _08048D2A
	.align 2, 0
_08048D18: .4byte gEwramData
_08048D1C: .4byte 0x082052D8
_08048D20:
	ldr r0, _08048D24 @ =0x0827798C
	b _08048D2A
	.align 2, 0
_08048D24: .4byte 0x0827798C
_08048D28:
	ldr r0, _08048D38 @ =0x0826C840
_08048D2A:
	bl sub_0803AFB8
	bl sub_0803B980
	pop {r0}
	bx r0
	.align 2, 0
_08048D38: .4byte 0x0826C840

	thumb_func_start sub_08048D3C
sub_08048D3C: @ 0x08048D3C
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r0, #0x42
	ldrh r5, [r0]
	ldr r0, _08048D60 @ =gEwramData
	ldr r0, [r0]
	ldr r0, [r0]
	lsrs r1, r0, #1
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08048D64
	movs r0, #7
	ands r1, r0
	movs r0, #3
	subs r1, r0, r1
	b _08048D6A
	.align 2, 0
_08048D60: .4byte gEwramData
_08048D64:
	movs r0, #7
	ands r1, r0
	subs r1, #3
_08048D6A:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	adds r4, r2, #0
	adds r4, #0x42
	strh r0, [r4]
	adds r0, r2, #0
	bl sub_0803AC40
	strh r5, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08048D84
sub_08048D84: @ 0x08048D84
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r4, _08048E84 @ =gEwramData
	ldr r0, [r4]
	ldr r5, _08048E88 @ =0x00000FB8
	adds r0, r0, r5
	bl EntityDelete
	ldr r0, [r4]
	adds r0, r0, r5
	bl sub_08048108
	ldr r0, [r4]
	ldr r1, _08048E8C @ =0x00000F34
	adds r0, r0, r1
	movs r1, #0x1f
	bl sub_08048B0C
	movs r1, #0
	str r1, [sp, #4]
	ldr r0, _08048E90 @ =0x040000D4
	add r2, sp, #4
	str r2, [r0]
	movs r4, #0xc8
	lsls r4, r4, #6
	str r4, [r0, #4]
	ldr r2, _08048E94 @ =0x85000800
	str r2, [r0, #8]
	ldr r3, [r0, #8]
	str r1, [sp, #4]
	add r1, sp, #4
	str r1, [r0]
	movs r1, #0xcc
	lsls r1, r1, #6
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	adds r0, r6, #0
	bl sub_080472A0
	movs r0, #3
	strb r0, [r6, #0x14]
	ldrb r0, [r6, #0x13]
	strb r0, [r6, #0x15]
	movs r0, #0x16
	movs r1, #2
	bl sub_0804679C
	movs r0, #0x16
	movs r1, #4
	bl sub_080466C8
	movs r0, #0x15
	movs r1, #8
	bl sub_080471E4
	bl sub_08049D98
	movs r0, #2
	str r0, [sp]
	movs r0, #7
	movs r1, #0xf
	adds r2, r4, #0
	movs r3, #0x1e
	bl sub_080472B0
	ldr r2, _08048E98 @ =0x00003350
	movs r0, #6
	movs r1, #3
	movs r3, #0xa
	bl sub_08046DD4
	ldr r2, _08048E9C @ =0x00003360
	movs r0, #6
	movs r1, #5
	movs r3, #0xa
	bl sub_08046DD4
	ldr r2, _08048EA0 @ =0x00003370
	movs r0, #6
	movs r1, #7
	movs r3, #0xa
	bl sub_08046DD4
	movs r4, #0
	movs r5, #0x80
_08048E32:
	movs r0, #1
	ands r0, r4
	movs r3, #3
	cmp r0, #0
	beq _08048E3E
	movs r3, #0x11
_08048E3E:
	adds r1, r4, #4
	asrs r1, r1, #1
	adds r1, #8
	movs r0, #0xcc
	lsls r0, r0, #6
	adds r2, r5, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r3, #0
	movs r3, #0xa
	bl sub_08046DD4
	adds r5, #0x10
	adds r4, #1
	cmp r4, #7
	ble _08048E32
	adds r0, r6, #0
	bl sub_080493E8
	movs r1, #0x15
	ldrsb r1, [r6, r1]
	adds r0, r6, #0
	bl sub_080494F8
	adds r0, r6, #0
	bl sub_08049DB4
	adds r0, r6, #0
	bl sub_08049AAC
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08048E84: .4byte gEwramData
_08048E88: .4byte 0x00000FB8
_08048E8C: .4byte 0x00000F34
_08048E90: .4byte 0x040000D4
_08048E94: .4byte 0x85000800
_08048E98: .4byte 0x00003350
_08048E9C: .4byte 0x00003360
_08048EA0: .4byte 0x00003370

	thumb_func_start sub_08048EA4
sub_08048EA4: @ 0x08048EA4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	movs r0, #0
	mov r8, r0
	ldr r6, _08048ECC @ =gEwramData
	ldr r1, [r6]
	ldrh r3, [r1, #0x18]
	ldrh r2, [r1, #0x16]
	ldrb r0, [r5, #0xb]
	adds r7, r6, #0
	cmp r0, #1
	beq _08048EF8
	cmp r0, #1
	bgt _08048ED0
	cmp r0, #0
	beq _08048EDE
	b _0804910C
	.align 2, 0
_08048ECC: .4byte gEwramData
_08048ED0:
	cmp r0, #2
	bne _08048ED6
	b _08048FFC
_08048ED6:
	cmp r0, #0xff
	bne _08048EDC
	b _080490D6
_08048EDC:
	b _0804910C
_08048EDE:
	mov r1, r8
	strb r1, [r5, #0x13]
	adds r0, r5, #0
	adds r0, #0x39
	strb r1, [r0]
	strb r1, [r5, #0x16]
	movs r0, #3
	strb r0, [r5, #0x14]
	strb r1, [r5, #0x15]
	strb r1, [r5, #0x17]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
_08048EF8:
	movs r4, #1
	adds r0, r2, #0
	ands r0, r4
	cmp r0, #0
	beq _08048F5A
	movs r0, #0xf3
	bl sub_080D7910
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	ldrb r1, [r5, #0x15]
	ldrb r0, [r5, #0x13]
	strb r0, [r5, #0x15]
	strb r1, [r5, #0x13]
	adds r2, r5, #0
	adds r2, #0x39
	ldrb r1, [r5, #0x16]
	ldrb r0, [r2]
	strb r0, [r5, #0x16]
	strb r1, [r2]
	ldrb r1, [r5, #0x13]
	adds r0, r5, #0
	bl sub_08049148
	adds r0, r5, #0
	bl sub_08049E4C
	adds r0, r5, #0
	bl sub_08049BA8
	ldrb r1, [r5, #0x15]
	adds r0, r4, #0
	ands r0, r1
	movs r2, #2
	cmp r0, #0
	beq _08048F44
	movs r2, #0x10
_08048F44:
	movs r1, #0x15
	ldrsb r1, [r5, r1]
	movs r0, #0x16
	ldrsb r0, [r5, r0]
	subs r1, r1, r0
	asrs r1, r1, #1
	adds r1, #0xa
	adds r0, r2, #0
	bl sub_08048AD8
	b _0804910C
_08048F5A:
	movs r0, #2
	ands r2, r0
	cmp r2, #0
	beq _08048F6E
	movs r0, #0xf0
	bl sub_080D7910
	movs r0, #0xff
	strb r0, [r5, #0xb]
	b _0804910C
_08048F6E:
	movs r0, #0xc0
	ands r0, r3
	cmp r0, #0
	bne _08048F78
	b _0804910C
_08048F78:
	movs r2, #0
	movs r0, #3
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	adds r0, #0x39
	strb r2, [r0]
	strb r2, [r5, #0x13]
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	beq _08048FA6
	ldrb r0, [r5, #0x15]
	subs r0, #1
	strb r0, [r5, #0x15]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08048FA0
	ldrb r0, [r5, #0x14]
	subs r0, #1
	strb r0, [r5, #0x15]
_08048FA0:
	movs r2, #1
	rsbs r2, r2, #0
	b _08048FC6
_08048FA6:
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	beq _08048FC6
	ldrb r0, [r5, #0x15]
	adds r0, #1
	strb r0, [r5, #0x15]
	movs r1, #0x15
	ldrsb r1, [r5, r1]
	movs r0, #0x14
	ldrsb r0, [r5, r0]
	subs r0, #1
	cmp r1, r0
	ble _08048FC4
	strb r2, [r5, #0x15]
_08048FC4:
	movs r2, #1
_08048FC6:
	ldr r0, [r7]
	ldr r1, _08048FF8 @ =0x00000FB8
	adds r0, r0, r1
	adds r1, r2, #0
	bl sub_080486E0
	adds r0, r5, #0
	bl sub_080493E8
	movs r1, #0x15
	ldrsb r1, [r5, r1]
	adds r0, r5, #0
	bl sub_080494F8
	adds r0, r5, #0
	bl sub_08049DB4
	adds r0, r5, #0
	bl sub_08049AAC
	movs r0, #0xf1
	bl sub_080D7910
	b _0804910C
	.align 2, 0
_08048FF8: .4byte 0x00000FB8
_08048FFC:
	movs r0, #3
	ands r0, r2
	cmp r0, #0
	beq _0804905E
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _08049022
	movs r0, #0xf4
	bl sub_080D7910
	adds r0, r5, #0
	bl sub_080499B4
	ldrb r1, [r5, #0x13]
	adds r0, r5, #0
	bl sub_080494F8
	b _08049028
_08049022:
	movs r0, #0xf0
	bl sub_080D7910
_08049028:
	ldrb r0, [r5, #0xb]
	subs r0, #1
	strb r0, [r5, #0xb]
	movs r0, #3
	strb r0, [r5, #0x14]
	ldrb r1, [r5, #0x15]
	ldrb r0, [r5, #0x13]
	strb r0, [r5, #0x15]
	strb r1, [r5, #0x13]
	adds r2, r5, #0
	adds r2, #0x39
	ldrb r1, [r5, #0x16]
	ldrb r0, [r2]
	strb r0, [r5, #0x16]
	strb r1, [r2]
	adds r0, r5, #0
	bl sub_080493E8
	adds r0, r5, #0
	bl sub_08049AAC
	adds r0, r5, #0
	bl sub_08049DB4
	bl sub_08049D98
	b _0804910C
_0804905E:
	movs r4, #0x15
	ldrsb r4, [r5, r4]
	ldrb r7, [r5, #0x17]
	movs r6, #0x16
	ldrsb r6, [r5, r6]
	adds r0, r5, #0
	adds r1, r3, #0
	bl sub_080461BC
	cmp r0, #0
	beq _080490D0
	movs r0, #0x15
	ldrsb r0, [r5, r0]
	cmp r4, r0
	beq _080490D0
	movs r0, #0xf1
	bl sub_080D7910
	movs r0, #0x16
	ldrsb r0, [r5, r0]
	cmp r6, r0
	beq _08049094
	ldrb r1, [r5, #0x13]
	adds r0, r5, #0
	bl sub_080494F8
	b _0804909C
_08049094:
	ldrb r1, [r5, #0x13]
	adds r0, r5, #0
	bl sub_08049148
_0804909C:
	ldrb r0, [r5, #0x17]
	cmp r7, r0
	beq _080490D0
	adds r0, r5, #0
	bl sub_08049E4C
	adds r0, r5, #0
	bl sub_08049BA8
	ldrb r1, [r5, #0x15]
	movs r0, #1
	ands r0, r1
	movs r2, #2
	cmp r0, #0
	beq _080490BC
	movs r2, #0x10
_080490BC:
	movs r1, #0x15
	ldrsb r1, [r5, r1]
	movs r0, #0x16
	ldrsb r0, [r5, r0]
	subs r1, r1, r0
	asrs r1, r1, #1
	adds r1, #0xa
	adds r0, r2, #0
	bl sub_08048AD8
_080490D0:
	bl sub_08048018
	b _0804910C
_080490D6:
	mov r0, r8
	strb r0, [r5, #0xb]
	ldr r4, _08049104 @ =0x00000FB8
	adds r1, r1, r4
	movs r0, #0xff
	strb r0, [r1, #0xa]
	ldr r0, [r6]
	adds r0, r0, r4
	bl sub_08048108
	ldr r0, [r6]
	adds r0, r0, r4
	bl EntityDelete
	ldr r0, [r6]
	ldr r1, _08049108 @ =0x00000F34
	adds r0, r0, r1
	bl sub_08048B64
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	b _08049130
	.align 2, 0
_08049104: .4byte 0x00000FB8
_08049108: .4byte 0x00000F34
_0804910C:
	ldrb r0, [r5, #0xb]
	cmp r0, #0xff
	beq _0804912E
	ldr r4, _0804913C @ =gEwramData
	ldr r0, [r4]
	ldr r1, _08049140 @ =0x00000F34
	adds r0, r0, r1
	bl sub_0804875C
	ldr r0, [r4]
	ldr r1, _08049144 @ =0x00000FB8
	adds r0, r0, r1
	bl sub_08048108
	adds r0, r5, #0
	bl sub_0804933C
_0804912E:
	mov r0, r8
_08049130:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804913C: .4byte gEwramData
_08049140: .4byte 0x00000F34
_08049144: .4byte 0x00000FB8

	thumb_func_start sub_08049148
sub_08049148: @ 0x08049148
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	ldr r0, _08049170 @ =gEwramData
	ldr r2, [r0]
	movs r0, #0xff
	mov r3, r8
	strb r0, [r3, #0x17]
	cmp r1, #1
	beq _0804918C
	cmp r1, #1
	bgt _08049174
	cmp r1, #0
	beq _0804917A
	b _080491AA
	.align 2, 0
_08049170: .4byte gEwramData
_08049174:
	cmp r1, #2
	beq _0804919C
	b _080491AA
_0804917A:
	movs r0, #0
	str r0, [sp]
	movs r1, #0x38
	str r1, [sp, #4]
	ldr r3, _08049188 @ =0x000133DC
	b _080491A6
	.align 2, 0
_08049188: .4byte 0x000133DC
_0804918C:
	movs r0, #1
	str r0, [sp]
	movs r1, #0x19
	str r1, [sp, #4]
	ldr r3, _08049198 @ =0x000133E0
	b _080491A6
	.align 2, 0
_08049198: .4byte 0x000133E0
_0804919C:
	movs r0, #2
	str r0, [sp]
	movs r1, #0x24
	str r1, [sp, #4]
	ldr r3, _080491C8 @ =0x000133E4
_080491A6:
	adds r3, r3, r2
	mov sb, r3
_080491AA:
	mov r1, r8
	movs r0, #0x16
	ldrsb r0, [r1, r0]
	movs r3, #0
	mov sl, r3
	cmp r0, #0
	bne _080491BC
	movs r0, #1
	mov sl, r0
_080491BC:
	movs r6, #1
	movs r0, #0
	mov r1, r8
	strb r0, [r1, #0x17]
	movs r7, #0
	b _080491EC
	.align 2, 0
_080491C8: .4byte 0x000133E4
_080491CC:
	mov r3, sb
	adds r1, r3, r7
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080491E8
	adds r1, r0, #0
	subs r1, #1
	ldr r0, [sp]
	bl sub_080326B8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080491E8
	adds r6, #1
_080491E8:
	adds r7, #1
	mov r1, r8
_080491EC:
	movs r0, #0x16
	ldrsb r0, [r1, r0]
	cmp r6, r0
	bge _080491F8
	cmp r7, #4
	blt _080491CC
_080491F8:
	movs r5, #1
	b _08049234
_080491FC:
	subs r1, r5, #1
	ldr r0, [sp]
	bl sub_080326B8
	lsls r0, r0, #0x18
	adds r4, r5, #1
	cmp r0, #0
	beq _0804922C
	adds r6, #1
	movs r2, #0
	cmp r2, #4
	bge _0804922C
_08049214:
	mov r0, sb
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08049226
	ldrb r1, [r1]
	cmp r5, r1
	bne _08049226
	subs r6, #1
_08049226:
	adds r2, #1
	cmp r2, #4
	blt _08049214
_0804922C:
	adds r5, r4, #0
	mov r1, r8
	movs r0, #0x16
	ldrsb r0, [r1, r0]
_08049234:
	cmp r6, r0
	bge _0804923E
	ldr r3, [sp, #4]
	cmp r5, r3
	blt _080491FC
_0804923E:
	mov r0, sl
	cmp r0, #7
	bgt _080492E4
	cmp r7, #4
	bge _08049284
	mov r1, sb
	adds r4, r7, r1
_0804924C:
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _08049276
	adds r1, r0, #0
	subs r1, #1
	ldr r0, [sp]
	bl sub_080326B8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08049276
	mov r3, r8
	movs r0, #0x15
	ldrsb r0, [r3, r0]
	cmp r6, r0
	bne _08049270
	ldrb r0, [r4]
	strb r0, [r3, #0x17]
_08049270:
	adds r6, #1
	movs r0, #1
	add sl, r0
_08049276:
	adds r4, #1
	adds r7, #1
	mov r1, sl
	cmp r1, #7
	bgt _080492E4
	cmp r7, #4
	blt _0804924C
_08049284:
	mov r3, sl
	cmp r3, #7
	bgt _080492E4
	ldr r0, [sp, #4]
	cmp r5, r0
	bge _08049328
_08049290:
	subs r1, r5, #1
	ldr r0, [sp]
	bl sub_080326B8
	lsls r0, r0, #0x18
	adds r4, r5, #1
	cmp r0, #0
	beq _080492D6
	movs r3, #0
	movs r2, #0
	cmp r2, #4
	bge _080492C0
_080492A8:
	mov r0, sb
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080492BA
	ldrb r1, [r1]
	cmp r5, r1
	bne _080492BA
	movs r3, #1
_080492BA:
	adds r2, #1
	cmp r2, #4
	blt _080492A8
_080492C0:
	cmp r3, #0
	bne _080492D6
	mov r1, r8
	movs r0, #0x15
	ldrsb r0, [r1, r0]
	cmp r6, r0
	bne _080492D0
	strb r5, [r1, #0x17]
_080492D0:
	adds r6, #1
	movs r3, #1
	add sl, r3
_080492D6:
	adds r5, r4, #0
	mov r0, sl
	cmp r0, #7
	bgt _080492E4
	ldr r1, [sp, #4]
	cmp r5, r1
	blt _08049290
_080492E4:
	ldr r3, [sp, #4]
	cmp r5, r3
	bge _08049328
_080492EA:
	subs r1, r5, #1
	ldr r0, [sp]
	bl sub_080326B8
	lsls r0, r0, #0x18
	adds r4, r5, #1
	cmp r0, #0
	beq _08049320
	movs r3, #0
	movs r2, #0
	cmp r3, #4
	bge _0804931A
_08049302:
	mov r0, sb
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08049314
	ldrb r1, [r1]
	cmp r5, r1
	bne _08049314
	movs r3, #1
_08049314:
	adds r2, #1
	cmp r2, #4
	blt _08049302
_0804931A:
	cmp r3, #0
	bne _08049320
	adds r6, #1
_08049320:
	adds r5, r4, #0
	ldr r1, [sp, #4]
	cmp r5, r1
	blt _080492EA
_08049328:
	mov r3, r8
	strb r6, [r3, #0x14]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0804933C
sub_0804933C: @ 0x0804933C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0804936C @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08049370 @ =0x00000FB8
	adds r3, r1, r0
	adds r0, #0x59
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0xa8
	lsls r0, r0, #0xd
	str r0, [r3, #0x40]
	movs r0, #0x80
	lsls r0, r0, #0xe
	str r0, [r3, #0x44]
	ldrb r0, [r4, #0xb]
	cmp r0, #2
	bne _08049374
	ldrb r0, [r4, #0x13]
	b _08049378
	.align 2, 0
_0804936C: .4byte gEwramData
_08049370: .4byte 0x00000FB8
_08049374:
	movs r0, #0x15
	ldrsb r0, [r4, r0]
_08049378:
	cmp r0, #1
	beq _080493A6
	cmp r0, #1
	bgt _08049386
	cmp r0, #0
	beq _0804938C
	b _080493DA
_08049386:
	cmp r0, #2
	beq _080493C0
	b _080493DA
_0804938C:
	adds r2, r3, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x50
	orrs r0, r1
	strb r0, [r2]
	adds r1, r3, #0
	adds r1, #0x65
	movs r0, #0x1b
	b _080493D8
_080493A6:
	adds r2, r3, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x58
	orrs r0, r1
	strb r0, [r2]
	adds r1, r3, #0
	adds r1, #0x65
	movs r0, #0x1c
	b _080493D8
_080493C0:
	adds r2, r3, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x60
	orrs r0, r1
	strb r0, [r2]
	adds r1, r3, #0
	adds r1, #0x65
	movs r0, #0x1d
_080493D8:
	strb r0, [r1]
_080493DA:
	adds r0, r3, #0
	bl sub_0803AC40
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080493E8
sub_080493E8: @ 0x080493E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	ldr r0, _08049414 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08049418 @ =0x0001325C
	adds r7, r0, r1
	movs r6, #0
_08049400:
	ldr r2, _0804941C @ =0x0000034F
	mov sb, r2
	cmp r6, #1
	beq _08049438
	cmp r6, #1
	bgt _08049420
	cmp r6, #0
	beq _08049426
	b _08049460
	.align 2, 0
_08049414: .4byte gEwramData
_08049418: .4byte 0x0001325C
_0804941C: .4byte 0x0000034F
_08049420:
	cmp r6, #2
	beq _0804944C
	b _08049460
_08049426:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	beq _08049430
	adds r0, #0xe2
	mov sb, r0
_08049430:
	movs r0, #0x80
	lsls r0, r0, #8
	mov sl, r0
	b _08049460
_08049438:
	ldrb r0, [r7, #0xe]
	cmp r0, #0
	beq _08049446
	movs r1, #0x8d
	lsls r1, r1, #1
	adds r1, r1, r0
	mov sb, r1
_08049446:
	movs r2, #0x90
	lsls r2, r2, #8
	b _0804945E
_0804944C:
	ldrb r0, [r7, #0xf]
	cmp r0, #0
	beq _0804945A
	movs r1, #0x99
	lsls r1, r1, #1
	adds r1, r1, r0
	mov sb, r1
_0804945A:
	movs r2, #0xc0
	lsls r2, r2, #7
_0804945E:
	mov sl, r2
_08049460:
	adds r0, r6, #1
	movs r5, #1
	ands r5, r0
	movs r1, #0
	mov r8, r0
	cmp r5, #0
	beq _08049470
	movs r1, #0x15
_08049470:
	mov r2, r8
	asrs r0, r2, #1
	adds r0, #0xa
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r1, #0
	adds r1, r4, #0
	movs r2, #0xe
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	cmp r5, #0
	beq _08049496
	movs r0, #0x80
	adds r1, r4, #0
	bl sub_0804090C
_08049496:
	mov r0, sb
	bl sub_08041434
	movs r1, #0
	bl sub_08041338
	movs r0, #6
	lsls r1, r0, #1
	lsls r0, r6, #1
	adds r0, #3
	lsls r0, r0, #6
	ldr r2, _080494F0 @ =0x0600E000
	adds r0, r0, r2
	adds r2, r1, r0
	ldr r1, [sp]
	movs r0, #0x15
	ldrsb r0, [r1, r0]
	cmp r0, r6
	beq _080494C2
	movs r0, #0xc0
	lsls r0, r0, #6
	mov sl, r0
_080494C2:
	ldr r4, _080494F4 @ =0x00000FFF
	movs r3, #9
_080494C6:
	ldrh r1, [r2]
	adds r0, r4, #0
	ands r0, r1
	mov r1, sl
	orrs r0, r1
	strh r0, [r2]
	adds r2, #2
	subs r3, #1
	cmp r3, #0
	bge _080494C6
	mov r6, r8
	cmp r6, #2
	ble _08049400
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080494F0: .4byte 0x0600E000
_080494F4: .4byte 0x00000FFF

	thumb_func_start sub_080494F8
sub_080494F8: @ 0x080494F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp]
	ldr r0, _08049524 @ =gEwramData
	ldr r0, [r0]
	movs r2, #0
	mov sb, r2
	mov sl, r2
	mov r2, sl
	ldr r3, [sp]
	strb r2, [r3, #0x17]
	cmp r1, #1
	beq _08049548
	cmp r1, #1
	bgt _08049528
	cmp r1, #0
	beq _0804952E
	b _08049576
	.align 2, 0
_08049524: .4byte gEwramData
_08049528:
	cmp r1, #2
	beq _08049564
	b _08049576
_0804952E:
	movs r3, #0
	str r3, [sp, #8]
	movs r1, #0x38
	str r1, [sp, #0xc]
	movs r2, #0xe3
	str r2, [sp, #0x10]
	ldr r3, _08049544 @ =0x000133DC
	adds r3, r0, r3
	str r3, [sp, #0x14]
	b _08049576
	.align 2, 0
_08049544: .4byte 0x000133DC
_08049548:
	movs r1, #1
	str r1, [sp, #8]
	movs r2, #0x19
	str r2, [sp, #0xc]
	ldr r3, _0804955C @ =0x0000011B
	str r3, [sp, #0x10]
	ldr r1, _08049560 @ =0x000133E0
	adds r1, r0, r1
	str r1, [sp, #0x14]
	b _08049576
	.align 2, 0
_0804955C: .4byte 0x0000011B
_08049560: .4byte 0x000133E0
_08049564:
	movs r2, #2
	str r2, [sp, #8]
	movs r3, #0x24
	str r3, [sp, #0xc]
	ldr r1, _080495CC @ =0x00000133
	str r1, [sp, #0x10]
	ldr r2, _080495D0 @ =0x000133E4
	adds r2, r0, r2
	str r2, [sp, #0x14]
_08049576:
	ldr r3, [sp]
	movs r0, #0x16
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bne _080495D8
	movs r4, #1
	mov r0, sb
	ands r4, r0
	movs r0, #0
	cmp r4, #0
	beq _0804958E
	movs r0, #0x15
_0804958E:
	mov r1, sb
	asrs r5, r1, #1
	adds r1, r5, #0
	adds r1, #0xc
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0xe
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	ldr r0, _080495D4 @ =0x0000034F
	bl sub_08041434
	movs r1, #0
	bl sub_08041338
	movs r0, #0xd
	cmp r4, #0
	beq _080495BA
	movs r0, #0x1b
_080495BA:
	adds r1, r5, #0
	adds r1, #0xa
	movs r2, #1
	bl sub_08047098
	movs r2, #1
	mov sb, r2
	b _080495DC
	.align 2, 0
_080495CC: .4byte 0x00000133
_080495D0: .4byte 0x000133E4
_080495D4: .4byte 0x0000034F
_080495D8:
	movs r3, #0
	mov sb, r3
_080495DC:
	movs r0, #1
	mov sl, r0
	movs r0, #0
	ldr r1, [sp]
	strb r0, [r1, #0x17]
	movs r2, #0
	str r2, [sp, #0x18]
	movs r0, #0x16
	ldrsb r0, [r1, r0]
	b _0804961C
_080495F0:
	ldr r3, [sp, #0x14]
	ldr r0, [sp, #0x18]
	adds r1, r3, r0
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08049610
	adds r1, r0, #0
	subs r1, #1
	ldr r0, [sp, #8]
	bl sub_080326B8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08049610
	movs r1, #1
	add sl, r1
_08049610:
	ldr r2, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x18]
	ldr r3, [sp]
	movs r0, #0x16
	ldrsb r0, [r3, r0]
_0804961C:
	cmp sl, r0
	bge _08049624
	cmp r2, #4
	blt _080495F0
_08049624:
	movs r7, #1
	cmp sl, r0
	bge _08049678
	ldr r0, [sp, #0xc]
	cmp r7, r0
	bge _08049678
_08049630:
	subs r1, r7, #1
	ldr r0, [sp, #8]
	bl sub_080326B8
	lsls r0, r0, #0x18
	adds r6, r7, #1
	cmp r0, #0
	beq _08049666
	movs r1, #1
	add sl, r1
	movs r2, #0
	cmp r2, #4
	bge _08049666
_0804964A:
	ldr r3, [sp, #0x14]
	adds r1, r3, r2
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08049660
	ldrb r1, [r1]
	cmp r7, r1
	bne _08049660
	movs r0, #1
	rsbs r0, r0, #0
	add sl, r0
_08049660:
	adds r2, #1
	cmp r2, #4
	blt _0804964A
_08049666:
	adds r7, r6, #0
	ldr r1, [sp]
	movs r0, #0x16
	ldrsb r0, [r1, r0]
	cmp sl, r0
	bge _08049678
	ldr r2, [sp, #0xc]
	cmp r7, r2
	blt _08049630
_08049678:
	mov r3, sb
	cmp r3, #7
	ble _08049680
	b _0804987A
_08049680:
	ldr r0, [sp, #0x18]
	cmp r0, #4
	bge _0804972E
	ldr r1, [sp, #0x14]
	adds r5, r0, r1
_0804968A:
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _0804971A
	adds r1, r0, #0
	subs r1, #1
	ldr r0, [sp, #8]
	bl sub_080326B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	cmp r0, #0
	beq _0804971A
	ldr r2, [sp]
	movs r0, #0x15
	ldrsb r0, [r2, r0]
	cmp sl, r0
	bne _080496B2
	ldrb r0, [r5]
	strb r0, [r2, #0x17]
_080496B2:
	movs r6, #1
	mov r3, sb
	ands r6, r3
	movs r1, #0
	cmp r6, #0
	beq _080496C0
	movs r1, #0x15
_080496C0:
	mov r0, sb
	asrs r0, r0, #1
	mov r8, r0
	adds r0, #0xc
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r1, #0
	adds r1, r4, #0
	movs r2, #0xe
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	cmp r6, #0
	beq _080496EE
	movs r1, #1
	mov r0, sb
	ands r0, r1
	lsls r0, r0, #7
	adds r1, r4, #0
	bl sub_0804090C
_080496EE:
	ldrb r0, [r5]
	ldr r1, [sp, #0x10]
	adds r0, r1, r0
	subs r0, #1
	bl sub_08041434
	movs r1, #0
	bl sub_08041338
	movs r0, #0xd
	cmp r6, #0
	beq _08049708
	movs r0, #0x1b
_08049708:
	mov r1, r8
	adds r1, #0xa
	ldr r2, [sp, #4]
	movs r3, #1
	bl sub_08046EF4
	movs r2, #1
	add sl, r2
	add sb, r2
_0804971A:
	adds r5, #1
	ldr r3, [sp, #0x18]
	adds r3, #1
	str r3, [sp, #0x18]
	mov r0, sb
	cmp r0, #7
	ble _0804972A
	b _0804987A
_0804972A:
	cmp r3, #4
	blt _0804968A
_0804972E:
	mov r1, sb
	cmp r1, #7
	ble _08049736
	b _0804987A
_08049736:
	ldr r2, [sp, #0xc]
	cmp r7, r2
	bge _08049838
_0804973C:
	subs r1, r7, #1
	ldr r0, [sp, #8]
	bl sub_080326B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	adds r6, r7, #1
	cmp r0, #0
	beq _080497EC
	movs r3, #0
	movs r2, #0
	cmp r2, #4
	bge _08049770
_08049758:
	ldr r0, [sp, #0x14]
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0804976A
	ldrb r1, [r1]
	cmp r7, r1
	bne _0804976A
	movs r3, #1
_0804976A:
	adds r2, #1
	cmp r2, #4
	blt _08049758
_08049770:
	cmp r3, #0
	bne _080497EC
	ldr r1, [sp]
	movs r0, #0x15
	ldrsb r0, [r1, r0]
	cmp sl, r0
	bne _08049780
	strb r7, [r1, #0x17]
_08049780:
	movs r5, #1
	mov r2, sb
	ands r5, r2
	movs r0, #0
	cmp r5, #0
	beq _0804978E
	movs r0, #0x15
_0804978E:
	mov r1, sb
	adds r1, #8
	asrs r1, r1, #1
	adds r1, #8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0xe
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	mov r3, sb
	asrs r4, r3, #1
	cmp r5, #0
	beq _080497C2
	movs r1, #1
	mov r0, sb
	ands r0, r1
	lsls r0, r0, #7
	adds r1, r4, #0
	adds r1, #0xc
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0804090C
_080497C2:
	ldr r1, [sp, #0x10]
	adds r0, r1, r7
	subs r0, #1
	bl sub_08041434
	movs r1, #0
	bl sub_08041338
	movs r0, #0xd
	cmp r5, #0
	beq _080497DA
	movs r0, #0x1b
_080497DA:
	adds r1, r4, #0
	adds r1, #0xa
	ldr r2, [sp, #4]
	movs r3, #1
	bl sub_08046EF4
	movs r2, #1
	add sl, r2
	add sb, r2
_080497EC:
	adds r7, r6, #0
	mov r3, sb
	cmp r3, #7
	bgt _0804987A
	ldr r0, [sp, #0xc]
	cmp r7, r0
	blt _0804973C
	b _08049838
_080497FC:
	movs r4, #1
	mov r2, sb
	ands r4, r2
	movs r0, #0
	cmp r4, #0
	beq _0804980A
	movs r0, #0x15
_0804980A:
	mov r3, sb
	asrs r5, r3, #1
	adds r1, r5, #0
	adds r1, #0xc
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0xe
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	movs r0, #0xd
	cmp r4, #0
	beq _0804982A
	movs r0, #0x1b
_0804982A:
	adds r1, r5, #0
	adds r1, #0xa
	movs r2, #1
	bl sub_08047098
	movs r0, #1
	add sb, r0
_08049838:
	mov r1, sb
	cmp r1, #7
	ble _080497FC
	b _0804987A
_08049840:
	subs r1, r7, #1
	ldr r0, [sp, #8]
	bl sub_080326B8
	lsls r0, r0, #0x18
	adds r6, r7, #1
	cmp r0, #0
	beq _08049878
	movs r3, #0
	movs r2, #0
	cmp r3, #4
	bge _08049870
_08049858:
	ldr r0, [sp, #0x14]
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0804986A
	ldrb r1, [r1]
	cmp r7, r1
	bne _0804986A
	movs r3, #1
_0804986A:
	adds r2, #1
	cmp r2, #4
	blt _08049858
_08049870:
	cmp r3, #0
	bne _08049878
	movs r1, #1
	add sl, r1
_08049878:
	adds r7, r6, #0
_0804987A:
	ldr r2, [sp, #0xc]
	cmp r7, r2
	blt _08049840
	mov r0, sl
	ldr r3, [sp]
	strb r0, [r3, #0x14]
	ldr r0, [sp]
	movs r1, #1
	bl sub_080462F0
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080498A0
sub_080498A0: @ 0x080498A0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r8, r0
	ldr r0, _080498CC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080498D0 @ =0x0001325C
	adds r2, r0, r1
	movs r4, #0
	mov sb, r4
	mov r4, r8
	ldrb r1, [r4, #0x13]
	cmp r1, #1
	beq _080498E8
	cmp r1, #1
	bgt _080498D4
	cmp r1, #0
	beq _080498DA
	b _08049900
	.align 2, 0
_080498CC: .4byte gEwramData
_080498D0: .4byte 0x0001325C
_080498D4:
	cmp r1, #2
	beq _080498F8
	b _08049900
_080498DA:
	movs r3, #0
	ldr r1, _080498E4 @ =0x000133DC
	adds r5, r0, r1
	ldrb r7, [r2, #0xd]
	b _08049900
	.align 2, 0
_080498E4: .4byte 0x000133DC
_080498E8:
	movs r3, #1
	ldr r4, _080498F4 @ =0x000133E0
	adds r5, r0, r4
	ldrb r7, [r2, #0xe]
	b _08049900
	.align 2, 0
_080498F4: .4byte 0x000133E0
_080498F8:
	movs r3, #2
	ldr r1, _08049998 @ =0x000133E4
	adds r5, r0, r1
	ldrb r7, [r2, #0xf]
_08049900:
	movs r6, #0xff
	adds r4, r5, #0
_08049904:
	ldrb r0, [r4]
	mov r2, r8
	ldrb r2, [r2, #0x17]
	cmp r0, r2
	bne _08049926
	adds r1, r0, #0
	subs r1, #1
	adds r0, r3, #0
	str r3, [sp]
	bl sub_080326B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r3, [sp]
	cmp r0, #1
	bne _08049926
	strb r6, [r4]
_08049926:
	ldrb r0, [r4]
	cmp r0, r7
	bne _0804992E
	strb r6, [r4]
_0804992E:
	ldrb r0, [r4]
	cmp r0, #0xff
	bne _0804993E
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_0804993E:
	adds r4, #1
	adds r0, r5, #3
	cmp r4, r0
	ble _08049904
	movs r3, #2
_08049948:
	adds r1, r3, r5
	ldrb r0, [r1, #1]
	cmp r0, #0xff
	bne _08049972
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08049972
	movs r2, #0xff
_08049958:
	ldrb r0, [r1]
	strb r0, [r1, #1]
	strb r2, [r1]
	cmp r3, #1
	bgt _08049964
	adds r3, #1
_08049964:
	adds r1, r3, r5
	ldrb r0, [r1, #1]
	cmp r0, #0xff
	bne _08049972
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _08049958
_08049972:
	subs r3, #1
	cmp r3, #0
	bge _08049948
	mov r4, sb
	cmp r4, #0
	bne _0804999C
	movs r3, #2
_08049980:
	adds r2, r5, r3
	ldrb r1, [r2]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _0804998C
	strb r1, [r2, #1]
_0804998C:
	subs r3, #1
	cmp r3, #0
	bge _08049980
	strb r7, [r5]
	b _080499A4
	.align 2, 0
_08049998: .4byte 0x000133E4
_0804999C:
	mov r1, sb
	adds r0, r1, r5
	subs r0, #1
	strb r7, [r0]
_080499A4:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080499B4
sub_080499B4: @ 0x080499B4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _080499D0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080499D4 @ =0x0001325C
	adds r7, r0, r1
	ldrb r1, [r4, #0x13]
	cmp r1, #1
	beq _080499EC
	cmp r1, #1
	bgt _080499D8
	cmp r1, #0
	beq _080499DE
	b _080499FE
	.align 2, 0
_080499D0: .4byte gEwramData
_080499D4: .4byte 0x0001325C
_080499D8:
	cmp r1, #2
	beq _080499F8
	b _080499FE
_080499DE:
	ldr r1, _080499E8 @ =0x00013269
	adds r5, r0, r1
	movs r6, #0
	b _080499FE
	.align 2, 0
_080499E8: .4byte 0x00013269
_080499EC:
	ldr r1, _080499F4 @ =0x0001326A
	adds r5, r0, r1
	movs r6, #1
	b _080499FE
	.align 2, 0
_080499F4: .4byte 0x0001326A
_080499F8:
	ldr r1, _08049A44 @ =0x0001326B
	adds r5, r0, r1
	movs r6, #2
_080499FE:
	bl sub_0804AD9C
	ldrb r0, [r5]
	cmp r0, #0
	beq _08049A24
	adds r1, r0, #0
	subs r1, #1
	adds r0, r6, #0
	bl sub_080326B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08049A20
	ldrb r0, [r4, #0x14]
	adds r0, #1
	strb r0, [r4, #0x14]
_08049A20:
	bl sub_080321C4
_08049A24:
	adds r0, r4, #0
	bl sub_080498A0
	ldrb r1, [r4, #0x17]
	adds r0, r1, #0
	cmp r0, #0
	beq _08049A7A
	strb r1, [r5]
	cmp r6, #2
	bne _08049A48
	ldrb r0, [r4, #0x17]
	movs r1, #1
	bl sub_08031FC4
	b _08049A50
	.align 2, 0
_08049A44: .4byte 0x0001326B
_08049A48:
	ldrb r0, [r7, #0xf]
	movs r1, #1
	bl sub_08031FC4
_08049A50:
	ldrb r1, [r4, #0x17]
	subs r1, #1
	adds r0, r6, #0
	bl sub_080326B8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08049A88
	ldrb r2, [r4, #0x14]
	subs r0, r2, #1
	strb r0, [r4, #0x14]
	movs r1, #0x15
	ldrsb r1, [r4, r1]
	movs r0, #0x14
	ldrsb r0, [r4, r0]
	subs r0, #1
	cmp r1, r0
	ble _08049A88
	subs r0, r2, #2
	strb r0, [r4, #0x15]
	b _08049A88
_08049A7A:
	strb r0, [r5]
	cmp r6, #2
	beq _08049A88
	ldrb r0, [r7, #0xf]
	movs r1, #1
	bl sub_08031FC4
_08049A88:
	movs r0, #0x16
	movs r1, #2
	bl sub_0804679C
	movs r0, #0x16
	movs r1, #4
	bl sub_080466C8
	movs r0, #0x15
	movs r1, #8
	bl sub_080471E4
	bl sub_08049D98
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08049AAC
sub_08049AAC: @ 0x08049AAC
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _08049AF0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08049AF4 @ =0x0001325C
	adds r4, r0, r1
	movs r6, #0
	movs r7, #0
	movs r0, #1
	movs r1, #0x10
	movs r2, #4
	bl sub_08047128
	movs r0, #1
	movs r1, #0x11
	movs r2, #4
	bl sub_08047128
	movs r0, #1
	movs r1, #0x12
	movs r2, #4
	bl sub_08047128
	movs r0, #0x15
	ldrsb r0, [r5, r0]
	cmp r0, #2
	beq _08049B8C
	cmp r0, #0
	beq _08049AF8
	cmp r0, #1
	beq _08049B34
	b _08049B76
	.align 2, 0
_08049AF0: .4byte gEwramData
_08049AF4: .4byte 0x0001325C
_08049AF8:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _08049B8C
	ldr r1, _08049B28 @ =0x080E1598
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r1, #6
	ldrsh r6, [r0, r1]
	ldr r2, _08049B2C @ =0x0600E442
	ldr r1, _08049B30 @ =0x000033AB
	movs r0, #3
_08049B10:
	strh r1, [r2]
	adds r2, #2
	adds r1, #1
	subs r0, #1
	cmp r0, #0
	bge _08049B10
	movs r0, #1
	movs r1, #0x12
	movs r2, #4
	bl sub_08047128
	b _08049B76
	.align 2, 0
_08049B28: .4byte 0x080E1598
_08049B2C: .4byte 0x0600E442
_08049B30: .4byte 0x000033AB
_08049B34:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08049B8C
	ldr r2, _08049B94 @ =0x080E192C
	ldrb r1, [r4, #0xe]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r6, [r0, #4]
	ldrb r0, [r0, #5]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	ldr r3, _08049B98 @ =0x0600E442
	ldr r2, _08049B9C @ =0x000033BB
	movs r1, #3
_08049B54:
	strh r2, [r3]
	adds r3, #2
	adds r2, #1
	subs r1, #1
	cmp r1, #0
	bge _08049B54
	ldr r2, _08049BA0 @ =0x0600E482
	lsls r0, r0, #4
	ldr r1, _08049BA4 @ =0x000033CB
	adds r0, r0, r1
	movs r1, #3
_08049B6A:
	strh r0, [r2]
	adds r2, #2
	adds r0, #1
	subs r1, #1
	cmp r1, #0
	bge _08049B6A
_08049B76:
	cmp r7, #0
	bne _08049B8C
	movs r0, #3
	str r0, [sp]
	str r7, [sp, #4]
	movs r0, #4
	movs r1, #0x10
	adds r2, r6, #0
	movs r3, #3
	bl sub_08046FFC
_08049B8C:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08049B94: .4byte 0x080E192C
_08049B98: .4byte 0x0600E442
_08049B9C: .4byte 0x000033BB
_08049BA0: .4byte 0x0600E482
_08049BA4: .4byte 0x000033CB

	thumb_func_start sub_08049BA8
sub_08049BA8: @ 0x08049BA8
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r5, #0
	movs r0, #1
	movs r1, #0x10
	movs r2, #4
	bl sub_08047128
	movs r0, #1
	movs r1, #0x11
	movs r2, #4
	bl sub_08047128
	movs r0, #1
	movs r1, #0x12
	movs r2, #4
	bl sub_08047128
	movs r0, #0x15
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _08049C6C
	ldrb r0, [r4, #0x13]
	cmp r0, #2
	beq _08049C6C
	cmp r0, #0
	beq _08049BE6
	cmp r0, #1
	beq _08049C1C
	b _08049C58
_08049BE6:
	ldr r1, _08049C10 @ =0x080E1598
	ldrb r0, [r4, #0x17]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r1, #6
	ldrsh r5, [r0, r1]
	ldr r2, _08049C14 @ =0x0600E442
	ldr r1, _08049C18 @ =0x000033AB
	movs r0, #3
_08049BF8:
	strh r1, [r2]
	adds r2, #2
	adds r1, #1
	subs r0, #1
	cmp r0, #0
	bge _08049BF8
	movs r0, #1
	movs r1, #0x12
	movs r2, #4
	bl sub_08047128
	b _08049C58
	.align 2, 0
_08049C10: .4byte 0x080E1598
_08049C14: .4byte 0x0600E442
_08049C18: .4byte 0x000033AB
_08049C1C:
	ldr r2, _08049C74 @ =0x080E192C
	ldrb r1, [r4, #0x17]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r5, [r0, #4]
	ldrb r0, [r0, #5]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	ldr r3, _08049C78 @ =0x0600E442
	ldr r2, _08049C7C @ =0x000033BB
	movs r1, #3
_08049C36:
	strh r2, [r3]
	adds r3, #2
	adds r2, #1
	subs r1, #1
	cmp r1, #0
	bge _08049C36
	ldr r2, _08049C80 @ =0x0600E482
	lsls r0, r0, #4
	ldr r1, _08049C84 @ =0x000033CB
	adds r0, r0, r1
	movs r1, #3
_08049C4C:
	strh r0, [r2]
	adds r2, #2
	adds r0, #1
	subs r1, #1
	cmp r1, #0
	bge _08049C4C
_08049C58:
	movs r0, #3
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #4
	movs r1, #0x10
	adds r2, r5, #0
	movs r3, #3
	bl sub_08046FFC
_08049C6C:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08049C74: .4byte 0x080E192C
_08049C78: .4byte 0x0600E442
_08049C7C: .4byte 0x000033BB
_08049C80: .4byte 0x0600E482
_08049C84: .4byte 0x000033CB

	thumb_func_start sub_08049C88
sub_08049C88: @ 0x08049C88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r4, r0, #0
	ldr r0, _08049CDC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08049CE0 @ =0x000131EE
	adds r1, r1, r0
	mov sl, r1
	ldr r2, _08049CE4 @ =0x00013269
	adds r0, r0, r2
	ldrb r1, [r4, #0x13]
	adds r0, r0, r1
	str r0, [sp, #0x14]
	ldrb r2, [r0]
	str r2, [sp, #0x18]
	movs r0, #0
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	mov r2, sl
	add r1, sp, #8
	movs r6, #5
_08049CBA:
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	adds r1, #2
	subs r6, #1
	cmp r6, #0
	bge _08049CBA
	bl sub_0804AD9C
	ldrb r0, [r4, #0x13]
	cmp r0, #2
	bne _08049CE8
	ldrb r0, [r4, #0x17]
	movs r1, #1
	bl sub_08031FC4
	b _08049CF8
	.align 2, 0
_08049CDC: .4byte gEwramData
_08049CE0: .4byte 0x000131EE
_08049CE4: .4byte 0x00013269
_08049CE8:
	ldr r0, _08049D18 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08049D1C @ =0x0001326B
	adds r0, r0, r2
	ldrb r0, [r0]
	movs r1, #1
	bl sub_08031FC4
_08049CF8:
	movs r6, #0
	mov r8, sl
	add r0, sp, #8
	mov sb, r0
_08049D00:
	mov r1, r8
	ldrh r0, [r1]
	mov r2, sb
	ldrh r1, [r2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08049D20
	movs r2, #0
	movs r7, #3
	b _08049D2E
	.align 2, 0
_08049D18: .4byte gEwramData
_08049D1C: .4byte 0x0001326B
_08049D20:
	cmp r0, #0
	ble _08049D2A
	movs r2, #1
	movs r7, #9
	b _08049D2E
_08049D2A:
	movs r2, #2
	movs r7, #8
_08049D2E:
	mov r0, r8
	movs r1, #0
	ldrsh r5, [r0, r1]
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r5, r0
	ble _08049D3E
	ldr r5, _08049D94 @ =0x000003E7
_08049D3E:
	adds r4, r6, #2
	movs r0, #0x18
	adds r1, r4, #0
	bl sub_08047180
	str r7, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #0x1b
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #3
	bl sub_08046FFC
	movs r2, #2
	add r8, r2
	add sb, r2
	adds r6, #1
	cmp r6, #5
	ble _08049D00
	add r2, sp, #8
	mov r1, sl
	movs r6, #5
_08049D6C:
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	adds r1, #2
	subs r6, #1
	cmp r6, #0
	bge _08049D6C
	mov r0, sp
	ldrb r1, [r0, #0x18]
	ldr r0, [sp, #0x14]
	strb r1, [r0]
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08049D94: .4byte 0x000003E7

	thumb_func_start sub_08049D98
sub_08049D98: @ 0x08049D98
	push {r4, lr}
	movs r4, #0
_08049D9C:
	adds r1, r4, #2
	movs r0, #0x18
	movs r2, #4
	bl sub_08047128
	adds r4, #1
	cmp r4, #5
	ble _08049D9C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08049DB4
sub_08049DB4: @ 0x08049DB4
	push {r4, lr}
	ldr r1, _08049DD4 @ =gEwramData
	ldr r1, [r1]
	ldr r2, _08049DD8 @ =0x0001325C
	adds r1, r1, r2
	ldr r4, _08049DDC @ =0x0000034F
	ldrb r0, [r0, #0x15]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08049E00
	cmp r0, #1
	bgt _08049DE0
	cmp r0, #0
	beq _08049DE6
	b _08049E2A
	.align 2, 0
_08049DD4: .4byte gEwramData
_08049DD8: .4byte 0x0001325C
_08049DDC: .4byte 0x0000034F
_08049DE0:
	cmp r0, #2
	beq _08049E18
	b _08049E2A
_08049DE6:
	ldrb r0, [r1, #0xd]
	cmp r0, #0
	beq _08049DF8
	ldr r1, _08049DF4 @ =0x000001E3
	adds r4, r0, r1
	b _08049E2A
	.align 2, 0
_08049DF4: .4byte 0x000001E3
_08049DF8:
	ldr r4, _08049DFC @ =0x0000037D
	b _08049E2A
	.align 2, 0
_08049DFC: .4byte 0x0000037D
_08049E00:
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	beq _08049E10
	ldr r2, _08049E0C @ =0x0000021B
	adds r4, r0, r2
	b _08049E2A
	.align 2, 0
_08049E0C: .4byte 0x0000021B
_08049E10:
	ldr r4, _08049E14 @ =0x0000037E
	b _08049E2A
	.align 2, 0
_08049E14: .4byte 0x0000037E
_08049E18:
	ldrb r0, [r1, #0xf]
	cmp r0, #0
	beq _08049E28
	ldr r1, _08049E24 @ =0x00000233
	adds r4, r0, r1
	b _08049E2A
	.align 2, 0
_08049E24: .4byte 0x00000233
_08049E28:
	ldr r4, _08049E48 @ =0x0000037F
_08049E2A:
	movs r0, #0
	movs r1, #0
	movs r2, #0x1d
	movs r3, #2
	bl sub_08040748
	bl sub_08040FE0
	adds r0, r4, #0
	bl sub_08046BC8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08049E48: .4byte 0x0000037F

	thumb_func_start sub_08049E4C
sub_08049E4C: @ 0x08049E4C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x13]
	ldrb r1, [r4, #0x17]
	bl sub_08047330
	adds r0, r4, #0
	bl sub_08049C88
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08049E64
sub_08049E64: @ 0x08049E64
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, _08049E80 @ =gEwramData
	ldr r0, [r0]
	cmp r2, #7
	bgt _08049ED6
	adds r1, #1
	cmp r2, #1
	beq _08049E94
	cmp r2, #1
	bgt _08049E84
	cmp r2, #0
	beq _08049E8A
	b _08049EA0
	.align 2, 0
_08049E80: .4byte gEwramData
_08049E84:
	cmp r2, #2
	beq _08049E9C
	b _08049EA0
_08049E8A:
	ldr r2, _08049E90 @ =0x000133DC
	b _08049E9E
	.align 2, 0
_08049E90: .4byte 0x000133DC
_08049E94:
	ldr r2, _08049E98 @ =0x000133E0
	b _08049E9E
	.align 2, 0
_08049E98: .4byte 0x000133E0
_08049E9C:
	ldr r2, _08049EBC @ =0x000133E4
_08049E9E:
	adds r4, r0, r2
_08049EA0:
	movs r3, #0
_08049EA2:
	adds r0, r4, r3
	ldrb r0, [r0]
	cmp r0, r1
	beq _08049ED6
	adds r3, #1
	cmp r3, #3
	ble _08049EA2
	movs r3, #0
	ldrb r0, [r4]
	cmp r0, #0xff
	bne _08049EC0
	strb r1, [r4]
	b _08049ED0
	.align 2, 0
_08049EBC: .4byte 0x000133E4
_08049EC0:
	adds r3, #1
	cmp r3, #3
	bgt _08049ED0
	adds r2, r4, r3
	ldrb r0, [r2]
	cmp r0, #0xff
	bne _08049EC0
	strb r1, [r2]
_08049ED0:
	cmp r3, #4
	bne _08049ED6
	strb r1, [r4, #3]
_08049ED6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08049EDC
sub_08049EDC: @ 0x08049EDC
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r0, _08049EF4 @ =gEwramData
	ldr r0, [r0]
	cmp r2, #1
	beq _08049F08
	cmp r2, #1
	bgt _08049EF8
	cmp r2, #0
	beq _08049EFE
	b _08049F14
	.align 2, 0
_08049EF4: .4byte gEwramData
_08049EF8:
	cmp r2, #2
	beq _08049F10
	b _08049F14
_08049EFE:
	ldr r1, _08049F04 @ =0x000133DC
	b _08049F12
	.align 2, 0
_08049F04: .4byte 0x000133DC
_08049F08:
	ldr r1, _08049F0C @ =0x000133E0
	b _08049F12
	.align 2, 0
_08049F0C: .4byte 0x000133E0
_08049F10:
	ldr r1, _08049F30 @ =0x000133E4
_08049F12:
	adds r3, r0, r1
_08049F14:
	movs r2, #0
	lsls r0, r4, #0x18
	lsrs r1, r0, #0x18
_08049F1A:
	adds r0, r3, r2
	strb r4, [r0]
	cmp r1, #0
	bne _08049F2A
	adds r2, #1
	cmp r2, #3
	ble _08049F1A
	strb r4, [r3, #3]
_08049F2A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08049F30: .4byte 0x000133E4

	thumb_func_start sub_08049F34
sub_08049F34: @ 0x08049F34
	push {r4, r5, r6, r7, lr}
	ldr r0, _08049FF0 @ =gEwramData
	ldr r4, [r0]
	ldr r0, _08049FF4 @ =0x0001325C
	adds r1, r4, r0
	ldr r6, _08049FF8 @ =0x0000034F
	ldrb r0, [r1, #0xc]
	cmp r0, #0xff
	beq _08049F5C
	adds r1, r0, #0
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08049FFC @ =0x08505D3C
	adds r0, r0, r1
	ldr r1, _0804A000 @ =0x08506734
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r6, [r0]
_08049F5C:
	movs r0, #0x15
	movs r1, #8
	movs r2, #0xe
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	movs r0, #0x80
	movs r1, #8
	bl sub_0804090C
	adds r0, r6, #0
	bl sub_08041434
	movs r1, #0
	bl sub_08041338
	movs r2, #1
	ldr r0, _0804A004 @ =0x0001326C
	adds r7, r4, r0
_08049F86:
	ldr r6, _08049FF8 @ =0x0000034F
	subs r0, r2, #1
	adds r1, r7, r0
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08049FA8
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0804A008 @ =0x085063B0
	adds r0, r0, r1
	ldr r1, _0804A000 @ =0x08506734
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r6, [r0]
_08049FA8:
	adds r5, r2, #1
	movs r4, #1
	ands r4, r5
	movs r0, #0
	cmp r4, #0
	beq _08049FB6
	movs r0, #0x15
_08049FB6:
	asrs r1, r5, #1
	adds r1, #8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0xe
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	cmp r4, #0
	beq _08049FD6
	movs r0, #0x80
	movs r1, #9
	bl sub_0804090C
_08049FD6:
	adds r0, r6, #0
	bl sub_08041434
	movs r1, #0
	bl sub_08041338
	adds r2, r5, #0
	cmp r2, #2
	ble _08049F86
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08049FF0: .4byte gEwramData
_08049FF4: .4byte 0x0001325C
_08049FF8: .4byte 0x0000034F
_08049FFC: .4byte 0x08505D3C
_0804A000: .4byte 0x08506734
_0804A004: .4byte 0x0001326C
_0804A008: .4byte 0x085063B0

	thumb_func_start sub_0804A00C
sub_0804A00C: @ 0x0804A00C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_08040FE0
	ldr r3, _0804A044 @ =0x00000351
	movs r6, #1
	rsbs r6, r6, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0804A050
	ldrb r0, [r5, #0xc]
	cmp r0, #0xff
	beq _0804A07E
	adds r2, r0, #0
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _0804A048 @ =0x08505D3C
	adds r0, r0, r1
	ldr r1, _0804A04C @ =0x08506936
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r3, [r0]
	movs r7, #3
	b _0804A07C
	.align 2, 0
_0804A044: .4byte 0x00000351
_0804A048: .4byte 0x08505D3C
_0804A04C: .4byte 0x08506936
_0804A050:
	cmp r0, #0
	blt _0804A07E
	cmp r0, #2
	bgt _0804A07E
	adds r0, r5, r0
	adds r1, r0, #0
	adds r1, #0xf
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0804A07E
	adds r2, r0, #0
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _0804A0A0 @ =0x085063B0
	adds r0, r0, r1
	ldr r1, _0804A0A4 @ =0x08506936
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r3, [r0]
	movs r7, #4
_0804A07C:
	adds r6, r2, #0
_0804A07E:
	adds r0, r3, #0
	bl sub_0804728C
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	beq _0804A0A8
	movs r0, #0x1c
	movs r1, #0x94
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08048804
	movs r0, #0
	bl sub_08048BC4
	b _0804A0AE
	.align 2, 0
_0804A0A0: .4byte 0x085063B0
_0804A0A4: .4byte 0x08506936
_0804A0A8:
	movs r0, #1
	bl sub_08048BC4
_0804A0AE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0804A0B4
sub_0804A0B4: @ 0x0804A0B4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r4, #0
	movs r6, #0x32
_0804A0BE:
	movs r3, #1
	rsbs r3, r3, #0
	cmp r4, #0
	bne _0804A0D0
	ldrb r0, [r5, #0xc]
	cmp r0, #0xff
	beq _0804A0E8
	movs r7, #3
	b _0804A0E6
_0804A0D0:
	cmp r4, #0
	blt _0804A0E8
	cmp r4, #2
	bgt _0804A0E8
	adds r0, r5, r4
	adds r1, r0, #0
	adds r1, #0xf
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0804A0E8
	movs r7, #4
_0804A0E6:
	adds r3, r0, #0
_0804A0E8:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _0804A106
	str r4, [sp]
	movs r0, #0x70
	adds r1, r6, #0
	adds r2, r7, #0
	bl sub_080488FC
	movs r0, #0
	adds r1, r4, #0
	bl sub_08048C44
	b _0804A10E
_0804A106:
	movs r0, #1
	adds r1, r4, #0
	bl sub_08048C44
_0804A10E:
	adds r6, #0x10
	adds r4, #1
	cmp r4, #2
	ble _0804A0BE
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804A120
sub_0804A120: @ 0x0804A120
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r4, r0, #0
	ldr r1, _0804A17C @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0804A180 @ =0x000131EE
	adds r5, r0, r2
	add r6, sp, #0x14
	mov sl, r6
	adds r3, r5, #0
	add r2, sp, #8
	movs r7, #5
_0804A140:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r7, #1
	cmp r7, #0
	bge _0804A140
	ldr r0, [r1]
	ldr r1, _0804A184 @ =0x00013268
	adds r3, r0, r1
	ldrb r2, [r3]
	str r2, [sp, #0x18]
	ldr r6, _0804A188 @ =0x0001326C
	adds r2, r0, r6
	ldrb r1, [r2]
	mov r6, sl
	strb r1, [r6]
	ldr r6, _0804A18C @ =0x0001326D
	adds r1, r0, r6
	ldrb r0, [r1]
	mov r6, sl
	strb r0, [r6, #1]
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _0804A19C
	cmp r0, #1
	bgt _0804A190
	cmp r0, #0
	beq _0804A196
	b _0804A1A6
	.align 2, 0
_0804A17C: .4byte gEwramData
_0804A180: .4byte 0x000131EE
_0804A184: .4byte 0x00013268
_0804A188: .4byte 0x0001326C
_0804A18C: .4byte 0x0001326D
_0804A190:
	cmp r0, #2
	beq _0804A1A2
	b _0804A1A6
_0804A196:
	ldrb r0, [r4, #0x17]
	strb r0, [r3]
	b _0804A1A6
_0804A19C:
	ldrb r0, [r4, #0x17]
	strb r0, [r2]
	b _0804A1A6
_0804A1A2:
	ldrb r0, [r4, #0x17]
	strb r0, [r1]
_0804A1A6:
	bl sub_0804AD9C
	ldr r0, _0804A1DC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804A1E0 @ =0x0001326B
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	bl sub_08031FC4
	movs r7, #0
	add r2, sp, #8
	mov sb, r2
	mov r8, r5
_0804A1C2:
	mov r6, r8
	ldrh r0, [r6]
	mov r2, sb
	ldrh r1, [r2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _0804A1E4
	movs r2, #0
	movs r6, #3
	b _0804A1F2
	.align 2, 0
_0804A1DC: .4byte gEwramData
_0804A1E0: .4byte 0x0001326B
_0804A1E4:
	cmp r0, #0
	ble _0804A1EE
	movs r2, #1
	movs r6, #9
	b _0804A1F2
_0804A1EE:
	movs r2, #2
	movs r6, #8
_0804A1F2:
	mov r0, r8
	movs r1, #0
	ldrsh r5, [r0, r1]
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r5, r0
	ble _0804A202
	ldr r5, _0804A224 @ =0x000003E7
_0804A202:
	cmp r7, #1
	bgt _0804A228
	adds r4, r7, #2
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
	b _0804A244
	.align 2, 0
_0804A224: .4byte 0x000003E7
_0804A228:
	adds r4, r7, #3
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
_0804A244:
	movs r2, #2
	add sb, r2
	add r8, r2
	adds r7, #1
	cmp r7, #5
	ble _0804A1C2
	ldr r4, _0804A298 @ =gEwramData
	ldr r0, [r4]
	ldr r6, _0804A29C @ =0x00013268
	adds r0, r0, r6
	mov r1, sp
	ldrb r1, [r1, #0x18]
	strb r1, [r0]
	ldr r0, [r4]
	mov r2, sl
	ldrb r1, [r2]
	adds r6, #4
	adds r0, r0, r6
	strb r1, [r0]
	ldr r0, [r4]
	ldrb r1, [r2, #1]
	ldr r2, _0804A2A0 @ =0x0001326D
	adds r0, r0, r2
	strb r1, [r0]
	bl sub_0804AD9C
	ldr r0, [r4]
	subs r6, #1
	adds r0, r0, r6
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
_0804A298: .4byte gEwramData
_0804A29C: .4byte 0x00013268
_0804A2A0: .4byte 0x0001326D

	thumb_func_start sub_0804A2A4
sub_0804A2A4: @ 0x0804A2A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r3, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	movs r0, #0
	mov sb, r0
	movs r0, #0xff
	strb r0, [r1, #0x17]
	ldr r1, [sp, #4]
	cmp r1, #1
	beq _0804A2F8
	cmp r1, #1
	bgt _0804A2CE
	cmp r1, #0
	beq _0804A2D6
	b _0804A332
_0804A2CE:
	ldr r2, [sp, #4]
	cmp r2, #2
	beq _0804A318
	b _0804A332
_0804A2D6:
	ldr r4, _0804A2F4 @ =0x08505D3C
	str r4, [sp, #8]
	movs r0, #0x3b
	str r0, [sp, #0xc]
	movs r1, #2
	str r1, [sp, #0x10]
	adds r2, r3, #0
	adds r2, #0x58
	str r2, [sp, #0x14]
	movs r4, #0xba
	lsls r4, r4, #1
	adds r4, r3, r4
	str r4, [sp, #0x18]
	b _0804A332
	.align 2, 0
_0804A2F4: .4byte 0x08505D3C
_0804A2F8:
	ldr r0, _0804A314 @ =0x085063B0
	str r0, [sp, #8]
	movs r1, #0x2d
	str r1, [sp, #0xc]
	movs r2, #0
	str r2, [sp, #0x10]
	adds r4, r3, #0
	adds r4, #0x93
	str r4, [sp, #0x14]
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r0, r3, r0
	str r0, [sp, #0x18]
	b _0804A332
	.align 2, 0
_0804A314: .4byte 0x085063B0
_0804A318:
	ldr r1, _0804A37C @ =0x085063B0
	str r1, [sp, #8]
	movs r2, #0x2d
	str r2, [sp, #0xc]
	movs r4, #1
	str r4, [sp, #0x10]
	adds r0, r3, #0
	adds r0, #0x93
	str r0, [sp, #0x14]
	movs r1, #0xbe
	lsls r1, r1, #1
	adds r1, r3, r1
	str r1, [sp, #0x18]
_0804A332:
	ldr r2, [sp]
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _0804A384
	movs r0, #0
	movs r1, #0xa
	movs r2, #0xd
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	ldr r0, _0804A380 @ =0x0000034F
	bl sub_08041434
	movs r1, #0
	bl sub_08041338
	movs r0, #1
	mov r3, sb
	ands r0, r3
	movs r2, #0xd
	cmp r0, #0
	beq _0804A366
	movs r2, #0x1b
_0804A366:
	mov r4, sb
	asrs r1, r4, #1
	adds r1, #0xb
	adds r0, r2, #0
	movs r2, #2
	bl sub_08047098
	movs r0, #1
	mov sb, r0
	b _0804A388
	.align 2, 0
_0804A37C: .4byte 0x085063B0
_0804A380: .4byte 0x0000034F
_0804A384:
	movs r1, #0
	mov sb, r1
_0804A388:
	movs r2, #1
	mov sl, r2
	movs r0, #0xff
	ldr r3, [sp]
	strb r0, [r3, #0x17]
	movs r4, #0
	str r4, [sp, #0x1c]
	ldrb r3, [r3, #0x16]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	cmp sl, r3
	bge _0804A3CE
	cmp r4, #4
	bge _0804A3CE
	adds r2, r3, #0
_0804A3A6:
	ldr r0, [sp, #0x18]
	ldr r4, [sp, #0x1c]
	adds r1, r0, r4
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0804A3C0
	ldr r1, [sp, #0x14]
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A3C0
	movs r4, #1
	add sl, r4
_0804A3C0:
	ldr r0, [sp, #0x1c]
	adds r0, #1
	str r0, [sp, #0x1c]
	cmp sl, r2
	bge _0804A3CE
	cmp r0, #4
	blt _0804A3A6
_0804A3CE:
	movs r5, #0
	cmp sl, r3
	bge _0804A432
	ldr r1, [sp, #0xc]
	cmp r5, r1
	bge _0804A432
_0804A3DA:
	ldr r2, [sp, #0x14]
	adds r0, r2, r5
	ldrb r0, [r0]
	adds r7, r5, #1
	cmp r0, #0
	beq _0804A426
	ldr r4, [sp, #4]
	cmp r4, #0
	beq _0804A3FE
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r1, [sp, #8]
	adds r0, r0, r1
	ldrb r0, [r0, #8]
	ldr r2, [sp, #0x10]
	cmp r0, r2
	bne _0804A426
_0804A3FE:
	movs r4, #1
	add sl, r4
	movs r2, #0
	adds r7, r5, #1
	cmp r2, #4
	bge _0804A426
_0804A40A:
	ldr r0, [sp, #0x18]
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0804A420
	ldrb r1, [r1]
	cmp r5, r1
	bne _0804A420
	movs r1, #1
	rsbs r1, r1, #0
	add sl, r1
_0804A420:
	adds r2, #1
	cmp r2, #4
	blt _0804A40A
_0804A426:
	adds r5, r7, #0
	cmp sl, r3
	bge _0804A432
	ldr r2, [sp, #0xc]
	cmp r5, r2
	blt _0804A3DA
_0804A432:
	mov r3, sb
	cmp r3, #7
	ble _0804A43A
	b _0804A67C
_0804A43A:
	ldr r4, [sp, #0x1c]
	cmp r4, #4
	bge _0804A52C
	ldr r0, [sp, #0x18]
	adds r4, r4, r0
	mov r8, r4
_0804A446:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0804A516
	adds r1, r0, #0
	ldr r2, [sp, #0x14]
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A516
	ldr r3, [sp, #4]
	cmp r3, #0
	beq _0804A472
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r4, [sp, #8]
	adds r0, r0, r4
	ldrb r0, [r0, #8]
	ldr r2, [sp, #0x10]
	cmp r0, r2
	bne _0804A516
_0804A472:
	ldr r3, [sp]
	movs r0, #0x15
	ldrsb r0, [r3, r0]
	cmp sl, r0
	bne _0804A47E
	strb r1, [r3, #0x17]
_0804A47E:
	ldr r4, [sp, #4]
	cmp r4, #0
	beq _0804A492
	mov r0, r8
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, [sp, #8]
	b _0804A49E
_0804A492:
	mov r2, r8
	ldrb r0, [r2]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0804A5A4 @ =0x08505D3C
_0804A49E:
	adds r6, r1, r0
	movs r7, #1
	mov r3, sb
	ands r7, r3
	movs r1, #0
	cmp r7, #0
	beq _0804A4AE
	movs r1, #0x15
_0804A4AE:
	mov r0, sb
	adds r0, #4
	asrs r0, r0, #1
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r1, #0
	adds r1, r4, #0
	movs r2, #0xd
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	cmp r7, #0
	beq _0804A4DC
	movs r1, #1
	mov r0, sb
	ands r0, r1
	lsls r0, r0, #7
	adds r1, r4, #0
	bl sub_0804090C
_0804A4DC:
	ldr r1, _0804A5A8 @ =0x08506734
	ldrh r0, [r6]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_08041434
	movs r1, #0
	bl sub_08041338
	movs r3, #0xd
	cmp r7, #0
	beq _0804A4F8
	movs r3, #0x1b
_0804A4F8:
	mov r4, sb
	asrs r1, r4, #1
	adds r1, #0xb
	mov r2, r8
	ldrb r0, [r2]
	ldr r4, [sp, #0x14]
	adds r0, r4, r0
	ldrb r2, [r0]
	adds r0, r3, #0
	movs r3, #1
	bl sub_08046EF4
	movs r0, #1
	add sl, r0
	add sb, r0
_0804A516:
	movs r1, #1
	add r8, r1
	ldr r2, [sp, #0x1c]
	adds r2, #1
	str r2, [sp, #0x1c]
	mov r3, sb
	cmp r3, #7
	ble _0804A528
	b _0804A67C
_0804A528:
	cmp r2, #4
	blt _0804A446
_0804A52C:
	mov r4, sb
	cmp r4, #7
	ble _0804A534
	b _0804A67C
_0804A534:
	ldr r0, [sp, #0xc]
	cmp r5, r0
	bge _0804A632
_0804A53A:
	ldr r1, [sp, #0x14]
	adds r0, r1, r5
	ldrb r1, [r0]
	mov r8, r0
	adds r7, r5, #1
	cmp r1, #0
	beq _0804A624
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0804A560
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r3, [sp, #8]
	adds r0, r0, r3
	ldrb r0, [r0, #8]
	ldr r4, [sp, #0x10]
	cmp r0, r4
	bne _0804A624
_0804A560:
	movs r3, #0
	movs r2, #0
	adds r7, r5, #1
	cmp r2, #4
	bge _0804A582
_0804A56A:
	ldr r0, [sp, #0x18]
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0804A57C
	ldrb r1, [r1]
	cmp r5, r1
	bne _0804A57C
	movs r3, #1
_0804A57C:
	adds r2, #1
	cmp r2, #4
	blt _0804A56A
_0804A582:
	cmp r3, #0
	bne _0804A624
	ldr r1, [sp]
	movs r0, #0x15
	ldrsb r0, [r1, r0]
	cmp sl, r0
	bne _0804A592
	strb r5, [r1, #0x17]
_0804A592:
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0804A5AC
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r3, [sp, #8]
	adds r6, r3, r0
	b _0804A5B6
	.align 2, 0
_0804A5A4: .4byte 0x08505D3C
_0804A5A8: .4byte 0x08506734
_0804A5AC:
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _0804A6F8 @ =0x08505D3C
	adds r6, r0, r1
_0804A5B6:
	movs r5, #1
	mov r4, sb
	ands r5, r4
	movs r1, #0
	cmp r5, #0
	beq _0804A5C4
	movs r1, #0x15
_0804A5C4:
	mov r0, sb
	adds r0, #4
	asrs r0, r0, #1
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r1, #0
	adds r1, r4, #0
	movs r2, #0xd
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	cmp r5, #0
	beq _0804A5F2
	movs r1, #1
	mov r0, sb
	ands r0, r1
	lsls r0, r0, #7
	adds r1, r4, #0
	bl sub_0804090C
_0804A5F2:
	ldr r1, _0804A6FC @ =0x08506734
	ldrh r0, [r6]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_08041434
	movs r1, #0
	bl sub_08041338
	movs r0, #0xd
	cmp r5, #0
	beq _0804A60E
	movs r0, #0x1b
_0804A60E:
	mov r2, sb
	asrs r1, r2, #1
	adds r1, #0xb
	mov r3, r8
	ldrb r2, [r3]
	movs r3, #1
	bl sub_08046EF4
	movs r4, #1
	add sl, r4
	add sb, r4
_0804A624:
	adds r5, r7, #0
	mov r0, sb
	cmp r0, #7
	bgt _0804A67C
	ldr r1, [sp, #0xc]
	cmp r5, r1
	blt _0804A53A
_0804A632:
	mov r2, sb
	cmp r2, #7
	bgt _0804A67C
_0804A638:
	movs r1, #1
	mov r0, sb
	ands r0, r1
	lsls r0, r0, #4
	mov r3, sb
	asrs r4, r3, #1
	adds r1, r4, #0
	adds r1, #0xa
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0x14
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	movs r0, #1
	mov r1, sb
	ands r0, r1
	movs r2, #0xd
	cmp r0, #0
	beq _0804A666
	movs r2, #0x1b
_0804A666:
	adds r1, r4, #0
	adds r1, #0xb
	adds r0, r2, #0
	movs r2, #2
	bl sub_08047098
	movs r2, #1
	add sb, r2
	mov r3, sb
	cmp r3, #7
	ble _0804A638
_0804A67C:
	ldr r4, [sp, #0xc]
	cmp r5, r4
	bge _0804A6D8
_0804A682:
	ldr r1, [sp, #0x14]
	adds r0, r1, r5
	ldrb r0, [r0]
	adds r7, r5, #1
	cmp r0, #0
	beq _0804A6D0
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0804A6A6
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r3, [sp, #8]
	adds r0, r0, r3
	ldrb r0, [r0, #8]
	ldr r4, [sp, #0x10]
	cmp r0, r4
	bne _0804A6D0
_0804A6A6:
	movs r3, #0
	movs r2, #0
	adds r7, r5, #1
	cmp r3, #4
	bge _0804A6C8
_0804A6B0:
	ldr r0, [sp, #0x18]
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0804A6C2
	ldrb r1, [r1]
	cmp r5, r1
	bne _0804A6C2
	movs r3, #1
_0804A6C2:
	adds r2, #1
	cmp r2, #4
	blt _0804A6B0
_0804A6C8:
	cmp r3, #0
	bne _0804A6D0
	movs r1, #1
	add sl, r1
_0804A6D0:
	adds r5, r7, #0
	ldr r2, [sp, #0xc]
	cmp r5, r2
	blt _0804A682
_0804A6D8:
	mov r4, sl
	ldr r3, [sp]
	strb r4, [r3, #0x14]
	mov r0, sl
	cmp r0, #1
	bne _0804A6E8
	movs r0, #0
	strb r0, [r3, #0x15]
_0804A6E8:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A6F8: .4byte 0x08505D3C
_0804A6FC: .4byte 0x08506734

	thumb_func_start sub_0804A700
sub_0804A700: @ 0x0804A700
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r3, r0, #0
	mov sb, r1
	str r2, [sp]
	movs r0, #4
	mov r8, r0
	movs r0, #0xff
	strb r0, [r1, #0x17]
	ldr r1, [sp]
	cmp r1, #1
	beq _0804A750
	cmp r1, #1
	bgt _0804A72A
	cmp r1, #0
	beq _0804A732
	b _0804A788
_0804A72A:
	ldr r2, [sp]
	cmp r2, #2
	beq _0804A770
	b _0804A788
_0804A732:
	ldr r0, _0804A74C @ =0x08505D3C
	str r0, [sp, #4]
	movs r1, #0x3b
	str r1, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	adds r0, r3, #0
	adds r0, #0x58
	str r0, [sp, #0x10]
	movs r1, #0xba
	lsls r1, r1, #1
	adds r7, r3, r1
	b _0804A788
	.align 2, 0
_0804A74C: .4byte 0x08505D3C
_0804A750:
	ldr r2, _0804A76C @ =0x085063B0
	str r2, [sp, #4]
	movs r0, #0x2d
	str r0, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	adds r2, r3, #0
	adds r2, #0x93
	str r2, [sp, #0x10]
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r7, r3, r0
	b _0804A788
	.align 2, 0
_0804A76C: .4byte 0x085063B0
_0804A770:
	ldr r1, _0804A7D8 @ =0x085063B0
	str r1, [sp, #4]
	movs r2, #0x2d
	str r2, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	adds r1, r3, #0
	adds r1, #0x93
	str r1, [sp, #0x10]
	movs r2, #0xbe
	lsls r2, r2, #1
	adds r7, r3, r2
_0804A788:
	mov r1, sb
	movs r0, #0x16
	ldrsb r0, [r1, r0]
	movs r2, #0
	mov ip, r2
	cmp r0, #0
	bne _0804A79A
	movs r0, #1
	mov ip, r0
_0804A79A:
	movs r6, #1
	movs r0, #0xff
	mov r1, sb
	strb r0, [r1, #0x17]
	movs r5, #0
	movs r2, #0x16
	ldrsb r2, [r1, r2]
	mov sl, r2
	cmp r6, sl
	bge _0804A7D2
	cmp r5, r8
	bge _0804A7D2
	mov r1, sl
_0804A7B4:
	adds r3, r7, r5
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _0804A7C8
	ldr r2, [sp, #0x10]
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A7C8
	adds r6, #1
_0804A7C8:
	adds r5, #1
	cmp r6, r1
	bge _0804A7D2
	cmp r5, r8
	blt _0804A7B4
_0804A7D2:
	movs r2, #0
	b _0804A822
	.align 2, 0
_0804A7D8: .4byte 0x085063B0
_0804A7DC:
	ldr r1, [sp, #0x10]
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r4, r2, #1
	cmp r0, #0
	beq _0804A820
	ldr r0, [sp]
	cmp r0, #0
	beq _0804A800
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [sp, #4]
	adds r0, r0, r1
	ldrb r0, [r0, #8]
	ldr r1, [sp, #0xc]
	cmp r0, r1
	bne _0804A820
_0804A800:
	adds r6, #1
	movs r1, #0
	adds r4, r2, #1
	cmp r1, r8
	bge _0804A820
_0804A80A:
	adds r3, r7, r1
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _0804A81A
	ldrb r3, [r3]
	cmp r2, r3
	bne _0804A81A
	subs r6, #1
_0804A81A:
	adds r1, #1
	cmp r1, r8
	blt _0804A80A
_0804A820:
	adds r2, r4, #0
_0804A822:
	cmp r6, sl
	bge _0804A86E
	ldr r0, [sp, #8]
	cmp r2, r0
	blt _0804A7DC
	b _0804A86E
_0804A82E:
	adds r3, r7, r5
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _0804A86C
	adds r3, r0, #0
	ldr r1, [sp, #0x10]
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A86C
	ldr r0, [sp]
	cmp r0, #0
	beq _0804A85A
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r1, [sp, #4]
	adds r0, r0, r1
	ldrb r0, [r0, #8]
	ldr r1, [sp, #0xc]
	cmp r0, r1
	bne _0804A86C
_0804A85A:
	mov r1, sb
	movs r0, #0x15
	ldrsb r0, [r1, r0]
	cmp r6, r0
	bne _0804A866
	strb r3, [r1, #0x17]
_0804A866:
	adds r6, #1
	movs r0, #1
	add ip, r0
_0804A86C:
	adds r5, #1
_0804A86E:
	mov r1, ip
	cmp r1, #7
	bgt _0804A93A
	cmp r5, r8
	blt _0804A82E
	mov r0, ip
	cmp r0, #7
	bgt _0804A93A
	ldr r1, [sp, #8]
	cmp r2, r1
	bge _0804A940
_0804A884:
	ldr r1, [sp, #0x10]
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r4, r2, #1
	cmp r0, #0
	beq _0804A8DE
	ldr r0, [sp]
	cmp r0, #0
	beq _0804A8A8
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [sp, #4]
	adds r0, r0, r1
	ldrb r0, [r0, #8]
	ldr r1, [sp, #0xc]
	cmp r0, r1
	bne _0804A8DE
_0804A8A8:
	movs r5, #0
	movs r1, #0
	adds r4, r2, #1
	cmp r1, r8
	bge _0804A8C8
_0804A8B2:
	adds r3, r7, r1
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _0804A8C2
	ldrb r3, [r3]
	cmp r2, r3
	bne _0804A8C2
	movs r5, #1
_0804A8C2:
	adds r1, #1
	cmp r1, r8
	blt _0804A8B2
_0804A8C8:
	cmp r5, #0
	bne _0804A8DE
	mov r1, sb
	movs r0, #0x15
	ldrsb r0, [r1, r0]
	cmp r6, r0
	bne _0804A8D8
	strb r2, [r1, #0x17]
_0804A8D8:
	adds r6, #1
	movs r2, #1
	add ip, r2
_0804A8DE:
	adds r2, r4, #0
	mov r0, ip
	cmp r0, #7
	bgt _0804A93A
	ldr r1, [sp, #8]
	cmp r2, r1
	blt _0804A884
	b _0804A93A
_0804A8EE:
	ldr r1, [sp, #0x10]
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r4, r2, #1
	cmp r0, #0
	beq _0804A938
	ldr r0, [sp]
	cmp r0, #0
	beq _0804A912
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [sp, #4]
	adds r0, r0, r1
	ldrb r0, [r0, #8]
	ldr r1, [sp, #0xc]
	cmp r0, r1
	bne _0804A938
_0804A912:
	movs r5, #0
	movs r1, #0
	adds r4, r2, #1
	cmp r5, r8
	bge _0804A932
_0804A91C:
	adds r3, r7, r1
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _0804A92C
	ldrb r3, [r3]
	cmp r2, r3
	bne _0804A92C
	movs r5, #1
_0804A92C:
	adds r1, #1
	cmp r1, r8
	blt _0804A91C
_0804A932:
	cmp r5, #0
	bne _0804A938
	adds r6, #1
_0804A938:
	adds r2, r4, #0
_0804A93A:
	ldr r0, [sp, #8]
	cmp r2, r0
	blt _0804A8EE
_0804A940:
	mov r1, sb
	strb r6, [r1, #0x14]
	cmp r6, #1
	bne _0804A94C
	movs r0, #0
	strb r0, [r1, #0x15]
_0804A94C:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0804A95C
sub_0804A95C: @ 0x0804A95C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r0, _0804A9B0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804A9B4 @ =0x0001325C
	adds r1, r1, r0
	mov r8, r1
	adds r0, r6, #0
	bl sub_080472A0
	movs r4, #0
_0804A976:
	adds r1, r4, #0
	adds r1, #0x10
	lsls r2, r4, #0x15
	movs r0, #0xc8
	lsls r0, r0, #0x16
	adds r2, r2, r0
	lsrs r2, r2, #0x10
	movs r0, #5
	movs r3, #0x18
	bl sub_08046DD4
	adds r4, #1
	cmp r4, #2
	ble _0804A976
	movs r0, #0
	movs r1, #0
	movs r2, #0x20
	movs r3, #2
	bl sub_08040748
	ldrb r0, [r6, #0xb]
	cmp r0, #1
	beq _0804A9C8
	cmp r0, #1
	bgt _0804A9B8
	cmp r0, #0
	beq _0804A9BE
	b _0804A9E8
	.align 2, 0
_0804A9B0: .4byte gEwramData
_0804A9B4: .4byte 0x0001325C
_0804A9B8:
	cmp r0, #2
	beq _0804A9DC
	b _0804A9E8
_0804A9BE:
	ldr r2, _0804A9C4 @ =0x000033D0
	b _0804A9CA
	.align 2, 0
_0804A9C4: .4byte 0x000033D0
_0804A9C8:
	ldr r2, _0804A9D8 @ =0x000033E0
_0804A9CA:
	movs r0, #2
	movs r1, #3
	movs r3, #0xb
	bl sub_08046DD4
	b _0804A9E8
	.align 2, 0
_0804A9D8: .4byte 0x000033E0
_0804A9DC:
	ldr r2, _0804AAD0 @ =0x000033F0
	movs r0, #2
	movs r1, #3
	movs r3, #0xb
	bl sub_08046DD4
_0804A9E8:
	ldr r2, _0804AAD4 @ =0x00003310
	movs r0, #3
	movs r1, #5
	movs r3, #9
	bl sub_08046DD4
	ldr r2, _0804AAD8 @ =0x00003320
	movs r0, #3
	movs r1, #7
	movs r3, #9
	bl sub_08046DD4
	ldr r2, _0804AADC @ =0x00003330
	movs r0, #3
	movs r1, #9
	movs r3, #9
	bl sub_08046DD4
	movs r4, #0
	movs r5, #0x40
_0804AA10:
	movs r0, #1
	ands r0, r4
	movs r3, #3
	cmp r0, #0
	beq _0804AA1C
	movs r3, #0x11
_0804AA1C:
	asrs r1, r4, #1
	adds r1, #0xb
	movs r0, #0xcc
	lsls r0, r0, #6
	adds r2, r5, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r3, #0
	movs r3, #9
	bl sub_08046DD4
	adds r5, #0x10
	adds r4, #1
	cmp r4, #7
	ble _0804AA10
	ldrb r2, [r6, #0xb]
	mov r0, r8
	adds r1, r6, #0
	bl sub_0804A2A4
	adds r0, r6, #0
	movs r1, #0
	bl sub_080462F0
	movs r0, #2
	strb r0, [r6, #0xa]
	bl sub_0804AD9C
	ldr r4, _0804AAE0 @ =gEwramData
	ldr r0, [r4]
	ldr r1, _0804AAE4 @ =0x0001326B
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	bl sub_08031FC4
	movs r0, #0x16
	movs r1, #2
	bl sub_0804679C
	movs r0, #0x16
	movs r1, #5
	bl sub_080466C8
	ldr r0, [r4]
	ldr r1, _0804AAE8 @ =0x00000F34
	adds r0, r0, r1
	movs r1, #0x20
	bl sub_08048B0C
	movs r0, #2
	movs r1, #5
	bl sub_08048AD8
	bl sub_08048018
	adds r7, r4, #0
	ldr r5, _0804AAEC @ =0x00007024
	movs r4, #2
_0804AA92:
	ldr r0, [r7]
	adds r0, r0, r5
	bl EntityDelete
	adds r5, #0x84
	subs r4, #1
	cmp r4, #0
	bge _0804AA92
	ldr r0, _0804AAE0 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0xeb
	lsls r1, r1, #4
	adds r0, r0, r1
	bl EntityDelete
	mov r0, r8
	adds r1, r6, #0
	bl sub_0804A0B4
	bl sub_08049F34
	mov r0, r8
	adds r1, r6, #0
	bl sub_0804A00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804AAD0: .4byte 0x000033F0
_0804AAD4: .4byte 0x00003310
_0804AAD8: .4byte 0x00003320
_0804AADC: .4byte 0x00003330
_0804AAE0: .4byte gEwramData
_0804AAE4: .4byte 0x0001326B
_0804AAE8: .4byte 0x00000F34
_0804AAEC: .4byte 0x00007024

	thumb_func_start sub_0804AAF0
sub_0804AAF0: @ 0x0804AAF0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r6, _0804AB4C @ =gEwramData
	ldr r0, [r6]
	ldr r1, _0804AB50 @ =0x0001325C
	adds r1, r1, r0
	mov r8, r1
	ldrh r5, [r0, #0x18]
	ldrh r1, [r0, #0x16]
	movs r7, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0xa
	bne _0804AB60
	adds r0, r4, #0
	bl sub_0804AFD4
	ldr r0, [r6]
	ldr r1, _0804AB54 @ =0x00000F34
	adds r0, r0, r1
	bl sub_0804875C
	ldr r3, [r6]
	ldr r0, [r3]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0804AB46
	ldr r1, _0804AB58 @ =0x00000E2C
	adds r0, r3, r1
	adds r1, #0x42
	adds r2, r3, r1
	movs r1, #0x16
	strh r1, [r2]
	ldrb r1, [r4, #0xb]
	lsls r1, r1, #4
	adds r1, #0x2b
	ldr r4, _0804AB5C @ =0x00000E72
	adds r2, r3, r4
	strh r1, [r2]
	bl sub_0803AC40
_0804AB46:
	movs r0, #0
	b _0804ACBC
	.align 2, 0
_0804AB4C: .4byte gEwramData
_0804AB50: .4byte 0x0001325C
_0804AB54: .4byte 0x00000F34
_0804AB58: .4byte 0x00000E2C
_0804AB5C: .4byte 0x00000E72
_0804AB60:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804AB8C
	movs r0, #0xf0
	bl sub_080D7910
	ldr r0, [r6]
	ldr r1, _0804AB88 @ =0x00000F34
	adds r0, r0, r1
	bl sub_08048B64
	bl sub_08048BA0
	bl sub_08048C14
	movs r7, #1
	rsbs r7, r7, #0
	b _0804AC9E
	.align 2, 0
_0804AB88: .4byte 0x00000F34
_0804AB8C:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0804AC14
	movs r0, #0xf3
	bl sub_080D7910
	movs r0, #0xa
	strb r0, [r4, #0xa]
	bl sub_08040FE0
	ldrb r0, [r4, #0x17]
	cmp r0, #0xff
	beq _0804ABF8
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0804ABC4
	ldrb r0, [r4, #0x17]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r2, _0804ABC0 @ =0x08505D3C
	adds r2, r1, r2
	movs r6, #3
	b _0804ABD2
	.align 2, 0
_0804ABC0: .4byte 0x08505D3C
_0804ABC4:
	ldrb r0, [r4, #0x17]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r2, _0804ABF0 @ =0x085063B0
	adds r2, r1, r2
	movs r6, #4
_0804ABD2:
	adds r3, r0, #0
	ldr r1, _0804ABF4 @ =0x08506936
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	movs r0, #0x1c
	movs r1, #0x94
	adds r2, r6, #0
	bl sub_08048804
	movs r0, #0
	bl sub_08048BC4
	b _0804AC02
	.align 2, 0
_0804ABF0: .4byte 0x085063B0
_0804ABF4: .4byte 0x08506936
_0804ABF8:
	movs r5, #0xd4
	lsls r5, r5, #2
	movs r0, #1
	bl sub_08048BC4
_0804AC02:
	adds r0, r5, #0
	bl sub_0804728C
	adds r0, r4, #0
	bl sub_0804A120
	movs r0, #0
	strb r0, [r4, #0xc]
	b _0804AC9E
_0804AC14:
	movs r0, #0xc0
	ands r0, r5
	cmp r0, #0
	beq _0804AC9E
	movs r0, #0xf1
	bl sub_080D7910
	strb r7, [r4, #0x16]
	strb r7, [r4, #0x15]
	movs r0, #0xff
	strb r0, [r4, #0x17]
	adds r0, r4, #0
	adds r0, #0x39
	strb r7, [r0]
	ldrb r1, [r4, #0xb]
	movs r0, #0x40
	ands r5, r0
	adds r0, r1, #1
	cmp r5, #0
	beq _0804AC3E
	adds r0, r1, #2
_0804AC3E:
	movs r1, #3
	bl Mod
	strb r0, [r4, #0xb]
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _0804AC64
	cmp r0, #1
	bgt _0804AC56
	cmp r0, #0
	beq _0804AC5C
	b _0804AC84
_0804AC56:
	cmp r0, #2
	beq _0804AC78
	b _0804AC84
_0804AC5C:
	ldr r2, _0804AC60 @ =0x000033D0
	b _0804AC66
	.align 2, 0
_0804AC60: .4byte 0x000033D0
_0804AC64:
	ldr r2, _0804AC74 @ =0x000033E0
_0804AC66:
	movs r0, #2
	movs r1, #3
	movs r3, #0xb
	bl sub_08046DD4
	b _0804AC84
	.align 2, 0
_0804AC74: .4byte 0x000033E0
_0804AC78:
	ldr r2, _0804ACC8 @ =0x000033F0
	movs r0, #2
	movs r1, #3
	movs r3, #0xb
	bl sub_08046DD4
_0804AC84:
	ldrb r2, [r4, #0xb]
	mov r0, r8
	adds r1, r4, #0
	bl sub_0804A2A4
	adds r0, r4, #0
	movs r1, #0
	bl sub_080462F0
	mov r0, r8
	adds r1, r4, #0
	bl sub_0804A00C
_0804AC9E:
	ldr r0, _0804ACCC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804ACD0 @ =0x00000F34
	adds r0, r0, r1
	bl sub_0804875C
	ldrb r1, [r4, #0xb]
	lsls r1, r1, #1
	adds r1, #5
	movs r0, #2
	bl sub_08048AD8
	bl sub_08048018
	adds r0, r7, #0
_0804ACBC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804ACC8: .4byte 0x000033F0
_0804ACCC: .4byte gEwramData
_0804ACD0: .4byte 0x00000F34

	thumb_func_start sub_0804ACD4
sub_0804ACD4: @ 0x0804ACD4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _0804AD28 @ =gEwramData
	ldr r4, [r0]
	ldr r0, _0804AD2C @ =0x000133F4
	adds r5, r4, r0
	ldr r1, _0804AD30 @ =0x0001325C
	adds r4, r4, r1
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x10
	bl memset
	mov r1, sp
	ldrb r0, [r4, #0xc]
	strb r0, [r1]
	ldrb r0, [r4, #0x10]
	strb r0, [r1, #1]
	ldrb r0, [r4, #0x11]
	strb r0, [r1, #2]
	cmp r6, #0
	blt _0804AD08
	adds r0, r1, r6
	strb r7, [r0]
_0804AD08:
	movs r2, #0
_0804AD0A:
	mov r3, sp
	adds r1, r3, r2
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0804AD88
	cmp r2, #0
	bne _0804AD38
	mov r0, sp
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0804AD34 @ =0x08505D3C
	adds r1, r0, r1
	b _0804AD44
	.align 2, 0
_0804AD28: .4byte gEwramData
_0804AD2C: .4byte 0x000133F4
_0804AD30: .4byte 0x0001325C
_0804AD34: .4byte 0x08505D3C
_0804AD38:
	ldrb r0, [r1]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0804AD98 @ =0x085063B0
	adds r1, r1, r0
_0804AD44:
	ldrh r0, [r5]
	ldrb r3, [r1, #0xa]
	adds r0, r0, r3
	strh r0, [r5]
	ldrh r0, [r5, #2]
	ldrb r3, [r1, #0xb]
	adds r0, r0, r3
	strh r0, [r5, #2]
	movs r0, #0xc
	ldrsb r0, [r1, r0]
	ldrh r3, [r5, #4]
	adds r0, r0, r3
	strh r0, [r5, #4]
	movs r0, #0xd
	ldrsb r0, [r1, r0]
	ldrh r3, [r5, #6]
	adds r0, r0, r3
	strh r0, [r5, #6]
	movs r0, #0xe
	ldrsb r0, [r1, r0]
	ldrh r3, [r5, #8]
	adds r0, r0, r3
	strh r0, [r5, #8]
	movs r0, #0xf
	ldrsb r0, [r1, r0]
	ldrh r3, [r5, #0xa]
	adds r0, r0, r3
	strh r0, [r5, #0xa]
	cmp r2, #0
	beq _0804AD88
	ldrh r0, [r5, #0xc]
	ldrh r1, [r1, #0x10]
	orrs r0, r1
	strh r0, [r5, #0xc]
_0804AD88:
	adds r2, #1
	cmp r2, #2
	ble _0804AD0A
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804AD98: .4byte 0x085063B0

	thumb_func_start sub_0804AD9C
sub_0804AD9C: @ 0x0804AD9C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r0, _0804AE2C @ =gEwramData
	mov r8, r0
	ldr r4, [r0]
	ldr r1, _0804AE30 @ =0x000133F4
	adds r6, r4, r1
	adds r5, r6, #0
	ldr r2, _0804AE34 @ =0x0001325C
	adds r4, r4, r2
	movs r0, #1
	rsbs r0, r0, #0
	movs r1, #0
	bl sub_0804ACD4
	ldrh r0, [r4, #0x26]
	ldrh r3, [r5, #4]
	adds r0, r0, r3
	strh r0, [r5, #4]
	ldrh r0, [r4, #0x28]
	ldrh r1, [r5, #6]
	adds r0, r0, r1
	strh r0, [r5, #6]
	ldrh r0, [r4, #0x2a]
	ldrh r2, [r5, #8]
	adds r0, r0, r2
	strh r0, [r5, #8]
	ldrh r0, [r4, #0x2c]
	ldrh r3, [r5, #0xa]
	adds r0, r0, r3
	strh r0, [r5, #0xa]
	mov r0, r8
	ldr r1, [r0]
	ldrh r2, [r6, #4]
	movs r3, #0x99
	lsls r3, r3, #9
	adds r0, r1, r3
	strh r2, [r0]
	ldrh r2, [r6, #6]
	adds r3, #2
	adds r0, r1, r3
	strh r2, [r0]
	ldrh r2, [r6, #8]
	adds r3, #2
	adds r0, r1, r3
	strh r2, [r0]
	ldrh r2, [r6, #0xa]
	adds r3, #2
	adds r0, r1, r3
	strh r2, [r0]
	ldrh r2, [r6, #0xc]
	adds r3, #2
	adds r0, r1, r3
	strh r2, [r0]
	ldrh r2, [r6]
	subs r3, #0xc
	adds r0, r1, r3
	strh r2, [r0]
	ldrh r0, [r6, #2]
	ldr r2, _0804AE38 @ =0x000131FE
	adds r1, r1, r2
	strh r0, [r1]
	bl sub_08021FA4
	bl sub_08021C44
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804AE2C: .4byte gEwramData
_0804AE30: .4byte 0x000133F4
_0804AE34: .4byte 0x0001325C
_0804AE38: .4byte 0x000131FE

	thumb_func_start sub_0804AE3C
sub_0804AE3C: @ 0x0804AE3C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0804AE60 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804AE64 @ =0x0001325C
	adds r7, r0, r1
	movs r6, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08044E94
	ldrb r0, [r0, #8]
	cmp r4, #3
	bne _0804AE68
	movs r0, #0
	b _0804AE72
	.align 2, 0
_0804AE60: .4byte gEwramData
_0804AE64: .4byte 0x0001325C
_0804AE68:
	cmp r0, #0
	bne _0804AE70
	movs r0, #1
	b _0804AE72
_0804AE70:
	movs r0, #2
_0804AE72:
	cmp r0, #1
	beq _0804AE8C
	cmp r0, #1
	bgt _0804AE80
	cmp r0, #0
	beq _0804AE86
	b _0804AE9A
_0804AE80:
	cmp r0, #2
	beq _0804AE94
	b _0804AE9A
_0804AE86:
	movs r0, #0xba
	lsls r0, r0, #1
	b _0804AE98
_0804AE8C:
	movs r1, #0xbc
	lsls r1, r1, #1
	adds r6, r7, r1
	b _0804AE9A
_0804AE94:
	movs r0, #0xbe
	lsls r0, r0, #1
_0804AE98:
	adds r6, r7, r0
_0804AE9A:
	movs r2, #0
_0804AE9C:
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, r5
	beq _0804AECC
	adds r2, #1
	cmp r2, #3
	ble _0804AE9C
	movs r2, #0
	ldrb r0, [r6]
	cmp r0, #0xff
	bne _0804AEB6
	strb r5, [r6]
	b _0804AEC6
_0804AEB6:
	adds r2, #1
	cmp r2, #3
	bgt _0804AEC6
	adds r1, r6, r2
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _0804AEB6
	strb r5, [r1]
_0804AEC6:
	cmp r2, #4
	bne _0804AECC
	strb r5, [r6, #3]
_0804AECC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804AED4
sub_0804AED4: @ 0x0804AED4
	push {r4, r5, r6, r7, lr}
	ldr r1, _0804AEF8 @ =gEwramData
	ldr r1, [r1]
	ldr r3, _0804AEFC @ =0x0001325C
	adds r2, r1, r3
	movs r7, #0
	movs r4, #0
	movs r6, #0
	movs r5, #0xff
	ldrb r3, [r0, #0x17]
	ldrb r0, [r0, #0xb]
	cmp r0, #1
	beq _0804AF1C
	cmp r0, #1
	bgt _0804AF00
	cmp r0, #0
	beq _0804AF06
	b _0804AF42
	.align 2, 0
_0804AEF8: .4byte gEwramData
_0804AEFC: .4byte 0x0001325C
_0804AF00:
	cmp r0, #2
	beq _0804AF34
	b _0804AF42
_0804AF06:
	ldr r0, _0804AF14 @ =0x000133D0
	adds r4, r1, r0
	ldr r0, _0804AF18 @ =0x000132B4
	adds r6, r1, r0
	ldrb r5, [r2, #0xc]
	b _0804AF42
	.align 2, 0
_0804AF14: .4byte 0x000133D0
_0804AF18: .4byte 0x000132B4
_0804AF1C:
	ldr r2, _0804AF28 @ =0x000133D4
	adds r4, r1, r2
	ldr r0, _0804AF2C @ =0x000132EF
	adds r6, r1, r0
	ldr r2, _0804AF30 @ =0x0001326C
	b _0804AF3E
	.align 2, 0
_0804AF28: .4byte 0x000133D4
_0804AF2C: .4byte 0x000132EF
_0804AF30: .4byte 0x0001326C
_0804AF34:
	ldr r0, _0804AFC0 @ =0x000133D8
	adds r4, r1, r0
	ldr r2, _0804AFC4 @ =0x000132EF
	adds r6, r1, r2
	subs r2, #0x82
_0804AF3E:
	adds r0, r1, r2
	ldrb r5, [r0]
_0804AF42:
	movs r1, #0xff
	adds r2, r4, #0
_0804AF46:
	ldrb r0, [r2]
	cmp r0, r3
	bne _0804AF56
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r0, #1
	bne _0804AF56
	strb r1, [r2]
_0804AF56:
	ldrb r0, [r2]
	cmp r0, r5
	bne _0804AF5E
	strb r1, [r2]
_0804AF5E:
	ldrb r0, [r2]
	cmp r0, #0xff
	bne _0804AF6A
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_0804AF6A:
	adds r2, #1
	adds r0, r4, #3
	cmp r2, r0
	ble _0804AF46
	movs r1, #2
_0804AF74:
	adds r2, r1, r4
	ldrb r0, [r2, #1]
	cmp r0, #0xff
	bne _0804AF9E
	ldrb r0, [r2]
	cmp r0, #0xff
	beq _0804AF9E
	movs r3, #0xff
_0804AF84:
	ldrb r0, [r2]
	strb r0, [r2, #1]
	strb r3, [r2]
	cmp r1, #1
	bgt _0804AF90
	adds r1, #1
_0804AF90:
	adds r2, r1, r4
	ldrb r0, [r2, #1]
	cmp r0, #0xff
	bne _0804AF9E
	ldrb r0, [r2]
	cmp r0, #0xff
	bne _0804AF84
_0804AF9E:
	subs r1, #1
	cmp r1, #0
	bge _0804AF74
	cmp r7, #0
	bne _0804AFC8
	movs r1, #2
_0804AFAA:
	adds r3, r4, r1
	ldrb r2, [r3]
	adds r0, r2, #0
	cmp r0, #0xff
	beq _0804AFB6
	strb r2, [r3, #1]
_0804AFB6:
	subs r1, #1
	cmp r1, #0
	bge _0804AFAA
	strb r5, [r4]
	b _0804AFCE
	.align 2, 0
_0804AFC0: .4byte 0x000133D8
_0804AFC4: .4byte 0x000132EF
_0804AFC8:
	adds r0, r7, r4
	subs r0, #1
	strb r5, [r0]
_0804AFCE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0804AFD4
sub_0804AFD4: @ 0x0804AFD4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r0, _0804B040 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804B044 @ =0x0001325C
	adds r6, r0, r1
	ldrh r1, [r0, #0x18]
	mov r8, r1
	ldrh r7, [r0, #0x16]
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _0804B018
	ldrb r1, [r5, #0x15]
	movs r0, #1
	ands r0, r1
	movs r2, #2
	cmp r0, #0
	beq _0804AFFE
	movs r2, #0x10
_0804AFFE:
	movs r1, #0x15
	ldrsb r1, [r5, r1]
	movs r0, #0x16
	ldrsb r0, [r5, r0]
	subs r1, r1, r0
	asrs r1, r1, #1
	adds r1, #0xb
	adds r0, r2, #0
	bl sub_08048AD8
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
_0804B018:
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _0804B07C
	movs r0, #0xf4
	bl sub_080D7910
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _0804B048
	ldrb r0, [r6, #0xc]
	cmp r0, #0xff
	beq _0804B038
	adds r0, r5, #0
	bl sub_0804AED4
_0804B038:
	ldrb r0, [r5, #0x17]
	strb r0, [r6, #0xc]
	b _0804B068
	.align 2, 0
_0804B040: .4byte gEwramData
_0804B044: .4byte 0x0001325C
_0804B048:
	ldrb r0, [r5, #0xb]
	subs r0, #1
	adds r4, r6, #0
	adds r4, #0x10
	adds r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _0804B05E
	adds r0, r5, #0
	bl sub_0804AED4
_0804B05E:
	ldrb r0, [r5, #0xb]
	subs r0, #1
	adds r0, r4, r0
	ldrb r1, [r5, #0x17]
	strb r1, [r0]
_0804B068:
	bl sub_0804AD9C
	ldr r0, _0804B0DC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804B0E0 @ =0x0001326B
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	bl sub_08031FC4
_0804B07C:
	adds r0, r5, #0
	mov r1, r8
	bl sub_080461BC
	adds r1, r0, #0
	movs r0, #3
	ands r0, r7
	cmp r0, #0
	beq _0804B132
	movs r4, #0
_0804B090:
	adds r1, r4, #2
	movs r0, #0x18
	movs r2, #4
	bl sub_08047128
	adds r4, #1
	cmp r4, #6
	ble _0804B090
	movs r0, #2
	strb r0, [r5, #0xa]
	movs r4, #3
_0804B0A6:
	adds r1, r4, #5
	movs r0, #0x19
	movs r2, #3
	bl sub_08047128
	subs r4, #1
	cmp r4, #0
	bge _0804B0A6
	bl sub_08049F34
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0804A00C
	movs r0, #1
	ands r7, r0
	cmp r7, #0
	beq _0804B0E4
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0804A0B4
	movs r0, #0xf3
	bl sub_080D7910
	b _0804B0EA
	.align 2, 0
_0804B0DC: .4byte gEwramData
_0804B0E0: .4byte 0x0001326B
_0804B0E4:
	movs r0, #0xf0
	bl sub_080D7910
_0804B0EA:
	movs r0, #0x16
	movs r1, #2
	bl sub_0804679C
	movs r0, #0x16
	movs r1, #5
	bl sub_080466C8
	movs r1, #0x15
	ldrsb r1, [r5, r1]
	ldrb r2, [r5, #0x14]
	movs r0, #0x14
	ldrsb r0, [r5, r0]
	cmp r1, r0
	blt _0804B11E
	subs r0, r2, #1
	strb r0, [r5, #0x15]
	ldrb r2, [r5, #0x16]
	movs r1, #0x16
	ldrsb r1, [r5, r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	ble _0804B11E
	subs r0, r2, #2
	strb r0, [r5, #0x16]
_0804B11E:
	ldrb r2, [r5, #0xb]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0804A2A4
	adds r0, r5, #0
	movs r1, #0
	bl sub_080462F0
	b _0804B216
_0804B132:
	cmp r1, #0
	beq _0804B216
	ldrb r4, [r5, #0x17]
	adds r2, r5, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	ldrb r3, [r5, #0x16]
	movs r0, #0x16
	ldrsb r0, [r5, r0]
	cmp r1, r0
	beq _0804B160
	strb r3, [r2]
	ldrb r2, [r5, #0xb]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0804A2A4
	adds r0, r5, #0
	movs r1, #0
	bl sub_080462F0
	b _0804B170
_0804B160:
	ldr r0, _0804B198 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804B19C @ =0x0001325C
	adds r0, r0, r1
	ldrb r2, [r5, #0xb]
	adds r1, r5, #0
	bl sub_0804A700
_0804B170:
	ldrb r0, [r5, #0x17]
	cmp r4, r0
	beq _0804B1EE
	bl sub_08040FE0
	ldrb r0, [r5, #0x17]
	cmp r0, #0xff
	beq _0804B1D8
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _0804B1A4
	ldrb r0, [r5, #0x17]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r2, _0804B1A0 @ =0x08505D3C
	adds r4, r1, r2
	movs r2, #3
	b _0804B1B2
	.align 2, 0
_0804B198: .4byte gEwramData
_0804B19C: .4byte 0x0001325C
_0804B1A0: .4byte 0x08505D3C
_0804B1A4:
	ldrb r0, [r5, #0x17]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r2, _0804B1D0 @ =0x085063B0
	adds r4, r1, r2
	movs r2, #4
_0804B1B2:
	adds r3, r0, #0
	ldr r1, _0804B1D4 @ =0x08506936
	ldrh r0, [r4]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r4, [r0]
	movs r0, #0x1c
	movs r1, #0x94
	bl sub_08048804
	movs r0, #0
	bl sub_08048BC4
	b _0804B1E2
	.align 2, 0
_0804B1D0: .4byte 0x085063B0
_0804B1D4: .4byte 0x08506936
_0804B1D8:
	movs r4, #0xd4
	lsls r4, r4, #2
	movs r0, #1
	bl sub_08048BC4
_0804B1E2:
	adds r0, r4, #0
	bl sub_0804728C
	adds r0, r5, #0
	bl sub_0804A120
_0804B1EE:
	ldrb r1, [r5, #0x15]
	movs r0, #1
	ands r0, r1
	movs r2, #2
	cmp r0, #0
	beq _0804B1FC
	movs r2, #0x10
_0804B1FC:
	movs r1, #0x15
	ldrsb r1, [r5, r1]
	movs r0, #0x16
	ldrsb r0, [r5, r0]
	subs r1, r1, r0
	asrs r1, r1, #1
	adds r1, #0xb
	adds r0, r2, #0
	bl sub_08048AD8
	movs r0, #0xf1
	bl sub_080D7910
_0804B216:
	bl sub_08048018
	movs r0, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0804B228
sub_0804B228: @ 0x0804B228
	push {r4, r5, lr}
	ldr r2, _0804B260 @ =gEwramData
	ldr r5, [r2]
	ldr r2, _0804B264 @ =0x000133F4
	adds r4, r5, r2
	ldr r2, _0804B268 @ =0x0001325C
	adds r5, r5, r2
	bl sub_0804ACD4
	ldrh r0, [r5, #0x26]
	ldrh r1, [r4, #4]
	adds r0, r0, r1
	strh r0, [r4, #4]
	ldrh r0, [r5, #0x28]
	ldrh r2, [r4, #6]
	adds r0, r0, r2
	strh r0, [r4, #6]
	ldrh r0, [r5, #0x2a]
	ldrh r1, [r4, #8]
	adds r0, r0, r1
	strh r0, [r4, #8]
	ldrh r0, [r5, #0x2c]
	ldrh r2, [r4, #0xa]
	adds r0, r0, r2
	strh r0, [r4, #0xa]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804B260: .4byte gEwramData
_0804B264: .4byte 0x000133F4
_0804B268: .4byte 0x0001325C

	thumb_func_start sub_0804B26C
sub_0804B26C: @ 0x0804B26C
	push {lr}
	adds r2, r0, #0
	ldr r0, _0804B288 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _0804B28C @ =0x0001325C
	adds r0, r0, r3
	cmp r2, #1
	beq _0804B29C
	cmp r2, #1
	bgt _0804B290
	cmp r2, #0
	beq _0804B298
	b _0804B29E
	.align 2, 0
_0804B288: .4byte gEwramData
_0804B28C: .4byte 0x0001325C
_0804B290:
	cmp r2, #2
	bne _0804B29E
	strb r1, [r0, #0xc]
	b _0804B29E
_0804B298:
	strb r1, [r0, #0x10]
	b _0804B29E
_0804B29C:
	strb r1, [r0, #0x11]
_0804B29E:
	bl sub_0804AD9C
	ldr r0, _0804B2B8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804B2BC @ =0x0001326B
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	bl sub_08031FC4
	pop {r0}
	bx r0
	.align 2, 0
_0804B2B8: .4byte gEwramData
_0804B2BC: .4byte 0x0001326B

	thumb_func_start sub_0804B2C0
sub_0804B2C0: @ 0x0804B2C0
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r0, _0804B2D8 @ =gEwramData
	ldr r0, [r0]
	cmp r2, #1
	beq _0804B2F0
	cmp r2, #1
	bgt _0804B2DC
	cmp r2, #0
	beq _0804B2E8
	b _0804B2F4
	.align 2, 0
_0804B2D8: .4byte gEwramData
_0804B2DC:
	cmp r2, #2
	bne _0804B2F4
	ldr r1, _0804B2E4 @ =0x000133D0
	b _0804B2F2
	.align 2, 0
_0804B2E4: .4byte 0x000133D0
_0804B2E8:
	ldr r1, _0804B2EC @ =0x000133D4
	b _0804B2F2
	.align 2, 0
_0804B2EC: .4byte 0x000133D4
_0804B2F0:
	ldr r1, _0804B310 @ =0x000133D8
_0804B2F2:
	adds r3, r0, r1
_0804B2F4:
	movs r2, #0
	lsls r0, r4, #0x18
	lsrs r1, r0, #0x18
_0804B2FA:
	adds r0, r3, r2
	strb r4, [r0]
	cmp r1, #0
	bne _0804B30A
	adds r2, #1
	cmp r2, #3
	ble _0804B2FA
	strb r4, [r3, #3]
_0804B30A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804B310: .4byte 0x000133D8

	thumb_func_start sub_0804B314
sub_0804B314: @ 0x0804B314
	push {lr}
	adds r1, r0, #0
	ldr r0, _0804B330 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _0804B334 @ =0x0001325C
	adds r0, r0, r3
	cmp r1, #1
	beq _0804B344
	cmp r1, #1
	bgt _0804B338
	cmp r1, #0
	beq _0804B340
	b _0804B346
	.align 2, 0
_0804B330: .4byte gEwramData
_0804B334: .4byte 0x0001325C
_0804B338:
	cmp r1, #2
	bne _0804B346
	ldrb r2, [r0, #0xc]
	b _0804B346
_0804B340:
	ldrb r2, [r0, #0x10]
	b _0804B346
_0804B344:
	ldrb r2, [r0, #0x11]
_0804B346:
	adds r0, r2, #0
	pop {r1}
	bx r1

	thumb_func_start sub_0804B34C
sub_0804B34C: @ 0x0804B34C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08044F24
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_08044F50
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_0804AE3C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804B36C
sub_0804B36C: @ 0x0804B36C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r0, #0
	mov r8, r0
	ldr r0, _0804B398 @ =gEwramData
	ldr r0, [r0]
	movs r2, #0xd1
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #0xd
	ands r0, r2
	cmp r0, #0
	bne _0804B394
	ldrb r0, [r1, #0x17]
	cmp r0, #0xff
	bne _0804B39C
_0804B394:
	movs r0, #0
	b _0804B48A
	.align 2, 0
_0804B398: .4byte gEwramData
_0804B39C:
	ldrb r0, [r1, #0x17]
	lsls r0, r0, #4
	ldr r1, _0804B3C4 @ =0x08505B3C
	adds r7, r0, r1
	ldrb r6, [r7, #8]
	cmp r6, #3
	bne _0804B3B6
	adds r0, r2, #0
	bl sub_08021E38
	cmp r0, #0
	beq _0804B3B6
	movs r6, #0
_0804B3B6:
	cmp r6, #1
	beq _0804B3F2
	cmp r6, #1
	bgt _0804B3C8
	cmp r6, #0
	beq _0804B3D2
	b _0804B46E
	.align 2, 0
_0804B3C4: .4byte 0x08505B3C
_0804B3C8:
	cmp r6, #2
	beq _0804B42A
	cmp r6, #3
	beq _0804B450
	b _0804B46E
_0804B3D2:
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	ldrh r1, [r4, #0x22]
	cmp r0, r1
	bge _0804B46E
	movs r2, #1
	mov r8, r2
	ldrh r0, [r7, #0xa]
	ldrh r2, [r4, #0x1e]
	adds r0, r0, r2
	strh r0, [r4, #0x1e]
	movs r2, #0x1e
	ldrsh r0, [r4, r2]
	cmp r0, r1
	ble _0804B46E
	b _0804B46C
_0804B3F2:
	ldrh r5, [r4, #0x24]
	ldrh r1, [r7, #0xa]
	movs r0, #0x64
	bl __divsi3
	adds r1, r0, #0
	adds r0, r5, #0
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r2, #0x20
	ldrsh r0, [r4, r2]
	cmp r0, r5
	bge _0804B46E
	movs r0, #1
	mov r8, r0
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r4, #0x20]
	adds r0, r0, r1
	strh r0, [r4, #0x20]
	movs r2, #0x20
	ldrsh r0, [r4, r2]
	cmp r0, r5
	ble _0804B46E
	strh r5, [r4, #0x20]
	b _0804B46E
_0804B42A:
	ldr r0, _0804B448 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804B44C @ =0x00013270
	adds r0, r0, r1
	ldrh r1, [r7, #0xa]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0804B46E
	movs r2, #1
	mov r8, r2
	ldrh r0, [r7, #0xa]
	bl sub_08021E50
	b _0804B46E
	.align 2, 0
_0804B448: .4byte gEwramData
_0804B44C: .4byte 0x00013270
_0804B450:
	ldrh r1, [r4, #0x1e]
	movs r2, #0x1e
	ldrsh r0, [r4, r2]
	cmp r0, #1
	ble _0804B46E
	movs r0, #1
	mov r8, r0
	ldrh r0, [r7, #0xa]
	subs r0, r1, r0
	strh r0, [r4, #0x1e]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0804B46E
	mov r1, r8
_0804B46C:
	strh r1, [r4, #0x1e]
_0804B46E:
	cmp r6, #3
	bne _0804B482
	movs r0, #0xcc
	lsls r0, r0, #1
	bl sub_080D7910
	movs r0, #0xef
	bl sub_080D7910
	b _0804B488
_0804B482:
	movs r0, #0xf8
	bl sub_080D7910
_0804B488:
	mov r0, r8
_0804B48A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0804B494
sub_0804B494: @ 0x0804B494
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp]
	mov sl, r1
	movs r7, #0
	movs r0, #0
	mov r8, r0
	movs r0, #0xff
	strb r0, [r1, #0x17]
	movs r6, #0
	movs r0, #0x16
	ldrsb r0, [r1, r0]
	cmp r8, r0
	bge _0804B4D4
	ldr r2, [sp]
	adds r2, #0x38
	adds r1, r0, #0
_0804B4BE:
	adds r0, r2, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804B4CA
	movs r0, #1
	add r8, r0
_0804B4CA:
	adds r6, #1
	cmp r8, r1
	bge _0804B4D4
	cmp r6, #0x1f
	ble _0804B4BE
_0804B4D4:
	cmp r7, #7
	ble _0804B4DA
	b _0804B5DA
_0804B4DA:
	cmp r6, #0x1f
	bgt _0804B5D6
	ldr r1, [sp]
	adds r1, #0x38
	str r1, [sp, #4]
_0804B4E4:
	ldr r2, [sp, #4]
	adds r0, r2, r6
	ldrb r0, [r0]
	adds r1, r6, #1
	str r1, [sp, #0xc]
	cmp r0, #0
	beq _0804B586
	mov r2, sl
	movs r0, #0x15
	ldrsb r0, [r2, r0]
	cmp r8, r0
	bne _0804B4FE
	strb r6, [r2, #0x17]
_0804B4FE:
	lsls r1, r6, #4
	ldr r0, _0804B594 @ =0x08505B3C
	adds r1, r1, r0
	mov sb, r1
	mov r0, r8
	adds r0, #1
	str r0, [sp, #0x10]
	asrs r1, r7, #1
	mov r8, r1
	adds r2, r7, #1
	str r2, [sp, #0x14]
	ldr r1, _0804B598 @ =0x04000006
_0804B516:
	ldrh r0, [r1]
	cmp r0, #0x40
	ble _0804B522
	ldr r2, [sp, #8]
	cmp r0, r2
	blt _0804B516
_0804B522:
	movs r5, #1
	ands r5, r7
	movs r0, #0
	cmp r5, #0
	beq _0804B52E
	movs r0, #0x15
_0804B52E:
	mov r4, r8
	adds r4, #0xc
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r1, r4, #0
	movs r2, #0xe
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	movs r0, #1
	ands r7, r0
	lsls r0, r7, #7
	adds r1, r4, #0
	bl sub_0804090C
	ldr r1, _0804B59C @ =0x08506734
	mov r2, sb
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_08041434
	movs r1, #0
	bl sub_08041338
	movs r3, #0xd
	cmp r5, #0
	beq _0804B56E
	movs r3, #0x1c
_0804B56E:
	mov r1, r8
	adds r1, #0xb
	ldr r2, [sp, #4]
	adds r0, r2, r6
	ldrb r2, [r0]
	adds r0, r3, #0
	movs r3, #1
	bl sub_08046EF4
	ldr r0, [sp, #0x10]
	mov r8, r0
	ldr r7, [sp, #0x14]
_0804B586:
	ldr r6, [sp, #0xc]
	cmp r7, #7
	bgt _0804B5DA
	cmp r6, #0x1f
	ble _0804B4E4
	b _0804B5D6
	.align 2, 0
_0804B594: .4byte 0x08505B3C
_0804B598: .4byte 0x04000006
_0804B59C: .4byte 0x08506734
_0804B5A0:
	movs r4, #1
	ands r4, r7
	movs r0, #0
	cmp r4, #0
	beq _0804B5AC
	movs r0, #0x15
_0804B5AC:
	asrs r5, r7, #1
	adds r1, r5, #0
	adds r1, #0xc
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0xe
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	movs r0, #0xd
	cmp r4, #0
	beq _0804B5CA
	movs r0, #0x1c
_0804B5CA:
	adds r1, r5, #0
	adds r1, #0xb
	movs r2, #2
	bl sub_08047098
	adds r7, #1
_0804B5D6:
	cmp r7, #7
	ble _0804B5A0
_0804B5DA:
	cmp r6, #0x1f
	bgt _0804B5F4
	ldr r1, [sp]
	adds r1, #0x38
_0804B5E2:
	adds r0, r1, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804B5EE
	movs r2, #1
	add r8, r2
_0804B5EE:
	adds r6, #1
	cmp r6, #0x1f
	ble _0804B5E2
_0804B5F4:
	mov r1, r8
	mov r0, sl
	strb r1, [r0, #0x14]
	mov r2, r8
	cmp r2, #0
	bne _0804B62A
	movs r0, #0
	movs r1, #0xc
	movs r2, #0xa
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	ldr r0, _0804B644 @ =0x0000034F
	bl sub_08041434
	movs r1, #0
	bl sub_08041338
	mov r1, r8
	mov r0, sl
	strb r1, [r0, #0x16]
	strb r1, [r0, #0x15]
	movs r0, #0xff
	mov r2, sl
	strb r0, [r2, #0x17]
_0804B62A:
	mov r0, sl
	movs r1, #0
	bl sub_080462F0
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B644: .4byte 0x0000034F

	thumb_func_start sub_0804B648
sub_0804B648: @ 0x0804B648
	push {r4, r5, r6, lr}
	mov ip, r0
	movs r4, #0
	movs r3, #0
	movs r0, #0xff
	strb r0, [r1, #0x17]
	movs r2, #0
	movs r0, #0x16
	ldrsb r0, [r1, r0]
	cmp r3, r0
	bge _0804B678
	mov r6, ip
	adds r6, #0x38
	adds r5, r0, #0
_0804B664:
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804B66E
	adds r3, #1
_0804B66E:
	adds r2, #1
	cmp r3, r5
	bge _0804B678
	cmp r2, #0x1f
	ble _0804B664
_0804B678:
	cmp r4, #7
	bgt _0804B6A4
	cmp r2, #0x1f
	bgt _0804B6BC
	mov r5, ip
	adds r5, #0x38
_0804B684:
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804B69A
	movs r0, #0x15
	ldrsb r0, [r1, r0]
	cmp r3, r0
	bne _0804B696
	strb r2, [r1, #0x17]
_0804B696:
	adds r3, #1
	adds r4, #1
_0804B69A:
	adds r2, #1
	cmp r4, #7
	bgt _0804B6A4
	cmp r2, #0x1f
	ble _0804B684
_0804B6A4:
	cmp r2, #0x1f
	bgt _0804B6BC
	mov r4, ip
	adds r4, #0x38
_0804B6AC:
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804B6B6
	adds r3, #1
_0804B6B6:
	adds r2, #1
	cmp r2, #0x1f
	ble _0804B6AC
_0804B6BC:
	strb r3, [r1, #0x14]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0804B6C4
sub_0804B6C4: @ 0x0804B6C4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	ldr r0, _0804B7A0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804B7A4 @ =0x0001325C
	adds r1, r1, r0
	mov sb, r1
	movs r1, #0
	mov r2, r8
	strb r1, [r2, #0x16]
	strb r1, [r2, #0x15]
	movs r0, #0xff
	strb r0, [r2, #0x17]
	mov r0, r8
	adds r0, #0x39
	strb r1, [r0]
	bl sub_08040FE0
	movs r5, #0
	movs r4, #0xc8
	lsls r4, r4, #6
_0804B6F4:
	adds r1, r5, #0
	adds r1, #0x10
	movs r0, #5
	adds r2, r4, #0
	movs r3, #0x18
	bl sub_08046DD4
	adds r4, #0x20
	adds r5, #1
	cmp r5, #2
	ble _0804B6F4
	movs r0, #0
	movs r1, #0
	movs r2, #0x20
	movs r3, #2
	bl sub_08040748
	movs r5, #0
	ldr r7, _0804B7A8 @ =0x00003390
	movs r6, #0xce
	lsls r6, r6, #6
_0804B71E:
	adds r4, r5, #0
	adds r4, #0xb
	movs r0, #2
	adds r1, r4, #0
	adds r2, r6, #0
	movs r3, #0xa
	bl sub_08046DD4
	movs r0, #0x11
	adds r1, r4, #0
	adds r2, r7, #0
	movs r3, #0xa
	bl sub_08046DD4
	adds r7, #0x20
	adds r6, #0x20
	adds r5, #1
	cmp r5, #3
	ble _0804B71E
	movs r0, #0xa
	movs r1, #4
	bl sub_080463A8
	movs r0, #0x14
	movs r1, #7
	bl sub_080471E4
	mov r0, r8
	movs r1, #0
	bl sub_08046E28
	mov r0, sb
	mov r1, r8
	bl sub_0804B494
	bl sub_08040FE0
	mov r3, r8
	movs r0, #0x14
	ldrsb r0, [r3, r0]
	cmp r0, #0
	beq _0804B7B4
	ldrb r1, [r3, #0x17]
	lsls r1, r1, #4
	ldr r0, _0804B7AC @ =0x08505B3C
	adds r1, r1, r0
	ldr r2, _0804B7B0 @ =0x08506936
	ldrh r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r4, [r0]
	ldrb r3, [r1, #2]
	subs r3, #1
	movs r0, #0x1c
	movs r1, #0x94
	movs r2, #2
	bl sub_08048804
	movs r0, #0
	bl sub_08048BC4
	adds r0, r4, #0
	bl sub_0804728C
	b _0804B7BA
	.align 2, 0
_0804B7A0: .4byte gEwramData
_0804B7A4: .4byte 0x0001325C
_0804B7A8: .4byte 0x00003390
_0804B7AC: .4byte 0x08505B3C
_0804B7B0: .4byte 0x08506936
_0804B7B4:
	movs r0, #1
	bl sub_08048BC4
_0804B7BA:
	ldr r0, _0804B800 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804B804 @ =0x00000F34
	adds r0, r0, r1
	movs r1, #0x21
	bl sub_08048B0C
	mov r2, r8
	ldrb r1, [r2, #0x15]
	movs r0, #1
	ands r0, r1
	movs r2, #1
	cmp r0, #0
	beq _0804B7D8
	movs r2, #0x10
_0804B7D8:
	mov r3, r8
	movs r1, #0x15
	ldrsb r1, [r3, r1]
	movs r0, #0x16
	ldrsb r0, [r3, r0]
	subs r1, r1, r0
	asrs r1, r1, #1
	adds r1, #0xb
	adds r0, r2, #0
	bl sub_08048AD8
	bl sub_08048018
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B800: .4byte gEwramData
_0804B804: .4byte 0x00000F34

	thumb_func_start sub_0804B808
sub_0804B808: @ 0x0804B808
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r7, _0804B87C @ =gEwramData
	ldr r4, [r7]
	ldr r0, _0804B880 @ =0x0001325C
	adds r0, r0, r4
	mov r8, r0
	ldrh r1, [r4, #0x18]
	ldrh r2, [r4, #0x16]
	mov sb, r2
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0804B900
	mov r0, r8
	adds r1, r5, #0
	bl sub_0804B36C
	adds r6, r0, #0
	cmp r6, #0
	beq _0804B8F8
	ldrb r1, [r5, #0x17]
	ldr r0, _0804B884 @ =0x00013294
	adds r2, r4, r0
	adds r1, r2, r1
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	ldrb r0, [r5, #0x17]
	adds r2, r2, r0
	ldrb r0, [r2]
	cmp r0, #0
	bne _0804B896
	movs r1, #0x15
	ldrsb r1, [r5, r1]
	movs r0, #0x14
	ldrsb r0, [r5, r0]
	subs r0, #1
	cmp r1, r0
	bne _0804B896
	ldrb r2, [r5, #0x16]
	movs r1, #0x16
	ldrsb r1, [r5, r1]
	cmp r1, #0
	beq _0804B888
	movs r0, #0x15
	ldrsb r0, [r5, r0]
	cmp r0, r1
	bne _0804B876
	adds r0, r2, #0
	subs r0, #8
	strb r0, [r5, #0x16]
_0804B876:
	ldrb r0, [r5, #0x15]
	subs r0, #1
	b _0804B894
	.align 2, 0
_0804B87C: .4byte gEwramData
_0804B880: .4byte 0x0001325C
_0804B884: .4byte 0x00013294
_0804B888:
	ldrb r1, [r5, #0x15]
	movs r0, #0x15
	ldrsb r0, [r5, r0]
	cmp r0, #0
	beq _0804B896
	subs r0, r1, #1
_0804B894:
	strb r0, [r5, #0x15]
_0804B896:
	movs r0, #0xa
	movs r1, #4
	bl sub_080463A8
	movs r0, #0x14
	movs r1, #7
	bl sub_080471E4
	mov r0, r8
	adds r1, r5, #0
	bl sub_0804B494
	bl sub_08040FE0
	movs r0, #0x14
	ldrsb r0, [r5, r0]
	cmp r0, #0
	beq _0804B8F0
	ldrb r1, [r5, #0x17]
	lsls r1, r1, #4
	ldr r0, _0804B8E8 @ =0x08505B3C
	adds r1, r1, r0
	ldr r2, _0804B8EC @ =0x08506936
	ldrh r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r4, [r0]
	ldrb r3, [r1, #2]
	subs r3, #1
	movs r0, #0x1c
	movs r1, #0x94
	movs r2, #2
	bl sub_08048804
	movs r0, #0
	bl sub_08048BC4
	adds r0, r4, #0
	bl sub_0804728C
	b _0804B93A
	.align 2, 0
_0804B8E8: .4byte 0x08505B3C
_0804B8EC: .4byte 0x08506936
_0804B8F0:
	movs r0, #1
	bl sub_08048BC4
	b _0804B93A
_0804B8F8:
	movs r0, #0xef
	bl sub_080D7910
	b _0804B93A
_0804B900:
	adds r0, r5, #0
	bl sub_080461BC
	adds r6, r0, #0
	movs r0, #2
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _0804B930
	bl sub_08048BA0
	ldr r0, [r7]
	ldr r2, _0804B92C @ =0x00000F34
	adds r0, r0, r2
	bl sub_08048B64
	movs r0, #0xf0
	bl sub_080D7910
	movs r0, #1
	rsbs r0, r0, #0
	b _0804BA02
	.align 2, 0
_0804B92C: .4byte 0x00000F34
_0804B930:
	cmp r6, #0
	beq _0804B9C2
	movs r0, #0xf1
	bl sub_080D7910
_0804B93A:
	cmp r6, #0
	beq _0804B9C2
	ldrb r4, [r5, #0x17]
	adds r2, r5, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	ldrb r3, [r5, #0x16]
	movs r0, #0x16
	ldrsb r0, [r5, r0]
	cmp r1, r0
	beq _0804B95E
	strb r3, [r2]
	mov r0, r8
	adds r1, r5, #0
	bl sub_0804B494
	b _0804B96C
_0804B95E:
	ldr r0, _0804B9AC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804B9B0 @ =0x0001325C
	adds r0, r0, r1
	adds r1, r5, #0
	bl sub_0804B648
_0804B96C:
	ldrb r2, [r5, #0x17]
	cmp r4, r2
	beq _0804B9C2
	bl sub_08040FE0
	movs r0, #0x14
	ldrsb r0, [r5, r0]
	cmp r0, #0
	beq _0804B9BC
	ldrb r1, [r5, #0x17]
	lsls r1, r1, #4
	ldr r0, _0804B9B4 @ =0x08505B3C
	adds r1, r1, r0
	ldr r2, _0804B9B8 @ =0x08506936
	ldrh r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r4, [r0]
	ldrb r3, [r1, #2]
	subs r3, #1
	movs r0, #0x1c
	movs r1, #0x94
	movs r2, #2
	bl sub_08048804
	movs r0, #0
	bl sub_08048BC4
	adds r0, r4, #0
	bl sub_0804728C
	b _0804B9C2
	.align 2, 0
_0804B9AC: .4byte gEwramData
_0804B9B0: .4byte 0x0001325C
_0804B9B4: .4byte 0x08505B3C
_0804B9B8: .4byte 0x08506936
_0804B9BC:
	movs r0, #1
	bl sub_08048BC4
_0804B9C2:
	ldrb r1, [r5, #0x15]
	movs r0, #1
	ands r0, r1
	movs r2, #1
	cmp r0, #0
	beq _0804B9D0
	movs r2, #0x10
_0804B9D0:
	movs r1, #0x15
	ldrsb r1, [r5, r1]
	movs r0, #0x16
	ldrsb r0, [r5, r0]
	subs r1, r1, r0
	asrs r1, r1, #1
	adds r1, #0xb
	adds r0, r2, #0
	bl sub_08048AD8
	bl sub_08048018
	ldr r0, _0804BA10 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804BA14 @ =0x00000F34
	adds r0, r0, r1
	bl sub_0804875C
	movs r0, #2
	mov r2, sb
	ands r2, r0
	movs r0, #0
	cmp r2, #0
	beq _0804BA02
	subs r0, #1
_0804BA02:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804BA10: .4byte gEwramData
_0804BA14: .4byte 0x00000F34

	thumb_func_start sub_0804BA18
sub_0804BA18: @ 0x0804BA18
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	bl sub_080472A0
	movs r0, #6
	strb r0, [r7, #0x14]
	movs r2, #0xc8
	lsls r2, r2, #6
	movs r0, #4
	str r0, [sp]
	movs r1, #0xd
	movs r3, #0x1f
	bl sub_080472B0
	adds r0, r7, #0
	bl sub_0804BCA0
	movs r6, #0
	ldrb r0, [r7, #0x14]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	cmp r6, r0
	bge _0804BA82
	ldr r0, _0804BA88 @ =0x00003390
	mov r8, r0
	movs r5, #0xce
	lsls r5, r5, #6
	movs r4, #4
_0804BA56:
	movs r0, #3
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #0xa
	bl sub_08046DD4
	movs r0, #0x11
	adds r1, r4, #0
	mov r2, r8
	movs r3, #0xa
	bl sub_08046DD4
	movs r1, #0x20
	add r8, r1
	adds r5, #0x20
	adds r4, #2
	adds r6, #1
	ldrb r0, [r7, #0x14]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	cmp r6, r0
	blt _0804BA56
_0804BA82:
	movs r6, #0
	b _0804BAEA
	.align 2, 0
_0804BA88: .4byte 0x00003390
_0804BA8C:
	movs r5, #1
	ands r5, r6
	movs r1, #0
	cmp r5, #0
	beq _0804BA98
	movs r1, #0x15
_0804BA98:
	asrs r0, r6, #1
	adds r0, #0xc
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r1, #0
	adds r1, r4, #0
	movs r2, #0xe
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	cmp r5, #0
	beq _0804BABC
	movs r0, #0x80
	adds r1, r4, #0
	bl sub_0804090C
_0804BABC:
	movs r0, #3
	adds r1, r6, #0
	bl sub_080326B8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804BADC
	movs r1, #0xab
	lsls r1, r1, #1
	adds r0, r6, r1
	bl sub_08041434
	movs r1, #0
	bl sub_08041338
	b _0804BAE8
_0804BADC:
	ldr r0, _0804BB34 @ =0x0000034F
	bl sub_08041434
	movs r1, #0
	bl sub_08041338
_0804BAE8:
	adds r6, #1
_0804BAEA:
	movs r0, #0x14
	ldrsb r0, [r7, r0]
	cmp r6, r0
	blt _0804BA8C
	ldrb r1, [r7, #0x15]
	movs r0, #1
	ands r0, r1
	movs r2, #2
	cmp r0, #0
	beq _0804BB00
	movs r2, #0x10
_0804BB00:
	lsls r1, r1, #0x18
	asrs r1, r1, #0x19
	lsls r1, r1, #1
	adds r1, #4
	adds r0, r2, #0
	bl sub_08048AD8
	bl sub_08048018
	ldr r0, _0804BB38 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804BB3C @ =0x00000F34
	adds r0, r0, r1
	movs r1, #0x22
	bl sub_08048B0C
	adds r0, r7, #0
	bl sub_0804BCDC
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804BB34: .4byte 0x0000034F
_0804BB38: .4byte gEwramData
_0804BB3C: .4byte 0x00000F34

	thumb_func_start sub_0804BB40
sub_0804BB40: @ 0x0804BB40
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r5, _0804BB8C @ =gEwramData
	ldr r0, [r5]
	ldrh r1, [r0, #0x18]
	ldrh r0, [r0, #0x16]
	mov r8, r0
	movs r0, #1
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	beq _0804BBA4
	movs r1, #0x15
	ldrsb r1, [r7, r1]
	movs r0, #3
	bl sub_080326B8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804BB9C
	movs r0, #0xf4
	bl sub_080D7910
	movs r0, #0x15
	ldrsb r0, [r7, r0]
	bl sub_08032AB8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804BB90
	movs r0, #0x15
	ldrsb r0, [r7, r0]
	movs r1, #0
	bl sub_08032ADC
	b _0804BC00
	.align 2, 0
_0804BB8C: .4byte gEwramData
_0804BB90:
	movs r0, #0x15
	ldrsb r0, [r7, r0]
	movs r1, #1
	bl sub_08032ADC
	b _0804BC00
_0804BB9C:
	movs r0, #0xef
	bl sub_080D7910
	b _0804BC00
_0804BBA4:
	adds r0, r7, #0
	bl sub_080461BC
	adds r4, r0, #0
	movs r0, #2
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0804BBC6
	movs r0, #0xf0
	bl sub_080D7910
	ldr r0, [r5]
	ldr r2, _0804BBEC @ =0x00000F34
	adds r0, r0, r2
	bl sub_08048B64
_0804BBC6:
	cmp r4, #0
	beq _0804BC00
	movs r0, #0xf1
	bl sub_080D7910
	movs r1, #0x15
	ldrsb r1, [r7, r1]
	movs r0, #3
	bl sub_080326B8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804BBF4
	movs r0, #0x15
	ldrsb r0, [r7, r0]
	ldr r1, _0804BBF0 @ =0x00000257
	adds r4, r0, r1
	b _0804BBF6
	.align 2, 0
_0804BBEC: .4byte 0x00000F34
_0804BBF0: .4byte 0x00000257
_0804BBF4:
	ldr r4, _0804BC30 @ =0x0000034F
_0804BBF6:
	bl sub_08040FE0
	adds r0, r4, #0
	bl sub_08046BC8
_0804BC00:
	ldrb r1, [r7, #0x15]
	movs r0, #1
	ands r0, r1
	movs r2, #2
	cmp r0, #0
	beq _0804BC0E
	movs r2, #0x10
_0804BC0E:
	lsls r1, r1, #0x18
	asrs r1, r1, #0x19
	lsls r1, r1, #1
	adds r1, #4
	adds r0, r2, #0
	bl sub_08048AD8
	bl sub_08048018
	ldr r0, _0804BC34 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0804BC38 @ =0x00000F34
	adds r0, r0, r2
	bl sub_0804875C
	movs r5, #0
	b _0804BC7C
	.align 2, 0
_0804BC30: .4byte 0x0000034F
_0804BC34: .4byte gEwramData
_0804BC38: .4byte 0x00000F34
_0804BC3C:
	movs r0, #3
	adds r1, r5, #0
	bl sub_080326B8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804BC7A
	movs r0, #1
	ands r0, r5
	movs r6, #0xd
	cmp r0, #0
	beq _0804BC56
	movs r6, #0x1b
_0804BC56:
	asrs r4, r5, #1
	lsls r4, r4, #1
	adds r4, #4
	adds r0, r5, #0
	bl sub_08032AB8
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	asrs r2, r5
	lsls r2, r2, #4
	ldr r0, _0804BC9C @ =0x0000B30E
	adds r2, r2, r0
	adds r0, r6, #0
	adds r1, r4, #0
	movs r3, #2
	bl sub_08046DD4
_0804BC7A:
	adds r5, #1
_0804BC7C:
	movs r0, #0x14
	ldrsb r0, [r7, r0]
	cmp r5, r0
	blt _0804BC3C
	movs r0, #2
	mov r1, r8
	ands r1, r0
	movs r0, #0
	cmp r1, #0
	beq _0804BC92
	subs r0, #1
_0804BC92:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804BC9C: .4byte 0x0000B30E

	thumb_func_start sub_0804BCA0
sub_0804BCA0: @ 0x0804BCA0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x15
	ldrsb r1, [r4, r1]
	movs r0, #3
	bl sub_080326B8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804BCC4
	movs r0, #0x15
	ldrsb r0, [r4, r0]
	ldr r1, _0804BCC0 @ =0x00000257
	adds r4, r0, r1
	b _0804BCC6
	.align 2, 0
_0804BCC0: .4byte 0x00000257
_0804BCC4:
	ldr r4, _0804BCD8 @ =0x0000034F
_0804BCC6:
	bl sub_08040FE0
	adds r0, r4, #0
	bl sub_08046BC8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804BCD8: .4byte 0x0000034F

	thumb_func_start sub_0804BCDC
sub_0804BCDC: @ 0x0804BCDC
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r5, #0
	b _0804BD24
_0804BCE4:
	movs r0, #3
	adds r1, r5, #0
	bl sub_080326B8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804BD22
	movs r0, #1
	ands r0, r5
	movs r6, #0xd
	cmp r0, #0
	beq _0804BCFE
	movs r6, #0x1b
_0804BCFE:
	asrs r4, r5, #1
	lsls r4, r4, #1
	adds r4, #4
	adds r0, r5, #0
	bl sub_08032AB8
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	asrs r2, r5
	lsls r2, r2, #4
	ldr r0, _0804BD34 @ =0x0000B30E
	adds r2, r2, r0
	adds r0, r6, #0
	adds r1, r4, #0
	movs r3, #2
	bl sub_08046DD4
_0804BD22:
	adds r5, #1
_0804BD24:
	movs r0, #0x14
	ldrsb r0, [r7, r0]
	cmp r5, r0
	blt _0804BCE4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804BD34: .4byte 0x0000B30E

	thumb_func_start sub_0804BD38
sub_0804BD38: @ 0x0804BD38
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r7, _0804BD68 @ =gEwramData
	ldr r4, [r7]
	adds r6, r4, #0
	adds r6, #0x20
	movs r1, #0x85
	lsls r1, r1, #3
	adds r0, r4, r1
	ldrb r0, [r0]
	movs r1, #0
	bl sub_08013700
	ldr r0, _0804BD6C @ =0x000004CC
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0804BD70
	movs r0, #0xd8
	lsls r0, r0, #2
	b _0804BD94
	.align 2, 0
_0804BD68: .4byte gEwramData
_0804BD6C: .4byte 0x000004CC
_0804BD70:
	ldr r0, [r7]
	ldr r1, _0804BD88 @ =0x0000042C
	adds r0, r0, r1
	ldr r4, [r0]
	movs r0, #2
	ands r4, r0
	cmp r4, #0
	beq _0804BD8C
	movs r0, #0xd8
	lsls r0, r0, #2
	b _0804BD94
	.align 2, 0
_0804BD88: .4byte 0x0000042C
_0804BD8C:
	ldr r0, [r6, #0x18]
	cmp r0, #0
	bne _0804BDA8
	ldr r0, _0804BDA4 @ =0x00000361
_0804BD94:
	bl sub_0804728C
	movs r0, #0xff
	strb r0, [r5, #0xa]
	movs r0, #0xef
	bl sub_080D7910
	b _0804BDF4
	.align 2, 0
_0804BDA4: .4byte 0x00000361
_0804BDA8:
	ldr r0, _0804BDFC @ =0x0000036A
	bl sub_0804728C
	movs r0, #4
	movs r1, #1
	bl sub_0804066C
	ldr r0, _0804BE00 @ =0x0000034B
	bl sub_08041434
	movs r1, #0
	bl sub_08041318
	movs r0, #0xc
	movs r1, #1
	bl sub_0804066C
	ldr r0, _0804BE04 @ =0x0000034D
	bl sub_08041434
	movs r1, #0
	bl sub_08041318
	movs r0, #0
	movs r1, #0
	bl sub_0804066C
	movs r0, #1
	strb r0, [r5, #0x15]
	strb r4, [r5, #0xa]
	strb r4, [r5, #0xb]
	ldr r0, [r7]
	ldr r1, _0804BE08 @ =0x00000E2C
	adds r0, r0, r1
	movs r1, #0x95
	strh r1, [r0, #0x34]
	movs r1, #0x89
	strh r1, [r0, #0x36]
_0804BDF4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804BDFC: .4byte 0x0000036A
_0804BE00: .4byte 0x0000034B
_0804BE04: .4byte 0x0000034D
_0804BE08: .4byte 0x00000E2C

	thumb_func_start sub_0804BE0C
sub_0804BE0C: @ 0x0804BE0C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r0, #0
	mov r8, r0
	ldr r7, _0804BE34 @ =gEwramData
	ldr r2, [r7]
	ldrh r3, [r2, #0x18]
	ldrh r1, [r2, #0x16]
	adds r6, r2, #0
	adds r6, #0x60
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0804BEE0
	cmp r0, #1
	bgt _0804BE38
	cmp r0, #0
	beq _0804BE40
	b _0804BF76
	.align 2, 0
_0804BE34: .4byte gEwramData
_0804BE38:
	cmp r0, #0xff
	bne _0804BE3E
	b _0804BF64
_0804BE3E:
	b _0804BF76
_0804BE40:
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0804BEAA
	ldr r5, _0804BE84 @ =0x00000366
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0804BE98
	ldrb r1, [r4, #0x15]
	ands r0, r1
	cmp r0, #0
	bne _0804BE98
	adds r0, r6, #0
	bl sub_080135C0
	ldr r0, [r7]
	movs r1, #0x85
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r0, #1
	bl sub_08013620
	cmp r0, #0
	bne _0804BE88
	adds r5, #5
	movs r0, #0xf4
	bl sub_080D7910
	ldrb r0, [r4, #0xa]
	adds r0, #1
	b _0804BEA0
	.align 2, 0
_0804BE84: .4byte 0x00000366
_0804BE88:
	movs r0, #0xef
	bl sub_080D7910
	ldr r5, _0804BE94 @ =0x00000386
	b _0804BE9E
	.align 2, 0
_0804BE94: .4byte 0x00000386
_0804BE98:
	movs r0, #0xf0
	bl sub_080D7910
_0804BE9E:
	movs r0, #0xff
_0804BEA0:
	strb r0, [r4, #0xa]
	adds r0, r5, #0
	bl sub_0804728C
	b _0804BF76
_0804BEAA:
	movs r0, #0x30
	ands r3, r0
	cmp r3, #0
	beq _0804BF76
	ldr r0, _0804BEDC @ =0x00000E2C
	adds r2, r2, r0
	ldrb r1, [r4, #0x15]
	adds r1, #1
	strb r1, [r4, #0x15]
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #2
	adds r1, #8
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #5
	strh r0, [r2, #0x34]
	movs r0, #0x89
	strh r0, [r2, #0x36]
	movs r0, #0xf1
	bl sub_080D7910
	b _0804BF76
	.align 2, 0
_0804BEDC: .4byte 0x00000E2C
_0804BEE0:
	ldrb r2, [r4, #0xb]
	adds r0, r2, #0
	cmp r0, #0
	bne _0804BF0C
	ldr r0, _0804BF04 @ =0x00001010
	bl sub_080D7910
	ldr r0, _0804BF08 @ =gDisplayRegisters
	adds r0, #0x4c
	movs r1, #0
	mov r2, r8
	strh r2, [r0]
	strb r1, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	b _0804BF76
	.align 2, 0
_0804BF04: .4byte 0x00001010
_0804BF08: .4byte gDisplayRegisters
_0804BF0C:
	cmp r0, #1
	bne _0804BF34
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	ldr r1, _0804BF30 @ =gDisplayRegisters
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1a
	adds r1, #0x4c
	strh r0, [r1]
	cmp r0, #0x10
	bne _0804BF76
	movs r0, #0x20
	strb r0, [r4, #0xd]
	adds r0, r2, #1
	strb r0, [r4, #0xb]
	b _0804BF76
	.align 2, 0
_0804BF30: .4byte gDisplayRegisters
_0804BF34:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xff
	bne _0804BF76
	adds r0, r6, #0
	bl sub_0800C7A4
	ldr r1, _0804BF60 @ =gDisplayRegisters
	adds r2, r1, #0
	adds r2, #0x4c
	movs r3, #0
	movs r0, #0x10
	strh r0, [r2]
	adds r1, #0x48
	strh r5, [r1]
	ldr r0, [r7]
	strb r3, [r0, #0x10]
	b _0804BF76
	.align 2, 0
_0804BF60: .4byte gDisplayRegisters
_0804BF64:
	movs r0, #1
	movs r1, #0x10
	bl sub_08048AD8
	mov r0, r8
	strb r0, [r4, #0xa]
	movs r1, #1
	rsbs r1, r1, #0
	mov r8, r1
_0804BF76:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0804BF80
	bl sub_08048018
_0804BF80:
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0804BF8C
sub_0804BF8C: @ 0x0804BF8C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldr r0, _0804BFC8 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0
	ldr r2, _0804BFCC @ =0x00013398
	adds r2, r2, r0
	mov ip, r2
	ldr r3, _0804BFD0 @ =0x08525504
	mov r8, r3
	movs r7, #0x18
	adds r7, r7, r6
	mov sb, r7
_0804BFAC:
	movs r4, #0
	lsls r0, r1, #1
	adds r5, r1, #1
	mov r3, ip
	adds r2, r3, r0
	mov r7, sb
	adds r3, r7, r1
	mov r1, r8
_0804BFBC:
	ldrh r0, [r2]
	ldrh r7, [r1]
	cmp r0, r7
	bne _0804BFD4
	strb r4, [r3]
	b _0804BFDC
	.align 2, 0
_0804BFC8: .4byte gEwramData
_0804BFCC: .4byte 0x00013398
_0804BFD0: .4byte 0x08525504
_0804BFD4:
	adds r1, #2
	adds r4, #1
	cmp r4, #3
	ble _0804BFBC
_0804BFDC:
	adds r1, r5, #0
	cmp r1, #3
	ble _0804BFAC
	movs r0, #0
	strb r0, [r6, #0xa]
	strb r0, [r6, #0xb]
	strb r0, [r6, #0xc]
	adds r0, r6, #0
	bl sub_080472A0
	movs r0, #3
	strb r0, [r6, #0x14]
	movs r4, #0
	movs r5, #0xc8
	lsls r5, r5, #6
_0804BFFA:
	adds r1, r4, #0
	adds r1, #0xf
	movs r0, #5
	adds r2, r5, #0
	movs r3, #0x18
	bl sub_08046DD4
	adds r5, #0x20
	adds r4, #1
	cmp r4, #2
	ble _0804BFFA
	movs r0, #0
	movs r1, #0
	movs r2, #0x20
	movs r3, #2
	bl sub_08040748
	ldr r0, _0804C050 @ =0x00000352
	bl sub_0804728C
	movs r0, #0
	strb r0, [r6, #0x14]
	movs r0, #1
	strb r0, [r6, #0x12]
	adds r0, r6, #0
	bl sub_0804C3AC
	adds r0, r6, #0
	bl sub_0804C38C
	ldr r0, _0804C054 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804C058 @ =0x00000F34
	adds r0, r0, r1
	movs r1, #0x24
	bl sub_08048B0C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804C050: .4byte 0x00000352
_0804C054: .4byte gEwramData
_0804C058: .4byte 0x00000F34

	thumb_func_start sub_0804C05C
sub_0804C05C: @ 0x0804C05C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r0, _0804C10C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804C110 @ =0x0001325C
	adds r1, r0, r1
	str r1, [sp]
	ldrh r3, [r0, #0x18]
	mov sb, r3
	ldrh r0, [r0, #0x16]
	mov sl, r0
	movs r0, #0xa
	mov r4, sl
	ands r0, r4
	movs r1, #0
	str r1, [sp, #4]
	cmp r0, #0
	beq _0804C090
	movs r3, #1
	rsbs r3, r3, #0
	str r3, [sp, #4]
_0804C090:
	ldrb r0, [r7, #0x14]
	cmp r0, #0
	beq _0804C0AC
	movs r0, #0xb
	rsbs r0, r0, #0
	mov r4, sl
	ands r0, r4
	cmp r0, #0
	beq _0804C0AC
	ldr r0, _0804C114 @ =0x00000352
	bl sub_0804728C
	movs r0, #0
	strb r0, [r7, #0x14]
_0804C0AC:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0804C11C
	movs r2, #0
	movs r6, #0
	movs r1, #0x18
	adds r1, r1, r7
	mov r8, r1
_0804C0BC:
	lsls r1, r6, #1
	ldr r3, [sp]
	movs r4, #0x9e
	lsls r4, r4, #1
	adds r0, r3, r4
	adds r5, r0, r1
	mov r1, r8
	adds r0, r1, r6
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r3, _0804C118 @ =0x08525504
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r5]
	ldrh r4, [r5]
	ands r4, r2
	cmp r4, #0
	bne _0804C1B4
	movs r0, #0xf0
	str r2, [sp, #8]
	bl sub_080D7910
	ldrh r0, [r5]
	ldr r2, [sp, #8]
	orrs r2, r0
	adds r6, #1
	cmp r6, #3
	ble _0804C0BC
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0804C0FC
	b _0804C1FA
_0804C0FC:
	strb r4, [r7, #0x12]
	movs r0, #8
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _0804C1FA
	b _0804C1C4
	.align 2, 0
_0804C10C: .4byte gEwramData
_0804C110: .4byte 0x0001325C
_0804C114: .4byte 0x00000352
_0804C118: .4byte 0x08525504
_0804C11C:
	movs r0, #0x40
	mov r4, sb
	ands r0, r4
	cmp r0, #0
	beq _0804C13A
	movs r0, #0xf1
	bl sub_080D7910
	ldrb r0, [r7, #0x15]
	subs r0, #1
	strb r0, [r7, #0x15]
	movs r0, #0x18
	adds r0, r0, r7
	mov r8, r0
	b _0804C1FA
_0804C13A:
	movs r0, #0x80
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _0804C158
	movs r0, #0xf1
	bl sub_080D7910
	ldrb r0, [r7, #0x15]
	adds r0, #1
	strb r0, [r7, #0x15]
	movs r3, #0x18
	adds r3, r3, r7
	mov r8, r3
	b _0804C1FA
_0804C158:
	movs r0, #0x11
	mov r4, sb
	ands r0, r4
	cmp r0, #0
	beq _0804C184
	movs r0, #0xf4
	bl sub_080D7910
	ldr r1, _0804C180 @ =0x08525510
	movs r0, #0x15
	ldrsb r0, [r7, r0]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r2, r7, #0
	adds r2, #0x18
	adds r1, r2, r1
	ldrb r0, [r1]
	adds r0, #1
	b _0804C1A8
	.align 2, 0
_0804C180: .4byte 0x08525510
_0804C184:
	movs r0, #0x20
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _0804C1D0
	movs r0, #0xf4
	bl sub_080D7910
	ldr r1, _0804C1B0 @ =0x08525510
	movs r0, #0x15
	ldrsb r0, [r7, r0]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r2, r7, #0
	adds r2, #0x18
	adds r1, r2, r1
	ldrb r0, [r1]
	subs r0, #1
_0804C1A8:
	strb r0, [r1]
	mov r8, r2
	b _0804C1FA
	.align 2, 0
_0804C1B0: .4byte 0x08525510
_0804C1B4:
	movs r0, #0xef
	bl sub_080D7910
	ldr r0, _0804C1CC @ =0x00000353
	bl sub_0804728C
	movs r0, #1
	strb r0, [r7, #0x14]
_0804C1C4:
	movs r3, #0
	str r3, [sp, #4]
	b _0804C1FA
	.align 2, 0
_0804C1CC: .4byte 0x00000353
_0804C1D0:
	movs r0, #4
	mov r4, sl
	ands r0, r4
	movs r1, #0x18
	adds r1, r1, r7
	mov r8, r1
	cmp r0, #0
	beq _0804C1FA
	movs r0, #0xf4
	bl sub_080D7910
	movs r6, #0
	mov r2, r8
	ldr r3, _0804C254 @ =0x0852550C
_0804C1EC:
	adds r0, r2, r6
	adds r1, r6, r3
	ldrb r1, [r1]
	strb r1, [r0]
	adds r6, #1
	cmp r6, #3
	ble _0804C1EC
_0804C1FA:
	ldrb r2, [r7, #0x15]
	movs r1, #3
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r7, #0x15]
	ldr r2, _0804C258 @ =0x08525510
	movs r0, #0x15
	ldrsb r0, [r7, r0]
	adds r0, r0, r2
	ldrb r0, [r0]
	add r0, r8
	ldrb r2, [r0]
	ands r1, r2
	strb r1, [r0]
	mov r3, sb
	cmp r3, #0
	bne _0804C222
	mov r4, sl
	cmp r4, #0
	beq _0804C228
_0804C222:
	adds r0, r7, #0
	bl sub_0804C3AC
_0804C228:
	adds r0, r7, #0
	bl sub_0804C38C
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0804C240
	ldr r0, _0804C25C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804C260 @ =0x00000F34
	adds r0, r0, r1
	bl sub_08048B64
_0804C240:
	ldr r0, [sp, #4]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804C254: .4byte 0x0852550C
_0804C258: .4byte 0x08525510
_0804C25C: .4byte gEwramData
_0804C260: .4byte 0x00000F34

	thumb_func_start sub_0804C264
sub_0804C264: @ 0x0804C264
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #0
	movs r1, #5
	movs r2, #0x1e
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	ldr r6, _0804C374 @ =gEwramData
	ldr r1, [r6]
	ldr r4, _0804C378 @ =0x000115B6
	adds r2, r1, r4
	ldrh r0, [r2]
	adds r0, #7
	strh r0, [r2]
	ldr r5, _0804C37C @ =0x000115B8
	adds r1, r1, r5
	ldrh r0, [r1]
	adds r0, #7
	strh r0, [r1]
	movs r0, #0x80
	bl sub_08040C60
	movs r0, #0x81
	bl sub_08040C60
	ldr r1, [r6]
	adds r2, r1, r4
	ldrh r0, [r2]
	adds r0, #8
	strh r0, [r2]
	adds r1, r1, r5
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	ldrh r0, [r2]
	adds r0, #7
	strh r0, [r2]
	ldrh r0, [r1]
	adds r0, #7
	strh r0, [r1]
	movs r0, #0x82
	bl sub_08040C60
	movs r0, #0x83
	bl sub_08040C60
	ldr r1, [r6]
	adds r2, r1, r4
	ldrh r0, [r2]
	adds r0, #8
	strh r0, [r2]
	adds r1, r1, r5
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	ldrh r0, [r2]
	adds r0, #6
	strh r0, [r2]
	ldrh r0, [r1]
	adds r0, #6
	strh r0, [r1]
	movs r0, #0x86
	bl sub_08040C60
	movs r0, #0x87
	bl sub_08040C60
	ldr r1, [r6]
	adds r2, r1, r4
	ldrh r0, [r2]
	adds r0, #7
	strh r0, [r2]
	adds r1, r1, r5
	ldrh r0, [r1]
	adds r0, #7
	strh r0, [r1]
	ldrh r0, [r2]
	adds r0, #6
	strh r0, [r2]
	ldrh r0, [r1]
	adds r0, #6
	strh r0, [r1]
	movs r0, #0x84
	bl sub_08040C60
	movs r0, #0x85
	bl sub_08040C60
	ldr r1, [r6]
	adds r4, r1, r4
	ldrh r0, [r4]
	adds r0, #7
	strh r0, [r4]
	adds r1, r1, r5
	ldrh r0, [r1]
	adds r0, #7
	strh r0, [r1]
	movs r4, #0
	ldr r6, _0804C380 @ =0x00003359
	movs r5, #4
_0804C332:
	movs r3, #7
	cmp r4, #1
	bne _0804C33A
	movs r3, #6
_0804C33A:
	movs r0, #6
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08046DD4
	ldr r1, _0804C384 @ =0x08525510
	adds r1, r4, r1
	adds r0, r7, #0
	adds r0, #0x18
	ldrb r1, [r1]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r2, r0, #1
	adds r2, r2, r0
	ldr r0, _0804C388 @ =0x000032A0
	adds r2, r2, r0
	movs r0, #0x12
	adds r1, r5, #0
	movs r3, #3
	bl sub_08046DD4
	adds r6, #0x10
	adds r5, #2
	adds r4, #1
	cmp r4, #3
	ble _0804C332
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804C374: .4byte gEwramData
_0804C378: .4byte 0x000115B6
_0804C37C: .4byte 0x000115B8
_0804C380: .4byte 0x00003359
_0804C384: .4byte 0x08525510
_0804C388: .4byte 0x000032A0

	thumb_func_start sub_0804C38C
sub_0804C38C: @ 0x0804C38C
	push {lr}
	bl sub_08048018
	ldr r0, _0804C3A4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804C3A8 @ =0x00000F34
	adds r0, r0, r1
	bl sub_0804875C
	pop {r0}
	bx r0
	.align 2, 0
_0804C3A4: .4byte gEwramData
_0804C3A8: .4byte 0x00000F34

	thumb_func_start sub_0804C3AC
sub_0804C3AC: @ 0x0804C3AC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804C264
	movs r1, #0x15
	ldrsb r1, [r4, r1]
	lsls r1, r1, #1
	adds r1, #4
	movs r0, #5
	bl sub_08048AD8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0804C3C8
sub_0804C3C8: @ 0x0804C3C8
	push {r4, r5, lr}
	ldr r0, _0804C3F4 @ =gEwramData
	ldr r0, [r0]
	movs r2, #0
	ldr r4, _0804C3F8 @ =0x08525504
	ldr r3, _0804C3FC @ =0x0852550C
	ldr r5, _0804C400 @ =0x00013398
	adds r1, r0, r5
_0804C3D8:
	adds r0, r2, r3
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r2, #1
	cmp r2, #3
	ble _0804C3D8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804C3F4: .4byte gEwramData
_0804C3F8: .4byte 0x08525504
_0804C3FC: .4byte 0x0852550C
_0804C400: .4byte 0x00013398

	thumb_func_start sub_0804C404
sub_0804C404: @ 0x0804C404
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0804C4BC @ =gEwramData
	ldr r0, [r4]
	ldr r2, _0804C4C0 @ =0x0001340C
	adds r1, r0, r2
	movs r2, #0xf8
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r4]
	ldr r2, _0804C4C4 @ =0x00013410
	adds r1, r0, r2
	movs r2, #0xf9
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r4]
	ldr r2, _0804C4C8 @ =0x00013414
	adds r1, r0, r2
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r4]
	ldr r2, _0804C4CC @ =0x00013418
	adds r1, r0, r2
	movs r2, #0xfb
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r4]
	ldr r2, _0804C4D0 @ =0x00013420
	adds r1, r0, r2
	movs r2, #0xfc
	lsls r2, r2, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, [r4]
	ldr r2, _0804C4D4 @ =0x00013422
	adds r0, r1, r2
	ldr r2, _0804C4D8 @ =0x000003F1
	adds r1, r1, r2
	movs r2, #2
	bl memcpy
	ldr r0, [r4]
	ldr r2, _0804C4DC @ =0x00013424
	adds r1, r0, r2
	ldr r2, _0804C4E0 @ =0x000003F2
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, [r4]
	ldr r2, _0804C4E4 @ =0x00013426
	adds r0, r1, r2
	ldr r2, _0804C4E8 @ =0x000003F3
	adds r1, r1, r2
	movs r2, #2
	bl memcpy
	ldr r0, _0804C4EC @ =0x0815E0A4
	bl sub_0803C8B0
	ldr r0, _0804C4F0 @ =0x080E5C20
	movs r1, #0xd
	movs r2, #1
	movs r3, #0xd
	bl sub_0803C918
	ldr r0, _0804C4F4 @ =0x081183F4
	movs r1, #1
	movs r2, #1
	movs r3, #0xf
	bl sub_0803C918
	ldr r0, [r4]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _0804C4FC
	cmp r0, #3
	beq _0804C504
	ldr r0, _0804C4F8 @ =0x0815E034
	b _0804C506
	.align 2, 0
_0804C4BC: .4byte gEwramData
_0804C4C0: .4byte 0x0001340C
_0804C4C4: .4byte 0x00013410
_0804C4C8: .4byte 0x00013414
_0804C4CC: .4byte 0x00013418
_0804C4D0: .4byte 0x00013420
_0804C4D4: .4byte 0x00013422
_0804C4D8: .4byte 0x000003F1
_0804C4DC: .4byte 0x00013424
_0804C4E0: .4byte 0x000003F2
_0804C4E4: .4byte 0x00013426
_0804C4E8: .4byte 0x000003F3
_0804C4EC: .4byte 0x0815E0A4
_0804C4F0: .4byte 0x080E5C20
_0804C4F4: .4byte 0x081183F4
_0804C4F8: .4byte 0x0815E034
_0804C4FC:
	ldr r0, _0804C500 @ =0x0827799C
	b _0804C506
	.align 2, 0
_0804C500: .4byte 0x0827799C
_0804C504:
	ldr r0, _0804C544 @ =0x0826C858
_0804C506:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0
	bl sub_0803FD9C
	movs r4, #0
	strb r4, [r5, #0x15]
	bl sub_0806E064
	ldr r0, _0804C548 @ =gEwramData
	ldr r1, [r0]
	adds r1, #0x8e
	ldrb r0, [r1]
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r1]
	strb r4, [r5, #0xb]
	strb r4, [r5, #0xc]
	adds r0, r5, #0
	bl sub_080472A0
	strb r4, [r5, #0x13]
	movs r0, #0x70
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	bl sub_0804C668
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804C544: .4byte 0x0826C858
_0804C548: .4byte gEwramData

	thumb_func_start sub_0804C54C
sub_0804C54C: @ 0x0804C54C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #4
	beq _0804C594
	cmp r0, #4
	bgt _0804C574
	cmp r0, #1
	beq _0804C5B0
	cmp r0, #1
	bgt _0804C56A
	cmp r0, #0
	beq _0804C586
	b _0804C63E
_0804C56A:
	cmp r0, #2
	beq _0804C5E0
	cmp r0, #3
	beq _0804C5E8
	b _0804C63E
_0804C574:
	cmp r0, #6
	beq _0804C610
	cmp r0, #6
	blt _0804C5B8
	cmp r0, #7
	beq _0804C608
	cmp r0, #0xff
	beq _0804C634
	b _0804C63E
_0804C586:
	adds r0, r4, #0
	bl sub_0804C668
	movs r0, #4
	strb r0, [r4, #0xb]
	strb r5, [r4, #0xc]
	b _0804C63E
_0804C594:
	ldr r0, _0804C5AC @ =gDisplayRegisters
	adds r1, r0, #0
	adds r1, #0x4c
	ldrh r0, [r1]
	subs r0, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0804C63E
	strh r5, [r1]
	movs r0, #1
	b _0804C5D2
	.align 2, 0
_0804C5AC: .4byte gDisplayRegisters
_0804C5B0:
	adds r0, r4, #0
	bl sub_0804C770
	b _0804C63E
_0804C5B8:
	ldr r0, _0804C5DC @ =gDisplayRegisters
	adds r1, r0, #0
	adds r1, #0x4c
	ldrh r0, [r1]
	adds r0, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _0804C63E
	movs r0, #0x10
	strh r0, [r1]
	movs r0, #2
_0804C5D2:
	strb r0, [r4, #0xb]
	movs r0, #0
	strb r0, [r4, #0xc]
	b _0804C63E
	.align 2, 0
_0804C5DC: .4byte gDisplayRegisters
_0804C5E0:
	adds r0, r4, #0
	bl sub_0804C968
	b _0804C63E
_0804C5E8:
	ldr r0, _0804C604 @ =gDisplayRegisters
	adds r1, r0, #0
	adds r1, #0x4c
	ldrh r0, [r1]
	subs r0, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0804C63E
	strh r5, [r1]
	movs r0, #7
	strb r0, [r4, #0xb]
	b _0804C63E
	.align 2, 0
_0804C604: .4byte gDisplayRegisters
_0804C608:
	adds r0, r4, #0
	bl sub_0804CA9C
	b _0804C63E
_0804C610:
	ldr r0, _0804C630 @ =gDisplayRegisters
	adds r1, r0, #0
	adds r1, #0x4c
	ldrh r0, [r1]
	adds r0, #4
	movs r2, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _0804C63E
	movs r0, #0x10
	strh r0, [r1]
	strb r2, [r4, #0xb]
	strb r2, [r4, #0xc]
	b _0804C63E
	.align 2, 0
_0804C630: .4byte gDisplayRegisters
_0804C634:
	adds r0, r4, #0
	bl sub_0804CC14
	movs r5, #1
	rsbs r5, r5, #0
_0804C63E:
	ldrb r0, [r4, #0xb]
	cmp r0, #5
	bgt _0804C64E
	cmp r0, #4
	bge _0804C654
	cmp r0, #1
	beq _0804C654
	b _0804C65E
_0804C64E:
	cmp r0, #7
	beq _0804C65A
	b _0804C65E
_0804C654:
	bl sub_08048018
	b _0804C65E
_0804C65A:
	bl sub_08000C94
_0804C65E:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0804C668
sub_0804C668: @ 0x0804C668
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0804C684 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _0804C68C
	cmp r0, #3
	beq _0804C694
	ldr r0, _0804C688 @ =0x0827B200
	b _0804C696
	.align 2, 0
_0804C684: .4byte gEwramData
_0804C688: .4byte 0x0827B200
_0804C68C:
	ldr r0, _0804C690 @ =0x08277984
	b _0804C696
	.align 2, 0
_0804C690: .4byte 0x08277984
_0804C694:
	ldr r0, _0804C748 @ =0x0826C848
_0804C696:
	ldr r1, _0804C74C @ =0x0600A000
	movs r2, #0
	bl sub_0803FD9C
	ldr r1, _0804C750 @ =0x0815EA60
	movs r0, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	bl sub_08047154
	movs r0, #0
	movs r1, #0xf
	movs r2, #0x29
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	adds r0, r4, #0
	bl sub_0804D2C8
	bl sub_0804CCC8
	ldr r0, _0804C754 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804C758 @ =0x00000E2C
	adds r0, r0, r1
	bl sub_08047F34
	bl sub_08048AA4
	ldr r2, _0804C75C @ =0x0000F3D0
	movs r0, #0xb
	movs r1, #3
	movs r3, #0xe
	bl sub_08046DD4
	ldr r2, _0804C760 @ =0x0000F3E0
	movs r0, #0x11
	movs r1, #0xf
	movs r3, #4
	bl sub_08046DD4
	ldr r2, _0804C764 @ =0x000013E4
	movs r0, #0x15
	movs r1, #0xf
	movs r3, #1
	bl sub_08046DD4
	ldr r2, _0804C768 @ =0x000013E8
	movs r0, #0x19
	movs r1, #0xf
	movs r3, #1
	bl sub_08046DD4
	ldr r2, _0804C76C @ =0x0000F3EA
	movs r0, #0x1b
	movs r1, #0xf
	movs r3, #1
	bl sub_08046DD4
	ldrb r1, [r4, #0x15]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	movs r2, #1
	cmp r0, #0
	beq _0804C724
	movs r2, #0xf
_0804C724:
	movs r1, #0x15
	ldrsb r1, [r4, r1]
	movs r0, #0x16
	ldrsb r0, [r4, r0]
	subs r1, r1, r0
	asrs r1, r1, #1
	lsls r1, r1, #1
	adds r1, #5
	adds r0, r2, #0
	bl sub_08048AD8
	strb r5, [r4, #0xb]
	movs r0, #0
	strb r0, [r4, #0xc]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804C748: .4byte 0x0826C848
_0804C74C: .4byte 0x0600A000
_0804C750: .4byte 0x0815EA60
_0804C754: .4byte gEwramData
_0804C758: .4byte 0x00000E2C
_0804C75C: .4byte 0x0000F3D0
_0804C760: .4byte 0x0000F3E0
_0804C764: .4byte 0x000013E4
_0804C768: .4byte 0x000013E8
_0804C76C: .4byte 0x0000F3EA

	thumb_func_start sub_0804C770
sub_0804C770: @ 0x0804C770
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r0, _0804C7C4 @ =gEwramData
	ldr r0, [r0]
	ldrh r4, [r0, #0x18]
	ldrh r6, [r0, #0x16]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0804C8A4
	adds r7, r0, #0
	cmp r7, #0
	bne _0804C820
	movs r1, #0x80
	lsls r1, r1, #1
	ands r1, r4
	cmp r1, #0
	beq _0804C7D4
	movs r0, #0x16
	ldrsb r0, [r5, r0]
	mov r8, r0
	movs r4, #0x14
	ldrsb r4, [r5, r4]
	subs r6, r4, #1
	adds r0, r6, #0
	movs r1, #0xa
	bl __modsi3
	adds r1, r0, #1
	subs r4, r4, r1
	cmp r8, r4
	beq _0804C7CE
	mov r0, r8
	adds r0, #0xa
	cmp r0, r6
	ble _0804C7C8
	ldrb r0, [r5, #0x14]
	subs r0, r0, r1
	b _0804C7F6
	.align 2, 0
_0804C7C4: .4byte gEwramData
_0804C7C8:
	ldrb r0, [r5, #0x16]
	adds r0, #0xa
	b _0804C7F6
_0804C7CE:
	strb r7, [r5, #0x16]
	strb r7, [r5, #0x15]
	b _0804C81A
_0804C7D4:
	movs r7, #0x80
	lsls r7, r7, #2
	ands r7, r4
	cmp r7, #0
	beq _0804C828
	ldrb r2, [r5, #0x16]
	movs r0, #0x16
	ldrsb r0, [r5, r0]
	cmp r0, #0
	beq _0804C804
	subs r0, #0xa
	cmp r0, #0
	bge _0804C7F2
	strb r1, [r5, #0x16]
	b _0804C7F8
_0804C7F2:
	adds r0, r2, #0
	subs r0, #0xa
_0804C7F6:
	strb r0, [r5, #0x16]
_0804C7F8:
	ldrb r0, [r5, #0x16]
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	bl sub_0804D2C8
	b _0804C820
_0804C804:
	movs r0, #0x14
	ldrsb r0, [r5, r0]
	subs r0, #1
	movs r1, #0xa
	bl __modsi3
	mvns r0, r0
	ldrb r1, [r5, #0x14]
	adds r0, r0, r1
	strb r0, [r5, #0x16]
	strb r0, [r5, #0x15]
_0804C81A:
	adds r0, r5, #0
	bl sub_0804D2C8
_0804C820:
	movs r0, #0xf1
	bl sub_080D7910
	b _0804C872
_0804C828:
	movs r4, #2
	ands r4, r6
	cmp r4, #0
	beq _0804C83E
	movs r0, #0xf0
	bl sub_080D7910
	movs r0, #0xff
	strb r0, [r5, #0xb]
	strb r7, [r5, #0xc]
	b _0804C872
_0804C83E:
	movs r0, #1
	ands r6, r0
	cmp r6, #0
	beq _0804C872
	movs r0, #0x15
	ldrsb r0, [r5, r0]
	bl sub_0804D73C
	cmp r0, #0
	beq _0804C86C
	movs r0, #0xf4
	bl sub_080D7910
	ldr r0, _0804C868 @ =gDisplayRegisters
	adds r0, #0x4c
	movs r1, #0
	strh r4, [r0]
	movs r0, #5
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xc]
	b _0804C872
	.align 2, 0
_0804C868: .4byte gDisplayRegisters
_0804C86C:
	movs r0, #0xef
	bl sub_080D7910
_0804C872:
	ldrb r1, [r5, #0x15]
	movs r0, #1
	ands r0, r1
	movs r2, #1
	cmp r0, #0
	beq _0804C880
	movs r2, #0xf
_0804C880:
	movs r1, #0x15
	ldrsb r1, [r5, r1]
	movs r0, #0x16
	ldrsb r0, [r5, r0]
	subs r1, r1, r0
	asrs r1, r1, #1
	lsls r1, r1, #1
	adds r1, #5
	adds r0, r2, #0
	bl sub_08048AD8
	bl sub_08048018
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0804C8A4
sub_0804C8A4: @ 0x0804C8A4
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r5, #0
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _0804C8D2
	movs r0, #0x15
	ldrsb r0, [r3, r0]
	adds r0, #1
	movs r1, #0x14
	ldrsb r1, [r3, r1]
	ldrb r2, [r3, #0x15]
	cmp r0, r1
	blt _0804C8CA
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0804C960
_0804C8CA:
	movs r0, #1
	eors r0, r2
	strb r0, [r3, #0x15]
	b _0804C95E
_0804C8D2:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0804C908
	movs r0, #0x15
	ldrsb r0, [r3, r0]
	subs r0, #2
	movs r1, #0x16
	ldrsb r1, [r3, r1]
	cmp r0, r1
	blt _0804C960
	ldrb r1, [r3, #0x15]
	movs r0, #0x15
	ldrsb r0, [r3, r0]
	cmp r0, #1
	ble _0804C960
	subs r0, r1, #2
	strb r0, [r3, #0x15]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r2, [r3, #0x16]
	movs r1, #0x16
	ldrsb r1, [r3, r1]
	cmp r0, r1
	bge _0804C95E
	subs r0, r2, #2
	b _0804C95C
_0804C908:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804C960
	movs r4, #0x15
	ldrsb r4, [r3, r4]
	adds r0, r4, #2
	movs r1, #0x16
	ldrsb r1, [r3, r1]
	adds r2, r1, #0
	adds r2, #9
	adds r6, r1, #0
	cmp r0, r2
	bgt _0804C960
	movs r1, #0x14
	ldrsb r1, [r3, r1]
	subs r0, r1, #1
	cmp r4, r0
	bge _0804C960
	subs r0, r1, #2
	cmp r4, r0
	beq _0804C93A
	ldrb r0, [r3, #0x15]
	adds r0, #2
	strb r0, [r3, #0x15]
_0804C93A:
	movs r1, #0x15
	ldrsb r1, [r3, r1]
	ldrb r2, [r3, #0x14]
	movs r0, #0x14
	ldrsb r0, [r3, r0]
	cmp r1, r0
	blt _0804C94C
	subs r0, r2, #1
	strb r0, [r3, #0x15]
_0804C94C:
	movs r1, #0x15
	ldrsb r1, [r3, r1]
	adds r0, r6, #0
	adds r0, #0xa
	cmp r1, r0
	blt _0804C95E
	ldrb r0, [r3, #0x16]
	adds r0, #2
_0804C95C:
	strb r0, [r3, #0x16]
_0804C95E:
	movs r5, #1
_0804C960:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0804C968
sub_0804C968: @ 0x0804C968
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0804C978
	cmp r0, #1
	beq _0804C9E4
	b _0804CA02
_0804C978:
	ldr r0, _0804C990 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _0804C998
	cmp r0, #3
	beq _0804C9A0
	ldr r0, _0804C994 @ =0x0827B200
	b _0804C9A2
	.align 2, 0
_0804C990: .4byte gEwramData
_0804C994: .4byte 0x0827B200
_0804C998:
	ldr r0, _0804C99C @ =0x08277984
	b _0804C9A2
	.align 2, 0
_0804C99C: .4byte 0x08277984
_0804C9A0:
	ldr r0, _0804CA08 @ =0x0826C848
_0804C9A2:
	ldr r1, _0804CA0C @ =0x0600A000
	movs r2, #0
	bl sub_0803FD9C
	ldr r1, _0804CA10 @ =0x0815E9D0
	movs r0, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	bl sub_08047154
	movs r2, #0x99
	lsls r2, r2, #5
	movs r0, #0x12
	movs r1, #8
	movs r3, #0xa
	bl sub_08046DD4
	ldr r2, _0804CA14 @ =0x00001330
	movs r0, #0x12
	movs r1, #9
	movs r3, #0xa
	bl sub_08046DD4
	movs r0, #1
	bl sub_080412F0
	movs r0, #3
	strb r0, [r4, #0xb]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_0804C9E4:
	bl sub_0804CCC8
	adds r0, r4, #0
	bl sub_0804CA18
	adds r0, r4, #0
	bl sub_0804CDF4
	ldrb r0, [r4, #0xb]
	cmp r0, #3
	beq _0804CA02
	movs r0, #7
	strb r0, [r4, #0xb]
	movs r0, #1
	strb r0, [r4, #0xd]
_0804CA02:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804CA08: .4byte 0x0826C848
_0804CA0C: .4byte 0x0600A000
_0804CA10: .4byte 0x0815E9D0
_0804CA14: .4byte 0x00001330

	thumb_func_start sub_0804CA18
sub_0804CA18: @ 0x0804CA18
	push {r4, r5, r6, lr}
	ldrb r6, [r0, #0x15]
	lsls r0, r6, #3
	adds r0, r0, r6
	lsls r0, r0, #2
	ldr r1, _0804CA8C @ =0x080E9644
	adds r5, r0, r1
	bl sub_0806E028
	ldr r0, _0804CA90 @ =gEwramData
	ldr r4, [r0]
	ldr r0, _0804CA94 @ =0x00000E2C
	adds r4, r4, r0
	adds r0, r4, #0
	movs r1, #1
	bl sub_0803AAEC
	adds r0, r4, #0
	bl sub_08042828
	ldr r0, _0804CA98 @ =EntityUpdateNothing
	bl sub_0806DFF8
	adds r4, r0, #0
	bl EntityGetSlot
	cmp r4, #0
	beq _0804CA86
	ldrh r0, [r5, #0xc]
	strh r0, [r4, #0x34]
	ldr r0, [r5, #4]
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0x36
	strb r6, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0x40
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x46
	movs r0, #0x58
	strh r0, [r2]
	ldrh r0, [r5, #0x1e]
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	ldrh r0, [r5, #0x20]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r1, [r5]
	adds r0, r4, #0
	bl _call_via_r1
_0804CA86:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0804CA8C: .4byte 0x080E9644
_0804CA90: .4byte gEwramData
_0804CA94: .4byte 0x00000E2C
_0804CA98: .4byte EntityUpdateNothing

	thumb_func_start sub_0804CA9C
sub_0804CA9C: @ 0x0804CA9C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r1, #0x15
	ldrsb r1, [r5, r1]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0804CAD0 @ =0x080E9644
	adds r3, r0, r1
	ldr r0, _0804CAD4 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x16]
	mov ip, r1
	ldrh r7, [r0, #0x18]
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	bne _0804CADC
	ldr r2, _0804CAD8 @ =gUnk_03002CB0
	ldrh r1, [r2]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r2]
	b _0804CAE0
	.align 2, 0
_0804CAD0: .4byte 0x080E9644
_0804CAD4: .4byte gEwramData
_0804CAD8: .4byte gUnk_03002CB0
_0804CADC:
	subs r0, #1
	strb r0, [r5, #0xd]
_0804CAE0:
	ldrb r0, [r3, #0x18]
	cmp r0, #0
	beq _0804CB44
	movs r0, #0xc0
	mov r1, ip
	ands r0, r1
	cmp r0, #0
	beq _0804CB44
	ldrb r6, [r5, #0x13]
	movs r4, #0x80
	ands r4, r1
	cmp r4, #0
	beq _0804CB10
	ldrb r0, [r3, #0x17]
	ldrb r1, [r3, #0x18]
	subs r1, #1
	bl sub_080326B8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804CB28
	movs r0, #1
	strb r0, [r5, #0x13]
	b _0804CB28
_0804CB10:
	ldrb r0, [r3, #0x17]
	ldrb r1, [r3, #0x18]
	subs r1, #1
	bl sub_080326B8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804CB24
	strb r4, [r5, #0x13]
	b _0804CB28
_0804CB24:
	movs r6, #1
	strb r6, [r5, #0x13]
_0804CB28:
	ldrb r0, [r5, #0x13]
	cmp r0, r6
	beq _0804CB44
	adds r0, r5, #0
	bl sub_0804D0D0
	movs r0, #0x15
	ldrsb r0, [r5, r0]
	ldrb r1, [r5, #0x13]
	bl sub_0804D1DC
	movs r0, #0xf1
	bl sub_080D7910
_0804CB44:
	movs r0, #0x88
	lsls r0, r0, #1
	ands r0, r7
	cmp r0, #0
	beq _0804CB7E
	movs r4, #0x15
	ldrsb r4, [r5, r4]
	movs r0, #0xf1
	bl sub_080D7910
_0804CB58:
	movs r0, #0x15
	ldrsb r0, [r5, r0]
	adds r0, #1
	movs r1, #0x14
	ldrsb r1, [r5, r1]
	cmp r0, r1
	bge _0804CB6C
	ldrb r0, [r5, #0x15]
	adds r0, #1
	b _0804CB6E
_0804CB6C:
	movs r0, #0
_0804CB6E:
	strb r0, [r5, #0x15]
	movs r0, #0x15
	ldrsb r0, [r5, r0]
	bl sub_0804D73C
	cmp r0, #0
	beq _0804CB58
	b _0804CBB2
_0804CB7E:
	movs r0, #0x88
	lsls r0, r0, #2
	ands r7, r0
	cmp r7, #0
	beq _0804CBD4
	movs r4, #0x15
	ldrsb r4, [r5, r4]
	movs r0, #0xf1
	bl sub_080D7910
_0804CB92:
	movs r0, #0x15
	ldrsb r0, [r5, r0]
	subs r0, #1
	cmp r0, #0
	blt _0804CBA0
	ldrb r0, [r5, #0x15]
	b _0804CBA2
_0804CBA0:
	ldrb r0, [r5, #0x14]
_0804CBA2:
	subs r0, #1
	strb r0, [r5, #0x15]
	movs r0, #0x15
	ldrsb r0, [r5, r0]
	bl sub_0804D73C
	cmp r0, #0
	beq _0804CB92
_0804CBB2:
	movs r0, #0x15
	ldrsb r0, [r5, r0]
	cmp r0, r4
	beq _0804CC04
	movs r0, #2
	strb r0, [r5, #0xb]
	ldr r2, _0804CBCC @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _0804CBD0 @ =0x0000EFFF
	ands r0, r1
	strh r0, [r2]
	b _0804CC04
	.align 2, 0
_0804CBCC: .4byte gUnk_03002CB0
_0804CBD0: .4byte 0x0000EFFF
_0804CBD4:
	ldr r0, _0804CC0C @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x16]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804CC04
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	bne _0804CC04
	ldr r2, _0804CC10 @ =gUnk_03002CB0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	movs r4, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0xf0
	bl sub_080D7910
	movs r0, #6
	strb r0, [r5, #0xb]
	strb r4, [r5, #0xc]
_0804CC04:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804CC0C: .4byte gEwramData
_0804CC10: .4byte gUnk_03002CB0

	thumb_func_start sub_0804CC14
sub_0804CC14: @ 0x0804CC14
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_0804CCC8
	ldr r4, _0804CCB4 @ =gEwramData
	ldr r1, [r4]
	adds r1, #0x8e
	ldrb r2, [r1]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	strb r0, [r5, #0xb]
	strb r0, [r5, #0xc]
	ldr r0, [r4]
	movs r1, #0xf8
	lsls r1, r1, #2
	adds r2, r0, r1
	ldr r3, _0804CCB8 @ =0x0001340C
	adds r1, r0, r3
	ldr r1, [r1]
	str r1, [r2]
	movs r2, #0xf9
	lsls r2, r2, #2
	adds r1, r0, r2
	adds r3, #4
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r4]
	adds r2, #4
	adds r1, r0, r2
	adds r3, #4
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r4]
	adds r2, #4
	adds r1, r0, r2
	adds r3, #4
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, [r4]
	movs r0, #0xfc
	lsls r0, r0, #2
	adds r2, r1, r0
	adds r3, #8
	adds r0, r1, r3
	ldrh r0, [r0]
	strh r0, [r2]
	ldr r2, _0804CCBC @ =0x000003F1
	adds r0, r1, r2
	adds r3, #2
	adds r1, r1, r3
	movs r2, #2
	bl memcpy
	ldr r0, [r4]
	ldr r2, _0804CCC0 @ =0x000003F2
	adds r1, r0, r2
	ldr r3, _0804CCC4 @ =0x00013424
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, [r4]
	adds r2, #1
	adds r0, r1, r2
	adds r3, #2
	adds r1, r1, r3
	movs r2, #2
	bl memcpy
	bl sub_0806E0A0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804CCB4: .4byte gEwramData
_0804CCB8: .4byte 0x0001340C
_0804CCBC: .4byte 0x000003F1
_0804CCC0: .4byte 0x000003F2
_0804CCC4: .4byte 0x00013424

	thumb_func_start sub_0804CCC8
sub_0804CCC8: @ 0x0804CCC8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	movs r3, #0
	ldr r7, _0804CD70 @ =gEwramData
	movs r6, #0xf8
	lsls r6, r6, #2
	movs r4, #0
	movs r5, #0xfc
	lsls r5, r5, #2
_0804CCDA:
	ldr r2, [r7]
	lsls r0, r3, #2
	adds r1, r2, r6
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0804CCF0
	str r4, [r1]
	adds r0, r2, r5
	adds r0, r0, r3
	strb r4, [r0]
_0804CCF0:
	adds r3, #1
	cmp r3, #3
	ble _0804CCDA
	movs r4, #9
_0804CCF8:
	adds r0, r4, #0
	bl sub_0803E6BC
	adds r4, #1
	cmp r4, #0x17
	ble _0804CCF8
	bl sub_0803E480
	ldr r0, _0804CD70 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804CD74 @ =0x00007024
	adds r4, r0, r1
	ldr r5, _0804CD78 @ =0x040000D4
	movs r6, #0xf
_0804CD14:
	ldr r0, [r4]
	cmp r0, #0
	beq _0804CD46
	adds r0, r4, #0
	bl EntityGetSlot
	adds r0, r4, #0
	movs r1, #1
	bl sub_0803AAEC
	adds r0, r4, #0
	bl sub_08042828
	movs r0, #0
	str r0, [sp]
	mov r0, sp
	str r0, [r5]
	str r4, [r5, #4]
	ldr r0, _0804CD7C @ =0x85000021
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0xff
	strb r0, [r1]
_0804CD46:
	subs r6, #1
	adds r4, #0x84
	cmp r6, #0
	bge _0804CD14
	movs r0, #0xa
	bl sub_0803CCBC
	movs r0, #0xb
	bl sub_0803CCBC
	movs r0, #0xc
	bl sub_0803CCBC
	movs r0, #0xd
	bl sub_0803CCBC
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804CD70: .4byte gEwramData
_0804CD74: .4byte 0x00007024
_0804CD78: .4byte 0x040000D4
_0804CD7C: .4byte 0x85000021

	thumb_func_start sub_0804CD80
sub_0804CD80: @ 0x0804CD80
	push {r4, r5, r6, r7, lr}
	cmp r1, #0
	bne _0804CDB8
	bl sub_08041434
	adds r3, r0, #2
	movs r2, #0
	movs r7, #0xff
	lsls r7, r7, #8
	movs r5, #0xf0
	lsls r5, r5, #8
	movs r6, #0xff
	movs r4, #1
	rsbs r4, r4, #0
_0804CD9C:
	adds r0, r3, r2
	ldrb r1, [r0]
	adds r2, #1
	cmp r5, #0
	bne _0804CDAC
	adds r0, r6, #0
	ands r0, r1
	b _0804CDB0
_0804CDAC:
	movs r0, #1
	rsbs r0, r0, #0
_0804CDB0:
	cmp r0, r4
	beq _0804CD9C
	subs r0, r2, #1
	b _0804CDEC
_0804CDB8:
	bl sub_08041434
	adds r6, r0, #2
	movs r4, #0
	movs r5, #0
_0804CDC2:
	adds r0, r6, r4
	ldrb r1, [r0]
	adds r4, #1
	movs r0, #0xe0
	ands r0, r1
	cmp r0, #0
	beq _0804CDE2
	adds r0, r1, #0
	subs r0, #0x20
	bl sub_08041420
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r5, r5, r0
	movs r1, #1
	rsbs r1, r1, #0
_0804CDE2:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0804CDC2
	adds r0, r5, #0
_0804CDEC:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0804CDF4
sub_0804CDF4: @ 0x0804CDF4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	ldrb r0, [r6, #0x15]
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r2, _0804CE34 @ =0x080E9644
	adds r1, r1, r2
	mov r8, r1
	adds r4, r0, #1
	cmp r4, #0x63
	bgt _0804CE38
	movs r0, #6
	movs r1, #1
	movs r2, #1
	bl sub_08047128
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #8
	movs r1, #1
	adds r2, r4, #0
	movs r3, #2
	bl sub_08046FFC
	b _0804CE4A
	.align 2, 0
_0804CE34: .4byte 0x080E9644
_0804CE38:
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #8
	movs r1, #1
	adds r2, r4, #0
	movs r3, #3
	bl sub_08046FFC
_0804CE4A:
	mov r0, r8
	ldrh r2, [r0, #0xc]
	movs r5, #1
	str r5, [sp]
	movs r4, #0
	str r4, [sp, #4]
	movs r0, #0x14
	movs r1, #2
	movs r3, #4
	bl sub_08046FFC
	mov r1, r8
	ldrh r2, [r1, #0x10]
	str r5, [sp]
	str r4, [sp, #4]
	movs r0, #0x1b
	movs r1, #0xb
	movs r3, #8
	bl sub_08046FFC
	adds r0, r6, #0
	bl sub_0804CFE8
	adds r0, r6, #0
	bl sub_0804D0D0
	movs r0, #0x15
	ldrsb r0, [r6, r0]
	ldrb r1, [r6, #0x13]
	bl sub_0804D1DC
	movs r7, #0x15
	movs r4, #0x15
	movs r6, #4
	movs r3, #0
	movs r5, #0
_0804CE92:
	mov r2, r8
	ldrh r0, [r2, #0x1c]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0804CEA4
	adds r3, #1
	b _0804CEBE
_0804CEA4:
	adds r0, r4, #0
	adds r4, #1
	adds r1, r6, #0
	adds r2, r5, #0
	str r3, [sp, #8]
	bl sub_0804D768
	subs r0, r4, r7
	ldr r3, [sp, #8]
	cmp r0, #5
	bne _0804CEBE
	adds r6, #1
	adds r4, r7, #0
_0804CEBE:
	adds r5, #1
	cmp r5, #8
	ble _0804CE92
	movs r0, #6
	mov sb, r0
	cmp r3, #0
	ble _0804CEEA
	adds r5, r3, #0
_0804CECE:
	adds r0, r4, #0
	adds r4, #1
	adds r1, r6, #0
	movs r2, #1
	bl sub_08047128
	subs r0, r4, r7
	cmp r0, #5
	bne _0804CEE4
	adds r6, #1
	adds r4, r7, #0
_0804CEE4:
	subs r5, #1
	cmp r5, #0
	bne _0804CECE
_0804CEEA:
	adds r4, r7, #0
	mov r6, sb
	movs r3, #0
	movs r5, #0
_0804CEF2:
	mov r1, r8
	ldrh r0, [r1, #0x1a]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0804CF04
	adds r3, #1
	b _0804CF1E
_0804CF04:
	adds r0, r4, #0
	adds r4, #1
	adds r1, r6, #0
	adds r2, r5, #0
	str r3, [sp, #8]
	bl sub_0804D768
	subs r0, r4, r7
	ldr r3, [sp, #8]
	cmp r0, #5
	bne _0804CF1E
	adds r6, #1
	adds r4, r7, #0
_0804CF1E:
	adds r5, #1
	cmp r5, #8
	ble _0804CEF2
	cmp r3, #0
	ble _0804CF46
	adds r5, r3, #0
_0804CF2A:
	adds r0, r4, #0
	adds r4, #1
	adds r1, r6, #0
	movs r2, #1
	bl sub_08047128
	subs r0, r4, r7
	cmp r0, #5
	bne _0804CF40
	adds r6, #1
	adds r4, r7, #0
_0804CF40:
	subs r5, #1
	cmp r5, #0
	bne _0804CF2A
_0804CF46:
	movs r6, #0x18
	movs r5, #1
	movs r7, #0xb
	mov r2, r8
	ldrb r0, [r2, #0x17]
	cmp r0, #0
	bne _0804CF88
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	bne _0804CF88
	movs r0, #0x18
	movs r1, #2
	movs r2, #3
	bl sub_08047128
	ldr r4, _0804CF84 @ =0x00000309
	adds r2, r4, #0
	adds r2, #0x90
	movs r0, #0x19
	movs r1, #1
	movs r3, #2
	bl sub_08046DD4
	adds r4, #0xa0
	movs r0, #0x19
	movs r1, #2
	adds r2, r4, #0
	movs r3, #2
	bl sub_08046DD4
	b _0804CFD8
	.align 2, 0
_0804CF84: .4byte 0x00000309
_0804CF88:
	mov r1, r8
	ldrb r0, [r1, #0x17]
	ldrb r1, [r1, #0x18]
	subs r1, #1
	bl sub_080326B8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804CFC4
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r4, r2, #0
	adds r4, #8
	lsls r2, r7, #4
	adds r2, r4, r2
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #3
	bl sub_08046DD4
	adds r1, r5, #1
	adds r0, r7, #1
	lsls r0, r0, #4
	adds r4, r4, r0
	adds r0, r6, #0
	adds r2, r4, #0
	movs r3, #3
	bl sub_08046DD4
	b _0804CFD8
_0804CFC4:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #3
	bl sub_08047128
	adds r1, r5, #1
	adds r0, r6, #0
	movs r2, #3
	bl sub_08047128
_0804CFD8:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804CFE8
sub_0804CFE8: @ 0x0804CFE8
	push {r4, r5, r6, r7, lr}
	ldr r1, _0804D018 @ =gEwramData
	ldr r6, [r1]
	ldr r1, _0804D01C @ =0x0001325C
	adds r7, r6, r1
	ldrb r4, [r0, #0x15]
	lsls r0, r4, #3
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _0804D020 @ =0x080E9644
	adds r5, r0, r1
	movs r0, #0
	movs r1, #9
	movs r2, #0xe
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	ldrh r0, [r5, #8]
	cmp r0, #0
	bne _0804D028
	ldr r0, _0804D024 @ =0x0000034F
	b _0804D05A
	.align 2, 0
_0804D018: .4byte gEwramData
_0804D01C: .4byte 0x0001325C
_0804D020: .4byte 0x080E9644
_0804D024: .4byte 0x0000034F
_0804D028:
	lsrs r0, r4, #5
	lsls r0, r0, #2
	ldr r1, _0804D050 @ =0x000133B0
	adds r2, r6, r1
	adds r2, r2, r0
	movs r0, #0x1f
	ands r0, r4
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0804D058
	ldr r1, _0804D054 @ =0x08506734
	ldrh r0, [r5, #8]
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	b _0804D05A
	.align 2, 0
_0804D050: .4byte 0x000133B0
_0804D054: .4byte 0x08506734
_0804D058:
	movs r0, #0xa
_0804D05A:
	bl sub_08041434
	movs r1, #0
	bl sub_08041338
	movs r0, #0x15
	movs r1, #9
	movs r2, #0xe
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	movs r0, #0x80
	movs r1, #9
	bl sub_0804090C
	ldrh r0, [r5, #0xa]
	cmp r0, #0
	bne _0804D08C
	ldr r0, _0804D088 @ =0x0000034F
	b _0804D0BE
	.align 2, 0
_0804D088: .4byte 0x0000034F
_0804D08C:
	lsrs r0, r4, #5
	lsls r0, r0, #2
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r2, r7, r1
	adds r2, r2, r0
	movs r0, #0x1f
	ands r4, r0
	movs r1, #1
	lsls r1, r4
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0804D0BC
	ldr r1, _0804D0B8 @ =0x08506734
	ldrh r0, [r5, #0xa]
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	b _0804D0BE
	.align 2, 0
_0804D0B8: .4byte 0x08506734
_0804D0BC:
	movs r0, #0xa
_0804D0BE:
	bl sub_08041434
	movs r1, #0
	bl sub_08041338
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804D0D0
sub_0804D0D0: @ 0x0804D0D0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldrb r4, [r0, #0x15]
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	ldr r2, _0804D0F0 @ =0x080E9644
	adds r7, r1, r2
	ldrb r6, [r0, #0x13]
	ldrb r0, [r7, #0x18]
	cmp r0, #0
	bne _0804D0F4
	movs r6, #0
	b _0804D102
	.align 2, 0
_0804D0F0: .4byte 0x080E9644
_0804D0F4:
	ldrb r0, [r7, #0x17]
	ldrb r1, [r7, #0x18]
	subs r1, #1
	bl sub_080326B8
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0804D102:
	cmp r3, #0
	bne _0804D10C
	cmp r6, #1
	bne _0804D10C
	movs r6, #0
_0804D10C:
	movs r0, #2
	movs r1, #0xc
	movs r2, #0x14
	bl sub_08047128
	ldr r1, _0804D178 @ =0x080EA628
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	adds r0, r5, #0
	movs r1, #1
	bl sub_0804CD80
	adds r4, r0, #0
	ldr r2, _0804D17C @ =0x00001310
	movs r0, #2
	movs r1, #0xc
	movs r3, #0xc
	bl sub_08046DD4
	movs r0, #0x15
	movs r1, #8
	movs r2, #0x12
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	lsrs r0, r4, #0x1f
	adds r4, r4, r0
	asrs r4, r4, #1
	movs r0, #0xb0
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #8
	bl sub_0804090C
	adds r0, r5, #0
	bl sub_08041434
	movs r1, #0
	bl sub_08041338
	cmp r6, #0
	beq _0804D1CA
	ldrb r1, [r7, #0x17]
	cmp r1, #1
	beq _0804D192
	cmp r1, #1
	bgt _0804D180
	cmp r1, #0
	beq _0804D18A
	b _0804D1AA
	.align 2, 0
_0804D178: .4byte 0x080EA628
_0804D17C: .4byte 0x00001310
_0804D180:
	cmp r1, #2
	beq _0804D19A
	cmp r1, #3
	beq _0804D1A2
	b _0804D1AA
_0804D18A:
	movs r0, #0xd
	mov r8, r0
	movs r1, #0xf
	b _0804D1A8
_0804D192:
	movs r0, #0xc
	mov r8, r0
	movs r1, #0xf
	b _0804D1A8
_0804D19A:
	movs r0, #0xb
	mov r8, r0
	movs r1, #0xf
	b _0804D1A8
_0804D1A2:
	movs r0, #8
	mov r8, r0
	movs r1, #0xa
_0804D1A8:
	mov sb, r1
_0804D1AA:
	mov r0, sb
	lsls r2, r0, #4
	ldr r1, _0804D1D8 @ =0xFFFFD000
	adds r2, r2, r1
	add r2, r8
	movs r1, #0x98
	lsls r1, r1, #5
	adds r0, r1, #0
	orrs r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #2
	movs r1, #0xc
	movs r3, #1
	bl sub_08046DD4
_0804D1CA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804D1D8: .4byte 0xFFFFD000

	thumb_func_start sub_0804D1DC
sub_0804D1DC: @ 0x0804D1DC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	lsls r0, r6, #3
	adds r0, r0, r6
	lsls r0, r0, #2
	ldr r1, _0804D204 @ =0x080E9644
	adds r4, r0, r1
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	beq _0804D208
	ldrb r0, [r4, #0x17]
	ldrb r1, [r4, #0x18]
	subs r1, #1
	bl sub_080326B8
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	b _0804D20A
	.align 2, 0
_0804D204: .4byte 0x080E9644
_0804D208:
	movs r5, #0
_0804D20A:
	movs r2, #0x90
	lsls r2, r2, #5
	movs r0, #3
	movs r1, #0xe
	movs r3, #0x19
	bl sub_08046DD4
	movs r2, #0x91
	lsls r2, r2, #5
	movs r0, #3
	movs r1, #0xf
	movs r3, #0x19
	bl sub_08046DD4
	movs r2, #0x92
	lsls r2, r2, #5
	movs r0, #3
	movs r1, #0x10
	movs r3, #0x19
	bl sub_08046DD4
	movs r0, #0
	movs r1, #0
	movs r2, #0x22
	movs r3, #2
	bl sub_08040748
	cmp r5, #0
	bne _0804D24A
	cmp r7, #1
	bne _0804D24A
	movs r7, #0
_0804D24A:
	cmp r7, #0
	bne _0804D264
	ldr r0, _0804D260 @ =0x080EA628
	lsls r1, r6, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #0x71
	bl sub_0804728C
	b _0804D270
	.align 2, 0
_0804D260: .4byte 0x080EA628
_0804D264:
	bl sub_08040FE0
	ldrb r0, [r4, #0x17]
	ldrb r1, [r4, #0x18]
	bl sub_08047330
_0804D270:
	cmp r5, #0
	beq _0804D2AC
	cmp r7, #0
	bne _0804D290
	ldr r2, _0804D28C @ =0x0000134E
	movs r0, #0x1c
	movs r1, #0x10
	movs r3, #1
	bl sub_08046DD4
	movs r0, #0x1c
	movs r1, #0xe
	b _0804D2A0
	.align 2, 0
_0804D28C: .4byte 0x0000134E
_0804D290:
	ldr r2, _0804D2A8 @ =0x0000134D
	movs r0, #0x1c
	movs r1, #0xe
	movs r3, #1
	bl sub_08046DD4
	movs r0, #0x1c
	movs r1, #0x10
_0804D2A0:
	movs r2, #1
	bl sub_08047128
	b _0804D2C0
	.align 2, 0
_0804D2A8: .4byte 0x0000134D
_0804D2AC:
	movs r0, #0x1c
	movs r1, #0xe
	movs r2, #1
	bl sub_08047128
	movs r0, #0x1c
	movs r1, #0x10
	movs r2, #1
	bl sub_08047128
_0804D2C0:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0804D2C8
sub_0804D2C8: @ 0x0804D2C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	str r0, [sp, #0x18]
	ldrb r0, [r0, #0x15]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	ldr r0, [sp, #0x18]
	strb r1, [r0, #0x16]
	movs r7, #0x16
	ldrsb r7, [r0, r7]
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	str r0, [sp, #0x1c]
	cmp r0, #0xa
	ble _0804D306
	movs r1, #0xa
	str r1, [sp, #0x1c]
_0804D306:
	ldr r2, [sp, #0x18]
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	beq _0804D314
	cmp r0, #1
	beq _0804D36A
	b _0804D62A
_0804D314:
	movs r6, #0
	movs r3, #5
	mov r8, r3
	movs r0, #0
	ldr r4, [sp, #0x1c]
	cmp r0, r4
	bge _0804D362
	movs r5, #1
	mov sb, r5
	ldr r5, _0804D3BC @ =0xFFFFF320
_0804D328:
	adds r0, r6, #0
	mov r1, sb
	ands r0, r1
	movs r1, #6
	cmp r0, #0
	beq _0804D336
	movs r1, #0x14
_0804D336:
	lsls r2, r5, #0x10
	lsrs r2, r2, #0x10
	adds r0, r1, #0
	mov r1, r8
	movs r3, #0xa
	bl sub_08046DD4
	movs r0, #0xf
	bl sub_080412F0
	adds r6, #1
	adds r0, r6, #0
	mov r2, sb
	ands r0, r2
	cmp r0, #0
	bne _0804D35A
	movs r3, #2
	add r8, r3
_0804D35A:
	adds r5, #0x10
	subs r4, #1
	cmp r4, #0
	bne _0804D328
_0804D362:
	ldr r4, [sp, #0x18]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_0804D36A:
	movs r6, #0
	movs r5, #5
	mov r8, r5
	mov sl, r6
	movs r0, #2
	str r0, [sp, #0x20]
	ldr r1, [sp, #0x1c]
	cmp r6, r1
	blt _0804D37E
	b _0804D4DE
_0804D37E:
	lsls r0, r7, #3
	adds r0, r0, r7
	lsls r0, r0, #2
	str r0, [sp, #0x24]
_0804D386:
	ldr r0, _0804D3C0 @ =0x080E9644
	ldr r2, [sp, #0x24]
	adds r4, r2, r0
	add r1, sp, #8
	ldr r0, _0804D3C4 @ =0x08118510
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldr r0, [r0]
	str r0, [r1]
	ldrb r0, [r4, #0x17]
	ldrb r1, [r4, #0x18]
	subs r1, #1
	bl sub_080326B8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804D3AE
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	bne _0804D3B4
_0804D3AE:
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	bne _0804D3C8
_0804D3B4:
	movs r0, #0xf
	bl sub_080412F0
	b _0804D3CE
	.align 2, 0
_0804D3BC: .4byte 0xFFFFF320
_0804D3C0: .4byte 0x080E9644
_0804D3C4: .4byte 0x08118510
_0804D3C8:
	movs r0, #0xe
	bl sub_080412F0
_0804D3CE:
	movs r3, #1
	mov sb, r3
	ldr r4, [sp, #0x20]
	ands r4, r3
	movs r1, #0
	cmp r4, #0
	beq _0804D3DE
	movs r1, #0x15
_0804D3DE:
	ldr r5, [sp, #0x20]
	asrs r0, r5, #1
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r1, #0
	adds r1, r5, #0
	movs r2, #0xe
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	cmp r4, #0
	beq _0804D404
	movs r0, #0x80
	adds r1, r5, #0
	bl sub_0804090C
_0804D404:
	ldr r0, _0804D430 @ =gEwramData
	ldr r1, [r0]
	asrs r0, r7, #5
	lsls r0, r0, #2
	ldr r2, _0804D434 @ =0x000133A0
	adds r1, r1, r2
	adds r1, r1, r0
	movs r0, #0x1f
	ands r0, r7
	mov r2, sb
	lsls r2, r0
	ldr r1, [r1]
	ands r1, r2
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge _0804D43C
	ldr r1, _0804D438 @ =0x080EA628
	lsls r0, r7, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	b _0804D444
	.align 2, 0
_0804D430: .4byte gEwramData
_0804D434: .4byte 0x000133A0
_0804D438: .4byte 0x080EA628
_0804D43C:
	movs r0, #0xe
	bl sub_080412F0
	ldr r0, _0804D494 @ =0x0000034E
_0804D444:
	bl sub_08041434
	movs r1, #0
	bl sub_08041338
	ldr r3, [sp, #0x18]
	movs r0, #0x16
	ldrsb r0, [r3, r0]
	add r0, sl
	adds r2, r0, #1
	cmp r2, #0x63
	bgt _0804D498
	movs r5, #1
	adds r4, r6, #0
	ands r4, r5
	movs r0, #2
	cmp r4, #0
	beq _0804D46A
	movs r0, #0x10
_0804D46A:
	mov r1, r8
	movs r2, #1
	bl sub_08047128
	movs r0, #4
	cmp r4, #0
	beq _0804D47A
	movs r0, #0x12
_0804D47A:
	ldr r4, [sp, #0x18]
	movs r2, #0x16
	ldrsb r2, [r4, r2]
	add r2, sl
	adds r2, #1
	str r5, [sp]
	str r5, [sp, #4]
	mov r1, r8
	movs r3, #2
	bl sub_08046FFC
	b _0804D4B6
	.align 2, 0
_0804D494: .4byte 0x0000034E
_0804D498:
	movs r1, #1
	adds r0, r6, #0
	ands r0, r1
	movs r3, #4
	cmp r0, #0
	beq _0804D4A6
	movs r3, #0x12
_0804D4A6:
	str r1, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r3, #0
	mov r1, r8
	movs r3, #3
	bl sub_08046FFC
_0804D4B6:
	adds r6, #1
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	bne _0804D4C4
	movs r5, #2
	add r8, r5
_0804D4C4:
	movs r0, #1
	add sl, r0
	ldr r1, [sp, #0x20]
	adds r1, #1
	str r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	adds r2, #0x24
	str r2, [sp, #0x24]
	adds r7, #1
	ldr r3, [sp, #0x1c]
	cmp sl, r3
	bge _0804D4DE
	b _0804D386
_0804D4DE:
	movs r0, #0xf
	bl sub_080412F0
	mov r4, sl
	cmp r4, #9
	bgt _0804D552
	movs r7, #1
_0804D4EC:
	ldr r4, [sp, #0x20]
	ands r4, r7
	movs r1, #0
	cmp r4, #0
	beq _0804D4F8
	movs r1, #0x15
_0804D4F8:
	ldr r5, [sp, #0x20]
	asrs r0, r5, #1
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r1, #0
	adds r1, r5, #0
	movs r2, #0xd
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	cmp r4, #0
	beq _0804D51E
	movs r0, #0x80
	adds r1, r5, #0
	bl sub_0804090C
_0804D51E:
	adds r0, r6, #0
	ands r0, r7
	movs r1, #4
	cmp r0, #0
	beq _0804D52A
	movs r1, #0x12
_0804D52A:
	adds r0, r1, #0
	mov r1, r8
	movs r2, #3
	bl sub_08047098
	adds r6, #1
	adds r0, r6, #0
	ands r0, r7
	cmp r0, #0
	bne _0804D542
	movs r0, #2
	add r8, r0
_0804D542:
	movs r1, #1
	add sl, r1
	ldr r2, [sp, #0x20]
	adds r2, #1
	str r2, [sp, #0x20]
	mov r3, sl
	cmp r3, #9
	ble _0804D4EC
_0804D552:
	ldr r4, [sp, #0x18]
	movs r0, #0x16
	ldrsb r0, [r4, r0]
	movs r1, #0xa
	bl __divsi3
	adds r2, r0, #0
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r2, #1
	movs r4, #1
	str r4, [sp]
	movs r0, #0xd
	movs r1, #0x11
	movs r3, #2
	bl sub_08046F74
	ldr r2, _0804D688 @ =0x0000139B
	movs r0, #0xe
	movs r1, #0x11
	movs r3, #1
	bl sub_08046DD4
	ldr r5, [sp, #0x18]
	movs r0, #0x14
	ldrsb r0, [r5, r0]
	subs r0, #1
	movs r1, #0xa
	bl __divsi3
	adds r2, r0, #0
	adds r2, #1
	str r4, [sp]
	movs r0, #0x10
	movs r1, #0x11
	movs r3, #2
	bl sub_08046F74
	ldr r2, _0804D68C @ =0x0000174C
	movs r0, #2
	movs r1, #0x11
	movs r3, #1
	bl sub_08046DD4
	ldr r2, _0804D690 @ =0x0000134C
	movs r0, #0x1c
	movs r1, #0x11
	movs r3, #1
	bl sub_08046DD4
	movs r0, #0
	movs r1, #0xf
	movs r2, #0x29
	movs r3, #1
	bl sub_08040970
	movs r0, #0x60
	movs r1, #0xf
	bl sub_0804090C
	movs r0, #0x84
	bl sub_08040C60
	movs r0, #0x85
	bl sub_08040C60
	ldr r0, _0804D694 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0804D698 @ =0x000115B6
	adds r2, r1, r0
	ldrh r0, [r2]
	adds r0, #9
	strh r0, [r2]
	ldr r2, _0804D69C @ =0x000115B8
	adds r1, r1, r2
	ldrh r0, [r1]
	adds r0, #9
	strh r0, [r1]
	movs r0, #0x86
	bl sub_08040C60
	movs r0, #0x87
	bl sub_08040C60
	ldr r2, _0804D6A0 @ =0x0000F3EC
	movs r0, #3
	movs r1, #0x11
	movs r3, #1
	bl sub_08046DD4
	ldr r2, _0804D6A4 @ =0x0000F3ED
	movs r0, #4
	movs r1, #0x11
	movs r3, #1
	bl sub_08046DD4
	ldr r2, _0804D6A8 @ =0x0000F3EE
	movs r0, #0x1a
	movs r1, #0x11
	movs r3, #1
	bl sub_08046DD4
	ldr r2, _0804D6AC @ =0x0000F3EF
	movs r0, #0x1b
	movs r1, #0x11
	movs r3, #1
	bl sub_08046DD4
_0804D62A:
	movs r0, #0x15
	movs r1, #0xe
	movs r2, #0x12
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	movs r0, #0x80
	movs r1, #0xe
	bl sub_0804090C
	ldr r0, _0804D6B0 @ =0x000003B1
	bl sub_08041434
	movs r1, #0
	bl sub_08041338
	bl sub_08032DF0
	adds r7, r0, #0
	movs r0, #0
	movs r1, #0xf
	movs r2, #0x10
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	ldr r0, _0804D6B4 @ =0x000003B2
	bl sub_08041434
	movs r1, #0
	bl sub_08041338
	movs r1, #0
	movs r4, #0xe
	ldr r2, _0804D6B8 @ =0x0600BC80
	movs r5, #0x80
	lsls r5, r5, #9
	movs r3, #0
_0804D67C:
	cmp r1, #2
	beq _0804D684
	cmp r1, #5
	bne _0804D6BC
_0804D684:
	str r5, [r2]
	b _0804D6BE
	.align 2, 0
_0804D688: .4byte 0x0000139B
_0804D68C: .4byte 0x0000174C
_0804D690: .4byte 0x0000134C
_0804D694: .4byte gEwramData
_0804D698: .4byte 0x000115B6
_0804D69C: .4byte 0x000115B8
_0804D6A0: .4byte 0x0000F3EC
_0804D6A4: .4byte 0x0000F3ED
_0804D6A8: .4byte 0x0000F3EE
_0804D6AC: .4byte 0x0000F3EF
_0804D6B0: .4byte 0x000003B1
_0804D6B4: .4byte 0x000003B2
_0804D6B8: .4byte 0x0600BC80
_0804D6BC:
	str r3, [r2]
_0804D6BE:
	lsls r0, r4, #9
	adds r2, #4
	adds r1, #1
	cmp r1, #7
	ble _0804D67C
	movs r1, #0
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r4, _0804D6E4 @ =0x0600A118
	adds r3, r0, r4
	orrs r2, r0
	movs r6, #0x80
	lsls r6, r6, #9
	ldr r5, _0804D6E8 @ =0x0600A000
	movs r4, #0
_0804D6DC:
	cmp r1, #6
	bne _0804D6EC
	str r6, [r3]
	b _0804D6F0
	.align 2, 0
_0804D6E4: .4byte 0x0600A118
_0804D6E8: .4byte 0x0600A000
_0804D6EC:
	adds r0, r2, r5
	str r4, [r0]
_0804D6F0:
	adds r2, #4
	adds r1, #1
	cmp r1, #7
	ble _0804D6DC
	adds r0, r7, #0
	movs r1, #0xa
	bl Div
	adds r2, r0, #0
	movs r4, #1
	str r4, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #0x18
	movs r1, #0xf
	movs r3, #3
	bl sub_08046FFC
	adds r0, r7, #0
	movs r1, #0xa
	bl Mod
	adds r2, r0, #0
	str r4, [sp]
	str r4, [sp, #4]
	movs r0, #0x1a
	movs r1, #0xf
	movs r3, #1
	bl sub_08046FFC
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0804D73C
sub_0804D73C: @ 0x0804D73C
	ldr r1, _0804D760 @ =gEwramData
	ldr r2, [r1]
	asrs r1, r0, #5
	lsls r1, r1, #2
	ldr r3, _0804D764 @ =0x000133A0
	adds r2, r2, r3
	adds r2, r2, r1
	movs r1, #0x1f
	ands r1, r0
	movs r0, #1
	lsls r0, r1
	ldr r1, [r2]
	ands r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_0804D760: .4byte gEwramData
_0804D764: .4byte 0x000133A0

	thumb_func_start sub_0804D768
sub_0804D768: @ 0x0804D768
	push {r4, lr}
	lsls r3, r2, #3
	ldr r2, _0804D78C @ =0x0852551C
	adds r3, r3, r2
	ldr r2, [r3]
	ldr r4, _0804D790 @ =0xFFFFD300
	adds r2, r2, r4
	ldr r3, [r3, #4]
	lsls r3, r3, #4
	adds r2, r2, r3
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r3, #1
	bl sub_08046DD4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804D78C: .4byte 0x0852551C
_0804D790: .4byte 0xFFFFD300

	thumb_func_start sub_0804D794
sub_0804D794: @ 0x0804D794
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r0, [r7, #0x40]
	str r0, [sp, #8]
	movs r1, #0x65
	adds r1, r1, r7
	mov sb, r1
	ldrb r0, [r1]
	mov sl, r0
	adds r6, r7, #0
	adds r6, #0x58
	ldrb r0, [r6]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	str r0, [sp, #0xc]
	ldr r0, [r7, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	cmp r0, r1
	bne _0804D7EC
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r2, [r6]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6]
	b _0804D8B8
_0804D7EC:
	cmp r0, #0
	beq _0804D894
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r7, #0x14]
	bl sub_080009E4
	adds r1, r0, #0
	ldrb r0, [r6]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	movs r3, #1
	eors r3, r0
	movs r5, #0
	str r5, [sp]
	ldrb r0, [r7, #0x18]
	str r0, [sp, #4]
	movs r0, #0
	movs r2, #0x80
	lsls r2, r2, #9
	bl sub_0803E058
	movs r0, #0x1f
	mov r8, r0
	ldrb r1, [r7, #0x18]
	mov r0, r8
	ands r1, r0
	ldrb r2, [r6]
	movs r4, #0x20
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6]
	adds r0, r7, #0
	bl sub_0803AC40
	ldr r0, [r7, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	adds r1, r0, #0
	ldrb r3, [r6]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1f
	str r5, [sp]
	ldrb r0, [r7, #0x19]
	str r0, [sp, #4]
	movs r0, #0
	movs r2, #0x80
	lsls r2, r2, #9
	bl sub_0803E058
	ldrb r0, [r7, #0x19]
	mov r1, r8
	ands r0, r1
	ldrb r1, [r6]
	ands r4, r1
	orrs r4, r0
	strb r4, [r6]
	ldr r0, [r7, #0x14]
	bl sub_080009E4
	lsls r0, r0, #5
	ldr r1, _0804D890 @ =0xFFFF0000
	adds r3, r0, r1
	ldr r2, [r7, #0x40]
	ldrb r1, [r6]
	movs r0, #0x40
	ands r0, r1
	adds r1, r2, r3
	cmp r0, #0
	beq _0804D88C
	subs r1, r2, r3
_0804D88C:
	str r1, [r7, #0x40]
	b _0804D8B0
	.align 2, 0
_0804D890: .4byte 0xFFFF0000
_0804D894:
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	mov r0, sl
	adds r0, #2
	mov r1, sb
	strb r0, [r1]
	adds r0, r7, #0
	bl sub_0803B9D0
_0804D8B0:
	mov r0, sl
	adds r0, #1
	mov r1, sb
	strb r0, [r1]
_0804D8B8:
	adds r0, r7, #0
	bl sub_0803AC40
	ldr r0, [sp, #8]
	str r0, [r7, #0x40]
	adds r0, r7, #0
	adds r0, #0x65
	mov r1, sl
	strb r1, [r0]
	adds r2, r7, #0
	adds r2, #0x58
	ldr r0, [sp, #0xc]
	lsls r3, r0, #6
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804D8F0
sub_0804D8F0: @ 0x0804D8F0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r7, r1, #0
	adds r0, #0x5c
	movs r1, #0x11
	strb r1, [r0]
	movs r2, #0
	subs r0, #0x1a
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x78
	ble _0804D910
	movs r2, #1
_0804D910:
	adds r4, r5, #0
	adds r4, #0x58
	lsls r2, r2, #6
	ldrb r1, [r4]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
	ldr r1, _0804D970 @ =0x081CBE0C
	ldr r6, _0804D974 @ =0x08209AE0
	ldr r0, _0804D978 @ =0x0820F160
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_0806E0D0
	mov r8, r4
	adds r1, r5, #0
	adds r1, #0x2c
	cmp r0, #0
	bne _0804D942
	movs r0, #5
	strb r0, [r1]
_0804D942:
	ldrb r0, [r1]
	strb r0, [r5, #0x1b]
	ldrb r3, [r5, #0x1b]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r4, r2, #0
	cmp r7, #0
	bne _0804D980
	adds r0, r5, #0
	adds r0, #0x65
	strb r7, [r0]
	ldr r1, _0804D97C @ =0x08525564
	lsls r2, r3, #0x18
	asrs r2, r2, #8
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_0803CC70
	b _0804D996
	.align 2, 0
_0804D970: .4byte 0x081CBE0C
_0804D974: .4byte 0x08209AE0
_0804D978: .4byte 0x0820F160
_0804D97C: .4byte 0x08525564
_0804D980:
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #5
	strb r0, [r1]
	ldr r1, _0804D9D4 @ =0x08525574
	lsls r2, r3, #0x18
	asrs r2, r2, #8
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_0803CC70
_0804D996:
	movs r0, #1
	bl sub_0803E654
	strb r0, [r5, #0x18]
	movs r0, #1
	bl sub_0803E654
	strb r0, [r5, #0x19]
	movs r0, #0x1f
	ldrb r1, [r5, #0x18]
	ands r1, r0
	mov r0, r8
	ldrb r2, [r0]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
	ldrb r0, [r4]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4]
	ldr r0, _0804D9D8 @ =sub_0804D794
	str r0, [r5, #4]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804D9D4: .4byte 0x08525574
_0804D9D8: .4byte sub_0804D794

	thumb_func_start sub_0804D9DC
sub_0804D9DC: @ 0x0804D9DC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	movs r0, #0x30
	ldrsh r1, [r6, r0]
	adds r0, r6, #0
	bl sub_0804D8F0
	ldr r4, _0804DA54 @ =gEwramData
	ldr r0, [r4]
	ldr r1, _0804DA58 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x42
	ldrh r1, [r1]
	subs r1, #0x14
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, #0x46
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r0, #0x28
	str r0, [sp]
	adds r0, r6, #0
	movs r3, #0x28
	bl sub_08068AD4
	adds r7, r0, #0
	cmp r7, #0
	beq _0804DA64
	ldr r1, [r4]
	ldr r0, _0804DA5C @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, _0804DA60 @ =0x00000101
	orrs r0, r2
	str r0, [r1]
	movs r0, #0
	bl sub_0800C5A8
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r6, #0x14]
	movs r0, #0xa
	strb r0, [r6, #0xa]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	movs r1, #0x10
	cmp r0, #0
	beq _0804DA4A
	movs r1, #0x20
_0804DA4A:
	movs r0, #1
	bl SetPlayerInput
	b _0804DAA8
	.align 2, 0
_0804DA54: .4byte gEwramData
_0804DA58: .4byte 0x00013110
_0804DA5C: .4byte 0x0000042C
_0804DA60: .4byte 0x00000101
_0804DA64:
	adds r0, r6, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r5, [r0, r1]
	ldr r1, [r4]
	ldr r2, _0804DAB0 @ =0x0000A094
	adds r1, r1, r2
	movs r3, #6
	ldrsh r0, [r1, r3]
	adds r5, r5, r0
	adds r0, r6, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r4, [r0, r2]
	movs r3, #0xa
	ldrsh r0, [r1, r3]
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
	str r7, [r6, #0x14]
	strb r7, [r6, #0xa]
_0804DAA8:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804DAB0: .4byte 0x0000A094

	thumb_func_start sub_0804DAB4
sub_0804DAB4: @ 0x0804DAB4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r4, _0804DB2C @ =gEwramData
	ldr r0, _0804DB30 @ =0x00013110
	mov r8, r0
	movs r1, #0x20
	rsbs r1, r1, #0
	movs r3, #0x98
	lsls r3, r3, #1
	movs r0, #0xd0
	str r0, [sp]
	adds r0, r7, #0
	movs r2, #0
	bl sub_08068AD4
	movs r3, #0
	cmp r0, #0
	bne _0804DAE0
	movs r3, #1
_0804DAE0:
	adds r2, r7, #0
	adds r2, #0x58
	lsls r3, r3, #5
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	adds r3, r7, #0
	adds r3, #0x59
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	adds r5, r2, #0
	adds r6, r3, #0
	cmp r0, #0
	bne _0804DB08
	movs r0, #0x63
	strb r0, [r7, #0xa]
_0804DB08:
	ldrb r0, [r7, #0xa]
	cmp r0, #9
	bhi _0804DB34
	ldr r0, [r4]
	add r0, r8
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x42
	ldrh r1, [r1]
	subs r1, #0x14
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, #0x46
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r0, #2
	b _0804DB4E
	.align 2, 0
_0804DB2C: .4byte gEwramData
_0804DB30: .4byte 0x00013110
_0804DB34:
	ldr r0, [r4]
	add r0, r8
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x42
	ldrh r1, [r1]
	subs r1, #0x14
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, #0x46
	movs r4, #0
	ldrsh r2, [r0, r4]
	movs r0, #0x28
_0804DB4E:
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0x28
	bl sub_08068AD4
	adds r4, r0, #0
	ldrb r0, [r7, #0xa]
	cmp r0, #2
	bne _0804DB62
	b _0804DC74
_0804DB62:
	cmp r0, #2
	bgt _0804DB70
	cmp r0, #0
	beq _0804DB8A
	cmp r0, #1
	beq _0804DC08
	b _0804DD6C
_0804DB70:
	cmp r0, #0xb
	bne _0804DB76
	b _0804DCB8
_0804DB76:
	cmp r0, #0xb
	bgt _0804DB82
	cmp r0, #0xa
	bne _0804DB80
	b _0804DC8A
_0804DB80:
	b _0804DD6C
_0804DB82:
	cmp r0, #0x63
	bne _0804DB88
	b _0804DD40
_0804DB88:
	b _0804DD6C
_0804DB8A:
	cmp r4, #0
	bne _0804DB90
	b _0804DD6C
_0804DB90:
	ldrb r0, [r5]
	movs r1, #0x40
	adds r2, r1, #0
	ands r2, r0
	ldr r5, _0804DBF0 @ =gEwramData
	ldr r3, [r5]
	ldr r4, _0804DBF4 @ =0x00013110
	adds r0, r3, r4
	ldr r4, [r0]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	ands r1, r0
	cmp r2, r1
	bne _0804DBB0
	b _0804DD6C
_0804DBB0:
	ldr r1, _0804DBF8 @ =0x00013260
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0804DBC2
	b _0804DD6C
_0804DBC2:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	beq _0804DBD0
	b _0804DD6C
_0804DBD0:
	movs r0, #1
	movs r1, #0
	bl SetPlayerInput
	ldr r1, [r5]
	ldr r2, _0804DBFC @ =0x0000042C
	adds r1, r1, r2
	ldr r0, [r1]
	ldr r2, _0804DC00 @ =0x00000101
	orrs r0, r2
	str r0, [r1]
	movs r0, #0
	bl sub_0800C5A8
	ldr r0, _0804DC04 @ =0x00000115
	b _0804DCAC
	.align 2, 0
_0804DBF0: .4byte gEwramData
_0804DBF4: .4byte 0x00013110
_0804DBF8: .4byte 0x00013260
_0804DBFC: .4byte 0x0000042C
_0804DC00: .4byte 0x00000101
_0804DC04: .4byte 0x00000115
_0804DC08:
	movs r0, #1
	movs r1, #0
	bl SetPlayerInput
	ldr r0, [r7, #0x14]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r7, #0x14]
	ldr r1, _0804DC68 @ =0x00003FFF
	cmp r0, r1
	bgt _0804DC22
	b _0804DD6C
_0804DC22:
	adds r0, r7, #0
	adds r0, #0x42
	movs r4, #0
	ldrsh r5, [r0, r4]
	ldr r0, _0804DC6C @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0804DC70 @ =0x0000A094
	adds r1, r1, r0
	movs r2, #6
	ldrsh r0, [r1, r2]
	adds r5, r5, r0
	adds r0, r7, #0
	adds r0, #0x46
	movs r3, #0
	ldrsh r4, [r0, r3]
	movs r2, #0xa
	ldrsh r0, [r1, r2]
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
	b _0804DCB0
	.align 2, 0
_0804DC68: .4byte 0x00003FFF
_0804DC6C: .4byte gEwramData
_0804DC70: .4byte 0x0000A094
_0804DC74:
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	movs r1, #0x20
	cmp r0, #0
	beq _0804DC82
	movs r1, #0x10
_0804DC82:
	movs r0, #1
	bl SetPlayerInput
	b _0804DD6C
_0804DC8A:
	movs r0, #0
	bl sub_0800C5A8
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	movs r1, #0x10
	cmp r0, #0
	beq _0804DC9E
	movs r1, #0x20
_0804DC9E:
	movs r0, #1
	bl SetPlayerInput
	cmp r4, #0
	bne _0804DD6C
	movs r0, #0x8a
	lsls r0, r0, #1
_0804DCAC:
	bl sub_080D7910
_0804DCB0:
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	b _0804DD6C
_0804DCB8:
	movs r0, #1
	movs r1, #0
	bl SetPlayerInput
	ldr r0, [r7, #0x14]
	ldr r3, _0804DD2C @ =0xFFFFFE60
	adds r0, r0, r3
	str r0, [r7, #0x14]
	cmp r0, #0
	bgt _0804DD6C
	movs r6, #0
	str r6, [r7, #0x14]
	ldr r4, _0804DD30 @ =gEwramData
	ldr r1, [r4]
	ldr r0, _0804DD34 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, _0804DD38 @ =0xFFFFFEFE
	ands r0, r2
	str r0, [r1]
	movs r0, #1
	bl sub_0800C5A8
	adds r0, r7, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r5, [r0, r1]
	ldr r1, [r4]
	ldr r2, _0804DD3C @ =0x0000A094
	adds r1, r1, r2
	movs r3, #6
	ldrsh r0, [r1, r3]
	adds r5, r5, r0
	adds r0, r7, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r4, [r0, r2]
	movs r3, #0xa
	ldrsh r0, [r1, r3]
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
	str r6, [r7, #0x14]
	strb r6, [r7, #0xa]
	b _0804DD6C
	.align 2, 0
_0804DD2C: .4byte 0xFFFFFE60
_0804DD30: .4byte gEwramData
_0804DD34: .4byte 0x0000042C
_0804DD38: .4byte 0xFFFFFEFE
_0804DD3C: .4byte 0x0000A094
_0804DD40:
	movs r0, #1
	movs r1, #0
	bl SetPlayerInput
	ldr r0, _0804DD78 @ =gEwramData
	ldr r1, [r0]
	ldr r4, _0804DD7C @ =0x0000042C
	adds r1, r1, r4
	ldr r0, [r1]
	ldr r2, _0804DD80 @ =0xFFFFFEFE
	ands r0, r2
	str r0, [r1]
	ldrb r0, [r6]
	movs r1, #8
	orrs r0, r1
	strb r0, [r6]
	ldrb r0, [r7, #0x18]
	bl sub_0803E6BC
	ldrb r0, [r7, #0x19]
	bl sub_0803E6BC
_0804DD6C:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804DD78: .4byte gEwramData
_0804DD7C: .4byte 0x0000042C
_0804DD80: .4byte 0xFFFFFEFE

	thumb_func_start sub_0804DD84
sub_0804DD84: @ 0x0804DD84
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _0804DDCC @ =gEwramData
	ldr r3, [r0]
	ldr r5, _0804DDD0 @ =0x0000A094
	adds r2, r3, r5
	movs r7, #6
	ldrsh r0, [r2, r7]
	adds r6, r1, r0
	adds r0, r4, #0
	adds r0, #0x46
	movs r5, #0
	ldrsh r1, [r0, r5]
	movs r7, #0xa
	ldrsh r0, [r2, r7]
	adds r5, r1, r0
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0804DDD4
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0x18]
	bl sub_0803E6BC
	ldrb r0, [r4, #0x19]
	bl sub_0803E6BC
	b _0804DE54
	.align 2, 0
_0804DDCC: .4byte gEwramData
_0804DDD0: .4byte 0x0000A094
_0804DDD4:
	ldrh r1, [r4, #0x30]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x15
	lsls r0, r0, #2
	movs r7, #0xd1
	lsls r7, r7, #2
	adds r2, r3, r7
	adds r2, r2, r0
	movs r0, #0x1f
	ands r0, r1
	movs r1, #1
	lsls r1, r0
	ldr r2, [r2]
	ands r2, r1
	cmp r2, #0
	beq _0804DE28
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	cmp r0, r1
	ble _0804DE08
	str r1, [r4, #0x14]
_0804DE08:
	adds r1, r5, #0
	subs r1, #8
	adds r0, r6, #0
	bl sub_08002248
	adds r1, r5, #0
	subs r1, #0x18
	adds r0, r6, #0
	bl sub_08002248
	adds r1, r5, #0
	subs r1, #0x28
	adds r0, r6, #0
	bl sub_08002248
	b _0804DE54
_0804DE28:
	ldr r0, [r4, #0x14]
	ldr r7, _0804DE5C @ =0xFFFFFC00
	adds r0, r0, r7
	str r0, [r4, #0x14]
	cmp r0, #0
	bge _0804DE36
	str r2, [r4, #0x14]
_0804DE36:
	adds r1, r5, #0
	subs r1, #8
	adds r0, r6, #0
	bl sub_08002200
	adds r1, r5, #0
	subs r1, #0x18
	adds r0, r6, #0
	bl sub_08002200
	adds r1, r5, #0
	subs r1, #0x28
	adds r0, r6, #0
	bl sub_08002200
_0804DE54:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804DE5C: .4byte 0xFFFFFC00

	thumb_func_start sub_0804DE60
sub_0804DE60: @ 0x0804DE60
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl sub_0804D8F0
	ldr r0, _0804DE9C @ =gEwramData
	ldr r2, [r0]
	ldrh r1, [r4, #0x30]
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
	beq _0804DE94
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r4, #0x14]
_0804DE94:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804DE9C: .4byte gEwramData

	thumb_func_start sub_0804DEA0
sub_0804DEA0: @ 0x0804DEA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	movs r0, #0x65
	adds r0, r0, r5
	mov r8, r0
	ldrb r1, [r0]
	mov sl, r1
	adds r7, r5, #0
	adds r7, #0x46
	ldrh r3, [r7]
	mov sb, r3
	ldr r0, [r5, #0x14]
	cmp r0, #0x2f
	ble _0804DED8
	ldr r2, _0804DED0 @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _0804DED4 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	b _0804DF28
	.align 2, 0
_0804DED0: .4byte gUnk_03002CB0
_0804DED4: .4byte 0x00007FFF
_0804DED8:
	cmp r0, #0
	beq _0804DF18
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
	ldr r2, _0804DF38 @ =gUnk_03002CB0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldrh r0, [r7]
	subs r0, #0x30
	strh r0, [r7]
	adds r0, r5, #0
	bl sub_0803AC40
	ldrb r0, [r6]
	ands r4, r0
	strb r4, [r6]
	ldr r0, [r5, #0x14]
	mov r1, sb
	subs r0, r1, r0
	strh r0, [r7]
_0804DF18:
	mov r0, sl
	mov r3, r8
	strb r0, [r3]
	adds r0, r5, #0
	bl sub_0803AC40
	mov r1, sb
	strh r1, [r7]
_0804DF28:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804DF38: .4byte gUnk_03002CB0

	thumb_func_start sub_0804DF3C
sub_0804DF3C: @ 0x0804DF3C
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x16
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	subs r0, #0x57
	ands r0, r1
	strb r0, [r2]
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0x78
	ble _0804DF64
	movs r1, #1
_0804DF64:
	strb r1, [r4, #0x1a]
	ldr r0, _0804DF9C @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	movs r0, #6
	strb r0, [r4, #0x1b]
	ldr r1, _0804DFA0 @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803B924
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x3f
	strb r0, [r1]
	ldr r2, _0804DFA4 @ =gUnk_03002CB0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0804DFA8 @ =sub_0804DEA0
	str r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804DF9C: .4byte 0x081C15F4
_0804DFA0: .4byte 0x0820ED60
_0804DFA4: .4byte gUnk_03002CB0
_0804DFA8: .4byte sub_0804DEA0

	thumb_func_start sub_0804DFAC
sub_0804DFAC: @ 0x0804DFAC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #1
	bgt _0804DFE4
	ldr r0, _0804DFDC @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0804DFE0 @ =0x0000037E
	adds r0, r0, r2
	ldrh r0, [r0]
	movs r3, #0x32
	ldrsh r1, [r6, r3]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0804DFE4
	adds r0, r6, #0
	bl EntityDelete
	b _0804E0F0
	.align 2, 0
_0804DFDC: .4byte gEwramData
_0804DFE0: .4byte 0x0000037E
_0804DFE4:
	adds r0, r6, #0
	bl sub_0804DF3C
	ldr r1, _0804E078 @ =gDisplayRegisters
	adds r2, r1, #0
	adds r2, #0x42
	movs r5, #0
	movs r0, #0x3f
	strb r0, [r2]
	adds r1, #0x43
	movs r0, #0x2f
	strb r0, [r1]
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	cmp r0, #7
	bne _0804E018
	movs r0, #9
	strb r0, [r6, #0x1b]
	adds r3, r6, #0
	adds r3, #0x5a
	movs r2, #0x48
	ldrb r1, [r3]
	subs r0, #0x82
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
_0804E018:
	ldr r4, _0804E07C @ =gEwramData
	ldr r0, [r4]
	ldr r2, _0804E080 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x42
	ldrh r1, [r1]
	subs r1, #0x1c
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, #0x46
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r0, #0x22
	str r0, [sp]
	adds r0, r6, #0
	movs r3, #0x38
	bl sub_08068AD4
	adds r7, r0, #0
	cmp r7, #0
	beq _0804E092
	movs r0, #0x30
	str r0, [r6, #0x14]
	movs r0, #0xa
	strb r0, [r6, #0xa]
	movs r0, #1
	movs r1, #0
	bl SetPlayerInput
	bl sub_080235C8
	ldr r0, [r4]
	ldr r2, _0804E080 @ =0x00013110
	adds r1, r0, r2
	ldr r2, [r1]
	adds r0, r2, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0x77
	bgt _0804E084
	ldr r0, [r2, #0x48]
	cmp r0, #0
	bge _0804E0F0
	b _0804E08A
	.align 2, 0
_0804E078: .4byte gDisplayRegisters
_0804E07C: .4byte gEwramData
_0804E080: .4byte 0x00013110
_0804E084:
	ldr r0, [r2, #0x48]
	cmp r0, #0
	ble _0804E0F0
_0804E08A:
	str r5, [r2, #0x48]
	ldr r0, [r1]
	str r5, [r0, #0x50]
	b _0804E0F0
_0804E092:
	adds r0, r6, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r5, [r0, r1]
	ldr r1, [r4]
	ldr r2, _0804E0E4 @ =0x0000A094
	adds r1, r1, r2
	movs r3, #6
	ldrsh r0, [r1, r3]
	adds r5, r5, r0
	adds r0, r6, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r4, [r0, r2]
	movs r3, #0xa
	ldrsh r0, [r1, r3]
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
	str r7, [r6, #0x14]
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #1
	beq _0804E0E8
	cmp r0, #3
	beq _0804E0EC
	strb r7, [r6, #0xa]
	b _0804E0F0
	.align 2, 0
_0804E0E4: .4byte 0x0000A094
_0804E0E8:
	movs r0, #0x14
	b _0804E0EE
_0804E0EC:
	movs r0, #0x63
_0804E0EE:
	strb r0, [r6, #0xa]
_0804E0F0:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0804E0F8
sub_0804E0F8: @ 0x0804E0F8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _0804E148 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804E14C @ =0x00013110
	adds r0, r0, r1
	ldr r5, [r0]
	movs r1, #0x20
	rsbs r1, r1, #0
	movs r3, #0x98
	lsls r3, r3, #1
	movs r0, #0xd0
	str r0, [sp]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08068AD4
	movs r3, #0
	cmp r0, #0
	bne _0804E124
	movs r3, #1
_0804E124:
	adds r2, r6, #0
	adds r2, #0x58
	lsls r3, r3, #5
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	ldrb r0, [r6, #0xa]
	cmp r0, #0x15
	bls _0804E13E
	b _0804E488
_0804E13E:
	lsls r0, r0, #2
	ldr r1, _0804E150 @ =_0804E154
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804E148: .4byte gEwramData
_0804E14C: .4byte 0x00013110
_0804E150: .4byte _0804E154
_0804E154: @ jump table
	.4byte _0804E1AC @ case 0
	.4byte _0804E488 @ case 1
	.4byte _0804E360 @ case 2
	.4byte _0804E488 @ case 3
	.4byte _0804E488 @ case 4
	.4byte _0804E488 @ case 5
	.4byte _0804E488 @ case 6
	.4byte _0804E488 @ case 7
	.4byte _0804E488 @ case 8
	.4byte _0804E488 @ case 9
	.4byte _0804E372 @ case 10
	.4byte _0804E3FC @ case 11
	.4byte _0804E488 @ case 12
	.4byte _0804E488 @ case 13
	.4byte _0804E488 @ case 14
	.4byte _0804E488 @ case 15
	.4byte _0804E488 @ case 16
	.4byte _0804E488 @ case 17
	.4byte _0804E488 @ case 18
	.4byte _0804E488 @ case 19
	.4byte _0804E44C @ case 20
	.4byte _0804E308 @ case 21
_0804E1AC:
	movs r2, #0x32
	ldrsh r0, [r6, r2]
	cmp r0, #7
	bne _0804E1F0
	ldr r0, [r6, #0x14]
	cmp r0, #0
	bne _0804E1F0
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0804E1F0
	movs r0, #0x80
	lsls r0, r0, #0xc
	bl sub_0802D5EC
	ldr r4, [r6, #0x40]
	adds r4, r4, r0
	bl RandomNumberGenerator
	movs r1, #0x30
	bl __umodsi3
	subs r0, #0x30
	lsls r0, r0, #0x10
	ldr r1, [r6, #0x44]
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x10
	movs r3, #9
	bl sub_08045CEC
_0804E1F0:
	adds r0, r6, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r2, [r0, r3]
	adds r0, r5, #0
	adds r0, #0x42
	movs r4, #0
	ldrsh r0, [r0, r4]
	subs r0, r2, r0
	adds r0, #0x28
	cmp r0, #0x4f
	bhi _0804E284
	ldr r0, _0804E278 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804E27C @ =0x0000A094
	adds r0, r0, r1
	movs r3, #6
	ldrsh r5, [r0, r3]
	adds r5, r2, r5
	adds r1, r6, #0
	adds r1, #0x46
	movs r2, #0
	ldrsh r4, [r1, r2]
	movs r3, #0xa
	ldrsh r0, [r0, r3]
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
	ldr r0, [r6, #0x14]
	cmp r0, #0
	bne _0804E266
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r3, #0x88
	lsls r3, r3, #1
	movs r0, #0xc0
	str r0, [sp]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _0804E266
	ldr r0, _0804E280 @ =0x00000113
	bl sub_080D7910
_0804E266:
	ldr r0, [r6, #0x14]
	adds r0, #2
	str r0, [r6, #0x14]
	cmp r0, #0x2f
	bgt _0804E272
	b _0804E488
_0804E272:
	movs r0, #0x30
	str r0, [r6, #0x14]
	b _0804E488
	.align 2, 0
_0804E278: .4byte gEwramData
_0804E27C: .4byte 0x0000A094
_0804E280: .4byte 0x00000113
_0804E284:
	ldr r3, [r6, #0x14]
	cmp r3, #2
	bgt _0804E2D8
	ldr r0, _0804E2D0 @ =gEwramData
	ldr r1, [r0]
	ldr r4, _0804E2D4 @ =0x0000A094
	adds r1, r1, r4
	movs r4, #6
	ldrsh r0, [r1, r4]
	adds r5, r2, r0
	adds r0, r6, #0
	adds r0, #0x46
	movs r4, #0
	ldrsh r2, [r0, r4]
	movs r4, #0xa
	ldrsh r0, [r1, r4]
	adds r4, r2, r0
	cmp r3, #0
	beq _0804E2C8
	adds r1, r4, #0
	subs r1, #8
	adds r0, r5, #0
	bl sub_08002200
	adds r1, r4, #0
	subs r1, #0x18
	adds r0, r5, #0
	bl sub_08002200
	adds r1, r4, #0
	subs r1, #0x28
	adds r0, r5, #0
	bl sub_08002200
_0804E2C8:
	movs r0, #0
	str r0, [r6, #0x14]
	b _0804E488
	.align 2, 0
_0804E2D0: .4byte gEwramData
_0804E2D4: .4byte 0x0000A094
_0804E2D8:
	cmp r3, #0x30
	bne _0804E2FA
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r3, #0x88
	lsls r3, r3, #1
	movs r0, #0xc0
	str r0, [sp]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _0804E2FA
	ldr r0, _0804E304 @ =0x00000113
	bl sub_080D7910
_0804E2FA:
	ldr r0, [r6, #0x14]
	subs r0, #2
	str r0, [r6, #0x14]
	b _0804E488
	.align 2, 0
_0804E304: .4byte 0x00000113
_0804E308:
	ldr r0, [r6, #0x14]
	adds r0, #1
	str r0, [r6, #0x14]
	cmp r0, #0x2f
	bgt _0804E314
	b _0804E488
_0804E314:
	adds r0, r6, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r5, [r0, r1]
	ldr r0, _0804E358 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _0804E35C @ =0x0000A094
	adds r1, r1, r2
	movs r3, #6
	ldrsh r0, [r1, r3]
	adds r5, r5, r0
	adds r0, r6, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r4, [r0, r2]
	movs r3, #0xa
	ldrsh r0, [r1, r3]
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
	b _0804E482
	.align 2, 0
_0804E358: .4byte gEwramData
_0804E35C: .4byte 0x0000A094
_0804E360:
	ldrb r0, [r6, #0x1a]
	movs r1, #0x20
	cmp r0, #0
	beq _0804E36A
	movs r1, #0x10
_0804E36A:
	movs r0, #1
	bl SetPlayerInput
	b _0804E488
_0804E372:
	ldrb r0, [r6, #0x1a]
	movs r1, #0x10
	cmp r0, #0
	beq _0804E37C
	movs r1, #0x20
_0804E37C:
	movs r0, #1
	bl SetPlayerInput
	ldr r4, _0804E3F0 @ =gEwramData
	ldr r0, [r4]
	ldr r1, _0804E3F4 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x42
	ldrh r1, [r1]
	subs r1, #0x1c
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, #0x46
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r0, #0x22
	str r0, [sp]
	adds r0, r6, #0
	movs r3, #0x38
	bl sub_08068AD4
	cmp r0, #0
	bne _0804E488
	adds r0, r6, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r5, [r0, r1]
	ldr r1, [r4]
	ldr r2, _0804E3F8 @ =0x0000A094
	adds r1, r1, r2
	movs r3, #6
	ldrsh r0, [r1, r3]
	adds r5, r5, r0
	adds r0, r6, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r4, [r0, r2]
	movs r3, #0xa
	ldrsh r0, [r1, r3]
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
	b _0804E47C
	.align 2, 0
_0804E3F0: .4byte gEwramData
_0804E3F4: .4byte 0x00013110
_0804E3F8: .4byte 0x0000A094
_0804E3FC:
	movs r0, #1
	movs r1, #0
	bl SetPlayerInput
	ldr r0, [r6, #0x14]
	subs r0, #1
	str r0, [r6, #0x14]
	cmp r0, #0
	bne _0804E488
	ldr r0, _0804E434 @ =gEwramData
	ldr r1, [r0]
	ldr r4, _0804E438 @ =0x0000042C
	adds r1, r1, r4
	ldr r0, [r1]
	ldr r2, _0804E43C @ =0xFFFFFEFE
	ands r0, r2
	str r0, [r1]
	ldr r2, _0804E440 @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _0804E444 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #1
	ble _0804E448
	movs r0, #0x63
	b _0804E486
	.align 2, 0
_0804E434: .4byte gEwramData
_0804E438: .4byte 0x0000042C
_0804E43C: .4byte 0xFFFFFEFE
_0804E440: .4byte gUnk_03002CB0
_0804E444: .4byte 0x00007FFF
_0804E448:
	movs r0, #0x14
	b _0804E486
_0804E44C:
	ldr r0, _0804E490 @ =gEwramData
	ldr r2, [r0]
	ldr r3, _0804E494 @ =0x0000037E
	adds r0, r2, r3
	ldrh r0, [r0]
	movs r4, #0x32
	ldrsh r1, [r6, r4]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0804E488
	ldr r1, _0804E498 @ =0x0000042C
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0804E47C
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_08013F6C
_0804E47C:
	ldr r0, _0804E49C @ =0x00000113
	bl sub_080D7910
_0804E482:
	ldrb r0, [r6, #0xa]
	adds r0, #1
_0804E486:
	strb r0, [r6, #0xa]
_0804E488:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804E490: .4byte gEwramData
_0804E494: .4byte 0x0000037E
_0804E498: .4byte 0x0000042C
_0804E49C: .4byte 0x00000113

	thumb_func_start sub_0804E4A0
sub_0804E4A0: @ 0x0804E4A0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	bl sub_0804DF3C
	ldr r1, _0804E510 @ =gDisplayRegisters
	adds r2, r1, #0
	adds r2, #0x42
	movs r7, #0
	movs r0, #0x3f
	strb r0, [r2]
	adds r1, #0x43
	movs r0, #0x2f
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r5, [r0, r1]
	ldr r0, _0804E514 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _0804E518 @ =0x0000A094
	adds r1, r1, r2
	movs r2, #6
	ldrsh r0, [r1, r2]
	adds r5, r5, r0
	adds r0, r6, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r4, [r0, r2]
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
	str r7, [r6, #0x14]
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #1
	beq _0804E51C
	cmp r0, #3
	beq _0804E520
	strb r7, [r6, #0xa]
	b _0804E524
	.align 2, 0
_0804E510: .4byte gDisplayRegisters
_0804E514: .4byte gEwramData
_0804E518: .4byte 0x0000A094
_0804E51C:
	movs r0, #0x14
	b _0804E522
_0804E520:
	movs r0, #0x63
_0804E522:
	strb r0, [r6, #0xa]
_0804E524:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804E52C
sub_0804E52C: @ 0x0804E52C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	movs r1, #0x20
	rsbs r1, r1, #0
	movs r3, #0x98
	lsls r3, r3, #1
	movs r0, #0xd0
	str r0, [sp]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08068AD4
	movs r2, #0
	cmp r0, #0
	bne _0804E552
	movs r2, #1
_0804E552:
	adds r0, r6, #0
	adds r0, #0x58
	lsls r2, r2, #5
	ldrb r1, [r0]
	movs r3, #0x21
	rsbs r3, r3, #0
	ands r3, r1
	orrs r3, r2
	strb r3, [r0]
	ldrb r1, [r6, #0xa]
	mov r8, r0
	cmp r1, #1
	bne _0804E56E
	b _0804E670
_0804E56E:
	cmp r1, #1
	bgt _0804E578
	cmp r1, #0
	beq _0804E586
	b _0804E762
_0804E578:
	cmp r1, #2
	bne _0804E57E
	b _0804E694
_0804E57E:
	cmp r1, #3
	bne _0804E584
	b _0804E750
_0804E584:
	b _0804E762
_0804E586:
	ldr r0, _0804E5F8 @ =gEwramData
	ldr r4, [r0]
	ldr r1, _0804E5FC @ =0x00013220
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0804E596
	b _0804E762
_0804E596:
	ldr r2, _0804E600 @ =0x000004CC
	adds r0, r4, r2
	ldrb r1, [r0]
	movs r5, #0x40
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0804E68E
	adds r2, r6, #0
	adds r2, #0x42
	movs r7, #0
	ldrsh r1, [r2, r7]
	ldr r7, _0804E604 @ =0x00013110
	adds r0, r4, r7
	ldr r0, [r0]
	adds r0, #0x42
	movs r4, #0
	ldrsh r0, [r0, r4]
	subs r1, r1, r0
	adds r1, #0x18
	adds r4, r2, #0
	cmp r1, #0x2f
	bhi _0804E5D4
	ands r3, r5
	movs r1, #0x10
	cmp r3, #0
	beq _0804E5CE
	movs r1, #0x20
_0804E5CE:
	movs r0, #1
	bl SetPlayerInput
_0804E5D4:
	movs r7, #0
	ldrsh r2, [r4, r7]
	ldr r0, _0804E5F8 @ =gEwramData
	ldr r3, [r0]
	ldr r1, _0804E604 @ =0x00013110
	adds r0, r3, r1
	ldr r0, [r0]
	adds r0, #0x42
	movs r4, #0
	ldrsh r0, [r0, r4]
	subs r0, r2, r0
	adds r0, #0x13
	cmp r0, #0x26
	bls _0804E608
	movs r0, #0
	strb r0, [r6, #0xd]
	b _0804E762
	.align 2, 0
_0804E5F8: .4byte gEwramData
_0804E5FC: .4byte 0x00013220
_0804E600: .4byte 0x000004CC
_0804E604: .4byte 0x00013110
_0804E608:
	ldr r7, _0804E668 @ =0x000004CC
	adds r0, r3, r7
	ldrb r1, [r0]
	movs r5, #0x40
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _0804E61A
	b _0804E762
_0804E61A:
	ldr r1, _0804E66C @ =0x00013114
	adds r0, r3, r1
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x42
	movs r7, #0
	ldrsh r0, [r4, r7]
	subs r0, r2, r0
	adds r0, #0x13
	cmp r0, #0x26
	bls _0804E632
	b _0804E762
_0804E632:
	adds r1, #4
	adds r0, r3, r1
	ldr r0, [r0]
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r7, #0
	ldrsh r0, [r4, r7]
	cmp r1, r0
	beq _0804E648
	b _0804E762
_0804E648:
	movs r0, #4
	strb r0, [r6, #0xd]
	mov r0, r8
	ldrb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	movs r1, #0x10
	cmp r0, #0
	beq _0804E65C
	movs r1, #0x20
_0804E65C:
	movs r0, #1
	bl SetPlayerInput
	movs r0, #1
	strb r0, [r6, #0xa]
	b _0804E762
	.align 2, 0
_0804E668: .4byte 0x000004CC
_0804E66C: .4byte 0x00013114
_0804E670:
	movs r0, #0x40
	ands r3, r0
	movs r1, #0x10
	cmp r3, #0
	beq _0804E67C
	movs r1, #0x20
_0804E67C:
	movs r0, #1
	bl SetPlayerInput
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _0804E68E
	subs r0, #1
	strb r0, [r6, #0xd]
	b _0804E762
_0804E68E:
	movs r0, #2
	strb r0, [r6, #0xa]
	b _0804E762
_0804E694:
	ldr r0, _0804E738 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804E73C @ =0x000004CC
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x40
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0804E6B8
	ands r3, r2
	movs r1, #0x10
	cmp r3, #0
	beq _0804E6B2
	movs r1, #0x20
_0804E6B2:
	movs r0, #1
	bl SetPlayerInput
_0804E6B8:
	ldr r0, [r6, #0x14]
	cmp r0, #0
	bne _0804E706
	adds r0, r6, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r5, [r0, r2]
	ldr r0, _0804E738 @ =gEwramData
	ldr r1, [r0]
	ldr r4, _0804E740 @ =0x0000A094
	adds r1, r1, r4
	movs r7, #6
	ldrsh r0, [r1, r7]
	adds r5, r5, r0
	adds r0, r6, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r4, [r0, r2]
	movs r7, #0xa
	ldrsh r0, [r1, r7]
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
	ldr r0, _0804E744 @ =0x00000113
	bl sub_080D7910
_0804E706:
	ldr r0, [r6, #0x14]
	adds r0, #1
	str r0, [r6, #0x14]
	cmp r0, #0x2f
	ble _0804E762
	ldr r0, _0804E738 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0804E748 @ =0x0000042C
	adds r3, r2, r0
	ldr r0, [r3]
	ldr r1, _0804E74C @ =0xFFFFFEFE
	ands r0, r1
	str r0, [r3]
	ldr r1, _0804E73C @ =0x000004CC
	adds r2, r2, r1
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0804E762
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	b _0804E762
	.align 2, 0
_0804E738: .4byte gEwramData
_0804E73C: .4byte 0x000004CC
_0804E740: .4byte 0x0000A094
_0804E744: .4byte 0x00000113
_0804E748: .4byte 0x0000042C
_0804E74C: .4byte 0xFFFFFEFE
_0804E750:
	movs r0, #0x40
	ands r3, r0
	movs r1, #0x10
	cmp r3, #0
	beq _0804E75C
	movs r1, #0x20
_0804E75C:
	movs r0, #1
	bl SetPlayerInput
_0804E762:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804E770
sub_0804E770: @ 0x0804E770
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #1
	bgt _0804E7A4
	ldr r0, _0804E79C @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0804E7A0 @ =0x0000037E
	adds r0, r0, r2
	ldrh r0, [r0]
	movs r3, #0x32
	ldrsh r1, [r6, r3]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0804E7A4
	adds r0, r6, #0
	bl EntityDelete
	b _0804E8BC
	.align 2, 0
_0804E79C: .4byte gEwramData
_0804E7A0: .4byte 0x0000037E
_0804E7A4:
	adds r0, r6, #0
	bl sub_0804DF3C
	ldr r1, _0804E7E0 @ =gDisplayRegisters
	adds r2, r1, #0
	adds r2, #0x42
	movs r0, #0x3f
	strb r0, [r2]
	adds r1, #0x43
	movs r0, #0x2f
	strb r0, [r1]
	ldrb r0, [r6, #0x1a]
	cmp r0, #0
	bne _0804E7EC
	ldr r2, _0804E7E4 @ =gEwramData
	ldr r0, [r2]
	ldr r4, _0804E7E8 @ =0x00013110
	adds r0, r0, r4
	ldr r0, [r0]
	adds r0, #0x42
	movs r1, #0
	ldrsh r3, [r0, r1]
	adds r1, r6, #0
	adds r1, #0x42
	movs r4, #0
	ldrsh r0, [r1, r4]
	adds r0, #0x18
	cmp r3, r0
	ble _0804E80C
	b _0804E85E
	.align 2, 0
_0804E7E0: .4byte gDisplayRegisters
_0804E7E4: .4byte gEwramData
_0804E7E8: .4byte 0x00013110
_0804E7EC:
	ldr r2, _0804E848 @ =gEwramData
	ldr r0, [r2]
	ldr r1, _0804E84C @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x42
	movs r4, #0
	ldrsh r3, [r0, r4]
	adds r1, r6, #0
	adds r1, #0x42
	movs r4, #0
	ldrsh r0, [r1, r4]
	subs r0, #0x18
	movs r4, #0
	cmp r3, r0
	blt _0804E80E
_0804E80C:
	movs r4, #1
_0804E80E:
	cmp r4, #0
	beq _0804E85E
	movs r0, #0x30
	str r0, [r6, #0x14]
	movs r4, #0
	movs r0, #0xa
	strb r0, [r6, #0xa]
	movs r0, #1
	movs r1, #0
	bl SetPlayerInput
	bl sub_080235C8
	ldr r0, _0804E848 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804E84C @ =0x00013110
	adds r2, r0, r1
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0x77
	bgt _0804E850
	ldr r0, [r1, #0x48]
	cmp r0, #0
	bge _0804E8BC
	b _0804E856
	.align 2, 0
_0804E848: .4byte gEwramData
_0804E84C: .4byte 0x00013110
_0804E850:
	ldr r0, [r1, #0x48]
	cmp r0, #0
	ble _0804E8BC
_0804E856:
	str r4, [r1, #0x48]
	ldr r0, [r2]
	str r4, [r0, #0x50]
	b _0804E8BC
_0804E85E:
	movs r4, #0
	ldrsh r5, [r1, r4]
	ldr r1, [r2]
	ldr r0, _0804E8B0 @ =0x0000A094
	adds r1, r1, r0
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
	movs r1, #0
	str r1, [r6, #0x14]
	movs r3, #0x30
	ldrsh r0, [r6, r3]
	cmp r0, #1
	beq _0804E8B4
	cmp r0, #3
	beq _0804E8B8
	strb r1, [r6, #0xa]
	b _0804E8BC
	.align 2, 0
_0804E8B0: .4byte 0x0000A094
_0804E8B4:
	movs r0, #0x14
	b _0804E8BA
_0804E8B8:
	movs r0, #0x63
_0804E8BA:
	strb r0, [r6, #0xa]
_0804E8BC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804E8C4
sub_0804E8C4: @ 0x0804E8C4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _0804E914 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804E918 @ =0x00013110
	adds r0, r0, r1
	ldr r4, [r0]
	movs r1, #0x20
	rsbs r1, r1, #0
	movs r3, #0x98
	lsls r3, r3, #1
	movs r0, #0xd0
	str r0, [sp]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08068AD4
	movs r3, #0
	cmp r0, #0
	bne _0804E8F0
	movs r3, #1
_0804E8F0:
	adds r2, r6, #0
	adds r2, #0x58
	lsls r3, r3, #5
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	ldrb r0, [r6, #0xa]
	cmp r0, #0x15
	bls _0804E90A
	b _0804EC24
_0804E90A:
	lsls r0, r0, #2
	ldr r1, _0804E91C @ =_0804E920
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804E914: .4byte gEwramData
_0804E918: .4byte 0x00013110
_0804E91C: .4byte _0804E920
_0804E920: @ jump table
	.4byte _0804E978 @ case 0
	.4byte _0804EC24 @ case 1
	.4byte _0804EAE8 @ case 2
	.4byte _0804EC24 @ case 3
	.4byte _0804EC24 @ case 4
	.4byte _0804EC24 @ case 5
	.4byte _0804EC24 @ case 6
	.4byte _0804EC24 @ case 7
	.4byte _0804EC24 @ case 8
	.4byte _0804EC24 @ case 9
	.4byte _0804EAFA @ case 10
	.4byte _0804EBA8 @ case 11
	.4byte _0804EC24 @ case 12
	.4byte _0804EC24 @ case 13
	.4byte _0804EC24 @ case 14
	.4byte _0804EC24 @ case 15
	.4byte _0804EC24 @ case 16
	.4byte _0804EC24 @ case 17
	.4byte _0804EC24 @ case 18
	.4byte _0804EC24 @ case 19
	.4byte _0804EBE8 @ case 20
	.4byte _0804EA90 @ case 21
_0804E978:
	adds r0, r6, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	adds r0, #0x42
	movs r4, #0
	ldrsh r0, [r0, r4]
	subs r0, r2, r0
	adds r0, #0x28
	cmp r0, #0x4f
	bhi _0804EA0C
	ldr r0, _0804EA00 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804EA04 @ =0x0000A094
	adds r0, r0, r1
	movs r3, #6
	ldrsh r5, [r0, r3]
	adds r5, r2, r5
	adds r1, r6, #0
	adds r1, #0x46
	movs r2, #0
	ldrsh r4, [r1, r2]
	movs r3, #0xa
	ldrsh r0, [r0, r3]
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
	ldr r0, [r6, #0x14]
	cmp r0, #0
	bne _0804E9EE
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r3, #0x88
	lsls r3, r3, #1
	movs r0, #0xc0
	str r0, [sp]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _0804E9EE
	ldr r0, _0804EA08 @ =0x00000113
	bl sub_080D7910
_0804E9EE:
	ldr r0, [r6, #0x14]
	adds r0, #2
	str r0, [r6, #0x14]
	cmp r0, #0x2f
	bgt _0804E9FA
	b _0804EC24
_0804E9FA:
	movs r0, #0x30
	str r0, [r6, #0x14]
	b _0804EC24
	.align 2, 0
_0804EA00: .4byte gEwramData
_0804EA04: .4byte 0x0000A094
_0804EA08: .4byte 0x00000113
_0804EA0C:
	ldr r3, [r6, #0x14]
	cmp r3, #2
	bgt _0804EA60
	ldr r0, _0804EA58 @ =gEwramData
	ldr r1, [r0]
	ldr r4, _0804EA5C @ =0x0000A094
	adds r1, r1, r4
	movs r4, #6
	ldrsh r0, [r1, r4]
	adds r5, r2, r0
	adds r0, r6, #0
	adds r0, #0x46
	movs r4, #0
	ldrsh r2, [r0, r4]
	movs r4, #0xa
	ldrsh r0, [r1, r4]
	adds r4, r2, r0
	cmp r3, #0
	beq _0804EA50
	adds r1, r4, #0
	subs r1, #8
	adds r0, r5, #0
	bl sub_08002200
	adds r1, r4, #0
	subs r1, #0x18
	adds r0, r5, #0
	bl sub_08002200
	adds r1, r4, #0
	subs r1, #0x28
	adds r0, r5, #0
	bl sub_08002200
_0804EA50:
	movs r0, #0
	str r0, [r6, #0x14]
	b _0804EC24
	.align 2, 0
_0804EA58: .4byte gEwramData
_0804EA5C: .4byte 0x0000A094
_0804EA60:
	cmp r3, #0x30
	bne _0804EA82
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r3, #0x88
	lsls r3, r3, #1
	movs r0, #0xc0
	str r0, [sp]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _0804EA82
	ldr r0, _0804EA8C @ =0x00000113
	bl sub_080D7910
_0804EA82:
	ldr r0, [r6, #0x14]
	subs r0, #2
	str r0, [r6, #0x14]
	b _0804EC24
	.align 2, 0
_0804EA8C: .4byte 0x00000113
_0804EA90:
	ldr r0, [r6, #0x14]
	adds r0, #1
	str r0, [r6, #0x14]
	cmp r0, #0x2f
	bgt _0804EA9C
	b _0804EC24
_0804EA9C:
	adds r0, r6, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r5, [r0, r1]
	ldr r0, _0804EAE0 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _0804EAE4 @ =0x0000A094
	adds r1, r1, r2
	movs r3, #6
	ldrsh r0, [r1, r3]
	adds r5, r5, r0
	adds r0, r6, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r4, [r0, r2]
	movs r3, #0xa
	ldrsh r0, [r1, r3]
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
	b _0804EC1E
	.align 2, 0
_0804EAE0: .4byte gEwramData
_0804EAE4: .4byte 0x0000A094
_0804EAE8:
	ldrb r0, [r6, #0x1a]
	movs r1, #0x20
	cmp r0, #0
	beq _0804EAF2
	movs r1, #0x10
_0804EAF2:
	movs r0, #1
	bl SetPlayerInput
	b _0804EC24
_0804EAFA:
	ldrb r0, [r6, #0x1a]
	movs r1, #0x10
	cmp r0, #0
	beq _0804EB04
	movs r1, #0x20
_0804EB04:
	movs r0, #1
	bl SetPlayerInput
	ldrb r0, [r6, #0x1a]
	cmp r0, #0
	bne _0804EB38
	ldr r2, _0804EB30 @ =gEwramData
	ldr r0, [r2]
	ldr r4, _0804EB34 @ =0x00013110
	adds r0, r0, r4
	ldr r0, [r0]
	adds r0, #0x42
	movs r1, #0
	ldrsh r3, [r0, r1]
	adds r1, r6, #0
	adds r1, #0x42
	movs r4, #0
	ldrsh r0, [r1, r4]
	adds r0, #0x18
	cmp r3, r0
	ble _0804EB58
	b _0804EB5E
	.align 2, 0
_0804EB30: .4byte gEwramData
_0804EB34: .4byte 0x00013110
_0804EB38:
	ldr r2, _0804EB9C @ =gEwramData
	ldr r0, [r2]
	ldr r1, _0804EBA0 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x42
	movs r4, #0
	ldrsh r3, [r0, r4]
	adds r1, r6, #0
	adds r1, #0x42
	movs r4, #0
	ldrsh r0, [r1, r4]
	subs r0, #0x18
	movs r4, #0
	cmp r3, r0
	blt _0804EB5A
_0804EB58:
	movs r4, #1
_0804EB5A:
	cmp r4, #0
	bne _0804EC24
_0804EB5E:
	movs r0, #0
	ldrsh r5, [r1, r0]
	ldr r1, [r2]
	ldr r2, _0804EBA4 @ =0x0000A094
	adds r1, r1, r2
	movs r3, #6
	ldrsh r0, [r1, r3]
	adds r5, r5, r0
	adds r0, r6, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r4, [r0, r2]
	movs r3, #0xa
	ldrsh r0, [r1, r3]
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
	b _0804EC18
	.align 2, 0
_0804EB9C: .4byte gEwramData
_0804EBA0: .4byte 0x00013110
_0804EBA4: .4byte 0x0000A094
_0804EBA8:
	movs r0, #1
	movs r1, #0
	bl SetPlayerInput
	ldr r0, [r6, #0x14]
	subs r0, #1
	str r0, [r6, #0x14]
	cmp r0, #0
	bne _0804EC24
	ldr r0, _0804EBD8 @ =gEwramData
	ldr r1, [r0]
	ldr r4, _0804EBDC @ =0x0000042C
	adds r1, r1, r4
	ldr r0, [r1]
	ldr r2, _0804EBE0 @ =0xFFFFFEFE
	ands r0, r2
	str r0, [r1]
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #1
	ble _0804EBE4
	movs r0, #0x63
	b _0804EC22
	.align 2, 0
_0804EBD8: .4byte gEwramData
_0804EBDC: .4byte 0x0000042C
_0804EBE0: .4byte 0xFFFFFEFE
_0804EBE4:
	movs r0, #0x14
	b _0804EC22
_0804EBE8:
	ldr r0, _0804EC2C @ =gEwramData
	ldr r2, [r0]
	ldr r3, _0804EC30 @ =0x0000037E
	adds r0, r2, r3
	ldrh r0, [r0]
	movs r4, #0x32
	ldrsh r1, [r6, r4]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0804EC24
	ldr r1, _0804EC34 @ =0x0000042C
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0804EC18
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_08013F6C
_0804EC18:
	ldr r0, _0804EC38 @ =0x00000113
	bl sub_080D7910
_0804EC1E:
	ldrb r0, [r6, #0xa]
	adds r0, #1
_0804EC22:
	strb r0, [r6, #0xa]
_0804EC24:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804EC2C: .4byte gEwramData
_0804EC30: .4byte 0x0000037E
_0804EC34: .4byte 0x0000042C
_0804EC38: .4byte 0x00000113

	thumb_func_start sub_0804EC3C
sub_0804EC3C: @ 0x0804EC3C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	bl sub_0804DF3C
	adds r2, r6, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x28
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0804ECBC @ =gDisplayRegisters
	adds r2, r1, #0
	adds r2, #0x42
	movs r0, #0x3f
	strb r0, [r2]
	adds r1, #0x43
	movs r0, #0x2f
	strb r0, [r1]
	ldr r4, _0804ECC0 @ =gEwramData
	ldr r0, [r4]
	ldr r1, _0804ECC4 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x42
	ldrh r1, [r1]
	subs r1, #0x1c
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, #0x46
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r0, #0x22
	str r0, [sp]
	adds r0, r6, #0
	movs r3, #0x38
	bl sub_08068AD4
	cmp r0, #0
	bne _0804ECA8
	ldr r2, [r4]
	ldr r1, _0804ECC8 @ =0x0000037E
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0
	beq _0804ECCC
_0804ECA8:
	movs r0, #0x30
	str r0, [r6, #0x14]
	movs r0, #0xa
	strb r0, [r6, #0xa]
	movs r0, #1
	movs r1, #0
	bl SetPlayerInput
	b _0804ED28
	.align 2, 0
_0804ECBC: .4byte gDisplayRegisters
_0804ECC0: .4byte gEwramData
_0804ECC4: .4byte 0x00013110
_0804ECC8: .4byte 0x0000037E
_0804ECCC:
	adds r0, r6, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r5, [r0, r3]
	ldr r0, _0804ED1C @ =0x0000A094
	adds r1, r2, r0
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
	str r7, [r6, #0x14]
	movs r3, #0x30
	ldrsh r0, [r6, r3]
	cmp r0, #1
	beq _0804ED20
	cmp r0, #3
	beq _0804ED24
	strb r7, [r6, #0xa]
	b _0804ED28
	.align 2, 0
_0804ED1C: .4byte 0x0000A094
_0804ED20:
	movs r0, #0x14
	b _0804ED26
_0804ED24:
	movs r0, #0x63
_0804ED26:
	strb r0, [r6, #0xa]
_0804ED28:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0804ED30
sub_0804ED30: @ 0x0804ED30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	movs r1, #0x20
	rsbs r1, r1, #0
	movs r3, #0x98
	lsls r3, r3, #1
	movs r0, #0xd0
	str r0, [sp]
	adds r0, r7, #0
	movs r2, #0
	bl sub_08068AD4
	movs r2, #0
	cmp r0, #0
	bne _0804ED5A
	movs r2, #1
_0804ED5A:
	adds r0, r7, #0
	adds r0, #0x58
	lsls r2, r2, #5
	ldrb r1, [r0]
	movs r3, #0x21
	rsbs r3, r3, #0
	ands r3, r1
	orrs r3, r2
	strb r3, [r0]
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	bne _0804ED74
	b _0804EF14
_0804ED74:
	cmp r0, #1
	bgt _0804ED7E
	cmp r0, #0
	beq _0804ED8C
	b _0804EFFA
_0804ED7E:
	cmp r0, #2
	bne _0804ED84
	b _0804EF38
_0804ED84:
	cmp r0, #3
	bne _0804ED8A
	b _0804EFE8
_0804ED8A:
	b _0804EFFA
_0804ED8C:
	ldr r1, _0804EEF0 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0804EEF4 @ =0x0000037E
	adds r0, r0, r2
	ldrh r1, [r0]
	movs r3, #1
	mov sl, r3
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _0804EDA4
	b _0804EF32
_0804EDA4:
	bl sub_0803D408
	cmp r0, #0
	bne _0804EDB4
	bl sub_0803D270
	bl sub_0803CED4
_0804EDB4:
	ldrb r0, [r7, #0xd]
	adds r0, #1
	strb r0, [r7, #0xd]
	mov r4, sl
	ands r0, r4
	cmp r0, #0
	beq _0804EDEA
	movs r0, #0x80
	lsls r0, r0, #0xc
	bl sub_0802D5EC
	ldr r4, [r7, #0x40]
	adds r4, r4, r0
	bl RandomNumberGenerator
	movs r1, #0x30
	bl __umodsi3
	subs r0, #0x30
	lsls r0, r0, #0x10
	ldr r1, [r7, #0x44]
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x10
	movs r3, #5
	bl sub_08045CEC
_0804EDEA:
	movs r0, #0x80
	lsls r0, r0, #0xb
	mov sb, r0
	bl sub_0802D5EC
	ldr r1, [r7, #0x40]
	mov r8, r1
	add r8, r0
	add r8, sb
	bl RandomNumberGenerator
	movs r1, #0x30
	bl __umodsi3
	subs r0, #0x30
	lsls r0, r0, #0x10
	ldr r6, [r7, #0x44]
	adds r6, r6, r0
	movs r5, #0x80
	lsls r5, r5, #3
	adds r0, r5, #0
	bl sub_0802D5EC
	adds r4, r0, #0
	movs r2, #0x80
	lsls r2, r2, #5
	adds r4, r4, r2
	adds r0, r5, #0
	bl sub_0802D5EC
	adds r3, r0, #0
	movs r0, #7
	str r0, [sp]
	movs r0, #5
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_08045B44
	cmp r0, #0
	beq _0804EE46
	adds r1, r0, #0
	adds r1, #0x5c
	movs r0, #0xe
	strb r0, [r1]
_0804EE46:
	ldr r3, _0804EEF0 @ =gEwramData
	ldr r0, [r3]
	ldr r4, _0804EEF8 @ =0x00013110
	mov r8, r4
	add r0, r8
	ldr r2, [r0]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804EE5E
	b _0804EFFA
_0804EE5E:
	adds r0, r2, #0
	adds r0, #0x42
	ldrh r1, [r0]
	subs r1, #0x1c
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, #4
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r0, #0x22
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0x38
	bl sub_08068AD4
	cmp r0, #0
	bne _0804EE82
	b _0804EFFA
_0804EE82:
	ldr r0, _0804EEFC @ =0x00000111
	bl sub_080D7910
	movs r6, #0x80
	lsls r6, r6, #7
	movs r5, #0x80
	lsls r5, r5, #9
	str r5, [sp]
	movs r4, #0x10
	str r4, [sp, #4]
	movs r0, #1
	movs r1, #1
	movs r2, #1
	adds r3, r6, #0
	bl sub_0803D18C
	str r5, [sp]
	str r4, [sp, #4]
	movs r0, #1
	movs r1, #1
	movs r2, #1
	adds r3, r6, #0
	bl sub_0803CDF0
	ldr r4, _0804EEF0 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _0804EF00 @ =0x000131D6
	adds r0, r1, r2
	mov r3, sl
	strh r3, [r0]
	ldr r4, _0804EF04 @ =0x000131D4
	adds r2, r1, r4
	movs r0, #3
	strh r0, [r2]
	ldr r0, _0804EF08 @ =0x000131D8
	adds r3, r1, r0
	mov r4, r8
	adds r2, r1, r4
	ldr r0, [r2]
	ldr r0, [r0, #0x40]
	movs r4, #0x80
	lsls r4, r4, #0xc
	adds r0, r0, r4
	str r0, [r3]
	ldr r0, _0804EF0C @ =0x000131DC
	adds r1, r1, r0
	ldr r0, [r2]
	ldr r0, [r0, #0x44]
	str r0, [r1]
	ldr r1, _0804EF10 @ =0xFFFF0000
	mov r0, sb
	bl sub_08021248
	b _0804EFFA
	.align 2, 0
_0804EEF0: .4byte gEwramData
_0804EEF4: .4byte 0x0000037E
_0804EEF8: .4byte 0x00013110
_0804EEFC: .4byte 0x00000111
_0804EF00: .4byte 0x000131D6
_0804EF04: .4byte 0x000131D4
_0804EF08: .4byte 0x000131D8
_0804EF0C: .4byte 0x000131DC
_0804EF10: .4byte 0xFFFF0000
_0804EF14:
	movs r0, #0x40
	ands r3, r0
	movs r1, #0x10
	cmp r3, #0
	beq _0804EF20
	movs r1, #0x20
_0804EF20:
	movs r0, #1
	bl SetPlayerInput
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	beq _0804EF32
	subs r0, #1
	strb r0, [r7, #0xd]
	b _0804EFFA
_0804EF32:
	movs r0, #2
	strb r0, [r7, #0xa]
	b _0804EFFA
_0804EF38:
	ldr r0, _0804EFD4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804EFD8 @ =0x000004CC
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x40
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0804EF5C
	ands r3, r2
	movs r1, #0x10
	cmp r3, #0
	beq _0804EF56
	movs r1, #0x20
_0804EF56:
	movs r0, #1
	bl SetPlayerInput
_0804EF5C:
	ldr r0, [r7, #0x14]
	cmp r0, #0
	bne _0804EFA4
	adds r0, r7, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r5, [r0, r2]
	ldr r0, _0804EFD4 @ =gEwramData
	ldr r1, [r0]
	ldr r3, _0804EFDC @ =0x0000A094
	adds r1, r1, r3
	movs r4, #6
	ldrsh r0, [r1, r4]
	adds r5, r5, r0
	adds r0, r7, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r4, [r0, r2]
	movs r3, #0xa
	ldrsh r0, [r1, r3]
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
_0804EFA4:
	ldr r0, [r7, #0x14]
	adds r0, #1
	str r0, [r7, #0x14]
	cmp r0, #0x2f
	ble _0804EFFA
	ldr r0, _0804EFD4 @ =gEwramData
	ldr r2, [r0]
	ldr r4, _0804EFE0 @ =0x0000042C
	adds r3, r2, r4
	ldr r0, [r3]
	ldr r1, _0804EFE4 @ =0xFFFFFEFE
	ands r0, r1
	str r0, [r3]
	ldr r0, _0804EFD8 @ =0x000004CC
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0804EFFA
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	b _0804EFFA
	.align 2, 0
_0804EFD4: .4byte gEwramData
_0804EFD8: .4byte 0x000004CC
_0804EFDC: .4byte 0x0000A094
_0804EFE0: .4byte 0x0000042C
_0804EFE4: .4byte 0xFFFFFEFE
_0804EFE8:
	movs r0, #0x40
	ands r3, r0
	movs r1, #0x10
	cmp r3, #0
	beq _0804EFF4
	movs r1, #0x20
_0804EFF4:
	movs r0, #1
	bl SetPlayerInput
_0804EFFA:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804F00C
sub_0804F00C: @ 0x0804F00C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	bl sub_0804DF3C
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x7d
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	subs r0, #0xf6
	ands r0, r1
	movs r1, #0x38
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0804F078 @ =gDisplayRegisters
	adds r2, r1, #0
	adds r2, #0x42
	movs r0, #0x3f
	strb r0, [r2]
	adds r1, #0x43
	movs r0, #0x2f
	strb r0, [r1]
	ldr r0, _0804F07C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804F080 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x42
	ldrh r1, [r1]
	subs r1, #0x1c
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, #0x46
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r0, #0x22
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x38
	bl sub_08068AD4
	cmp r0, #0
	beq _0804F06E
	movs r0, #0x30
	str r0, [r4, #0x14]
_0804F06E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804F078: .4byte gDisplayRegisters
_0804F07C: .4byte gEwramData
_0804F080: .4byte 0x00013110

	thumb_func_start sub_0804F084
sub_0804F084: @ 0x0804F084
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _0804F114 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804F118 @ =0x00013110
	adds r0, r0, r1
	ldr r5, [r0]
	movs r1, #0x20
	rsbs r1, r1, #0
	movs r3, #0x98
	lsls r3, r3, #1
	movs r0, #0xd0
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08068AD4
	movs r3, #0
	cmp r0, #0
	bne _0804F0B0
	movs r3, #1
_0804F0B0:
	adds r2, r4, #0
	adds r2, #0x58
	lsls r3, r3, #5
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0804F158
	adds r0, r4, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r5, #0
	adds r1, #0x42
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r0, r0, r1
	adds r0, #0x28
	cmp r0, #0x4f
	bhi _0804F120
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _0804F104
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r3, #0x88
	lsls r3, r3, #1
	movs r0, #0xc0
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _0804F104
	ldr r0, _0804F11C @ =0x00000113
	bl sub_080D7910
_0804F104:
	ldr r0, [r4, #0x14]
	adds r0, #2
	str r0, [r4, #0x14]
	cmp r0, #0x2f
	ble _0804F158
	movs r0, #0x30
	b _0804F156
	.align 2, 0
_0804F114: .4byte gEwramData
_0804F118: .4byte 0x00013110
_0804F11C: .4byte 0x00000113
_0804F120:
	ldr r0, [r4, #0x14]
	cmp r0, #0x30
	bne _0804F144
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r3, #0x88
	lsls r3, r3, #1
	movs r0, #0xc0
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _0804F144
	ldr r0, _0804F150 @ =0x00000113
	bl sub_080D7910
_0804F144:
	ldr r0, [r4, #0x14]
	cmp r0, #2
	bgt _0804F154
	movs r0, #0
	b _0804F156
	.align 2, 0
_0804F150: .4byte 0x00000113
_0804F154:
	subs r0, #2
_0804F156:
	str r0, [r4, #0x14]
_0804F158:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0804F160
sub_0804F160: @ 0x0804F160
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0804F170
	cmp r0, #1
	beq _0804F224
	b _0804F36E
_0804F170:
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0804F1AC
	ldr r0, _0804F1A0 @ =0x081CBE5C
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _0804F1CC
	ldr r0, _0804F1A4 @ =0x08209EE8
	bl sub_080681D8
	lsls r0, r0, #0x18
	asrs r3, r0, #0x18
	cmp r3, #0
	blt _0804F1CC
	ldr r1, _0804F1A8 @ =0x0820FE44
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	b _0804F1EE
	.align 2, 0
_0804F1A0: .4byte 0x081CBE5C
_0804F1A4: .4byte 0x08209EE8
_0804F1A8: .4byte 0x0820FE44
_0804F1AC:
	cmp r0, #2
	bne _0804F1EE
	ldr r0, _0804F1DC @ =0x081CBEB4
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _0804F1CC
	ldr r0, _0804F1E0 @ =0x0820A100
	bl sub_080681D8
	lsls r0, r0, #0x18
	asrs r3, r0, #0x18
	cmp r3, #0
	bge _0804F1E4
_0804F1CC:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _0804F36E
	.align 2, 0
_0804F1DC: .4byte 0x081CBEB4
_0804F1E0: .4byte 0x0820A100
_0804F1E4:
	ldr r1, _0804F21C @ =0x08210DB0
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
_0804F1EE:
	ldrb r1, [r4, #0x1c]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x6e
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _0804F220 @ =sub_0803B9D0
	str r0, [r4, #4]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _0804F36E
	.align 2, 0
_0804F21C: .4byte 0x08210DB0
_0804F220: .4byte sub_0803B9D0
_0804F224:
	ldr r0, _0804F260 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _0804F264 @ =0x000004BE
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0804F2BA
	ldr r2, [r4, #0x14]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r2, r3
	str r1, [r4, #0x14]
	ldrb r0, [r4, #0x1c]
	cmp r0, #3
	beq _0804F26C
	ldr r0, [r4, #0x50]
	str r0, [r4, #0x48]
	adds r0, r1, #0
	bl sub_080009E4
	ldr r1, [r4, #0x54]
	muls r1, r0, r1
	cmp r1, #0
	bge _0804F25A
	ldr r0, _0804F268 @ =0x0000FFFF
	adds r1, r1, r0
_0804F25A:
	asrs r2, r1, #0x10
	b _0804F2A4
	.align 2, 0
_0804F260: .4byte gEwramData
_0804F264: .4byte 0x000004BE
_0804F268: .4byte 0x0000FFFF
_0804F26C:
	ldr r0, [r4, #0x18]
	movs r1, #0xa0
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0x18]
	movs r3, #0x90
	lsls r3, r3, #7
	adds r0, r2, r3
	bl sub_080009E4
	ldr r1, [r4, #0x50]
	muls r0, r1, r0
	cmp r0, #0
	bge _0804F28C
	ldr r1, _0804F318 @ =0x00000FFF
	adds r0, r0, r1
_0804F28C:
	asrs r0, r0, #0xc
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x18]
	bl sub_080009E4
	ldr r1, [r4, #0x54]
	muls r1, r0, r1
	cmp r1, #0
	bge _0804F2A2
	ldr r3, _0804F318 @ =0x00000FFF
	adds r1, r1, r3
_0804F2A2:
	asrs r2, r1, #0xc
_0804F2A4:
	str r2, [r4, #0x4c]
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	adds r0, r0, r2
	str r0, [r4, #0x44]
	adds r0, r4, #0
	bl sub_0803F17C
_0804F2BA:
	ldr r1, _0804F31C @ =0x0852559C
	ldrb r0, [r4, #0x1c]
	lsls r0, r0, #2
	adds r3, r0, r1
	ldr r0, _0804F320 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804F324 @ =0x0000A094
	adds r2, r0, r1
	ldr r1, [r3]
	ldr r0, [r2, #0xc]
	muls r1, r0, r1
	cmp r1, #0
	bge _0804F2D6
	adds r1, #0xff
_0804F2D6:
	asrs r1, r1, #8
	ldr r0, [r4, #0x40]
	subs r0, r0, r1
	str r0, [r4, #0x40]
	ldr r1, [r3]
	ldr r0, [r2, #0x10]
	muls r0, r1, r0
	cmp r0, #0
	bge _0804F2EA
	adds r0, #0xff
_0804F2EA:
	asrs r1, r0, #8
	ldr r0, [r4, #0x44]
	subs r0, r0, r1
	str r0, [r4, #0x44]
	adds r5, r4, #0
	adds r5, #0x42
	movs r3, #0
	ldrsh r0, [r5, r3]
	movs r6, #0x88
	lsls r6, r6, #1
	cmp r0, r6
	ble _0804F32C
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r0, r1
	adds r0, #1
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	ldr r0, _0804F328 @ =0x0000FFE0
	b _0804F36C
	.align 2, 0
_0804F318: .4byte 0x00000FFF
_0804F31C: .4byte 0x0852559C
_0804F320: .4byte gEwramData
_0804F324: .4byte 0x0000A094
_0804F328: .4byte 0x0000FFE0
_0804F32C:
	movs r2, #0x20
	rsbs r2, r2, #0
	cmp r0, r2
	bge _0804F348
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r0, r1
	adds r0, #1
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	strh r6, [r5]
	b _0804F36E
_0804F348:
	adds r1, r4, #0
	adds r1, #0x46
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0xc0
	ble _0804F35C
	ldr r0, _0804F358 @ =0x0000FFF0
	b _0804F362
	.align 2, 0
_0804F358: .4byte 0x0000FFF0
_0804F35C:
	cmp r0, r2
	bge _0804F36E
	movs r0, #0xb0
_0804F362:
	strh r0, [r1]
	bl RandomNumberGenerator
	movs r1, #0xbf
	ands r0, r1
_0804F36C:
	strh r0, [r5]
_0804F36E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0804F374
sub_0804F374: @ 0x0804F374
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	movs r1, #0
	mov r8, r1
	ldr r1, _0804F3C4 @ =0x085255AC
	movs r3, #0x32
	ldrsh r2, [r7, r3]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldr r1, [r2]
	cmp r8, r1
	blt _0804F394
	b _0804F4EA
_0804F394:
	movs r0, #0x3f
	mov sb, r0
_0804F398:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _0804F3C8 @ =sub_0804F160
	bl EntityCreateInRange
	adds r6, r0, #0
	cmp r6, #0
	bne _0804F3AA
	b _0804F4D4
_0804F3AA:
	ldrb r0, [r7, #0x10]
	movs r4, #0
	strb r0, [r6, #0x1d]
	bl RandomNumberGenerator
	movs r1, #0xf
	ands r0, r1
	strb r0, [r6, #0x1c]
	cmp r0, #8
	bls _0804F3CC
	movs r0, #2
	b _0804F3EC
	.align 2, 0
_0804F3C4: .4byte 0x085255AC
_0804F3C8: .4byte sub_0804F160
_0804F3CC:
	cmp r0, #5
	bls _0804F3DC
	movs r0, #1
	strb r0, [r6, #0x1c]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0x1a
	b _0804F3F4
_0804F3DC:
	cmp r0, #1
	bls _0804F3EA
	strb r4, [r6, #0x1c]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0x19
	b _0804F3F4
_0804F3EA:
	movs r0, #3
_0804F3EC:
	strb r0, [r6, #0x1c]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0x1d
_0804F3F4:
	strb r0, [r1]
	ldrb r0, [r6, #0x1c]
	cmp r0, #3
	beq _0804F458
	bl RandomNumberGenerator
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #2
	ldr r2, _0804F44C @ =0x0000FFE0
	adds r0, r0, r2
	adds r1, r6, #0
	adds r1, #0x42
	strh r0, [r1]
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r0, r1
	adds r0, #1
	adds r1, r6, #0
	adds r1, #0x46
	strh r0, [r1]
	bl RandomNumberGenerator
	ldr r1, _0804F450 @ =0x00003FFF
	ands r1, r0
	movs r3, #0xc0
	lsls r3, r3, #8
	adds r1, r1, r3
	ldrb r0, [r6, #0x1c]
	lsrs r1, r0
	str r1, [r6, #0x50]
	bl RandomNumberGenerator
	ldr r1, _0804F454 @ =0x00001FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #8
	adds r1, r1, r2
	ldrb r3, [r6, #0x1c]
	lsrs r1, r3
	str r1, [r6, #0x54]
	b _0804F4B2
	.align 2, 0
_0804F44C: .4byte 0x0000FFE0
_0804F450: .4byte 0x00003FFF
_0804F454: .4byte 0x00001FFF
_0804F458:
	bl RandomNumberGenerator
	mov r1, sb
	ands r0, r1
	adds r0, #0x8c
	ldr r1, _0804F4F8 @ =gEwramData
	ldr r1, [r1]
	ldr r2, _0804F4FC @ =0x0000A094
	adds r1, r1, r2
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x12
	subs r0, r0, r1
	adds r1, r6, #0
	adds r1, #0x42
	strh r0, [r1]
	bl RandomNumberGenerator
	mov r3, sb
	ands r0, r3
	adds r0, #0x21
	adds r1, r6, #0
	adds r1, #0x46
	strh r0, [r1]
	bl RandomNumberGenerator
	movs r5, #0x7f
	ands r0, r5
	lsls r0, r0, #4
	movs r4, #0x80
	lsls r4, r4, #4
	adds r0, r0, r4
	str r0, [r6, #0x50]
	bl RandomNumberGenerator
	ands r0, r5
	lsls r0, r0, #4
	adds r0, r0, r4
	str r0, [r6, #0x54]
	bl RandomNumberGenerator
	movs r1, #0x1f
	ands r1, r0
	lsls r1, r1, #0xc
	str r1, [r6, #0x18]
_0804F4B2:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0804F4C6
	ldr r0, [r6, #0x50]
	rsbs r0, r0, #0
	str r0, [r6, #0x50]
_0804F4C6:
	bl RandomNumberGenerator
	adds r1, r0, #0
	movs r2, #0x1f
	ands r1, r2
	lsls r1, r1, #0xc
	str r1, [r6, #0x14]
_0804F4D4:
	movs r1, #1
	add r8, r1
	ldr r1, _0804F500 @ =0x085255AC
	movs r3, #0x32
	ldrsh r2, [r7, r3]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldr r1, [r2]
	cmp r8, r1
	bge _0804F4EA
	b _0804F398
_0804F4EA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804F4F8: .4byte gEwramData
_0804F4FC: .4byte 0x0000A094
_0804F500: .4byte 0x085255AC

	thumb_func_start sub_0804F504
sub_0804F504: @ 0x0804F504
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	beq _0804F514
	cmp r0, #1
	beq _0804F57C
	b _0804F5AE
_0804F514:
	ldr r0, _0804F540 @ =0x081CBE5C
	movs r1, #0
	bl sub_0803B800
	adds r4, r0, #0
	cmp r4, #0
	blt _0804F530
	ldr r0, _0804F544 @ =0x08209EE8
	bl sub_080681D8
	lsls r0, r0, #0x18
	asrs r3, r0, #0x18
	cmp r3, #0
	bge _0804F548
_0804F530:
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _0804F5AE
	.align 2, 0
_0804F540: .4byte 0x081CBE5C
_0804F544: .4byte 0x08209EE8
_0804F548:
	ldr r1, _0804F5B4 @ =0x0820FE44
	adds r0, r7, #0
	adds r2, r4, #0
	bl sub_0803B924
	ldrb r0, [r7, #0x18]
	adds r1, r7, #0
	adds r1, #0x65
	strb r0, [r1]
	subs r1, #9
	movs r0, #0x1e
	strb r0, [r1]
	ldr r0, _0804F5B8 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r2, r7, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_0804F57C:
	ldr r0, [r7, #0x50]
	str r0, [r7, #0x48]
	ldr r5, [r7, #0x40]
	adds r5, r5, r0
	str r5, [r7, #0x40]
	ldr r6, [r7, #0x44]
	ldr r0, [r7, #0x4c]
	adds r6, r6, r0
	str r6, [r7, #0x44]
	ldr r0, _0804F5BC @ =gEwramData
	ldr r4, [r0]
	ldr r0, _0804F5C0 @ =0x0000A094
	adds r4, r4, r0
	ldr r0, [r4, #0xc]
	movs r1, #0xc
	bl __divsi3
	subs r5, r5, r0
	str r5, [r7, #0x40]
	ldr r0, [r4, #0x10]
	movs r1, #0xc
	bl __divsi3
	subs r6, r6, r0
	str r6, [r7, #0x44]
_0804F5AE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804F5B4: .4byte 0x0820FE44
_0804F5B8: .4byte sub_0803B9D0
_0804F5BC: .4byte gEwramData
_0804F5C0: .4byte 0x0000A094

	thumb_func_start sub_0804F5C4
sub_0804F5C4: @ 0x0804F5C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	ldr r0, _0804F67C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804F680 @ =0x0000A094
	adds r0, r0, r1
	ldr r0, [r0]
	mov r8, r0
	movs r7, #0
_0804F5DE:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _0804F684 @ =sub_0804F504
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0804F666
	ldr r1, _0804F688 @ =0x085255DC
	lsls r0, r7, #2
	adds r2, r0, r1
	ldrb r0, [r2, #2]
	strb r0, [r4, #0x18]
	ldrb r0, [r2]
	adds r0, #0x50
	mov ip, r0
	ldr r0, _0804F67C @ =gEwramData
	ldr r0, [r0]
	ldr r3, _0804F680 @ =0x0000A094
	adds r5, r0, r3
	movs r6, #6
	ldrsh r1, [r5, r6]
	mov r3, r8
	ldrb r0, [r3]
	muls r1, r0, r1
	cmp r1, #0
	bge _0804F616
	adds r1, #0x3f
_0804F616:
	asrs r1, r1, #6
	ldr r6, _0804F68C @ =0x085255C4
	mov sl, r6
	mov r3, sb
	movs r6, #0x32
	ldrsh r0, [r3, r6]
	lsls r0, r0, #2
	add r0, sl
	mov r3, ip
	subs r1, r3, r1
	ldrh r0, [r0]
	adds r1, r1, r0
	adds r3, r4, #0
	adds r3, #0x42
	strh r1, [r3]
	ldrb r3, [r2, #1]
	movs r6, #0xa
	ldrsh r1, [r5, r6]
	mov r2, r8
	ldrb r0, [r2, #1]
	muls r0, r1, r0
	cmp r0, #0
	bge _0804F646
	adds r0, #0x3f
_0804F646:
	asrs r2, r0, #6
	mov r5, sb
	movs r6, #0x32
	ldrsh r1, [r5, r6]
	lsls r1, r1, #2
	mov r0, sl
	adds r0, #2
	adds r1, r1, r0
	subs r2, r3, r2
	ldrh r1, [r1]
	adds r2, r2, r1
	adds r3, r4, #0
	adds r3, #0x46
	strh r2, [r3]
	movs r0, #0x80
	str r0, [r4, #0x50]
_0804F666:
	adds r7, #1
	cmp r7, #3
	ble _0804F5DE
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804F67C: .4byte gEwramData
_0804F680: .4byte 0x0000A094
_0804F684: .4byte sub_0804F504
_0804F688: .4byte 0x085255DC
_0804F68C: .4byte 0x085255C4

	thumb_func_start sub_0804F690
sub_0804F690: @ 0x0804F690
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	lsls r0, r0, #3
	ldr r1, _0804F6E0 @ =0x08525D9C
	adds r5, r0, r1
	ldrh r0, [r4, #0x10]
	lsls r0, r0, #3
	ldr r1, [r5, #4]
	adds r1, r1, r0
	ldrh r0, [r4, #0x12]
	adds r0, #1
	ldrh r1, [r1, #6]
	bl Mod
	adds r1, r0, #0
	strh r1, [r4, #0x12]
	lsls r1, r1, #0x10
	cmp r1, #0
	bne _0804F6DA
	ldrh r0, [r4, #0x10]
	adds r0, #1
	ldrh r1, [r5]
	bl Mod
	strh r0, [r4, #0x10]
	ldrh r0, [r4, #0x10]
	lsls r0, r0, #3
	ldr r1, [r5, #4]
	adds r1, r1, r0
	ldr r0, [r1]
	ldrh r1, [r1, #4]
	ldrh r3, [r5, #2]
	movs r2, #1
	bl sub_0803C918
_0804F6DA:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0804F6E0: .4byte 0x08525D9C

	thumb_func_start sub_0804F6E4
sub_0804F6E4: @ 0x0804F6E4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #4
	bhi _0804F768
	lsls r0, r0, #2
	ldr r1, _0804F6FC @ =_0804F700
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804F6FC: .4byte _0804F700
_0804F700: @ jump table
	.4byte _0804F714 @ case 0
	.4byte _0804F722 @ case 1
	.4byte _0804F728 @ case 2
	.4byte _0804F730 @ case 3
	.4byte _0804F75C @ case 4
_0804F714:
	adds r0, r4, #0
	bl sub_0804F374
	adds r0, r4, #0
	bl sub_0804F5C4
	b _0804F768
_0804F722:
	movs r0, #0
	str r0, [r4, #0x10]
	b _0804F768
_0804F728:
	adds r0, r4, #0
	bl sub_0804F374
	b _0804F768
_0804F730:
	ldr r0, _0804F750 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0804F754 @ =0x000004C4
	adds r1, r2, r0
	movs r0, #0
	str r0, [r1]
	ldr r1, _0804F758 @ =0x0000042C
	adds r2, r2, r1
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r2]
	bl sub_0803C674
	b _0804F768
	.align 2, 0
_0804F750: .4byte gEwramData
_0804F754: .4byte 0x000004C4
_0804F758: .4byte 0x0000042C
_0804F75C:
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0804F768
	bl sub_08013EEC
_0804F768:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804F770
sub_0804F770: @ 0x0804F770
	push {lr}
	movs r2, #0x30
	ldrsh r1, [r0, r2]
	cmp r1, #1
	beq _0804F78A
	cmp r1, #1
	bgt _0804F784
	cmp r1, #0
	beq _0804F790
	b _0804F79A
_0804F784:
	cmp r1, #2
	beq _0804F790
	b _0804F79A
_0804F78A:
	bl sub_0804F690
	b _0804F79A
_0804F790:
	ldr r0, _0804F7A0 @ =gDisplayRegisters
	adds r0, #0x48
	movs r1, #0xe4
	lsls r1, r1, #4
	strh r1, [r0]
_0804F79A:
	pop {r0}
	bx r0
	.align 2, 0
_0804F7A0: .4byte gDisplayRegisters

	thumb_func_start sub_0804F7A4
sub_0804F7A4: @ 0x0804F7A4
	push {r4, r5, r6, lr}
	ldr r5, _0804F7E8 @ =gEwramData
	ldr r0, [r5]
	ldr r6, _0804F7EC @ =0x00013110
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_08002188
	ldr r2, [r5]
	adds r1, r2, #0
	adds r1, #0x8c
	ldrb r4, [r1]
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x19
	asrs r0, r0, #8
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r2, r2, r6
	ldr r0, [r2]
	bl sub_080021A8
	ldr r1, [r5]
	adds r1, #0x8c
	ldrh r1, [r1]
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x19
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _0804F7F0 @ =0x08525FBC
	movs r3, #0
	b _0804F810
	.align 2, 0
_0804F7E8: .4byte gEwramData
_0804F7EC: .4byte 0x00013110
_0804F7F0: .4byte 0x08525FBC
_0804F7F4:
	ldrh r0, [r2]
	cmp r0, r4
	bne _0804F804
	ldrh r0, [r2, #2]
	cmp r0, r1
	bne _0804F804
	adds r0, r3, #0
	b _0804F81A
_0804F804:
	lsls r0, r3, #0x18
	movs r3, #0x80
	lsls r3, r3, #0x11
	adds r0, r0, r3
	lsrs r3, r0, #0x18
	adds r2, #8
_0804F810:
	ldr r0, [r2, #4]
	cmp r0, #0
	bne _0804F7F4
	movs r0, #1
	rsbs r0, r0, #0
_0804F81A:
	lsls r1, r0, #0x18
	asrs r3, r1, #0x18
	cmp r3, #0
	blt _0804F840
	ldr r0, _0804F848 @ =gEwramData
	ldr r2, [r0]
	asrs r0, r1, #0x1d
	lsls r0, r0, #2
	movs r1, #0xde
	lsls r1, r1, #2
	adds r2, r2, r1
	adds r2, r2, r0
	movs r0, #0x1f
	ands r0, r3
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
_0804F840:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804F848: .4byte gEwramData

	thumb_func_start sub_0804F84C
sub_0804F84C: @ 0x0804F84C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x15
	ldr r1, _0804F858 @ =0x08525FBC
	adds r0, r0, r1
	bx lr
	.align 2, 0
_0804F858: .4byte 0x08525FBC

	thumb_func_start sub_0804F85C
sub_0804F85C: @ 0x0804F85C
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _0804F86C @ =0x08525FBC
	movs r3, #0
	b _0804F88E
	.align 2, 0
_0804F86C: .4byte 0x08525FBC
_0804F870:
	ldrh r0, [r2]
	cmp r0, r4
	bne _0804F882
	ldrh r0, [r2, #2]
	cmp r0, r1
	bne _0804F882
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	b _0804F898
_0804F882:
	lsls r0, r3, #0x18
	movs r3, #0x80
	lsls r3, r3, #0x11
	adds r0, r0, r3
	lsrs r3, r0, #0x18
	adds r2, #8
_0804F88E:
	ldr r0, [r2, #4]
	cmp r0, #0
	bne _0804F870
	movs r0, #1
	rsbs r0, r0, #0
_0804F898:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0804F8A0
sub_0804F8A0: @ 0x0804F8A0
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _0804F8C0 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0804F8C4 @ =0x00013110
	adds r0, r2, r1
	ldr r5, [r0]
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0804F908
	cmp r0, #1
	bgt _0804F8C8
	cmp r0, #0
	beq _0804F8CE
	b _0804F988
	.align 2, 0
_0804F8C0: .4byte gEwramData
_0804F8C4: .4byte 0x00013110
_0804F8C8:
	cmp r0, #2
	beq _0804F970
	b _0804F988
_0804F8CE:
	bl RandomNumberGenerator
	ldr r1, _0804F8FC @ =0x00001FFF
	ands r1, r0
	lsls r1, r1, #4
	ldr r3, _0804F900 @ =0xFFFF8000
	adds r2, r1, r3
	str r2, [r4, #0x48]
	ldr r1, [r4, #0x40]
	ldr r0, [r5, #0x40]
	cmp r1, r0
	bge _0804F8EA
	rsbs r0, r2, #0
	str r0, [r4, #0x48]
_0804F8EA:
	bl RandomNumberGenerator
	ldr r1, _0804F904 @ =0x00003FFF
	ands r1, r0
	rsbs r1, r1, #0
	lsls r1, r1, #4
	str r1, [r4, #0x4c]
	b _0804F94C
	.align 2, 0
_0804F8FC: .4byte 0x00001FFF
_0804F900: .4byte 0xFFFF8000
_0804F904: .4byte 0x00003FFF
_0804F908:
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r3, _0804F954 @ =0x0000A094
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
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804F958
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
	str r0, [r4, #0x4c]
_0804F94C:
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _0804F988
	.align 2, 0
_0804F954: .4byte 0x0000A094
_0804F958:
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
	b _0804F986
_0804F970:
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
_0804F986:
	str r1, [r4, #0x4c]
_0804F988:
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
	bne _0804F9AC
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0804F9AC:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0804F9B4
sub_0804F9B4: @ 0x0804F9B4
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0804F9C6
	cmp r0, #1
	beq _0804FA46
	b _0804FA50
_0804F9C6:
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #2
	ldr r0, _0804FA00 @ =0x08526064
	adds r3, r3, r0
	ldrh r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0804FA04 @ =0x08526004
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r0, #4]
	ldrb r3, [r3, #2]
	ldr r0, [r0, #8]
	str r0, [sp]
	adds r0, r4, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804FA08
	adds r0, r4, #0
	bl EntityDelete
	b _0804FA74
	.align 2, 0
_0804FA00: .4byte 0x08526064
_0804FA04: .4byte 0x08526004
_0804FA08:
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	adds r0, #1
	adds r1, r4, #0
	adds r1, #0x65
	strb r0, [r1]
	bl RandomNumberGenerator
	ldr r1, _0804FA7C @ =0x00001FFF
	ands r1, r0
	lsls r1, r1, #4
	movs r0, #0x80
	lsls r0, r0, #0xa
	adds r1, r1, r0
	str r1, [r4, #0x48]
	bl RandomNumberGenerator
	ldr r1, _0804FA80 @ =0x00003FFF
	ands r1, r0
	lsls r1, r1, #4
	ldr r0, _0804FA84 @ =0xFFFF0000
	subs r0, r0, r1
	str r0, [r4, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_0804FA46:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D3D8
_0804FA50:
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
	bne _0804FA74
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0804FA74:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804FA7C: .4byte 0x00001FFF
_0804FA80: .4byte 0x00003FFF
_0804FA84: .4byte 0xFFFF0000

	thumb_func_start sub_0804FA88
sub_0804FA88: @ 0x0804FA88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	str r1, [sp]
	ldr r0, _0804FAB0 @ =0x081C15F4
	bl sub_0803AFB8
	mov sl, r0
	movs r7, #0x10
	rsbs r7, r7, #0
_0804FAA4:
	movs r6, #3
	movs r0, #0x10
	adds r0, r0, r7
	mov sb, r0
	b _0804FB44
	.align 2, 0
_0804FAB0: .4byte 0x081C15F4
_0804FAB4:
	movs r1, #6
	lsls r3, r1, #0x18
	adds r0, r5, #0
	ldr r1, _0804FB6C @ =0x0820ED60
	mov r2, sl
	asrs r3, r3, #0x18
	bl sub_0803B924
	bl RandomNumberGenerator
	lsrs r0, r0, #4
	movs r1, #3
	bl Mod
	adds r0, #0x40
	adds r1, r5, #0
	adds r1, #0x65
	strb r0, [r1]
	mov r0, r8
	adds r0, #0x42
	ldrh r0, [r0]
	subs r1, #0x23
	strh r0, [r1]
	mov r0, r8
	adds r0, #0x46
	ldrh r0, [r0]
	ldr r3, [sp]
	adds r0, r0, r3
	adds r0, r0, r7
	adds r1, #4
	strh r0, [r1]
	bl RandomNumberGenerator
	lsrs r0, r0, #7
	movs r1, #1
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
	bl RandomNumberGenerator
	lsrs r0, r0, #7
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #7
	ldrb r2, [r4]
	movs r1, #0x7f
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x15
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0804FB70 @ =sub_0803B9D0
	str r0, [r5, #4]
	subs r6, #1
	cmp r6, #0
	ble _0804FB54
_0804FB44:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _0804FB74 @ =sub_0804F8A0
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	bne _0804FAB4
_0804FB54:
	mov r7, sb
	cmp r7, #0x10
	ble _0804FAA4
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804FB6C: .4byte 0x0820ED60
_0804FB70: .4byte sub_0803B9D0
_0804FB74: .4byte sub_0804F8A0

	thumb_func_start sub_0804FB78
sub_0804FB78: @ 0x0804FB78
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _0804FB88
	cmp r0, #1
	beq _0804FB9A
	b _0804FC98
_0804FB88:
	ldr r0, _0804FC00 @ =0x081C15F4
	bl sub_0803AFB8
	str r0, [r6, #0x18]
	movs r0, #0x20
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
_0804FB9A:
	ldrb r1, [r6, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0804FC7A
	ldr r2, _0804FC04 @ =sub_080503E0
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r7, r0, #0
	cmp r7, #0
	beq _0804FC7A
	ldr r1, _0804FC08 @ =0x0820ED60
	ldr r2, [r6, #0x18]
	movs r3, #6
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r7, #0
	bl sub_0803F17C
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldrb r0, [r6, #0x14]
	cmp r0, #1
	blt _0804FC38
	cmp r0, #2
	bgt _0804FC0C
	movs r0, #0x20
	bl sub_0802D5EC
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r1, [r1]
	adds r1, r1, r0
	adds r0, r7, #0
	adds r0, #0x42
	strh r1, [r0]
	movs r0, #0x40
	b _0804FC26
	.align 2, 0
_0804FC00: .4byte 0x081C15F4
_0804FC04: .4byte sub_080503E0
_0804FC08: .4byte 0x0820ED60
_0804FC0C:
	cmp r0, #4
	bgt _0804FC38
	movs r0, #0x40
	bl sub_0802D5EC
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r1, [r1]
	adds r1, r1, r0
	adds r0, r7, #0
	adds r0, #0x42
	strh r1, [r0]
	movs r0, #0x20
_0804FC26:
	bl sub_0802D5EC
	adds r1, r6, #0
	adds r1, #0x46
	ldrh r1, [r1]
	adds r1, r1, r0
	adds r0, r7, #0
	adds r0, #0x46
	strh r1, [r0]
_0804FC38:
	bl RandomNumberGenerator
	lsrs r0, r0, #7
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
	bl RandomNumberGenerator
	lsrs r0, r0, #7
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
	ldr r0, _0804FC88 @ =sub_0803B9D0
	str r0, [r7, #4]
	strb r5, [r7, #0xf]
_0804FC7A:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _0804FC8C
	subs r0, #1
	strb r0, [r6, #0xd]
	b _0804FC98
	.align 2, 0
_0804FC88: .4byte sub_0803B9D0
_0804FC8C:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0804FC98:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804FCA0
sub_0804FCA0: @ 0x0804FCA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r1, #0x30
	ldrsh r0, [r7, r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0804FCD8 @ =0x08526064
	adds r6, r1, r0
	movs r3, #4
	ldrsb r3, [r6, r3]
	mov sb, r3
	movs r0, #5
	ldrsb r0, [r6, r0]
	mov sl, r0
	ldrb r0, [r7, #0x14]
	cmp r0, #4
	bls _0804FCCE
	b _0804FE0A
_0804FCCE:
	lsls r0, r0, #2
	ldr r1, _0804FCDC @ =_0804FCE0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804FCD8: .4byte 0x08526064
_0804FCDC: .4byte _0804FCE0
_0804FCE0: @ jump table
	.4byte _0804FDA4 @ case 0
	.4byte _0804FCFA @ case 1
	.4byte _0804FCF4 @ case 2
	.4byte _0804FD50 @ case 3
	.4byte _0804FD50 @ case 4
_0804FCF4:
	movs r1, #0x10
	rsbs r1, r1, #0
	add sb, r1
_0804FCFA:
	ldrb r0, [r6, #7]
	rsbs r1, r0, #0
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	asrs r5, r1, #1
	lsrs r0, r0, #1
	cmp r5, r0
	blt _0804FD0C
	b _0804FE0A
_0804FD0C:
	adds r0, r7, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r1, _0804FD48 @ =gEwramData
	ldr r2, [r1]
	ldr r1, _0804FD4C @ =0x0000A094
	adds r2, r2, r1
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	add r0, sb
	adds r1, r7, #0
	adds r1, #0x46
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	add r1, sl
	subs r1, r1, r5
	bl sub_08002200
	adds r5, #0x10
	ldrb r0, [r6, #7]
	lsrs r0, r0, #1
	cmp r5, r0
	blt _0804FD0C
	b _0804FE0A
	.align 2, 0
_0804FD48: .4byte gEwramData
_0804FD4C: .4byte 0x0000A094
_0804FD50:
	ldrb r0, [r6, #6]
	rsbs r1, r0, #0
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	asrs r5, r1, #1
	lsrs r0, r0, #1
	cmp r5, r0
	bge _0804FE0A
_0804FD60:
	adds r0, r7, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _0804FD9C @ =gEwramData
	ldr r2, [r1]
	ldr r3, _0804FDA0 @ =0x0000A094
	adds r2, r2, r3
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	add r0, sb
	subs r0, r0, r5
	adds r1, r7, #0
	adds r1, #0x46
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	add r1, sl
	bl sub_08002200
	adds r5, #0x10
	ldrb r0, [r6, #6]
	lsrs r0, r0, #1
	cmp r5, r0
	blt _0804FD60
	b _0804FE0A
	.align 2, 0
_0804FD9C: .4byte gEwramData
_0804FDA0: .4byte 0x0000A094
_0804FDA4:
	ldrb r0, [r6, #6]
	rsbs r1, r0, #0
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	asrs r5, r1, #1
	b _0804FE04
_0804FDB0:
	ldrb r0, [r6, #7]
	rsbs r1, r0, #0
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	asrs r4, r1, #1
	lsrs r0, r0, #1
	movs r1, #0x10
	adds r1, r1, r5
	mov r8, r1
	cmp r4, r0
	bge _0804FE00
_0804FDC6:
	adds r0, r7, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r1, _0804FE18 @ =gEwramData
	ldr r2, [r1]
	ldr r1, _0804FE1C @ =0x0000A094
	adds r2, r2, r1
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	add r0, sb
	adds r0, r0, r5
	adds r1, r7, #0
	adds r1, #0x46
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	add r1, sl
	adds r1, r1, r4
	bl sub_08002200
	adds r4, #0x10
	ldrb r0, [r6, #7]
	lsrs r0, r0, #1
	cmp r4, r0
	blt _0804FDC6
_0804FE00:
	mov r5, r8
	ldrb r0, [r6, #6]
_0804FE04:
	lsrs r0, r0, #1
	cmp r5, r0
	blt _0804FDB0
_0804FE0A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804FE18: .4byte gEwramData
_0804FE1C: .4byte 0x0000A094

	thumb_func_start sub_0804FE20
sub_0804FE20: @ 0x0804FE20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r1, #0x30
	ldrsh r0, [r7, r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0804FE58 @ =0x08526064
	adds r6, r1, r0
	movs r3, #4
	ldrsb r3, [r6, r3]
	mov sb, r3
	movs r0, #5
	ldrsb r0, [r6, r0]
	mov sl, r0
	ldrb r0, [r7, #0x14]
	cmp r0, #4
	bls _0804FE4E
	b _0804FF8A
_0804FE4E:
	lsls r0, r0, #2
	ldr r1, _0804FE5C @ =_0804FE60
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804FE58: .4byte 0x08526064
_0804FE5C: .4byte _0804FE60
_0804FE60: @ jump table
	.4byte _0804FF24 @ case 0
	.4byte _0804FE7A @ case 1
	.4byte _0804FE74 @ case 2
	.4byte _0804FED0 @ case 3
	.4byte _0804FED0 @ case 4
_0804FE74:
	movs r1, #0x10
	rsbs r1, r1, #0
	add sb, r1
_0804FE7A:
	ldrb r0, [r6, #7]
	rsbs r1, r0, #0
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	asrs r5, r1, #1
	lsrs r0, r0, #1
	cmp r5, r0
	blt _0804FE8C
	b _0804FF8A
_0804FE8C:
	adds r0, r7, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r1, _0804FEC8 @ =gEwramData
	ldr r2, [r1]
	ldr r1, _0804FECC @ =0x0000A094
	adds r2, r2, r1
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	add r0, sb
	adds r1, r7, #0
	adds r1, #0x46
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	add r1, sl
	subs r1, r1, r5
	bl sub_08002248
	adds r5, #0x10
	ldrb r0, [r6, #7]
	lsrs r0, r0, #1
	cmp r5, r0
	blt _0804FE8C
	b _0804FF8A
	.align 2, 0
_0804FEC8: .4byte gEwramData
_0804FECC: .4byte 0x0000A094
_0804FED0:
	ldrb r0, [r6, #6]
	rsbs r1, r0, #0
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	asrs r5, r1, #1
	lsrs r0, r0, #1
	cmp r5, r0
	bge _0804FF8A
_0804FEE0:
	adds r0, r7, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _0804FF1C @ =gEwramData
	ldr r2, [r1]
	ldr r3, _0804FF20 @ =0x0000A094
	adds r2, r2, r3
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	add r0, sb
	subs r0, r0, r5
	adds r1, r7, #0
	adds r1, #0x46
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	add r1, sl
	bl sub_08002248
	adds r5, #0x10
	ldrb r0, [r6, #6]
	lsrs r0, r0, #1
	cmp r5, r0
	blt _0804FEE0
	b _0804FF8A
	.align 2, 0
_0804FF1C: .4byte gEwramData
_0804FF20: .4byte 0x0000A094
_0804FF24:
	ldrb r0, [r6, #6]
	rsbs r1, r0, #0
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	asrs r5, r1, #1
	b _0804FF84
_0804FF30:
	ldrb r0, [r6, #7]
	rsbs r1, r0, #0
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	asrs r4, r1, #1
	lsrs r0, r0, #1
	movs r1, #0x10
	adds r1, r1, r5
	mov r8, r1
	cmp r4, r0
	bge _0804FF80
_0804FF46:
	adds r0, r7, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r1, _0804FF98 @ =gEwramData
	ldr r2, [r1]
	ldr r1, _0804FF9C @ =0x0000A094
	adds r2, r2, r1
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	add r0, sb
	adds r0, r0, r5
	adds r1, r7, #0
	adds r1, #0x46
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	add r1, sl
	adds r1, r1, r4
	bl sub_08002248
	adds r4, #0x10
	ldrb r0, [r6, #7]
	lsrs r0, r0, #1
	cmp r4, r0
	blt _0804FF46
_0804FF80:
	mov r5, r8
	ldrb r0, [r6, #6]
_0804FF84:
	lsrs r0, r0, #1
	cmp r5, r0
	blt _0804FF30
_0804FF8A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804FF98: .4byte gEwramData
_0804FF9C: .4byte 0x0000A094

	thumb_func_start sub_0804FFA0
sub_0804FFA0: @ 0x0804FFA0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	ldrh r3, [r7, #0x32]
	lsls r1, r3, #0x10
	cmp r1, #0
	beq _0804FFCE
	ldr r0, _0805001C @ =gEwramData
	ldr r2, [r0]
	asrs r0, r1, #0x15
	lsls r0, r0, #2
	movs r1, #0xd1
	lsls r1, r1, #2
	adds r2, r2, r1
	adds r2, r2, r0
	movs r0, #0x1f
	ands r0, r3
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _08050014
_0804FFCE:
	movs r0, #0x30
	ldrsh r1, [r7, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08050020 @ =0x08526064
	adds r6, r0, r1
	ldrh r0, [r6]
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #2
	ldr r0, _08050024 @ =0x08526004
	adds r4, r4, r0
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r6, #8]
	adds r0, r7, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldr r1, [r4]
	ldr r2, [r4, #4]
	ldrb r3, [r6, #2]
	ldr r0, [r4, #8]
	str r0, [sp]
	adds r0, r7, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08050028
_08050014:
	adds r0, r7, #0
	bl EntityDelete
	b _08050084
	.align 2, 0
_0805001C: .4byte gEwramData
_08050020: .4byte 0x08526064
_08050024: .4byte 0x08526004
_08050028:
	ldrb r0, [r6, #3]
	adds r1, r7, #0
	adds r1, #0x65
	strb r0, [r1]
	ldrb r3, [r6, #6]
	rsbs r4, r3, #0
	lsrs r0, r4, #0x1f
	adds r4, r4, r0
	asrs r4, r4, #1
	movs r5, #0xff
	ands r4, r5
	ldrb r2, [r6, #7]
	rsbs r0, r2, #0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	ands r0, r5
	lsls r0, r0, #8
	adds r4, r4, r0
	lsls r3, r3, #0x10
	adds r4, r4, r3
	lsls r2, r2, #0x18
	adds r4, r4, r2
	ldrb r0, [r6, #9]
	strb r0, [r7, #0x14]
	adds r0, r7, #0
	bl sub_0804FCA0
	adds r0, r7, #0
	movs r1, #8
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080428F0
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #3
	strh r0, [r7, #0x34]
_08050084:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0805008C
sub_0805008C: @ 0x0805008C
	push {r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0805009C
	b _080501C2
_0805009C:
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl sub_08021E38
	cmp r0, #0
	beq _080500D4
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080500D4
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	movs r2, #0xc
	movs r3, #6
	bl sub_08045CEC
	adds r1, r0, #0
	cmp r1, #0
	beq _080500D4
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, #0x5c
	strb r0, [r1]
_080500D4:
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _080501C2
	mov r0, sp
	adds r1, r5, #0
	bl sub_080421AC
	mov r0, sp
	ldrh r1, [r0]
	movs r0, #0x1a
	ands r0, r1
	cmp r0, #0
	beq _080501C2
	ldr r0, _0805014C @ =0x081C15F4
	bl sub_0803AFB8
	ldr r2, _08050150 @ =sub_0804FB78
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r2, r0, #0
	cmp r2, #0
	beq _08050134
	ldrb r0, [r5, #0x14]
	strb r0, [r2, #0x14]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r2, #0
	adds r1, #0x5c
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r1, #0x1a
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, #4
	strh r0, [r1]
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_08050134:
	movs r3, #0x34
	ldrsh r0, [r5, r3]
	cmp r0, #0
	beq _08050154
	movs r0, #0xd3
	bl sub_080D7910
	ldrh r0, [r5, #0x34]
	subs r0, #1
	strh r0, [r5, #0x34]
	b _080501C2
	.align 2, 0
_0805014C: .4byte 0x081C15F4
_08050150: .4byte sub_0804FB78
_08050154:
	adds r0, r5, #0
	movs r1, #0
	bl sub_0804FA88
	movs r0, #0xab
	bl sub_080D7910
	adds r0, r5, #0
	bl sub_0804FE20
	ldr r0, _080501CC @ =gEwramData
	ldr r2, [r0]
	ldrh r1, [r5, #0x32]
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
	ldrb r2, [r5, #0x14]
	adds r0, r4, #0
	bl sub_08012154
	cmp r0, #0
	blt _080501B6
	bl sub_08012048
_080501B6:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080501C2:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080501CC: .4byte gEwramData

	thumb_func_start sub_080501D0
sub_080501D0: @ 0x080501D0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _08050248 @ =gEwramData
	ldr r2, [r0]
	ldrh r1, [r5, #0x32]
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
	bne _08050240
	movs r0, #0x30
	ldrsh r1, [r5, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805024C @ =0x08526064
	adds r6, r0, r1
	ldrh r0, [r6]
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #2
	ldr r0, _08050250 @ =0x08526004
	adds r4, r4, r0
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r6, #8]
	adds r0, r5, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldr r1, [r4]
	ldr r2, [r4, #4]
	ldrb r3, [r6, #2]
	ldr r0, [r4, #8]
	str r0, [sp]
	adds r0, r5, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08050254
_08050240:
	adds r0, r5, #0
	bl EntityDelete
	b _08050266
	.align 2, 0
_08050248: .4byte gEwramData
_0805024C: .4byte 0x08526064
_08050250: .4byte 0x08526004
_08050254:
	ldrb r0, [r6, #3]
	adds r1, r5, #0
	adds r1, #0x65
	strb r0, [r1]
	ldrb r0, [r6, #9]
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	bl sub_0804FCA0
_08050266:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08050270
sub_08050270: @ 0x08050270
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl sub_08021E38
	cmp r0, #0
	beq _080502B4
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080502B4
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	movs r2, #0xc
	movs r3, #6
	bl sub_08045CEC
	adds r1, r0, #0
	cmp r1, #0
	beq _080502B4
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, #0x5c
	strb r0, [r1]
_080502B4:
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _080502BC
	b _080503CC
_080502BC:
	ldr r0, _08050304 @ =gEwramData
	ldr r2, [r0]
	ldrh r1, [r5, #0x32]
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
	beq _080503CC
	movs r0, #0x30
	ldrsh r1, [r5, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08050308 @ =0x08526064
	adds r0, r0, r1
	ldrb r0, [r0, #9]
	cmp r0, #0
	beq _0805030C
	adds r0, r5, #0
	movs r1, #0
	bl sub_0804FA88
	movs r1, #0x59
	adds r1, r1, r5
	mov sb, r1
	b _08050388
	.align 2, 0
_08050304: .4byte gEwramData
_08050308: .4byte 0x08526064
_0805030C:
	movs r7, #1
	rsbs r7, r7, #0
	movs r3, #0x59
	adds r3, r3, r5
	mov sb, r3
_08050316:
	movs r6, #3
	rsbs r6, r6, #0
	adds r0, r7, #1
	mov r8, r0
	b _08050364
_08050320:
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #4
	bl sub_0802D5EC
	adds r1, r5, #0
	adds r1, #0x42
	lsls r2, r7, #3
	ldrh r1, [r1]
	subs r1, r1, r2
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x42
	strh r1, [r0]
	movs r0, #4
	bl sub_0802D5EC
	adds r1, r5, #0
	adds r1, #0x46
	lsls r2, r6, #3
	adds r2, #0x20
	ldrh r1, [r1]
	subs r1, r1, r2
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x46
	strh r1, [r0]
	ldrh r0, [r5, #0x30]
	strh r0, [r4, #0x30]
	adds r6, #1
_08050364:
	cmp r6, #3
	bgt _08050378
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _080503DC @ =sub_0804F9B4
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	bne _08050320
_08050378:
	mov r7, r8
	cmp r7, #1
	ble _08050316
	movs r1, #0x20
	rsbs r1, r1, #0
	adds r0, r5, #0
	bl sub_0804FA88
_08050388:
	movs r0, #0xab
	bl sub_080D7910
	adds r0, r5, #0
	bl sub_0804FE20
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
	ldrb r2, [r5, #0x14]
	adds r0, r4, #0
	bl sub_08012154
	cmp r0, #0
	blt _080503C0
	bl sub_08012048
_080503C0:
	mov r1, sb
	ldrb r0, [r1]
	movs r1, #8
	orrs r0, r1
	mov r3, sb
	strb r0, [r3]
_080503CC:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080503DC: .4byte sub_0804F9B4

	thumb_func_start sub_080503E0
sub_080503E0: @ 0x080503E0
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080503F2
	cmp r0, #1
	beq _08050410
	b _08050418
_080503F2:
	bl RandomNumberGenerator
	movs r1, #0xff
	ands r1, r0
	lsls r1, r1, #4
	ldr r0, _0805040C @ =0xFFFF4000
	subs r0, r0, r1
	str r0, [r4, #0x4c]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _08050418
	.align 2, 0
_0805040C: .4byte 0xFFFF4000
_08050410:
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
_08050418:
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
	bne _0805043C
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_0805043C:
	adds r0, r4, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _08050452
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_08050452:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805045C
sub_0805045C: @ 0x0805045C
	push {lr}
	adds r3, r0, #0
	ldr r0, _08050480 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08050484 @ =0x0000037E
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r2, #0x32
	ldrsh r1, [r3, r2]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08050488
	adds r0, r3, #0
	bl EntityDelete
	b _080504B2
	.align 2, 0
_08050480: .4byte gEwramData
_08050484: .4byte 0x0000037E
_08050488:
	ldrh r0, [r3, #0x30]
	adds r1, r3, #0
	adds r1, #0x36
	movs r2, #0
	strb r0, [r1]
	ldrb r1, [r1]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080504B8 @ =0x080E9644
	adds r0, r0, r1
	ldrh r1, [r0, #0xc]
	strh r1, [r3, #0x34]
	strh r2, [r3, #0x30]
	strh r2, [r3, #0x32]
	ldr r1, [r0, #4]
	str r1, [r3]
	ldr r1, [r0]
	adds r0, r3, #0
	bl _call_via_r1
_080504B2:
	pop {r0}
	bx r0
	.align 2, 0
_080504B8: .4byte 0x080E9644

	thumb_func_start sub_080504BC
sub_080504BC: @ 0x080504BC
	bx lr
	.align 2, 0

	thumb_func_start sub_080504C0
sub_080504C0: @ 0x080504C0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	bl sub_08012078
	cmp r0, #0
	bne _080504D8
	adds r0, r4, #0
	bl EntityDelete
	b _08050502
_080504D8:
	ldrh r0, [r4, #0x30]
	adds r1, r4, #0
	adds r1, #0x36
	movs r2, #0
	strb r0, [r1]
	ldrb r1, [r1]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08050508 @ =0x080E9644
	adds r0, r0, r1
	ldrh r1, [r0, #0xc]
	strh r1, [r4, #0x34]
	strh r2, [r4, #0x30]
	strh r2, [r4, #0x32]
	ldr r1, [r0, #4]
	str r1, [r4]
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
_08050502:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08050508: .4byte 0x080E9644

	thumb_func_start sub_0805050C
sub_0805050C: @ 0x0805050C
	bx lr
	.align 2, 0

	thumb_func_start sub_08050510
sub_08050510: @ 0x08050510
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	movs r5, #0xc0
	lsls r5, r5, #0xa
	ldr r0, _08050560 @ =gEwramData
	ldr r3, [r0]
	ldr r1, _08050564 @ =0x00013260
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08050540
	ldr r2, _08050568 @ =0x00013110
	adds r0, r3, r2
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080505C2
_08050540:
	ldr r0, _08050568 @ =0x00013110
	adds r4, r3, r0
	ldr r2, [r4]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x13
	orrs r0, r1
	str r0, [r2, #0x10]
	ldr r1, [r4]
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	beq _0805056C
	movs r0, #1
	strb r0, [r1, #0x1e]
	b _080505C2
	.align 2, 0
_08050560: .4byte gEwramData
_08050564: .4byte 0x00013260
_08050568: .4byte 0x00013110
_0805056C:
	ldr r2, _080505AC @ =0x000131D6
	adds r1, r3, r2
	movs r0, #1
	strh r0, [r1]
	ldr r0, _080505B0 @ =0x000131D4
	adds r1, r3, r0
	movs r0, #3
	strh r0, [r1]
	adds r2, #2
	adds r1, r3, r2
	ldr r0, [r4]
	ldr r0, [r0, #0x40]
	movs r2, #0x80
	lsls r2, r2, #0xc
	adds r0, r0, r2
	str r0, [r1]
	ldr r0, _080505B4 @ =0x000131DC
	adds r1, r3, r0
	ldr r0, [r4]
	ldr r0, [r0, #0x44]
	str r0, [r1]
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _080505B8
	rsbs r4, r5, #0
	adds r0, r4, #0
	adds r1, r4, #0
	bl sub_08021248
	str r4, [r6, #0x48]
	b _080505C2
	.align 2, 0
_080505AC: .4byte 0x000131D6
_080505B0: .4byte 0x000131D4
_080505B4: .4byte 0x000131DC
_080505B8:
	ldr r1, _080505C8 @ =0xFFFD0000
	adds r0, r5, #0
	bl sub_08021248
	str r5, [r6, #0x48]
_080505C2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080505C8: .4byte 0xFFFD0000

	thumb_func_start sub_080505CC
sub_080505CC: @ 0x080505CC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r1, _08050684 @ =0x085261FC
	movs r2, #0x30
	ldrsh r0, [r7, r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r6, [r0]
	ldr r5, _08050688 @ =gEwramData
	ldr r0, [r5]
	ldr r4, _0805068C @ =0x00013110
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, [r5]
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #0
	str r0, [r7, #0x48]
	ldrh r0, [r6]
	cmp r0, #3
	beq _08050660
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	lsls r5, r1, #0x10
_08050614:
	movs r1, #8
	ldrsh r0, [r6, r1]
	cmp r4, r0
	blt _08050658
	movs r2, #8
	ldrsh r0, [r6, r2]
	ldrh r1, [r6, #0xc]
	adds r0, r0, r1
	cmp r4, r0
	bgt _08050658
	asrs r2, r5, #0x10
	movs r1, #0xa
	ldrsh r0, [r6, r1]
	cmp r2, r0
	blt _08050658
	movs r1, #0xa
	ldrsh r0, [r6, r1]
	ldrh r1, [r6, #0xe]
	adds r0, r0, r1
	movs r1, #1
	cmp r2, r0
	ble _08050642
	movs r1, #0
_08050642:
	cmp r1, #0
	beq _08050658
	ldr r0, _08050690 @ =0x08526208
	ldrh r1, [r6]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, r7, #0
	adds r1, r6, #0
	bl _call_via_r2
_08050658:
	adds r6, #0x10
	ldrh r0, [r6]
	cmp r0, #3
	bne _08050614
_08050660:
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08050678
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
	bl sub_080220B4
_08050678:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08050684: .4byte 0x085261FC
_08050688: .4byte gEwramData
_0805068C: .4byte 0x00013110
_08050690: .4byte 0x08526208

	thumb_func_start sub_08050694
sub_08050694: @ 0x08050694
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldr r0, _080506B8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080506BC @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080506B4
	ldr r0, [r2, #4]
	str r0, [r3, #0x48]
_080506B4:
	pop {r0}
	bx r0
	.align 2, 0
_080506B8: .4byte gEwramData
_080506BC: .4byte 0x00013110

	thumb_func_start sub_080506C0
sub_080506C0: @ 0x080506C0
	push {lr}
	ldr r0, _080506E4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080506E8 @ =0x00013110
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r1, [r2, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080506E0
	movs r0, #0x80
	lsls r0, r0, #0x13
	orrs r1, r0
	str r1, [r2, #0x10]
_080506E0:
	pop {r0}
	bx r0
	.align 2, 0
_080506E4: .4byte gEwramData
_080506E8: .4byte 0x00013110

	thumb_func_start sub_080506EC
sub_080506EC: @ 0x080506EC
	ldr r0, [r0, #0x48]
	bx lr

	thumb_func_start sub_080506F0
sub_080506F0: @ 0x080506F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0805070C @ =0x08118520
	bl sub_08022088
	adds r4, #0x59
	ldrb r0, [r4]
	movs r1, #4
	orrs r0, r1
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805070C: .4byte 0x08118520

	thumb_func_start sub_08050710
sub_08050710: @ 0x08050710
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _08050740 @ =0x081CBE74
	ldr r2, _08050744 @ =0x08209F54
	ldr r0, _08050748 @ =0x0821017C
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	cmp r0, #0
	beq _08050738
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _0805074C
_08050738:
	adds r0, r4, #0
	bl EntityDelete
	b _080507B0
	.align 2, 0
_08050740: .4byte 0x081CBE74
_08050744: .4byte 0x08209F54
_08050748: .4byte 0x0821017C
_0805074C:
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
	adds r5, r4, #0
	adds r5, #0x59
	ldrb r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r5]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x16
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r1, _080507B8 @ =0x122006F0
	adds r0, r4, #0
	bl sub_080428F0
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r3, #2
	orrs r0, r3
	movs r1, #0xfb
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r5]
	orrs r0, r3
	strb r0, [r5]
_080507B0:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080507B8: .4byte 0x122006F0

	thumb_func_start sub_080507BC
sub_080507BC: @ 0x080507BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r4, r0, #0
	adds r0, #0x46
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0xa8
	ble _080507D8
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	b _080507E4
_080507D8:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r2, [r0]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
_080507E4:
	strb r1, [r0]
	adds r7, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl sub_08021278
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0805083C
	ldr r6, _08050830 @ =gEwramData
	ldr r0, [r6]
	ldr r1, _08050834 @ =0x00013190
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, r4
	bne _0805084E
	movs r5, #0x80
	lsls r5, r5, #1
	movs r0, #0x89
	lsls r0, r0, #1
	bl sub_080D7910
	ldr r0, [r6]
	ldr r1, _08050838 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r4, #0x40]
	cmp r1, r0
	bge _08050822
	rsbs r5, r5, #0
_08050822:
	str r5, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r4, #0x20]
	movs r0, #1
	b _0805084C
	.align 2, 0
_08050830: .4byte gEwramData
_08050834: .4byte 0x00013190
_08050838: .4byte 0x00013110
_0805083C:
	ldr r0, _080508A8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080508AC @ =0x00013190
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, r4
	beq _0805084E
	movs r0, #0
_0805084C:
	strb r0, [r4, #0xb]
_0805084E:
	add r0, sp, #8
	adds r1, r4, #0
	bl sub_080421AC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08050890
	add r0, sp, #8
	ldrh r1, [r0]
	movs r0, #0x1a
	ands r0, r1
	cmp r0, #0
	beq _08050890
	movs r5, #0x80
	lsls r5, r5, #1
	movs r0, #0x89
	lsls r0, r0, #1
	bl sub_080D7910
	ldr r0, _080508A8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080508B0 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r4, #0x40]
	cmp r1, r0
	bge _08050888
	rsbs r5, r5, #0
_08050888:
	str r5, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r4, #0x20]
_08050890:
	ldr r1, [r4, #0x18]
	cmp r1, #0
	ble _080508B4
	ldr r0, [r4, #0x1c]
	subs r0, #0x10
	str r0, [r4, #0x1c]
	adds r0, r1, r0
	str r0, [r4, #0x18]
	cmp r0, #0
	bgt _080508D8
	b _080508C6
	.align 2, 0
_080508A8: .4byte gEwramData
_080508AC: .4byte 0x00013190
_080508B0: .4byte 0x00013110
_080508B4:
	cmp r1, #0
	bge _080508D2
	ldr r0, [r4, #0x1c]
	adds r0, #0x10
	str r0, [r4, #0x1c]
	adds r0, r1, r0
	str r0, [r4, #0x18]
	cmp r0, #0
	blt _080508D8
_080508C6:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _080508D8
	subs r0, #0x20
	str r0, [r4, #0x20]
	b _080508D8
_080508D2:
	ldr r0, [r4, #0x1c]
	adds r0, r1, r0
	str r0, [r4, #0x18]
_080508D8:
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	cmp r1, r0
	bgt _080508E6
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080508E8
_080508E6:
	str r0, [r4, #0x1c]
_080508E8:
	ldr r0, [r4, #0x18]
	movs r1, #0x80
	lsls r1, r1, #5
	cmp r0, r1
	bgt _080508F8
	ldr r1, _0805091C @ =0xFFFFF000
	cmp r0, r1
	bge _080508FA
_080508F8:
	str r1, [r4, #0x18]
_080508FA:
	ldr r0, [r4, #0x18]
	movs r2, #0x80
	lsls r2, r2, #9
	movs r1, #0
	str r1, [sp]
	ldrb r1, [r7]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805091C: .4byte 0xFFFFF000

	thumb_func_start sub_08050920
sub_08050920: @ 0x08050920
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
	ldr r1, _080509E4 @ =gEwramData
	ldr r2, [r1]
	ldr r3, _080509E8 @ =0x0000A094
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
	beq _08050A10
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	ldr r2, _080509EC @ =0xFFFC0000
	adds r1, r1, r2
	movs r2, #4
	movs r3, #6
	bl sub_08045CEC
	adds r4, r0, #0
	cmp r4, #0
	beq _080509B2
	movs r0, #1
	strb r0, [r4, #0xf]
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_0802D5EC
	adds r1, r0, #0
	ldr r3, _080509F0 @ =0xFFFFC000
	adds r0, r1, r3
	str r0, [r4, #0x4c]
	cmp r0, #0
	bge _08050994
	ldr r2, _080509F4 @ =0xFFFFC01F
	adds r0, r1, r2
_08050994:
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
	bge _080509AE
	adds r0, #0x3f
_080509AE:
	asrs r0, r0, #6
	str r0, [r4, #0x50]
_080509B2:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	ldr r3, _080509F8 @ =0xFFFF0000
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
	ldr r1, _080509FC @ =0x000003FF
	ands r1, r0
	ldr r0, _08050A00 @ =0x000001FF
	cmp r1, r0
	bhi _08050A04
	subs r0, #0xa7
	bl sub_080D7910
	b _08050A28
	.align 2, 0
_080509E4: .4byte gEwramData
_080509E8: .4byte 0x0000A094
_080509EC: .4byte 0xFFFC0000
_080509F0: .4byte 0xFFFFC000
_080509F4: .4byte 0xFFFFC01F
_080509F8: .4byte 0xFFFF0000
_080509FC: .4byte 0x000003FF
_08050A00: .4byte 0x000001FF
_08050A04:
	ldr r0, _08050A0C @ =0x00000159
	bl sub_080D7910
	b _08050A28
	.align 2, 0
_08050A0C: .4byte 0x00000159
_08050A10:
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
	bne _08050A34
_08050A28:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_08050A34:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
