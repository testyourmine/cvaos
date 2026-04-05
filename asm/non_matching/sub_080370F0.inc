
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
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
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r7, #0
	bl GetEntityRoomXPositionInteger
	adds r5, r0, #0
	ldr r0, _08037228 @ =gEwramData
	ldr r0, [r0]
	ldrh r0, [r0, #0x1c]
	lsrs r0, r0, #1
	str r0, [sp, #0x24]
	movs r0, #1
	mov sb, r0
	ldr r1, [sp, #0x24]
	ands r1, r0
	str r1, [sp, #0x24]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	mov r2, r8
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	ldr r2, [sp, #0x24]
	bl sub_08001E58
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	movs r3, #8
	rsbs r3, r3, #0
	adds r3, r3, r5
	mov r8, r3
	adds r6, r4, #1
	mov r0, r8
	adds r1, r6, #0
	ldr r2, [sp, #0x24]
	bl sub_08001E58
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x18]
	adds r5, #8
	adds r0, r5, #0
	adds r1, r6, #0
	ldr r2, [sp, #0x24]
	bl sub_08001E58
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	subs r4, #0x20
	mov r0, r8
	adds r1, r4, #0
	movs r2, #0
	bl sub_08001CCC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x20]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08001CCC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	adds r0, r7, #0
	bl GetEntityRoomYPositionInteger
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r7, #0
	bl GetEntityRoomXPositionInteger
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	lsls r5, r0, #0x10
	asrs r5, r5, #0x10
	adds r1, r5, #1
	adds r0, r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r1, _0803722C @ =0x080E2298
	add r0, sp, #4
	adds r2, r6, #0
	bl sprintf
	movs r0, #2
	movs r1, #2
	movs r2, #0xf
	add r3, sp, #4
	bl BgCmdBuffer_WriteString
	ldr r1, _08037230 @ =0x080E22E8
	add r0, sp, #4
	adds r2, r4, #0
	adds r3, r5, #0
	bl sprintf
	movs r0, #3
	movs r1, #3
	movs r2, #0xf
	add r3, sp, #4
	bl BgCmdBuffer_WriteString
	movs r0, #3
	movs r1, #4
	movs r2, #0xf
	add r3, sp, #4
	bl BgCmdBuffer_WriteString
	movs r2, #0
	movs r0, #2
	ands r0, r6
	cmp r0, #0
	bne _08037210
	movs r0, #0xc0
	ands r0, r6
	cmp r0, #0
	beq _0803723C
_08037210:
	movs r0, #8
	ands r0, r6
	cmp r0, #0
	beq _08037234
	adds r0, r6, #0
	mov r1, sb
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	beq _08037236
	movs r1, #2
	b _08037236
	.align 2, 0
_08037228: .4byte gEwramData
_0803722C: .4byte 0x080E2298
_08037230: .4byte 0x080E22E8
_08037234:
	movs r1, #0
_08037236:
	cmp r1, #1
	beq _0803723C
	movs r2, #1
_0803723C:
	movs r0, #0xc0
	ands r0, r6
	cmp r0, #0
	beq _08037250
	movs r0, #2
	ands r0, r6
	movs r1, #1
	cmp r0, #0
	beq _08037252
	b _08037256
_08037250:
	movs r1, #0
_08037252:
	cmp r1, #0
	beq _08037264
_08037256:
	movs r0, #4
	ands r0, r6
	movs r3, #4
	cmp r0, #0
	beq _08037266
	movs r3, #3
	b _08037266
_08037264:
	movs r3, #0
_08037266:
	lsrs r0, r6, #6
	ldr r1, _08037294 @ =0x080E22F0
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
	beq _08037298
	cmp r6, #1
	beq _08037314
	adds r6, r7, #0
	adds r6, #0x42
	movs r2, #0x46
	adds r2, r2, r7
	mov sb, r2
	b _08037604
	.align 2, 0
_08037294: .4byte 0x080E22F0
_08037298:
	ldr r0, _08037308 @ =0x081CF0DC
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	adds r4, r0, #0
	ldr r0, _0803730C @ =0x0820B11C
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_0803C7B4
	ldr r1, _08037310 @ =0x08231578
	adds r0, r7, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r5, r7, #0
	adds r5, #0x42
	movs r0, #0x64
	strh r0, [r5]
	adds r4, r7, #0
	adds r4, #0x46
	movs r0, #0x90
	strh r0, [r4]
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
	adds r0, r7, #0
	bl sub_08037070
	adds r6, r5, #0
	mov sb, r4
	b _08037604
	.align 2, 0
_08037308: .4byte 0x081CF0DC
_0803730C: .4byte 0x0820B11C
_08037310: .4byte 0x08231578
_08037314:
	ldr r0, _08037528 @ =gEwramData
	ldr r1, [r0]
	mov r8, r0
	movs r5, #0
	str r5, [r7, #0x50]
	ldrh r1, [r1, #0x1c]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08037340
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
_08037340:
	mov r0, r8
	ldr r3, [r0]
	ldrh r1, [r3, #0x1c]
	movs r0, #0x10
	ands r0, r1
	adds r4, r3, #0
	cmp r0, #0
	beq _08037368
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
_08037368:
	ldr r1, [r7, #0x10]
	cmp r1, #1
	bne _08037380
	ldrh r0, [r4, #0x1e]
	ands r1, r0
	cmp r1, #0
	beq _0803739C
	movs r0, #2
	str r0, [r7, #0x10]
	ldr r0, _0803752C @ =0xFFFC0000
	str r0, [r7, #0x4c]
	str r5, [r7, #0x54]
_08037380:
	ldrh r1, [r3, #0x1e]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0803739C
	ldrh r1, [r3, #0x1c]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803739C
	str r6, [r7, #0x10]
	ldr r0, _08037530 @ =0xFFF60000
	str r0, [r7, #0x4c]
	str r5, [r7, #0x54]
_0803739C:
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bne _080373E2
	ldr r1, [sp, #0x18]
	cmp r1, #0
	bne _080373BC
	ldr r2, [sp, #0x1c]
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _080373BC
	movs r0, #1
	str r0, [r7, #0x10]
	str r1, [r7, #0x4c]
	ldr r0, _08037534 @ =0xFFFFF000
	str r0, [r7, #0x54]
_080373BC:
	ldr r2, [r7, #0x10]
	cmp r2, #0
	bne _080373E2
	mov r3, r8
	ldr r0, [r3]
	ldrh r1, [r0, #0x1e]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080373DA
	str r3, [r7, #0x10]
	ldr r0, _08037538 @ =0xFFFAE000
	str r0, [r7, #0x4c]
	str r2, [r7, #0x54]
_080373DA:
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bne _080373E2
	b _080375F2
_080373E2:
	ldr r0, [r7, #0x4c]
	movs r1, #0x46
	adds r1, r1, r7
	mov sb, r1
	cmp r0, #0
	bge _0803741C
	ldr r2, [sp, #0x20]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _080373FE
	mov r3, sl
	cmp r3, #0
	beq _0803741C
_080373FE:
	adds r1, r7, #0
	adds r1, #0x46
	movs r3, #0
	ldrsh r2, [r1, r3]
	mov sb, r1
	cmp r0, #0
	bne _08037412
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
_08037412:
	adds r0, r2, r0
	movs r2, #0
	mov r3, sb
	strh r0, [r3]
	str r2, [r7, #0x4c]
_0803741C:
	ldr r0, [r7, #0x4c]
	ldr r2, _0803753C @ =0xFFFFC000
	cmp r0, r2
	bge _08037438
	mov r1, r8
	ldr r0, [r1]
	ldrh r1, [r0, #0x1c]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08037438
	str r2, [r7, #0x4c]
	ldr r0, _08037540 @ =0xFFFFE000
	str r0, [r7, #0x54]
_08037438:
	ldr r1, [r7, #0x4c]
	ldr r0, _08037544 @ =0x00001FFF
	cmp r1, r0
	bgt _08037448
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r1, r2
	str r0, [r7, #0x4c]
_08037448:
	ldr r0, [r7, #0x4c]
	ldr r3, _08037548 @ =0x0001FFFF
	adds r0, r0, r3
	ldr r1, _0803754C @ =0x00021FFE
	cmp r0, r1
	bhi _08037472
	ldr r0, _08037528 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1c]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08037472
	ldr r0, [r7, #0x54]
	ldr r1, _08037550 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r7, #0x54]
	ldr r1, _08037554 @ =0xFFFFD800
	cmp r0, r1
	bge _08037472
	str r1, [r7, #0x54]
_08037472:
	ldr r0, [r7, #0x4c]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r0, r2
	str r1, [r7, #0x4c]
	cmp r1, #0
	ble _08037498
	ldr r0, [r7, #0x54]
	adds r1, r1, r0
	str r1, [r7, #0x4c]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r0, r3
	str r0, [r7, #0x54]
	movs r1, #0x80
	lsls r1, r1, #5
	cmp r0, r1
	ble _08037498
	str r1, [r7, #0x54]
_08037498:
	ldr r0, [r7, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	cmp r0, r1
	ble _080374A4
	str r1, [r7, #0x4c]
_080374A4:
	ldr r0, [r7, #0x44]
	ldr r1, [r7, #0x4c]
	adds r0, r0, r1
	str r0, [r7, #0x44]
	adds r0, r7, #0
	bl GetEntityRoomYPositionInteger
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r7, #0
	bl GetEntityRoomXPositionInteger
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov sl, r1
	asrs r5, r0, #0x10
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	ldr r2, [sp, #0x24]
	bl sub_08001E58
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, _08037558 @ =gUnk_03002CB0
	ldr r3, _0803755C @ =0x0000100C
	adds r0, r0, r3
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #3
	bne _08037564
	adds r1, r4, #0
	subs r1, #0x20
	adds r0, r5, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08037560
	adds r1, r4, #0
	subs r1, #0x10
	adds r0, r5, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _08037560
	ldr r2, [sp, #0x14]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r3, sb
	ldrh r3, [r3]
	adds r0, r0, r3
	mov r2, sb
	strh r0, [r2]
	adds r0, r7, #0
	adds r0, #0x44
	strh r1, [r0]
	b _08037564
	.align 2, 0
_08037528: .4byte gEwramData
_0803752C: .4byte 0xFFFC0000
_08037530: .4byte 0xFFF60000
_08037534: .4byte 0xFFFFF000
_08037538: .4byte 0xFFFAE000
_0803753C: .4byte 0xFFFFC000
_08037540: .4byte 0xFFFFE000
_08037544: .4byte 0x00001FFF
_08037548: .4byte 0x0001FFFF
_0803754C: .4byte 0x00021FFE
_08037550: .4byte 0xFFFFF800
_08037554: .4byte 0xFFFFD800
_08037558: .4byte gUnk_03002CB0
_0803755C: .4byte 0x0000100C
_08037560:
	movs r3, #0
	str r3, [sp, #0x14]
_08037564:
	ldr r1, [sp, #0x14]
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	adds r6, r7, #0
	adds r6, #0x42
	adds r5, r0, #0
	cmp r4, #0
	bne _080375D2
	ldr r0, [r7, #0x50]
	cmp r0, #0
	ble _080375A2
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, #8
	mov r3, r8
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldr r2, [sp, #0x24]
	bl sub_080020D8
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080375A2
	ldrh r0, [r6]
	adds r0, r1, r0
	strh r0, [r6]
	adds r0, r7, #0
	adds r0, #0x40
	strh r4, [r0]
_080375A2:
	ldr r0, [r7, #0x50]
	cmp r0, #0
	bge _080375D2
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	subs r0, #8
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	ldr r2, [sp, #0x24]
	bl sub_0800210C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080375D2
	ldrh r0, [r6]
	adds r0, r1, r0
	movs r1, #0
	strh r0, [r6]
	adds r0, r7, #0
	adds r0, #0x40
	strh r1, [r0]
_080375D2:
	cmp r5, #0
	beq _08037604
	adds r0, r7, #0
	adds r0, #0x4e
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	blt _08037604
	adds r1, r7, #0
	adds r1, #0x44
	movs r0, #0
	strh r0, [r1]
	str r0, [r7, #0x4c]
	str r0, [r7, #0x54]
	str r0, [r7, #0x10]
	b _08037604
_080375F2:
	ldr r0, [r7, #0x44]
	ldr r1, [r7, #0x48]
	adds r0, r0, r1
	str r0, [r7, #0x44]
	adds r6, r7, #0
	adds r6, #0x42
	movs r0, #0x46
	adds r0, r0, r7
	mov sb, r0
_08037604:
	adds r0, r7, #0
	bl GetEntityRoomYPositionInteger
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r7, #0
	bl GetEntityRoomXPositionInteger
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bne _0803766E
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r5, r0, #0x10
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	adds r1, r4, #0
	subs r1, #0x20
	adds r0, r5, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803765E
	adds r1, r4, #0
	subs r1, #0x10
	adds r0, r5, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803765E
	adds r0, r5, #0
	adds r1, r4, #0
	ldr r2, [sp, #0x24]
	bl sub_08001E58
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
_0803765E:
	ldr r3, [sp, #0x14]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	mov r1, sb
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r2, sb
	strh r0, [r2]
_0803766E:
	ldr r0, [r7, #0x50]
	cmp r0, #0
	ble _080376A0
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, #8
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	ldr r2, [sp, #0x24]
	bl sub_080020D8
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080376A0
	ldrh r0, [r6]
	adds r0, r1, r0
	movs r1, #0
	strh r0, [r6]
	adds r0, r7, #0
	adds r0, #0x40
	strh r1, [r0]
_080376A0:
	ldr r0, [r7, #0x50]
	cmp r0, #0
	bge _080376D2
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, #8
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	ldr r2, [sp, #0x24]
	bl sub_0800210C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080376D2
	ldrh r0, [r6]
	adds r0, r1, r0
	movs r1, #0
	strh r0, [r6]
	adds r0, r7, #0
	adds r0, #0x40
	strh r1, [r0]
_080376D2:
	ldr r0, _080376E8 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080376EC
	movs r0, #0x80
	lsls r0, r0, #0xb
	b _080376F0
	.align 2, 0
_080376E8: .4byte gEwramData
_080376EC:
	movs r0, #0xc0
	lsls r0, r0, #9
_080376F0:
	str r0, [r7, #0x48]
	ldrb r0, [r7, #0xd]
	adds r0, #1
	strb r0, [r7, #0xd]
	movs r3, #0
	ldrsh r1, [r6, r3]
	subs r1, #0x78
	lsls r1, r1, #0x10
	mov r0, sb
	movs r3, #0
	ldrsh r2, [r0, r3]
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
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
.syntax divided
