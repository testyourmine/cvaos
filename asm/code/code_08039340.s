	.include "asm/gba_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	thumb_func_start sub_08039340
sub_08039340: @ 0x08039340
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r3, #0
	str r3, [sp]
	ldr r1, _08039404 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r4, _08039408 @ =gEwramData
	ldr r2, [r4]
	ldr r5, _0803940C @ =0x0000FEC4
	adds r0, r2, r5
	str r0, [r1, #4]
	ldr r0, _08039410 @ =0x85000050
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	str r3, [sp]
	mov r7, sp
	str r7, [r1]
	ldr r0, _08039414 @ =0x00010004
	adds r2, r2, r0
	str r2, [r1, #4]
	ldr r0, _08039418 @ =0x8500005B
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r6, #0
	mov ip, r4
	mov sl, ip
	mov sb, r5
	movs r4, #0
	ldr r1, _0803941C @ =0x0000FEC6
	mov r8, r1
	adds r5, #4
_08039388:
	mov r7, sl
	ldr r2, [r7]
	adds r1, r2, r4
	subs r3, r6, #1
	mov r7, sb
	adds r0, r1, r7
	strh r3, [r0]
	adds r0, r6, #1
	add r1, r8
	strh r0, [r1]
	adds r2, r2, r5
	adds r2, r2, r4
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r2]
	adds r4, #0x14
	adds r6, r0, #0
	cmp r6, #0xf
	ble _08039388
	mov r7, ip
	ldr r1, [r7]
	ldr r0, _0803940C @ =0x0000FEC4
	adds r2, r1, r0
	ldr r0, _08039420 @ =0x0000FFFF
	strh r0, [r2]
	ldr r7, _08039424 @ =0x0000FFF0
	adds r2, r1, r7
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r2]
	ldr r0, _08039428 @ =0x00025464
	adds r2, r1, r0
	movs r0, #0
	str r0, [r2]
	ldr r7, _0803942C @ =0x00025468
	adds r1, r1, r7
	movs r0, #2
	strb r0, [r1]
	movs r6, #0
	mov r7, ip
	ldr r4, _08039430 @ =0x0002546C
	ldr r3, _08039434 @ =0x00019404
	ldr r5, _08039438 @ =0x00002010
_080393DE:
	ldr r0, [r7]
	lsls r2, r6, #2
	adds r1, r0, r4
	adds r1, r1, r2
	adds r0, r0, r3
	str r0, [r1]
	adds r3, r3, r5
	adds r6, #1
	cmp r6, #5
	ble _080393DE
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039404: .4byte 0x040000D4
_08039408: .4byte gEwramData
_0803940C: .4byte 0x0000FEC4
_08039410: .4byte 0x85000050
_08039414: .4byte 0x00010004
_08039418: .4byte 0x8500005B
_0803941C: .4byte 0x0000FEC6
_08039420: .4byte 0x0000FFFF
_08039424: .4byte 0x0000FFF0
_08039428: .4byte 0x00025464
_0803942C: .4byte 0x00025468
_08039430: .4byte 0x0002546C
_08039434: .4byte 0x00019404
_08039438: .4byte 0x00002010

	thumb_func_start sub_0803943C
sub_0803943C: @ 0x0803943C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r2, r0, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0xf
	bls _08039452
	b _080395E0
_08039452:
	ldr r1, _080394FC @ =gEwramData
	ldr r3, [r1]
	ldr r4, _08039500 @ =0x00011072
	adds r0, r3, r4
	movs r5, #0
	ldrsh r4, [r0, r5]
	movs r6, #1
	rsbs r6, r6, #0
	mov r8, r6
	mov sb, r1
	cmp r4, r8
	beq _080394AC
	lsls r0, r4, #2
	adds r1, r0, r4
	lsls r1, r1, #2
	ldr r6, _08039504 @ =0x0000FEC8
	adds r5, r3, r6
	adds r1, r5, r1
	asrs r2, r2, #0x10
	ldr r1, [r1]
	adds r6, r0, #0
	cmp r1, r2
	beq _080394AC
	adds r7, r3, #0
	adds r3, r5, #0
	ldr r0, _08039508 @ =0x0000FEC6
	mov ip, r0
	mov r5, r8
_0803948A:
	adds r0, r6, r4
	lsls r0, r0, #2
	adds r0, r7, r0
	add r0, ip
	movs r1, #0
	ldrsh r4, [r0, r1]
	cmp r4, r5
	bne _0803949C
	b _080395E0
_0803949C:
	lsls r0, r4, #2
	adds r1, r0, r4
	lsls r1, r1, #2
	adds r1, r3, r1
	ldr r1, [r1]
	adds r6, r0, #0
	cmp r1, r2
	bne _0803948A
_080394AC:
	mov r2, sb
	ldr r5, [r2]
	ldr r3, _0803950C @ =0x00011070
	adds r0, r5, r3
	ldrh r0, [r0]
	mov sl, r0
	lsls r2, r4, #2
	adds r0, r2, r4
	lsls r0, r0, #2
	adds r0, r5, r0
	ldr r6, _08039510 @ =0x0000FEC4
	mov ip, r6
	adds r1, r0, r6
	ldrh r7, [r1]
	ldr r1, _08039508 @ =0x0000FEC6
	adds r0, r0, r1
	ldrh r3, [r0]
	ldr r6, _08039500 @ =0x00011072
	adds r1, r5, r6
	movs r6, #0
	ldrsh r0, [r1, r6]
	adds r6, r2, #0
	cmp r4, r0
	bne _08039518
	strh r3, [r1]
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08039542
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r5, r0
	add r0, ip
	ldr r1, _08039514 @ =0x0000FFFF
	strh r1, [r0]
	b _08039542
	.align 2, 0
_080394FC: .4byte gEwramData
_08039500: .4byte 0x00011072
_08039504: .4byte 0x0000FEC8
_08039508: .4byte 0x0000FEC6
_0803950C: .4byte 0x00011070
_08039510: .4byte 0x0000FEC4
_08039514: .4byte 0x0000FFFF
_08039518:
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r5, r0
	ldr r1, _080395F0 @ =0x0000FEC6
	adds r0, r0, r1
	strh r3, [r0]
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08039542
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r5, r0
	add r0, ip
	strh r7, [r0]
_08039542:
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r3, r0, #0x10
	movs r5, #1
	rsbs r5, r5, #0
	mov ip, r5
	cmp r3, ip
	beq _08039564
	mov r0, sb
	ldr r1, [r0]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r2, _080395F4 @ =0x0000FEC4
	adds r1, r1, r2
	strh r4, [r1]
_08039564:
	mov r5, sb
	ldr r3, [r5]
	adds r0, r6, r4
	lsls r5, r0, #2
	adds r1, r3, r5
	ldr r7, _080395F0 @ =0x0000FEC6
	adds r0, r1, r7
	movs r6, #0
	mov r8, r6
	mov r2, sl
	strh r2, [r0]
	ldr r6, _080395F4 @ =0x0000FEC4
	adds r2, r1, r6
	ldr r0, _080395F8 @ =0x0000FFFF
	strh r0, [r2]
	ldr r2, _080395FC @ =0x00011070
	adds r0, r3, r2
	strh r4, [r0]
	ldr r4, _08039600 @ =0x0000FECC
	adds r1, r1, r4
	ldrb r0, [r1]
	cmp r0, #2
	bne _0803959A
	ldr r1, _08039604 @ =0x00025464
	adds r0, r3, r1
	mov r2, r8
	str r2, [r0]
_0803959A:
	mov r3, sb
	ldr r0, [r3]
	adds r0, r0, r5
	adds r1, r0, r6
	movs r4, #0
	ldrsh r3, [r1, r4]
	adds r0, r0, r7
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov sl, r1
	mov r0, sp
	mov r4, r8
	strh r4, [r0]
	ldr r1, _08039608 @ =0x040000D4
	str r0, [r1]
	adds r2, r5, r6
	mov r4, sb
	ldr r0, [r4]
	adds r0, r0, r2
	str r0, [r1, #4]
	ldr r0, _0803960C @ =0x8100000A
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, [r4]
	adds r0, r2, r5
	adds r1, r0, r6
	strh r3, [r1]
	adds r0, r0, r7
	mov r6, sl
	strh r6, [r0]
	ldr r0, _08039610 @ =0x0000FEC8
	adds r2, r2, r0
	adds r2, r2, r5
	mov r1, ip
	str r1, [r2]
_080395E0:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080395F0: .4byte 0x0000FEC6
_080395F4: .4byte 0x0000FEC4
_080395F8: .4byte 0x0000FFFF
_080395FC: .4byte 0x00011070
_08039600: .4byte 0x0000FECC
_08039604: .4byte 0x00025464
_08039608: .4byte 0x040000D4
_0803960C: .4byte 0x8100000A
_08039610: .4byte 0x0000FEC8

	thumb_func_start sub_08039614
sub_08039614: @ 0x08039614
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp]
	mov ip, r1
	ldr r1, _08039704 @ =gEwramData
	ldr r3, [r1]
	ldr r2, _08039708 @ =0x00011072
	adds r0, r3, r2
	movs r4, #0
	ldrsh r2, [r0, r4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _0803965C
	adds r1, r3, #0
	ldr r6, _0803970C @ =0x0000FEC8
	adds r4, r1, r6
	adds r5, r0, #0
_08039640:
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r3, r0, #2
	adds r0, r4, r3
	ldr r0, [r0]
	cmp r0, ip
	beq _08039730
	adds r0, r1, r3
	ldr r2, _08039710 @ =0x0000FEC6
	adds r0, r0, r2
	movs r3, #0
	ldrsh r2, [r0, r3]
	cmp r2, r5
	bne _08039640
_0803965C:
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [sp, #4]
_08039662:
	ldr r6, _08039704 @ =gEwramData
	ldr r2, [r6]
	ldr r0, _08039714 @ =0x00011074
	adds r3, r2, r0
	movs r1, #0
	ldrsh r0, [r3, r1]
	movs r7, #1
	rsbs r7, r7, #0
	cmp r0, r7
	beq _08039734
	ldrh r5, [r3]
	mov sb, r5
	ldr r4, _08039718 @ =0x00011076
	adds r0, r2, r4
	ldrh r0, [r0]
	str r0, [sp, #8]
	mov r8, r0
	lsls r0, r5, #0x10
	asrs r4, r0, #0xc
	adds r0, r2, r4
	ldr r6, _0803971C @ =0x00010172
	mov sl, r6
	adds r1, r0, r6
	ldrh r0, [r1]
	strh r0, [r3]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, r7
	beq _080396A8
	lsls r0, r0, #4
	adds r0, r2, r0
	ldr r1, _08039720 @ =0x00010170
	adds r0, r0, r1
	ldr r1, _08039724 @ =0x0000FFFF
	strh r1, [r0]
_080396A8:
	ldr r2, [sp, #8]
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	cmp r1, r7
	beq _080396C0
	ldr r3, _08039704 @ =gEwramData
	ldr r0, [r3]
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r6, _08039720 @ =0x00010170
	adds r0, r0, r6
	strh r5, [r0]
_080396C0:
	ldr r0, _08039704 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _08039718 @ =0x00011076
	adds r0, r2, r1
	mov r3, sb
	strh r3, [r0]
	adds r0, r2, r4
	mov r6, sl
	adds r1, r0, r6
	mov r3, r8
	strh r3, [r1]
	ldr r6, _08039720 @ =0x00010170
	adds r0, r0, r6
	ldr r1, _08039724 @ =0x0000FFFF
	strh r1, [r0]
	ldr r1, _08039728 @ =0x00010174
	adds r0, r2, r1
	adds r0, r0, r4
	ldr r3, [sp, #4]
	str r3, [r0]
	adds r6, #0xc
	adds r0, r2, r6
	adds r0, r0, r4
	ldr r1, [sp]
	str r1, [r0]
	ldr r3, _0803972C @ =0x00010178
	adds r2, r2, r3
	adds r2, r2, r4
	mov r4, ip
	str r4, [r2]
	mov r6, sb
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	b _08039736
	.align 2, 0
_08039704: .4byte gEwramData
_08039708: .4byte 0x00011072
_0803970C: .4byte 0x0000FEC8
_08039710: .4byte 0x0000FEC6
_08039714: .4byte 0x00011074
_08039718: .4byte 0x00011076
_0803971C: .4byte 0x00010172
_08039720: .4byte 0x00010170
_08039724: .4byte 0x0000FFFF
_08039728: .4byte 0x00010174
_0803972C: .4byte 0x00010178
_08039730:
	str r2, [sp, #4]
	b _08039662
_08039734:
	movs r0, #0xff
_08039736:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08039748
sub_08039748: @ 0x08039748
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r1, _08039798 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0803979C @ =0x00025464
	adds r0, r0, r2
	str r6, [r0]
	movs r2, #0
	mov r8, r1
	ldrb r0, [r6, #1]
	cmp r2, r0
	bge _080397E6
	mov sb, r8
	ldr r7, _080397A0 @ =0x040000D4
	ldr r3, _080397A4 @ =0x00019404
_0803976E:
	lsls r1, r2, #2
	adds r0, r6, #4
	adds r0, r0, r1
	ldr r4, [r0]
	mov r1, sb
	ldr r0, [r1]
	adds r5, r0, r3
	ldrb r1, [r4, #2]
	ldrb r0, [r4, #3]
	muls r1, r0, r1
	ldrb r0, [r4, #1]
	muls r0, r1, r0
	lsls r0, r0, #3
	adds r0, #4
	ldrb r1, [r4]
	cmp r1, #0
	beq _080397A8
	cmp r1, #1
	beq _080397BA
	b _080397DA
	.align 2, 0
_08039798: .4byte gEwramData
_0803979C: .4byte 0x00025464
_080397A0: .4byte 0x040000D4
_080397A4: .4byte 0x00019404
_080397A8:
	str r4, [r7]
	str r5, [r7, #4]
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	b _080397DA
_080397BA:
	ldr r0, [r4, #4]
	adds r1, r5, #0
	str r2, [sp]
	str r3, [sp, #4]
	bl LZ77UnCompWram
	movs r0, #0
	strb r0, [r5]
	ldrb r0, [r4, #1]
	strb r0, [r5, #1]
	ldrb r0, [r4, #2]
	strb r0, [r5, #2]
	ldrb r0, [r4, #3]
	strb r0, [r5, #3]
	ldr r3, [sp, #4]
	ldr r2, [sp]
_080397DA:
	ldr r0, _08039818 @ =0x00002010
	adds r3, r3, r0
	adds r2, #1
	ldrb r1, [r6, #1]
	cmp r2, r1
	blt _0803976E
_080397E6:
	mov r2, r8
	ldr r0, [r2]
	ldrb r1, [r6, #1]
	ldr r2, _0803981C @ =0x00025469
	adds r0, r0, r2
	strb r1, [r0]
	mov r1, r8
	ldr r0, [r1]
	ldrb r1, [r6, #2]
	adds r2, #1
	adds r0, r0, r2
	strb r1, [r0]
	mov r1, r8
	ldr r0, [r1]
	ldrb r1, [r6, #3]
	adds r2, #1
	adds r0, r0, r2
	strb r1, [r0]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039818: .4byte 0x00002010
_0803981C: .4byte 0x00025469

	thumb_func_start sub_08039820
sub_08039820: @ 0x08039820
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	mov sl, r0
	movs r0, #0
	str r0, [sp, #0x1c]
	ldr r0, _0803988C @ =gEwramData
	ldr r3, [r0]
	mov r0, sl
	adds r0, #0x64
	ldrb r1, [r0]
	lsls r2, r1, #4
	ldr r4, _08039890 @ =0x00010178
	adds r0, r3, r4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #0x10]
	adds r1, r2, #0
	ldr r2, _08039894 @ =0x0001017C
	adds r0, r3, r2
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _080398DA
	mov r0, sl
	adds r0, #0x5b
	ldrb r0, [r0]
	cmp r0, #0
	blt _08039878
	cmp r0, #1
	ble _08039878
	cmp r0, #2
	bne _08039878
	ldr r4, [sp, #0x10]
	lsls r0, r4, #0x10
	asrs r0, r0, #0xd
	adds r0, r3, r0
	ldr r1, _08039898 @ =0x00012FF1
	adds r0, r0, r1
	ldrb r0, [r0]
	str r0, [sp, #0x1c]
_08039878:
	mov r0, sl
	adds r0, #0x65
	ldrb r1, [r0]
	ldrh r3, [r2]
	cmp r1, r3
	bhs _0803989C
	lsls r1, r1, #4
	ldr r0, [r2, #4]
	adds r1, r0, r1
	b _0803989E
	.align 2, 0
_0803988C: .4byte gEwramData
_08039890: .4byte 0x00010178
_08039894: .4byte 0x0001017C
_08039898: .4byte 0x00012FF1
_0803989C:
	ldr r1, [r2, #4]
_0803989E:
	ldrb r5, [r1, #5]
	ldr r6, [r1, #0xc]
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	str r0, [sp]
	movs r0, #1
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	mov r4, sl
	adds r4, #0x5a
	ldrb r1, [r4]
	lsls r0, r1, #0x1f
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xc
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xa
	orrs r0, r1
	str r0, [sp, #0x18]
	ldr r0, _080398E0 @ =0x03005170
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	str r0, [sp, #0x20]
	str r4, [sp, #0x28]
	cmp r0, #0
	bne _080398E4
_080398DA:
	movs r0, #0
	b _08039A52
	.align 2, 0
_080398E0: .4byte 0x03005170
_080398E4:
	cmp r5, #0
	bne _080398EA
	b _08039A50
_080398EA:
	mov r4, sp
	adds r4, #8
	str r4, [sp, #0x24]
	str r5, [sp, #0x14]
_080398F2:
	ldr r7, [sp, #0x20]
	ldrb r1, [r6, #8]
	lsls r0, r1, #0x1c
	lsrs r3, r0, #0x1c
	lsrs r1, r1, #4
	mov r8, r1
	mov r0, sl
	adds r0, #0x58
	ldrb r1, [r0]
	lsls r0, r1, #0x19
	lsrs r5, r0, #0x1f
	lsrs r4, r1, #7
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0x10
	str r0, [sp, #8]
	movs r0, #1
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x24]
	str r0, [r1, #4]
	adds r0, r5, #0
	orrs r0, r4
	cmp r0, #0
	beq _0803997E
	mov sb, r1
	mov ip, sp
	cmp r5, #0
	beq _08039948
	mov r2, r8
	lsls r0, r2, #3
	lsls r1, r3, #5
	adds r0, r0, r1
	ldr r1, _08039970 @ =0x080E29A0
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [sp]
	lsls r0, r0, #1
	ldr r1, [sp, #8]
	subs r0, r0, r1
	lsls r2, r2, #1
	subs r0, r0, r2
	str r0, [sp, #8]
_08039948:
	cmp r4, #0
	beq _08039978
	mov r2, r8
	lsls r0, r2, #3
	lsls r1, r3, #5
	adds r0, r0, r1
	ldr r1, _08039974 @ =0x080E29A4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x2c]
	mov r2, ip
	ldr r0, [r2, #4]
	lsls r0, r0, #1
	mov r2, sb
	ldr r1, [r2, #4]
	subs r0, r0, r1
	ldr r1, [sp, #0x2c]
	lsls r2, r1, #1
	subs r0, r0, r2
	b _0803997C
	.align 2, 0
_08039970: .4byte 0x080E29A0
_08039974: .4byte 0x080E29A4
_08039978:
	mov r2, sb
	ldr r0, [r2, #4]
_0803997C:
	str r0, [sp, #0xc]
_0803997E:
	lsls r2, r3, #0xe
	ldr r3, [sp, #0x18]
	orrs r2, r3
	mov sb, r7
	adds r7, #2
	ldr r0, [sp, #0x24]
	ldr r1, [r0, #4]
	mov r3, sl
	ldr r0, [r3, #0x44]
	adds r0, r1, r0
	cmp r0, #0
	bge _0803999E
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080399A0
_0803999E:
	asrs r0, r0, #0x10
_080399A0:
	movs r1, #0xff
	ands r0, r1
	orrs r0, r2
	mov r1, sb
	strh r0, [r1]
	mov r2, r8
	lsls r3, r2, #0xe
	ldrb r1, [r6, #0xa]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	eors r4, r0
	lsls r0, r4, #0xd
	orrs r3, r0
	adds r4, r7, #0
	adds r7, #2
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080399CA
	eors r5, r2
_080399CA:
	lsls r2, r5, #0xc
	orrs r2, r3
	ldr r1, [sp, #8]
	mov r3, sl
	ldr r0, [r3, #0x40]
	adds r0, r1, r0
	cmp r0, #0
	bge _080399EC
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	ldr r1, _080399E8 @ =0x000001FF
	ands r0, r1
	b _080399F0
	.align 2, 0
_080399E8: .4byte 0x000001FF
_080399EC:
	lsls r0, r0, #7
	lsrs r0, r0, #0x17
_080399F0:
	orrs r0, r2
	strh r0, [r4]
	ldr r3, _08039A64 @ =0x0300517C
	ldr r4, [sp, #0x10]
	ldrb r0, [r6, #9]
	cmp r0, #0
	beq _08039A02
	ldr r0, [sp, #0x1c]
	adds r4, r4, r0
_08039A02:
	movs r1, #4
	ldrsb r1, [r6, r1]
	movs r2, #5
	ldrsb r2, [r6, r2]
	ldr r3, [r3]
	adds r0, r4, #0
	bl _call_via_r3
	ldr r1, [sp, #0x28]
	ldrb r2, [r1]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1c
	mov r1, sl
	adds r1, #0x62
	ldrb r3, [r6, #0xb]
	ldrb r1, [r1]
	ands r1, r3
	adds r2, r2, r1
	lsls r2, r2, #0xc
	orrs r2, r0
	strh r2, [r7]
	ldr r2, _08039A68 @ =0x03005174
	mov r0, sl
	adds r0, #0x5c
	ldrb r1, [r0]
	ldr r2, [r2]
	ldr r0, [sp, #0x20]
	bl _call_via_r2
	ldr r2, [sp, #0x14]
	subs r2, #1
	str r2, [sp, #0x14]
	adds r6, #0xc
	ldr r3, [sp, #0x20]
	adds r3, #0xc
	str r3, [sp, #0x20]
	cmp r2, #0
	beq _08039A50
	b _080398F2
_08039A50:
	movs r0, #1
_08039A52:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08039A64: .4byte 0x0300517C
_08039A68: .4byte 0x03005174

	thumb_func_start sub_08039A6C
sub_08039A6C: @ 0x08039A6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x68
	str r0, [sp, #0x30]
	movs r0, #0
	str r0, [sp, #0x48]
	ldr r0, _08039AD8 @ =gEwramData
	ldr r3, [r0]
	ldr r0, [sp, #0x30]
	adds r0, #0x64
	ldrb r1, [r0]
	lsls r2, r1, #4
	ldr r4, _08039ADC @ =0x00010178
	adds r0, r3, r4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #0x34]
	adds r1, r2, #0
	ldr r2, _08039AE0 @ =0x0001017C
	adds r0, r3, r2
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _08039B7A
	ldr r0, [sp, #0x30]
	adds r0, #0x5b
	ldrb r0, [r0]
	cmp r0, #0
	blt _08039AC4
	cmp r0, #1
	ble _08039AC4
	cmp r0, #2
	bne _08039AC4
	ldr r4, [sp, #0x34]
	lsls r0, r4, #0x10
	asrs r0, r0, #0xd
	adds r0, r3, r0
	ldr r1, _08039AE4 @ =0x00012FF1
	adds r0, r0, r1
	ldrb r0, [r0]
	str r0, [sp, #0x48]
_08039AC4:
	ldr r0, [sp, #0x30]
	adds r0, #0x65
	ldrb r1, [r0]
	ldrh r3, [r2]
	cmp r1, r3
	bhs _08039AE8
	lsls r1, r1, #4
	ldr r0, [r2, #4]
	adds r1, r0, r1
	b _08039AEA
	.align 2, 0
_08039AD8: .4byte gEwramData
_08039ADC: .4byte 0x00010178
_08039AE0: .4byte 0x0001017C
_08039AE4: .4byte 0x00012FF1
_08039AE8:
	ldr r1, [r2, #4]
_08039AEA:
	ldrb r7, [r1, #5]
	ldr r4, [r1, #0xc]
	mov sb, r4
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	str r0, [sp, #0x10]
	movs r0, #1
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	add r6, sp, #0x10
	str r0, [r6, #4]
	ldr r0, [sp, #0x30]
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #0x4c]
	ldr r0, _08039B80 @ =0x03005188
	ldr r2, [r0]
	mov r0, sp
	ldr r1, [sp, #0x4c]
	bl _call_via_r2
	ldr r0, _08039B84 @ =0x03005180
	ldr r1, [r0]
	ldr r0, [sp, #0x4c]
	bl _call_via_r1
	str r0, [sp, #0x40]
	ldr r0, _08039B88 @ =0x03005178
	ldr r1, [r0]
	ldr r0, [sp, #0x4c]
	bl _call_via_r1
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x4c]
	lsls r0, r0, #9
	str r0, [sp, #0x4c]
	ldr r5, [sp, #0x30]
	adds r5, #0x59
	ldrb r0, [r5]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	lsls r0, r0, #1
	movs r1, #1
	orrs r0, r1
	lsls r0, r0, #8
	str r0, [sp, #0x3c]
	ldr r4, [sp, #0x30]
	adds r4, #0x5a
	ldrb r1, [r4]
	lsls r0, r1, #0x1f
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xc
	ldr r2, [sp, #0x3c]
	orrs r2, r0
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xa
	orrs r2, r1
	str r2, [sp, #0x3c]
	ldr r0, _08039B8C @ =0x03005170
	ldr r1, [r0]
	adds r0, r7, #0
	bl _call_via_r1
	str r0, [sp, #0x50]
	str r5, [sp, #0x60]
	str r4, [sp, #0x64]
	cmp r0, #0
	bne _08039B90
_08039B7A:
	movs r0, #0
	b _08039DA8
	.align 2, 0
_08039B80: .4byte 0x03005188
_08039B84: .4byte 0x03005180
_08039B88: .4byte 0x03005178
_08039B8C: .4byte 0x03005170
_08039B90:
	cmp r7, #0
	bne _08039B96
	b _08039DA6
_08039B96:
	mov r3, sp
	adds r3, #0x18
	str r3, [sp, #0x5c]
	str r7, [sp, #0x38]
_08039B9E:
	ldr r4, [sp, #0x50]
	mov r8, r4
	mov r0, sb
	ldrb r1, [r0, #8]
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #0x54]
	lsrs r1, r1, #4
	str r1, [sp, #0x58]
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	str r0, [sp, #0x18]
	movs r0, #1
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	ldr r2, [sp, #0x5c]
	str r0, [r2, #4]
	ldr r3, [sp, #0x60]
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08039BE2
	ldr r0, [sp, #0x18]
	asrs r0, r0, #8
	movs r1, #0xe8
	muls r0, r1, r0
	str r0, [sp, #0x18]
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	muls r0, r1, r0
	str r0, [r2, #4]
_08039BE2:
	ldr r0, [sp, #0x40]
	ldr r4, [sp, #0x44]
	orrs r0, r4
	ldr r1, _08039C38 @ =0x080E29A0
	mov sl, r1
	ldr r2, [sp, #0x58]
	lsls r4, r2, #3
	ldr r1, [sp, #0x54]
	lsls r3, r1, #5
	cmp r0, #0
	beq _08039C40
	ldr r7, [sp, #0x5c]
	adds r6, r7, #0
	add r5, sp, #0x10
	ldr r2, [sp, #0x40]
	cmp r2, #0
	beq _08039C1A
	adds r0, r4, r3
	ldr r1, _08039C38 @ =0x080E29A0
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [sp, #0x10]
	lsls r0, r0, #1
	ldr r1, [sp, #0x18]
	subs r0, r0, r1
	lsls r2, r2, #1
	subs r0, r0, r2
	str r0, [sp, #0x18]
_08039C1A:
	ldr r2, [sp, #0x44]
	cmp r2, #0
	beq _08039C3C
	adds r0, r4, r3
	mov r1, sl
	adds r1, #4
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r5, #4]
	lsls r0, r0, #1
	ldr r1, [r6, #4]
	subs r0, r0, r1
	lsls r2, r2, #1
	subs r0, r0, r2
	b _08039C3E
	.align 2, 0
_08039C38: .4byte 0x080E29A0
_08039C3C:
	ldr r0, [r6, #4]
_08039C3E:
	str r0, [r7, #4]
_08039C40:
	ldr r0, [sp, #0x60]
	ldrb r2, [r0]
	lsls r2, r2, #0x1a
	add r6, sp, #0x20
	add r1, sp, #0x10
	mov ip, r1
	mov sl, sp
	adds r1, r4, r3
	ldr r3, _08039C7C @ =0x080E29A0
	adds r0, r1, r3
	ldr r4, [r0]
	adds r0, r3, #0
	adds r0, #4
	adds r1, r1, r0
	ldr r5, [r1]
	cmp r2, #0
	bge _08039C80
	ldr r0, [sp, #0x18]
	subs r0, r0, r4
	str r0, [sp, #0x28]
	ldr r1, [sp, #0x5c]
	ldr r0, [r1, #4]
	subs r0, r0, r5
	add r1, sp, #0x28
	str r0, [r1, #4]
	lsls r4, r4, #1
	lsls r5, r5, #1
	adds r7, r1, #0
	b _08039C8E
	.align 2, 0
_08039C7C: .4byte 0x080E29A0
_08039C80:
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x28]
	ldr r2, [sp, #0x5c]
	ldr r1, [r2, #4]
	add r0, sp, #0x28
	str r1, [r0, #4]
	adds r7, r0, #0
_08039C8E:
	mov r3, ip
	ldr r0, [r3]
	subs r0, r4, r0
	ldr r1, [sp, #0x28]
	adds r0, r0, r1
	str r0, [sp, #0x28]
	ldr r0, [r3, #4]
	subs r0, r5, r0
	ldr r1, [r7, #4]
	adds r0, r0, r1
	str r0, [r7, #4]
	ldr r0, _08039D00 @ =0x03005184
	ldr r3, [r0]
	adds r0, r7, #0
	mov r1, sl
	adds r2, r7, #0
	bl _call_via_r3
	ldr r0, [sp, #0x28]
	subs r0, r0, r4
	str r0, [r6]
	ldr r0, [r7, #4]
	subs r0, r0, r5
	str r0, [r6, #4]
	ldr r4, [sp, #0x60]
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08039CDC
	ldr r0, [sp, #0x20]
	asrs r0, r0, #8
	movs r1, #0xf6
	muls r0, r1, r0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	asrs r0, r0, #8
	muls r0, r1, r0
	str r0, [sp, #0x24]
_08039CDC:
	ldr r0, [sp, #0x54]
	lsls r2, r0, #0xe
	ldr r1, [sp, #0x3c]
	orrs r2, r1
	mov r3, r8
	movs r4, #2
	add r8, r4
	ldr r1, [sp, #0x24]
	ldr r4, [sp, #0x30]
	ldr r0, [r4, #0x44]
	adds r0, r1, r0
	cmp r0, #0
	bge _08039D04
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _08039D06
	.align 2, 0
_08039D00: .4byte 0x03005184
_08039D04:
	asrs r0, r0, #0x10
_08039D06:
	movs r1, #0xff
	ands r0, r1
	orrs r0, r2
	strh r0, [r3]
	ldr r0, [sp, #0x58]
	lsls r2, r0, #0xe
	ldr r1, [sp, #0x4c]
	orrs r2, r1
	mov r3, r8
	movs r4, #2
	add r8, r4
	ldr r1, [sp, #0x20]
	ldr r4, [sp, #0x30]
	ldr r0, [r4, #0x40]
	adds r0, r1, r0
	cmp r0, #0
	bge _08039D38
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	ldr r1, _08039D34 @ =0x000001FF
	ands r0, r1
	b _08039D3C
	.align 2, 0
_08039D34: .4byte 0x000001FF
_08039D38:
	lsls r0, r0, #7
	lsrs r0, r0, #0x17
_08039D3C:
	orrs r0, r2
	strh r0, [r3]
	ldr r3, _08039DB8 @ =0x0300517C
	ldr r4, [sp, #0x34]
	mov r1, sb
	ldrb r0, [r1, #9]
	cmp r0, #0
	beq _08039D50
	ldr r2, [sp, #0x48]
	adds r4, r4, r2
_08039D50:
	mov r0, sb
	movs r1, #4
	ldrsb r1, [r0, r1]
	movs r2, #5
	ldrsb r2, [r0, r2]
	ldr r3, [r3]
	adds r0, r4, #0
	bl _call_via_r3
	ldr r1, [sp, #0x64]
	ldrb r2, [r1]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1c
	ldr r1, [sp, #0x30]
	adds r1, #0x62
	mov r4, sb
	ldrb r3, [r4, #0xb]
	ldrb r1, [r1]
	ands r1, r3
	adds r2, r2, r1
	lsls r2, r2, #0xc
	orrs r2, r0
	mov r0, r8
	strh r2, [r0]
	ldr r2, _08039DBC @ =0x03005174
	ldr r0, [sp, #0x30]
	adds r0, #0x5c
	ldrb r1, [r0]
	ldr r2, [r2]
	ldr r0, [sp, #0x50]
	bl _call_via_r2
	ldr r1, [sp, #0x38]
	subs r1, #1
	str r1, [sp, #0x38]
	movs r2, #0xc
	add sb, r2
	ldr r3, [sp, #0x50]
	adds r3, #0xc
	str r3, [sp, #0x50]
	cmp r1, #0
	beq _08039DA6
	b _08039B9E
_08039DA6:
	movs r0, #1
_08039DA8:
	add sp, #0x68
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08039DB8: .4byte 0x0300517C
_08039DBC: .4byte 0x03005174

	thumb_func_start sub_08039DC0
sub_08039DC0: @ 0x08039DC0
	push {r4, r5, lr}
	ldr r4, _08039E50 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _08039E54 @ =0x00011070
	adds r0, r1, r2
	movs r3, #0
	strh r3, [r0]
	ldr r0, _08039E58 @ =0x00011072
	adds r2, r1, r0
	ldr r0, _08039E5C @ =0x0000FFFF
	strh r0, [r2]
	ldr r2, _08039E60 @ =0x00011074
	adds r0, r1, r2
	strh r3, [r0]
	ldr r0, _08039E64 @ =0x00011076
	adds r1, r1, r0
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	bl sub_08039340
	ldr r0, [r4]
	ldr r2, _08039E68 @ =0x00010170
	adds r1, r0, r2
	movs r2, #0
	movs r4, #0
	movs r3, #1
	rsbs r3, r3, #0
_08039DF8:
	subs r0, r2, #1
	strh r0, [r1]
	adds r0, r2, #1
	strh r0, [r1, #2]
	str r3, [r1, #4]
	str r3, [r1, #8]
	str r4, [r1, #0xc]
	adds r2, r0, #0
	adds r1, #0x10
	cmp r2, #0xef
	ble _08039DF8
	ldr r0, _08039E50 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08039E68 @ =0x00010170
	adds r2, r1, r0
	ldr r0, _08039E5C @ =0x0000FFFF
	strh r0, [r2]
	ldr r2, _08039E6C @ =0x00011062
	adds r1, r1, r2
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	bl sub_080E032C
	ldr r0, _08039E70 @ =sub_0804311C
	ldr r5, _08039E74 @ =0x03004570
	ldr r2, _08039E78 @ =0x04000100
	adds r1, r5, #0
	bl CpuSet
	ldr r0, _08039E7C @ =sub_0804342C
	ldr r4, _08039E80 @ =0x03004970
	ldr r2, _08039E84 @ =0x04000180
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _08039E88 @ =0x03004564
	str r5, [r0]
	ldr r0, _08039E8C @ =0x03004560
	str r4, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08039E50: .4byte gEwramData
_08039E54: .4byte 0x00011070
_08039E58: .4byte 0x00011072
_08039E5C: .4byte 0x0000FFFF
_08039E60: .4byte 0x00011074
_08039E64: .4byte 0x00011076
_08039E68: .4byte 0x00010170
_08039E6C: .4byte 0x00011062
_08039E70: .4byte sub_0804311C
_08039E74: .4byte 0x03004570
_08039E78: .4byte 0x04000100
_08039E7C: .4byte sub_0804342C
_08039E80: .4byte 0x03004970
_08039E84: .4byte 0x04000180
_08039E88: .4byte 0x03004564
_08039E8C: .4byte 0x03004560

	thumb_func_start sub_08039E90
sub_08039E90: @ 0x08039E90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	adds r4, r0, #0
	bl sub_0803AFB8
	mov sl, r0
	cmp r0, #0
	blt _08039EAE
	b _0803A1C8
_08039EAE:
	ldr r1, [sp]
	ldrb r0, [r1, #3]
	cmp r0, #8
	beq _08039ECA
	cmp r0, #8
	bgt _08039EC0
	cmp r0, #4
	beq _08039ED0
	b _08039ED6
_08039EC0:
	cmp r0, #0x10
	bne _08039ED6
	movs r2, #4
	mov sb, r2
	b _08039EDC
_08039ECA:
	movs r3, #2
	mov sb, r3
	b _08039EDC
_08039ED0:
	movs r7, #1
	mov sb, r7
	b _08039EDC
_08039ED6:
	movs r0, #1
	rsbs r0, r0, #0
	mov sb, r0
_08039EDC:
	mov r8, sb
	mov r0, r8
	movs r1, #1
	ldr r2, [sp, #4]
	bl sub_0803DAB4
	mov sl, r0
	cmp r0, #0
	bge _08039EF0
	b _0803A1C8
_08039EF0:
	ldr r1, _08039F80 @ =0x0000FFFF
	ldr r2, [sp, #4]
	ands r2, r1
	str r2, [sp, #8]
	ldrb r7, [r4]
	cmp r7, #0
	beq _08039FC4
	mov r3, r8
	lsls r3, r3, #0x18
	mov sb, r3
	cmp r7, #1
	beq _08039F0A
	b _0803A06A
_08039F0A:
	adds r0, r4, #0
	bl sub_0803B9B4
	ldr r4, _08039F84 @ =gEwramData
	ldr r0, [r4]
	ldr r1, _08039F88 @ =0x000153F8
	adds r6, r0, r1
	mov r0, sl
	bl sub_0803D8B4
	lsls r0, r0, #0x15
	lsrs r5, r0, #0x10
	mov r2, r8
	lsls r3, r2, #2
	movs r0, #0x80
	lsls r0, r0, #2
	mov r8, r0
	ldr r0, [r4]
	ldr r1, _08039F8C @ =0x00012FEC
	adds r0, r0, r1
	ldrh r0, [r0]
	lsrs r0, r0, #1
	ands r0, r7
	cmp r0, #1
	bne _08039F42
	mov r2, r8
	lsls r2, r2, #1
	mov r8, r2
_08039F42:
	ldr r4, [sp, #8]
	cmp r4, #0
	bne _08039F98
	cmp r4, r3
	blt _08039F4E
	b _0803A06A
_08039F4E:
	ldr r1, _08039F90 @ =0x040000D4
	mov r7, r8
	lsrs r2, r7, #1
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r2, r0
	adds r4, r3, #0
	movs r0, #0x80
	lsls r0, r0, #3
	adds r3, r0, #0
_08039F62:
	str r6, [r1]
	ldr r7, _08039F94 @ =0x06010000
	adds r0, r5, r7
	str r0, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	add r6, r8
	adds r0, r5, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r4, #1
	cmp r4, #0
	bne _08039F62
	b _0803A06A
	.align 2, 0
_08039F80: .4byte 0x0000FFFF
_08039F84: .4byte gEwramData
_08039F88: .4byte 0x000153F8
_08039F8C: .4byte 0x00012FEC
_08039F90: .4byte 0x040000D4
_08039F94: .4byte 0x06010000
_08039F98:
	cmp r3, #0
	ble _0803A06A
	adds r4, r3, #0
_08039F9E:
	ldr r0, _08039FC0 @ =0x06010000
	adds r2, r5, r0
	mov r0, r8
	adds r1, r6, #0
	bl sub_080016D0
	add r6, r8
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r5, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r4, #1
	cmp r4, #0
	bne _08039F9E
	b _0803A06A
	.align 2, 0
_08039FC0: .4byte 0x06010000
_08039FC4:
	adds r6, r4, #4
	mov r0, sl
	bl sub_0803D8B4
	lsls r0, r0, #0x15
	lsrs r5, r0, #0x10
	mov r2, r8
	lsls r3, r2, #2
	movs r7, #0x80
	lsls r7, r7, #2
	ldr r0, _0803A030 @ =gEwramData
	ldr r0, [r0]
	ldr r4, _0803A034 @ =0x00012FEC
	adds r0, r0, r4
	ldrh r0, [r0]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	cmp r0, #1
	bne _08039FEE
	lsls r7, r7, #1
_08039FEE:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0803A040
	mov r1, r8
	lsls r1, r1, #0x18
	mov sb, r1
	cmp r3, #0
	ble _0803A06A
	ldr r1, _0803A038 @ =0x040000D4
	lsrs r2, r7, #1
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r2, r0
	adds r4, r3, #0
	movs r3, #0x80
	lsls r3, r3, #3
	mov r8, r3
_0803A010:
	str r6, [r1]
	ldr r3, _0803A03C @ =0x06010000
	adds r0, r5, r3
	str r0, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	adds r6, r6, r7
	mov r3, r8
	adds r0, r5, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r4, #1
	cmp r4, #0
	bne _0803A010
	b _0803A06A
	.align 2, 0
_0803A030: .4byte gEwramData
_0803A034: .4byte 0x00012FEC
_0803A038: .4byte 0x040000D4
_0803A03C: .4byte 0x06010000
_0803A040:
	mov r4, sb
	lsls r4, r4, #0x18
	mov sb, r4
	cmp r3, #0
	ble _0803A06A
	adds r4, r3, #0
_0803A04C:
	ldr r0, _0803A14C @ =0x06010000
	adds r2, r5, r0
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_080016D0
	adds r6, r6, r7
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r5, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r4, #1
	cmp r4, #0
	bne _0803A04C
_0803A06A:
	ldr r2, [sp, #4]
	lsrs r0, r2, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	mov r3, sb
	lsrs r3, r3, #0x18
	str r3, [sp, #0x10]
	ldr r1, _0803A150 @ =gEwramData
	ldr r4, [r1]
	ldr r7, _0803A154 @ =0x00011070
	adds r3, r4, r7
	movs r2, #0
	ldrsh r0, [r3, r2]
	mov sb, r1
	movs r7, #1
	rsbs r7, r7, #0
	cmp r0, r7
	bne _0803A092
	b _0803A1C6
_0803A092:
	adds r6, r0, #0
	ldrh r5, [r3]
	mov ip, r5
	ldr r1, _0803A158 @ =0x00011072
	adds r0, r4, r1
	ldrh r2, [r0]
	str r2, [sp, #0x14]
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r8, r0
	adds r0, r4, r0
	ldr r7, _0803A15C @ =0x0000FEC6
	adds r1, r0, r7
	ldrh r0, [r1]
	strh r0, [r3]
	movs r3, #0
	ldrsh r0, [r1, r3]
	movs r7, #1
	rsbs r7, r7, #0
	cmp r0, r7
	beq _0803A0D2
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r4, r1
	ldr r4, _0803A160 @ =0x0000FEC4
	adds r1, r1, r4
	ldr r0, _0803A164 @ =0x0000FFFF
	strh r0, [r1]
_0803A0D2:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	movs r7, #1
	rsbs r7, r7, #0
	cmp r2, r7
	beq _0803A0F0
	mov r0, sb
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r2, _0803A160 @ =0x0000FEC4
	adds r1, r1, r2
	strh r5, [r1]
_0803A0F0:
	mov r3, sb
	ldr r2, [r3]
	ldr r4, _0803A158 @ =0x00011072
	adds r0, r2, r4
	mov r7, ip
	strh r7, [r0]
	mov r1, r8
	adds r0, r2, r1
	ldr r3, _0803A15C @ =0x0000FEC6
	adds r1, r0, r3
	mov r4, sp
	ldrh r4, [r4, #0x14]
	strh r4, [r1]
	ldr r7, _0803A160 @ =0x0000FEC4
	adds r0, r0, r7
	ldr r1, _0803A164 @ =0x0000FFFF
	strh r1, [r0]
	lsls r1, r6, #2
	adds r0, r1, r6
	lsls r4, r0, #2
	adds r3, #2
	adds r0, r2, r3
	adds r0, r0, r4
	mov r7, sl
	str r7, [r0]
	adds r2, r2, r4
	ldr r0, _0803A168 @ =0x0000FECC
	adds r2, r2, r0
	movs r0, #0
	strb r0, [r2]
	mov r2, sb
	ldr r3, [r2]
	ldr r7, _0803A16C @ =0x00010004
	adds r0, r3, r7
	ldr r0, [r0]
	adds r2, r1, #0
	cmp r0, #0
	bne _0803A174
	adds r0, r3, r4
	ldr r1, _0803A170 @ =0x0000FECD
	adds r0, r0, r1
	mov r3, sp
	ldrb r3, [r3, #0xc]
	strb r3, [r0]
	b _0803A17E
	.align 2, 0
_0803A14C: .4byte 0x06010000
_0803A150: .4byte gEwramData
_0803A154: .4byte 0x00011070
_0803A158: .4byte 0x00011072
_0803A15C: .4byte 0x0000FEC6
_0803A160: .4byte 0x0000FEC4
_0803A164: .4byte 0x0000FFFF
_0803A168: .4byte 0x0000FECC
_0803A16C: .4byte 0x00010004
_0803A170: .4byte 0x0000FECD
_0803A174:
	adds r0, r3, r4
	ldr r4, _0803A1D8 @ =0x0000FECD
	adds r0, r0, r4
	movs r1, #2
	strb r1, [r0]
_0803A17E:
	movs r3, #0
	ldr r5, _0803A1DC @ =gEwramData
	adds r0, r2, r6
	lsls r4, r0, #2
_0803A186:
	ldr r0, [r5]
	adds r1, r3, r4
	ldr r7, _0803A1E0 @ =0x0000FED0
	adds r0, r0, r7
	adds r0, r0, r1
	strb r3, [r0]
	adds r3, #1
	cmp r3, #1
	blt _0803A186
	mov r1, sb
	ldr r0, [r1]
	adds r2, r2, r6
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r3, _0803A1E4 @ =0x0000FECE
	adds r0, r0, r3
	mov r4, sp
	ldrb r4, [r4, #0x10]
	strb r4, [r0]
	ldr r0, [r1]
	adds r0, r0, r2
	subs r7, #1
	adds r0, r0, r7
	movs r1, #1
	strb r1, [r0]
	mov r1, sb
	ldr r0, [r1]
	adds r3, #6
	adds r0, r0, r3
	adds r0, r0, r2
	ldr r4, [sp]
	str r4, [r0]
_0803A1C6:
	mov r0, sl
_0803A1C8:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803A1D8: .4byte 0x0000FECD
_0803A1DC: .4byte gEwramData
_0803A1E0: .4byte 0x0000FED0
_0803A1E4: .4byte 0x0000FECE

	thumb_func_start sub_0803A1E8
sub_0803A1E8: @ 0x0803A1E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	str r0, [sp]
	mov sl, r1
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl sub_0803AFB8
	cmp r0, #0
	blt _0803A206
	b _0803A520
_0803A206:
	mov r0, sl
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	bl sub_0803DAB4
	str r0, [sp, #0xc]
	cmp r0, #0
	bge _0803A218
	b _0803A520
_0803A218:
	ldr r0, [sp]
	adds r0, #4
	str r0, [sp, #0x10]
	movs r7, #0
	mov r1, sl
	lsls r1, r1, #0x18
	str r1, [sp, #0x24]
	ldr r2, [sp, #4]
	lsls r2, r2, #0x18
	str r2, [sp, #0x28]
	ldr r3, [sp, #4]
	cmp r7, r3
	blo _0803A234
	b _0803A3BE
_0803A234:
	ldr r4, _0803A2CC @ =0x0000FFFF
	ldr r6, [sp, #8]
	ands r6, r4
	str r6, [sp, #0x14]
_0803A23C:
	lsls r0, r7, #2
	ldr r1, [sp, #0x10]
	adds r0, r0, r1
	mov r1, sl
	muls r1, r7, r1
	ldr r0, [r0]
	ldr r2, [sp, #0xc]
	adds r5, r2, r1
	ldrb r4, [r0]
	cmp r4, #0
	beq _0803A310
	adds r7, #1
	mov sb, r7
	cmp r4, #1
	beq _0803A25C
	b _0803A3B4
_0803A25C:
	bl sub_0803B9B4
	ldr r3, _0803A2D0 @ =gEwramData
	ldr r0, [r3]
	ldr r7, _0803A2D4 @ =0x000153F8
	adds r6, r0, r7
	adds r0, r5, #0
	bl sub_0803D8B4
	lsls r0, r0, #0x15
	lsrs r5, r0, #0x10
	mov r0, sl
	lsls r3, r0, #2
	movs r7, #0x80
	lsls r7, r7, #2
	ldr r1, _0803A2D0 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0803A2D8 @ =0x00012FEC
	adds r0, r0, r2
	ldrh r0, [r0]
	lsrs r0, r0, #1
	ands r0, r4
	cmp r0, #1
	bne _0803A28E
	lsls r7, r7, #1
_0803A28E:
	ldr r4, [sp, #0x14]
	cmp r4, #0
	bne _0803A2E4
	cmp r4, r3
	blt _0803A29A
	b _0803A3B4
_0803A29A:
	ldr r2, _0803A2DC @ =0x040000D4
	lsrs r1, r7, #1
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r1, r0
	adds r4, r3, #0
	movs r0, #0x80
	lsls r0, r0, #3
	mov r8, r0
_0803A2AC:
	str r6, [r2]
	ldr r3, _0803A2E0 @ =0x06010000
	adds r0, r5, r3
	str r0, [r2, #4]
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	adds r6, r6, r7
	mov r3, r8
	adds r0, r5, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r4, #1
	cmp r4, #0
	bne _0803A2AC
	b _0803A3B4
	.align 2, 0
_0803A2CC: .4byte 0x0000FFFF
_0803A2D0: .4byte gEwramData
_0803A2D4: .4byte 0x000153F8
_0803A2D8: .4byte 0x00012FEC
_0803A2DC: .4byte 0x040000D4
_0803A2E0: .4byte 0x06010000
_0803A2E4:
	cmp r3, #0
	ble _0803A3B4
	adds r4, r3, #0
_0803A2EA:
	ldr r0, _0803A30C @ =0x06010000
	adds r2, r5, r0
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_080016D0
	adds r6, r6, r7
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r5, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r4, #1
	cmp r4, #0
	bne _0803A2EA
	b _0803A3B4
	.align 2, 0
_0803A30C: .4byte 0x06010000
_0803A310:
	adds r6, r0, #4
	adds r0, r5, #0
	bl sub_0803D8B4
	lsls r0, r0, #0x15
	lsrs r5, r0, #0x10
	mov r2, sl
	lsls r3, r2, #2
	movs r4, #0x80
	lsls r4, r4, #2
	mov r8, r4
	ldr r1, _0803A37C @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0803A380 @ =0x00012FEC
	adds r0, r0, r2
	ldrh r0, [r0]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	cmp r0, #1
	bne _0803A33E
	lsls r4, r4, #1
	mov r8, r4
_0803A33E:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _0803A38C
	adds r7, #1
	mov sb, r7
	cmp r3, #0
	ble _0803A3B4
	ldr r2, _0803A384 @ =0x040000D4
	mov r4, r8
	lsrs r1, r4, #1
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r1, r0
	adds r4, r3, #0
	movs r7, #0x80
	lsls r7, r7, #3
	adds r3, r7, #0
_0803A360:
	str r6, [r2]
	ldr r7, _0803A388 @ =0x06010000
	adds r0, r5, r7
	str r0, [r2, #4]
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	add r6, r8
	adds r0, r5, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r4, #1
	cmp r4, #0
	bne _0803A360
	b _0803A3B4
	.align 2, 0
_0803A37C: .4byte gEwramData
_0803A380: .4byte 0x00012FEC
_0803A384: .4byte 0x040000D4
_0803A388: .4byte 0x06010000
_0803A38C:
	adds r7, #1
	mov sb, r7
	cmp r3, #0
	ble _0803A3B4
	adds r4, r3, #0
_0803A396:
	ldr r0, _0803A4A4 @ =0x06010000
	adds r2, r5, r0
	mov r0, r8
	adds r1, r6, #0
	bl sub_080016D0
	add r6, r8
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r5, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r4, #1
	cmp r4, #0
	bne _0803A396
_0803A3B4:
	mov r7, sb
	ldr r2, [sp, #4]
	cmp r7, r2
	bhs _0803A3BE
	b _0803A23C
_0803A3BE:
	ldr r3, [sp, #8]
	lsrs r0, r3, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r4, [sp, #0x24]
	lsrs r4, r4, #0x18
	str r4, [sp, #0x1c]
	ldr r6, [sp, #0x28]
	lsrs r6, r6, #0x18
	mov r8, r6
	ldr r1, _0803A4A8 @ =gEwramData
	ldr r5, [r1]
	ldr r7, _0803A4AC @ =0x00011070
	adds r4, r5, r7
	movs r2, #0
	ldrsh r0, [r4, r2]
	movs r3, #1
	rsbs r3, r3, #0
	mov sl, r1
	cmp r0, r3
	bne _0803A3EC
	b _0803A51E
_0803A3EC:
	adds r7, r0, #0
	ldrh r0, [r4]
	str r0, [sp, #0x30]
	mov ip, r0
	ldr r1, _0803A4B0 @ =0x00011072
	adds r0, r5, r1
	ldrh r2, [r0]
	str r2, [sp, #0x20]
	ldr r6, [sp, #0x30]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	mov sb, r0
	adds r0, r5, r0
	ldr r6, _0803A4B4 @ =0x0000FEC6
	adds r1, r0, r6
	ldrh r0, [r1]
	strh r0, [r4]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, r3
	beq _0803A42C
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r5, r1
	ldr r0, _0803A4B8 @ =0x0000FEC4
	adds r1, r1, r0
	ldr r0, _0803A4BC @ =0x0000FFFF
	strh r0, [r1]
_0803A42C:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	cmp r2, r3
	beq _0803A44A
	mov r3, sl
	ldr r1, [r3]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r4, _0803A4B8 @ =0x0000FEC4
	adds r1, r1, r4
	mov r6, sp
	ldrh r6, [r6, #0x30]
	strh r6, [r1]
_0803A44A:
	mov r0, sl
	ldr r2, [r0]
	ldr r1, _0803A4B0 @ =0x00011072
	adds r0, r2, r1
	mov r3, ip
	strh r3, [r0]
	mov r4, sb
	adds r0, r2, r4
	ldr r6, _0803A4B4 @ =0x0000FEC6
	adds r1, r0, r6
	mov r3, sp
	ldrh r3, [r3, #0x20]
	strh r3, [r1]
	ldr r4, _0803A4B8 @ =0x0000FEC4
	adds r0, r0, r4
	ldr r1, _0803A4BC @ =0x0000FFFF
	strh r1, [r0]
	lsls r1, r7, #2
	adds r0, r1, r7
	lsls r4, r0, #2
	adds r6, #2
	adds r0, r2, r6
	adds r0, r0, r4
	ldr r3, [sp, #0xc]
	str r3, [r0]
	adds r2, r2, r4
	adds r6, #4
	adds r2, r2, r6
	movs r0, #1
	strb r0, [r2]
	mov r0, sl
	ldr r2, [r0]
	ldr r3, _0803A4C0 @ =0x00010004
	adds r0, r2, r3
	ldr r0, [r0]
	adds r5, r1, #0
	cmp r0, #0
	bne _0803A4C8
	adds r0, r2, r4
	ldr r4, _0803A4C4 @ =0x0000FECD
	adds r0, r0, r4
	mov r6, sp
	ldrb r6, [r6, #0x18]
	strb r6, [r0]
	b _0803A4D2
	.align 2, 0
_0803A4A4: .4byte 0x06010000
_0803A4A8: .4byte gEwramData
_0803A4AC: .4byte 0x00011070
_0803A4B0: .4byte 0x00011072
_0803A4B4: .4byte 0x0000FEC6
_0803A4B8: .4byte 0x0000FEC4
_0803A4BC: .4byte 0x0000FFFF
_0803A4C0: .4byte 0x00010004
_0803A4C4: .4byte 0x0000FECD
_0803A4C8:
	adds r0, r2, r4
	ldr r1, _0803A530 @ =0x0000FECD
	adds r0, r0, r1
	movs r1, #2
	strb r1, [r0]
_0803A4D2:
	movs r2, #0
	cmp r2, r8
	bge _0803A4F0
	ldr r4, _0803A534 @ =gEwramData
	adds r0, r5, r7
	lsls r3, r0, #2
_0803A4DE:
	ldr r0, [r4]
	adds r1, r2, r3
	ldr r6, _0803A538 @ =0x0000FED0
	adds r0, r0, r6
	adds r0, r0, r1
	strb r2, [r0]
	adds r2, #1
	cmp r2, r8
	blt _0803A4DE
_0803A4F0:
	mov r1, sl
	ldr r0, [r1]
	adds r1, r5, r7
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r2, _0803A53C @ =0x0000FECE
	adds r0, r0, r2
	mov r3, sp
	ldrb r3, [r3, #0x1c]
	strb r3, [r0]
	mov r4, sl
	ldr r0, [r4]
	adds r0, r0, r1
	ldr r6, _0803A540 @ =0x0000FECF
	adds r0, r0, r6
	mov r7, r8
	strb r7, [r0]
	ldr r0, [r4]
	adds r2, #6
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r3, [sp]
	str r3, [r0]
_0803A51E:
	ldr r0, [sp, #0xc]
_0803A520:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803A530: .4byte 0x0000FECD
_0803A534: .4byte gEwramData
_0803A538: .4byte 0x0000FED0
_0803A53C: .4byte 0x0000FECE
_0803A540: .4byte 0x0000FECF

	thumb_func_start sub_0803A544
sub_0803A544: @ 0x0803A544
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	str r0, [sp]
	mov sl, r1
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl sub_0803AFB8
	cmp r0, #0
	blt _0803A562
	b _0803A8A4
_0803A562:
	ldr r4, _0803A578 @ =gEwramData
	ldr r0, [r4]
	ldr r1, _0803A57C @ =0x00025464
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0803A580
	movs r0, #1
	rsbs r0, r0, #0
	b _0803A8A4
	.align 2, 0
_0803A578: .4byte gEwramData
_0803A57C: .4byte 0x00025464
_0803A580:
	mov r0, sl
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	bl sub_0803DAB4
	str r0, [sp, #0xc]
	cmp r0, #0
	bge _0803A592
	b _0803A8A4
_0803A592:
	ldr r0, [sp]
	bl sub_08039748
	ldr r0, [r4]
	ldr r2, _0803A64C @ =0x0002546C
	adds r2, r0, r2
	str r2, [sp, #0x10]
	movs r7, #0
	mov r3, sl
	lsls r3, r3, #0x18
	str r3, [sp, #0x24]
	ldr r6, [sp, #4]
	lsls r6, r6, #0x18
	str r6, [sp, #0x28]
	ldr r0, [sp, #4]
	cmp r7, r0
	blo _0803A5B6
	b _0803A742
_0803A5B6:
	ldr r1, _0803A650 @ =0x0000FFFF
	ldr r2, [sp, #8]
	ands r2, r1
	str r2, [sp, #0x14]
_0803A5BE:
	lsls r0, r7, #2
	ldr r3, [sp, #0x10]
	adds r0, r0, r3
	mov r1, sl
	muls r1, r7, r1
	ldr r0, [r0]
	ldr r4, [sp, #0xc]
	adds r5, r4, r1
	ldrb r4, [r0]
	cmp r4, #0
	beq _0803A694
	adds r7, #1
	mov sb, r7
	cmp r4, #1
	beq _0803A5DE
	b _0803A738
_0803A5DE:
	bl sub_0803B9B4
	ldr r6, _0803A654 @ =gEwramData
	ldr r0, [r6]
	ldr r7, _0803A658 @ =0x000153F8
	adds r6, r0, r7
	adds r0, r5, #0
	bl sub_0803D8B4
	lsls r0, r0, #0x15
	lsrs r5, r0, #0x10
	mov r0, sl
	lsls r3, r0, #2
	movs r7, #0x80
	lsls r7, r7, #2
	ldr r1, _0803A654 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0803A65C @ =0x00012FEC
	adds r0, r0, r2
	ldrh r0, [r0]
	lsrs r0, r0, #1
	ands r0, r4
	cmp r0, #1
	bne _0803A610
	lsls r7, r7, #1
_0803A610:
	ldr r4, [sp, #0x14]
	cmp r4, #0
	bne _0803A668
	cmp r4, r3
	blt _0803A61C
	b _0803A738
_0803A61C:
	ldr r2, _0803A660 @ =0x040000D4
	lsrs r1, r7, #1
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r1, r0
	adds r4, r3, #0
	movs r0, #0x80
	lsls r0, r0, #3
	mov r8, r0
_0803A62E:
	str r6, [r2]
	ldr r3, _0803A664 @ =0x06010000
	adds r0, r5, r3
	str r0, [r2, #4]
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	adds r6, r6, r7
	mov r3, r8
	adds r0, r5, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r4, #1
	cmp r4, #0
	bne _0803A62E
	b _0803A738
	.align 2, 0
_0803A64C: .4byte 0x0002546C
_0803A650: .4byte 0x0000FFFF
_0803A654: .4byte gEwramData
_0803A658: .4byte 0x000153F8
_0803A65C: .4byte 0x00012FEC
_0803A660: .4byte 0x040000D4
_0803A664: .4byte 0x06010000
_0803A668:
	cmp r3, #0
	ble _0803A738
	adds r4, r3, #0
_0803A66E:
	ldr r0, _0803A690 @ =0x06010000
	adds r2, r5, r0
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_080016D0
	adds r6, r6, r7
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r5, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r4, #1
	cmp r4, #0
	bne _0803A66E
	b _0803A738
	.align 2, 0
_0803A690: .4byte 0x06010000
_0803A694:
	adds r6, r0, #4
	adds r0, r5, #0
	bl sub_0803D8B4
	lsls r0, r0, #0x15
	lsrs r5, r0, #0x10
	mov r2, sl
	lsls r3, r2, #2
	movs r4, #0x80
	lsls r4, r4, #2
	mov r8, r4
	ldr r1, _0803A700 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0803A704 @ =0x00012FEC
	adds r0, r0, r2
	ldrh r0, [r0]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	cmp r0, #1
	bne _0803A6C2
	lsls r4, r4, #1
	mov r8, r4
_0803A6C2:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _0803A710
	adds r7, #1
	mov sb, r7
	cmp r3, #0
	ble _0803A738
	ldr r2, _0803A708 @ =0x040000D4
	mov r4, r8
	lsrs r1, r4, #1
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r1, r0
	adds r4, r3, #0
	movs r7, #0x80
	lsls r7, r7, #3
	adds r3, r7, #0
_0803A6E4:
	str r6, [r2]
	ldr r7, _0803A70C @ =0x06010000
	adds r0, r5, r7
	str r0, [r2, #4]
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	add r6, r8
	adds r0, r5, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r4, #1
	cmp r4, #0
	bne _0803A6E4
	b _0803A738
	.align 2, 0
_0803A700: .4byte gEwramData
_0803A704: .4byte 0x00012FEC
_0803A708: .4byte 0x040000D4
_0803A70C: .4byte 0x06010000
_0803A710:
	adds r7, #1
	mov sb, r7
	cmp r3, #0
	ble _0803A738
	adds r4, r3, #0
_0803A71A:
	ldr r0, _0803A828 @ =0x06010000
	adds r2, r5, r0
	mov r0, r8
	adds r1, r6, #0
	bl sub_080016D0
	add r6, r8
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r5, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r4, #1
	cmp r4, #0
	bne _0803A71A
_0803A738:
	mov r7, sb
	ldr r2, [sp, #4]
	cmp r7, r2
	bhs _0803A742
	b _0803A5BE
_0803A742:
	ldr r3, [sp, #8]
	lsrs r0, r3, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r4, [sp, #0x24]
	lsrs r4, r4, #0x18
	str r4, [sp, #0x1c]
	ldr r6, [sp, #0x28]
	lsrs r6, r6, #0x18
	mov r8, r6
	ldr r1, _0803A82C @ =gEwramData
	ldr r5, [r1]
	ldr r7, _0803A830 @ =0x00011070
	adds r4, r5, r7
	movs r2, #0
	ldrsh r0, [r4, r2]
	movs r3, #1
	rsbs r3, r3, #0
	mov sl, r1
	cmp r0, r3
	bne _0803A770
	b _0803A8A2
_0803A770:
	adds r7, r0, #0
	ldrh r0, [r4]
	str r0, [sp, #0x30]
	mov ip, r0
	ldr r1, _0803A834 @ =0x00011072
	adds r0, r5, r1
	ldrh r2, [r0]
	str r2, [sp, #0x20]
	ldr r6, [sp, #0x30]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	mov sb, r0
	adds r0, r5, r0
	ldr r6, _0803A838 @ =0x0000FEC6
	adds r1, r0, r6
	ldrh r0, [r1]
	strh r0, [r4]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, r3
	beq _0803A7B0
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r5, r1
	ldr r0, _0803A83C @ =0x0000FEC4
	adds r1, r1, r0
	ldr r0, _0803A840 @ =0x0000FFFF
	strh r0, [r1]
_0803A7B0:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	cmp r2, r3
	beq _0803A7CE
	mov r3, sl
	ldr r1, [r3]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r4, _0803A83C @ =0x0000FEC4
	adds r1, r1, r4
	mov r6, sp
	ldrh r6, [r6, #0x30]
	strh r6, [r1]
_0803A7CE:
	mov r0, sl
	ldr r2, [r0]
	ldr r1, _0803A834 @ =0x00011072
	adds r0, r2, r1
	mov r3, ip
	strh r3, [r0]
	mov r4, sb
	adds r0, r2, r4
	ldr r6, _0803A838 @ =0x0000FEC6
	adds r1, r0, r6
	mov r3, sp
	ldrh r3, [r3, #0x20]
	strh r3, [r1]
	ldr r4, _0803A83C @ =0x0000FEC4
	adds r0, r0, r4
	ldr r1, _0803A840 @ =0x0000FFFF
	strh r1, [r0]
	lsls r1, r7, #2
	adds r0, r1, r7
	lsls r4, r0, #2
	adds r6, #2
	adds r0, r2, r6
	adds r0, r0, r4
	ldr r3, [sp, #0xc]
	str r3, [r0]
	adds r2, r2, r4
	adds r6, #4
	adds r2, r2, r6
	movs r0, #2
	strb r0, [r2]
	mov r3, sl
	ldr r2, [r3]
	ldr r6, _0803A844 @ =0x00010004
	adds r0, r2, r6
	ldr r0, [r0]
	adds r5, r1, #0
	cmp r0, #0
	bne _0803A84C
	adds r0, r2, r4
	ldr r1, _0803A848 @ =0x0000FECD
	adds r0, r0, r1
	mov r2, sp
	ldrb r2, [r2, #0x18]
	strb r2, [r0]
	b _0803A856
	.align 2, 0
_0803A828: .4byte 0x06010000
_0803A82C: .4byte gEwramData
_0803A830: .4byte 0x00011070
_0803A834: .4byte 0x00011072
_0803A838: .4byte 0x0000FEC6
_0803A83C: .4byte 0x0000FEC4
_0803A840: .4byte 0x0000FFFF
_0803A844: .4byte 0x00010004
_0803A848: .4byte 0x0000FECD
_0803A84C:
	adds r0, r2, r4
	ldr r3, _0803A8B4 @ =0x0000FECD
	adds r0, r0, r3
	movs r4, #2
	strb r4, [r0]
_0803A856:
	movs r2, #0
	cmp r2, r8
	bge _0803A874
	ldr r4, _0803A8B8 @ =gEwramData
	adds r0, r5, r7
	lsls r3, r0, #2
_0803A862:
	ldr r0, [r4]
	adds r1, r2, r3
	ldr r6, _0803A8BC @ =0x0000FED0
	adds r0, r0, r6
	adds r0, r0, r1
	strb r2, [r0]
	adds r2, #1
	cmp r2, r8
	blt _0803A862
_0803A874:
	mov r1, sl
	ldr r0, [r1]
	adds r1, r5, r7
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r2, _0803A8C0 @ =0x0000FECE
	adds r0, r0, r2
	mov r3, sp
	ldrb r3, [r3, #0x1c]
	strb r3, [r0]
	mov r4, sl
	ldr r0, [r4]
	adds r0, r0, r1
	ldr r6, _0803A8C4 @ =0x0000FECF
	adds r0, r0, r6
	mov r7, r8
	strb r7, [r0]
	ldr r0, [r4]
	adds r2, #6
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r3, [sp]
	str r3, [r0]
_0803A8A2:
	ldr r0, [sp, #0xc]
_0803A8A4:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803A8B4: .4byte 0x0000FECD
_0803A8B8: .4byte gEwramData
_0803A8BC: .4byte 0x0000FED0
_0803A8C0: .4byte 0x0000FECE
_0803A8C4: .4byte 0x0000FECF

	thumb_func_start sub_0803A8C8
sub_0803A8C8: @ 0x0803A8C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp]
	adds r4, r1, #0
	str r2, [sp, #4]
	ldr r5, _0803A8F8 @ =gEwramData
	ldr r1, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0xd
	adds r0, r1, r0
	ldr r2, _0803A8FC @ =0x00012FF1
	adds r0, r0, r2
	ldr r2, [sp, #0x30]
	adds r3, r3, r2
	ldrb r0, [r0]
	cmp r3, r0
	bls _0803A900
	movs r0, #0
	b _0803AA0A
	.align 2, 0
_0803A8F8: .4byte gEwramData
_0803A8FC: .4byte 0x00012FF1
_0803A900:
	movs r3, #0x80
	lsls r3, r3, #4
	str r3, [sp, #0xc]
	ldr r2, _0803A934 @ =0x00012FEC
	adds r0, r1, r2
	ldrh r0, [r0]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	cmp r0, #1
	bne _0803A91A
	lsls r3, r3, #1
	str r3, [sp, #0xc]
_0803A91A:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803A93C
	cmp r0, #1
	bne _0803A940
	adds r0, r4, #0
	bl sub_0803B9B4
	ldr r0, [r5]
	ldr r3, _0803A938 @ =0x000153F8
	adds r3, r0, r3
	str r3, [sp, #8]
	b _0803A940
	.align 2, 0
_0803A934: .4byte 0x00012FEC
_0803A938: .4byte 0x000153F8
_0803A93C:
	adds r4, #4
	str r4, [sp, #8]
_0803A940:
	movs r4, #0
	ldr r0, [sp, #0x30]
	cmp r4, r0
	bhs _0803AA08
	ldr r1, _0803A9C8 @ =0x0000FFFF
	mov sl, r1
	ldr r0, [sp, #0x34]
	mov r2, sl
	ands r2, r0
	mov sl, r2
	movs r3, #4
	mov sb, r3
_0803A958:
	ldr r0, [sp, #0xc]
	adds r1, r0, #0
	muls r1, r4, r1
	ldr r2, [sp]
	ldr r3, [sp, #4]
	adds r0, r2, r3
	adds r0, r0, r4
	ldr r2, [sp, #8]
	adds r6, r2, r1
	bl sub_0803D8B4
	lsls r0, r0, #0x15
	lsrs r5, r0, #0x10
	movs r7, #0x80
	lsls r7, r7, #2
	ldr r0, _0803A9CC @ =gEwramData
	ldr r0, [r0]
	ldr r3, _0803A9D0 @ =0x00012FEC
	adds r0, r0, r3
	ldrh r0, [r0]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	cmp r0, #1
	bne _0803A98C
	lsls r7, r7, #1
_0803A98C:
	mov r0, sl
	cmp r0, #0
	bne _0803A9DC
	lsrs r1, r7, #1
	adds r4, #1
	mov r8, r4
	ldr r2, _0803A9D4 @ =0x040000D4
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r1, r0
	mov r4, sb
	movs r3, #0x80
	lsls r3, r3, #3
	mov ip, r3
_0803A9A8:
	str r6, [r2]
	ldr r3, _0803A9D8 @ =0x06010000
	adds r0, r5, r3
	str r0, [r2, #4]
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	adds r6, r6, r7
	mov r3, ip
	adds r0, r5, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r4, #1
	cmp r4, #0
	bne _0803A9A8
	b _0803AA00
	.align 2, 0
_0803A9C8: .4byte 0x0000FFFF
_0803A9CC: .4byte gEwramData
_0803A9D0: .4byte 0x00012FEC
_0803A9D4: .4byte 0x040000D4
_0803A9D8: .4byte 0x06010000
_0803A9DC:
	adds r4, #1
	mov r8, r4
	mov r4, sb
_0803A9E2:
	ldr r0, _0803AA1C @ =0x06010000
	adds r2, r5, r0
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_080016D0
	adds r6, r6, r7
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r5, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r4, #1
	cmp r4, #0
	bne _0803A9E2
_0803AA00:
	mov r4, r8
	ldr r2, [sp, #0x30]
	cmp r4, r2
	blo _0803A958
_0803AA08:
	movs r0, #1
_0803AA0A:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803AA1C: .4byte 0x06010000

	thumb_func_start sub_0803AA20
sub_0803AA20: @ 0x0803AA20
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	adds r7, r1, #0
	mov r8, r2
	mov ip, r3
	ldr r1, _0803AA8C @ =gEwramData
	ldr r2, [r1]
	ldr r3, _0803AA90 @ =0x00011072
	adds r0, r2, r3
	movs r4, #0
	ldrsh r3, [r0, r4]
	movs r0, #1
	rsbs r0, r0, #0
	mov sb, r1
	cmp r3, r0
	beq _0803AA6C
	adds r1, r2, #0
	ldr r2, _0803AA94 @ =0x0000FEC8
	adds r4, r1, r2
	adds r6, r0, #0
_0803AA50:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r2, r0, #2
	adds r0, r4, r2
	ldr r0, [r0]
	cmp r0, r5
	beq _0803AAA0
	adds r0, r1, r2
	ldr r3, _0803AA98 @ =0x0000FEC6
	adds r0, r0, r3
	movs r2, #0
	ldrsh r3, [r0, r2]
	cmp r3, r6
	bne _0803AA50
_0803AA6C:
	movs r2, #1
	rsbs r2, r2, #0
_0803AA70:
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r3, _0803AA9C @ =0x0000FEC4
	adds r0, r0, r3
	mov r4, sb
	ldr r1, [r4]
	adds r4, r1, r0
	ldrb r0, [r4, #8]
	cmp r0, #0
	bne _0803AAA4
	movs r0, #0
	b _0803AADA
	.align 2, 0
_0803AA8C: .4byte gEwramData
_0803AA90: .4byte 0x00011072
_0803AA94: .4byte 0x0000FEC8
_0803AA98: .4byte 0x0000FEC6
_0803AA9C: .4byte 0x0000FEC4
_0803AAA0:
	adds r2, r3, #0
	b _0803AA70
_0803AAA4:
	cmp r0, #1
	bne _0803AAAC
	ldr r1, [r4, #0x10]
	b _0803AAB0
_0803AAAC:
	ldr r0, _0803AAE8 @ =0x00025468
	adds r1, r1, r0
_0803AAB0:
	adds r1, #4
	mov r2, r8
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r4, #0xa]
	adds r2, r7, #0
	muls r2, r0, r2
	str r0, [sp]
	mov r3, ip
	str r3, [sp, #4]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0803A8C8
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r0, r7
	mov r4, r8
	strb r4, [r0]
	movs r0, #1
_0803AADA:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803AAE8: .4byte 0x00025468

	thumb_func_start sub_0803AAEC
sub_0803AAEC: @ 0x0803AAEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	mov r5, r8
	adds r5, #0x64
	ldrb r0, [r5]
	cmp r0, #0xff
	bne _0803AB06
	b _0803AC1E
_0803AB06:
	cmp r1, #0
	beq _0803AB28
	ldr r0, _0803AB98 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r5]
	lsls r0, r0, #4
	ldr r2, _0803AB9C @ =0x00010178
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r4, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	bl sub_0803943C
	adds r0, r4, #0
	bl sub_0803D924
_0803AB28:
	ldrb r6, [r5]
	cmp r6, #0xef
	bhi _0803AC10
	ldr r5, _0803AB98 @ =gEwramData
	mov ip, r5
	ldr r4, [r5]
	lsls r2, r6, #4
	ldr r1, _0803ABA0 @ =0x00010174
	adds r0, r4, r1
	adds r0, r0, r2
	movs r7, #1
	rsbs r7, r7, #0
	str r7, [r0]
	ldr r3, _0803AB9C @ =0x00010178
	adds r0, r4, r3
	adds r0, r0, r2
	str r7, [r0]
	ldr r5, _0803ABA4 @ =0x0001017C
	adds r0, r4, r5
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
	ldr r1, _0803ABA8 @ =0x00011074
	adds r0, r4, r1
	ldrh r0, [r0]
	mov sb, r0
	adds r0, r4, r2
	subs r3, #8
	adds r1, r0, r3
	ldrh r3, [r1]
	subs r5, #0xa
	adds r0, r0, r5
	ldrh r1, [r0]
	ldr r0, _0803ABAC @ =0x00011076
	adds r0, r4, r0
	str r0, [sp]
	movs r5, #0
	ldrsh r0, [r0, r5]
	mov sl, ip
	mov ip, r2
	cmp r6, r0
	bne _0803ABB8
	ldr r0, [sp]
	strh r1, [r0]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, r7
	beq _0803ABD6
	lsls r0, r0, #4
	adds r0, r4, r0
	ldr r1, _0803ABB0 @ =0x00010170
	adds r0, r0, r1
	ldr r1, _0803ABB4 @ =0x0000FFFF
	strh r1, [r0]
	b _0803ABD6
	.align 2, 0
_0803AB98: .4byte gEwramData
_0803AB9C: .4byte 0x00010178
_0803ABA0: .4byte 0x00010174
_0803ABA4: .4byte 0x0001017C
_0803ABA8: .4byte 0x00011074
_0803ABAC: .4byte 0x00011076
_0803ABB0: .4byte 0x00010170
_0803ABB4: .4byte 0x0000FFFF
_0803ABB8:
	lsls r0, r3, #0x10
	asrs r0, r0, #0xc
	adds r0, r4, r0
	ldr r2, _0803AC30 @ =0x00010172
	adds r0, r0, r2
	strh r1, [r0]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, r7
	beq _0803ABD6
	lsls r0, r0, #4
	adds r0, r4, r0
	ldr r5, _0803AC34 @ =0x00010170
	adds r0, r0, r5
	strh r3, [r0]
_0803ABD6:
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0803ABF2
	mov r2, sl
	ldr r0, [r2]
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r3, _0803AC34 @ =0x00010170
	adds r0, r0, r3
	strh r6, [r0]
_0803ABF2:
	mov r5, sl
	ldr r2, [r5]
	mov r1, ip
	adds r0, r2, r1
	ldr r3, _0803AC30 @ =0x00010172
	adds r1, r0, r3
	mov r5, sb
	strh r5, [r1]
	ldr r1, _0803AC34 @ =0x00010170
	adds r0, r0, r1
	ldr r1, _0803AC38 @ =0x0000FFFF
	strh r1, [r0]
	ldr r3, _0803AC3C @ =0x00011074
	adds r2, r2, r3
	strh r6, [r2]
_0803AC10:
	mov r1, r8
	adds r1, #0x64
	movs r0, #0xff
	strb r0, [r1]
	mov r0, r8
	bl sub_08000C28
_0803AC1E:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803AC30: .4byte 0x00010172
_0803AC34: .4byte 0x00010170
_0803AC38: .4byte 0x0000FFFF
_0803AC3C: .4byte 0x00011074

	thumb_func_start sub_0803AC40
sub_0803AC40: @ 0x0803AC40
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _0803AC58
	movs r0, #1
	b _0803ACD6
_0803AC58:
	adds r0, r2, #0
	adds r0, #0x64
	ldrb r0, [r0]
	cmp r0, #0xef
	bhi _0803ACA8
	ldrb r3, [r2, #0xf]
	cmp r3, #0
	beq _0803AC82
	ldrb r0, [r2, #0xe]
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	adds r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r3
	bls _0803AC7E
	strb r4, [r2, #0xe]
_0803AC7E:
	cmp r1, #0
	bne _0803ACA8
_0803AC82:
	adds r0, r2, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, #0x40
	lsls r0, r0, #0x10
	movs r1, #0xb8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0803ACA8
	adds r0, r2, #0
	adds r0, #0x46
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	blt _0803ACA8
	cmp r1, #0xe0
	ble _0803ACAC
_0803ACA8:
	movs r0, #0
	b _0803ACD6
_0803ACAC:
	adds r0, r2, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803ACCC
	ldr r0, _0803ACC8 @ =0x03004560
	ldr r1, [r0]
	adds r0, r2, #0
	bl _call_via_r1
	b _0803ACD6
	.align 2, 0
_0803ACC8: .4byte 0x03004560
_0803ACCC:
	ldr r0, _0803ACDC @ =0x03004564
	ldr r1, [r0]
	adds r0, r2, #0
	bl _call_via_r1
_0803ACD6:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0803ACDC: .4byte 0x03004564

	thumb_func_start sub_0803ACE0
sub_0803ACE0: @ 0x0803ACE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov r8, r0
	movs r0, #0
	str r0, [sp, #0x14]
	mov r1, r8
	adds r1, #0x64
	ldrb r0, [r1]
	cmp r0, #0xef
	bhi _0803AD1C
	ldr r3, _0803AD20 @ =gEwramData
	ldr r4, [r3]
	ldrb r1, [r1]
	lsls r2, r1, #4
	ldr r5, _0803AD24 @ =0x00010178
	adds r0, r4, r5
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #0x10]
	adds r1, r2, #0
	ldr r2, _0803AD28 @ =0x0001017C
	adds r0, r4, r2
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	bne _0803AD2C
_0803AD1C:
	movs r0, #0
	b _0803AEEA
	.align 2, 0
_0803AD20: .4byte gEwramData
_0803AD24: .4byte 0x00010178
_0803AD28: .4byte 0x0001017C
_0803AD2C:
	mov r0, r8
	adds r0, #0x5b
	ldrb r0, [r0]
	cmp r0, #0
	blt _0803AD4E
	cmp r0, #1
	ble _0803AD4E
	cmp r0, #2
	bne _0803AD4E
	ldr r3, [sp, #0x10]
	lsls r0, r3, #0x10
	asrs r0, r0, #0xd
	adds r0, r4, r0
	ldr r5, _0803AD64 @ =0x00012FF1
	adds r0, r0, r5
	ldrb r0, [r0]
	str r0, [sp, #0x14]
_0803AD4E:
	mov r0, r8
	adds r0, #0x65
	ldrb r1, [r0]
	ldrh r0, [r2]
	cmp r1, r0
	bhs _0803AD68
	lsls r1, r1, #4
	ldr r0, [r2, #4]
	adds r1, r0, r1
	b _0803AD6A
	.align 2, 0
_0803AD64: .4byte 0x00012FF1
_0803AD68:
	ldr r1, [r2, #4]
_0803AD6A:
	ldr r4, [r1, #0xc]
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	str r0, [sp]
	movs r0, #1
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	mov r2, r8
	adds r2, #0x5a
	ldrb r1, [r2]
	lsls r0, r1, #0x1f
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xc
	mov ip, r0
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xa
	mov r3, ip
	orrs r3, r1
	mov ip, r3
	ldr r5, _0803AE4C @ =gEwramData
	ldr r0, [r5]
	ldr r1, _0803AE50 @ =0x00011588
	adds r5, r0, r1
	ldrb r1, [r4, #8]
	lsls r0, r1, #0x1c
	lsrs r3, r0, #0x1c
	lsrs r1, r1, #4
	mov sl, r1
	mov r0, r8
	adds r0, #0x58
	ldrb r1, [r0]
	lsls r0, r1, #0x19
	lsrs r7, r0, #0x1f
	lsrs r6, r1, #7
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #0x10
	str r0, [sp, #8]
	movs r0, #1
	ldrsb r0, [r4, r0]
	lsls r0, r0, #0x10
	add r1, sp, #8
	str r0, [r1, #4]
	adds r0, r7, #0
	orrs r0, r6
	str r2, [sp, #0x18]
	mov sb, r1
	cmp r0, #0
	beq _0803AE14
	cmp r7, #0
	beq _0803ADF2
	ldr r2, _0803AE54 @ =0x080E29A0
	mov r1, sl
	lsls r0, r1, #3
	lsls r1, r3, #5
	adds r0, r0, r1
	adds r0, r0, r2
	ldr r2, [r0]
	ldr r0, [sp]
	lsls r0, r0, #1
	ldr r1, [sp, #8]
	subs r0, r0, r1
	lsls r2, r2, #1
	subs r0, r0, r2
	str r0, [sp, #8]
_0803ADF2:
	cmp r6, #0
	beq _0803AE14
	ldr r2, _0803AE54 @ =0x080E29A0
	mov r1, sl
	lsls r0, r1, #3
	lsls r1, r3, #5
	adds r0, r0, r1
	adds r2, #4
	adds r0, r0, r2
	ldr r2, [r0]
	ldr r0, [sp, #4]
	lsls r0, r0, #1
	ldr r1, [sp, #0xc]
	subs r0, r0, r1
	lsls r2, r2, #1
	subs r0, r0, r2
	str r0, [sp, #0xc]
_0803AE14:
	ldr r2, _0803AE4C @ =gEwramData
	ldr r1, [r2]
	ldr r0, _0803AE58 @ =0x00011590
	adds r2, r1, r0
	ldr r0, [sp, #8]
	str r0, [r2]
	ldr r2, _0803AE5C @ =0x00011594
	adds r1, r1, r2
	mov r2, sb
	ldr r0, [r2, #4]
	str r0, [r1]
	lsls r2, r3, #0xe
	mov r3, ip
	orrs r2, r3
	mov ip, r5
	adds r5, #2
	mov r0, sb
	ldr r1, [r0, #4]
	mov r3, r8
	ldr r0, [r3, #0x44]
	adds r0, r1, r0
	cmp r0, #0
	bge _0803AE60
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0803AE62
	.align 2, 0
_0803AE4C: .4byte gEwramData
_0803AE50: .4byte 0x00011588
_0803AE54: .4byte 0x080E29A0
_0803AE58: .4byte 0x00011590
_0803AE5C: .4byte 0x00011594
_0803AE60:
	asrs r0, r0, #0x10
_0803AE62:
	movs r1, #0xff
	ands r0, r1
	orrs r0, r2
	mov r1, ip
	strh r0, [r1]
	mov r2, sl
	lsls r3, r2, #0xe
	ldrb r1, [r4, #0xa]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	eors r6, r0
	lsls r0, r6, #0xd
	orrs r3, r0
	adds r6, r5, #0
	adds r5, #2
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803AE8C
	eors r7, r2
_0803AE8C:
	lsls r2, r7, #0xc
	orrs r2, r3
	ldr r1, [sp, #8]
	mov r3, r8
	ldr r0, [r3, #0x40]
	adds r0, r1, r0
	cmp r0, #0
	bge _0803AEAC
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	ldr r1, _0803AEA8 @ =0x000001FF
	ands r0, r1
	b _0803AEB0
	.align 2, 0
_0803AEA8: .4byte 0x000001FF
_0803AEAC:
	lsls r0, r0, #7
	lsrs r0, r0, #0x17
_0803AEB0:
	orrs r0, r2
	strh r0, [r6]
	ldr r3, [sp, #0x10]
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _0803AEC0
	ldr r0, [sp, #0x14]
	adds r3, r3, r0
_0803AEC0:
	movs r1, #4
	ldrsb r1, [r4, r1]
	movs r2, #5
	ldrsb r2, [r4, r2]
	adds r0, r3, #0
	bl sub_0803DA7C
	ldr r1, [sp, #0x18]
	ldrb r2, [r1]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1c
	mov r1, r8
	adds r1, #0x62
	ldrb r3, [r4, #0xb]
	ldrb r1, [r1]
	ands r1, r3
	adds r2, r2, r1
	lsls r2, r2, #0xc
	orrs r2, r0
	strh r2, [r5]
	movs r0, #1
_0803AEEA:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803AEFC
sub_0803AEFC: @ 0x0803AEFC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, #0x40
	lsls r0, r0, #0x10
	movs r1, #0xb8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0803AF2E
	adds r0, r6, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	blt _0803AF2E
	cmp r1, #0xe0
	bgt _0803AF2E
	bl sub_0803E4C0
	adds r4, r0, #0
	cmp r4, #0
	bne _0803AF32
_0803AF2E:
	movs r0, #0
	b _0803AFAC
_0803AF32:
	adds r5, r4, #0
	ldr r3, _0803AF5C @ =gEwramData
	ldr r2, [r3]
	ldr r1, _0803AF60 @ =0x00011588
	adds r0, r2, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r4]
	str r1, [r4, #4]
	ldr r0, _0803AF64 @ =0x00011594
	adds r2, r2, r0
	ldr r1, [r2]
	ldr r0, [r6, #0x44]
	adds r0, r1, r0
	cmp r0, #0
	bge _0803AF68
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0803AF6A
	.align 2, 0
_0803AF5C: .4byte gEwramData
_0803AF60: .4byte 0x00011588
_0803AF64: .4byte 0x00011594
_0803AF68:
	lsrs r0, r0, #0x10
_0803AF6A:
	strb r0, [r5]
	ldr r0, [r3]
	ldr r1, _0803AF88 @ =0x00011590
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r6, #0x40]
	adds r0, r1, r0
	cmp r0, #0
	bge _0803AF90
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r3, r0, #0
	ldr r0, _0803AF8C @ =0x000001FF
	ands r3, r0
	b _0803AF94
	.align 2, 0
_0803AF88: .4byte 0x00011590
_0803AF8C: .4byte 0x000001FF
_0803AF90:
	lsls r0, r0, #7
	lsrs r3, r0, #0x17
_0803AF94:
	ldrh r1, [r5, #2]
	ldr r0, _0803AFB4 @ =0xFFFFFE00
	ands r0, r1
	orrs r0, r3
	strh r0, [r5, #2]
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_0803E528
	movs r0, #1
_0803AFAC:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803AFB4: .4byte 0xFFFFFE00

	thumb_func_start sub_0803AFB8
sub_0803AFB8: @ 0x0803AFB8
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	ldr r0, _0803AFE0 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0803AFE4 @ =0x00011072
	adds r0, r2, r1
	movs r4, #0
	ldrsh r1, [r0, r4]
	ldr r0, _0803AFE8 @ =0x081C15F4
	cmp r3, r0
	bne _0803B006
	movs r7, #0x9a
	lsls r7, r7, #3
	adds r0, r2, r7
	ldr r0, [r0]
	cmp r0, #2
	beq _0803AFEC
	cmp r0, #3
	beq _0803B004
	b _0803B006
	.align 2, 0
_0803AFE0: .4byte gEwramData
_0803AFE4: .4byte 0x00011072
_0803AFE8: .4byte 0x081C15F4
_0803AFEC:
	ldr r3, _0803AFF0 @ =0x0826F8A4
	b _0803B006
	.align 2, 0
_0803AFF0: .4byte 0x0826F8A4
_0803AFF4:
	ldr r3, _0803B000 @ =0x0000FEC8
	adds r0, r2, r3
	adds r0, r0, r1
	ldr r0, [r0]
	b _0803B036
	.align 2, 0
_0803B000: .4byte 0x0000FEC8
_0803B004:
	ldr r3, _0803B03C @ =0x082718A8
_0803B006:
	movs r5, #1
	rsbs r5, r5, #0
	cmp r1, r5
	beq _0803B032
	ldr r0, _0803B040 @ =gEwramData
	ldr r2, [r0]
	ldr r7, _0803B044 @ =0x0000FED4
	adds r4, r2, r7
	ldr r6, _0803B048 @ =0x0000FEC6
_0803B018:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #2
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, r3
	beq _0803AFF4
	adds r0, r2, r1
	adds r0, r0, r6
	movs r7, #0
	ldrsh r1, [r0, r7]
	cmp r1, r5
	bne _0803B018
_0803B032:
	movs r0, #1
	rsbs r0, r0, #0
_0803B036:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803B03C: .4byte 0x082718A8
_0803B040: .4byte gEwramData
_0803B044: .4byte 0x0000FED4
_0803B048: .4byte 0x0000FEC6

	thumb_func_start sub_0803B04C
sub_0803B04C: @ 0x0803B04C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r5, _0803B130 @ =gEwramData
	ldr r3, [r5]
	ldr r1, _0803B134 @ =0x00010004
	adds r0, r3, r1
	ldr r4, [r0]
	cmp r4, #0
	beq _0803B064
	b _0803B174
_0803B064:
	ldr r1, _0803B138 @ =0x040000D4
	ldr r2, _0803B13C @ =0x0000FEC4
	adds r0, r3, r2
	str r0, [r1]
	ldr r2, _0803B140 @ =0x00010008
	adds r0, r3, r2
	str r0, [r1, #4]
	ldr r0, _0803B144 @ =0x84000050
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _0803B148 @ =0x00011070
	adds r0, r3, r2
	str r0, [r1]
	adds r2, #8
	adds r0, r3, r2
	str r0, [r1, #4]
	ldr r0, _0803B14C @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _0803B150 @ =0x00025468
	adds r0, r3, r2
	str r0, [r1]
	ldr r2, _0803B154 @ =0x00010154
	adds r0, r3, r2
	str r0, [r1, #4]
	ldr r0, _0803B158 @ =0x84000007
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0803B15C @ =0x00010150
	adds r2, r3, r0
	ldr r0, _0803B160 @ =0x00025464
	adds r1, r3, r0
	ldr r0, [r1]
	str r0, [r2]
	str r4, [r1]
	adds r6, r5, #0
	ldr r1, _0803B164 @ =0x0000FEC8
	mov r8, r1
	movs r3, #1
	rsbs r3, r3, #0
	movs r5, #0
	movs r7, #0xf
_0803B0B8:
	ldr r1, [r6]
	mov r2, r8
	adds r0, r1, r2
	adds r0, r0, r5
	ldr r2, [r0]
	cmp r2, r3
	beq _0803B116
	adds r0, r1, r5
	ldr r1, _0803B168 @ =0x0000FECD
	adds r0, r0, r1
	ldrb r4, [r0]
	cmp r4, #0
	bne _0803B116
	adds r0, r2, #0
	str r3, [sp]
	bl sub_0803D924
	ldr r1, [r6]
	mov r2, r8
	adds r0, r1, r2
	adds r0, r0, r5
	ldr r3, [sp]
	str r3, [r0]
	adds r1, r1, r5
	ldr r0, _0803B16C @ =0x0000FECC
	adds r1, r1, r0
	strb r4, [r1]
	ldr r0, [r6]
	adds r0, r0, r5
	ldr r1, _0803B168 @ =0x0000FECD
	adds r0, r0, r1
	strb r4, [r0]
	ldr r0, [r6]
	adds r0, r0, r5
	ldr r2, _0803B170 @ =0x0000FED0
	adds r0, r0, r2
	strb r4, [r0]
	ldr r0, [r6]
	adds r0, r0, r5
	adds r1, #4
	adds r0, r0, r1
	strb r4, [r0]
	ldr r0, [r6]
	adds r2, #4
	adds r0, r0, r2
	adds r0, r0, r5
	str r4, [r0]
_0803B116:
	adds r5, #0x14
	subs r7, #1
	cmp r7, #0
	bge _0803B0B8
	ldr r0, _0803B130 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803B134 @ =0x00010004
	adds r0, r0, r1
	movs r1, #1
	str r1, [r0]
	movs r0, #1
	b _0803B176
	.align 2, 0
_0803B130: .4byte gEwramData
_0803B134: .4byte 0x00010004
_0803B138: .4byte 0x040000D4
_0803B13C: .4byte 0x0000FEC4
_0803B140: .4byte 0x00010008
_0803B144: .4byte 0x84000050
_0803B148: .4byte 0x00011070
_0803B14C: .4byte 0x84000002
_0803B150: .4byte 0x00025468
_0803B154: .4byte 0x00010154
_0803B158: .4byte 0x84000007
_0803B15C: .4byte 0x00010150
_0803B160: .4byte 0x00025464
_0803B164: .4byte 0x0000FEC8
_0803B168: .4byte 0x0000FECD
_0803B16C: .4byte 0x0000FECC
_0803B170: .4byte 0x0000FED0
_0803B174:
	movs r0, #0
_0803B176:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803B184
sub_0803B184: @ 0x0803B184
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _0803B270 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _0803B274 @ =0x00010004
	adds r0, r1, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _0803B1A0
	b _0803B658
_0803B1A0:
	ldr r3, _0803B278 @ =0x0000FEC4
	adds r3, r3, r1
	mov r8, r3
	movs r3, #0xf
_0803B1A8:
	mov r4, r8
	ldr r1, [r4, #4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0803B1C4
	ldrb r0, [r4, #9]
	cmp r0, #2
	bne _0803B1C4
	adds r0, r1, #0
	str r3, [sp, #0x14]
	bl sub_0803D924
	ldr r3, [sp, #0x14]
_0803B1C4:
	subs r3, #1
	movs r5, #0x14
	add r8, r5
	cmp r3, #0
	bge _0803B1A8
	ldr r1, _0803B27C @ =0x040000D4
	ldr r4, _0803B270 @ =gEwramData
	ldr r2, [r4]
	ldr r6, _0803B280 @ =0x00011078
	adds r0, r2, r6
	str r0, [r1]
	ldr r3, _0803B284 @ =0x00011070
	adds r0, r2, r3
	str r0, [r1, #4]
	ldr r0, _0803B288 @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r5, _0803B28C @ =0x00010008
	adds r0, r2, r5
	str r0, [r1]
	ldr r5, _0803B278 @ =0x0000FEC4
	adds r0, r2, r5
	str r0, [r1, #4]
	ldr r0, _0803B290 @ =0x84000050
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r6, _0803B294 @ =0x00010154
	adds r0, r2, r6
	str r0, [r1]
	ldr r3, _0803B298 @ =0x00025468
	adds r0, r2, r3
	str r0, [r1, #4]
	ldr r0, _0803B29C @ =0x84000007
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r6, _0803B2A0 @ =0x00025464
	adds r1, r2, r6
	movs r0, #0
	str r0, [r1]
	ldr r0, _0803B2A4 @ =0x00010150
	adds r2, r2, r0
	ldr r0, [r2]
	cmp r0, #0
	beq _0803B220
	bl sub_08039748
_0803B220:
	movs r3, #0
	ldr r0, [r4]
	adds r0, r0, r5
	mov r8, r0
_0803B228:
	mov r2, r8
	ldr r1, [r2, #4]
	movs r0, #1
	rsbs r0, r0, #0
	adds r4, r3, #1
	str r4, [sp, #0xc]
	adds r2, #0x14
	str r2, [sp, #0x10]
	cmp r1, r0
	bne _0803B23E
	b _0803B626
_0803B23E:
	mov r5, r8
	ldrb r0, [r5, #9]
	cmp r0, #0
	beq _0803B248
	b _0803B626
_0803B248:
	ldrb r6, [r5, #0xa]
	mov sl, r6
	ldrb r2, [r5, #0xb]
	adds r0, r1, #0
	mov r1, sl
	str r3, [sp, #0x14]
	bl sub_0803D808
	str r0, [sp]
	ldrb r0, [r5, #8]
	ldr r3, [sp, #0x14]
	cmp r0, #1
	bne _0803B264
	b _0803B3BC
_0803B264:
	cmp r0, #1
	bgt _0803B2A8
	cmp r0, #0
	beq _0803B2B0
	b _0803B626
	.align 2, 0
_0803B270: .4byte gEwramData
_0803B274: .4byte 0x00010004
_0803B278: .4byte 0x0000FEC4
_0803B27C: .4byte 0x040000D4
_0803B280: .4byte 0x00011078
_0803B284: .4byte 0x00011070
_0803B288: .4byte 0x84000002
_0803B28C: .4byte 0x00010008
_0803B290: .4byte 0x84000050
_0803B294: .4byte 0x00010154
_0803B298: .4byte 0x00025468
_0803B29C: .4byte 0x84000007
_0803B2A0: .4byte 0x00025464
_0803B2A4: .4byte 0x00010150
_0803B2A8:
	cmp r0, #2
	bne _0803B2AE
	b _0803B4FC
_0803B2AE:
	b _0803B626
_0803B2B0:
	mov r1, r8
	ldr r0, [r1, #0x10]
	ldrb r4, [r0]
	cmp r4, #0
	beq _0803B33C
	cmp r4, #1
	beq _0803B2C0
	b _0803B626
_0803B2C0:
	bl sub_0803B9B4
	ldr r2, _0803B328 @ =gEwramData
	ldr r0, [r2]
	ldr r3, _0803B32C @ =0x000153F8
	adds r6, r0, r3
	ldr r0, [sp]
	bl sub_0803D8B4
	lsls r0, r0, #0x15
	lsrs r5, r0, #0x10
	mov r0, sl
	lsls r1, r0, #2
	movs r7, #0x80
	lsls r7, r7, #2
	ldr r2, _0803B328 @ =gEwramData
	ldr r0, [r2]
	ldr r3, _0803B330 @ =0x00012FEC
	adds r0, r0, r3
	ldrh r0, [r0]
	lsrs r0, r0, #1
	ands r0, r4
	cmp r0, #1
	bne _0803B2F2
	lsls r7, r7, #1
_0803B2F2:
	cmp r1, #0
	bne _0803B2F8
	b _0803B626
_0803B2F8:
	ldr r3, _0803B334 @ =0x040000D4
	lsrs r2, r7, #1
	movs r4, #0x80
	lsls r4, r4, #0x18
	orrs r2, r4
	movs r0, #0x80
	lsls r0, r0, #3
	mov r8, r0
_0803B308:
	str r6, [r3]
	ldr r4, _0803B338 @ =0x06010000
	adds r0, r5, r4
	str r0, [r3, #4]
	str r2, [r3, #8]
	ldr r0, [r3, #8]
	adds r6, r6, r7
	mov r4, r8
	adds r0, r5, r4
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r1, #1
	cmp r1, #0
	bne _0803B308
	b _0803B626
	.align 2, 0
_0803B328: .4byte gEwramData
_0803B32C: .4byte 0x000153F8
_0803B330: .4byte 0x00012FEC
_0803B334: .4byte 0x040000D4
_0803B338: .4byte 0x06010000
_0803B33C:
	adds r5, r0, #4
	ldr r0, [sp]
	str r3, [sp, #0x14]
	bl sub_0803D8B4
	lsls r0, r0, #0x15
	lsrs r4, r0, #0x10
	mov r0, sl
	lsls r6, r0, #2
	movs r7, #0x80
	lsls r7, r7, #2
	ldr r1, _0803B3AC @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0803B3B0 @ =0x00012FEC
	adds r0, r0, r2
	ldrh r0, [r0]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	ldr r3, [sp, #0x14]
	cmp r0, #1
	bne _0803B36A
	lsls r7, r7, #1
_0803B36A:
	adds r3, #1
	str r3, [sp, #0xc]
	mov r3, r8
	adds r3, #0x14
	str r3, [sp, #0x10]
	cmp r6, #0
	bne _0803B37A
	b _0803B626
_0803B37A:
	ldr r3, _0803B3B4 @ =0x040000D4
	lsrs r2, r7, #1
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r2, r0
	adds r1, r6, #0
	movs r6, #0x80
	lsls r6, r6, #3
	mov r8, r6
_0803B38C:
	str r5, [r3]
	ldr r6, _0803B3B8 @ =0x06010000
	adds r0, r4, r6
	str r0, [r3, #4]
	str r2, [r3, #8]
	ldr r0, [r3, #8]
	adds r5, r5, r7
	mov r6, r8
	adds r0, r4, r6
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	subs r1, #1
	cmp r1, #0
	bne _0803B38C
	b _0803B626
	.align 2, 0
_0803B3AC: .4byte gEwramData
_0803B3B0: .4byte 0x00012FEC
_0803B3B4: .4byte 0x040000D4
_0803B3B8: .4byte 0x06010000
_0803B3BC:
	mov r1, r8
	ldr r0, [r1, #0x10]
	adds r0, #4
	str r0, [sp, #4]
	movs r6, #0
	adds r3, #1
	str r3, [sp, #0xc]
	adds r1, #0x14
	str r1, [sp, #0x10]
	mov r2, r8
	ldrb r2, [r2, #0xb]
	cmp r6, r2
	blt _0803B3D8
	b _0803B626
_0803B3D8:
	mov r0, r8
	adds r0, #0xc
	adds r0, r0, r6
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r3, [sp, #4]
	adds r0, r0, r3
	mov r1, sl
	muls r1, r6, r1
	ldr r0, [r0]
	ldr r5, [sp]
	adds r4, r5, r1
	ldrb r5, [r0]
	cmp r5, #0
	beq _0803B478
	adds r6, #1
	mov sb, r6
	cmp r5, #1
	bne _0803B4DE
	bl sub_0803B9B4
	ldr r6, _0803B464 @ =gEwramData
	ldr r0, [r6]
	ldr r1, _0803B468 @ =0x000153F8
	adds r6, r0, r1
	adds r0, r4, #0
	bl sub_0803D8B4
	lsls r0, r0, #0x15
	lsrs r4, r0, #0x10
	mov r2, sl
	lsls r1, r2, #2
	movs r7, #0x80
	lsls r7, r7, #2
	ldr r3, _0803B464 @ =gEwramData
	ldr r0, [r3]
	ldr r2, _0803B46C @ =0x00012FEC
	adds r0, r0, r2
	ldrh r0, [r0]
	lsrs r0, r0, #1
	ands r0, r5
	cmp r0, #1
	bne _0803B430
	lsls r7, r7, #1
_0803B430:
	cmp r1, #0
	beq _0803B4DE
	ldr r3, _0803B470 @ =0x040000D4
	lsrs r2, r7, #1
	movs r5, #0x80
	lsls r5, r5, #0x18
	orrs r2, r5
	movs r0, #0x80
	lsls r0, r0, #3
	mov ip, r0
_0803B444:
	str r6, [r3]
	ldr r5, _0803B474 @ =0x06010000
	adds r0, r4, r5
	str r0, [r3, #4]
	str r2, [r3, #8]
	ldr r0, [r3, #8]
	adds r6, r6, r7
	mov r5, ip
	adds r0, r4, r5
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	subs r1, #1
	cmp r1, #0
	bne _0803B444
	b _0803B4DE
	.align 2, 0
_0803B464: .4byte gEwramData
_0803B468: .4byte 0x000153F8
_0803B46C: .4byte 0x00012FEC
_0803B470: .4byte 0x040000D4
_0803B474: .4byte 0x06010000
_0803B478:
	adds r7, r0, #4
	adds r0, r4, #0
	bl sub_0803D8B4
	lsls r0, r0, #0x15
	lsrs r4, r0, #0x10
	mov r0, sl
	lsls r5, r0, #2
	movs r1, #0x80
	lsls r1, r1, #2
	mov ip, r1
	ldr r2, _0803B4EC @ =gEwramData
	ldr r0, [r2]
	ldr r3, _0803B4F0 @ =0x00012FEC
	adds r0, r0, r3
	ldrh r0, [r0]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	cmp r0, #1
	bne _0803B4A8
	mov r0, ip
	lsls r0, r0, #1
	mov ip, r0
_0803B4A8:
	adds r6, #1
	mov sb, r6
	cmp r5, #0
	beq _0803B4DE
	ldr r3, _0803B4F4 @ =0x040000D4
	mov r1, ip
	lsrs r2, r1, #1
	movs r6, #0x80
	lsls r6, r6, #0x18
	orrs r2, r6
	adds r1, r5, #0
	movs r0, #0x80
	lsls r0, r0, #3
	adds r5, r0, #0
_0803B4C4:
	str r7, [r3]
	ldr r6, _0803B4F8 @ =0x06010000
	adds r0, r4, r6
	str r0, [r3, #4]
	str r2, [r3, #8]
	ldr r0, [r3, #8]
	add r7, ip
	adds r0, r4, r5
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	subs r1, #1
	cmp r1, #0
	bne _0803B4C4
_0803B4DE:
	mov r6, sb
	mov r0, r8
	ldrb r0, [r0, #0xb]
	cmp r6, r0
	bge _0803B4EA
	b _0803B3D8
_0803B4EA:
	b _0803B626
	.align 2, 0
_0803B4EC: .4byte gEwramData
_0803B4F0: .4byte 0x00012FEC
_0803B4F4: .4byte 0x040000D4
_0803B4F8: .4byte 0x06010000
_0803B4FC:
	ldr r1, _0803B59C @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0803B5A0 @ =0x0002546C
	adds r2, r0, r2
	str r2, [sp, #8]
	movs r6, #0
	mov r3, r8
	ldrb r3, [r3, #0xb]
	cmp r6, r3
	blt _0803B512
	b _0803B626
_0803B512:
	mov r0, r8
	adds r0, #0xc
	adds r0, r0, r6
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r4, [sp, #8]
	adds r0, r0, r4
	mov r1, sl
	muls r1, r6, r1
	ldr r0, [r0]
	ldr r5, [sp]
	adds r4, r5, r1
	ldrb r5, [r0]
	cmp r5, #0
	beq _0803B5B4
	adds r6, #1
	mov sb, r6
	cmp r5, #1
	bne _0803B61A
	bl sub_0803B9B4
	ldr r6, _0803B59C @ =gEwramData
	ldr r0, [r6]
	ldr r1, _0803B5A4 @ =0x000153F8
	adds r6, r0, r1
	adds r0, r4, #0
	bl sub_0803D8B4
	lsls r0, r0, #0x15
	lsrs r4, r0, #0x10
	mov r2, sl
	lsls r1, r2, #2
	movs r7, #0x80
	lsls r7, r7, #2
	ldr r3, _0803B59C @ =gEwramData
	ldr r0, [r3]
	ldr r2, _0803B5A8 @ =0x00012FEC
	adds r0, r0, r2
	ldrh r0, [r0]
	lsrs r0, r0, #1
	ands r0, r5
	cmp r0, #1
	bne _0803B56A
	lsls r7, r7, #1
_0803B56A:
	cmp r1, #0
	beq _0803B61A
	ldr r3, _0803B5AC @ =0x040000D4
	lsrs r2, r7, #1
	movs r5, #0x80
	lsls r5, r5, #0x18
	orrs r2, r5
	movs r0, #0x80
	lsls r0, r0, #3
	mov ip, r0
_0803B57E:
	str r6, [r3]
	ldr r5, _0803B5B0 @ =0x06010000
	adds r0, r4, r5
	str r0, [r3, #4]
	str r2, [r3, #8]
	ldr r0, [r3, #8]
	adds r6, r6, r7
	mov r5, ip
	adds r0, r4, r5
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	subs r1, #1
	cmp r1, #0
	bne _0803B57E
	b _0803B61A
	.align 2, 0
_0803B59C: .4byte gEwramData
_0803B5A0: .4byte 0x0002546C
_0803B5A4: .4byte 0x000153F8
_0803B5A8: .4byte 0x00012FEC
_0803B5AC: .4byte 0x040000D4
_0803B5B0: .4byte 0x06010000
_0803B5B4:
	adds r7, r0, #4
	adds r0, r4, #0
	bl sub_0803D8B4
	lsls r0, r0, #0x15
	lsrs r4, r0, #0x10
	mov r0, sl
	lsls r5, r0, #2
	movs r1, #0x80
	lsls r1, r1, #2
	mov ip, r1
	ldr r2, _0803B644 @ =gEwramData
	ldr r0, [r2]
	ldr r3, _0803B648 @ =0x00012FEC
	adds r0, r0, r3
	ldrh r0, [r0]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	cmp r0, #1
	bne _0803B5E4
	mov r0, ip
	lsls r0, r0, #1
	mov ip, r0
_0803B5E4:
	adds r6, #1
	mov sb, r6
	cmp r5, #0
	beq _0803B61A
	ldr r3, _0803B64C @ =0x040000D4
	mov r1, ip
	lsrs r2, r1, #1
	movs r6, #0x80
	lsls r6, r6, #0x18
	orrs r2, r6
	adds r1, r5, #0
	movs r0, #0x80
	lsls r0, r0, #3
	adds r5, r0, #0
_0803B600:
	str r7, [r3]
	ldr r6, _0803B650 @ =0x06010000
	adds r0, r4, r6
	str r0, [r3, #4]
	str r2, [r3, #8]
	ldr r0, [r3, #8]
	add r7, ip
	adds r0, r4, r5
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	subs r1, #1
	cmp r1, #0
	bne _0803B600
_0803B61A:
	mov r6, sb
	mov r0, r8
	ldrb r0, [r0, #0xb]
	cmp r6, r0
	bge _0803B626
	b _0803B512
_0803B626:
	ldr r3, [sp, #0xc]
	ldr r1, [sp, #0x10]
	mov r8, r1
	cmp r3, #0xf
	bgt _0803B632
	b _0803B228
_0803B632:
	ldr r0, _0803B644 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0803B654 @ =0x00010004
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
	movs r0, #1
	b _0803B65A
	.align 2, 0
_0803B644: .4byte gEwramData
_0803B648: .4byte 0x00012FEC
_0803B64C: .4byte 0x040000D4
_0803B650: .4byte 0x06010000
_0803B654: .4byte 0x00010004
_0803B658:
	movs r0, #0
_0803B65A:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803B66C
sub_0803B66C: @ 0x0803B66C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp]
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r6, _0803B69C @ =gEwramData
	ldr r2, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0xd
	adds r0, r2, r0
	ldr r1, _0803B6A0 @ =0x00012FF1
	adds r0, r0, r1
	ldr r1, [sp, #0x34]
	adds r3, r3, r1
	ldrb r0, [r0]
	cmp r3, r0
	bls _0803B6A4
	movs r0, #0
	b _0803B7EC
	.align 2, 0
_0803B69C: .4byte gEwramData
_0803B6A0: .4byte 0x00012FF1
_0803B6A4:
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #8]
	ldr r1, _0803B6E0 @ =0x00012FEC
	adds r0, r2, r1
	ldrh r0, [r0]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	cmp r0, #1
	bne _0803B6C0
	ldr r0, [sp, #8]
	lsls r0, r0, #1
	str r0, [sp, #8]
_0803B6C0:
	ldr r1, [sp, #8]
	lsls r1, r1, #2
	str r1, [sp, #8]
	ldrb r0, [r4]
	cmp r0, #1
	bne _0803B6EC
	ldr r0, _0803B6E4 @ =0x000153F4
	adds r1, r2, r0
	ldr r0, [r4, #4]
	bl LZ77UnCompWram
	ldr r0, [r6]
	ldr r1, _0803B6E8 @ =0x000153F8
	adds r1, r0, r1
	str r1, [sp, #4]
	b _0803B6F0
	.align 2, 0
_0803B6E0: .4byte 0x00012FEC
_0803B6E4: .4byte 0x000153F4
_0803B6E8: .4byte 0x000153F8
_0803B6EC:
	adds r4, #4
	str r4, [sp, #4]
_0803B6F0:
	lsrs r0, r5, #1
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #0xc
	ands r5, r1
	lsls r1, r5, #8
	adds r0, r0, r1
	ldr r2, [sp, #4]
	adds r2, r2, r0
	str r2, [sp, #4]
	movs r5, #0
	ldr r0, [sp, #0x34]
	cmp r5, r0
	bhs _0803B7EA
	movs r1, #0x80
	lsls r1, r1, #1
	mov sb, r1
	ldr r2, _0803B758 @ =0x040000D4
	mov r8, r2
	movs r0, #0x80
	mov sl, r0
	mov r1, sl
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r1, r2
	mov sl, r1
_0803B724:
	ldr r0, [sp, #8]
	adds r1, r0, #0
	muls r1, r5, r1
	ldr r2, [sp]
	adds r0, r2, r5
	ldr r2, [sp, #4]
	adds r6, r2, r1
	bl sub_0803D8B4
	lsls r0, r0, #0x15
	lsrs r4, r0, #0x10
	adds r7, r4, #0
	adds r5, #1
	str r5, [sp, #0xc]
	movs r5, #4
_0803B742:
	ldr r0, [sp, #0x38]
	cmp r0, #0
	beq _0803B760
	ldr r1, _0803B75C @ =0x06010000
	adds r2, r4, r1
	mov r0, sb
	adds r1, r6, #0
	bl sub_080016D0
	b _0803B770
	.align 2, 0
_0803B758: .4byte 0x040000D4
_0803B75C: .4byte 0x06010000
_0803B760:
	mov r2, r8
	str r6, [r2]
	ldr r1, _0803B7B8 @ =0x06010000
	adds r0, r4, r1
	str r0, [r2, #4]
	mov r0, sl
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0803B770:
	movs r1, #0x80
	lsls r1, r1, #2
	adds r6, r6, r1
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r4, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	subs r5, #1
	cmp r5, #0
	bne _0803B742
	mov r1, sb
	adds r0, r7, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r2, #4
	cmp r2, #0
	beq _0803B7E2
	ldr r3, _0803B7BC @ =0x040000D4
	movs r7, #0x80
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r7, r0
	movs r5, #4
_0803B7A0:
	ldr r1, [sp, #0x38]
	cmp r1, #0
	beq _0803B7C0
	ldr r0, _0803B7B8 @ =0x06010000
	adds r2, r4, r0
	mov r0, sb
	adds r1, r6, #0
	str r3, [sp, #0x10]
	bl sub_080016D0
	ldr r3, [sp, #0x10]
	b _0803B7CC
	.align 2, 0
_0803B7B8: .4byte 0x06010000
_0803B7BC: .4byte 0x040000D4
_0803B7C0:
	str r6, [r3]
	ldr r1, _0803B7FC @ =0x06010000
	adds r0, r4, r1
	str r0, [r3, #4]
	str r7, [r3, #8]
	ldr r0, [r3, #8]
_0803B7CC:
	movs r2, #0x80
	lsls r2, r2, #2
	adds r6, r6, r2
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	subs r5, #1
	cmp r5, #0
	bne _0803B7A0
_0803B7E2:
	ldr r5, [sp, #0xc]
	ldr r2, [sp, #0x34]
	cmp r5, r2
	blo _0803B724
_0803B7EA:
	movs r0, #1
_0803B7EC:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803B7FC: .4byte 0x06010000

	thumb_func_start sub_0803B800
sub_0803B800: @ 0x0803B800
	push {lr}
	adds r3, r1, #0
	movs r2, #1
	rsbs r2, r2, #0
	ldrb r1, [r0]
	cmp r1, #2
	beq _0803B824
	cmp r1, #2
	ble _0803B818
	cmp r1, #3
	beq _0803B82E
	b _0803B838
_0803B818:
	cmp r1, #0
	blt _0803B838
	adds r1, r3, #0
	bl sub_08039E90
	b _0803B836
_0803B824:
	ldrb r1, [r0, #2]
	ldrb r2, [r0, #3]
	bl sub_0803A1E8
	b _0803B836
_0803B82E:
	ldrb r1, [r0, #2]
	ldrb r2, [r0, #3]
	bl sub_0803A544
_0803B836:
	adds r2, r0, #0
_0803B838:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803B840
sub_0803B840: @ 0x0803B840
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, _0803B8A4 @ =gEwramData
	ldr r2, [r1]
	ldr r3, _0803B8A8 @ =0x00011072
	adds r0, r2, r3
	movs r4, #0
	ldrsh r3, [r0, r4]
	movs r0, #1
	rsbs r0, r0, #0
	mov ip, r1
	cmp r3, r0
	beq _0803B880
	adds r1, r2, #0
	ldr r2, _0803B8AC @ =0x0000FEC8
	adds r4, r1, r2
	adds r6, r0, #0
_0803B864:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r2, r0, #2
	adds r0, r4, r2
	ldr r0, [r0]
	cmp r0, r5
	beq _0803B8B8
	adds r0, r1, r2
	ldr r3, _0803B8B0 @ =0x0000FEC6
	adds r0, r0, r3
	movs r2, #0
	ldrsh r3, [r0, r2]
	cmp r3, r6
	bne _0803B864
_0803B880:
	movs r2, #1
	rsbs r2, r2, #0
_0803B884:
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r3, _0803B8B4 @ =0x0000FEC4
	adds r0, r0, r3
	mov r4, ip
	ldr r1, [r4]
	adds r1, r1, r0
	ldrb r0, [r1, #8]
	cmp r0, #0
	beq _0803B8BC
	adds r0, r1, #0
	adds r0, #0xc
	adds r0, r0, r7
	ldrb r0, [r0]
	b _0803B8BE
	.align 2, 0
_0803B8A4: .4byte gEwramData
_0803B8A8: .4byte 0x00011072
_0803B8AC: .4byte 0x0000FEC8
_0803B8B0: .4byte 0x0000FEC6
_0803B8B4: .4byte 0x0000FEC4
_0803B8B8:
	adds r2, r3, #0
	b _0803B884
_0803B8BC:
	movs r0, #0
_0803B8BE:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0803B8C4
sub_0803B8C4: @ 0x0803B8C4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	adds r6, r2, #0
	ldr r0, _0803B8EC @ =gEwramData
	ldr r1, [r0]
	lsls r0, r3, #0x10
	asrs r0, r0, #0xd
	adds r1, r1, r0
	ldr r0, _0803B8F0 @ =0x00012FF1
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r1, r0, #0
	cmp r0, #2
	beq _0803B900
	cmp r0, #2
	bgt _0803B8F4
	cmp r0, #1
	beq _0803B908
	b _0803B916
	.align 2, 0
_0803B8EC: .4byte gEwramData
_0803B8F0: .4byte 0x00012FF1
_0803B8F4:
	cmp r1, #4
	bne _0803B916
	ldr r1, _0803B8FC @ =0x080E2990
	b _0803B90A
	.align 2, 0
_0803B8FC: .4byte 0x080E2990
_0803B900:
	ldr r1, _0803B904 @ =0x080E2980
	b _0803B90A
	.align 2, 0
_0803B904: .4byte 0x080E2980
_0803B908:
	ldr r1, _0803B920 @ =0x080E2970
_0803B90A:
	adds r0, r4, #0
	adds r2, r3, #0
	adds r3, r6, #0
	bl sub_0803B924
	adds r5, r0, #0
_0803B916:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803B920: .4byte 0x080E2970

	thumb_func_start sub_0803B924
sub_0803B924: @ 0x0803B924
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r3, #0
	adds r6, r5, #0
	adds r6, #0x64
	ldrb r0, [r6]
	cmp r0, #0xff
	bne _0803B944
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_08039614
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0803B948
_0803B944:
	movs r0, #0
	b _0803B97A
_0803B948:
	movs r3, #0
	strb r0, [r6]
	movs r0, #0xff
	ands r4, r0
	movs r0, #0x5a
	adds r0, r0, r5
	mov ip, r0
	movs r0, #0xf
	ands r4, r0
	lsls r2, r4, #3
	mov r0, ip
	ldrb r1, [r0]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	mov r1, ip
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x65
	strb r3, [r0]
	adds r0, r5, #0
	bl sub_08000FBC
	movs r0, #1
_0803B97A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0803B980
sub_0803B980: @ 0x0803B980
	push {r4, lr}
	adds r4, r0, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	bl sub_0803943C
	adds r0, r4, #0
	bl sub_0803D924
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0803B998
sub_0803B998: @ 0x0803B998
	ldr r1, _0803B9AC @ =gEwramData
	ldr r1, [r1]
	adds r0, #0x64
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r2, _0803B9B0 @ =0x00010178
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r0, [r1]
	bx lr
	.align 2, 0
_0803B9AC: .4byte gEwramData
_0803B9B0: .4byte 0x00010178

	thumb_func_start sub_0803B9B4
sub_0803B9B4: @ 0x0803B9B4
	push {lr}
	ldr r1, _0803B9C8 @ =gEwramData
	ldr r1, [r1]
	ldr r2, _0803B9CC @ =0x000153F4
	adds r1, r1, r2
	ldr r0, [r0, #4]
	bl LZ77UnCompWram
	pop {r0}
	bx r0
	.align 2, 0
_0803B9C8: .4byte gEwramData
_0803B9CC: .4byte 0x000153F4

	thumb_func_start sub_0803B9D0
sub_0803B9D0: @ 0x0803B9D0
	push {lr}
	bl sub_0803AC40
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803B9DC
sub_0803B9DC: @ 0x0803B9DC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0803BA10 @ =0x00000602
	adds r2, r4, r0
	ldrh r1, [r2]
	ldr r0, _0803BA14 @ =0x0000FFFF
	cmp r1, r0
	bne _0803BA24
	ldr r1, _0803BA18 @ =0x040000D4
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r4, r3
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _0803BA1C @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r1, #0
	movs r0, #0
	strh r0, [r2]
	ldr r2, _0803BA20 @ =0x00000605
	adds r0, r4, r2
	strb r1, [r0]
	movs r0, #1
	b _0803BA82
	.align 2, 0
_0803BA10: .4byte 0x00000602
_0803BA14: .4byte 0x0000FFFF
_0803BA18: .4byte 0x040000D4
_0803BA1C: .4byte 0x80000100
_0803BA20: .4byte 0x00000605
_0803BA24:
	cmp r1, #0
	beq _0803BA80
	ldrh r7, [r2]
	movs r6, #1
	ldr r3, _0803BA70 @ =0x040000D4
	ldr r0, _0803BA74 @ =0x80000010
	mov ip, r0
	adds r2, r4, #0
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r5, #0xf
_0803BA3C:
	adds r0, r7, #0
	ands r0, r6
	cmp r0, #0
	beq _0803BA4E
	str r1, [r3]
	str r2, [r3, #4]
	mov r0, ip
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_0803BA4E:
	lsls r6, r6, #1
	adds r2, #0x20
	adds r1, #0x20
	subs r5, #1
	cmp r5, #0
	bge _0803BA3C
	movs r1, #0
	ldr r2, _0803BA78 @ =0x00000602
	adds r0, r4, r2
	movs r2, #0
	strh r1, [r0]
	ldr r3, _0803BA7C @ =0x00000605
	adds r0, r4, r3
	strb r2, [r0]
	movs r0, #1
	b _0803BA82
	.align 2, 0
_0803BA70: .4byte 0x040000D4
_0803BA74: .4byte 0x80000010
_0803BA78: .4byte 0x00000602
_0803BA7C: .4byte 0x00000605
_0803BA80:
	movs r0, #0
_0803BA82:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0803BA88
sub_0803BA88: @ 0x0803BA88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp]
	movs r1, #0xc1
	lsls r1, r1, #3
	adds r1, r0, r1
	str r1, [sp, #8]
	ldr r2, [r1, #0x44]
	str r2, [sp, #0xc]
	movs r3, #0
	ldr r1, _0803BB70 @ =0x00000605
	adds r1, r0, r1
	str r1, [sp, #0x10]
_0803BAAA:
	lsls r0, r3, #5
	ldr r2, [sp]
	adds r5, r2, r0
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r4, r2, r0
	ldr r0, [sp, #0xc]
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0803BB74
	lsls r1, r3, #2
	ldr r2, [sp, #8]
	adds r0, r2, r1
	ldr r2, [r0]
	ldr r0, [sp, #8]
	adds r0, #0x50
	adds r0, r0, r1
	ldr r0, [r0]
	mov sb, r0
	movs r0, #0x80
	lsls r0, r0, #9
	mov r1, sb
	subs r1, r0, r1
	mov sl, r1
	movs r0, #0
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	adds r3, #1
	str r3, [sp, #0x14]
	mov r8, r4
	mov ip, r2
	adds r7, r5, #0
	movs r2, #0xf
	str r2, [sp, #4]
_0803BAF4:
	ldrh r0, [r7]
	movs r2, #0x1f
	ands r2, r0
	movs r3, #0xf8
	lsls r3, r3, #2
	ands r3, r0
	movs r6, #0xf8
	lsls r6, r6, #7
	ands r6, r0
	mov r1, ip
	ldrh r0, [r1]
	movs r1, #0x1f
	ands r1, r0
	movs r4, #0xf8
	lsls r4, r4, #2
	ands r4, r0
	movs r5, #0xf8
	lsls r5, r5, #7
	ands r5, r0
	mov r0, sb
	muls r0, r2, r0
	adds r2, r0, #0
	mov r0, sl
	muls r0, r1, r0
	adds r2, r2, r0
	lsrs r2, r2, #0x10
	mov r1, sb
	muls r1, r3, r1
	adds r3, r1, #0
	mov r0, sl
	muls r0, r4, r0
	adds r3, r3, r0
	lsrs r3, r3, #0x10
	mov r0, sb
	muls r0, r6, r0
	mov r1, sl
	muls r1, r5, r1
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r2, r1
	movs r1, #0xf8
	lsls r1, r1, #2
	ands r3, r1
	orrs r2, r3
	movs r1, #0xf8
	lsls r1, r1, #7
	ands r0, r1
	orrs r2, r0
	mov r0, r8
	strh r2, [r0]
	movs r1, #2
	add r8, r1
	add ip, r1
	adds r7, #2
	ldr r2, [sp, #4]
	subs r2, #1
	str r2, [sp, #4]
	cmp r2, #0
	bge _0803BAF4
	b _0803BB86
	.align 2, 0
_0803BB70: .4byte 0x00000605
_0803BB74:
	ldr r0, _0803BB9C @ =0x040000D4
	str r5, [r0]
	str r4, [r0, #4]
	ldr r0, _0803BBA0 @ =0x80000010
	ldr r1, _0803BB9C @ =0x040000D4
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r3, #1
	str r3, [sp, #0x14]
_0803BB86:
	ldr r3, [sp, #0x14]
	cmp r3, #0xf
	ble _0803BAAA
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803BB9C: .4byte 0x040000D4
_0803BBA0: .4byte 0x80000010

	thumb_func_start sub_0803BBA4
sub_0803BBA4: @ 0x0803BBA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	str r0, [sp]
	movs r1, #0xc1
	lsls r1, r1, #3
	adds r1, r0, r1
	str r1, [sp, #4]
	movs r2, #0xd3
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r0, [r0]
	mov sl, r0
	movs r1, #0x80
	lsls r1, r1, #9
	subs r1, r1, r0
	ldr r3, [sp]
	movs r5, #0xc9
	lsls r5, r5, #3
	adds r0, r3, r5
	ldrb r0, [r0]
	adds r2, r0, #0
	muls r2, r1, r2
	str r2, [sp, #8]
	adds r5, #1
	adds r0, r3, r5
	ldrb r0, [r0]
	muls r0, r1, r0
	lsls r0, r0, #5
	str r0, [sp, #0xc]
	ldr r2, _0803BCD8 @ =0x0000064A
	adds r0, r3, r2
	ldrb r0, [r0]
	muls r0, r1, r0
	lsls r0, r0, #0xa
	str r0, [sp, #0x10]
	subs r5, #0x44
	adds r1, r3, r5
	movs r0, #0
	strb r0, [r1]
	movs r3, #0
_0803BBFC:
	lsls r0, r3, #5
	ldr r1, [sp]
	adds r6, r1, r0
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	adds r4, r1, r0
	movs r1, #1
	lsls r1, r3
	ldr r5, [sp, #4]
	ldr r0, [r5, #0x44]
	ands r0, r1
	cmp r0, #0
	beq _0803BCDC
	lsls r1, r3, #2
	adds r2, r5, r1
	adds r0, r5, #0
	adds r0, #0x50
	adds r0, r0, r1
	ldr r7, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	subs r0, r0, r7
	str r0, [sp, #0x18]
	adds r3, #1
	str r3, [sp, #0x1c]
	mov sb, r4
	ldr r2, [r2]
	mov r8, r2
	mov ip, r6
	movs r0, #0xf
	str r0, [sp, #0x14]
_0803BC3C:
	mov r1, ip
	ldrh r0, [r1]
	movs r3, #0x1f
	ands r3, r0
	movs r5, #0xf8
	lsls r5, r5, #2
	ands r5, r0
	movs r6, #0xf8
	lsls r6, r6, #7
	ands r6, r0
	mov r2, r8
	ldrh r0, [r2]
	movs r1, #0x1f
	ands r1, r0
	movs r2, #0xf8
	lsls r2, r2, #2
	ands r2, r0
	movs r4, #0xf8
	lsls r4, r4, #7
	ands r4, r0
	adds r0, r3, #0
	muls r0, r7, r0
	ldr r3, [sp, #0x18]
	muls r1, r3, r1
	adds r0, r0, r1
	lsrs r3, r0, #0x10
	mov r0, sl
	muls r0, r3, r0
	ldr r1, [sp, #8]
	adds r0, r0, r1
	lsrs r3, r0, #0x10
	adds r0, r5, #0
	muls r0, r7, r0
	ldr r5, [sp, #0x18]
	adds r1, r2, #0
	muls r1, r5, r1
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	mov r0, sl
	muls r0, r2, r0
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	adds r0, r6, #0
	muls r0, r7, r0
	adds r1, r4, #0
	muls r1, r5, r1
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	mov r5, sl
	muls r5, r0, r5
	adds r0, r5, #0
	ldr r1, [sp, #0x10]
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	movs r5, #0x1f
	ands r3, r5
	movs r1, #0xf8
	lsls r1, r1, #2
	ands r2, r1
	orrs r3, r2
	movs r2, #0xf8
	lsls r2, r2, #7
	ands r0, r2
	orrs r3, r0
	mov r5, sb
	strh r3, [r5]
	movs r0, #2
	add sb, r0
	add r8, r0
	add ip, r0
	ldr r1, [sp, #0x14]
	subs r1, #1
	str r1, [sp, #0x14]
	cmp r1, #0
	bge _0803BC3C
	b _0803BD44
	.align 2, 0
_0803BCD8: .4byte 0x0000064A
_0803BCDC:
	adds r3, #1
	str r3, [sp, #0x1c]
	movs r2, #0x1f
	mov sb, r2
	movs r3, #0xf8
	lsls r3, r3, #2
	mov r8, r3
	movs r7, #0xf8
	lsls r7, r7, #7
	adds r5, r4, #0
	adds r4, r6, #0
	movs r0, #0xf
	str r0, [sp, #0x14]
_0803BCF6:
	ldrh r0, [r4]
	movs r1, #0x1f
	ands r1, r0
	mov r2, r8
	ands r2, r0
	adds r3, r7, #0
	ands r3, r0
	mov r0, sl
	muls r0, r1, r0
	adds r1, r0, #0
	ldr r0, [sp, #8]
	adds r1, r1, r0
	lsrs r1, r1, #0x10
	mov r0, sl
	muls r0, r2, r0
	adds r2, r0, #0
	ldr r0, [sp, #0xc]
	adds r2, r2, r0
	lsrs r2, r2, #0x10
	mov r0, sl
	muls r0, r3, r0
	ldr r3, [sp, #0x10]
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	mov r3, sb
	ands r1, r3
	mov r3, r8
	ands r2, r3
	orrs r1, r2
	ands r0, r7
	orrs r1, r0
	strh r1, [r5]
	adds r5, #2
	adds r4, #2
	ldr r0, [sp, #0x14]
	subs r0, #1
	str r0, [sp, #0x14]
	cmp r0, #0
	bge _0803BCF6
_0803BD44:
	ldr r3, [sp, #0x1c]
	cmp r3, #0xf
	bgt _0803BD4C
	b _0803BBFC
_0803BD4C:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0803BD5C
sub_0803BD5C: @ 0x0803BD5C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r2, r0, #0
	ldr r0, _0803BDD0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803BDD4 @ =0x0000A074
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0803BDF8
	movs r0, #0xc1
	lsls r0, r0, #3
	adds r0, r0, r2
	mov ip, r0
	ldr r1, [r0, #0x44]
	mov r8, r1
	ldr r0, [r0, #0x48]
	ands r1, r0
	mov r8, r1
	mov r1, ip
	ldr r0, [r1, #0x4c]
	mov r1, r8
	ands r1, r0
	mov r8, r1
	movs r6, #0
	ldr r0, _0803BDD8 @ =0x0000069C
	adds r0, r0, r2
	mov sb, r0
	ldr r1, _0803BDD8 @ =0x0000069C
	adds r7, r2, r1
_0803BDA0:
	movs r5, #1
	lsls r5, r6
	mov r0, r8
	ands r0, r5
	cmp r0, #0
	beq _0803BDF0
	lsls r3, r6, #2
	mov r0, ip
	adds r0, #0x50
	adds r4, r0, r3
	mov r1, ip
	adds r1, #0xd8
	adds r1, r1, r3
	ldr r2, [r4]
	ldr r0, [r1]
	adds r2, r2, r0
	str r2, [r4]
	ldr r0, [r1]
	cmp r0, #0
	ble _0803BDDC
	ldr r0, [r7]
	cmp r2, r0
	ble _0803BDF0
	b _0803BDE6
	.align 2, 0
_0803BDD0: .4byte gEwramData
_0803BDD4: .4byte 0x0000A074
_0803BDD8: .4byte 0x0000069C
_0803BDDC:
	mov r1, sb
	adds r0, r1, r3
	ldr r0, [r0]
	cmp r2, r0
	bge _0803BDF0
_0803BDE6:
	str r0, [r4]
	mov r1, ip
	ldr r0, [r1, #0x4c]
	bics r0, r5
	str r0, [r1, #0x4c]
_0803BDF0:
	adds r7, #4
	adds r6, #1
	cmp r6, #0x10
	ble _0803BDA0
_0803BDF8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0803BE04
sub_0803BE04: @ 0x0803BE04
	push {r4, r5, lr}
	ldr r5, _0803BE2C @ =gEwramData
	ldr r2, [r5]
	ldr r1, _0803BE30 @ =0x00012428
	adds r0, r2, r1
	ldr r4, [r0]
	cmp r4, #0
	bne _0803BE44
	ldr r1, _0803BE34 @ =0x040000D4
	ldr r3, _0803BE38 @ =0x00011DDC
	adds r0, r2, r3
	str r0, [r1]
	ldr r3, _0803BE3C @ =0x000121DC
	adds r0, r2, r3
	str r0, [r1, #4]
	ldr r0, _0803BE40 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	b _0803BE72
	.align 2, 0
_0803BE2C: .4byte gEwramData
_0803BE30: .4byte 0x00012428
_0803BE34: .4byte 0x040000D4
_0803BE38: .4byte 0x00011DDC
_0803BE3C: .4byte 0x000121DC
_0803BE40: .4byte 0x80000100
_0803BE44:
	ldr r1, _0803BE64 @ =0x00011DDC
	adds r0, r2, r1
	bl sub_0803BD5C
	movs r0, #0x80
	lsls r0, r0, #9
	ands r4, r0
	cmp r4, #0
	beq _0803BE68
	ldr r0, [r5]
	ldr r3, _0803BE64 @ =0x00011DDC
	adds r0, r0, r3
	bl sub_0803BBA4
	b _0803BE72
	.align 2, 0
_0803BE64: .4byte 0x00011DDC
_0803BE68:
	ldr r0, [r5]
	ldr r1, _0803BE98 @ =0x00011DDC
	adds r0, r0, r1
	bl sub_0803BA88
_0803BE72:
	ldr r5, _0803BE9C @ =gEwramData
	ldr r2, [r5]
	ldr r3, _0803BEA0 @ =0x00012C68
	adds r0, r2, r3
	ldr r4, [r0]
	cmp r4, #0
	bne _0803BEB4
	ldr r1, _0803BEA4 @ =0x040000D4
	ldr r3, _0803BEA8 @ =0x0001261C
	adds r0, r2, r3
	str r0, [r1]
	ldr r3, _0803BEAC @ =0x00012A1C
	adds r0, r2, r3
	str r0, [r1, #4]
	ldr r0, _0803BEB0 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	b _0803BEE2
	.align 2, 0
_0803BE98: .4byte 0x00011DDC
_0803BE9C: .4byte gEwramData
_0803BEA0: .4byte 0x00012C68
_0803BEA4: .4byte 0x040000D4
_0803BEA8: .4byte 0x0001261C
_0803BEAC: .4byte 0x00012A1C
_0803BEB0: .4byte 0x80000100
_0803BEB4:
	ldr r1, _0803BED4 @ =0x0001261C
	adds r0, r2, r1
	bl sub_0803BD5C
	movs r0, #0x80
	lsls r0, r0, #9
	ands r4, r0
	cmp r4, #0
	beq _0803BED8
	ldr r0, [r5]
	ldr r3, _0803BED4 @ =0x0001261C
	adds r0, r0, r3
	bl sub_0803BBA4
	b _0803BEE2
	.align 2, 0
_0803BED4: .4byte 0x0001261C
_0803BED8:
	ldr r0, [r5]
	ldr r1, _0803BEE8 @ =0x0001261C
	adds r0, r0, r1
	bl sub_0803BA88
_0803BEE2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803BEE8: .4byte 0x0001261C

	thumb_func_start sub_0803BEEC
sub_0803BEEC: @ 0x0803BEEC
	push {r4, r5, lr}
	sub sp, #4
	mov r0, sp
	movs r5, #0
	strh r5, [r0]
	ldr r1, _0803BF40 @ =0x040000D4
	str r0, [r1]
	ldr r4, _0803BF44 @ =gEwramData
	ldr r2, [r4]
	ldr r3, _0803BF48 @ =0x00011DDC
	adds r0, r2, r3
	str r0, [r1, #4]
	ldr r3, _0803BF4C @ =0x81000420
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	mov r0, sp
	strh r5, [r0]
	str r0, [r1]
	ldr r5, _0803BF50 @ =0x0001261C
	adds r0, r2, r5
	str r0, [r1, #4]
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0803BF54 @ =0x000123E1
	adds r2, r2, r0
	movs r5, #0
	movs r1, #1
	strb r1, [r2]
	ldr r0, [r4]
	ldr r2, _0803BF58 @ =0x00012C21
	adds r0, r0, r2
	strb r1, [r0]
	bl sub_0803CC3C
	ldr r0, [r4]
	ldr r3, _0803BF5C @ =0x00012FE4
	adds r0, r0, r3
	str r5, [r0]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803BF40: .4byte 0x040000D4
_0803BF44: .4byte gEwramData
_0803BF48: .4byte 0x00011DDC
_0803BF4C: .4byte 0x81000420
_0803BF50: .4byte 0x0001261C
_0803BF54: .4byte 0x000123E1
_0803BF58: .4byte 0x00012C21
_0803BF5C: .4byte 0x00012FE4

	thumb_func_start sub_0803BF60
sub_0803BF60: @ 0x0803BF60
	push {r4, r5, lr}
	ldr r3, _0803BFC8 @ =gEwramData
	ldr r2, [r3]
	ldr r1, _0803BFCC @ =0x000123E1
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803BF8A
	ldr r1, _0803BFD0 @ =0x040000D4
	ldr r4, _0803BFD4 @ =0x000121DC
	adds r0, r2, r4
	str r0, [r1]
	ldr r0, _0803BFD8 @ =0x05000200
	str r0, [r1, #4]
	ldr r0, _0803BFDC @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r5, _0803BFCC @ =0x000123E1
	adds r1, r2, r5
	movs r0, #1
	strb r0, [r1]
_0803BF8A:
	ldr r2, [r3]
	ldr r1, _0803BFE0 @ =0x000123DC
	adds r0, r2, r1
	movs r4, #0
	strh r4, [r0]
	ldr r5, _0803BFE4 @ =0x00012C21
	adds r0, r2, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803BFBA
	ldr r1, _0803BFD0 @ =0x040000D4
	ldr r5, _0803BFE8 @ =0x00012A1C
	adds r0, r2, r5
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _0803BFDC @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0803BFE4 @ =0x00012C21
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
_0803BFBA:
	ldr r0, [r3]
	ldr r1, _0803BFEC @ =0x00012C1C
	adds r0, r0, r1
	strh r4, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803BFC8: .4byte gEwramData
_0803BFCC: .4byte 0x000123E1
_0803BFD0: .4byte 0x040000D4
_0803BFD4: .4byte 0x000121DC
_0803BFD8: .4byte 0x05000200
_0803BFDC: .4byte 0x80000100
_0803BFE0: .4byte 0x000123DC
_0803BFE4: .4byte 0x00012C21
_0803BFE8: .4byte 0x00012A1C
_0803BFEC: .4byte 0x00012C1C

	thumb_func_start sub_0803BFF0
sub_0803BFF0: @ 0x0803BFF0
	push {r4, r5, r6, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _0803C048 @ =gEwramData
	ldr r5, [r0]
	ldr r1, _0803C04C @ =0x00012E5C
	adds r0, r5, r1
	movs r6, #1
	lsls r6, r3
	ldr r4, [r0]
	ands r4, r6
	cmp r4, #0
	bne _0803C060
	ldr r1, _0803C050 @ =0x040000D4
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r3, _0803C054 @ =0x00012E60
	adds r2, r0, r3
	adds r2, r5, r2
	str r2, [r1]
	adds r3, #0xc0
	adds r0, r0, r3
	adds r0, r5, r0
	str r0, [r1, #4]
	ldr r0, _0803C058 @ =0x80000006
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r0, sp
	strh r4, [r0]
	str r0, [r1]
	str r2, [r1, #4]
	ldr r0, _0803C05C @ =0x81000006
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0803C04C @ =0x00012E5C
	adds r1, r5, r0
	ldr r0, [r1]
	orrs r0, r6
	str r0, [r1]
	movs r0, #1
	b _0803C062
	.align 2, 0
_0803C048: .4byte gEwramData
_0803C04C: .4byte 0x00012E5C
_0803C050: .4byte 0x040000D4
_0803C054: .4byte 0x00012E60
_0803C058: .4byte 0x80000006
_0803C05C: .4byte 0x81000006
_0803C060:
	movs r0, #0
_0803C062:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803C06C
sub_0803C06C: @ 0x0803C06C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0803C0B0 @ =gEwramData
	ldr r2, [r0]
	ldr r3, _0803C0B4 @ =0x00012E5C
	adds r1, r2, r3
	ldr r4, [r1]
	ldr r1, _0803C0B8 @ =0x0000FFFF
	adds r3, r4, #0
	ands r3, r1
	mov sb, r0
	cmp r3, r1
	bne _0803C0D0
	ldr r1, _0803C0BC @ =0x040000D4
	ldr r7, _0803C0C0 @ =0x00012F20
	adds r0, r2, r7
	str r0, [r1]
	ldr r3, _0803C0C4 @ =0x00012E60
	adds r0, r2, r3
	str r0, [r1, #4]
	ldr r0, _0803C0C8 @ =0x80000060
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	subs r7, #0xc4
	adds r2, r2, r7
	ldr r0, [r2]
	ldr r1, _0803C0CC @ =0xFFFF0000
	ands r0, r1
	str r0, [r2]
	movs r0, #1
	b _0803C142
	.align 2, 0
_0803C0B0: .4byte gEwramData
_0803C0B4: .4byte 0x00012E5C
_0803C0B8: .4byte 0x0000FFFF
_0803C0BC: .4byte 0x040000D4
_0803C0C0: .4byte 0x00012F20
_0803C0C4: .4byte 0x00012E60
_0803C0C8: .4byte 0x80000060
_0803C0CC: .4byte 0xFFFF0000
_0803C0D0:
	cmp r3, #0
	beq _0803C140
	adds r6, r4, #0
	movs r5, #1
	ldr r3, _0803C128 @ =0x040000D4
	mov r8, sb
	movs r2, #0
	ldr r0, _0803C12C @ =0x00012F20
	mov ip, r0
	ldr r1, _0803C130 @ =0x00012E60
	mov sl, r1
	movs r4, #0xf
_0803C0E8:
	adds r0, r6, #0
	ands r0, r5
	cmp r0, #0
	beq _0803C10A
	mov r7, ip
	adds r0, r2, r7
	mov r7, r8
	ldr r1, [r7]
	adds r0, r1, r0
	str r0, [r3]
	mov r7, sl
	adds r0, r2, r7
	adds r1, r1, r0
	str r1, [r3, #4]
	ldr r0, _0803C134 @ =0x80000006
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_0803C10A:
	lsls r5, r5, #1
	adds r2, #0xc
	subs r4, #1
	cmp r4, #0
	bge _0803C0E8
	mov r1, sb
	ldr r0, [r1]
	ldr r3, _0803C138 @ =0x00012E5C
	adds r0, r0, r3
	ldr r1, [r0]
	ldr r2, _0803C13C @ =0xFFFF0000
	ands r1, r2
	str r1, [r0]
	movs r0, #1
	b _0803C142
	.align 2, 0
_0803C128: .4byte 0x040000D4
_0803C12C: .4byte 0x00012F20
_0803C130: .4byte 0x00012E60
_0803C134: .4byte 0x80000006
_0803C138: .4byte 0x00012E5C
_0803C13C: .4byte 0xFFFF0000
_0803C140:
	movs r0, #0
_0803C142:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0803C150
sub_0803C150: @ 0x0803C150
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r3, _0803C178 @ =gEwramData
	ldr r0, [r3]
	ldr r1, _0803C17C @ =0x00012FE0
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803C180
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _0803C26C
	.align 2, 0
_0803C178: .4byte gEwramData
_0803C17C: .4byte 0x00012FE0
_0803C180:
	movs r7, #0
_0803C182:
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #2
	ldr r2, _0803C27C @ =0x00012E60
	adds r0, r0, r2
	ldr r3, _0803C280 @ =gEwramData
	ldr r3, [r3]
	mov ip, r3
	adds r4, r3, r0
	ldr r6, [r4]
	adds r5, r7, #1
	mov r8, r5
	cmp r6, #0
	beq _0803C266
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _0803C266
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, #4
	adds r1, r1, r0
	str r1, [sp]
	movs r1, #8
	ldrsh r0, [r4, r1]
	mov sl, r0
	cmp r0, #0
	bne _0803C23C
	ldr r2, [sp]
	ldrb r3, [r2]
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r5, sb
	movs r2, #1
	adds r0, r5, #1
	cmp r0, #0x10
	ble _0803C1D4
	movs r0, #0x10
	subs r2, r0, r5
	cmp r2, #0
	beq _0803C23C
_0803C1D4:
	adds r0, r3, r2
	ldrb r1, [r6, #2]
	cmp r0, r1
	ble _0803C1E6
	subs r2, r1, r3
	adds r0, r7, #1
	mov r8, r0
	cmp r2, #0
	beq _0803C23C
_0803C1E6:
	cmp r2, #0
	beq _0803C214
	lsls r0, r3, #5
	adds r0, #4
	adds r0, r6, r0
	ldr r1, _0803C284 @ =0x040000D4
	str r0, [r1]
	lsls r0, r5, #5
	ldr r3, _0803C288 @ =0x00011DDC
	adds r0, r0, r3
	add r0, ip
	str r0, [r1, #4]
	lsls r0, r2, #4
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	ldr r5, _0803C284 @ =0x040000D4
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _0803C28C @ =0x000123E1
	add r0, ip
	mov r1, sl
	strb r1, [r0]
_0803C214:
	mov r3, sb
	adds r0, r3, r2
	adds r7, #1
	mov r8, r7
	cmp r3, r0
	bge _0803C23C
	ldr r6, _0803C280 @ =gEwramData
	movs r7, #1
	adds r5, r0, #0
_0803C226:
	ldr r0, [r6]
	ldr r2, _0803C290 @ =0x000123DC
	adds r0, r0, r2
	adds r1, r7, #0
	lsls r1, r3
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
	adds r3, #1
	cmp r3, r5
	blt _0803C226
_0803C23C:
	ldrh r0, [r4, #8]
	adds r0, #1
	movs r2, #0
	movs r1, #0
	strh r0, [r4, #8]
	movs r3, #8
	ldrsh r0, [r4, r3]
	ldr r5, [sp]
	ldrb r5, [r5, #1]
	cmp r0, r5
	blt _0803C266
	strh r1, [r4, #8]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	ldr r1, [r4, #4]
	ldrb r0, [r4, #0xa]
	ldrh r1, [r1]
	cmp r0, r1
	blo _0803C266
	strb r2, [r4, #0xa]
_0803C266:
	mov r7, r8
	cmp r7, #0xf
	ble _0803C182
_0803C26C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C27C: .4byte 0x00012E60
_0803C280: .4byte gEwramData
_0803C284: .4byte 0x040000D4
_0803C288: .4byte 0x00011DDC
_0803C28C: .4byte 0x000123E1
_0803C290: .4byte 0x000123DC

	thumb_func_start sub_0803C294
sub_0803C294: @ 0x0803C294
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r1, _0803C38C @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0803C390 @ =0x000123E4
	adds r5, r0, r2
	ldr r3, _0803C394 @ =0x00012500
	adds r2, r0, r3
	ldr r4, _0803C398 @ =0x000123E0
	adds r3, r0, r4
	ldrb r4, [r3]
	adds r6, r1, #0
	cmp r4, #0
	bne _0803C2CE
	movs r0, #1
	strb r0, [r3]
	ldr r0, _0803C39C @ =0x040000D4
	str r5, [r0]
	str r2, [r0, #4]
	ldr r1, _0803C3A0 @ =0x8000008E
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r4, [r1]
	str r1, [r0]
	str r5, [r0, #4]
	ldr r1, _0803C3A4 @ =0x8100008E
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_0803C2CE:
	ldr r0, [r6]
	ldr r1, _0803C3A8 @ =0x00012C24
	adds r2, r0, r1
	ldr r3, _0803C3AC @ =0x00012D40
	adds r4, r0, r3
	ldr r3, _0803C3B0 @ =0x00012C20
	adds r1, r0, r3
	ldrb r3, [r1]
	cmp r3, #0
	bne _0803C300
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0803C39C @ =0x040000D4
	str r2, [r0]
	str r4, [r0, #4]
	ldr r1, _0803C3A0 @ =0x8000008E
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r3, [r1]
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _0803C3A4 @ =0x8100008E
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_0803C300:
	ldr r3, [r6]
	ldr r0, _0803C3B4 @ =0x00011DDC
	adds r4, r3, r0
	ldr r1, _0803C3B8 @ =0x000123DE
	adds r2, r3, r1
	ldrh r0, [r2]
	cmp r0, #0
	bne _0803C324
	ldr r1, _0803C39C @ =0x040000D4
	str r4, [r1]
	ldr r4, _0803C3BC @ =0x00011FDC
	adds r0, r3, r4
	str r0, [r1, #4]
	ldr r0, _0803C3C0 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0803C3C4 @ =0x0000FFFF
	strh r0, [r2]
_0803C324:
	ldr r3, [r6]
	ldr r0, _0803C3C8 @ =0x0001261C
	adds r4, r3, r0
	ldr r1, _0803C3CC @ =0x00012C1E
	adds r2, r3, r1
	ldrh r0, [r2]
	cmp r0, #0
	bne _0803C348
	ldr r1, _0803C39C @ =0x040000D4
	str r4, [r1]
	ldr r4, _0803C3D0 @ =0x0001281C
	adds r0, r3, r4
	str r0, [r1, #4]
	ldr r0, _0803C3C0 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0803C3C4 @ =0x0000FFFF
	strh r0, [r2]
_0803C348:
	ldr r0, [r6]
	ldr r6, _0803C3D4 @ =0x00012E5C
	adds r3, r0, r6
	ldr r5, _0803C3C4 @ =0x0000FFFF
	ldrh r4, [r3]
	cmp r4, #0
	bne _0803C37E
	ldr r1, _0803C39C @ =0x040000D4
	adds r6, #4
	adds r2, r0, r6
	str r2, [r1]
	adds r6, #0xc0
	adds r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _0803C3D8 @ =0x80000060
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r0, sp
	strh r4, [r0]
	str r0, [r1]
	str r2, [r1, #4]
	ldr r0, _0803C3DC @ =0x81000060
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r3]
	orrs r0, r5
	str r0, [r3]
_0803C37E:
	bl sub_0803D544
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803C38C: .4byte gEwramData
_0803C390: .4byte 0x000123E4
_0803C394: .4byte 0x00012500
_0803C398: .4byte 0x000123E0
_0803C39C: .4byte 0x040000D4
_0803C3A0: .4byte 0x8000008E
_0803C3A4: .4byte 0x8100008E
_0803C3A8: .4byte 0x00012C24
_0803C3AC: .4byte 0x00012D40
_0803C3B0: .4byte 0x00012C20
_0803C3B4: .4byte 0x00011DDC
_0803C3B8: .4byte 0x000123DE
_0803C3BC: .4byte 0x00011FDC
_0803C3C0: .4byte 0x80000100
_0803C3C4: .4byte 0x0000FFFF
_0803C3C8: .4byte 0x0001261C
_0803C3CC: .4byte 0x00012C1E
_0803C3D0: .4byte 0x0001281C
_0803C3D4: .4byte 0x00012E5C
_0803C3D8: .4byte 0x80000060
_0803C3DC: .4byte 0x81000060

	thumb_func_start sub_0803C3E0
sub_0803C3E0: @ 0x0803C3E0
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _0803C470 @ =gEwramData
	ldr r1, [r0]
	ldr r3, _0803C474 @ =0x000123E4
	adds r2, r1, r3
	ldr r4, _0803C478 @ =0x00012500
	adds r3, r1, r4
	ldr r5, _0803C47C @ =0x000123E0
	adds r4, r1, r5
	ldrb r1, [r4]
	adds r5, r0, #0
	cmp r1, #0
	beq _0803C41A
	ldr r0, _0803C480 @ =0x040000D4
	str r3, [r0]
	str r2, [r0, #4]
	ldr r1, _0803C484 @ =0x8000008E
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	movs r2, #0
	strh r2, [r1]
	str r1, [r0]
	str r3, [r0, #4]
	ldr r1, _0803C488 @ =0x8100008E
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	strb r2, [r4]
_0803C41A:
	ldr r0, [r5]
	ldr r2, _0803C48C @ =0x00012C24
	adds r1, r0, r2
	ldr r4, _0803C490 @ =0x00012D40
	adds r3, r0, r4
	subs r2, #4
	adds r4, r0, r2
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803C44C
	ldr r0, _0803C480 @ =0x040000D4
	str r3, [r0]
	str r1, [r0, #4]
	ldr r1, _0803C484 @ =0x8000008E
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	movs r2, #0
	strh r2, [r1]
	str r1, [r0]
	str r3, [r0, #4]
	ldr r1, _0803C488 @ =0x8100008E
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	strb r2, [r4]
_0803C44C:
	ldr r0, [r5]
	ldr r3, _0803C494 @ =0x00011DDC
	adds r0, r0, r3
	bl sub_0803B9DC
	ldr r0, [r5]
	ldr r4, _0803C498 @ =0x0001261C
	adds r0, r0, r4
	bl sub_0803B9DC
	bl sub_0803C06C
	bl sub_0803D564
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803C470: .4byte gEwramData
_0803C474: .4byte 0x000123E4
_0803C478: .4byte 0x00012500
_0803C47C: .4byte 0x000123E0
_0803C480: .4byte 0x040000D4
_0803C484: .4byte 0x8000008E
_0803C488: .4byte 0x8100008E
_0803C48C: .4byte 0x00012C24
_0803C490: .4byte 0x00012D40
_0803C494: .4byte 0x00011DDC
_0803C498: .4byte 0x0001261C

	thumb_func_start sub_0803C49C
sub_0803C49C: @ 0x0803C49C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0803C4D0 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0803C4D4 @ =0x0001261C
	adds r1, r2, r1
	str r1, [sp]
	ldr r1, _0803C4D8 @ =0x00012FE4
	adds r3, r2, r1
	ldr r1, [r3]
	cmp r1, #0
	bne _0803C4BE
	b _0803C648
_0803C4BE:
	cmp r1, #1
	bne _0803C4E0
	movs r1, #0
	str r1, [r3]
	ldr r3, _0803C4DC @ =0x00012C21
	adds r0, r2, r3
	strb r1, [r0]
	b _0803C648
	.align 2, 0
_0803C4D0: .4byte gEwramData
_0803C4D4: .4byte 0x0001261C
_0803C4D8: .4byte 0x00012FE4
_0803C4DC: .4byte 0x00012C21
_0803C4E0:
	mov r8, r1
	ldr r0, _0803C658 @ =0x00012C21
	adds r1, r2, r0
	movs r0, #0
	strb r0, [r1]
	movs r1, #9
	movs r2, #0x1f
	mov sl, r2
_0803C4F0:
	lsls r0, r1, #5
	ldr r3, [sp]
	adds r0, r0, r3
	movs r2, #0xf
	mov sb, r2
	subs r1, #1
	str r1, [sp, #4]
	ldr r3, _0803C65C @ =0x0000041E
	adds r7, r0, r3
	mov ip, r7
_0803C504:
	ldrh r1, [r7]
	mov r4, sl
	ands r4, r1
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r0, r1
	lsrs r5, r0, #5
	movs r0, #0xf8
	lsls r0, r0, #7
	ands r0, r1
	lsrs r6, r0, #0xa
	mov r1, sl
	subs r0, r1, r4
	subs r1, r0, r4
	mov r2, sl
	subs r0, r2, r5
	subs r2, r0, r5
	mov r3, sl
	subs r0, r3, r6
	subs r3, r0, r6
	mov r0, r8
	muls r0, r1, r0
	cmp r0, #0
	bge _0803C538
	ldr r1, _0803C660 @ =0x0000FFFF
	adds r0, r0, r1
_0803C538:
	asrs r0, r0, #0x10
	adds r1, r0, r4
	mov r0, r8
	muls r0, r2, r0
	cmp r0, #0
	bge _0803C548
	ldr r2, _0803C660 @ =0x0000FFFF
	adds r0, r0, r2
_0803C548:
	asrs r0, r0, #0x10
	adds r2, r0, r5
	mov r0, r8
	muls r0, r3, r0
	cmp r0, #0
	bge _0803C558
	ldr r3, _0803C660 @ =0x0000FFFF
	adds r0, r0, r3
_0803C558:
	asrs r0, r0, #0x10
	adds r3, r0, r6
	movs r0, #0x1f
	ands r1, r0
	ands r2, r0
	lsls r0, r2, #5
	orrs r1, r0
	movs r2, #0x1f
	ands r3, r2
	lsls r0, r3, #0xa
	orrs r1, r0
	mov r3, ip
	strh r1, [r3]
	movs r0, #2
	rsbs r0, r0, #0
	add ip, r0
	subs r7, #2
	movs r1, #1
	rsbs r1, r1, #0
	add sb, r1
	mov r2, sb
	cmp r2, #0
	bne _0803C504
	ldr r1, [sp, #4]
	cmp r1, #0
	bge _0803C4F0
	ldr r3, _0803C664 @ =gEwramData
	ldr r0, [r3]
	ldr r1, _0803C668 @ =0x00011DDC
	adds r1, r0, r1
	str r1, [sp]
	ldr r2, _0803C66C @ =0x000123E1
	adds r0, r0, r2
	mov r3, sb
	strb r3, [r0]
	movs r1, #0xa
	movs r0, #0x1f
	mov sl, r0
_0803C5A4:
	lsls r0, r1, #5
	ldr r2, [sp]
	adds r0, r0, r2
	movs r3, #0xf
	mov sb, r3
	adds r1, #1
	str r1, [sp, #8]
	ldr r1, _0803C65C @ =0x0000041E
	adds r7, r0, r1
	mov ip, r7
_0803C5B8:
	ldrh r1, [r7]
	mov r4, sl
	ands r4, r1
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r0, r1
	lsrs r5, r0, #5
	movs r0, #0xf8
	lsls r0, r0, #7
	ands r0, r1
	lsrs r6, r0, #0xa
	mov r2, sl
	subs r0, r2, r4
	subs r1, r0, r4
	subs r0, r2, r5
	subs r2, r0, r5
	mov r3, sl
	subs r0, r3, r6
	subs r3, r0, r6
	mov r0, r8
	muls r0, r1, r0
	cmp r0, #0
	bge _0803C5EA
	ldr r1, _0803C660 @ =0x0000FFFF
	adds r0, r0, r1
_0803C5EA:
	asrs r0, r0, #0x10
	adds r1, r0, r4
	mov r0, r8
	muls r0, r2, r0
	cmp r0, #0
	bge _0803C5FA
	ldr r2, _0803C660 @ =0x0000FFFF
	adds r0, r0, r2
_0803C5FA:
	asrs r0, r0, #0x10
	adds r2, r0, r5
	mov r0, r8
	muls r0, r3, r0
	cmp r0, #0
	bge _0803C60A
	ldr r3, _0803C660 @ =0x0000FFFF
	adds r0, r0, r3
_0803C60A:
	asrs r0, r0, #0x10
	adds r3, r0, r6
	movs r0, #0x1f
	ands r1, r0
	ands r2, r0
	lsls r0, r2, #5
	orrs r1, r0
	movs r2, #0x1f
	ands r3, r2
	lsls r0, r3, #0xa
	orrs r1, r0
	mov r3, ip
	strh r1, [r3]
	movs r0, #2
	rsbs r0, r0, #0
	add ip, r0
	subs r7, #2
	movs r1, #1
	rsbs r1, r1, #0
	add sb, r1
	mov r2, sb
	cmp r2, #0
	bne _0803C5B8
	ldr r1, [sp, #8]
	cmp r1, #0xd
	ble _0803C5A4
	ldr r3, _0803C664 @ =gEwramData
	ldr r0, [r3]
	ldr r1, _0803C670 @ =0x00012FE4
	adds r0, r0, r1
	str r2, [r0]
_0803C648:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C658: .4byte 0x00012C21
_0803C65C: .4byte 0x0000041E
_0803C660: .4byte 0x0000FFFF
_0803C664: .4byte gEwramData
_0803C668: .4byte 0x00011DDC
_0803C66C: .4byte 0x000123E1
_0803C670: .4byte 0x00012FE4

	thumb_func_start sub_0803C674
sub_0803C674: @ 0x0803C674
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r1, _0803C740 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0803C744 @ =0x0001261C
	adds r2, r0, r2
	str r2, [sp]
	movs r2, #0
	movs r3, #0x1f
	mov sb, r3
_0803C690:
	lsls r0, r2, #5
	ldr r4, [sp]
	adds r0, r4, r0
	movs r1, #0xf
	mov r8, r1
	adds r2, #1
	mov sl, r2
	adds r7, r0, #0
	adds r7, #0x1e
_0803C6A2:
	ldrh r2, [r7]
	movs r1, #0x1f
	ands r1, r2
	movs r3, #0xf8
	lsls r3, r3, #2
	adds r0, r3, #0
	adds r3, r2, #0
	ands r3, r0
	lsrs r3, r3, #5
	movs r4, #0xf8
	lsls r4, r4, #7
	adds r0, r4, #0
	ands r2, r0
	lsrs r2, r2, #0xa
	adds r1, r1, r3
	adds r1, r1, r2
	lsls r0, r1, #2
	adds r0, r0, r1
	lsrs r5, r0, #4
	cmp r5, #0x1f
	bls _0803C6CE
	movs r5, #0x1f
_0803C6CE:
	lsls r4, r5, #2
	adds r4, r4, r5
	lsls r4, r4, #1
	adds r0, r4, #0
	movs r1, #6
	bl __udivsi3
	adds r6, r0, #0
	adds r0, r4, #0
	movs r1, #7
	bl __udivsi3
	adds r1, r0, #0
	lsls r0, r5, #1
	adds r0, r0, r5
	lsrs r0, r0, #1
	cmp r6, #0x1f
	bls _0803C6F4
	movs r6, #0x1f
_0803C6F4:
	cmp r1, #0x1f
	bls _0803C6FA
	movs r1, #0x1f
_0803C6FA:
	cmp r0, #0x1f
	bls _0803C700
	movs r0, #0x1f
_0803C700:
	mov r2, sb
	ands r6, r2
	ands r1, r2
	lsls r1, r1, #5
	orrs r1, r6
	ands r0, r2
	lsls r0, r0, #0xa
	orrs r0, r1
	strh r0, [r7]
	subs r7, #2
	movs r3, #1
	rsbs r3, r3, #0
	add r8, r3
	mov r4, r8
	cmp r4, #0
	bne _0803C6A2
	mov r2, sl
	cmp r2, #9
	ble _0803C690
	ldr r1, _0803C740 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0803C748 @ =0x00012C21
	adds r0, r0, r2
	strb r4, [r0]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C740: .4byte gEwramData
_0803C744: .4byte 0x0001261C
_0803C748: .4byte 0x00012C21

	thumb_func_start sub_0803C74C
sub_0803C74C: @ 0x0803C74C
	push {r4, r5, lr}
	adds r1, r0, #0
	ldrb r0, [r1, #2]
	movs r5, #0x10
	cmp r0, #0x10
	bhi _0803C75A
	adds r5, r0, #0
_0803C75A:
	ldrb r2, [r1, #3]
	adds r0, r2, r5
	cmp r0, #0x10
	ble _0803C766
	movs r0, #0x10
	subs r5, r0, r2
_0803C766:
	ldr r3, _0803C7A0 @ =0x040000D4
	adds r0, r1, #4
	str r0, [r3]
	ldr r4, _0803C7A4 @ =gEwramData
	ldrb r0, [r1, #3]
	lsls r0, r0, #5
	ldr r1, _0803C7A8 @ =0x00011DDC
	adds r0, r0, r1
	ldr r2, [r4]
	adds r0, r2, r0
	str r0, [r3, #4]
	lsls r0, r5, #4
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0803C7AC @ =0x000123E1
	adds r2, r2, r0
	movs r0, #0
	strb r0, [r2]
	ldr r0, [r4]
	ldr r1, _0803C7B0 @ =0x000123DC
	adds r0, r0, r1
	movs r1, #0xf
	strh r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803C7A0: .4byte 0x040000D4
_0803C7A4: .4byte gEwramData
_0803C7A8: .4byte 0x00011DDC
_0803C7AC: .4byte 0x000123E1
_0803C7B0: .4byte 0x000123DC

	thumb_func_start sub_0803C7B4
sub_0803C7B4: @ 0x0803C7B4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r7, r1, #0
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	lsrs r4, r2, #0x10
	cmp r4, #0x10
	ble _0803C7CC
	movs r4, #0x10
_0803C7CC:
	adds r0, r5, r4
	cmp r0, #0x10
	ble _0803C7DA
	movs r0, #0x10
	subs r4, r0, r5
	cmp r4, #0
	beq _0803C83C
_0803C7DA:
	adds r0, r1, r4
	ldrb r2, [r6, #2]
	cmp r0, r2
	ble _0803C7E8
	subs r4, r2, r1
	cmp r4, #0
	beq _0803C83C
_0803C7E8:
	cmp r4, #0
	beq _0803C818
	ldr r3, _0803C844 @ =0x040000D4
	lsls r0, r7, #5
	adds r0, #4
	adds r0, r6, r0
	str r0, [r3]
	ldr r1, _0803C848 @ =gEwramData
	lsls r0, r5, #5
	ldr r2, _0803C84C @ =0x00011DDC
	adds r0, r0, r2
	ldr r2, [r1]
	adds r0, r2, r0
	str r0, [r3, #4]
	lsls r0, r4, #4
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0803C850 @ =0x000123E1
	adds r2, r2, r0
	movs r0, #0
	strb r0, [r2]
_0803C818:
	adds r3, r5, #0
	adds r0, r3, r4
	cmp r3, r0
	bge _0803C83C
	ldr r7, _0803C848 @ =gEwramData
	ldr r5, _0803C854 @ =0x000123DC
	movs r6, #1
	adds r4, r0, #0
_0803C828:
	ldr r0, [r7]
	adds r0, r0, r5
	adds r1, r6, #0
	lsls r1, r3
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
	adds r3, #1
	cmp r3, r4
	blt _0803C828
_0803C83C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C844: .4byte 0x040000D4
_0803C848: .4byte gEwramData
_0803C84C: .4byte 0x00011DDC
_0803C850: .4byte 0x000123E1
_0803C854: .4byte 0x000123DC

	thumb_func_start sub_0803C858
sub_0803C858: @ 0x0803C858
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	cmp r4, #0xf
	bhi _0803C898
	cmp r1, #0xf
	bhi _0803C898
	ldr r3, _0803C8A0 @ =gEwramData
	ldr r2, [r3]
	lsls r1, r1, #1
	lsls r0, r4, #5
	adds r1, r1, r0
	ldr r6, _0803C8A4 @ =0x00011DDC
	adds r0, r2, r6
	adds r0, r0, r1
	movs r1, #0
	strh r5, [r0]
	ldr r0, _0803C8A8 @ =0x000123E1
	adds r2, r2, r0
	strb r1, [r2]
	ldr r2, [r3]
	ldr r6, _0803C8AC @ =0x000123DC
	adds r2, r2, r6
	movs r0, #1
	lsls r0, r4
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
_0803C898:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803C8A0: .4byte gEwramData
_0803C8A4: .4byte 0x00011DDC
_0803C8A8: .4byte 0x000123E1
_0803C8AC: .4byte 0x000123DC

	thumb_func_start sub_0803C8B0
sub_0803C8B0: @ 0x0803C8B0
	push {r4, r5, lr}
	adds r1, r0, #0
	ldrb r0, [r1, #2]
	movs r5, #0x10
	cmp r0, #0x10
	bhi _0803C8BE
	adds r5, r0, #0
_0803C8BE:
	ldrb r2, [r1, #3]
	adds r0, r2, r5
	cmp r0, #0x10
	ble _0803C8CA
	movs r0, #0x10
	subs r5, r0, r2
_0803C8CA:
	ldr r3, _0803C904 @ =0x040000D4
	adds r0, r1, #4
	str r0, [r3]
	ldr r4, _0803C908 @ =gEwramData
	ldrb r0, [r1, #3]
	lsls r0, r0, #5
	ldr r1, _0803C90C @ =0x0001261C
	adds r0, r0, r1
	ldr r2, [r4]
	adds r0, r2, r0
	str r0, [r3, #4]
	lsls r0, r5, #4
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0803C910 @ =0x00012C21
	adds r2, r2, r0
	movs r0, #0
	strb r0, [r2]
	ldr r0, [r4]
	ldr r1, _0803C914 @ =0x00012C1C
	adds r0, r0, r1
	movs r1, #0xf
	strh r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803C904: .4byte 0x040000D4
_0803C908: .4byte gEwramData
_0803C90C: .4byte 0x0001261C
_0803C910: .4byte 0x00012C21
_0803C914: .4byte 0x00012C1C

	thumb_func_start sub_0803C918
sub_0803C918: @ 0x0803C918
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r7, r1, #0
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	lsrs r4, r2, #0x10
	cmp r4, #0x10
	ble _0803C930
	movs r4, #0x10
_0803C930:
	adds r0, r5, r4
	cmp r0, #0x10
	ble _0803C93E
	movs r0, #0x10
	subs r4, r0, r5
	cmp r4, #0
	beq _0803C9A0
_0803C93E:
	adds r0, r1, r4
	ldrb r2, [r6, #2]
	cmp r0, r2
	ble _0803C94C
	subs r4, r2, r1
	cmp r4, #0
	beq _0803C9A0
_0803C94C:
	cmp r4, #0
	beq _0803C97C
	ldr r3, _0803C9A8 @ =0x040000D4
	lsls r0, r7, #5
	adds r0, #4
	adds r0, r6, r0
	str r0, [r3]
	ldr r1, _0803C9AC @ =gEwramData
	lsls r0, r5, #5
	ldr r2, _0803C9B0 @ =0x0001261C
	adds r0, r0, r2
	ldr r2, [r1]
	adds r0, r2, r0
	str r0, [r3, #4]
	lsls r0, r4, #4
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0803C9B4 @ =0x00012C21
	adds r2, r2, r0
	movs r0, #0
	strb r0, [r2]
_0803C97C:
	adds r3, r5, #0
	adds r0, r3, r4
	cmp r3, r0
	bge _0803C9A0
	ldr r7, _0803C9AC @ =gEwramData
	ldr r5, _0803C9B8 @ =0x00012C1C
	movs r6, #1
	adds r4, r0, #0
_0803C98C:
	ldr r0, [r7]
	adds r0, r0, r5
	adds r1, r6, #0
	lsls r1, r3
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
	adds r3, #1
	cmp r3, r4
	blt _0803C98C
_0803C9A0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C9A8: .4byte 0x040000D4
_0803C9AC: .4byte gEwramData
_0803C9B0: .4byte 0x0001261C
_0803C9B4: .4byte 0x00012C21
_0803C9B8: .4byte 0x00012C1C

	thumb_func_start sub_0803C9BC
sub_0803C9BC: @ 0x0803C9BC
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _0803C9E0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803C9E4 @ =0x00011DDC
	adds r5, r0, r1
	ldr r1, _0803C9E8 @ =0x000123DE
	adds r3, r0, r1
	ldrh r0, [r3]
	asrs r0, r4
	movs r6, #1
	ands r0, r6
	cmp r0, #0
	beq _0803C9EC
	movs r0, #0
	b _0803CA10
	.align 2, 0
_0803C9E0: .4byte gEwramData
_0803C9E4: .4byte 0x00011DDC
_0803C9E8: .4byte 0x000123DE
_0803C9EC:
	ldr r2, _0803CA18 @ =0x040000D4
	lsls r0, r4, #5
	adds r1, r5, r0
	str r1, [r2]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	str r0, [r2, #4]
	ldr r0, _0803CA1C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r6, #0
	lsls r0, r4
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
	movs r0, #1
_0803CA10:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803CA18: .4byte 0x040000D4
_0803CA1C: .4byte 0x80000010

	thumb_func_start sub_0803CA20
sub_0803CA20: @ 0x0803CA20
	push {r4, lr}
	ldr r0, _0803CA38 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0803CA3C @ =0x00011DDC
	adds r3, r2, r0
	ldr r0, _0803CA40 @ =0x000123DE
	adds r4, r2, r0
	ldrh r0, [r4]
	cmp r0, #0
	beq _0803CA44
	movs r0, #0
	b _0803CA5A
	.align 2, 0
_0803CA38: .4byte gEwramData
_0803CA3C: .4byte 0x00011DDC
_0803CA40: .4byte 0x000123DE
_0803CA44:
	ldr r1, _0803CA60 @ =0x040000D4
	str r3, [r1]
	ldr r3, _0803CA64 @ =0x00011FDC
	adds r0, r2, r3
	str r0, [r1, #4]
	ldr r0, _0803CA68 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0803CA6C @ =0x0000FFFF
	strh r0, [r4]
	movs r0, #1
_0803CA5A:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0803CA60: .4byte 0x040000D4
_0803CA64: .4byte 0x00011FDC
_0803CA68: .4byte 0x80000100
_0803CA6C: .4byte 0x0000FFFF

	thumb_func_start sub_0803CA70
sub_0803CA70: @ 0x0803CA70
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _0803CA94 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803CA98 @ =0x0001261C
	adds r5, r0, r1
	ldr r1, _0803CA9C @ =0x00012C1E
	adds r3, r0, r1
	ldrh r0, [r3]
	asrs r0, r4
	movs r6, #1
	ands r0, r6
	cmp r0, #0
	beq _0803CAA0
	movs r0, #0
	b _0803CAC4
	.align 2, 0
_0803CA94: .4byte gEwramData
_0803CA98: .4byte 0x0001261C
_0803CA9C: .4byte 0x00012C1E
_0803CAA0:
	ldr r2, _0803CACC @ =0x040000D4
	lsls r0, r4, #5
	adds r1, r5, r0
	str r1, [r2]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	str r0, [r2, #4]
	ldr r0, _0803CAD0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r6, #0
	lsls r0, r4
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
	movs r0, #1
_0803CAC4:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803CACC: .4byte 0x040000D4
_0803CAD0: .4byte 0x80000010

	thumb_func_start sub_0803CAD4
sub_0803CAD4: @ 0x0803CAD4
	push {r4, lr}
	ldr r0, _0803CAEC @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0803CAF0 @ =0x0001261C
	adds r3, r2, r0
	ldr r0, _0803CAF4 @ =0x00012C1E
	adds r4, r2, r0
	ldrh r0, [r4]
	cmp r0, #0
	beq _0803CAF8
	movs r0, #0
	b _0803CB0E
	.align 2, 0
_0803CAEC: .4byte gEwramData
_0803CAF0: .4byte 0x0001261C
_0803CAF4: .4byte 0x00012C1E
_0803CAF8:
	ldr r1, _0803CB14 @ =0x040000D4
	str r3, [r1]
	ldr r3, _0803CB18 @ =0x0001281C
	adds r0, r2, r3
	str r0, [r1, #4]
	ldr r0, _0803CB1C @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0803CB20 @ =0x0000FFFF
	strh r0, [r4]
	movs r0, #1
_0803CB0E:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0803CB14: .4byte 0x040000D4
_0803CB18: .4byte 0x0001281C
_0803CB1C: .4byte 0x80000100
_0803CB20: .4byte 0x0000FFFF

	thumb_func_start sub_0803CB24
sub_0803CB24: @ 0x0803CB24
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _0803CB74 @ =gEwramData
	ldr r5, [r0]
	ldr r0, _0803CB78 @ =0x00011DDC
	adds r6, r5, r0
	ldr r1, _0803CB7C @ =0x000123DE
	adds r4, r5, r1
	ldrh r0, [r4]
	asrs r0, r3
	movs r7, #1
	mov ip, r7
	mov r1, ip
	ands r0, r1
	cmp r0, #0
	beq _0803CB8C
	ldr r2, _0803CB80 @ =0x040000D4
	lsls r1, r3, #5
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r1, r7
	adds r0, r6, r0
	str r0, [r2]
	adds r1, r6, r1
	str r1, [r2, #4]
	ldr r0, _0803CB84 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	mov r0, ip
	lsls r0, r3
	ldrh r1, [r4]
	bics r1, r0
	movs r2, #0
	strh r1, [r4]
	ldr r1, _0803CB88 @ =0x000123E1
	adds r0, r5, r1
	strb r2, [r0]
	movs r0, #1
	b _0803CB8E
	.align 2, 0
_0803CB74: .4byte gEwramData
_0803CB78: .4byte 0x00011DDC
_0803CB7C: .4byte 0x000123DE
_0803CB80: .4byte 0x040000D4
_0803CB84: .4byte 0x80000010
_0803CB88: .4byte 0x000123E1
_0803CB8C:
	movs r0, #0
_0803CB8E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0803CB94
sub_0803CB94: @ 0x0803CB94
	push {lr}
	ldr r0, _0803CBA8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803CBAC @ =0x00011DDC
	adds r0, r0, r1
	bl sub_0803B9DC
	pop {r1}
	bx r1
	.align 2, 0
_0803CBA8: .4byte gEwramData
_0803CBAC: .4byte 0x00011DDC

	thumb_func_start sub_0803CBB0
sub_0803CBB0: @ 0x0803CBB0
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _0803CC00 @ =gEwramData
	ldr r5, [r0]
	ldr r0, _0803CC04 @ =0x0001261C
	adds r6, r5, r0
	ldr r1, _0803CC08 @ =0x00012C1E
	adds r4, r5, r1
	ldrh r0, [r4]
	asrs r0, r3
	movs r7, #1
	mov ip, r7
	mov r1, ip
	ands r0, r1
	cmp r0, #0
	beq _0803CC18
	ldr r2, _0803CC0C @ =0x040000D4
	lsls r1, r3, #5
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r1, r7
	adds r0, r6, r0
	str r0, [r2]
	adds r1, r6, r1
	str r1, [r2, #4]
	ldr r0, _0803CC10 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	mov r0, ip
	lsls r0, r3
	ldrh r1, [r4]
	bics r1, r0
	movs r2, #0
	strh r1, [r4]
	ldr r1, _0803CC14 @ =0x00012C21
	adds r0, r5, r1
	strb r2, [r0]
	movs r0, #1
	b _0803CC1A
	.align 2, 0
_0803CC00: .4byte gEwramData
_0803CC04: .4byte 0x0001261C
_0803CC08: .4byte 0x00012C1E
_0803CC0C: .4byte 0x040000D4
_0803CC10: .4byte 0x80000010
_0803CC14: .4byte 0x00012C21
_0803CC18:
	movs r0, #0
_0803CC1A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0803CC20
sub_0803CC20: @ 0x0803CC20
	push {lr}
	ldr r0, _0803CC34 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803CC38 @ =0x0001261C
	adds r0, r0, r1
	bl sub_0803B9DC
	pop {r1}
	bx r1
	.align 2, 0
_0803CC34: .4byte gEwramData
_0803CC38: .4byte 0x0001261C

	thumb_func_start sub_0803CC3C
sub_0803CC3C: @ 0x0803CC3C
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0803CC60 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _0803CC64 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0803CC68 @ =0x00012E5C
	adds r0, r0, r2
	str r0, [r1, #4]
	ldr r0, _0803CC6C @ =0x810000C2
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	bx lr
	.align 2, 0
_0803CC60: .4byte 0x040000D4
_0803CC64: .4byte gEwramData
_0803CC68: .4byte 0x00012E5C
_0803CC6C: .4byte 0x810000C2

	thumb_func_start sub_0803CC70
sub_0803CC70: @ 0x0803CC70
	push {r4, r5, lr}
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r3, _0803CCAC @ =gEwramData
	ldr r4, [r3]
	lsls r3, r2, #1
	adds r3, r3, r2
	lsls r3, r3, #2
	ldr r5, _0803CCB0 @ =0x00012E60
	adds r2, r4, r5
	adds r2, r2, r3
	str r0, [r2]
	ldr r2, _0803CCB4 @ =0x00012E64
	adds r0, r4, r2
	adds r0, r0, r3
	str r1, [r0]
	adds r4, r4, r3
	adds r5, #8
	adds r1, r4, r5
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0803CCB8 @ =0x00012E6A
	adds r4, r4, r0
	strb r2, [r4]
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0803CCAC: .4byte gEwramData
_0803CCB0: .4byte 0x00012E60
_0803CCB4: .4byte 0x00012E64
_0803CCB8: .4byte 0x00012E6A

	thumb_func_start sub_0803CCBC
sub_0803CCBC: @ 0x0803CCBC
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0803CCF4 @ =gEwramData
	ldr r2, [r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r3, _0803CCF8 @ =0x00012E60
	adds r0, r2, r3
	adds r0, r0, r1
	movs r3, #0
	str r3, [r0]
	ldr r4, _0803CCFC @ =0x00012E64
	adds r0, r2, r4
	adds r0, r0, r1
	str r3, [r0]
	adds r2, r2, r1
	ldr r1, _0803CD00 @ =0x00012E68
	adds r0, r2, r1
	movs r1, #0
	strh r3, [r0]
	ldr r3, _0803CD04 @ =0x00012E6A
	adds r2, r2, r3
	strb r1, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803CCF4: .4byte gEwramData
_0803CCF8: .4byte 0x00012E60
_0803CCFC: .4byte 0x00012E64
_0803CD00: .4byte 0x00012E68
_0803CD04: .4byte 0x00012E6A

	thumb_func_start sub_0803CD08
sub_0803CD08: @ 0x0803CD08
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _0803CD4C @ =gEwramData
	ldr r3, [r0]
	ldr r1, _0803CD50 @ =0x00012E5C
	adds r0, r3, r1
	ldr r5, _0803CD54 @ =0x0000FFFF
	ldrh r4, [r0]
	cmp r4, #0
	bne _0803CD68
	ldr r1, _0803CD58 @ =0x040000D4
	ldr r6, _0803CD5C @ =0x00012E60
	adds r2, r3, r6
	str r2, [r1]
	adds r6, #0xc0
	adds r0, r3, r6
	str r0, [r1, #4]
	ldr r0, _0803CD60 @ =0x80000060
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r0, sp
	strh r4, [r0]
	str r0, [r1]
	str r2, [r1, #4]
	ldr r0, _0803CD64 @ =0x81000060
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0803CD50 @ =0x00012E5C
	adds r1, r3, r0
	ldr r0, [r1]
	orrs r0, r5
	str r0, [r1]
	movs r0, #1
	b _0803CD6A
	.align 2, 0
_0803CD4C: .4byte gEwramData
_0803CD50: .4byte 0x00012E5C
_0803CD54: .4byte 0x0000FFFF
_0803CD58: .4byte 0x040000D4
_0803CD5C: .4byte 0x00012E60
_0803CD60: .4byte 0x80000060
_0803CD64: .4byte 0x81000060
_0803CD68:
	movs r0, #0
_0803CD6A:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803CD74
sub_0803CD74: @ 0x0803CD74
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _0803CD94 @ =gEwramData
	ldr r4, [r0]
	ldr r1, _0803CD98 @ =0x00012E5C
	adds r0, r4, r1
	movs r5, #1
	lsls r5, r3
	ldr r0, [r0]
	ands r0, r5
	cmp r0, #0
	bne _0803CD9C
	movs r0, #0
	b _0803CDC6
	.align 2, 0
_0803CD94: .4byte gEwramData
_0803CD98: .4byte 0x00012E5C
_0803CD9C:
	ldr r2, _0803CDCC @ =0x040000D4
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r3, _0803CDD0 @ =0x00012F20
	adds r1, r0, r3
	adds r1, r4, r1
	str r1, [r2]
	ldr r1, _0803CDD4 @ =0x00012E60
	adds r0, r0, r1
	adds r0, r4, r0
	str r0, [r2, #4]
	ldr r0, _0803CDD8 @ =0x80000006
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	subs r3, #0xc4
	adds r1, r4, r3
	ldr r0, [r1]
	bics r0, r5
	str r0, [r1]
	movs r0, #1
_0803CDC6:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0803CDCC: .4byte 0x040000D4
_0803CDD0: .4byte 0x00012F20
_0803CDD4: .4byte 0x00012E60
_0803CDD8: .4byte 0x80000006

	thumb_func_start sub_0803CDDC
sub_0803CDDC: @ 0x0803CDDC
	push {lr}
	bl sub_0803C150
	bl sub_0803BE04
	bl sub_0803C49C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803CDF0
sub_0803CDF0: @ 0x0803CDF0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r1
	mov sb, r3
	ldr r7, [sp, #0x20]
	ldr r1, [sp, #0x24]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, _0803CE78 @ =gEwramData
	ldr r4, [r0]
	ldr r0, _0803CE7C @ =0x000123E4
	adds r5, r4, r0
	subs r3, r7, r3
	lsls r1, r1, #0x10
	adds r0, r3, #0
	str r2, [sp]
	bl sub_0803E8BC
	adds r3, r0, #0
	ldr r0, [r5, #0x44]
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x48]
	orrs r0, r1
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x4c]
	orrs r0, r1
	str r0, [r5, #0x4c]
	ldr r1, _0803CE80 @ =0x00012424
	adds r0, r4, r1
	strb r6, [r0]
	adds r1, #1
	adds r0, r4, r1
	mov r1, r8
	strb r1, [r0]
	ldr r1, _0803CE84 @ =0x00012426
	adds r0, r4, r1
	ldr r2, [sp]
	strb r2, [r0]
	adds r1, #0x4e
	adds r0, r4, r1
	mov r1, sb
	str r1, [r0]
	ldr r1, _0803CE88 @ =0x000124B8
	adds r0, r4, r1
	str r7, [r0]
	ldr r0, _0803CE8C @ =0x000124FC
	adds r4, r4, r0
	str r3, [r4]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803CE78: .4byte gEwramData
_0803CE7C: .4byte 0x000123E4
_0803CE80: .4byte 0x00012424
_0803CE84: .4byte 0x00012426
_0803CE88: .4byte 0x000124B8
_0803CE8C: .4byte 0x000124FC

	thumb_func_start sub_0803CE90
sub_0803CE90: @ 0x0803CE90
	push {lr}
	cmp r0, #0
	beq _0803CEB4
	ldr r0, _0803CEA8 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0803CEAC @ =0x0001242C
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, _0803CEB0 @ =0xFFFEFFFF
	ands r0, r2
	b _0803CEC4
	.align 2, 0
_0803CEA8: .4byte gEwramData
_0803CEAC: .4byte 0x0001242C
_0803CEB0: .4byte 0xFFFEFFFF
_0803CEB4:
	ldr r0, _0803CECC @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0803CED0 @ =0x0001242C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #9
	orrs r0, r2
_0803CEC4:
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803CECC: .4byte gEwramData
_0803CED0: .4byte 0x0001242C

	thumb_func_start sub_0803CED4
sub_0803CED4: @ 0x0803CED4
	push {r4, lr}
	ldr r0, _0803CF1C @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0803CF20 @ =0x000123E4
	adds r1, r2, r0
	ldr r3, _0803CF24 @ =0xFFFEFFFF
	ldr r0, [r1, #0x44]
	ands r0, r3
	str r0, [r1, #0x44]
	ldr r0, [r1, #0x48]
	ands r0, r3
	str r0, [r1, #0x48]
	ldr r0, [r1, #0x4c]
	ands r0, r3
	str r0, [r1, #0x4c]
	ldr r1, _0803CF28 @ =0x00012424
	adds r0, r2, r1
	movs r3, #0
	str r3, [r0]
	ldr r4, _0803CF2C @ =0x00012474
	adds r0, r2, r4
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [r0]
	adds r4, #0x44
	adds r0, r2, r4
	str r1, [r0]
	ldr r1, _0803CF30 @ =0x000124FC
	adds r0, r2, r1
	str r3, [r0]
	subs r4, #0xd7
	adds r2, r2, r4
	strb r3, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803CF1C: .4byte gEwramData
_0803CF20: .4byte 0x000123E4
_0803CF24: .4byte 0xFFFEFFFF
_0803CF28: .4byte 0x00012424
_0803CF2C: .4byte 0x00012474
_0803CF30: .4byte 0x000124FC

	thumb_func_start sub_0803CF34
sub_0803CF34: @ 0x0803CF34
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r1
	mov sb, r3
	ldr r7, [sp, #0x20]
	ldr r1, [sp, #0x24]
	ldr r0, _0803CFAC @ =gEwramData
	ldr r5, [r0]
	ldr r0, _0803CFB0 @ =0x000123E4
	adds r4, r5, r0
	subs r3, r7, r3
	lsls r1, r1, #0x10
	adds r0, r3, #0
	str r2, [sp]
	bl sub_0803E8BC
	adds r3, r0, #0
	movs r1, #1
	lsls r1, r6
	ldr r0, [r4, #0x44]
	orrs r0, r1
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x48]
	orrs r0, r1
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x4c]
	orrs r0, r1
	str r0, [r4, #0x4c]
	lsls r6, r6, #2
	adds r4, r4, r6
	ldr r2, [sp]
	lsls r2, r2, #5
	adds r2, #4
	add r8, r2
	mov r1, r8
	str r1, [r4]
	ldr r1, _0803CFB4 @ =0x00012434
	adds r0, r5, r1
	adds r0, r0, r6
	mov r1, sb
	str r1, [r0]
	ldr r1, _0803CFB8 @ =0x00012478
	adds r0, r5, r1
	adds r0, r0, r6
	str r7, [r0]
	ldr r0, _0803CFBC @ =0x000124BC
	adds r5, r5, r0
	adds r5, r5, r6
	str r3, [r5]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803CFAC: .4byte gEwramData
_0803CFB0: .4byte 0x000123E4
_0803CFB4: .4byte 0x00012434
_0803CFB8: .4byte 0x00012478
_0803CFBC: .4byte 0x000124BC

	thumb_func_start sub_0803CFC0
sub_0803CFC0: @ 0x0803CFC0
	push {lr}
	adds r3, r0, #0
	cmp r1, #0
	beq _0803CFE4
	ldr r0, _0803CFDC @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0803CFE0 @ =0x0001242C
	adds r2, r2, r0
	movs r1, #1
	lsls r1, r3
	ldr r0, [r2]
	bics r0, r1
	b _0803CFF4
	.align 2, 0
_0803CFDC: .4byte gEwramData
_0803CFE0: .4byte 0x0001242C
_0803CFE4:
	ldr r0, _0803CFFC @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0803D000 @ =0x0001242C
	adds r2, r2, r0
	movs r1, #1
	lsls r1, r3
	ldr r0, [r2]
	orrs r0, r1
_0803CFF4:
	str r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0803CFFC: .4byte gEwramData
_0803D000: .4byte 0x0001242C

	thumb_func_start sub_0803D004
sub_0803D004: @ 0x0803D004
	push {r4, r5, lr}
	ldr r1, _0803D058 @ =gEwramData
	ldr r4, [r1]
	ldr r1, _0803D05C @ =0x000123E4
	adds r3, r4, r1
	movs r2, #1
	lsls r2, r0
	mvns r2, r2
	ldr r1, [r3, #0x44]
	ands r1, r2
	str r1, [r3, #0x44]
	ldr r1, [r3, #0x48]
	ands r1, r2
	str r1, [r3, #0x48]
	ldr r1, [r3, #0x4c]
	ands r1, r2
	str r1, [r3, #0x4c]
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r5, #0
	str r5, [r3]
	ldr r2, _0803D060 @ =0x00012434
	adds r1, r4, r2
	adds r1, r1, r0
	movs r2, #0x80
	lsls r2, r2, #9
	str r2, [r1]
	ldr r3, _0803D064 @ =0x00012478
	adds r1, r4, r3
	adds r1, r1, r0
	str r2, [r1]
	ldr r2, _0803D068 @ =0x000124BC
	adds r1, r4, r2
	adds r1, r1, r0
	str r5, [r1]
	subs r3, #0x97
	adds r4, r4, r3
	strb r5, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803D058: .4byte gEwramData
_0803D05C: .4byte 0x000123E4
_0803D060: .4byte 0x00012434
_0803D064: .4byte 0x00012478
_0803D068: .4byte 0x000124BC

	thumb_func_start sub_0803D06C
sub_0803D06C: @ 0x0803D06C
	ldr r0, _0803D078 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803D07C @ =0x00012430
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0803D078: .4byte gEwramData
_0803D07C: .4byte 0x00012430

	thumb_func_start sub_0803D080
sub_0803D080: @ 0x0803D080
	push {r4, lr}
	sub sp, #4
	ldr r0, _0803D0A0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803D0A4 @ =0x000123E4
	adds r4, r0, r1
	ldr r2, _0803D0A8 @ =0x00012500
	adds r3, r0, r2
	ldr r2, _0803D0AC @ =0x000123E0
	adds r1, r0, r2
	ldrb r2, [r1]
	cmp r2, #0
	beq _0803D0B0
	movs r0, #0
	b _0803D0D0
	.align 2, 0
_0803D0A0: .4byte gEwramData
_0803D0A4: .4byte 0x000123E4
_0803D0A8: .4byte 0x00012500
_0803D0AC: .4byte 0x000123E0
_0803D0B0:
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0803D0D8 @ =0x040000D4
	str r4, [r0]
	str r3, [r0, #4]
	ldr r1, _0803D0DC @ =0x8000008E
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r2, [r1]
	str r1, [r0]
	str r4, [r0, #4]
	ldr r1, _0803D0E0 @ =0x8100008E
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r0, #1
_0803D0D0:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0803D0D8: .4byte 0x040000D4
_0803D0DC: .4byte 0x8000008E
_0803D0E0: .4byte 0x8100008E

	thumb_func_start sub_0803D0E4
sub_0803D0E4: @ 0x0803D0E4
	push {r4, lr}
	sub sp, #4
	ldr r0, _0803D104 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0803D108 @ =0x000123E4
	adds r1, r0, r2
	ldr r2, _0803D10C @ =0x00012500
	adds r3, r0, r2
	ldr r2, _0803D110 @ =0x000123E0
	adds r4, r0, r2
	ldrb r0, [r4]
	cmp r0, #0
	bne _0803D114
	movs r0, #0
	b _0803D134
	.align 2, 0
_0803D104: .4byte gEwramData
_0803D108: .4byte 0x000123E4
_0803D10C: .4byte 0x00012500
_0803D110: .4byte 0x000123E0
_0803D114:
	ldr r0, _0803D13C @ =0x040000D4
	str r3, [r0]
	str r1, [r0, #4]
	ldr r1, _0803D140 @ =0x8000008E
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	movs r2, #0
	strh r2, [r1]
	str r1, [r0]
	str r3, [r0, #4]
	ldr r1, _0803D144 @ =0x8100008E
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	strb r2, [r4]
	movs r0, #1
_0803D134:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0803D13C: .4byte 0x040000D4
_0803D140: .4byte 0x8000008E
_0803D144: .4byte 0x8100008E

	thumb_func_start sub_0803D148
sub_0803D148: @ 0x0803D148
	push {lr}
	cmp r0, #0
	beq _0803D16C
	ldr r0, _0803D160 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0803D164 @ =0x0001242C
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, _0803D168 @ =0xFFFE0000
	ands r0, r2
	b _0803D17A
	.align 2, 0
_0803D160: .4byte gEwramData
_0803D164: .4byte 0x0001242C
_0803D168: .4byte 0xFFFE0000
_0803D16C:
	ldr r0, _0803D180 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0803D184 @ =0x0001242C
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, _0803D188 @ =0x0001FFFF
	orrs r0, r2
_0803D17A:
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803D180: .4byte gEwramData
_0803D184: .4byte 0x0001242C
_0803D188: .4byte 0x0001FFFF

	thumb_func_start sub_0803D18C
sub_0803D18C: @ 0x0803D18C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r1
	mov sb, r3
	ldr r7, [sp, #0x20]
	ldr r1, [sp, #0x24]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, _0803D214 @ =gEwramData
	ldr r4, [r0]
	ldr r0, _0803D218 @ =0x00012C24
	adds r5, r4, r0
	subs r3, r7, r3
	lsls r1, r1, #0x10
	adds r0, r3, #0
	str r2, [sp]
	bl sub_0803E8BC
	adds r3, r0, #0
	ldr r0, [r5, #0x44]
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x48]
	orrs r0, r1
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x4c]
	orrs r0, r1
	str r0, [r5, #0x4c]
	ldr r1, _0803D21C @ =0x00012C64
	adds r0, r4, r1
	strb r6, [r0]
	adds r1, #1
	adds r0, r4, r1
	mov r1, r8
	strb r1, [r0]
	ldr r1, _0803D220 @ =0x00012C66
	adds r0, r4, r1
	ldr r2, [sp]
	strb r2, [r0]
	adds r1, #0x4e
	adds r0, r4, r1
	mov r1, sb
	str r1, [r0]
	ldr r1, _0803D224 @ =0x00012CF8
	adds r0, r4, r1
	str r7, [r0]
	ldr r0, _0803D228 @ =0x00012D3C
	adds r4, r4, r0
	str r3, [r4]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803D214: .4byte gEwramData
_0803D218: .4byte 0x00012C24
_0803D21C: .4byte 0x00012C64
_0803D220: .4byte 0x00012C66
_0803D224: .4byte 0x00012CF8
_0803D228: .4byte 0x00012D3C

	thumb_func_start sub_0803D22C
sub_0803D22C: @ 0x0803D22C
	push {lr}
	cmp r0, #0
	beq _0803D250
	ldr r0, _0803D244 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0803D248 @ =0x00012C6C
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, _0803D24C @ =0xFFFEFFFF
	ands r0, r2
	b _0803D260
	.align 2, 0
_0803D244: .4byte gEwramData
_0803D248: .4byte 0x00012C6C
_0803D24C: .4byte 0xFFFEFFFF
_0803D250:
	ldr r0, _0803D268 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0803D26C @ =0x00012C6C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #9
	orrs r0, r2
_0803D260:
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803D268: .4byte gEwramData
_0803D26C: .4byte 0x00012C6C

	thumb_func_start sub_0803D270
sub_0803D270: @ 0x0803D270
	push {r4, lr}
	ldr r0, _0803D2B8 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0803D2BC @ =0x00012C24
	adds r1, r2, r0
	ldr r3, _0803D2C0 @ =0xFFFEFFFF
	ldr r0, [r1, #0x44]
	ands r0, r3
	str r0, [r1, #0x44]
	ldr r0, [r1, #0x48]
	ands r0, r3
	str r0, [r1, #0x48]
	ldr r0, [r1, #0x4c]
	ands r0, r3
	str r0, [r1, #0x4c]
	ldr r1, _0803D2C4 @ =0x00012C64
	adds r0, r2, r1
	movs r3, #0
	str r3, [r0]
	ldr r4, _0803D2C8 @ =0x00012CB4
	adds r0, r2, r4
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [r0]
	adds r4, #0x44
	adds r0, r2, r4
	str r1, [r0]
	ldr r1, _0803D2CC @ =0x00012D3C
	adds r0, r2, r1
	str r3, [r0]
	subs r4, #0xd7
	adds r2, r2, r4
	strb r3, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803D2B8: .4byte gEwramData
_0803D2BC: .4byte 0x00012C24
_0803D2C0: .4byte 0xFFFEFFFF
_0803D2C4: .4byte 0x00012C64
_0803D2C8: .4byte 0x00012CB4
_0803D2CC: .4byte 0x00012D3C

	thumb_func_start sub_0803D2D0
sub_0803D2D0: @ 0x0803D2D0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r1
	mov sb, r3
	ldr r7, [sp, #0x20]
	ldr r1, [sp, #0x24]
	ldr r0, _0803D348 @ =gEwramData
	ldr r5, [r0]
	ldr r0, _0803D34C @ =0x00012C24
	adds r4, r5, r0
	subs r3, r7, r3
	lsls r1, r1, #0x10
	adds r0, r3, #0
	str r2, [sp]
	bl sub_0803E8BC
	adds r3, r0, #0
	movs r1, #1
	lsls r1, r6
	ldr r0, [r4, #0x44]
	orrs r0, r1
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x48]
	orrs r0, r1
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x4c]
	orrs r0, r1
	str r0, [r4, #0x4c]
	lsls r6, r6, #2
	adds r4, r4, r6
	ldr r2, [sp]
	lsls r2, r2, #5
	adds r2, #4
	add r8, r2
	mov r1, r8
	str r1, [r4]
	ldr r1, _0803D350 @ =0x00012C74
	adds r0, r5, r1
	adds r0, r0, r6
	mov r1, sb
	str r1, [r0]
	ldr r1, _0803D354 @ =0x00012CB8
	adds r0, r5, r1
	adds r0, r0, r6
	str r7, [r0]
	ldr r0, _0803D358 @ =0x00012CFC
	adds r5, r5, r0
	adds r5, r5, r6
	str r3, [r5]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803D348: .4byte gEwramData
_0803D34C: .4byte 0x00012C24
_0803D350: .4byte 0x00012C74
_0803D354: .4byte 0x00012CB8
_0803D358: .4byte 0x00012CFC

	thumb_func_start sub_0803D35C
sub_0803D35C: @ 0x0803D35C
	push {lr}
	adds r3, r0, #0
	cmp r1, #0
	beq _0803D380
	ldr r0, _0803D378 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0803D37C @ =0x00012C6C
	adds r2, r2, r0
	movs r1, #1
	lsls r1, r3
	ldr r0, [r2]
	bics r0, r1
	b _0803D390
	.align 2, 0
_0803D378: .4byte gEwramData
_0803D37C: .4byte 0x00012C6C
_0803D380:
	ldr r0, _0803D398 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0803D39C @ =0x00012C6C
	adds r2, r2, r0
	movs r1, #1
	lsls r1, r3
	ldr r0, [r2]
	orrs r0, r1
_0803D390:
	str r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0803D398: .4byte gEwramData
_0803D39C: .4byte 0x00012C6C

	thumb_func_start sub_0803D3A0
sub_0803D3A0: @ 0x0803D3A0
	push {r4, r5, lr}
	ldr r1, _0803D3F4 @ =gEwramData
	ldr r4, [r1]
	ldr r1, _0803D3F8 @ =0x00012C24
	adds r3, r4, r1
	movs r2, #1
	lsls r2, r0
	mvns r2, r2
	ldr r1, [r3, #0x44]
	ands r1, r2
	str r1, [r3, #0x44]
	ldr r1, [r3, #0x48]
	ands r1, r2
	str r1, [r3, #0x48]
	ldr r1, [r3, #0x4c]
	ands r1, r2
	str r1, [r3, #0x4c]
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r5, #0
	str r5, [r3]
	ldr r2, _0803D3FC @ =0x00012C74
	adds r1, r4, r2
	adds r1, r1, r0
	movs r2, #0x80
	lsls r2, r2, #9
	str r2, [r1]
	ldr r3, _0803D400 @ =0x00012CB8
	adds r1, r4, r3
	adds r1, r1, r0
	str r2, [r1]
	ldr r2, _0803D404 @ =0x00012CFC
	adds r1, r4, r2
	adds r1, r1, r0
	str r5, [r1]
	subs r3, #0x97
	adds r4, r4, r3
	strb r5, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803D3F4: .4byte gEwramData
_0803D3F8: .4byte 0x00012C24
_0803D3FC: .4byte 0x00012C74
_0803D400: .4byte 0x00012CB8
_0803D404: .4byte 0x00012CFC

	thumb_func_start sub_0803D408
sub_0803D408: @ 0x0803D408
	ldr r0, _0803D414 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803D418 @ =0x00012C70
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0803D414: .4byte gEwramData
_0803D418: .4byte 0x00012C70

	thumb_func_start sub_0803D41C
sub_0803D41C: @ 0x0803D41C
	push {r4, lr}
	sub sp, #4
	ldr r0, _0803D43C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803D440 @ =0x00012C24
	adds r4, r0, r1
	ldr r2, _0803D444 @ =0x00012D40
	adds r3, r0, r2
	ldr r2, _0803D448 @ =0x00012C20
	adds r1, r0, r2
	ldrb r2, [r1]
	cmp r2, #0
	beq _0803D44C
	movs r0, #0
	b _0803D46C
	.align 2, 0
_0803D43C: .4byte gEwramData
_0803D440: .4byte 0x00012C24
_0803D444: .4byte 0x00012D40
_0803D448: .4byte 0x00012C20
_0803D44C:
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0803D474 @ =0x040000D4
	str r4, [r0]
	str r3, [r0, #4]
	ldr r1, _0803D478 @ =0x8000008E
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r2, [r1]
	str r1, [r0]
	str r4, [r0, #4]
	ldr r1, _0803D47C @ =0x8100008E
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r0, #1
_0803D46C:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0803D474: .4byte 0x040000D4
_0803D478: .4byte 0x8000008E
_0803D47C: .4byte 0x8100008E

	thumb_func_start sub_0803D480
sub_0803D480: @ 0x0803D480
	push {r4, lr}
	sub sp, #4
	ldr r0, _0803D4A0 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0803D4A4 @ =0x00012C24
	adds r1, r0, r2
	ldr r2, _0803D4A8 @ =0x00012D40
	adds r3, r0, r2
	ldr r2, _0803D4AC @ =0x00012C20
	adds r4, r0, r2
	ldrb r0, [r4]
	cmp r0, #0
	bne _0803D4B0
	movs r0, #0
	b _0803D4D0
	.align 2, 0
_0803D4A0: .4byte gEwramData
_0803D4A4: .4byte 0x00012C24
_0803D4A8: .4byte 0x00012D40
_0803D4AC: .4byte 0x00012C20
_0803D4B0:
	ldr r0, _0803D4D8 @ =0x040000D4
	str r3, [r0]
	str r1, [r0, #4]
	ldr r1, _0803D4DC @ =0x8000008E
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	movs r2, #0
	strh r2, [r1]
	str r1, [r0]
	str r3, [r0, #4]
	ldr r1, _0803D4E0 @ =0x8100008E
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	strb r2, [r4]
	movs r0, #1
_0803D4D0:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0803D4D8: .4byte 0x040000D4
_0803D4DC: .4byte 0x8000008E
_0803D4E0: .4byte 0x8100008E

	thumb_func_start sub_0803D4E4
sub_0803D4E4: @ 0x0803D4E4
	push {lr}
	cmp r0, #0
	beq _0803D508
	ldr r0, _0803D4FC @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0803D500 @ =0x00012C6C
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, _0803D504 @ =0xFFFE0000
	ands r0, r2
	b _0803D516
	.align 2, 0
_0803D4FC: .4byte gEwramData
_0803D500: .4byte 0x00012C6C
_0803D504: .4byte 0xFFFE0000
_0803D508:
	ldr r0, _0803D51C @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0803D520 @ =0x00012C6C
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, _0803D524 @ =0x0001FFFF
	orrs r0, r2
_0803D516:
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803D51C: .4byte gEwramData
_0803D520: .4byte 0x00012C6C
_0803D524: .4byte 0x0001FFFF

	thumb_func_start sub_0803D528
sub_0803D528: @ 0x0803D528
	ldr r0, _0803D53C @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0803D540 @ =0x00012FE0
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803D53C: .4byte gEwramData
_0803D540: .4byte 0x00012FE0

	thumb_func_start sub_0803D544
sub_0803D544: @ 0x0803D544
	ldr r0, _0803D55C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803D560 @ =0x00012FE8
	adds r2, r0, r1
	subs r1, #4
	adds r0, r0, r1
	ldr r1, [r0]
	str r1, [r2]
	movs r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
_0803D55C: .4byte gEwramData
_0803D560: .4byte 0x00012FE8

	thumb_func_start sub_0803D564
sub_0803D564: @ 0x0803D564
	ldr r0, _0803D578 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0803D57C @ =0x00012FE4
	adds r1, r0, r2
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	bx lr
	.align 2, 0
_0803D578: .4byte gEwramData
_0803D57C: .4byte 0x00012FE4

	thumb_func_start sub_0803D580
sub_0803D580: @ 0x0803D580
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	mov sl, r1
	mov r0, sb
	muls r0, r1, r0
	mov r8, r0
	movs r6, #0
	ldr r7, _0803D61C @ =gEwramData
	ldr r5, _0803D620 @ =0x00012FF0
_0803D59A:
	mov r1, r8
	adds r0, r6, r1
	subs r4, r0, #1
	cmp r4, #0x10
	bgt _0803D62E
	movs r2, #1
	adds r3, r4, #0
	cmp r4, r6
	blt _0803D5D4
	ldr r0, [r7]
	lsls r1, r4, #3
	adds r0, r0, r1
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0803D628
_0803D5BC:
	subs r3, #1
	cmp r3, r6
	blt _0803D5D4
	ldr r0, [r7]
	lsls r1, r3, #3
	adds r0, r0, r1
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0803D5BC
	movs r2, #0
_0803D5D4:
	cmp r2, #0
	beq _0803D628
	adds r3, r6, #0
	cmp r6, r4
	bgt _0803D616
	ldr r5, _0803D61C @ =gEwramData
	ldr r7, _0803D620 @ =0x00012FF0
	mov r8, r7
	movs r0, #1
	mov ip, r0
_0803D5E8:
	ldr r1, [r5]
	lsls r2, r3, #3
	adds r1, r1, r2
	add r1, r8
	ldrb r0, [r1]
	mov r7, ip
	orrs r0, r7
	strb r0, [r1]
	ldr r0, [r5]
	adds r0, r0, r2
	ldr r1, _0803D624 @ =0x00012FF1
	adds r0, r0, r1
	mov r7, sb
	strb r7, [r0]
	ldr r0, [r5]
	adds r0, r0, r2
	adds r1, #1
	adds r0, r0, r1
	mov r7, sl
	strb r7, [r0]
	adds r3, #1
	cmp r3, r4
	ble _0803D5E8
_0803D616:
	adds r0, r6, #0
	b _0803D632
	.align 2, 0
_0803D61C: .4byte gEwramData
_0803D620: .4byte 0x00012FF0
_0803D624: .4byte 0x00012FF1
_0803D628:
	add r6, sb
	cmp r6, #0xf
	ble _0803D59A
_0803D62E:
	movs r0, #1
	rsbs r0, r0, #0
_0803D632:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0803D640
sub_0803D640: @ 0x0803D640
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	mov sl, r1
	mov r0, sb
	muls r0, r1, r0
	mov r8, r0
	ldr r0, _0803D6E8 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _0803D6EC @ =0x00013070
	adds r1, r1, r2
	movs r7, #0
	ldrsh r1, [r1, r7]
	subs r4, r1, #1
	adds r7, r0, #0
	ldr r6, _0803D6F0 @ =0x00012FF0
_0803D666:
	mov r1, r8
	subs r0, r4, r1
	adds r5, r0, #1
	cmp r5, #0
	blt _0803D700
	movs r2, #1
	adds r3, r5, #0
	cmp r5, r4
	bgt _0803D6A0
	ldr r0, [r7]
	lsls r1, r5, #3
	adds r0, r0, r1
	adds r0, r0, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0803D6F8
_0803D688:
	adds r3, #1
	cmp r3, r4
	bgt _0803D6A0
	ldr r0, [r7]
	lsls r1, r3, #3
	adds r0, r0, r1
	adds r0, r0, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0803D688
	movs r2, #0
_0803D6A0:
	cmp r2, #0
	beq _0803D6F8
	adds r3, r5, #0
	cmp r5, r4
	bgt _0803D6E2
	ldr r6, _0803D6E8 @ =gEwramData
	ldr r2, _0803D6F0 @ =0x00012FF0
	mov r8, r2
	movs r7, #1
	mov ip, r7
_0803D6B4:
	ldr r1, [r6]
	lsls r2, r3, #3
	adds r1, r1, r2
	add r1, r8
	ldrb r0, [r1]
	mov r7, ip
	orrs r0, r7
	strb r0, [r1]
	ldr r0, [r6]
	adds r0, r0, r2
	ldr r1, _0803D6F4 @ =0x00012FF1
	adds r0, r0, r1
	mov r7, sb
	strb r7, [r0]
	ldr r0, [r6]
	adds r0, r0, r2
	adds r1, #1
	adds r0, r0, r1
	mov r2, sl
	strb r2, [r0]
	adds r3, #1
	cmp r3, r4
	ble _0803D6B4
_0803D6E2:
	adds r0, r5, #0
	b _0803D704
	.align 2, 0
_0803D6E8: .4byte gEwramData
_0803D6EC: .4byte 0x00013070
_0803D6F0: .4byte 0x00012FF0
_0803D6F4: .4byte 0x00012FF1
_0803D6F8:
	mov r0, sb
	subs r4, r4, r0
	cmp r4, #0
	bge _0803D666
_0803D700:
	movs r0, #1
	rsbs r0, r0, #0
_0803D704:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803D714
sub_0803D714: @ 0x0803D714
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	movs r4, #4
	ldr r5, _0803D7EC @ =gEwramData
	ldr r0, [r5]
	ldr r1, _0803D7F0 @ =0x00012FEC
	adds r0, r0, r1
	ldrh r0, [r0]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0803D734
	movs r4, #8
_0803D734:
	bl sub_0803DA3C
	cmp r0, #0
	bne _0803D740
	lsls r0, r4, #0x11
	lsrs r4, r0, #0x10
_0803D740:
	ldr r0, [r5]
	ldr r2, _0803D7F4 @ =0x00013070
	adds r0, r0, r2
	strh r4, [r0]
	lsls r0, r4, #0x10
	movs r1, #0
	mov r8, r0
	cmp r0, #0
	ble _0803D7A2
	adds r6, r5, #0
	movs r3, #0
_0803D756:
	ldr r2, [r6]
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	lsls r5, r4, #3
	adds r2, r2, r5
	ldr r7, _0803D7F8 @ =0x00012FF0
	adds r2, r2, r7
	ldrb r0, [r2]
	movs r7, #2
	rsbs r7, r7, #0
	adds r1, r7, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, [r6]
	adds r0, r0, r5
	ldr r1, _0803D7FC @ =0x00012FF1
	adds r0, r0, r1
	strb r3, [r0]
	ldr r0, [r6]
	adds r0, r0, r5
	ldr r2, _0803D800 @ =0x00012FF2
	adds r0, r0, r2
	strb r3, [r0]
	adds r0, r4, #0
	str r3, [sp]
	bl sub_0803D8B4
	ldr r1, [r6]
	adds r1, r1, r5
	ldr r7, _0803D804 @ =0x00012FF4
	adds r1, r1, r7
	strh r0, [r1]
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r1, r4, #0x10
	ldr r3, [sp]
	cmp r4, r8
	blt _0803D756
_0803D7A2:
	mov r4, r8
	asrs r0, r4, #0x10
	cmp r0, #0xf
	bgt _0803D7E0
	ldr r5, _0803D7EC @ =gEwramData
	movs r6, #0
_0803D7AE:
	ldr r2, [r5]
	asrs r4, r4, #0x10
	lsls r3, r4, #3
	adds r2, r2, r3
	ldr r0, _0803D7F8 @ =0x00012FF0
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r5]
	adds r0, r0, r3
	ldr r1, _0803D7FC @ =0x00012FF1
	adds r0, r0, r1
	strb r6, [r0]
	ldr r0, [r5]
	adds r0, r0, r3
	ldr r2, _0803D800 @ =0x00012FF2
	adds r0, r0, r2
	strb r6, [r0]
	adds r4, #1
	lsls r4, r4, #0x10
	asrs r0, r4, #0x10
	cmp r0, #0xf
	ble _0803D7AE
_0803D7E0:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803D7EC: .4byte gEwramData
_0803D7F0: .4byte 0x00012FEC
_0803D7F4: .4byte 0x00013070
_0803D7F8: .4byte 0x00012FF0
_0803D7FC: .4byte 0x00012FF1
_0803D800: .4byte 0x00012FF2
_0803D804: .4byte 0x00012FF4

	thumb_func_start sub_0803D808
sub_0803D808: @ 0x0803D808
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	mov ip, r1
	str r2, [sp]
	mov r0, ip
	muls r0, r2, r0
	adds r0, r5, r0
	subs r4, r0, #1
	cmp r4, #0x10
	ble _0803D82C
_0803D826:
	movs r0, #1
	rsbs r0, r0, #0
	b _0803D892
_0803D82C:
	adds r3, r4, #0
	cmp r4, r5
	blt _0803D84E
	ldr r0, _0803D8A4 @ =gEwramData
	ldr r1, [r0]
	lsls r0, r4, #3
	ldr r2, _0803D8A8 @ =0x00012FF0
	adds r0, r0, r2
	adds r1, r0, r1
_0803D83E:
	ldrb r0, [r1]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0803D826
	subs r1, #8
	subs r3, #1
	cmp r3, r5
	bge _0803D83E
_0803D84E:
	adds r3, r5, #0
	cmp r5, r4
	bgt _0803D890
	ldr r6, _0803D8A4 @ =gEwramData
	ldr r7, _0803D8A8 @ =0x00012FF0
	mov sl, r7
	movs r0, #1
	mov sb, r0
	ldr r1, _0803D8AC @ =0x00012FF1
	mov r8, r1
_0803D862:
	ldr r1, [r6]
	lsls r2, r3, #3
	adds r1, r1, r2
	add r1, sl
	ldrb r0, [r1]
	mov r7, sb
	orrs r0, r7
	strb r0, [r1]
	ldr r0, [r6]
	adds r0, r0, r2
	add r0, r8
	mov r1, ip
	strb r1, [r0]
	ldr r0, [r6]
	adds r0, r0, r2
	ldr r2, _0803D8B0 @ =0x00012FF2
	adds r0, r0, r2
	mov r7, sp
	ldrb r7, [r7]
	strb r7, [r0]
	adds r3, #1
	cmp r3, r4
	ble _0803D862
_0803D890:
	adds r0, r5, #0
_0803D892:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803D8A4: .4byte gEwramData
_0803D8A8: .4byte 0x00012FF0
_0803D8AC: .4byte 0x00012FF1
_0803D8B0: .4byte 0x00012FF2

	thumb_func_start sub_0803D8B4
sub_0803D8B4: @ 0x0803D8B4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0803D8F4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803D8F8 @ =0x00012FEC
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	asrs r2, r0, #0x1f
	movs r0, #0x80
	lsls r0, r0, #2
	ands r2, r0
	movs r3, #0x40
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _0803D8FC
	lsrs r0, r1, #1
	ands r0, r4
	cmp r0, #1
	bne _0803D8EA
	movs r3, #0x80
_0803D8EA:
	adds r0, r3, #0
	muls r0, r5, r0
	adds r2, r2, r0
	b _0803D916
	.align 2, 0
_0803D8F4: .4byte gEwramData
_0803D8F8: .4byte 0x00012FEC
_0803D8FC:
	lsrs r0, r1, #1
	ands r0, r4
	cmp r0, #1
	bne _0803D90C
	ldr r1, _0803D908 @ =0x080E2B24
	b _0803D90E
	.align 2, 0
_0803D908: .4byte 0x080E2B24
_0803D90C:
	ldr r1, _0803D920 @ =0x080E2B04
_0803D90E:
	lsls r0, r5, #1
	adds r0, r0, r1
	ldrh r3, [r0]
	adds r2, r2, r3
_0803D916:
	adds r0, r2, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0803D920: .4byte 0x080E2B04

	thumb_func_start sub_0803D924
sub_0803D924: @ 0x0803D924
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	cmp r2, #0xf
	bls _0803D930
	movs r0, #0
	b _0803D994
_0803D930:
	ldr r3, _0803D99C @ =gEwramData
	ldr r0, [r3]
	lsls r1, r2, #3
	adds r0, r0, r1
	ldr r4, _0803D9A0 @ =0x00012FF1
	adds r1, r0, r4
	ldrb r1, [r1]
	adds r4, #1
	adds r0, r0, r4
	ldrb r0, [r0]
	muls r0, r1, r0
	lsls r4, r2, #0x10
	asrs r1, r4, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r2, r0
	cmp r1, r0
	bge _0803D992
	adds r5, r3, #0
	movs r1, #2
	rsbs r1, r1, #0
	mov ip, r1
	movs r6, #0
	adds r7, r0, #0
_0803D960:
	ldr r1, [r5]
	asrs r4, r4, #0x10
	lsls r3, r4, #3
	adds r1, r1, r3
	ldr r0, _0803D9A4 @ =0x00012FF0
	adds r1, r1, r0
	ldrb r2, [r1]
	mov r0, ip
	ands r0, r2
	strb r0, [r1]
	ldr r0, [r5]
	adds r0, r0, r3
	ldr r1, _0803D9A0 @ =0x00012FF1
	adds r0, r0, r1
	strb r6, [r0]
	ldr r0, [r5]
	adds r0, r0, r3
	adds r1, #1
	adds r0, r0, r1
	strb r6, [r0]
	adds r4, #1
	lsls r4, r4, #0x10
	asrs r0, r4, #0x10
	cmp r0, r7
	blt _0803D960
_0803D992:
	movs r0, #1
_0803D994:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803D99C: .4byte gEwramData
_0803D9A0: .4byte 0x00012FF1
_0803D9A4: .4byte 0x00012FF0

	thumb_func_start sub_0803D9A8
sub_0803D9A8: @ 0x0803D9A8
	push {lr}
	movs r0, #1
	bl sub_0803D9C4
	movs r0, #0
	bl sub_0803D9EC
	movs r0, #0
	bl sub_0803DA14
	bl sub_0803D714
	pop {r0}
	bx r0

	thumb_func_start sub_0803D9C4
sub_0803D9C4: @ 0x0803D9C4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0803D9E0 @ =gEwramData
	ldr r3, [r1]
	ldr r1, _0803D9E4 @ =0x00012FEC
	adds r3, r3, r1
	ldrh r2, [r3]
	ldr r1, _0803D9E8 @ =0x0000FFFE
	ands r1, r2
	movs r2, #1
	ands r0, r2
	orrs r1, r0
	strh r1, [r3]
	bx lr
	.align 2, 0
_0803D9E0: .4byte gEwramData
_0803D9E4: .4byte 0x00012FEC
_0803D9E8: .4byte 0x0000FFFE

	thumb_func_start sub_0803D9EC
sub_0803D9EC: @ 0x0803D9EC
	lsls r0, r0, #0x10
	ldr r1, _0803DA08 @ =gEwramData
	ldr r3, [r1]
	ldr r1, _0803DA0C @ =0x00012FEC
	adds r3, r3, r1
	ldrh r2, [r3]
	ldr r1, _0803DA10 @ =0x0000FFFD
	ands r1, r2
	lsrs r0, r0, #0xf
	movs r2, #2
	ands r0, r2
	orrs r1, r0
	strh r1, [r3]
	bx lr
	.align 2, 0
_0803DA08: .4byte gEwramData
_0803DA0C: .4byte 0x00012FEC
_0803DA10: .4byte 0x0000FFFD

	thumb_func_start sub_0803DA14
sub_0803DA14: @ 0x0803DA14
	lsls r0, r0, #0x10
	ldr r1, _0803DA30 @ =gEwramData
	ldr r3, [r1]
	ldr r1, _0803DA34 @ =0x00012FEC
	adds r3, r3, r1
	ldrh r2, [r3]
	ldr r1, _0803DA38 @ =0x0000FFFB
	ands r1, r2
	lsrs r0, r0, #0xe
	movs r2, #4
	ands r0, r2
	orrs r1, r0
	strh r1, [r3]
	bx lr
	.align 2, 0
_0803DA30: .4byte gEwramData
_0803DA34: .4byte 0x00012FEC
_0803DA38: .4byte 0x0000FFFB

	thumb_func_start sub_0803DA3C
sub_0803DA3C: @ 0x0803DA3C
	ldr r0, _0803DA50 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803DA54 @ =0x00012FEC
	adds r0, r0, r1
	ldrh r0, [r0]
	lsrs r0, r0, #2
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_0803DA50: .4byte gEwramData
_0803DA54: .4byte 0x00012FEC

	thumb_func_start sub_0803DA58
sub_0803DA58: @ 0x0803DA58
	push {lr}
	cmp r0, #1
	blt _0803DA74
	cmp r0, #2
	ble _0803DA6E
	cmp r0, #4
	bne _0803DA74
	movs r0, #4
	bl sub_0803D580
	b _0803DA72
_0803DA6E:
	bl sub_0803D640
_0803DA72:
	adds r2, r0, #0
_0803DA74:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803DA7C
sub_0803DA7C: @ 0x0803DA7C
	push {r4, lr}
	ldr r3, _0803DAAC @ =gEwramData
	ldr r3, [r3]
	lsls r0, r0, #3
	adds r0, r3, r0
	ldr r4, _0803DAB0 @ =0x00012FF4
	adds r0, r0, r4
	subs r4, #8
	adds r3, r3, r4
	ldrh r3, [r3]
	lsrs r3, r3, #1
	movs r4, #1
	ands r3, r4
	lsrs r1, r1, #3
	lsls r1, r3
	lsrs r2, r2, #3
	lsls r2, r2, #5
	adds r1, r1, r2
	ldrh r0, [r0]
	adds r1, r1, r0
	adds r0, r1, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0803DAAC: .4byte gEwramData
_0803DAB0: .4byte 0x00012FF4

	thumb_func_start sub_0803DAB4
sub_0803DAB4: @ 0x0803DAB4
	push {lr}
	cmp r0, #1
	blt _0803DADA
	cmp r0, #2
	ble _0803DACA
	cmp r0, #4
	bne _0803DADA
	movs r0, #4
	bl sub_0803D580
	b _0803DAD8
_0803DACA:
	cmp r2, #0
	bne _0803DAD4
	bl sub_0803D580
	b _0803DAD8
_0803DAD4:
	bl sub_0803D640
_0803DAD8:
	adds r3, r0, #0
_0803DADA:
	adds r0, r3, #0
	pop {r1}
	bx r1

	thumb_func_start sub_0803DAE0
sub_0803DAE0: @ 0x0803DAE0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r3, r0, #0
	ldr r6, _0803DB04 @ =gEwramData
	ldr r0, [r6]
	ldr r4, _0803DB08 @ =0x00013070
	adds r0, r0, r4
	ldrh r4, [r0]
	adds r0, r1, #0
	muls r0, r2, r0
	adds r5, r3, r0
	cmp r3, #0xf
	bls _0803DB0C
	movs r0, #0
	b _0803DB52
	.align 2, 0
_0803DB04: .4byte gEwramData
_0803DB08: .4byte 0x00013070
_0803DB0C:
	cmp r5, r4
	ble _0803DB12
	adds r5, r4, #0
_0803DB12:
	adds r4, r3, #0
	cmp r4, r5
	bge _0803DB50
	movs r0, #2
	rsbs r0, r0, #0
	mov sb, r0
	movs r7, #0
	ldr r1, _0803DB60 @ =0x00012FF0
	mov r8, r1
	ldr r0, _0803DB64 @ =0x00012FF1
	mov ip, r0
_0803DB28:
	ldr r1, [r6]
	lsls r3, r4, #3
	adds r1, r1, r3
	add r1, r8
	ldrb r2, [r1]
	mov r0, sb
	ands r0, r2
	strb r0, [r1]
	ldr r0, [r6]
	adds r0, r0, r3
	add r0, ip
	strb r7, [r0]
	ldr r0, [r6]
	adds r0, r0, r3
	ldr r1, _0803DB68 @ =0x00012FF2
	adds r0, r0, r1
	strb r7, [r0]
	adds r4, #1
	cmp r4, r5
	blt _0803DB28
_0803DB50:
	movs r0, #1
_0803DB52:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803DB60: .4byte 0x00012FF0
_0803DB64: .4byte 0x00012FF1
_0803DB68: .4byte 0x00012FF2

	thumb_func_start sub_0803DB6C
sub_0803DB6C: @ 0x0803DB6C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	movs r2, #0
	str r2, [sp]
	ldr r0, _0803DBF4 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r3, _0803DBF8 @ =0x03000C58
	str r3, [r0, #4]
	ldr r1, _0803DBFC @ =0x85000200
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r2, _0803DC00 @ =0x03000058
	str r2, [r0, #4]
	ldr r1, _0803DC04 @ =0x85000300
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r4, #0
	ldr r0, _0803DC08 @ =0x030019D8
	mov ip, r0
	ldr r7, _0803DC0C @ =0xFFFFFE00
	adds r2, #8
	adds r3, #2
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r6, r1, #0
	ldr r0, _0803DC10 @ =0x0000FFFF
	adds r5, r0, #0
_0803DBAA:
	ldrh r0, [r3]
	adds r1, r7, #0
	ands r1, r0
	orrs r1, r6
	strh r1, [r3]
	ldrh r0, [r2]
	orrs r0, r5
	strh r0, [r2]
	strh r4, [r2, #2]
	adds r2, #0xc
	adds r3, #8
	adds r4, #1
	cmp r4, #0xff
	ble _0803DBAA
	ldr r1, _0803DC10 @ =0x0000FFFF
	adds r2, r1, #0
	ldr r1, _0803DC14 @ =0x03001958
	movs r4, #0x1f
_0803DBCE:
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
	ldrh r0, [r1, #2]
	orrs r0, r2
	strh r0, [r1, #2]
	adds r1, #4
	subs r4, #1
	cmp r4, #0
	bge _0803DBCE
	movs r0, #0
	mov r1, ip
	strh r0, [r1]
	strh r0, [r1, #2]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803DBF4: .4byte 0x040000D4
_0803DBF8: .4byte 0x03000C58
_0803DBFC: .4byte 0x85000200
_0803DC00: .4byte 0x03000058
_0803DC04: .4byte 0x85000300
_0803DC08: .4byte 0x030019D8
_0803DC0C: .4byte 0xFFFFFE00
_0803DC10: .4byte 0x0000FFFF
_0803DC14: .4byte 0x03001958

	thumb_func_start sub_0803DC18
sub_0803DC18: @ 0x0803DC18
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r4, _0803DD08 @ =0x030019D8
	strb r0, [r4, #6]
	strb r1, [r4, #7]
	strb r2, [r4, #8]
	strb r3, [r4, #9]
	ldrb r1, [r4, #6]
	adds r6, r1, #0
	ldrb r2, [r4, #7]
	ldrb r5, [r4, #8]
	ldrb r3, [r4, #9]
	movs r0, #0
	cmp r1, r2
	blo _0803DC38
	movs r0, #1
_0803DC38:
	cmp r1, r5
	blo _0803DC3E
	adds r0, #1
_0803DC3E:
	cmp r1, r3
	blo _0803DC44
	adds r0, #1
_0803DC44:
	strb r0, [r4, #0xa]
	movs r0, #0
	cmp r2, r1
	blo _0803DC4E
	movs r0, #1
_0803DC4E:
	cmp r2, r5
	blo _0803DC54
	adds r0, #1
_0803DC54:
	cmp r2, r3
	blo _0803DC5A
	adds r0, #1
_0803DC5A:
	strb r0, [r4, #0xb]
	movs r0, #0
	cmp r5, r1
	blo _0803DC64
	movs r0, #1
_0803DC64:
	cmp r5, r2
	blo _0803DC6A
	adds r0, #1
_0803DC6A:
	cmp r5, r3
	blo _0803DC70
	adds r0, #1
_0803DC70:
	strb r0, [r4, #0xc]
	movs r0, #0
	cmp r3, r6
	blo _0803DC7A
	movs r0, #1
_0803DC7A:
	cmp r3, r2
	blo _0803DC80
	adds r0, #1
_0803DC80:
	cmp r3, r5
	blo _0803DC86
	adds r0, #1
_0803DC86:
	strb r0, [r4, #0xd]
	movs r0, #0x1f
	str r0, [sp, #0x10]
	movs r3, #3
	ldr r5, _0803DD0C @ =0x030019E2
	subs r6, r5, #4
_0803DC92:
	lsls r0, r3, #2
	mov r2, sp
	adds r1, r2, r0
	adds r0, r3, #1
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	str r0, [r1]
	movs r2, #0
	subs r4, r3, #1
_0803DCA6:
	adds r0, r2, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r3
	bne _0803DCBC
	adds r0, r2, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [r1]
_0803DCBC:
	adds r2, #1
	cmp r2, #3
	ble _0803DCA6
	adds r3, r4, #0
	cmp r3, #0
	bge _0803DC92
	movs r3, #0
	movs r4, #0
	ldr r7, _0803DD10 @ =0x030019E6
	mov r2, sp
	movs r5, #0
_0803DCD2:
	ldr r0, [r2]
	adds r6, r3, #1
	cmp r3, r0
	ble _0803DCF4
	cmp r4, #2
	bgt _0803DCF4
	mov r0, sp
	adds r1, r5, r0
_0803DCE2:
	adds r1, #4
	adds r2, #4
	adds r5, #4
	adds r4, #1
	ldr r0, [r1]
	cmp r3, r0
	ble _0803DCF4
	cmp r4, #2
	ble _0803DCE2
_0803DCF4:
	adds r0, r3, r7
	strb r4, [r0]
	adds r3, r6, #0
	cmp r3, #0x1f
	ble _0803DCD2
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803DD08: .4byte 0x030019D8
_0803DD0C: .4byte 0x030019E2
_0803DD10: .4byte 0x030019E6

	thumb_func_start sub_0803DD14
sub_0803DD14: @ 0x0803DD14
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r5, _0803DE04 @ =0x030019D8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r5, #6
	adds r1, r1, r2
	strb r0, [r1]
	ldrb r1, [r5, #6]
	adds r6, r1, #0
	ldrb r2, [r5, #7]
	ldrb r4, [r5, #8]
	ldrb r3, [r5, #9]
	movs r0, #0
	cmp r1, r2
	blo _0803DD36
	movs r0, #1
_0803DD36:
	cmp r1, r4
	blo _0803DD3C
	adds r0, #1
_0803DD3C:
	cmp r1, r3
	blo _0803DD42
	adds r0, #1
_0803DD42:
	strb r0, [r5, #0xa]
	movs r0, #0
	cmp r2, r1
	blo _0803DD4C
	movs r0, #1
_0803DD4C:
	cmp r2, r4
	blo _0803DD52
	adds r0, #1
_0803DD52:
	cmp r2, r3
	blo _0803DD58
	adds r0, #1
_0803DD58:
	strb r0, [r5, #0xb]
	movs r0, #0
	cmp r4, r1
	blo _0803DD62
	movs r0, #1
_0803DD62:
	cmp r4, r2
	blo _0803DD68
	adds r0, #1
_0803DD68:
	cmp r4, r3
	blo _0803DD6E
	adds r0, #1
_0803DD6E:
	strb r0, [r5, #0xc]
	movs r0, #0
	cmp r3, r6
	blo _0803DD78
	movs r0, #1
_0803DD78:
	cmp r3, r2
	blo _0803DD7E
	adds r0, #1
_0803DD7E:
	cmp r3, r4
	blo _0803DD84
	adds r0, #1
_0803DD84:
	strb r0, [r5, #0xd]
	movs r0, #0x1f
	str r0, [sp, #0x10]
	movs r3, #3
	ldr r5, _0803DE08 @ =0x030019E2
	subs r6, r5, #4
_0803DD90:
	lsls r0, r3, #2
	mov r2, sp
	adds r1, r2, r0
	adds r0, r3, #1
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	str r0, [r1]
	movs r2, #0
	subs r4, r3, #1
_0803DDA4:
	adds r0, r2, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r3
	bne _0803DDBA
	adds r0, r2, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [r1]
_0803DDBA:
	adds r2, #1
	cmp r2, #3
	ble _0803DDA4
	adds r3, r4, #0
	cmp r3, #0
	bge _0803DD90
	movs r3, #0
	movs r4, #0
	ldr r7, _0803DE0C @ =0x030019E6
	mov r2, sp
	movs r5, #0
_0803DDD0:
	ldr r0, [r2]
	adds r6, r3, #1
	cmp r3, r0
	ble _0803DDF2
	cmp r4, #2
	bgt _0803DDF2
	mov r0, sp
	adds r1, r5, r0
_0803DDE0:
	adds r1, #4
	adds r2, #4
	adds r5, #4
	adds r4, #1
	ldr r0, [r1]
	cmp r3, r0
	ble _0803DDF2
	cmp r4, #2
	ble _0803DDE0
_0803DDF2:
	adds r0, r3, r7
	strb r4, [r0]
	adds r3, r6, #0
	cmp r3, #0x1f
	ble _0803DDD0
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803DE04: .4byte 0x030019D8
_0803DE08: .4byte 0x030019E2
_0803DE0C: .4byte 0x030019E6

	thumb_func_start sub_0803DE10
sub_0803DE10: @ 0x0803DE10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r5, _0803DF44 @ =0x03000C58
	movs r0, #0
	mov ip, r0
	ldr r0, _0803DF48 @ =0x03001958
	movs r1, #0
	ldrsh r4, [r0, r1]
	movs r1, #1
	rsbs r1, r1, #0
	adds r7, r0, #0
	cmp r4, r1
	beq _0803DE70
	ldr r2, _0803DF4C @ =0x03000058
	mov sl, r2
	movs r0, #3
	mov r8, r0
	movs r2, #0xd
	rsbs r2, r2, #0
	mov sb, r2
	adds r6, r1, #0
_0803DE42:
	lsls r2, r4, #1
	adds r2, r2, r4
	lsls r2, r2, #2
	add r2, sl
	ldr r4, _0803DF50 @ =0x030019E6
	ldrb r1, [r4]
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #2
	ldrb r3, [r2, #5]
	mov r0, sb
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #5]
	ldr r0, [r2]
	ldr r1, [r2, #4]
	stm r5!, {r0, r1}
	movs r1, #8
	ldrsh r4, [r2, r1]
	movs r2, #1
	add ip, r2
	cmp r4, r6
	bne _0803DE42
_0803DE70:
	ldr r0, _0803DF54 @ =0x0000FFFF
	strh r0, [r7, #2]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r7]
	ldr r4, _0803DF58 @ =gEwramData
	ldr r0, [r4]
	ldr r2, _0803DF5C @ =0x0000FEC0
	adds r1, r0, r2
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	str r1, [sp]
	ldr r4, _0803DF60 @ =0x0000FEC1
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #4]
	movs r6, #1
_0803DE98:
	lsls r1, r6, #2
	ldr r2, _0803DF48 @ =0x03001958
	adds r0, r1, r2
	movs r2, #0
	ldrsh r4, [r0, r2]
	adds r7, r1, #0
	adds r0, r6, #1
	mov r8, r0
	movs r1, #1
	rsbs r1, r1, #0
	cmp r4, r1
	beq _0803DF14
	movs r2, #3
	mov sl, r2
	ldr r0, _0803DF64 @ =0xFFFFFE00
	mov sb, r0
_0803DEB8:
	lsls r3, r4, #1
	adds r3, r3, r4
	lsls r3, r3, #2
	ldr r1, _0803DF4C @ =0x03000058
	adds r3, r3, r1
	ldr r2, _0803DF50 @ =0x030019E6
	adds r0, r2, r6
	ldrb r1, [r0]
	mov r4, sl
	ands r1, r4
	lsls r1, r1, #2
	ldrb r2, [r3, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r0, [r3]
	ldr r1, [r3, #4]
	str r0, [r5]
	str r1, [r5, #4]
	ldrh r2, [r5, #2]
	lsls r1, r2, #0x17
	lsrs r1, r1, #0x17
	ldr r0, [sp]
	subs r1, r1, r0
	ldr r4, _0803DF68 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	mov r0, sb
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, #2]
	ldrb r0, [r5]
	ldr r1, [sp, #4]
	subs r0, r0, r1
	strb r0, [r5]
	adds r5, #8
	movs r2, #8
	ldrsh r4, [r3, r2]
	movs r0, #1
	add ip, r0
	movs r1, #1
	rsbs r1, r1, #0
	cmp r4, r1
	bne _0803DEB8
_0803DF14:
	ldr r2, _0803DF48 @ =0x03001958
	adds r0, r7, r2
	ldrh r1, [r0, #2]
	ldr r4, _0803DF54 @ =0x0000FFFF
	orrs r1, r4
	strh r1, [r0, #2]
	ldrh r1, [r0]
	orrs r1, r4
	strh r1, [r0]
	mov r6, r8
	cmp r6, #0x1f
	ble _0803DE98
	mov r0, ip
	ldr r1, _0803DF6C @ =0x030019D8
	str r0, [r1, #0x38]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803DF44: .4byte 0x03000C58
_0803DF48: .4byte 0x03001958
_0803DF4C: .4byte 0x03000058
_0803DF50: .4byte 0x030019E6
_0803DF54: .4byte 0x0000FFFF
_0803DF58: .4byte gEwramData
_0803DF5C: .4byte 0x0000FEC0
_0803DF60: .4byte 0x0000FEC1
_0803DF64: .4byte 0xFFFFFE00
_0803DF68: .4byte 0x000001FF
_0803DF6C: .4byte 0x030019D8

	thumb_func_start sub_0803DF70
sub_0803DF70: @ 0x0803DF70
	push {r4, r5, r6, lr}
	movs r6, #0
	ldr r4, _0803DFD0 @ =0x03004F70
	ldr r0, _0803DFD4 @ =0x03000058
	ldr r1, _0803DFD8 @ =0x03000C58
	ldr r2, _0803DFDC @ =0x03001958
	ldr r5, _0803DFE0 @ =0x030019D8
	adds r3, r5, #0
	bl _call_via_r4
	movs r1, #2
	ldrsh r0, [r5, r1]
	cmp r0, #0x80
	ble _0803DF9E
	ldrh r1, [r5, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803DF9E
	movs r1, #2
	ldrsh r0, [r5, r1]
	adds r6, r0, #0
	subs r6, #0x80
_0803DF9E:
	lsls r1, r6, #3
	ldr r0, _0803DFD8 @ =0x03000C58
	adds r1, r1, r0
	ldr r2, _0803DFE4 @ =0x03001458
	movs r3, #0x1f
_0803DFA8:
	ldrh r0, [r2, #0x20]
	strh r0, [r1, #6]
	adds r1, #8
	ldrh r0, [r2, #0x22]
	strh r0, [r1, #6]
	adds r1, #8
	ldrh r0, [r2, #0x24]
	strh r0, [r1, #6]
	adds r1, #8
	ldrh r0, [r2, #0x26]
	strh r0, [r1, #6]
	adds r1, #8
	adds r2, #0x28
	subs r3, #1
	cmp r3, #0
	bge _0803DFA8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803DFD0: .4byte 0x03004F70
_0803DFD4: .4byte 0x03000058
_0803DFD8: .4byte 0x03000C58
_0803DFDC: .4byte 0x03001958
_0803DFE0: .4byte 0x030019D8
_0803DFE4: .4byte 0x03001458

	thumb_func_start sub_0803DFE8
sub_0803DFE8: @ 0x0803DFE8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r4, [sp, #0x1c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r4, #0x1f
	bhi _0803E046
	ldr r2, _0803E054 @ =0x03001458
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r4, r0, r2
	movs r3, #0
	str r3, [r4]
	adds r1, r2, #4
	adds r1, r0, r1
	movs r5, #0x80
	lsls r5, r5, #9
	str r5, [r1]
	adds r1, r2, #0
	adds r1, #8
	adds r1, r0, r1
	str r5, [r1]
	strh r3, [r4, #0xc]
	strh r3, [r4, #0xe]
	adds r2, #0x10
	adds r0, r0, r2
	bl sub_0803E958
	mov r0, sb
	strh r0, [r4, #0x20]
	mov r0, r8
	strh r0, [r4, #0x22]
	strh r7, [r4, #0x24]
	strh r6, [r4, #0x26]
_0803E046:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803E054: .4byte 0x03001458

	thumb_func_start sub_0803E058
sub_0803E058: @ 0x0803E058
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	adds r0, r5, #0
	bl sub_080009E4
	str r0, [sp, #4]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r5, r1
	bl sub_080009E4
	mov sb, r0
	mov r2, r8
	cmp r2, #0x1f
	bls _0803E09C
	b _0803E222
_0803E09C:
	ldr r2, _0803E0EC @ =0x03001458
	mov r4, r8
	lsls r4, r4, #2
	str r4, [sp, #8]
	adds r0, r4, #0
	add r0, r8
	lsls r0, r0, #3
	adds r3, r0, r2
	str r5, [r3]
	adds r1, r2, #4
	adds r1, r0, r1
	str r6, [r1]
	adds r1, r2, #0
	adds r1, #8
	adds r1, r0, r1
	str r7, [r1]
	mov r1, sp
	ldrh r1, [r1]
	strh r1, [r3, #0xc]
	mov r4, sl
	strh r4, [r3, #0xe]
	adds r2, #0x10
	adds r0, r0, r2
	adds r1, r5, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_0803E968
	movs r0, #0x80
	lsls r0, r0, #3
	ldr r1, [sp, #8]
	mov sl, r1
	cmp r6, r0
	ble _0803E0F0
	adds r0, r6, #0
	bl sub_0803E8FC
	adds r4, r0, #0
	b _0803E0F2
	.align 2, 0
_0803E0EC: .4byte 0x03001458
_0803E0F0:
	ldr r4, _0803E104 @ =0x007FFFFF
_0803E0F2:
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r7, r0
	ble _0803E108
	adds r0, r7, #0
	bl sub_0803E8FC
	adds r5, r0, #0
	b _0803E10A
	.align 2, 0
_0803E104: .4byte 0x007FFFFF
_0803E108:
	ldr r5, _0803E130 @ =0x007FFFFF
_0803E10A:
	ldr r0, _0803E134 @ =0x03001458
	mov r1, sl
	add r1, r8
	lsls r1, r1, #3
	adds r6, r1, r0
	mov r0, sb
	adds r1, r4, #0
	bl sub_0803E86C
	cmp r0, #0
	bge _0803E138
	mov r0, sb
	adds r1, r4, #0
	bl sub_0803E86C
	rsbs r0, r0, #0
	asrs r0, r0, #8
	rsbs r0, r0, #0
	b _0803E142
	.align 2, 0
_0803E130: .4byte 0x007FFFFF
_0803E134: .4byte 0x03001458
_0803E138:
	mov r0, sb
	adds r1, r4, #0
	bl sub_0803E86C
	lsrs r0, r0, #8
_0803E142:
	strh r0, [r6, #0x20]
	ldr r0, _0803E16C @ =0x03001458
	mov r1, sl
	add r1, r8
	lsls r1, r1, #3
	adds r6, r1, r0
	ldr r0, [sp, #4]
	adds r1, r4, #0
	bl sub_0803E86C
	cmp r0, #0
	bge _0803E170
	ldr r0, [sp, #4]
	adds r1, r4, #0
	bl sub_0803E86C
	rsbs r0, r0, #0
	asrs r0, r0, #8
	rsbs r0, r0, #0
	b _0803E17A
	.align 2, 0
_0803E16C: .4byte 0x03001458
_0803E170:
	ldr r0, [sp, #4]
	adds r1, r4, #0
	bl sub_0803E86C
	lsrs r0, r0, #8
_0803E17A:
	strh r0, [r6, #0x22]
	ldr r0, _0803E1A8 @ =0x03001458
	mov r1, sl
	add r1, r8
	lsls r1, r1, #3
	adds r6, r1, r0
	ldr r2, [sp, #4]
	rsbs r4, r2, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0803E86C
	cmp r0, #0
	bge _0803E1AC
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0803E86C
	rsbs r0, r0, #0
	asrs r0, r0, #8
	rsbs r0, r0, #0
	b _0803E1B6
	.align 2, 0
_0803E1A8: .4byte 0x03001458
_0803E1AC:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0803E86C
	lsrs r0, r0, #8
_0803E1B6:
	strh r0, [r6, #0x24]
	ldr r0, _0803E1E0 @ =0x03001458
	mov r1, sl
	add r1, r8
	lsls r1, r1, #3
	adds r4, r1, r0
	mov r0, sb
	adds r1, r5, #0
	bl sub_0803E86C
	cmp r0, #0
	bge _0803E1E4
	mov r0, sb
	adds r1, r5, #0
	bl sub_0803E86C
	rsbs r0, r0, #0
	asrs r0, r0, #8
	rsbs r0, r0, #0
	b _0803E1EE
	.align 2, 0
_0803E1E0: .4byte 0x03001458
_0803E1E4:
	mov r0, sb
	adds r1, r5, #0
	bl sub_0803E86C
	lsrs r0, r0, #8
_0803E1EE:
	strh r0, [r4, #0x26]
	ldr r0, _0803E234 @ =0x03001458
	mov r1, sl
	add r1, r8
	lsls r1, r1, #3
	adds r1, r1, r0
	movs r4, #0xc
	ldrsh r0, [r1, r4]
	cmp r0, #0
	beq _0803E20E
	ldrh r0, [r1, #0x20]
	rsbs r0, r0, #0
	strh r0, [r1, #0x20]
	ldrh r0, [r1, #0x22]
	rsbs r0, r0, #0
	strh r0, [r1, #0x22]
_0803E20E:
	movs r2, #0xe
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _0803E222
	ldrh r0, [r1, #0x24]
	rsbs r0, r0, #0
	strh r0, [r1, #0x24]
	ldrh r0, [r1, #0x26]
	rsbs r0, r0, #0
	strh r0, [r1, #0x26]
_0803E222:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803E234: .4byte 0x03001458

	thumb_func_start sub_0803E238
sub_0803E238: @ 0x0803E238
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x34]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	adds r0, r5, #0
	bl sub_080009E4
	mov sl, r0
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r5, r1
	bl sub_080009E4
	mov sb, r0
	mov r2, r8
	cmp r2, #0x1f
	bls _0803E27C
	b _0803E422
_0803E27C:
	ldr r2, _0803E2CC @ =0x03001458
	mov r4, r8
	lsls r4, r4, #2
	str r4, [sp, #0xc]
	adds r0, r4, #0
	add r0, r8
	lsls r0, r0, #3
	adds r3, r0, r2
	str r5, [r3]
	adds r1, r2, #4
	adds r1, r0, r1
	str r6, [r1]
	adds r1, r2, #0
	adds r1, #8
	adds r1, r0, r1
	str r7, [r1]
	mov r1, sp
	ldrh r1, [r1]
	strh r1, [r3, #0xc]
	mov r4, sp
	ldrh r4, [r4, #4]
	strh r4, [r3, #0xe]
	adds r2, #0x10
	adds r0, r0, r2
	adds r1, r5, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_0803E968
	movs r0, #0x80
	lsls r0, r0, #3
	ldr r1, [sp, #0xc]
	str r1, [sp, #8]
	cmp r6, r0
	ble _0803E2D0
	adds r0, r6, #0
	bl sub_0803E8FC
	adds r5, r0, #0
	b _0803E2D2
	.align 2, 0
_0803E2CC: .4byte 0x03001458
_0803E2D0:
	ldr r5, _0803E2E4 @ =0x007FFFFF
_0803E2D2:
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r7, r0
	ble _0803E2E8
	adds r0, r7, #0
	bl sub_0803E8FC
	adds r6, r0, #0
	b _0803E2EA
	.align 2, 0
_0803E2E4: .4byte 0x007FFFFF
_0803E2E8:
	ldr r6, _0803E314 @ =0x007FFFFF
_0803E2EA:
	ldr r0, _0803E318 @ =0x03001458
	ldr r1, [sp, #8]
	add r1, r8
	lsls r1, r1, #3
	adds r7, r1, r0
	ldr r2, _0803E31C @ =0xFFFFF800
	adds r4, r5, r2
	mov r0, sb
	adds r1, r4, #0
	bl sub_0803E86C
	cmp r0, #0
	bge _0803E320
	mov r0, sb
	adds r1, r4, #0
	bl sub_0803E86C
	rsbs r0, r0, #0
	asrs r0, r0, #8
	rsbs r0, r0, #0
	b _0803E32A
	.align 2, 0
_0803E314: .4byte 0x007FFFFF
_0803E318: .4byte 0x03001458
_0803E31C: .4byte 0xFFFFF800
_0803E320:
	mov r0, sb
	adds r1, r4, #0
	bl sub_0803E86C
	lsrs r0, r0, #8
_0803E32A:
	strh r0, [r7, #0x20]
	ldr r0, _0803E358 @ =0x03001458
	ldr r1, [sp, #8]
	add r1, r8
	lsls r1, r1, #3
	adds r7, r1, r0
	ldr r0, _0803E35C @ =0xFFFFF800
	adds r4, r5, r0
	mov r0, sl
	adds r1, r4, #0
	bl sub_0803E86C
	cmp r0, #0
	bge _0803E360
	mov r0, sl
	adds r1, r4, #0
	bl sub_0803E86C
	rsbs r0, r0, #0
	asrs r0, r0, #8
	rsbs r0, r0, #0
	b _0803E36A
	.align 2, 0
_0803E358: .4byte 0x03001458
_0803E35C: .4byte 0xFFFFF800
_0803E360:
	mov r0, sl
	adds r1, r4, #0
	bl sub_0803E86C
	lsrs r0, r0, #8
_0803E36A:
	strh r0, [r7, #0x22]
	ldr r0, _0803E39C @ =0x03001458
	ldr r1, [sp, #8]
	add r1, r8
	lsls r1, r1, #3
	adds r7, r1, r0
	mov r1, sl
	rsbs r4, r1, #0
	ldr r2, _0803E3A0 @ =0xFFFFF800
	adds r5, r6, r2
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0803E86C
	cmp r0, #0
	bge _0803E3A4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0803E86C
	rsbs r0, r0, #0
	asrs r0, r0, #8
	rsbs r0, r0, #0
	b _0803E3AE
	.align 2, 0
_0803E39C: .4byte 0x03001458
_0803E3A0: .4byte 0xFFFFF800
_0803E3A4:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0803E86C
	lsrs r0, r0, #8
_0803E3AE:
	strh r0, [r7, #0x24]
	ldr r0, _0803E3DC @ =0x03001458
	ldr r1, [sp, #8]
	add r1, r8
	lsls r1, r1, #3
	adds r4, r1, r0
	ldr r0, _0803E3E0 @ =0xFFFFF800
	adds r5, r6, r0
	mov r0, sb
	adds r1, r5, #0
	bl sub_0803E86C
	cmp r0, #0
	bge _0803E3E4
	mov r0, sb
	adds r1, r5, #0
	bl sub_0803E86C
	rsbs r0, r0, #0
	asrs r0, r0, #8
	rsbs r0, r0, #0
	b _0803E3EE
	.align 2, 0
_0803E3DC: .4byte 0x03001458
_0803E3E0: .4byte 0xFFFFF800
_0803E3E4:
	mov r0, sb
	adds r1, r5, #0
	bl sub_0803E86C
	lsrs r0, r0, #8
_0803E3EE:
	strh r0, [r4, #0x26]
	ldr r0, _0803E434 @ =0x03001458
	ldr r1, [sp, #8]
	add r1, r8
	lsls r1, r1, #3
	adds r1, r1, r0
	movs r2, #0xc
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _0803E40E
	ldrh r0, [r1, #0x20]
	rsbs r0, r0, #0
	strh r0, [r1, #0x20]
	ldrh r0, [r1, #0x22]
	rsbs r0, r0, #0
	strh r0, [r1, #0x22]
_0803E40E:
	movs r4, #0xe
	ldrsh r0, [r1, r4]
	cmp r0, #0
	beq _0803E422
	ldrh r0, [r1, #0x24]
	rsbs r0, r0, #0
	strh r0, [r1, #0x24]
	ldrh r0, [r1, #0x26]
	rsbs r0, r0, #0
	strh r0, [r1, #0x26]
_0803E422:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803E434: .4byte 0x03001458

	thumb_func_start sub_0803E438
sub_0803E438: @ 0x0803E438
	push {lr}
	ldr r1, _0803E470 @ =0x030019D8
	movs r0, #0
	strh r0, [r1, #4]
	bl sub_0803DB6C
	bl sub_0803E480
	bl sub_0803E5F4
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	movs r3, #0x1f
	bl sub_0803DC18
	movs r0, #8
	movs r1, #0x18
	bl sub_0803E618
	ldr r0, _0803E474 @ =sub_080439A8
	ldr r1, _0803E478 @ =0x03004F70
	ldr r2, _0803E47C @ =0x04000080
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_0803E470: .4byte 0x030019D8
_0803E474: .4byte sub_080439A8
_0803E478: .4byte 0x03004F70
_0803E47C: .4byte 0x04000080

	thumb_func_start sub_0803E480
sub_0803E480: @ 0x0803E480
	push {r4, r5, lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r1, _0803E4B4 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r2, _0803E4B8 @ =0x03001458
	str r2, [r1, #4]
	ldr r0, _0803E4BC @ =0x85000140
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r5, r2, #0
	adds r5, #0x10
	movs r4, #0x1f
_0803E49E:
	adds r0, r5, #0
	bl sub_0803E958
	adds r5, #0x28
	subs r4, #1
	cmp r4, #0
	bge _0803E49E
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803E4B4: .4byte 0x040000D4
_0803E4B8: .4byte 0x03001458
_0803E4BC: .4byte 0x85000140

	thumb_func_start sub_0803E4C0
sub_0803E4C0: @ 0x0803E4C0
	push {lr}
	ldr r2, _0803E4D4 @ =0x030019D8
	ldrh r0, [r2]
	movs r3, #0
	ldrsh r1, [r2, r3]
	cmp r1, #0xff
	ble _0803E4D8
	movs r0, #0
	b _0803E4E6
	.align 2, 0
_0803E4D4: .4byte 0x030019D8
_0803E4D8:
	adds r0, #1
	strh r0, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0803E4EC @ =0x03000058
	adds r0, r0, r1
_0803E4E6:
	pop {r1}
	bx r1
	.align 2, 0
_0803E4EC: .4byte 0x03000058

	thumb_func_start sub_0803E4F0
sub_0803E4F0: @ 0x0803E4F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, _0803E508 @ =0x030019D8
	movs r0, #0
	ldrsh r2, [r3, r0]
	adds r1, r2, r4
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bls _0803E50C
	movs r0, #0
	b _0803E51C
	.align 2, 0
_0803E508: .4byte 0x030019D8
_0803E50C:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _0803E524 @ =0x03000058
	adds r0, r0, r1
	ldrh r1, [r3]
	adds r1, r1, r4
	strh r1, [r3]
_0803E51C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0803E524: .4byte 0x03000058

	thumb_func_start sub_0803E528
sub_0803E528: @ 0x0803E528
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #0x1f
	bhi _0803E570
	ldr r0, _0803E558 @ =0x03001958
	lsls r1, r1, #2
	adds r3, r1, r0
	movs r0, #2
	ldrsh r2, [r3, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _0803E560
	ldr r1, _0803E55C @ =0x03000058
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r4, #0xa]
	strh r1, [r0, #8]
	ldrh r0, [r4, #0xa]
	strh r0, [r3, #2]
	b _0803E568
	.align 2, 0
_0803E558: .4byte 0x03001958
_0803E55C: .4byte 0x03000058
_0803E560:
	ldrh r0, [r4, #0xa]
	strh r0, [r3, #2]
	ldrh r0, [r4, #0xa]
	strh r0, [r3]
_0803E568:
	ldr r1, _0803E578 @ =0x030019D8
	ldrh r0, [r1, #2]
	adds r0, #1
	strh r0, [r1, #2]
_0803E570:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803E578: .4byte 0x030019D8

	thumb_func_start sub_0803E57C
sub_0803E57C: @ 0x0803E57C
	ldr r1, _0803E590 @ =0x030019D8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, #0xa
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0
_0803E590: .4byte 0x030019D8

	thumb_func_start sub_0803E594
sub_0803E594: @ 0x0803E594
	push {r4, lr}
	ldr r1, _0803E5E4 @ =0x030019D8
	ldrh r2, [r1, #4]
	movs r0, #1
	ands r0, r2
	adds r3, r1, #0
	cmp r0, #0
	beq _0803E5D4
	movs r1, #0
	movs r4, #2
	ldrsh r0, [r3, r4]
	cmp r0, #0x80
	ble _0803E5BE
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0803E5BE
	movs r1, #2
	ldrsh r0, [r3, r1]
	adds r1, r0, #0
	subs r1, #0x80
_0803E5BE:
	lsls r0, r1, #3
	ldr r1, _0803E5E8 @ =0x03000C58
	adds r0, r0, r1
	ldr r1, _0803E5EC @ =0x040000D4
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _0803E5F0 @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0803E5D4:
	ldrh r0, [r3, #4]
	movs r1, #2
	eors r0, r1
	strh r0, [r3, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803E5E4: .4byte 0x030019D8
_0803E5E8: .4byte 0x03000C58
_0803E5EC: .4byte 0x040000D4
_0803E5F0: .4byte 0x84000100

	thumb_func_start sub_0803E5F4
sub_0803E5F4: @ 0x0803E5F4
	ldr r2, _0803E600 @ =0x030019D8
	ldrh r1, [r2, #4]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2, #4]
	bx lr
	.align 2, 0
_0803E600: .4byte 0x030019D8

	thumb_func_start sub_0803E604
sub_0803E604: @ 0x0803E604
	ldr r2, _0803E610 @ =0x030019D8
	ldrh r1, [r2, #4]
	ldr r0, _0803E614 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2, #4]
	bx lr
	.align 2, 0
_0803E610: .4byte 0x030019D8
_0803E614: .4byte 0x0000FFFE

	thumb_func_start sub_0803E618
sub_0803E618: @ 0x0803E618
	sub sp, #4
	ldr r2, _0803E640 @ =0x030019D8
	movs r3, #0
	strh r0, [r2, #0x2e]
	strh r1, [r2, #0x30]
	str r3, [r2, #0x34]
	str r3, [sp]
	ldr r1, _0803E644 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _0803E648 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0803E64C @ =0x00011080
	adds r0, r0, r2
	str r0, [r1, #4]
	ldr r0, _0803E650 @ =0x85000142
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	bx lr
	.align 2, 0
_0803E640: .4byte 0x030019D8
_0803E644: .4byte 0x040000D4
_0803E648: .4byte gEwramData
_0803E64C: .4byte 0x00011080
_0803E650: .4byte 0x85000142

	thumb_func_start sub_0803E654
sub_0803E654: @ 0x0803E654
	push {r4, r5, r6, lr}
	cmp r0, #1
	beq _0803E670
	cmp r0, #1
	blo _0803E664
	cmp r0, #2
	beq _0803E688
	b _0803E68E
_0803E664:
	movs r1, #0
	ldr r0, _0803E66C @ =0x030019D8
	ldrh r4, [r0, #0x2e]
	b _0803E68E
	.align 2, 0
_0803E66C: .4byte 0x030019D8
_0803E670:
	ldr r0, _0803E67C @ =0x030019D8
	ldrh r1, [r0, #0x2e]
	ldrh r0, [r0, #0x30]
	adds r4, r0, r1
	b _0803E68E
	.align 2, 0
_0803E67C: .4byte 0x030019D8
_0803E680:
	orrs r3, r1
	str r3, [r6, #0x34]
	adds r0, r2, #0
	b _0803E6B0
_0803E688:
	ldr r0, _0803E6B8 @ =0x030019D8
	ldrh r1, [r0, #0x30]
	movs r4, #0x20
_0803E68E:
	adds r2, r1, #0
	cmp r2, r4
	bge _0803E6AC
	ldr r6, _0803E6B8 @ =0x030019D8
	movs r5, #1
	ldr r3, [r6, #0x34]
_0803E69A:
	adds r1, r5, #0
	lsls r1, r2
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0803E680
	adds r2, #1
	cmp r2, r4
	blt _0803E69A
_0803E6AC:
	movs r0, #1
	rsbs r0, r0, #0
_0803E6B0:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803E6B8: .4byte 0x030019D8

	thumb_func_start sub_0803E6BC
sub_0803E6BC: @ 0x0803E6BC
	ldr r2, _0803E6CC @ =0x030019D8
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2, #0x34]
	bics r0, r1
	str r0, [r2, #0x34]
	bx lr
	.align 2, 0
_0803E6CC: .4byte 0x030019D8

	thumb_func_start sub_0803E6D0
sub_0803E6D0: @ 0x0803E6D0
	ldr r2, _0803E6E0 @ =0x03001458
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r2
	ldr r0, [r1]
	bx lr
	.align 2, 0
_0803E6E0: .4byte 0x03001458

	thumb_func_start sub_0803E6E4
sub_0803E6E4: @ 0x0803E6E4
	ldr r2, _0803E6F4 @ =0x03001458
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r2, #4
	adds r1, r1, r2
	ldr r0, [r1]
	bx lr
	.align 2, 0
_0803E6F4: .4byte 0x03001458

	thumb_func_start sub_0803E6F8
sub_0803E6F8: @ 0x0803E6F8
	ldr r2, _0803E708 @ =0x03001458
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r2, #8
	adds r1, r1, r2
	ldr r0, [r1]
	bx lr
	.align 2, 0
_0803E708: .4byte 0x03001458

	thumb_func_start sub_0803E70C
sub_0803E70C: @ 0x0803E70C
	ldr r2, _0803E71C @ =0x03001458
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r2
	movs r2, #0xc
	ldrsh r0, [r1, r2]
	bx lr
	.align 2, 0
_0803E71C: .4byte 0x03001458

	thumb_func_start sub_0803E720
sub_0803E720: @ 0x0803E720
	ldr r2, _0803E730 @ =0x03001458
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r2
	movs r2, #0xe
	ldrsh r0, [r1, r2]
	bx lr
	.align 2, 0
_0803E730: .4byte 0x03001458

	thumb_func_start sub_0803E734
sub_0803E734: @ 0x0803E734
	push {lr}
	lsls r2, r1, #2
	adds r2, r2, r1
	lsls r2, r2, #3
	ldr r1, _0803E74C @ =0x03001468
	adds r2, r2, r1
	adds r1, r2, #0
	bl sub_0803EA28
	pop {r0}
	bx r0
	.align 2, 0
_0803E74C: .4byte 0x03001468

	thumb_func_start sub_0803E750
sub_0803E750: @ 0x0803E750
	ldr r0, _0803E758 @ =0x030019D8
	ldr r0, [r0, #0x38]
	bx lr
	.align 2, 0
_0803E758: .4byte 0x030019D8

	thumb_func_start sub_0803E75C
sub_0803E75C: @ 0x0803E75C
	push {r4, lr}
	ldr r0, _0803E770 @ =gEwramData
	ldr r3, [r0]
	ldr r1, _0803E774 @ =0x00011084
	adds r0, r3, r1
	ldr r4, [r0]
	cmp r4, #0
	beq _0803E778
	movs r0, #0
	b _0803E79E
	.align 2, 0
_0803E770: .4byte gEwramData
_0803E774: .4byte 0x00011084
_0803E778:
	ldr r0, _0803E7A4 @ =0x00011080
	adds r2, r3, r0
	ldr r1, _0803E7A8 @ =0x030019D8
	ldr r0, [r1, #0x34]
	str r0, [r2]
	str r4, [r1, #0x34]
	ldr r1, _0803E7AC @ =0x040000D4
	ldr r0, _0803E7B0 @ =0x03001458
	str r0, [r1]
	ldr r2, _0803E7B4 @ =0x00011088
	adds r0, r3, r2
	str r0, [r1, #4]
	ldr r0, _0803E7B8 @ =0x84000140
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0803E7BC @ =0x00011084
	adds r1, r3, r0
	movs r0, #1
	str r0, [r1]
_0803E79E:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0803E7A4: .4byte 0x00011080
_0803E7A8: .4byte 0x030019D8
_0803E7AC: .4byte 0x040000D4
_0803E7B0: .4byte 0x03001458
_0803E7B4: .4byte 0x00011088
_0803E7B8: .4byte 0x84000140
_0803E7BC: .4byte 0x00011084

	thumb_func_start sub_0803E7C0
sub_0803E7C0: @ 0x0803E7C0
	push {lr}
	ldr r0, _0803E7D4 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0803E7D8 @ =0x00011084
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0803E7DC
	movs r0, #0
	b _0803E802
	.align 2, 0
_0803E7D4: .4byte gEwramData
_0803E7D8: .4byte 0x00011084
_0803E7DC:
	ldr r1, _0803E808 @ =0x030019D8
	ldr r3, _0803E80C @ =0x00011080
	adds r0, r2, r3
	ldr r0, [r0]
	str r0, [r1, #0x34]
	ldr r1, _0803E810 @ =0x040000D4
	adds r3, #8
	adds r0, r2, r3
	str r0, [r1]
	ldr r0, _0803E814 @ =0x03001458
	str r0, [r1, #4]
	ldr r0, _0803E818 @ =0x84000140
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0803E81C @ =0x00011084
	adds r1, r2, r0
	movs r0, #0
	str r0, [r1]
	movs r0, #1
_0803E802:
	pop {r1}
	bx r1
	.align 2, 0
_0803E808: .4byte 0x030019D8
_0803E80C: .4byte 0x00011080
_0803E810: .4byte 0x040000D4
_0803E814: .4byte 0x03001458
_0803E818: .4byte 0x84000140
_0803E81C: .4byte 0x00011084

	thumb_func_start sub_0803E820
sub_0803E820: @ 0x0803E820
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	muls r0, r1, r0
	adds r1, r0, #0
	cmp r0, #0
	bge _0803E834
	adds r1, #0xff
_0803E834:
	lsls r0, r1, #8
	asrs r0, r0, #0x10
	pop {r1}
	bx r1

	thumb_func_start sub_0803E83C
sub_0803E83C: @ 0x0803E83C
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803E854
sub_0803E854: @ 0x0803E854
	push {lr}
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1

	thumb_func_start sub_0803E86C
sub_0803E86C: @ 0x0803E86C
	push {lr}
	cmp r0, #0
	beq _0803E876
	cmp r1, #0
	bne _0803E87A
_0803E876:
	movs r0, #0
	b _0803E8B6
_0803E87A:
	movs r2, #0x80
	lsls r2, r2, #9
	cmp r0, r2
	bne _0803E886
	adds r0, r1, #0
	b _0803E8B6
_0803E886:
	cmp r1, r2
	beq _0803E8B6
	cmp r0, #0
	bge _0803E896
	rsbs r0, r0, #0
	asrs r0, r0, #8
	rsbs r2, r0, #0
	b _0803E898
_0803E896:
	asrs r2, r0, #8
_0803E898:
	cmp r1, #0
	bge _0803E8A4
	rsbs r0, r1, #0
	asrs r0, r0, #8
	rsbs r0, r0, #0
	b _0803E8A6
_0803E8A4:
	asrs r0, r1, #8
_0803E8A6:
	muls r2, r0, r2
	adds r0, r2, #0
	cmp r2, #0
	bge _0803E8B0
	adds r0, #0xff
_0803E8B0:
	asrs r2, r0, #8
	lsls r2, r2, #8
	adds r0, r2, #0
_0803E8B6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803E8BC
sub_0803E8BC: @ 0x0803E8BC
	push {lr}
	adds r2, r0, #0
	cmp r1, #0
	bne _0803E8C8
	movs r0, #0
	b _0803E8F8
_0803E8C8:
	movs r0, #0x80
	lsls r0, r0, #9
	cmp r1, r0
	bne _0803E8D4
	adds r0, r2, #0
	b _0803E8F8
_0803E8D4:
	cmp r2, #0
	bge _0803E8E0
	rsbs r0, r2, #0
	asrs r0, r0, #8
	rsbs r0, r0, #0
	b _0803E8E2
_0803E8E0:
	asrs r0, r2, #8
_0803E8E2:
	lsls r0, r0, #8
	cmp r1, #0
	bge _0803E8F0
	rsbs r1, r1, #0
	asrs r1, r1, #8
	rsbs r1, r1, #0
	b _0803E8F2
_0803E8F0:
	asrs r1, r1, #8
_0803E8F2:
	bl __divsi3
	lsls r0, r0, #8
_0803E8F8:
	pop {r1}
	bx r1

	thumb_func_start sub_0803E8FC
sub_0803E8FC: @ 0x0803E8FC
	push {lr}
	movs r1, #0x80
	lsls r1, r1, #9
	cmp r0, r1
	bne _0803E90A
	adds r0, r1, #0
	b _0803E926
_0803E90A:
	adds r2, r1, #0
	cmp r0, #0
	bge _0803E918
	rsbs r1, r0, #0
	asrs r1, r1, #8
	rsbs r1, r1, #0
	b _0803E91A
_0803E918:
	asrs r1, r0, #8
_0803E91A:
	adds r0, r2, #0
	bl __divsi3
	adds r2, r0, #0
	lsls r2, r2, #8
	adds r0, r2, #0
_0803E926:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803E92C
sub_0803E92C: @ 0x0803E92C
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	bx lr

	thumb_func_start sub_0803E934
sub_0803E934: @ 0x0803E934
	push {lr}
	asrs r1, r1, #8
	bl __divsi3
	lsls r0, r0, #8
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803E944
sub_0803E944: @ 0x0803E944
	push {lr}
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	asrs r1, r1, #8
	bl __divsi3
	lsls r0, r0, #8
	pop {r1}
	bx r1

	thumb_func_start sub_0803E958
sub_0803E958: @ 0x0803E958
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [r0, #0xc]
	str r1, [r0]
	movs r1, #0
	str r1, [r0, #8]
	str r1, [r0, #4]
	bx lr

	thumb_func_start sub_0803E968
sub_0803E968: @ 0x0803E968
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r6, r0
	beq _0803E9BC
	cmp r6, r0
	bgt _0803E990
	cmp r6, #0
	beq _0803E9A0
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r6, r0
	beq _0803E9AC
	b _0803E9DC
_0803E990:
	movs r0, #0xc0
	lsls r0, r0, #8
	cmp r6, r0
	beq _0803E9CC
	movs r0, #0x80
	lsls r0, r0, #9
	cmp r6, r0
	bne _0803E9DC
_0803E9A0:
	str r7, [r5]
	movs r0, #0
	str r0, [r5, #4]
	str r0, [r5, #8]
	mov r0, r8
	b _0803EA0E
_0803E9AC:
	movs r1, #0
	str r1, [r5]
	rsbs r0, r7, #0
	str r0, [r5, #4]
	mov r2, r8
	str r2, [r5, #8]
	str r1, [r5, #0xc]
	b _0803EA10
_0803E9BC:
	rsbs r0, r7, #0
	str r0, [r5]
	movs r0, #0
	str r0, [r5, #4]
	str r0, [r5, #8]
	mov r1, r8
	rsbs r0, r1, #0
	b _0803EA0E
_0803E9CC:
	movs r1, #0
	str r1, [r5]
	str r7, [r5, #4]
	mov r2, r8
	rsbs r0, r2, #0
	str r0, [r5, #8]
	str r1, [r5, #0xc]
	b _0803EA10
_0803E9DC:
	adds r0, r6, #0
	bl sub_080009E4
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r6, r1
	bl sub_080009E4
	asrs r2, r7, #8
	asrs r0, r0, #8
	adds r1, r2, #0
	muls r1, r0, r1
	str r1, [r5]
	rsbs r1, r4, #0
	asrs r1, r1, #8
	muls r1, r2, r1
	str r1, [r5, #4]
	mov r1, r8
	asrs r2, r1, #8
	asrs r4, r4, #8
	adds r1, r2, #0
	muls r1, r4, r1
	str r1, [r5, #8]
	muls r0, r2, r0
_0803EA0E:
	str r0, [r5, #0xc]
_0803EA10:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803EA1C
sub_0803EA1C: @ 0x0803EA1C
	ldr r2, [r1]
	str r2, [r0]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	bx lr
	.align 2, 0

	thumb_func_start sub_0803EA28
sub_0803EA28: @ 0x0803EA28
	ldr r2, [r1]
	str r2, [r0]
	ldr r2, [r1, #4]
	str r2, [r0, #4]
	ldr r2, [r1, #8]
	str r2, [r0, #8]
	ldr r1, [r1, #0xc]
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_0803EA3C
sub_0803EA3C: @ 0x0803EA3C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r6, [r1]
	ldr r3, [r2]
	adds r6, r6, r3
	str r6, [sp]
	ldr r5, [r1, #4]
	ldr r3, [r2, #4]
	adds r5, r5, r3
	str r5, [sp, #4]
	ldr r4, [r1, #8]
	ldr r3, [r2, #8]
	adds r4, r4, r3
	str r4, [sp, #8]
	ldr r3, [r1, #0xc]
	ldr r1, [r2, #0xc]
	adds r3, r3, r1
	str r3, [sp, #0xc]
	str r6, [r0]
	str r5, [r0, #4]
	str r4, [r0, #8]
	str r3, [r0, #0xc]
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0803EA70
sub_0803EA70: @ 0x0803EA70
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r6, [r1]
	ldr r3, [r2]
	subs r6, r6, r3
	str r6, [sp]
	ldr r5, [r1, #4]
	ldr r3, [r2, #4]
	subs r5, r5, r3
	str r5, [sp, #4]
	ldr r4, [r1, #8]
	ldr r3, [r2, #8]
	subs r4, r4, r3
	str r4, [sp, #8]
	ldr r3, [r1, #0xc]
	ldr r1, [r2, #0xc]
	subs r3, r3, r1
	str r3, [sp, #0xc]
	str r6, [r0]
	str r5, [r0, #4]
	str r4, [r0, #8]
	str r3, [r0, #0xc]
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0803EAA4
sub_0803EAA4: @ 0x0803EAA4
	push {r4, lr}
	ldr r3, [r1]
	ldr r4, [r2]
	adds r3, r3, r4
	str r3, [r0]
	ldr r1, [r1, #4]
	ldr r2, [r2, #4]
	adds r1, r1, r2
	str r1, [r0, #4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0803EABC
sub_0803EABC: @ 0x0803EABC
	push {r4, lr}
	ldr r3, [r1]
	ldr r4, [r2]
	subs r3, r3, r4
	str r3, [r0]
	ldr r1, [r1, #4]
	ldr r2, [r2, #4]
	subs r1, r1, r2
	str r1, [r0, #4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0803EAD4
sub_0803EAD4: @ 0x0803EAD4
	ldr r3, [r1]
	asrs r3, r3, #8
	asrs r2, r2, #8
	muls r3, r2, r3
	str r3, [r0]
	ldr r1, [r1, #4]
	asrs r1, r1, #8
	muls r1, r2, r1
	str r1, [r0, #4]
	bx lr

	thumb_func_start sub_0803EAE8
sub_0803EAE8: @ 0x0803EAE8
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r3, [r1]
	ldr r5, [r2]
	asrs r3, r3, #8
	asrs r5, r5, #8
	adds r6, r3, #0
	muls r6, r5, r6
	ldr r3, [r1, #4]
	ldr r4, [r2, #4]
	asrs r3, r3, #8
	asrs r4, r4, #8
	adds r2, r3, #0
	muls r2, r4, r2
	adds r6, r6, r2
	str r6, [sp]
	ldr r2, [r1, #8]
	asrs r2, r2, #8
	muls r2, r5, r2
	ldr r1, [r1, #0xc]
	asrs r1, r1, #8
	muls r1, r4, r1
	adds r2, r2, r1
	str r2, [sp, #4]
	str r6, [r0]
	str r2, [r0, #4]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0803EB24
sub_0803EB24: @ 0x0803EB24
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0x10
	ldr r5, [r1]
	ldr r3, [r2]
	asrs r5, r5, #8
	asrs r3, r3, #8
	mov sl, r3
	mov r3, sl
	muls r3, r5, r3
	mov ip, r3
	ldr r4, [r1, #4]
	ldr r3, [r2, #8]
	asrs r4, r4, #8
	asrs r3, r3, #8
	mov r8, r3
	mov r3, r8
	muls r3, r4, r3
	add ip, r3
	mov r3, ip
	str r3, [sp]
	ldr r6, [r2, #4]
	asrs r6, r6, #8
	adds r3, r5, #0
	muls r3, r6, r3
	mov sb, r3
	ldr r5, [r2, #0xc]
	asrs r5, r5, #8
	adds r2, r4, #0
	muls r2, r5, r2
	add sb, r2
	mov r2, sb
	str r2, [sp, #4]
	ldr r3, [r1, #8]
	asrs r3, r3, #8
	mov r4, sl
	muls r4, r3, r4
	ldr r2, [r1, #0xc]
	asrs r2, r2, #8
	mov r1, r8
	muls r1, r2, r1
	adds r4, r4, r1
	str r4, [sp, #8]
	muls r3, r6, r3
	adds r1, r2, #0
	muls r1, r5, r1
	adds r3, r3, r1
	str r3, [sp, #0xc]
	mov r1, ip
	str r1, [r0]
	mov r2, sb
	str r2, [r0, #4]
	str r4, [r0, #8]
	str r3, [r0, #0xc]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803EBA8
sub_0803EBA8: @ 0x0803EBA8
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	mov ip, r1
	movs r6, #1
	ldr r2, [r7, #4]
	mov r3, ip
	adds r3, #0x6e
	ldrb r0, [r3]
	lsls r0, r0, #4
	adds r2, r2, r0
	ldrb r0, [r2]
	adds r1, #0x65
	strb r0, [r1]
	mov r4, ip
	adds r4, #0x6c
	ldrb r1, [r4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0803EBD4
	movs r0, #3
	b _0803EC2E
_0803EBD4:
	movs r5, #6
	ands r5, r1
	cmp r5, #0
	bne _0803EC2C
	mov r1, ip
	adds r1, #0x6f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r2, [r2, #1]
	cmp r0, r2
	blo _0803EC2C
	movs r6, #2
	strb r5, [r1]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldrh r2, [r7]
	ldrb r0, [r3]
	cmp r0, r2
	blo _0803EC2C
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803EC12
	strb r5, [r3]
	movs r6, #4
	b _0803EC20
_0803EC12:
	subs r0, r2, #1
	strb r0, [r3]
	movs r6, #3
	ldrb r0, [r4]
	movs r1, #4
	orrs r0, r1
	strb r0, [r4]
_0803EC20:
	mov r0, ip
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
_0803EC2C:
	adds r0, r6, #0
_0803EC2E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0803EC34
sub_0803EC34: @ 0x0803EC34
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	mov ip, r1
	movs r6, #1
	adds r2, r7, #4
	mov r3, ip
	adds r3, #0x6e
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r2, r2, r0
	ldrb r0, [r2]
	adds r1, #0x65
	strb r0, [r1]
	mov r4, ip
	adds r4, #0x6c
	ldrb r1, [r4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0803EC60
	movs r0, #3
	b _0803ECBA
_0803EC60:
	movs r5, #6
	ands r5, r1
	cmp r5, #0
	bne _0803ECB8
	mov r1, ip
	adds r1, #0x6f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r2, [r2, #1]
	cmp r0, r2
	blo _0803ECB8
	movs r6, #2
	strb r5, [r1]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldrh r2, [r7]
	ldrb r0, [r3]
	cmp r0, r2
	blo _0803ECB8
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803EC9E
	strb r5, [r3]
	movs r6, #4
	b _0803ECAC
_0803EC9E:
	subs r0, r2, #1
	strb r0, [r3]
	movs r6, #3
	ldrb r0, [r4]
	movs r1, #4
	orrs r0, r1
	strb r0, [r4]
_0803ECAC:
	mov r0, ip
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
_0803ECB8:
	adds r0, r6, #0
_0803ECBA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0803ECC0
sub_0803ECC0: @ 0x0803ECC0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r6, r1, #0
	movs r0, #1
	mov r8, r0
	mov r4, sb
	adds r4, #4
	adds r5, r6, #0
	adds r5, #0x6e
	ldrb r0, [r5]
	lsls r0, r0, #3
	adds r4, r4, r0
	ldrh r0, [r4]
	adds r1, #0x65
	strb r0, [r1]
	ldr r1, [r4, #4]
	adds r0, r6, #0
	bl sub_08042884
	adds r3, r6, #0
	adds r3, #0x6c
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0803ECFE
	movs r0, #3
	b _0803ED5E
_0803ECFE:
	movs r7, #6
	ands r7, r1
	cmp r7, #0
	bne _0803ED5C
	adds r1, r6, #0
	adds r1, #0x6f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r1]
	ldrh r4, [r4, #2]
	cmp r0, r4
	blo _0803ED5C
	movs r0, #2
	mov r8, r0
	strb r7, [r1]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	mov r0, sb
	ldrh r2, [r0]
	ldrb r0, [r5]
	cmp r0, r2
	blo _0803ED5C
	ldrb r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803ED40
	strb r7, [r5]
	movs r0, #4
	mov r8, r0
	b _0803ED50
_0803ED40:
	subs r0, r2, #1
	strb r0, [r5]
	movs r0, #3
	mov r8, r0
	ldrb r0, [r3]
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
_0803ED50:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
_0803ED5C:
	mov r0, r8
_0803ED5E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803ED6C
sub_0803ED6C: @ 0x0803ED6C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r5, r1, #0
	movs r0, #1
	mov r8, r0
	mov r4, sb
	adds r4, #4
	adds r6, r5, #0
	adds r6, #0x6e
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, r4, r0
	ldrh r0, [r4]
	adds r1, r5, #0
	adds r1, #0x65
	strb r0, [r1]
	ldr r1, [r4, #4]
	adds r0, r5, #0
	bl sub_08042884
	ldr r1, [r4, #8]
	adds r0, r5, #0
	bl sub_080428F0
	adds r3, r5, #0
	adds r3, #0x6c
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0803EDB8
	movs r0, #3
	b _0803EE18
_0803EDB8:
	movs r7, #6
	ands r7, r1
	cmp r7, #0
	bne _0803EE16
	adds r1, r5, #0
	adds r1, #0x6f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r1]
	ldrh r4, [r4, #2]
	cmp r0, r4
	blo _0803EE16
	movs r0, #2
	mov r8, r0
	strb r7, [r1]
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	mov r0, sb
	ldrh r2, [r0]
	ldrb r0, [r6]
	cmp r0, r2
	blo _0803EE16
	ldrb r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803EDFA
	strb r7, [r6]
	movs r0, #4
	mov r8, r0
	b _0803EE0A
_0803EDFA:
	subs r0, r2, #1
	strb r0, [r6]
	movs r0, #3
	mov r8, r0
	ldrb r0, [r3]
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
_0803EE0A:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
_0803EE16:
	mov r0, r8
_0803EE18:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0803EE24
sub_0803EE24: @ 0x0803EE24
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0x65
	ldrb r4, [r0]
	adds r2, r5, #0
	adds r2, #0x64
	ldr r0, _0803EE58 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0803EE5C @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r2, r0, #0
	cmp r2, #0
	beq _0803EE70
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0803EE60
	ldr r3, [r5, #0x68]
	b _0803EE6C
	.align 2, 0
_0803EE58: .4byte gEwramData
_0803EE5C: .4byte 0x0001017C
_0803EE60:
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	lsls r0, r0, #3
	ldr r1, [r2, #8]
	adds r3, r1, r0
_0803EE6C:
	cmp r3, #0
	bne _0803EE74
_0803EE70:
	movs r6, #0
	b _0803EE88
_0803EE74:
	ldr r0, _0803EEB0 @ =0x080E2B34
	ldrh r1, [r3, #2]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, r3, #0
	adds r1, r5, #0
	bl _call_via_r2
	adds r6, r0, #0
_0803EE88:
	adds r3, r5, #0
	adds r3, #0x65
	ldrb r0, [r3]
	cmp r4, r0
	beq _0803EEF2
	adds r2, r5, #0
	adds r2, #0x64
	ldr r0, _0803EEB4 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0803EEB8 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	cmp r1, #0
	bne _0803EEBC
	movs r0, #0
	b _0803EEF4
	.align 2, 0
_0803EEB0: .4byte 0x080E2B34
_0803EEB4: .4byte gEwramData
_0803EEB8: .4byte 0x0001017C
_0803EEBC:
	ldrb r2, [r3]
	ldrh r0, [r1]
	cmp r2, r0
	bhs _0803EECE
	ldr r0, [r1, #4]
	lsls r1, r2, #4
	adds r1, r1, r0
	ldr r0, [r1, #0xc]
	b _0803EED2
_0803EECE:
	ldr r0, [r1, #4]
	ldr r0, [r0, #0xc]
_0803EED2:
	ldrb r4, [r0, #9]
	adds r0, r5, #0
	bl sub_0803B998
	adds r5, r0, #0
	movs r1, #0
	bl sub_0803B840
	cmp r0, r4
	beq _0803EEF2
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_0803AA20
_0803EEF2:
	adds r0, r6, #0
_0803EEF4:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803EEFC
sub_0803EEFC: @ 0x0803EEFC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x65
	ldrb r6, [r0]
	adds r2, r4, #0
	adds r2, #0x64
	ldr r0, _0803EF30 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0803EF34 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r2, r0, #0
	cmp r2, #0
	beq _0803EF48
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0803EF38
	ldr r3, [r4, #0x68]
	b _0803EF44
	.align 2, 0
_0803EF30: .4byte gEwramData
_0803EF34: .4byte 0x0001017C
_0803EF38:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	lsls r0, r0, #3
	ldr r1, [r2, #8]
	adds r3, r1, r0
_0803EF44:
	cmp r3, #0
	bne _0803EF4C
_0803EF48:
	movs r7, #0
	b _0803EF60
_0803EF4C:
	ldr r0, _0803EF88 @ =0x080E2B34
	ldrh r1, [r3, #2]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, r3, #0
	adds r1, r4, #0
	bl _call_via_r2
	adds r7, r0, #0
_0803EF60:
	adds r3, r4, #0
	adds r3, #0x65
	ldrb r0, [r3]
	cmp r6, r0
	beq _0803EFE6
	adds r2, r4, #0
	adds r2, #0x64
	ldr r0, _0803EF8C @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0803EF90 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _0803EF94
	movs r0, #0
	b _0803EFE8
	.align 2, 0
_0803EF88: .4byte 0x080E2B34
_0803EF8C: .4byte gEwramData
_0803EF90: .4byte 0x0001017C
_0803EF94:
	ldrb r1, [r3]
	ldrh r2, [r0]
	cmp r1, r2
	bhs _0803EFA4
	lsls r1, r1, #4
	ldr r0, [r0, #4]
	adds r0, r0, r1
	b _0803EFA6
_0803EFA4:
	ldr r0, [r0, #4]
_0803EFA6:
	ldrb r1, [r0, #5]
	movs r2, #0
	cmp r2, r1
	bge _0803EFC4
	ldr r0, [r0, #0xc]
	ldrb r5, [r0, #9]
	cmp r5, #0
	bne _0803EFC8
_0803EFB6:
	adds r0, #0xc
	adds r2, #1
	cmp r2, r1
	bge _0803EFC4
	ldrb r5, [r0, #9]
	cmp r5, #0
	beq _0803EFB6
_0803EFC4:
	cmp r5, #0
	beq _0803EFE6
_0803EFC8:
	adds r0, r4, #0
	bl sub_0803B998
	adds r4, r0, #0
	movs r1, #1
	bl sub_0803B840
	cmp r0, r5
	beq _0803EFE6
	adds r0, r4, #0
	movs r1, #1
	adds r2, r5, #0
	movs r3, #1
	bl sub_0803AA20
_0803EFE6:
	adds r0, r7, #0
_0803EFE8:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803EFF0
sub_0803EFF0: @ 0x0803EFF0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0x64
	adds r0, r0, r5
	mov r8, r0
	ldr r1, _0803F09C @ =gEwramData
	mov sb, r1
	ldr r2, [r1]
	ldrb r0, [r0]
	lsls r1, r0, #4
	ldr r3, _0803F0A0 @ =0x0001017C
	adds r0, r2, r3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0803F0BC
	ldr r3, _0803F0A4 @ =0x00010174
	adds r0, r2, r3
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r3, _0803F0A8 @ =0x0000FED4
	adds r0, r2, r3
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _0803F0BC
	ldrb r0, [r1]
	cmp r0, #2
	bne _0803F0BC
	adds r7, r1, #4
	ldr r0, [r5, #0x68]
	adds r4, r0, #4
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r4, r4, r0
	ldrb r1, [r4]
	lsrs r6, r1, #2
	adds r2, r5, #0
	adds r2, #0x37
	ldrb r0, [r2]
	cmp r0, r1
	beq _0803F072
	strb r1, [r2]
	adds r0, r5, #0
	bl sub_0803B998
	lsls r1, r6, #2
	adds r1, r1, r7
	ldr r1, [r1]
	ldrb r2, [r4]
	movs r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	movs r3, #0
	bl sub_0803B66C
_0803F072:
	mov r0, sb
	ldr r1, [r0]
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r3, _0803F0A0 @ =0x0001017C
	adds r1, r1, r3
	adds r1, r1, r0
	ldr r2, [r1]
	cmp r2, #0
	beq _0803F0BC
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0803F0AC
	ldr r3, [r5, #0x68]
	b _0803F0B8
	.align 2, 0
_0803F09C: .4byte gEwramData
_0803F0A0: .4byte 0x0001017C
_0803F0A4: .4byte 0x00010174
_0803F0A8: .4byte 0x0000FED4
_0803F0AC:
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	lsls r0, r0, #3
	ldr r1, [r2, #8]
	adds r3, r1, r0
_0803F0B8:
	cmp r3, #0
	bne _0803F0C0
_0803F0BC:
	movs r0, #0
	b _0803F0D2
_0803F0C0:
	ldr r0, _0803F0E0 @ =0x080E2B34
	ldrh r1, [r3, #2]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, r3, #0
	adds r1, r5, #0
	bl _call_via_r2
_0803F0D2:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803F0E0: .4byte 0x080E2B34

	thumb_func_start sub_0803F0E4
sub_0803F0E4: @ 0x0803F0E4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r5, r1, #0
	lsls r3, r3, #0x18
	lsrs r4, r3, #0x18
	adds r0, #0x5b
	movs r3, #0
	strb r2, [r0]
	adds r2, r6, #0
	adds r2, #0x64
	ldr r0, _0803F164 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0803F168 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0803F16C
	str r5, [r6, #0x68]
	movs r0, #8
	orrs r4, r0
	adds r5, r6, #0
	adds r5, #0x6c
	movs r0, #0
	orrs r4, r0
	strb r4, [r5]
	movs r0, #0x6d
	adds r0, r0, r6
	mov sb, r0
	strb r3, [r0]
	movs r2, #0x6e
	adds r2, r2, r6
	mov r8, r2
	strb r3, [r2]
	adds r7, r6, #0
	adds r7, #0x6f
	strb r3, [r7]
	adds r0, r6, #0
	str r3, [sp]
	bl sub_0803F17C
	strb r4, [r5]
	ldr r3, [sp]
	mov r0, sb
	strb r3, [r0]
	mov r2, r8
	strb r3, [r2]
	strb r3, [r7]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #1
	b _0803F16E
	.align 2, 0
_0803F164: .4byte gEwramData
_0803F168: .4byte 0x0001017C
_0803F16C:
	movs r0, #0
_0803F16E:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0803F17C
sub_0803F17C: @ 0x0803F17C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	adds r1, r4, #0
	adds r1, #0x5b
	ldrb r1, [r1]
	cmp r1, #1
	beq _0803F200
	cmp r1, #1
	bgt _0803F196
	cmp r1, #0
	beq _0803F1A0
	b _0803F21A
_0803F196:
	cmp r1, #2
	beq _0803F208
	cmp r1, #3
	beq _0803F210
	b _0803F21A
_0803F1A0:
	adds r2, r4, #0
	adds r2, #0x64
	ldr r0, _0803F1CC @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0803F1D0 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r2, [r1]
	cmp r2, #0
	beq _0803F1E4
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0803F1D4
	ldr r3, [r4, #0x68]
	b _0803F1E0
	.align 2, 0
_0803F1CC: .4byte gEwramData
_0803F1D0: .4byte 0x0001017C
_0803F1D4:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	lsls r0, r0, #3
	ldr r1, [r2, #8]
	adds r3, r1, r0
_0803F1E0:
	cmp r3, #0
	bne _0803F1E8
_0803F1E4:
	movs r0, #0
	b _0803F216
_0803F1E8:
	ldr r0, _0803F1FC @ =0x080E2B34
	ldrh r1, [r3, #2]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, r3, #0
	adds r1, r4, #0
	bl _call_via_r2
	b _0803F216
	.align 2, 0
_0803F1FC: .4byte 0x080E2B34
_0803F200:
	adds r0, r4, #0
	bl sub_0803EE24
	b _0803F216
_0803F208:
	adds r0, r4, #0
	bl sub_0803EEFC
	b _0803F216
_0803F210:
	adds r0, r4, #0
	bl sub_0803EFF0
_0803F216:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_0803F21A:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0803F224
sub_0803F224: @ 0x0803F224
	push {r4, lr}
	adds r3, r0, #0
	movs r4, #0
	adds r2, r3, #0
	adds r2, #0x64
	ldr r0, _0803F248 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0803F24C @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r2, r0, #0
	cmp r2, #0
	bne _0803F250
	movs r0, #0
	b _0803F2C2
	.align 2, 0
_0803F248: .4byte gEwramData
_0803F24C: .4byte 0x0001017C
_0803F250:
	adds r0, r3, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0803F262
	ldr r2, [r3, #0x68]
	b _0803F26E
_0803F262:
	adds r0, r3, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	lsls r0, r0, #3
	ldr r1, [r2, #8]
	adds r2, r1, r0
_0803F26E:
	ldrh r0, [r2, #2]
	cmp r0, #1
	beq _0803F298
	cmp r0, #1
	bgt _0803F27E
	cmp r0, #0
	beq _0803F288
	b _0803F2C0
_0803F27E:
	cmp r0, #2
	beq _0803F2A6
	cmp r0, #3
	beq _0803F2B0
	b _0803F2C0
_0803F288:
	ldr r1, [r2, #4]
	adds r0, r3, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r1, r1, r0
	ldrb r4, [r1, #1]
	b _0803F2C0
_0803F298:
	adds r0, r3, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r2, r0
	ldrb r4, [r0, #5]
	b _0803F2C0
_0803F2A6:
	adds r0, r3, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	lsls r0, r0, #3
	b _0803F2BC
_0803F2B0:
	adds r0, r3, #0
	adds r0, #0x6e
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
_0803F2BC:
	adds r0, r2, r0
	ldrh r4, [r0, #6]
_0803F2C0:
	adds r0, r4, #0
_0803F2C2:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0803F2C8
sub_0803F2C8: @ 0x0803F2C8
	push {r4, r5, lr}
	mov ip, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r2, ip
	adds r2, #0x64
	ldr r0, _0803F338 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0803F33C @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r1, r0, #0
	ldr r0, [r1, #0xc]
	cmp r0, #0
	beq _0803F340
	ldrh r0, [r1, #2]
	cmp r4, r0
	bhs _0803F340
	mov r0, ip
	adds r0, #0x5b
	movs r2, #0
	strb r5, [r0]
	ldr r1, [r1, #0xc]
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r1, ip
	str r0, [r1, #0x68]
	movs r0, #8
	adds r1, #0x6c
	orrs r3, r0
	strb r3, [r1]
	mov r0, ip
	adds r0, #0x6d
	strb r4, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	mov r2, ip
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #1
	b _0803F342
	.align 2, 0
_0803F338: .4byte gEwramData
_0803F33C: .4byte 0x0001017C
_0803F340:
	movs r0, #0
_0803F342:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0803F348
sub_0803F348: @ 0x0803F348
	push {r4, r5, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	adds r2, r3, #0
	adds r2, #0x64
	ldr r0, _0803F38C @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0803F390 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	cmp r1, #0
	beq _0803F394
	ldrh r1, [r1, #2]
	cmp r4, r1
	bhs _0803F394
	adds r0, r3, #0
	adds r0, #0x6c
	movs r1, #0
	strb r5, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	movs r0, #1
	b _0803F396
	.align 2, 0
_0803F38C: .4byte gEwramData
_0803F390: .4byte 0x0001017C
_0803F394:
	movs r0, #0
_0803F396:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0803F39C
sub_0803F39C: @ 0x0803F39C
	push {r4, lr}
	mov ip, r0
	adds r3, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	mov r2, ip
	adds r2, #0x64
	ldr r0, _0803F3E8 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0803F3EC @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0803F3F0
	mov r0, ip
	str r3, [r0, #0x68]
	mov r3, ip
	adds r3, #0x6c
	ldrb r0, [r3]
	movs r1, #0xfa
	ands r1, r0
	movs r2, #8
	adds r0, r4, #0
	orrs r0, r2
	orrs r1, r0
	strb r1, [r3]
	mov r2, ip
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #1
	b _0803F3F2
	.align 2, 0
_0803F3E8: .4byte gEwramData
_0803F3EC: .4byte 0x0001017C
_0803F3F0:
	movs r0, #0
_0803F3F2:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0803F3F8
sub_0803F3F8: @ 0x0803F3F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	adds r7, r1, #0
	mov r8, r2
	ldr r3, [r7, #4]
	adds r0, r3, r2
	lsrs r0, r0, #0x13
	adds r0, #0x1e
	ldr r1, [r7]
	ldrb r2, [r1]
	lsls r1, r2, #5
	cmp r0, r1
	blo _0803F428
	lsls r1, r2, #0x18
	movs r2, #0xf0
	lsls r2, r2, #0x10
	adds r0, r3, r2
	subs r1, r1, r0
	mov r8, r1
_0803F428:
	movs r0, #0x80
	lsls r0, r0, #0xc
	cmp r8, r0
	ble _0803F432
	mov r8, r0
_0803F432:
	mov r4, r8
	str r4, [r7, #0xc]
	ldr r2, _0803F4B8 @ =0xFFFF0000
	adds r1, r3, r2
	lsrs r1, r1, #0x13
	adds r0, r3, r4
	adds r0, r0, r2
	lsrs r0, r0, #0x13
	cmp r1, r0
	beq _0803F4A0
	ldr r0, _0803F4BC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803F4C0 @ =0x00013414
	adds r1, r0, r1
	str r1, [sp]
	ldrh r0, [r7, #6]
	adds r0, #0xf7
	lsrs r0, r0, #3
	mov sb, r0
	ldrh r0, [r7, #0xa]
	lsrs r4, r0, #3
	lsls r1, r5, #0xb
	ldr r2, _0803F4C4 @ =0x0600E000
	adds r1, r1, r2
	movs r2, #0x1f
	mov r0, sb
	ands r0, r2
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #6
	adds r1, r1, r0
	mov sl, r1
	ldr r5, [sp]
	movs r6, #0x14
_0803F47A:
	ldr r0, [r7]
	mov r1, sb
	adds r2, r4, #0
	bl sub_08001994
	strh r0, [r5]
	adds r5, #2
	subs r6, #1
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r6, #0
	bge _0803F47A
	movs r0, #0x80
	movs r1, #0x15
	ldr r2, [sp]
	mov r3, sl
	bl sub_08001580
_0803F4A0:
	ldr r0, [r7, #4]
	add r0, r8
	str r0, [r7, #4]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803F4B8: .4byte 0xFFFF0000
_0803F4BC: .4byte gEwramData
_0803F4C0: .4byte 0x00013414
_0803F4C4: .4byte 0x0600E000

	thumb_func_start sub_0803F4C8
sub_0803F4C8: @ 0x0803F4C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r3, r0, #0
	adds r6, r1, #0
	mov r8, r2
	ldr r2, [r6, #4]
	mov r1, r8
	adds r0, r2, r1
	cmp r0, #0
	bge _0803F4E8
	rsbs r4, r2, #0
	mov r8, r4
_0803F4E8:
	ldr r0, _0803F570 @ =0xFFF80000
	cmp r8, r0
	bge _0803F4F0
	mov r8, r0
_0803F4F0:
	mov r0, r8
	str r0, [r6, #0xc]
	lsrs r1, r2, #0x13
	adds r0, r2, r0
	lsrs r0, r0, #0x13
	cmp r1, r0
	beq _0803F55A
	ldr r0, _0803F574 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803F578 @ =0x00013414
	adds r1, r0, r1
	str r1, [sp]
	ldrh r0, [r6, #6]
	subs r0, #8
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x10
	mov sb, r0
	ldrh r0, [r6, #0xa]
	lsrs r4, r0, #3
	lsls r1, r3, #0xb
	ldr r0, _0803F57C @ =0x0600E000
	adds r1, r1, r0
	movs r2, #0x1f
	mov r0, sb
	ands r0, r2
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #6
	adds r1, r1, r0
	mov sl, r1
	ldr r5, [sp]
	movs r7, #0x14
_0803F534:
	ldr r0, [r6]
	mov r1, sb
	adds r2, r4, #0
	bl sub_08001994
	strh r0, [r5]
	adds r5, #2
	subs r7, #1
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r7, #0
	bge _0803F534
	movs r0, #0x80
	movs r1, #0x15
	ldr r2, [sp]
	mov r3, sl
	bl sub_08001580
_0803F55A:
	ldr r0, [r6, #4]
	add r0, r8
	str r0, [r6, #4]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803F570: .4byte 0xFFF80000
_0803F574: .4byte gEwramData
_0803F578: .4byte 0x00013414
_0803F57C: .4byte 0x0600E000

	thumb_func_start sub_0803F580
sub_0803F580: @ 0x0803F580
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	adds r7, r1, #0
	mov r8, r2
	ldr r3, [r7, #8]
	adds r0, r3, r2
	lsrs r0, r0, #0x13
	adds r0, #0x1a
	ldr r1, [r7]
	ldrb r2, [r1, #1]
	lsls r1, r2, #5
	cmp r0, r1
	blo _0803F5B0
	lsls r1, r2, #0x18
	movs r2, #0xd0
	lsls r2, r2, #0x10
	adds r0, r3, r2
	subs r1, r1, r0
	mov r8, r1
_0803F5B0:
	movs r0, #0x80
	lsls r0, r0, #0xc
	cmp r8, r0
	ble _0803F5BA
	mov r8, r0
_0803F5BA:
	mov r5, r8
	str r5, [r7, #0x10]
	ldr r2, _0803F640 @ =0xFFFF0000
	adds r1, r3, r2
	lsrs r1, r1, #0x13
	adds r0, r3, r5
	adds r0, r0, r2
	lsrs r0, r0, #0x13
	cmp r1, r0
	beq _0803F628
	ldr r0, _0803F644 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803F648 @ =0x00013414
	adds r1, r0, r1
	str r1, [sp]
	ldrh r0, [r7, #6]
	lsrs r5, r0, #3
	ldrh r0, [r7, #0xa]
	adds r0, #0xa7
	lsrs r0, r0, #3
	mov sb, r0
	lsls r1, r4, #0xb
	ldr r2, _0803F64C @ =0x0600E000
	adds r1, r1, r2
	movs r2, #0x1f
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r1, r1, r0
	mov r0, sb
	ands r0, r2
	lsls r0, r0, #6
	adds r1, r1, r0
	mov sl, r1
	ldr r4, [sp]
	movs r6, #0x1e
_0803F602:
	ldr r0, [r7]
	adds r1, r5, #0
	mov r2, sb
	bl sub_08001994
	strh r0, [r4]
	adds r4, #2
	subs r6, #1
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r6, #0
	bge _0803F602
	movs r0, #0
	movs r1, #0x1f
	ldr r2, [sp]
	mov r3, sl
	bl sub_08001580
_0803F628:
	ldr r0, [r7, #8]
	add r0, r8
	str r0, [r7, #8]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803F640: .4byte 0xFFFF0000
_0803F644: .4byte gEwramData
_0803F648: .4byte 0x00013414
_0803F64C: .4byte 0x0600E000

	thumb_func_start sub_0803F650
sub_0803F650: @ 0x0803F650
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	adds r7, r1, #0
	mov r8, r2
	ldr r3, [r7, #8]
	adds r1, r3, r2
	ldr r0, _0803F6FC @ =0x002FFFFF
	cmp r1, r0
	bgt _0803F672
	adds r0, #1
	subs r0, r0, r3
	mov r8, r0
_0803F672:
	ldr r0, _0803F700 @ =0xFFF80000
	cmp r8, r0
	bge _0803F67A
	mov r8, r0
_0803F67A:
	mov r0, r8
	str r0, [r7, #0x10]
	lsrs r1, r3, #0x13
	adds r0, r3, r0
	lsrs r0, r0, #0x13
	cmp r1, r0
	beq _0803F6E4
	ldr r0, _0803F704 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803F708 @ =0x00013414
	adds r1, r0, r1
	str r1, [sp]
	ldrh r0, [r7, #6]
	lsrs r5, r0, #3
	ldrh r0, [r7, #0xa]
	subs r0, #8
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r4, #0xb
	ldr r2, _0803F70C @ =0x0600E000
	adds r1, r1, r2
	movs r2, #0x1f
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r1, r1, r0
	mov r0, sb
	ands r0, r2
	lsls r0, r0, #6
	adds r1, r1, r0
	mov sl, r1
	ldr r4, [sp]
	movs r6, #0x1e
_0803F6BE:
	ldr r0, [r7]
	adds r1, r5, #0
	mov r2, sb
	bl sub_08001994
	strh r0, [r4]
	adds r4, #2
	subs r6, #1
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r6, #0
	bge _0803F6BE
	movs r0, #0
	movs r1, #0x1f
	ldr r2, [sp]
	mov r3, sl
	bl sub_08001580
_0803F6E4:
	ldr r0, [r7, #8]
	add r0, r8
	str r0, [r7, #8]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803F6FC: .4byte 0x002FFFFF
_0803F700: .4byte 0xFFF80000
_0803F704: .4byte gEwramData
_0803F708: .4byte 0x00013414
_0803F70C: .4byte 0x0600E000

	thumb_func_start sub_0803F710
sub_0803F710: @ 0x0803F710
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r2, _0803F7B8 @ =gEwramData
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r3, _0803F7BC @ =0x0000A078
	adds r1, r1, r3
	ldr r2, [r2]
	adds r2, r2, r1
	mov r8, r2
	lsls r2, r0, #2
	ldr r1, _0803F7C0 @ =gDisplayRegisters+0x8
	adds r4, r2, r1
	mov r2, r8
	ldrh r1, [r2, #6]
	strh r1, [r4]
	ldrh r1, [r2, #0xa]
	strh r1, [r4, #2]
	ldrh r1, [r2, #6]
	lsrs r1, r1, #3
	str r1, [sp]
	ldrh r1, [r2, #0xa]
	lsrs r6, r1, #3
	movs r1, #0
	lsls r0, r0, #0xb
	ldr r3, _0803F7C4 @ =0x0600E000
	adds r3, r0, r3
	str r3, [sp, #4]
_0803F752:
	ldr r5, [sp]
	movs r7, #0
	adds r1, #1
	mov sb, r1
	adds r0, r6, #1
	mov sl, r0
	adds r0, r6, #0
	movs r1, #0x1f
	ands r0, r1
	lsls r3, r0, #6
_0803F766:
	adds r0, r5, #0
	movs r2, #0x1f
	ands r0, r2
	lsls r0, r0, #1
	ldr r1, [sp, #4]
	adds r0, r1, r0
	adds r4, r0, r3
	mov r2, r8
	ldr r0, [r2]
	adds r1, r5, #0
	adds r2, r6, #0
	str r3, [sp, #8]
	bl sub_08001994
	strh r0, [r4]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r3, [sp, #8]
	cmp r7, #0x1f
	bls _0803F766
	mov r3, sb
	lsls r0, r3, #0x10
	lsrs r1, r0, #0x10
	mov r2, sl
	lsls r0, r2, #0x10
	lsrs r6, r0, #0x10
	cmp r1, #0x1f
	bls _0803F752
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803F7B8: .4byte gEwramData
_0803F7BC: .4byte 0x0000A078
_0803F7C0: .4byte gDisplayRegisters+0x8
_0803F7C4: .4byte 0x0600E000

	thumb_func_start sub_0803F7C8
sub_0803F7C8: @ 0x0803F7C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r3, _0803F890 @ =gEwramData
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r2, _0803F894 @ =0x0000A078
	adds r1, r1, r2
	ldr r2, [r3]
	adds r2, r2, r1
	ldr r1, [r2]
	ldr r1, [r1, #0xc]
	mov ip, r1
	mov r8, r3
	cmp r0, #2
	bne _0803F880
	ldr r0, _0803F898 @ =gDisplayRegisters
	ldrh r1, [r2, #6]
	strh r1, [r0, #0x10]
	ldrh r1, [r2, #0xa]
	strh r1, [r0, #0x12]
	movs r2, #0
	ldr r3, _0803F89C @ =0x0600F000
	mov sb, r3
	movs r7, #3
	mov sl, r7
_0803F804:
	movs r4, #0
	lsls r1, r2, #5
	lsrs r0, r2, #2
	adds r3, r2, #1
	str r3, [sp, #0x14]
	mov r7, sb
	adds r6, r1, r7
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x15
	mov r1, sl
	ands r1, r2
_0803F81A:
	lsls r0, r4, #2
	adds r2, r0, r6
	mov r3, r8
	ldr r0, [r3]
	ldr r7, _0803F8A0 @ =0x0000C0EC
	adds r3, r0, r7
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r5
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	cmp r0, #0
	beq _0803F842
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	subs r0, #0x10
	ldr r0, [r0]
_0803F842:
	str r0, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #7
	bls _0803F81A
	ldr r1, [sp, #0x14]
	lsls r0, r1, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1f
	bls _0803F804
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, sp
	movs r2, #0
	movs r0, #0x78
	strh r0, [r1, #8]
	movs r0, #0x50
	strh r0, [r1, #0xa]
	mov r0, sp
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	strh r2, [r0, #0x10]
	ldr r1, _0803F8A4 @ =0x03002C78
	movs r2, #1
	bl BgAffineSet
_0803F880:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803F890: .4byte gEwramData
_0803F894: .4byte 0x0000A078
_0803F898: .4byte gDisplayRegisters
_0803F89C: .4byte 0x0600F000
_0803F8A0: .4byte 0x0000C0EC
_0803F8A4: .4byte 0x03002C78

	thumb_func_start sub_0803F8A8
sub_0803F8A8: @ 0x0803F8A8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r1, _0803F8E8 @ =gEwramData
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	ldr r4, _0803F8EC @ =0x0000A078
	adds r0, r0, r4
	ldr r4, [r1]
	adds r0, r4, r0
	str r5, [r0]
	movs r1, #0
	strh r2, [r0, #6]
	strh r3, [r0, #0xa]
	strh r1, [r0, #8]
	strh r1, [r0, #4]
	str r1, [r0, #0x10]
	str r1, [r0, #0xc]
	cmp r5, #0
	beq _0803F96A
	ldrh r1, [r5, #2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803F924
	ldr r0, [r5, #4]
	cmp r6, #1
	bne _0803F8F4
	ldr r2, _0803F8F0 @ =0x0000A104
	b _0803F8F6
	.align 2, 0
_0803F8E8: .4byte gEwramData
_0803F8EC: .4byte 0x0000A078
_0803F8F0: .4byte 0x0000A104
_0803F8F4:
	ldr r2, _0803F918 @ =0x0000C0E8
_0803F8F6:
	adds r1, r4, r2
	bl LZ77UnCompWram
	ldr r2, [r5, #8]
	cmp r2, #0
	beq _0803F948
	cmp r6, #1
	bne _0803F948
	ldr r0, _0803F91C @ =gEwramData
	ldr r1, [r0]
	ldr r4, _0803F920 @ =0x0000E0CC
	adds r1, r1, r4
	adds r0, r2, #0
	bl LZ77UnCompWram
	b _0803F948
	.align 2, 0
_0803F918: .4byte 0x0000C0E8
_0803F91C: .4byte gEwramData
_0803F920: .4byte 0x0000E0CC
_0803F924:
	ldr r1, _0803F934 @ =0x040000D4
	ldr r0, [r5, #4]
	str r0, [r1]
	cmp r6, #1
	bne _0803F93C
	ldr r2, _0803F938 @ =0x0000A108
	b _0803F93E
	.align 2, 0
_0803F934: .4byte 0x040000D4
_0803F938: .4byte 0x0000A108
_0803F93C:
	ldr r2, _0803F95C @ =0x0000C0EC
_0803F93E:
	adds r0, r4, r2
	str r0, [r1, #4]
	ldr r0, _0803F960 @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0803F948:
	ldrh r1, [r5, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0803F964
	adds r0, r6, #0
	bl sub_0803F710
	b _0803F96A
	.align 2, 0
_0803F95C: .4byte 0x0000C0EC
_0803F960: .4byte 0x80000400
_0803F964:
	adds r0, r6, #0
	bl sub_0803F7C8
_0803F96A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0803F970
sub_0803F970: @ 0x0803F970
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r1, _0803F9B0 @ =gEwramData
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	ldr r4, _0803F9B4 @ =0x0000A078
	adds r0, r0, r4
	ldr r4, [r1]
	adds r0, r4, r0
	str r5, [r0]
	movs r1, #0
	strh r2, [r0, #6]
	strh r3, [r0, #0xa]
	strh r1, [r0, #8]
	strh r1, [r0, #4]
	str r1, [r0, #0x10]
	str r1, [r0, #0xc]
	cmp r5, #0
	beq _0803FA00
	ldrh r1, [r5, #2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803F9CC
	ldr r0, [r5, #4]
	cmp r6, #1
	bne _0803F9BC
	ldr r2, _0803F9B8 @ =0x0000A104
	b _0803F9BE
	.align 2, 0
_0803F9B0: .4byte gEwramData
_0803F9B4: .4byte 0x0000A078
_0803F9B8: .4byte 0x0000A104
_0803F9BC:
	ldr r2, _0803F9C8 @ =0x0000C0E8
_0803F9BE:
	adds r1, r4, r2
	bl LZ77UnCompWram
	b _0803F9F0
	.align 2, 0
_0803F9C8: .4byte 0x0000C0E8
_0803F9CC:
	ldr r1, _0803F9DC @ =0x040000D4
	ldr r0, [r5, #4]
	str r0, [r1]
	cmp r6, #1
	bne _0803F9E4
	ldr r2, _0803F9E0 @ =0x0000A108
	b _0803F9E6
	.align 2, 0
_0803F9DC: .4byte 0x040000D4
_0803F9E0: .4byte 0x0000A108
_0803F9E4:
	ldr r2, _0803FA08 @ =0x0000C0EC
_0803F9E6:
	adds r0, r4, r2
	str r0, [r1, #4]
	ldr r0, _0803FA0C @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0803F9F0:
	ldrh r1, [r5, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0803FA00
	adds r0, r6, #0
	bl sub_0803F710
_0803FA00:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803FA08: .4byte 0x0000C0EC
_0803FA0C: .4byte 0x80000400

	thumb_func_start sub_0803FA10
sub_0803FA10: @ 0x0803FA10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	adds r7, r1, #0
	mov r8, r2
	ldr r3, [r7, #8]
	adds r0, r3, r2
	lsrs r0, r0, #0x13
	adds r0, #0x14
	ldr r1, [r7]
	ldrb r2, [r1, #1]
	lsls r1, r2, #5
	cmp r0, r1
	blo _0803FA40
	lsls r1, r2, #0x18
	movs r2, #0xa0
	lsls r2, r2, #0x10
	adds r0, r3, r2
	subs r1, r1, r0
	mov r8, r1
_0803FA40:
	movs r0, #0x80
	lsls r0, r0, #0xc
	cmp r8, r0
	ble _0803FA4A
	mov r8, r0
_0803FA4A:
	mov r5, r8
	str r5, [r7, #0x10]
	ldr r2, _0803FAD0 @ =0xFFFF0000
	adds r1, r3, r2
	lsrs r1, r1, #0x13
	adds r0, r3, r5
	adds r0, r0, r2
	lsrs r0, r0, #0x13
	cmp r1, r0
	beq _0803FAB8
	ldr r0, _0803FAD4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803FAD8 @ =0x00013414
	adds r1, r0, r1
	str r1, [sp]
	ldrh r0, [r7, #6]
	lsrs r5, r0, #3
	ldrh r0, [r7, #0xa]
	adds r0, #0xa7
	lsrs r0, r0, #3
	mov sb, r0
	lsls r1, r4, #0xb
	ldr r2, _0803FADC @ =0x0600E000
	adds r1, r1, r2
	movs r2, #0x1f
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r1, r1, r0
	mov r0, sb
	ands r0, r2
	lsls r0, r0, #6
	adds r1, r1, r0
	mov sl, r1
	ldr r4, [sp]
	movs r6, #0x1e
_0803FA92:
	ldr r0, [r7]
	adds r1, r5, #0
	mov r2, sb
	bl sub_08001994
	strh r0, [r4]
	adds r4, #2
	subs r6, #1
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r6, #0
	bge _0803FA92
	movs r0, #0
	movs r1, #0x1f
	ldr r2, [sp]
	mov r3, sl
	bl sub_08001580
_0803FAB8:
	ldr r0, [r7, #8]
	add r0, r8
	str r0, [r7, #8]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803FAD0: .4byte 0xFFFF0000
_0803FAD4: .4byte gEwramData
_0803FAD8: .4byte 0x00013414
_0803FADC: .4byte 0x0600E000

	thumb_func_start sub_0803FAE0
sub_0803FAE0: @ 0x0803FAE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r3, r0, #0
	adds r6, r1, #0
	mov r8, r2
	ldr r2, [r6, #8]
	mov r1, r8
	adds r0, r2, r1
	cmp r0, #0
	bge _0803FB00
	rsbs r4, r2, #0
	mov r8, r4
_0803FB00:
	ldr r0, _0803FB88 @ =0xFFF80000
	cmp r8, r0
	bge _0803FB08
	mov r8, r0
_0803FB08:
	mov r0, r8
	str r0, [r6, #0x10]
	lsrs r1, r2, #0x13
	adds r0, r2, r0
	lsrs r0, r0, #0x13
	cmp r1, r0
	beq _0803FB72
	ldr r0, _0803FB8C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803FB90 @ =0x00013414
	adds r1, r0, r1
	str r1, [sp]
	ldrh r0, [r6, #6]
	lsrs r5, r0, #3
	ldrh r0, [r6, #0xa]
	subs r0, #8
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r3, #0xb
	ldr r4, _0803FB94 @ =0x0600E000
	adds r1, r1, r4
	movs r2, #0x1f
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r1, r1, r0
	mov r0, sb
	ands r0, r2
	lsls r0, r0, #6
	adds r1, r1, r0
	mov sl, r1
	ldr r4, [sp]
	movs r7, #0x1e
_0803FB4C:
	ldr r0, [r6]
	adds r1, r5, #0
	mov r2, sb
	bl sub_08001994
	strh r0, [r4]
	adds r4, #2
	subs r7, #1
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r7, #0
	bge _0803FB4C
	movs r0, #0
	movs r1, #0x1f
	ldr r2, [sp]
	mov r3, sl
	bl sub_08001580
_0803FB72:
	ldr r0, [r6, #8]
	add r0, r8
	str r0, [r6, #8]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803FB88: .4byte 0xFFF80000
_0803FB8C: .4byte gEwramData
_0803FB90: .4byte 0x00013414
_0803FB94: .4byte 0x0600E000

	thumb_func_start sub_0803FB98
sub_0803FB98: @ 0x0803FB98
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r0, r0, #0xb
	ldr r3, _0803FBB8 @ =0x0600E000
	adds r0, r0, r3
	movs r3, #0x1f
	ands r1, r3
	lsls r1, r1, #1
	adds r0, r0, r1
	ands r2, r3
	lsls r2, r2, #6
	adds r0, r0, r2
	bx lr
	.align 2, 0
_0803FBB8: .4byte 0x0600E000

	thumb_func_start sub_0803FBBC
sub_0803FBBC: @ 0x0803FBBC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r3, r1, #0
	adds r6, r2, #0
	ldr r1, _0803FBFC @ =gEwramData
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #2
	ldr r2, _0803FC00 @ =0x0000A078
	adds r0, r0, r2
	ldr r1, [r1]
	adds r4, r1, r0
	lsls r1, r5, #2
	ldr r0, _0803FC04 @ =gDisplayRegisters+0x8
	adds r7, r1, r0
	adds r0, #2
	adds r1, r1, r0
	mov r8, r1
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #1
	bls _0803FC1E
	cmp r3, #0
	ble _0803FC08
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r3, #0
	bl sub_0803F3F8
	b _0803FC24
	.align 2, 0
_0803FBFC: .4byte gEwramData
_0803FC00: .4byte 0x0000A078
_0803FC04: .4byte gDisplayRegisters+0x8
_0803FC08:
	cmp r3, #0
	bge _0803FC18
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r3, #0
	bl sub_0803F4C8
	b _0803FC24
_0803FC18:
	movs r0, #0
	str r0, [r4, #0xc]
	b _0803FC24
_0803FC1E:
	movs r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #4]
_0803FC24:
	ldr r0, [r4]
	ldrb r0, [r0, #1]
	cmp r0, #1
	bls _0803FC4C
	cmp r6, #0
	ble _0803FC3C
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_0803F580
	b _0803FC56
_0803FC3C:
	cmp r6, #0
	bge _0803FC52
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_0803F650
	b _0803FC56
_0803FC4C:
	movs r0, #0xc0
	lsls r0, r0, #0xe
	str r0, [r4, #8]
_0803FC52:
	movs r0, #0
	str r0, [r4, #0x10]
_0803FC56:
	ldrh r0, [r4, #6]
	strh r0, [r7]
	ldrh r0, [r4, #0xa]
	mov r1, r8
	strh r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803FC6C
sub_0803FC6C: @ 0x0803FC6C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r3, r1, #0
	adds r6, r2, #0
	ldr r1, _0803FCAC @ =gEwramData
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #2
	ldr r2, _0803FCB0 @ =0x0000A078
	adds r0, r0, r2
	ldr r1, [r1]
	adds r4, r1, r0
	lsls r1, r5, #2
	ldr r0, _0803FCB4 @ =gDisplayRegisters+0x8
	adds r7, r1, r0
	adds r0, #2
	adds r1, r1, r0
	mov r8, r1
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #1
	bls _0803FCCE
	cmp r3, #0
	ble _0803FCB8
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r3, #0
	bl sub_0803F3F8
	b _0803FCD4
	.align 2, 0
_0803FCAC: .4byte gEwramData
_0803FCB0: .4byte 0x0000A078
_0803FCB4: .4byte gDisplayRegisters+0x8
_0803FCB8:
	cmp r3, #0
	bge _0803FCC8
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r3, #0
	bl sub_0803F4C8
	b _0803FCD4
_0803FCC8:
	movs r0, #0
	str r0, [r4, #0xc]
	b _0803FCD4
_0803FCCE:
	movs r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #4]
_0803FCD4:
	ldr r0, [r4]
	ldrb r0, [r0, #1]
	cmp r0, #1
	bls _0803FD02
	cmp r6, #0
	ble _0803FCEC
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_0803FA10
	b _0803FD08
_0803FCEC:
	cmp r6, #0
	bge _0803FCFC
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_0803FAE0
	b _0803FD08
_0803FCFC:
	movs r0, #0
	str r0, [r4, #0x10]
	b _0803FD08
_0803FD02:
	movs r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #8]
_0803FD08:
	ldrh r0, [r4, #6]
	strh r0, [r7]
	ldrh r0, [r4, #0xa]
	mov r1, r8
	strh r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0803FD1C
sub_0803FD1C: @ 0x0803FD1C
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0803FD50 @ =gEwramData
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0803FD54 @ =0x0000A078
	adds r1, r1, r0
	ldr r2, [r2]
	adds r1, r2, r1
	ldr r4, _0803FD58 @ =0x0000A0E8
	adds r3, r2, r4
	ldr r0, [r1]
	str r0, [r3]
	ldrh r3, [r1, #6]
	adds r4, #4
	adds r0, r2, r4
	strh r3, [r0]
	ldrh r0, [r1, #0xa]
	ldr r1, _0803FD5C @ =0x0000A0EE
	adds r2, r2, r1
	strh r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803FD50: .4byte gEwramData
_0803FD54: .4byte 0x0000A078
_0803FD58: .4byte 0x0000A0E8
_0803FD5C: .4byte 0x0000A0EE

	thumb_func_start sub_0803FD60
sub_0803FD60: @ 0x0803FD60
	push {r4, r5, r6, lr}
	ldr r5, _0803FD94 @ =gDisplayRegisters
	movs r1, #0
	ldr r0, _0803FD98 @ =0x0000FFFC
	adds r6, r0, #0
_0803FD6A:
	ldrh r0, [r5]
	ands r0, r6
	strh r0, [r5]
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	bl sub_0803E57C
	ldrh r1, [r5]
	orrs r1, r0
	strh r1, [r5]
	adds r5, #2
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r1, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #3
	ble _0803FD6A
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803FD94: .4byte gDisplayRegisters
_0803FD98: .4byte 0x0000FFFC

	thumb_func_start sub_0803FD9C
sub_0803FD9C: @ 0x0803FD9C
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	adds r4, r0, #0
	movs r1, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803FDCC
	cmp r0, #1
	bne _0803FDCE
	adds r0, r4, #0
	bl sub_0803B9B4
	ldr r0, _0803FDC4 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0803FDC8 @ =0x000153F8
	adds r1, r0, r2
	b _0803FDCE
	.align 2, 0
_0803FDC4: .4byte gEwramData
_0803FDC8: .4byte 0x000153F8
_0803FDCC:
	adds r1, r4, #4
_0803FDCE:
	ldrb r0, [r4, #1]
	cmp r0, #4
	beq _0803FDD8
	cmp r0, #0
	bne _0803FDDE
_0803FDD8:
	ldrb r0, [r4, #3]
	lsls r0, r0, #9
	b _0803FDE2
_0803FDDE:
	movs r0, #0x80
	lsls r0, r0, #7
_0803FDE2:
	cmp r6, #0
	bne _0803FE00
	ldr r2, _0803FDFC @ =0x040000D4
	str r1, [r2]
	str r5, [r2, #4]
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _0803FE06
	.align 2, 0
_0803FDFC: .4byte 0x040000D4
_0803FE00:
	adds r2, r5, #0
	bl sub_080016D0
_0803FE06:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0803FE0C
sub_0803FE0C: @ 0x0803FE0C
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r4, r2, #0
	adds r6, r3, #0
	movs r3, #0
	ldrb r1, [r0]
	cmp r1, #0
	beq _0803FE38
	cmp r1, #1
	bne _0803FE3A
	bl sub_0803B9B4
	ldr r0, _0803FE30 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803FE34 @ =0x000153F8
	adds r3, r0, r1
	b _0803FE3A
	.align 2, 0
_0803FE30: .4byte gEwramData
_0803FE34: .4byte 0x000153F8
_0803FE38:
	adds r3, r0, #4
_0803FE3A:
	lsls r0, r4, #0xb
	adds r3, r3, r0
	lsls r0, r5, #0xb
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	lsls r1, r6, #0xb
	ldr r2, _0803FE60 @ =0x040000D4
	str r3, [r2]
	str r0, [r2, #4]
	asrs r1, r1, #1
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r1, r0
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803FE60: .4byte 0x040000D4

	thumb_func_start sub_0803FE64
sub_0803FE64: @ 0x0803FE64
	push {r4, lr}
	adds r3, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _0803FE90 @ =gEwramData
	ldr r1, [r1]
	ldr r4, _0803FE94 @ =0x0000A074
	adds r1, r1, r4
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	cmp r1, r0
	bgt _0803FE9C
	adds r0, r3, #0
	subs r0, #8
	asrs r0, r0, #1
	lsls r0, r0, #1
	ldr r1, _0803FE98 @ =gDisplayRegisters
	adds r0, r0, r1
	strh r2, [r0]
	movs r0, #1
	b _0803FE9E
	.align 2, 0
_0803FE90: .4byte gEwramData
_0803FE94: .4byte 0x0000A074
_0803FE98: .4byte gDisplayRegisters
_0803FE9C:
	movs r0, #0
_0803FE9E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0803FEA4
sub_0803FEA4: @ 0x0803FEA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r1
	mov sb, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0803FF50 @ =gEwramData
	ldr r2, [r1]
	ldr r3, _0803FF54 @ =0x000115C4
	adds r1, r2, r3
	ldrh r1, [r1]
	str r1, [sp, #4]
	ldr r3, _0803FF58 @ =0x0850A136
	subs r0, #0x20
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r3
	str r1, [sp]
	ldr r0, _0803FF5C @ =0x000115C6
	adds r2, r2, r0
	ldrh r1, [r2]
	lsls r0, r1, #4
	adds r5, r1, r0
	movs r0, #0xff
	ands r5, r0
	lsls r0, r5, #8
	orrs r5, r0
	lsls r0, r5, #0x10
	orrs r5, r0
	movs r1, #0
_0803FEEA:
	adds r4, r5, #0
	ldr r2, [sp]
	adds r0, r2, r1
	ldrb r2, [r0]
	movs r3, #0
	lsls r0, r1, #2
	mov ip, r0
	adds r1, #1
	mov r8, r1
	cmp r3, sl
	bhs _0803FF0A
_0803FF00:
	lsls r0, r2, #0x19
	lsrs r2, r0, #0x18
	adds r3, #1
	cmp r3, sl
	blo _0803FF00
_0803FF0A:
	movs r3, #0
	cmp r3, sb
	bhs _0803FF34
	movs r6, #0x80
	movs r7, #0xf
_0803FF14:
	adds r0, r2, #0
	ands r0, r6
	cmp r0, #0
	beq _0803FF2A
	lsls r0, r3, #2
	adds r1, r7, #0
	lsls r1, r0
	bics r4, r1
	ldr r1, [sp, #4]
	lsls r1, r0
	orrs r4, r1
_0803FF2A:
	lsls r0, r2, #0x19
	lsrs r2, r0, #0x18
	adds r3, #1
	cmp r3, sb
	blo _0803FF14
_0803FF34:
	ldr r0, _0803FF60 @ =0x03001A18
	add r0, ip
	str r4, [r0]
	mov r1, r8
	cmp r1, #0xb
	ble _0803FEEA
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803FF50: .4byte gEwramData
_0803FF54: .4byte 0x000115C4
_0803FF58: .4byte 0x0850A136
_0803FF5C: .4byte 0x000115C6
_0803FF60: .4byte 0x03001A18

	thumb_func_start sub_0803FF64
sub_0803FF64: @ 0x0803FF64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _08040034 @ =gEwramData
	ldr r2, [r5]
	ldr r4, _08040038 @ =0x000115A6
	adds r2, r2, r4
	ldrh r2, [r2]
	movs r3, #7
	mov r8, r3
	ands r3, r2
	mov r8, r3
	adds r2, r6, #0
	bl sub_0803FEA4
	ldr r1, [r5]
	ldr r0, _0804003C @ =0x00011598
	adds r2, r1, r0
	adds r4, r1, r4
	ldrh r0, [r4]
	lsrs r0, r0, #3
	lsls r0, r0, #5
	ldr r2, [r2]
	adds r2, r2, r0
	ldr r3, _08040040 @ =0x000115A8
	adds r1, r1, r3
	ldrh r0, [r1]
	lsrs r0, r0, #3
	lsls r0, r0, #0xa
	adds r2, r2, r0
	mov sl, r2
	movs r5, #0
	mov r3, r8
	adds r0, r3, r6
	cmp r3, r0
	bhs _0803FFCA
	movs r4, #0xf
	adds r2, r0, #0
_0803FFBC:
	lsls r1, r3, #2
	adds r0, r4, #0
	lsls r0, r1
	orrs r5, r0
	adds r3, #1
	cmp r3, r2
	blo _0803FFBC
_0803FFCA:
	mvns r6, r5
	mov sb, r6
	movs r7, #0
	ldr r0, _08040034 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08040040 @ =0x000115A8
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r4, #7
	ands r4, r0
	movs r0, #8
	subs r0, r0, r4
	mov ip, r0
	movs r3, #0
	mov r6, r8
	lsls r6, r6, #2
	str r6, [sp]
	ldr r0, _08040044 @ =0x03001A18
	mov r8, r0
_0803FFF0:
	cmp r3, ip
	bne _0803FFFA
	movs r7, #0x80
	lsls r7, r7, #3
	subs r4, #8
_0803FFFA:
	adds r2, r3, r4
	lsls r2, r2, #2
	mov r1, sl
	adds r0, r1, r7
	adds r2, r2, r0
	ldr r1, [r2]
	mov r6, sb
	ands r1, r6
	mov r6, r8
	adds r6, #4
	mov r8, r6
	subs r6, #4
	ldm r6!, {r0}
	ldr r6, [sp]
	lsls r0, r6
	ands r0, r5
	orrs r1, r0
	str r1, [r2]
	adds r3, #1
	cmp r3, #0xb
	ble _0803FFF0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08040034: .4byte gEwramData
_08040038: .4byte 0x000115A6
_0804003C: .4byte 0x00011598
_08040040: .4byte 0x000115A8
_08040044: .4byte 0x03001A18

	thumb_func_start sub_08040048
sub_08040048: @ 0x08040048
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r6, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _08040168 @ =gEwramData
	ldr r2, [r5]
	ldr r4, _0804016C @ =0x000115A6
	adds r2, r2, r4
	ldrh r2, [r2]
	movs r3, #7
	mov sb, r3
	mov r7, sb
	ands r7, r2
	mov sb, r7
	adds r2, r6, #0
	bl sub_0803FEA4
	ldr r1, [r5]
	ldr r0, _08040170 @ =0x00011598
	adds r2, r1, r0
	adds r4, r1, r4
	ldrh r0, [r4]
	lsrs r0, r0, #3
	lsls r0, r0, #5
	ldr r2, [r2]
	adds r2, r2, r0
	ldr r3, _08040174 @ =0x000115A8
	adds r1, r1, r3
	ldrh r0, [r1]
	lsrs r0, r0, #3
	lsls r0, r0, #0xa
	adds r2, r2, r0
	str r2, [sp]
	movs r7, #0
	mov ip, r7
	mov r5, sb
	cmp r5, #7
	bgt _080400B2
	movs r2, #0xf
_080400A0:
	lsls r1, r5, #2
	adds r0, r2, #0
	lsls r0, r1
	mov r1, ip
	orrs r1, r0
	mov ip, r1
	adds r5, #1
	cmp r5, #7
	ble _080400A0
_080400B2:
	mov r3, ip
	mvns r3, r3
	str r3, [sp, #8]
	movs r7, #0
	str r7, [sp, #0x14]
	movs r5, #0
	mov r1, sb
	adds r0, r1, r6
	subs r0, #8
	ldr r6, _08040168 @ =gEwramData
	lsls r4, r1, #2
	cmp r5, r0
	bhs _080400E2
	movs r3, #0xf
	adds r2, r0, #0
_080400D0:
	lsls r1, r5, #2
	adds r0, r3, #0
	lsls r0, r1
	ldr r7, [sp, #0x14]
	orrs r7, r0
	str r7, [sp, #0x14]
	adds r5, #1
	cmp r5, r2
	blo _080400D0
_080400E2:
	ldr r0, [sp, #0x14]
	mvns r0, r0
	str r0, [sp, #0xc]
	movs r1, #0
	mov r8, r1
	ldr r0, [r6]
	ldr r3, _08040174 @ =0x000115A8
	adds r0, r0, r3
	ldrh r0, [r0]
	movs r6, #7
	ands r6, r0
	movs r0, #8
	subs r7, r0, r6
	str r7, [sp, #4]
	movs r5, #0
	mov sl, r4
	mov r1, sb
	subs r0, r0, r1
	lsls r0, r0, #2
	mov sb, r0
	ldr r3, _08040178 @ =0x03001A18
	str r3, [sp, #0x10]
_0804010E:
	ldr r7, [sp, #4]
	cmp r5, r7
	bne _0804011C
	movs r0, #0x80
	lsls r0, r0, #3
	mov r8, r0
	subs r6, #8
_0804011C:
	adds r2, r5, r6
	lsls r2, r2, #2
	ldr r0, [sp]
	add r0, r8
	adds r2, r2, r0
	ldr r3, [r2]
	ldr r4, [r2, #0x20]
	ldr r1, [sp, #8]
	ands r3, r1
	ldr r7, [sp, #0xc]
	ands r4, r7
	ldr r0, [sp, #0x10]
	ldm r0!, {r1}
	str r0, [sp, #0x10]
	adds r0, r1, #0
	mov r7, sl
	lsls r0, r7
	mov r7, ip
	ands r0, r7
	orrs r3, r0
	mov r0, sb
	asrs r1, r0
	ldr r7, [sp, #0x14]
	ands r1, r7
	orrs r4, r1
	str r3, [r2]
	str r4, [r2, #0x20]
	adds r5, #1
	cmp r5, #0xb
	ble _0804010E
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08040168: .4byte gEwramData
_0804016C: .4byte 0x000115A6
_08040170: .4byte 0x00011598
_08040174: .4byte 0x000115A8
_08040178: .4byte 0x03001A18

	thumb_func_start sub_0804017C
sub_0804017C: @ 0x0804017C
	push {r4, r5, r6, r7, lr}
	ldr r5, _080401F8 @ =gEwramData
	ldr r3, [r5]
	ldr r2, _080401FC @ =0x000115A6
	adds r1, r3, r2
	ldrh r4, [r1]
	movs r6, #7
	ldr r1, _08040200 @ =0x00011598
	adds r2, r3, r1
	lsrs r1, r4, #3
	lsls r1, r1, #5
	ldr r2, [r2]
	adds r2, r2, r1
	ldr r1, _08040204 @ =0x000115A8
	adds r3, r3, r1
	ldrh r1, [r3]
	lsrs r1, r1, #3
	lsls r1, r1, #0xa
	adds r7, r2, r1
	movs r2, #0
	ands r6, r4
	adds r0, r6, r0
	cmp r6, r0
	bhs _080401BE
	movs r4, #0xf
	adds r3, r0, #0
_080401B0:
	lsls r1, r6, #2
	adds r0, r4, #0
	lsls r0, r1
	orrs r2, r0
	adds r6, #1
	cmp r6, r3
	blo _080401B0
_080401BE:
	mvns r2, r2
	movs r4, #0
	ldr r0, [r5]
	ldr r1, _08040204 @ =0x000115A8
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r3, #7
	ands r3, r0
	movs r0, #8
	subs r5, r0, r3
	movs r6, #0
_080401D4:
	cmp r6, r5
	bne _080401DE
	movs r4, #0x80
	lsls r4, r4, #3
	subs r3, #8
_080401DE:
	adds r1, r6, r3
	lsls r1, r1, #2
	adds r0, r7, r4
	adds r1, r1, r0
	ldr r0, [r1]
	ands r0, r2
	str r0, [r1]
	adds r6, #1
	cmp r6, #0xb
	ble _080401D4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080401F8: .4byte gEwramData
_080401FC: .4byte 0x000115A6
_08040200: .4byte 0x00011598
_08040204: .4byte 0x000115A8

	thumb_func_start sub_08040208
sub_08040208: @ 0x08040208
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldr r3, _080402CC @ =gEwramData
	ldr r2, [r3]
	ldr r1, _080402D0 @ =0x000115A6
	adds r0, r2, r1
	ldrh r0, [r0]
	movs r5, #7
	ands r5, r0
	ldr r4, _080402D4 @ =0x00011598
	adds r1, r2, r4
	lsrs r0, r0, #3
	lsls r0, r0, #5
	ldr r1, [r1]
	adds r1, r1, r0
	ldr r7, _080402D8 @ =0x000115A8
	adds r2, r2, r7
	ldrh r0, [r2]
	lsrs r0, r0, #3
	lsls r0, r0, #0xa
	adds r1, r1, r0
	mov r8, r1
	movs r2, #0
	adds r4, r5, #0
	mov sb, r3
	cmp r4, #7
	bgt _08040256
	movs r3, #0xf
_08040248:
	lsls r1, r4, #2
	adds r0, r3, #0
	lsls r0, r1
	orrs r2, r0
	adds r4, #1
	cmp r4, #7
	ble _08040248
_08040256:
	mvns r2, r2
	mov ip, r2
	movs r3, #0
	movs r4, #0
	adds r0, r5, r6
	subs r0, #8
	cmp r4, r0
	bhs _08040278
	movs r5, #0xf
	adds r2, r0, #0
_0804026A:
	lsls r1, r4, #2
	adds r0, r5, #0
	lsls r0, r1
	orrs r3, r0
	adds r4, #1
	cmp r4, r2
	blo _0804026A
_08040278:
	mvns r3, r3
	mov sl, r3
	movs r5, #0
	mov r1, sb
	ldr r0, [r1]
	ldr r2, _080402D8 @ =0x000115A8
	adds r0, r0, r2
	ldrh r0, [r0]
	movs r3, #7
	ands r3, r0
	movs r0, #8
	subs r6, r0, r3
	movs r4, #0
_08040292:
	cmp r4, r6
	bne _0804029C
	movs r5, #0x80
	lsls r5, r5, #3
	subs r3, #8
_0804029C:
	adds r0, r4, r3
	lsls r0, r0, #2
	mov r7, r8
	adds r1, r7, r5
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r0, #0x20]
	mov r7, ip
	ands r1, r7
	mov r7, sl
	ands r2, r7
	str r1, [r0]
	str r2, [r0, #0x20]
	adds r4, #1
	cmp r4, #0xb
	ble _08040292
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080402CC: .4byte gEwramData
_080402D0: .4byte 0x000115A6
_080402D4: .4byte 0x00011598
_080402D8: .4byte 0x000115A8

	thumb_func_start sub_080402DC
sub_080402DC: @ 0x080402DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r1
	mov sb, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08040388 @ =gEwramData
	ldr r2, [r1]
	ldr r3, _0804038C @ =0x000115C4
	adds r1, r2, r3
	ldrh r1, [r1]
	str r1, [sp, #4]
	ldr r3, _08040390 @ =0x08509876
	subs r0, #0x20
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r3
	str r1, [sp]
	ldr r0, _08040394 @ =0x000115C6
	adds r2, r2, r0
	ldrh r1, [r2]
	lsls r0, r1, #4
	adds r5, r1, r0
	movs r0, #0xff
	ands r5, r0
	lsls r0, r5, #8
	orrs r5, r0
	lsls r0, r5, #0x10
	orrs r5, r0
	movs r1, #0
_08040322:
	adds r4, r5, #0
	ldr r2, [sp]
	adds r0, r2, r1
	ldrb r2, [r0]
	movs r3, #0
	lsls r0, r1, #2
	mov ip, r0
	adds r1, #1
	mov r8, r1
	cmp r3, sl
	bhs _08040342
_08040338:
	lsls r0, r2, #0x19
	lsrs r2, r0, #0x18
	adds r3, #1
	cmp r3, sl
	blo _08040338
_08040342:
	movs r3, #0
	cmp r3, sb
	bhs _0804036C
	movs r6, #0x80
	movs r7, #0xf
_0804034C:
	adds r0, r2, #0
	ands r0, r6
	cmp r0, #0
	beq _08040362
	lsls r0, r3, #2
	adds r1, r7, #0
	lsls r1, r0
	bics r4, r1
	ldr r1, [sp, #4]
	lsls r1, r0
	orrs r4, r1
_08040362:
	lsls r0, r2, #0x19
	lsrs r2, r0, #0x18
	adds r3, #1
	cmp r3, sb
	blo _0804034C
_0804036C:
	ldr r0, _08040398 @ =0x03001A18
	add r0, ip
	str r4, [r0]
	mov r1, r8
	cmp r1, #7
	ble _08040322
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08040388: .4byte gEwramData
_0804038C: .4byte 0x000115C4
_08040390: .4byte 0x08509876
_08040394: .4byte 0x000115C6
_08040398: .4byte 0x03001A18

	thumb_func_start sub_0804039C
sub_0804039C: @ 0x0804039C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _0804048C @ =gEwramData
	ldr r2, [r5]
	ldr r4, _08040490 @ =0x000115B8
	adds r2, r2, r4
	ldrh r2, [r2]
	movs r3, #7
	mov r8, r3
	mov r7, r8
	ands r7, r2
	mov r8, r7
	mov r2, sb
	bl sub_080402DC
	ldr r2, [r5]
	ldr r0, _08040494 @ =0x00011598
	adds r1, r2, r0
	adds r4, r2, r4
	ldrh r0, [r4]
	lsrs r0, r0, #3
	lsls r0, r0, #5
	ldr r1, [r1]
	adds r1, r1, r0
	ldr r3, _08040498 @ =0x000115B4
	adds r2, r2, r3
	ldrh r0, [r2]
	lsls r0, r0, #0xa
	adds r1, r1, r0
	str r1, [sp]
	movs r7, #0
	str r7, [sp, #8]
	mov r4, r8
	cmp r4, #7
	bgt _08040404
	movs r3, #0xf
_080403F2:
	lsls r1, r4, #2
	adds r0, r3, #0
	lsls r0, r1
	ldr r1, [sp, #8]
	orrs r1, r0
	str r1, [sp, #8]
	adds r4, #1
	cmp r4, #7
	ble _080403F2
_08040404:
	ldr r3, [sp, #8]
	mvns r3, r3
	str r3, [sp, #4]
	movs r6, #0
	movs r4, #0
	mov r0, r8
	add r0, sb
	subs r0, #8
	mov r7, r8
	lsls r5, r7, #2
	cmp r4, r0
	bhs _0804042E
	movs r3, #0xf
	adds r2, r0, #0
_08040420:
	lsls r1, r4, #2
	adds r0, r3, #0
	lsls r0, r1
	orrs r6, r0
	adds r4, #1
	cmp r4, r2
	blo _08040420
_0804042E:
	mvns r0, r6
	mov sl, r0
	mov sb, r5
	movs r0, #8
	mov r1, r8
	subs r0, r0, r1
	lsls r0, r0, #2
	mov ip, r0
	ldr r5, [sp]
	ldr r3, _0804049C @ =0x03001A18
	mov r8, r3
	movs r4, #7
_08040446:
	ldr r2, [r5]
	ldr r3, [r5, #0x20]
	ldr r7, [sp, #4]
	ands r2, r7
	mov r0, sl
	ands r3, r0
	mov r7, r8
	adds r7, #4
	mov r8, r7
	subs r7, #4
	ldm r7!, {r1}
	adds r0, r1, #0
	mov r7, sb
	lsls r0, r7
	ldr r7, [sp, #8]
	ands r0, r7
	orrs r2, r0
	mov r0, ip
	asrs r1, r0
	ands r1, r6
	orrs r3, r1
	str r2, [r5]
	str r3, [r5, #0x20]
	adds r5, #4
	subs r4, #1
	cmp r4, #0
	bge _08040446
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804048C: .4byte gEwramData
_08040490: .4byte 0x000115B8
_08040494: .4byte 0x00011598
_08040498: .4byte 0x000115B4
_0804049C: .4byte 0x03001A18

	thumb_func_start sub_080404A0
sub_080404A0: @ 0x080404A0
	push {r4, r5, r6, lr}
	ldr r1, _080404F8 @ =gEwramData
	ldr r3, [r1]
	ldr r2, _080404FC @ =0x000115B8
	adds r1, r3, r2
	ldrh r4, [r1]
	movs r5, #7
	ldr r1, _08040500 @ =0x00011598
	adds r2, r3, r1
	lsrs r1, r4, #3
	lsls r1, r1, #5
	ldr r2, [r2]
	adds r2, r2, r1
	ldr r1, _08040504 @ =0x000115B4
	adds r3, r3, r1
	ldrh r1, [r3]
	lsls r1, r1, #0xa
	adds r6, r2, r1
	movs r2, #0
	ands r5, r4
	adds r0, r5, r0
	cmp r5, r0
	bhs _080404E0
	movs r4, #0xf
	adds r3, r0, #0
_080404D2:
	lsls r1, r5, #2
	adds r0, r4, #0
	lsls r0, r1
	orrs r2, r0
	adds r5, #1
	cmp r5, r3
	blo _080404D2
_080404E0:
	mvns r1, r2
	adds r2, r6, #0
	movs r5, #7
_080404E6:
	ldr r0, [r2]
	ands r0, r1
	stm r2!, {r0}
	subs r5, #1
	cmp r5, #0
	bge _080404E6
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080404F8: .4byte gEwramData
_080404FC: .4byte 0x000115B8
_08040500: .4byte 0x00011598
_08040504: .4byte 0x000115B4

	thumb_func_start sub_08040508
sub_08040508: @ 0x08040508
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	ldr r0, _0804058C @ =gEwramData
	ldr r2, [r0]
	ldr r1, _08040590 @ =0x000115B8
	adds r0, r2, r1
	ldrh r0, [r0]
	movs r5, #7
	ands r5, r0
	ldr r3, _08040594 @ =0x00011598
	adds r1, r2, r3
	lsrs r0, r0, #3
	lsls r0, r0, #5
	ldr r1, [r1]
	adds r1, r1, r0
	ldr r0, _08040598 @ =0x000115B4
	adds r2, r2, r0
	ldrh r0, [r2]
	lsls r0, r0, #0xa
	adds r7, r1, r0
	movs r2, #0
	adds r3, r5, #0
	cmp r3, #7
	bgt _08040548
	movs r4, #0xf
_0804053A:
	lsls r1, r3, #2
	adds r0, r4, #0
	lsls r0, r1
	orrs r2, r0
	adds r3, #1
	cmp r3, #7
	ble _0804053A
_08040548:
	mvns r6, r2
	movs r4, #0
	movs r3, #0
	mov r1, ip
	adds r0, r5, r1
	subs r0, #8
	cmp r3, r0
	bhs _0804056A
	movs r5, #0xf
	adds r2, r0, #0
_0804055C:
	lsls r1, r3, #2
	adds r0, r5, #0
	lsls r0, r1
	orrs r4, r0
	adds r3, #1
	cmp r3, r2
	blo _0804055C
_0804056A:
	mvns r4, r4
	adds r2, r7, #0
	movs r3, #7
_08040570:
	ldr r0, [r2]
	ldr r1, [r2, #0x20]
	ands r0, r6
	ands r1, r4
	str r0, [r2]
	str r1, [r2, #0x20]
	adds r2, #4
	subs r3, #1
	cmp r3, #0
	bge _08040570
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804058C: .4byte gEwramData
_08040590: .4byte 0x000115B8
_08040594: .4byte 0x00011598
_08040598: .4byte 0x000115B4

	thumb_func_start sub_0804059C
sub_0804059C: @ 0x0804059C
	push {r4, lr}
	ldr r0, _08040644 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08040648 @ =0x00011598
	adds r2, r1, r0
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r2]
	ldr r2, _0804064C @ =0x0001159C
	adds r0, r1, r2
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	strh r3, [r0]
	ldr r4, _08040650 @ =0x0001159E
	adds r0, r1, r4
	strh r3, [r0]
	ldr r3, _08040654 @ =0x000115AA
	adds r0, r1, r3
	strh r2, [r0]
	adds r4, #2
	adds r0, r1, r4
	strh r2, [r0]
	adds r3, #2
	adds r0, r1, r3
	strh r2, [r0]
	adds r4, #2
	adds r0, r1, r4
	strh r2, [r0]
	adds r3, #2
	adds r0, r1, r3
	movs r4, #0x28
	strh r4, [r0]
	ldr r0, _08040658 @ =0x000115B0
	adds r3, r1, r0
	movs r0, #0x14
	strh r0, [r3]
	ldr r3, _0804065C @ =0x000115A4
	adds r0, r1, r3
	strh r2, [r0]
	adds r3, #4
	adds r0, r1, r3
	strh r2, [r0]
	subs r3, #2
	adds r0, r1, r3
	strh r2, [r0]
	adds r3, #0x16
	adds r0, r1, r3
	strh r2, [r0]
	subs r3, #0xa
	adds r0, r1, r3
	strh r2, [r0]
	adds r3, #0xc
	adds r0, r1, r3
	strh r2, [r0]
	subs r3, #0xa
	adds r0, r1, r3
	strh r2, [r0]
	adds r3, #0xc
	adds r0, r1, r3
	strh r4, [r0]
	ldr r4, _08040660 @ =0x000115C2
	adds r3, r1, r4
	movs r0, #0x1f
	strh r0, [r3]
	ldr r3, _08040664 @ =0x000115B6
	adds r0, r1, r3
	strh r2, [r0]
	subs r4, #8
	adds r0, r1, r4
	strh r2, [r0]
	adds r3, #2
	adds r0, r1, r3
	strh r2, [r0]
	adds r4, #0xa
	adds r3, r1, r4
	movs r0, #1
	strh r0, [r3]
	ldr r0, _08040668 @ =0x000115C6
	adds r1, r1, r0
	strh r2, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08040644: .4byte gEwramData
_08040648: .4byte 0x00011598
_0804064C: .4byte 0x0001159C
_08040650: .4byte 0x0001159E
_08040654: .4byte 0x000115AA
_08040658: .4byte 0x000115B0
_0804065C: .4byte 0x000115A4
_08040660: .4byte 0x000115C2
_08040664: .4byte 0x000115B6
_08040668: .4byte 0x000115C6

	thumb_func_start sub_0804066C
sub_0804066C: @ 0x0804066C
	push {r4, r5, lr}
	ldr r4, _080406CC @ =gEwramData
	ldr r2, [r4]
	ldr r5, _080406D0 @ =0x000115A0
	adds r3, r2, r5
	strh r0, [r3]
	adds r5, #2
	adds r2, r2, r5
	strh r1, [r2]
	ldrh r0, [r3]
	cmp r0, #0x28
	bls _08040688
	movs r0, #0x28
	strh r0, [r3]
_08040688:
	ldr r0, [r4]
	adds r1, r0, r5
	ldrh r0, [r1]
	cmp r0, #0x14
	bls _08040696
	movs r0, #0x14
	strh r0, [r1]
_08040696:
	ldr r2, [r4]
	ldr r0, _080406D4 @ =0x000115A4
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	ldr r1, _080406D0 @ =0x000115A0
	adds r0, r2, r1
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r3, _080406D8 @ =0x000115A6
	adds r1, r2, r3
	strh r0, [r1]
	ldr r5, _080406DC @ =0x000115A2
	adds r0, r2, r5
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080406E0 @ =0x000115A8
	adds r2, r2, r1
	strh r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080406CC: .4byte gEwramData
_080406D0: .4byte 0x000115A0
_080406D4: .4byte 0x000115A4
_080406D8: .4byte 0x000115A6
_080406DC: .4byte 0x000115A2
_080406E0: .4byte 0x000115A8

	thumb_func_start sub_080406E4
sub_080406E4: @ 0x080406E4
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	cmp r5, #0xf0
	bls _080406F4
	movs r5, #0xf0
_080406F4:
	cmp r6, #0x14
	bls _080406FA
	movs r6, #0x14
_080406FA:
	ldr r0, _08040738 @ =gEwramData
	ldr r4, [r0]
	adds r0, r5, #0
	movs r1, #6
	bl __udivsi3
	ldr r2, _0804073C @ =0x000115A0
	adds r1, r4, r2
	strh r0, [r1]
	adds r0, r5, #0
	movs r1, #6
	bl __umodsi3
	ldr r2, _08040740 @ =0x000115A4
	adds r1, r4, r2
	strh r0, [r1]
	ldr r1, _08040744 @ =0x000115A6
	adds r0, r4, r1
	strh r5, [r0]
	subs r2, #2
	adds r0, r4, r2
	strh r6, [r0]
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r1, #2
	adds r4, r4, r1
	strh r0, [r4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08040738: .4byte gEwramData
_0804073C: .4byte 0x000115A0
_08040740: .4byte 0x000115A4
_08040744: .4byte 0x000115A6

	thumb_func_start sub_08040748
sub_08040748: @ 0x08040748
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r7, _080407F4 @ =gEwramData
	ldr r5, [r7]
	ldr r4, _080407F8 @ =0x000115AA
	adds r6, r5, r4
	strh r0, [r6]
	adds r4, #2
	mov ip, r4
	adds r4, r5, #0
	add r4, ip
	strh r1, [r4]
	adds r0, r0, r2
	subs r0, #2
	ldr r4, _080407FC @ =0x000115AE
	adds r2, r5, r4
	strh r0, [r2]
	adds r1, r1, r3
	subs r1, #1
	ldr r2, _08040800 @ =0x000115B0
	adds r5, r5, r2
	strh r1, [r5]
	ldrh r0, [r6]
	cmp r0, #0x28
	bls _08040790
	movs r0, #0x28
	strh r0, [r6]
_08040790:
	ldr r0, [r7]
	mov r3, ip
	adds r1, r0, r3
	ldrh r0, [r1]
	cmp r0, #0x14
	bls _080407A0
	movs r0, #0x14
	strh r0, [r1]
_080407A0:
	ldr r0, [r7]
	adds r1, r0, r4
	ldrh r0, [r1]
	cmp r0, #0x28
	bls _080407AE
	movs r0, #0x28
	strh r0, [r1]
_080407AE:
	ldr r0, [r7]
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #0x14
	bls _080407BC
	movs r0, #0x14
	strh r0, [r1]
_080407BC:
	ldr r2, [r7]
	ldr r4, _08040804 @ =0x000115A4
	adds r1, r2, r4
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08040808 @ =0x000115A0
	adds r0, r2, r1
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r3, _0804080C @ =0x000115A6
	adds r1, r2, r3
	strh r0, [r1]
	subs r4, #2
	adds r0, r2, r4
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08040810 @ =0x000115A8
	adds r2, r2, r1
	strh r0, [r2]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080407F4: .4byte gEwramData
_080407F8: .4byte 0x000115AA
_080407FC: .4byte 0x000115AE
_08040800: .4byte 0x000115B0
_08040804: .4byte 0x000115A4
_08040808: .4byte 0x000115A0
_0804080C: .4byte 0x000115A6
_08040810: .4byte 0x000115A8

	thumb_func_start sub_08040814
sub_08040814: @ 0x08040814
	push {r4, r5, lr}
	ldr r4, _0804087C @ =gEwramData
	ldr r3, [r4]
	ldr r1, _08040880 @ =0x000115AA
	adds r0, r3, r1
	ldrh r1, [r0]
	ldr r2, _08040884 @ =0x000115A0
	adds r0, r3, r2
	strh r1, [r0]
	ldr r5, _08040888 @ =0x000115A2
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
	bls _08040846
	ldr r1, _0804088C @ =0x000115AC
	adds r0, r3, r1
	ldrh r0, [r0]
	strh r0, [r2]
_08040846:
	ldr r2, [r4]
	ldr r3, _08040890 @ =0x000115A4
	adds r1, r2, r3
	movs r0, #0
	strh r0, [r1]
	ldr r5, _08040884 @ =0x000115A0
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
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08040894 @ =0x000115A8
	adds r2, r2, r1
	strh r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804087C: .4byte gEwramData
_08040880: .4byte 0x000115AA
_08040884: .4byte 0x000115A0
_08040888: .4byte 0x000115A2
_0804088C: .4byte 0x000115AC
_08040890: .4byte 0x000115A4
_08040894: .4byte 0x000115A8

	thumb_func_start sub_08040898
sub_08040898: @ 0x08040898
	push {r4, r5, lr}
	ldr r4, _080408F4 @ =gEwramData
	ldr r2, [r4]
	ldr r5, _080408F8 @ =0x000115B2
	adds r3, r2, r5
	strh r0, [r3]
	adds r5, #2
	adds r2, r2, r5
	strh r1, [r2]
	ldrh r0, [r3]
	cmp r0, #0x28
	bls _080408B4
	movs r0, #0x28
	strh r0, [r3]
_080408B4:
	ldr r0, [r4]
	adds r1, r0, r5
	ldrh r0, [r1]
	cmp r0, #0x1f
	bls _080408C2
	movs r0, #0x1f
	strh r0, [r1]
_080408C2:
	ldr r2, [r4]
	ldr r0, _080408FC @ =0x000115B6
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	ldr r1, _080408F8 @ =0x000115B2
	adds r0, r2, r1
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r3, _08040900 @ =0x000115B8
	adds r1, r2, r3
	strh r0, [r1]
	ldr r5, _08040904 @ =0x000115B4
	adds r0, r2, r5
	ldrh r0, [r0]
	lsls r0, r0, #3
	ldr r1, _08040908 @ =0x000115BA
	adds r2, r2, r1
	strh r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080408F4: .4byte gEwramData
_080408F8: .4byte 0x000115B2
_080408FC: .4byte 0x000115B6
_08040900: .4byte 0x000115B8
_08040904: .4byte 0x000115B4
_08040908: .4byte 0x000115BA

	thumb_func_start sub_0804090C
sub_0804090C: @ 0x0804090C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	cmp r5, #0xf0
	bls _0804091C
	movs r5, #0xf0
_0804091C:
	cmp r6, #0x1f
	bls _08040922
	movs r6, #0x1f
_08040922:
	ldr r0, _08040960 @ =gEwramData
	ldr r4, [r0]
	adds r0, r5, #0
	movs r1, #6
	bl __udivsi3
	ldr r2, _08040964 @ =0x000115B2
	adds r1, r4, r2
	strh r0, [r1]
	adds r0, r5, #0
	movs r1, #6
	bl __umodsi3
	ldr r2, _08040968 @ =0x000115B6
	adds r1, r4, r2
	strh r0, [r1]
	ldr r1, _0804096C @ =0x000115B8
	adds r0, r4, r1
	strh r5, [r0]
	subs r2, #2
	adds r0, r4, r2
	strh r6, [r0]
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r1, #2
	adds r4, r4, r1
	strh r0, [r4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08040960: .4byte gEwramData
_08040964: .4byte 0x000115B2
_08040968: .4byte 0x000115B6
_0804096C: .4byte 0x000115B8

	thumb_func_start sub_08040970
sub_08040970: @ 0x08040970
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r7, _08040A18 @ =gEwramData
	ldr r5, [r7]
	ldr r4, _08040A1C @ =0x000115BC
	adds r6, r5, r4
	strh r0, [r6]
	adds r4, #2
	mov ip, r4
	adds r4, r5, #0
	add r4, ip
	strh r1, [r4]
	adds r0, r0, r2
	subs r0, #2
	ldr r4, _08040A20 @ =0x000115C0
	adds r2, r5, r4
	strh r0, [r2]
	adds r1, r1, r3
	subs r1, #1
	ldr r2, _08040A24 @ =0x000115C2
	adds r5, r5, r2
	strh r1, [r5]
	ldrh r0, [r6]
	cmp r0, #0x28
	bls _080409B8
	movs r0, #0x28
	strh r0, [r6]
_080409B8:
	ldr r0, [r7]
	mov r3, ip
	adds r1, r0, r3
	ldrh r0, [r1]
	cmp r0, #0x1f
	bls _080409C8
	movs r0, #0x1f
	strh r0, [r1]
_080409C8:
	ldr r0, [r7]
	adds r1, r0, r4
	ldrh r0, [r1]
	cmp r0, #0x28
	bls _080409D6
	movs r0, #0x28
	strh r0, [r1]
_080409D6:
	ldr r0, [r7]
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #0x1f
	bls _080409E4
	movs r0, #0x1f
	strh r0, [r1]
_080409E4:
	ldr r2, [r7]
	ldr r4, _08040A28 @ =0x000115B6
	adds r1, r2, r4
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08040A2C @ =0x000115B2
	adds r0, r2, r1
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r3, _08040A30 @ =0x000115B8
	adds r1, r2, r3
	strh r0, [r1]
	subs r4, #2
	adds r0, r2, r4
	ldrh r0, [r0]
	lsls r0, r0, #3
	ldr r1, _08040A34 @ =0x000115BA
	adds r2, r2, r1
	strh r0, [r2]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08040A18: .4byte gEwramData
_08040A1C: .4byte 0x000115BC
_08040A20: .4byte 0x000115C0
_08040A24: .4byte 0x000115C2
_08040A28: .4byte 0x000115B6
_08040A2C: .4byte 0x000115B2
_08040A30: .4byte 0x000115B8
_08040A34: .4byte 0x000115BA
