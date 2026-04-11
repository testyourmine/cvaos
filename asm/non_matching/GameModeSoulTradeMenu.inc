
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r3, _0800A3EC @ =gEwramData
	ldr r2, [r3]
	ldr r0, _0800A3F0 @ =0x000006F4
	adds r0, r0, r2
	mov r8, r0
	movs r1, #0xef
	lsls r1, r1, #3
	adds r6, r2, r1
	movs r7, #1
	rsbs r7, r7, #0
	str r7, [sp, #0xc]
	ldr r0, _0800A3F4 @ =0x00012FE0
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r3]
	ldrb r0, [r0, #0x11]
	adds r7, r3, #0
	cmp r0, #0x15
	bls _0800A3E0
	bl _0800B5C4
_0800A3E0:
	lsls r0, r0, #2
	ldr r1, _0800A3F8 @ =_0800A3FC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800A3EC: .4byte gEwramData
_0800A3F0: .4byte 0x000006F4
_0800A3F4: .4byte 0x00012FE0
_0800A3F8: .4byte _0800A3FC
_0800A3FC: @ jump table
	.4byte _0800A454 @ case 0
	.4byte _0800A50C @ case 1
	.4byte _0800B5C4 @ case 2
	.4byte _0800A534 @ case 3
	.4byte _0800A5B8 @ case 4
	.4byte _0800A7EC @ case 5
	.4byte _0800A850 @ case 6
	.4byte _0800A860 @ case 7
	.4byte _0800A878 @ case 8
	.4byte _0800AB94 @ case 9
	.4byte _0800ABE8 @ case 10
	.4byte _0800B5C4 @ case 11
	.4byte _0800ACCC @ case 12
	.4byte _0800AE5E @ case 13
	.4byte _0800B004 @ case 14
	.4byte _0800B22C @ case 15
	.4byte _0800B3C0 @ case 16
	.4byte _0800B45C @ case 17
	.4byte _0800B4D4 @ case 18
	.4byte _0800B568 @ case 19
	.4byte _0800A9BE @ case 20
	.4byte _0800AAD0 @ case 21
_0800A454:
	movs r3, #0
	str r3, [sp, #8]
	ldr r1, _0800A4E8 @ =0x040000D4
	add r2, sp, #8
	str r2, [r1]
	ldr r0, [r7]
	ldr r2, _0800A4EC @ =0x00025484
	adds r0, r0, r2
	str r0, [r1, #4]
	ldr r2, _0800A4F0 @ =0x85000001
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	str r3, [sp, #8]
	add r3, sp, #8
	str r3, [r1]
	ldr r0, [r7]
	ldr r3, _0800A4F4 @ =0x00025494
	adds r0, r0, r3
	str r0, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _0800A4F8 @ =gUnk_03002CB0
	movs r6, #0
	movs r0, #0xf8
	lsls r0, r0, #5
	strh r0, [r1]
	ldr r2, _0800A4FC @ =gDisplayRegisters
	adds r1, r2, #0
	adds r1, #0x48
	ldr r0, _0800A500 @ =0x00000844
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0800A504 @ =0x00000A06
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x4c
	movs r4, #0x10
	strh r4, [r0]
	ldr r1, [r7]
	ldr r0, _0800A508 @ =0x000004CC
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	mov r0, r8
	bl sub_08008300
	movs r5, #0x80
	lsls r5, r5, #9
	str r5, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803D18C
	str r5, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803CDF0
	ldr r1, [r7]
	movs r0, #1
	strb r0, [r1, #0x11]
	ldr r0, [r7]
	strb r6, [r0, #0x12]
	bl _0800B5C4
	.align 2, 0
_0800A4E8: .4byte 0x040000D4
_0800A4EC: .4byte 0x00025484
_0800A4F0: .4byte 0x85000001
_0800A4F4: .4byte 0x00025494
_0800A4F8: .4byte gUnk_03002CB0
_0800A4FC: .4byte gDisplayRegisters
_0800A500: .4byte 0x00000844
_0800A504: .4byte 0x00000A06
_0800A508: .4byte 0x000004CC
_0800A50C:
	bl sub_08000B64
	bl sub_0803D408
	adds r4, r0, #0
	cmp r4, #0
	beq _0800A51E
	bl _0800B5C4
_0800A51E:
	bl sub_0803CED4
	bl sub_0803D270
	ldr r2, _0800A530 @ =gEwramData
	ldr r1, [r2]
	movs r0, #3
	bl _0800B170
	.align 2, 0
_0800A530: .4byte gEwramData
_0800A534:
	mov r0, r8
	bl sub_080081AC
	adds r4, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	bne _0800A56C
	movs r0, #0xf0
	bl PlaySong
	ldr r4, _0800A564 @ =gEwramData
	ldr r0, [r4]
	movs r1, #0xce
	lsls r1, r1, #3
	adds r0, r0, r1
	bl EntityDelete
	ldr r0, [r4]
	ldr r2, _0800A568 @ =0x000007FC
	adds r0, r0, r2
	bl EntityDelete
	b _0800AB52
	.align 2, 0
_0800A564: .4byte gEwramData
_0800A568: .4byte 0x000007FC
_0800A56C:
	cmp r4, #0
	bne _0800A574
	bl _0800B5C4
_0800A574:
	movs r0, #0xf4
	bl PlaySong
	ldr r2, _0800A5A4 @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _0800A5A8 @ =0x0000FBFF
	ands r0, r1
	movs r4, #0
	movs r3, #0
	strh r0, [r2]
	ldr r1, _0800A5AC @ =gDisplayRegisters
	adds r2, r1, #0
	adds r2, #0x48
	ldr r0, _0800A5B0 @ =0x00000853
	strh r0, [r2]
	adds r1, #0x4a
	movs r0, #0x10
	strh r0, [r1]
	ldr r2, _0800A5B4 @ =gEwramData
	ldr r1, [r2]
	strh r3, [r1, #4]
	movs r0, #4
	bl _0800B170
	.align 2, 0
_0800A5A4: .4byte gUnk_03002CB0
_0800A5A8: .4byte 0x0000FBFF
_0800A5AC: .4byte gDisplayRegisters
_0800A5B0: .4byte 0x00000853
_0800A5B4: .4byte gEwramData
_0800A5B8:
	ldr r4, _0800A5EC @ =gDisplayRegisters
	adds r3, r4, #0
	adds r3, #0x4a
	ldrh r1, [r3]
	ldr r0, _0800A5F0 @ =0x00000FFF
	cmp r1, r0
	bhi _0800A5F4
	ldr r1, [r7]
	ldrh r0, [r1, #4]
	adds r0, #2
	strh r0, [r1, #4]
	ldrh r2, [r1, #4]
	lsls r1, r2, #8
	movs r0, #0x10
	subs r0, r0, r2
	orrs r1, r0
	strh r1, [r3]
	ldr r0, [r7]
	ldrh r0, [r0, #4]
	cmp r0, #0xc
	bhi _0800A5E4
	b _0800ACBA
_0800A5E4:
	movs r0, #0
	mov r1, r8
	strb r0, [r1, #0xa]
	b _0800ACBA
	.align 2, 0
_0800A5EC: .4byte gDisplayRegisters
_0800A5F0: .4byte 0x00000FFF
_0800A5F4:
	ldr r1, [r7]
	ldr r2, _0800A658 @ =0x00007864
	adds r1, r1, r2
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	ldr r0, [r7]
	ldr r3, _0800A65C @ =0x000006F4
	adds r0, r0, r3
	bl sub_08008314
	adds r1, r4, #0
	adds r1, #0x48
	ldr r0, _0800A660 @ =0x00000853
	strh r0, [r1]
	ldr r2, _0800A664 @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _0800A668 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0
	bl sub_0800A00C
	ldr r0, [r7]
	movs r1, #0xce
	lsls r1, r1, #3
	adds r0, r0, r1
	bl EntityDelete
	ldr r0, [r7]
	ldr r2, _0800A66C @ =0x000007FC
	adds r0, r0, r2
	bl EntityDelete
	adds r0, r6, #0
	bl EntityDelete
	ldr r0, [r7]
	movs r3, #0x9a
	lsls r3, r3, #3
	adds r0, r0, r3
	ldr r0, [r0]
	cmp r0, #2
	beq _0800A674
	cmp r0, #3
	beq _0800A67C
	ldr r0, _0800A670 @ =0x082052D8
	b _0800A67E
	.align 2, 0
_0800A658: .4byte 0x00007864
_0800A65C: .4byte 0x000006F4
_0800A660: .4byte 0x00000853
_0800A664: .4byte gUnk_03002CB0
_0800A668: .4byte 0x0000FBFF
_0800A66C: .4byte 0x000007FC
_0800A670: .4byte 0x082052D8
_0800A674:
	ldr r0, _0800A678 @ =0x0827798C
	b _0800A67E
	.align 2, 0
_0800A678: .4byte 0x0827798C
_0800A67C:
	ldr r0, _0800A7AC @ =0x0826C840
_0800A67E:
	movs r1, #0
	bl sub_0803B800
	adds r4, r0, #0
	ldr r0, _0800A7B0 @ =0x080E5E24
	movs r1, #6
	movs r2, #1
	movs r3, #0xd
	bl sub_0803C7B4
	ldr r1, _0800A7B4 @ =0x082571E0
	adds r0, r6, #0
	adds r2, r4, #0
	movs r3, #0xd
	bl sub_0803B924
	ldr r0, _0800A7B8 @ =sub_08009A48
	str r0, [r6]
	movs r0, #0
	str r0, [sp, #8]
	ldr r1, _0800A7BC @ =0x040000D4
	add r7, sp, #8
	str r7, [r1]
	ldr r0, _0800A7C0 @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _0800A7C4 @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800A7C8 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0xce
	lsls r1, r1, #3
	adds r0, r0, r1
	movs r1, #0xe
	bl sub_08048C74
	ldr r1, _0800A7CC @ =0x080E7164
	movs r0, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	ldr r1, _0800A7D0 @ =0x080E6F24
	movs r0, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	ldr r1, _0800A7D4 @ =gDisplayRegisters
	ldr r0, _0800A7D8 @ =0x00001D01
	strh r0, [r1, #2]
	ldr r0, _0800A7DC @ =0x00001E02
	strh r0, [r1, #4]
	ldr r0, _0800A7E0 @ =0x00001F03
	strh r0, [r1, #6]
	movs r0, #0
	movs r1, #1
	movs r2, #0x20
	movs r3, #4
	bl sub_08040748
	bl sub_08040FE0
	movs r0, #0
	movs r1, #1
	movs r2, #0x1e
	movs r3, #4
	bl sub_08040748
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	movs r4, #0
	ldr r5, _0800A7E4 @ =0x0000F020
_0800A714:
	adds r1, r4, #0
	adds r1, #0xf
	movs r0, #3
	adds r2, r5, #0
	movs r3, #0x17
	bl sub_08046DD4
	adds r5, #0x20
	adds r4, #1
	cmp r4, #3
	ble _0800A714
	ldr r5, _0800A7E8 @ =0x00000373
	adds r0, r5, #0
	bl sub_08041434
	mov r8, r0
	movs r2, #1
	mov sb, r2
	movs r4, #0
	movs r7, #1
	rsbs r7, r7, #0
	ldr r0, [r6, #0x24]
	cmp r0, r5
	beq _0800A798
	str r5, [r6, #0x24]
	movs r0, #0
	movs r1, #1
	movs r2, #0x20
	movs r3, #4
	bl sub_08040748
	bl sub_08040FE0
	movs r0, #0
	movs r1, #1
	movs r2, #0x1e
	movs r3, #4
	bl sub_08040748
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	movs r6, #0
	mov r5, r8
	adds r5, #2
_0800A770:
	mov r3, sb
	adds r1, r3, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsrs r0, r6, #0x10
	bl sub_0804066C
	adds r1, r7, #1
	mov r0, r8
	bl sub_08041318
	adds r7, r0, #0
	adds r0, r5, r7
	ldrb r0, [r0]
	adds r4, #1
	cmp r0, #6
	beq _0800A794
	movs r4, #0
_0800A794:
	cmp r4, #0
	bne _0800A770
_0800A798:
	ldr r2, _0800A7C8 @ =gEwramData
	ldr r1, [r2]
	movs r3, #0
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #5
_0800A7A4:
	strb r0, [r1, #0x11]
	ldr r0, [r2]
	strb r3, [r0, #0x12]
	b _0800ACBA
	.align 2, 0
_0800A7AC: .4byte 0x0826C840
_0800A7B0: .4byte 0x080E5E24
_0800A7B4: .4byte 0x082571E0
_0800A7B8: .4byte sub_08009A48
_0800A7BC: .4byte 0x040000D4
_0800A7C0: .4byte 0x0600E000
_0800A7C4: .4byte 0x85000200
_0800A7C8: .4byte gEwramData
_0800A7CC: .4byte 0x080E7164
_0800A7D0: .4byte 0x080E6F24
_0800A7D4: .4byte gDisplayRegisters
_0800A7D8: .4byte 0x00001D01
_0800A7DC: .4byte 0x00001E02
_0800A7E0: .4byte 0x00001F03
_0800A7E4: .4byte 0x0000F020
_0800A7E8: .4byte 0x00000373
_0800A7EC:
	ldr r1, [r7]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _0800A810
	subs r0, #2
	strh r0, [r1, #4]
	ldrh r3, [r1, #4]
	ldr r2, _0800A80C @ =gDisplayRegisters
	lsls r1, r3, #8
	movs r0, #0x10
	subs r0, r0, r3
	orrs r1, r0
	adds r2, #0x4a
	strh r1, [r2]
	bl _0800B5C4
	.align 2, 0
_0800A80C: .4byte gDisplayRegisters
_0800A810:
	ldr r2, _0800A840 @ =gUnk_03002CB0
	ldrh r1, [r2]
	movs r3, #0xf0
	lsls r3, r3, #4
	adds r0, r3, #0
	movs r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0800A844 @ =gDisplayRegisters
	adds r2, r1, #0
	adds r2, #0x48
	ldr r0, _0800A848 @ =0x00000844
	strh r0, [r2]
	adds r1, #0x4a
	ldr r0, _0800A84C @ =0x00000A06
	strh r0, [r1]
	ldr r1, [r7]
	movs r0, #6
	strb r0, [r1, #0x11]
	ldr r0, [r7]
	strb r3, [r0, #0x12]
	bl _0800B5C4
	.align 2, 0
_0800A840: .4byte gUnk_03002CB0
_0800A844: .4byte gDisplayRegisters
_0800A848: .4byte 0x00000844
_0800A84C: .4byte 0x00000A06
_0800A850:
	ldr r1, [r7]
	movs r2, #0
	movs r0, #7
	strb r0, [r1, #0x11]
	ldr r0, [r7]
	strb r2, [r0, #0x12]
	bl _0800B5C4
_0800A860:
	bl sub_080D7F78
	bl sub_080D7FB8
	ldr r2, _0800A874 @ =gEwramData
	ldr r1, [r2]
	movs r3, #0
	movs r0, #8
	bl _0800B4C8
	.align 2, 0
_0800A874: .4byte gEwramData
_0800A878:
	ldr r5, _0800A900 @ =0x00000373
	adds r0, r5, #0
	bl sub_08041434
	mov r8, r0
	movs r7, #1
	mov sb, r7
	movs r4, #0
	subs r7, #2
	ldr r0, [r6, #0x24]
	cmp r0, r5
	beq _0800A8E4
	str r5, [r6, #0x24]
	movs r0, #0
	movs r1, #1
	movs r2, #0x20
	movs r3, #4
	bl sub_08040748
	bl sub_08040FE0
	movs r0, #0
	movs r1, #1
	movs r2, #0x1e
	movs r3, #4
	bl sub_08040748
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	movs r6, #0
	mov r5, r8
	adds r5, #2
_0800A8BC:
	mov r0, sb
	adds r1, r0, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsrs r0, r6, #0x10
	bl sub_0804066C
	adds r1, r7, #1
	mov r0, r8
	bl sub_08041318
	adds r7, r0, #0
	adds r0, r5, r7
	ldrb r0, [r0]
	adds r4, #1
	cmp r0, #6
	beq _0800A8E0
	movs r4, #0
_0800A8E0:
	cmp r4, #0
	bne _0800A8BC
_0800A8E4:
	ldr r5, _0800A904 @ =gEwramData
	ldr r2, [r5]
	ldrh r1, [r2, #0x18]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800A908
	movs r0, #0
	movs r1, #9
	strb r1, [r2, #0x11]
	ldr r1, [r5]
	strb r0, [r1, #0x12]
	bl _0800B5C4
	.align 2, 0
_0800A900: .4byte 0x00000373
_0800A904: .4byte gEwramData
_0800A908:
	ldr r3, _0800A95C @ =0x00025484
	adds r1, r2, r3
	movs r0, #0xd
	strb r0, [r1, #3]
	ldr r1, [r5]
	adds r1, r1, r3
	ldrb r2, [r1]
	movs r0, #0xf
	ands r0, r2
	strb r0, [r1]
	ldr r0, [r5]
	adds r0, r0, r3
	movs r1, #4
	bl sub_080D8020
	ldr r0, [r5]
	ldr r7, _0800A960 @ =0x00025494
	adds r0, r0, r7
	movs r1, #4
	bl sub_080D8088
	movs r4, #0
	bl sub_080D7F28
	cmp r0, #0
	beq _0800A946
	bl sub_080D7F48
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
_0800A946:
	cmp r4, #0
	beq _0800A964
	ldr r0, [r5]
	ldr r1, _0800A960 @ =0x00025494
	adds r0, r0, r1
	ldrb r0, [r0, #3]
	movs r1, #1
	cmp r0, #0xd
	beq _0800A966
	bl _0800B5C4
	.align 2, 0
_0800A95C: .4byte 0x00025484
_0800A960: .4byte 0x00025494
_0800A964:
	movs r1, #0
_0800A966:
	cmp r1, #0
	bne _0800A96E
	bl _0800B5C4
_0800A96E:
	ldr r5, _0800A9A8 @ =gEwramData
	ldr r1, [r5]
	ldr r2, _0800A9AC @ =0x00025494
	adds r0, r1, r2
	ldrb r0, [r0]
	movs r4, #0xf0
	ands r4, r0
	cmp r4, #0
	beq _0800A984
	bl _0800B5C4
_0800A984:
	ldrb r0, [r1, #0x12]
	adds r0, #1
	strb r0, [r1, #0x12]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _0800A996
	bl _0800B5C4
_0800A996:
	bl MultiSioSyncGetId
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0800A9B0
	ldr r0, [r5]
	movs r1, #0xa
	b _0800A9B4
	.align 2, 0
_0800A9A8: .4byte gEwramData
_0800A9AC: .4byte 0x00025494
_0800A9B0:
	ldr r0, [r5]
	movs r1, #0x14
_0800A9B4:
	strb r1, [r0, #0x11]
	ldr r0, [r5]
	strb r4, [r0, #0x12]
	bl _0800B5C4
_0800A9BE:
	ldr r0, [r7]
	movs r3, #0xce
	lsls r3, r3, #3
	adds r0, r0, r3
	bl EntityDelete
	ldr r0, [r7]
	ldr r7, _0800AB00 @ =0x000007FC
	adds r0, r0, r7
	bl EntityDelete
	movs r0, #0
	movs r1, #8
	movs r2, #0xe
	movs r3, #8
	bl sub_08040970
	bl sub_08041204
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0xc
_0800A9EA:
	lsrs r1, r5, #0x10
	movs r0, #0
	movs r2, #0xe
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	adds r1, r4, #4
	movs r0, #0x10
	movs r2, #0xd
	bl sub_08046E04
	movs r0, #0x80
	lsls r0, r0, #9
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #7
	ble _0800A9EA
	bl sub_080D7FD0
	movs r0, #0
	movs r1, #1
	movs r2, #0x20
	movs r3, #4
	bl sub_08040748
	bl sub_08040FE0
	movs r0, #0
	movs r1, #1
	movs r2, #0x1e
	movs r3, #4
	bl sub_08040748
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	movs r4, #0
	ldr r5, _0800AB04 @ =0x0000F020
_0800AA3C:
	adds r1, r4, #0
	adds r1, #0xf
	movs r0, #3
	adds r2, r5, #0
	movs r3, #0x17
	bl sub_08046DD4
	adds r5, #0x20
	adds r4, #1
	cmp r4, #3
	ble _0800AA3C
	ldr r5, _0800AB08 @ =0x00000372
	adds r0, r5, #0
	bl sub_08041434
	mov r8, r0
	movs r1, #1
	mov sb, r1
	movs r4, #0
	movs r7, #1
	rsbs r7, r7, #0
	ldr r0, [r6, #0x24]
	cmp r0, r5
	beq _0800AABE
	str r5, [r6, #0x24]
	movs r0, #0
	movs r2, #0x20
	movs r3, #4
	bl sub_08040748
	bl sub_08040FE0
	movs r0, #0
	movs r1, #1
	movs r2, #0x1e
	movs r3, #4
	bl sub_08040748
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	movs r6, #0
	mov r5, r8
	adds r5, #2
_0800AA96:
	mov r2, sb
	adds r1, r2, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsrs r0, r6, #0x10
	bl sub_0804066C
	adds r1, r7, #1
	mov r0, r8
	bl sub_08041318
	adds r7, r0, #0
	adds r0, r5, r7
	ldrb r0, [r0]
	adds r4, #1
	cmp r0, #6
	beq _0800AABA
	movs r4, #0
_0800AABA:
	cmp r4, #0
	bne _0800AA96
_0800AABE:
	ldr r1, _0800AB0C @ =gEwramData
	ldr r2, [r1]
	movs r3, #0
	movs r0, #0x15
	strb r0, [r2, #0x11]
	ldr r0, [r1]
	strb r3, [r0, #0x12]
	ldr r0, [r1]
	strh r3, [r0, #4]
_0800AAD0:
	ldr r0, _0800AB0C @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0800AB30
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800AB18
	ldr r2, _0800AB10 @ =0x0000F22F
	movs r0, #0x1a
	movs r1, #0x11
	movs r3, #1
	bl sub_08046DD4
	ldr r2, _0800AB14 @ =0x0000F23F
	movs r0, #0x1a
	movs r1, #0x12
	movs r3, #1
	bl sub_08046DD4
	b _0800AB30
	.align 2, 0
_0800AB00: .4byte 0x000007FC
_0800AB04: .4byte 0x0000F020
_0800AB08: .4byte 0x00000372
_0800AB0C: .4byte gEwramData
_0800AB10: .4byte 0x0000F22F
_0800AB14: .4byte 0x0000F23F
_0800AB18:
	ldr r2, _0800AB80 @ =0x0000F22E
	movs r0, #0x1a
	movs r1, #0x11
	movs r3, #1
	bl sub_08046DD4
	ldr r2, _0800AB84 @ =0x0000F23E
	movs r0, #0x1a
	movs r1, #0x12
	movs r3, #1
	bl sub_08046DD4
_0800AB30:
	ldr r4, _0800AB88 @ =gEwramData
	ldr r2, [r4]
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	ldrh r1, [r2, #0x18]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0800AB48
	bl _0800B5C4
_0800AB48:
	movs r0, #0
	strh r0, [r2, #4]
	movs r0, #0xf0
	bl PlaySong
_0800AB52:
	ldr r0, [r4]
	movs r3, #0xef
	lsls r3, r3, #3
	adds r0, r0, r3
	bl EntityDelete
	ldr r0, [r4]
	ldr r7, _0800AB8C @ =0x000006F4
	adds r0, r0, r7
	bl sub_08008314
	ldr r1, _0800AB90 @ =gDisplayRegisters
	adds r2, r1, #0
	adds r2, #0x48
	movs r0, #0xff
	strh r0, [r2]
	adds r1, #0x4c
	movs r0, #0x10
	strh r0, [r1]
	movs r0, #1
	str r0, [sp, #0xc]
	bl _0800B5C4
	.align 2, 0
_0800AB80: .4byte 0x0000F22E
_0800AB84: .4byte 0x0000F23E
_0800AB88: .4byte gEwramData
_0800AB8C: .4byte 0x000006F4
_0800AB90: .4byte gDisplayRegisters
_0800AB94:
	bl sub_080D7FD0
	movs r0, #0xf0
	bl PlaySong
	ldr r4, _0800ABDC @ =gEwramData
	ldr r0, [r4]
	movs r1, #0xce
	lsls r1, r1, #3
	adds r0, r0, r1
	bl EntityDelete
	ldr r0, [r4]
	ldr r2, _0800ABE0 @ =0x000007FC
	adds r0, r0, r2
	bl EntityDelete
	ldr r0, [r4]
	movs r3, #0xef
	lsls r3, r3, #3
	adds r0, r0, r3
	bl EntityDelete
	ldr r1, _0800ABE4 @ =gDisplayRegisters
	adds r2, r1, #0
	adds r2, #0x48
	movs r0, #0xff
	strh r0, [r2]
	adds r1, #0x4c
	movs r0, #0x10
	strh r0, [r1]
	movs r7, #1
	str r7, [sp, #0xc]
	bl _0800B5C4
	.align 2, 0
_0800ABDC: .4byte gEwramData
_0800ABE0: .4byte 0x000007FC
_0800ABE4: .4byte gDisplayRegisters
_0800ABE8:
	adds r0, r6, #0
	bl sub_0800A2AC
	adds r4, r0, #0
	ldr r7, _0800AC4C @ =gEwramData
	ldr r0, [r7]
	ldr r1, _0800AC50 @ =0x00025484
	adds r0, r0, r1
	movs r1, #0xd
	strb r1, [r0, #3]
	ldr r1, [r7]
	ldr r2, _0800AC50 @ =0x00025484
	adds r1, r1, r2
	ldrb r2, [r1]
	movs r0, #0xf
	ands r0, r2
	strb r0, [r1]
	ldr r0, [r7]
	ldr r3, _0800AC50 @ =0x00025484
	adds r0, r0, r3
	movs r1, #4
	bl sub_080D8020
	ldr r0, [r7]
	ldr r1, _0800AC54 @ =0x00025494
	adds r0, r0, r1
	movs r1, #4
	bl sub_080D8088
	movs r5, #0
	bl sub_080D7F28
	cmp r0, #0
	beq _0800AC36
	bl sub_080D7F48
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r5, r1, #0x1f
_0800AC36:
	cmp r5, #0
	beq _0800AC58
	ldr r0, [r7]
	ldr r2, _0800AC54 @ =0x00025494
	adds r0, r0, r2
	ldrb r0, [r0, #3]
	movs r1, #1
	cmp r0, #0xd
	beq _0800AC5A
	b _0800AC5E
	.align 2, 0
_0800AC4C: .4byte gEwramData
_0800AC50: .4byte 0x00025484
_0800AC54: .4byte 0x00025494
_0800AC58:
	movs r1, #0
_0800AC5A:
	cmp r1, #0
	bne _0800AC6E
_0800AC5E:
	ldrh r1, [r6, #0x1e]
	movs r3, #0x1e
	ldrsh r0, [r6, r3]
	cmp r0, #5
	bgt _0800AC74
	adds r0, r1, #1
	strh r0, [r6, #0x1e]
	b _0800AC84
_0800AC6E:
	movs r0, #0
	strh r0, [r6, #0x1e]
	b _0800AC84
_0800AC74:
	ldr r2, _0800AC80 @ =gEwramData
	ldr r1, [r2]
	movs r3, #0
	movs r0, #0x14
	bl _0800B4C8
	.align 2, 0
_0800AC80: .4byte gEwramData
_0800AC84:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	bne _0800AC9C
	ldr r2, _0800AC98 @ =gEwramData
	ldr r1, [r2]
	movs r3, #0
	movs r0, #9
	b _0800A7A4
	.align 2, 0
_0800AC98: .4byte gEwramData
_0800AC9C:
	cmp r4, #0
	beq _0800ACBA
	ldr r4, _0800ACC4 @ =gEwramData
	ldr r0, [r4]
	ldr r7, _0800ACC8 @ =0x000007FC
	adds r0, r0, r7
	movs r1, #0xe
	bl sub_08048C74
	ldr r1, [r4]
	movs r2, #0
	movs r0, #0xc
	strb r0, [r1, #0x11]
	ldr r0, [r4]
	strb r2, [r0, #0x12]
_0800ACBA:
	bl sub_08000B64
	bl _0800B5C4
	.align 2, 0
_0800ACC4: .4byte gEwramData
_0800ACC8: .4byte 0x000007FC
_0800ACCC:
	ldr r5, _0800ADA0 @ =0x00000376
	adds r0, r5, #0
	bl sub_08041434
	mov r8, r0
	movs r0, #1
	mov sl, r0
	movs r4, #0
	movs r7, #1
	rsbs r7, r7, #0
	ldr r0, [r6, #0x24]
	cmp r0, r5
	beq _0800AD3E
	str r5, [r6, #0x24]
	movs r0, #0
	movs r1, #1
	movs r2, #0x20
	movs r3, #4
	bl sub_08040748
	bl sub_08040FE0
	movs r0, #0
	movs r1, #1
	movs r2, #0x1e
	movs r3, #4
	bl sub_08040748
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	movs r1, #0
	mov sb, r1
	mov r5, r8
	adds r5, #2
_0800AD14:
	mov r2, sl
	adds r1, r2, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r3, sb
	lsrs r0, r3, #0x10
	bl sub_0804066C
	adds r1, r7, #1
	mov r0, r8
	bl sub_08041318
	adds r7, r0, #0
	adds r0, r5, r7
	ldrb r0, [r0]
	adds r4, #1
	cmp r0, #6
	beq _0800AD3A
	movs r4, #0
_0800AD3A:
	cmp r4, #0
	bne _0800AD14
_0800AD3E:
	adds r0, r6, #0
	bl sub_08009A9C
	ldr r5, _0800ADA4 @ =gEwramData
	ldr r0, [r5]
	ldr r7, _0800ADA8 @ =0x00025484
	adds r0, r0, r7
	movs r1, #0xd
	strb r1, [r0, #3]
	ldr r1, [r5]
	adds r0, r7, #0
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #0xf
	ands r0, r2
	strb r0, [r1]
	ldr r0, [r5]
	adds r1, r7, #0
	adds r0, r0, r1
	movs r1, #4
	bl sub_080D8020
	ldr r0, [r5]
	ldr r2, _0800ADAC @ =0x00025494
	adds r0, r0, r2
	movs r1, #4
	bl sub_080D8088
	movs r4, #0
	bl sub_080D7F28
	cmp r0, #0
	beq _0800AD8A
	bl sub_080D7F48
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
_0800AD8A:
	cmp r4, #0
	beq _0800ADB0
	ldr r0, [r5]
	ldr r3, _0800ADAC @ =0x00025494
	adds r0, r0, r3
	ldrb r0, [r0, #3]
	movs r1, #1
	cmp r0, #0xd
	beq _0800ADB2
	b _0800ADB6
	.align 2, 0
_0800ADA0: .4byte 0x00000376
_0800ADA4: .4byte gEwramData
_0800ADA8: .4byte 0x00025484
_0800ADAC: .4byte 0x00025494
_0800ADB0:
	movs r1, #0
_0800ADB2:
	cmp r1, #0
	bne _0800ADC6
_0800ADB6:
	ldrh r1, [r6, #0x1e]
	movs r7, #0x1e
	ldrsh r0, [r6, r7]
	cmp r0, #5
	bgt _0800ADCC
	adds r0, r1, #1
	strh r0, [r6, #0x1e]
	b _0800ADDC
_0800ADC6:
	movs r0, #0
	strh r0, [r6, #0x1e]
	b _0800ADDC
_0800ADCC:
	ldr r2, _0800ADD8 @ =gEwramData
	ldr r1, [r2]
	movs r3, #0
	movs r0, #0x14
	b _0800B4C8
	.align 2, 0
_0800ADD8: .4byte gEwramData
_0800ADDC:
	bl sub_08000B64
	ldr r4, _0800AE3C @ =gEwramData
	ldr r0, [r4]
	ldrh r1, [r0, #0x18]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _0800ADFE
	movs r0, #0xf1
	bl PlaySong
	ldr r0, [r4]
	ldrb r1, [r0, #0x12]
	movs r2, #1
	eors r1, r2
	strb r1, [r0, #0x12]
_0800ADFE:
	ldr r3, [r4]
	ldrb r1, [r3, #0x12]
	ldr r0, _0800AE40 @ =0x000007FC
	adds r5, r3, r0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x50
	movs r2, #0x8e
	ldr r7, _0800AE44 @ =0x0000083E
	adds r1, r3, r7
	strh r0, [r1]
	ldr r1, _0800AE48 @ =0x00000842
	adds r0, r3, r1
	strh r2, [r0]
	ldrh r1, [r3, #0x18]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800AE4C
	ldrb r0, [r3, #0x12]
	cmp r0, #0
	bne _0800AE56
	adds r0, r5, #0
	bl EntityDelete
	ldr r1, [r4]
	movs r0, #0xd
	strb r0, [r1, #0x11]
	ldr r1, [r4]
	b _0800B226
	.align 2, 0
_0800AE3C: .4byte gEwramData
_0800AE40: .4byte 0x000007FC
_0800AE44: .4byte 0x0000083E
_0800AE48: .4byte 0x00000842
_0800AE4C:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0800AE56
	b _0800B5C4
_0800AE56:
	adds r0, r6, #0
	bl sub_080099E0
	b _0800B5C4
_0800AE5E:
	ldr r5, _0800AEEC @ =0x00000373
	adds r0, r5, #0
	bl sub_08041434
	mov r8, r0
	movs r2, #1
	mov sl, r2
	movs r4, #0
	movs r7, #1
	rsbs r7, r7, #0
	ldr r0, [r6, #0x24]
	cmp r0, r5
	beq _0800AED0
	str r5, [r6, #0x24]
	movs r0, #0
	movs r1, #1
	movs r2, #0x20
	movs r3, #4
	bl sub_08040748
	bl sub_08040FE0
	movs r0, #0
	movs r1, #1
	movs r2, #0x1e
	movs r3, #4
	bl sub_08040748
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	movs r3, #0
	mov sb, r3
	mov r5, r8
	adds r5, #2
_0800AEA6:
	mov r0, sl
	adds r1, r0, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r2, sb
	lsrs r0, r2, #0x10
	bl sub_0804066C
	adds r1, r7, #1
	mov r0, r8
	bl sub_08041318
	adds r7, r0, #0
	adds r0, r5, r7
	ldrb r0, [r0]
	adds r4, #1
	cmp r0, #6
	beq _0800AECC
	movs r4, #0
_0800AECC:
	cmp r4, #0
	bne _0800AEA6
_0800AED0:
	bl sub_08000B64
	ldr r7, _0800AEF0 @ =gEwramData
	ldr r3, [r7]
	ldrh r1, [r3, #0x18]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800AEF4
	adds r0, r6, #0
	bl sub_0800997C
	b _0800B5C4
	.align 2, 0
_0800AEEC: .4byte 0x00000373
_0800AEF0: .4byte gEwramData
_0800AEF4:
	adds r0, r6, #0
	adds r0, #0x20
	ldrb r2, [r0]
	adds r0, #1
	ldrb r5, [r0]
	ldr r0, _0800AFA0 @ =0x00025484
	adds r3, r3, r0
	movs r4, #3
	ands r2, r4
	ldrb r1, [r3]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	ldr r0, [r7]
	ldr r1, _0800AFA0 @ =0x00025484
	adds r0, r0, r1
	strb r5, [r0, #1]
	adds r0, r6, #0
	adds r0, #0x22
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, #1
	ldrb r5, [r0]
	ldr r1, [r7]
	ldr r3, _0800AFA0 @ =0x00025484
	adds r1, r1, r3
	ands r2, r4
	lsls r2, r2, #2
	ldrb r3, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1]
	ldr r0, [r7]
	ldr r1, _0800AFA4 @ =0x00025485
	adds r0, r0, r1
	strb r5, [r0, #1]
	ldr r0, [r7]
	ldr r2, _0800AFA0 @ =0x00025484
	adds r0, r0, r2
	movs r1, #0xd
	strb r1, [r0, #3]
	ldr r2, [r7]
	ldr r3, _0800AFA0 @ =0x00025484
	adds r2, r2, r3
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r7]
	adds r0, r0, r3
	movs r1, #4
	bl sub_080D8020
	ldr r0, [r7]
	ldr r1, _0800AFA8 @ =0x00025494
	adds r0, r0, r1
	movs r1, #4
	bl sub_080D8088
	movs r4, #0
	bl sub_080D7F28
	cmp r0, #0
	beq _0800AF8A
	bl sub_080D7F48
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
_0800AF8A:
	cmp r4, #0
	beq _0800AFAC
	ldr r0, [r7]
	ldr r2, _0800AFA8 @ =0x00025494
	adds r0, r0, r2
	ldrb r0, [r0, #3]
	movs r1, #1
	cmp r0, #0xd
	beq _0800AFAE
	b _0800AFB2
	.align 2, 0
_0800AFA0: .4byte 0x00025484
_0800AFA4: .4byte 0x00025485
_0800AFA8: .4byte 0x00025494
_0800AFAC:
	movs r1, #0
_0800AFAE:
	cmp r1, #0
	bne _0800AFC6
_0800AFB2:
	ldrh r1, [r6, #0x1e]
	movs r3, #0x1e
	ldrsh r0, [r6, r3]
	cmp r0, #5
	ble _0800AFBE
	b _0800B168
_0800AFBE:
	adds r0, r1, #1
	strh r0, [r6, #0x1e]
	movs r4, #2
	b _0800AFCC
_0800AFC6:
	movs r0, #0
	strh r0, [r6, #0x1e]
	movs r4, #1
_0800AFCC:
	cmp r4, #1
	bne _0800AFD6
	adds r0, r6, #0
	bl sub_08009A9C
_0800AFD6:
	ldr r3, _0800AFFC @ =gEwramData
	ldr r2, [r3]
	ldr r7, _0800B000 @ =0x00025494
	adds r0, r2, r7
	ldr r1, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1c
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0800AFEE
	b _0800B5C4
_0800AFEE:
	movs r0, #0
	movs r1, #0xe
	strb r1, [r2, #0x11]
	ldr r1, [r3]
	strb r0, [r1, #0x12]
	strh r0, [r6, #0x1e]
	b _0800B5C4
	.align 2, 0
_0800AFFC: .4byte gEwramData
_0800B000: .4byte 0x00025494
_0800B004:
	movs r5, #0xdd
	lsls r5, r5, #2
	adds r0, r5, #0
	bl sub_08041434
	mov r8, r0
	movs r0, #1
	mov sl, r0
	movs r4, #0
	movs r7, #1
	rsbs r7, r7, #0
	ldr r0, [r6, #0x24]
	cmp r0, r5
	beq _0800B078
	str r5, [r6, #0x24]
	movs r0, #0
	movs r1, #1
	movs r2, #0x20
	movs r3, #4
	bl sub_08040748
	bl sub_08040FE0
	movs r0, #0
	movs r1, #1
	movs r2, #0x1e
	movs r3, #4
	bl sub_08040748
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	movs r1, #0
	mov sb, r1
	mov r5, r8
	adds r5, #2
_0800B04E:
	mov r2, sl
	adds r1, r2, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r3, sb
	lsrs r0, r3, #0x10
	bl sub_0804066C
	adds r1, r7, #1
	mov r0, r8
	bl sub_08041318
	adds r7, r0, #0
	adds r0, r5, r7
	ldrb r0, [r0]
	adds r4, #1
	cmp r0, #6
	beq _0800B074
	movs r4, #0
_0800B074:
	cmp r4, #0
	bne _0800B04E
_0800B078:
	ldr r7, _0800B094 @ =gEwramData
	ldr r0, [r7]
	ldrb r1, [r0, #0x12]
	adds r1, #1
	strb r1, [r0, #0x12]
	ldr r3, [r7]
	ldrb r0, [r3, #0x12]
	cmp r0, #0x10
	bls _0800B098
	movs r0, #0x14
	strb r0, [r3, #0x11]
	ldr r1, [r7]
	b _0800B3B4
	.align 2, 0
_0800B094: .4byte gEwramData
_0800B098:
	adds r0, r6, #0
	adds r0, #0x20
	ldrb r2, [r0]
	adds r0, #1
	ldrb r5, [r0]
	ldr r0, _0800B144 @ =0x00025484
	adds r3, r3, r0
	movs r4, #3
	ands r2, r4
	ldrb r1, [r3]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	ldr r0, [r7]
	ldr r1, _0800B144 @ =0x00025484
	adds r0, r0, r1
	strb r5, [r0, #1]
	adds r0, r6, #0
	adds r0, #0x22
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, #1
	ldrb r5, [r0]
	ldr r1, [r7]
	ldr r3, _0800B144 @ =0x00025484
	adds r1, r1, r3
	ands r2, r4
	lsls r2, r2, #2
	ldrb r3, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1]
	ldr r0, [r7]
	ldr r1, _0800B148 @ =0x00025485
	adds r0, r0, r1
	strb r5, [r0, #1]
	ldr r0, [r7]
	ldr r2, _0800B144 @ =0x00025484
	adds r0, r0, r2
	movs r1, #0xd
	strb r1, [r0, #3]
	ldr r2, [r7]
	ldr r3, _0800B144 @ =0x00025484
	adds r2, r2, r3
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r7]
	adds r0, r0, r3
	movs r1, #4
	bl sub_080D8020
	ldr r0, [r7]
	ldr r1, _0800B14C @ =0x00025494
	adds r0, r0, r1
	movs r1, #4
	bl sub_080D8088
	movs r4, #0
	bl sub_080D7F28
	cmp r0, #0
	beq _0800B12E
	bl sub_080D7F48
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
_0800B12E:
	cmp r4, #0
	beq _0800B150
	ldr r0, [r7]
	ldr r2, _0800B14C @ =0x00025494
	adds r0, r0, r2
	ldrb r0, [r0, #3]
	movs r1, #1
	cmp r0, #0xd
	beq _0800B152
	b _0800B156
	.align 2, 0
_0800B144: .4byte 0x00025484
_0800B148: .4byte 0x00025485
_0800B14C: .4byte 0x00025494
_0800B150:
	movs r1, #0
_0800B152:
	cmp r1, #0
	bne _0800B17C
_0800B156:
	ldrh r1, [r6, #0x1e]
	movs r3, #0x1e
	ldrsh r0, [r6, r3]
	cmp r0, #5
	bgt _0800B168
	adds r0, r1, #1
	strh r0, [r6, #0x1e]
	movs r4, #2
	b _0800B182
_0800B168:
	movs r4, #0
	ldr r2, _0800B178 @ =gEwramData
	ldr r1, [r2]
	movs r0, #0x14
_0800B170:
	strb r0, [r1, #0x11]
	ldr r0, [r2]
	strb r4, [r0, #0x12]
	b _0800B5C4
	.align 2, 0
_0800B178: .4byte gEwramData
_0800B17C:
	movs r0, #0
	strh r0, [r6, #0x1e]
	movs r4, #1
_0800B182:
	cmp r4, #1
	beq _0800B188
	b _0800B5C4
_0800B188:
	ldr r7, _0800B1AC @ =gEwramData
	ldr r3, [r7]
	ldr r0, _0800B1B0 @ =0x00025494
	mov r8, r0
	adds r5, r3, r0
	ldr r2, [r5]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x1c
	adds r1, r0, #0
	ands r1, r4
	cmp r1, #0
	bne _0800B1B4
	movs r0, #0x14
	strb r0, [r3, #0x11]
	ldr r0, [r7]
	strb r1, [r0, #0x12]
	b _0800B5C4
	.align 2, 0
_0800B1AC: .4byte gEwramData
_0800B1B0: .4byte 0x00025494
_0800B1B4:
	movs r1, #0x14
	ldrsb r1, [r6, r1]
	adds r1, #1
	lsls r0, r2, #0x1c
	lsrs r0, r0, #0x1e
	cmp r1, r0
	beq _0800B1C4
	b _0800B5C4
_0800B1C4:
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	ldrb r5, [r5, #2]
	cmp r0, r5
	beq _0800B1D0
	b _0800B5C4
_0800B1D0:
	bl MultiSioSyncGetId
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0800B1FE
	ldr r2, [r7]
	mov r3, r8
	adds r0, r2, r3
	ldr r1, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1c
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0800B1F2
	b _0800B5C4
_0800B1F2:
	movs r0, #0
	movs r1, #0x10
	strb r1, [r2, #0x11]
	ldr r1, [r7]
	strb r0, [r1, #0x12]
	b _0800B5C4
_0800B1FE:
	bl MultiSioSyncGetId
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _0800B20C
	b _0800B5C4
_0800B20C:
	ldrh r0, [r6, #0x1c]
	adds r0, #1
	strh r0, [r6, #0x1c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	bgt _0800B21C
	b _0800B5C4
_0800B21C:
	strh r1, [r6, #0x1e]
	ldr r1, [r7]
	movs r0, #0xf
	strb r0, [r1, #0x11]
	ldr r1, [r7]
_0800B226:
	movs r0, #0
	strb r0, [r1, #0x12]
	b _0800B5C4
_0800B22C:
	movs r5, #0xdd
	lsls r5, r5, #2
	adds r0, r5, #0
	bl sub_08041434
	adds r7, r0, #0
	movs r4, #0
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	ldr r0, [r6, #0x24]
	movs r1, #0x20
	adds r1, r1, r6
	mov sl, r1
	adds r2, r6, #0
	adds r2, #0x21
	str r2, [sp, #0x10]
	adds r3, r6, #0
	adds r3, #0x22
	str r3, [sp, #0x14]
	adds r1, r6, #0
	adds r1, #0x23
	str r1, [sp, #0x18]
	cmp r0, r5
	beq _0800B2B4
	str r5, [r6, #0x24]
	movs r0, #0
	movs r1, #1
	movs r2, #0x20
	movs r3, #4
	bl sub_08040748
	bl sub_08040FE0
	movs r0, #0
	movs r1, #1
	movs r2, #0x1e
	movs r3, #4
	bl sub_08040748
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	movs r2, #0
	mov sb, r2
	adds r5, r7, #2
_0800B28A:
	adds r1, r4, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r3, sb
	lsrs r0, r3, #0x10
	bl sub_0804066C
	mov r1, r8
	adds r1, #1
	adds r0, r7, #0
	bl sub_08041318
	mov r8, r0
	adds r0, r5, r0
	ldrb r0, [r0]
	adds r4, #1
	cmp r0, #6
	beq _0800B2B0
	movs r4, #0
_0800B2B0:
	cmp r4, #0
	bne _0800B28A
_0800B2B4:
	mov r7, sl
	ldrb r3, [r7]
	ldr r0, [sp, #0x10]
	ldrb r5, [r0]
	ldr r7, _0800B35C @ =gEwramData
	ldr r1, [r7]
	ldr r2, _0800B360 @ =0x00025484
	adds r1, r1, r2
	movs r4, #3
	ands r3, r4
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r3
	strb r0, [r1]
	ldr r0, [r7]
	ldr r3, _0800B360 @ =0x00025484
	adds r0, r0, r3
	strb r5, [r0, #1]
	ldr r0, [sp, #0x14]
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r2, [sp, #0x18]
	ldrb r5, [r2]
	ldr r2, [r7]
	adds r2, r2, r3
	ands r1, r4
	lsls r1, r1, #2
	ldrb r3, [r2]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r7]
	ldr r3, _0800B364 @ =0x00025485
	adds r0, r0, r3
	strb r5, [r0, #1]
	ldr r0, [r7]
	ldr r1, _0800B360 @ =0x00025484
	adds r0, r0, r1
	movs r1, #0xd
	strb r1, [r0, #3]
	ldr r2, [r7]
	subs r3, #1
	adds r2, r2, r3
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x50
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r7]
	adds r0, r0, r3
	movs r1, #4
	bl sub_080D8020
	ldr r0, [r7]
	ldr r1, _0800B368 @ =0x00025494
	adds r0, r0, r1
	movs r1, #4
	bl sub_080D8088
	movs r4, #0
	bl sub_080D7F28
	cmp r0, #0
	beq _0800B348
	bl sub_080D7F48
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
_0800B348:
	cmp r4, #0
	beq _0800B36C
	ldr r0, [r7]
	ldr r2, _0800B368 @ =0x00025494
	adds r0, r0, r2
	ldrb r0, [r0, #3]
	movs r1, #1
	cmp r0, #0xd
	beq _0800B36E
	b _0800B372
	.align 2, 0
_0800B35C: .4byte gEwramData
_0800B360: .4byte 0x00025484
_0800B364: .4byte 0x00025485
_0800B368: .4byte 0x00025494
_0800B36C:
	movs r1, #0
_0800B36E:
	cmp r1, #0
	bne _0800B382
_0800B372:
	ldrh r1, [r6, #0x1e]
	movs r3, #0x1e
	ldrsh r0, [r6, r3]
	cmp r0, #5
	bgt _0800B388
	adds r0, r1, #1
	strh r0, [r6, #0x1e]
	b _0800B398
_0800B382:
	movs r0, #0
	strh r0, [r6, #0x1e]
	b _0800B398
_0800B388:
	ldr r2, _0800B394 @ =gEwramData
	ldr r1, [r2]
	movs r3, #0
	movs r0, #0x14
	b _0800B4C8
	.align 2, 0
_0800B394: .4byte gEwramData
_0800B398:
	ldr r2, _0800B3BC @ =gEwramData
	ldr r1, [r2]
	ldrb r0, [r1, #0x12]
	adds r0, #1
	strb r0, [r1, #0x12]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bhi _0800B3AC
	b _0800B5C4
_0800B3AC:
	ldr r1, [r2]
	movs r0, #0x10
	strb r0, [r1, #0x11]
	ldr r1, [r2]
_0800B3B4:
	movs r0, #0
	strb r0, [r1, #0x12]
	b _0800B5C4
	.align 2, 0
_0800B3BC: .4byte gEwramData
_0800B3C0:
	adds r2, r6, #0
	adds r2, #0x22
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _0800B448
	ldr r1, _0800B454 @ =0x084F0DC0
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r1, r6, #0
	adds r1, #0x23
	ldrb r1, [r1]
	ldr r0, [r0]
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_08041434
	mov r8, r0
	movs r7, #1
	mov sb, r7
	movs r5, #0
	subs r7, #2
	ldr r0, [r6, #0x24]
	cmp r0, r4
	beq _0800B448
	str r4, [r6, #0x24]
	movs r0, #0
	movs r1, #1
	movs r2, #0x20
	movs r3, #4
	bl sub_08040748
	bl sub_08040FE0
	movs r0, #0
	movs r1, #1
	movs r2, #0x1e
	movs r3, #4
	bl sub_08040748
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	movs r6, #0
	mov r4, r8
	adds r4, #2
_0800B420:
	mov r0, sb
	adds r1, r0, r5
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsrs r0, r6, #0x10
	bl sub_0804066C
	adds r1, r7, #1
	mov r0, r8
	bl sub_08041318
	adds r7, r0, #0
	adds r0, r4, r7
	ldrb r0, [r0]
	adds r5, #1
	cmp r0, #6
	beq _0800B444
	movs r5, #0
_0800B444:
	cmp r5, #0
	bne _0800B420
_0800B448:
	ldr r2, _0800B458 @ =gEwramData
	ldr r1, [r2]
	movs r3, #0
	movs r0, #0x11
	b _0800B4C8
	.align 2, 0
_0800B454: .4byte 0x084F0DC0
_0800B458: .4byte gEwramData
_0800B45C:
	adds r1, r6, #0
	adds r1, #0x22
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0800B484
	subs r0, #1
	adds r1, #1
	ldrb r1, [r1]
	movs r2, #1
	bl SoulInventory_AddAmountToSoulTotal
	ldr r0, _0800B4AC @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x85
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	bl SaveData_SaveSlotToSram
_0800B484:
	adds r1, r6, #0
	adds r1, #0x20
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800B4B0
	ldr r0, _0800B4AC @ =gEwramData
	ldr r0, [r0]
	movs r2, #0x85
	lsls r2, r2, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	ldrb r1, [r1]
	subs r1, #1
	adds r2, r6, #0
	adds r2, #0x21
	ldrb r2, [r2]
	bl sub_08013164
	b _0800B4C0
	.align 2, 0
_0800B4AC: .4byte gEwramData
_0800B4B0:
	ldr r0, _0800B4D0 @ =gEwramData
	ldr r0, [r0]
	movs r3, #0x85
	lsls r3, r3, #3
	adds r0, r0, r3
	ldrb r0, [r0]
	bl SaveData_SaveSlotToSram
_0800B4C0:
	ldr r2, _0800B4D0 @ =gEwramData
	ldr r1, [r2]
	movs r3, #0
	movs r0, #0x12
_0800B4C8:
	strb r0, [r1, #0x11]
	ldr r0, [r2]
	strb r3, [r0, #0x12]
	b _0800B5C4
	.align 2, 0
_0800B4D0: .4byte gEwramData
_0800B4D4:
	ldr r5, _0800B560 @ =0x00000375
	adds r0, r5, #0
	bl sub_08041434
	mov r8, r0
	movs r7, #1
	mov sb, r7
	movs r4, #0
	subs r7, #2
	ldr r0, [r6, #0x24]
	cmp r0, r5
	beq _0800B540
	str r5, [r6, #0x24]
	movs r0, #0
	movs r1, #1
	movs r2, #0x20
	movs r3, #4
	bl sub_08040748
	bl sub_08040FE0
	movs r0, #0
	movs r1, #1
	movs r2, #0x1e
	movs r3, #4
	bl sub_08040748
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	movs r6, #0
	mov r5, r8
	adds r5, #2
_0800B518:
	mov r0, sb
	adds r1, r0, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsrs r0, r6, #0x10
	bl sub_0804066C
	adds r1, r7, #1
	mov r0, r8
	bl sub_08041318
	adds r7, r0, #0
	adds r0, r5, r7
	ldrb r0, [r0]
	adds r4, #1
	cmp r0, #6
	beq _0800B53C
	movs r4, #0
_0800B53C:
	cmp r4, #0
	bne _0800B518
_0800B540:
	ldr r3, _0800B564 @ =gEwramData
	ldr r0, [r3]
	ldrb r1, [r0, #0x12]
	adds r2, r1, #1
	strb r2, [r0, #0x12]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0x2f
	bls _0800B5C4
	ldr r1, [r3]
	movs r2, #0
	movs r0, #0x13
	strb r0, [r1, #0x11]
	ldr r0, [r3]
	strb r2, [r0, #0x12]
	b _0800B5C4
	.align 2, 0
_0800B560: .4byte 0x00000375
_0800B564: .4byte gEwramData
_0800B568:
	adds r0, r6, #0
	adds r0, #0x20
	movs r4, #0
	strb r4, [r0]
	adds r0, #2
	strb r4, [r0]
	ldr r1, [r7]
	ldr r2, _0800B5D8 @ =0x00025484
	adds r1, r1, r2
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r0, [r7]
	ldr r3, _0800B5D8 @ =0x00025484
	adds r0, r0, r3
	strb r4, [r0, #1]
	ldr r0, _0800B5DC @ =gDisplayRegisters
	adds r0, #0x48
	movs r5, #0
	ldr r1, _0800B5E0 @ =0x00003FFF
	strh r1, [r0]
	mov r0, r8
	bl sub_08008300
	ldr r0, [r7]
	movs r1, #0xce
	lsls r1, r1, #3
	adds r0, r0, r1
	bl EntityDelete
	ldr r0, [r7]
	ldr r2, _0800B5E4 @ =0x000007FC
	adds r0, r0, r2
	bl EntityDelete
	ldr r0, [r7]
	strh r4, [r0, #4]
	bl sub_080D7FD0
	ldr r1, [r7]
	movs r0, #3
	strb r0, [r1, #0x11]
	ldr r0, [r7]
	strb r5, [r0, #0x12]
_0800B5C4:
	ldr r0, [sp, #0xc]
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800B5D8: .4byte 0x00025484
_0800B5DC: .4byte gDisplayRegisters
_0800B5E0: .4byte 0x00003FFF
_0800B5E4: .4byte 0x000007FC
.syntax divided
