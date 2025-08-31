	.include "asm/gba_constants.inc"
    .include "asm/macros.inc"

	.syntax unified

	thumb_func_start ReadSramFast_Core
ReadSramFast_Core: @ 0x080D8164
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r2, _080D819C @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _080D81A0 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	subs r3, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _080D8194
	adds r1, r0, #0
_080D8186:
	ldrb r0, [r5]
	strb r0, [r4]
	adds r5, #1
	adds r4, #1
	subs r3, #1
	cmp r3, r1
	bne _080D8186
_080D8194:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080D819C: .4byte 0x04000204
_080D81A0: .4byte 0x0000FFFC

	thumb_func_start WriteSramFast
WriteSramFast: @ 0x080D81A4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r2, _080D81DC @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _080D81E0 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	subs r3, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _080D81D4
	adds r1, r0, #0
_080D81C6:
	ldrb r0, [r5]
	strb r0, [r4]
	adds r5, #1
	adds r4, #1
	subs r3, #1
	cmp r3, r1
	bne _080D81C6
_080D81D4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080D81DC: .4byte 0x04000204
_080D81E0: .4byte 0x0000FFFC

	thumb_func_start VerifySramFast_Core
VerifySramFast_Core: @ 0x080D81E4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r2, _080D8218 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _080D821C @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	subs r3, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _080D8226
	adds r2, r0, #0
_080D8206:
	ldrb r1, [r4]
	ldrb r0, [r5]
	adds r5, #1
	adds r4, #1
	cmp r1, r0
	beq _080D8220
	subs r0, r4, #1
	b _080D8228
	.align 2, 0
_080D8218: .4byte 0x04000204
_080D821C: .4byte 0x0000FFFC
_080D8220:
	subs r3, #1
	cmp r3, r2
	bne _080D8206
_080D8226:
	movs r0, #0
_080D8228:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start SetSramFastFunc
SetSramFastFunc: @ 0x080D8230
	ldr r2, _080D8244 @ =ReadSramFast_Core
	movs r0, #1
	eors r2, r0
	ldr r3, _080D8248 @ =readSramFast_Work
	ldr r0, _080D824C @ =WriteSramFast
	ldr r1, _080D8244 @ =ReadSramFast_Core
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _080D825C
	.align 2, 0
_080D8244: .4byte ReadSramFast_Core
_080D8248: .4byte readSramFast_Work
_080D824C: .4byte WriteSramFast
_080D8250:
	ldrh r0, [r2]
	strh r0, [r3]
	adds r2, #2
	adds r3, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_080D825C:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _080D8250
	ldr r1, _080D827C @ =gReadSramFast
	ldr r0, _080D8280 @ =readSramFast_Work+0x1
	str r0, [r1]
	ldr r2, _080D8284 @ =VerifySramFast_Core
	movs r0, #1
	eors r2, r0
	ldr r3, _080D8288 @ =verifySramFast_Work
	ldr r0, _080D828C @ =SetSramFastFunc
	ldr r1, _080D8284 @ =VerifySramFast_Core
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _080D829C
	.align 2, 0
_080D827C: .4byte gReadSramFast
_080D8280: .4byte readSramFast_Work+0x1
_080D8284: .4byte VerifySramFast_Core
_080D8288: .4byte verifySramFast_Work
_080D828C: .4byte SetSramFastFunc
_080D8290:
	ldrh r0, [r2]
	strh r0, [r3]
	adds r2, #2
	adds r3, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_080D829C:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _080D8290
	ldr r1, _080D82B8 @ =gVerifySramFast
	ldr r0, _080D82BC @ =verifySramFast_Work+0x1
	str r0, [r1]
	ldr r2, _080D82C0 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _080D82C4 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	bx lr
	.align 2, 0
_080D82B8: .4byte gVerifySramFast
_080D82BC: .4byte verifySramFast_Work+0x1
_080D82C0: .4byte 0x04000204
_080D82C4: .4byte 0x0000FFFC

	thumb_func_start WriteAndVerifySramFast
WriteAndVerifySramFast: @ 0x080D82C8
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	movs r7, #0
	b _080D82DA
_080D82D4:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080D82DA:
	cmp r7, #2
	bhi _080D82FC
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl WriteSramFast
	ldr r0, _080D8304 @ =gVerifySramFast
	ldr r3, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl _call_via_r3
	adds r3, r0, #0
	cmp r3, #0
	bne _080D82D4
_080D82FC:
	adds r0, r3, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080D8304: .4byte gVerifySramFast
