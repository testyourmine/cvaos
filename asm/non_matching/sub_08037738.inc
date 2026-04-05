
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	adds r7, r0, #0
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	bl GetEntityRoomYPositionInteger
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r7, #0
	bl GetEntityRoomXPositionInteger
	adds r5, r0, #0
	ldr r0, _08037858 @ =gEwramData
	ldr r0, [r0]
	ldrh r0, [r0, #0x1c]
	lsrs r0, r0, #1
	str r0, [sp, #0x20]
	movs r0, #1
	mov sb, r0
	ldr r1, [sp, #0x20]
	ands r1, r0
	str r1, [sp, #0x20]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r4, r6, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08001CCC
	movs r2, #8
	rsbs r2, r2, #0
	adds r2, r2, r5
	mov r8, r2
	subs r6, r4, #1
	mov r0, r8
	adds r1, r6, #0
	movs r2, #0
	bl sub_08001CCC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	adds r5, #8
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	bl sub_08001CCC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	adds r4, #0x20
	mov r0, r8
	adds r1, r4, #0
	ldr r2, [sp, #0x20]
	bl sub_08001E58
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x18]
	adds r0, r5, #0
	adds r1, r4, #0
	ldr r2, [sp, #0x20]
	bl sub_08001E58
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	adds r0, r7, #0
	bl GetEntityRoomYPositionInteger
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r7, #0
	bl GetEntityRoomXPositionInteger
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r5, r6, #0x10
	asrs r5, r5, #0x10
	subs r1, r5, #1
	adds r0, r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r1, _0803785C @ =0x080E2298
	add r0, sp, #4
	adds r2, r6, #0
	bl sprintf
	movs r0, #2
	movs r1, #2
	movs r2, #0xf
	add r3, sp, #4
	bl BgCmdBuffer_WriteString
	ldr r1, _08037860 @ =0x080E22E8
	add r0, sp, #4
	adds r2, r4, #0
	adds r3, r5, #0
	bl sprintf
	movs r0, #3
	movs r1, #3
	movs r2, #0xf
	add r3, sp, #4
	bl BgCmdBuffer_WriteString
	movs r2, #0
	movs r0, #2
	ands r0, r6
	cmp r0, #0
	bne _0803783E
	movs r0, #0xc0
	ands r0, r6
	cmp r0, #0
	beq _0803786C
_0803783E:
	movs r0, #8
	ands r0, r6
	cmp r0, #0
	beq _08037864
	adds r0, r6, #0
	mov r1, sb
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	beq _08037866
	movs r1, #2
	b _08037866
	.align 2, 0
_08037858: .4byte gEwramData
_0803785C: .4byte 0x080E2298
_08037860: .4byte 0x080E22E8
_08037864:
	movs r1, #0
_08037866:
	cmp r1, #1
	beq _0803786C
	movs r2, #1
_0803786C:
	movs r0, #0xc0
	ands r0, r6
	cmp r0, #0
	beq _08037880
	movs r0, #2
	ands r0, r6
	movs r1, #1
	cmp r0, #0
	beq _08037882
	b _08037886
_08037880:
	movs r1, #0
_08037882:
	cmp r1, #0
	beq _08037894
_08037886:
	movs r0, #4
	ands r0, r6
	movs r3, #4
	cmp r0, #0
	beq _08037896
	movs r3, #3
	b _08037896
_08037894:
	movs r3, #0
_08037896:
	lsrs r0, r6, #6
	ldr r1, _080378BC @ =0x080E22F0
	str r0, [sp]
	add r0, sp, #4
	bl sprintf
	movs r0, #3
	movs r1, #4
	movs r2, #0xf
	add r3, sp, #4
	bl BgCmdBuffer_WriteString
	ldrb r6, [r7, #0xa]
	cmp r6, #0
	beq _080378C0
	cmp r6, #1
	beq _08037940
	b _08037BE0
	.align 2, 0
_080378BC: .4byte 0x080E22F0
_080378C0:
	ldr r0, _08037934 @ =0x081CF0DC
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	adds r4, r0, #0
	ldr r0, _08037938 @ =0x0820B11C
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_0803C7B4
	ldr r1, _0803793C @ =0x08231578
	adds r0, r7, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r4, r7, #0
	adds r4, #0x42
	movs r0, #0x64
	strh r0, [r4]
	adds r5, r7, #0
	adds r5, #0x46
	movs r0, #0x80
	strh r0, [r5]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r7, #0x48]
	str r6, [r7, #0x4c]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0x10
	strb r0, [r1]
	subs r2, #1
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08037070
	b _08037BE8
	.align 2, 0
_08037934: .4byte 0x081CF0DC
_08037938: .4byte 0x0820B11C
_0803793C: .4byte 0x08231578
_08037940:
	ldr r0, _08037BA0 @ =gEwramData
	ldr r1, [r0]
	mov r8, r0
	movs r5, #0
	str r5, [r7, #0x50]
	ldrh r1, [r1, #0x1c]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803796C
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x48]
	subs r0, r0, r1
	str r0, [r7, #0x40]
	rsbs r1, r1, #0
	str r1, [r7, #0x50]
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
_0803796C:
	mov r2, r8
	ldr r3, [r2]
	ldrh r1, [r3, #0x1c]
	movs r0, #0x10
	ands r0, r1
	adds r4, r3, #0
	cmp r0, #0
	beq _08037994
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x48]
	adds r0, r0, r1
	str r0, [r7, #0x40]
	str r1, [r7, #0x50]
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_08037994:
	ldr r1, [r7, #0x10]
	cmp r1, #1
	bne _080379AC
	ldrh r0, [r4, #0x1e]
	ands r1, r0
	cmp r1, #0
	beq _080379C8
	movs r0, #2
	str r0, [r7, #0x10]
	ldr r0, _08037BA4 @ =0xFFFC0000
	str r0, [r7, #0x4c]
	str r5, [r7, #0x54]
_080379AC:
	ldrh r1, [r3, #0x1e]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080379C8
	ldrh r1, [r3, #0x1c]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080379C8
	str r6, [r7, #0x10]
	ldr r0, _08037BA8 @ =0xFFF60000
	str r0, [r7, #0x4c]
	str r5, [r7, #0x54]
_080379C8:
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bne _08037A0E
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _080379E8
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _080379E8
	movs r0, #1
	str r0, [r7, #0x10]
	str r1, [r7, #0x4c]
	ldr r0, _08037BAC @ =0xFFFFF000
	str r0, [r7, #0x54]
_080379E8:
	ldr r2, [r7, #0x10]
	cmp r2, #0
	bne _08037A0E
	mov r1, r8
	ldr r0, [r1]
	ldrh r1, [r0, #0x1e]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08037A06
	str r3, [r7, #0x10]
	ldr r0, _08037BB0 @ =0xFFFAE000
	str r0, [r7, #0x4c]
	str r2, [r7, #0x54]
_08037A06:
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bne _08037A0E
	b _08037BD8
_08037A0E:
	ldr r0, [r7, #0x4c]
	adds r5, r7, #0
	adds r5, #0x46
	cmp r0, #0
	bge _08037A36
	ldr r2, [sp, #0x18]
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _08037A2C
	ldr r1, [sp, #0x1c]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08037A36
_08037A2C:
	ldrh r0, [r5]
	adds r0, r1, r0
	strh r0, [r5]
	movs r2, #0
	str r2, [r7, #0x4c]
_08037A36:
	ldr r0, [r7, #0x4c]
	ldr r2, _08037BB4 @ =0xFFFFC000
	cmp r0, r2
	bge _08037A52
	mov r1, r8
	ldr r0, [r1]
	ldrh r1, [r0, #0x1c]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08037A52
	str r2, [r7, #0x4c]
	ldr r0, _08037BB8 @ =0xFFFFE000
	str r0, [r7, #0x54]
_08037A52:
	ldr r1, [r7, #0x4c]
	ldr r0, _08037BBC @ =0x00001FFF
	cmp r1, r0
	bgt _08037A62
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r1, r2
	str r0, [r7, #0x4c]
_08037A62:
	ldr r0, [r7, #0x4c]
	ldr r1, _08037BC0 @ =0x0001FFFF
	adds r0, r0, r1
	ldr r1, _08037BC4 @ =0x00021FFE
	cmp r0, r1
	bhi _08037A8C
	ldr r0, _08037BA0 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1c]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08037A8C
	ldr r0, [r7, #0x54]
	ldr r2, _08037BC8 @ =0xFFFFF800
	adds r0, r0, r2
	str r0, [r7, #0x54]
	ldr r1, _08037BCC @ =0xFFFFD800
	cmp r0, r1
	bge _08037A8C
	str r1, [r7, #0x54]
_08037A8C:
	ldr r0, [r7, #0x4c]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r0, r2
	str r1, [r7, #0x4c]
	cmp r1, #0
	ble _08037AB2
	ldr r0, [r7, #0x54]
	adds r1, r1, r0
	str r1, [r7, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r7, #0x54]
	movs r1, #0x80
	lsls r1, r1, #5
	cmp r0, r1
	ble _08037AB2
	str r1, [r7, #0x54]
_08037AB2:
	ldr r0, [r7, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	cmp r0, r1
	ble _08037ABE
	str r1, [r7, #0x4c]
_08037ABE:
	ldr r0, [r7, #0x44]
	ldr r1, [r7, #0x4c]
	subs r0, r0, r1
	str r0, [r7, #0x44]
	adds r0, r7, #0
	bl GetEntityRoomYPositionInteger
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r7, #0
	bl GetEntityRoomXPositionInteger
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov sb, r2
	asrs r0, r0, #0x10
	mov sl, r0
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x24]
	mov r0, sl
	ldr r1, [sp, #0x24]
	movs r2, #0
	bl sub_08001CCC
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _08037BD0 @ =gUnk_03002CB0
	ldr r1, _08037BD4 @ =0x0000100C
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #3
	bne _08037B16
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r5]
	adds r0, r0, r1
	movs r1, #0
	strh r0, [r5]
	adds r0, r7, #0
	adds r0, #0x44
	strh r1, [r0]
_08037B16:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	mov r8, r2
	adds r4, r7, #0
	adds r4, #0x42
	str r0, [sp, #0x28]
	cmp r2, #0
	bne _08037B7C
	ldr r0, [r7, #0x50]
	cmp r0, #0
	ble _08037B4E
	mov r0, sl
	adds r0, #8
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x20]
	bl sub_080020D8
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08037B4E
	ldrh r0, [r4]
	adds r0, r1, r0
	strh r0, [r4]
	adds r0, r7, #0
	adds r0, #0x40
	mov r1, r8
	strh r1, [r0]
_08037B4E:
	ldr r0, [r7, #0x50]
	cmp r0, #0
	bge _08037B7C
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, #8
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	ldr r2, [sp, #0x20]
	bl sub_0800210C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08037B7C
	ldrh r0, [r4]
	adds r0, r1, r0
	movs r1, #0
	strh r0, [r4]
	adds r0, r7, #0
	adds r0, #0x40
	strh r1, [r0]
_08037B7C:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _08037BE8
	adds r0, r7, #0
	adds r0, #0x4e
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	blt _08037BE8
	adds r1, r7, #0
	adds r1, #0x44
	movs r0, #0
	strh r0, [r1]
	str r0, [r7, #0x4c]
	str r0, [r7, #0x54]
	str r0, [r7, #0x10]
	b _08037BE8
	.align 2, 0
_08037BA0: .4byte gEwramData
_08037BA4: .4byte 0xFFFC0000
_08037BA8: .4byte 0xFFF60000
_08037BAC: .4byte 0xFFFFF000
_08037BB0: .4byte 0xFFFAE000
_08037BB4: .4byte 0xFFFFC000
_08037BB8: .4byte 0xFFFFE000
_08037BBC: .4byte 0x00001FFF
_08037BC0: .4byte 0x0001FFFF
_08037BC4: .4byte 0x00021FFE
_08037BC8: .4byte 0xFFFFF800
_08037BCC: .4byte 0xFFFFD800
_08037BD0: .4byte gUnk_03002CB0
_08037BD4: .4byte 0x0000100C
_08037BD8:
	ldr r0, [r7, #0x44]
	ldr r1, [r7, #0x48]
	subs r0, r0, r1
	str r0, [r7, #0x44]
_08037BE0:
	adds r4, r7, #0
	adds r4, #0x42
	adds r5, r7, #0
	adds r5, #0x46
_08037BE8:
	adds r0, r7, #0
	bl GetEntityRoomYPositionInteger
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r7, #0
	bl GetEntityRoomXPositionInteger
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bne _08037C1E
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	movs r2, #0
	bl sub_08001CCC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
_08037C1E:
	ldr r0, [r7, #0x50]
	cmp r0, #0
	ble _08037C4E
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, #8
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	adds r1, #0x10
	ldr r2, [sp, #0x20]
	bl sub_080020D8
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08037C4E
	ldrh r0, [r4]
	adds r0, r1, r0
	movs r1, #0
	strh r0, [r4]
	adds r0, r7, #0
	adds r0, #0x40
	strh r1, [r0]
_08037C4E:
	ldr r0, [r7, #0x50]
	cmp r0, #0
	bge _08037C7E
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	subs r0, #8
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	adds r1, #0x10
	ldr r2, [sp, #0x20]
	bl sub_0800210C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08037C7E
	ldrh r0, [r4]
	adds r0, r1, r0
	movs r1, #0
	strh r0, [r4]
	adds r0, r7, #0
	adds r0, #0x40
	strh r1, [r0]
_08037C7E:
	ldr r0, _08037C94 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08037C98
	movs r0, #0x80
	lsls r0, r0, #0xb
	b _08037C9C
	.align 2, 0
_08037C94: .4byte gEwramData
_08037C98:
	movs r0, #0xc0
	lsls r0, r0, #9
_08037C9C:
	str r0, [r7, #0x48]
	ldrb r0, [r7, #0xd]
	adds r0, #1
	strb r0, [r7, #0xd]
	movs r2, #0
	ldrsh r1, [r4, r2]
	subs r1, #0x78
	lsls r1, r1, #0x10
	movs r0, #0
	ldrsh r2, [r5, r0]
	subs r2, #0x70
	lsls r2, r2, #0x10
	movs r0, #1
	bl sub_0803FBBC
	movs r0, #1
	bl sub_08000F60
	movs r0, #0
	bl sub_0800D288
	adds r0, r7, #0
	bl sub_0803F17C
	adds r0, r7, #0
	bl sub_0803AC40
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
    .align 2, 0
.syntax divided
