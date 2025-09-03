	.include "asm/gba_constants.inc"
    .include "asm/macros.inc"

	.syntax unified

	thumb_func_start AgbMain
AgbMain: @ 0x080001F4
	push {r4, r5, lr}
	ldr r0, _08000210 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08000214 @ =0x00007864
	adds r4, r0, r1
	bl InitializeGame
	movs r2, #2
	rsbs r2, r2, #0
	adds r5, r2, #0
_08000208:
	bl sub_080006CC
	b _08000348
	.align 2, 0
_08000210: .4byte gEwramData
_08000214: .4byte 0x00007864
_08000218:
	bl sub_0803DB6C
	bl UpdateInput
	ldr r0, _0800029C @ =gEwramData
	ldr r2, [r0]
	ldrh r1, [r2, #0x16]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800024C
	ldr r0, _080002A0 @ =0x0000A074
	adds r3, r2, r0
	ldrb r2, [r3]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0800024C
	lsls r0, r2, #0x1f
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	adds r0, r2, #0
	ands r0, r5
	orrs r0, r1
	strb r0, [r3]
_0800024C:
	bl sub_08000500
	bl sub_0803DF70
	ldr r0, _0800029C @ =gEwramData
	ldr r1, [r0]
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	bl sub_08000424
	bl sub_0803CDDC
	ldrb r2, [r4]
	movs r3, #1
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _080002A4
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x1f
	movs r0, #1
	eors r1, r0
	ands r1, r3
	lsls r1, r1, #3
	movs r3, #9
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r2, #3
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	ands r0, r5
	strb r0, [r4]
	b _080002E6
	.align 2, 0
_0800029C: .4byte gEwramData
_080002A0: .4byte 0x0000A074
_080002A4:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080002E6
	ldr r2, _0800035C @ =0x04000004
	ldrh r0, [r2]
	ldr r3, _08000360 @ =0x0000FFDF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2]
	ldrb r0, [r4]
	movs r2, #5
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	ands r0, r5
	movs r3, #3
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r4]
	ldr r2, _08000364 @ =0x040000B0
	ldrh r0, [r2, #0xa]
	ldr r3, _08000368 @ =0x0000C5FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2, #0xa]
	ldrh r0, [r2, #0xa]
	ldr r3, _0800036C @ =0x00007FFF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2, #0xa]
	ldrh r0, [r2, #0xa]
_080002E6:
	bl sub_080D7EEC
	bl sub_080D7E94
	ldr r2, _08000370 @ =0x040000D4
	ldr r0, _08000374 @ =gUnk_03002C60
	str r0, [r2]
	ldr r0, _08000378 @ =0x04000008
	str r0, [r2, #4]
	ldr r0, _0800037C @ =0x84000014
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrb r1, [r4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0800032A
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	adds r0, #8
	adds r0, r4, r0
	str r0, [r2]
	ldr r0, [r4, #4]
	str r0, [r2, #4]
	ldrb r0, [r4, #2]
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0800032A:
	bl sub_080015E4
	bl sub_08001194
	bl sub_0803BF60
	bl sub_0803E594
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldr r1, _08000380 @ =gUnk_03002CB0
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_08000470
_08000348:
	bl SoftResetCheck
	cmp r0, #0
	bne _08000352
	b _08000218
_08000352:
	movs r0, #0xff
	bl SoftReset
	b _08000208
	.align 2, 0
_0800035C: .4byte 0x04000004
_08000360: .4byte 0x0000FFDF
_08000364: .4byte 0x040000B0
_08000368: .4byte 0x0000C5FF
_0800036C: .4byte 0x00007FFF
_08000370: .4byte 0x040000D4
_08000374: .4byte gUnk_03002C60
_08000378: .4byte 0x04000008
_0800037C: .4byte 0x84000014
_08000380: .4byte gUnk_03002CB0

	thumb_func_start sub_08000384
sub_08000384: @ 0x08000384
	push {r4, lr}
	ldr r0, _08000404 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08000408 @ =0x00007864
	adds r4, r0, r1
	bl sub_080D7F1C
	bl m4aSoundVSync
	ldrb r1, [r4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080003F0
	ldr r2, _0800040C @ =0x040000B0
	ldrh r1, [r2, #0xa]
	ldr r0, _08000410 @ =0x0000C5FF
	ands r0, r1
	strh r0, [r2, #0xa]
	ldrh r1, [r2, #0xa]
	ldr r0, _08000414 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2, #0xa]
	ldrh r0, [r2, #0xa]
	ldrb r1, [r4]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	adds r0, #8
	adds r0, r4, r0
	ldrb r1, [r4, #2]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, [r4, #4]
	str r0, [r2, #4]
	ldrb r0, [r4, #2]
	lsrs r0, r0, #1
	ldr r1, _08000418 @ =0xA2600000
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r1, _0800041C @ =gUnk_03002CB0
	movs r0, #2
	strb r0, [r1, #2]
	subs r2, #0xac
	ldrb r0, [r4, #1]
	lsls r0, r0, #8
	movs r1, #0x28
	orrs r0, r1
	strh r0, [r2]
_080003F0:
	ldr r0, _08000420 @ =0x03007FF8
	ldrh r1, [r0]
	movs r2, #1
	orrs r1, r2
	strh r1, [r0]
	bl sub_080D7900
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08000404: .4byte gEwramData
_08000408: .4byte 0x00007864
_0800040C: .4byte 0x040000B0
_08000410: .4byte 0x0000C5FF
_08000414: .4byte 0x00007FFF
_08000418: .4byte 0xA2600000
_0800041C: .4byte gUnk_03002CB0
_08000420: .4byte 0x03007FF8

	thumb_func_start sub_08000424
sub_08000424: @ 0x08000424
	ldr r0, _08000460 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08000464 @ =0x0000FEC0
	adds r1, r0, r2
	movs r2, #0
	ldrsb r2, [r1, r2]
	ldr r1, _08000468 @ =0x0000FEC1
	adds r0, r0, r1
	movs r3, #0
	ldrsb r3, [r0, r3]
	ldr r1, _0800046C @ =gUnk_03002C60
	ldrh r0, [r1, #0xc]
	adds r0, r0, r2
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #0xe]
	adds r0, r0, r3
	strh r0, [r1, #0xe]
	ldrh r0, [r1, #0x10]
	adds r0, r0, r2
	strh r0, [r1, #0x10]
	ldrh r0, [r1, #0x12]
	adds r0, r0, r3
	strh r0, [r1, #0x12]
	ldrh r0, [r1, #0x14]
	adds r0, r0, r2
	strh r0, [r1, #0x14]
	ldrh r0, [r1, #0x16]
	adds r0, r0, r3
	strh r0, [r1, #0x16]
	bx lr
	.align 2, 0
_08000460: .4byte gEwramData
_08000464: .4byte 0x0000FEC0
_08000468: .4byte 0x0000FEC1
_0800046C: .4byte gUnk_03002C60

	thumb_func_start sub_08000470
sub_08000470: @ 0x08000470
	ldr r0, _080004AC @ =gEwramData
	ldr r0, [r0]
	ldr r2, _080004B0 @ =0x0000FEC0
	adds r1, r0, r2
	movs r2, #0
	ldrsb r2, [r1, r2]
	ldr r1, _080004B4 @ =0x0000FEC1
	adds r0, r0, r1
	movs r3, #0
	ldrsb r3, [r0, r3]
	ldr r1, _080004B8 @ =gUnk_03002C60
	ldrh r0, [r1, #0xc]
	subs r0, r0, r2
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #0xe]
	subs r0, r0, r3
	strh r0, [r1, #0xe]
	ldrh r0, [r1, #0x10]
	subs r0, r0, r2
	strh r0, [r1, #0x10]
	ldrh r0, [r1, #0x12]
	subs r0, r0, r3
	strh r0, [r1, #0x12]
	ldrh r0, [r1, #0x14]
	subs r0, r0, r2
	strh r0, [r1, #0x14]
	ldrh r0, [r1, #0x16]
	subs r0, r0, r3
	strh r0, [r1, #0x16]
	bx lr
	.align 2, 0
_080004AC: .4byte gEwramData
_080004B0: .4byte 0x0000FEC0
_080004B4: .4byte 0x0000FEC1
_080004B8: .4byte gUnk_03002C60

	thumb_func_start sub_080004BC
sub_080004BC: @ 0x080004BC
	bx lr
	.align 2, 0

	thumb_func_start sub_080004C0
sub_080004C0: @ 0x080004C0
	push {lr}
	ldr r0, _080004EC @ =gUnk_03002CB0
	ldrb r0, [r0, #2]
	cmp r0, #2
	bne _080004DE
	ldr r1, _080004F0 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r0, _080004F4 @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _080004F8 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
_080004DE:
	ldr r0, _080004FC @ =0x03007FF8
	ldrh r1, [r0]
	movs r2, #4
	orrs r1, r2
	strh r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_080004EC: .4byte gUnk_03002CB0
_080004F0: .4byte 0x040000B0
_080004F4: .4byte 0x0000C5FF
_080004F8: .4byte 0x00007FFF
_080004FC: .4byte 0x03007FF8

	thumb_func_start sub_08000500
sub_08000500: @ 0x08000500
	push {lr}
	movs r3, #1
	rsbs r3, r3, #0
	ldr r0, _0800051C @ =gEwramData
	ldr r0, [r0]
	ldrb r0, [r0, #0x10]
	cmp r0, #0x14
	bhi _080005F0
	lsls r0, r0, #2
	ldr r1, _08000520 @ =_08000524
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800051C: .4byte gEwramData
_08000520: .4byte _08000524
_08000524: @ jump table
	.4byte _08000578 @ case 0
	.4byte _0800057E @ case 1
	.4byte _08000584 @ case 2
	.4byte _0800058A @ case 3
	.4byte _08000590 @ case 4
	.4byte _080005A2 @ case 5
	.4byte _080005A8 @ case 6
	.4byte _080005AE @ case 7
	.4byte _08000596 @ case 8
	.4byte _0800059C @ case 9
	.4byte _080005B4 @ case 10
	.4byte _080005BA @ case 11
	.4byte _080005C0 @ case 12
	.4byte _080005C6 @ case 13
	.4byte _080005CC @ case 14
	.4byte _080005F0 @ case 15
	.4byte _080005D2 @ case 16
	.4byte _080005D8 @ case 17
	.4byte _080005DE @ case 18
	.4byte _080005E4 @ case 19
	.4byte _080005EA @ case 20
_08000578:
	bl sub_08002990
	b _080005EE
_0800057E:
	bl sub_0800312C
	b _080005EE
_08000584:
	bl sub_08004A48
	b _080005EE
_0800058A:
	bl sub_0800C5D4
	b _080005EE
_08000590:
	bl sub_0800BEC0
	b _080005EE
_08000596:
	bl sub_08008750
	b _080005EE
_0800059C:
	bl sub_080089D0
	b _080005EE
_080005A2:
	bl sub_08013FA0
	b _080005EE
_080005A8:
	bl sub_0801430C
	b _080005EE
_080005AE:
	bl sub_080089D8
	b _080005EE
_080005B4:
	bl sub_0800A3A4
	b _080005EE
_080005BA:
	bl sub_0800B8D0
	b _080005EE
_080005C0:
	bl sub_08002B54
	b _080005EE
_080005C6:
	bl sub_08002C88
	b _080005EE
_080005CC:
	bl sub_08002454
	b _080005EE
_080005D2:
	bl sub_08002588
	b _080005EE
_080005D8:
	bl sub_08035930
	b _080005EE
_080005DE:
	bl sub_08036670
	b _080005EE
_080005E4:
	bl sub_0803681C
	b _080005EE
_080005EA:
	bl sub_08038A38
_080005EE:
	adds r3, r0, #0
_080005F0:
	movs r0, #2
	rsbs r0, r0, #0
	cmp r3, r0
	bne _0800060C
	ldr r3, _08000608 @ =gEwramData
	ldr r1, [r3]
	ldrb r0, [r1, #0x10]
	adds r0, #1
	movs r2, #0
	strb r0, [r1, #0x10]
	ldr r0, [r3]
	b _0800061E
	.align 2, 0
_08000608: .4byte gEwramData
_0800060C:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _08000622
	ldr r1, _08000628 @ =gEwramData
	ldr r0, [r1]
	movs r2, #0
	strb r3, [r0, #0x10]
	ldr r0, [r1]
_0800061E:
	strb r2, [r0, #0x12]
	strb r2, [r0, #0x11]
_08000622:
	pop {r0}
	bx r0
	.align 2, 0
_08000628: .4byte gEwramData

	thumb_func_start sub_0800062C
sub_0800062C: @ 0x0800062C
	ldr r2, _0800063C @ =gEwramData
	ldr r1, [r2]
	movs r3, #0
	strb r0, [r1, #0x10]
	ldr r0, [r2]
	strb r3, [r0, #0x12]
	strb r3, [r0, #0x11]
	bx lr
	.align 2, 0
_0800063C: .4byte gEwramData

	thumb_func_start sub_08000640
sub_08000640: @ 0x08000640
	ldr r3, _08000654 @ =gEwramData
	ldr r1, [r3]
	ldrb r0, [r1, #0x10]
	adds r0, #1
	movs r2, #0
	strb r0, [r1, #0x10]
	ldr r0, [r3]
	strb r2, [r0, #0x12]
	strb r2, [r0, #0x11]
	bx lr
	.align 2, 0
_08000654: .4byte gEwramData

	thumb_func_start sub_08000658
sub_08000658: @ 0x08000658
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r2, _080006A8 @ =0x040000D4
	mov r0, sp
	str r0, [r2]
	ldr r1, _080006AC @ =gUnk_03002C60
	str r1, [r2, #4]
	ldr r0, _080006B0 @ =0x85000014
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #0x2e]
	strh r0, [r1, #0x28]
	strh r0, [r1, #0x1e]
	strh r0, [r1, #0x18]
	ldr r0, _080006B4 @ =0x00001C02
	strh r0, [r1]
	ldr r0, _080006B8 @ =0x00001D02
	strh r0, [r1, #2]
	ldr r0, _080006BC @ =0x00001E02
	strh r0, [r1, #4]
	ldr r0, _080006C0 @ =0x00001F02
	strh r0, [r1, #6]
	ldr r0, _080006C4 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _080006C8 @ =0x0000A074
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	add sp, #4
	bx lr
	.align 2, 0
_080006A8: .4byte 0x040000D4
_080006AC: .4byte gUnk_03002C60
_080006B0: .4byte 0x85000014
_080006B4: .4byte 0x00001C02
_080006B8: .4byte 0x00001D02
_080006BC: .4byte 0x00001E02
_080006C0: .4byte 0x00001F02
_080006C4: .4byte gEwramData
_080006C8: .4byte 0x0000A074

	thumb_func_start sub_080006CC
sub_080006CC: @ 0x080006CC
	push {r4, r5, lr}
	sub sp, #4
	movs r3, #0
	str r3, [sp]
	ldr r0, _080007B0 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _080007B4 @ =gEwramData
	ldr r1, [r1]
	str r1, [r0, #4]
	ldr r1, _080007B8 @ =0x85009555
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r4, _080007BC @ =gUnk_03002CB0
	adds r1, r4, #0
	adds r1, #8
	str r1, [r4, #4]
	ldr r5, _080007C0 @ =0x00000808
	adds r2, r4, r5
	adds r5, #4
	adds r1, r4, r5
	str r1, [r2]
	ldr r1, _080007C4 @ =sUnk_080E3664
	str r1, [r0]
	ldr r1, _080007C8 @ =0x06006000
	str r1, [r0, #4]
	ldr r1, _080007CC @ =0x84000700
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _080007D0 @ =sUnk_080E5264
	str r1, [r0]
	ldr r1, _080007D4 @ =0x06008000
	str r1, [r0, #4]
	ldr r1, _080007D8 @ =0x84000040
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _080007DC @ =sUnk_080E3464
	str r1, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r1, _080007E0 @ =0x84000080
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r3, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _080007E4 @ =0x0600E000
	str r1, [r0, #4]
	ldr r2, _080007E8 @ =0x85000200
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r3, [sp]
	mov r5, sp
	str r5, [r0]
	ldr r1, _080007EC @ =0x0600E800
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r3, [sp]
	str r5, [r0]
	ldr r1, _080007F0 @ =0x0600F000
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r3, [sp]
	str r5, [r0]
	ldr r1, _080007F4 @ =0x0600F800
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	bl sub_08000658
	ldr r1, _080007F8 @ =0x04000208
	movs r0, #1
	strh r0, [r1]
	subs r1, #8
	ldr r2, _080007FC @ =0x00002001
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08000800 @ =0x04000004
	movs r0, #8
	strh r0, [r1]
	bl sub_08000D44
	bl sub_0803D9A8
	bl sub_0803E438
	bl sub_08039DC0
	bl sub_0803BEEC
	bl sub_0804059C
	bl sub_08042754
	bl sub_080137B8
	bl sub_0801391C
	movs r0, #0xf8
	lsls r0, r0, #5
	strh r0, [r4]
	movs r0, #0
	bl sub_0800062C
	movs r0, #0xd
	bl sub_0800062C
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080007B0: .4byte 0x040000D4
_080007B4: .4byte gEwramData
_080007B8: .4byte 0x85009555
_080007BC: .4byte gUnk_03002CB0
_080007C0: .4byte 0x00000808
_080007C4: .4byte sUnk_080E3664
_080007C8: .4byte 0x06006000
_080007CC: .4byte 0x84000700
_080007D0: .4byte sUnk_080E5264
_080007D4: .4byte 0x06008000
_080007D8: .4byte 0x84000040
_080007DC: .4byte sUnk_080E3464
_080007E0: .4byte 0x84000080
_080007E4: .4byte 0x0600E000
_080007E8: .4byte 0x85000200
_080007EC: .4byte 0x0600E800
_080007F0: .4byte 0x0600F000
_080007F4: .4byte 0x0600F800
_080007F8: .4byte 0x04000208
_080007FC: .4byte 0x00002001
_08000800: .4byte 0x04000004

	thumb_func_start InitializeGame
InitializeGame: @ 0x08000804
	push {lr}
	sub sp, #4
	ldr r1, _08000880 @ =0x04000204
	ldr r2, _08000884 @ =0x00004014
	adds r0, r2, #0
	strh r0, [r1]
	movs r2, #0
	str r2, [sp]
	ldr r0, _08000888 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x12
	str r1, [r0, #4]
	ldr r1, _0800088C @ =0x85010000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [sp]
	mov r1, sp
	str r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	str r1, [r0, #4]
	ldr r1, _08000890 @ =0x85001F80
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [sp]
	mov r2, sp
	str r2, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r1, _08000894 @ =0x85006000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08000898 @ =_intr_main
	str r1, [r0]
	ldr r2, _0800089C @ =gUnk_03003CD0
	str r2, [r0, #4]
	ldr r1, _080008A0 @ =0x84000220
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, _080008A4 @ =0x03007FFC
	str r2, [r0]
	bl InitializeAudio
	bl SetSramFastFunc
	bl sub_08001094
	cmp r0, #0
	bne _08000870
	bl sub_08001004
_08000870:
	ldr r0, _080008A8 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _080008AC @ =0x001E86EF
	str r0, [r1, #8]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08000880: .4byte 0x04000204
_08000884: .4byte 0x00004014
_08000888: .4byte 0x040000D4
_0800088C: .4byte 0x85010000
_08000890: .4byte 0x85001F80
_08000894: .4byte 0x85006000
_08000898: .4byte _intr_main
_0800089C: .4byte gUnk_03003CD0
_080008A0: .4byte 0x84000220
_080008A4: .4byte 0x03007FFC
_080008A8: .4byte gEwramData
_080008AC: .4byte 0x001E86EF

	thumb_func_start UpdateInput
UpdateInput: @ 0x080008B0
	push {r4, r5, lr}
	ldr r0, _080008E4 @ =gEwramData
	ldr r2, [r0]
	adds r4, r2, #0
	adds r4, #0x14
	ldr r0, _080008E8 @ =0x04000130
	ldrh r1, [r0]
	ldr r3, _080008EC @ =0x000003FF
	adds r0, r3, #0
	adds r3, r0, #0
	eors r3, r1
	ldrh r1, [r2, #0x14]
	adds r0, r3, #0
	bics r0, r1
	strh r0, [r4, #2]
	strh r3, [r2, #0x14]
	ldrb r1, [r4, #7]
	movs r0, #0xfc
	ands r0, r1
	cmp r0, #0
	bne _080008F0
	strh r3, [r4, #8]
	ldrh r0, [r4, #2]
	strh r0, [r4, #0xa]
	b _080008F6
	.align 2, 0
_080008E4: .4byte gEwramData
_080008E8: .4byte 0x04000130
_080008EC: .4byte 0x000003FF
_080008F0:
	movs r0, #3
	ands r0, r1
	strb r0, [r4, #7]
_080008F6:
	movs r0, #0
	strh r0, [r4, #4]
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _08000914
	ldrh r0, [r4, #6]
	ldr r1, _08000910 @ =0xFFFFFC00
	ands r1, r0
	movs r0, #0x20
	orrs r1, r0
	strh r1, [r4, #6]
	strh r3, [r4, #4]
	b _08000940
	.align 2, 0
_08000910: .4byte 0xFFFFFC00
_08000914:
	ldrh r1, [r4, #6]
	lsls r0, r1, #0x16
	lsrs r0, r0, #0x16
	subs r0, #1
	ldr r3, _08000948 @ =0x000003FF
	adds r2, r3, #0
	ands r0, r2
	ldr r5, _0800094C @ =0xFFFFFC00
	adds r3, r5, #0
	ands r3, r1
	orrs r3, r0
	strh r3, [r4, #6]
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	bne _08000940
	ands r3, r5
	movs r0, #6
	orrs r3, r0
	strh r3, [r4, #6]
	ldrh r0, [r4]
	strh r0, [r4, #4]
_08000940:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08000948: .4byte 0x000003FF
_0800094C: .4byte 0xFFFFFC00

	thumb_func_start SoftResetCheck
SoftResetCheck: @ 0x08000950
	push {r4, lr}
	movs r4, #0
	ldr r0, _08000974 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _08000978 @ =0x00012FE0
	adds r3, r2, r0
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0800097C
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
_0800096E:
	movs r0, #0
	b _0800099A
	.align 2, 0
_08000974: .4byte gEwramData
_08000978: .4byte 0x00012FE0
_0800097C:
	ldrh r1, [r2, #0x16]
	movs r3, #0xf
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0xf
	beq _0800096E
	cmp r1, #0
	beq _0800096E
	ldrh r1, [r2, #0x14]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0xf
	bne _08000998
	movs r4, #1
_08000998:
	adds r0, r4, #0
_0800099A:
	pop {r4}
	pop {r1}
	bx r1
