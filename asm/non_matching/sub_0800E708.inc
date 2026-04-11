
.syntax unified
.text
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
	bl DmaQueue_DirectCopy
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
	bl DmaQueue_DirectCopy
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
	bl DmaQueue_DirectCopy
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
.syntax divided
