	.include "asm/gba_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	thumb_func_start sub_08032444
sub_08032444: @ 0x08032444
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08032A5C
	adds r1, r0, #0
	cmp r1, #0
	bne _08032458
	movs r0, #0
	b _080324C0
_08032458:
	asrs r0, r5, #1
	adds r0, r1, r0
	ldrb r2, [r0]
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _0803246A
	lsrs r2, r2, #4
	b _0803246E
_0803246A:
	movs r0, #0xf
	ands r2, r0
_0803246E:
	cmp r4, #1
	beq _08032494
	cmp r4, #1
	bgt _0803247C
	cmp r4, #0
	beq _08032482
	b _080324BE
_0803247C:
	cmp r4, #2
	beq _080324A8
	b _080324BE
_08032482:
	adds r1, r5, #1
	ldr r0, _0803248C @ =gEwramData
	ldr r0, [r0]
	ldr r3, _08032490 @ =0x00013269
	b _080324B0
	.align 2, 0
_0803248C: .4byte gEwramData
_08032490: .4byte 0x00013269
_08032494:
	adds r1, r5, #1
	ldr r0, _080324A0 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _080324A4 @ =0x0001326A
	b _080324B0
	.align 2, 0
_080324A0: .4byte gEwramData
_080324A4: .4byte 0x0001326A
_080324A8:
	adds r1, r5, #1
	ldr r0, _080324C8 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _080324CC @ =0x0001326B
_080324B0:
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r1, r0
	bne _080324BE
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_080324BE:
	adds r0, r2, #0
_080324C0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080324C8: .4byte gEwramData
_080324CC: .4byte 0x0001326B

	thumb_func_start sub_080324D0
sub_080324D0: @ 0x080324D0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	bl sub_08032A5C
	adds r1, r0, #0
	cmp r1, #0
	bne _080324E6
	movs r0, #0
	b _080324FE
_080324E6:
	asrs r0, r5, #1
	adds r0, r1, r0
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _080324F8
	lsrs r1, r1, #4
	b _080324FC
_080324F8:
	movs r0, #0xf
	ands r1, r0
_080324FC:
	adds r0, r1, #0
_080324FE:
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r4
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08032512
	movs r3, #0
	b _08032518
_08032512:
	cmp r0, #9
	ble _08032518
	movs r3, #9
_08032518:
	cmp r4, #0
	ble _08032536
	ldr r0, _08032568 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0803256C @ =0x00013264
	adds r1, r0, r2
	ldrh r0, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08032570 @ =0x000003E7
	cmp r0, r2
	bls _08032536
	strh r2, [r1]
_08032536:
	lsls r0, r3, #0x18
	asrs r4, r0, #0x18
	adds r6, r4, #0
	movs r0, #0
	adds r1, r7, #0
	bl sub_08032B20
	adds r1, r0, #0
	adds r2, r1, #0
	cmp r1, #0
	beq _08032582
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _08032574
	asrs r2, r5, #1
	adds r2, r1, r2
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	lsls r1, r4, #4
	orrs r0, r1
	strb r0, [r2]
	b _08032582
	.align 2, 0
_08032568: .4byte gEwramData
_0803256C: .4byte 0x00013264
_08032570: .4byte 0x000003E7
_08032574:
	asrs r0, r5, #1
	adds r0, r2, r0
	ldrb r2, [r0]
	movs r1, #0xf0
	ands r1, r2
	orrs r1, r6
	strb r1, [r0]
_08032582:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08032588
sub_08032588: @ 0x08032588
	push {r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r0, _080325B0 @ =gEwramData
	ldr r5, [r0]
	ldr r3, _080325B4 @ =0x0001325C
	adds r1, r5, r3
	movs r3, #0
	mov ip, r0
	cmp r4, #1
	beq _080325CE
	cmp r4, #1
	bgt _080325B8
	cmp r4, #0
	beq _080325C2
	b _080325EC
	.align 2, 0
_080325B0: .4byte gEwramData
_080325B4: .4byte 0x0001325C
_080325B8:
	cmp r4, #2
	beq _080325D8
	cmp r4, #3
	beq _080325E8
	b _080325EC
_080325C2:
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, #0xc0
	adds r3, r1, r0
	b _080325EC
_080325CE:
	movs r0, #0xd
	muls r0, r2, r0
	adds r0, #0xf8
	adds r3, r1, r0
	b _080325EC
_080325D8:
	lsls r0, r2, #3
	adds r0, r0, r2
	lsls r0, r0, #1
	movs r3, #0x89
	lsls r3, r3, #1
	adds r0, r0, r3
	adds r3, r1, r0
	b _080325EC
_080325E8:
	ldr r0, _080325F4 @ =0x00013392
	adds r3, r5, r0
_080325EC:
	cmp r3, #0
	bne _080325F8
	movs r0, #0
	b _08032610
	.align 2, 0
_080325F4: .4byte 0x00013392
_080325F8:
	asrs r0, r6, #1
	adds r0, r3, r0
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _0803260A
	lsrs r1, r1, #4
	b _0803260E
_0803260A:
	movs r0, #0xf
	ands r1, r0
_0803260E:
	adds r0, r1, #0
_08032610:
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r7
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08032624
	movs r3, #0
	b _0803262A
_08032624:
	cmp r0, #9
	ble _0803262A
	movs r3, #9
_0803262A:
	lsls r0, r3, #0x18
	asrs r5, r0, #0x18
	mov r1, ip
	ldr r0, [r1]
	ldr r3, _08032648 @ =0x0001325C
	adds r1, r0, r3
	movs r3, #0
	cmp r4, #1
	beq _08032662
	cmp r4, #1
	bgt _0803264C
	cmp r4, #0
	beq _08032656
	b _08032680
	.align 2, 0
_08032648: .4byte 0x0001325C
_0803264C:
	cmp r4, #2
	beq _0803266C
	cmp r4, #3
	beq _0803267C
	b _08032680
_08032656:
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, #0xc0
	adds r3, r1, r0
	b _08032680
_08032662:
	movs r0, #0xd
	muls r0, r2, r0
	adds r0, #0xf8
	adds r3, r1, r0
	b _08032680
_0803266C:
	lsls r0, r2, #3
	adds r0, r0, r2
	lsls r0, r0, #1
	movs r2, #0x89
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r3, r1, r0
	b _08032680
_0803267C:
	ldr r1, _080326A0 @ =0x00013392
	adds r3, r0, r1
_08032680:
	cmp r3, #0
	beq _080326B2
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _080326A4
	asrs r2, r6, #1
	adds r2, r3, r2
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	lsls r1, r5, #4
	orrs r0, r1
	strb r0, [r2]
	b _080326B2
	.align 2, 0
_080326A0: .4byte 0x00013392
_080326A4:
	asrs r0, r6, #1
	adds r0, r3, r0
	ldrb r2, [r0]
	movs r1, #0xf0
	ands r1, r2
	orrs r1, r5
	strb r1, [r0]
_080326B2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080326B8
sub_080326B8: @ 0x080326B8
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	ldr r0, _080326D4 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0
	adds r5, r0, #0
	cmp r3, #1
	beq _080326EC
	cmp r3, #1
	bgt _080326D8
	cmp r3, #0
	beq _080326E2
	b _08032700
	.align 2, 0
_080326D4: .4byte gEwramData
_080326D8:
	cmp r3, #2
	beq _080326F4
	cmp r3, #3
	beq _080326FC
	b _08032700
_080326E2:
	ldr r0, _080326E8 @ =0x0001331C
	b _080326FE
	.align 2, 0
_080326E8: .4byte 0x0001331C
_080326EC:
	ldr r0, _080326F0 @ =0x00013354
	b _080326FE
	.align 2, 0
_080326F0: .4byte 0x00013354
_080326F4:
	ldr r0, _080326F8 @ =0x0001336E
	b _080326FE
	.align 2, 0
_080326F8: .4byte 0x0001336E
_080326FC:
	ldr r0, _08032708 @ =0x00013392
_080326FE:
	adds r1, r2, r0
_08032700:
	cmp r1, #0
	bne _0803270C
	movs r1, #0
	b _08032724
	.align 2, 0
_08032708: .4byte 0x00013392
_0803270C:
	asrs r0, r4, #1
	adds r0, r1, r0
	ldrb r2, [r0]
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0803271E
	lsrs r2, r2, #4
	b _08032722
_0803271E:
	movs r0, #0xf
	ands r2, r0
_08032722:
	adds r1, r2, #0
_08032724:
	ldr r0, [r5]
	movs r2, #0
	cmp r3, #1
	beq _08032748
	cmp r3, #1
	bgt _08032736
	cmp r3, #0
	beq _08032740
	b _0803275C
_08032736:
	cmp r3, #2
	beq _08032750
	cmp r3, #3
	beq _08032758
	b _0803275C
_08032740:
	ldr r3, _08032744 @ =0x00013338
	b _0803275A
	.align 2, 0
_08032744: .4byte 0x00013338
_08032748:
	ldr r3, _0803274C @ =0x00013361
	b _0803275A
	.align 2, 0
_0803274C: .4byte 0x00013361
_08032750:
	ldr r3, _08032754 @ =0x00013380
	b _0803275A
	.align 2, 0
_08032754: .4byte 0x00013380
_08032758:
	ldr r3, _08032764 @ =0x00013392
_0803275A:
	adds r2, r0, r3
_0803275C:
	cmp r2, #0
	bne _08032768
	movs r0, #0
	b _08032780
	.align 2, 0
_08032764: .4byte 0x00013392
_08032768:
	asrs r0, r4, #1
	adds r0, r2, r0
	ldrb r2, [r0]
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0803277A
	lsrs r2, r2, #4
	b _0803277E
_0803277A:
	movs r0, #0xf
	ands r2, r0
_0803277E:
	adds r0, r2, #0
_08032780:
	adds r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0803278C
sub_0803278C: @ 0x0803278C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r0, _080327A8 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0
	cmp r4, #1
	beq _080327C0
	cmp r4, #1
	bgt _080327AC
	cmp r4, #0
	beq _080327B6
	b _080327D4
	.align 2, 0
_080327A8: .4byte gEwramData
_080327AC:
	cmp r4, #2
	beq _080327C8
	cmp r4, #3
	beq _080327D0
	b _080327D4
_080327B6:
	ldr r2, _080327BC @ =0x00013338
	b _080327D2
	.align 2, 0
_080327BC: .4byte 0x00013338
_080327C0:
	ldr r2, _080327C4 @ =0x00013361
	b _080327D2
	.align 2, 0
_080327C4: .4byte 0x00013361
_080327C8:
	ldr r2, _080327CC @ =0x00013380
	b _080327D2
	.align 2, 0
_080327CC: .4byte 0x00013380
_080327D0:
	ldr r2, _080327DC @ =0x00013392
_080327D2:
	adds r1, r0, r2
_080327D4:
	cmp r1, #0
	bne _080327E0
	movs r0, #0
	b _080327F8
	.align 2, 0
_080327DC: .4byte 0x00013392
_080327E0:
	asrs r0, r5, #1
	adds r0, r1, r0
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _080327F2
	lsrs r1, r1, #4
	b _080327F6
_080327F2:
	movs r0, #0xf
	ands r1, r0
_080327F6:
	adds r0, r1, #0
_080327F8:
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08032832
	cmp r6, #0
	ble _08032832
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080326B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _08032824
	rsbs r3, r6, #0
	movs r0, #1
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08032588
_08032824:
	movs r0, #0
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08032588
	b _0803283E
_08032832:
	movs r0, #0
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08032588
_0803283E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08032844
sub_08032844: @ 0x08032844
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08032860 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0
	cmp r4, #1
	beq _08032878
	cmp r4, #1
	bgt _08032864
	cmp r4, #0
	beq _0803286E
	b _08032890
	.align 2, 0
_08032860: .4byte gEwramData
_08032864:
	cmp r4, #2
	beq _08032880
	cmp r4, #3
	beq _0803288C
	b _08032890
_0803286E:
	ldr r2, _08032874 @ =0x0001331C
	adds r1, r0, r2
	b _08032890
	.align 2, 0
_08032874: .4byte 0x0001331C
_08032878:
	ldr r3, _0803287C @ =0x00013354
	b _0803288E
	.align 2, 0
_0803287C: .4byte 0x00013354
_08032880:
	ldr r2, _08032888 @ =0x0001336E
	adds r1, r0, r2
	b _08032890
	.align 2, 0
_08032888: .4byte 0x0001336E
_0803288C:
	ldr r3, _08032898 @ =0x00013392
_0803288E:
	adds r1, r0, r3
_08032890:
	cmp r1, #0
	bne _0803289C
	movs r0, #0
	b _080328B4
	.align 2, 0
_08032898: .4byte 0x00013392
_0803289C:
	asrs r0, r5, #1
	adds r0, r1, r0
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _080328AE
	lsrs r1, r1, #4
	b _080328B2
_080328AE:
	movs r0, #0xf
	ands r1, r0
_080328B2:
	adds r0, r1, #0
_080328B4:
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _08032930
	movs r0, #1
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08032588
	movs r2, #0
	ldr r0, _080328DC @ =gEwramData
	ldr r0, [r0]
	movs r1, #0
	cmp r4, #1
	beq _080328F4
	cmp r4, #1
	bgt _080328E0
	cmp r4, #0
	beq _080328EA
	b _08032908
	.align 2, 0
_080328DC: .4byte gEwramData
_080328E0:
	cmp r4, #2
	beq _080328FC
	cmp r4, #3
	beq _08032904
	b _08032908
_080328EA:
	ldr r3, _080328F0 @ =0x0001331C
	b _08032906
	.align 2, 0
_080328F0: .4byte 0x0001331C
_080328F4:
	ldr r3, _080328F8 @ =0x00013354
	b _08032906
	.align 2, 0
_080328F8: .4byte 0x00013354
_080328FC:
	ldr r3, _08032900 @ =0x0001336E
	b _08032906
	.align 2, 0
_08032900: .4byte 0x0001336E
_08032904:
	ldr r3, _08032920 @ =0x00013392
_08032906:
	adds r1, r0, r3
_08032908:
	cmp r1, #0
	beq _08032930
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _08032924
	asrs r0, r5, #1
	adds r0, r1, r0
	ldrb r2, [r0]
	movs r1, #0xf
	b _0803292C
	.align 2, 0
_08032920: .4byte 0x00013392
_08032924:
	asrs r0, r5, #1
	adds r0, r1, r0
	ldrb r2, [r0]
	movs r1, #0xf0
_0803292C:
	ands r1, r2
	strb r1, [r0]
_08032930:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08032938
sub_08032938: @ 0x08032938
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08032954 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0
	cmp r4, #1
	beq _0803296C
	cmp r4, #1
	bgt _08032958
	cmp r4, #0
	beq _08032962
	b _08032984
	.align 2, 0
_08032954: .4byte gEwramData
_08032958:
	cmp r4, #2
	beq _08032974
	cmp r4, #3
	beq _08032980
	b _08032984
_08032962:
	ldr r2, _08032968 @ =0x00013338
	adds r1, r0, r2
	b _08032984
	.align 2, 0
_08032968: .4byte 0x00013338
_0803296C:
	ldr r3, _08032970 @ =0x00013361
	b _08032982
	.align 2, 0
_08032970: .4byte 0x00013361
_08032974:
	ldr r2, _0803297C @ =0x00013380
	adds r1, r0, r2
	b _08032984
	.align 2, 0
_0803297C: .4byte 0x00013380
_08032980:
	ldr r3, _0803298C @ =0x00013392
_08032982:
	adds r1, r0, r3
_08032984:
	cmp r1, #0
	bne _08032990
	movs r0, #0
	b _080329A8
	.align 2, 0
_0803298C: .4byte 0x00013392
_08032990:
	asrs r0, r5, #1
	adds r0, r1, r0
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _080329A2
	lsrs r1, r1, #4
	b _080329A6
_080329A2:
	movs r0, #0xf
	ands r1, r0
_080329A6:
	adds r0, r1, #0
_080329A8:
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _08032A24
	movs r0, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08032588
	movs r2, #0
	ldr r0, _080329D0 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0
	cmp r4, #1
	beq _080329E8
	cmp r4, #1
	bgt _080329D4
	cmp r4, #0
	beq _080329DE
	b _080329FC
	.align 2, 0
_080329D0: .4byte gEwramData
_080329D4:
	cmp r4, #2
	beq _080329F0
	cmp r4, #3
	beq _080329F8
	b _080329FC
_080329DE:
	ldr r3, _080329E4 @ =0x00013338
	b _080329FA
	.align 2, 0
_080329E4: .4byte 0x00013338
_080329E8:
	ldr r3, _080329EC @ =0x00013361
	b _080329FA
	.align 2, 0
_080329EC: .4byte 0x00013361
_080329F0:
	ldr r3, _080329F4 @ =0x00013380
	b _080329FA
	.align 2, 0
_080329F4: .4byte 0x00013380
_080329F8:
	ldr r3, _08032A14 @ =0x00013392
_080329FA:
	adds r1, r0, r3
_080329FC:
	cmp r1, #0
	beq _08032A24
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _08032A18
	asrs r0, r5, #1
	adds r0, r1, r0
	ldrb r2, [r0]
	movs r1, #0xf
	b _08032A20
	.align 2, 0
_08032A14: .4byte 0x00013392
_08032A18:
	asrs r0, r5, #1
	adds r0, r1, r0
	ldrb r2, [r0]
	movs r1, #0xf0
_08032A20:
	ands r1, r2
	strb r1, [r0]
_08032A24:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08032A2C
sub_08032A2C: @ 0x08032A2C
	push {r4, lr}
	adds r4, r1, #0
	bl sub_08032A5C
	adds r1, r0, #0
	cmp r1, #0
	bne _08032A3E
	movs r0, #0
	b _08032A56
_08032A3E:
	asrs r0, r4, #1
	adds r0, r1, r0
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08032A50
	lsrs r1, r1, #4
	b _08032A54
_08032A50:
	movs r0, #0xf
	ands r1, r0
_08032A54:
	adds r0, r1, #0
_08032A56:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08032A5C
sub_08032A5C: @ 0x08032A5C
	push {lr}
	adds r1, r0, #0
	movs r0, #0
	bl sub_08032B20
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08032A6C
sub_08032A6C: @ 0x08032A6C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	adds r6, r5, #0
	movs r0, #0
	adds r1, r3, #0
	bl sub_08032B20
	adds r1, r0, #0
	adds r2, r1, #0
	cmp r1, #0
	beq _08032AB2
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08032AA4
	asrs r2, r4, #1
	adds r2, r1, r2
	ldrb r0, [r2]
	movs r1, #0xf
	ands r1, r0
	lsls r0, r5, #0x18
	asrs r0, r0, #0x14
	orrs r1, r0
	strb r1, [r2]
	b _08032AB2
_08032AA4:
	asrs r0, r4, #1
	adds r0, r2, r0
	ldrb r2, [r0]
	movs r1, #0xf0
	ands r1, r2
	orrs r1, r6
	strb r1, [r0]
_08032AB2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08032AB8
sub_08032AB8: @ 0x08032AB8
	ldr r1, _08032AD4 @ =gEwramData
	ldr r1, [r1]
	movs r2, #7
	ands r2, r0
	asrs r0, r0, #3
	ldr r3, _08032AD8 @ =0x00013396
	adds r1, r1, r3
	adds r1, r1, r0
	movs r0, #1
	lsls r0, r2
	ldrb r1, [r1]
	ands r0, r1
	bx lr
	.align 2, 0
_08032AD4: .4byte gEwramData
_08032AD8: .4byte 0x00013396

	thumb_func_start sub_08032ADC
sub_08032ADC: @ 0x08032ADC
	push {lr}
	ldr r2, _08032AFC @ =gEwramData
	ldr r3, [r2]
	asrs r2, r0, #3
	adds r2, r2, r3
	ldr r3, _08032B00 @ =0x00013396
	adds r2, r2, r3
	movs r3, #7
	ands r3, r0
	cmp r1, #0
	beq _08032B04
	movs r0, #1
	lsls r0, r3
	ldrb r1, [r2]
	orrs r0, r1
	b _08032B0C
	.align 2, 0
_08032AFC: .4byte gEwramData
_08032B00: .4byte 0x00013396
_08032B04:
	movs r1, #1
	lsls r1, r3
	ldrb r0, [r2]
	bics r0, r1
_08032B0C:
	strb r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08032B14
sub_08032B14: @ 0x08032B14
	ldr r1, _08032B1C @ =0x080E1CD0
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08032B1C: .4byte 0x080E1CD0

	thumb_func_start sub_08032B20
sub_08032B20: @ 0x08032B20
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r0, _08032B40 @ =gEwramData
	ldr r4, [r0]
	ldr r0, _08032B44 @ =0x0001325C
	adds r3, r4, r0
	movs r0, #0
	cmp r1, #1
	beq _08032B5E
	cmp r1, #1
	bgt _08032B48
	cmp r1, #0
	beq _08032B52
	b _08032B7C
	.align 2, 0
_08032B40: .4byte gEwramData
_08032B44: .4byte 0x0001325C
_08032B48:
	cmp r1, #2
	beq _08032B68
	cmp r1, #3
	beq _08032B78
	b _08032B7C
_08032B52:
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, #0xc0
	adds r0, r3, r0
	b _08032B7C
_08032B5E:
	movs r0, #0xd
	muls r0, r2, r0
	adds r0, #0xf8
	adds r0, r3, r0
	b _08032B7C
_08032B68:
	lsls r0, r2, #3
	adds r0, r0, r2
	lsls r0, r0, #1
	movs r1, #0x89
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r3, r0
	b _08032B7C
_08032B78:
	ldr r1, _08032B84 @ =0x00013392
	adds r0, r4, r1
_08032B7C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08032B84: .4byte 0x00013392

	thumb_func_start sub_08032B88
sub_08032B88: @ 0x08032B88
	push {r4, r5, lr}
	adds r5, r2, #0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r0, _08032BA8 @ =gEwramData
	ldr r0, [r0]
	ldr r4, _08032BAC @ =0x0001325C
	adds r2, r0, r4
	movs r4, #0
	cmp r1, #1
	beq _08032BC6
	cmp r1, #1
	bgt _08032BB0
	cmp r1, #0
	beq _08032BBA
	b _08032BE4
	.align 2, 0
_08032BA8: .4byte gEwramData
_08032BAC: .4byte 0x0001325C
_08032BB0:
	cmp r1, #2
	beq _08032BD0
	cmp r1, #3
	beq _08032BE0
	b _08032BE4
_08032BBA:
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #2
	adds r0, #0xc0
	adds r4, r2, r0
	b _08032BE4
_08032BC6:
	movs r0, #0xd
	muls r0, r3, r0
	adds r0, #0xf8
	adds r4, r2, r0
	b _08032BE4
_08032BD0:
	lsls r0, r3, #3
	adds r0, r0, r3
	lsls r0, r0, #1
	movs r1, #0x89
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r4, r2, r0
	b _08032BE4
_08032BE0:
	ldr r1, _08032BEC @ =0x00013392
	adds r4, r0, r1
_08032BE4:
	cmp r4, #0
	bne _08032BF0
	movs r0, #0
	b _08032C08
	.align 2, 0
_08032BEC: .4byte 0x00013392
_08032BF0:
	asrs r0, r5, #1
	adds r0, r4, r0
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _08032C02
	lsrs r1, r1, #4
	b _08032C06
_08032C02:
	movs r0, #0xf
	ands r1, r0
_08032C06:
	adds r0, r1, #0
_08032C08:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08032C10
sub_08032C10: @ 0x08032C10
	push {r4, r5, r6, lr}
	adds r5, r2, #0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	ldr r0, _08032C34 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _08032C38 @ =0x0001325C
	adds r4, r0, r3
	movs r3, #0
	cmp r1, #1
	beq _08032C52
	cmp r1, #1
	bgt _08032C3C
	cmp r1, #0
	beq _08032C46
	b _08032C70
	.align 2, 0
_08032C34: .4byte gEwramData
_08032C38: .4byte 0x0001325C
_08032C3C:
	cmp r1, #2
	beq _08032C5C
	cmp r1, #3
	beq _08032C6C
	b _08032C70
_08032C46:
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, #0xc0
	adds r3, r4, r0
	b _08032C70
_08032C52:
	movs r0, #0xd
	muls r0, r2, r0
	adds r0, #0xf8
	adds r3, r4, r0
	b _08032C70
_08032C5C:
	lsls r0, r2, #3
	adds r0, r0, r2
	lsls r0, r0, #1
	movs r1, #0x89
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r3, r4, r0
	b _08032C70
_08032C6C:
	ldr r1, _08032C90 @ =0x00013392
	adds r3, r0, r1
_08032C70:
	cmp r3, #0
	beq _08032CA2
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _08032C94
	asrs r2, r5, #1
	adds r2, r3, r2
	ldrb r0, [r2]
	movs r1, #0xf
	ands r1, r0
	lsls r0, r6, #0x18
	asrs r0, r0, #0x14
	orrs r1, r0
	strb r1, [r2]
	b _08032CA2
	.align 2, 0
_08032C90: .4byte 0x00013392
_08032C94:
	asrs r0, r5, #1
	adds r0, r3, r0
	ldrb r2, [r0]
	movs r1, #0xf0
	ands r1, r2
	orrs r1, r6
	strb r1, [r0]
_08032CA2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08032CA8
sub_08032CA8: @ 0x08032CA8
	ldr r2, _08032CB8 @ =gEwramData
	ldr r2, [r2]
	adds r3, r2, #0
	adds r3, #0xa2
	strb r0, [r3]
	adds r2, #0xa3
	strb r1, [r2]
	bx lr
	.align 2, 0
_08032CB8: .4byte gEwramData

	thumb_func_start sub_08032CBC
sub_08032CBC: @ 0x08032CBC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08032CCC @ =gEwramData
	ldr r2, [r2]
	adds r2, #0xa2
	adds r2, r2, r0
	strb r1, [r2]
	bx lr
	.align 2, 0
_08032CCC: .4byte gEwramData

	thumb_func_start sub_08032CD0
sub_08032CD0: @ 0x08032CD0
	ldr r0, _08032CDC @ =gEwramData
	ldr r0, [r0]
	adds r0, #0xa3
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_08032CDC: .4byte gEwramData

	thumb_func_start sub_08032CE0
sub_08032CE0: @ 0x08032CE0
	push {r4, r5, r6, r7, lr}
	ldr r0, _08032D10 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0xa2
	movs r1, #0
	strb r1, [r0]
	movs r5, #0
	ldr r7, _08032D14 @ =0x080E1CD4
_08032CF0:
	adds r0, r5, r7
	ldrb r4, [r0]
	adds r6, r5, #1
_08032CF6:
	subs r4, #1
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08032938
	cmp r4, #0
	bne _08032CF6
	adds r5, r6, #0
	cmp r5, #2
	ble _08032CF0
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032D10: .4byte gEwramData
_08032D14: .4byte 0x080E1CD4

	thumb_func_start sub_08032D18
sub_08032D18: @ 0x08032D18
	push {r4, r5, r6, r7, lr}
	ldr r1, _08032D50 @ =gEwramData
	ldr r1, [r1]
	adds r3, r1, #0
	adds r3, #0xa2
	movs r2, #0
	strb r0, [r3]
	adds r1, #0xa3
	strb r2, [r1]
	movs r5, #0
	ldr r7, _08032D54 @ =0x080E1CD4
_08032D2E:
	adds r0, r5, r7
	ldrb r4, [r0]
	adds r6, r5, #1
_08032D34:
	subs r4, #1
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08032844
	cmp r4, #0
	bne _08032D34
	adds r5, r6, #0
	cmp r5, #2
	ble _08032D2E
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032D50: .4byte gEwramData
_08032D54: .4byte 0x080E1CD4

	thumb_func_start sub_08032D58
sub_08032D58: @ 0x08032D58
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, _08032D84 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08032D88 @ =0x0001325C
	adds r5, r0, r1
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080326B8
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _08032DB4
	cmp r4, #1
	beq _08032D9E
	cmp r4, #1
	bgt _08032D8C
	cmp r4, #0
	beq _08032D92
	b _08032DB4
	.align 2, 0
_08032D84: .4byte gEwramData
_08032D88: .4byte 0x0001325C
_08032D8C:
	cmp r4, #2
	beq _08032DAA
	b _08032DB4
_08032D92:
	ldrb r1, [r5, #0xd]
	adds r0, r6, #1
	cmp r1, r0
	bne _08032DB4
	strb r2, [r5, #0xd]
	b _08032DB4
_08032D9E:
	ldrb r1, [r5, #0xe]
	adds r0, r6, #1
	cmp r1, r0
	bne _08032DB4
	strb r2, [r5, #0xe]
	b _08032DB4
_08032DAA:
	ldrb r1, [r5, #0xf]
	adds r0, r6, #1
	cmp r1, r0
	bne _08032DB4
	strb r2, [r5, #0xf]
_08032DB4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08032DBC
sub_08032DBC: @ 0x08032DBC
	push {lr}
	adds r2, r0, #0
	cmp r2, #0
	ble _08032DDE
	ldr r0, _08032DE4 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _08032DE8 @ =0x00013264
	adds r1, r0, r3
	ldrh r0, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08032DEC @ =0x000003E7
	cmp r0, r2
	bls _08032DDE
	strh r2, [r1]
_08032DDE:
	pop {r0}
	bx r0
	.align 2, 0
_08032DE4: .4byte gEwramData
_08032DE8: .4byte 0x00013264
_08032DEC: .4byte 0x000003E7

	thumb_func_start sub_08032DF0
sub_08032DF0: @ 0x08032DF0
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	movs r5, #0
_08032DF6:
	ldr r0, _08032E48 @ =0x080E1CD4
	adds r0, r5, r0
	ldrb r6, [r0]
	movs r4, #0
	cmp r4, r6
	bge _08032E18
_08032E02:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080326B8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08032E12
	adds r7, #1
_08032E12:
	adds r4, #1
	cmp r4, r6
	blt _08032E02
_08032E18:
	adds r5, #1
	cmp r5, #2
	ble _08032DF6
	movs r6, #0
	movs r5, #0
	lsls r1, r7, #5
	ldr r2, _08032E48 @ =0x080E1CD4
_08032E26:
	adds r0, r5, r2
	ldrb r0, [r0]
	adds r6, r6, r0
	adds r5, #1
	cmp r5, #2
	ble _08032E26
	subs r0, r1, r7
	lsls r0, r0, #2
	adds r0, r0, r7
	lsls r7, r0, #3
	adds r0, r7, #0
	adds r1, r6, #0
	bl Div
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08032E48: .4byte 0x080E1CD4

	thumb_func_start sub_08032E4C
sub_08032E4C: @ 0x08032E4C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xa]
	cmp r5, #1
	beq _08032EB0
	cmp r5, #1
	bgt _08032E60
	cmp r5, #0
	beq _08032E66
	b _08032EF4
_08032E60:
	cmp r5, #2
	beq _08032ECA
	b _08032EF4
_08032E66:
	ldr r0, _08032EA8 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08032EAC @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803B924
	str r5, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
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
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xf]
	b _08032EF4
	.align 2, 0
_08032EA8: .4byte 0x081C15F4
_08032EAC: .4byte 0x0820ED60
_08032EB0:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _08032EC4
	movs r0, #2
	strb r0, [r4, #0xa]
	ldr r0, _08032EC0 @ =sub_0803B9D0
	str r0, [r4, #4]
	b _08032EF4
	.align 2, 0
_08032EC0: .4byte sub_0803B9D0
_08032EC4:
	subs r0, #1
	strb r0, [r4, #0xd]
	b _08032EF4
_08032ECA:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	adds r0, r4, #0
	bl sub_0803F17C
	adds r3, r0, #0
	cmp r3, #3
	bne _08032EF4
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	strb r3, [r4, #0xa]
_08032EF4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08032EFC
sub_08032EFC: @ 0x08032EFC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r2, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	cmp r1, #1
	bne _08032F12
	movs r1, #1
	mov r8, r1
_08032F12:
	ldr r0, _08032F78 @ =0x080E1D68
	lsls r1, r2, #3
	adds r2, r1, r0
	ldr r2, [r2]
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	ble _08032FBE
	adds r5, r2, #0
	adds r7, r0, #0
_08032F28:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _08032F7C @ =sub_08032E4C
	bl EntityCreateInRange
	adds r6, r0, #0
	ldr r0, _08032F80 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _08032F84 @ =0x00013110
	adds r2, r0, r3
	ldr r0, [r2]
	ldr r1, [r0, #0x40]
	movs r3, #2
	ldrsh r0, [r5, r3]
	lsls r0, r0, #8
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, r1, r0
	str r1, [r6, #0x40]
	ldrb r1, [r5]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _08032F88
	ldr r0, [r2]
	ldr r4, [r0, #0x44]
	bl RandomNumberGenerator
	movs r2, #4
	ldrsh r1, [r5, r2]
	lsls r1, r1, #8
	adds r4, r4, r1
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #0x10
	subs r4, r4, r1
	str r4, [r6, #0x44]
	b _08032F96
	.align 2, 0
_08032F78: .4byte 0x080E1D68
_08032F7C: .4byte sub_08032E4C
_08032F80: .4byte gEwramData
_08032F84: .4byte 0x00013110
_08032F88:
	ldr r0, [r2]
	ldr r1, [r0, #0x44]
	movs r3, #4
	ldrsh r0, [r5, r3]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r6, #0x44]
_08032F96:
	ldrb r0, [r5]
	lsrs r0, r0, #4
	strb r0, [r6, #0x14]
	movs r1, #6
	ldrsh r0, [r5, r1]
	lsls r0, r0, #8
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	str r0, [r6, #0x48]
	movs r3, #8
	ldrsh r0, [r5, r3]
	lsls r0, r0, #8
	str r0, [r6, #0x4c]
	ldrb r0, [r5, #1]
	strb r0, [r6, #0xd]
	adds r5, #0xc
	subs r7, #1
	cmp r7, #0
	bne _08032F28
_08032FBE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08032FC8
sub_08032FC8: @ 0x08032FC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	bne _080330C0
	ldr r0, _08033054 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08033058 @ =0x00013110
	adds r2, r1, r0
	ldr r0, [r2]
	adds r0, #0x42
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r5, r6, #0
	adds r5, #0x42
	strh r0, [r5]
	ldr r0, [r2]
	adds r0, #0x46
	movs r2, #0
	ldrsh r3, [r0, r2]
	adds r4, r6, #0
	adds r4, #0x46
	strh r3, [r4]
	ldr r0, _0803305C @ =0x0000A094
	adds r1, r1, r0
	ldrh r2, [r5]
	ldrh r0, [r1, #6]
	adds r2, r2, r0
	ldrh r0, [r1, #0xa]
	adds r0, r0, r3
	subs r0, #8
	movs r5, #0
	str r4, [sp]
	movs r1, #0x59
	adds r1, r1, r6
	mov r8, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
	mov r4, sb
	lsls r7, r2, #0x10
_08033024:
	lsls r2, r5, #4
	mov sl, r2
	asrs r0, r7, #0x10
	adds r1, r4, #0
	movs r2, #2
	bl sub_08001E58
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08033060
	adds r4, #0x10
	adds r5, #1
	cmp r5, #1
	ble _08033024
_08033044:
	cmp r2, #0
	bne _08033084
	mov r3, r8
	ldrb r0, [r3]
	movs r1, #8
	orrs r0, r1
	strb r0, [r3]
	b _080330D6
	.align 2, 0
_08033054: .4byte gEwramData
_08033058: .4byte 0x00013110
_0803305C: .4byte 0x0000A094
_08033060:
	mov r3, sb
	adds r1, r3, r0
	ldr r0, _0803307C @ =gEwramData
	ldr r0, [r0]
	ldr r3, _08033080 @ =0x0000A094
	adds r0, r0, r3
	ldrh r0, [r0, #0xa]
	subs r0, #1
	subs r1, r1, r0
	add r1, sl
	ldr r0, [sp]
	strh r1, [r0]
	b _08033044
	.align 2, 0
_0803307C: .4byte gEwramData
_08033080: .4byte 0x0000A094
_08033084:
	ldr r0, _080330E8 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _080330EC @ =0x0820ED60
	adds r0, r6, #0
	movs r3, #6
	bl sub_0803B924
	ldrh r1, [r6, #0x18]
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _080330F0 @ =sub_0803B9D0
	str r0, [r6, #4]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xf
	strb r0, [r1]
	mov r1, r8
	ldrb r0, [r1]
	movs r1, #2
	orrs r0, r1
	mov r2, r8
	strb r0, [r2]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
_080330C0:
	adds r0, r6, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _080330D6
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080330D6:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080330E8: .4byte 0x081C15F4
_080330EC: .4byte 0x0820ED60
_080330F0: .4byte sub_0803B9D0

	thumb_func_start sub_080330F4
sub_080330F4: @ 0x080330F4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08033104
	cmp r0, #1
	beq _08033164
	b _0803317C
_08033104:
	ldr r0, _08033158 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0803315C @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803B924
	ldr r0, _08033160 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #0x40
	adds r1, r4, #0
	adds r1, #0x65
	strb r0, [r1]
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
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _0803317C
	.align 2, 0
_08033158: .4byte 0x081C15F4
_0803315C: .4byte 0x0820ED60
_08033160: .4byte sub_0803B9D0
_08033164:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	movs r0, #0x80
	lsls r0, r0, #6
	adds r1, r1, r0
	str r1, [r4, #0x4c]
_0803317C:
	adds r0, r4, #0
	movs r1, #3
	bl sub_0806D128
	cmp r0, #0
	beq _08033194
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_08033194:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803319C
sub_0803319C: @ 0x0803319C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080331D0 @ =sub_08032FC8
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r3, r0, #0
	cmp r3, #0
	beq _080331C8
	ldr r1, _080331D4 @ =0x080E1D88
	lsls r2, r4, #1
	adds r0, r2, r1
	ldrb r0, [r0]
	strh r0, [r3, #0x18]
	adds r1, #1
	adds r2, r2, r1
	ldrb r0, [r2]
	cmp r0, #0
	beq _080331C8
	bl PlaySong
_080331C8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080331D0: .4byte sub_08032FC8
_080331D4: .4byte 0x080E1D88

	thumb_func_start sub_080331D8
sub_080331D8: @ 0x080331D8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	movs r6, #2
	rsbs r6, r6, #0
	movs r0, #0x80
	lsls r0, r0, #7
	mov r8, r0
_080331EA:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _08033248 @ =sub_080330F4
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	beq _0803323C
	movs r0, #0x80
	lsls r0, r0, #8
	bl sub_0802D5EC
	lsls r4, r6, #0xf
	ldr r1, [r7, #0x40]
	adds r1, r1, r4
	adds r1, r1, r0
	str r1, [r5, #0x40]
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_0802D5EC
	lsls r0, r0, #8
	ldr r1, _0803324C @ =0xFFF00000
	adds r0, r0, r1
	ldr r1, [r7, #0x44]
	adds r1, r1, r0
	str r1, [r5, #0x44]
	mov r0, r8
	bl sub_0802D5EC
	adds r4, r4, r0
	str r4, [r5, #0x48]
	mov r0, r8
	bl sub_0802D5EC
	ldr r1, _08033250 @ =0xFFFE8000
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	adds r6, #1
	cmp r6, #2
	ble _080331EA
_0803323C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033248: .4byte sub_080330F4
_0803324C: .4byte 0xFFF00000
_08033250: .4byte 0xFFFE8000

	thumb_func_start sub_08033254
sub_08033254: @ 0x08033254
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	movs r0, #0x30
	ldrsh r4, [r6, r0]
	ldr r1, _0803334C @ =0x080E1DB4
	adds r0, r6, #0
	bl sub_08022088
	cmp r0, #0
	beq _0803333A
	ldr r1, _08033350 @ =0x080E1DA8
	ldrb r0, [r1]
	cmp r4, r0
	bgt _0803333A
	lsls r0, r4, #2
	adds r1, #4
	adds r0, r0, r1
	ldr r4, [r0]
	ldrb r1, [r4]
	mov sb, r1
	ldr r0, _08033354 @ =0x081CBE14
	movs r1, #0
	bl sub_0803B800
	str r0, [sp]
	ldr r0, _08033358 @ =0x08209C64
	bl sub_080681D8
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov sl, r0
	movs r7, #0
	adds r0, r6, #0
	adds r0, #0x59
	str r0, [sp, #4]
	cmp r7, sb
	bge _0803332E
	movs r1, #0
	mov r8, r1
	adds r5, r4, #4
_080332AE:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _0803335C @ =sub_08033370
	bl EntityCreateInRange
	adds r4, r0, #0
	ldr r1, _08033360 @ =0x0820F18C
	ldr r2, [sp]
	mov r3, sl
	bl sub_0803B924
	adds r0, r4, #0
	adds r0, #0x65
	mov r1, r8
	strb r1, [r0]
	ldr r0, _08033364 @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r3, r4, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _08033368 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0803336C @ =0x0000A094
	adds r2, r2, r0
	ldrh r1, [r5]
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x42
	strh r1, [r0]
	ldrh r1, [r5, #2]
	ldrh r0, [r2, #0xa]
	subs r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x46
	strh r1, [r0]
	adds r0, #0x10
	mov r1, r8
	strh r1, [r0]
	subs r0, #8
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
	mov r0, r8
	str r0, [r4, #0x18]
	str r6, [r4, #0x14]
	ldrb r0, [r3]
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	bl EntityGetSlot
	adds r1, r7, r6
	strb r0, [r1, #0x14]
	adds r5, #4
	adds r7, #1
	cmp r7, sb
	blt _080332AE
_0803332E:
	ldr r1, [sp, #4]
	ldrb r0, [r1]
	movs r1, #4
	orrs r0, r1
	ldr r1, [sp, #4]
	strb r0, [r1]
_0803333A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803334C: .4byte 0x080E1DB4
_08033350: .4byte 0x080E1DA8
_08033354: .4byte 0x081CBE14
_08033358: .4byte 0x08209C64
_0803335C: .4byte sub_08033370
_08033360: .4byte 0x0820F18C
_08033364: .4byte sub_0803B9D0
_08033368: .4byte gEwramData
_0803336C: .4byte 0x0000A094

	thumb_func_start sub_08033370
sub_08033370: @ 0x08033370
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, _080333DC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080333E0 @ =0x00013110
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r5, #0x40]
	ldr r0, [r1, #0x40]
	subs r7, r2, r0
	ldr r4, [r5, #0x44]
	ldr r0, [r1, #0x44]
	subs r4, r4, r0
	str r2, [sp, #4]
	adds r0, r5, #0
	bl GetEntityRoomXPositionInteger
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #0
	bl GetEntityRoomYPositionInteger
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _080333E4 @ =0x001DFFFF
	cmp r4, r0
	bhi _0803340C
	lsls r0, r6, #0x10
	asrs r6, r0, #0x10
	adds r0, r6, #0
	adds r0, #0x1e
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r4, r1, #0
	subs r4, #0x10
	adds r1, r4, #0
	bl sub_08002058
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080333EC
	ldr r0, _080333E8 @ =0xFFE70000
	cmp r7, r0
	ble _0803340C
	cmp r7, #0
	bge _0803340C
	ldr r0, [r5, #0x18]
	movs r1, #1
	b _08033408
	.align 2, 0
_080333DC: .4byte gEwramData
_080333E0: .4byte 0x00013110
_080333E4: .4byte 0x001DFFFF
_080333E8: .4byte 0xFFE70000
_080333EC:
	adds r0, r6, #0
	subs r0, #0x1e
	adds r1, r4, #0
	bl sub_0800207C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803340C
	subs r1, r7, #1
	ldr r0, _080335E0 @ =0x0018FFFE
	cmp r1, r0
	bhi _0803340C
	ldr r0, [r5, #0x18]
	movs r1, #2
_08033408:
	orrs r0, r1
	str r0, [r5, #0x18]
_0803340C:
	ldr r1, [r5, #0x18]
	movs r0, #0xc
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	bne _0803343A
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08033428
	ldr r0, [r5, #0x40]
	ldr r3, _080335E4 @ =0xFFFF8000
	adds r0, r0, r3
	str r0, [r5, #0x40]
_08033428:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0803343A
	ldr r0, [r5, #0x40]
	movs r6, #0x80
	lsls r6, r6, #8
	adds r0, r0, r6
	str r0, [r5, #0x40]
_0803343A:
	ldr r0, [r5, #0x4c]
	ldr r1, [r5, #0x54]
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	movs r1, #0xc0
	lsls r1, r1, #0xb
	cmp r0, r1
	ble _0803344C
	str r1, [r5, #0x4c]
_0803344C:
	ldr r1, [r5, #0x44]
	ldr r0, [r5, #0x4c]
	adds r1, r1, r0
	mov ip, r1
	str r1, [r5, #0x44]
	movs r0, #1
	ands r0, r2
	adds r7, r5, #0
	adds r7, #0x59
	str r7, [sp, #8]
	cmp r0, #0
	beq _08033526
	ldr r0, [r5, #0x14]
	mov sb, r0
	movs r7, #0
	ldr r0, _080335E8 @ =0x080E1DA8
	mov r2, sb
	movs r3, #0x30
	ldrsh r1, [r2, r3]
	lsls r1, r1, #2
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	ldrb r4, [r0]
	movs r3, #0
	cmp r7, r4
	bge _080334D0
	ldr r0, _080335EC @ =gEwramData
	ldr r0, [r0]
	mov r8, r0
_08033488:
	mov r6, sb
	adds r0, r3, r6
	movs r1, #0x14
	ldrsb r1, [r0, r1]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080335F0 @ =0x000004E4
	adds r0, r0, r1
	mov r6, r8
	adds r2, r6, r0
	ldr r0, [r2, #0x44]
	mov r6, ip
	subs r1, r6, r0
	cmp r2, r5
	beq _080334CA
	movs r0, #0xf8
	lsls r0, r0, #0xd
	adds r1, r1, r0
	ldr r0, _080335F4 @ =0x003DFFFF
	cmp r1, r0
	bhi _080334CA
	ldr r0, [r5, #0x40]
	ldr r1, [r2, #0x40]
	subs r1, r0, r1
	ldr r0, _080335F8 @ =0x001FFFFF
	cmp r1, r0
	bhi _080334CA
	adds r0, #1
	subs r0, r0, r1
	cmp r7, r0
	bge _080334CA
	adds r7, r0, #0
_080334CA:
	adds r3, #1
	cmp r3, r4
	blt _08033488
_080334D0:
	adds r1, r7, #0
	cmp r1, #0
	beq _080334DC
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
_080334DC:
	adds r0, r5, #0
	bl GetEntityRoomXPositionInteger
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #0
	bl GetEntityRoomYPositionInteger
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	adds r6, r1, #0
	subs r6, #0x11
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0800207C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _0803351A
	adds r1, r4, #0
	subs r1, #0x18
	adds r0, r6, #0
	bl sub_0800207C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08033526
_0803351A:
	adds r2, r5, #0
	adds r2, #0x42
	ldrh r0, [r2]
	subs r0, #1
	adds r0, r0, r1
	strh r0, [r2]
_08033526:
	ldr r0, [r5, #0x18]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08033620
	ldr r1, [r5, #0x14]
	mov sb, r1
	movs r7, #0
	ldr r0, _080335E8 @ =0x080E1DA8
	movs r2, #0x30
	ldrsh r1, [r1, r2]
	lsls r1, r1, #2
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	ldrb r4, [r0]
	movs r3, #0
	cmp r7, r4
	bge _0803359E
	ldr r0, _080335EC @ =gEwramData
	ldr r0, [r0]
	mov r8, r0
	ldr r6, [r5, #0x44]
	mov ip, r6
_08033556:
	mov r1, sb
	adds r0, r3, r1
	movs r1, #0x14
	ldrsb r1, [r0, r1]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _080335F0 @ =0x000004E4
	adds r0, r0, r2
	mov r6, r8
	adds r2, r6, r0
	ldr r0, [r2, #0x44]
	mov r6, ip
	subs r1, r6, r0
	cmp r2, r5
	beq _08033598
	movs r0, #0xf8
	lsls r0, r0, #0xd
	adds r1, r1, r0
	ldr r0, _080335F4 @ =0x003DFFFF
	cmp r1, r0
	bhi _08033598
	ldr r0, [r2, #0x40]
	ldr r1, [r5, #0x40]
	subs r1, r0, r1
	ldr r0, _080335F8 @ =0x001FFFFF
	cmp r1, r0
	bhi _08033598
	ldr r2, _080335FC @ =0xFFE00000
	adds r0, r1, r2
	cmp r7, r0
	ble _08033598
	adds r7, r0, #0
_08033598:
	adds r3, #1
	cmp r3, r4
	blt _08033556
_0803359E:
	adds r1, r7, #0
	cmp r1, #0
	beq _080335AA
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
_080335AA:
	adds r0, r5, #0
	bl GetEntityRoomXPositionInteger
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #0
	bl GetEntityRoomYPositionInteger
	lsls r1, r6, #0x10
	asrs r6, r1, #0x10
	adds r1, r6, #0
	adds r1, #0x11
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_08002058
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08033600
	adds r2, r5, #0
	adds r2, #0x42
	ldrh r0, [r2]
	adds r0, #1
	b _0803361C
	.align 2, 0
_080335E0: .4byte 0x0018FFFE
_080335E4: .4byte 0xFFFF8000
_080335E8: .4byte 0x080E1DA8
_080335EC: .4byte gEwramData
_080335F0: .4byte 0x000004E4
_080335F4: .4byte 0x003DFFFF
_080335F8: .4byte 0x001FFFFF
_080335FC: .4byte 0xFFE00000
_08033600:
	adds r0, r6, #0
	adds r0, #0xf
	adds r1, r4, #0
	subs r1, #0x18
	bl sub_08002058
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08033620
	adds r2, r5, #0
	adds r2, #0x42
	ldrh r0, [r2]
	subs r0, #1
_0803361C:
	adds r0, r0, r1
	strh r0, [r2]
_08033620:
	movs r3, #1
	str r3, [sp]
	ldr r6, [r5, #0x14]
	mov ip, r6
	movs r6, #0
	ldr r7, [r5, #0x40]
	mov sb, r7
	ldr r0, [r5, #0x44]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r1, r1, r0
	mov r8, r1
	ldr r1, _0803371C @ =0x080E1DA8
	mov r2, ip
	movs r3, #0x30
	ldrsh r0, [r2, r3]
	lsls r0, r0, #2
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r0, [r0]
	str r0, [sp, #0xc]
	movs r4, #0
	cmp r6, r0
	bge _080336AA
	ldr r7, _08033720 @ =gEwramData
	mov sl, r7
_08033656:
	mov r1, ip
	adds r0, r4, r1
	movs r1, #0x14
	ldrsb r1, [r0, r1]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _08033724 @ =0x000004E4
	adds r0, r0, r2
	mov r3, sl
	ldr r1, [r3]
	adds r2, r1, r0
	ldr r0, [r2, #0x40]
	mov r7, sb
	subs r1, r0, r7
	ldr r0, [r2, #0x44]
	mov r7, r8
	subs r3, r0, r7
	cmp r2, r5
	beq _080336A2
	movs r0, #0xf8
	lsls r0, r0, #0xd
	adds r1, r1, r0
	ldr r0, _08033728 @ =0x003DFFFF
	cmp r1, r0
	bhi _080336A2
	ldr r0, _0803372C @ =0x001FFFFF
	cmp r3, r0
	bhi _080336A2
	ldr r0, [r2, #0x18]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #0x18]
	ldr r1, _08033730 @ =0xFFE00000
	adds r0, r3, r1
	cmp r6, r0
	ble _080336A2
	adds r6, r0, #0
_080336A2:
	adds r4, #1
	ldr r2, [sp, #0xc]
	cmp r4, r2
	blt _08033656
_080336AA:
	cmp r6, #0
	beq _080336B4
	movs r3, #0x80
	lsls r3, r3, #9
	adds r6, r6, r3
_080336B4:
	adds r1, r6, #0
	cmp r1, #0
	beq _080336CA
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	movs r0, #0
	str r0, [r5, #0x54]
	str r0, [r5, #0x4c]
	movs r6, #0
	str r6, [sp]
_080336CA:
	adds r0, r5, #0
	bl GetEntityRoomXPositionInteger
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #0
	bl GetEntityRoomYPositionInteger
	lsls r1, r6, #0x10
	asrs r6, r1, #0x10
	adds r1, r6, #0
	adds r1, #0xf
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r0, #1
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _0803370A
	adds r0, r6, #0
	subs r0, #0xf
	adds r1, r4, #0
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08033734
_0803370A:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x44]
	adds r1, r1, r0
	str r1, [r5, #0x44]
	movs r0, #0
	str r0, [r5, #0x54]
	str r0, [r5, #0x4c]
	b _0803376C
	.align 2, 0
_0803371C: .4byte 0x080E1DA8
_08033720: .4byte gEwramData
_08033724: .4byte 0x000004E4
_08033728: .4byte 0x003DFFFF
_0803372C: .4byte 0x001FFFFF
_08033730: .4byte 0xFFE00000
_08033734:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08033758
	adds r0, r1, #1
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x44]
	adds r1, r1, r0
	str r1, [r5, #0x44]
	movs r0, #0
	str r0, [r5, #0x54]
	str r0, [r5, #0x4c]
	movs r7, #0
	str r7, [sp]
_08033758:
	ldr r0, [sp]
	cmp r0, #0
	beq _0803376C
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	ldr r0, [r5, #0x18]
	movs r1, #8
	orrs r0, r1
	b _08033784
_0803376C:
	ldr r0, [r5, #0x18]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0803377C
	ldr r0, _080337A8 @ =0x0000014D
	bl PlaySong
_0803377C:
	ldr r0, [r5, #0x18]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
_08033784:
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x40]
	ldr r1, [sp, #4]
	cmp r1, r0
	beq _080337AC
	ldr r0, [r5, #0x18]
	movs r4, #0x10
	ands r0, r4
	cmp r0, #0
	bne _080337C8
	movs r0, #0x9b
	lsls r0, r0, #1
	bl sub_08013D60
	ldr r0, [r5, #0x18]
	orrs r0, r4
	b _080337C6
	.align 2, 0
_080337A8: .4byte 0x0000014D
_080337AC:
	ldr r0, [r5, #0x18]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080337BE
	movs r0, #0x9b
	lsls r0, r0, #1
	bl sub_08013E18
_080337BE:
	ldr r0, [r5, #0x18]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
_080337C6:
	str r0, [r5, #0x18]
_080337C8:
	ldr r0, [r5, #0x18]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x18]
	ldr r2, [sp, #8]
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080337EC
sub_080337EC: @ 0x080337EC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	movs r4, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, _08033838 @ =gEwramData
	ldr r5, [r0]
	ldr r0, _0803383C @ =0x0000A094
	adds r3, r5, r0
	movs r7, #6
	ldrsh r0, [r3, r7]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #0xa
	ldrsh r0, [r3, r1]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	mov ip, r2
	cmp r6, #0
	beq _08033834
	ldr r0, _08033840 @ =0x080E1DA8
	movs r2, #0x30
	ldrsh r1, [r6, r2]
	lsls r1, r1, #2
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	ldrb r3, [r0]
	cmp r3, #0
	bne _08033844
_08033834:
	movs r0, #0
	b _080338A2
	.align 2, 0
_08033838: .4byte gEwramData
_0803383C: .4byte 0x0000A094
_08033840: .4byte 0x080E1DA8
_08033844:
	movs r2, #0
	cmp r4, r3
	bge _08033888
	mov sb, r5
	ldr r5, _08033898 @ =0x001FFFFF
_0803384E:
	adds r0, r2, r6
	movs r1, #0x14
	ldrsb r1, [r0, r1]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r7, _0803389C @ =0x000004E4
	adds r0, r0, r7
	mov r7, sb
	adds r1, r7, r0
	ldr r0, [r1, #0x40]
	mov r7, r8
	subs r0, r0, r7
	movs r7, #0x80
	lsls r7, r7, #0xd
	adds r0, r0, r7
	cmp r0, r5
	bhi _08033882
	ldr r0, [r1, #0x44]
	mov r1, ip
	subs r0, r0, r1
	cmp r0, r5
	bhi _08033882
	cmp r4, r0
	bge _08033882
	adds r4, r0, #0
_08033882:
	adds r2, #1
	cmp r2, r3
	blt _0803384E
_08033888:
	cmp r4, #0
	bge _080338A0
	rsbs r0, r4, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _080338A2
	.align 2, 0
_08033898: .4byte 0x001FFFFF
_0803389C: .4byte 0x000004E4
_080338A0:
	asrs r0, r4, #0x10
_080338A2:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080338B4
sub_080338B4: @ 0x080338B4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	movs r4, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, _08033900 @ =gEwramData
	ldr r5, [r0]
	ldr r0, _08033904 @ =0x0000A094
	adds r3, r5, r0
	movs r7, #6
	ldrsh r0, [r3, r7]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #0xa
	ldrsh r0, [r3, r1]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	mov ip, r2
	cmp r6, #0
	beq _080338FC
	ldr r0, _08033908 @ =0x080E1DA8
	movs r2, #0x30
	ldrsh r1, [r6, r2]
	lsls r1, r1, #2
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	ldrb r3, [r0]
	cmp r3, #0
	bne _0803390C
_080338FC:
	movs r0, #0
	b _08033972
	.align 2, 0
_08033900: .4byte gEwramData
_08033904: .4byte 0x0000A094
_08033908: .4byte 0x080E1DA8
_0803390C:
	movs r2, #0
	cmp r4, r3
	bge _08033954
	mov sb, r5
	ldr r5, _08033964 @ =0x001FFFFF
_08033916:
	adds r0, r2, r6
	movs r1, #0x14
	ldrsb r1, [r0, r1]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r7, _08033968 @ =0x000004E4
	adds r0, r0, r7
	mov r7, sb
	adds r1, r7, r0
	ldr r0, [r1, #0x40]
	mov r7, r8
	subs r0, r0, r7
	movs r7, #0x80
	lsls r7, r7, #0xd
	adds r0, r0, r7
	cmp r0, r5
	bhi _0803394E
	ldr r0, [r1, #0x44]
	mov r1, ip
	subs r0, r0, r1
	cmp r0, r5
	bhi _0803394E
	ldr r7, _0803396C @ =0xFFE00000
	adds r0, r0, r7
	cmp r4, r0
	ble _0803394E
	adds r4, r0, #0
_0803394E:
	adds r2, #1
	cmp r2, r3
	blt _08033916
_08033954:
	cmp r4, #0
	bge _08033970
	rsbs r0, r4, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _08033972
	.align 2, 0
_08033964: .4byte 0x001FFFFF
_08033968: .4byte 0x000004E4
_0803396C: .4byte 0xFFE00000
_08033970:
	asrs r0, r4, #0x10
_08033972:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08033984
sub_08033984: @ 0x08033984
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp, #4]
	mov sl, r2
	ldr r4, _080339F4 @ =gEwramData
	ldr r5, [r4]
	ldr r2, _080339F8 @ =0x00013110
	adds r0, r5, r2
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	mov r8, r0
	movs r0, #0x80
	lsls r0, r0, #0xd
	mov r3, r8
	ands r3, r0
	mov r8, r3
	movs r7, #0
	mov sb, r7
	movs r6, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, _080339FC @ =0x0000A094
	adds r3, r5, r0
	movs r2, #6
	ldrsh r0, [r3, r2]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	str r1, [sp]
	mov r7, sl
	lsls r2, r7, #0x10
	asrs r2, r2, #0x10
	movs r1, #0xa
	ldrsh r0, [r3, r1]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	mov sl, r2
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _080339F0
	ldr r0, _08033A00 @ =0x080E1DA8
	ldr r3, [sp, #4]
	movs r7, #0x30
	ldrsh r1, [r3, r7]
	lsls r1, r1, #2
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	ldrb r4, [r0]
	cmp r4, #0
	bne _08033A04
_080339F0:
	movs r0, #0
	b _08033AAA
	.align 2, 0
_080339F4: .4byte gEwramData
_080339F8: .4byte 0x00013110
_080339FC: .4byte 0x0000A094
_08033A00: .4byte 0x080E1DA8
_08033A04:
	movs r3, #0
	cmp r6, r4
	bge _08033A50
	mov ip, r5
	ldr r5, _08033A94 @ =0x001FFFFF
_08033A0E:
	ldr r1, [sp, #4]
	adds r0, r3, r1
	movs r1, #0x14
	ldrsb r1, [r0, r1]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _08033A98 @ =0x000004E4
	adds r0, r0, r2
	mov r7, ip
	adds r2, r7, r0
	ldr r0, [r2, #0x44]
	mov r1, sl
	subs r0, r0, r1
	cmp r0, r5
	bhi _08033A4A
	ldr r0, [r2, #0x40]
	ldr r7, [sp]
	subs r1, r0, r7
	movs r7, #0x80
	lsls r7, r7, #0xd
	adds r0, r1, r7
	cmp r0, r5
	bhi _08033A4A
	ldr r7, _08033A9C @ =0xFFF00000
	adds r0, r1, r7
	cmp r6, r0
	ble _08033A4A
	adds r6, r0, #0
	mov sb, r2
_08033A4A:
	adds r3, #1
	cmp r3, r4
	blt _08033A0E
_08033A50:
	ldr r1, _08033AA0 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _08033AA4 @ =0x00013110
	adds r0, r0, r2
	ldr r4, [r0]
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08033A6E
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _08033A6E
	movs r6, #0
_08033A6E:
	mov r3, r8
	cmp r3, #0
	beq _08033A82
	mov r7, sb
	cmp r7, #0
	beq _08033A82
	ldr r0, [r7, #0x18]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x18]
_08033A82:
	cmp r6, #0
	bge _08033AA8
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _08033AAA
	.align 2, 0
_08033A94: .4byte 0x001FFFFF
_08033A98: .4byte 0x000004E4
_08033A9C: .4byte 0xFFF00000
_08033AA0: .4byte gEwramData
_08033AA4: .4byte 0x00013110
_08033AA8:
	asrs r0, r6, #0x10
_08033AAA:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08033AC0
sub_08033AC0: @ 0x08033AC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp, #4]
	mov sl, r2
	ldr r4, _08033B30 @ =gEwramData
	ldr r5, [r4]
	ldr r2, _08033B34 @ =0x00013110
	adds r0, r5, r2
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	mov r8, r0
	movs r0, #0x80
	lsls r0, r0, #0xd
	mov r3, r8
	ands r3, r0
	mov r8, r3
	movs r7, #0
	mov sb, r7
	movs r6, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, _08033B38 @ =0x0000A094
	adds r3, r5, r0
	movs r2, #6
	ldrsh r0, [r3, r2]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	str r1, [sp]
	mov r7, sl
	lsls r2, r7, #0x10
	asrs r2, r2, #0x10
	movs r1, #0xa
	ldrsh r0, [r3, r1]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	mov sl, r2
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _08033B2C
	ldr r0, _08033B3C @ =0x080E1DA8
	ldr r3, [sp, #4]
	movs r7, #0x30
	ldrsh r1, [r3, r7]
	lsls r1, r1, #2
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	ldrb r4, [r0]
	cmp r4, #0
	bne _08033B40
_08033B2C:
	movs r0, #0
	b _08033BE6
	.align 2, 0
_08033B30: .4byte gEwramData
_08033B34: .4byte 0x00013110
_08033B38: .4byte 0x0000A094
_08033B3C: .4byte 0x080E1DA8
_08033B40:
	movs r3, #0
	cmp r6, r4
	bge _08033B8A
	mov ip, r5
	ldr r5, _08033BD0 @ =0x001FFFFF
_08033B4A:
	ldr r1, [sp, #4]
	adds r0, r3, r1
	movs r1, #0x14
	ldrsb r1, [r0, r1]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _08033BD4 @ =0x000004E4
	adds r0, r0, r2
	mov r7, ip
	adds r2, r7, r0
	ldr r0, [r2, #0x44]
	mov r1, sl
	subs r0, r0, r1
	cmp r0, r5
	bhi _08033B84
	ldr r0, [r2, #0x40]
	ldr r7, [sp]
	subs r0, r0, r7
	movs r7, #0x80
	lsls r7, r7, #0xd
	adds r1, r0, r7
	cmp r1, r5
	bhi _08033B84
	cmp r6, r1
	bgt _08033B84
	ldr r1, _08033BD8 @ =0x000FFFFF
	adds r6, r0, r1
	mov sb, r2
_08033B84:
	adds r3, #1
	cmp r3, r4
	blt _08033B4A
_08033B8A:
	ldr r2, _08033BDC @ =gEwramData
	ldr r0, [r2]
	ldr r3, _08033BE0 @ =0x00013110
	adds r0, r0, r3
	ldr r4, [r0]
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08033BA8
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _08033BA8
	movs r6, #0
_08033BA8:
	mov r7, r8
	cmp r7, #0
	beq _08033BBE
	mov r0, sb
	cmp r0, #0
	beq _08033BBE
	ldr r0, [r0, #0x18]
	movs r1, #1
	orrs r0, r1
	mov r1, sb
	str r0, [r1, #0x18]
_08033BBE:
	cmp r6, #0
	bge _08033BE4
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _08033BE6
	.align 2, 0
_08033BD0: .4byte 0x001FFFFF
_08033BD4: .4byte 0x000004E4
_08033BD8: .4byte 0x000FFFFF
_08033BDC: .4byte gEwramData
_08033BE0: .4byte 0x00013110
_08033BE4:
	asrs r0, r6, #0x10
_08033BE6:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08033BFC
sub_08033BFC: @ 0x08033BFC
	push {lr}
	adds r2, r0, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08033C12
	adds r0, r2, #0
	bl sub_08033C18
_08033C12:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08033C18
sub_08033C18: @ 0x08033C18
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	cmp r3, #0
	beq _08033C72
	ldr r0, _08033C78 @ =0x080E1DA8
	movs r2, #0x30
	ldrsh r1, [r3, r2]
	lsls r1, r1, #2
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	ldrb r4, [r0]
	movs r2, #0
	movs r0, #0x59
	adds r0, r0, r3
	mov ip, r0
	cmp r2, r4
	bge _08033C62
	ldr r7, _08033C7C @ =gEwramData
	ldr r6, _08033C80 @ =0x000004E4
	movs r5, #8
_08033C42:
	adds r0, r2, r3
	movs r1, #0x14
	ldrsb r1, [r0, r1]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, [r7]
	adds r1, r1, r0
	adds r1, #0x59
	ldrb r0, [r1]
	orrs r0, r5
	strb r0, [r1]
	adds r2, #1
	cmp r2, r4
	blt _08033C42
_08033C62:
	mov r1, ip
	ldrb r0, [r1]
	movs r1, #8
	orrs r0, r1
	mov r2, ip
	strb r0, [r2]
	bl sub_080220B4
_08033C72:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033C78: .4byte 0x080E1DA8
_08033C7C: .4byte gEwramData
_08033C80: .4byte 0x000004E4

	thumb_func_start Object01Create
Object01Create: @ 0x08033C84
	push {lr}
	bl sub_08033254
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Object01Update
Object01Update: @ 0x08033C90
	push {lr}
	adds r2, r0, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08033CA6
	adds r0, r2, #0
	bl sub_08033C18
_08033CA6:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08033CAC
sub_08033CAC: @ 0x08033CAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	movs r0, #0
	mov r8, r0
	ldrb r0, [r5, #0x1d]
	cmp r0, #0x62
	bls _08033CC6
	movs r0, #0
	b _08033D96
_08033CC6:
	ldrb r2, [r5, #0x1d]
	adds r0, r2, #1
	adds r1, r0, #1
	adds r3, r0, #0
	muls r3, r1, r3
	lsls r0, r0, #1
	adds r1, r2, #0
	adds r1, #9
	adds r0, r0, r1
	muls r0, r3, r0
	ldr r7, [r5, #0x30]
	cmp r0, r7
	bhi _08033D90
	ldr r1, _08033D4C @ =0x080E1E08
	mov sl, r1
	ldr r0, _08033D50 @ =0x080E1DCC
	mov sb, r0
_08033CE8:
	ldrh r0, [r5, #0x22]
	adds r0, #0xc
	strh r0, [r5, #0x22]
	adds r0, r2, #0
	movs r1, #5
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	mov r0, sl
	adds r1, r6, r0
	ldrh r0, [r5, #0x24]
	ldrb r1, [r1]
	adds r0, r0, r1
	strh r0, [r5, #0x24]
	ldrb r0, [r5, #0x1d]
	movs r1, #5
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add r0, sb
	ldrh r1, [r5, #0x26]
	ldrb r0, [r0]
	adds r1, r1, r0
	strh r1, [r5, #0x26]
	ldr r4, _08033D54 @ =0x080E1DE0
	ldrb r0, [r5, #0x1d]
	movs r1, #5
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r4
	ldrh r1, [r5, #0x28]
	ldrb r0, [r0]
	adds r1, r1, r0
	strh r1, [r5, #0x28]
	ldrb r1, [r5, #0x1d]
	movs r0, #3
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	beq _08033D5C
	ldr r1, _08033D58 @ =0x080E1DF4
	adds r1, r6, r1
	ldrh r0, [r5, #0x2a]
	ldrb r1, [r1]
	adds r0, r0, r1
	b _08033D60
	.align 2, 0
_08033D4C: .4byte 0x080E1E08
_08033D50: .4byte 0x080E1DCC
_08033D54: .4byte 0x080E1DE0
_08033D58: .4byte 0x080E1DF4
_08033D5C:
	ldrh r0, [r5, #0x2a]
	adds r0, #1
_08033D60:
	strh r0, [r5, #0x2a]
	ldrh r0, [r5, #0x2c]
	adds r0, #1
	strh r0, [r5, #0x2c]
	adds r0, r2, #1
	strb r0, [r5, #0x1d]
	movs r1, #1
	add r8, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x62
	bhi _08033D90
	ldrb r2, [r5, #0x1d]
	adds r0, r2, #1
	adds r1, r0, #1
	adds r3, r0, #0
	muls r3, r1, r3
	lsls r0, r0, #1
	adds r1, r2, #0
	adds r1, #9
	adds r0, r0, r1
	muls r0, r3, r0
	cmp r0, r7
	bls _08033CE8
_08033D90:
	bl sub_0804AD9C
	mov r0, r8
_08033D96:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08033DA4
sub_08033DA4: @ 0x08033DA4
	push {lr}
	ldr r0, _08033DD4 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08033DD8 @ =0x0001325C
	adds r1, r0, r2
	movs r0, #1
	strb r0, [r1, #0x1d]
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	bne _08033DDC
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r1, #0x22]
	movs r0, #0x50
	strh r0, [r1, #0x24]
	movs r0, #0xa
	strh r0, [r1, #0x26]
	movs r0, #0xc
	strh r0, [r1, #0x28]
	movs r0, #0xb
	strh r0, [r1, #0x2a]
	movs r0, #9
	b _08033DF6
	.align 2, 0
_08033DD4: .4byte gEwramData
_08033DD8: .4byte 0x0001325C
_08033DDC:
	movs r0, #0xc8
	lsls r0, r0, #2
	strh r0, [r1, #0x22]
	movs r0, #0xfa
	lsls r0, r0, #1
	strh r0, [r1, #0x24]
	movs r0, #0xf
	strh r0, [r1, #0x26]
	movs r0, #0xc
	strh r0, [r1, #0x28]
	movs r0, #0xa
	strh r0, [r1, #0x2a]
	movs r0, #0x14
_08033DF6:
	strh r0, [r1, #0x2c]
	pop {r0}
	bx r0

	thumb_func_start sub_08033DFC
sub_08033DFC: @ 0x08033DFC
	adds r1, r0, #1
	adds r2, r0, #0
	muls r2, r1, r2
	lsls r1, r0, #1
	adds r0, #8
	adds r1, r1, r0
	adds r0, r2, #0
	muls r0, r1, r0
	bx lr
	.align 2, 0

	thumb_func_start sub_08033E10
sub_08033E10: @ 0x08033E10
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0x1d]
	cmp r0, #0x62
	bhi _08033E30
	adds r2, r0, #0
	adds r0, r2, #1
	adds r1, r0, #1
	muls r1, r0, r1
	lsls r0, r0, #1
	adds r2, #9
	adds r0, r0, r2
	muls r0, r1, r0
	ldr r1, [r3, #0x30]
	subs r0, r0, r1
	b _08033E32
_08033E30:
	movs r0, #0
_08033E32:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08033E38
sub_08033E38: @ 0x08033E38
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08033E64 @ =gEwramData
	ldr r5, [r0]
	ldr r0, _08033E68 @ =0x0001325C
	adds r5, r5, r0
	bl sub_08033DA4
	adds r0, r4, #1
	adds r1, r4, #0
	muls r1, r0, r1
	lsls r0, r4, #1
	adds r4, #8
	adds r0, r0, r4
	muls r0, r1, r0
	str r0, [r5, #0x30]
	adds r0, r5, #0
	bl sub_08033CAC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08033E64: .4byte gEwramData
_08033E68: .4byte 0x0001325C

	thumb_func_start sub_08033E6C
sub_08033E6C: @ 0x08033E6C
	push {lr}
	ldr r0, _08033E98 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08033E9C @ =0x0001325C
	adds r1, r0, r2
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	beq _08033E92
	ldrh r0, [r1, #0x26]
	adds r0, #0x19
	strh r0, [r1, #0x26]
	ldrh r0, [r1, #0x28]
	adds r0, #0x14
	strh r0, [r1, #0x28]
	ldrh r0, [r1, #0x2a]
	adds r0, #0x12
	strh r0, [r1, #0x2a]
	bl sub_0804AD9C
_08033E92:
	pop {r0}
	bx r0
	.align 2, 0
_08033E98: .4byte gEwramData
_08033E9C: .4byte 0x0001325C

	thumb_func_start sub_08033EA0
sub_08033EA0: @ 0x08033EA0
	push {r4, r5, r6, lr}
	ldr r2, _08033F30 @ =sub_08033F58
	movs r0, #0
	movs r1, #1
	bl EntityCreateInRange
	adds r6, r0, #0
	ldr r0, _08033F34 @ =0x080E1E1C
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r5, _08033F38 @ =gEwramData
	ldr r1, [r5]
	ldr r4, _08033F3C @ =0x000131D0
	adds r1, r1, r4
	str r0, [r1]
	ldr r0, _08033F40 @ =0x082097D4
	movs r1, #6
	movs r2, #1
	movs r3, #3
	bl sub_0803C7B4
	ldr r1, _08033F44 @ =0x080E11C4
	ldr r0, [r5]
	adds r0, r0, r4
	ldr r2, [r0]
	adds r0, r6, #0
	movs r3, #3
	bl sub_0803B924
	adds r1, r6, #0
	adds r1, #0x5c
	movs r2, #0
	movs r0, #0xf
	strb r0, [r1]
	subs r1, #3
	ldrb r0, [r1]
	movs r4, #4
	orrs r0, r4
	strb r0, [r1]
	subs r1, #0x31
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r5]
	ldr r3, _08033F48 @ =0x00013224
	adds r1, r0, r3
	strh r2, [r1]
	subs r3, #0xbc
	adds r1, r0, r3
	str r2, [r1]
	ldr r1, _08033F4C @ =0x00013114
	adds r0, r0, r1
	str r6, [r0]
	ldr r2, _08033F50 @ =sub_080344E4
	movs r0, #0x11
	movs r1, #0x11
	bl EntityCreateInRange
	adds r6, r0, #0
	ldr r0, [r5]
	ldr r3, _08033F54 @ =0x00013118
	adds r0, r0, r3
	str r6, [r0]
	adds r1, r6, #0
	adds r1, #0x59
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08033F30: .4byte sub_08033F58
_08033F34: .4byte 0x080E1E1C
_08033F38: .4byte gEwramData
_08033F3C: .4byte 0x000131D0
_08033F40: .4byte 0x082097D4
_08033F44: .4byte 0x080E11C4
_08033F48: .4byte 0x00013224
_08033F4C: .4byte 0x00013114
_08033F50: .4byte sub_080344E4
_08033F54: .4byte 0x00013118

	thumb_func_start sub_08033F58
sub_08033F58: @ 0x08033F58
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #0
	mov ip, r0
	ldr r2, _08033F88 @ =gEwramData
	ldr r0, [r2]
	ldr r1, _08033F8C @ =0x000004DC
	adds r6, r0, r1
	ldr r5, [r4, #0x10]
	adds r3, r4, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08033F90
	adds r7, r4, #0
	adds r7, #0x65
	cmp r0, #1
	beq _08033FA2
	b _08034010
	.align 2, 0
_08033F88: .4byte gEwramData
_08033F8C: .4byte 0x000004DC
_08033F90:
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08034064 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	strb r0, [r4, #0xa]
	adds r7, r1, #0
_08033FA2:
	movs r0, #0
	str r0, [r4, #0x10]
	ldrb r1, [r6, #5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08033FB4
	movs r0, #0x20
	str r0, [r4, #0x10]
_08033FB4:
	ldrb r1, [r6, #5]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08033FC8
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x10]
_08033FC8:
	ldr r0, [r4, #0x10]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08033FF4
	ands r5, r1
	cmp r5, #0
	bne _08033FF4
	ldr r1, [r2]
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r2, _08034068 @ =0x0001311C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _08033FF4
	adds r0, r4, #0
	bl sub_080230A8
_08033FF4:
	ldrb r0, [r6, #4]
	mov ip, r0
	ldrb r0, [r6, #5]
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
_08034010:
	ldrb r0, [r7]
	cmp r0, ip
	beq _0803405C
	adds r1, r4, #0
	adds r1, #0x64
	ldr r0, _0803406C @ =gEwramData
	ldr r3, [r0]
	ldrb r1, [r1]
	lsls r1, r1, #4
	ldr r2, _08034070 @ =0x00010174
	adds r0, r3, r2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r2, _08034074 @ =0x0000FED4
	adds r0, r3, r2
	adds r0, r0, r1
	ldr r2, [r0]
	adds r2, #4
	mov r0, ip
	strb r0, [r7]
	mov r0, ip
	lsrs r1, r0, #2
	ldr r0, _08034078 @ =0x000131D0
	adds r3, r3, r0
	ldr r0, [r3]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldrb r2, [r7]
	movs r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	movs r3, #0
	bl sub_0803B66C
_0803405C:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034064: .4byte sub_0803B9D0
_08034068: .4byte 0x0001311C
_0803406C: .4byte gEwramData
_08034070: .4byte 0x00010174
_08034074: .4byte 0x0000FED4
_08034078: .4byte 0x000131D0

	thumb_func_start sub_0803407C
sub_0803407C: @ 0x0803407C
	push {r4, r5, r6, lr}
	ldr r4, _080340DC @ =gEwramData
	ldr r0, [r4]
	ldr r5, _080340E0 @ =0x000004D4
	adds r3, r0, r5
	ldr r6, _080340E4 @ =0x000004DC
	adds r2, r0, r6
	ldr r1, _080340E8 @ =0x00013110
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0
	strb r0, [r2, #5]
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _080340A8
	ldrb r0, [r3, #5]
	movs r1, #8
	orrs r0, r1
	strb r0, [r3, #5]
_080340A8:
	ldr r1, [r4]
	ldr r0, _080340EC @ =0x00013224
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r3, #6]
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrb r0, [r3, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r0, [r4]
	adds r0, r0, r5
	movs r1, #8
	bl sub_080D8020
	ldr r0, [r4]
	adds r0, r0, r6
	movs r1, #8
	bl sub_080D8088
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080340DC: .4byte gEwramData
_080340E0: .4byte 0x000004D4
_080340E4: .4byte 0x000004DC
_080340E8: .4byte 0x00013110
_080340EC: .4byte 0x00013224

	thumb_func_start sub_080340F0
sub_080340F0: @ 0x080340F0
	push {r4, r5, lr}
	mov ip, r0
	adds r4, r1, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08034134
	ldr r3, _08034124 @ =gEwramData
	ldr r2, [r3]
	mov r0, ip
	adds r0, #0x42
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldrh r0, [r0]
	adds r1, r1, r0
	ldr r5, _08034128 @ =0x00013074
	adds r0, r2, r5
	strh r1, [r0]
	ldrb r0, [r4, #2]
	ldr r5, _0803412C @ =0x0000FFFF
	adds r0, r0, r5
	adds r1, r1, r0
	ldr r0, _08034130 @ =0x00013078
	b _08034152
	.align 2, 0
_08034124: .4byte gEwramData
_08034128: .4byte 0x00013074
_0803412C: .4byte 0x0000FFFF
_08034130: .4byte 0x00013078
_08034134:
	ldr r3, _08034188 @ =gEwramData
	ldr r2, [r3]
	mov r1, ip
	adds r1, #0x42
	movs r0, #0
	ldrsb r0, [r4, r0]
	ldrh r1, [r1]
	subs r1, r1, r0
	ldr r5, _0803418C @ =0x00013078
	adds r0, r2, r5
	strh r1, [r0]
	ldrb r0, [r4, #2]
	subs r0, #1
	subs r1, r1, r0
	ldr r0, _08034190 @ =0x00013074
_08034152:
	adds r2, r2, r0
	strh r1, [r2]
	mov r0, ip
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080341A0
	ldr r2, [r3]
	mov r0, ip
	adds r0, #0x46
	movs r1, #1
	ldrsb r1, [r4, r1]
	ldrh r0, [r0]
	adds r1, r1, r0
	ldr r3, _08034194 @ =0x00013076
	adds r0, r2, r3
	strh r1, [r0]
	ldrb r0, [r4, #3]
	ldr r5, _08034198 @ =0x0000FFFF
	adds r0, r0, r5
	adds r1, r1, r0
	ldr r0, _0803419C @ =0x0001307A
	adds r2, r2, r0
	strh r1, [r2]
	b _080341C0
	.align 2, 0
_08034188: .4byte gEwramData
_0803418C: .4byte 0x00013078
_08034190: .4byte 0x00013074
_08034194: .4byte 0x00013076
_08034198: .4byte 0x0000FFFF
_0803419C: .4byte 0x0001307A
_080341A0:
	ldr r3, [r3]
	mov r0, ip
	adds r0, #0x46
	movs r2, #1
	ldrsb r2, [r4, r2]
	ldrh r1, [r0]
	subs r1, r1, r2
	ldr r2, _080341C8 @ =0x0001307A
	adds r0, r3, r2
	strh r1, [r0]
	ldrb r0, [r4, #3]
	subs r0, #1
	subs r1, r1, r0
	ldr r5, _080341CC @ =0x00013076
	adds r3, r3, r5
	strh r1, [r3]
_080341C0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080341C8: .4byte 0x0001307A
_080341CC: .4byte 0x00013076

	thumb_func_start sub_080341D0
sub_080341D0: @ 0x080341D0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	ldr r5, _08034268 @ =gEwramData
	ldr r2, [r5]
	ldr r1, _0803426C @ =0x000004DC
	adds r0, r2, r1
	ldrb r1, [r0, #5]
	movs r0, #8
	mov r8, r0
	ands r0, r1
	cmp r0, #0
	beq _0803425A
	ldr r1, _08034270 @ =0x00013220
	mov sb, r1
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0803425A
	ldr r1, _08034274 @ =0x00013120
	adds r0, r2, r1
	ldr r6, [r0]
	adds r0, r6, #0
	bl sub_08042A6C
	adds r1, r0, #0
	ldr r0, [r5]
	ldr r2, _08034270 @ =0x00013220
	adds r0, r0, r2
	ldr r4, [r0]
	adds r4, #0x70
	adds r0, r6, #0
	bl sub_080340F0
	ldr r7, [r5]
	ldr r0, _08034278 @ =0x00013074
	adds r3, r7, r0
	ldr r0, [r3]
	ldr r1, [r3, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, sp
	movs r5, #0
	movs r2, #0
	mov r1, r8
	strh r1, [r0]
	mov r1, sp
	strh r2, [r0, #4]
	strh r2, [r1, #2]
	movs r0, #5
	strh r0, [r1, #4]
	ldr r0, [r3]
	ldr r1, [r3, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, sp
	strb r5, [r0, #6]
	ldr r3, [r4, #0x10]
	cmp r3, #0
	beq _0803425A
	mov r2, sb
	adds r0, r7, r2
	ldr r0, [r0]
	adds r1, r6, #0
	mov r2, sp
	bl _call_via_r3
_0803425A:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034268: .4byte gEwramData
_0803426C: .4byte 0x000004DC
_08034270: .4byte 0x00013220
_08034274: .4byte 0x00013120
_08034278: .4byte 0x00013074

	thumb_func_start sub_0803427C
sub_0803427C: @ 0x0803427C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08034398 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803439C @ =0x000004D4
	adds r5, r0, r1
	ldr r2, _080343A0 @ =0x000004DC
	adds r2, r2, r0
	mov r8, r2
	ldr r3, _080343A4 @ =0x00013110
	adds r0, r0, r3
	ldr r4, [r0]
	adds r0, r4, #0
	bl GetEntityRoomXPositionInteger
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	adds r0, r4, #0
	bl GetEntityRoomYPositionInteger
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r0, sl
	strh r0, [r5]
	mov r1, sb
	strh r1, [r5, #2]
	adds r0, r4, #0
	adds r0, #0x65
	ldrb r0, [r0]
	strb r0, [r5, #4]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	adds r2, r0, #0
	strb r0, [r5, #5]
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _080342E8
	ldr r0, [r4, #0x10]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080342E8
	movs r0, #2
	orrs r0, r2
	strb r0, [r5, #5]
_080342E8:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080342FC
	ldrb r1, [r5, #5]
	movs r0, #4
	orrs r0, r1
	strb r0, [r5, #5]
_080342FC:
	ldrb r0, [r4, #0xa]
	cmp r0, #0x10
	bne _0803430A
	ldrb r1, [r5, #5]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r5, #5]
_0803430A:
	ldr r5, _08034398 @ =gEwramData
	ldr r6, [r5]
	ldr r2, _080343A8 @ =0x00013224
	adds r2, r6, r2
	str r2, [sp]
	mov r3, r8
	ldrh r0, [r3, #6]
	subs r0, #1
	movs r3, #7
	ands r0, r3
	lsls r0, r0, #1
	ldr r4, _080343AC @ =0x00013228
	adds r2, r6, r4
	adds r1, r2, r0
	ldrh r1, [r1]
	adds r4, #0x20
	adds r7, r6, r4
	strh r1, [r7]
	subs r4, #0x10
	adds r1, r6, r4
	adds r0, r1, r0
	ldrh r0, [r0]
	adds r4, #0x12
	adds r4, r4, r6
	mov ip, r4
	strh r0, [r4]
	ldr r4, [sp]
	ldrh r0, [r4]
	subs r0, #1
	ands r0, r3
	lsls r0, r0, #1
	adds r2, r2, r0
	mov r3, sl
	strh r3, [r2]
	adds r1, r1, r0
	mov r4, sb
	strh r4, [r1]
	ldr r0, _080343B0 @ =0x00013114
	adds r3, r6, r0
	ldr r2, [r3]
	ldr r1, _080343B4 @ =0x0000A094
	adds r4, r6, r1
	mov r1, r8
	ldrh r0, [r1]
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	adds r2, #0x42
	strh r0, [r2]
	ldr r2, [r3]
	mov r3, r8
	ldrh r0, [r3, #2]
	ldrh r1, [r4, #0xa]
	subs r0, r0, r1
	adds r2, #0x46
	strh r0, [r2]
	adds r0, r6, #0
	adds r0, #0x64
	ldrb r0, [r0]
	cmp r0, #0xe
	beq _080343BC
	ldr r4, _080343B8 @ =0x00013118
	adds r0, r6, r4
	ldr r1, [r0]
	adds r1, #0x42
	movs r2, #0
	strh r2, [r1]
	ldr r0, [r0]
	adds r0, #0x46
	strh r2, [r0]
	b _0803447E
	.align 2, 0
_08034398: .4byte gEwramData
_0803439C: .4byte 0x000004D4
_080343A0: .4byte 0x000004DC
_080343A4: .4byte 0x00013110
_080343A8: .4byte 0x00013224
_080343AC: .4byte 0x00013228
_080343B0: .4byte 0x00013114
_080343B4: .4byte 0x0000A094
_080343B8: .4byte 0x00013118
_080343BC:
	ldr r0, _08034404 @ =0x00013118
	adds r3, r6, r0
	ldr r2, [r3]
	ldrh r0, [r7]
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	adds r2, #0x42
	strh r0, [r2]
	ldr r2, [r3]
	mov r1, ip
	ldrh r0, [r1]
	ldrh r1, [r4, #0xa]
	subs r0, r0, r1
	adds r2, #0x46
	strh r0, [r2]
	ldr r2, _08034408 @ =0x00013220
	adds r0, r6, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _0803447E
	adds r0, #0x42
	ldrh r1, [r4, #6]
	ldrh r0, [r0]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	movs r3, #0
	ldrsh r0, [r7, r3]
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	cmp r0, #0
	blt _0803440C
	ldrh r0, [r7]
	subs r0, r0, r1
	b _08034410
	.align 2, 0
_08034404: .4byte 0x00013118
_08034408: .4byte 0x00013220
_0803440C:
	ldrh r0, [r7]
	subs r0, r1, r0
_08034410:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, r0, #0
	mov r4, r8
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	cmp r0, #0
	blt _0803442C
	ldrh r0, [r4]
	subs r0, r0, r1
	b _08034432
_0803442C:
	mov r3, r8
	ldrh r0, [r3]
	subs r0, r1, r0
_08034432:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	blt _0803447E
	cmp r0, r2
	bge _0803445C
	ldr r2, [r5]
	ldr r4, _08034454 @ =0x00013118
	adds r3, r2, r4
	ldr r1, [r3]
	ldr r0, _08034458 @ =0x00013114
	adds r2, r2, r0
	b _08034468
	.align 2, 0
_08034454: .4byte 0x00013118
_08034458: .4byte 0x00013114
_0803445C:
	ldr r2, [r5]
	ldr r1, _08034490 @ =0x00013118
	adds r3, r2, r1
	ldr r1, [r3]
	ldr r4, _08034494 @ =0x00013220
	adds r2, r2, r4
_08034468:
	ldr r0, [r2]
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, #0x42
	strh r0, [r1]
	ldr r1, [r3]
	ldr r0, [r2]
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, #0x46
	strh r0, [r1]
_0803447E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034490: .4byte 0x00013118
_08034494: .4byte 0x00013220

	thumb_func_start sub_08034498
sub_08034498: @ 0x08034498
	ldr r1, _080344A4 @ =gEwramData
	ldr r1, [r1]
	ldr r2, _080344A8 @ =0x00013220
	adds r1, r1, r2
	str r0, [r1]
	bx lr
	.align 2, 0
_080344A4: .4byte gEwramData
_080344A8: .4byte 0x00013220

	thumb_func_start sub_080344AC
sub_080344AC: @ 0x080344AC
	push {lr}
	ldr r0, _080344D4 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _080344D8 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080344D0
	ldr r1, _080344DC @ =0x00013110
	adds r0, r2, r1
	ldr r2, [r0]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r2, #0x10]
_080344D0:
	pop {r0}
	bx r0
	.align 2, 0
_080344D4: .4byte gEwramData
_080344D8: .4byte 0x000004CC
_080344DC: .4byte 0x00013110

	thumb_func_start sub_080344E0
sub_080344E0: @ 0x080344E0
	bx lr
	.align 2, 0

	thumb_func_start sub_080344E4
sub_080344E4: @ 0x080344E4
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
	bx lr

	thumb_func_start sub_080344F0
sub_080344F0: @ 0x080344F0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _0803450C
	adds r4, r6, #0
	adds r4, #0x58
	cmp r0, #1
	beq _08034590
	ldr r5, _08034508 @ =gEwramData
	b _080345D2
	.align 2, 0
_08034508: .4byte gEwramData
_0803450C:
	adds r1, r6, #0
	adds r1, #0x42
	movs r5, #0
	movs r0, #0x78
	strh r0, [r1]
	adds r1, #4
	movs r0, #0xc
	strh r0, [r1]
	ldr r0, _080345E8 @ =0x081FA2B8
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	adds r2, r0, #0
	ldr r4, _080345EC @ =gEwramData
	ldr r0, [r4]
	ldr r1, _080345F0 @ =0x000131CC
	adds r0, r0, r1
	str r2, [r0]
	ldr r1, _080345F4 @ =0x08252CCC
	adds r0, r6, #0
	movs r3, #3
	bl sub_0803B924
	ldr r0, [r4]
	ldr r2, _080345F8 @ =0x00013269
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r6, #0xb]
	ldr r1, _080345FC @ =0x080E1F18
	ldrb r0, [r6, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r2, r6, #0
	adds r2, #0x65
	strb r0, [r2]
	ldrb r0, [r6, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r3, r6, #0
	adds r3, #0x5a
	movs r2, #0xf
	ldrb r1, [r0, #1]
	ands r1, r2
	lsls r1, r1, #3
	ldrb r2, [r3]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _08034600 @ =sub_0803B9D0
	str r0, [r6, #4]
	adds r0, r6, #0
	adds r0, #0x5c
	strb r5, [r0]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	strb r0, [r6, #0xa]
	adds r4, r2, #0
_08034590:
	ldr r0, _080345EC @ =gEwramData
	ldr r1, [r0]
	ldr r2, _080345F8 @ =0x00013269
	adds r1, r1, r2
	ldrb r2, [r1]
	ldrb r1, [r6, #0xb]
	adds r5, r0, #0
	cmp r1, r2
	beq _080345D2
	strb r2, [r6, #0xb]
	ldr r1, _080345FC @ =0x080E1F18
	ldrb r0, [r6, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r2, r6, #0
	adds r2, #0x65
	strb r0, [r2]
	ldrb r0, [r6, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r3, r6, #0
	adds r3, #0x5a
	movs r2, #0xf
	ldrb r1, [r0, #1]
	ands r1, r2
	lsls r1, r1, #3
	ldrb r2, [r3]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_080345D2:
	ldr r0, [r5]
	ldr r1, _08034604 @ =0x0000042C
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08034608
	ldrb r0, [r4]
	orrs r0, r1
	b _08034610
	.align 2, 0
_080345E8: .4byte 0x081FA2B8
_080345EC: .4byte gEwramData
_080345F0: .4byte 0x000131CC
_080345F4: .4byte 0x08252CCC
_080345F8: .4byte 0x00013269
_080345FC: .4byte 0x080E1F18
_08034600: .4byte sub_0803B9D0
_08034604: .4byte 0x0000042C
_08034608:
	ldrb r1, [r4]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
_08034610:
	strb r0, [r4]
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08034624
sub_08034624: @ 0x08034624
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	movs r1, #0xa8
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0803463E
	b _08034790
_0803463E:
	ldr r4, _08034720 @ =gEwramData
	ldr r2, [r4]
	ldrh r1, [r2, #0x1c]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0803464E
	b _08034790
_0803464E:
	ldr r1, _08034724 @ =0x00013398
	adds r0, r2, r1
	ldrh r1, [r2, #0x1e]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _0803465E
	b _08034790
_0803465E:
	ldr r6, _08034728 @ =0x00013269
	adds r0, r2, r6
	ldrb r0, [r0]
	bl sub_0802D284
	mov r8, r0
	ldr r1, [r4]
	ldr r2, _0803472C @ =0x000131BE
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08034686
	ldr r3, _08034730 @ =0x000131BF
	adds r2, r1, r3
	adds r0, r1, r6
	ldrb r1, [r0]
	ldrb r0, [r2]
	cmp r0, r1
	beq _08034696
	strb r1, [r2]
_08034686:
	ldr r0, [r4]
	ldr r2, _08034730 @ =0x000131BF
	adds r1, r0, r2
	adds r0, r0, r6
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bne _08034790
_08034696:
	mov r3, r8
	ldr r0, [r3]
	cmp r0, #0
	beq _08034790
	ldr r6, _08034720 @ =gEwramData
	ldr r0, [r6]
	ldr r1, _08034734 @ =0x0001327C
	mov sb, r1
	add r0, sb
	movs r2, #6
	ldrsh r1, [r3, r2]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r1, r0
	bge _08034790
	bl sub_0802D2BC
	ldr r1, [r6]
	ldr r2, _0803472C @ =0x000131BE
	adds r1, r1, r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r1]
	cmp r0, r1
	bls _08034790
	bl sub_0802D208
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	mov sl, r3
	asrs r7, r0, #0x18
	cmp r7, #0
	blt _08034790
	mov r0, r8
	ldr r2, [r0]
	movs r0, #2
	movs r1, #0x10
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _08034790
	ldr r2, [r6]
	mov r1, sb
	adds r3, r2, r1
	ldrh r0, [r3]
	mov r6, r8
	ldrh r1, [r6, #6]
	subs r0, r0, r1
	movs r6, #0
	strh r0, [r3]
	lsls r0, r7, #2
	ldr r1, _08034738 @ =0x00013124
	adds r2, r2, r1
	adds r2, r2, r0
	str r4, [r2]
	mov r2, r8
	ldrh r0, [r2, #4]
	cmp r0, #0
	bne _0803473C
	adds r0, r5, #0
	movs r1, #0x17
	movs r2, #0
	bl sub_08021438
	movs r0, #2
	strb r0, [r5, #0xa]
	b _08034756
	.align 2, 0
_08034720: .4byte gEwramData
_08034724: .4byte 0x00013398
_08034728: .4byte 0x00013269
_0803472C: .4byte 0x000131BE
_08034730: .4byte 0x000131BF
_08034734: .4byte 0x0001327C
_08034738: .4byte 0x00013124
_0803473C:
	movs r0, #2
	bl sub_08021518
	movs r0, #0xa
	strb r0, [r5, #0xa]
	movs r0, #0
	strb r0, [r5, #0xb]
	str r6, [r5, #0x48]
	str r6, [r5, #0x50]
	str r6, [r5, #0x4c]
	str r6, [r5, #0x54]
	movs r0, #0x20
	strb r0, [r5, #0xd]
_08034756:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r5, #0x10]
	str r5, [r4, #0x14]
	mov r3, sl
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x1a]
	ldr r0, _080347A0 @ =gEwramData
	ldr r0, [r0]
	ldr r6, _080347A4 @ =0x00013269
	adds r0, r0, r6
	ldrb r0, [r0]
	strh r0, [r4, #0x1c]
	mov r1, r8
	ldrh r0, [r1, #0xe]
	strh r0, [r4, #0x1e]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r5, #0x10]
	ldr r1, _080347A8 @ =0xFFDFFF9F
	ands r0, r1
	str r0, [r5, #0x10]
_08034790:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080347A0: .4byte gEwramData
_080347A4: .4byte 0x00013269
_080347A8: .4byte 0xFFDFFF9F

	thumb_func_start sub_080347AC
sub_080347AC: @ 0x080347AC
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r7, [r6, #0x14]
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	beq _080347E2
	cmp r0, #1
	bgt _080347C4
	cmp r0, #0
	beq _080347CC
	b _08034A0A
_080347C4:
	cmp r0, #2
	bne _080347CA
	b _080348E8
_080347CA:
	b _08034A0A
_080347CC:
	ldr r0, _080347FC @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08034800 @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0xe
	strb r0, [r6, #0xd]
	movs r0, #1
	strb r0, [r6, #0xa]
_080347E2:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080347EE
	b _08034930
_080347EE:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _08034804
	subs r0, #1
	strb r0, [r6, #0xd]
	b _08034A0A
	.align 2, 0
_080347FC: .4byte gEwramData
_08034800: .4byte 0x000131BE
_08034804:
	ldr r0, _08034940 @ =0x081FA2B8
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	adds r2, r0, #0
	ldr r0, _08034944 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08034948 @ =0x000131CC
	adds r0, r0, r1
	str r2, [r0]
	ldr r1, _0803494C @ =0x08252CCC
	adds r0, r6, #0
	movs r3, #3
	bl sub_0803B924
	adds r1, r6, #0
	adds r1, #0x65
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08034950 @ =sub_0803B9D0
	str r0, [r6, #4]
	subs r1, #9
	movs r0, #0xd
	strb r0, [r1]
	movs r0, #1
	movs r1, #0x19
	bl sub_08042A54
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	blt _08034930
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
	adds r4, r6, #0
	adds r4, #0x59
	ldrb r0, [r4]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4]
	movs r3, #0x1a
	rsbs r3, r3, #0
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #0x14
	bl sub_08031EA4
	bl RandomNumberGenerator
	movs r1, #0x3f
	ands r1, r0
	cmp r1, #0x17
	bhi _0803488C
	ldr r0, _08034954 @ =0x000001ED
	bl PlaySong
_0803488C:
	movs r0, #0xe4
	bl PlaySong
	movs r2, #0xd0
	lsls r2, r2, #0xa
	str r2, [r6, #0x48]
	ldr r3, _08034958 @ =0xFFFFF000
	str r3, [r6, #0x50]
	movs r5, #0xcf
	lsls r5, r5, #3
	strh r5, [r6, #0x26]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080348BC
	rsbs r0, r2, #0
	str r0, [r6, #0x48]
	rsbs r0, r3, #0
	str r0, [r6, #0x50]
	rsbs r0, r5, #0
	strh r0, [r6, #0x26]
_080348BC:
	adds r0, r6, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r1, _0803495C @ =0x1414F6F6
	adds r0, r6, #0
	bl sub_08042884
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
	movs r0, #2
	strb r0, [r6, #0xa]
_080348E8:
	ldr r0, _08034944 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08034960 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r1, [r1]
	subs r1, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r6, #0
	adds r2, #0x46
	ldrh r2, [r2]
	adds r2, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r3, #0x14
	str r3, [sp]
	movs r3, #0x10
	bl sub_08068AD4
	cmp r0, #0
	beq _08034968
	adds r2, r6, #0
	adds r2, #0x58
	ldrh r1, [r2]
	ldr r0, _08034964 @ =0x0000101F
	ands r0, r1
	cmp r0, #0
	beq _08034930
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_08034930:
	adds r0, r6, #0
	bl sub_0802D724
	adds r0, r6, #0
	bl EntityDelete
	b _08034A3A
	.align 2, 0
_08034940: .4byte 0x081FA2B8
_08034944: .4byte gEwramData
_08034948: .4byte 0x000131CC
_0803494C: .4byte 0x08252CCC
_08034950: .4byte sub_0803B9D0
_08034954: .4byte 0x000001ED
_08034958: .4byte 0xFFFFF000
_0803495C: .4byte 0x1414F6F6
_08034960: .4byte 0x00013110
_08034964: .4byte 0x0000101F
_08034968:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080349A6
	movs r0, #0x80
	lsls r0, r0, #0xd
	bl sub_0802D5EC
	ldr r1, [r6, #0x44]
	adds r1, r1, r0
	ldr r0, [r6, #0x40]
	movs r2, #4
	str r2, [sp]
	movs r2, #6
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #0
	bl sub_08045B44
	adds r1, r0, #0
	cmp r1, #0
	beq _080349A6
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, #0x5c
	strb r0, [r1]
_080349A6:
	ldrb r0, [r6, #0xb]
	adds r4, r6, #0
	adds r4, #0x58
	cmp r0, #0
	bne _080349D6
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080349C8
	ldr r1, [r6, #0x48]
	ldr r0, _080349C4 @ =0xFFFF0000
	cmp r1, r0
	bge _080349D6
	b _080349D2
	.align 2, 0
_080349C4: .4byte 0xFFFF0000
_080349C8:
	ldr r1, [r6, #0x48]
	movs r0, #0x80
	lsls r0, r0, #9
	cmp r1, r0
	ble _080349D6
_080349D2:
	movs r0, #1
	strb r0, [r6, #0xb]
_080349D6:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r6, #0
	bl sub_0806D3D8
	ldrh r0, [r6, #0x26]
	ldrh r1, [r6, #0x24]
	adds r0, r0, r1
	movs r5, #0
	strh r0, [r6, #0x24]
	movs r1, #0x24
	ldrsh r0, [r6, r1]
	movs r2, #0x80
	lsls r2, r2, #9
	ldrb r4, [r4]
	lsls r1, r4, #0x19
	lsrs r1, r1, #0x1f
	movs r3, #1
	eors r3, r1
	str r5, [sp]
	lsls r4, r4, #0x1b
	lsrs r4, r4, #0x1b
	str r4, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
_08034A0A:
	adds r0, r6, #0
	movs r1, #6
	bl sub_0802D55C
	cmp r0, #0
	beq _08034A3A
	adds r2, r6, #0
	adds r2, #0x58
	ldrh r1, [r2]
	ldr r0, _08034A44 @ =0x0000101F
	ands r0, r1
	cmp r0, #0
	beq _08034A2E
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_08034A2E:
	adds r0, r6, #0
	bl sub_0802D724
	adds r0, r6, #0
	bl EntityDelete
_08034A3A:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034A44: .4byte 0x0000101F

	thumb_func_start sub_08034A48
sub_08034A48: @ 0x08034A48
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08034A58
	cmp r0, #1
	beq _08034AB4
	b _08034AFA
_08034A58:
	ldr r0, _08034ADC @ =0x081FA2B8
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	adds r2, r0, #0
	ldr r0, _08034AE0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08034AE4 @ =0x000131CC
	adds r0, r0, r1
	str r2, [r0]
	ldr r1, _08034AE8 @ =0x08252CCC
	adds r0, r4, #0
	movs r3, #3
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _08034AEC @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	movs r0, #0x90
	lsls r0, r0, #9
	str r0, [r4, #0x28]
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_08034AB4:
	ldr r1, [r4, #0x28]
	rsbs r1, r1, #0
	ldr r2, _08034AF0 @ =0x084F1438
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_0806CAF8
	adds r0, r4, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _08034AF4
	adds r0, r4, #0
	bl sub_0802D724
	adds r0, r4, #0
	bl EntityDelete
	b _08034B12
	.align 2, 0
_08034ADC: .4byte 0x081FA2B8
_08034AE0: .4byte gEwramData
_08034AE4: .4byte 0x000131CC
_08034AE8: .4byte 0x08252CCC
_08034AEC: .4byte sub_0803B9D0
_08034AF0: .4byte 0x084F1438
_08034AF4:
	adds r0, r4, #0
	bl sub_0802D590
_08034AFA:
	adds r0, r4, #0
	movs r1, #2
	bl sub_0802D55C
	cmp r0, #0
	beq _08034B12
	adds r0, r4, #0
	bl sub_0802D724
	adds r0, r4, #0
	bl EntityDelete
_08034B12:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08034B18
sub_08034B18: @ 0x08034B18
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r7, [r6, #0x14]
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	beq _08034B50
	cmp r0, #1
	bgt _08034B2E
	cmp r0, #0
	beq _08034B3A
	b _08034CA4
_08034B2E:
	cmp r0, #2
	beq _08034BF4
	cmp r0, #3
	bne _08034B38
	b _08034C38
_08034B38:
	b _08034CA4
_08034B3A:
	ldr r0, _08034B68 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08034B6C @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0xe
	strb r0, [r6, #0xd]
	movs r0, #1
	strb r0, [r6, #0xa]
_08034B50:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08034B5C
	b _08034C8E
_08034B5C:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _08034B70
	subs r0, #1
	b _08034CA2
	.align 2, 0
_08034B68: .4byte gEwramData
_08034B6C: .4byte 0x000131BE
_08034B70:
	ldr r0, _08034BDC @ =0x081FA2B8
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	adds r2, r0, #0
	ldr r0, _08034BE0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08034BE4 @ =0x000131CC
	adds r0, r0, r1
	str r2, [r0]
	ldr r1, _08034BE8 @ =0x08252CCC
	adds r0, r6, #0
	movs r3, #3
	bl sub_0803B924
	adds r0, r6, #0
	adds r0, #0x65
	movs r5, #2
	movs r4, #2
	strb r4, [r0]
	ldr r0, _08034BEC @ =sub_0803B9D0
	str r0, [r6, #4]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	movs r0, #1
	movs r1, #0x14
	bl sub_08042A54
	movs r3, #0x1a
	rsbs r3, r3, #0
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #0x14
	bl sub_08031EA4
	ldr r0, _08034BF0 @ =0xFFFF8000
	str r0, [r6, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r6, #0x54]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r6, #0x28]
	adds r1, r6, #0
	adds r1, #0x59
	ldrb r0, [r1]
	orrs r0, r5
	strb r0, [r1]
	strb r4, [r6, #0xa]
	b _08034CA4
	.align 2, 0
_08034BDC: .4byte 0x081FA2B8
_08034BE0: .4byte gEwramData
_08034BE4: .4byte 0x000131CC
_08034BE8: .4byte 0x08252CCC
_08034BEC: .4byte sub_0803B9D0
_08034BF0: .4byte 0xFFFF8000
_08034BF4:
	ldr r1, [r6, #0x28]
	rsbs r1, r1, #0
	ldr r2, _08034C34 @ =0x084F1438
	adds r0, r6, #0
	movs r3, #8
	bl sub_0806CAF8
	adds r1, r0, #0
	movs r2, #3
	ands r0, r2
	cmp r0, #0
	beq _08034C10
	movs r0, #0
	str r0, [r6, #0x28]
_08034C10:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08034CA4
	strb r2, [r6, #0xa]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xa
	strb r0, [r6, #0xd]
	movs r0, #0x96
	lsls r0, r0, #1
	bl PlaySong
	b _08034CA4
	.align 2, 0
_08034C34: .4byte 0x084F1438
_08034C38:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa
	bls _08034CA4
	ldr r1, _08034C9C @ =sub_08034A48
	adds r0, r6, #0
	bl sub_08023530
	adds r3, r0, #0
	cmp r3, #0
	beq _08034C74
	ldr r0, [r6, #0x40]
	str r0, [r3, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r3, #0x44]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_08034C74:
	ldrb r0, [r6, #0xb]
	cmp r0, #1
	bls _08034C80
	movs r0, #0x91
	bl PlaySong
_08034C80:
	ldrb r0, [r6, #0xb]
	adds r1, r0, #1
	strb r1, [r6, #0xb]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _08034CA0
_08034C8E:
	adds r0, r6, #0
	bl sub_0802D724
	adds r0, r6, #0
	bl EntityDelete
	b _08034CBC
	.align 2, 0
_08034C9C: .4byte sub_08034A48
_08034CA0:
	movs r0, #0
_08034CA2:
	strb r0, [r6, #0xd]
_08034CA4:
	adds r0, r6, #0
	movs r1, #3
	bl sub_0802D55C
	cmp r0, #0
	beq _08034CBC
	adds r0, r6, #0
	bl sub_0802D724
	adds r0, r6, #0
	bl EntityDelete
_08034CBC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08034CC4
sub_08034CC4: @ 0x08034CC4
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	ldrb r4, [r6, #0xa]
	cmp r4, #0
	beq _08034CD8
	cmp r4, #1
	bne _08034CD6
	b _08034DE6
_08034CD6:
	b _08034E1E
_08034CD8:
	ldr r0, _08034D28 @ =0x081FA2B8
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	adds r2, r0, #0
	ldr r0, _08034D2C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08034D30 @ =0x000131CC
	adds r0, r0, r1
	str r2, [r0]
	ldr r1, _08034D34 @ =0x08252CCC
	adds r0, r6, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r6, #0
	adds r0, #0x65
	strb r4, [r0]
	ldr r0, _08034D38 @ =sub_0803B9D0
	str r0, [r6, #4]
	adds r4, r6, #0
	adds r4, #0x5c
	movs r0, #0xd
	strb r0, [r4]
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _08034D3C
	adds r0, r6, #0
	bl sub_0802D724
	adds r0, r6, #0
	bl EntityDelete
	b _08034E4E
	.align 2, 0
_08034D28: .4byte 0x081FA2B8
_08034D2C: .4byte gEwramData
_08034D30: .4byte 0x000131CC
_08034D34: .4byte 0x08252CCC
_08034D38: .4byte sub_0803B9D0
_08034D3C:
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
	adds r3, r6, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _08034D90 @ =0xFFFA8000
	str r0, [r6, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r6, #0x54]
	ldr r5, _08034D94 @ =0xFFFEE000
	str r5, [r6, #0x48]
	ldr r3, _08034D98 @ =0x0000F544
	strh r3, [r6, #0x26]
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08034D80
	rsbs r0, r5, #0
	str r0, [r6, #0x48]
	rsbs r0, r3, #0
	strh r0, [r6, #0x26]
_08034D80:
	ldrb r0, [r6, #0xb]
	cmp r0, #1
	beq _08034DCC
	cmp r0, #1
	bgt _08034D9C
	cmp r0, #0
	beq _08034DA2
	b _08034DE2
	.align 2, 0
_08034D90: .4byte 0xFFFA8000
_08034D94: .4byte 0xFFFEE000
_08034D98: .4byte 0x0000F544
_08034D9C:
	cmp r0, #2
	beq _08034DC8
	b _08034DE2
_08034DA2:
	adds r0, r6, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r1, _08034DC4 @ =0x1414F6F6
	adds r0, r6, #0
	bl sub_08042884
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	b _08034DE2
	.align 2, 0
_08034DC4: .4byte 0x1414F6F6
_08034DC8:
	movs r0, #1
	strb r0, [r6, #0xf]
_08034DCC:
	adds r2, r6, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xe
	strb r0, [r4]
_08034DE2:
	movs r0, #1
	strb r0, [r6, #0xa]
_08034DE6:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r6, #0
	bl sub_0806D3D8
	ldrh r0, [r6, #0x26]
	ldrh r1, [r6, #0x24]
	adds r0, r0, r1
	movs r5, #0
	strh r0, [r6, #0x24]
	movs r1, #0x24
	ldrsh r0, [r6, r1]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r6, #0
	adds r1, #0x58
	ldrb r4, [r1]
	lsls r1, r4, #0x19
	lsrs r1, r1, #0x1f
	movs r3, #1
	eors r3, r1
	str r5, [sp]
	lsls r4, r4, #0x1b
	lsrs r4, r4, #0x1b
	str r4, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
_08034E1E:
	adds r0, r6, #0
	movs r1, #3
	bl sub_0802D55C
	cmp r0, #0
	beq _08034E4E
	adds r2, r6, #0
	adds r2, #0x58
	ldrh r1, [r2]
	ldr r0, _08034E58 @ =0x0000101F
	ands r0, r1
	cmp r0, #0
	beq _08034E42
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_08034E42:
	adds r0, r6, #0
	bl sub_0802D724
	adds r0, r6, #0
	bl EntityDelete
_08034E4E:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08034E58: .4byte 0x0000101F

	thumb_func_start sub_08034E5C
sub_08034E5C: @ 0x08034E5C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x14]
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _08034E98
	cmp r0, #1
	bgt _08034E72
	cmp r0, #0
	beq _08034E78
	b _08034F42
_08034E72:
	cmp r0, #2
	beq _08034EDC
	b _08034F42
_08034E78:
	ldr r0, _08034E90 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08034E94 @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0xa
	strb r0, [r4, #0xd]
	movs r0, #1
	strb r0, [r4, #0xa]
	b _08034F42
	.align 2, 0
_08034E90: .4byte gEwramData
_08034E94: .4byte 0x000131BE
_08034E98:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08034F24
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _08034F3E
	movs r0, #1
	movs r1, #0x3c
	bl sub_08042A54
	movs r3, #0x14
	rsbs r3, r3, #0
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #6
	bl sub_08031EA4
	movs r0, #0xf6
	lsls r0, r0, #1
	bl PlaySong
	movs r0, #0xe3
	bl PlaySong
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #2
	strb r0, [r4, #0xa]
_08034EDC:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _08034F3C
	ldr r1, _08034F34 @ =sub_08034CC4
	adds r0, r4, #0
	bl sub_08023530
	adds r5, r0, #0
	cmp r5, #0
	beq _08034F16
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x44]
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
	ldrb r0, [r4, #0xb]
	strb r0, [r5, #0xb]
_08034F16:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08034F38
_08034F24:
	adds r0, r4, #0
	bl sub_0802D724
	adds r0, r4, #0
	bl EntityDelete
	b _08034F42
	.align 2, 0
_08034F34: .4byte sub_08034CC4
_08034F38:
	movs r0, #3
	strb r0, [r4, #0xd]
_08034F3C:
	ldrb r0, [r4, #0xd]
_08034F3E:
	subs r0, #1
	strb r0, [r4, #0xd]
_08034F42:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08034F48
sub_08034F48: @ 0x08034F48
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r7, [r6, #0x14]
	ldrb r0, [r6, #0xa]
	cmp r0, #4
	bls _08034F58
	b _080351D4
_08034F58:
	lsls r0, r0, #2
	ldr r1, _08034F64 @ =_08034F68
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08034F64: .4byte _08034F68
_08034F68: @ jump table
	.4byte _08034F7C @ case 0
	.4byte _08034F98 @ case 1
	.4byte _08035064 @ case 2
	.4byte _080350A8 @ case 3
	.4byte _08035190 @ case 4
_08034F7C:
	ldr r0, _08035090 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08035094 @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0xfa
	bl sub_08013D60
	movs r0, #0x20
	strb r0, [r6, #0xd]
	movs r0, #1
	strb r0, [r6, #0xa]
_08034F98:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08034FA4
	b _080351C2
_08034FA4:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _08034FAC
	b _08035176
_08034FAC:
	ldr r0, _08035098 @ =0x081FA2B8
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	adds r2, r0, #0
	ldr r0, _08035090 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803509C @ =0x000131CC
	adds r0, r0, r1
	str r2, [r0]
	ldr r1, _080350A0 @ =0x08252CCC
	adds r0, r6, #0
	movs r3, #3
	bl sub_0803B924
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldr r0, _080350A4 @ =sub_0803B9D0
	str r0, [r6, #4]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xf
	strb r0, [r1]
	movs r0, #1
	movs r1, #0xf
	bl sub_08042A54
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _08034FFC
	b _080351C2
_08034FFC:
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
	adds r5, r6, #0
	adds r5, #0x59
	ldrb r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r5]
	adds r0, r6, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r4, #2
	orrs r0, r4
	strb r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r6, #0x28]
	movs r0, #0xfa
	bl sub_08013E18
	movs r0, #0xfb
	bl sub_08013D60
	movs r0, #0xf3
	lsls r0, r0, #1
	bl PlaySong
	movs r0, #0x10
	strb r0, [r6, #0xd]
	ldrb r0, [r5]
	orrs r0, r4
	strb r0, [r5]
	movs r0, #2
	strb r0, [r6, #0xa]
_08035064:
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0
	bl sub_08031EA4
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _08035078
	b _08035176
_08035078:
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0x60
	strb r0, [r6, #0xd]
	movs r0, #3
	strb r0, [r6, #0xa]
	b _080351D4
	.align 2, 0
_08035090: .4byte gEwramData
_08035094: .4byte 0x000131BE
_08035098: .4byte 0x081FA2B8
_0803509C: .4byte 0x000131CC
_080350A0: .4byte 0x08252CCC
_080350A4: .4byte sub_0803B9D0
_080350A8:
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0
	bl sub_08031EA4
	ldrb r1, [r6, #0xd]
	movs r7, #1
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _080350DC
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
_080350DC:
	ldr r1, [r6, #0x28]
	ldr r0, _080350F0 @ =0x0001FFFF
	cmp r1, r0
	bgt _080350F4
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r1, r2
	str r0, [r6, #0x28]
	b _08035170
	.align 2, 0
_080350F0: .4byte 0x0001FFFF
_080350F4:
	ldrb r1, [r6, #0xd]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0803513A
	movs r0, #0xc0
	lsls r0, r0, #0xf
	bl sub_0802D5EC
	ldr r5, [r6, #0x40]
	adds r5, r5, r0
	movs r0, #0x80
	lsls r0, r0, #0xd
	bl sub_0802D5EC
	ldr r1, _0803515C @ =0xFFB00000
	adds r0, r0, r1
	ldr r4, [r6, #0x44]
	adds r4, r4, r0
	movs r0, #0x80
	lsls r0, r0, #4
	bl sub_0802D5EC
	adds r3, r0, #0
	ldr r2, _08035160 @ =0xFFFFE000
	adds r3, r3, r2
	movs r0, #4
	str r0, [sp]
	movs r0, #6
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08045B44
_0803513A:
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r6, #0xd]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08035168
	ldr r1, _08035164 @ =0x783088E8
	adds r0, r6, #0
	bl sub_08042884
	b _08035170
	.align 2, 0
_0803515C: .4byte 0xFFB00000
_08035160: .4byte 0xFFFFE000
_08035164: .4byte 0x783088E8
_08035168:
	ldr r1, _0803517C @ =0x2878B0C4
	adds r0, r6, #0
	bl sub_08042884
_08035170:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _08035180
_08035176:
	subs r0, #1
	strb r0, [r6, #0xd]
	b _080351D4
	.align 2, 0
_0803517C: .4byte 0x2878B0C4
_08035180:
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #2
	orrs r1, r0
	strb r1, [r2]
	movs r0, #4
	strb r0, [r6, #0xa]
_08035190:
	ldr r0, [r6, #0x28]
	cmp r0, #0
	ble _080351A4
	ldr r1, _080351A0 @ =0xFFFFC000
	adds r0, r0, r1
	str r0, [r6, #0x28]
	b _080351D4
	.align 2, 0
_080351A0: .4byte 0xFFFFC000
_080351A4:
	movs r0, #0xfb
	bl sub_08013E18
	adds r2, r6, #0
	adds r2, #0x58
	ldrh r1, [r2]
	ldr r0, _080351D0 @ =0x0000101F
	ands r0, r1
	cmp r0, #0
	beq _080351C2
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080351C2:
	adds r0, r6, #0
	bl sub_0802D724
	adds r0, r6, #0
	bl EntityDelete
	b _08035210
	.align 2, 0
_080351D0: .4byte 0x0000101F
_080351D4:
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	bls _08035210
	adds r0, r6, #0
	bl sub_0803F17C
	movs r0, #0x80
	lsls r0, r0, #9
	ldr r2, [r6, #0x28]
	adds r1, r6, #0
	adds r1, #0x58
	ldrb r4, [r1]
	lsls r1, r4, #0x19
	lsrs r1, r1, #0x1f
	movs r3, #1
	eors r3, r1
	movs r1, #0
	str r1, [sp]
	lsls r4, r4, #0x1b
	lsrs r4, r4, #0x1b
	str r4, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
_08035210:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08035218
sub_08035218: @ 0x08035218
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x14
	ldr r1, _08035224 @ =0x080E1ED8
	adds r0, r0, r1
	bx lr
	.align 2, 0
_08035224: .4byte 0x080E1ED8

	thumb_func_start sub_08035228
sub_08035228: @ 0x08035228
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r6, #2
	ldr r0, _0803525C @ =0x081FA2B8
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	adds r2, r0, #0
	ldr r0, _08035260 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08035264 @ =0x000131CC
	adds r0, r0, r1
	str r2, [r0]
	cmp r4, #0
	beq _0803524C
	movs r6, #3
_0803524C:
	ldr r1, _08035268 @ =0x08252CCC
	adds r0, r5, #0
	adds r3, r6, #0
	bl sub_0803B924
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803525C: .4byte 0x081FA2B8
_08035260: .4byte gEwramData
_08035264: .4byte 0x000131CC
_08035268: .4byte 0x08252CCC

	thumb_func_start sub_0803526C
sub_0803526C: @ 0x0803526C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x14]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0803527E
	cmp r0, #1
	beq _080352A6
	b _080352F4
_0803527E:
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r1, _080352E4 @ =0x0404FEFE
	adds r0, r4, #0
	bl sub_08042884
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	strb r0, [r4, #0xa]
_080352A6:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	movs r2, #0x1c
	ldrsh r0, [r5, r2]
	cmp r0, #0
	beq _080352E8
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	bne _080352E8
	ldr r2, [r5, #0x10]
	adds r1, r4, #0
	adds r1, #0x28
	ldrb r0, [r1]
	lsls r0, r0, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r4, #0x40]
	ldrb r0, [r1]
	lsls r0, r0, #4
	adds r0, r0, r2
	ldr r0, [r0, #4]
	str r0, [r4, #0x44]
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	b _080352F2
	.align 2, 0
_080352E4: .4byte 0x0404FEFE
_080352E8:
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
_080352F2:
	strb r0, [r2]
_080352F4:
	adds r1, r4, #0
	adds r1, #0x59
	ldrb r2, [r1]
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	bne _08035308
	movs r0, #4
	orrs r0, r2
	strb r0, [r1]
_08035308:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08035310
sub_08035310: @ 0x08035310
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x10
	adds r4, r0, #0
	mov r8, r1
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	movs r1, #0xd0
	muls r0, r1, r0
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	asrs r0, r0, #8
	movs r1, #0xe0
	muls r0, r1, r0
	str r0, [r4, #0xc]
	adds r6, r4, #0
	adds r6, #8
	mov r0, sp
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_0803EAA4
	ldr r0, [sp]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [sp]
	ldr r0, [sp, #4]
	movs r2, #0xc0
	lsls r2, r2, #7
	adds r0, r0, r2
	str r0, [sp, #4]
	add r5, sp, #8
	adds r0, r5, #0
	mov r1, sp
	mov r2, r8
	bl sub_0803EABC
	ldr r0, [sp, #8]
	asrs r0, r0, #8
	adds r1, r0, #0
	muls r1, r0, r1
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	adds r2, r0, #0
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r1, r0
	adds r0, r1, #0
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r1, r0, #8
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl sub_0803E934
	ldr r1, [sp, #8]
	asrs r1, r1, #8
	asrs r0, r0, #8
	muls r1, r0, r1
	str r1, [sp, #8]
	ldr r1, [r5, #4]
	asrs r1, r1, #8
	muls r0, r1, r0
	str r0, [r5, #4]
	mov r0, sp
	adds r1, r4, #0
	bl sub_0803EA1C
	adds r0, r4, #0
	mov r1, r8
	adds r2, r5, #0
	bl sub_0803EAA4
	adds r0, r6, #0
	adds r1, r4, #0
	mov r2, sp
	bl sub_0803EABC
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080353C0
sub_080353C0: @ 0x080353C0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r2, [r7, #0x10]
	movs r1, #0x1c
	ldrsh r0, [r7, r1]
	cmp r0, #0
	beq _08035434
	ldr r0, [r2]
	ldr r3, [r7, #0x40]
	cmp r0, r3
	bne _080353E6
	ldr r1, [r2, #4]
	ldr r0, [r7, #0x44]
	cmp r1, r0
	bne _080353E6
	ldrh r0, [r7, #0x1e]
	adds r0, #1
	strh r0, [r7, #0x1e]
	b _080353EC
_080353E6:
	str r3, [r2]
	ldr r0, [r7, #0x44]
	str r0, [r2, #4]
_080353EC:
	movs r1, #0x1e
	ldrsh r0, [r7, r1]
	cmp r0, #0x77
	bgt _08035414
	movs r5, #1
	adds r4, r2, #0
	adds r6, r4, #0
	adds r6, #0x10
_080353FC:
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08035310
	adds r4, #0x10
	adds r6, #0x10
	adds r5, #1
	cmp r5, #7
	ble _080353FC
	b _08035434
_08035414:
	movs r3, #0
	adds r1, r2, #0
	movs r5, #6
_0803541A:
	str r3, [r1, #0x18]
	str r3, [r1, #0x1c]
	ldr r0, [r1]
	str r0, [r1, #0x10]
	ldr r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #0xb
	adds r0, r0, r2
	str r0, [r1, #0x14]
	adds r1, #0x10
	subs r5, #1
	cmp r5, #0
	bge _0803541A
_08035434:
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08035448
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
_08035448:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08035450
sub_08035450: @ 0x08035450
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x10]
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080354C0
	ldr r0, [r4, #0x70]
	lsls r0, r0, #1
	asrs r0, r0, #1
	str r0, [r5, #0x40]
	ldr r0, [r4, #0x74]
	lsls r0, r0, #1
	asrs r0, r0, #1
	str r0, [r5, #0x44]
	adds r6, r5, #0
	adds r6, #0x65
	movs r0, #4
	strb r0, [r6]
	adds r0, r5, #0
	bl sub_0803AC40
	ldr r0, [r4]
	str r0, [r5, #0x40]
	ldr r0, [r4, #4]
	str r0, [r5, #0x44]
	movs r0, #5
	strb r0, [r6]
	adds r0, r5, #0
	bl sub_0803ACE0
	movs r6, #6
_08035490:
	ldr r0, [r4]
	str r0, [r5, #0x40]
	ldr r0, [r4, #4]
	str r0, [r5, #0x44]
	adds r0, r5, #0
	bl sub_0803AEFC
	ldr r0, [r4]
	ldr r1, [r4, #0x10]
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r5, #0x40]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r5, #0x44]
	adds r0, r5, #0
	bl sub_0803AEFC
	adds r4, #0x10
	subs r6, #1
	cmp r6, #0
	bge _08035490
_080354C0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080354C8
sub_080354C8: @ 0x080354C8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	adds r5, r1, #0
	mov sb, r2
	adds r6, r3, #0
	ldr r2, _080355A8 @ =sub_080353C0
	movs r0, #2
	movs r1, #0x10
	bl EntityCreateInRange
	adds r7, r0, #0
	ldr r4, _080355AC @ =gEwramData
	ldr r1, [r4]
	ldr r0, _080355B0 @ =0x000131C2
	adds r2, r1, r0
	movs r3, #0
	movs r0, #8
	strh r0, [r2]
	ldr r0, _080355B4 @ =0x000131C4
	adds r1, r1, r0
	strh r3, [r1]
	movs r0, #2
	movs r1, #0x14
	bl sub_08042A54
	ldr r0, [r4]
	ldr r1, _080355B8 @ =0x00013080
	adds r0, r0, r1
	str r0, [r7, #0x10]
	str r6, [r7, #0x20]
	mov r3, r8
	str r3, [r7, #0x40]
	str r5, [r7, #0x44]
	ldr r0, _080355BC @ =sub_08035450
	str r0, [r7, #4]
	movs r4, #0
	movs r6, #0
_08035518:
	adds r0, r7, #0
	ldr r1, _080355C0 @ =sub_0803526C
	bl sub_0802DD00
	adds r1, r0, #0
	cmp r1, #0
	beq _0803552C
	adds r0, #0x28
	strb r4, [r0]
	strb r4, [r1, #0xd]
_0803552C:
	ldr r0, _080355AC @ =gEwramData
	ldr r1, [r0]
	lsls r2, r4, #4
	ldr r3, _080355B8 @ =0x00013080
	adds r0, r1, r3
	adds r0, r0, r2
	mov r3, r8
	str r3, [r0]
	ldr r3, _080355C4 @ =0x00013084
	adds r0, r1, r3
	adds r0, r0, r2
	str r5, [r0]
	adds r3, #4
	adds r0, r1, r3
	adds r0, r0, r2
	str r6, [r0]
	ldr r0, _080355C8 @ =0x0001308C
	adds r1, r1, r0
	adds r1, r1, r2
	str r6, [r1]
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r5, r5, r1
	adds r4, #1
	cmp r4, #7
	ble _08035518
	mov r0, sb
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _080355CC @ =0x08252CCC
	adds r0, r7, #0
	movs r3, #0
	bl sub_0803B924
	adds r1, r7, #0
	adds r1, #0x65
	movs r2, #0
	movs r0, #3
	strb r0, [r1]
	subs r1, #9
	movs r0, #0xe
	strb r0, [r1]
	movs r0, #1
	strh r0, [r7, #0x1c]
	strh r2, [r7, #0x1e]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080355A8: .4byte sub_080353C0
_080355AC: .4byte gEwramData
_080355B0: .4byte 0x000131C2
_080355B4: .4byte 0x000131C4
_080355B8: .4byte 0x00013080
_080355BC: .4byte sub_08035450
_080355C0: .4byte sub_0803526C
_080355C4: .4byte 0x00013084
_080355C8: .4byte 0x0001308C
_080355CC: .4byte 0x08252CCC

	thumb_func_start sub_080355D0
sub_080355D0: @ 0x080355D0
	push {r4, lr}
	ldr r2, _0803560C @ =sub_0803579C
	movs r0, #2
	movs r1, #0x10
	bl EntityCreateInRange
	adds r4, r0, #0
	ldr r0, _08035610 @ =0x081FA2B8
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08035614 @ =0x08252CCC
	adds r0, r4, #0
	movs r3, #0
	bl sub_0803B924
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0803560C: .4byte sub_0803579C
_08035610: .4byte 0x081FA2B8
_08035614: .4byte 0x08252CCC

	thumb_func_start sub_08035618
sub_08035618: @ 0x08035618
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x14]
	bl EntityDelete
	adds r0, r4, #0
	bl EntityDelete
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08035630
sub_08035630: @ 0x08035630
	movs r1, #1
	strh r1, [r0, #0x1c]
	bx lr
	.align 2, 0

	thumb_func_start sub_08035638
sub_08035638: @ 0x08035638
	movs r1, #0
	strh r1, [r0, #0x1c]
	bx lr
	.align 2, 0

	thumb_func_start sub_08035640
sub_08035640: @ 0x08035640
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, [r6, #0x40]
	ldr r2, [r6, #0x44]
	mov ip, r2
	lsls r1, r1, #0x10
	ldr r7, _080356BC @ =0xFFFC0000
	str r7, [sp]
	cmp r1, #0
	bne _08035664
	movs r1, #0x80
	lsls r1, r1, #0xb
	str r1, [sp]
_08035664:
	movs r4, #0
	ldr r2, _080356C0 @ =gEwramData
	mov sl, r2
	movs r5, #0
	adds r3, r0, #0
	ldr r7, _080356C4 @ =0x00013080
	mov sb, r7
	ldr r0, _080356C8 @ =0x00013084
	mov r8, r0
_08035676:
	mov r2, sl
	ldr r1, [r2]
	lsls r2, r4, #4
	mov r7, sb
	adds r0, r1, r7
	adds r0, r0, r2
	str r3, [r0]
	mov r7, r8
	adds r0, r1, r7
	adds r0, r0, r2
	mov r7, ip
	str r7, [r0]
	ldr r7, _080356CC @ =0x00013088
	adds r0, r1, r7
	adds r0, r0, r2
	str r5, [r0]
	ldr r0, _080356D0 @ =0x0001308C
	adds r1, r1, r0
	adds r1, r1, r2
	str r5, [r1]
	ldr r1, [sp]
	adds r3, r3, r1
	adds r4, #1
	cmp r4, #7
	ble _08035676
	movs r0, #0
	strh r0, [r6, #0x1e]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080356BC: .4byte 0xFFFC0000
_080356C0: .4byte gEwramData
_080356C4: .4byte 0x00013080
_080356C8: .4byte 0x00013084
_080356CC: .4byte 0x00013088
_080356D0: .4byte 0x0001308C

	thumb_func_start sub_080356D4
sub_080356D4: @ 0x080356D4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	movs r3, #0xc0
	lsls r3, r3, #0xd
	movs r5, #0xc0
	lsls r5, r5, #9
	adds r1, r0, #0
	adds r1, #8
	movs r2, #7
_080356E8:
	ldr r0, [r1]
	adds r0, r0, r3
	str r0, [r1]
	subs r3, r3, r5
	adds r1, #0x10
	subs r2, #1
	cmp r2, #0
	bge _080356E8
	movs r0, #0
	strh r0, [r4, #0x1e]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08035704
sub_08035704: @ 0x08035704
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	ldr r3, _08035730 @ =0xFFE80000
	ldr r5, _08035734 @ =0xFFFE8000
	adds r1, r0, #0
	adds r1, #8
	movs r2, #7
_08035714:
	ldr r0, [r1]
	adds r0, r0, r3
	str r0, [r1]
	subs r3, r3, r5
	adds r1, #0x10
	subs r2, #1
	cmp r2, #0
	bge _08035714
	movs r0, #0
	strh r0, [r4, #0x1e]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08035730: .4byte 0xFFE80000
_08035734: .4byte 0xFFFE8000

	thumb_func_start sub_08035738
sub_08035738: @ 0x08035738
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	movs r3, #0x80
	lsls r3, r3, #0xe
	movs r5, #0x80
	lsls r5, r5, #0xa
	adds r1, r0, #0
	adds r1, #0xc
	movs r2, #7
_0803574C:
	ldr r0, [r1]
	adds r0, r0, r3
	str r0, [r1]
	subs r3, r3, r5
	adds r1, #0x10
	subs r2, #1
	cmp r2, #0
	bge _0803574C
	movs r0, #0
	strh r0, [r4, #0x1e]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08035768
sub_08035768: @ 0x08035768
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	ldr r3, _08035794 @ =0xFFE00000
	ldr r5, _08035798 @ =0xFFFE0000
	adds r1, r0, #0
	adds r1, #0xc
	movs r2, #7
_08035778:
	ldr r0, [r1]
	adds r0, r0, r3
	str r0, [r1]
	subs r3, r3, r5
	adds r1, #0x10
	subs r2, #1
	cmp r2, #0
	bge _08035778
	movs r0, #0
	strh r0, [r4, #0x1e]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08035794: .4byte 0xFFE00000
_08035798: .4byte 0xFFFE0000

	thumb_func_start sub_0803579C
sub_0803579C: @ 0x0803579C
	adds r3, r0, #0
	adds r3, #0x5a
	ldrb r2, [r3]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r3]
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_080357B8
sub_080357B8: @ 0x080357B8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0803581C @ =gEwramData
	ldr r0, [r0]
	ldr r3, _08035820 @ =0x0000A094
	adds r0, r0, r3
	ldrh r3, [r0, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r3
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldrh r0, [r0, #0xa]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	ldr r1, [r4, #0x44]
	ldr r0, [r4, #0x4c]
	adds r0, r1, r0
	cmp r0, #0
	bge _080357EE
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
_080357EE:
	lsrs r0, r0, #0x10
	adds r2, r0, #0
	ldr r1, [r4, #0x40]
	ldr r0, [r4, #0x48]
	adds r0, r1, r0
	cmp r0, #0
	bge _08035804
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
_08035804:
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r3, r1, r0
	cmp r3, #0
	blt _08035824
	cmp r3, #0x13
	ble _0803582A
	b _08035860
	.align 2, 0
_0803581C: .4byte gEwramData
_08035820: .4byte 0x0000A094
_08035824:
	subs r0, r0, r1
	cmp r0, #0x13
	bgt _08035860
_0803582A:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	subs r0, #0x20
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	movs r1, #0xf0
	lsls r1, r1, #0xc
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bhi _08035860
	movs r0, #1
	strb r0, [r4, #0x18]
	ldr r0, _08035858 @ =gUnk_03002CB0
	ldr r3, _0803585C @ =0x0000100D
	adds r0, r0, r3
	movs r1, #2
	strb r1, [r0]
	adds r0, r2, #0
	b _08035862
	.align 2, 0
_08035858: .4byte gUnk_03002CB0
_0803585C: .4byte 0x0000100D
_08035860:
	movs r0, #0
_08035862:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08035868
sub_08035868: @ 0x08035868
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r6, [r5, #0xa]
	cmp r6, #0
	beq _08035878
	cmp r6, #1
	beq _080358C4
	b _08035914
_08035878:
	ldr r0, _0803591C @ =0x081CBE14
	movs r1, #0
	bl sub_0803B800
	adds r4, r0, #0
	ldr r0, _08035920 @ =0x08209C64
	bl sub_080681D8
	adds r3, r0, #0
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	ldr r1, _08035924 @ =0x0820F18C
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_0803B924
	adds r0, r5, #0
	adds r0, #0x65
	strb r6, [r0]
	adds r4, r5, #0
	adds r4, #0x59
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
	ldr r0, _08035928 @ =sub_0803B9D0
	str r0, [r5, #4]
	ldr r1, _0803592C @ =0x080E1F74
	adds r0, r5, #0
	bl sub_08022088
	ldrb r0, [r4]
	movs r1, #4
	orrs r0, r1
	strb r0, [r4]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
_080358C4:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldrb r0, [r5, #0xd]
	lsls r0, r0, #0xa
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	str r1, [r5, #0x48]
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldrb r0, [r5, #0xd]
	lsls r0, r0, #0xa
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	str r1, [r5, #0x4c]
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08035914
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
	bl sub_080220B4
_08035914:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803591C: .4byte 0x081CBE14
_08035920: .4byte 0x08209C64
_08035924: .4byte 0x0820F18C
_08035928: .4byte sub_0803B9D0
_0803592C: .4byte 0x080E1F74

	thumb_func_start GameModeDebug1967Update
GameModeDebug1967Update: @ 0x08035930
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	movs r7, #1
	rsbs r7, r7, #0
	ldr r6, _08035950 @ =0x084F1444
	ldr r0, _08035954 @ =gEwramData
	ldr r3, [r0]
	ldrb r2, [r3, #0x11]
	cmp r2, #1
	beq _080359B8
	cmp r2, #1
	bgt _08035958
	cmp r2, #0
	beq _08035966
	b _08035AA4
	.align 2, 0
_08035950: .4byte 0x084F1444
_08035954: .4byte gEwramData
_08035958:
	cmp r2, #2
	bne _0803595E
	b _08035A6C
_0803595E:
	cmp r2, #3
	bne _08035964
	b _08035A94
_08035964:
	b _08035AA4
_08035966:
	ldr r0, _080359A4 @ =0x0001261C
	adds r1, r3, r0
	ldr r0, _080359A8 @ =0x0000FFFF
	strh r0, [r1]
	ldr r1, _080359AC @ =0x00012C21
	adds r0, r3, r1
	strb r2, [r0]
	ldr r1, _080359B0 @ =gDisplayRegisters
	movs r0, #0xe0
	lsls r0, r0, #5
	strh r0, [r1]
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0xb
_08035982:
	lsrs r1, r5, #0x10
	ldr r3, [r6]
	movs r0, #8
	movs r2, #1
	bl BgCmdBuffer_WriteString
	adds r6, #8
	movs r0, #0x80
	lsls r0, r0, #0xa
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #3
	bls _08035982
	ldr r0, _080359B4 @ =gEwramData
	ldr r1, [r0]
	b _08035A4A
	.align 2, 0
_080359A4: .4byte 0x0001261C
_080359A8: .4byte 0x0000FFFF
_080359AC: .4byte 0x00012C21
_080359B0: .4byte gDisplayRegisters
_080359B4: .4byte gEwramData
_080359B8:
	ldrh r1, [r3, #0x18]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080359CC
	ldrb r0, [r3, #0x12]
	cmp r0, #2
	bhi _080359DE
	adds r0, #1
	b _080359DC
_080359CC:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080359DE
	ldrb r0, [r3, #0x12]
	cmp r0, #0
	beq _080359DE
	subs r0, #1
_080359DC:
	strb r0, [r3, #0x12]
_080359DE:
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0xb
_080359E4:
	lsrs r1, r5, #0x10
	movs r0, #6
	movs r2, #1
	ldr r3, _08035A54 @ =0x080E1F8C
	bl BgCmdBuffer_WriteString
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r5, r5, r1
	adds r4, #1
	cmp r4, #3
	bls _080359E4
	ldr r4, _08035A58 @ =gEwramData
	ldr r0, [r4]
	ldrb r1, [r0, #0x12]
	lsls r1, r1, #0x11
	movs r5, #0x80
	lsls r5, r5, #0xb
	adds r1, r1, r5
	lsrs r1, r1, #0x10
	ldr r3, _08035A5C @ =0x080E1F90
	movs r0, #6
	movs r2, #1
	bl BgCmdBuffer_WriteString
	ldr r3, [r4]
	ldrh r1, [r3, #0x16]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08035AA4
	movs r2, #0
	str r2, [sp]
	ldr r1, _08035A60 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r5, _08035A64 @ =0x000254D0
	adds r0, r3, r5
	str r0, [r1, #4]
	ldr r0, _08035A68 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r3, #0
	adds r0, #0x66
	movs r1, #0
	strh r2, [r0]
	subs r0, #1
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	ldr r1, [r4]
_08035A4A:
	ldrb r0, [r1, #0x11]
	adds r0, #1
	strb r0, [r1, #0x11]
	b _08035AA4
	.align 2, 0
_08035A54: .4byte 0x080E1F8C
_08035A58: .4byte gEwramData
_08035A5C: .4byte 0x080E1F90
_08035A60: .4byte 0x040000D4
_08035A64: .4byte 0x000254D0
_08035A68: .4byte 0x85000004
_08035A6C:
	movs r0, #0
	str r0, [sp]
	ldr r1, _08035A88 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08035A8C @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _08035A90 @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrb r0, [r3, #0x11]
	adds r0, #1
	strb r0, [r3, #0x11]
	b _08035AA4
	.align 2, 0
_08035A88: .4byte 0x040000D4
_08035A8C: .4byte 0x0600E000
_08035A90: .4byte 0x85000200
_08035A94:
	ldrb r0, [r3, #0x12]
	lsls r0, r0, #3
	adds r1, r6, #4
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	adds r7, r0, #0
_08035AA4:
	adds r0, r7, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08035AB0
sub_08035AB0: @ 0x08035AB0
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	beq _08035AC0
	cmp r0, #1
	beq _08035ADE
	b _08035B36
_08035AC0:
	adds r0, r2, #0
	adds r0, #0x10
	movs r3, #0
	adds r1, r0, #0
	adds r1, #0x10
_08035ACA:
	str r3, [r1]
	subs r1, #4
	cmp r1, r0
	bge _08035ACA
	movs r0, #0x64
	strb r0, [r2, #0xd]
	ldrb r0, [r2, #0xa]
	adds r0, #1
	strb r0, [r2, #0xa]
	b _08035B36
_08035ADE:
	ldrb r0, [r2, #0xd]
	adds r1, r0, #1
	strb r1, [r2, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x63
	bls _08035B36
	movs r0, #0
	strb r0, [r2, #0xd]
	movs r5, #0
	adds r4, r2, #0
	adds r4, #0x10
	movs r6, #0xa0
_08035AF8:
	ldr r0, [r4]
	cmp r0, #0
	bne _08035B24
	movs r0, #0x1b
	movs r1, #0x48
	ldr r2, _08035B20 @ =sub_0803647c
	bl EntityCreateInRange
	adds r1, r0, #0
	cmp r1, #0
	beq _08035B2C
	adds r0, #0x42
	strh r6, [r0]
	adds r2, r1, #0
	adds r2, #0x46
	movs r0, #0x50
	strh r0, [r2]
	str r1, [r4]
	b _08035B36
	.align 2, 0
_08035B20: .4byte sub_0803647c
_08035B24:
	ldr r0, [r0]
	cmp r0, #0
	bne _08035B2C
	str r0, [r4]
_08035B2C:
	adds r4, #4
	adds r6, #0xa
	adds r5, #1
	cmp r5, #4
	ble _08035AF8
_08035B36:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08035B3C
sub_08035B3C: @ 0x08035B3C
	push {r4, r5, r6, lr}
	ldr r5, _08035B58 @ =gEwramData
	ldr r1, [r5]
	ldr r6, _08035B5C @ =0x000254D0
	adds r0, r1, r6
	ldrb r4, [r0]
	cmp r4, #1
	beq _08035B9C
	cmp r4, #1
	bgt _08035B60
	cmp r4, #0
	beq _08035B66
	b _08035C06
	.align 2, 0
_08035B58: .4byte gEwramData
_08035B5C: .4byte 0x000254D0
_08035B60:
	cmp r4, #2
	beq _08035BE6
	b _08035C06
_08035B66:
	adds r1, #0x88
	ldr r0, _08035B98 @ =0x0852269C
	str r0, [r1]
	movs r0, #0x63
	bl sub_08033E38
	movs r0, #5
	movs r1, #3
	movs r2, #2
	bl sub_08021344
	movs r0, #2
	movs r1, #0x19
	bl sub_0804B26C
	movs r0, #0
	movs r1, #8
	bl sub_0804B26C
	movs r0, #1
	movs r1, #0x24
	bl sub_0804B26C
	movs r0, #4
	b _08035C0E
	.align 2, 0
_08035B98: .4byte 0x0852269C
_08035B9C:
	bl sub_08000B64
	ldr r0, [r5]
	ldr r1, _08035BD8 @ =0x0000A074
	adds r0, r0, r1
	ldrb r0, [r0]
	ands r4, r0
	cmp r4, #0
	bne _08035BB2
	bl sub_0800CA40
_08035BB2:
	bl sub_08011CD0
	ldr r0, [r5]
	ldr r1, _08035BDC @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08011A44
	cmp r0, #0
	bne _08035BE0
	ldr r0, [r5]
	adds r0, #0x60
	bl sub_08010244
	ldr r0, [r5]
	adds r0, r0, r6
	movs r1, #2
	b _08035C04
	.align 2, 0
_08035BD8: .4byte 0x0000A074
_08035BDC: .4byte 0x00013110
_08035BE0:
	bl sub_0800F750
	b _08035C06
_08035BE6:
	bl sub_08000B64
	ldr r0, [r5]
	adds r0, #0x60
	bl sub_080104EC
	cmp r0, #0
	beq _08035C06
	ldr r0, [r5]
	adds r0, #0x60
	bl sub_08011430
	ldr r0, [r5]
	adds r0, r0, r6
	movs r1, #1
_08035C04:
	strb r1, [r0]
_08035C06:
	bl sub_0801266C
	movs r0, #1
	rsbs r0, r0, #0
_08035C0E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08035C14
sub_08035C14: @ 0x08035C14
	push {r4, r5, r6, r7, lr}
	sub sp, #0x40
	ldr r2, _08035C3C @ =gEwramData
	ldr r1, [r2]
	ldr r0, _08035C40 @ =0x000254D6
	adds r3, r1, r0
	ldr r4, _08035C44 @ =0x000254D0
	adds r0, r1, r4
	ldrh r7, [r0, #6]
	movs r0, #0x40
	movs r4, #0
	movs r5, #0x70
	ldrh r1, [r1, #0x18]
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _08035C48
	ldrh r0, [r3]
	adds r0, #1
	b _08035C54
	.align 2, 0
_08035C3C: .4byte gEwramData
_08035C40: .4byte 0x000254D6
_08035C44: .4byte 0x000254D0
_08035C48:
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	beq _08035C56
	ldrh r0, [r3]
	subs r0, #1
_08035C54:
	strh r0, [r3]
_08035C56:
	ldr r0, [r6]
	ldrh r0, [r0, #0x18]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08035C68
	ldrh r0, [r3]
	adds r0, #0xa
	strh r0, [r3]
_08035C68:
	ldr r0, [r6]
	ldrh r0, [r0, #0x18]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08035C7A
	ldrh r0, [r3]
	subs r0, #0xa
	strh r0, [r3]
_08035C7A:
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, r5
	ble _08035C86
	strh r4, [r3]
	b _08035C8C
_08035C86:
	cmp r0, #0
	bge _08035C8C
	strh r5, [r3]
_08035C8C:
	adds r5, r6, #0
	ldr r0, [r5]
	ldr r4, _08035CDC @ =0x000254D0
	adds r0, r0, r4
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	movs r2, #6
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _08035CCA
	movs r0, #0
	movs r1, #1
	movs r2, #0xf
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	ldr r1, _08035CE0 @ =0x080EA628
	ldr r0, [r5]
	adds r0, r0, r4
	movs r2, #6
	ldrsh r0, [r0, r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_08041434
	movs r1, #0
	bl sub_08041338
_08035CCA:
	ldr r1, [r6]
	ldrh r2, [r1, #0x16]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08035CE4
	adds r1, r1, r4
	movs r0, #1
	b _08035CF4
	.align 2, 0
_08035CDC: .4byte 0x000254D0
_08035CE0: .4byte 0x080EA628
_08035CE4:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	bne _08035CF0
	movs r0, #0
	b _08035CF8
_08035CF0:
	adds r1, r1, r4
	movs r0, #5
_08035CF4:
	strb r0, [r1, #1]
	movs r0, #1
_08035CF8:
	add sp, #0x40
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08035D00
sub_08035D00: @ 0x08035D00
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x44
	ldr r1, _08035D30 @ =gEwramData
	ldr r0, [r1]
	adds r6, r0, #0
	adds r6, #0x60
	ldr r2, _08035D34 @ =0x0001325C
	adds r7, r0, r2
	ldr r2, _08035D38 @ =0x000254D0
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r5, r1, #0
	cmp r0, #7
	bls _08035D24
	b _080360D0
_08035D24:
	lsls r0, r0, #2
	ldr r1, _08035D3C @ =_08035D40
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08035D30: .4byte gEwramData
_08035D34: .4byte 0x0001325C
_08035D38: .4byte 0x000254D0
_08035D3C: .4byte _08035D40
_08035D40: @ jump table
	.4byte _08035D60 @ case 0
	.4byte _08035DB8 @ case 1
	.4byte _08035DD0 @ case 2
	.4byte _08035E6C @ case 3
	.4byte _08035F6C @ case 4
	.4byte _0803603A @ case 5
	.4byte _08036060 @ case 6
	.4byte _08036080 @ case 7
_08035D60:
	movs r0, #0xc0
	lsls r0, r0, #0x13
	bl sub_080412DC
	movs r0, #1
	bl sub_080412F0
	movs r0, #0
	bl sub_08041304
	movs r0, #0
	movs r1, #1
	movs r2, #0x10
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	ldr r1, _08035E00 @ =0x080EA628
	ldr r5, _08035E04 @ =gEwramData
	ldr r0, [r5]
	ldr r4, _08035E08 @ =0x000254D0
	adds r0, r0, r4
	movs r2, #6
	ldrsh r0, [r0, r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_08041434
	movs r1, #0
	bl sub_08041338
	movs r2, #0x81
	lsls r2, r2, #5
	movs r0, #8
	movs r1, #0xc
	movs r3, #0xa
	bl sub_08046DD4
	ldr r0, [r5]
	adds r0, r0, r4
	movs r1, #1
	strb r1, [r0]
_08035DB8:
	bl sub_08035C14
	cmp r0, #0
	bne _08035DC2
	b _080360D0
_08035DC2:
	ldr r0, _08035E04 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _08035E08 @ =0x000254D0
	adds r1, r1, r2
	movs r2, #2
	strb r2, [r1]
	adds r5, r0, #0
_08035DD0:
	ldr r0, [r5]
	adds r0, #0x88
	ldr r1, _08035E0C @ =0x085241E0
	str r1, [r0]
	movs r0, #0
	strb r0, [r7, #0x1d]
	bl sub_0800C5D8
	ldr r0, [r5]
	ldr r7, _08035E08 @ =0x000254D0
	adds r0, r0, r7
	movs r1, #3
	strb r1, [r0]
	ldr r0, [r5]
	ldrh r1, [r0, #0x14]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08035E10
	movs r0, #0x1e
	bl sub_08033E38
	b _08035E48
	.align 2, 0
_08035E00: .4byte 0x080EA628
_08035E04: .4byte gEwramData
_08035E08: .4byte 0x000254D0
_08035E0C: .4byte 0x085241E0
_08035E10:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08035E22
	movs r0, #0x14
	bl sub_08033E38
	b _08035E48
_08035E22:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08035E32
	movs r0, #0xa
	bl sub_08033E38
	b _08035E48
_08035E32:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08035E42
	movs r0, #0x32
	bl sub_08033E38
	b _08035E48
_08035E42:
	movs r0, #0x63
	bl sub_08033E38
_08035E48:
	movs r0, #5
	movs r1, #4
	movs r2, #0
	bl sub_08021344
	movs r0, #2
	movs r1, #8
	bl sub_0804B26C
	movs r0, #0
	movs r1, #5
	bl sub_0804B26C
	movs r0, #1
	movs r1, #0x27
	bl sub_0804B26C
	b _080360D0
_08035E6C:
	bl sub_080213BC
	movs r0, #0
	mov r8, r0
	b _08035F36
_08035E76:
	movs r0, #0x1b
	movs r1, #0x48
	ldr r2, _08035F50 @ =EntityUpdateNothing
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _08035F32
	mov r2, r8
	lsls r1, r2, #5
	movs r7, #0x80
	lsls r7, r7, #1
	adds r1, r1, r7
	ldr r6, _08035F54 @ =gEwramData
	ldr r2, [r6]
	ldr r5, _08035F58 @ =0x000254D0
	adds r0, r2, r5
	ldrb r0, [r0, #1]
	lsrs r0, r0, #1
	lsls r0, r0, #5
	subs r1, r1, r0
	ldr r0, _08035F5C @ =0x0000A094
	adds r3, r2, r0
	ldrh r0, [r3, #6]
	subs r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x42
	movs r7, #0
	mov ip, r7
	movs r7, #0
	mov sb, r7
	strh r1, [r0]
	ldrh r1, [r3, #0xa]
	movs r0, #0x90
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	movs r3, #0
	ldr r0, _08035F60 @ =0x00013110
	adds r2, r2, r0
	ldr r0, [r2]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	bge _08035ED4
	movs r3, #1
_08035ED4:
	adds r2, r4, #0
	adds r2, #0x58
	lsls r3, r3, #6
	ldrb r0, [r2]
	movs r7, #0x41
	rsbs r7, r7, #0
	adds r1, r7, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	adds r2, #1
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	mov r0, sb
	strh r0, [r4, #0x30]
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	adds r0, #0x37
	mov r1, ip
	strb r1, [r0]
	ldr r0, [r6]
	adds r0, r0, r5
	ldrh r0, [r0, #6]
	adds r1, r4, #0
	adds r1, #0x36
	strb r0, [r1]
	ldr r0, _08035F64 @ =sub_0803B9D0
	str r0, [r4, #4]
	ldr r0, [r6]
	adds r0, r0, r5
	movs r2, #6
	ldrsh r1, [r0, r2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08035F68 @ =0x080E9644
	adds r0, r0, r1
	ldrh r1, [r0, #0xc]
	strh r1, [r4, #0x34]
	ldr r1, [r0, #4]
	str r1, [r4]
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
_08035F32:
	movs r7, #1
	add r8, r7
_08035F36:
	ldr r0, _08035F54 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08035F58 @ =0x000254D0
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	cmp r8, r0
	blt _08035E76
	ldr r0, _08035F54 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08035F58 @ =0x000254D0
	adds r0, r0, r2
	b _08036072
	.align 2, 0
_08035F50: .4byte EntityUpdateNothing
_08035F54: .4byte gEwramData
_08035F58: .4byte 0x000254D0
_08035F5C: .4byte 0x0000A094
_08035F60: .4byte 0x00013110
_08035F64: .4byte sub_0803B9D0
_08035F68: .4byte 0x080E9644
_08035F6C:
	bl sub_08000B64
	ldr r4, _08035FB0 @ =gEwramData
	ldr r0, [r4]
	ldr r7, _08035FB4 @ =0x0000A074
	adds r0, r0, r7
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08035F86
	bl sub_0800CA40
_08035F86:
	bl sub_08011CD0
	ldr r0, [r4]
	ldr r1, _08035FB8 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08011A44
	cmp r0, #0
	bne _08035FC0
	ldr r0, [r4]
	adds r0, #0x60
	bl sub_08010244
	ldr r0, [r4]
	ldr r2, _08035FBC @ =0x000254D0
	adds r0, r0, r2
	movs r1, #5
	strb r1, [r0]
	b _08035FC4
	.align 2, 0
_08035FB0: .4byte gEwramData
_08035FB4: .4byte 0x0000A074
_08035FB8: .4byte 0x00013110
_08035FBC: .4byte 0x000254D0
_08035FC0:
	bl sub_0800F750
_08035FC4:
	ldr r4, _08035FF8 @ =gEwramData
	ldr r3, [r4]
	ldrh r2, [r3, #0x14]
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r1, #0
	ands r0, r2
	cmp r0, r1
	bne _08036000
	ldr r7, _08035FFC @ =0x000254D0
	adds r1, r3, r7
	movs r0, #7
	strb r0, [r1]
	bl EntityDeleteAll
	bl sub_0803D9A8
	bl sub_0803E438
	bl sub_08039DC0
	bl sub_0803BEEC
	bl sub_0804059C
	b _080360D0
	.align 2, 0
_08035FF8: .4byte gEwramData
_08035FFC: .4byte 0x000254D0
_08036000:
	ldrh r1, [r3, #0x16]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08036034
	ldr r1, _0803602C @ =0x0000A074
	adds r0, r3, r1
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08036034
	adds r0, r6, #0
	bl sub_080473F4
	ldr r0, [r4]
	ldr r2, _08036030 @ =0x000254D0
	adds r0, r0, r2
	movs r1, #6
	strb r1, [r0]
	b _080360D0
	.align 2, 0
_0803602C: .4byte 0x0000A074
_08036030: .4byte 0x000254D0
_08036034:
	bl sub_0801266C
	b _080360D0
_0803603A:
	bl sub_08000B64
	ldr r4, _08036058 @ =gEwramData
	ldr r0, [r4]
	adds r0, #0x60
	bl sub_080104EC
	cmp r0, #0
	beq _080360D0
	ldr r0, [r4]
	ldr r7, _0803605C @ =0x000254D0
	adds r0, r0, r7
	movs r1, #3
	strb r1, [r0]
	b _080360D0
	.align 2, 0
_08036058: .4byte gEwramData
_0803605C: .4byte 0x000254D0
_08036060:
	adds r0, r6, #0
	bl sub_08047764
	cmp r0, #0
	beq _080360D0
	ldr r0, _08036078 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803607C @ =0x000254D0
	adds r0, r0, r1
_08036072:
	movs r1, #4
	strb r1, [r0]
	b _080360D0
	.align 2, 0
_08036078: .4byte gEwramData
_0803607C: .4byte 0x000254D0
_08036080:
	movs r4, #0
	str r4, [sp, #0x40]
	ldr r0, _080360E4 @ =0x040000D4
	add r3, sp, #0x40
	str r3, [r0]
	ldr r1, _080360E8 @ =0x0600E000
	str r1, [r0, #4]
	ldr r2, _080360EC @ =0x85000200
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r4, [sp, #0x40]
	str r3, [r0]
	ldr r1, _080360F0 @ =0x0600E800
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r4, [sp, #0x40]
	str r3, [r0]
	ldr r1, _080360F4 @ =0x0600F000
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r4, [sp, #0x40]
	str r3, [r0]
	ldr r1, _080360F8 @ =0x0600F800
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, [r5]
	ldr r7, _080360FC @ =0x0001261C
	adds r2, r0, r7
	ldr r1, _08036100 @ =0x0000FFFF
	strh r1, [r2]
	ldr r1, _08036104 @ =0x00012C21
	adds r0, r0, r1
	strb r4, [r0]
	ldr r0, [r5]
	ldr r2, _08036108 @ =0x000254D0
	adds r0, r0, r2
	strb r4, [r0]
_080360D0:
	movs r0, #1
	rsbs r0, r0, #0
	add sp, #0x44
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080360E4: .4byte 0x040000D4
_080360E8: .4byte 0x0600E000
_080360EC: .4byte 0x85000200
_080360F0: .4byte 0x0600E800
_080360F4: .4byte 0x0600F000
_080360F8: .4byte 0x0600F800
_080360FC: .4byte 0x0001261C
_08036100: .4byte 0x0000FFFF
_08036104: .4byte 0x00012C21
_08036108: .4byte 0x000254D0

	thumb_func_start sub_0803610C
sub_0803610C: @ 0x0803610C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r6, [r5, #0xa]
	cmp r6, #0
	beq _0803611C
	cmp r6, #1
	beq _08036156
	b _08036194
_0803611C:
	ldr r0, _080361A0 @ =0x080E1F94
	movs r1, #0
	bl sub_0803B800
	adds r4, r0, #0
	ldr r0, _080361A4 @ =0x0820C028
	movs r1, #0
	movs r2, #1
	movs r3, #0xa
	bl sub_0803C7B4
	ldr r1, _080361A8 @ =0x08252748
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #0xa
	bl sub_0803B924
	ldr r0, _080361AC @ =sub_0803B9D0
	str r0, [r5, #4]
	strb r6, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
_08036156:
	ldr r2, _080361B0 @ =gEwramData
	ldr r0, [r2]
	ldrh r1, [r0, #0x16]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803616A
	ldrb r0, [r5, #0xb]
	subs r0, #1
	strb r0, [r5, #0xb]
_0803616A:
	ldr r0, [r2]
	ldrh r1, [r0, #0x16]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803617C
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
_0803617C:
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	ldrb r1, [r5, #0xb]
	cmp r0, r1
	beq _08036194
	ldrb r1, [r5, #0xb]
	adds r0, r5, #0
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
_08036194:
	adds r0, r5, #0
	bl sub_0803F17C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080361A0: .4byte 0x080E1F94
_080361A4: .4byte 0x0820C028
_080361A8: .4byte 0x08252748
_080361AC: .4byte sub_0803B9D0
_080361B0: .4byte gEwramData

	thumb_func_start sub_080361B4
sub_080361B4: @ 0x080361B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x40
	ldr r1, _080361D0 @ =gEwramData
	ldr r0, [r1]
	ldr r3, _080361D4 @ =0x000254D0
	adds r2, r0, r3
	ldrb r0, [r2]
	adds r5, r1, #0
	cmp r0, #0
	beq _080361D8
	cmp r0, #1
	beq _080361F8
	b _080362FA
	.align 2, 0
_080361D0: .4byte gEwramData
_080361D4: .4byte 0x000254D0
_080361D8:
	movs r0, #1
	strb r0, [r2]
	movs r2, #0
	adds r4, r5, #0
	ldr r3, _08036214 @ =0x080E1FA8
_080361E2:
	ldr r0, [r4]
	lsls r1, r2, #1
	ldr r6, _08036218 @ =0x000254D8
	adds r0, r0, r6
	adds r0, r0, r1
	ldrh r1, [r3, #4]
	strh r1, [r0]
	adds r3, #8
	adds r2, #1
	cmp r2, #2
	ble _080361E2
_080361F8:
	movs r0, #0x80
	ldr r1, [r5]
	ldr r3, _0803621C @ =0x000254D6
	adds r2, r1, r3
	movs r3, #0
	movs r4, #2
	ldrh r1, [r1, #0x18]
	ands r0, r1
	cmp r0, #0
	beq _08036220
	ldrh r0, [r2]
	adds r0, #1
	b _0803622C
	.align 2, 0
_08036214: .4byte 0x080E1FA8
_08036218: .4byte 0x000254D8
_0803621C: .4byte 0x000254D6
_08036220:
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _0803622E
	ldrh r0, [r2]
	subs r0, #1
_0803622C:
	strh r0, [r2]
_0803622E:
	movs r6, #0
	ldrsh r0, [r2, r6]
	cmp r0, r4
	ble _0803623A
	strh r3, [r2]
	b _08036240
_0803623A:
	cmp r0, #0
	bge _08036240
	strh r4, [r2]
_08036240:
	ldr r3, [r5]
	ldr r1, _08036270 @ =0x000254D0
	adds r0, r3, r1
	movs r6, #6
	ldrsh r0, [r0, r6]
	ldr r2, _08036274 @ =0x080E1FA8
	lsls r1, r0, #3
	adds r1, r1, r2
	movs r2, #0x10
	lsls r0, r0, #1
	adds r4, r0, r3
	ldr r0, _08036278 @ =0x000254D8
	adds r4, r4, r0
	movs r0, #4
	ldrsh r6, [r1, r0]
	movs r0, #6
	ldrsh r7, [r1, r0]
	ldrh r1, [r3, #0x18]
	ands r2, r1
	cmp r2, #0
	beq _0803627C
	ldrh r0, [r4]
	adds r0, #1
	b _08036288
	.align 2, 0
_08036270: .4byte 0x000254D0
_08036274: .4byte 0x080E1FA8
_08036278: .4byte 0x000254D8
_0803627C:
	movs r0, #0x20
	ands r1, r0
	cmp r1, #0
	beq _0803628A
	ldrh r0, [r4]
	subs r0, #1
_08036288:
	strh r0, [r4]
_0803628A:
	ldr r0, [r5]
	ldrh r0, [r0, #0x18]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0803629E
	ldrh r0, [r4]
	adds r0, #0xa
	strh r0, [r4]
_0803629E:
	ldr r0, [r5]
	ldrh r0, [r0, #0x18]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080362B2
	ldrh r0, [r4]
	subs r0, #0xa
	strh r0, [r4]
_080362B2:
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, r7
	ble _080362BE
	strh r6, [r4]
	b _080362C4
_080362BE:
	cmp r0, r6
	bge _080362C4
	strh r7, [r4]
_080362C4:
	ldr r2, [r5]
	ldrh r1, [r2, #0x16]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080362E6
	ldr r3, _08036308 @ =0x000254D0
	adds r0, r2, r3
	movs r6, #6
	ldrsh r1, [r0, r6]
	lsls r1, r1, #1
	adds r3, #8
	adds r0, r2, r3
	adds r0, r0, r1
	ldrh r0, [r0]
	bl PlaySong
_080362E6:
	ldr r0, [r5]
	ldrh r1, [r0, #0x16]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080362FA
	movs r0, #0x80
	lsls r0, r0, #5
	bl PlaySong
_080362FA:
	movs r0, #1
	rsbs r0, r0, #0
	add sp, #0x40
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08036308: .4byte 0x000254D0

	thumb_func_start sub_0803630C
sub_0803630C: @ 0x0803630C
	push {r4, r5, lr}
	sub sp, #0x40
	ldr r5, _08036324 @ =gEwramData
	ldr r0, [r5]
	ldr r4, _08036328 @ =0x000254D0
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803632C
	cmp r0, #1
	beq _08036352
	b _08036356
	.align 2, 0
_08036324: .4byte gEwramData
_08036328: .4byte 0x000254D0
_0803632C:
	ldr r2, _08036364 @ =sub_0803610C
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r1, r0, #0
	cmp r1, #0
	beq _0803634A
	adds r2, r1, #0
	adds r2, #0x42
	movs r0, #0x80
	strh r0, [r2]
	adds r1, #0x46
	movs r0, #0x50
	strh r0, [r1]
_0803634A:
	ldr r0, [r5]
	adds r0, r0, r4
	movs r1, #1
	strb r1, [r0]
_08036352:
	bl sub_08000B64
_08036356:
	movs r0, #1
	rsbs r0, r0, #0
	add sp, #0x40
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08036364: .4byte sub_0803610C

	thumb_func_start sub_08036368
sub_08036368: @ 0x08036368
	bx lr
	.align 2, 0

	thumb_func_start sub_0803636C
sub_0803636C: @ 0x0803636C
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0x18]
	cmp r0, #0
	beq _0803639C
	ldr r0, _08036394 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08036398 @ =0x00013110
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r3, #0
	adds r0, #0x40
	ldrh r2, [r0]
	adds r1, #0x40
	movs r0, #0
	strh r2, [r1]
	strb r0, [r3, #0x18]
	ldr r0, [r3, #0x48]
	b _0803639E
	.align 2, 0
_08036394: .4byte gEwramData
_08036398: .4byte 0x00013110
_0803639C:
	movs r0, #0
_0803639E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080363A4
sub_080363A4: @ 0x080363A4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	ldrh r0, [r4, #4]
	bl sub_08021530
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	adds r3, r7, #0
	bl sub_0806B7D8
	adds r1, r6, #0
	adds r1, #0x2d
	movs r0, #8
	strb r0, [r1]
	ldrh r0, [r6, #0x34]
	subs r0, r0, r7
	strh r0, [r6, #0x34]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0803640C
	movs r0, #0x3c
	strb r0, [r6, #0xd]
	movs r0, #2
	strb r0, [r6, #0xa]
	ldr r0, _0803641C @ =0xFFFFC000
	str r0, [r6, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r6, #0x54]
	subs r1, #1
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
	adds r0, r6, #0
	movs r1, #2
	movs r2, #1
	bl sub_0803F348
_0803640C:
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #0
	bl sub_08042B8C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803641C: .4byte 0xFFFFC000

	thumb_func_start sub_08036420
sub_08036420: @ 0x08036420
	push {lr}
	adds r2, r0, #0
	movs r1, #0x34
	ldrsh r0, [r2, r1]
	cmp r0, #0
	ble _08036474
	adds r1, r2, #0
	adds r1, #0x2d
	ldrb r0, [r1]
	cmp r0, #0
	beq _08036474
	subs r0, #1
	strb r0, [r1]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08036454
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	b _08036470
_08036454:
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
_08036470:
	movs r0, #1
	b _08036476
_08036474:
	movs r0, #0
_08036476:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803647c
sub_0803647c: @ 0x0803647C
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	bl sub_08036420
	adds r4, r0, #0
	cmp r4, #0
	beq _08036496
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
	b _0803660E
_08036496:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _08036548
	cmp r0, #1
	bgt _080364A6
	cmp r0, #0
	beq _080364AE
	b _080365F4
_080364A6:
	cmp r0, #2
	bne _080364AC
	b _080365AC
_080364AC:
	b _080365F4
_080364AE:
	ldr r0, _08036528 @ =0x081CBF2C
	movs r1, #0
	bl sub_0803B800
	adds r4, r0, #0
	ldr r0, _0803652C @ =0x0820A3FC
	bl sub_080681D8
	adds r2, r5, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _08036530 @ =0x0821285C
	ldrb r3, [r2]
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_0803B924
	ldr r0, _08036534 @ =0x086391C0
	ldr r1, [r0]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F0E4
	movs r0, #1
	strb r0, [r5, #0xa]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r2, _08036538 @ =sub_08036618
	ldr r3, _0803653C @ =sub_080363A4
	adds r0, r5, #0
	movs r1, #9
	bl sub_0804277C
	movs r0, #3
	movs r1, #0xa
	bl sub_08042A54
	ldr r4, _08036540 @ =0x2014E0F6
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080428F0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08042884
	ldr r0, _08036544 @ =sub_0803B9D0
	str r0, [r5, #4]
	movs r0, #0x64
	strh r0, [r5, #0x34]
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x12
	strb r0, [r1]
	b _080365F4
	.align 2, 0
_08036528: .4byte 0x081CBF2C
_0803652C: .4byte 0x0820A3FC
_08036530: .4byte 0x0821285C
_08036534: .4byte 0x086391C0
_08036538: .4byte sub_08036618
_0803653C: .4byte sub_080363A4
_08036540: .4byte 0x2014E0F6
_08036544: .4byte sub_0803B9D0
_08036548:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r5, #0x14]
	bl sub_080009E4
	str r0, [r5, #0x4c]
	ldr r0, [r5, #0x14]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r0, r2
	bl sub_080009E4
	str r0, [r5, #0x48]
	ldr r1, [r5, #0x50]
	cmp r1, #0
	ble _08036594
	adds r0, r0, r1
	str r0, [r5, #0x48]
	ldr r2, _08036590 @ =0xFFFF8000
	adds r0, r1, r2
	str r0, [r5, #0x50]
	cmp r0, #0
	bge _080365F4
	str r4, [r5, #0x50]
	b _080365F4
	.align 2, 0
_08036590: .4byte 0xFFFF8000
_08036594:
	cmp r1, #0
	bge _080365F4
	adds r0, r0, r1
	str r0, [r5, #0x48]
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r1, r2
	str r0, [r5, #0x50]
	cmp r0, #0
	ble _080365F4
	str r4, [r5, #0x50]
	b _080365F4
_080365AC:
	ldr r0, [r5, #0x4c]
	ldr r1, [r5, #0x54]
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	ldr r1, [r5, #0x44]
	adds r2, r1, r0
	str r2, [r5, #0x44]
	ldrb r1, [r5, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080365DC
	ldr r0, [r5, #0x40]
	movs r3, #0x80
	lsls r3, r3, #0xc
	adds r1, r5, #0
	adds r1, #0x5c
	ldrb r1, [r1]
	subs r1, #1
	str r1, [sp]
	adds r1, r2, #0
	adds r2, r3, #0
	bl sub_0806D5C0
_080365DC:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080365F4
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080365F4:
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _08036602
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
_08036602:
	adds r0, r5, #0
	bl sub_08021924
	adds r0, r5, #0
	bl sub_0803F17C
_0803660E:
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08036618
sub_08036618: @ 0x08036618
	push {lr}
	sub sp, #0x10
	mov r2, sp
	movs r3, #0
	movs r1, #0xa
	strh r1, [r2]
	movs r1, #2
	strh r1, [r2, #2]
	mov r1, sp
	strh r3, [r1, #4]
	ldr r2, [r0, #0x40]
	str r2, [sp, #8]
	ldr r0, [r0, #0x44]
	str r0, [sp, #0xc]
	movs r0, #3
	strh r0, [r1, #6]
	ldr r3, _08036660 @ =0xFFF98000
	ldr r0, _08036664 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08036668 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	cmp r0, r2
	ble _0803664C
	rsbs r3, r3, #0
_0803664C:
	ldr r1, _0803666C @ =0xFFFD0000
	adds r0, r3, #0
	bl sub_08021214
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r0}
	bx r0
	.align 2, 0
_08036660: .4byte 0xFFF98000
_08036664: .4byte gEwramData
_08036668: .4byte 0x00013110
_0803666C: .4byte 0xFFFD0000

	thumb_func_start GameModeDebug2229Update
GameModeDebug2229Update: @ 0x08036670
	push {r4, lr}
	sub sp, #4
	ldr r4, _08036688 @ =gEwramData
	ldr r1, [r4]
	ldrb r0, [r1, #0x12]
	cmp r0, #1
	beq _080366B0
	cmp r0, #1
	bgt _0803668C
	cmp r0, #0
	beq _08036696
	b _08036724
	.align 2, 0
_08036688: .4byte gEwramData
_0803668C:
	cmp r0, #2
	beq _080366E2
	cmp r0, #3
	beq _080366F6
	b _08036724
_08036696:
	movs r0, #1
	strb r0, [r1, #0x12]
	ldr r0, [r4]
	adds r0, #0x88
	ldr r1, _080366AC @ =0x08518710
	str r1, [r0]
	bl sub_0800C5D8
	bl sub_08012014
	b _08036724
	.align 2, 0
_080366AC: .4byte 0x08518710
_080366B0:
	bl sub_080211F0
	ldr r0, [r4]
	ldr r1, _080366D4 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08011A44
	cmp r0, #0
	bne _080366D8
	ldr r0, [r4]
	adds r0, #0x60
	bl sub_08010244
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #0x12]
	b _080366DC
	.align 2, 0
_080366D4: .4byte 0x00013110
_080366D8:
	bl sub_0800F750
_080366DC:
	bl sub_08000B64
	b _08036724
_080366E2:
	adds r0, r1, #0
	adds r0, #0x60
	bl sub_080104EC
	cmp r0, #0
	beq _08036724
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #0x12]
	b _08036724
_080366F6:
	bl sub_08000E50
	movs r2, #0
	str r2, [sp]
	ldr r1, _08036718 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _0803671C @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _08036720 @ =0x85000800
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r4]
	strb r2, [r0, #0x12]
	movs r0, #0
	b _08036746
	.align 2, 0
_08036718: .4byte 0x040000D4
_0803671C: .4byte 0x0600E000
_08036720: .4byte 0x85000800
_08036724:
	bl sub_08011CD0
	ldr r0, _08036750 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08036754 @ =0x0000A074
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0803673E
	bl sub_0800CA40
_0803673E:
	bl sub_0801266C
	movs r0, #1
	rsbs r0, r0, #0
_08036746:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08036750: .4byte gEwramData
_08036754: .4byte 0x0000A074

	thumb_func_start sub_08036758
sub_08036758: @ 0x08036758
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r4, [r5, #0xa]
	cmp r4, #0
	beq _08036768
	cmp r4, #1
	beq _080367CC
	b _08036814
_08036768:
	ldr r0, _080367BC @ =0x081CBF24
	movs r1, #0
	bl sub_0803B800
	adds r4, r0, #0
	cmp r4, #0
	blt _08036814
	ldr r0, _080367C0 @ =0x0820A3D8
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r1, _080367C4 @ =0x082121F0
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl sub_0803F348
	ldr r0, _080367C8 @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x42
	movs r0, #0x96
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x50
	strh r0, [r1]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	strb r0, [r5, #0xa]
	b _08036814
	.align 2, 0
_080367BC: .4byte 0x081CBF24
_080367C0: .4byte 0x0820A3D8
_080367C4: .4byte 0x082121F0
_080367C8: .4byte sub_0803B9D0
_080367CC:
	bl RandomNumberGenerator
	lsrs r0, r0, #4
	ands r0, r4
	cmp r0, #0
	beq _080367E2
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, #1
	b _080367EA
_080367E2:
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r1]
	subs r0, #1
_080367EA:
	strh r0, [r1]
	bl RandomNumberGenerator
	lsrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08036804
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r0, [r1]
	adds r0, #1
	b _0803680C
_08036804:
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r0, [r1]
	subs r0, #1
_0803680C:
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_0803F17C
_08036814:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start GameModeDebug2739Update
GameModeDebug2739Update: @ 0x0803681C
	push {r4, r5, lr}
	sub sp, #4
	movs r5, #1
	rsbs r5, r5, #0
	ldr r0, _0803683C @ =gEwramData
	ldr r3, [r0]
	ldrb r2, [r3, #0x12]
	adds r4, r0, #0
	cmp r2, #4
	bls _08036832
	b _0803694A
_08036832:
	lsls r0, r2, #2
	ldr r1, _08036840 @ =_08036844
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803683C: .4byte gEwramData
_08036840: .4byte _08036844
_08036844: @ jump table
	.4byte _08036858 @ case 0
	.4byte _08036884 @ case 1
	.4byte _080368C8 @ case 2
	.4byte _080368E2 @ case 3
	.4byte _0803693C @ case 4
_08036858:
	movs r0, #0
	str r0, [sp]
	ldr r2, _08036874 @ =0x040000D4
	mov r0, sp
	str r0, [r2]
	ldr r0, _08036878 @ =0x03000000
	str r0, [r2, #4]
	ldr r1, _0803687C @ =0x85000005
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _08036880 @ =0x084F1508
	bl sub_08036AD4
	b _08036912
	.align 2, 0
_08036874: .4byte 0x040000D4
_08036878: .4byte 0x03000000
_0803687C: .4byte 0x85000005
_08036880: .4byte 0x084F1508
_08036884:
	ldr r4, _080368A4 @ =0x03000000
	adds r0, r4, #0
	movs r1, #4
	movs r2, #4
	bl sub_08036970
	str r0, [r4, #0xc]
	cmp r0, #6
	beq _080368A8
	cmp r0, #6
	blt _080368B8
	cmp r0, #0xff
	bgt _080368B8
	cmp r0, #0xfe
	blt _080368B8
	b _0803694E
	.align 2, 0
_080368A4: .4byte 0x03000000
_080368A8:
	ldr r0, _080368B4 @ =gEwramData
	ldr r1, [r0]
	movs r0, #4
	strb r0, [r1, #0x12]
	b _0803694E
	.align 2, 0
_080368B4: .4byte gEwramData
_080368B8:
	ldr r0, _080368C4 @ =gEwramData
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1, #0x12]
	b _0803694E
	.align 2, 0
_080368C4: .4byte gEwramData
_080368C8:
	movs r0, #0
	str r0, [sp]
	ldr r1, _0803691C @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08036920 @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _08036924 @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, [r4]
	movs r0, #3
	strb r0, [r1, #0x12]
_080368E2:
	ldr r4, _08036928 @ =0x03000000
	ldr r1, [r4, #0xc]
	lsls r1, r1, #3
	ldr r0, _0803692C @ =0x084F1464
	adds r1, r1, r0
	ldr r0, [r1, #4]
	ldr r1, [r1]
	bl _call_via_r1
	cmp r0, #0
	beq _0803694E
	bl sub_08000E50
	ldr r1, _0803691C @ =0x040000D4
	ldr r0, _08036930 @ =sUnk_080E3464
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08036934 @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	strb r0, [r4, #0x10]
_08036912:
	ldr r0, _08036938 @ =gEwramData
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #0x12]
	b _0803694E
	.align 2, 0
_0803691C: .4byte 0x040000D4
_08036920: .4byte 0x0600E000
_08036924: .4byte 0x85000200
_08036928: .4byte 0x03000000
_0803692C: .4byte 0x084F1464
_08036930: .4byte sUnk_080E3464
_08036934: .4byte 0x84000080
_08036938: .4byte gEwramData
_0803693C:
	ldr r1, [r4]
	movs r0, #0
	strb r0, [r1, #0x12]
	movs r5, #0xe
	bl ResetAudio
	b _0803694E
_0803694A:
	movs r0, #0
	strb r0, [r3, #0x12]
_0803694E:
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08036958
sub_08036958: @ 0x08036958
	ldr r0, _08036960 @ =0x03000000
	ldrb r0, [r0, #0x10]
	bx lr
	.align 2, 0
_08036960: .4byte 0x03000000

	thumb_func_start sub_08036964
sub_08036964: @ 0x08036964
	ldr r1, _0803696C @ =0x03000000
	strb r0, [r1, #0x10]
	bx lr
	.align 2, 0
_0803696C: .4byte 0x03000000

	thumb_func_start sub_08036970
sub_08036970: @ 0x08036970
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	bl sub_08036B10
	mov r8, r0
	bl sub_08036AF8
	mov sb, r0
	movs r0, #0xff
	str r0, [sp, #8]
	movs r0, #4
	ldrsb r0, [r5, r0]
	adds r0, #5
	adds r7, r5, r0
	ldr r0, _08036AC4 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1e]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080369C2
	ldrb r0, [r7]
	subs r0, #1
	strb r0, [r7]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _080369C2
	mov r0, sb
	subs r0, #1
	strb r0, [r7]
_080369C2:
	ldr r0, _08036AC4 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1e]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080369E6
	ldrb r0, [r7]
	adds r0, #1
	strb r0, [r7]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r1, sb
	subs r1, #1
	cmp r0, r1
	ble _080369E6
	movs r0, #0
	strb r0, [r7]
_080369E6:
	ldr r0, _08036AC4 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1e]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08036A3A
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	add r1, r8
	ldr r0, [r1, #8]
	str r0, [sp, #8]
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _08036A3A
	ldrb r0, [r5, #4]
	adds r0, #1
	movs r4, #0
	strb r0, [r5, #4]
	adds r0, r5, #0
	bl sub_08036B10
	mov r8, r0
	bl sub_08036AF8
	mov sb, r0
	movs r0, #4
	ldrsb r0, [r5, r0]
	adds r0, #5
	adds r7, r5, r0
	str r4, [sp]
	ldr r1, _08036AC8 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08036ACC @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _08036AD0 @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08036A3A:
	ldr r0, _08036AC4 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1e]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08036A80
	ldrb r1, [r5, #4]
	movs r0, #4
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _08036A80
	subs r0, r1, #1
	movs r4, #0
	strb r0, [r5, #4]
	adds r0, r5, #0
	bl sub_08036B10
	mov r8, r0
	bl sub_08036AF8
	mov sb, r0
	movs r0, #4
	ldrsb r0, [r5, r0]
	adds r0, #5
	adds r7, r5, r0
	str r4, [sp]
	ldr r1, _08036AC8 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08036ACC @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _08036AD0 @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08036A80:
	movs r6, #0
	cmp r6, sb
	bge _08036AB0
	mov r5, r8
	ldr r0, [sp, #4]
	lsls r4, r0, #0x10
_08036A8C:
	movs r2, #0
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r6, r0
	bne _08036A98
	movs r2, #1
_08036A98:
	lsrs r1, r4, #0x10
	ldr r3, [r5]
	mov r0, sl
	bl BgCmdBuffer_WriteString
	adds r5, #0xc
	movs r0, #0x80
	lsls r0, r0, #9
	adds r4, r4, r0
	adds r6, #1
	cmp r6, sb
	blt _08036A8C
_08036AB0:
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
_08036AC4: .4byte gEwramData
_08036AC8: .4byte 0x040000D4
_08036ACC: .4byte 0x0600E000
_08036AD0: .4byte 0x85000200

	thumb_func_start sub_08036AD4
sub_08036AD4: @ 0x08036AD4
	sub sp, #4
	movs r2, #0
	str r2, [sp]
	ldr r2, _08036AF0 @ =0x040000D4
	mov r3, sp
	str r3, [r2]
	str r0, [r2, #4]
	ldr r3, _08036AF4 @ =0x85000003
	str r3, [r2, #8]
	ldr r2, [r2, #8]
	str r1, [r0]
	add sp, #4
	bx lr
	.align 2, 0
_08036AF0: .4byte 0x040000D4
_08036AF4: .4byte 0x85000003

	thumb_func_start sub_08036AF8
sub_08036AF8: @ 0x08036AF8
	push {lr}
	adds r1, r0, #0
	movs r2, #0
	b _08036B04
_08036B00:
	adds r1, #0xc
	adds r2, #1
_08036B04:
	ldr r0, [r1]
	cmp r0, #0
	bne _08036B00
	adds r0, r2, #0
	pop {r1}
	bx r1

	thumb_func_start sub_08036B10
sub_08036B10: @ 0x08036B10
	push {r4, r5, lr}
	ldr r3, [r0]
	movs r2, #0
	movs r4, #4
	ldrsb r4, [r0, r4]
	cmp r2, r4
	bge _08036B36
	adds r5, r0, #5
_08036B20:
	adds r0, r5, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r3, [r0, #4]
	adds r2, #1
	cmp r2, r4
	blt _08036B20
_08036B36:
	adds r0, r3, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08036B40
sub_08036B40: @ 0x08036B40
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	movs r7, #0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08036B64 @ =0x084F1544
	adds r6, r1, r0
	bl sub_08036958
	cmp r0, #1
	beq _08036BDC
	cmp r0, #1
	bgt _08036B68
	cmp r0, #0
	beq _08036B6E
	b _08036C24
	.align 2, 0
_08036B64: .4byte 0x084F1544
_08036B68:
	cmp r0, #2
	beq _08036C08
	b _08036C24
_08036B6E:
	str r7, [sp]
	ldr r4, _08036BB8 @ =0x040000D4
	mov r0, sp
	str r0, [r4]
	ldr r5, _08036BBC @ =0x03000018
	str r5, [r4, #4]
	ldr r0, _08036BC0 @ =0x85000004
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r3, _08036BC4 @ =0x080E226C
	movs r0, #2
	movs r1, #0x13
	movs r2, #0xf
	bl BgCmdBuffer_WriteString
	ldr r1, [r6, #4]
	adds r0, r5, #0
	bl _call_via_r1
	ldr r0, _08036BC8 @ =0x080E206A
	str r0, [r4]
	ldr r0, _08036BCC @ =gEwramData
	ldr r1, [r0]
	ldr r2, _08036BD0 @ =0x000127FC
	adds r0, r1, r2
	str r0, [r4, #4]
	ldr r0, _08036BD4 @ =0x80000008
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08036BD8 @ =0x00012C21
	adds r1, r1, r0
	strb r7, [r1]
	movs r0, #1
	bl sub_08036964
	b _08036C24
	.align 2, 0
_08036BB8: .4byte 0x040000D4
_08036BBC: .4byte 0x03000018
_08036BC0: .4byte 0x85000004
_08036BC4: .4byte 0x080E226C
_08036BC8: .4byte 0x080E206A
_08036BCC: .4byte gEwramData
_08036BD0: .4byte 0x000127FC
_08036BD4: .4byte 0x80000008
_08036BD8: .4byte 0x00012C21
_08036BDC:
	bl sub_08000B64
	ldr r0, _08036C00 @ =0x03000018
	ldr r1, [r6]
	bl _call_via_r1
	ldr r0, _08036C04 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x14]
	movs r0, #6
	ands r0, r1
	cmp r0, #6
	bne _08036C24
	movs r0, #2
	bl sub_08036964
	b _08036C24
	.align 2, 0
_08036C00: .4byte 0x03000018
_08036C04: .4byte gEwramData
_08036C08:
	ldr r0, _08036C30 @ =0x03000018
	ldr r1, [r6, #8]
	bl _call_via_r1
	str r7, [sp]
	ldr r1, _08036C34 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _08036C38 @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _08036C3C @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r7, #1
_08036C24:
	adds r0, r7, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08036C30: .4byte 0x03000018
_08036C34: .4byte 0x040000D4
_08036C38: .4byte 0x0600E000
_08036C3C: .4byte 0x85000200

	thumb_func_start sub_08036C40
sub_08036C40: @ 0x08036C40
	push {r4, r5, r6, lr}
	sub sp, #0x14
	adds r6, r0, #0
	movs r5, #0
	movs r4, #0
	movs r2, #0x80
	lsls r2, r2, #0xa
	ldr r1, _08036C6C @ =gEwramData
	ldr r0, [r1]
	ldrh r3, [r0, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r3
	cmp r0, #0
	beq _08036C60
	lsls r2, r2, #1
_08036C60:
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _08036C70
	rsbs r5, r2, #0
	b _08036C7A
	.align 2, 0
_08036C6C: .4byte gEwramData
_08036C70:
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0
	beq _08036C7A
	adds r5, r2, #0
_08036C7A:
	ldr r0, [r1]
	ldrh r1, [r0, #0x1c]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08036C8A
	subs r4, r4, r2
	b _08036C94
_08036C8A:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08036C94
	adds r4, r4, r2
_08036C94:
	ldr r0, [r6]
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0803FBBC
	ldr r0, [r6]
	bl sub_08000F60
	movs r0, #0
	bl sub_0800D288
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08036CB4
sub_08036CB4: @ 0x08036CB4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800C778
	bl sub_0806C354
	bl sub_0800C6F8
	bl sub_0800C72C
	ldr r0, _08036D20 @ =sub_080370F0
	bl EntityCreate
	str r0, [r4, #4]
	ldr r0, _08036D24 @ =0x0850F01C
	str r0, [r4]
	movs r1, #1
	str r1, [r4, #8]
	movs r1, #0
	movs r2, #0
	bl sub_0800F9EC
	ldr r0, _08036D28 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08036D2C @ =0x00013110
	adds r2, r1, r0
	ldr r0, [r4, #4]
	str r0, [r2]
	ldr r2, _08036D30 @ =0x000131EA
	adds r0, r1, r2
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r0]
	ldr r3, _08036D34 @ =0x000131EC
	adds r0, r1, r3
	strh r2, [r0]
	ldr r2, _08036D38 @ =0x000131F2
	adds r0, r1, r2
	movs r2, #0x40
	strh r2, [r0]
	adds r3, #4
	adds r0, r1, r3
	strh r2, [r0]
	ldr r0, _08036D3C @ =0x00013214
	adds r2, r1, r0
	movs r0, #0x78
	strh r0, [r2]
	ldr r2, _08036D40 @ =0x00013216
	adds r1, r1, r2
	movs r0, #0x60
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08036D20: .4byte sub_080370F0
_08036D24: .4byte 0x0850F01C
_08036D28: .4byte gEwramData
_08036D2C: .4byte 0x00013110
_08036D30: .4byte 0x000131EA
_08036D34: .4byte 0x000131EC
_08036D38: .4byte 0x000131F2
_08036D3C: .4byte 0x00013214
_08036D40: .4byte 0x00013216

	thumb_func_start sub_08036D44
sub_08036D44: @ 0x08036D44
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08036DA0 @ =sub_08036DC4
	bl EntityCreate
	str r0, [r4, #4]
	ldr r0, _08036DA4 @ =0x0850EF9C
	str r0, [r4]
	movs r1, #1
	str r1, [r4, #8]
	movs r1, #0
	movs r2, #0
	bl sub_0800F9EC
	ldr r0, _08036DA8 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08036DAC @ =0x00013110
	adds r2, r1, r0
	ldr r0, [r4, #4]
	str r0, [r2]
	ldr r2, _08036DB0 @ =0x000131EA
	adds r0, r1, r2
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r0]
	ldr r3, _08036DB4 @ =0x000131EC
	adds r0, r1, r3
	strh r2, [r0]
	ldr r2, _08036DB8 @ =0x000131F2
	adds r0, r1, r2
	movs r2, #0x40
	strh r2, [r0]
	adds r3, #4
	adds r0, r1, r3
	strh r2, [r0]
	ldr r0, _08036DBC @ =0x00013214
	adds r2, r1, r0
	movs r0, #0x78
	strh r0, [r2]
	ldr r2, _08036DC0 @ =0x00013216
	adds r1, r1, r2
	movs r0, #0x60
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08036DA0: .4byte sub_08036DC4
_08036DA4: .4byte 0x0850EF9C
_08036DA8: .4byte gEwramData
_08036DAC: .4byte 0x00013110
_08036DB0: .4byte 0x000131EA
_08036DB4: .4byte 0x000131EC
_08036DB8: .4byte 0x000131F2
_08036DBC: .4byte 0x00013214
_08036DC0: .4byte 0x00013216

	thumb_func_start sub_08036DC4
sub_08036DC4: @ 0x08036DC4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r6, r0, #0
	bl GetEntityRoomYPositionInteger
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r6, #0
	bl GetEntityRoomXPositionInteger
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldrb r5, [r6, #0xa]
	cmp r5, #0
	beq _08036DEE
	cmp r5, #1
	beq _08036E5C
	b _08036ECA
_08036DEE:
	ldr r0, _08036E50 @ =0x081CBF24
	movs r1, #0
	bl sub_0803B800
	adds r4, r0, #0
	ldr r0, _08036E54 @ =0x0820A3D8
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_0803C7B4
	ldr r1, _08036E58 @ =0x082121F0
	adds r0, r6, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_0803B924
	adds r0, r6, #0
	movs r1, #0
	movs r2, #1
	bl sub_0803F348
	adds r3, r6, #0
	adds r3, #0x42
	movs r0, #0x64
	strh r0, [r3]
	adds r4, r6, #0
	adds r4, #0x46
	movs r0, #0x90
	strh r0, [r4]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r6, #0x48]
	str r5, [r6, #0x4c]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0x10
	strb r0, [r1]
	adds r2, r4, #0
	b _08036EF2
	.align 2, 0
_08036E50: .4byte 0x081CBF24
_08036E54: .4byte 0x0820A3D8
_08036E58: .4byte 0x082121F0
_08036E5C:
	movs r0, #0
	str r0, [r6, #0x50]
	ldr r0, _08036E88 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1c]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08036E8C
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x48]
	subs r0, r0, r1
	str r0, [r6, #0x40]
	rsbs r1, r1, #0
	str r1, [r6, #0x50]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	b _08036EAA
	.align 2, 0
_08036E88: .4byte gEwramData
_08036E8C:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08036EAC
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x48]
	adds r0, r0, r1
	str r0, [r6, #0x40]
	str r1, [r6, #0x50]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
_08036EAA:
	strb r0, [r2]
_08036EAC:
	movs r0, #0
	str r0, [r6, #0x54]
	ldr r0, _08036ED4 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1c]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08036ED8
	ldr r0, [r6, #0x44]
	ldr r1, [r6, #0x4c]
	subs r0, r0, r1
	str r0, [r6, #0x44]
	rsbs r1, r1, #0
	str r1, [r6, #0x54]
_08036ECA:
	adds r3, r6, #0
	adds r3, #0x42
	adds r2, r6, #0
	adds r2, #0x46
	b _08036EF2
	.align 2, 0
_08036ED4: .4byte gEwramData
_08036ED8:
	movs r0, #0x80
	ands r0, r1
	adds r3, r6, #0
	adds r3, #0x42
	adds r2, r6, #0
	adds r2, #0x46
	cmp r0, #0
	beq _08036EF2
	ldr r0, [r6, #0x44]
	ldr r1, [r6, #0x4c]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	str r1, [r6, #0x54]
_08036EF2:
	ldr r0, _08037050 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #9
	cmp r0, #0
	beq _08036F0A
	movs r1, #0x80
	lsls r1, r1, #0xb
_08036F0A:
	str r1, [r6, #0x48]
	str r1, [r6, #0x4c]
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	movs r0, #0
	ldrsh r1, [r3, r0]
	subs r1, #0x78
	lsls r1, r1, #0x10
	movs r0, #0
	ldrsh r2, [r2, r0]
	subs r2, #0x60
	lsls r2, r2, #0x10
	movs r0, #1
	bl sub_0803FBBC
	movs r0, #1
	bl sub_08000F60
	movs r0, #0
	bl sub_0800D288
	movs r0, #1
	bl sub_08000F60
	adds r0, r6, #0
	bl sub_0803AC40
	ldr r6, _08037054 @ =0x080E2298
	lsls r5, r7, #0x10
	asrs r5, r5, #0x10
	mov r0, r8
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08001A00
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r0, sp
	adds r1, r6, #0
	bl sprintf
	movs r0, #2
	movs r1, #2
	movs r2, #0xf
	mov r3, sp
	bl BgCmdBuffer_WriteString
	ldr r1, _08037058 @ =0x080E22A0
	mov r0, sp
	adds r2, r5, #0
	adds r3, r4, #0
	bl sprintf
	movs r0, #7
	movs r1, #2
	movs r2, #0xf
	mov r3, sp
	bl BgCmdBuffer_WriteString
	ldr r6, _0803705C @ =0x080E22B4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_080020D8
	adds r2, r0, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, sp
	adds r1, r6, #0
	bl sprintf
	movs r0, #3
	movs r1, #3
	movs r2, #0xf
	mov r3, sp
	bl BgCmdBuffer_WriteString
	ldr r6, _08037060 @ =0x080E22C0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_0800210C
	adds r2, r0, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, sp
	adds r1, r6, #0
	bl sprintf
	movs r0, #3
	movs r1, #4
	movs r2, #0xf
	mov r3, sp
	bl BgCmdBuffer_WriteString
	ldr r6, _08037064 @ =0x080E22CC
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08001CCC
	adds r2, r0, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, sp
	adds r1, r6, #0
	bl sprintf
	movs r0, #3
	movs r1, #5
	movs r2, #0xf
	mov r3, sp
	bl BgCmdBuffer_WriteString
	ldr r6, _08037068 @ =0x080E22D8
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08001E58
	adds r2, r0, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, sp
	adds r1, r6, #0
	bl sprintf
	movs r0, #3
	movs r1, #6
	movs r2, #0xf
	mov r3, sp
	bl BgCmdBuffer_WriteString
	ldr r6, _0803706C @ =0x080E22E4
	subs r4, #8
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08001F3C
	adds r2, r0, #0
	mov r0, sp
	adds r1, r6, #0
	bl sprintf
	movs r0, #3
	movs r1, #7
	movs r2, #0xf
	mov r3, sp
	bl BgCmdBuffer_WriteString
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037050: .4byte gEwramData
_08037054: .4byte 0x080E2298
_08037058: .4byte 0x080E22A0
_0803705C: .4byte 0x080E22B4
_08037060: .4byte 0x080E22C0
_08037064: .4byte 0x080E22CC
_08037068: .4byte 0x080E22D8
_0803706C: .4byte 0x080E22E4

	thumb_func_start sub_08037070
sub_08037070: @ 0x08037070
	push {r4, r5, r6, lr}
	mov ip, r0
	movs r6, #1
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #0x78
	lsls r5, r0, #0x10
	mov r0, ip
	adds r0, #0x46
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r0, #0x60
	lsls r4, r0, #0x10
	ldr r0, _080370AC @ =gEwramData
	ldr r0, [r0]
	ldr r2, _080370B0 @ =0x0000A094
	adds r1, r0, r2
	ldr r3, [r1]
	ldrb r0, [r3, #1]
	cmp r0, #1
	bls _080370C8
	ldr r1, [r1, #8]
	lsrs r2, r1, #0x10
	cmp r2, #0x1f
	bhi _080370B4
	movs r0, #0x80
	lsls r0, r0, #0xe
	subs r4, r0, r1
	b _080370C8
	.align 2, 0
_080370AC: .4byte gEwramData
_080370B0: .4byte 0x0000A094
_080370B4:
	ldrb r0, [r3, #1]
	lsls r0, r0, #5
	adds r3, r0, #0
	subs r3, #0x40
	cmp r2, r3
	bls _080370C8
	movs r0, #0x10
	subs r0, r0, r1
	adds r4, r3, #0
	lsls r4, r0
_080370C8:
	mov r1, ip
	adds r1, #0x44
	ldrh r0, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0803FBBC
	adds r0, r6, #0
	bl sub_08000F60
	movs r0, #0
	bl sub_0800D288
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080370F0
sub_080370F0: @ 0x080370F0
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

	thumb_func_start sub_080372FC
sub_080372FC: @ 0x080372FC
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

	thumb_func_start sub_08037738
sub_08037738: @ 0x08037738
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

	thumb_func_start sub_08037CE4
sub_08037CE4: @ 0x08037CE4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #2
	str r0, [r4]
	ldr r0, _08037D30 @ =0x080E537C
	movs r1, #0x10
	movs r2, #0xa
	movs r3, #0
	bl sub_0803C918
	ldr r0, _08037D34 @ =0x080E5364
	movs r1, #0
	movs r2, #0
	movs r3, #4
	bl sub_0803FE0C
	ldr r0, _08037D38 @ =0x080E536C
	movs r1, #4
	movs r2, #0
	movs r3, #4
	bl sub_0803FE0C
	ldr r0, _08037D3C @ =0x080E5374
	movs r1, #8
	movs r2, #0
	movs r3, #4
	bl sub_0803FE0C
	ldr r0, [r4]
	ldr r1, _08037D40 @ =0x080E5BA0
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08037D30: .4byte 0x080E537C
_08037D34: .4byte 0x080E5364
_08037D38: .4byte 0x080E536C
_08037D3C: .4byte 0x080E5374
_08037D40: .4byte 0x080E5BA0

	thumb_func_start sub_08037D44
sub_08037D44: @ 0x08037D44
	push {r4, r5, lr}
	sub sp, #0x14
	mov r2, sp
	ldr r1, _08037D78 @ =0x080E2288
	ldm r1!, {r3, r4, r5}
	stm r2!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r2]
	movs r1, #0
	str r1, [sp, #0x10]
	ldr r2, _08037D7C @ =0x040000D4
	add r1, sp, #0x10
	str r1, [r2]
	ldr r0, [r0]
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	str r0, [r2, #4]
	ldr r0, _08037D80 @ =0x85000200
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08037D78: .4byte 0x080E2288
_08037D7C: .4byte 0x040000D4
_08037D80: .4byte 0x85000200

	thumb_func_start sub_08037D84
sub_08037D84: @ 0x08037D84
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #4]
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	beq _08037D96
	cmp r0, #1
	beq _08037DB4
	b _08037DCC
_08037D96:
	adds r0, r5, #0
	bl sub_08011A44
	cmp r0, #0
	bne _08037DCC
	ldr r0, _08037DB0 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x60
	bl sub_08010244
	movs r0, #1
	b _08037DCA
	.align 2, 0
_08037DB0: .4byte gEwramData
_08037DB4:
	ldr r0, _08037DD4 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x60
	bl sub_080104EC
	cmp r0, #0
	beq _08037DCC
	adds r0, r5, #0
	bl sub_08037070
	movs r0, #0
_08037DCA:
	strh r0, [r4, #0xc]
_08037DCC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08037DD4: .4byte gEwramData

	thumb_func_start sub_08037DD8
sub_08037DD8: @ 0x08037DD8
	push {r4, lr}
	sub sp, #0x14
	mov r1, sp
	ldr r0, _08037E04 @ =0x080E2288
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r1, _08037E08 @ =0x040000D4
	add r0, sp, #0x10
	str r0, [r1]
	ldr r0, _08037E0C @ =0x0600E800
	str r0, [r1, #4]
	ldr r0, _08037E10 @ =0x85000600
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #0x14
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08037E04: .4byte 0x080E2288
_08037E08: .4byte 0x040000D4
_08037E0C: .4byte 0x0600E800
_08037E10: .4byte 0x85000600

	thumb_func_start sub_08037E14
sub_08037E14: @ 0x08037E14
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	beq _08037E24
	cmp r0, #1
	beq _08037E40
	b _08037E52
_08037E24:
	ldr r0, [r4, #4]
	bl sub_08011A44
	cmp r0, #0
	bne _08037E52
	ldr r0, _08037E3C @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x60
	bl sub_08010244
	movs r0, #1
	b _08037E50
	.align 2, 0
_08037E3C: .4byte gEwramData
_08037E40:
	ldr r0, _08037E58 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x60
	bl sub_080104EC
	cmp r0, #0
	beq _08037E52
	movs r0, #0
_08037E50:
	strh r0, [r4, #0xc]
_08037E52:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08037E58: .4byte gEwramData

	thumb_func_start sub_08037E5C
sub_08037E5C: @ 0x08037E5C
	push {r4, r5, lr}
	sub sp, #0x14
	mov r2, sp
	ldr r1, _08037E90 @ =0x080E2288
	ldm r1!, {r3, r4, r5}
	stm r2!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r2]
	movs r1, #0
	str r1, [sp, #0x10]
	ldr r2, _08037E94 @ =0x040000D4
	add r1, sp, #0x10
	str r1, [r2]
	ldr r0, [r0, #8]
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	str r0, [r2, #4]
	ldr r0, _08037E98 @ =0x85000200
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08037E90: .4byte 0x080E2288
_08037E94: .4byte 0x040000D4
_08037E98: .4byte 0x85000200

	thumb_func_start sub_08037E9C
sub_08037E9C: @ 0x08037E9C
	push {r4, r5, r6, lr}
	sub sp, #4
	movs r6, #0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08037EC4 @ =0x084F1568
	adds r5, r1, r0
	bl sub_08036958
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08037F0C
	cmp r0, #1
	bgt _08037EC8
	cmp r0, #0
	beq _08037ECE
	b _08037F52
	.align 2, 0
_08037EC4: .4byte 0x084F1568
_08037EC8:
	cmp r0, #2
	beq _08037F44
	b _08037F52
_08037ECE:
	str r6, [sp]
	ldr r1, _08037EFC @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r4, _08037F00 @ =0x03000028
	str r4, [r1, #4]
	ldr r0, _08037F04 @ =0x85000009
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r3, _08037F08 @ =0x080E22FC
	movs r0, #2
	movs r1, #0x13
	movs r2, #1
	bl BgCmdBuffer_WriteString
	ldr r1, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r1
	movs r0, #1
	bl sub_08036964
	b _08037F52
	.align 2, 0
_08037EFC: .4byte 0x040000D4
_08037F00: .4byte 0x03000028
_08037F04: .4byte 0x85000009
_08037F08: .4byte 0x080E22FC
_08037F0C:
	ldr r0, _08037F24 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x14]
	movs r0, #6
	ands r0, r1
	cmp r0, #6
	bne _08037F28
	movs r0, #2
	bl sub_08036964
	b _08037F3A
	.align 2, 0
_08037F24: .4byte gEwramData
_08037F28:
	ldr r0, _08037F40 @ =0x03000028
	ldr r1, [r5]
	bl _call_via_r1
	cmp r0, #0
	bne _08037F3A
	movs r0, #2
	bl sub_08036964
_08037F3A:
	bl sub_08000B64
	b _08037F52
	.align 2, 0
_08037F40: .4byte 0x03000028
_08037F44:
	ldr r0, _08037F5C @ =0x03000028
	ldr r1, [r5, #8]
	bl _call_via_r1
	bl sub_08038820
	movs r6, #1
_08037F52:
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08037F5C: .4byte 0x03000028

	thumb_func_start sub_08037F60
sub_08037F60: @ 0x08037F60
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	movs r7, #1
	ldrb r0, [r6]
	cmp r0, #5
	bls _08037F70
	b _0803810A
_08037F70:
	lsls r0, r0, #2
	ldr r1, _08037F7C @ =_08037F80
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08037F7C: .4byte _08037F80
_08037F80: @ jump table
	.4byte _08037F98 @ case 0
	.4byte _08037FA2 @ case 1
	.4byte _08037FFC @ case 2
	.4byte _0803803C @ case 3
	.4byte _080380A0 @ case 4
	.4byte _08038104 @ case 5
_08037F98:
	bl sub_080D7F78
	movs r0, #1
	strb r0, [r6]
	b _0803810A
_08037FA2:
	ldr r4, _08037FE4 @ =gEwramData
	ldr r1, [r4]
	ldr r0, _08037FE8 @ =0x0000A074
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	movs r0, #1
	bl PlaySong
	bl sub_0800C5D8
	ldr r0, _08037FEC @ =0x0850F15C
	movs r1, #0
	movs r2, #0
	bl sub_0800F9EC
	bl sub_080D7FB8
	ldr r1, [r4]
	ldr r0, _08037FF0 @ =0x0001261C
	adds r2, r1, r0
	ldr r0, _08037FF4 @ =0x0000FFFF
	strh r0, [r2]
	ldr r0, _08037FF8 @ =0x00012C21
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1]
	movs r0, #2
	strb r0, [r6]
	b _0803810A
	.align 2, 0
_08037FE4: .4byte gEwramData
_08037FE8: .4byte 0x0000A074
_08037FEC: .4byte 0x0850F15C
_08037FF0: .4byte 0x0001261C
_08037FF4: .4byte 0x0000FFFF
_08037FF8: .4byte 0x00012C21
_08037FFC:
	movs r4, #0
	bl sub_080D7F28
	cmp r0, #0
	beq _08038010
	bl sub_080D7F48
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
_08038010:
	cmp r4, #0
	beq _08038028
	ldr r3, _08038024 @ =0x080E2318
	movs r0, #2
	movs r1, #2
	movs r2, #1
	bl BgCmdBuffer_WriteString
	b _080380EC
	.align 2, 0
_08038024: .4byte 0x080E2318
_08038028:
	ldr r3, _08038038 @ =0x080E2328
	movs r0, #2
	movs r1, #2
	movs r2, #1
	bl BgCmdBuffer_WriteString
	b _0803810A
	.align 2, 0
_08038038: .4byte 0x080E2328
_0803803C:
	ldr r5, _08038090 @ =gEwramData
	ldr r3, [r5]
	ldrh r2, [r3, #0x1c]
	ldr r1, _08038094 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	orrs r0, r2
	str r0, [sp]
	ldrh r1, [r3, #0x1e]
	lsls r1, r1, #0x10
	ldr r2, _08038098 @ =0x0000FFFF
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	mov r0, sp
	movs r1, #4
	bl sub_080D8020
	add r4, sp, #4
	adds r0, r4, #0
	movs r1, #4
	bl sub_080D8088
	ldr r0, [r5]
	ldrh r1, [r4]
	strh r1, [r0, #0x1c]
	ldrh r1, [r4, #2]
	strh r1, [r0, #0x1e]
	ldr r1, _0803809C @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08011A44
	cmp r0, #0
	bne _0803810A
	ldr r0, [r5]
	adds r0, #0x60
	bl sub_08010244
	movs r0, #4
	strb r0, [r6]
	b _0803810A
	.align 2, 0
_08038090: .4byte gEwramData
_08038094: .4byte 0xFFFF0000
_08038098: .4byte 0x0000FFFF
_0803809C: .4byte 0x00013110
_080380A0:
	ldr r5, _080380F4 @ =gEwramData
	ldr r2, [r5]
	ldrh r1, [r2, #0x1c]
	mov r0, sp
	strh r1, [r0]
	ldrh r1, [r2, #0x1e]
	strh r1, [r0, #2]
	movs r1, #4
	bl sub_080D8020
	add r4, sp, #4
	adds r0, r4, #0
	movs r1, #4
	bl sub_080D8088
	ldr r0, [r5]
	ldrh r1, [r4]
	strh r1, [r0, #0x1c]
	ldrh r1, [r4, #2]
	strh r1, [r0, #0x1e]
	adds r0, #0x60
	bl sub_080104EC
	cmp r0, #0
	beq _0803810A
	ldr r0, [r5]
	adds r0, #0x60
	bl sub_08011430
	ldr r1, [r5]
	ldr r0, _080380F8 @ =0x0001261C
	adds r2, r1, r0
	ldr r0, _080380FC @ =0x0000FF03
	strh r0, [r2]
	ldr r0, _08038100 @ =0x00012C21
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1]
_080380EC:
	movs r0, #3
	strb r0, [r6]
	b _0803810A
	.align 2, 0
_080380F4: .4byte gEwramData
_080380F8: .4byte 0x0001261C
_080380FC: .4byte 0x0000FF03
_08038100: .4byte 0x00012C21
_08038104:
	bl sub_080D7FD0
	movs r7, #0
_0803810A:
	adds r0, r7, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08038114
sub_08038114: @ 0x08038114
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r6, #1
	bl sub_080D7F28
	ldr r3, _08038144 @ =0x080E233C
	cmp r0, #0
	beq _08038128
	ldr r3, _08038148 @ =0x080E2338
_08038128:
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl BgCmdBuffer_WriteString
	ldrb r0, [r4, #2]
	cmp r0, #6
	bhi _08038218
	lsls r0, r0, #2
	ldr r1, _0803814C @ =_08038150
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08038144: .4byte 0x080E233C
_08038148: .4byte 0x080E2338
_0803814C: .4byte _08038150
_08038150: @ jump table
	.4byte _0803816C @ case 0
	.4byte _08038172 @ case 1
	.4byte _080381B4 @ case 2
	.4byte _080381BE @ case 3
	.4byte _080381F8 @ case 4
	.4byte _0803820C @ case 5
	.4byte _08038216 @ case 6
_0803816C:
	movs r1, #0
	movs r0, #1
	b _08038206
_08038172:
	adds r0, r4, #0
	bl sub_08038224
	adds r5, r0, #0
	cmp r5, #0
	beq _08038218
	bl sub_080D7F78
	movs r2, #0
	str r2, [sp]
	ldr r1, _080381A8 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _080381AC @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _080381B0 @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	strh r2, [r4]
	strb r0, [r4, #3]
	movs r0, #6
	cmp r5, #0
	ble _08038212
	movs r0, #2
	b _08038212
	.align 2, 0
_080381A8: .4byte 0x040000D4
_080381AC: .4byte 0x0600E000
_080381B0: .4byte 0x85000200
_080381B4:
	bl sub_080D7FB8
	movs r1, #0
	movs r0, #3
	b _08038206
_080381BE:
	adds r0, r4, #0
	bl sub_080383E0
	adds r3, r0, #0
	cmp r3, #0
	beq _08038218
	movs r2, #0
	str r2, [sp]
	ldr r1, _080381EC @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _080381F0 @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _080381F4 @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	strb r2, [r4, #3]
	movs r0, #5
	cmp r3, #0
	ble _08038212
	movs r0, #4
	b _08038212
	.align 2, 0
_080381EC: .4byte 0x040000D4
_080381F0: .4byte 0x0600E000
_080381F4: .4byte 0x85000200
_080381F8:
	adds r0, r4, #0
	bl sub_080384B4
	cmp r0, #0
	beq _08038218
	movs r1, #0
	movs r0, #5
_08038206:
	strb r0, [r4, #2]
	strb r1, [r4, #3]
	b _08038218
_0803820C:
	bl sub_080D7FD0
	movs r0, #0
_08038212:
	strb r0, [r4, #2]
	b _08038218
_08038216:
	movs r6, #0
_08038218:
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08038224
sub_08038224: @ 0x08038224
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r6, #0
	ldrb r0, [r5, #3]
	cmp r0, #0
	beq _0803823A
	cmp r0, #1
	bne _08038238
	b _08038374
_08038238:
	b _080383CA
_0803823A:
	str r6, [sp]
	ldr r0, _08038328 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _0803832C @ =0x0600E000
	str r1, [r0, #4]
	ldr r2, _08038330 @ =0x85000200
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r6, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _08038334 @ =0x0600E800
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r6, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _08038338 @ =0x0600F000
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r6, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _0803833C @ =0x0600F800
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldr r3, _08038340 @ =0x080E2340
	movs r0, #4
	movs r1, #1
	movs r2, #0
	bl BgCmdBuffer_WriteString
	ldr r3, _08038344 @ =0x080E2358
	movs r0, #4
	movs r1, #2
	movs r2, #0
	bl BgCmdBuffer_WriteString
	ldr r3, _08038348 @ =0x080E2370
	movs r0, #4
	movs r1, #3
	movs r2, #0
	bl BgCmdBuffer_WriteString
	ldr r3, _0803834C @ =0x080E2388
	movs r0, #4
	movs r1, #4
	movs r2, #0
	bl BgCmdBuffer_WriteString
	ldr r3, _08038350 @ =0x080E23A0
	movs r0, #4
	movs r1, #5
	movs r2, #0
	bl BgCmdBuffer_WriteString
	ldr r3, _08038354 @ =0x080E23B8
	movs r0, #4
	movs r1, #6
	movs r2, #0
	bl BgCmdBuffer_WriteString
	ldr r3, _08038358 @ =0x080E23D0
	movs r0, #4
	movs r1, #7
	movs r2, #0
	bl BgCmdBuffer_WriteString
	ldr r3, _0803835C @ =0x080E23E8
	movs r0, #4
	movs r1, #8
	movs r2, #0
	bl BgCmdBuffer_WriteString
	ldr r4, _08038360 @ =0x080E2400
	movs r0, #4
	movs r1, #9
	movs r2, #0
	adds r3, r4, #0
	bl BgCmdBuffer_WriteString
	ldr r3, _08038364 @ =0x080E2418
	movs r0, #4
	movs r1, #0xa
	movs r2, #0
	bl BgCmdBuffer_WriteString
	movs r0, #4
	movs r1, #0xb
	movs r2, #0
	adds r3, r4, #0
	bl BgCmdBuffer_WriteString
	ldr r3, _08038368 @ =0x080E2430
	movs r0, #0xc
	movs r1, #0xe
	movs r2, #1
	bl BgCmdBuffer_WriteString
	ldr r3, _0803836C @ =0x080E2438
	movs r0, #0xc
	movs r1, #0xf
	movs r2, #1
	bl BgCmdBuffer_WriteString
	ldr r3, _08038370 @ =0x080E2440
	movs r0, #0xb
	movs r1, #0xe
	movs r2, #2
	bl BgCmdBuffer_WriteString
	strb r6, [r5, #4]
	movs r0, #1
	strb r0, [r5, #3]
	b _080383CA
	.align 2, 0
_08038328: .4byte 0x040000D4
_0803832C: .4byte 0x0600E000
_08038330: .4byte 0x85000200
_08038334: .4byte 0x0600E800
_08038338: .4byte 0x0600F000
_0803833C: .4byte 0x0600F800
_08038340: .4byte 0x080E2340
_08038344: .4byte 0x080E2358
_08038348: .4byte 0x080E2370
_0803834C: .4byte 0x080E2388
_08038350: .4byte 0x080E23A0
_08038354: .4byte 0x080E23B8
_08038358: .4byte 0x080E23D0
_0803835C: .4byte 0x080E23E8
_08038360: .4byte 0x080E2400
_08038364: .4byte 0x080E2418
_08038368: .4byte 0x080E2430
_0803836C: .4byte 0x080E2438
_08038370: .4byte 0x080E2440
_08038374:
	ldr r0, _080383D4 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x16]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _080383B0
	ldrb r0, [r5, #4]
	movs r1, #1
	eors r0, r1
	strb r0, [r5, #4]
	movs r1, #0xf
	cmp r0, #0
	bne _08038392
	movs r1, #0xe
_08038392:
	ldr r3, _080383D8 @ =0x080E2440
	movs r0, #0xb
	movs r2, #2
	bl BgCmdBuffer_WriteString
	ldrb r0, [r5, #4]
	movs r1, #0xf
	cmp r0, #1
	bne _080383A6
	movs r1, #0xe
_080383A6:
	ldr r3, _080383DC @ =0x080E2444
	movs r0, #0xb
	movs r2, #2
	bl BgCmdBuffer_WriteString
_080383B0:
	ldr r0, _080383D4 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x16]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080383CA
	ldrb r0, [r5, #4]
	movs r6, #1
	rsbs r6, r6, #0
	cmp r0, #0
	bne _080383CA
	movs r6, #1
_080383CA:
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080383D4: .4byte gEwramData
_080383D8: .4byte 0x080E2440
_080383DC: .4byte 0x080E2444

	thumb_func_start sub_080383E0
sub_080383E0: @ 0x080383E0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0
	ldrb r0, [r4, #3]
	cmp r0, #1
	beq _0803841C
	cmp r0, #1
	bgt _080383F6
	cmp r0, #0
	beq _08038400
	b _08038496
_080383F6:
	cmp r0, #2
	beq _0803844C
	cmp r0, #3
	beq _0803848E
	b _08038496
_08038400:
	ldr r3, _08038414 @ =0x080E2448
	movs r0, #4
	movs r1, #4
	movs r2, #1
	bl BgCmdBuffer_WriteString
	ldr r3, _08038418 @ =0x080E2458
	movs r0, #4
	movs r1, #7
	b _0803846A
	.align 2, 0
_08038414: .4byte 0x080E2448
_08038418: .4byte 0x080E2458
_0803841C:
	movs r5, #0
	bl sub_080D7F28
	cmp r0, #0
	beq _08038430
	bl sub_080D7F48
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r5, r1, #0x1f
_08038430:
	cmp r5, #0
	beq _08038496
	ldr r3, _08038448 @ =0x080E2470
	movs r0, #4
	movs r1, #4
	movs r2, #1
	bl BgCmdBuffer_WriteString
	strh r6, [r4]
	movs r0, #2
	strb r0, [r4, #3]
	b _08038496
	.align 2, 0
_08038448: .4byte 0x080E2470
_0803844C:
	movs r5, #0
	bl sub_080D7F28
	cmp r0, #0
	beq _08038460
	bl sub_080D7F48
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r5, r1, #0x1f
_08038460:
	cmp r5, #0
	bne _0803847C
	ldr r3, _08038478 @ =0x080E2480
	movs r0, #4
	movs r1, #4
_0803846A:
	movs r2, #1
	bl BgCmdBuffer_WriteString
	movs r0, #1
	strb r0, [r4, #3]
	b _08038496
	.align 2, 0
_08038478: .4byte 0x080E2480
_0803847C:
	ldrh r0, [r4]
	adds r1, r0, #1
	strh r1, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _08038496
	movs r6, #1
	b _08038496
_0803848E:
	bl sub_080D7FD0
	movs r6, #1
	rsbs r6, r6, #0
_08038496:
	ldr r0, _080384B0 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x16]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080384A8
	movs r0, #3
	strb r0, [r4, #3]
_080384A8:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080384B0: .4byte gEwramData

	thumb_func_start sub_080384B4
sub_080384B4: @ 0x080384B4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	movs r0, #0
	mov sb, r0
	ldrb r0, [r6, #3]
	cmp r0, #8
	bls _080384CC
	b _080387D4
_080384CC:
	lsls r0, r0, #2
	ldr r1, _080384D8 @ =_080384DC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080384D8: .4byte _080384DC
_080384DC: @ jump table
	.4byte _08038500 @ case 0
	.4byte _08038534 @ case 1
	.4byte _0803866C @ case 2
	.4byte _080386A4 @ case 3
	.4byte _080386EC @ case 4
	.4byte _08038718 @ case 5
	.4byte _08038798 @ case 6
	.4byte _080387BC @ case 7
	.4byte _080387D0 @ case 8
_08038500:
	ldr r3, _0803852C @ =0x080E2490
	movs r0, #1
	movs r1, #1
	movs r2, #0
	bl BgCmdBuffer_WriteString
	ldr r3, _08038530 @ =0x080E24A0
	movs r0, #2
	movs r1, #0x13
	movs r2, #1
	bl BgCmdBuffer_WriteString
	movs r1, #0
	movs r0, #0
	strh r0, [r6]
	strb r1, [r6, #5]
	adds r0, r6, #0
	adds r0, #0x20
	strb r1, [r0]
	movs r0, #1
	strb r0, [r6, #3]
	b _080387D4
	.align 2, 0
_0803852C: .4byte 0x080E2490
_08038530: .4byte 0x080E24A0
_08038534:
	ldr r1, _08038560 @ =gEwramData
	ldr r0, [r1]
	ldrh r2, [r0, #0x14]
	movs r0, #0x20
	ands r0, r2
	adds r4, r1, #0
	cmp r0, #0
	beq _08038564
	adds r3, r6, #0
	adds r3, #0x20
	movs r1, #0
	ldrsb r1, [r3, r1]
	adds r2, r6, #0
	adds r2, #8
	adds r1, r2, r1
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	adds r7, r3, #0
	mov r8, r2
	b _08038582
	.align 2, 0
_08038560: .4byte gEwramData
_08038564:
	movs r0, #0x10
	ands r0, r2
	adds r7, r6, #0
	adds r7, #0x20
	movs r1, #8
	adds r1, r1, r6
	mov r8, r1
	cmp r0, #0
	beq _08038582
	movs r1, #0
	ldrsb r1, [r7, r1]
	add r1, r8
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08038582:
	ldr r0, [r4]
	ldrh r1, [r0, #0x16]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08038594
	ldrb r0, [r7]
	adds r0, #1
	b _080385A0
_08038594:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080385A2
	ldrb r0, [r7]
	subs r0, #1
_080385A0:
	strb r0, [r7]
_080385A2:
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r0, #0
	bge _080385C4
	ldr r3, _080385C0 @ =0x080E24BC
	movs r0, #2
	movs r1, #4
	movs r2, #1
	bl BgCmdBuffer_WriteString
	movs r1, #0
	movs r0, #2
	strb r0, [r6, #3]
	strb r1, [r7]
	b _080385DC
	.align 2, 0
_080385C0: .4byte 0x080E24BC
_080385C4:
	cmp r0, #5
	ble _080385DC
	ldr r3, _080385F8 @ =0x080E24D4
	movs r0, #2
	movs r1, #4
	movs r2, #1
	bl BgCmdBuffer_WriteString
	movs r0, #3
	strb r0, [r6, #3]
	movs r0, #5
	strb r0, [r7]
_080385DC:
	movs r0, #0
	str r0, [r6, #0x10]
	mov r0, r8
	movs r1, #0xc
	bl sub_080D8020
	adds r4, r6, #0
	adds r4, #0x14
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_080D8088
	movs r5, #0
	b _0803861A
	.align 2, 0
_080385F8: .4byte 0x080E24D4
_080385FC:
	mov r1, r8
	adds r0, r1, r5
	ldrb r2, [r0]
	mov r0, sp
	ldr r1, _08038664 @ =0x080E24E8
	bl sprintf
	adds r1, r5, #0
	adds r1, #8
	movs r0, #2
	movs r2, #2
	mov r3, sp
	bl BgCmdBuffer_WriteString
	adds r5, #1
_0803861A:
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r5, r0
	ble _080385FC
	movs r0, #0
	ldrsb r0, [r7, r0]
	adds r5, r0, #1
	cmp r5, #5
	bgt _08038640
_0803862C:
	adds r1, r5, #0
	adds r1, #8
	movs r0, #2
	movs r2, #2
	ldr r3, _08038668 @ =0x080E24F0
	bl BgCmdBuffer_WriteString
	adds r5, #1
	cmp r5, #5
	ble _0803862C
_08038640:
	movs r5, #0
_08038642:
	adds r0, r4, r5
	ldrb r2, [r0]
	mov r0, sp
	ldr r1, _08038664 @ =0x080E24E8
	bl sprintf
	adds r1, r5, #0
	adds r1, #8
	movs r0, #0xa
	movs r2, #3
	mov r3, sp
	bl BgCmdBuffer_WriteString
	adds r5, #1
	cmp r5, #5
	ble _08038642
	b _080387D4
	.align 2, 0
_08038664: .4byte 0x080E24E8
_08038668: .4byte 0x080E24F0
_0803866C:
	ldr r0, _08038688 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x16]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08038690
	ldr r3, _0803868C @ =0x080E24FC
	movs r0, #2
	movs r1, #4
	movs r2, #1
	bl BgCmdBuffer_WriteString
	b _080387CA
	.align 2, 0
_08038688: .4byte gEwramData
_0803868C: .4byte 0x080E24FC
_08038690:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0803869A
	b _080387D4
_0803869A:
	ldr r3, _080386A0 @ =0x080E24FC
	b _080386D8
	.align 2, 0
_080386A0: .4byte 0x080E24FC
_080386A4:
	ldr r0, _080386C4 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x16]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080386CC
	ldr r3, _080386C8 @ =0x080E251C
	movs r0, #2
	movs r1, #4
	movs r2, #1
	bl BgCmdBuffer_WriteString
	movs r0, #4
	strb r0, [r6, #3]
	b _080387D4
	.align 2, 0
_080386C4: .4byte gEwramData
_080386C8: .4byte 0x080E251C
_080386CC:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080386D6
	b _080387D4
_080386D6:
	ldr r3, _080386E8 @ =0x080E2530
_080386D8:
	movs r0, #2
	movs r1, #4
	movs r2, #1
	bl BgCmdBuffer_WriteString
	movs r0, #1
	strb r0, [r6, #3]
	b _080387D4
	.align 2, 0
_080386E8: .4byte 0x080E2530
_080386EC:
	ldr r4, _08038714 @ =0x01234567
	str r4, [r6, #0x10]
	adds r0, r6, #0
	adds r0, #8
	movs r1, #0xc
	bl sub_080D8020
	adds r0, r6, #0
	adds r0, #0x14
	movs r1, #0xc
	bl sub_080D8088
	ldr r0, [r6, #0x1c]
	cmp r0, r4
	bne _080387D4
	movs r0, #0
	str r0, [r6, #0x10]
	movs r0, #5
	strb r0, [r6, #3]
	b _080387D4
	.align 2, 0
_08038714: .4byte 0x01234567
_08038718:
	ldr r3, _08038740 @ =0x080E2544
	movs r0, #2
	movs r1, #4
	movs r2, #1
	bl BgCmdBuffer_WriteString
	ldrh r0, [r6]
	adds r1, r0, #1
	strh r1, [r6]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x14
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _08038754
	cmp r1, #1
	bgt _08038744
	cmp r1, #0
	beq _0803874A
	b _08038774
	.align 2, 0
_08038740: .4byte 0x080E2544
_08038744:
	cmp r1, #2
	beq _08038768
	b _08038774
_0803874A:
	ldr r3, _08038750 @ =0x080E2558
	b _08038756
	.align 2, 0
_08038750: .4byte 0x080E2558
_08038754:
	ldr r3, _08038764 @ =0x080E255C
_08038756:
	movs r0, #0xf
	movs r1, #4
	movs r2, #1
	bl BgCmdBuffer_WriteString
	b _08038774
	.align 2, 0
_08038764: .4byte 0x080E255C
_08038768:
	ldr r3, _08038790 @ =0x080E2560
	movs r0, #0xf
	movs r1, #4
	movs r2, #1
	bl BgCmdBuffer_WriteString
_08038774:
	ldrh r0, [r6]
	cmp r0, #0xb4
	bls _080387D4
	ldr r3, _08038794 @ =0x080E2564
	movs r0, #2
	movs r1, #4
	movs r2, #1
	bl BgCmdBuffer_WriteString
	movs r0, #0
	strh r0, [r6]
	movs r0, #6
	strb r0, [r6, #3]
	b _080387D4
	.align 2, 0
_08038790: .4byte 0x080E2560
_08038794: .4byte 0x080E2564
_08038798:
	ldrh r0, [r6]
	adds r1, r0, #1
	strh r1, [r6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb4
	bls _080387D4
	ldr r3, _080387B8 @ =0x080E2530
	movs r0, #2
	movs r1, #4
	movs r2, #1
	bl BgCmdBuffer_WriteString
	movs r0, #0
	strb r0, [r6, #3]
	b _080387D4
	.align 2, 0
_080387B8: .4byte 0x080E2530
_080387BC:
	ldrh r0, [r6]
	adds r1, r0, #1
	strh r1, [r6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _080387D4
_080387CA:
	movs r0, #8
	strb r0, [r6, #3]
	b _080387D4
_080387D0:
	movs r0, #1
	mov sb, r0
_080387D4:
	ldrb r0, [r6, #3]
	subs r0, #7
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0803880C
	movs r4, #0
	bl sub_080D7F28
	cmp r0, #0
	beq _080387F4
	bl sub_080D7F48
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
_080387F4:
	cmp r4, #0
	bne _0803880C
	ldr r3, _0803881C @ =0x080E2578
	movs r0, #4
	movs r1, #9
	movs r2, #1
	bl BgCmdBuffer_WriteString
	strb r4, [r6, #5]
	strh r4, [r6]
	movs r0, #7
	strb r0, [r6, #3]
_0803880C:
	mov r0, sb
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803881C: .4byte 0x080E2578

	thumb_func_start sub_08038820
sub_08038820: @ 0x08038820
	sub sp, #4
	movs r3, #0
	str r3, [sp]
	ldr r0, _08038864 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _08038868 @ =0x0600E000
	str r1, [r0, #4]
	ldr r2, _0803886C @ =0x85000200
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r3, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _08038870 @ =0x0600E800
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r3, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _08038874 @ =0x0600F000
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r3, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _08038878 @ =0x0600F800
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	add sp, #4
	bx lr
	.align 2, 0
_08038864: .4byte 0x040000D4
_08038868: .4byte 0x0600E000
_0803886C: .4byte 0x85000200
_08038870: .4byte 0x0600E800
_08038874: .4byte 0x0600F000
_08038878: .4byte 0x0600F800

	thumb_func_start sub_0803887C
sub_0803887C: @ 0x0803887C
	bx lr
	.align 2, 0

	thumb_func_start sub_08038880
sub_08038880: @ 0x08038880
	push {lr}
	bl sub_080D7FD0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803888C
sub_0803888C: @ 0x0803888C
	bx lr
	.align 2, 0

	thumb_func_start sub_08038890
sub_08038890: @ 0x08038890
	push {lr}
	bl sub_080D7FD0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803889C
sub_0803889C: @ 0x0803889C
	push {r4, r5, r6, lr}
	sub sp, #4
	movs r6, #0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080388C0 @ =0x084F1580
	adds r5, r1, r0
	bl sub_08036958
	cmp r0, #1
	beq _08038908
	cmp r0, #1
	bgt _080388C4
	cmp r0, #0
	beq _080388CA
	b _08038950
	.align 2, 0
_080388C0: .4byte 0x084F1580
_080388C4:
	cmp r0, #2
	beq _08038934
	b _08038950
_080388CA:
	str r6, [sp]
	ldr r1, _080388F8 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r4, _080388FC @ =0x03000050
	str r4, [r1, #4]
	ldr r0, _08038900 @ =0x85000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r3, _08038904 @ =0x080E25CC
	movs r0, #2
	movs r1, #0x13
	movs r2, #1
	bl BgCmdBuffer_WriteString
	ldr r1, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r1
	movs r0, #1
	bl sub_08036964
	b _08038950
	.align 2, 0
_080388F8: .4byte 0x040000D4
_080388FC: .4byte 0x03000050
_08038900: .4byte 0x85000002
_08038904: .4byte 0x080E25CC
_08038908:
	ldr r0, _0803892C @ =0x03000050
	ldr r1, [r5]
	bl _call_via_r1
	bl sub_08000B64
	ldr r0, _08038930 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x14]
	movs r0, #6
	ands r0, r1
	cmp r0, #6
	bne _08038950
	movs r0, #2
	bl sub_08036964
	b _08038950
	.align 2, 0
_0803892C: .4byte 0x03000050
_08038930: .4byte gEwramData
_08038934:
	ldr r0, _0803895C @ =0x03000050
	ldr r1, [r5, #8]
	bl _call_via_r1
	str r6, [sp]
	ldr r1, _08038960 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08038964 @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _08038968 @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r6, #1
_08038950:
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803895C: .4byte 0x03000050
_08038960: .4byte 0x040000D4
_08038964: .4byte 0x0600E000
_08038968: .4byte 0x85000200

	thumb_func_start sub_0803896C
sub_0803896C: @ 0x0803896C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0803897C
	cmp r0, #1
	beq _080389E0
	b _080389E6
_0803897C:
	ldr r0, _080389D0 @ =0x081CBF24
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _080389E6
	ldr r0, _080389D4 @ =0x0820A3D8
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r1, _080389D8 @ =0x082121F0
	adds r0, r4, #0
	adds r2, r5, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0803F348
	ldr r0, _080389DC @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0x96
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x50
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	strb r0, [r4, #0xa]
	b _080389E6
	.align 2, 0
_080389D0: .4byte 0x081CBF24
_080389D4: .4byte 0x0820A3D8
_080389D8: .4byte 0x082121F0
_080389DC: .4byte sub_0803B9D0
_080389E0:
	adds r0, r4, #0
	bl sub_0803F17C
_080389E6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080389EC
sub_080389EC: @ 0x080389EC
	bx lr
	.align 2, 0

	thumb_func_start sub_080389F0
sub_080389F0: @ 0x080389F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08038A0C @ =sub_08038A34
	bl EntityCreate
	str r0, [r4]
	ldr r0, _08038A10 @ =sub_0803896C
	bl EntityCreate
	str r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08038A0C: .4byte sub_08038A34
_08038A10: .4byte sub_0803896C

	thumb_func_start sub_08038A14
sub_08038A14: @ 0x08038A14
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #1
_08038A1A:
	ldr r0, [r4]
	cmp r0, #0
	beq _08038A24
	bl EntityDelete
_08038A24:
	adds r4, #4
	subs r5, #1
	cmp r5, #0
	bge _08038A1A
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08038A34
sub_08038A34: @ 0x08038A34
	bx lr
	.align 2, 0

	thumb_func_start GameModeDebug4531Update
GameModeDebug4531Update: @ 0x08038A38
	push {r4, r5, lr}
	sub sp, #0x48
	ldr r1, _08038A74 @ =0x080E2668
	mov r0, sp
	movs r2, #0x48
	bl memcpy
	movs r5, #1
	rsbs r5, r5, #0
	ldr r3, _08038A78 @ =gEwramData
	ldr r0, [r3]
	ldr r2, _08038A7C @ =0x00025550
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0
	bne _08038A5C
	movs r0, #1
	strb r0, [r1]
_08038A5C:
	ldr r0, [r3]
	adds r0, r0, r2
	ldrb r0, [r0]
	subs r0, #1
	cmp r0, #0x14
	bls _08038A6A
	b _08038C78
_08038A6A:
	lsls r0, r0, #2
	ldr r1, _08038A80 @ =_08038A84
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08038A74: .4byte 0x080E2668
_08038A78: .4byte gEwramData
_08038A7C: .4byte 0x00025550
_08038A80: .4byte _08038A84
_08038A84: @ jump table
	.4byte _08038AD8 @ case 0
	.4byte _08038B08 @ case 1
	.4byte _08038B10 @ case 2
	.4byte _08038B10 @ case 3
	.4byte _08038B10 @ case 4
	.4byte _08038B10 @ case 5
	.4byte _08038B10 @ case 6
	.4byte _08038B10 @ case 7
	.4byte _08038B10 @ case 8
	.4byte _08038B10 @ case 9
	.4byte _08038B10 @ case 10
	.4byte _08038B10 @ case 11
	.4byte _08038B10 @ case 12
	.4byte _08038B10 @ case 13
	.4byte _08038B10 @ case 14
	.4byte _08038BB4 @ case 15
	.4byte _08038BE0 @ case 16
	.4byte _08038C0C @ case 17
	.4byte _08038B10 @ case 18
	.4byte _08038C38 @ case 19
	.4byte _08038C5C @ case 20
_08038AD8:
	bl sub_08038D38
	ldr r3, _08038AFC @ =gEwramData
	ldr r1, [r3]
	ldr r2, _08038B00 @ =0x00025550
	adds r1, r1, r2
	strb r0, [r1]
	ldr r1, [r3]
	adds r2, r1, r2
	ldrb r0, [r2]
	cmp r0, #1
	bne _08038AF2
	b _08038C78
_08038AF2:
	ldr r0, _08038B04 @ =0x00025551
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1]
	b _08038C78
	.align 2, 0
_08038AFC: .4byte gEwramData
_08038B00: .4byte 0x00025550
_08038B04: .4byte 0x00025551
_08038B08:
	bl sub_080392A4
	adds r5, r0, #0
	b _08038C78
_08038B10:
	ldr r0, _08038B34 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _08038B38 @ =0x00025550
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _08038B40
	ldr r4, _08038B3C @ =0x0000037E
	adds r2, r2, r4
	ldrh r1, [r2]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x3a
	bl sub_08012048
	b _08038B62
	.align 2, 0
_08038B34: .4byte gEwramData
_08038B38: .4byte 0x00025550
_08038B3C: .4byte 0x0000037E
_08038B40:
	cmp r0, #0xa
	bne _08038B58
	ldr r0, _08038B54 @ =0x0000037E
	adds r2, r2, r0
	ldrh r1, [r2]
	movs r0, #0x40
	orrs r0, r1
	strh r0, [r2]
	b _08038B62
	.align 2, 0
_08038B54: .4byte 0x0000037E
_08038B58:
	cmp r0, #0x13
	bne _08038B62
	movs r0, #0x28
	bl sub_08012048
_08038B62:
	movs r0, #0x20
	bl sub_08012048
	bl sub_08038F8C
	adds r5, r0, #0
	ldr r3, _08038BA0 @ =gEwramData
	ldr r2, [r3]
	ldr r1, _08038BA4 @ =0x00025550
	adds r0, r2, r1
	ldrh r1, [r0]
	ldr r0, _08038BA8 @ =0x00000113
	cmp r1, r0
	beq _08038B80
	b _08038C78
_08038B80:
	ldr r4, _08038BAC @ =0x00013269
	adds r1, r2, r4
	movs r0, #0x2c
	strb r0, [r1]
	ldr r0, [r3]
	ldr r1, _08038BB0 @ =0x0001326A
	adds r0, r0, r1
	movs r1, #2
	strb r1, [r0]
	ldr r0, [r3]
	adds r4, #2
	adds r0, r0, r4
	movs r1, #7
	strb r1, [r0]
	b _08038C78
	.align 2, 0
_08038BA0: .4byte gEwramData
_08038BA4: .4byte 0x00025550
_08038BA8: .4byte 0x00000113
_08038BAC: .4byte 0x00013269
_08038BB0: .4byte 0x0001326A
_08038BB4:
	ldr r0, _08038BD0 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _08038BD4 @ =0x0000042C
	adds r2, r2, r0
	ldr r0, [r2]
	ldr r1, _08038BD8 @ =0xFFFFBFFF
	ands r0, r1
	ldr r1, _08038BDC @ =0xFFFF7FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r2]
	b _08038C4A
	.align 2, 0
_08038BD0: .4byte gEwramData
_08038BD4: .4byte 0x0000042C
_08038BD8: .4byte 0xFFFFBFFF
_08038BDC: .4byte 0xFFFF7FFF
_08038BE0:
	ldr r0, _08038BFC @ =gEwramData
	ldr r2, [r0]
	ldr r1, _08038C00 @ =0x0000042C
	adds r2, r2, r1
	ldr r0, [r2]
	ldr r1, _08038C04 @ =0xFFFFDFFF
	ands r0, r1
	ldr r1, _08038C08 @ =0xFFFF7FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r2]
	b _08038C4A
	.align 2, 0
_08038BFC: .4byte gEwramData
_08038C00: .4byte 0x0000042C
_08038C04: .4byte 0xFFFFDFFF
_08038C08: .4byte 0xFFFF7FFF
_08038C0C:
	ldr r0, _08038C28 @ =gEwramData
	ldr r2, [r0]
	ldr r4, _08038C2C @ =0x0000042C
	adds r2, r2, r4
	ldr r0, [r2]
	ldr r1, _08038C30 @ =0xFFFFDFFF
	ands r0, r1
	ldr r1, _08038C34 @ =0xFFFFBFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r2]
	b _08038C4A
	.align 2, 0
_08038C28: .4byte gEwramData
_08038C2C: .4byte 0x0000042C
_08038C30: .4byte 0xFFFFDFFF
_08038C34: .4byte 0xFFFFBFFF
_08038C38:
	ldr r0, _08038C54 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08038C58 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #9
	orrs r0, r2
	str r0, [r1]
_08038C4A:
	bl sub_08038F8C
	adds r5, r0, #0
	b _08038C78
	.align 2, 0
_08038C54: .4byte gEwramData
_08038C58: .4byte 0x0000042C
_08038C5C:
	ldr r2, _08038CB8 @ =gEwramData
	ldr r0, [r2]
	ldr r3, _08038CBC @ =0x00025550
	adds r0, r0, r3
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r2]
	ldr r4, _08038CC0 @ =0x00025551
	adds r0, r0, r4
	strb r1, [r0]
	ldr r0, [r2]
	adds r0, r0, r3
	strb r1, [r0]
	movs r5, #0xe
_08038C78:
	movs r0, #0x20
	bl sub_08012048
	ldr r0, _08038CB8 @ =gEwramData
	ldr r3, [r0]
	ldr r1, _08038CC0 @ =0x00025551
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _08038CEA
	ldr r4, _08038CBC @ =0x00025550
	adds r2, r3, r4
	ldrb r0, [r2]
	cmp r0, #2
	bls _08038CEA
	adds r1, r3, #0
	adds r1, #0x88
	subs r0, #3
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _08038CC4 @ =0x0001325C
	adds r4, r3, r0
	ldrb r0, [r2]
	cmp r0, #0x13
	bne _08038CC8
	movs r0, #0x63
	bl sub_08033E38
	b _08038CCE
	.align 2, 0
_08038CB8: .4byte gEwramData
_08038CBC: .4byte 0x00025550
_08038CC0: .4byte 0x00025551
_08038CC4: .4byte 0x0001325C
_08038CC8:
	movs r0, #0x2d
	bl sub_08033E38
_08038CCE:
	ldrh r0, [r4, #0x22]
	strh r0, [r4, #0x1e]
	ldrh r0, [r4, #0x24]
	strh r0, [r4, #0x20]
	ldr r0, _08038D20 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08038D24 @ =0x00025550
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0xf
	bne _08038CEA
	movs r0, #0x26
	bl sub_08012048
_08038CEA:
	ldr r3, _08038D20 @ =gEwramData
	ldr r1, [r3]
	ldr r4, _08038D24 @ =0x00025550
	adds r2, r1, r4
	ldrb r0, [r2]
	cmp r0, #1
	bne _08038D2C
	ldrh r1, [r1, #0x16]
	movs r0, #6
	ands r0, r1
	cmp r0, #0
	beq _08038D06
	movs r0, #0x15
	strb r0, [r2]
_08038D06:
	ldr r2, [r3]
	ldrh r1, [r2, #0x16]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08038D2C
	adds r1, r2, #0
	adds r1, #0x88
	ldr r0, _08038D28 @ =0x0850F01C
	str r0, [r1]
	movs r0, #4
	b _08038D2E
	.align 2, 0
_08038D20: .4byte gEwramData
_08038D24: .4byte 0x00025550
_08038D28: .4byte 0x0850F01C
_08038D2C:
	adds r0, r5, #0
_08038D2E:
	add sp, #0x48
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08038D38
sub_08038D38: @ 0x08038D38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x94
	ldr r1, _08038E38 @ =0x080E281C
	mov r0, sp
	movs r2, #0x90
	bl memcpy
	ldr r0, _08038E3C @ =gEwramData
	mov r8, r0
	ldr r0, [r0]
	ldrh r7, [r0, #0x18]
	movs r1, #1
	mov sl, r1
	ldr r6, _08038E40 @ =0x040000D4
	ldr r0, _08038E44 @ =0x080E25E8
	str r0, [r6]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r6, #4]
	ldr r0, _08038E48 @ =0x80000040
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldr r3, _08038E4C @ =0x080E28AC
	movs r0, #1
	movs r2, #1
	bl BgCmdBuffer_WriteString
	mov r2, r8
	ldr r0, [r2]
	ldr r5, _08038E50 @ =0x000254D0
	mov sb, r5
	adds r4, r0, r5
	ldr r5, [r4]
	ldr r1, _08038E54 @ =0x00025551
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #0x11
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #4
	adds r1, r1, r0
	str r1, [r4]
	cmp r5, r1
	beq _08038DAE
	add r1, sp, #0x90
	movs r0, #0
	str r0, [r1]
	str r1, [r6]
	ldr r0, _08038E58 @ =0x0600E000
	str r0, [r6, #4]
	ldr r0, _08038E5C @ =0x85000200
	str r0, [r6, #8]
	ldr r0, [r6, #8]
_08038DAE:
	mov r2, r8
	ldr r1, [r2]
	ldr r3, _08038E60 @ =0x000254D8
	adds r2, r1, r3
	movs r0, #0
	str r0, [r2]
	add r1, sb
	ldr r4, [r1]
	lsls r0, r4, #3
	mov r5, sp
	adds r1, r5, r0
	ldr r0, [r1]
	mov sb, r8
	cmp r0, #0
	beq _08038DE8
	mov r5, sb
	adds r2, r1, #0
_08038DD0:
	ldr r0, [r5]
	adds r1, r0, r3
	ldr r0, [r1]
	cmp r0, #0x10
	bgt _08038DDE
	adds r0, #1
	str r0, [r1]
_08038DDE:
	adds r2, #8
	adds r4, #1
	ldr r0, [r2]
	cmp r0, #0
	bne _08038DD0
_08038DE8:
	mov r0, sb
	ldr r3, [r0]
	ldr r1, _08038E64 @ =0x000254D4
	adds r2, r3, r1
	ldr r5, _08038E50 @ =0x000254D0
	adds r5, r5, r3
	mov r8, r5
	adds r1, #4
	adds r0, r3, r1
	ldr r1, [r5]
	ldr r0, [r0]
	adds r6, r1, r0
	str r6, [r2]
	ldrh r1, [r3, #0x16]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08038E68
	add r2, sp, #0x90
	movs r0, #0
	str r0, [r2]
	ldr r1, _08038E40 @ =0x040000D4
	str r2, [r1]
	ldr r0, _08038E58 @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _08038E5C @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r2, sb
	ldr r0, [r2]
	ldr r5, _08038E54 @ =0x00025551
	adds r0, r0, r5
	ldrb r1, [r0]
	lsls r1, r1, #3
	add r0, sp, #4
	adds r0, r0, r1
	ldr r0, [r0]
	mov sl, r0
	b _08038F6E
	.align 2, 0
_08038E38: .4byte 0x080E281C
_08038E3C: .4byte gEwramData
_08038E40: .4byte 0x040000D4
_08038E44: .4byte 0x080E25E8
_08038E48: .4byte 0x80000040
_08038E4C: .4byte 0x080E28AC
_08038E50: .4byte 0x000254D0
_08038E54: .4byte 0x00025551
_08038E58: .4byte 0x0600E000
_08038E5C: .4byte 0x85000200
_08038E60: .4byte 0x000254D8
_08038E64: .4byte 0x000254D4
_08038E68:
	movs r0, #0x40
	ands r0, r7
	cmp r0, #0
	beq _08038E96
	ldr r0, _08038E8C @ =0x00025551
	adds r4, r3, r0
	ldrb r5, [r4]
	adds r0, r5, #0
	movs r1, #0x11
	bl __umodsi3
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08038E90
	subs r0, r5, #1
	strb r0, [r4]
	b _08038F12
	.align 2, 0
_08038E8C: .4byte 0x00025551
_08038E90:
	subs r0, r6, #1
	strb r0, [r4]
	b _08038F12
_08038E96:
	movs r0, #0x80
	ands r0, r7
	cmp r0, #0
	beq _08038EC8
	ldr r1, _08038EC0 @ =0x00025551
	adds r5, r3, r1
	ldrb r0, [r5]
	adds r4, r0, #1
	adds r0, r4, #0
	movs r1, #0x11
	bl __modsi3
	cmp r0, #0
	beq _08038EB6
	cmp r4, r6
	blt _08038EC4
_08038EB6:
	mov r2, r8
	ldr r0, [r2]
	strb r0, [r5]
	b _08038F12
	.align 2, 0
_08038EC0: .4byte 0x00025551
_08038EC4:
	strb r4, [r5]
	b _08038F12
_08038EC8:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r7
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _08038EF2
	ldr r5, _08038EE8 @ =0x00025551
	adds r2, r3, r5
	ldrb r0, [r2]
	adds r0, #0x11
	cmp r0, r4
	bge _08038EEC
	strb r0, [r2]
	b _08038F12
	.align 2, 0
_08038EE8: .4byte 0x00025551
_08038EEC:
	subs r0, r4, #1
	strb r0, [r2]
	b _08038F12
_08038EF2:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r7, r0
	cmp r7, #0
	beq _08038F12
	ldr r0, _08038F0C @ =0x00025551
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, #0x11
	bls _08038F10
	subs r0, #0x11
	strb r0, [r2]
	b _08038F12
	.align 2, 0
_08038F0C: .4byte 0x00025551
_08038F10:
	strb r1, [r2]
_08038F12:
	mov r1, sb
	ldr r0, [r1]
	ldr r2, _08038F80 @ =0x000254D0
	adds r1, r0, r2
	ldr r4, [r1]
	ldr r5, _08038F84 @ =0x000254D8
	adds r0, r0, r5
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r4, r0
	bge _08038F6C
	mov r7, sb
	lsls r0, r4, #3
	mov r1, sp
	adds r5, r0, r1
	movs r6, #0x80
	lsls r6, r6, #0xa
_08038F34:
	lsrs r1, r6, #0x10
	ldr r0, [r7]
	ldr r2, _08038F88 @ =0x00025551
	adds r0, r0, r2
	movs r2, #3
	ldrb r0, [r0]
	cmp r4, r0
	bne _08038F46
	movs r2, #1
_08038F46:
	ldr r3, [r5]
	movs r0, #4
	bl BgCmdBuffer_WriteString
	adds r5, #8
	adds r4, #1
	movs r0, #0x80
	lsls r0, r0, #9
	adds r6, r6, r0
	ldr r1, [r7]
	ldr r2, _08038F80 @ =0x000254D0
	adds r0, r1, r2
	adds r2, #8
	adds r1, r1, r2
	ldr r0, [r0]
	ldr r1, [r1]
	adds r0, r0, r1
	cmp r4, r0
	blt _08038F34
_08038F6C:
	mov r0, sl
_08038F6E:
	add sp, #0x94
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08038F80: .4byte 0x000254D0
_08038F84: .4byte 0x000254D8
_08038F88: .4byte 0x00025551

	thumb_func_start sub_08038F8C
sub_08038F8C: @ 0x08038F8C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x28
	ldr r0, _08038FC4 @ =gEwramData
	mov r8, r0
	ldr r2, [r0]
	adds r3, r2, #0
	adds r3, #0x60
	ldr r1, _08038FC8 @ =0x0001325C
	adds r7, r2, r1
	ldr r4, _08038FCC @ =0x00013110
	movs r5, #1
	rsbs r5, r5, #0
	mov sb, r5
	ldr r0, _08038FD0 @ =0x00025551
	adds r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #1
	bne _08038FB8
	b _0803912C
_08038FB8:
	cmp r0, #1
	bgt _08038FD4
	cmp r0, #0
	beq _08038FDC
	b _08039282
	.align 2, 0
_08038FC4: .4byte gEwramData
_08038FC8: .4byte 0x0001325C
_08038FCC: .4byte 0x00013110
_08038FD0: .4byte 0x00025551
_08038FD4:
	cmp r0, #2
	bne _08038FDA
	b _08039132
_08038FDA:
	b _08039282
_08038FDC:
	strb r0, [r3, #4]
	str r0, [sp]
	ldr r1, _0803907C @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _08039080 @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _08039084 @ =0x85000800
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl sub_08014548
	mov r3, r8
	ldr r0, [r3]
	ldr r5, _08039088 @ =0x00013269
	adds r0, r0, r5
	movs r1, #0x2d
	strb r1, [r0]
	ldr r0, [r3]
	ldr r7, _0803908C @ =0x0001326A
	adds r0, r0, r7
	movs r1, #3
	strb r1, [r0]
	movs r0, #2
	movs r1, #4
	bl sub_0804B26C
	movs r6, #0
	movs r3, #0
	ldr r7, _08039090 @ =0x084F158C
_08039018:
	movs r4, #0
	ldr r0, [r7]
	cmp r4, r0
	bge _0803903A
	ldr r0, _08039090 @ =0x084F158C
	adds r5, r3, r0
_08039024:
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #1
	str r3, [sp, #0x24]
	bl sub_080324D0
	adds r4, #1
	ldr r0, [r5]
	ldr r3, [sp, #0x24]
	cmp r4, r0
	blt _08039024
_0803903A:
	adds r3, #4
	adds r7, #4
	adds r6, #1
	cmp r6, #3
	ble _08039018
	movs r0, #0
	movs r1, #0
	movs r2, #7
	bl sub_0803278C
	movs r6, #3
	ldr r0, _08039094 @ =0x084F159C
	mov ip, r0
	mov r8, ip
_08039056:
	movs r4, #0
	subs r0, r6, #3
	lsls r1, r0, #2
	mov r2, r8
	adds r0, r1, r2
	ldr r0, [r0]
	adds r5, r6, #1
	cmp r4, r0
	bge _080390CA
	ldr r3, _08039098 @ =gEwramData
	movs r2, #1
	add r1, ip
_0803906E:
	cmp r6, #4
	beq _080390AC
	cmp r6, #4
	bgt _0803909C
	cmp r6, #3
	beq _080390A2
	b _080390C2
	.align 2, 0
_0803907C: .4byte 0x040000D4
_08039080: .4byte 0x0600E000
_08039084: .4byte 0x85000800
_08039088: .4byte 0x00013269
_0803908C: .4byte 0x0001326A
_08039090: .4byte 0x084F158C
_08039094: .4byte 0x084F159C
_08039098: .4byte gEwramData
_0803909C:
	cmp r6, #5
	beq _080390B8
	b _080390C2
_080390A2:
	ldr r0, [r3]
	ldr r7, _080390A8 @ =0x00013294
	b _080390BC
	.align 2, 0
_080390A8: .4byte 0x00013294
_080390AC:
	ldr r0, [r3]
	ldr r7, _080390B4 @ =0x000132B4
	b _080390BC
	.align 2, 0
_080390B4: .4byte 0x000132B4
_080390B8:
	ldr r0, [r3]
	ldr r7, _0803911C @ =0x000132EF
_080390BC:
	adds r0, r0, r7
	adds r0, r0, r4
	strb r2, [r0]
_080390C2:
	adds r4, #1
	ldr r0, [r1]
	cmp r4, r0
	blt _0803906E
_080390CA:
	adds r6, r5, #0
	cmp r6, #5
	ble _08039056
	movs r0, #0
	movs r1, #1
	bl sub_08032ADC
	movs r0, #1
	movs r1, #1
	bl sub_08032ADC
	movs r0, #2
	movs r1, #1
	bl sub_08032ADC
	movs r0, #3
	movs r1, #1
	bl sub_08032ADC
	movs r0, #4
	movs r1, #1
	bl sub_08032ADC
	movs r0, #5
	movs r1, #1
	bl sub_08032ADC
	bl sub_08046A18
	ldr r0, _08039120 @ =gEwramData
	ldr r1, [r0]
	adds r2, r1, #0
	adds r2, #0x88
	ldr r0, _08039124 @ =0x08517790
	str r0, [r2]
	ldr r0, _08039128 @ =0x00025551
	adds r1, r1, r0
	movs r0, #1
	strb r0, [r1]
	b _08039282
	.align 2, 0
_0803911C: .4byte 0x000132EF
_08039120: .4byte gEwramData
_08039124: .4byte 0x08517790
_08039128: .4byte 0x00025551
_0803912C:
	movs r0, #2
	strb r0, [r1]
	b _08039282
_08039132:
	ldrb r0, [r3, #4]
	cmp r0, #6
	beq _080391C4
	ldr r1, _08039228 @ =0x00025552
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080391C4
	ldr r1, _0803922C @ =0x040000D4
	ldr r0, _08039230 @ =sUnk_080E3464
	str r0, [r1]
	ldr r0, _08039234 @ =0x05000160
	str r0, [r1, #4]
	ldr r0, _08039238 @ =0x84000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r2, r4
	ldr r0, [r0]
	bl GetEntityRoomXPositionInteger
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov sb, r5
	mov r2, r8
	ldr r0, [r2]
	adds r0, r0, r4
	ldr r0, [r0]
	bl GetEntityRoomYPositionInteger
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	add r6, sp, #4
	ldr r1, _0803923C @ =0x080E28C4
	mov r3, r8
	ldr r0, [r3]
	ldr r5, _08039240 @ =0x0001327A
	adds r2, r0, r5
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r5, #2
	adds r0, r0, r5
	movs r5, #0
	ldrsh r3, [r0, r5]
	adds r0, r6, #0
	bl sprintf
	movs r0, #0xe
	movs r1, #4
	movs r2, #0xc
	adds r3, r6, #0
	bl BgCmdBuffer_WriteString
	ldr r1, _08039244 @ =0x080E28D4
	mov r0, sb
	lsls r5, r0, #0x10
	asrs r5, r5, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sprintf
	movs r0, #0xe
	movs r1, #5
	movs r2, #0xc
	adds r3, r6, #0
	bl BgCmdBuffer_WriteString
_080391C4:
	ldr r4, _08039248 @ =gEwramData
	ldr r0, [r4]
	ldr r5, _08039228 @ =0x00025552
	adds r0, r0, r5
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08039204
	movs r0, #0x37
	strb r0, [r7, #0xd]
	movs r0, #3
	strb r0, [r7, #0xe]
	movs r0, #4
	strb r0, [r7, #0xf]
	bl sub_0804AD9C
	ldr r0, _0803924C @ =0x00086470
	str r0, [r7, #0x30]
	adds r0, r7, #0
	bl sub_08033CAC
	ldrh r0, [r7, #0x22]
	strh r0, [r7, #0x1e]
	ldrh r0, [r7, #0x24]
	strh r0, [r7, #0x20]
	ldr r1, [r4]
	adds r1, r1, r5
	ldrb r2, [r1]
	movs r0, #0xfd
	ands r0, r2
	strb r0, [r1]
_08039204:
	bl GameModeInGameUpdate
	mov sb, r0
	ldr r2, [r4]
	ldr r0, [r2, #0x14]
	ldr r1, _08039250 @ =0x00080300
	ands r0, r1
	cmp r0, r1
	bne _0803925A
	adds r1, r2, r5
	ldrb r2, [r1]
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _08039254
	movs r0, #0xfb
	ands r0, r2
	b _08039258
	.align 2, 0
_08039228: .4byte 0x00025552
_0803922C: .4byte 0x040000D4
_08039230: .4byte sUnk_080E3464
_08039234: .4byte 0x05000160
_08039238: .4byte 0x84000010
_0803923C: .4byte 0x080E28C4
_08039240: .4byte 0x0001327A
_08039244: .4byte 0x080E28D4
_08039248: .4byte gEwramData
_0803924C: .4byte 0x00086470
_08039250: .4byte 0x00080300
_08039254:
	movs r0, #4
	orrs r0, r2
_08039258:
	strb r0, [r1]
_0803925A:
	ldr r0, _08039294 @ =gEwramData
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _08039298 @ =0x00020300
	ands r0, r1
	cmp r0, r1
	bne _08039282
	ldr r1, _0803929C @ =0x0000A074
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08039282
	ldr r3, _080392A0 @ =0x00025552
	adds r2, r2, r3
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_08039282:
	mov r0, sb
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08039294: .4byte gEwramData
_08039298: .4byte 0x00020300
_0803929C: .4byte 0x0000A074
_080392A0: .4byte 0x00025552

	thumb_func_start sub_080392A4
sub_080392A4: @ 0x080392A4
	push {r4, r5, r6, lr}
	ldr r5, _080392C4 @ =gEwramData
	ldr r0, [r5]
	ldr r1, _080392C8 @ =0x00000E2C
	adds r4, r0, r1
	movs r6, #1
	rsbs r6, r6, #0
	ldr r1, _080392CC @ =0x00025551
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080392D0
	cmp r0, #1
	beq _080392E8
	b _0803932A
	.align 2, 0
_080392C4: .4byte gEwramData
_080392C8: .4byte 0x00000E2C
_080392CC: .4byte 0x00025551
_080392D0:
	adds r0, r4, #0
	bl sub_08008300
	ldr r1, [r5]
	ldr r0, _080392E4 @ =0x00025551
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _0803932A
	.align 2, 0
_080392E4: .4byte 0x00025551
_080392E8:
	adds r0, r4, #0
	bl sub_080081AC
	cmp r0, #0
	beq _08039310
	cmp r0, #0
	bgt _080392FC
	cmp r0, r6
	beq _08039302
	b _08039310
_080392FC:
	cmp r0, #1
	beq _08039306
	b _08039310
_08039302:
	movs r6, #0
	b _08039310
_08039306:
	ldr r0, [r5]
	adds r0, #0x88
	ldr r1, _08039334 @ =0x08524020
	str r1, [r0]
	movs r6, #4
_08039310:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	beq _0803932A
	ldr r0, _08039338 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803933C @ =0x00025551
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_08008314
_0803932A:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08039334: .4byte 0x08524020
_08039338: .4byte gEwramData
_0803933C: .4byte 0x00025551
