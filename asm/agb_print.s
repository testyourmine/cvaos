	.include "asm/gba_constants.inc"
    .include "asm/macros.inc"

	.syntax unified

	thumb_func_start AGBPrintInit
AGBPrintInit: @ 0x080D8308
	push {r4, r7, lr}
	sub sp, #0x10
	mov r7, sp
	ldr r0, _080D8384 @ =0x09FE20F8
	str r0, [r7]
	ldr r0, _080D8388 @ =0x04000204
	str r0, [r7, #4]
	ldr r0, _080D838C @ =0x09FE2FFE
	str r0, [r7, #8]
	adds r0, r7, #0
	adds r0, #0xc
	ldr r1, [r7, #4]
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, [r7, #4]
	movs r2, #0xc0
	lsls r2, r2, #5
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, [r7, #8]
	movs r1, #0x20
	strh r1, [r0]
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r7]
	ldrh r3, [r2, #6]
	movs r4, #0
	ands r3, r4
	adds r4, r3, #0
	strh r4, [r2, #6]
	ldrh r2, [r1, #4]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	strh r3, [r1, #4]
	ldrh r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7]
	ldrh r1, [r0, #2]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xfd
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #2]
	ldr r0, [r7, #8]
	movs r1, #0
	strh r1, [r0]
	ldr r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #0xc
	ldrh r2, [r1]
	strh r2, [r0]
	add sp, #0x10
	pop {r4, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D8384: .4byte 0x09FE20F8
_080D8388: .4byte 0x04000204
_080D838C: .4byte 0x09FE2FFE

	thumb_func_start AGBPutcInternal
AGBPutcInternal: @ 0x080D8390
	push {r4, r7, lr}
	sub sp, #0x14
	mov r7, sp
	adds r1, r7, #0
	strb r0, [r1]
	ldr r0, _080D8410 @ =0x09FE20F8
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	ldrh r1, [r0, #2]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	lsls r1, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x14
	adds r0, r1, r2
	str r0, [r7, #8]
	ldr r0, _080D8414 @ =0x09FE2FFE
	str r0, [r7, #0xc]
	adds r0, r7, #0
	adds r0, #0x10
	ldr r1, [r7, #4]
	ldrh r2, [r1, #6]
	lsls r1, r2, #0x10
	lsrs r2, r1, #0x10
	lsrs r1, r2, #1
	adds r3, r1, #0
	lsls r2, r3, #0x10
	lsrs r1, r2, #0x10
	adds r2, r1, #0
	lsls r1, r2, #1
	ldr r2, [r7, #8]
	adds r1, r1, r2
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, [r7, #0xc]
	movs r1, #0x20
	strh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x10
	ldr r1, [r7, #4]
	ldrh r2, [r1, #6]
	movs r3, #1
	adds r1, r2, #0
	ands r1, r3
	adds r3, r1, #0
	lsls r2, r3, #0x10
	lsrs r1, r2, #0x10
	cmp r1, #0
	beq _080D8418
	adds r1, r7, #0
	adds r1, #0x10
	ldrh r2, [r1]
	movs r3, #0xff
	adds r1, r2, #0
	ands r1, r3
	adds r2, r7, #0
	ldrb r3, [r2]
	adds r2, r3, #0
	lsls r3, r2, #8
	adds r2, r3, #0
	adds r3, r1, #0
	orrs r3, r2
	adds r1, r3, #0
	b _080D8430
	.align 2, 0
_080D8410: .4byte 0x09FE20F8
_080D8414: .4byte 0x09FE2FFE
_080D8418:
	adds r2, r7, #0
	adds r2, #0x10
	ldrh r3, [r2]
	movs r4, #0xff
	lsls r4, r4, #8
	adds r2, r3, #0
	ands r2, r4
	adds r3, r7, #0
	ldrb r4, [r3]
	adds r3, r4, #0
	orrs r3, r2
	adds r1, r3, #0
_080D8430:
	strh r1, [r0]
	ldr r0, [r7, #4]
	ldrh r1, [r0, #6]
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	lsrs r0, r1, #1
	adds r2, r0, #0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	adds r1, r0, #0
	lsls r0, r1, #1
	ldr r1, [r7, #8]
	adds r0, r0, r1
	adds r1, r7, #0
	adds r1, #0x10
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r1, [r7, #4]
	ldr r0, [r7, #4]
	ldr r1, [r7, #4]
	ldrh r2, [r1, #6]
	adds r1, r2, #1
	ldrh r2, [r0, #6]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0, #6]
	ldr r0, [r7, #0xc]
	movs r1, #0
	strh r1, [r0]
	add sp, #0x14
	pop {r4, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start AGBPutc
AGBPutc: @ 0x080D847C
	push {r7, lr}
	sub sp, #0x10
	mov r7, sp
	adds r1, r7, #0
	strb r0, [r1]
	ldr r0, _080D84D4 @ =0x04000204
	str r0, [r7, #4]
	adds r0, r7, #0
	adds r0, #8
	ldr r1, [r7, #4]
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, [r7, #4]
	movs r2, #0xc0
	lsls r2, r2, #5
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, r7, #0
	ldrb r1, [r0]
	adds r0, r1, #0
	bl AGBPutcInternal
	ldr r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _080D84D8 @ =0x09FE20F8
	str r0, [r7, #0xc]
	ldr r1, [r7, #0xc]
	ldrh r0, [r1, #6]
	ldr r1, [r7, #0xc]
	ldrh r2, [r1, #4]
	subs r1, r2, #1
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	cmp r0, r1
	bne _080D84CC
	bl AGBPrintFlush1Block
_080D84CC:
	add sp, #0x10
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D84D4: .4byte 0x04000204
_080D84D8: .4byte 0x09FE20F8

	thumb_func_start AGBPrint
AGBPrint: @ 0x080D84DC
	push {r7, lr}
	sub sp, #0x10
	mov r7, sp
	str r0, [r7]
	ldr r0, _080D850C @ =0x09FE20F8
	str r0, [r7, #4]
	ldr r0, _080D8510 @ =0x04000204
	str r0, [r7, #8]
	adds r0, r7, #0
	adds r0, #0xc
	ldr r1, [r7, #8]
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, [r7, #8]
	movs r2, #0xc0
	lsls r2, r2, #5
	adds r1, r2, #0
	strh r1, [r0]
_080D8500:
	ldr r0, [r7]
	ldrb r1, [r0]
	cmp r1, #0
	bne _080D8514
	b _080D8526
	.align 2, 0
_080D850C: .4byte 0x09FE20F8
_080D8510: .4byte 0x04000204
_080D8514:
	ldr r0, [r7]
	ldrb r1, [r0]
	adds r0, r1, #0
	bl AGBPutc
	ldr r0, [r7]
	adds r1, r0, #1
	str r1, [r7]
	b _080D8500
_080D8526:
	ldr r0, [r7, #8]
	adds r1, r7, #0
	adds r1, #0xc
	ldrh r2, [r1]
	strh r2, [r0]
	add sp, #0x10
	pop {r7}
	pop {r0}
	bx r0

	thumb_func_start AGBPrintf
AGBPrintf: @ 0x080D8538
	push {r0, r1, r2, r3}
	push {r7, lr}
	sub sp, #0x104
	mov r7, sp
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r7, r1
	adds r1, r7, #0
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r7, r3
	str r0, [r2]
	adds r0, r7, #0
	adds r1, r7, #0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r3, r7, r1
	ldr r2, [r3]
	movs r3, #0x86
	lsls r3, r3, #1
	adds r3, r3, r7
	ldr r1, [r3]
	bl vsprintf
	adds r1, r7, #0
	adds r0, r1, #0
	bl AGBPrint
	add sp, #0x104
	pop {r7}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0

	thumb_func_start AGBPrintTransferDataInternal
AGBPrintTransferDataInternal: @ 0x080D857C
	push {r4, r7, lr}
	sub sp, #0x20
	mov r7, sp
	str r0, [r7]
	ldr r0, _080D85E4 @ =0x09FE2FFE
	str r0, [r7, #0x18]
	ldr r0, _080D85E8 @ =0x09FE20F8
	str r0, [r7, #0x1c]
	ldr r0, _080D85EC @ =0x09FE209D
	str r0, [r7, #4]
	ldr r0, _080D85F0 @ =0x04000208
	str r0, [r7, #8]
	adds r0, r7, #0
	adds r0, #0xc
	ldr r1, [r7, #8]
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _080D85F4 @ =0x04000204
	str r0, [r7, #0x10]
	adds r0, r7, #0
	adds r0, #0x14
	ldr r1, [r7, #0x10]
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, [r7, #8]
	adds r1, r7, #0
	adds r1, #0xc
	ldrh r2, [r1]
	ldr r3, _080D85F8 @ =0x0000FFFE
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7, #0x10]
	movs r2, #0xc0
	lsls r2, r2, #5
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, [r7]
	cmp r0, #0
	beq _080D8612
_080D85CE:
	ldr r1, [r7, #0x1c]
	ldr r0, [r7, #0x1c]
	ldrh r1, [r1, #6]
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	ldrh r0, [r0, #4]
	lsls r2, r0, #0x10
	lsrs r0, r2, #0x10
	cmp r1, r0
	bne _080D85FC
	b _080D8610
	.align 2, 0
_080D85E4: .4byte 0x09FE2FFE
_080D85E8: .4byte 0x09FE20F8
_080D85EC: .4byte 0x09FE209D
_080D85F0: .4byte 0x04000208
_080D85F4: .4byte 0x04000204
_080D85F8: .4byte 0x0000FFFE
_080D85FC:
	ldr r0, [r7, #0x18]
	movs r1, #0x20
	strh r1, [r0]
	ldr r4, [r7, #4]
	bl _call_via_r4
	ldr r0, [r7, #0x18]
	movs r1, #0
	strh r1, [r0]
	b _080D85CE
_080D8610:
	b _080D8638
_080D8612:
	ldr r1, [r7, #0x1c]
	ldr r0, [r7, #0x1c]
	ldrh r1, [r1, #6]
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	ldrh r0, [r0, #4]
	lsls r2, r0, #0x10
	lsrs r0, r2, #0x10
	cmp r1, r0
	beq _080D8638
	ldr r0, [r7, #0x18]
	movs r1, #0x20
	strh r1, [r0]
	ldr r4, [r7, #4]
	bl _call_via_r4
	ldr r0, [r7, #0x18]
	movs r1, #0
	strh r1, [r0]
_080D8638:
	ldr r0, [r7, #0x10]
	adds r1, r7, #0
	adds r1, #0x14
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, [r7, #8]
	adds r1, r7, #0
	adds r1, #0xc
	ldrh r2, [r1]
	strh r2, [r0]
	add sp, #0x20
	pop {r4, r7}
	pop {r0}
	bx r0

	thumb_func_start AGBPrintFlush1Block
AGBPrintFlush1Block: @ 0x080D8654
	push {r7, lr}
	mov r7, sp
	movs r0, #0
	bl AGBPrintTransferDataInternal
	pop {r7}
	pop {r0}
	bx r0

	thumb_func_start AGBPrintFlush
AGBPrintFlush: @ 0x080D8664
	push {r7, lr}
	mov r7, sp
	movs r0, #1
	bl AGBPrintTransferDataInternal
	pop {r7}
	pop {r0}
	bx r0

	thumb_func_start AGBAssert
AGBAssert: @ 0x080D8674
	push {r7, lr}
	sub sp, #0x10
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	str r2, [r7, #8]
	str r3, [r7, #0xc]
	ldr r0, [r7, #0xc]
	cmp r0, #0
	beq _080D86A0
	ldr r0, _080D869C @ =0x0827B25C
	ldr r2, [r7, #4]
	ldr r3, [r7, #8]
	ldr r1, [r7]
	bl AGBPrintf
	bl AGBPrintFlush
	.hword 0xEFFF
	b _080D86AC
	.align 2, 0
_080D869C: .4byte 0x0827B25C
_080D86A0:
	ldr r0, _080D86B4 @ =0x0827B290
	ldr r2, [r7, #4]
	ldr r3, [r7, #8]
	ldr r1, [r7]
	bl AGBPrintf
_080D86AC:
	add sp, #0x10
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D86B4: .4byte 0x0827B290
