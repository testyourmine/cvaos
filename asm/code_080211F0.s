	.include "asm/gba_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	thumb_func_start sub_080211F0
sub_080211F0: @ 0x080211F0
	bx lr
	.align 2, 0

	thumb_func_start sub_080211F4
sub_080211F4: @ 0x080211F4
	ldr r0, _0802120C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08021210 @ =0x00013110
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r2, #0x10]
	bx lr
	.align 2, 0
_0802120C: .4byte gEwramData
_08021210: .4byte 0x00013110

	thumb_func_start sub_08021214
sub_08021214: @ 0x08021214
	push {lr}
	ldr r2, _0802123C @ =gEwramData
	ldr r2, [r2]
	ldr r3, _08021240 @ =0x00013110
	adds r2, r2, r3
	ldr r3, [r2]
	str r0, [r3, #0x48]
	ldr r0, [r2]
	str r1, [r0, #0x4c]
	ldr r2, [r2]
	ldr r0, [r2, #0x48]
	ldr r1, _08021244 @ =0xFFFFF000
	cmp r0, #0
	bge _08021234
	movs r1, #0x80
	lsls r1, r1, #5
_08021234:
	str r1, [r2, #0x50]
	pop {r0}
	bx r0
	.align 2, 0
_0802123C: .4byte gEwramData
_08021240: .4byte 0x00013110
_08021244: .4byte 0xFFFFF000

	thumb_func_start sub_08021248
sub_08021248: @ 0x08021248
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _0802126C @ =gEwramData
	ldr r2, [r0]
	ldr r4, _08021270 @ =0x000131D4
	adds r0, r2, r4
	ldrh r0, [r0]
	cmp r0, #3
	bne _08021266
	adds r4, #0xc
	adds r0, r2, r4
	str r3, [r0]
	ldr r3, _08021274 @ =0x000131E4
	adds r0, r2, r3
	str r1, [r0]
_08021266:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802126C: .4byte gEwramData
_08021270: .4byte 0x000131D4
_08021274: .4byte 0x000131E4

	thumb_func_start sub_08021278
sub_08021278: @ 0x08021278
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r6, _080212B8 @ =gEwramData
	ldr r3, [r6]
	ldr r0, _080212BC @ =0x000131B4
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, #6
	bhi _080212B0
	adds r1, r0, #0
	lsls r1, r1, #2
	ldr r7, _080212C0 @ =0x00013170
	adds r0, r3, r7
	adds r0, r0, r1
	str r4, [r0]
	ldr r1, _080212C4 @ =0x000131AC
	adds r0, r3, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	strb r5, [r0]
	ldr r1, [r6]
	adds r7, #0x44
	adds r1, r1, r7
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080212B0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080212B8: .4byte gEwramData
_080212BC: .4byte 0x000131B4
_080212C0: .4byte 0x00013170
_080212C4: .4byte 0x000131AC

	thumb_func_start sub_080212C8
sub_080212C8: @ 0x080212C8
	push {lr}
	ldr r0, _080212E4 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _080212E8 @ =0x00013168
	adds r1, r0, r2
	subs r2, #0x58
	adds r0, r0, r2
	ldr r1, [r1]
	ldr r0, [r0]
	cmp r1, r0
	beq _080212EC
	movs r0, #0
	b _080212EE
	.align 2, 0
_080212E4: .4byte gEwramData
_080212E8: .4byte 0x00013168
_080212EC:
	ldr r0, [r1, #0x10]
_080212EE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080212F4
sub_080212F4: @ 0x080212F4
	push {lr}
	subs r0, #1
	bl sub_08032AB8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r1}
	bx r1

	thumb_func_start sub_08021304
sub_08021304: @ 0x08021304
	push {lr}
	ldr r0, _08021330 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08021334 @ =0x00013110
	adds r0, r0, r1
	ldr r2, [r0]
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _0802133C
	ldr r1, [r2, #0x48]
	cmp r1, #0
	bge _0802131E
	rsbs r1, r1, #0
_0802131E:
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	bgt _0802133C
	ldr r0, [r2, #0x10]
	ldr r1, _08021338 @ =0x30000120
	ands r0, r1
	b _0802133E
	.align 2, 0
_08021330: .4byte gEwramData
_08021334: .4byte 0x00013110
_08021338: .4byte 0x30000120
_0802133C:
	movs r0, #1
_0802133E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08021344
sub_08021344: @ 0x08021344
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	bl sub_0804C3C8
	ldr r1, _08021380 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _08021384 @ =0x00013269
	adds r0, r0, r2
	strb r4, [r0]
	ldr r0, [r1]
	adds r2, #1
	adds r0, r0, r2
	strb r5, [r0]
	ldr r0, [r1]
	ldr r1, _08021388 @ =0x0001326B
	adds r0, r0, r1
	strb r6, [r0]
	bl sub_080213BC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08021380: .4byte gEwramData
_08021384: .4byte 0x00013269
_08021388: .4byte 0x0001326B

	thumb_func_start sub_0802138C
sub_0802138C: @ 0x0802138C
	ldr r1, _0802139C @ =gEwramData
	ldr r1, [r1]
	ldr r2, _080213A0 @ =0x00013110
	adds r1, r1, r2
	ldr r1, [r1]
	adds r1, #0x40
	strh r0, [r1]
	bx lr
	.align 2, 0
_0802139C: .4byte gEwramData
_080213A0: .4byte 0x00013110

	thumb_func_start sub_080213A4
sub_080213A4: @ 0x080213A4
	ldr r1, _080213B4 @ =gEwramData
	ldr r1, [r1]
	ldr r2, _080213B8 @ =0x00013110
	adds r1, r1, r2
	ldr r1, [r1]
	adds r1, #0x44
	strh r0, [r1]
	bx lr
	.align 2, 0
_080213B4: .4byte gEwramData
_080213B8: .4byte 0x00013110

	thumb_func_start sub_080213BC
sub_080213BC: @ 0x080213BC
	push {lr}
	ldr r0, _080213E4 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _080213E8 @ =0x0001327E
	adds r0, r1, r2
	ldrh r2, [r0]
	ldr r3, _080213EC @ =0x0001327A
	adds r0, r1, r3
	strh r2, [r0]
	ldr r2, _080213F0 @ =0x00013280
	adds r0, r1, r2
	ldrh r0, [r0]
	adds r3, #2
	adds r1, r1, r3
	strh r0, [r1]
	movs r0, #7
	bl sub_08021E50
	pop {r0}
	bx r0
	.align 2, 0
_080213E4: .4byte gEwramData
_080213E8: .4byte 0x0001327E
_080213EC: .4byte 0x0001327A
_080213F0: .4byte 0x00013280

	thumb_func_start sub_080213F4
sub_080213F4: @ 0x080213F4
	push {lr}
	ldr r0, _08021424 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _08021428 @ =0x0000042C
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0802141E
	ldr r1, _0802142C @ =0x00013220
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0802141E
	ldrh r0, [r0, #0x34]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xc6
	bls _08021430
_0802141E:
	movs r0, #0
	b _08021432
	.align 2, 0
_08021424: .4byte gEwramData
_08021428: .4byte 0x0000042C
_0802142C: .4byte 0x00013220
_08021430:
	movs r0, #1
_08021432:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08021438
sub_08021438: @ 0x08021438
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	adds r6, r3, #0
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	ldr r0, _08021468 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0802146C @ =0x000131B8
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08021464
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, r3
	bne _08021470
_08021464:
	movs r0, #0
	b _0802148A
	.align 2, 0
_08021468: .4byte gEwramData
_0802146C: .4byte 0x000131B8
_08021470:
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #1
	adds r3, r5, #0
	bl sub_0803F2C8
	movs r0, #0xff
	strh r0, [r4, #0x20]
	ldr r0, [r4, #0x10]
	ldr r1, _08021490 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	movs r0, #1
_0802148A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08021490: .4byte 0xFFDFFFFF

	thumb_func_start sub_08021494
sub_08021494: @ 0x08021494
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r4, [r6, #0x40]
	ldr r5, [r6, #0x44]
	adds r1, r6, #0
	adds r1, #0x42
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	adds r1, #4
	adds r0, r6, #0
	adds r0, #0x25
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	adds r0, r6, #0
	bl sub_0803B9D0
	str r4, [r6, #0x40]
	str r5, [r6, #0x44]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080214D0
sub_080214D0: @ 0x080214D0
	push {lr}
	bl sub_0804C3C8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080214DC
sub_080214DC: @ 0x080214DC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r6, #0x58
	ldrb r3, [r6]
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	movs r5, #1
	adds r2, r5, #0
	eors r2, r1
	lsls r2, r2, #6
	movs r4, #0x41
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r1, r3
	orrs r1, r2
	strb r1, [r6]
	bl sub_0803B9D0
	ldrb r1, [r6]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1f
	eors r5, r0
	lsls r5, r5, #6
	ands r4, r1
	orrs r4, r5
	strb r4, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08021518
sub_08021518: @ 0x08021518
	ldr r1, _08021528 @ =gEwramData
	ldr r1, [r1]
	ldr r2, _0802152C @ =0x00013110
	adds r1, r1, r2
	ldr r1, [r1]
	strb r0, [r1, #0x1e]
	bx lr
	.align 2, 0
_08021528: .4byte gEwramData
_0802152C: .4byte 0x00013110

	thumb_func_start sub_08021530
sub_08021530: @ 0x08021530
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, r0, #0
	cmp r0, #3
	bne _08021560
	ldr r2, _08021554 @ =gEwramData
	ldr r0, [r2]
	ldr r1, _08021558 @ =0x000131EE
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, _0802155C @ =0x080E1320
	ldrh r0, [r0, #6]
	adds r4, r1, #0
	muls r4, r0, r4
	lsrs r4, r4, #4
	b _08021624
	.align 2, 0
_08021554: .4byte gEwramData
_08021558: .4byte 0x000131EE
_0802155C: .4byte 0x080E1320
_08021560:
	cmp r0, #5
	bne _080215DC
	ldr r4, _080215A8 @ =gEwramData
	ldr r2, [r4]
	ldr r1, _080215AC @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080215B8
	bl sub_0802D244
	ldr r4, [r4]
	ldr r2, _080215B0 @ =0x000131F2
	adds r1, r4, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	ldrh r5, [r0, #0xa]
	adds r0, r1, #0
	muls r0, r5, r0
	movs r1, #0xa
	bl __divsi3
	ldr r1, _080215B4 @ =0x000131F6
	adds r4, r4, r1
	ldrh r1, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x12
	adds r0, r0, r1
	lsls r1, r5, #2
	adds r0, r0, r1
	lsls r5, r5, #1
	adds r4, r0, r5
	b _080215C8
	.align 2, 0
_080215A8: .4byte gEwramData
_080215AC: .4byte 0x000004CC
_080215B0: .4byte 0x000131F2
_080215B4: .4byte 0x000131F6
_080215B8:
	ldr r3, _080215D0 @ =0x000133EE
	adds r0, r2, r3
	movs r4, #0
	ldrsh r1, [r0, r4]
	ldr r0, _080215D4 @ =0x080E1320
	ldrh r0, [r0, #6]
	adds r4, r1, #0
	muls r4, r0, r4
_080215C8:
	lsrs r4, r4, #4
	ldr r2, _080215D8 @ =gEwramData
	b _08021624
	.align 2, 0
_080215D0: .4byte 0x000133EE
_080215D4: .4byte 0x080E1320
_080215D8: .4byte gEwramData
_080215DC:
	cmp r0, #6
	bne _08021608
	ldr r3, _080215FC @ =gEwramData
	ldr r0, [r3]
	ldr r2, _08021600 @ =0x000131C2
	adds r1, r0, r2
	ldrh r1, [r1]
	lsrs r2, r1, #3
	ldr r4, _08021604 @ =0x000131F6
	adds r0, r0, r4
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	muls r0, r2, r0
	adds r4, r1, r0
	b _08021622
	.align 2, 0
_080215FC: .4byte gEwramData
_08021600: .4byte 0x000131C2
_08021604: .4byte 0x000131F6
_08021608:
	ldr r3, _08021648 @ =gEwramData
	ldr r0, [r3]
	ldr r1, _0802164C @ =0x000131F2
	adds r0, r0, r1
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r1, _08021650 @ =0x080E1320
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r4, r2, #0
	muls r4, r0, r4
	lsrs r4, r4, #4
_08021622:
	adds r2, r3, #0
_08021624:
	ldr r0, [r2]
	adds r0, #0xa1
	ldrb r1, [r0]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _0802163C
	lsls r0, r4, #3
	movs r1, #0xa
	bl __udivsi3
	adds r4, r0, #0
_0802163C:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08021648: .4byte gEwramData
_0802164C: .4byte 0x000131F2
_08021650: .4byte 0x080E1320

	thumb_func_start sub_08021654
sub_08021654: @ 0x08021654
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	movs r0, #0
	mov sb, r0
	ldr r1, _080216D8 @ =gEwramData
	mov r8, r1
	ldr r0, [r1]
	ldr r2, _080216DC @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	beq _08021676
	b _080218E0
_08021676:
	ldrh r0, [r7, #2]
	bl sub_0806E268
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _080216C0
	mov r3, r8
	ldr r0, [r3]
	ldr r4, _080216DC @ =0x00013110
	adds r0, r0, r4
	ldr r0, [r0]
	adds r0, #0x42
	movs r1, #0
	ldrsh r5, [r0, r1]
	movs r0, #8
	bl sub_0802D5EC
	adds r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	bl sub_0801CFB0
	adds r4, r0, #0
	movs r0, #4
	bl sub_0802D5EC
	adds r4, r4, r0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_0806E664
_080216C0:
	mov r3, r8
	ldr r2, [r3]
	adds r0, r2, #0
	adds r0, #0xa1
	ldrb r1, [r0]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	bne _080216E0
	ldrh r0, [r7]
	lsls r3, r0, #2
	b _08021704
	.align 2, 0
_080216D8: .4byte gEwramData
_080216DC: .4byte 0x00013110
_080216E0:
	ldr r4, _08021784 @ =0x000131FE
	adds r0, r2, r4
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x11
	asrs r0, r0, #0x12
	adds r1, r1, r0
	ldr r3, _08021788 @ =0x0001327E
	adds r0, r2, r3
	ldrh r0, [r0]
	lsrs r0, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldrh r2, [r7]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsrs r1, r1, #0x11
	adds r3, r0, r1
_08021704:
	ldr r2, _0802178C @ =gEwramData
	ldr r1, [r2]
	ldr r4, _08021790 @ =0x000131F0
	adds r0, r1, r4
	movs r4, #0
	ldrsh r0, [r0, r4]
	lsls r0, r0, #1
	subs r3, r3, r0
	asrs r4, r3, #1
	ldr r0, _08021794 @ =0x000131FA
	adds r1, r1, r0
	ldrh r1, [r1]
	cmp r1, #0
	beq _0802172A
	ldrh r0, [r7, #2]
	ands r0, r1
	cmp r0, #0
	beq _0802172A
	asrs r4, r3, #2
_0802172A:
	ldr r2, [r2]
	ldr r1, _08021798 @ =0x00013270
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0802173C
	lsls r4, r4, #1
_0802173C:
	cmp r4, #0
	bgt _08021742
	movs r4, #1
_08021742:
	ldr r3, _0802179C @ =0x00013260
	adds r0, r2, r3
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _08021772
	ldr r1, _080217A0 @ =0x0001326C
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0x17
	bne _0802176C
	bl sub_08000A90
	movs r1, #0xf
	ands r1, r0
	cmp r1, #3
	bhi _0802176C
	movs r2, #1
	mov sb, r2
_0802176C:
	mov r3, sb
	cmp r3, #0
	beq _080217A8
_08021772:
	ldr r0, _080217A4 @ =0x0000013B
	bl sub_080D7910
	movs r0, #0
	movs r1, #0
	bl sub_08042A7C
	b _080218E0
	.align 2, 0
_08021784: .4byte 0x000131FE
_08021788: .4byte 0x0001327E
_0802178C: .4byte gEwramData
_08021790: .4byte 0x000131F0
_08021794: .4byte 0x000131FA
_08021798: .4byte 0x00013270
_0802179C: .4byte 0x00013260
_080217A0: .4byte 0x0001326C
_080217A4: .4byte 0x0000013B
_080217A8:
	ldr r6, _080218EC @ =gEwramData
	ldr r2, [r6]
	ldr r0, _080218F0 @ =0x0001327A
	adds r1, r2, r0
	ldrh r0, [r1]
	subs r0, r0, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080217E8
	mov r3, sb
	strh r3, [r1]
	ldr r0, _080218F4 @ =0x0000042C
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2]
	movs r0, #7
	bl sub_08021E50
	movs r0, #0
	bl sub_0800C5A8
	ldr r1, [r6]
	ldr r2, _080218F8 @ =0x0000A074
	adds r1, r1, r2
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
_080217E8:
	ldr r1, [r6]
	ldr r3, _080218FC @ =0x000131D6
	adds r0, r1, r3
	strh r4, [r0]
	ldr r0, _08021900 @ =0x000131D8
	adds r2, r1, r0
	ldr r0, [r7, #8]
	str r0, [r2]
	adds r3, #6
	adds r2, r1, r3
	ldr r0, [r7, #0xc]
	str r0, [r2]
	ldrh r2, [r7, #6]
	ldr r0, _08021904 @ =0x000131D4
	mov r8, r0
	adds r0, r1, r0
	strh r2, [r0]
	ldr r5, _08021908 @ =0x00013260
	adds r1, r1, r5
	ldr r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	beq _08021822
	lsls r0, r4, #2
	adds r0, r0, r4
	bl sub_08044F80
_08021822:
	ldr r0, [r6]
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08021838
	lsls r0, r4, #1
	bl sub_08022028
_08021838:
	ldr r1, [r6]
	mov r3, r8
	adds r2, r1, r3
	ldrh r0, [r2]
	cmp r0, #0
	bne _08021854
	ldr r3, _0802190C @ =0x0001327E
	adds r0, r1, r3
	ldrh r0, [r0]
	lsrs r0, r0, #2
	cmp r4, r0
	ble _08021854
	movs r0, #1
	strh r0, [r2]
_08021854:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08042A7C
	movs r0, #0xb3
	bl sub_080D7910
	ldr r0, _080218EC @ =gEwramData
	ldr r2, [r0]
	ldr r4, _08021910 @ =0x00013266
	adds r0, r2, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080218E0
	ldr r1, _08021914 @ =0x00013276
	adds r0, r2, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bne _080218E0
	ldrh r1, [r7, #2]
	movs r0, #0xe0
	lsls r0, r0, #1
	ands r0, r1
	lsrs r6, r0, #6
	subs r4, #0x6c
	adds r0, r2, r4
	ldrh r0, [r0]
	lsrs r0, r0, #6
	ands r0, r6
	cmp r0, r6
	beq _080218E0
	ldr r0, _08021918 @ =0x00013270
	adds r2, r2, r0
	ldrh r1, [r2]
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r2]
	movs r4, #2
	ldr r0, _0802191C @ =0x080E1338
	adds r5, r0, #0
	adds r5, #8
_080218A8:
	adds r0, r6, #0
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080218D8
	movs r0, #0xcc
	lsls r0, r0, #1
	bl sub_080D7910
	adds r0, r4, #0
	bl sub_080220F8
	ldr r0, _080218EC @ =gEwramData
	ldr r1, [r0]
	lsls r0, r4, #1
	ldr r2, _08021920 @ =0x00013272
	adds r1, r1, r2
	adds r1, r1, r0
	ldrh r0, [r5]
	strh r0, [r1]
	ldrh r0, [r5, #2]
	bl sub_080D7910
_080218D8:
	subs r5, #4
	subs r4, #1
	cmp r4, #0
	bge _080218A8
_080218E0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080218EC: .4byte gEwramData
_080218F0: .4byte 0x0001327A
_080218F4: .4byte 0x0000042C
_080218F8: .4byte 0x0000A074
_080218FC: .4byte 0x000131D6
_08021900: .4byte 0x000131D8
_08021904: .4byte 0x000131D4
_08021908: .4byte 0x00013260
_0802190C: .4byte 0x0001327E
_08021910: .4byte 0x00013266
_08021914: .4byte 0x00013276
_08021918: .4byte 0x00013270
_0802191C: .4byte 0x080E1338
_08021920: .4byte 0x00013272

	thumb_func_start sub_08021924
sub_08021924: @ 0x08021924
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #1
	rsbs r4, r4, #0
	ldr r0, _0802195C @ =gEwramData
	ldr r1, [r0]
	ldr r2, _08021960 @ =0x000131A4
	adds r6, r1, r2
	movs r3, #0
	subs r2, #0x10
	adds r1, r1, r2
_0802193A:
	ldr r2, [r1]
	cmp r2, r5
	beq _08021964
	cmp r4, #0
	bge _0802194A
	cmp r2, #0
	bne _0802194A
	adds r4, r3, #0
_0802194A:
	adds r1, #4
	adds r3, #1
	cmp r3, #3
	ble _0802193A
	cmp r4, #0
	bge _08021970
	movs r0, #0
	b _0802198A
	.align 2, 0
_0802195C: .4byte gEwramData
_08021960: .4byte 0x000131A4
_08021964:
	lsls r1, r3, #1
	adds r1, r1, r6
	ldrb r0, [r1, #1]
	adds r0, #1
	strb r0, [r1, #1]
	b _08021988
_08021970:
	ldr r0, [r0]
	lsls r1, r4, #2
	ldr r2, _08021990 @ =0x00013194
	adds r0, r0, r2
	adds r0, r0, r1
	str r5, [r0]
	lsls r0, r4, #1
	adds r0, r0, r6
	movs r1, #1
	strb r1, [r0, #1]
	movs r1, #0
	strb r1, [r0]
_08021988:
	movs r0, #1
_0802198A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08021990: .4byte 0x00013194

	thumb_func_start sub_08021994
sub_08021994: @ 0x08021994
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	ldr r0, _08021A7C @ =gEwramData
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #0x1e]
	movs r2, #0xf3
	ands r2, r1
	ldr r7, _08021A80 @ =0x00013276
	adds r0, r0, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080219B8
	b _08021B1C
_080219B8:
	movs r6, #1
	adds r1, r2, #0
	ands r1, r6
	movs r0, #2
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	movs r0, #0x10
	ands r0, r2
	asrs r0, r0, #4
	adds r1, r1, r0
	movs r0, #0x20
	ands r0, r2
	asrs r0, r0, #5
	adds r1, r1, r0
	movs r0, #0x40
	ands r0, r2
	asrs r0, r0, #6
	adds r1, r1, r0
	lsrs r0, r2, #7
	adds r5, r1, r0
	adds r0, r5, #0
	ands r0, r6
	cmp r0, #0
	beq _08021A4C
	mov r2, r8
	ldr r0, [r2, #0x40]
	ldr r1, [r2, #0x44]
	movs r2, #4
	movs r3, #6
	bl sub_08045CEC
	adds r4, r0, #0
	cmp r4, #0
	beq _08021A36
	movs r0, #0x10
	bl sub_0802D5EC
	adds r2, r4, #0
	adds r2, #0x42
	ldrh r1, [r2]
	adds r1, r1, r0
	strh r1, [r2]
	movs r0, #8
	bl sub_0802D5EC
	adds r2, r4, #0
	adds r2, #0x46
	ldrh r1, [r2]
	subs r1, #4
	adds r1, r1, r0
	strh r1, [r2]
	strb r6, [r4, #0xf]
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_0802D5EC
	ldr r3, _08021A84 @ =0xFFFF8000
	adds r0, r0, r3
	str r0, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r4, #0x54]
_08021A36:
	mov r1, sb
	ldr r0, [r1]
	adds r0, r0, r7
	ldrh r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08021A4C
	movs r0, #0xb0
	bl sub_080D7910
_08021A4C:
	ldr r0, _08021A7C @ =gEwramData
	ldr r2, [r0]
	ldr r0, _08021A80 @ =0x00013276
	adds r3, r2, r0
	ldrh r0, [r3]
	subs r0, r0, r5
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08021B1C
	movs r0, #0
	strh r0, [r3]
	ldr r1, _08021A88 @ =0x00013270
	adds r2, r2, r1
	ldrh r1, [r2]
	ldr r0, _08021A8C @ =0x0000FFFB
	ands r0, r1
	strh r0, [r2]
	movs r0, #0xaf
	bl sub_080D7910
	movs r7, #0
	b _08021B00
	.align 2, 0
_08021A7C: .4byte gEwramData
_08021A80: .4byte 0x00013276
_08021A84: .4byte 0xFFFF8000
_08021A88: .4byte 0x00013270
_08021A8C: .4byte 0x0000FFFB
_08021A90:
	movs r0, #0x10
	bl sub_0802D5EC
	adds r2, r6, #0
	adds r2, #0x42
	ldrh r1, [r2]
	adds r1, r1, r0
	strh r1, [r2]
	movs r0, #0x10
	bl sub_0802D5EC
	adds r2, r6, #0
	adds r2, #0x46
	ldrh r1, [r2]
	subs r1, #0x10
	adds r1, r1, r0
	strh r1, [r2]
	bl sub_08000A90
	movs r1, #1
	ands r0, r1
	adds r5, r6, #0
	adds r5, #0x58
	lsls r0, r0, #6
	ldrb r1, [r5]
	movs r3, #0x41
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	movs r4, #0x80
	lsls r4, r4, #8
	adds r0, r4, #0
	bl sub_0802D5EC
	adds r2, r0, r4
	str r2, [r6, #0x48]
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08021AEA
	rsbs r0, r2, #0
	str r0, [r6, #0x48]
_08021AEA:
	movs r0, #0x80
	lsls r0, r0, #7
	bl sub_0802D5EC
	ldr r5, _08021BBC @ =0xFFFE0000
	adds r0, r0, r5
	str r0, [r6, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r6, #0x54]
	adds r7, #1
_08021B00:
	cmp r7, #3
	bgt _08021B1C
	mov r1, r8
	ldr r0, [r1, #0x40]
	ldr r1, [r1, #0x44]
	movs r2, #1
	ands r2, r7
	adds r2, #0x40
	movs r3, #6
	bl sub_08045DC8
	adds r6, r0, #0
	cmp r6, #0
	bne _08021A90
_08021B1C:
	movs r7, #1
	ldr r4, _08021BC0 @ =gEwramData
_08021B20:
	ldr r2, [r4]
	lsls r0, r7, #1
	ldr r3, _08021BC4 @ =0x00013272
	adds r1, r2, r3
	adds r1, r1, r0
	ldrh r3, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	beq _08021B4C
	subs r0, r3, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08021B4C
	ldr r0, _08021BC8 @ =0x00013270
	adds r2, r2, r0
	movs r1, #1
	lsls r1, r7
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
_08021B4C:
	subs r7, #1
	cmp r7, #0
	bge _08021B20
	ldr r4, _08021BC0 @ =gEwramData
	ldr r2, [r4]
	ldr r3, _08021BC8 @ =0x00013270
	adds r0, r2, r3
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08021B88
	ldr r5, _08021BCC @ =0x000131F2
	adds r1, r2, r5
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r1]
	ldr r0, _08021BD0 @ =0x000131F4
	adds r1, r2, r0
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r1]
	adds r5, #4
	adds r1, r2, r5
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r1]
_08021B88:
	ldr r2, [r4]
	adds r0, r2, r3
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08021BDC
	ldr r1, _08021BD4 @ =0x00013274
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08021C12
	ldr r3, _08021BD8 @ =0x00013280
	adds r0, r2, r3
	ldrh r0, [r0]
	lsrs r5, r0, #7
	cmp r5, #0
	bne _08021BB2
	movs r5, #1
_08021BB2:
	adds r0, r5, #0
	bl sub_08022060
	b _08021C12
	.align 2, 0
_08021BBC: .4byte 0xFFFE0000
_08021BC0: .4byte gEwramData
_08021BC4: .4byte 0x00013272
_08021BC8: .4byte 0x00013270
_08021BCC: .4byte 0x000131F2
_08021BD0: .4byte 0x000131F4
_08021BD4: .4byte 0x00013274
_08021BD8: .4byte 0x00013280
_08021BDC:
	ldr r5, _08021BFC @ =0x0001326D
	adds r0, r2, r5
	ldrb r0, [r0]
	cmp r0, #0x29
	beq _08021C00
	mov r0, r8
	ldrh r1, [r0, #0x22]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _08021C12
	movs r0, #1
	bl sub_08022028
	b _08021C12
	.align 2, 0
_08021BFC: .4byte 0x0001326D
_08021C00:
	mov r2, r8
	ldrh r1, [r2, #0x22]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08021C12
	movs r0, #1
	bl sub_08022028
_08021C12:
	ldr r0, _08021C38 @ =gEwramData
	ldr r2, [r0]
	ldr r3, _08021C3C @ =0x0001326D
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #0x2c
	bne _08021C2C
	ldr r5, _08021C40 @ =0x00013280
	adds r0, r2, r5
	ldrh r1, [r0]
	adds r3, #0xf
	adds r0, r2, r3
	strh r1, [r0]
_08021C2C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021C38: .4byte gEwramData
_08021C3C: .4byte 0x0001326D
_08021C40: .4byte 0x00013280

	thumb_func_start sub_08021C44
sub_08021C44: @ 0x08021C44
	push {r4, r5, r6, lr}
	ldr r5, _08021C94 @ =gEwramData
	ldr r0, [r5]
	ldr r1, _08021C98 @ =0x000131F2
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl sub_08021F64
	ldr r1, [r5]
	ldr r4, _08021C9C @ =0x000131EE
	adds r2, r1, r4
	movs r6, #0
	strh r0, [r2]
	ldr r0, _08021CA0 @ =0x000131F4
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl sub_08021F84
	ldr r2, [r5]
	ldr r3, _08021CA4 @ =0x000131F0
	adds r1, r2, r3
	strh r0, [r1]
	adds r2, r2, r4
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _08021C80
	strh r6, [r2]
_08021C80:
	ldr r0, [r5]
	adds r1, r0, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _08021C8E
	strh r6, [r1]
_08021C8E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08021C94: .4byte gEwramData
_08021C98: .4byte 0x000131F2
_08021C9C: .4byte 0x000131EE
_08021CA0: .4byte 0x000131F4
_08021CA4: .4byte 0x000131F0

	thumb_func_start sub_08021CA8
sub_08021CA8: @ 0x08021CA8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08021CB8
	cmp r0, #1
	beq _08021CFA
	b _08021DA8
_08021CB8:
	ldr r0, _08021D34 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08021D38 @ =0x0820ED60
	ldr r3, _08021D3C @ =0x084F10BC
	ldrh r0, [r4, #0x18]
	adds r0, r0, r3
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	ldr r0, _08021D40 @ =sub_0803B9D0
	str r0, [r4, #4]
	ldrb r0, [r4, #0x18]
	adds r0, #0x59
	adds r1, r4, #0
	adds r1, #0x65
	strb r0, [r1]
	subs r1, #9
	movs r0, #0xd
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	strb r0, [r4, #0xa]
	movs r0, #0x80
	lsls r0, r0, #0x11
	str r0, [r4, #0x48]
_08021CFA:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	ble _08021D06
	ldr r1, _08021D44 @ =0xFFF80000
	adds r0, r0, r1
	str r0, [r4, #0x48]
_08021D06:
	ldr r1, [r4, #0x48]
	ldrb r2, [r4, #0xd]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08021D14
	rsbs r1, r1, #0
_08021D14:
	adds r0, r2, #1
	strb r0, [r4, #0xd]
	ldr r0, _08021D48 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08021D4C @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x42
	movs r3, #0
	ldrsh r2, [r0, r3]
	cmp r1, #0
	bge _08021D50
	rsbs r0, r1, #0
	asrs r0, r0, #0x10
	subs r1, r2, r0
	b _08021D54
	.align 2, 0
_08021D34: .4byte 0x081C15F4
_08021D38: .4byte 0x0820ED60
_08021D3C: .4byte 0x084F10BC
_08021D40: .4byte sub_0803B9D0
_08021D44: .4byte 0xFFF80000
_08021D48: .4byte gEwramData
_08021D4C: .4byte 0x00013110
_08021D50:
	asrs r0, r1, #0x10
	adds r1, r2, r0
_08021D54:
	adds r0, r4, #0
	adds r0, #0x42
	strh r1, [r0]
	bl sub_0801CFB0
	subs r0, #4
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08021D94 @ =gEwramData
	ldr r1, [r0]
	ldrh r0, [r4, #0x18]
	lsls r0, r0, #1
	ldr r2, _08021D98 @ =0x00013272
	adds r1, r1, r2
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _08021DA2
	cmp r0, #0x1d
	bgt _08021D9C
	movs r0, #1
	strb r0, [r4, #0xf]
	b _08021DA8
	.align 2, 0
_08021D94: .4byte gEwramData
_08021D98: .4byte 0x00013272
_08021D9C:
	movs r0, #0
	strb r0, [r4, #0xf]
	b _08021DA8
_08021DA2:
	adds r0, r4, #0
	bl sub_08000E14
_08021DA8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08021DB0
sub_08021DB0: @ 0x08021DB0
	ldr r0, _08021DBC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08021DC0 @ =0x000131BC
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_08021DBC: .4byte gEwramData
_08021DC0: .4byte 0x000131BC

	thumb_func_start sub_08021DC4
sub_08021DC4: @ 0x08021DC4
	push {r4, r5, r6, lr}
	ldr r0, _08021DF0 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _08021DF4 @ =0x000131A4
	adds r0, r1, r2
	movs r6, #0
	movs r5, #0
	adds r2, r0, #0
	ldr r0, _08021DF8 @ =0x00013194
	adds r1, r1, r0
	adds r4, r2, #0
_08021DDA:
	ldr r0, [r1]
	cmp r0, #0
	beq _08021DFE
	ldrb r3, [r2, #1]
	ldrb r0, [r2]
	cmp r0, r3
	bne _08021DFC
	str r5, [r1]
	strb r5, [r2]
	strb r5, [r2, #1]
	b _08021DFE
	.align 2, 0
_08021DF0: .4byte gEwramData
_08021DF4: .4byte 0x000131A4
_08021DF8: .4byte 0x00013194
_08021DFC:
	strb r3, [r4]
_08021DFE:
	adds r2, #2
	adds r1, #4
	adds r4, #2
	adds r6, #1
	cmp r6, #3
	ble _08021DDA
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08021E10
sub_08021E10: @ 0x08021E10
	ldr r1, _08021E24 @ =gEwramData
	ldr r2, [r1]
	ldr r1, _08021E28 @ =0x0001325C
	adds r2, r2, r1
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_08021E24: .4byte gEwramData
_08021E28: .4byte 0x0001325C

	thumb_func_start sub_08021E2C
sub_08021E2C: @ 0x08021E2C
	bx lr
	.align 2, 0

	thumb_func_start sub_08021E30
sub_08021E30: @ 0x08021E30
	bx lr
	.align 2, 0

	thumb_func_start sub_08021E34
sub_08021E34: @ 0x08021E34
	bx lr
	.align 2, 0

	thumb_func_start sub_08021E38
sub_08021E38: @ 0x08021E38
	adds r1, r0, #0
	ldr r0, _08021E48 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08021E4C @ =0x00013260
	adds r0, r0, r2
	ldr r0, [r0]
	ands r0, r1
	bx lr
	.align 2, 0
_08021E48: .4byte gEwramData
_08021E4C: .4byte 0x00013260

	thumb_func_start sub_08021E50
sub_08021E50: @ 0x08021E50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	movs r4, #0
	movs r0, #1
	mov sb, r0
	ldr r2, _08021EA8 @ =gEwramData
	mov r8, r2
	ldr r7, _08021EAC @ =0x00013272
	mov ip, r7
	mov sl, r4
	ldr r6, _08021EB0 @ =0x00013270
_08021E6E:
	mov r3, sb
	lsls r3, r4
	adds r0, r5, #0
	ands r0, r3
	cmp r0, #0
	beq _08021E92
	mov r0, r8
	ldr r1, [r0]
	lsls r2, r4, #1
	mov r7, ip
	adds r0, r1, r7
	adds r0, r0, r2
	mov r2, sl
	strh r2, [r0]
	adds r1, r1, r6
	ldrh r0, [r1]
	bics r0, r3
	strh r0, [r1]
_08021E92:
	adds r4, #1
	cmp r4, #2
	ble _08021E6E
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021EA8: .4byte gEwramData
_08021EAC: .4byte 0x00013272
_08021EB0: .4byte 0x00013270

	thumb_func_start sub_08021EB4
sub_08021EB4: @ 0x08021EB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	movs r4, #0
	movs r0, #1
	mov sb, r0
	ldr r7, _08021F0C @ =gEwramData
	mov r8, r7
	ldr r0, _08021F10 @ =0x00013272
	mov ip, r0
	ldr r7, _08021F14 @ =0x00013270
	mov sl, r7
_08021ED6:
	mov r3, sb
	lsls r3, r4
	adds r0, r6, #0
	ands r0, r3
	cmp r0, #0
	beq _08021EF8
	mov r0, r8
	ldr r1, [r0]
	lsls r2, r4, #1
	mov r7, ip
	adds r0, r1, r7
	adds r0, r0, r2
	strh r5, [r0]
	add r1, sl
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r1]
_08021EF8:
	adds r4, #1
	cmp r4, #2
	ble _08021ED6
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021F0C: .4byte gEwramData
_08021F10: .4byte 0x00013272
_08021F14: .4byte 0x00013270

	thumb_func_start sub_08021F18
sub_08021F18: @ 0x08021F18
	push {lr}
	ldr r0, _08021F3C @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x99
	lsls r1, r1, #9
	adds r2, r0, r1
	ldr r3, _08021F40 @ =0x00013282
	adds r1, r0, r3
	movs r3, #3
_08021F2A:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r1, #2
	adds r2, #2
	subs r3, #1
	cmp r3, #0
	bge _08021F2A
	pop {r0}
	bx r0
	.align 2, 0
_08021F3C: .4byte gEwramData
_08021F40: .4byte 0x00013282

	thumb_func_start sub_08021F44
sub_08021F44: @ 0x08021F44
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	ldr r2, _08021F60 @ =gEwramData
	lsrs r0, r0, #0xf
	movs r3, #0x99
	lsls r3, r3, #9
	adds r0, r0, r3
	ldr r2, [r2]
	adds r2, r2, r0
	lsrs r1, r1, #0x10
	ldrh r0, [r2]
	adds r1, r1, r0
	strh r1, [r2]
	bx lr
	.align 2, 0
_08021F60: .4byte gEwramData

	thumb_func_start sub_08021F64
sub_08021F64: @ 0x08021F64
	ldr r1, _08021F7C @ =gEwramData
	ldr r1, [r1]
	ldr r2, _08021F80 @ =0x000131FC
	adds r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bx lr
	.align 2, 0
_08021F7C: .4byte gEwramData
_08021F80: .4byte 0x000131FC

	thumb_func_start sub_08021F84
sub_08021F84: @ 0x08021F84
	lsls r0, r0, #0x10
	ldr r1, _08021F9C @ =gEwramData
	ldr r1, [r1]
	ldr r2, _08021FA0 @ =0x000131FE
	adds r1, r1, r2
	asrs r0, r0, #0x11
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bx lr
	.align 2, 0
_08021F9C: .4byte gEwramData
_08021FA0: .4byte 0x000131FE

	thumb_func_start sub_08021FA4
sub_08021FA4: @ 0x08021FA4
	push {r4, lr}
	ldr r1, _08021FDC @ =gEwramData
	ldr r0, [r1]
	ldr r2, _08021FE0 @ =0x000131F2
	adds r3, r0, r2
	movs r4, #0x99
	lsls r4, r4, #9
	adds r2, r0, r4
	adds r4, r1, #0
	movs r1, #3
_08021FB8:
	ldrh r0, [r2]
	strh r0, [r3]
	adds r2, #2
	adds r3, #2
	subs r1, #1
	cmp r1, #0
	bge _08021FB8
	ldr r0, [r4]
	ldr r2, _08021FE4 @ =0x00013208
	adds r1, r0, r2
	ldrh r1, [r1]
	ldr r4, _08021FE8 @ =0x000131FA
	adds r0, r0, r4
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08021FDC: .4byte gEwramData
_08021FE0: .4byte 0x000131F2
_08021FE4: .4byte 0x00013208
_08021FE8: .4byte 0x000131FA

	thumb_func_start sub_08021FEC
sub_08021FEC: @ 0x08021FEC
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _0802201C @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08022020 @ =0x0001327A
	adds r2, r1, r0
	ldrh r0, [r2]
	adds r0, r0, r3
	strh r0, [r2]
	movs r4, #0
	ldrsh r0, [r2, r4]
	ldr r4, _08022024 @ =0x0001327E
	adds r1, r1, r4
	ldrh r1, [r1]
	cmp r0, r1
	ble _0802200E
	strh r1, [r2]
_0802200E:
	adds r0, r3, #0
	movs r1, #1
	bl sub_08042A7C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802201C: .4byte gEwramData
_08022020: .4byte 0x0001327A
_08022024: .4byte 0x0001327E

	thumb_func_start sub_08022028
sub_08022028: @ 0x08022028
	push {lr}
	adds r3, r0, #0
	cmp r3, #0
	bne _08022032
	movs r3, #1
_08022032:
	ldr r0, _08022054 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08022058 @ =0x0001327C
	adds r2, r1, r0
	ldrh r0, [r2]
	adds r0, r0, r3
	strh r0, [r2]
	movs r3, #0
	ldrsh r0, [r2, r3]
	ldr r3, _0802205C @ =0x00013280
	adds r1, r1, r3
	ldrh r1, [r1]
	cmp r0, r1
	ble _08022050
	strh r1, [r2]
_08022050:
	pop {r0}
	bx r0
	.align 2, 0
_08022054: .4byte gEwramData
_08022058: .4byte 0x0001327C
_0802205C: .4byte 0x00013280

	thumb_func_start sub_08022060
sub_08022060: @ 0x08022060
	push {lr}
	ldr r1, _08022080 @ =gEwramData
	ldr r1, [r1]
	ldr r3, _08022084 @ =0x0001327C
	adds r2, r1, r3
	ldrh r1, [r2]
	subs r1, r1, r0
	strh r1, [r2]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _0802207A
	movs r0, #0
	strh r0, [r2]
_0802207A:
	pop {r0}
	bx r0
	.align 2, 0
_08022080: .4byte gEwramData
_08022084: .4byte 0x0001327C

	thumb_func_start sub_08022088
sub_08022088: @ 0x08022088
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _080220A0 @ =gEwramData
	ldr r0, [r0]
	ldr r4, _080220A4 @ =0x0001316C
	adds r2, r0, r4
	ldr r0, [r2]
	cmp r0, #0
	beq _080220A8
	movs r0, #0
	b _080220AE
	.align 2, 0
_080220A0: .4byte gEwramData
_080220A4: .4byte 0x0001316C
_080220A8:
	str r3, [r2]
	str r1, [r3, #0x10]
	movs r0, #1
_080220AE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080220B4
sub_080220B4: @ 0x080220B4
	ldr r0, _080220C4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080220C8 @ =0x0001316C
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
_080220C4: .4byte gEwramData
_080220C8: .4byte 0x0001316C

	thumb_func_start sub_080220CC
sub_080220CC: @ 0x080220CC
	push {lr}
	ldr r0, _080220E0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080220E4 @ =0x0001316C
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _080220E8
	movs r0, #0
	b _080220EC
	.align 2, 0
_080220E0: .4byte gEwramData
_080220E4: .4byte 0x0001316C
_080220E8:
	ldr r0, [r0, #0x10]
	ldr r0, [r0]
_080220EC:
	pop {r1}
	bx r1

	thumb_func_start sub_080220F0
sub_080220F0: @ 0x080220F0
	movs r0, #0
	bx lr

	thumb_func_start sub_080220F4
sub_080220F4: @ 0x080220F4
	movs r0, #0
	bx lr

	thumb_func_start sub_080220F8
sub_080220F8: @ 0x080220F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08022128 @ =gEwramData
	ldr r0, [r0]
	lsls r1, r4, #1
	ldr r2, _0802212C @ =0x00013272
	adds r0, r0, r2
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08022120
	ldr r2, _08022130 @ =sub_08021CA8
	movs r0, #0x16
	movs r1, #0x19
	bl sub_08000DA0
	cmp r0, #0
	beq _08022120
	strh r4, [r0, #0x18]
_08022120:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08022128: .4byte gEwramData
_0802212C: .4byte 0x00013272
_08022130: .4byte sub_08021CA8

	thumb_func_start sub_08022134
sub_08022134: @ 0x08022134
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_08021518
	ldr r0, _08022154 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08022158 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	strh r4, [r0, #0x34]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08022154: .4byte gEwramData
_08022158: .4byte 0x00013110

	thumb_func_start sub_0802215C
sub_0802215C: @ 0x0802215C
	push {lr}
	movs r0, #1
	bl sub_08021518
	ldr r0, _0802217C @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08022180 @ =0x00013110
	adds r1, r1, r0
	ldr r2, [r1]
	movs r3, #0
	movs r0, #0
	strh r0, [r2, #0x34]
	ldr r0, [r1]
	strb r3, [r0, #0xf]
	pop {r0}
	bx r0
	.align 2, 0
_0802217C: .4byte gEwramData
_08022180: .4byte 0x00013110

	thumb_func_start sub_08022184
sub_08022184: @ 0x08022184
	push {lr}
	ldr r0, _080221A8 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _080221AC @ =0x000131B8
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #0xe0
	lsls r2, r2, #3
	orrs r0, r2
	str r0, [r1]
	bl sub_080235C8
	bl sub_0802DFF0
	bl sub_080321C4
	pop {r0}
	bx r0
	.align 2, 0
_080221A8: .4byte gEwramData
_080221AC: .4byte 0x000131B8

	thumb_func_start sub_080221B0
sub_080221B0: @ 0x080221B0
	ldr r1, _080221C0 @ =gEwramData
	ldr r2, [r1]
	ldr r1, _080221C4 @ =0x0001325C
	adds r2, r2, r1
	ldr r1, [r2]
	bics r1, r0
	str r1, [r2]
	bx lr
	.align 2, 0
_080221C0: .4byte gEwramData
_080221C4: .4byte 0x0001325C

	thumb_func_start sub_080221C8
sub_080221C8: @ 0x080221C8
	bx lr
	.align 2, 0

	thumb_func_start sub_080221CC
sub_080221CC: @ 0x080221CC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #0x14]
	mov r8, r0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _080221E8
	cmp r0, #1
	bne _080221E6
	b _08022388
_080221E6:
	b _080223EC
_080221E8:
	mov sb, r8
	mov r4, r8
	adds r4, #0x28
	ldrb r0, [r4]
	bl sub_08023368
	adds r6, r0, #0
	ldr r7, _08022238 @ =gEwramData
	ldr r1, [r7]
	ldr r2, _0802223C @ =0x00013268
	adds r0, r1, r2
	ldrb r0, [r0]
	strb r0, [r5, #0x18]
	ldrb r0, [r4]
	cmp r0, #0
	bne _08022248
	ldr r3, _08022240 @ =0x000131C0
	adds r0, r1, r3
	ldrb r0, [r0]
	ldrb r2, [r6, #0x12]
	cmp r0, r2
	beq _0802222E
	adds r3, #8
	adds r0, r1, r3
	ldr r0, [r0]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r0, r4
	beq _0802222E
	bl sub_0803B980
	ldr r0, [r7]
	ldr r1, _08022244 @ =0x000131C8
	adds r0, r0, r1
	str r4, [r0]
_0802222E:
	movs r4, #1
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0xe
	b _08022276
	.align 2, 0
_08022238: .4byte gEwramData
_0802223C: .4byte 0x00013268
_08022240: .4byte 0x000131C0
_08022244: .4byte 0x000131C8
_08022248:
	ldr r2, _080222E0 @ =0x000131C1
	adds r0, r1, r2
	ldrb r0, [r0]
	ldrb r3, [r6, #0x12]
	cmp r0, r3
	beq _0802226E
	adds r2, #0xb
	adds r0, r1, r2
	ldr r0, [r0]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r0, r4
	beq _0802226E
	bl sub_0803B980
	ldr r0, [r7]
	ldr r3, _080222E4 @ =0x000131CC
	adds r0, r0, r3
	str r4, [r0]
_0802226E:
	movs r4, #2
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0xf
_08022276:
	strb r0, [r1]
	ldr r1, _080222E8 @ =0x084F10C0
	ldrb r0, [r6, #0x12]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	adds r7, r0, #0
	ldr r0, _080222EC @ =0x082098B8
	ldrb r1, [r6, #0x15]
	movs r2, #1
	adds r3, r4, #0
	bl sub_0803C7B4
	ldr r1, _080222F0 @ =0x084F117C
	ldrb r0, [r6, #0x13]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_0803B924
	ldrb r1, [r6, #0x14]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r3, _080222F4 @ =gEwramData
	ldr r0, [r3]
	mov r2, sb
	adds r2, #0x28
	ldr r1, _080222F8 @ =0x000131C0
	adds r0, r0, r1
	ldrb r1, [r2]
	adds r0, r0, r1
	ldrb r1, [r6, #0x12]
	strb r1, [r0]
	ldrb r0, [r2]
	cmp r0, #0
	bne _08022300
	ldr r0, [r3]
	ldr r2, _080222FC @ =0x000131C8
	adds r0, r0, r2
	str r7, [r0]
	movs r1, #3
	movs r4, #0
	b _0802230C
	.align 2, 0
_080222E0: .4byte 0x000131C1
_080222E4: .4byte 0x000131CC
_080222E8: .4byte 0x084F10C0
_080222EC: .4byte 0x082098B8
_080222F0: .4byte 0x084F117C
_080222F4: .4byte gEwramData
_080222F8: .4byte 0x000131C0
_080222FC: .4byte 0x000131C8
_08022300:
	ldr r0, [r3]
	ldr r3, _080223BC @ =0x000131CC
	adds r0, r0, r3
	str r7, [r0]
	movs r1, #5
	movs r4, #1
_0802230C:
	ldr r2, _080223C0 @ =sub_0802346C
	adds r0, r5, #0
	movs r3, #0
	bl sub_0804277C
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r6, #0x17]
	adds r0, r4, #0
	bl sub_08042A54
	ldr r4, [r5, #0x14]
	adds r4, #0x28
	ldrb r0, [r4]
	bl sub_08023368
	ldrh r0, [r0, #0x18]
	bl sub_080D7910
	ldrb r0, [r4]
	cmp r0, #0
	bne _08022364
	bl sub_08000A90
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08022364
	ldr r4, _080223C4 @ =0x084F1264
	bl sub_08000A90
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r0, [r1]
	bl sub_080D7910
_08022364:
	ldr r0, _080223C8 @ =sub_0803B9D0
	str r0, [r5, #4]
	movs r0, #0
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08022388
	adds r1, r5, #0
	adds r1, #0x4e
	movs r0, #0xd
	strh r0, [r1]
_08022388:
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	mov r3, r8
	ldr r2, [r3, #0x10]
	movs r0, #0x20
	ands r2, r0
	cmp r2, #0
	bne _080223D4
	ldr r0, _080223CC @ =gEwramData
	ldr r1, [r0]
	mov r0, r8
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r3, _080223D0 @ =0x0001311C
	adds r1, r1, r3
	adds r1, r1, r0
	str r2, [r1]
	adds r0, r5, #0
	bl sub_08000E14
	b _080224A6
	.align 2, 0
_080223BC: .4byte 0x000131CC
_080223C0: .4byte sub_0802346C
_080223C4: .4byte 0x084F1264
_080223C8: .4byte sub_0803B9D0
_080223CC: .4byte gEwramData
_080223D0: .4byte 0x0001311C
_080223D4:
	mov r1, r8
	ldr r0, [r1, #0x40]
	str r0, [r5, #0x40]
	adds r1, #0x46
	adds r0, r5, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
_080223EC:
	mov r2, r8
	ldrb r0, [r2, #0xf]
	strb r0, [r5, #0xf]
	adds r4, r5, #0
	adds r4, #0x65
	ldrb r6, [r4]
	adds r0, r5, #0
	bl sub_0803F17C
	cmp r0, #3
	beq _0802248A
	ldr r2, _08022430 @ =gEwramData
	ldr r3, [r2]
	ldr r1, _08022434 @ =0x000004CC
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0802243C
	ldr r0, _08022438 @ =0x00013268
	adds r1, r3, r0
	ldrb r0, [r5, #0x18]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0802243C
	adds r0, r5, #0
	adds r0, #0x72
	ldrb r1, [r0]
	movs r2, #2
	orrs r1, r2
	strb r1, [r0]
	b _080224A6
	.align 2, 0
_08022430: .4byte gEwramData
_08022434: .4byte 0x000004CC
_08022438: .4byte 0x00013268
_0802243C:
	ldrb r1, [r4]
	cmp r6, r1
	beq _080224A6
	adds r0, r5, #0
	adds r0, #0x64
	ldr r1, [r2]
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r2, _08022478 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	ldrb r0, [r4]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r1, r0, r1
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _0802247C
	ldr r1, [r1, #8]
	adds r0, r5, #0
	bl sub_08042848
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	b _080224A6
	.align 2, 0
_08022478: .4byte 0x0001017C
_0802247C:
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	b _080224A6
_0802248A:
	ldr r0, _080224B4 @ =gEwramData
	ldr r1, [r0]
	mov r0, r8
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r3, _080224B8 @ =0x0001311C
	adds r1, r1, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	adds r0, r5, #0
	bl sub_08000E14
_080224A6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080224B4: .4byte gEwramData
_080224B8: .4byte 0x0001311C

	thumb_func_start sub_080224BC
sub_080224BC: @ 0x080224BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	ldr r0, [r6, #0x14]
	mov sb, r0
	mov r5, sb
	adds r5, #0x28
	ldrb r0, [r5]
	bl sub_08023368
	str r0, [sp, #8]
	ldrb r4, [r6, #0xa]
	cmp r4, #0
	beq _080224EE
	movs r1, #0x58
	adds r1, r1, r6
	mov sl, r1
	cmp r4, #1
	bne _080224EC
	b _0802274C
_080224EC:
	b _080227F0
_080224EE:
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08022518
	ldr r0, _08022510 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r5]
	lsls r0, r0, #2
	ldr r2, _08022514 @ =0x0001311C
	adds r1, r1, r2
	adds r1, r1, r0
	str r4, [r1]
	b _080228B8
	.align 2, 0
_08022510: .4byte gEwramData
_08022514: .4byte 0x0001311C
_08022518:
	adds r4, r6, #0
	adds r4, #0x58
	movs r0, #0x1f
	ands r2, r0
	ldrb r1, [r4]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r3, [r6, #0x14]
	str r3, [sp, #0xc]
	adds r5, r3, #0
	adds r5, #0x28
	ldrb r0, [r5]
	bl sub_08023368
	adds r7, r0, #0
	ldr r0, _08022590 @ =gEwramData
	mov r8, r0
	ldr r1, [r0]
	ldr r2, _08022594 @ =0x00013268
	adds r0, r1, r2
	ldrb r0, [r0]
	strb r0, [r6, #0x18]
	ldrb r0, [r5]
	mov sl, r4
	cmp r0, #0
	bne _080225A0
	ldr r3, _08022598 @ =0x000131C0
	adds r0, r1, r3
	ldrb r0, [r0]
	ldrb r2, [r7, #0x12]
	cmp r0, r2
	beq _08022586
	adds r3, #8
	adds r0, r1, r3
	ldr r0, [r0]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r0, r4
	beq _08022586
	bl sub_0803B980
	mov r1, r8
	ldr r0, [r1]
	ldr r2, _0802259C @ =0x000131C8
	adds r0, r0, r2
	str r4, [r0]
_08022586:
	movs r4, #1
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xe
	b _080225D0
	.align 2, 0
_08022590: .4byte gEwramData
_08022594: .4byte 0x00013268
_08022598: .4byte 0x000131C0
_0802259C: .4byte 0x000131C8
_080225A0:
	ldr r3, _0802263C @ =0x000131C1
	adds r0, r1, r3
	ldrb r0, [r0]
	ldrb r2, [r7, #0x12]
	cmp r0, r2
	beq _080225C8
	adds r3, #0xb
	adds r0, r1, r3
	ldr r0, [r0]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r0, r4
	beq _080225C8
	bl sub_0803B980
	mov r1, r8
	ldr r0, [r1]
	ldr r2, _08022640 @ =0x000131CC
	adds r0, r0, r2
	str r4, [r0]
_080225C8:
	movs r4, #2
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xf
_080225D0:
	strb r0, [r1]
	ldr r1, _08022644 @ =0x084F10C0
	ldrb r0, [r7, #0x12]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	adds r5, r0, #0
	ldr r0, _08022648 @ =0x082098B8
	ldrb r1, [r7, #0x15]
	movs r2, #1
	adds r3, r4, #0
	bl sub_0803C7B4
	ldr r1, _0802264C @ =0x084F117C
	ldrb r0, [r7, #0x13]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_0803B924
	ldrb r1, [r7, #0x14]
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r3, _08022650 @ =gEwramData
	ldr r0, [r3]
	ldr r2, [sp, #0xc]
	adds r2, #0x28
	ldr r1, _08022654 @ =0x000131C0
	adds r0, r0, r1
	ldrb r1, [r2]
	adds r0, r0, r1
	ldrb r1, [r7, #0x12]
	strb r1, [r0]
	ldrb r0, [r2]
	cmp r0, #0
	bne _0802265C
	ldr r0, [r3]
	ldr r2, _08022658 @ =0x000131C8
	adds r0, r0, r2
	str r5, [r0]
	movs r1, #3
	movs r4, #0
	b _08022668
	.align 2, 0
_0802263C: .4byte 0x000131C1
_08022640: .4byte 0x000131CC
_08022644: .4byte 0x084F10C0
_08022648: .4byte 0x082098B8
_0802264C: .4byte 0x084F117C
_08022650: .4byte gEwramData
_08022654: .4byte 0x000131C0
_08022658: .4byte 0x000131C8
_0802265C:
	ldr r0, [r3]
	ldr r3, _080226E0 @ =0x000131CC
	adds r0, r0, r3
	str r5, [r0]
	movs r1, #5
	movs r4, #1
_08022668:
	ldr r2, _080226E4 @ =sub_0802346C
	adds r0, r6, #0
	movs r3, #0
	bl sub_0804277C
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r7, #0x17]
	adds r0, r4, #0
	bl sub_08042A54
	ldr r4, [r6, #0x14]
	adds r4, #0x28
	ldrb r0, [r4]
	bl sub_08023368
	ldrh r0, [r0, #0x18]
	bl sub_080D7910
	ldrb r0, [r4]
	cmp r0, #0
	bne _080226C0
	bl sub_08000A90
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080226C0
	ldr r4, _080226E8 @ =0x084F1264
	bl sub_08000A90
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r0, [r1]
	bl sub_080D7910
_080226C0:
	ldr r0, _080226EC @ =sub_0803B9D0
	str r0, [r6, #4]
	ldr r0, _080226F0 @ =0xFFFFD000
	str r0, [r6, #0x1c]
	ldr r1, [sp, #8]
	ldrb r0, [r1, #0x16]
	cmp r0, #0
	bne _080226F4
	movs r0, #0x10
	strb r0, [r6, #0xb]
	movs r0, #5
	strb r0, [r6, #0xc]
	movs r0, #0x98
	lsls r0, r0, #4
	b _08022700
	.align 2, 0
_080226E0: .4byte 0x000131CC
_080226E4: .4byte sub_0802346C
_080226E8: .4byte 0x084F1264
_080226EC: .4byte sub_0803B9D0
_080226F0: .4byte 0xFFFFD000
_080226F4:
	movs r0, #0xc
	strb r0, [r6, #0xb]
	movs r0, #4
	strb r0, [r6, #0xc]
	movs r0, #0xcc
	lsls r0, r0, #4
_08022700:
	str r0, [r6, #0x20]
	ldr r1, _08022780 @ =0x080E13B8
	ldr r2, [sp, #8]
	ldrb r0, [r2, #0x16]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r6, #0x19]
	mov r3, sl
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08022726
	ldr r0, [r6, #0x1c]
	rsbs r0, r0, #0
	str r0, [r6, #0x1c]
	ldr r0, [r6, #0x20]
	rsbs r0, r0, #0
	str r0, [r6, #0x20]
_08022726:
	adds r2, r6, #0
	adds r2, #0x4e
	ldr r3, _08022784 @ =0x0000FFE7
	strh r3, [r2]
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08022742
	adds r0, r3, #0
	adds r0, #0xc
	strh r0, [r2]
_08022742:
	movs r0, #0
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
_0802274C:
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	mov r3, sb
	ldr r2, [r3, #0x10]
	movs r0, #0x20
	ands r2, r0
	cmp r2, #0
	bne _08022790
	ldr r0, _08022788 @ =gEwramData
	ldr r1, [r0]
	mov r0, sb
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r3, _0802278C @ =0x0001311C
	adds r1, r1, r3
	adds r1, r1, r0
	str r2, [r1]
	mov r1, sl
	ldrb r0, [r1]
	b _080228B0
	.align 2, 0
_08022780: .4byte 0x080E13B8
_08022784: .4byte 0x0000FFE7
_08022788: .4byte gEwramData
_0802278C: .4byte 0x0001311C
_08022790:
	mov r1, sb
	adds r1, #0x46
	adds r0, r6, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r6, #0
	adds r1, #0x46
	strh r0, [r1]
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xd]
	ldrb r1, [r6, #0xc]
	bl Div
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080227C0
	movs r2, #3
_080227C0:
	mov r3, sl
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080227D2
	lsls r0, r2, #0x10
	rsbs r0, r0, #0
	lsrs r2, r0, #0x10
_080227D2:
	mov r0, sb
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, r0, r2
	adds r1, r6, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrb r0, [r6, #0xd]
	ldrb r1, [r6, #0xb]
	cmp r0, r1
	bhs _080227F0
	ldr r0, [r6, #0x1c]
	ldr r1, [r6, #0x20]
	adds r0, r0, r1
	str r0, [r6, #0x1c]
_080227F0:
	mov r2, sb
	ldrb r0, [r2, #0xf]
	strb r0, [r6, #0xf]
	adds r4, r6, #0
	adds r4, #0x65
	ldrb r5, [r4]
	adds r0, r6, #0
	bl sub_0803F17C
	ldr r0, _0802282C @ =gEwramData
	ldr r2, [r0]
	ldr r3, _08022830 @ =0x000004CC
	adds r0, r2, r3
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08022838
	ldr r0, _08022834 @ =0x00013268
	adds r1, r2, r0
	ldrb r0, [r6, #0x18]
	ldrb r1, [r1]
	cmp r0, r1
	beq _08022838
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #2
	b _08022890
	.align 2, 0
_0802282C: .4byte gEwramData
_08022830: .4byte 0x000004CC
_08022834: .4byte 0x00013268
_08022838:
	ldrb r0, [r6, #0xd]
	ldrb r1, [r6, #0x19]
	cmp r0, r1
	beq _08022896
	ldrb r2, [r4]
	cmp r5, r2
	beq _080228C8
	adds r2, r6, #0
	adds r2, #0x64
	ldr r0, _08022880 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r3, _08022884 @ =0x0001017C
	adds r1, r1, r3
	adds r1, r1, r0
	ldr r1, [r1]
	ldrb r0, [r4]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r4, r0, r1
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _08022888
	ldr r1, [r4, #8]
	adds r0, r6, #0
	bl sub_08042848
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	b _080228C8
	.align 2, 0
_08022880: .4byte gEwramData
_08022884: .4byte 0x0001017C
_08022888:
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
_08022890:
	orrs r0, r1
	strb r0, [r2]
	b _080228C8
_08022896:
	ldr r0, _080228C0 @ =gEwramData
	ldr r1, [r0]
	mov r0, sb
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r2, _080228C4 @ =0x0001311C
	adds r1, r1, r2
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	mov r3, sl
	ldrb r0, [r3]
_080228B0:
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080228B8:
	adds r0, r6, #0
	bl sub_08000E14
	b _080228E6
	.align 2, 0
_080228C0: .4byte gEwramData
_080228C4: .4byte 0x0001311C
_080228C8:
	ldr r0, [r6, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #9
	mov r3, sl
	ldrb r1, [r3]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	movs r4, #0
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
_080228E6:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080228F8
sub_080228F8: @ 0x080228F8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _08022992
	cmp r0, #1
	bgt _0802290E
	cmp r0, #0
	beq _08022916
	b _08022A28
_0802290E:
	cmp r0, #2
	bne _08022914
	b _08022A14
_08022914:
	b _08022A28
_08022916:
	adds r0, r5, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _0802295C @ =gEwramData
	ldr r2, [r1]
	ldr r3, _08022960 @ =0x0000A094
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
	bl sub_08002028
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0802296A
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08022964
	movs r0, #1
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	beq _08022966
	b _08022A40
	.align 2, 0
_0802295C: .4byte gEwramData
_08022960: .4byte 0x0000A094
_08022964:
	movs r1, #0
_08022966:
	cmp r1, #0
	bne _08022A40
_0802296A:
	ldr r0, _080229FC @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08022A00 @ =0x0820ED60
	adds r0, r5, #0
	movs r3, #8
	bl sub_0803B924
	ldr r0, _08022A04 @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0x35
	strb r0, [r1]
	movs r0, #1
	strb r0, [r5, #0xa]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
_08022992:
	movs r4, #0x80
	lsls r4, r4, #0xb
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806D430
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806D460
	adds r0, r5, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _08022A08 @ =gEwramData
	ldr r2, [r1]
	ldr r3, _08022A0C @ =0x0000A094
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
	adds r1, #2
	bl sub_080020A0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08022A28
	ldr r0, _08022A10 @ =0x0000014F
	bl sub_080D7910
	ldr r0, [r5, #0x4c]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #7
	bl sub_0802D5EC
	ldr r1, [r5, #0x48]
	adds r1, r1, r0
	str r1, [r5, #0x48]
	movs r0, #2
	strb r0, [r5, #0xa]
	b _08022A28
	.align 2, 0
_080229FC: .4byte 0x081C15F4
_08022A00: .4byte 0x0820ED60
_08022A04: .4byte sub_0803B9D0
_08022A08: .4byte gEwramData
_08022A0C: .4byte 0x0000A094
_08022A10: .4byte 0x0000014F
_08022A14:
	movs r4, #0x80
	lsls r4, r4, #0xb
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806D430
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806D460
_08022A28:
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r3, #0x88
	lsls r3, r3, #1
	movs r0, #0xc0
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	bl sub_08068AD4
	cmp r0, #0
	bne _08022A4C
_08022A40:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_08022A4C:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08022A54
sub_08022A54: @ 0x08022A54
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldr r0, [r6, #0x14]
	mov r8, r0
	mov r4, r8
	adds r4, #0x28
	ldrb r0, [r4]
	bl sub_08023368
	adds r1, r0, #0
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _08022A7C
	cmp r0, #1
	bne _08022A7A
	b _08022C9E
_08022A7A:
	b _08022DAC
_08022A7C:
	ldrb r0, [r4]
	cmp r0, #0
	bne _08022A88
	ldrh r0, [r1, #0x18]
	bl sub_080D7910
_08022A88:
	ldr r1, [r6, #0x14]
	mov sb, r1
	mov r4, sb
	adds r4, #0x28
	ldrb r0, [r4]
	bl sub_08023368
	adds r5, r0, #0
	ldr r7, _08022ADC @ =gEwramData
	ldr r1, [r7]
	ldr r2, _08022AE0 @ =0x00013268
	adds r0, r1, r2
	ldrb r0, [r0]
	strb r0, [r6, #0x18]
	ldrb r0, [r4]
	cmp r0, #0
	bne _08022AEC
	ldr r3, _08022AE4 @ =0x000131C0
	adds r0, r1, r3
	ldrb r0, [r0]
	ldrb r2, [r5, #0x12]
	cmp r0, r2
	beq _08022AD0
	adds r3, #8
	adds r0, r1, r3
	ldr r0, [r0]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r0, r4
	beq _08022AD0
	bl sub_0803B980
	ldr r0, [r7]
	ldr r1, _08022AE8 @ =0x000131C8
	adds r0, r0, r1
	str r4, [r0]
_08022AD0:
	movs r4, #1
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xe
	b _08022B1A
	.align 2, 0
_08022ADC: .4byte gEwramData
_08022AE0: .4byte 0x00013268
_08022AE4: .4byte 0x000131C0
_08022AE8: .4byte 0x000131C8
_08022AEC:
	ldr r2, _08022B84 @ =0x000131C1
	adds r0, r1, r2
	ldrb r0, [r0]
	ldrb r3, [r5, #0x12]
	cmp r0, r3
	beq _08022B12
	adds r2, #0xb
	adds r0, r1, r2
	ldr r0, [r0]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r0, r4
	beq _08022B12
	bl sub_0803B980
	ldr r0, [r7]
	ldr r3, _08022B88 @ =0x000131CC
	adds r0, r0, r3
	str r4, [r0]
_08022B12:
	movs r4, #2
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xf
_08022B1A:
	strb r0, [r1]
	ldr r1, _08022B8C @ =0x084F10C0
	ldrb r0, [r5, #0x12]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	adds r7, r0, #0
	ldr r0, _08022B90 @ =0x082098B8
	ldrb r1, [r5, #0x15]
	movs r2, #1
	adds r3, r4, #0
	bl sub_0803C7B4
	ldr r1, _08022B94 @ =0x084F117C
	ldrb r0, [r5, #0x13]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r6, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_0803B924
	ldrb r1, [r5, #0x14]
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r3, _08022B98 @ =gEwramData
	ldr r0, [r3]
	mov r2, sb
	adds r2, #0x28
	ldr r1, _08022B9C @ =0x000131C0
	adds r0, r0, r1
	ldrb r1, [r2]
	adds r0, r0, r1
	ldrb r1, [r5, #0x12]
	strb r1, [r0]
	ldrb r0, [r2]
	cmp r0, #0
	bne _08022BA4
	ldr r0, [r3]
	ldr r2, _08022BA0 @ =0x000131C8
	adds r0, r0, r2
	str r7, [r0]
	movs r1, #3
	movs r4, #0
	b _08022BB0
	.align 2, 0
_08022B84: .4byte 0x000131C1
_08022B88: .4byte 0x000131CC
_08022B8C: .4byte 0x084F10C0
_08022B90: .4byte 0x082098B8
_08022B94: .4byte 0x084F117C
_08022B98: .4byte gEwramData
_08022B9C: .4byte 0x000131C0
_08022BA0: .4byte 0x000131C8
_08022BA4:
	ldr r0, [r3]
	ldr r3, _08022C24 @ =0x000131CC
	adds r0, r0, r3
	str r7, [r0]
	movs r1, #5
	movs r4, #1
_08022BB0:
	ldr r2, _08022C28 @ =sub_080234B0
	adds r0, r6, #0
	movs r3, #0
	bl sub_0804277C
	adds r0, r6, #0
	ldr r1, _08022C2C @ =0x0810FCF8
	bl sub_08042884
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r5, #0x17]
	adds r0, r4, #0
	bl sub_08042A54
	ldr r0, _08022C30 @ =sub_08023508
	str r0, [r6, #4]
	movs r2, #0x80
	lsls r2, r2, #0xc
	str r2, [r6, #0x50]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08022C02
	ldr r0, [r6, #0x1c]
	rsbs r0, r0, #0
	str r0, [r6, #0x1c]
	ldr r0, [r6, #0x20]
	rsbs r0, r0, #0
	str r0, [r6, #0x20]
	rsbs r0, r2, #0
	str r0, [r6, #0x50]
_08022C02:
	ldr r0, [r6, #0x48]
	ldr r1, [r6, #0x50]
	adds r0, r0, r1
	str r0, [r6, #0x48]
	mov r0, r8
	ldr r2, [r0, #0x10]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r2, r0
	cmp r2, #0
	beq _08022C34
	adds r1, r6, #0
	adds r1, #0x4e
	movs r0, #0xc
	strh r0, [r1]
	adds r4, r1, #0
	b _08022C3C
	.align 2, 0
_08022C24: .4byte 0x000131CC
_08022C28: .4byte sub_080234B0
_08022C2C: .4byte 0x0810FCF8
_08022C30: .4byte sub_08023508
_08022C34:
	adds r0, r6, #0
	adds r0, #0x4e
	strh r2, [r0]
	adds r4, r0, #0
_08022C3C:
	ldr r2, _08022CD4 @ =sub_080228F8
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r5, r0, #0
	cmp r5, #0
	beq _08022C94
	movs r1, #0
	ldrsh r3, [r4, r1]
	subs r3, #0x1a
	mov r1, r8
	movs r2, #8
	bl sub_08031EA4
	bl sub_08000A90
	ldr r4, _08022CD8 @ =0x00007FFF
	ands r0, r4
	ldr r1, _08022CDC @ =0xFFFF0000
	adds r0, r0, r1
	str r0, [r5, #0x48]
	bl sub_08000A90
	ands r0, r4
	ldr r1, _08022CE0 @ =0xFFFEC000
	subs r1, r1, r0
	str r1, [r5, #0x4c]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08022C88
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	str r0, [r5, #0x48]
_08022C88:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #2
	orrs r1, r2
	strb r1, [r0]
_08022C94:
	movs r0, #0
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
_08022C9E:
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	mov r3, r8
	ldr r2, [r3, #0x10]
	movs r0, #0x20
	ands r2, r0
	cmp r2, #0
	bne _08022CEC
	ldr r0, _08022CE4 @ =gEwramData
	ldr r1, [r0]
	mov r0, r8
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r3, _08022CE8 @ =0x0001311C
	adds r1, r1, r3
	adds r1, r1, r0
	str r2, [r1]
	adds r0, r6, #0
	bl sub_08000E14
	b _08022DD8
	.align 2, 0
_08022CD4: .4byte sub_080228F8
_08022CD8: .4byte 0x00007FFF
_08022CDC: .4byte 0xFFFF0000
_08022CE0: .4byte 0xFFFEC000
_08022CE4: .4byte gEwramData
_08022CE8: .4byte 0x0001311C
_08022CEC:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	bne _08022D0C
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bne _08022D0C
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
_08022D0C:
	ldrb r0, [r6, #0xd]
	cmp r0, #3
	bls _08022D1A
	ldr r0, [r6, #0x48]
	ldr r1, [r6, #0x50]
	adds r0, r0, r1
	str r0, [r6, #0x48]
_08022D1A:
	mov r1, r8
	ldr r0, [r1, #0x40]
	ldr r1, [r6, #0x48]
	adds r0, r0, r1
	str r0, [r6, #0x40]
	mov r2, r8
	ldr r0, [r2, #0x44]
	ldr r1, [r6, #0x4c]
	adds r0, r0, r1
	ldr r3, _08022D64 @ =0xFFE40000
	adds r0, r0, r3
	str r0, [r6, #0x44]
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	bne _08022DA0
	adds r0, r6, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r6, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r6, #0x50]
	cmp r0, #0
	ble _08022D68
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0
	bl sub_080020D8
	b _08022D76
	.align 2, 0
_08022D64: .4byte 0xFFE40000
_08022D68:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0
	bl sub_0800210C
_08022D76:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08022DAC
	lsls r1, r0, #0x10
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	ldr r1, [r6, #0x44]
	movs r2, #7
	movs r3, #8
	bl sub_08045CEC
	movs r0, #1
	str r0, [r6, #0x1c]
	movs r0, #0xa7
	lsls r0, r0, #1
	bl sub_080D7910
	b _08022DAC
_08022DA0:
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_08022DAC:
	mov r1, r8
	ldrb r0, [r1, #0xf]
	strb r0, [r6, #0xf]
	adds r0, r6, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _08022DD8
	ldr r0, _08022DE4 @ =gEwramData
	ldr r1, [r0]
	mov r0, r8
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r2, _08022DE8 @ =0x0001311C
	adds r1, r1, r2
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	adds r0, r6, #0
	bl sub_08000E14
_08022DD8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022DE4: .4byte gEwramData
_08022DE8: .4byte 0x0001311C

	thumb_func_start sub_08022DEC
sub_08022DEC: @ 0x08022DEC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #0x14]
	mov r8, r0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _08022E08
	cmp r0, #1
	bne _08022E06
	b _08022FA4
_08022E06:
	b _08022FC8
_08022E08:
	mov sb, r8
	mov r4, r8
	adds r4, #0x28
	ldrb r0, [r4]
	bl sub_08023368
	adds r6, r0, #0
	ldr r7, _08022E58 @ =gEwramData
	ldr r1, [r7]
	ldr r2, _08022E5C @ =0x00013268
	adds r0, r1, r2
	ldrb r0, [r0]
	strb r0, [r5, #0x18]
	ldrb r0, [r4]
	cmp r0, #0
	bne _08022E64
	subs r2, #0xa8
	adds r0, r1, r2
	ldrb r0, [r0]
	ldrb r2, [r6, #0x12]
	cmp r0, r2
	beq _08022E4E
	ldr r2, _08022E60 @ =0x000131C8
	adds r0, r1, r2
	ldr r0, [r0]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r0, r4
	beq _08022E4E
	bl sub_0803B980
	ldr r0, [r7]
	ldr r1, _08022E60 @ =0x000131C8
	adds r0, r0, r1
	str r4, [r0]
_08022E4E:
	movs r4, #1
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0xe
	b _08022E92
	.align 2, 0
_08022E58: .4byte gEwramData
_08022E5C: .4byte 0x00013268
_08022E60: .4byte 0x000131C8
_08022E64:
	ldr r2, _08022EFC @ =0x000131C1
	adds r0, r1, r2
	ldrb r0, [r0]
	ldrb r2, [r6, #0x12]
	cmp r0, r2
	beq _08022E8A
	ldr r2, _08022F00 @ =0x000131CC
	adds r0, r1, r2
	ldr r0, [r0]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r0, r4
	beq _08022E8A
	bl sub_0803B980
	ldr r0, [r7]
	ldr r1, _08022F00 @ =0x000131CC
	adds r0, r0, r1
	str r4, [r0]
_08022E8A:
	movs r4, #2
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0xf
_08022E92:
	strb r0, [r1]
	ldr r1, _08022F04 @ =0x084F10C0
	ldrb r0, [r6, #0x12]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	adds r7, r0, #0
	ldr r0, _08022F08 @ =0x082098B8
	ldrb r1, [r6, #0x15]
	movs r2, #1
	adds r3, r4, #0
	bl sub_0803C7B4
	ldr r1, _08022F0C @ =0x084F117C
	ldrb r0, [r6, #0x13]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_0803B924
	ldrb r1, [r6, #0x14]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r3, _08022F10 @ =gEwramData
	ldr r0, [r3]
	mov r2, sb
	adds r2, #0x28
	ldr r1, _08022F14 @ =0x000131C0
	adds r0, r0, r1
	ldrb r1, [r2]
	adds r0, r0, r1
	ldrb r1, [r6, #0x12]
	strb r1, [r0]
	ldrb r0, [r2]
	cmp r0, #0
	bne _08022F1C
	ldr r0, [r3]
	ldr r2, _08022F18 @ =0x000131C8
	adds r0, r0, r2
	str r7, [r0]
	movs r1, #3
	movs r4, #0
	b _08022F28
	.align 2, 0
_08022EFC: .4byte 0x000131C1
_08022F00: .4byte 0x000131CC
_08022F04: .4byte 0x084F10C0
_08022F08: .4byte 0x082098B8
_08022F0C: .4byte 0x084F117C
_08022F10: .4byte gEwramData
_08022F14: .4byte 0x000131C0
_08022F18: .4byte 0x000131C8
_08022F1C:
	ldr r0, [r3]
	ldr r1, _0802300C @ =0x000131CC
	adds r0, r0, r1
	str r7, [r0]
	movs r1, #5
	movs r4, #1
_08022F28:
	ldr r2, _08023010 @ =sub_0802346C
	adds r0, r5, #0
	movs r3, #0
	bl sub_0804277C
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r6, #0x17]
	adds r0, r4, #0
	bl sub_08042A54
	ldr r4, [r5, #0x14]
	adds r4, #0x28
	ldrb r0, [r4]
	bl sub_08023368
	ldrh r0, [r0, #0x18]
	bl sub_080D7910
	ldrb r0, [r4]
	cmp r0, #0
	bne _08022F80
	bl sub_08000A90
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08022F80
	ldr r4, _08023014 @ =0x084F1264
	bl sub_08000A90
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r0, [r1]
	bl sub_080D7910
_08022F80:
	ldr r0, _08023018 @ =sub_0803B9D0
	str r0, [r5, #4]
	mov r2, r8
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08022F9A
	adds r1, r5, #0
	adds r1, #0x4e
	movs r0, #0xd
	strh r0, [r1]
_08022F9A:
	movs r0, #0
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
_08022FA4:
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	mov r1, r8
	ldr r0, [r1, #0x40]
	str r0, [r5, #0x40]
	adds r1, #0x46
	adds r0, r5, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
_08022FC8:
	mov r2, r8
	ldrb r0, [r2, #0xf]
	strb r0, [r5, #0xf]
	adds r4, r5, #0
	adds r4, #0x65
	ldrb r6, [r4]
	adds r0, r5, #0
	bl sub_0803F17C
	cmp r0, #3
	beq _08023076
	ldr r2, _0802301C @ =gEwramData
	ldr r3, [r2]
	ldr r1, _08023020 @ =0x000004CC
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08023028
	ldr r0, _08023024 @ =0x00013268
	adds r1, r3, r0
	ldrb r0, [r5, #0x18]
	ldrb r1, [r1]
	cmp r0, r1
	beq _08023028
	adds r0, r5, #0
	adds r0, #0x72
	ldrb r1, [r0]
	movs r2, #2
	orrs r1, r2
	strb r1, [r0]
	b _08023092
	.align 2, 0
_0802300C: .4byte 0x000131CC
_08023010: .4byte sub_0802346C
_08023014: .4byte 0x084F1264
_08023018: .4byte sub_0803B9D0
_0802301C: .4byte gEwramData
_08023020: .4byte 0x000004CC
_08023024: .4byte 0x00013268
_08023028:
	ldrb r1, [r4]
	cmp r6, r1
	beq _08023092
	adds r0, r5, #0
	adds r0, #0x64
	ldr r1, [r2]
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r2, _08023064 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	ldrb r0, [r4]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r1, r0, r1
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _08023068
	ldr r1, [r1, #8]
	adds r0, r5, #0
	bl sub_08042848
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	b _08023092
	.align 2, 0
_08023064: .4byte 0x0001017C
_08023068:
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	b _08023092
_08023076:
	ldr r0, _080230A0 @ =gEwramData
	ldr r1, [r0]
	mov r0, r8
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r2, _080230A4 @ =0x0001311C
	adds r1, r1, r2
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	adds r0, r5, #0
	bl sub_08000E14
_08023092:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080230A0: .4byte gEwramData
_080230A4: .4byte 0x0001311C

	thumb_func_start sub_080230A8
sub_080230A8: @ 0x080230A8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x28
	ldrb r0, [r4]
	bl sub_08023368
	cmp r0, #0
	bne _080230BE
	movs r0, #0
	b _08023132
_080230BE:
	ldr r1, _08023138 @ =0x084F124C
	ldrb r0, [r0, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	movs r0, #2
	movs r1, #0x10
	bl sub_08000DA0
	ldr r6, _0802313C @ =gEwramData
	ldr r2, [r6]
	ldrb r1, [r4]
	lsls r1, r1, #2
	ldr r7, _08023140 @ =0x0001311C
	adds r2, r2, r7
	adds r1, r2, r1
	str r0, [r1]
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _08023126
	str r5, [r0, #0x14]
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r2, r0
	ldr r2, [r0]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r2, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r3, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r6]
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r2, r7, #0
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r1, #0x59
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
_08023126:
	ldr r0, [r6]
	ldrb r1, [r4]
	lsls r1, r1, #2
	adds r0, r0, r7
	adds r0, r0, r1
	ldr r0, [r0]
_08023132:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08023138: .4byte 0x084F124C
_0802313C: .4byte gEwramData
_08023140: .4byte 0x0001311C

	thumb_func_start sub_08023144
sub_08023144: @ 0x08023144
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, [r5, #0x14]
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _08023156
	cmp r0, #1
	beq _08023184
	b _08023264
_08023156:
	ldr r2, _080231DC @ =sub_080211F4
	adds r0, r5, #0
	movs r1, #3
	movs r3, #0
	bl sub_0804277C
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	movs r1, #0x14
	bl sub_08042A54
	movs r0, #0xa
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
_08023184:
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _080231A8
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080231A8
	ldr r4, _080231E0 @ =0x084F126C
	bl sub_08000A90
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r0, [r1]
	bl sub_080D7910
_080231A8:
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r3, [r6, #0x10]
	movs r0, #0x20
	ands r3, r0
	cmp r3, #0
	bne _080231EC
	ldr r0, _080231E4 @ =gEwramData
	ldr r1, [r0]
	adds r0, r6, #0
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r2, _080231E8 @ =0x0001311C
	adds r1, r1, r2
	adds r1, r1, r0
	str r3, [r1]
	adds r0, r5, #0
	bl sub_08000E14
	b _08023264
	.align 2, 0
_080231DC: .4byte sub_080211F4
_080231E0: .4byte 0x084F126C
_080231E4: .4byte gEwramData
_080231E8: .4byte 0x0001311C
_080231EC:
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	adds r3, r5, #0
	adds r3, #0x58
	eors r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r2, r6, #0
	adds r2, #0x64
	ldr r0, _08023250 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _08023254 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r6, #0
	adds r0, #0x65
	ldrb r0, [r0]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r2, r0, r1
	ldrb r0, [r2, #4]
	cmp r0, #2
	bne _08023258
	ldr r1, [r2, #8]
	adds r1, #4
	adds r0, r5, #0
	bl sub_08042848
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	b _08023262
	.align 2, 0
_08023250: .4byte gEwramData
_08023254: .4byte 0x0001017C
_08023258:
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
_08023262:
	strb r0, [r2]
_08023264:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802326C
sub_0802326C: @ 0x0802326C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r2, _08023300 @ =sub_08023144
	movs r0, #2
	movs r1, #0x10
	bl sub_08000DA0
	ldr r6, _08023304 @ =gEwramData
	ldr r2, [r6]
	adds r5, r4, #0
	adds r5, #0x28
	ldrb r1, [r5]
	lsls r1, r1, #2
	ldr r7, _08023308 @ =0x0001311C
	adds r2, r2, r7
	adds r1, r2, r1
	str r0, [r1]
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _080232EC
	str r4, [r0, #0x14]
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r2, r0
	ldr r2, [r0]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r2, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r3, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r6]
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r2, r7, #0
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r1, #0x59
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	ldr r1, [r6]
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r2, r7, #0
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r1, #0x59
	ldrb r0, [r1]
	movs r2, #4
	orrs r0, r2
	strb r0, [r1]
_080232EC:
	ldr r0, [r6]
	ldrb r1, [r5]
	lsls r1, r1, #2
	adds r0, r0, r7
	adds r0, r0, r1
	ldr r0, [r0]
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08023300: .4byte sub_08023144
_08023304: .4byte gEwramData
_08023308: .4byte 0x0001311C

	thumb_func_start sub_0802330C
sub_0802330C: @ 0x0802330C
	push {lr}
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xff
	bne _08023320
	ldr r0, _0802331C @ =0x084F1270
	b _0802332A
	.align 2, 0
_0802331C: .4byte 0x084F1270
_08023320:
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08023330 @ =0x08505D3C
	adds r0, r0, r1
_0802332A:
	pop {r1}
	bx r1
	.align 2, 0
_08023330: .4byte 0x08505D3C

	thumb_func_start sub_08023334
sub_08023334: @ 0x08023334
	push {lr}
	ldr r0, _08023350 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08023354 @ =0x00013268
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #0xff
	beq _0802335C
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08023358 @ =0x08505D3C
	adds r0, r0, r1
	b _0802335E
	.align 2, 0
_08023350: .4byte gEwramData
_08023354: .4byte 0x00013268
_08023358: .4byte 0x08505D3C
_0802335C:
	ldr r0, _08023364 @ =0x084F1270
_0802335E:
	pop {r1}
	bx r1
	.align 2, 0
_08023364: .4byte 0x084F1270

	thumb_func_start sub_08023368
sub_08023368: @ 0x08023368
	push {lr}
	cmp r0, #0
	bne _08023388
	ldr r0, _08023380 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08023384 @ =0x00013268
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #0xff
	bne _08023396
	b _080233B0
	.align 2, 0
_08023380: .4byte gEwramData
_08023384: .4byte 0x00013268
_08023388:
	ldr r0, _080233A4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080233A8 @ =0x000133F2
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #0xff
	beq _080233B0
_08023396:
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080233AC @ =0x08505D3C
	adds r0, r0, r1
	b _080233B2
	.align 2, 0
_080233A4: .4byte gEwramData
_080233A8: .4byte 0x000133F2
_080233AC: .4byte 0x08505D3C
_080233B0:
	ldr r0, _080233B8 @ =0x084F1270
_080233B2:
	pop {r1}
	bx r1
	.align 2, 0
_080233B8: .4byte 0x084F1270

	thumb_func_start sub_080233BC
sub_080233BC: @ 0x080233BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080233DC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080233E0 @ =0x00013268
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #0xff
	beq _080233E8
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080233E4 @ =0x08505D3C
	adds r2, r0, r1
	b _080233EA
	.align 2, 0
_080233DC: .4byte gEwramData
_080233E0: .4byte 0x00013268
_080233E4: .4byte 0x08505D3C
_080233E8:
	ldr r2, _080233FC @ =0x084F1270
_080233EA:
	ldr r1, _08023400 @ =0x084F1238
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r3, [r0]
	cmp r2, #0
	bne _08023404
	ldrb r0, [r3]
	b _0802341E
	.align 2, 0
_080233FC: .4byte 0x084F1270
_08023400: .4byte 0x084F1238
_08023404:
	cmp r4, #2
	ble _08023410
	ldrb r0, [r2, #8]
	adds r0, r3, r0
	ldrb r0, [r0]
	b _0802341E
_08023410:
	ldrb r0, [r2, #8]
	lsls r1, r0, #1
	adds r1, r1, r0
	ldrb r2, [r2, #0x16]
	adds r1, r1, r2
	adds r1, r3, r1
	ldrb r0, [r1]
_0802341E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08023424
sub_08023424: @ 0x08023424
	push {lr}
	ldr r0, _08023440 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08023444 @ =0x00013268
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #0xff
	beq _0802344C
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08023448 @ =0x08505D3C
	adds r0, r0, r1
	b _0802344E
	.align 2, 0
_08023440: .4byte gEwramData
_08023444: .4byte 0x00013268
_08023448: .4byte 0x08505D3C
_0802344C:
	ldr r0, _08023458 @ =0x084F1270
_0802344E:
	cmp r0, #0
	bne _0802345C
	movs r0, #0
	b _08023468
	.align 2, 0
_08023458: .4byte 0x084F1270
_0802345C:
	ldrh r1, [r0, #0x10]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_08023468:
	pop {r1}
	bx r1

	thumb_func_start sub_0802346C
sub_0802346C: @ 0x0802346C
	push {lr}
	adds r3, r1, #0
	ldr r0, _080234A0 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _080234A4 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802348C
	ldr r1, _080234A8 @ =0x00013220
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r3, r0
	bne _0802349C
_0802348C:
	ldr r1, _080234AC @ =0x00013110
	adds r0, r2, r1
	ldr r2, [r0]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r2, #0x10]
_0802349C:
	pop {r0}
	bx r0
	.align 2, 0
_080234A0: .4byte gEwramData
_080234A4: .4byte 0x000004CC
_080234A8: .4byte 0x00013220
_080234AC: .4byte 0x00013110

	thumb_func_start sub_080234B0
sub_080234B0: @ 0x080234B0
	push {r4, lr}
	adds r4, r1, #0
	adds r3, r0, #0
	adds r3, #0x72
	ldrb r2, [r3]
	movs r1, #2
	orrs r1, r2
	strb r1, [r3]
	movs r1, #1
	str r1, [r0, #0x1c]
	ldr r0, _080234F8 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _080234FC @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080234E0
	ldr r1, _08023500 @ =0x00013220
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r4, r0
	bne _080234F0
_080234E0:
	ldr r1, _08023504 @ =0x00013110
	adds r0, r2, r1
	ldr r2, [r0]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r2, #0x10]
_080234F0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080234F8: .4byte gEwramData
_080234FC: .4byte 0x000004CC
_08023500: .4byte 0x00013220
_08023504: .4byte 0x00013110

	thumb_func_start sub_08023508
sub_08023508: @ 0x08023508
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x14]
	ldr r5, [r4, #0x40]
	ldr r6, [r4, #0x44]
	ldr r0, [r1, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r1, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	adds r0, r4, #0
	bl sub_0803B9D0
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08023530
sub_08023530: @ 0x08023530
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r2, r1, #0
	movs r0, #2
	movs r1, #0x10
	bl sub_08000DA0
	adds r3, r0, #0
	cmp r3, #0
	bne _0802354A
	b _080235BE
_08023546:
	adds r0, r1, #0
	b _08023572
_0802354A:
	movs r1, #0
	ldr r4, _080235AC @ =gEwramData
	ldr r0, [r4]
	ldr r6, _080235B0 @ =0x00013124
	adds r2, r0, r6
_08023554:
	lsls r0, r1, #0x18
	asrs r1, r0, #0x18
	lsls r0, r1, #2
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _08023546
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _08023554
	movs r0, #1
	rsbs r0, r0, #0
_08023572:
	lsls r0, r0, #0x18
	asrs r2, r0, #0x18
	cmp r2, #0
	blt _080235B8
	ldr r0, [r4]
	lsls r1, r2, #2
	ldr r6, _080235B0 @ =0x00013124
	adds r0, r0, r6
	adds r0, r0, r1
	str r3, [r0]
	str r5, [r3, #0x14]
	strh r2, [r3, #0x1a]
	adds r2, r3, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r4]
	ldr r0, _080235B4 @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r3, #0
	b _080235C0
	.align 2, 0
_080235AC: .4byte gEwramData
_080235B0: .4byte 0x00013124
_080235B4: .4byte 0x000131BE
_080235B8:
	adds r0, r3, #0
	bl sub_08000E14
_080235BE:
	movs r0, #0
_080235C0:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080235C8
sub_080235C8: @ 0x080235C8
	push {r4, r5, r6, lr}
	movs r2, #0
	ldr r6, _080236EC @ =gEwramData
_080235CE:
	ldr r0, [r6]
	lsls r2, r2, #0x18
	asrs r1, r2, #0x16
	ldr r3, _080236F0 @ =0x00013124
	adds r0, r0, r3
	adds r0, r0, r1
	ldr r4, [r0]
	adds r5, r2, #0
	cmp r4, #0
	beq _0802361A
	ldr r0, [r4]
	cmp r0, #0
	beq _08023608
	adds r2, r4, #0
	adds r2, #0x58
	ldrh r1, [r2]
	ldr r3, _080236F4 @ =0x0000101F
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08023602
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_08023602:
	adds r0, r4, #0
	bl sub_08000E14
_08023608:
	ldr r2, _080236EC @ =gEwramData
	ldr r1, [r2]
	asrs r0, r5, #0x16
	ldr r3, _080236F0 @ =0x00013124
	adds r1, r1, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	adds r6, r2, #0
_0802361A:
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r5, r1
	lsrs r2, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _080235CE
	adds r4, r6, #0
	ldr r0, [r4]
	ldr r2, _080236F8 @ =0x00012FE4
	adds r1, r0, r2
	ldr r0, [r1]
	cmp r0, #0
	beq _0802363A
	movs r0, #1
	str r0, [r1]
_0802363A:
	ldr r2, [r4]
	ldr r3, _080236FC @ =0x000004BE
	adds r1, r2, r3
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0802368E
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08023700 @ =0x0000042C
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	bne _08023662
	ldr r0, _08023704 @ =0x00001038
	bl sub_080D7910
_08023662:
	bl sub_08013E74
	ldr r0, [r4]
	ldr r2, _08023708 @ =0x000254CC
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #0
	beq _08023676
	bl sub_080D7910
_08023676:
	ldr r0, [r6]
	ldr r3, _0802370C @ =0x000254CE
	adds r2, r0, r3
	ldrh r0, [r2]
	cmp r0, #0
	beq _08023686
	bl sub_080D7910
_08023686:
	movs r0, #0xb7
	lsls r0, r0, #1
	bl sub_08013E18
_0802368E:
	bl sub_08013D30
	ldr r4, _080236EC @ =gEwramData
	ldr r1, [r4]
	ldr r0, _08023710 @ =0x00013168
	adds r2, r1, r0
	ldr r5, _08023714 @ =0x00013110
	adds r0, r1, r5
	ldr r0, [r0]
	str r0, [r2]
	ldr r2, _08023718 @ =0x000131BE
	adds r1, r1, r2
	movs r0, #0
	strb r0, [r1]
	bl sub_0802215C
	ldr r1, [r4]
	ldr r3, _0802371C @ =0x00013266
	adds r0, r1, r3
	ldrb r2, [r0]
	cmp r2, #0
	bne _080236E6
	adds r0, r1, r5
	ldr r1, [r0]
	ldrb r0, [r1, #0xa]
	cmp r0, #2
	bne _080236E6
	ldrb r0, [r1, #0xb]
	cmp r0, #0
	beq _080236E6
	strb r2, [r1, #0xb]
	ldr r2, [r4]
	adds r2, r2, r5
	ldr r3, [r2]
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r2, [r2]
	ldr r0, [r2, #0x10]
	ldr r1, _08023720 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r2, #0x10]
_080236E6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080236EC: .4byte gEwramData
_080236F0: .4byte 0x00013124
_080236F4: .4byte 0x0000101F
_080236F8: .4byte 0x00012FE4
_080236FC: .4byte 0x000004BE
_08023700: .4byte 0x0000042C
_08023704: .4byte 0x00001038
_08023708: .4byte 0x000254CC
_0802370C: .4byte 0x000254CE
_08023710: .4byte 0x00013168
_08023714: .4byte 0x00013110
_08023718: .4byte 0x000131BE
_0802371C: .4byte 0x00013266
_08023720: .4byte 0xFFFFFEFF

	thumb_func_start sub_08023724
sub_08023724: @ 0x08023724
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x14
	ldr r2, _08023784 @ =gEwramData
	ldr r3, [r2]
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	ldr r5, _08023788 @ =0x00013124
	adds r0, r3, r5
	adds r0, r0, r1
	ldr r5, [r0]
	adds r7, r4, #0
	adds r7, #0x48
	ldr r1, _0802378C @ =0x000131BE
	adds r0, r3, r1
	ldrb r0, [r0]
	movs r1, #0
	mov r8, r2
	cmp r0, #0
	bne _08023764
	ldr r2, _08023788 @ =0x00013124
	adds r0, r3, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _08023764
	movs r1, #1
_08023764:
	cmp r1, #0
	bne _0802377C
	mov r1, r8
	ldr r0, [r1]
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	ldr r2, _08023788 @ =0x00013124
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _08023790
_0802377C:
	adds r0, r4, #0
	bl sub_08000E14
	b _0802381E
	.align 2, 0
_08023784: .4byte gEwramData
_08023788: .4byte 0x00013124
_0802378C: .4byte 0x000131BE
_08023790:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080237A0
	ldr r0, _08023830 @ =sub_0803B9D0
	str r0, [r4, #4]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_080237A0:
	movs r3, #7
	movs r0, #0x65
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0x65
	adds r1, r1, r4
	mov sb, r1
	movs r2, #0x42
	adds r2, r2, r4
	mov sl, r2
	adds r0, r4, #0
	adds r0, #0x46
	str r0, [sp]
	adds r1, r6, #0
	adds r1, #0x18
	adds r2, r7, #6
_080237C0:
	ldrb r0, [r2]
	strb r0, [r2, #1]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	subs r1, #4
	subs r2, #1
	subs r3, #1
	cmp r3, #0
	bgt _080237C0
	adds r0, r5, #0
	bl sub_08002188
	strh r0, [r6]
	adds r0, r5, #0
	bl sub_080021A8
	strh r0, [r6, #2]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r7]
	ldrb r0, [r4, #0xb]
	adds r0, r7, r0
	ldrb r0, [r0]
	mov r2, sb
	strb r0, [r2]
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, _08023834 @ =gEwramData
	ldr r2, [r1]
	ldr r5, _08023838 @ =0x0000A094
	adds r2, r2, r5
	ldrh r0, [r0]
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	mov r1, sl
	strh r0, [r1]
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	ldrh r1, [r2, #0xa]
	subs r0, r0, r1
	ldr r2, [sp]
	strh r0, [r2]
_0802381E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023830: .4byte sub_0803B9D0
_08023834: .4byte gEwramData
_08023838: .4byte 0x0000A094

	thumb_func_start sub_0802383C
sub_0802383C: @ 0x0802383C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	bl sub_0803B998
	mov r8, r0
	adds r2, r7, #0
	adds r2, #0x64
	ldr r0, _08023880 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _08023884 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r4, [r1]
	adds r5, r4, #0
	ldr r2, _08023888 @ =sub_08023724
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r6, r0, #0
	cmp r6, #0
	bne _0802388C
	movs r0, #0
	b _0802392C
	.align 2, 0
_08023880: .4byte gEwramData
_08023884: .4byte 0x0001017C
_08023888: .4byte sub_08023724
_0802388C:
	cmp r4, #0
	bne _0802389A
	adds r0, r6, #0
	bl sub_08000E14
	movs r0, #0
	b _0802392C
_0802389A:
	adds r0, r7, #0
	adds r0, #0x5a
	ldrb r3, [r0]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1c
	adds r0, r6, #0
	adds r1, r5, #0
	mov r2, r8
	bl sub_0803B924
	adds r4, r7, #0
	adds r4, #0x65
	ldrb r0, [r4]
	adds r1, r6, #0
	adds r1, #0x65
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	subs r1, #9
	strb r0, [r1]
	movs r0, #0x48
	adds r0, r0, r6
	mov sl, r0
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r6, #0
	adds r3, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	mov r1, sb
	strb r1, [r6, #0xb]
	ldrh r0, [r7, #0x1a]
	strb r0, [r6, #0xc]
	movs r5, #7
	mov r8, r4
	movs r2, #0x59
	adds r2, r2, r6
	mov sb, r2
	adds r4, r6, #0
	adds r4, #0x30
_080238FC:
	mov r0, sl
	adds r1, r0, r5
	mov r2, r8
	ldrb r0, [r2]
	strb r0, [r1]
	adds r0, r7, #0
	bl sub_08002188
	strh r0, [r4]
	adds r0, r7, #0
	bl sub_080021A8
	strh r0, [r4, #2]
	subs r4, #4
	subs r5, #1
	cmp r5, #0
	bne _080238FC
	mov r1, sb
	ldrb r0, [r1]
	movs r1, #2
	orrs r0, r1
	mov r2, sb
	strb r0, [r2]
	adds r0, r6, #0
_0802392C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802393C
sub_0802393C: @ 0x0802393C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r0, #0
	mov sl, r0
	adds r0, r7, #0
	bl sub_08002188
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r7, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r6, #0
	lsls r4, r4, #0x10
	mov sb, r4
	adds r5, r7, #0
	adds r5, #0x46
	mov r8, sb
_0802396E:
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	mov r1, r8
	asrs r0, r1, #0x10
	adds r1, r4, #0
	bl sub_08001D94
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bne _080239BE
	adds r0, r4, #0
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r0, [r5]
	adds r0, #8
	strh r0, [r5]
	adds r6, #1
	cmp r6, #4
	ble _0802396E
_08023998:
	adds r0, r7, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r2, sl
	cmp r2, #0
	beq _080239BA
	mov r2, sb
	asrs r0, r2, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08001D94
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080239D2
_080239BA:
	movs r0, #0
	b _080239D4
_080239BE:
	adds r1, r7, #0
	adds r1, #0x46
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	movs r0, #1
	mov sl, r0
	b _08023998
_080239D2:
	movs r0, #1
_080239D4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080239E4
sub_080239E4: @ 0x080239E4
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r4, [r3, #0x14]
	ldr r1, [r3, #0x20]
	ldr r0, _08023A24 @ =gEwramData
	ldr r2, [r0]
	ldr r5, _08023A28 @ =0x000131BE
	adds r0, r2, r5
	ldrb r0, [r0]
	movs r5, #0
	cmp r0, #0
	bne _08023A08
	ldr r6, _08023A2C @ =0x00013124
	adds r0, r2, r6
	ldr r0, [r0]
	cmp r0, #0
	bne _08023A08
	movs r5, #1
_08023A08:
	cmp r5, #0
	bne _08023A1A
	ldr r0, [r4]
	cmp r0, #0
	beq _08023A1A
	ldrb r0, [r4, #0x10]
	ldrb r2, [r3, #0x10]
	cmp r0, r2
	beq _08023A30
_08023A1A:
	adds r0, r3, #0
	bl sub_08000E14
	b _08023A68
	.align 2, 0
_08023A24: .4byte gEwramData
_08023A28: .4byte 0x000131BE
_08023A2C: .4byte 0x00013124
_08023A30:
	movs r5, #0x34
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bgt _08023A42
	adds r1, r3, #0
	adds r1, #0x24
	movs r0, #1
	strb r0, [r1]
	b _08023A68
_08023A42:
	adds r2, r1, #0
	adds r2, #0x42
	adds r0, r3, #0
	adds r0, #0x52
	ldrh r0, [r0]
	ldrh r2, [r2]
	adds r0, r0, r2
	adds r2, r4, #0
	adds r2, #0x42
	strh r0, [r2]
	adds r1, #0x46
	adds r0, r3, #0
	adds r0, #0x56
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
_08023A68:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08023A70
sub_08023A70: @ 0x08023A70
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldrh r0, [r7, #0x1e]
	lsls r0, r0, #4
	ldr r1, _08023A98 @ =0x084F128C
	adds r0, r0, r1
	mov sb, r0
	ldrb r0, [r7, #0xa]
	cmp r0, #4
	bls _08023A8E
	b _08023E34
_08023A8E:
	lsls r0, r0, #2
	ldr r1, _08023A9C @ =_08023AA0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08023A98: .4byte 0x084F128C
_08023A9C: .4byte _08023AA0
_08023AA0: @ jump table
	.4byte _08023AB4 @ case 0
	.4byte _08023C2A @ case 1
	.4byte _08023D80 @ case 2
	.4byte _08023DD6 @ case 3
	.4byte _08023DF2 @ case 4
_08023AB4:
	mov r0, sb
	ldrb r6, [r0, #0xe]
	ldr r0, [r0]
	mov r1, sb
	ldr r5, [r1, #4]
	ldr r2, [r1, #8]
	mov r8, r2
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _08023B0C @ =gEwramData
	ldr r1, [r4]
	ldr r3, _08023B10 @ =0x000131CC
	adds r1, r1, r3
	str r0, [r1]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r6, _08023B10 @ =0x000131CC
	adds r0, r0, r6
	ldr r2, [r0]
	adds r0, r7, #0
	mov r1, r8
	movs r3, #2
	bl sub_0803B924
	mov r1, sb
	ldrb r0, [r1, #0xc]
	adds r1, r7, #0
	adds r1, #0x65
	strb r0, [r1]
	ldrh r0, [r7, #0x1e]
	cmp r0, #0
	bne _08023B14
	movs r0, #1
	movs r1, #0xa
	bl sub_08042A54
	b _08023B1C
	.align 2, 0
_08023B0C: .4byte gEwramData
_08023B10: .4byte 0x000131CC
_08023B14:
	movs r0, #1
	movs r1, #0x14
	bl sub_08042A54
_08023B1C:
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08023B48
	ldr r0, _08023B40 @ =gEwramData
	ldr r1, [r0]
	movs r2, #0x1a
	ldrsh r0, [r7, r2]
	lsls r0, r0, #2
	ldr r3, _08023B44 @ =0x00013124
	adds r1, r1, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	b _08023E1E
	.align 2, 0
_08023B40: .4byte gEwramData
_08023B44: .4byte 0x00013124
_08023B48:
	ldr r0, _08023BE4 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r5, #0
	movs r0, #0xd
	strb r0, [r1]
	adds r4, r7, #0
	adds r4, #0x58
	movs r0, #0x1f
	ands r2, r0
	ldrb r1, [r4]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r3, [r7, #0x14]
	adds r0, r3, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r1, r3, #0
	adds r1, #0x46
	ldr r6, _08023BE8 @ =0x0000FFE6
	adds r0, r6, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r7, #0
	adds r1, #0x46
	strh r0, [r1]
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	adds r0, r3, #0
	adds r0, #0x58
	ldrb r1, [r0]
	lsrs r1, r1, #6
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4]
	subs r0, #0x42
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #9
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	str r5, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	adds r1, r2, #0
	bl sub_0803E058
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08023BF0
	ldr r0, _08023BEC @ =0xFFFA0000
	b _08023BF4
	.align 2, 0
_08023BE4: .4byte sub_0803B9D0
_08023BE8: .4byte 0x0000FFE6
_08023BEC: .4byte 0xFFFA0000
_08023BF0:
	movs r0, #0xc0
	lsls r0, r0, #0xb
_08023BF4:
	str r0, [r7, #0x48]
	ldr r2, _08023C68 @ =sub_0802D9BC
	adds r0, r7, #0
	movs r1, #5
	movs r3, #0
	bl sub_0804277C
	ldr r1, _08023C6C @ =0x0202FFFF
	adds r0, r7, #0
	bl sub_08042884
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xe6
	bl sub_080D7910
	ldr r0, _08023C70 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08023C74 @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08023C2A:
	ldr r1, [r7, #0x20]
	cmp r1, #0
	beq _08023CA0
	adds r0, r1, #0
	adds r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	bne _08023C9A
	ldr r2, [r1, #0x20]
	ldrh r0, [r7, #0x26]
	adds r1, r0, #1
	strh r1, [r7, #0x26]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x14
	ble _08023C4C
	b _08023D70
_08023C4C:
	adds r0, r2, #0
	adds r0, #0x72
	ldrb r1, [r0]
	movs r2, #4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08023C62
	ldrh r0, [r7, #0x1e]
	cmp r0, #0
	bne _08023C78
_08023C62:
	strb r2, [r7, #0xa]
	b _08023E34
	.align 2, 0
_08023C68: .4byte sub_0802D9BC
_08023C6C: .4byte 0x0202FFFF
_08023C70: .4byte gEwramData
_08023C74: .4byte 0x000131BE
_08023C78:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08023D40
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #3
	strb r0, [r7, #0xa]
	movs r0, #0xf
	strb r0, [r7, #0xd]
	b _08023D40
_08023C9A:
	movs r0, #4
	strb r0, [r7, #0xa]
	b _08023D40
_08023CA0:
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x48]
	adds r0, r0, r1
	str r0, [r7, #0x40]
	adds r0, r7, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r7, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08023CDC
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, #6
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	bl sub_0800207C
	b _08023CEA
_08023CDC:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, #6
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	bl sub_08002058
_08023CEA:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08023D40
	lsls r1, r0, #0x10
	ldr r0, [r7, #0x40]
	adds r0, r0, r1
	str r0, [r7, #0x40]
	movs r0, #0x32
	strb r0, [r7, #0xd]
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	mov r1, sb
	ldrb r0, [r1, #0xf]
	cmp r0, #0
	bne _08023D1E
	movs r0, #0x9c
	lsls r0, r0, #1
	bl sub_080D7910
	movs r0, #2
	b _08023D20
_08023D1E:
	movs r0, #3
_08023D20:
	strb r0, [r7, #0xa]
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08023D32
	movs r0, #0xc0
	lsls r0, r0, #9
	b _08023D34
_08023D32:
	ldr r0, _08023D78 @ =0xFFFE8000
_08023D34:
	str r0, [r7, #0x48]
	ldr r0, _08023D7C @ =0xFFFE0000
	str r0, [r7, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x54]
_08023D40:
	adds r0, r7, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	bne _08023D5A
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08023E34
_08023D5A:
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	subs r2, #1
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
_08023D70:
	movs r0, #4
	strb r0, [r7, #0xa]
	b _08023E34
	.align 2, 0
_08023D78: .4byte 0xFFFE8000
_08023D7C: .4byte 0xFFFE0000
_08023D80:
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x48]
	adds r0, r0, r1
	str r0, [r7, #0x40]
	ldr r0, [r7, #0x44]
	ldr r1, [r7, #0x4c]
	adds r0, r0, r1
	str r0, [r7, #0x44]
	ldr r0, [r7, #0x54]
	adds r1, r1, r0
	str r1, [r7, #0x4c]
	movs r2, #0x24
	ldrsh r0, [r7, r2]
	lsls r0, r0, #0x10
	movs r1, #0x14
	bl __divsi3
	movs r2, #0x80
	lsls r2, r2, #9
	adds r5, r7, #0
	adds r5, #0x58
	ldrb r1, [r5]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	movs r4, #0
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08023DD0
	ldrh r0, [r7, #0x24]
	adds r0, #1
	b _08023DD4
_08023DD0:
	ldrh r0, [r7, #0x24]
	subs r0, #1
_08023DD4:
	strh r0, [r7, #0x24]
_08023DD6:
	ldrb r0, [r7, #0xd]
	adds r1, r0, #0
	cmp r1, #0xa
	bls _08023DE2
	movs r0, #1
	b _08023DE4
_08023DE2:
	movs r0, #2
_08023DE4:
	strb r0, [r7, #0xf]
	lsls r0, r1, #0x18
	cmp r0, #0
	beq _08023DF2
	subs r0, r1, #1
	strb r0, [r7, #0xd]
	b _08023E34
_08023DF2:
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	ldr r0, _08023E28 @ =gEwramData
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r0, [r7, r3]
	lsls r0, r0, #2
	ldr r6, _08023E2C @ =0x00013124
	adds r1, r2, r6
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _08023E30 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
_08023E1E:
	adds r0, r7, #0
	bl sub_08000E14
	b _08023E40
	.align 2, 0
_08023E28: .4byte gEwramData
_08023E2C: .4byte 0x00013124
_08023E30: .4byte 0x000131BE
_08023E34:
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
_08023E40:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08023E50
sub_08023E50: @ 0x08023E50
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	bne _08023E5E
	b _08023FCC
_08023E5E:
	cmp r0, #1
	bgt _08023E68
	cmp r0, #0
	beq _08023E70
	b _08024090
_08023E68:
	cmp r0, #2
	bne _08023E6E
	b _08024050
_08023E6E:
	b _08024090
_08023E70:
	ldr r1, _08023EC4 @ =0x080E13BC
	ldr r0, [r1]
	ldr r5, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _08023EC8 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _08023ECC @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r3, _08023ECC @ =0x000131CC
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	ldrh r1, [r7, #0x1e]
	adds r0, r7, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrh r0, [r7, #0x1e]
	cmp r0, #0
	bne _08023ED0
	movs r0, #1
	movs r1, #0xf
	bl sub_08042A54
	b _08023ED8
	.align 2, 0
_08023EC4: .4byte 0x080E13BC
_08023EC8: .4byte gEwramData
_08023ECC: .4byte 0x000131CC
_08023ED0:
	movs r0, #1
	movs r1, #0x1e
	bl sub_08042A54
_08023ED8:
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _08023F04
	ldr r0, _08023EFC @ =gEwramData
	ldr r1, [r0]
	movs r5, #0x1a
	ldrsh r0, [r7, r5]
	lsls r0, r0, #2
	ldr r2, _08023F00 @ =0x00013124
	adds r1, r1, r2
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	b _0802407C
	.align 2, 0
_08023EFC: .4byte gEwramData
_08023F00: .4byte 0x00013124
_08023F04:
	ldr r0, _08023F80 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r2, r7, #0
	adds r2, #0x58
	movs r0, #0x1f
	ands r3, r0
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	adds r3, r7, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3]
	ldr r4, [r7, #0x14]
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	movs r2, #0
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x46
	ldr r5, _08023F84 @ =0x0000FFE6
	adds r0, r5, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r7, #0
	adds r1, #0x46
	strh r0, [r1]
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	strh r2, [r7, #0x2a]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08023F90
	ldr r0, _08023F88 @ =0xFFFCC000
	str r0, [r7, #0x48]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r7, #0x50]
	ldr r0, _08023F8C @ =0x0000FFFF
	b _08023F9C
	.align 2, 0
_08023F80: .4byte sub_0803B9D0
_08023F84: .4byte 0x0000FFE6
_08023F88: .4byte 0xFFFCC000
_08023F8C: .4byte 0x0000FFFF
_08023F90:
	movs r0, #0xd0
	lsls r0, r0, #0xa
	str r0, [r7, #0x48]
	ldr r0, _08024038 @ =0xFFFFF000
	str r0, [r7, #0x50]
	movs r0, #1
_08023F9C:
	strh r0, [r7, #0x24]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r1, _0802403C @ =0x1414F6F6
	adds r0, r7, #0
	bl sub_08042884
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08024040 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08024044 @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08023FCC:
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x48]
	adds r0, r0, r1
	str r0, [r7, #0x40]
	adds r2, r1, #0
	ldr r1, [r7, #0x50]
	cmp r1, #0
	bge _08023FE2
	ldr r0, _08024048 @ =0xFFF80000
	cmp r2, r0
	bgt _08023FEC
_08023FE2:
	cmp r1, #0
	ble _08023FF0
	ldr r0, _0802404C @ =0x0007FFFF
	cmp r2, r0
	bgt _08023FF0
_08023FEC:
	adds r0, r2, r1
	str r0, [r7, #0x48]
_08023FF0:
	movs r1, #0x2a
	ldrsh r0, [r7, r1]
	lsls r0, r0, #7
	movs r2, #0x80
	lsls r2, r2, #9
	movs r1, #0
	str r1, [sp]
	adds r1, r7, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	ldrh r0, [r7, #0x24]
	ldrh r2, [r7, #0x2a]
	adds r0, r0, r2
	strh r0, [r7, #0x2a]
	adds r0, r7, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _0802402A
	movs r0, #2
	strb r0, [r7, #0xa]
_0802402A:
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	b _08024090
	.align 2, 0
_08024038: .4byte 0xFFFFF000
_0802403C: .4byte 0x1414F6F6
_08024040: .4byte gEwramData
_08024044: .4byte 0x000131BE
_08024048: .4byte 0xFFF80000
_0802404C: .4byte 0x0007FFFF
_08024050:
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	ldr r0, _08024084 @ =gEwramData
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r0, [r7, r3]
	lsls r0, r0, #2
	ldr r5, _08024088 @ =0x00013124
	adds r1, r2, r5
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _0802408C @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
_0802407C:
	adds r0, r7, #0
	bl sub_08000E14
	b _08024096
	.align 2, 0
_08024084: .4byte gEwramData
_08024088: .4byte 0x00013124
_0802408C: .4byte 0x000131BE
_08024090:
	adds r0, r7, #0
	bl sub_0803F17C
_08024096:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080240A0
sub_080240A0: @ 0x080240A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov sb, r0
	movs r1, #0x20
	adds r1, r1, r7
	mov sl, r1
	ldrb r5, [r7, #0xa]
	cmp r5, #0
	beq _080240CC
	adds r4, r7, #0
	adds r4, #0x58
	cmp r5, #1
	beq _08024192
	adds r5, r7, #0
	adds r5, #0x59
	b _0802423A
_080240CC:
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r8, r2
	cmp r0, #0
	bge _080240F8
	ldr r0, _080240F0 @ =gEwramData
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r1, [r7, r3]
	lsls r1, r1, #2
	ldr r3, _080240F4 @ =0x00013124
	adds r0, r2, r3
	adds r0, r0, r1
	str r5, [r0]
	b _080241B8
	.align 2, 0
_080240F0: .4byte gEwramData
_080240F4: .4byte 0x00013124
_080240F8:
	ldr r1, _080241CC @ =0x080E13BC
	ldr r0, [r1]
	ldr r5, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _080241D0 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _080241D4 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r3, _080241D4 @ =0x000131CC
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	mov r1, sb
	ldrh r0, [r1, #0x1e]
	adds r1, r7, #0
	adds r1, #0x65
	strb r0, [r1]
	ldr r0, _080241D8 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r4, r7, #0
	adds r4, #0x58
	movs r0, #0x1f
	mov r2, r8
	ands r2, r0
	ldrb r1, [r4]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	mov r0, sb
	bl sub_08002188
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	mov r2, sl
	movs r3, #9
_08024180:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r2, #2
	subs r3, #1
	cmp r3, #0
	bge _08024180
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_08024192:
	mov r3, sb
	ldrb r0, [r3, #0xa]
	cmp r0, #2
	bne _080241E4
	ldrb r0, [r4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	ldr r0, _080241D0 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	lsls r0, r0, #2
	ldr r3, _080241DC @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
_080241B8:
	ldr r0, _080241E0 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
	b _0802425C
	.align 2, 0
_080241CC: .4byte 0x080E13BC
_080241D0: .4byte gEwramData
_080241D4: .4byte 0x000131CC
_080241D8: .4byte sub_0803B9D0
_080241DC: .4byte 0x00013124
_080241E0: .4byte 0x000131BE
_080241E4:
	movs r3, #9
	adds r5, r7, #0
	adds r5, #0x59
	adds r1, r7, #0
	adds r1, #0x42
	str r1, [sp, #8]
	movs r2, #0x46
	add r2, sb
	mov r8, r2
	adds r6, r7, #0
	adds r6, #0x46
	mov r1, sl
	adds r1, #0x10
_080241FE:
	ldrh r0, [r1]
	strh r0, [r1, #2]
	subs r1, #2
	subs r3, #1
	cmp r3, #0
	bgt _080241FE
	mov r0, sb
	bl sub_08002188
	mov r3, sl
	strh r0, [r3]
	ldrb r1, [r7, #0xb]
	lsls r1, r1, #1
	add r1, sl
	ldr r0, _0802426C @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08024270 @ =0x0000A094
	adds r0, r0, r2
	ldrh r1, [r1]
	ldrh r0, [r0, #6]
	subs r1, r1, r0
	ldr r3, [sp, #8]
	strh r1, [r3]
	mov r1, r8
	ldrh r0, [r1]
	strh r0, [r6]
	ldr r0, [r7, #0x48]
	ldr r1, [r7, #0x50]
	adds r0, r0, r1
	str r0, [r7, #0x48]
_0802423A:
	ldrb r0, [r5]
	movs r1, #4
	orrs r0, r1
	strb r0, [r5]
	ldr r0, [r7, #0x48]
	movs r2, #0x80
	lsls r2, r2, #9
	movs r1, #0
	str r1, [sp]
	ldrb r1, [r4]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
_0802425C:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802426C: .4byte gEwramData
_08024270: .4byte 0x0000A094

	thumb_func_start sub_08024274
sub_08024274: @ 0x08024274
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	bne _08024286
	b _08024450
_08024286:
	cmp r0, #1
	bgt _08024290
	cmp r0, #0
	beq _08024298
	b _08024514
_08024290:
	cmp r0, #2
	bne _08024296
	b _080244D8
_08024296:
	b _08024514
_08024298:
	ldr r1, _080242E8 @ =0x080E13BC
	ldr r0, [r1]
	ldr r5, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _080242EC @ =gEwramData
	ldr r1, [r4]
	ldr r2, _080242F0 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r3, _080242F0 @ =0x000131CC
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	ldrh r0, [r7, #0x1e]
	adds r1, r7, #0
	adds r1, #0x65
	strb r0, [r1]
	ldrh r0, [r7, #0x1e]
	cmp r0, #0
	bne _080242F4
	movs r0, #1
	movs r1, #0xf
	bl sub_08042A54
	b _080242FC
	.align 2, 0
_080242E8: .4byte 0x080E13BC
_080242EC: .4byte gEwramData
_080242F0: .4byte 0x000131CC
_080242F4:
	movs r0, #1
	movs r1, #0x1e
	bl sub_08042A54
_080242FC:
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _08024330
	ldr r0, _08024328 @ =gEwramData
	ldr r1, [r0]
	movs r4, #0x1a
	ldrsh r0, [r7, r4]
	lsls r0, r0, #2
	ldr r2, _0802432C @ =0x00013124
	adds r1, r1, r2
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	adds r0, r7, #0
	bl sub_08000E14
	b _08024514
	.align 2, 0
_08024328: .4byte gEwramData
_0802432C: .4byte 0x00013124
_08024330:
	ldr r0, _080243AC @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r2, r7, #0
	adds r2, #0x58
	movs r0, #0x1f
	ands r3, r0
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	adds r3, r7, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3]
	ldr r6, [r7, #0x14]
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	movs r2, #0
	strh r0, [r1]
	adds r1, r6, #0
	adds r1, #0x46
	ldr r4, _080243B0 @ =0x0000FFE6
	adds r0, r4, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r7, #0
	adds r1, #0x46
	strh r0, [r1]
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	strh r2, [r7, #0x2a]
	adds r2, r7, #0
	adds r2, #0x5c
	movs r0, #0xd
	strb r0, [r2]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	mov r8, r2
	cmp r0, #0
	beq _080243BC
	ldr r0, _080243B4 @ =0xFFFCC000
	str r0, [r7, #0x48]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r7, #0x50]
	ldr r0, _080243B8 @ =0x0000FFFF
	b _080243C8
	.align 2, 0
_080243AC: .4byte sub_0803B9D0
_080243B0: .4byte 0x0000FFE6
_080243B4: .4byte 0xFFFCC000
_080243B8: .4byte 0x0000FFFF
_080243BC:
	movs r0, #0xd0
	lsls r0, r0, #0xa
	str r0, [r7, #0x48]
	ldr r0, _080244BC @ =0xFFFFF000
	str r0, [r7, #0x50]
	movs r0, #1
_080243C8:
	strh r0, [r7, #0x24]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r1, _080244C0 @ =0x1414F6F6
	adds r0, r7, #0
	bl sub_08042884
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xe3
	bl sub_080D7910
	ldr r0, _080244C4 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _080244C8 @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r4, #1
	movs r5, #3
_08024402:
	adds r0, r7, #0
	ldr r1, _080244CC @ =sub_080240A0
	bl sub_08023530
	adds r2, r0, #0
	cmp r2, #0
	beq _08024448
	ldr r0, [r7, #0x40]
	str r0, [r2, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r2, #0x44]
	movs r3, #0x80
	lsls r3, r3, #4
	str r3, [r2, #0x50]
	strb r5, [r2, #0xb]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08024432
	rsbs r0, r3, #0
	str r0, [r2, #0x50]
_08024432:
	ldr r0, [r2, #0x50]
	rsbs r0, r0, #0
	ldrb r1, [r2, #0xb]
	muls r0, r1, r0
	str r0, [r2, #0x48]
	mov r1, r8
	ldrb r0, [r1]
	adds r0, r0, r4
	adds r1, r2, #0
	adds r1, #0x5c
	strb r0, [r1]
_08024448:
	adds r5, #3
	adds r4, #1
	cmp r4, #2
	ble _08024402
_08024450:
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x48]
	adds r0, r0, r1
	str r0, [r7, #0x40]
	adds r2, r1, #0
	ldr r1, [r7, #0x50]
	cmp r1, #0
	bge _08024466
	ldr r0, _080244D0 @ =0xFFF80000
	cmp r2, r0
	bgt _08024470
_08024466:
	cmp r1, #0
	ble _08024474
	ldr r0, _080244D4 @ =0x0007FFFF
	cmp r2, r0
	bgt _08024474
_08024470:
	adds r0, r2, r1
	str r0, [r7, #0x48]
_08024474:
	movs r2, #0x2a
	ldrsh r0, [r7, r2]
	lsls r0, r0, #0xb
	movs r2, #0x80
	lsls r2, r2, #9
	movs r1, #0
	str r1, [sp]
	adds r1, r7, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	ldrh r0, [r7, #0x24]
	ldrh r3, [r7, #0x2a]
	adds r0, r0, r3
	strh r0, [r7, #0x2a]
	adds r0, r7, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _080244AE
	movs r0, #2
	strb r0, [r7, #0xa]
_080244AE:
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
	b _08024514
	.align 2, 0
_080244BC: .4byte 0xFFFFF000
_080244C0: .4byte 0x1414F6F6
_080244C4: .4byte gEwramData
_080244C8: .4byte 0x000131BE
_080244CC: .4byte sub_080240A0
_080244D0: .4byte 0xFFF80000
_080244D4: .4byte 0x0007FFFF
_080244D8:
	adds r2, r7, #0
	adds r2, #0x58
	ldrh r1, [r2]
	ldr r0, _08024520 @ =0x0000101F
	ands r0, r1
	cmp r0, #0
	beq _080244F0
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080244F0:
	ldr r0, _08024524 @ =gEwramData
	ldr r2, [r0]
	movs r4, #0x1a
	ldrsh r0, [r7, r4]
	lsls r0, r0, #2
	ldr r3, _08024528 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r4, _0802452C @ =0x000131BE
	adds r2, r2, r4
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
_08024514:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024520: .4byte 0x0000101F
_08024524: .4byte gEwramData
_08024528: .4byte 0x00013124
_0802452C: .4byte 0x000131BE

	thumb_func_start sub_08024530
sub_08024530: @ 0x08024530
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	ldrb r7, [r6, #0xa]
	cmp r7, #1
	bne _08024546
	b _08024760
_08024546:
	cmp r7, #1
	bgt _08024550
	cmp r7, #0
	beq _0802455E
	b _080248BC
_08024550:
	cmp r7, #2
	bne _08024556
	b _080248BC
_08024556:
	cmp r7, #3
	bne _0802455C
	b _0802487C
_0802455C:
	b _080248BC
_0802455E:
	ldr r0, _080245CC @ =0x080E13BC
	adds r1, r0, #0
	adds r1, #0x30
	ldr r0, [r0, #0x30]
	ldr r4, [r1, #4]
	ldr r5, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r1, _080245D0 @ =gEwramData
	mov sb, r1
	ldr r1, [r1]
	ldr r2, _080245D4 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	mov r3, sb
	ldr r0, [r3]
	ldr r4, _080245D4 @ =0x000131CC
	adds r0, r0, r4
	ldr r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #2
	bl sub_0803B924
	ldrh r1, [r6, #0x1e]
	adds r0, r6, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _080245DC
	mov r5, sb
	ldr r1, [r5]
	movs r2, #0x1a
	ldrsh r0, [r6, r2]
	lsls r0, r0, #2
	ldr r3, _080245D8 @ =0x00013124
	adds r1, r1, r3
	adds r1, r1, r0
	str r7, [r1]
	b _080248A8
	.align 2, 0
_080245CC: .4byte 0x080E13BC
_080245D0: .4byte gEwramData
_080245D4: .4byte 0x000131CC
_080245D8: .4byte 0x00013124
_080245DC:
	ldr r0, _080246F4 @ =sub_0803B9D0
	str r0, [r6, #4]
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
	adds r2, #1
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r6, #0x14]
	adds r1, r0, #0
	adds r1, #0x42
	ldrh r1, [r1]
	movs r4, #0x42
	adds r4, r4, r6
	mov sl, r4
	strh r1, [r4]
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0x10
	adds r4, r6, #0
	adds r4, #0x46
	strh r0, [r4]
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	strh r7, [r6, #0x2a]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	movs r0, #1
	movs r1, #0x1e
	bl sub_08042A54
	ldr r2, _080246F8 @ =sub_0802DA14
	adds r0, r6, #0
	movs r1, #5
	movs r3, #0
	bl sub_0804277C
	ldr r1, _080246FC @ =0x1414F6F6
	adds r0, r6, #0
	bl sub_08042884
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	mov r5, sb
	ldr r1, [r5]
	ldr r7, _08024700 @ =0x000131BE
	adds r1, r1, r7
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #8]
	movs r1, #0
	mov r8, r1
	ldr r1, [r5]
	ldr r2, _08024704 @ =0x00013220
	adds r0, r1, r2
	ldr r0, [r0]
	mov sb, r4
	cmp r0, #0
	bne _080246D2
	ldr r3, _08024708 @ =0x00013194
	adds r5, r1, r3
	mov ip, sl
	movs r4, #3
_08024688:
	ldr r3, [r5]
	cmp r3, #0
	beq _080246C8
	adds r0, r3, #0
	adds r0, #0x42
	movs r7, #0
	ldrsh r2, [r0, r7]
	mov r1, ip
	movs r7, #0
	ldrsh r0, [r1, r7]
	subs r2, r2, r0
	adds r0, r3, #0
	adds r0, #0x46
	movs r7, #0
	ldrsh r1, [r0, r7]
	mov sl, r1
	mov r1, sb
	movs r7, #0
	ldrsh r0, [r1, r7]
	mov r7, sl
	subs r1, r7, r0
	adds r0, r2, #0
	muls r0, r2, r0
	adds r2, r0, #0
	adds r0, r1, #0
	muls r0, r1, r0
	adds r2, r2, r0
	ldr r1, [sp, #8]
	cmp r1, r2
	bls _080246C8
	str r2, [sp, #8]
	mov r8, r3
_080246C8:
	adds r5, #4
	subs r4, #1
	cmp r4, #0
	bge _08024688
	mov r0, r8
_080246D2:
	str r0, [r6, #0x20]
	adds r1, r0, #0
	cmp r1, #0
	beq _08024742
	ldr r0, [r1, #0x40]
	ldr r2, [r1, #0x44]
	adds r1, r6, #0
	adds r1, #0x42
	movs r3, #0
	ldrsh r1, [r1, r3]
	cmp r0, #0
	bge _0802470C
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0802470E
	.align 2, 0
_080246F4: .4byte sub_0803B9D0
_080246F8: .4byte sub_0802DA14
_080246FC: .4byte 0x1414F6F6
_08024700: .4byte 0x000131BE
_08024704: .4byte 0x00013220
_08024708: .4byte 0x00013194
_0802470C:
	asrs r0, r0, #0x10
_0802470E:
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	adds r0, r6, #0
	adds r0, #0x46
	movs r4, #0
	ldrsh r1, [r0, r4]
	cmp r2, #0
	bge _08024728
	rsbs r0, r2, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0802472A
_08024728:
	asrs r0, r2, #0x10
_0802472A:
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r3, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r5, #0x80
	lsls r5, r5, #8
	adds r0, r0, r5
	b _0802475E
_08024742:
	ldr r0, _08024774 @ =gEwramData
	ldr r0, [r0]
	ldr r7, _08024778 @ =0x00013110
	adds r0, r0, r7
	ldr r0, [r0]
	adds r0, #0x58
	ldrb r1, [r0]
	lsrs r1, r1, #6
	movs r0, #1
	bics r0, r1
	cmp r0, #1
	bne _08024760
	movs r0, #0x80
	lsls r0, r0, #8
_0802475E:
	str r0, [r6, #0x2c]
_08024760:
	ldr r1, [r6, #0x20]
	cmp r1, #0
	beq _0802477C
	movs r2, #0x34
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _0802477C
	ldr r3, [r1, #0x40]
	ldr r2, [r1, #0x44]
	b _080247B8
	.align 2, 0
_08024774: .4byte gEwramData
_08024778: .4byte 0x00013110
_0802477C:
	ldr r2, _080247A0 @ =gEwramData
	ldr r0, [r2]
	ldr r3, _080247A4 @ =0x00013110
	adds r0, r0, r3
	ldr r3, [r0]
	adds r0, r3, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsrs r0, r0, #6
	movs r1, #1
	bics r1, r0
	cmp r1, #1
	bne _080247A8
	ldr r0, [r3, #0x40]
	movs r4, #0xc0
	lsls r4, r4, #0x10
	adds r3, r0, r4
	b _080247AE
	.align 2, 0
_080247A0: .4byte gEwramData
_080247A4: .4byte 0x00013110
_080247A8:
	ldr r0, [r3, #0x40]
	ldr r5, _080247D0 @ =0xFF400000
	adds r3, r0, r5
_080247AE:
	ldr r0, [r2]
	ldr r7, _080247D4 @ =0x00013110
	adds r0, r0, r7
	ldr r0, [r0]
	ldr r2, [r0, #0x44]
_080247B8:
	ldr r4, [r6, #0x2c]
	adds r0, r6, #0
	adds r0, #0x42
	movs r5, #0
	ldrsh r1, [r0, r5]
	cmp r3, #0
	bge _080247D8
	rsbs r0, r3, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080247DA
	.align 2, 0
_080247D0: .4byte 0xFF400000
_080247D4: .4byte 0x00013110
_080247D8:
	asrs r0, r3, #0x10
_080247DA:
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	adds r0, r6, #0
	adds r0, #0x46
	movs r7, #0
	ldrsh r1, [r0, r7]
	cmp r2, #0
	bge _080247F4
	rsbs r0, r2, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080247F6
_080247F4:
	asrs r0, r2, #0x10
_080247F6:
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r3, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r1, r0, r4
	cmp r1, #0
	ble _0802482C
	ldr r0, _0802481C @ =0x00007FFF
	cmp r1, r0
	bgt _08024820
	movs r0, #0x80
	lsls r0, r0, #3
	adds r4, r4, r0
	b _08024844
	.align 2, 0
_0802481C: .4byte 0x00007FFF
_08024820:
	ldr r1, _08024828 @ =0xFFFFFC00
	adds r4, r4, r1
	b _08024844
	.align 2, 0
_08024828: .4byte 0xFFFFFC00
_0802482C:
	ldr r0, _0802483C @ =0xFFFF8000
	cmp r1, r0
	bge _08024840
	movs r2, #0x80
	lsls r2, r2, #3
	adds r4, r4, r2
	b _08024844
	.align 2, 0
_0802483C: .4byte 0xFFFF8000
_08024840:
	ldr r3, _08024874 @ =0xFFFFFC00
	adds r4, r4, r3
_08024844:
	ldr r0, _08024878 @ =0x0000FFFF
	ands r4, r0
	str r4, [r6, #0x2c]
	ldr r0, [r6, #0x34]
	movs r4, #0x80
	lsls r4, r4, #6
	adds r0, r0, r4
	str r0, [r6, #0x34]
	movs r1, #0xc0
	lsls r1, r1, #0xb
	cmp r0, r1
	ble _0802485E
	str r1, [r6, #0x34]
_0802485E:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x78
	bls _080248BC
	movs r0, #2
	strb r0, [r6, #0xa]
	b _080248BC
	.align 2, 0
_08024874: .4byte 0xFFFFFC00
_08024878: .4byte 0x0000FFFF
_0802487C:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	ldr r0, _080248B0 @ =gEwramData
	ldr r2, [r0]
	movs r5, #0x1a
	ldrsh r0, [r6, r5]
	lsls r0, r0, #2
	ldr r7, _080248B4 @ =0x00013124
	adds r1, r2, r7
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _080248B8 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
_080248A8:
	adds r0, r6, #0
	bl sub_08000E14
	b _08024940
	.align 2, 0
_080248B0: .4byte gEwramData
_080248B4: .4byte 0x00013124
_080248B8: .4byte 0x000131BE
_080248BC:
	ldr r0, [r6, #0x2c]
	movs r5, #0x80
	lsls r5, r5, #7
	adds r0, r0, r5
	bl sub_080009E4
	ldr r1, [r6, #0x34]
	asrs r0, r0, #8
	asrs r1, r1, #8
	adds r4, r0, #0
	muls r4, r1, r4
	ldr r0, [r6, #0x2c]
	bl sub_080009E4
	ldr r1, [r6, #0x34]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r1, r0, r1
	ldr r0, [r6, #0x40]
	adds r0, r0, r4
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x44]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	ldr r0, [r6, #0x2c]
	adds r0, r0, r5
	movs r2, #0x80
	lsls r2, r2, #9
	movs r1, #0
	str r1, [sp]
	adds r1, r6, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	movs r2, #0x20
	rsbs r2, r2, #0
	movs r3, #0x98
	lsls r3, r3, #1
	movs r0, #0xe0
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r2, #0
	bl sub_08068AD4
	cmp r0, #0
	bne _08024928
	movs r0, #3
	strb r0, [r6, #0xa]
_08024928:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802493A
	movs r0, #3
	strb r0, [r6, #0xa]
_0802493A:
	adds r0, r6, #0
	bl sub_0803F17C
_08024940:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08024950
sub_08024950: @ 0x08024950
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov sl, r0
	movs r1, #0x59
	adds r1, r1, r7
	mov r8, r1
	ldrb r0, [r1]
	movs r1, #4
	orrs r0, r1
	mov r2, r8
	strb r0, [r2]
	ldrb r4, [r7, #0xa]
	cmp r4, #1
	beq _08024A5C
	cmp r4, #1
	bgt _08024982
	cmp r4, #0
	beq _0802498A
	b _08024BCE
_08024982:
	cmp r4, #2
	bne _08024988
	b _08024B34
_08024988:
	b _08024BCE
_0802498A:
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r0, #0
	bge _080249B4
	ldr r0, _080249AC @ =gEwramData
	ldr r1, [r0]
	movs r3, #0x1a
	ldrsh r0, [r7, r3]
	lsls r0, r0, #2
	ldr r2, _080249B0 @ =0x00013124
	adds r1, r1, r2
	adds r1, r1, r0
	str r4, [r1]
	b _08024B92
	.align 2, 0
_080249AC: .4byte gEwramData
_080249B0: .4byte 0x00013124
_080249B4:
	ldr r0, _08024AC8 @ =0x080E13BC
	adds r1, r0, #0
	adds r1, #0xc
	ldr r0, [r0, #0xc]
	ldr r4, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r3, _08024ACC @ =gEwramData
	mov sb, r3
	ldr r1, [r3]
	ldr r2, _08024AD0 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	mov r3, sb
	ldr r0, [r3]
	ldr r1, _08024AD0 @ =0x000131CC
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _08024AD4 @ =sub_0802DA1C
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	adds r2, r7, #0
	adds r2, #0x58
	movs r0, #0x1f
	ands r5, r0
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r5
	strb r0, [r2]
	mov r2, r8
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	mov r3, sb
	ldr r1, [r3]
	ldrh r2, [r7, #0x1e]
	ldr r3, _08024AD8 @ =0x000004BE
	adds r0, r1, r3
	strh r2, [r0]
	ldr r0, _08024ADC @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, _08024AE0 @ =0x00001030
	bl sub_080D7910
	ldr r0, _08024AE4 @ =0x0000019D
	bl sub_080D7910
	movs r0, #0xec
	bl sub_080D7910
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_08024A5C:
	mov r1, sl
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x40]
	mov r0, sl
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0x30
	adds r1, r7, #0
	adds r1, #0x46
	strh r0, [r1]
	ldr r1, [r7, #0x20]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r1, r2
	str r1, [r7, #0x20]
	ldr r0, [r7, #0x24]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r0, r3
	str r0, [r7, #0x24]
	movs r2, #0x80
	lsls r2, r2, #9
	cmp r1, r2
	ble _08024A8E
	str r2, [r7, #0x20]
_08024A8E:
	ldr r0, [r7, #0x24]
	cmp r0, r2
	ble _08024A96
	str r2, [r7, #0x24]
_08024A96:
	ldr r0, [r7, #0x20]
	str r0, [r7, #0x28]
	ldr r4, _08024ACC @ =gEwramData
	ldr r1, [r4]
	ldr r5, _08024AD8 @ =0x000004BE
	adds r0, r1, r5
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _08024AE8
	movs r0, #0xf
	ands r0, r2
	cmp r0, #0
	bne _08024ABC
	movs r0, #0xb7
	lsls r0, r0, #1
	bl sub_08013DA8
_08024ABC:
	ldr r1, [r4]
	adds r1, r1, r5
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	b _08024BCE
	.align 2, 0
_08024AC8: .4byte 0x080E13BC
_08024ACC: .4byte gEwramData
_08024AD0: .4byte 0x000131CC
_08024AD4: .4byte sub_0802DA1C
_08024AD8: .4byte 0x000004BE
_08024ADC: .4byte 0x000131BE
_08024AE0: .4byte 0x00001030
_08024AE4: .4byte 0x0000019D
_08024AE8:
	ldr r2, _08024B9C @ =0x0000042C
	adds r0, r1, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	bne _08024AFE
	ldr r0, _08024BA0 @ =0x00001038
	bl sub_080D7910
_08024AFE:
	bl sub_08013E74
	ldr r0, [r4]
	ldr r3, _08024BA4 @ =0x000254CC
	adds r1, r0, r3
	ldrh r0, [r1]
	cmp r0, #0
	beq _08024B12
	bl sub_080D7910
_08024B12:
	ldr r0, [r4]
	ldr r2, _08024BA8 @ =0x000254CE
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #0
	beq _08024B22
	bl sub_080D7910
_08024B22:
	movs r0, #0xb7
	lsls r0, r0, #1
	bl sub_08013E18
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	movs r0, #0x20
	strb r0, [r7, #0xd]
_08024B34:
	ldr r1, [r7, #0x20]
	ldr r3, _08024BAC @ =0xFFFFF000
	adds r1, r1, r3
	str r1, [r7, #0x20]
	ldr r0, [r7, #0x24]
	ldr r2, _08024BB0 @ =0xFFFFF800
	adds r0, r0, r2
	str r0, [r7, #0x24]
	cmp r1, #0
	bge _08024B4C
	movs r0, #0
	str r0, [r7, #0x20]
_08024B4C:
	ldr r0, [r7, #0x24]
	cmp r0, #0
	bge _08024B56
	movs r0, #0
	str r0, [r7, #0x24]
_08024B56:
	ldrb r0, [r7, #0xd]
	adds r5, r0, #0
	cmp r5, #0
	bne _08024BC4
	ldr r4, _08024BB4 @ =gEwramData
	ldr r0, [r4]
	ldr r3, _08024BB8 @ =0x00012FE4
	adds r0, r0, r3
	movs r1, #1
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	ldr r2, [r4]
	movs r0, #0x1a
	ldrsh r1, [r7, r0]
	lsls r1, r1, #2
	ldr r3, _08024BBC @ =0x00013124
	adds r0, r2, r3
	adds r0, r0, r1
	str r5, [r0]
	ldr r0, _08024BC0 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
_08024B92:
	adds r0, r7, #0
	bl sub_08000E14
	b _08024BFE
	.align 2, 0
_08024B9C: .4byte 0x0000042C
_08024BA0: .4byte 0x00001038
_08024BA4: .4byte 0x000254CC
_08024BA8: .4byte 0x000254CE
_08024BAC: .4byte 0xFFFFF000
_08024BB0: .4byte 0xFFFFF800
_08024BB4: .4byte gEwramData
_08024BB8: .4byte 0x00012FE4
_08024BBC: .4byte 0x00013124
_08024BC0: .4byte 0x000131BE
_08024BC4:
	subs r0, #1
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xd]
	lsls r0, r0, #0xb
	str r0, [r7, #0x28]
_08024BCE:
	ldr r0, _08024C10 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08024C14 @ =0x00012FE4
	adds r0, r0, r1
	ldr r1, [r7, #0x28]
	str r1, [r0]
	ldr r2, [r7, #0x20]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	movs r1, #0
	str r1, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	adds r1, r2, #0
	bl sub_0803E058
	adds r0, r7, #0
	bl sub_0803F17C
_08024BFE:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024C10: .4byte gEwramData
_08024C14: .4byte 0x00012FE4

	thumb_func_start sub_08024C18
sub_08024C18: @ 0x08024C18
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r2, ip
	adds r2, #0x64
	ldr r0, _08024CAC @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _08024CB0 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	mov r0, ip
	adds r0, #0x65
	ldrb r0, [r0]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _08024CB4
	movs r1, #0
	ldrsb r1, [r3, r1]
	ldrb r0, [r3, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	mov r0, ip
	adds r0, #0x58
	ldrb r5, [r0]
	movs r0, #0x40
	ands r0, r5
	cmp r0, #0
	beq _08024C68
	lsls r0, r4, #0x10
	rsbs r0, r0, #0
	lsrs r4, r0, #0x10
_08024C68:
	mov r2, ip
	adds r2, #0x42
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r1, #1
	ldrsb r1, [r3, r1]
	ldrb r0, [r3, #3]
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	beq _08024C94
	lsls r0, r1, #0x10
	rsbs r0, r0, #0
	lsrs r1, r0, #0x10
_08024C94:
	mov r0, ip
	adds r0, #0x46
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r0]
	adds r1, r1, r0
	lsls r0, r4, #0x10
	str r0, [r6]
	lsls r1, r1, #0x10
	str r1, [r7]
	movs r0, #1
	b _08024CB6
	.align 2, 0
_08024CAC: .4byte gEwramData
_08024CB0: .4byte 0x0001017C
_08024CB4:
	movs r0, #0
_08024CB6:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08024CBC
sub_08024CBC: @ 0x08024CBC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov r8, r0
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	beq _08024D8E
	cmp r0, #1
	bgt _08024CDC
	cmp r0, #0
	beq _08024CE4
	b _08024E7C
_08024CDC:
	cmp r0, #2
	bne _08024CE2
	b _08024E70
_08024CE2:
	b _08024E7C
_08024CE4:
	ldr r0, _08024E48 @ =0x080E13BC
	adds r1, r0, #0
	adds r1, #0x18
	ldr r0, [r0, #0x18]
	ldr r4, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r5, _08024E4C @ =gEwramData
	ldr r1, [r5]
	ldr r2, _08024E50 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r5]
	ldr r3, _08024E50 @ =0x000131CC
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _08024E54 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0x14
	bl sub_08031EA4
	movs r0, #1
	movs r1, #0x3c
	bl sub_08042A54
	ldr r1, [r5]
	ldr r4, _08024E58 @ =0x000131BE
	adds r1, r1, r4
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08024E5C @ =0x000001AF
	bl sub_080D7910
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_08024D8E:
	ldrb r0, [r7, #0xd]
	adds r1, r0, #1
	strb r1, [r7, #0xd]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	adds r2, r7, #0
	adds r2, #0x59
	cmp r0, #0x13
	bhi _08024DA2
	b _08024EAA
_08024DA2:
	movs r0, #3
	mov sb, r0
	mov r2, sb
	ands r2, r1
	mov sb, r2
	movs r3, #0x58
	adds r3, r3, r7
	mov r8, r3
	cmp r2, #0
	bne _08024E20
	ldrb r1, [r7, #0xd]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0xe
	movs r4, #0x80
	lsls r4, r4, #0xe
	adds r2, r0, r4
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xe0
	lsls r1, r1, #0xe
	subs r3, r1, r0
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08024DDE
	rsbs r2, r2, #0
_08024DDE:
	ldr r6, [r7, #0x40]
	adds r6, r6, r2
	ldr r5, [r7, #0x44]
	adds r5, r5, r3
	bl sub_08000A90
	movs r4, #0x1f
	ands r0, r4
	subs r0, #0x10
	lsls r0, r0, #0x10
	adds r6, r6, r0
	bl sub_08000A90
	ands r0, r4
	subs r0, #0x10
	lsls r0, r0, #0x10
	adds r5, r5, r0
	bl sub_08000A90
	adds r3, r0, #0
	ands r3, r4
	lsls r3, r3, #4
	ldr r0, _08024E60 @ =0xFFFFE000
	adds r3, r3, r0
	mov r1, sb
	str r1, [sp]
	movs r0, #6
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0
	bl sub_08045B44
_08024E20:
	movs r1, #0x40
	rsbs r1, r1, #0
	movs r2, #8
	rsbs r2, r2, #0
	movs r3, #0xb8
	lsls r3, r3, #1
	movs r0, #0xb0
	str r0, [sp]
	adds r0, r7, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _08024E64
	mov r2, r8
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _08024E7C
	.align 2, 0
_08024E48: .4byte 0x080E13BC
_08024E4C: .4byte gEwramData
_08024E50: .4byte 0x000131CC
_08024E54: .4byte sub_0803B9D0
_08024E58: .4byte 0x000131BE
_08024E5C: .4byte 0x000001AF
_08024E60: .4byte 0xFFFFE000
_08024E64:
	mov r3, r8
	ldrb r0, [r3]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3]
	b _08024E7C
_08024E70:
	ldrb r0, [r7, #0xd]
	adds r3, r0, #0
	cmp r3, #0
	beq _08024E82
	subs r0, #1
	strb r0, [r7, #0xd]
_08024E7C:
	adds r2, r7, #0
	adds r2, #0x59
	b _08024EAA
_08024E82:
	ldr r0, _08024F0C @ =gEwramData
	ldr r2, [r0]
	movs r4, #0x1a
	ldrsh r1, [r7, r4]
	lsls r1, r1, #2
	ldr r4, _08024F10 @ =0x00013124
	adds r0, r2, r4
	adds r0, r0, r1
	str r3, [r0]
	ldr r0, _08024F14 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_08024EAA:
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _08024ECE
	ldrb r0, [r7, #0xa]
	cmp r0, #2
	beq _08024ECE
	movs r0, #2
	strb r0, [r7, #0xa]
	movs r0, #0xa
	strb r0, [r7, #0xd]
	movs r0, #1
	strb r0, [r7, #0xf]
_08024ECE:
	adds r2, r7, #0
	adds r2, #0x64
	ldr r0, _08024F0C @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _08024F18 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r7, #0
	adds r0, #0x65
	ldrb r0, [r0]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _08024F1C
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	adds r1, r3, #0
	bl sub_08042848
	b _08024F28
	.align 2, 0
_08024F0C: .4byte gEwramData
_08024F10: .4byte 0x00013124
_08024F14: .4byte 0x000131BE
_08024F18: .4byte 0x0001017C
_08024F1C:
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_08024F28:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08024F38
sub_08024F38: @ 0x08024F38
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov r8, r0
	movs r1, #0x80
	lsls r1, r1, #1
	mov sb, r1
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	beq _0802501A
	cmp r0, #1
	bgt _08024F5C
	cmp r0, #0
	beq _08024F64
	b _0802517C
_08024F5C:
	cmp r0, #2
	bne _08024F62
	b _0802513C
_08024F62:
	b _0802517C
_08024F64:
	ldr r0, _08025088 @ =0x080E13BC
	adds r1, r0, #0
	adds r1, #0x48
	ldr r0, [r0, #0x48]
	ldr r5, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _0802508C @ =gEwramData
	ldr r1, [r4]
	ldr r2, _08025090 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r3, _08025090 @ =0x000131CC
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	bl sub_08000A90
	adds r1, r0, #0
	movs r0, #1
	ands r1, r0
	adds r0, r7, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldr r0, _08025094 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xe5
	bl sub_080D7910
	ldr r1, [r4]
	ldr r0, _08025098 @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r4]
	ldr r1, _0802509C @ =0x00013168
	adds r0, r0, r1
	str r7, [r0]
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r7, #0
	mov r1, r8
	movs r2, #8
	bl sub_08031EA4
	movs r2, #0xc0
	lsls r2, r2, #9
	str r2, [r7, #0x48]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802500C
	rsbs r0, r2, #0
	str r0, [r7, #0x48]
_0802500C:
	ldr r0, _080250A0 @ =0xFFFD8000
	str r0, [r7, #0x4c]
	movs r0, #0xb4
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_0802501A:
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x48]
	adds r0, r0, r1
	str r0, [r7, #0x40]
	ldr r0, [r7, #0x44]
	ldr r1, [r7, #0x4c]
	adds r0, r0, r1
	str r0, [r7, #0x44]
	adds r0, r7, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r7, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, [r7, #0x4c]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r0, r2
	str r0, [r7, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	cmp r0, r1
	ble _08025052
	str r1, [r7, #0x4c]
_08025052:
	ldr r0, [r7, #0x4c]
	cmp r0, #0
	blt _080250A4
	lsls r5, r5, #0x10
	asrs r0, r5, #0x10
	lsls r4, r4, #0x10
	asrs r1, r4, #0x10
	adds r1, #1
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080250C8
	adds r2, r7, #0
	adds r2, #0x46
	ldrh r0, [r2]
	adds r0, #2
	adds r0, r1, r0
	movs r1, #0
	strh r0, [r2]
	str r1, [r7, #0x4c]
	movs r3, #0x80
	lsls r3, r3, #7
	mov sb, r3
	b _080250C8
	.align 2, 0
_08025088: .4byte 0x080E13BC
_0802508C: .4byte gEwramData
_08025090: .4byte 0x000131CC
_08025094: .4byte sub_0803B9D0
_08025098: .4byte 0x000131BE
_0802509C: .4byte 0x00013168
_080250A0: .4byte 0xFFFD8000
_080250A4:
	lsls r5, r5, #0x10
	asrs r0, r5, #0x10
	lsls r4, r4, #0x10
	asrs r1, r4, #0x10
	subs r1, #0x20
	bl sub_08001C1C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080250C8
	adds r2, r7, #0
	adds r2, #0x46
	ldrh r0, [r2]
	adds r0, r1, r0
	movs r1, #0
	strh r0, [r2]
	str r1, [r7, #0x4c]
_080250C8:
	ldr r0, [r7, #0x48]
	cmp r0, #0
	ble _080250EC
	asrs r0, r5, #0x10
	adds r0, #8
	asrs r1, r4, #0x10
	subs r1, #0x10
	bl sub_08002058
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r7, #0x48]
	mov r4, sb
	subs r0, r0, r4
	str r0, [r7, #0x48]
	cmp r0, #0
	bgt _0802510E
	b _0802510A
_080250EC:
	cmp r0, #0
	bge _08025128
	asrs r0, r5, #0x10
	subs r0, #8
	asrs r1, r4, #0x10
	subs r1, #0x10
	bl sub_0800207C
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r7, #0x48]
	add r0, sb
	str r0, [r7, #0x48]
	cmp r0, #0
	blt _0802510E
_0802510A:
	movs r0, #0
	str r0, [r7, #0x48]
_0802510E:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	beq _08025128
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, r2, r0
	strh r0, [r1]
	ldr r0, [r7, #0x48]
	asrs r0, r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x48]
_08025128:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	bne _08025178
	movs r0, #1
	strb r0, [r7, #0xf]
	movs r0, #0x1e
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_0802513C:
	ldrb r0, [r7, #0xd]
	adds r3, r0, #0
	cmp r3, #0
	bne _08025178
	ldr r0, _08025168 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0802516C @ =0x00013168
	adds r1, r2, r0
	ldr r4, _08025170 @ =0x00013110
	adds r0, r2, r4
	ldr r0, [r0]
	str r0, [r1]
	movs r0, #0x1a
	ldrsh r1, [r7, r0]
	lsls r1, r1, #2
	adds r4, #0x14
	adds r0, r2, r4
	adds r0, r0, r1
	str r3, [r0]
	ldr r0, _08025174 @ =0x000131BE
	adds r2, r2, r0
	b _080251C2
	.align 2, 0
_08025168: .4byte gEwramData
_0802516C: .4byte 0x00013168
_08025170: .4byte 0x00013110
_08025174: .4byte 0x000131BE
_08025178:
	subs r0, #1
	strb r0, [r7, #0xd]
_0802517C:
	adds r0, r7, #0
	movs r1, #2
	bl sub_0806D128
	adds r2, r7, #0
	adds r2, #0x59
	cmp r0, #0
	bne _08025196
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080251DC
_08025196:
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080251D0 @ =gEwramData
	ldr r2, [r0]
	ldr r3, _080251D4 @ =0x00013168
	adds r1, r2, r3
	ldr r4, _080251D8 @ =0x00013110
	adds r0, r2, r4
	ldr r0, [r0]
	str r0, [r1]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	lsls r0, r0, #2
	subs r3, #0x44
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	adds r4, #0xae
	adds r2, r2, r4
_080251C2:
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
	b _080251E2
	.align 2, 0
_080251D0: .4byte gEwramData
_080251D4: .4byte 0x00013168
_080251D8: .4byte 0x00013110
_080251DC:
	adds r0, r7, #0
	bl sub_0803F17C
_080251E2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080251F0
sub_080251F0: @ 0x080251F0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov sb, r0
	ldrb r4, [r7, #0xa]
	cmp r4, #1
	beq _080252A0
	cmp r4, #1
	bgt _0802520E
	cmp r4, #0
	beq _08025214
	b _08025324
_0802520E:
	cmp r4, #2
	beq _080252D6
	b _08025324
_08025214:
	ldr r1, _080252B0 @ =0x080E13BC
	adds r1, #0xfc
	ldr r0, [r1]
	ldr r5, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r1, _080252B4 @ =gEwramData
	mov r8, r1
	ldr r1, [r1]
	ldr r2, _080252B8 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	mov r1, r8
	ldr r0, [r1]
	ldr r2, _080252B8 @ =0x000131CC
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldr r0, _080252BC @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xf
	strb r0, [r1]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	mov r0, r8
	ldr r1, [r0]
	ldr r2, _080252C0 @ =0x000131BE
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0x97
	bl sub_080D7910
	mov r1, r8
	ldr r0, [r1]
	ldr r2, _080252C4 @ =0x00013168
	adds r0, r0, r2
	str r4, [r0]
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r7, #0x24]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_080252A0:
	ldrh r1, [r7, #0x24]
	movs r4, #0x24
	ldrsh r0, [r7, r4]
	cmp r0, #0
	beq _080252C8
	subs r0, r1, #1
	strh r0, [r7, #0x24]
	b _08025324
	.align 2, 0
_080252B0: .4byte 0x080E13BC
_080252B4: .4byte gEwramData
_080252B8: .4byte 0x000131CC
_080252BC: .4byte sub_0803B9D0
_080252C0: .4byte 0x000131BE
_080252C4: .4byte 0x00013168
_080252C8:
	movs r0, #1
	strb r0, [r7, #0xf]
	movs r0, #0x1e
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_080252D6:
	ldrb r0, [r7, #0xd]
	adds r3, r0, #0
	cmp r3, #0
	bne _08025320
	ldr r0, _08025310 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _08025314 @ =0x00013168
	adds r1, r2, r0
	ldr r4, _08025318 @ =0x00013110
	adds r0, r2, r4
	ldr r0, [r0]
	str r0, [r1]
	movs r0, #0x1a
	ldrsh r1, [r7, r0]
	lsls r1, r1, #2
	adds r4, #0x14
	adds r0, r2, r4
	adds r0, r0, r1
	str r3, [r0]
	ldr r0, _0802531C @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
	b _08025352
	.align 2, 0
_08025310: .4byte gEwramData
_08025314: .4byte 0x00013168
_08025318: .4byte 0x00013110
_0802531C: .4byte 0x000131BE
_08025320:
	subs r0, #1
	strb r0, [r7, #0xd]
_08025324:
	ldrb r0, [r7, #0xb]
	cmp r0, #0x1d
	bhi _0802532E
	adds r0, #1
	strb r0, [r7, #0xb]
_0802532E:
	ldrb r0, [r7, #0xb]
	movs r3, #8
	rsbs r3, r3, #0
	subs r3, r3, r0
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl sub_08031EA4
	adds r0, r7, #0
	bl sub_0803F17C
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
_08025352:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08025360
sub_08025360: @ 0x08025360
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldr r0, [r6, #0x14]
	mov sb, r0
	ldrb r7, [r6, #0xa]
	cmp r7, #1
	beq _08025454
	cmp r7, #1
	bgt _0802537E
	cmp r7, #0
	beq _0802538C
	b _080254F4
_0802537E:
	cmp r7, #2
	bne _08025384
	b _080254B0
_08025384:
	cmp r7, #3
	bne _0802538A
	b _080254C2
_0802538A:
	b _080254F4
_0802538C:
	ldr r0, _08025490 @ =0x080E13BC
	adds r1, r0, #0
	adds r1, #0x30
	ldr r0, [r0, #0x30]
	ldr r4, [r1, #4]
	ldr r5, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r1, _08025494 @ =gEwramData
	mov r8, r1
	ldr r1, [r1]
	ldr r2, _08025498 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	mov r3, r8
	ldr r0, [r3]
	ldr r1, _08025498 @ =0x000131CC
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #2
	bl sub_0803B924
	movs r4, #0
	bl sub_08000A90
	movs r1, #7
	ands r1, r0
	cmp r1, #0
	bne _080253DC
	movs r4, #1
_080253DC:
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	ldr r0, _0802549C @ =sub_0803B9D0
	str r0, [r6, #4]
	movs r3, #0x1a
	rsbs r3, r3, #0
	adds r0, r6, #0
	mov r1, sb
	movs r2, #8
	bl sub_08031EA4
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r6, #0x54]
	str r7, [r6, #0x4c]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r1, _080254A0 @ =0x1018F0F4
	adds r0, r6, #0
	bl sub_08042884
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	movs r1, #0xa
	bl sub_08042A54
	mov r2, r8
	ldr r1, [r2]
	ldr r3, _080254A4 @ =0x000131BE
	adds r1, r1, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
_08025454:
	ldr r1, _080254A8 @ =0xFFFE0000
	ldr r2, _080254AC @ =0x084F12BC
	adds r0, r6, #0
	movs r3, #8
	bl sub_0806CAF8
	adds r4, r0, #0
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _080254F4
	ldrb r0, [r6, #0xb]
	cmp r0, #0
	bne _0802547A
	movs r0, #1
	strb r0, [r6, #0xb]
	movs r0, #0xd0
	bl sub_080D7910
_0802547A:
	movs r0, #3
	ands r0, r4
	cmp r0, #0
	beq _080254F4
	movs r0, #2
	strb r0, [r6, #0xa]
	movs r0, #0x10
	strb r0, [r6, #0xd]
	movs r0, #1
	strb r0, [r6, #0xf]
	b _080254F4
	.align 2, 0
_08025490: .4byte 0x080E13BC
_08025494: .4byte gEwramData
_08025498: .4byte 0x000131CC
_0802549C: .4byte sub_0803B9D0
_080254A0: .4byte 0x1018F0F4
_080254A4: .4byte 0x000131BE
_080254A8: .4byte 0xFFFE0000
_080254AC: .4byte 0x084F12BC
_080254B0:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _080254BC
	subs r0, #1
	strb r0, [r6, #0xd]
	b _080254F4
_080254BC:
	movs r0, #3
	strb r0, [r6, #0xa]
	b _080254F4
_080254C2:
	ldr r0, _080254E8 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r6, r1]
	lsls r0, r0, #2
	ldr r3, _080254EC @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _080254F0 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r6, #0
	bl sub_08000E14
	b _08025534
	.align 2, 0
_080254E8: .4byte gEwramData
_080254EC: .4byte 0x00013124
_080254F0: .4byte 0x000131BE
_080254F4:
	adds r0, r6, #0
	movs r1, #4
	bl sub_0806D128
	adds r3, r6, #0
	adds r3, #0x59
	cmp r0, #0
	bne _0802550E
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08025526
_0802550E:
	ldrb r0, [r3]
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	movs r0, #3
	strb r0, [r6, #0xa]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
_08025526:
	ldrb r0, [r3]
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	adds r0, r6, #0
	bl sub_0803F17C
_08025534:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08025540
sub_08025540: @ 0x08025540
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r7, #0
	movs r0, #7
	mov r8, r0
_0802554E:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _0802560C @ =sub_0802DA98
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	beq _08025600
	ldr r0, _08025610 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	adds r0, r4, #0
	ldr r1, _08025614 @ =0x0820ED60
	movs r3, #6
	bl sub_0803B924
	ldr r0, _08025618 @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	bl sub_08000A90
	movs r1, #1
	ands r0, r1
	adds r0, #0x40
	adds r1, r4, #0
	adds r1, #0x65
	strb r0, [r1]
	bl sub_08000A90
	mov r1, r8
	ands r0, r1
	adds r1, r6, #0
	adds r1, #0x42
	subs r0, #4
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	bl sub_08000A90
	mov r1, r8
	ands r0, r1
	adds r1, r6, #0
	adds r1, #0x46
	subs r0, #4
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	bl sub_08000A90
	movs r5, #0xff
	ands r0, r5
	lsls r0, r0, #8
	str r0, [r4, #0x48]
	bl sub_08000A90
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080255DA
	ldr r0, [r4, #0x48]
	rsbs r0, r0, #0
	str r0, [r4, #0x48]
_080255DA:
	bl sub_08000A90
	ands r0, r5
	lsls r0, r0, #8
	ldr r1, _0802561C @ =0xFFFF0000
	subs r1, r1, r0
	str r1, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r7, #1
	cmp r7, #3
	ble _0802554E
_08025600:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802560C: .4byte sub_0802DA98
_08025610: .4byte 0x081C15F4
_08025614: .4byte 0x0820ED60
_08025618: .4byte sub_0803B9D0
_0802561C: .4byte 0xFFFF0000

	thumb_func_start sub_08025620
sub_08025620: @ 0x08025620
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0x80
	lsls r4, r4, #0xc
	adds r1, r4, #0
	bl sub_0806D430
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806D460
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _08025646
	movs r0, #1
	strb r0, [r5, #0xa]
_08025646:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08025656
	movs r0, #1
	strb r0, [r5, #0xa]
_08025656:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08025668
	movs r0, #1
	strb r0, [r5, #0xa]
_08025668:
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _080256A0
	ldr r0, _08025694 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	lsls r0, r0, #2
	ldr r3, _08025698 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _0802569C @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_08000E14
	b _080256A6
	.align 2, 0
_08025694: .4byte gEwramData
_08025698: .4byte 0x00013124
_0802569C: .4byte 0x000131BE
_080256A0:
	adds r0, r5, #0
	bl sub_0803F17C
_080256A6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080256AC
sub_080256AC: @ 0x080256AC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	ldrh r1, [r6, #0x1e]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _0802576C @ =0x084F12C8
	adds r7, r0, r1
	ldr r1, _08025770 @ =sub_08025620
	adds r0, r6, #0
	bl sub_08023530
	adds r5, r0, #0
	cmp r5, #0
	beq _08025762
	mov r4, sp
	adds r0, r6, #0
	movs r1, #1
	mov r2, sp
	bl sub_0806C3F8
	ldr r2, _08025774 @ =0x080E13BC
	ldrb r1, [r7, #0xc]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #8
	adds r0, r0, r2
	ldr r1, [r0]
	ldr r0, _08025778 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0802577C @ =0x000131CC
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r5, #0
	movs r3, #2
	bl sub_0803B924
	ldr r0, _08025780 @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	adds r0, r6, #0
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
	adds r2, r6, #0
	adds r2, #0x42
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	ldrh r2, [r2]
	adds r0, r0, r2
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r1, r6, #0
	adds r1, #0x46
	ldrh r0, [r4, #2]
	ldrh r1, [r1]
	adds r0, r0, r1
	subs r0, #4
	adds r2, r5, #0
	adds r2, #0x46
	strh r0, [r2]
	adds r0, r5, #0
	movs r1, #5
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	movs r0, #0xa
	strb r0, [r5, #0xd]
_08025762:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802576C: .4byte 0x084F12C8
_08025770: .4byte sub_08025620
_08025774: .4byte 0x080E13BC
_08025778: .4byte gEwramData
_0802577C: .4byte 0x000131CC
_08025780: .4byte sub_0803B9D0

	thumb_func_start sub_08025784
sub_08025784: @ 0x08025784
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r7, r0, #0
	ldrh r0, [r7, #0x1e]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _080257B8 @ =0x084F12C8
	adds r1, r1, r0
	str r1, [sp, #8]
	ldr r0, [r7, #0x14]
	mov sl, r0
	ldrb r0, [r7, #0xa]
	cmp r0, #4
	bls _080257AC
	b _08025EDC
_080257AC:
	lsls r0, r0, #2
	ldr r1, _080257BC @ =_080257C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080257B8: .4byte 0x084F12C8
_080257BC: .4byte _080257C0
_080257C0: @ jump table
	.4byte _080257D4 @ case 0
	.4byte _08025A28 @ case 1
	.4byte _08025E20 @ case 2
	.4byte _08025E52 @ case 3
	.4byte _08025ECC @ case 4
_080257D4:
	ldr r1, [sp, #8]
	ldrb r0, [r1, #0xc]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08025860 @ =0x080E13BC
	adds r1, r1, r0
	ldr r2, [sp, #8]
	ldrb r2, [r2, #0xf]
	mov r8, r2
	ldr r0, [r1]
	ldr r4, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r3, _08025864 @ =gEwramData
	mov sb, r3
	ldr r1, [r3]
	ldr r2, _08025868 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	mov r1, r8
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	mov r3, sb
	ldr r0, [r3]
	ldr r1, _08025868 @ =0x000131CC
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	movs r3, #0x1a
	rsbs r3, r3, #0
	adds r0, r7, #0
	mov r1, sl
	movs r2, #8
	bl sub_08031EA4
	ldr r2, [sp, #8]
	ldrh r1, [r2, #0x12]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080258A4
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _08025870
	mov r3, sb
	ldr r0, [r3]
	movs r2, #0x1a
	ldrsh r1, [r7, r2]
	lsls r1, r1, #2
	ldr r3, _0802586C @ =0x00013124
	adds r0, r0, r3
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	b _08025EAC
	.align 2, 0
_08025860: .4byte 0x080E13BC
_08025864: .4byte gEwramData
_08025868: .4byte 0x000131CC
_0802586C: .4byte 0x00013124
_08025870:
	adds r2, r7, #0
	adds r2, #0x58
	movs r0, #0x1f
	ands r3, r0
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	adds r3, r7, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3]
	ldr r0, [sp, #8]
	ldrh r3, [r0, #0x14]
	strh r3, [r7, #0x2e]
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080258A4
	rsbs r0, r3, #0
	strh r0, [r7, #0x2e]
_080258A4:
	ldr r2, [sp, #8]
	ldrh r1, [r2, #0x12]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080258BE
	ldrb r1, [r2, #0xe]
	adds r0, r7, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _080258C8
_080258BE:
	ldr r3, [sp, #8]
	ldrb r0, [r3, #0xd]
	adds r1, r7, #0
	adds r1, #0x65
	strb r0, [r1]
_080258C8:
	ldr r0, _08025940 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r5, #0
	movs r0, #0xd
	strb r0, [r1]
	ldr r0, [sp, #8]
	ldr r2, [r0]
	str r2, [r7, #0x24]
	str r2, [r7, #0x48]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080258F0
	rsbs r0, r2, #0
	str r0, [r7, #0x48]
_080258F0:
	ldr r1, [sp, #8]
	ldr r0, [r1, #4]
	str r0, [r7, #0x4c]
	ldr r0, [r1, #8]
	str r0, [r7, #0x54]
	adds r1, r7, #0
	adds r1, #0x59
	ldrb r0, [r1]
	movs r4, #2
	orrs r0, r4
	strb r0, [r1]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	ldr r2, _08025944 @ =sub_0802DACC
	adds r0, r7, #0
	movs r1, #5
	movs r3, #0
	bl sub_0804277C
	ldr r2, [sp, #8]
	ldrh r1, [r2, #0x12]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0
	beq _0802594C
	ldr r1, _08025948 @ =0x2838E2E4
	adds r0, r7, #0
	bl sub_08042884
	adds r1, r7, #0
	adds r1, #0x72
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	movs r0, #0x50
	strb r0, [r7, #0xd]
	mov sl, r1
	b _080259B8
	.align 2, 0
_08025940: .4byte sub_0803B9D0
_08025944: .4byte sub_0802DACC
_08025948: .4byte 0x2838E2E4
_0802594C:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080259AA
	adds r2, r7, #0
	adds r2, #0x64
	ldr r0, _08025994 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r3, _08025998 @ =0x0001017C
	adds r1, r1, r3
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r7, #0
	adds r0, #0x65
	ldrb r0, [r0]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _0802599C
	adds r4, r7, #0
	adds r4, #0x72
	ldrb r1, [r4]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r4]
	adds r0, r7, #0
	adds r1, r2, #0
	bl sub_08042848
	mov sl, r4
	b _080259B8
	.align 2, 0
_08025994: .4byte gEwramData
_08025998: .4byte 0x0001017C
_0802599C:
	adds r1, r7, #0
	adds r1, #0x72
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	mov sl, r1
	b _080259B8
_080259AA:
	ldr r1, _08025A18 @ =0x1010F8F8
	adds r0, r7, #0
	bl sub_08042884
	movs r0, #0x72
	adds r0, r0, r7
	mov sl, r0
_080259B8:
	mov r2, sl
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	movs r1, #0x1e
	bl sub_08042A54
	ldr r3, [sp, #8]
	ldrh r1, [r3, #0x12]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080259E4
	movs r0, #1
	movs r1, #0x28
	bl sub_08042A54
	movs r0, #0xc8
	strb r0, [r7, #0xd]
_080259E4:
	ldr r0, [sp, #8]
	ldrh r1, [r0, #0x12]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080259FA
	ldr r0, _08025A1C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08025A20 @ =0x00013168
	adds r0, r0, r1
	str r7, [r0]
_080259FA:
	ldr r2, [sp, #8]
	ldrh r0, [r2, #0x10]
	cmp r0, #0
	beq _08025A06
	bl sub_080D7910
_08025A06:
	ldr r0, _08025A1C @ =gEwramData
	ldr r1, [r0]
	ldr r3, _08025A24 @ =0x000131BE
	adds r1, r1, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08025EDC
	.align 2, 0
_08025A18: .4byte 0x1010F8F8
_08025A1C: .4byte gEwramData
_08025A20: .4byte 0x00013168
_08025A24: .4byte 0x000131BE
_08025A28:
	ldr r0, [sp, #8]
	ldrh r1, [r0, #0x12]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0
	beq _08025AA2
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08025B12
	adds r0, r7, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r7, #0
	adds r1, #0x46
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	bl sub_08045A98
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	subs r2, #0x18
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	movs r4, #2
	strb r4, [r7, #0xd]
	strb r4, [r7, #0xa]
	movs r0, #0xd7
	bl sub_080D7910
	ldr r3, [sp, #8]
	ldrh r1, [r3, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08025B12
	movs r3, #0x80
	lsls r3, r3, #9
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	bl sub_0803D18C
	b _08025B12
_08025AA2:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08025B12
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bne _08025ABE
	movs r0, #1
	strb r0, [r7, #0xf]
_08025ABE:
	ldrb r1, [r7, #0xd]
	cmp r1, #0xf
	bhi _08025B08
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08025B08
	bl sub_08000A90
	ldr r6, _08025B34 @ =0x0007FFFF
	ands r0, r6
	ldr r1, _08025B38 @ =0xFFFC0000
	adds r0, r0, r1
	ldr r4, [r7, #0x40]
	adds r4, r4, r0
	bl sub_08000A90
	ands r0, r6
	ldr r2, _08025B38 @ =0xFFFC0000
	adds r0, r0, r2
	ldr r1, [r7, #0x44]
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #4
	movs r3, #6
	bl sub_08045CEC
	adds r4, r0, #0
	cmp r4, #0
	beq _08025B08
	bl sub_08000A90
	ldr r1, _08025B3C @ =0x000003FF
	ands r1, r0
	ldr r3, _08025B40 @ =0xFFFFE600
	adds r1, r1, r3
	str r1, [r4, #0x54]
_08025B08:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	bne _08025B12
	movs r0, #3
	strb r0, [r7, #0xa]
_08025B12:
	ldr r0, [sp, #8]
	ldrh r1, [r0, #0x12]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08025BC6
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08025B48
	ldr r1, [r7, #0x24]
	rsbs r1, r1, #0
	ldr r2, _08025B44 @ =0x084F1388
	b _08025B4E
	.align 2, 0
_08025B34: .4byte 0x0007FFFF
_08025B38: .4byte 0xFFFC0000
_08025B3C: .4byte 0x000003FF
_08025B40: .4byte 0xFFFFE600
_08025B44: .4byte 0x084F1388
_08025B48:
	ldr r1, [r7, #0x24]
	rsbs r1, r1, #0
	ldr r2, _08025BA0 @ =0x084F139C
_08025B4E:
	adds r0, r7, #0
	movs r3, #0
	bl sub_0806CAF8
	adds r4, r0, #0
	movs r5, #3
	adds r0, r4, #0
	ands r0, r5
	cmp r0, #0
	beq _08025B66
	movs r0, #0
	str r0, [r7, #0x24]
_08025B66:
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _08025BA4
	ldr r2, [sp, #8]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08025B88
	adds r0, r7, #0
	bl sub_08025540
	movs r0, #0xd3
	bl sub_080D7910
	strb r5, [r7, #0xa]
_08025B88:
	ldr r3, [sp, #8]
	ldrh r1, [r3, #0x12]
	movs r0, #0x84
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08025B98
	b _08025EDC
_08025B98:
	movs r0, #0
	str r0, [r7, #0x24]
	b _08025EDC
	.align 2, 0
_08025BA0: .4byte 0x084F139C
_08025BA4:
	ldr r0, [sp, #8]
	ldrh r1, [r0, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08025BB2
	b _08025EDC
_08025BB2:
	ldrb r1, [r7, #0xd]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08025BBE
	b _08025EDC
_08025BBE:
	adds r0, r7, #0
	bl sub_080256AC
	b _08025EDC
_08025BC6:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08025C34
	ldr r5, [r7, #0x4c]
	ldr r1, [r7, #0x24]
	rsbs r1, r1, #0
	ldr r2, _08025C28 @ =0x084F1388
	adds r0, r7, #0
	movs r3, #0
	bl sub_0806CAF8
	adds r4, r0, #0
	movs r0, #3
	ands r0, r4
	cmp r0, #0
	beq _08025C02
	adds r3, r7, #0
	adds r3, #0x58
	ldrb r2, [r3]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_08025C02:
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	bne _08025C0C
	b _08025EDC
_08025C0C:
	movs r0, #0x80
	lsls r0, r0, #9
	cmp r5, r0
	ble _08025C30
	ldr r0, _08025C2C @ =0x0000011B
	bl sub_080D7910
	lsrs r0, r5, #0x1f
	adds r0, r5, r0
	asrs r0, r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x4c]
	b _08025EDC
	.align 2, 0
_08025C28: .4byte 0x084F1388
_08025C2C: .4byte 0x0000011B
_08025C30:
	str r6, [r7, #0x24]
	b _08025EDC
_08025C34:
	movs r4, #0x80
	lsls r4, r4, #0xc
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0806D430
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0806D460
	ldr r2, [sp, #8]
	ldrh r1, [r2, #0x12]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08025C58
	b _08025EDC
_08025C58:
	ldrh r0, [r7, #0x20]
	cmp r0, #0
	bne _08025C60
	b _08025EDC
_08025C60:
	ldr r3, [r7, #0x40]
	mov sb, r3
	ldr r0, [r7, #0x44]
	mov sl, r0
	ldr r2, _08025E00 @ =sub_0802D750
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r5, r0, #0
	cmp r5, #0
	beq _08025CDC
	ldr r1, _08025E04 @ =0x080E13BC
	adds r1, #0xcc
	ldr r0, [r1]
	ldr r2, [r1, #4]
	mov r8, r2
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _08025E08 @ =gEwramData
	ldr r1, [r4]
	ldr r3, _08025E0C @ =0x000131CC
	adds r1, r1, r3
	str r0, [r1]
	mov r0, r8
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r1, _08025E0C @ =0x000131CC
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	mov r2, sb
	str r2, [r5, #0x40]
	mov r3, sl
	str r3, [r5, #0x44]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_08025CDC:
	movs r0, #0xd2
	bl sub_080D7910
	movs r0, #0
	str r0, [sp, #0xc]
	adds r1, r7, #0
	adds r1, #0x58
	str r1, [sp, #0x18]
	movs r2, #0x72
	adds r2, r2, r7
	mov sl, r2
_08025CF2:
	bl sub_08000A90
	movs r1, #1
	ands r1, r0
	ldr r3, [r7, #0x40]
	str r3, [sp, #0x10]
	ldr r0, [r7, #0x44]
	str r0, [sp, #0x14]
	adds r1, #0xa
	mov sb, r1
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _08025E10 @ =sub_0802D880
	bl sub_08000DA0
	adds r6, r0, #0
	cmp r6, #0
	beq _08025DE0
	ldr r1, _08025E14 @ =0x080E1488
	ldr r0, [r1]
	ldr r4, [r1, #4]
	ldr r2, [r1, #8]
	mov r8, r2
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r3, _08025E08 @ =gEwramData
	ldr r1, [r3]
	ldr r2, _08025E0C @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r3, _08025E08 @ =gEwramData
	ldr r0, [r3]
	ldr r1, _08025E0C @ =0x000131CC
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r6, #0
	mov r1, r8
	movs r3, #2
	bl sub_0803B924
	adds r0, r6, #0
	adds r0, #0x65
	mov r2, sb
	strb r2, [r0]
	ldr r0, _08025E18 @ =sub_0803B9D0
	str r0, [r6, #4]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	ldr r3, [sp, #0x10]
	str r3, [r6, #0x40]
	ldr r0, [sp, #0x14]
	str r0, [r6, #0x44]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r4, r6, #0
	bl sub_08000A90
	movs r1, #7
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x42
	subs r0, #4
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	bl sub_08000A90
	movs r3, #7
	ands r0, r3
	adds r1, r4, #0
	adds r1, #0x46
	subs r0, #4
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	bl sub_08000A90
	movs r2, #0xff
	ands r2, r0
	subs r2, #0x80
	ldr r0, [r7, #0x48]
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r2, r2, #9
	adds r0, r0, r2
	str r0, [r4, #0x48]
	bl sub_08000A90
	ldr r1, _08025E1C @ =0xFFFF8000
	orrs r1, r0
	str r1, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r4, #0x54]
	ldr r0, [r7, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r4, #0x44]
	ldr r3, [sp, #0xc]
	adds r3, #1
	str r3, [sp, #0xc]
	cmp r3, #2
	ble _08025CF2
_08025DE0:
	mov r0, sl
	ldrb r1, [r0]
	movs r0, #2
	orrs r0, r1
	mov r1, sl
	strb r0, [r1]
	ldr r2, [sp, #0x18]
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x20
	strb r0, [r7, #0xd]
	movs r0, #4
	b _08025EDA
	.align 2, 0
_08025E00: .4byte sub_0802D750
_08025E04: .4byte 0x080E13BC
_08025E08: .4byte gEwramData
_08025E0C: .4byte 0x000131CC
_08025E10: .4byte sub_0802D880
_08025E14: .4byte 0x080E1488
_08025E18: .4byte sub_0803B9D0
_08025E1C: .4byte 0xFFFF8000
_08025E20:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	bne _08025ED2
	ldr r3, [sp, #8]
	ldrh r1, [r3, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08025E4A
	movs r3, #0x80
	lsls r3, r3, #7
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	bl sub_0803D18C
_08025E4A:
	movs r0, #0x10
	strb r0, [r7, #0xd]
	movs r0, #4
	b _08025EDA
_08025E52:
	bl sub_0803D270
	bl sub_0803CED4
	ldr r0, _08025EB4 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08025EB8 @ =0x00013168
	adds r1, r0, r2
	ldr r3, _08025EBC @ =0x00013110
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [sp, #8]
	ldrh r1, [r0, #0x12]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08025E8E
	adds r2, r7, #0
	adds r2, #0x58
	ldrh r1, [r2]
	ldr r0, _08025EC0 @ =0x0000101F
	ands r0, r1
	cmp r0, #0
	beq _08025E8E
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_08025E8E:
	ldr r0, _08025EB4 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	lsls r0, r0, #2
	ldr r3, _08025EC4 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _08025EC8 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
_08025EAC:
	adds r0, r7, #0
	bl sub_08000E14
	b _08025F5E
	.align 2, 0
_08025EB4: .4byte gEwramData
_08025EB8: .4byte 0x00013168
_08025EBC: .4byte 0x00013110
_08025EC0: .4byte 0x0000101F
_08025EC4: .4byte 0x00013124
_08025EC8: .4byte 0x000131BE
_08025ECC:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	beq _08025ED8
_08025ED2:
	subs r0, #1
	strb r0, [r7, #0xd]
	b _08025EDC
_08025ED8:
	movs r0, #3
_08025EDA:
	strb r0, [r7, #0xa]
_08025EDC:
	adds r0, r7, #0
	movs r1, #4
	bl sub_0806D128
	adds r5, r7, #0
	adds r5, #0x59
	cmp r0, #0
	bne _08025EF6
	ldrb r1, [r5]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08025F0E
_08025EF6:
	ldrb r0, [r5]
	movs r1, #4
	orrs r0, r1
	strb r0, [r5]
	movs r0, #3
	strb r0, [r7, #0xa]
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
_08025F0E:
	ldr r2, [sp, #8]
	ldrh r1, [r2, #0x12]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08025F44
	ldrh r0, [r7, #0x2e]
	ldrh r3, [r7, #0x2c]
	adds r0, r0, r3
	movs r4, #0
	strh r0, [r7, #0x2c]
	movs r1, #0x2c
	ldrsh r0, [r7, r1]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r7, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
_08025F44:
	ldrb r0, [r5]
	movs r1, #4
	orrs r0, r1
	strb r0, [r5]
	ldr r2, [sp, #8]
	ldrh r1, [r2, #0x12]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08025F5E
	adds r0, r7, #0
	bl sub_0803F17C
_08025F5E:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08025F70
sub_08025F70: @ 0x08025F70
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x59
	ldrb r0, [r1]
	movs r6, #4
	orrs r0, r6
	strb r0, [r1]
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	bne _08025FBC
	ldr r0, _08025FB0 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	lsls r0, r0, #2
	ldr r3, _08025FB4 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _08025FB8 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_08000E14
	b _08025FFC
	.align 2, 0
_08025FB0: .4byte gEwramData
_08025FB4: .4byte 0x00013124
_08025FB8: .4byte 0x000131BE
_08025FBC:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08025FEC
	movs r0, #1
	movs r1, #0x14
	bl sub_08042A54
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r1, _08026004 @ =0x1010F8F8
	adds r0, r4, #0
	bl sub_08042884
	adds r1, r4, #0
	adds r1, #0x72
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	movs r0, #1
	strb r0, [r4, #0xa]
_08025FEC:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x24]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x28]
	adds r0, r0, r1
	str r0, [r4, #0x44]
_08025FFC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08026004: .4byte 0x1010F8F8

	thumb_func_start sub_08026008
sub_08026008: @ 0x08026008
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldrb r7, [r6, #0xa]
	cmp r7, #1
	bne _0802601C
	b _0802617A
_0802601C:
	cmp r7, #1
	bgt _0802602C
	cmp r7, #0
	beq _0802603A
	movs r0, #0x58
	adds r0, r0, r6
	mov r8, r0
	b _080262E8
_0802602C:
	cmp r7, #2
	bne _08026032
	b _080262C8
_08026032:
	cmp r7, #3
	bne _08026038
	b _080262EE
_08026038:
	b _080262E2
_0802603A:
	ldr r1, _080260A0 @ =0x080E13BC
	ldr r0, [r1]
	ldr r4, [r1, #4]
	ldr r5, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r2, _080260A4 @ =gEwramData
	mov sb, r2
	ldr r1, [r2]
	ldr r3, _080260A8 @ =0x000131CC
	adds r1, r1, r3
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	mov r1, sb
	ldr r0, [r1]
	ldr r2, _080260A8 @ =0x000131CC
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r6, #0
	adds r0, #0x65
	strb r7, [r0]
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _080260B0
	mov r3, sb
	ldr r1, [r3]
	movs r2, #0x1a
	ldrsh r0, [r6, r2]
	lsls r0, r0, #2
	ldr r3, _080260AC @ =0x00013124
	adds r1, r1, r3
	adds r1, r1, r0
	str r7, [r1]
	b _0802631A
	.align 2, 0
_080260A0: .4byte 0x080E13BC
_080260A4: .4byte gEwramData
_080260A8: .4byte 0x000131CC
_080260AC: .4byte 0x00013124
_080260B0:
	ldr r0, _08026104 @ =sub_0803B9D0
	str r0, [r6, #4]
	adds r5, r6, #0
	adds r5, #0x58
	movs r0, #0x1f
	ands r2, r0
	ldrb r1, [r5]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5]
	adds r4, r6, #0
	adds r4, #0x59
	ldrb r0, [r4]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4]
	ldr r1, _08026108 @ =sub_08025F70
	adds r0, r6, #0
	bl sub_08023530
	mov r8, r0
	adds r7, r4, #0
	cmp r0, #0
	bne _08026110
	ldrb r0, [r5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	mov r0, sb
	ldr r1, [r0]
	movs r2, #0x1a
	ldrsh r0, [r6, r2]
	lsls r0, r0, #2
	ldr r3, _0802610C @ =0x00013124
	adds r1, r1, r3
	adds r1, r1, r0
	mov r0, r8
	str r0, [r1]
	b _0802631A
	.align 2, 0
_08026104: .4byte sub_0803B9D0
_08026108: .4byte sub_08025F70
_0802610C: .4byte 0x00013124
_08026110:
	ldr r1, [r6, #0x14]
	movs r3, #0x1a
	rsbs r3, r3, #0
	adds r0, r6, #0
	movs r2, #8
	bl sub_08031EA4
	ldrb r0, [r7]
	movs r1, #2
	orrs r0, r1
	strb r0, [r7]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	movs r2, #0xf8
	lsls r2, r2, #8
	strh r2, [r6, #0x2c]
	movs r3, #0x80
	lsls r3, r3, #1
	strh r3, [r6, #0x2e]
	movs r4, #0x80
	lsls r4, r4, #0xb
	str r4, [r6, #0x48]
	ldr r0, _080261B0 @ =0xFFFEE000
	str r0, [r6, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r6, #0x54]
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08026166
	rsbs r0, r2, #0
	strh r0, [r6, #0x2c]
	rsbs r0, r3, #0
	strh r0, [r6, #0x2e]
	rsbs r0, r4, #0
	str r0, [r6, #0x48]
_08026166:
	movs r0, #0xe4
	bl sub_080D7910
	mov r2, sb
	ldr r1, [r2]
	ldr r3, _080261B4 @ =0x000131BE
	adds r1, r1, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0802617A:
	adds r0, r6, #0
	movs r1, #4
	bl sub_0806D128
	adds r7, r6, #0
	adds r7, #0x59
	cmp r0, #0
	bne _08026194
	ldrb r1, [r7]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080261B8
_08026194:
	ldrb r0, [r7]
	movs r1, #4
	orrs r0, r1
	strb r0, [r7]
	movs r0, #3
	strb r0, [r6, #0xa]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	mov r8, r2
	b _08026330
	.align 2, 0
_080261B0: .4byte 0xFFFEE000
_080261B4: .4byte 0x000131BE
_080261B8:
	ldrh r3, [r6, #0x2e]
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	cmp r0, #0
	beq _080261D4
	ldrh r2, [r6, #0x2c]
	movs r0, #0x2c
	ldrsh r1, [r6, r0]
	ldr r0, _080261D0 @ =0x00003FFF
	cmp r1, r0
	bgt _080261E6
	b _080261E2
	.align 2, 0
_080261D0: .4byte 0x00003FFF
_080261D4:
	ldrh r2, [r6, #0x2c]
	movs r0, #0x2c
	ldrsh r1, [r6, r0]
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r1, r0
	ble _080261E6
_080261E2:
	adds r0, r2, r3
	strh r0, [r6, #0x2c]
_080261E6:
	movs r1, #0x2c
	ldrsh r4, [r6, r1]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	mov r8, r2
	cmp r0, #0
	beq _080261FE
	ldr r2, _08026250 @ =0xFFFF8000
	adds r4, r4, r2
_080261FE:
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r4, r3
	bl sub_080009E4
	lsls r0, r0, #4
	str r0, [r6, #0x24]
	adds r0, r4, #0
	bl sub_080009E4
	lsls r0, r0, #4
	str r0, [r6, #0x28]
	movs r4, #0x80
	lsls r4, r4, #0xc
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0806D430
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0806D460
	ldr r0, _08026254 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08026258 @ =0x0000A09A
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r6, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r1, r0
	ldr r0, [r6, #0x24]
	cmp r0, #0
	bge _0802625C
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	subs r0, r1, r0
	b _08026260
	.align 2, 0
_08026250: .4byte 0xFFFF8000
_08026254: .4byte gEwramData
_08026258: .4byte 0x0000A09A
_0802625C:
	asrs r0, r0, #0x10
	adds r0, r1, r0
_08026260:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, r0, #0
	ldr r0, _0802628C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08026290 @ =0x0000A09E
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r0, r6, #0
	adds r0, #0x46
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r1, r0
	ldr r0, [r6, #0x28]
	cmp r0, #0
	bge _08026294
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	subs r0, r1, r0
	b _08026298
	.align 2, 0
_0802628C: .4byte gEwramData
_08026290: .4byte 0x0000A09E
_08026294:
	asrs r0, r0, #0x10
	adds r0, r1, r0
_08026298:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08026330
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08001F3C
	cmp r0, #0
	bne _08026330
	movs r0, #2
	strb r0, [r6, #0xa]
	movs r0, #0x20
	strb r0, [r6, #0xd]
	b _08026330
_080262C8:
	movs r0, #1
	strb r0, [r6, #0xf]
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _080262DE
	subs r0, #1
	strb r0, [r6, #0xd]
	movs r0, #0x58
	adds r0, r0, r6
	mov r8, r0
	b _080262E8
_080262DE:
	movs r0, #3
	strb r0, [r6, #0xa]
_080262E2:
	movs r1, #0x58
	adds r1, r1, r6
	mov r8, r1
_080262E8:
	adds r7, r6, #0
	adds r7, #0x59
	b _08026330
_080262EE:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	ldr r0, _08026324 @ =gEwramData
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r0, [r6, r3]
	lsls r0, r0, #2
	ldr r3, _08026328 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _0802632C @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
_0802631A:
	adds r0, r6, #0
	bl sub_08000E14
	b _08026358
	.align 2, 0
_08026324: .4byte gEwramData
_08026328: .4byte 0x00013124
_0802632C: .4byte 0x000131BE
_08026330:
	ldrb r0, [r7]
	movs r1, #4
	orrs r0, r1
	strb r0, [r7]
	movs r1, #0x2c
	ldrsh r0, [r6, r1]
	movs r2, #0x80
	lsls r2, r2, #9
	mov r3, r8
	ldrb r1, [r3]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	movs r4, #0
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
_08026358:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08026368
sub_08026368: @ 0x08026368
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	bne _08026378
	b _08026518
_08026378:
	cmp r0, #1
	bgt _08026382
	cmp r0, #0
	beq _0802638A
	b _080265A8
_08026382:
	cmp r0, #2
	bne _08026388
	b _08026574
_08026388:
	b _080265A8
_0802638A:
	bl sub_08000A90
	mov r8, r0
	movs r0, #1
	mov r1, r8
	ands r1, r0
	mov r8, r1
	ldrh r0, [r7, #0x1e]
	cmp r0, #0
	bne _080263F0
	ldr r1, _080263E4 @ =0x080E13BC
	ldr r0, [r1]
	ldr r5, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _080263E8 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _080263EC @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r3, _080263EC @ =0x000131CC
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	mov r0, r8
	adds r0, #2
	adds r1, r7, #0
	adds r1, #0x65
	strb r0, [r1]
	b _0802643C
	.align 2, 0
_080263E4: .4byte 0x080E13BC
_080263E8: .4byte gEwramData
_080263EC: .4byte 0x000131CC
_080263F0:
	ldr r0, _08026554 @ =0x080E13BC
	adds r1, r0, #0
	adds r1, #0x54
	ldr r0, [r0, #0x54]
	ldr r5, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _08026558 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _0802655C @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r3, _0802655C @ =0x000131CC
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	mov r0, r8
	adds r0, #4
	adds r1, r7, #0
	adds r1, #0x65
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r7, #0x50]
_0802643C:
	ldr r1, _08026560 @ =0x084F13A6
	mov r2, r8
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_080D7910
	ldr r0, _08026564 @ =sub_0803B9D0
	str r0, [r7, #4]
	ldr r1, [r7, #0x14]
	movs r3, #0x1a
	rsbs r3, r3, #0
	adds r0, r7, #0
	movs r2, #8
	bl sub_08031EA4
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	subs r1, #3
	ldrb r0, [r1]
	movs r4, #2
	orrs r0, r4
	strb r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #9
	str r3, [r7, #0x48]
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802648C
	rsbs r0, r3, #0
	str r0, [r7, #0x48]
	ldr r0, [r7, #0x50]
	rsbs r0, r0, #0
	str r0, [r7, #0x50]
_0802648C:
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	movs r0, #1
	movs r1, #0xa
	bl sub_08042A54
	ldr r2, _08026568 @ =sub_0802D9B4
	adds r0, r7, #0
	movs r1, #5
	movs r3, #0
	bl sub_0804277C
	ldr r1, _0802656C @ =0x0808FCFC
	adds r0, r7, #0
	bl sub_08042884
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08026558 @ =gEwramData
	ldr r1, [r0]
	ldr r3, _08026570 @ =0x000131BE
	adds r1, r1, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	bl sub_08000A90
	strh r0, [r7, #0x24]
	ldrh r0, [r7, #0x1e]
	cmp r0, #0
	beq _08026518
	adds r0, r7, #0
	movs r1, #7
	bl sub_0802383C
	adds r2, r0, #0
	cmp r2, #0
	beq _080264FC
	movs r0, #1
	strb r0, [r2, #0xf]
	adds r2, #0x5a
	ldrb r1, [r2]
	subs r0, #8
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
_080264FC:
	adds r0, r7, #0
	movs r1, #3
	bl sub_0802383C
	adds r2, r0, #0
	cmp r2, #0
	beq _08026518
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
_08026518:
	movs r1, #0x24
	ldrsh r0, [r7, r1]
	bl sub_080009E4
	str r0, [r7, #0x4c]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	ldrh r3, [r7, #0x24]
	adds r0, r0, r3
	strh r0, [r7, #0x24]
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r7, #0
	bl sub_0806D3D8
	ldrb r0, [r7, #0x18]
	cmp r0, #0
	beq _08026542
	movs r0, #2
	strb r0, [r7, #0xa]
_08026542:
	adds r0, r7, #0
	movs r1, #1
	bl sub_0806D128
	cmp r0, #0
	beq _080265A8
	movs r0, #2
	strb r0, [r7, #0xa]
	b _080265A8
	.align 2, 0
_08026554: .4byte 0x080E13BC
_08026558: .4byte gEwramData
_0802655C: .4byte 0x000131CC
_08026560: .4byte 0x084F13A6
_08026564: .4byte sub_0803B9D0
_08026568: .4byte sub_0802D9B4
_0802656C: .4byte 0x0808FCFC
_08026570: .4byte 0x000131BE
_08026574:
	ldr r0, _0802659C @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	lsls r0, r0, #2
	ldr r3, _080265A0 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _080265A4 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
	b _080265B4
	.align 2, 0
_0802659C: .4byte gEwramData
_080265A0: .4byte 0x00013124
_080265A4: .4byte 0x000131BE
_080265A8:
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
_080265B4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080265C0
sub_080265C0: @ 0x080265C0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r5, [r7, #0x14]
	ldrb r0, [r7, #0xa]
	cmp r0, #4
	bls _080265CE
	b _08026810
_080265CE:
	lsls r0, r0, #2
	ldr r1, _080265D8 @ =_080265DC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080265D8: .4byte _080265DC
_080265DC: @ jump table
	.4byte _080265F0 @ case 0
	.4byte _0802669A @ case 1
	.4byte _08026750 @ case 2
	.4byte _0802677A @ case 3
	.4byte _080267DC @ case 4
_080265F0:
	ldr r1, _0802670C @ =0x080E13BC
	ldr r0, [r1]
	ldr r4, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r2, _08026710 @ =gEwramData
	ldr r1, [r2]
	ldr r3, _08026714 @ =0x000131CC
	adds r1, r1, r3
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r1, _08026710 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _08026714 @ =0x000131CC
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldr r0, _08026718 @ =sub_0803B9D0
	str r0, [r7, #4]
	movs r3, #0x1a
	rsbs r3, r3, #0
	adds r0, r7, #0
	adds r1, r5, #0
	movs r2, #8
	bl sub_08031EA4
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r7, #0x24]
	ldr r0, _0802671C @ =0xFFFE8000
	str r0, [r7, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x54]
	adds r1, r7, #0
	adds r1, #0x59
	ldrb r0, [r1]
	movs r4, #2
	orrs r0, r4
	strb r0, [r1]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	movs r0, #1
	movs r1, #0x14
	bl sub_08042A54
	ldr r2, _08026720 @ =sub_0802D9B4
	adds r0, r7, #0
	movs r1, #5
	movs r3, #0
	bl sub_0804277C
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	orrs r0, r4
	strb r0, [r2]
	ldr r3, _08026710 @ =gEwramData
	ldr r1, [r3]
	ldr r0, _08026724 @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0802669A:
	ldr r1, [r7, #0x24]
	rsbs r1, r1, #0
	ldr r2, _08026728 @ =0x084F13AA
	adds r0, r7, #0
	movs r3, #0
	bl sub_0806CAF8
	adds r2, r0, #0
	movs r0, #3
	ands r0, r2
	cmp r0, #0
	beq _080266BE
	ldr r0, [r7, #0x24]
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r7, #0x24]
_080266BE:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	bne _080266C8
	b _08026810
_080266C8:
	movs r0, #0xe0
	bl sub_080D7910
	adds r2, r7, #0
	adds r2, #0x64
	ldr r0, _08026710 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0802672C @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r7, #0
	adds r0, #0x65
	ldrb r0, [r0]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _08026730
	adds r4, r7, #0
	adds r4, #0x72
	ldrb r1, [r4]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r4]
	adds r0, r7, #0
	adds r1, r2, #0
	bl sub_08042848
	b _0802673E
	.align 2, 0
_0802670C: .4byte 0x080E13BC
_08026710: .4byte gEwramData
_08026714: .4byte 0x000131CC
_08026718: .4byte sub_0803B9D0
_0802671C: .4byte 0xFFFE8000
_08026720: .4byte sub_0802D9B4
_08026724: .4byte 0x000131BE
_08026728: .4byte 0x084F13AA
_0802672C: .4byte 0x0001017C
_08026730:
	adds r0, r7, #0
	adds r0, #0x72
	ldrb r2, [r0]
	movs r1, #2
	orrs r1, r2
	strb r1, [r0]
	adds r4, r0, #0
_0802673E:
	ldrb r1, [r4]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r4]
	movs r0, #2
	strb r0, [r7, #0xa]
	movs r0, #0x80
	strb r0, [r7, #0xd]
	b _08026810
_08026750:
	ldrb r0, [r7, #0xd]
	subs r1, r0, #1
	strb r1, [r7, #0xd]
	ldrb r0, [r7, #0x18]
	cmp r0, #0
	bne _08026762
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _08026810
_08026762:
	adds r0, r7, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #3
	strb r0, [r7, #0xa]
	movs r0, #0xe8
	bl sub_080D7910
	b _08026810
_0802677A:
	adds r2, r7, #0
	adds r2, #0x64
	ldr r0, _080267B4 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r3, _080267B8 @ =0x0001017C
	adds r1, r1, r3
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r7, #0
	adds r0, #0x65
	ldrb r0, [r0]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _080267BC
	adds r2, #0xe
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	adds r1, r3, #0
	bl sub_08042848
	b _080267C8
	.align 2, 0
_080267B4: .4byte gEwramData
_080267B8: .4byte 0x0001017C
_080267BC:
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_080267C8:
	adds r0, r7, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r2, #4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08026810
	strb r2, [r7, #0xa]
	b _08026810
_080267DC:
	ldr r0, _08026804 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	lsls r0, r0, #2
	ldr r3, _08026808 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _0802680C @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
	b _08026850
	.align 2, 0
_08026804: .4byte gEwramData
_08026808: .4byte 0x00013124
_0802680C: .4byte 0x000131BE
_08026810:
	adds r0, r7, #0
	movs r1, #4
	bl sub_0806D128
	adds r3, r7, #0
	adds r3, #0x59
	cmp r0, #0
	bne _0802682A
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08026842
_0802682A:
	ldrb r0, [r3]
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	movs r0, #4
	strb r0, [r7, #0xa]
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
_08026842:
	ldrb r0, [r3]
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	adds r0, r7, #0
	bl sub_0803F17C
_08026850:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08026858
sub_08026858: @ 0x08026858
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r7, [r6, #0x14]
	adds r1, r6, #0
	adds r1, #0x59
	ldrb r0, [r1]
	movs r4, #4
	orrs r0, r4
	strb r0, [r1]
	ldrb r1, [r7, #0xa]
	cmp r1, #4
	bne _080268A4
	ldr r0, _08026898 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r6, r1]
	lsls r0, r0, #2
	ldr r3, _0802689C @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _080268A0 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r6, #0
	bl sub_08000E14
	b _080269B6
	.align 2, 0
_08026898: .4byte gEwramData
_0802689C: .4byte 0x00013124
_080268A0: .4byte 0x000131BE
_080268A4:
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	beq _080268F0
	cmp r0, #1
	bgt _080268B4
	cmp r0, #0
	beq _080268BA
	b _08026918
_080268B4:
	cmp r0, #2
	beq _08026908
	b _08026918
_080268BA:
	movs r0, #1
	movs r1, #0x3c
	bl sub_08042A54
	adds r0, r6, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r1, _080268EC @ =0x4040E0E0
	adds r0, r6, #0
	bl sub_08042884
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	orrs r0, r4
	strb r0, [r2]
	movs r0, #1
	strb r0, [r6, #0xa]
	b _08026918
	.align 2, 0
_080268EC: .4byte 0x4040E0E0
_080268F0:
	cmp r1, #2
	bne _08026918
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #0xfd
	ands r1, r0
	strb r1, [r2]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	b _08026918
_08026908:
	cmp r1, #3
	bne _08026918
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_08026918:
	movs r1, #0x2c
	ldrsh r0, [r7, r1]
	ldr r3, _08026950 @ =0xFFFFC000
	adds r5, r0, r3
	bl sub_080009E4
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #4
	adds r0, r5, #0
	bl sub_080009E4
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r2, r1, #4
	ldr r0, [r7, #0x40]
	adds r0, r0, r4
	str r0, [r6, #0x40]
	ldr r0, [r7, #0x44]
	adds r0, r0, r2
	str r0, [r6, #0x44]
	cmp r2, #0
	bge _08026954
	rsbs r0, r2, #0
	asrs r0, r0, #0x10
	cmp r0, #0
	bgt _08026958
	b _08026968
	.align 2, 0
_08026950: .4byte 0xFFFFC000
_08026954:
	cmp r2, #0
	bge _08026968
_08026958:
	cmp r2, #0
	bge _08026962
	rsbs r0, r2, #0
	asrs r0, r0, #0x10
	b _08026976
_08026962:
	asrs r0, r2, #0x10
	rsbs r0, r0, #0
	b _08026976
_08026968:
	cmp r2, #0
	bge _08026974
	rsbs r0, r2, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _08026976
_08026974:
	asrs r0, r2, #0x10
_08026976:
	adds r2, r0, #0
	ldr r1, [r7, #0x24]
	ldr r0, _080269A4 @ =0x0000FFFF
	cmp r1, r0
	ble _080269B6
	adds r0, r6, #0
	adds r0, #0x46
	movs r3, #0
	ldrsh r1, [r0, r3]
	cmn r1, r2
	blt _08026994
	adds r0, r2, #0
	adds r0, #0xa0
	cmp r1, r0
	ble _080269A8
_08026994:
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	b _080269B6
	.align 2, 0
_080269A4: .4byte 0x0000FFFF
_080269A8:
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_080269B6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080269BC
sub_080269BC: @ 0x080269BC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, [r6, #0x14]
	mov sb, r0
	ldrb r0, [r6, #0xa]
	cmp r0, #4
	bls _080269D4
	b _08026BF0
_080269D4:
	lsls r0, r0, #2
	ldr r1, _080269E0 @ =_080269E4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080269E0: .4byte _080269E4
_080269E4: @ jump table
	.4byte _080269F8 @ case 0
	.4byte _08026B40 @ case 1
	.4byte _08026B64 @ case 2
	.4byte _08026B84 @ case 3
	.4byte _08026BAE @ case 4
_080269F8:
	movs r1, #0
	mov r8, r1
	ldr r0, _08026A68 @ =0x080E13BC
	adds r1, r0, #0
	adds r1, #0x3c
	ldr r0, [r0, #0x3c]
	ldr r4, [r1, #4]
	ldr r5, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r7, _08026A6C @ =gEwramData
	ldr r1, [r7]
	ldr r2, _08026A70 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r7]
	ldr r3, _08026A70 @ =0x000131CC
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r6, #0
	adds r0, #0x65
	mov r1, r8
	strb r1, [r0]
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r5, r0, #0
	lsls r0, r5, #0x10
	cmp r0, #0
	bge _08026A78
	ldr r1, [r7]
	movs r2, #0x1a
	ldrsh r0, [r6, r2]
	lsls r0, r0, #2
	ldr r3, _08026A74 @ =0x00013124
	adds r1, r1, r3
	adds r1, r1, r0
	mov r0, r8
	str r0, [r1]
	b _08026BDA
	.align 2, 0
_08026A68: .4byte 0x080E13BC
_08026A6C: .4byte gEwramData
_08026A70: .4byte 0x000131CC
_08026A74: .4byte 0x00013124
_08026A78:
	ldr r1, _08026AA8 @ =sub_08026858
	adds r0, r6, #0
	bl sub_08023530
	adds r4, r0, #0
	cmp r4, #0
	bne _08026AB0
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	ldr r1, [r7]
	movs r2, #0x1a
	ldrsh r0, [r6, r2]
	lsls r0, r0, #2
	ldr r3, _08026AAC @ =0x00013124
	adds r1, r1, r3
	adds r1, r1, r0
	str r4, [r1]
	b _08026BDA
	.align 2, 0
_08026AA8: .4byte sub_08026858
_08026AAC: .4byte 0x00013124
_08026AB0:
	ldr r0, _08026B54 @ =sub_0803B9D0
	str r0, [r6, #4]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	adds r4, r6, #0
	adds r4, #0x58
	movs r0, #0x1f
	ands r5, r0
	ldrb r1, [r4]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r5
	strb r0, [r4]
	adds r5, r6, #0
	adds r5, #0x59
	ldrb r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r5]
	movs r3, #0x1a
	rsbs r3, r3, #0
	adds r0, r6, #0
	mov r1, sb
	movs r2, #0
	bl sub_08031EA4
	ldrb r0, [r5]
	movs r1, #2
	orrs r0, r1
	strb r0, [r5]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	movs r3, #0x80
	lsls r3, r3, #7
	strh r3, [r6, #0x2c]
	movs r5, #0xf8
	lsls r5, r5, #8
	strh r5, [r6, #0x2e]
	movs r2, #0x40
	str r2, [r6, #0x28]
	ldrb r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08026B22
	rsbs r0, r3, #0
	strh r0, [r6, #0x2c]
	rsbs r0, r5, #0
	strh r0, [r6, #0x2e]
	rsbs r0, r2, #0
	str r0, [r6, #0x28]
_08026B22:
	movs r0, #0x50
	strb r0, [r6, #0xd]
	ldr r1, [r7]
	ldr r0, _08026B58 @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0xd0
	lsls r0, r0, #1
	bl sub_080D7910
	movs r0, #0xcf
	bl sub_080D7910
_08026B40:
	ldr r1, [r6, #0x24]
	ldr r0, _08026B5C @ =0x0001FFFF
	cmp r1, r0
	bgt _08026B60
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r1, r2
	str r0, [r6, #0x24]
	b _08026B64
	.align 2, 0
_08026B54: .4byte sub_0803B9D0
_08026B58: .4byte 0x000131BE
_08026B5C: .4byte 0x0001FFFF
_08026B60:
	movs r0, #2
	strb r0, [r6, #0xa]
_08026B64:
	ldrh r0, [r6, #0x2e]
	ldrh r3, [r6, #0x2c]
	adds r1, r0, r3
	strh r1, [r6, #0x2c]
	ldr r1, [r6, #0x28]
	adds r0, r0, r1
	strh r0, [r6, #0x2e]
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _08026B7E
	subs r0, #1
	strb r0, [r6, #0xd]
	b _08026BF0
_08026B7E:
	movs r0, #3
	strb r0, [r6, #0xa]
	b _08026BF0
_08026B84:
	ldrh r1, [r6, #0x2e]
	ldrh r2, [r6, #0x2c]
	adds r0, r1, r2
	strh r0, [r6, #0x2c]
	ldr r0, [r6, #0x28]
	lsls r0, r0, #1
	subs r1, r1, r0
	strh r1, [r6, #0x2e]
	ldr r0, [r6, #0x24]
	cmp r0, #0
	ble _08026BA8
	ldr r3, _08026BA4 @ =0xFFFFE000
	adds r0, r0, r3
	str r0, [r6, #0x24]
	b _08026BF0
	.align 2, 0
_08026BA4: .4byte 0xFFFFE000
_08026BA8:
	movs r0, #4
	strb r0, [r6, #0xa]
	b _08026BF0
_08026BAE:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	ldr r0, _08026BE4 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r6, r1]
	lsls r0, r0, #2
	ldr r3, _08026BE8 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _08026BEC @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
_08026BDA:
	adds r0, r6, #0
	bl sub_08000E14
	b _08026C44
	.align 2, 0
_08026BE4: .4byte gEwramData
_08026BE8: .4byte 0x00013124
_08026BEC: .4byte 0x000131BE
_08026BF0:
	adds r0, r6, #0
	movs r1, #4
	bl sub_0806D128
	adds r2, r6, #0
	adds r2, #0x59
	cmp r0, #0
	bne _08026C0E
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	adds r1, r6, #0
	adds r1, #0x58
	cmp r0, #0
	bne _08026C28
_08026C0E:
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #4
	strb r0, [r6, #0xa]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	adds r1, r2, #0
_08026C28:
	movs r2, #0x2c
	ldrsh r0, [r6, r2]
	ldr r2, [r6, #0x24]
	ldrb r1, [r1]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	movs r4, #0
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
_08026C44:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08026C54
sub_08026C54: @ 0x08026C54
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r5, [r7, #0x14]
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	bne _08026D0C
	ldr r0, _08026D48 @ =0x080E13BC
	adds r1, r0, #0
	adds r1, #0x24
	ldr r0, [r0, #0x24]
	ldr r4, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r2, _08026D4C @ =gEwramData
	ldr r1, [r2]
	ldr r3, _08026D50 @ =0x000131CC
	adds r1, r1, r3
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r1, _08026D4C @ =gEwramData
	ldr r0, [r1]
	ldr r2, _08026D50 @ =0x000131CC
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _08026D54 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	movs r3, #0x1a
	rsbs r3, r3, #0
	adds r0, r7, #0
	adds r1, r5, #0
	movs r2, #0
	bl sub_08031EA4
	adds r1, r7, #0
	adds r1, #0x59
	ldrb r0, [r1]
	movs r4, #2
	orrs r0, r4
	strb r0, [r1]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	movs r0, #1
	movs r1, #0xf
	bl sub_08042A54
	adds r0, r7, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	orrs r0, r4
	strb r0, [r2]
	movs r0, #0xe2
	bl sub_080D7910
	ldr r3, _08026D4C @ =gEwramData
	ldr r1, [r3]
	ldr r0, _08026D58 @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08026D0C:
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _08026D60
	ldr r0, _08026D4C @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	lsls r0, r0, #2
	ldr r3, _08026D5C @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _08026D58 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
	b _08026DB0
	.align 2, 0
_08026D48: .4byte 0x080E13BC
_08026D4C: .4byte gEwramData
_08026D50: .4byte 0x000131CC
_08026D54: .4byte sub_0803B9D0
_08026D58: .4byte 0x000131BE
_08026D5C: .4byte 0x00013124
_08026D60:
	adds r2, r7, #0
	adds r2, #0x64
	ldr r0, _08026D9C @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _08026DA0 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r7, #0
	adds r0, #0x65
	ldrb r0, [r0]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _08026DA4
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	adds r1, r3, #0
	bl sub_08042848
	b _08026DB0
	.align 2, 0
_08026D9C: .4byte gEwramData
_08026DA0: .4byte 0x0001017C
_08026DA4:
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_08026DB0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08026DB8
sub_08026DB8: @ 0x08026DB8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r1, r7, #0
	adds r1, #0x59
	ldrb r0, [r1]
	movs r2, #4
	mov r8, r2
	mov r3, r8
	orrs r0, r3
	strb r0, [r1]
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	beq _08026E68
	cmp r0, #1
	bgt _08026DE0
	cmp r0, #0
	beq _08026DEE
	b _08026F30
_08026DE0:
	cmp r0, #2
	bne _08026DE6
	b _08026EF0
_08026DE6:
	cmp r0, #3
	bne _08026DEC
	b _08026EFC
_08026DEC:
	b _08026F30
_08026DEE:
	ldr r1, _08026EC4 @ =0x080E13BC
	ldr r0, [r1]
	ldr r5, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _08026EC8 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _08026ECC @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r3, _08026ECC @ =0x000131CC
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #6
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldr r0, _08026ED0 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r1, _08026ED4 @ =0x1010F8F8
	adds r0, r7, #0
	bl sub_08042884
	adds r1, r7, #0
	adds r1, #0x72
	ldrb r0, [r1]
	mov r2, r8
	orrs r0, r2
	strb r0, [r1]
	movs r0, #0x10
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_08026E68:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r7, #0
	bl sub_0806D430
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	beq _08026EE0
	ldrb r3, [r7, #0xb]
	cmp r0, r3
	bne _08026EBC
	ldr r2, _08026ED8 @ =sub_0802DAD4
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	beq _08026EBC
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r7, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r4, #0x44]
	ldr r0, [r7, #0x48]
	str r0, [r4, #0x48]
	bl sub_08000A90
	movs r1, #0xf
	ands r1, r0
	lsls r1, r1, #0xe
	ldr r0, _08026EDC @ =0xFFFC8000
	adds r1, r1, r0
	str r1, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
_08026EBC:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	b _08026F30
	.align 2, 0
_08026EC4: .4byte 0x080E13BC
_08026EC8: .4byte gEwramData
_08026ECC: .4byte 0x000131CC
_08026ED0: .4byte sub_0803B9D0
_08026ED4: .4byte 0x1010F8F8
_08026ED8: .4byte sub_0802DAD4
_08026EDC: .4byte 0xFFFC8000
_08026EE0:
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #2
	orrs r1, r0
	strb r1, [r2]
	movs r0, #2
	strb r0, [r7, #0xa]
_08026EF0:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r7, #0
	bl sub_0806D3D8
	b _08026F30
_08026EFC:
	ldr r0, _08026F24 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	lsls r0, r0, #2
	ldr r3, _08026F28 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _08026F2C @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
	b _08026F68
	.align 2, 0
_08026F24: .4byte gEwramData
_08026F28: .4byte 0x00013124
_08026F2C: .4byte 0x000131BE
_08026F30:
	adds r0, r7, #0
	movs r1, #3
	bl sub_0806D128
	adds r2, r7, #0
	adds r2, #0x59
	cmp r0, #0
	bne _08026F4A
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08026F62
_08026F4A:
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #3
	strb r0, [r7, #0xa]
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
_08026F62:
	adds r0, r7, #0
	bl sub_0803F17C
_08026F68:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08026F74
sub_08026F74: @ 0x08026F74
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov sb, r0
	movs r1, #0x59
	adds r1, r1, r7
	mov r8, r1
	ldrb r0, [r1]
	movs r1, #4
	orrs r0, r1
	mov r2, r8
	strb r0, [r2]
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	bne _08026F9A
	b _0802709C
_08026F9A:
	cmp r0, #1
	bgt _08026FA4
	cmp r0, #0
	beq _08026FAC
	b _080270F8
_08026FA4:
	cmp r0, #2
	bne _08026FAA
	b _080270C4
_08026FAA:
	b _080270F8
_08026FAC:
	ldr r1, _080270AC @ =0x080E13BC
	ldr r0, [r1]
	ldr r4, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r5, _080270B0 @ =gEwramData
	ldr r1, [r5]
	ldr r3, _080270B4 @ =0x000131CC
	adds r1, r1, r3
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r5]
	ldr r1, _080270B4 @ =0x000131CC
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _080270B8 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	mov r2, r8
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	movs r1, #0x1e
	bl sub_08042A54
	movs r3, #0x1a
	rsbs r3, r3, #0
	adds r0, r7, #0
	mov r1, sb
	movs r2, #6
	bl sub_08031EA4
	movs r0, #0xed
	bl sub_080D7910
	ldr r1, [r5]
	ldr r3, _080270BC @ =0x000131BE
	adds r1, r1, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	movs r6, #0
_08027036:
	adds r0, r7, #0
	ldr r1, _080270C0 @ =sub_08026DB8
	bl sub_08023530
	adds r4, r0, #0
	adds r5, r6, #1
	mov r8, r5
	cmp r4, #0
	beq _08027096
	ldr r0, [r7, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r4, #0x44]
	lsls r0, r5, #0x10
	str r0, [r4, #0x48]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x58
	movs r2, #0x40
	ands r2, r0
	ldrb r0, [r3]
	movs r5, #0x41
	rsbs r5, r5, #0
	adds r1, r5, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08027084
	ldr r0, [r4, #0x48]
	rsbs r0, r0, #0
	str r0, [r4, #0x48]
_08027084:
	ldr r0, [r4, #0x48]
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0802708E
	adds r0, #0x7f
_0802708E:
	asrs r0, r0, #7
	str r0, [r4, #0x50]
	adds r0, r6, #2
	strb r0, [r4, #0xb]
_08027096:
	mov r6, r8
	cmp r6, #4
	ble _08027036
_0802709C:
	movs r3, #0x1a
	rsbs r3, r3, #0
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl sub_08031EA4
	b _080270F8
	.align 2, 0
_080270AC: .4byte 0x080E13BC
_080270B0: .4byte gEwramData
_080270B4: .4byte 0x000131CC
_080270B8: .4byte sub_0803B9D0
_080270BC: .4byte 0x000131BE
_080270C0: .4byte sub_08026DB8
_080270C4:
	ldr r0, _080270EC @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	lsls r0, r0, #2
	ldr r3, _080270F0 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r5, _080270F4 @ =0x000131BE
	adds r2, r2, r5
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
	b _08027126
	.align 2, 0
_080270EC: .4byte gEwramData
_080270F0: .4byte 0x00013124
_080270F4: .4byte 0x000131BE
_080270F8:
	adds r0, r7, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _08027126
	ldr r0, _08027134 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	lsls r0, r0, #2
	ldr r3, _08027138 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r5, _0802713C @ =0x000131BE
	adds r2, r2, r5
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
_08027126:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027134: .4byte gEwramData
_08027138: .4byte 0x00013124
_0802713C: .4byte 0x000131BE

	thumb_func_start sub_08027140
sub_08027140: @ 0x08027140
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, [r6, #0x14]
	mov r8, r0
	movs r1, #0x59
	adds r1, r1, r6
	mov sl, r1
	ldrb r0, [r1]
	movs r1, #4
	orrs r0, r1
	mov r2, sl
	strb r0, [r2]
	ldrb r7, [r6, #0xa]
	cmp r7, #1
	beq _0802723A
	cmp r7, #1
	bgt _08027172
	cmp r7, #0
	beq _0802717A
	b _0802730C
_08027172:
	cmp r7, #2
	bne _08027178
	b _080272C2
_08027178:
	b _0802730C
_0802717A:
	ldr r0, _080271DC @ =0x080E13BC
	adds r1, r0, #0
	adds r1, #0x54
	ldr r0, [r0, #0x54]
	ldr r4, [r1, #4]
	ldr r5, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r3, _080271E0 @ =gEwramData
	mov sb, r3
	ldr r1, [r3]
	ldr r2, _080271E4 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	mov r3, sb
	ldr r0, [r3]
	ldr r1, _080271E4 @ =0x000131CC
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #2
	bl sub_0803B924
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _080271EC
	mov r3, sb
	ldr r2, [r3]
	movs r0, #0x1a
	ldrsh r1, [r6, r0]
	lsls r1, r1, #2
	ldr r3, _080271E8 @ =0x00013124
	adds r0, r2, r3
	adds r0, r0, r1
	str r7, [r0]
	b _080272E4
	.align 2, 0
_080271DC: .4byte 0x080E13BC
_080271E0: .4byte gEwramData
_080271E4: .4byte 0x000131CC
_080271E8: .4byte 0x00013124
_080271EC:
	adds r1, r6, #0
	adds r1, #0x65
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080272F8 @ =sub_0802DB3C
	str r0, [r6, #4]
	subs r1, #9
	movs r0, #0xd
	strb r0, [r1]
	adds r3, r6, #0
	adds r3, #0x58
	movs r0, #0x1f
	ands r2, r0
	ldrb r1, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	mov r1, sl
	ldrb r0, [r1]
	movs r1, #0x10
	orrs r0, r1
	mov r2, sl
	strb r0, [r2]
	mov r0, r8
	adds r0, #0x58
	ldrb r1, [r0]
	lsrs r1, r1, #6
	movs r4, #1
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3]
	subs r0, #0x42
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	strb r4, [r6, #0xa]
_0802723A:
	mov r3, r8
	ldr r0, [r3, #0x50]
	str r0, [r6, #0x40]
	ldr r1, [r3, #0x54]
	str r1, [r6, #0x44]
	ldr r2, [r3, #0x40]
	subs r0, r0, r2
	asrs r0, r0, #0x10
	adds r2, r0, #0
	muls r2, r0, r2
	adds r0, r2, #0
	ldr r2, [r3, #0x44]
	subs r1, r1, r2
	asrs r1, r1, #0x10
	adds r3, r1, #0
	muls r3, r1, r3
	adds r1, r3, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xf
	cmp r0, r1
	ble _0802726E
	adds r0, r1, #0
_0802726E:
	asrs r0, r0, #1
	cmp r0, #0
	bge _08027276
	adds r0, #0x1f
_08027276:
	asrs r5, r0, #5
	mov r1, r8
	movs r2, #0x2c
	ldrsh r0, [r1, r2]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r0, r3
	bl sub_080009E4
	lsls r0, r0, #5
	str r0, [r6, #0x48]
	mov r1, r8
	movs r2, #0x2c
	ldrsh r0, [r1, r2]
	bl sub_080009E4
	lsls r1, r0, #5
	str r1, [r6, #0x4c]
	ldr r0, [r6, #0x48]
	cmp r0, #0
	bge _080272A4
	ldr r3, _080272FC @ =0x0000FFFF
	adds r0, r0, r3
_080272A4:
	asrs r0, r0, #0x10
	muls r0, r5, r0
	str r0, [r6, #0x48]
	adds r0, r1, #0
	cmp r0, #0
	bge _080272B4
	ldr r1, _080272FC @ =0x0000FFFF
	adds r0, r0, r1
_080272B4:
	asrs r0, r0, #0x10
	muls r0, r5, r0
	str r0, [r6, #0x4c]
	mov r2, r8
	ldrb r0, [r2, #0xa]
	cmp r0, #2
	bne _0802730C
_080272C2:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	ldr r0, _08027300 @ =gEwramData
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r0, [r6, r3]
	lsls r0, r0, #2
	ldr r3, _08027304 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
_080272E4:
	ldr r0, _08027308 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r6, #0
	bl sub_08000E14
	b _08027330
	.align 2, 0
_080272F8: .4byte sub_0802DB3C
_080272FC: .4byte 0x0000FFFF
_08027300: .4byte gEwramData
_08027304: .4byte 0x00013124
_08027308: .4byte 0x000131BE
_0802730C:
	mov r1, r8
	movs r2, #0x2c
	ldrsh r0, [r1, r2]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r6, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	movs r4, #0
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r5, #0
	bl sub_0803E058
_08027330:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08027340
sub_08027340: @ 0x08027340
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, [r6, #0x14]
	mov sb, r0
	movs r1, #0x59
	adds r1, r1, r6
	mov r8, r1
	ldrb r0, [r1]
	movs r2, #4
	orrs r0, r2
	strb r0, [r1]
	ldrb r7, [r6, #0xa]
	cmp r7, #1
	bne _08027368
	b _080274AC
_08027368:
	cmp r7, #1
	bgt _08027372
	cmp r7, #0
	beq _0802737A
	b _080275B8
_08027372:
	cmp r7, #2
	bne _08027378
	b _08027578
_08027378:
	b _080275B8
_0802737A:
	ldr r0, _080273E4 @ =0x080E13BC
	adds r1, r0, #0
	adds r1, #0x54
	ldr r0, [r0, #0x54]
	ldr r4, [r1, #4]
	ldr r5, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r3, _080273E8 @ =gEwramData
	mov sl, r3
	ldr r1, [r3]
	ldr r2, _080273EC @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	mov r3, sl
	ldr r0, [r3]
	ldr r1, _080273EC @ =0x000131CC
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r6, #0
	adds r0, #0x65
	movs r4, #1
	strb r4, [r0]
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _080273F4
	mov r2, sl
	ldr r1, [r2]
	movs r3, #0x1a
	ldrsh r0, [r6, r3]
	lsls r0, r0, #2
	ldr r2, _080273F0 @ =0x00013124
	adds r1, r1, r2
	adds r1, r1, r0
	str r7, [r1]
	b _080275A4
	.align 2, 0
_080273E4: .4byte 0x080E13BC
_080273E8: .4byte gEwramData
_080273EC: .4byte 0x000131CC
_080273F0: .4byte 0x00013124
_080273F4:
	mov r3, r8
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _080274F4 @ =sub_0803B9D0
	str r0, [r6, #4]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	adds r3, r6, #0
	adds r3, #0x58
	movs r0, #0x1f
	ands r2, r0
	ldrb r1, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	mov r1, r8
	ldrb r0, [r1]
	movs r1, #0x10
	orrs r0, r1
	mov r2, r8
	strb r0, [r2]
	mov r0, sb
	adds r0, #0x58
	ldrb r1, [r0]
	lsrs r1, r1, #6
	ands r1, r4
	lsls r1, r1, #6
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0x80
	lsls r0, r0, #6
	strh r0, [r6, #0x2c]
	ldr r2, _080274F8 @ =0x0000FD8A
	strh r2, [r6, #0x2e]
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08027460
	movs r0, #0xc0
	lsls r0, r0, #7
	strh r0, [r6, #0x2c]
	rsbs r0, r2, #0
	strh r0, [r6, #0x2e]
_08027460:
	movs r0, #1
	movs r1, #0xa
	bl sub_08042A54
	adds r0, r6, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r1, _080274FC @ =0x2020F0F0
	adds r0, r6, #0
	bl sub_08042884
	adds r1, r6, #0
	adds r1, #0x72
	ldrb r0, [r1]
	movs r3, #4
	orrs r0, r3
	strb r0, [r1]
	movs r0, #0x1a
	strb r0, [r6, #0xd]
	movs r0, #1
	strb r0, [r6, #0xa]
	movs r0, #0xd4
	bl sub_080D7910
	mov r0, sl
	ldr r1, [r0]
	ldr r2, _08027500 @ =0x000131BE
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _08027504 @ =sub_08027140
	adds r0, r6, #0
	bl sub_08023530
_080274AC:
	mov r3, sb
	ldr r0, [r3, #0x40]
	str r0, [r6, #0x50]
	ldr r0, [r3, #0x44]
	ldr r1, _08027508 @ =0xFFE80000
	adds r0, r0, r1
	str r0, [r6, #0x54]
	ldrb r0, [r6, #0xd]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r0, r1, #6
	subs r0, r0, r1
	lsls r0, r0, #2
	bl sub_080009E4
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	cmp r1, #0
	bge _0802750C
	ldrb r0, [r6, #0xd]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r0, r1, #6
	subs r0, r0, r1
	lsls r0, r0, #2
	bl sub_080009E4
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	rsbs r1, r1, #0
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	b _08027524
	.align 2, 0
_080274F4: .4byte sub_0803B9D0
_080274F8: .4byte 0x0000FD8A
_080274FC: .4byte 0x2020F0F0
_08027500: .4byte 0x000131BE
_08027504: .4byte sub_08027140
_08027508: .4byte 0xFFE80000
_0802750C:
	ldrb r0, [r6, #0xd]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r0, r1, #6
	subs r0, r0, r1
	lsls r0, r0, #2
	bl sub_080009E4
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	asrs r1, r1, #0x10
_08027524:
	str r1, [r6, #0x24]
	ldrh r0, [r6, #0x2e]
	ldrh r2, [r6, #0x2c]
	adds r0, r0, r2
	strh r0, [r6, #0x2c]
	movs r3, #0xd8
	lsls r3, r3, #5
	adds r0, r3, #0
	ldrh r1, [r6, #0x30]
	adds r0, r0, r1
	strh r0, [r6, #0x30]
	movs r2, #0x2c
	ldrsh r0, [r6, r2]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r0, r3
	bl sub_080009E4
	ldr r1, [r6, #0x24]
	adds r4, r1, #0
	muls r4, r0, r4
	movs r1, #0x2c
	ldrsh r0, [r6, r1]
	bl sub_080009E4
	ldr r1, [r6, #0x24]
	muls r1, r0, r1
	ldr r0, [r6, #0x50]
	adds r0, r0, r4
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x54]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _08027572
	subs r0, #1
	strb r0, [r6, #0xd]
	b _080275B8
_08027572:
	movs r0, #2
	strb r0, [r6, #0xa]
	b _080275B8
_08027578:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	ldr r0, _080275AC @ =gEwramData
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r0, [r6, r3]
	lsls r0, r0, #2
	ldr r3, _080275B0 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _080275B4 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
_080275A4:
	adds r0, r6, #0
	bl sub_08000E14
	b _080275F6
	.align 2, 0
_080275AC: .4byte gEwramData
_080275B0: .4byte 0x00013124
_080275B4: .4byte 0x000131BE
_080275B8:
	ldrb r0, [r6, #0xd]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r0, r1, #6
	subs r0, r0, r1
	lsls r0, r0, #2
	bl sub_080009E4
	adds r2, r0, #0
	str r2, [r6, #0x28]
	movs r1, #0x30
	ldrsh r4, [r6, r1]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080275E0
	rsbs r4, r4, #0
_080275E0:
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	movs r0, #0
	str r0, [sp]
	lsls r0, r1, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0803E058
_080275F6:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08027608
sub_08027608: @ 0x08027608
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov sb, r0
	movs r1, #0x59
	adds r1, r1, r7
	mov r8, r1
	ldrb r0, [r1]
	movs r2, #4
	mov sl, r2
	mov r3, sl
	orrs r0, r3
	strb r0, [r1]
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	beq _080276DA
	cmp r0, #1
	bgt _0802763A
	cmp r0, #0
	beq _08027640
	b _08027714
_0802763A:
	cmp r0, #2
	beq _080276F6
	b _08027714
_08027640:
	ldr r0, _08027700 @ =0x080E13BC
	adds r1, r0, #0
	adds r1, #0x60
	ldr r0, [r0, #0x60]
	ldr r4, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r5, _08027704 @ =gEwramData
	ldr r1, [r5]
	ldr r2, _08027708 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r5]
	ldr r3, _08027708 @ =0x000131CC
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	ldrh r1, [r7, #0x1e]
	adds r0, r7, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xe
	strb r0, [r1]
	ldr r0, _0802770C @ =sub_0803B9D0
	str r0, [r7, #4]
	mov r1, r8
	ldrb r0, [r1]
	movs r1, #2
	orrs r0, r1
	mov r2, r8
	strb r0, [r2]
	movs r0, #1
	movs r1, #0xf
	bl sub_08042A54
	adds r0, r7, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r0, [r2]
	mov r3, sl
	orrs r0, r3
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r5]
	ldr r0, _08027710 @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0xeb
	bl sub_080D7910
	movs r0, #1
	strb r0, [r7, #0xa]
_080276DA:
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	movs r3, #0
	bl sub_08031EA4
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #1
	ands r0, r1
	subs r1, #0x80
	cmp r0, r1
	beq _08027714
_080276F6:
	ldr r0, _08027704 @ =gEwramData
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r0, [r7, r3]
	b _08027726
	.align 2, 0
_08027700: .4byte 0x080E13BC
_08027704: .4byte gEwramData
_08027708: .4byte 0x000131CC
_0802770C: .4byte sub_0803B9D0
_08027710: .4byte 0x000131BE
_08027714:
	adds r0, r7, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _08027750
	ldr r0, _08027744 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
_08027726:
	lsls r0, r0, #2
	ldr r3, _08027748 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _0802774C @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
	b _080277A0
	.align 2, 0
_08027744: .4byte gEwramData
_08027748: .4byte 0x00013124
_0802774C: .4byte 0x000131BE
_08027750:
	adds r2, r7, #0
	adds r2, #0x64
	ldr r0, _0802778C @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _08027790 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r7, #0
	adds r0, #0x65
	ldrb r0, [r0]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _08027794
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	adds r1, r3, #0
	bl sub_08042848
	b _080277A0
	.align 2, 0
_0802778C: .4byte gEwramData
_08027790: .4byte 0x0001017C
_08027794:
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_080277A0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080277B0
sub_080277B0: @ 0x080277B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r5, [r7, #0x14]
	movs r0, #0x59
	adds r0, r0, r7
	mov r8, r0
	ldrb r0, [r0]
	movs r1, #4
	mov sl, r1
	mov r2, sl
	orrs r0, r2
	mov r3, r8
	strb r0, [r3]
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	beq _080277E0
	cmp r0, #1
	bne _080277DE
	b _080278DC
_080277DE:
	b _080279A4
_080277E0:
	ldr r0, _080278B8 @ =0x080E13BC
	adds r1, r0, #0
	adds r1, #0x6c
	ldr r0, [r0, #0x6c]
	ldr r4, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r1, _080278BC @ =gEwramData
	mov sb, r1
	ldr r1, [r1]
	ldr r2, _080278C0 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	mov r3, sb
	ldr r0, [r3]
	ldr r1, _080278C0 @ =0x000131CC
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xe
	strb r0, [r1]
	ldr r0, _080278C4 @ =sub_0803B9D0
	str r0, [r7, #4]
	mov r2, r8
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	movs r1, #0xa
	bl sub_08042A54
	adds r0, r7, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	adds r1, r7, #0
	adds r1, #0x72
	ldrb r0, [r1]
	mov r3, sl
	orrs r0, r3
	strb r0, [r1]
	bl sub_08000A90
	movs r1, #1
	ands r0, r1
	adds r3, r7, #0
	adds r3, #0x58
	lsls r0, r0, #7
	ldrb r2, [r3]
	movs r1, #0x7f
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	movs r3, #0x1c
	rsbs r3, r3, #0
	adds r0, r7, #0
	adds r1, r5, #0
	movs r2, #0x10
	bl sub_08031EA4
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	strb r0, [r7, #0xc]
	movs r0, #0x10
	strb r0, [r7, #0xd]
	mov r0, sb
	ldr r1, [r0]
	ldr r2, _080278C8 @ =0x000131BE
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	bl sub_080213F4
	cmp r0, #0
	beq _080278CC
	movs r0, #0xd1
	lsls r0, r0, #1
	bl sub_080D7910
	b _080278D2
	.align 2, 0
_080278B8: .4byte 0x080E13BC
_080278BC: .4byte gEwramData
_080278C0: .4byte 0x000131CC
_080278C4: .4byte sub_0803B9D0
_080278C8: .4byte 0x000131BE
_080278CC:
	ldr r0, _0802798C @ =0x000001A9
	bl sub_080D7910
_080278D2:
	movs r0, #0xe9
	bl sub_080D7910
	movs r0, #1
	strb r0, [r7, #0xa]
_080278DC:
	adds r0, r7, #0
	adds r0, #0x6e
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #3
	bls _080278FE
	ldrb r1, [r7, #0xd]
	movs r0, #0xd
	ldrsb r0, [r7, r0]
	cmp r0, #0
	blt _080278F8
	adds r0, r1, #0
	adds r0, #8
	strb r0, [r7, #0xd]
_080278F8:
	ldrb r0, [r4]
	cmp r0, #3
	bhi _08027918
_080278FE:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08027918
	movs r3, #0x1c
	rsbs r3, r3, #0
	adds r0, r7, #0
	adds r1, r5, #0
	movs r2, #0x10
	bl sub_08031EA4
_08027918:
	adds r3, r7, #0
	adds r3, #0x58
	movs r0, #1
	ldrb r1, [r7, #0xc]
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #0x10
	ldr r0, _08027990 @ =0x2000F000
	adds r1, r1, r0
	adds r0, r7, #0
	bl sub_08042884
	ldrb r0, [r7, #0xb]
	cmp r0, #0
	bne _0802795A
	ldrb r0, [r4]
	cmp r0, #8
	bne _0802795A
	ldr r0, _08027994 @ =0x0820B188
	movs r1, #1
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	movs r0, #1
	strb r0, [r7, #0xb]
_0802795A:
	adds r0, r7, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _080279A4
	ldr r0, _08027998 @ =gEwramData
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r0, [r7, r3]
	lsls r0, r0, #2
	ldr r3, _0802799C @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _080279A0 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
	b _080279EA
	.align 2, 0
_0802798C: .4byte 0x000001A9
_08027990: .4byte 0x2000F000
_08027994: .4byte 0x0820B188
_08027998: .4byte gEwramData
_0802799C: .4byte 0x00013124
_080279A0: .4byte 0x000131BE
_080279A4:
	adds r0, r7, #0
	movs r1, #2
	bl sub_0806D128
	adds r2, r7, #0
	adds r2, #0x59
	cmp r0, #0
	bne _080279BE
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080279EA
_080279BE:
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080279F8 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	lsls r0, r0, #2
	ldr r3, _080279FC @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _08027A00 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
_080279EA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080279F8: .4byte gEwramData
_080279FC: .4byte 0x00013124
_08027A00: .4byte 0x000131BE

	thumb_func_start sub_08027A04
sub_08027A04: @ 0x08027A04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldr r0, [r6, #0x14]
	mov sb, r0
	adds r7, r6, #0
	adds r7, #0x59
	ldrb r0, [r7]
	movs r1, #4
	mov sl, r1
	mov r2, sl
	orrs r0, r2
	strb r0, [r7]
	ldrb r1, [r6, #0xa]
	cmp r1, #1
	beq _08027B1E
	cmp r1, #1
	bgt _08027A34
	cmp r1, #0
	beq _08027A42
	b _08027BEE
_08027A34:
	cmp r1, #2
	bne _08027A3A
	b _08027B6C
_08027A3A:
	cmp r1, #3
	bne _08027A40
	b _08027BD4
_08027A40:
	b _08027BEE
_08027A42:
	ldr r0, _08027B50 @ =0x080E13BC
	adds r1, r0, #0
	adds r1, #0x78
	ldr r0, [r0, #0x78]
	ldr r4, [r1, #4]
	ldr r5, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r3, _08027B54 @ =gEwramData
	mov r8, r3
	ldr r1, [r3]
	ldr r2, _08027B58 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	mov r3, r8
	ldr r0, [r3]
	ldr r1, _08027B58 @ =0x000131CC
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	ldr r0, _08027B5C @ =sub_0803B9D0
	str r0, [r6, #4]
	movs r0, #1
	movs r1, #0x1e
	bl sub_08042A54
	movs r3, #0x1a
	rsbs r3, r3, #0
	adds r0, r6, #0
	mov r1, sb
	movs r2, #0x14
	bl sub_08031EA4
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r3, [r2]
	lsls r0, r3, #0x19
	lsrs r0, r0, #0x1f
	movs r5, #1
	adds r1, r5, #0
	eors r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	ldr r3, _08027B60 @ =0xFFFD8000
	str r3, [r6, #0x48]
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08027ADE
	rsbs r0, r3, #0
	str r0, [r6, #0x48]
_08027ADE:
	ldrb r0, [r7]
	movs r4, #2
	orrs r0, r4
	strb r0, [r7]
	strb r5, [r6, #0xa]
	adds r0, r6, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r1, _08027B64 @ =0x1020F8F0
	adds r0, r6, #0
	bl sub_08042884
	adds r1, r6, #0
	adds r1, #0x72
	ldrb r0, [r1]
	mov r2, sl
	orrs r0, r2
	orrs r0, r4
	strb r0, [r1]
	mov r3, r8
	ldr r1, [r3]
	ldr r0, _08027B68 @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0xd6
	bl sub_080D7910
_08027B1E:
	adds r0, r6, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08027BEE
	adds r2, r6, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #2
	strb r0, [r6, #0xa]
	b _08027BEE
	.align 2, 0
_08027B50: .4byte 0x080E13BC
_08027B54: .4byte gEwramData
_08027B58: .4byte 0x000131CC
_08027B5C: .4byte sub_0803B9D0
_08027B60: .4byte 0xFFFD8000
_08027B64: .4byte 0x1020F8F0
_08027B68: .4byte 0x000131BE
_08027B6C:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	ands r0, r1
	cmp r0, #0
	beq _08027B88
	adds r2, r6, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x10
	b _08027B96
_08027B88:
	adds r2, r6, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x20
_08027B96:
	orrs r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08027BEE
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #3
	strb r0, [r6, #0xa]
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	b _08027BEE
_08027BD4:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r6, #0
	bl sub_0806D430
	adds r0, r6, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #2
	bne _08027BEE
	movs r0, #0xee
	bl sub_080D7910
_08027BEE:
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806D128
	adds r2, r6, #0
	adds r2, #0x59
	cmp r0, #0
	bne _08027C08
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08027C44
_08027C08:
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08027C38 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r6, r1]
	lsls r0, r0, #2
	ldr r3, _08027C3C @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _08027C40 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r6, #0
	bl sub_08000E14
	b _08027C4A
	.align 2, 0
_08027C38: .4byte gEwramData
_08027C3C: .4byte 0x00013124
_08027C40: .4byte 0x000131BE
_08027C44:
	adds r0, r6, #0
	bl sub_0803F17C
_08027C4A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08027C58
sub_08027C58: @ 0x08027C58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, [r6, #0x14]
	mov r8, r0
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r6, #0xa]
	cmp r0, #4
	bls _08027C7E
	b _08027FD0
_08027C7E:
	lsls r0, r0, #2
	ldr r1, _08027C88 @ =_08027C8C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08027C88: .4byte _08027C8C
_08027C8C: @ jump table
	.4byte _08027CA0 @ case 0
	.4byte _08027D7A @ case 1
	.4byte _08027EF0 @ case 2
	.4byte _08027F3C @ case 3
	.4byte _08027F9C @ case 4
_08027CA0:
	ldr r1, _08027DE0 @ =0x080E13BC
	adds r1, #0x84
	ldr r0, [r1]
	ldr r4, [r1, #4]
	ldr r5, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r7, _08027DE4 @ =gEwramData
	ldr r1, [r7]
	ldr r2, _08027DE8 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r7]
	ldr r3, _08027DE8 @ =0x000131CC
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	ldr r0, _08027DEC @ =sub_0803B9D0
	str r0, [r6, #4]
	movs r0, #1
	movs r1, #0x1e
	bl sub_08042A54
	movs r3, #0xc
	rsbs r3, r3, #0
	adds r0, r6, #0
	mov r1, r8
	movs r2, #0x14
	bl sub_08031EA4
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r3, [r2]
	lsls r0, r3, #0x19
	lsrs r0, r0, #0x1f
	movs r5, #1
	adds r1, r5, #0
	eors r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	ldr r3, _08027DF0 @ =0xFFFD8000
	str r3, [r6, #0x48]
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08027D36
	rsbs r0, r3, #0
	str r0, [r6, #0x48]
_08027D36:
	adds r1, r6, #0
	adds r1, #0x59
	ldrb r0, [r1]
	movs r4, #2
	orrs r0, r4
	strb r0, [r1]
	strb r5, [r6, #0xa]
	adds r0, r6, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r1, _08027DF4 @ =0x2030F0E8
	adds r0, r6, #0
	bl sub_08042884
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	orrs r0, r4
	strb r0, [r2]
	movs r0, #0xce
	lsls r0, r0, #1
	bl sub_080D7910
	ldr r1, [r7]
	ldr r7, _08027DF8 @ =0x000131BE
	adds r1, r1, r7
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08027D7A:
	adds r0, r6, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08027D8A
	b _08027FD0
_08027D8A:
	adds r0, r6, #0
	bl sub_08002188
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r6, #0
	bl sub_080021A8
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001F3C
	cmp r0, #0
	bne _08027DBE
	adds r1, r5, #0
	subs r1, #0x10
	adds r0, r4, #0
	bl sub_08001F3C
	cmp r0, #0
	beq _08027EA4
_08027DBE:
	movs r0, #1
	rsbs r0, r0, #0
	mov sl, r0
	movs r1, #0
	mov sb, r1
	ldr r0, _08027DE4 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _08027DFC @ =0x00013220
	adds r0, r1, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _08027E00
	movs r3, #0x72
	adds r3, r3, r6
	mov ip, r3
	b _08027E58
	.align 2, 0
_08027DE0: .4byte 0x080E13BC
_08027DE4: .4byte gEwramData
_08027DE8: .4byte 0x000131CC
_08027DEC: .4byte sub_0803B9D0
_08027DF0: .4byte 0xFFFD8000
_08027DF4: .4byte 0x2030F0E8
_08027DF8: .4byte 0x000131BE
_08027DFC: .4byte 0x00013220
_08027E00:
	movs r7, #0x72
	adds r7, r7, r6
	mov ip, r7
	ldr r0, _08027EA0 @ =0x00013194
	adds r4, r1, r0
	movs r1, #0x42
	adds r1, r1, r6
	mov r8, r1
	movs r5, #3
_08027E12:
	ldr r3, [r4]
	cmp r3, #0
	beq _08027E4E
	adds r0, r3, #0
	adds r0, #0x42
	movs r7, #0
	ldrsh r2, [r0, r7]
	mov r1, r8
	movs r7, #0
	ldrsh r0, [r1, r7]
	subs r2, r2, r0
	adds r0, r3, #0
	adds r0, #0x46
	movs r7, #0
	ldrsh r1, [r0, r7]
	adds r0, r6, #0
	adds r0, #0x46
	movs r7, #0
	ldrsh r0, [r0, r7]
	subs r1, r1, r0
	adds r0, r2, #0
	muls r0, r2, r0
	adds r2, r0, #0
	adds r0, r1, #0
	muls r0, r1, r0
	adds r2, r2, r0
	cmp sl, r2
	bls _08027E4E
	mov sl, r2
	mov sb, r3
_08027E4E:
	adds r4, #4
	subs r5, #1
	cmp r5, #0
	bge _08027E12
	mov r0, sb
_08027E58:
	cmp r0, #0
	beq _08027E88
	ldr r1, [r0, #0x44]
	ldr r0, [r6, #0x44]
	subs r4, r1, r0
	adds r1, r4, #0
	cmp r4, #0
	bge _08027E6A
	rsbs r1, r4, #0
_08027E6A:
	movs r0, #0x80
	lsls r0, r0, #0xe
	cmp r1, r0
	ble _08027E88
	adds r0, r4, #0
	cmp r4, #0
	bge _08027E7A
	adds r0, #0x7f
_08027E7A:
	asrs r0, r0, #7
	str r0, [r6, #0x4c]
	cmp r0, #0
	bge _08027E84
	adds r0, #0x7f
_08027E84:
	asrs r0, r0, #7
	str r0, [r6, #0x54]
_08027E88:
	mov r1, ip
	ldrb r0, [r1]
	movs r1, #0xfd
	ands r1, r0
	mov r2, ip
	strb r1, [r2]
	movs r0, #3
	strb r0, [r6, #0xa]
	movs r0, #0xda
	bl sub_080D7910
	b _08027ED8
	.align 2, 0
_08027EA0: .4byte 0x00013194
_08027EA4:
	ldr r0, [r6, #0x48]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r6, #0x48]
	ldr r0, _08027EE8 @ =0xFFFC8000
	str r0, [r6, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r6, #0x54]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	movs r0, #2
	strb r0, [r6, #0xa]
	movs r0, #1
	strb r0, [r6, #0xf]
	ldr r0, _08027EEC @ =0x000001AD
	bl sub_080D7910
	movs r0, #0xdb
	bl sub_080D7910
_08027ED8:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _08027FD0
	.align 2, 0
_08027EE8: .4byte 0xFFFC8000
_08027EEC: .4byte 0x000001AD
_08027EF0:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r6, #0
	bl sub_0806D3D8
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08027FD0
	bl sub_08000A90
	ldr r5, _08027F34 @ =0x0007FFFF
	ands r0, r5
	ldr r3, _08027F38 @ =0xFFFC0000
	adds r0, r0, r3
	ldr r4, [r6, #0x40]
	adds r4, r4, r0
	bl sub_08000A90
	ands r0, r5
	ldr r7, _08027F38 @ =0xFFFC0000
	adds r0, r0, r7
	ldr r1, [r6, #0x44]
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #7
	bl sub_08045CEC
	b _08027FD0
	.align 2, 0
_08027F34: .4byte 0x0007FFFF
_08027F38: .4byte 0xFFFC0000
_08027F3C:
	movs r1, #0x80
	lsls r1, r1, #0xc
	ldr r2, _08027F98 @ =0xFFF90000
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [sp]
	adds r0, r6, #0
	movs r3, #1
	bl sub_08069CF4
	adds r4, r0, #0
	movs r0, #3
	ands r0, r4
	cmp r0, #0
	beq _08027F6A
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x44]
	movs r2, #0
	movs r3, #7
	bl sub_08045CEC
	movs r0, #4
	strb r0, [r6, #0xa]
_08027F6A:
	movs r5, #0x80
	ands r5, r4
	cmp r5, #0
	bne _08027FD0
	adds r0, r6, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r4, r6, #0
	adds r4, #0x46
	movs r2, #0
	ldrsh r1, [r4, r2]
	subs r1, #7
	bl sub_0806E5FC
	ldrh r1, [r4]
	adds r1, r1, r0
	strh r1, [r4]
	str r5, [r6, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r6, #0x54]
	b _08027FD0
	.align 2, 0
_08027F98: .4byte 0xFFF90000
_08027F9C:
	ldr r0, _08027FC4 @ =gEwramData
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r0, [r6, r3]
	lsls r0, r0, #2
	ldr r7, _08027FC8 @ =0x00013124
	adds r1, r2, r7
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _08027FCC @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r6, #0
	bl sub_08000E14
	b _08028008
	.align 2, 0
_08027FC4: .4byte gEwramData
_08027FC8: .4byte 0x00013124
_08027FCC: .4byte 0x000131BE
_08027FD0:
	adds r0, r6, #0
	movs r1, #4
	bl sub_0806D128
	adds r2, r6, #0
	adds r2, #0x59
	cmp r0, #0
	bne _08027FEA
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08028002
_08027FEA:
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #4
	strb r0, [r6, #0xa]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
_08028002:
	adds r0, r6, #0
	bl sub_0803F17C
_08028008:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08028018
sub_08028018: @ 0x08028018
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldrb r0, [r6, #0x18]
	cmp r0, #0
	bne _08028032
	adds r0, r6, #0
	bl sub_0803AC40
	b _080280A0
_08028032:
	ldr r0, [r6, #0x40]
	mov sb, r0
	ldr r1, [r6, #0x44]
	mov sl, r1
	movs r2, #0
	mov r8, r2
	adds r7, r6, #0
	adds r7, #0x10
_08028042:
	ldrb r0, [r6, #0xd]
	movs r1, #1
	ands r1, r0
	mov r0, r8
	movs r2, #1
	ands r0, r2
	cmp r1, r0
	beq _0802808C
	movs r0, #0x10
	ldrsh r5, [r7, r0]
	cmp r5, #0
	bge _0802805C
	adds r5, #0xff
_0802805C:
	asrs r5, r5, #8
	movs r1, #0x12
	ldrsh r4, [r7, r1]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r4, r2
	bl sub_080009E4
	muls r0, r5, r0
	add r0, sb
	str r0, [r6, #0x40]
	adds r0, r4, #0
	bl sub_080009E4
	muls r0, r5, r0
	add r0, sl
	str r0, [r6, #0x44]
	adds r0, r6, #0
	adds r0, #0x65
	mov r1, r8
	strb r1, [r0]
	adds r0, r6, #0
	bl sub_0803AC40
_0802808C:
	adds r7, #4
	movs r2, #1
	add r8, r2
	mov r0, r8
	cmp r0, #3
	ble _08028042
	mov r1, sb
	str r1, [r6, #0x40]
	mov r2, sl
	str r2, [r6, #0x44]
_080280A0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080280B0
sub_080280B0: @ 0x080280B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov sb, r0
	movs r1, #0x59
	adds r1, r1, r7
	mov r8, r1
	ldrb r0, [r1]
	movs r2, #4
	mov sl, r2
	mov r3, sl
	orrs r0, r3
	strb r0, [r1]
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	beq _0802819E
	cmp r0, #1
	bgt _080280E2
	cmp r0, #0
	beq _080280F0
	b _0802829A
_080280E2:
	cmp r0, #2
	bne _080280E8
	b _08028248
_080280E8:
	cmp r0, #3
	bne _080280EE
	b _08028276
_080280EE:
	b _0802829A
_080280F0:
	ldr r1, _0802821C @ =0x080E13BC
	adds r1, #0x90
	ldr r0, [r1]
	ldr r4, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r5, _08028220 @ =gEwramData
	ldr r1, [r5]
	ldr r2, _08028224 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r5]
	ldr r3, _08028224 @ =0x000131CC
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	ldr r0, _08028228 @ =sub_08028018
	str r0, [r7, #4]
	movs r0, #1
	movs r1, #0xf
	bl sub_08042A54
	movs r3, #0x1a
	rsbs r3, r3, #0
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0x14
	bl sub_08031EA4
	mov r1, r8
	ldrb r0, [r1]
	movs r1, #2
	orrs r0, r1
	mov r2, r8
	strb r0, [r2]
	ldr r2, _0802822C @ =sub_0802D9B4
	adds r0, r7, #0
	movs r1, #5
	movs r3, #0
	bl sub_0804277C
	ldr r1, _08028230 @ =0x1010F8F8
	adds r0, r7, #0
	bl sub_08042884
	adds r1, r7, #0
	adds r1, #0x72
	ldrb r0, [r1]
	mov r3, sl
	orrs r0, r3
	strb r0, [r1]
	movs r0, #0x80
	strb r0, [r7, #0xd]
	ldr r1, [r5]
	ldr r0, _08028234 @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0xe0
	bl sub_080D7910
	movs r0, #1
	strb r0, [r7, #0xa]
_0802819E:
	adds r0, r7, #0
	bl sub_0803F17C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080281B4
	movs r0, #1
	strb r0, [r7, #0x18]
_080281B4:
	ldrb r0, [r7, #0x18]
	movs r1, #0x59
	adds r1, r1, r7
	mov r8, r1
	cmp r0, #0
	beq _0802829A
	bl sub_08000A90
	ldr r1, _08028238 @ =0x00007FFF
	ands r1, r0
	ldr r0, _0802823C @ =0xFFFF0000
	subs r0, r0, r1
	str r0, [r7, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x54]
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x44]
	movs r2, #0xf
	movs r3, #7
	bl sub_08045CEC
	movs r6, #0
	adds r4, r7, #0
	adds r4, #0x20
	movs r5, #3
_080281E8:
	movs r0, #0
	strh r0, [r4]
	bl sub_08000A90
	movs r3, #0xf0
	lsls r3, r3, #8
	adds r2, r6, r3
	ldr r3, _08028240 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r4, #2]
	ldr r0, _08028244 @ =0x00003333
	adds r6, r6, r0
	adds r4, #4
	subs r5, #1
	cmp r5, #0
	bge _080281E8
	movs r0, #0xd7
	bl sub_080D7910
	movs r0, #0x20
	strb r0, [r7, #0xd]
	movs r0, #2
	strb r0, [r7, #0xa]
	b _0802829A
	.align 2, 0
_0802821C: .4byte 0x080E13BC
_08028220: .4byte gEwramData
_08028224: .4byte 0x000131CC
_08028228: .4byte sub_08028018
_0802822C: .4byte sub_0802D9B4
_08028230: .4byte 0x1010F8F8
_08028234: .4byte 0x000131BE
_08028238: .4byte 0x00007FFF
_0802823C: .4byte 0xFFFF0000
_08028240: .4byte 0x000003FF
_08028244: .4byte 0x00003333
_08028248:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r7, #0
	bl sub_0806D460
	adds r1, r7, #0
	adds r1, #0x20
	movs r5, #3
_08028258:
	ldrb r0, [r7, #0xd]
	lsls r0, r0, #5
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	adds r1, #4
	subs r5, #1
	cmp r5, #0
	bge _08028258
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	beq _08028276
	subs r0, #1
	strb r0, [r7, #0xd]
	b _0802829A
_08028276:
	ldr r0, _080282D0 @ =gEwramData
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r0, [r7, r3]
	lsls r0, r0, #2
	ldr r3, _080282D4 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _080282D8 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
_0802829A:
	adds r0, r7, #0
	movs r1, #3
	bl sub_0806D128
	cmp r0, #0
	bne _080282B2
	mov r2, r8
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080282C0
_080282B2:
	mov r3, r8
	ldrb r0, [r3]
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	movs r0, #3
	strb r0, [r7, #0xa]
_080282C0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080282D0: .4byte gEwramData
_080282D4: .4byte 0x00013124
_080282D8: .4byte 0x000131BE

	thumb_func_start sub_080282DC
sub_080282DC: @ 0x080282DC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov sb, r0
	ldrb r0, [r7, #0xa]
	cmp r0, #4
	bls _080282F2
	b _080284C8
_080282F2:
	lsls r0, r0, #2
	ldr r1, _080282FC @ =_08028300
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080282FC: .4byte _08028300
_08028300: @ jump table
	.4byte _08028314 @ case 0
	.4byte _080283E4 @ case 1
	.4byte _08028404 @ case 2
	.4byte _08028486 @ case 3
	.4byte _08028496 @ case 4
_08028314:
	movs r6, #0
	ldr r1, _0802844C @ =0x080E13BC
	adds r1, #0x9c
	ldr r0, [r1]
	ldr r4, [r1, #4]
	ldr r5, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r1, _08028450 @ =gEwramData
	mov r8, r1
	ldr r1, [r1]
	ldr r2, _08028454 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	mov r3, r8
	ldr r0, [r3]
	ldr r1, _08028454 @ =0x000131CC
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r5, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r7, #0
	adds r0, #0x65
	strb r6, [r0]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	ldr r0, _08028458 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	movs r4, #4
	orrs r0, r4
	strb r0, [r2]
	movs r0, #1
	movs r1, #0x14
	bl sub_08042A54
	ldr r2, _0802845C @ =sub_0802D9BC
	adds r0, r7, #0
	movs r1, #5
	movs r3, #0
	bl sub_0804277C
	ldr r1, _08028460 @ =0x0202FFFF
	adds r0, r7, #0
	bl sub_08042884
	adds r1, r7, #0
	adds r1, #0x72
	ldrb r0, [r1]
	orrs r4, r0
	strb r4, [r1]
	movs r3, #0x1a
	rsbs r3, r3, #0
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0x14
	bl sub_08031EA4
	ldr r0, _08028464 @ =0xFFFE0000
	str r0, [r7, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x54]
	movs r2, #0x80
	lsls r2, r2, #9
	str r2, [r7, #0x48]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080283CC
	rsbs r0, r2, #0
	str r0, [r7, #0x48]
_080283CC:
	movs r0, #1
	strb r0, [r7, #0xa]
	mov r2, r8
	ldr r1, [r2]
	ldr r3, _08028468 @ =0x000131BE
	adds r1, r1, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0xe5
	bl sub_080D7910
_080283E4:
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r7, #0
	bl sub_0806D3D8
	ldr r0, [r7, #0x20]
	cmp r0, #0
	beq _080284C8
	movs r0, #2
	strb r0, [r7, #0xa]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_08028404:
	ldr r1, [r7, #0x20]
	cmp r1, #0
	beq _08028472
	adds r0, r1, #0
	adds r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802846C
	ldr r4, [r1, #0x20]
	movs r1, #0x26
	ldrsh r0, [r7, r1]
	cmp r0, #0
	bne _0802842A
	movs r0, #0xd5
	bl sub_080D7910
	movs r0, #8
	bl sub_08021FEC
_0802842A:
	ldrh r0, [r7, #0x26]
	adds r1, r0, #1
	strh r1, [r7, #0x26]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x14
	bgt _0802846C
	adds r0, r4, #0
	adds r0, #0x72
	ldrb r1, [r0]
	movs r2, #4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08028472
	strb r2, [r7, #0xa]
	b _080284C8
	.align 2, 0
_0802844C: .4byte 0x080E13BC
_08028450: .4byte gEwramData
_08028454: .4byte 0x000131CC
_08028458: .4byte sub_0803B9D0
_0802845C: .4byte sub_0802D9BC
_08028460: .4byte 0x0202FFFF
_08028464: .4byte 0xFFFE0000
_08028468: .4byte 0x000131BE
_0802846C:
	movs r0, #4
	strb r0, [r7, #0xa]
	b _080284C8
_08028472:
	adds r0, r7, #0
	bl sub_0803F17C
	adds r1, r0, #0
	cmp r1, #3
	bne _080284C8
	movs r0, #0x10
	strb r0, [r7, #0xd]
	strb r1, [r7, #0xa]
	b _080284C8
_08028486:
	movs r0, #1
	strb r0, [r7, #0xf]
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	beq _08028496
	subs r0, #1
	strb r0, [r7, #0xd]
	b _080284C8
_08028496:
	ldr r0, _080284BC @ =gEwramData
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r0, [r7, r3]
	lsls r0, r0, #2
	ldr r3, _080284C0 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _080284C4 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
	b _080284EE
	.align 2, 0
_080284BC: .4byte gEwramData
_080284C0: .4byte 0x00013124
_080284C4: .4byte 0x000131BE
_080284C8:
	adds r0, r7, #0
	movs r1, #4
	bl sub_0806D128
	adds r2, r7, #0
	adds r2, #0x59
	cmp r0, #0
	bne _080284E2
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080284EE
_080284E2:
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #4
	strb r0, [r7, #0xa]
_080284EE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080284FC
sub_080284FC: @ 0x080284FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldr r0, [r6, #0x14]
	mov sb, r0
	adds r7, r6, #0
	adds r7, #0x59
	ldrb r0, [r7]
	movs r1, #4
	mov sl, r1
	mov r2, sl
	orrs r0, r2
	strb r0, [r7]
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _08028528
	cmp r0, #1
	beq _0802860A
	b _080286AC
_08028528:
	ldr r1, _080285C4 @ =0x080E13BC
	adds r1, #0xa8
	ldr r0, [r1]
	ldr r4, [r1, #4]
	ldr r5, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r3, _080285C8 @ =gEwramData
	mov r8, r3
	ldr r1, [r3]
	ldr r2, _080285CC @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	mov r3, r8
	ldr r0, [r3]
	ldr r4, _080285CC @ =0x000131CC
	adds r0, r0, r4
	ldr r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	ldr r0, _080285D0 @ =sub_0803B9D0
	str r0, [r6, #4]
	ldrb r0, [r7]
	movs r1, #2
	orrs r0, r1
	strb r0, [r7]
	mov r0, r8
	ldr r1, [r0]
	ldr r2, _080285D4 @ =0x000131BE
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r3, #0xa
	rsbs r3, r3, #0
	adds r0, r6, #0
	mov r1, sb
	movs r2, #0x14
	bl sub_08031EA4
	adds r0, r6, #0
	bl sub_0802393C
	adds r3, r0, #0
	cmp r3, #0
	bne _080285DC
	mov r4, r8
	ldr r2, [r4]
	movs r0, #0x1a
	ldrsh r1, [r6, r0]
	lsls r1, r1, #2
	ldr r4, _080285D8 @ =0x00013124
	adds r0, r2, r4
	adds r0, r0, r1
	str r3, [r0]
	b _08028634
	.align 2, 0
_080285C4: .4byte 0x080E13BC
_080285C8: .4byte gEwramData
_080285CC: .4byte 0x000131CC
_080285D0: .4byte sub_0803B9D0
_080285D4: .4byte 0x000131BE
_080285D8: .4byte 0x00013124
_080285DC:
	movs r0, #1
	movs r1, #0xc
	bl sub_08042A54
	adds r0, r6, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r0, [r2]
	mov r1, sl
	orrs r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2]
	movs r0, #0xd9
	bl sub_080D7910
	movs r0, #1
	strb r0, [r6, #0xa]
_0802860A:
	ldr r1, _08028648 @ =0xFFFFC000
	ldr r2, _0802864C @ =0x084F13B4
	adds r0, r6, #0
	movs r3, #4
	bl sub_0806CAF8
	adds r0, r6, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _0802865C
	ldr r0, _08028650 @ =gEwramData
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r0, [r6, r3]
	lsls r0, r0, #2
	ldr r4, _08028654 @ =0x00013124
	adds r1, r2, r4
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
_08028634:
	ldr r0, _08028658 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r6, #0
	bl sub_08000E14
	b _080286AC
	.align 2, 0
_08028648: .4byte 0xFFFFC000
_0802864C: .4byte 0x084F13B4
_08028650: .4byte gEwramData
_08028654: .4byte 0x00013124
_08028658: .4byte 0x000131BE
_0802865C:
	adds r2, r6, #0
	adds r2, #0x64
	ldr r0, _08028698 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0802869C @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r6, #0
	adds r0, #0x65
	ldrb r0, [r0]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _080286A0
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r1, r3, #0
	bl sub_08042848
	b _080286AC
	.align 2, 0
_08028698: .4byte gEwramData
_0802869C: .4byte 0x0001017C
_080286A0:
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_080286AC:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080286BC
sub_080286BC: @ 0x080286BC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r1, r7, #0
	adds r1, #0x59
	ldrb r0, [r1]
	movs r2, #4
	mov r8, r2
	mov r3, r8
	orrs r0, r3
	strb r0, [r1]
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	beq _080286E0
	cmp r0, #1
	beq _0802875A
	b _080287F4
_080286E0:
	ldr r1, _0802878C @ =0x080E13BC
	adds r1, #0xb4
	ldr r0, [r1]
	ldr r5, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _08028790 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _08028794 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r3, _08028794 @ =0x000131CC
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xf
	strb r0, [r1]
	ldr r0, _08028798 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r0, [r2]
	mov r1, r8
	orrs r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2]
	movs r0, #0xd9
	bl sub_080D7910
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_0802875A:
	adds r0, r7, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _080287A4
	ldr r0, _08028790 @ =gEwramData
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r0, [r7, r3]
	lsls r0, r0, #2
	ldr r3, _0802879C @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _080287A0 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
	b _080287F4
	.align 2, 0
_0802878C: .4byte 0x080E13BC
_08028790: .4byte gEwramData
_08028794: .4byte 0x000131CC
_08028798: .4byte sub_0803B9D0
_0802879C: .4byte 0x00013124
_080287A0: .4byte 0x000131BE
_080287A4:
	adds r2, r7, #0
	adds r2, #0x64
	ldr r0, _080287E0 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _080287E4 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r7, #0
	adds r0, #0x65
	ldrb r0, [r0]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _080287E8
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	adds r1, r3, #0
	bl sub_08042848
	b _080287F4
	.align 2, 0
_080287E0: .4byte gEwramData
_080287E4: .4byte 0x0001017C
_080287E8:
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_080287F4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08028800
sub_08028800: @ 0x08028800
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldr r0, [r6, #0x14]
	mov sb, r0
	adds r7, r6, #0
	adds r7, #0x59
	ldrb r0, [r7]
	movs r1, #4
	orrs r0, r1
	strb r0, [r7]
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _08028826
	cmp r0, #1
	beq _080288E6
	b _0802899A
_08028826:
	ldr r1, _080288B4 @ =0x080E13BC
	adds r1, #0xb4
	ldr r0, [r1]
	ldr r4, [r1, #4]
	ldr r5, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r1, _080288B8 @ =gEwramData
	mov r8, r1
	ldr r1, [r1]
	ldr r2, _080288BC @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	mov r4, r8
	ldr r0, [r4]
	ldr r1, _080288BC @ =0x000131CC
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #2
	bl sub_0803B924
	ldrb r0, [r7]
	movs r1, #2
	orrs r0, r1
	strb r0, [r7]
	ldr r1, [r4]
	ldr r2, _080288C0 @ =0x000131BE
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r3, #0xa
	rsbs r3, r3, #0
	adds r0, r6, #0
	mov r1, sb
	movs r2, #0x14
	bl sub_08031EA4
	adds r0, r6, #0
	bl sub_0802393C
	adds r3, r0, #0
	cmp r3, #0
	bne _080288C8
	ldr r2, [r4]
	movs r4, #0x1a
	ldrsh r1, [r6, r4]
	lsls r1, r1, #2
	ldr r4, _080288C4 @ =0x00013124
	adds r0, r2, r4
	adds r0, r0, r1
	str r3, [r0]
	ldr r0, _080288C0 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r6, #0
	bl sub_08000E14
	b _0802899A
	.align 2, 0
_080288B4: .4byte 0x080E13BC
_080288B8: .4byte gEwramData
_080288BC: .4byte 0x000131CC
_080288C0: .4byte 0x000131BE
_080288C4: .4byte 0x00013124
_080288C8:
	movs r0, #1
	movs r1, #0xc
	bl sub_08042A54
	movs r0, #1
	strb r0, [r6, #0xa]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r6, #0x24]
	movs r0, #0xd2
	lsls r0, r0, #1
	bl sub_080D7910
	movs r0, #0x40
	strb r0, [r6, #0xd]
_080288E6:
	ldr r1, [r6, #0x24]
	ldr r0, _0802896C @ =0x0001FFFF
	cmp r1, r0
	bgt _080288F6
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r1, r2
	str r0, [r6, #0x24]
_080288F6:
	ldr r1, [r6, #0x24]
	rsbs r1, r1, #0
	ldr r2, _08028970 @ =0x084F13B4
	adds r0, r6, #0
	movs r3, #4
	bl sub_0806CAF8
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _08028926
	adds r3, r6, #0
	adds r3, #0x58
	ldrb r2, [r3]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_08028926:
	ldrb r1, [r6, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0802895E
	ldr r1, _08028974 @ =sub_080286BC
	adds r0, r6, #0
	bl sub_08023530
	adds r3, r0, #0
	cmp r3, #0
	beq _0802895E
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
_0802895E:
	ldrb r0, [r6, #0xd]
	adds r3, r0, #0
	cmp r3, #0
	beq _08028978
	subs r0, #1
	strb r0, [r6, #0xd]
	b _0802899A
	.align 2, 0
_0802896C: .4byte 0x0001FFFF
_08028970: .4byte 0x084F13B4
_08028974: .4byte sub_080286BC
_08028978:
	ldr r0, _080289A8 @ =gEwramData
	ldr r2, [r0]
	movs r4, #0x1a
	ldrsh r1, [r6, r4]
	lsls r1, r1, #2
	ldr r4, _080289AC @ =0x00013124
	adds r0, r2, r4
	adds r0, r0, r1
	str r3, [r0]
	ldr r0, _080289B0 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r6, #0
	bl sub_08000E14
_0802899A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080289A8: .4byte gEwramData
_080289AC: .4byte 0x00013124
_080289B0: .4byte 0x000131BE

	thumb_func_start sub_080289B4
sub_080289B4: @ 0x080289B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov r8, r0
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	beq _08028AA8
	cmp r0, #1
	bgt _080289D0
	cmp r0, #0
	beq _080289D8
	b _08028B94
_080289D0:
	cmp r0, #2
	bne _080289D6
	b _08028B5A
_080289D6:
	b _08028B94
_080289D8:
	ldr r1, _08028B2C @ =0x080E13BC
	adds r1, #0xe4
	ldr r0, [r1]
	ldr r5, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _08028B30 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _08028B34 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r3, _08028B34 @ =0x000131CC
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _08028B38 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	subs r1, #3
	ldrb r0, [r1]
	movs r5, #2
	orrs r0, r5
	strb r0, [r1]
	movs r0, #1
	movs r1, #0x10
	bl sub_08042A54
	ldr r1, [r4]
	ldr r0, _08028B3C @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	mov r0, r8
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r7, #0
	adds r3, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r2, r7, #0
	adds r2, #0x4a
	movs r0, #0x14
	strh r0, [r2]
	adds r1, r7, #0
	adds r1, #0x4e
	ldr r0, _08028B40 @ =0x0000FFF0
	strh r0, [r1]
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08028A82
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_08028A82:
	ldr r0, _08028B44 @ =0x000001A9
	bl sub_080D7910
	adds r0, r7, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	orrs r0, r5
	strb r0, [r2]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_08028AA8:
	mov r1, r8
	adds r1, #0x42
	adds r0, r7, #0
	adds r0, #0x4a
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	mov r1, r8
	adds r1, #0x46
	adds r0, r7, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r2, r7, #0
	adds r2, #0x46
	strh r0, [r2]
	adds r0, r7, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #0xa
	bne _08028AE0
	movs r0, #0xce
	bl sub_08013D60
_08028AE0:
	adds r0, r7, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _08028AEE
	movs r0, #2
	strb r0, [r7, #0xa]
_08028AEE:
	adds r2, r7, #0
	adds r2, #0x64
	ldr r0, _08028B30 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _08028B48 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r7, #0
	adds r0, #0x65
	ldrb r0, [r0]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _08028B4C
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	adds r1, r3, #0
	bl sub_08042848
	b _08028B94
	.align 2, 0
_08028B2C: .4byte 0x080E13BC
_08028B30: .4byte gEwramData
_08028B34: .4byte 0x000131CC
_08028B38: .4byte sub_0803B9D0
_08028B3C: .4byte 0x000131BE
_08028B40: .4byte 0x0000FFF0
_08028B44: .4byte 0x000001A9
_08028B48: .4byte 0x0001017C
_08028B4C:
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	b _08028B94
_08028B5A:
	movs r0, #0xce
	bl sub_08013E18
	ldr r0, _08028B88 @ =gEwramData
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r0, [r7, r3]
	lsls r0, r0, #2
	ldr r3, _08028B8C @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _08028B90 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
	b _08028BBA
	.align 2, 0
_08028B88: .4byte gEwramData
_08028B8C: .4byte 0x00013124
_08028B90: .4byte 0x000131BE
_08028B94:
	adds r0, r7, #0
	movs r1, #4
	bl sub_0806D128
	adds r2, r7, #0
	adds r2, #0x59
	cmp r0, #0
	bne _08028BAE
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08028BBA
_08028BAE:
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #2
	strb r0, [r7, #0xa]
_08028BBA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08028BC4
sub_08028BC4: @ 0x08028BC4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	beq _08028C6E
	cmp r0, #1
	bgt _08028BD8
	cmp r0, #0
	beq _08028BDE
	b _08028D10
_08028BD8:
	cmp r0, #2
	beq _08028CA4
	b _08028D10
_08028BDE:
	ldr r1, _08028C8C @ =0x080E13BC
	adds r1, #0xd8
	ldr r0, [r1]
	ldr r5, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _08028C90 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _08028C94 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r3, _08028C94 @ =0x000131CC
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	adds r1, r7, #0
	adds r1, #0x65
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08028C98 @ =sub_0803B9D0
	str r0, [r7, #4]
	subs r1, #9
	movs r0, #0xd
	strb r0, [r1]
	ldr r2, _08028C9C @ =sub_0802DB84
	adds r0, r7, #0
	movs r1, #5
	movs r3, #0
	bl sub_0804277C
	ldr r1, _08028CA0 @ =0x0202FF08
	adds r0, r7, #0
	bl sub_08042884
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	movs r2, #0xc0
	lsls r2, r2, #0xb
	str r2, [r7, #0x48]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08028C62
	rsbs r0, r2, #0
	str r0, [r7, #0x48]
_08028C62:
	movs r0, #0xc8
	bl sub_080D7910
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_08028C6E:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r7, #0
	bl sub_0806D3D8
	ldr r0, [r7, #0x20]
	cmp r0, #0
	beq _08028D10
	movs r0, #2
	strb r0, [r7, #0xa]
	movs r0, #0x10
	strb r0, [r7, #0xd]
	movs r0, #1
	strb r0, [r7, #0xf]
	b _08028D10
	.align 2, 0
_08028C8C: .4byte 0x080E13BC
_08028C90: .4byte gEwramData
_08028C94: .4byte 0x000131CC
_08028C98: .4byte sub_0803B9D0
_08028C9C: .4byte sub_0802DB84
_08028CA0: .4byte 0x0202FF08
_08028CA4:
	ldr r0, [r7, #0x20]
	adds r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	beq _08028CD4
	ldr r0, _08028CC8 @ =gEwramData
	ldr r2, [r0]
	movs r4, #0x1a
	ldrsh r0, [r7, r4]
	lsls r0, r0, #2
	ldr r3, _08028CCC @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r4, _08028CD0 @ =0x000131BE
	adds r2, r2, r4
	b _08028CF2
	.align 2, 0
_08028CC8: .4byte gEwramData
_08028CCC: .4byte 0x00013124
_08028CD0: .4byte 0x000131BE
_08028CD4:
	ldrb r0, [r7, #0xd]
	adds r3, r0, #0
	cmp r3, #0
	bne _08028D0C
	ldr r0, _08028D00 @ =gEwramData
	ldr r2, [r0]
	movs r0, #0x1a
	ldrsh r1, [r7, r0]
	lsls r1, r1, #2
	ldr r4, _08028D04 @ =0x00013124
	adds r0, r2, r4
	adds r0, r0, r1
	str r3, [r0]
	ldr r0, _08028D08 @ =0x000131BE
	adds r2, r2, r0
_08028CF2:
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
	b _08028D56
	.align 2, 0
_08028D00: .4byte gEwramData
_08028D04: .4byte 0x00013124
_08028D08: .4byte 0x000131BE
_08028D0C:
	subs r0, #1
	strb r0, [r7, #0xd]
_08028D10:
	adds r0, r7, #0
	movs r1, #2
	bl sub_0806D128
	adds r2, r7, #0
	adds r2, #0x59
	cmp r0, #0
	bne _08028D2A
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08028D56
_08028D2A:
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08028D5C @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	lsls r0, r0, #2
	ldr r3, _08028D60 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r4, _08028D64 @ =0x000131BE
	adds r2, r2, r4
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
_08028D56:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028D5C: .4byte gEwramData
_08028D60: .4byte 0x00013124
_08028D64: .4byte 0x000131BE

	thumb_func_start sub_08028D68
sub_08028D68: @ 0x08028D68
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov r8, r0
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	beq _08028E12
	cmp r0, #1
	bgt _08028D84
	cmp r0, #0
	beq _08028D8A
	b _08028E90
_08028D84:
	cmp r0, #2
	beq _08028E5C
	b _08028E90
_08028D8A:
	ldr r1, _08028E44 @ =0x080E13BC
	adds r1, #0xd8
	ldr r0, [r1]
	ldr r4, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r5, _08028E48 @ =gEwramData
	ldr r1, [r5]
	ldr r2, _08028E4C @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r5]
	ldr r3, _08028E4C @ =0x000131CC
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _08028E50 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r2, #0xc
	rsbs r2, r2, #0
	movs r3, #0x18
	rsbs r3, r3, #0
	adds r0, r7, #0
	mov r1, r8
	bl sub_08031EA4
	movs r0, #1
	movs r1, #0xa
	bl sub_08042A54
	ldr r1, [r5]
	ldr r0, _08028E54 @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_08028E12:
	adds r0, r7, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #0xe
	bne _08028E32
	ldr r1, _08028E58 @ =sub_08028BC4
	adds r0, r7, #0
	bl sub_08023530
	cmp r0, #0
	beq _08028E32
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0
	bl sub_08031EA4
_08028E32:
	adds r0, r7, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _08028E90
	movs r0, #2
	strb r0, [r7, #0xa]
	b _08028E90
	.align 2, 0
_08028E44: .4byte 0x080E13BC
_08028E48: .4byte gEwramData
_08028E4C: .4byte 0x000131CC
_08028E50: .4byte sub_0803B9D0
_08028E54: .4byte 0x000131BE
_08028E58: .4byte sub_08028BC4
_08028E5C:
	ldr r0, _08028E84 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	lsls r0, r0, #2
	ldr r3, _08028E88 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _08028E8C @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
	b _08028EB6
	.align 2, 0
_08028E84: .4byte gEwramData
_08028E88: .4byte 0x00013124
_08028E8C: .4byte 0x000131BE
_08028E90:
	adds r0, r7, #0
	movs r1, #4
	bl sub_0806D128
	adds r2, r7, #0
	adds r2, #0x59
	cmp r0, #0
	bne _08028EAA
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08028EB6
_08028EAA:
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #2
	strb r0, [r7, #0xa]
_08028EB6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08028EC0
sub_08028EC0: @ 0x08028EC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	ldrh r0, [r7, #0x1e]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _08028EF0 @ =0x084F12C8
	adds r6, r1, r0
	ldr r0, [r7, #0x14]
	mov sb, r0
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	beq _08028FCE
	cmp r0, #1
	bgt _08028EF4
	cmp r0, #0
	beq _08028F02
	b _08029250
	.align 2, 0
_08028EF0: .4byte 0x084F12C8
_08028EF4:
	cmp r0, #2
	bne _08028EFA
	b _08029188
_08028EFA:
	cmp r0, #3
	bne _08028F00
	b _080291E8
_08028F00:
	b _08029250
_08028F02:
	ldrb r0, [r6, #0xc]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08029018 @ =0x080E13BC
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r4, [r1, #4]
	ldr r5, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r1, _0802901C @ =gEwramData
	mov r8, r1
	ldr r1, [r1]
	ldr r2, _08029020 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	mov r3, r8
	ldr r0, [r3]
	ldr r4, _08029020 @ =0x000131CC
	adds r0, r0, r4
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r5, #0
	movs r3, #2
	bl sub_0803B924
	ldrb r1, [r6, #0xe]
	ldrb r3, [r6, #0xf]
	adds r0, r7, #0
	movs r2, #0
	bl sub_0803F2C8
	ldr r0, _08029024 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r3, #0x1a
	rsbs r3, r3, #0
	adds r0, r7, #0
	mov r1, sb
	movs r2, #8
	bl sub_08031EA4
	ldr r2, [r6]
	str r2, [r7, #0x48]
	ldr r0, [r6, #8]
	str r0, [r7, #0x54]
	ldr r0, [r6, #4]
	str r0, [r7, #0x4c]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08028F90
	rsbs r0, r2, #0
	str r0, [r7, #0x48]
_08028F90:
	movs r0, #1
	movs r1, #0x1e
	bl sub_08042A54
	ldr r2, _08029028 @ =sub_0802DB84
	adds r0, r7, #0
	movs r1, #5
	movs r3, #0
	bl sub_0804277C
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r6, #0x10]
	cmp r0, #0
	beq _08028FBA
	bl sub_080D7910
_08028FBA:
	mov r1, r8
	ldr r0, [r1]
	ldr r2, _0802902C @ =0x000131BE
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_08028FCE:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r7, #0
	bl sub_0806D3D8
	adds r0, r7, #0
	bl sub_0803F17C
	adds r2, r7, #0
	adds r2, #0x64
	ldr r0, _0802901C @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r3, _08029030 @ =0x0001017C
	adds r1, r1, r3
	adds r1, r1, r0
	ldr r1, [r1]
	adds r2, #1
	ldrb r0, [r2]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r3, [r0, #8]
	adds r4, r2, #0
	cmp r3, #0
	beq _08029034
	adds r2, #0xd
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	adds r1, r3, #0
	bl sub_08042848
	b _08029040
	.align 2, 0
_08029018: .4byte 0x080E13BC
_0802901C: .4byte gEwramData
_08029020: .4byte 0x000131CC
_08029024: .4byte sub_0803B9D0
_08029028: .4byte sub_0802DB84
_0802902C: .4byte 0x000131BE
_08029030: .4byte 0x0001017C
_08029034:
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_08029040:
	ldr r0, [r7, #0x20]
	cmp r0, #0
	bne _08029048
	b _08029250
_08029048:
	ldrh r1, [r6, #0x12]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08029066
	movs r0, #2
	strb r0, [r7, #0xa]
	movs r0, #0x10
	strb r0, [r7, #0xd]
	movs r0, #1
	strb r0, [r7, #0xf]
	movs r0, #5
	strb r0, [r4]
	b _08029250
_08029066:
	movs r0, #0xd2
	bl sub_080D7910
	movs r4, #0
	str r4, [sp]
_08029070:
	bl sub_08000A90
	movs r1, #1
	ands r1, r0
	ldr r0, [r7, #0x40]
	mov sb, r0
	ldr r2, [r7, #0x44]
	mov sl, r2
	adds r1, #0xa
	mov r8, r1
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _08029170 @ =sub_0802D880
	bl sub_08000DA0
	adds r6, r0, #0
	cmp r6, #0
	beq _0802915C
	ldr r3, _08029174 @ =0x080E1488
	ldr r0, [r3]
	ldr r4, [r3, #4]
	ldr r5, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r2, _08029178 @ =gEwramData
	ldr r1, [r2]
	ldr r3, _0802917C @ =0x000131CC
	adds r1, r1, r3
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r4, _08029178 @ =gEwramData
	ldr r0, [r4]
	ldr r1, _0802917C @ =0x000131CC
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r6, #0
	adds r0, #0x65
	mov r2, r8
	strb r2, [r0]
	ldr r0, _08029180 @ =sub_0803B9D0
	str r0, [r6, #4]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	mov r3, sb
	str r3, [r6, #0x40]
	mov r4, sl
	str r4, [r6, #0x44]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r4, r6, #0
	bl sub_08000A90
	movs r1, #7
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x42
	subs r0, #4
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	bl sub_08000A90
	movs r3, #7
	ands r0, r3
	adds r1, r4, #0
	adds r1, #0x46
	subs r0, #4
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	bl sub_08000A90
	movs r2, #0xff
	ands r2, r0
	subs r2, #0x80
	ldr r0, [r7, #0x48]
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r2, r2, #9
	adds r0, r0, r2
	str r0, [r4, #0x48]
	bl sub_08000A90
	ldr r1, _08029184 @ =0xFFFF8000
	orrs r1, r0
	str r1, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r4, #0x54]
	ldr r0, [r7, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r4, #0x44]
	ldr r3, [sp]
	adds r3, #1
	str r3, [sp]
	cmp r3, #2
	ble _08029070
_0802915C:
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #3
	strb r0, [r7, #0xa]
	b _08029250
	.align 2, 0
_08029170: .4byte sub_0802D880
_08029174: .4byte 0x080E1488
_08029178: .4byte gEwramData
_0802917C: .4byte 0x000131CC
_08029180: .4byte sub_0803B9D0
_08029184: .4byte 0xFFFF8000
_08029188:
	ldr r4, [r7, #0x20]
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	beq _080291B4
	ldr r0, _080291AC @ =gEwramData
	ldr r2, [r0]
	movs r4, #0x1a
	ldrsh r0, [r7, r4]
	lsls r0, r0, #2
	ldr r3, _080291B0 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	b _08029230
	.align 2, 0
_080291AC: .4byte gEwramData
_080291B0: .4byte 0x00013124
_080291B4:
	ldrb r0, [r7, #0xd]
	adds r3, r0, #0
	cmp r3, #0
	beq _080291C2
	subs r0, #1
	strb r0, [r7, #0xd]
	b _08029250
_080291C2:
	ldr r0, _080291DC @ =gEwramData
	ldr r2, [r0]
	movs r0, #0x1a
	ldrsh r1, [r7, r0]
	lsls r1, r1, #2
	ldr r4, _080291E0 @ =0x00013124
	adds r0, r2, r4
	adds r0, r0, r1
	str r3, [r0]
	ldr r0, _080291E4 @ =0x000131BE
	adds r2, r2, r0
	b _08029234
	.align 2, 0
_080291DC: .4byte gEwramData
_080291E0: .4byte 0x00013124
_080291E4: .4byte 0x000131BE
_080291E8:
	ldr r4, [r7, #0x20]
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r4, [r0]
	cmp r4, #0
	beq _08029214
	ldr r0, _0802920C @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	lsls r0, r0, #2
	ldr r3, _08029210 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	b _08029230
	.align 2, 0
_0802920C: .4byte gEwramData
_08029210: .4byte 0x00013124
_08029214:
	adds r0, r7, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _08029250
	ldr r0, _08029244 @ =gEwramData
	ldr r2, [r0]
	movs r0, #0x1a
	ldrsh r1, [r7, r0]
	lsls r1, r1, #2
	ldr r3, _08029248 @ =0x00013124
	adds r0, r2, r3
	adds r0, r0, r1
	str r4, [r0]
_08029230:
	ldr r4, _0802924C @ =0x000131BE
	adds r2, r2, r4
_08029234:
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
	b _08029296
	.align 2, 0
_08029244: .4byte gEwramData
_08029248: .4byte 0x00013124
_0802924C: .4byte 0x000131BE
_08029250:
	adds r0, r7, #0
	movs r1, #2
	bl sub_0806D128
	adds r2, r7, #0
	adds r2, #0x59
	cmp r0, #0
	bne _0802926A
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08029296
_0802926A:
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080292A8 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	lsls r0, r0, #2
	ldr r3, _080292AC @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r4, _080292B0 @ =0x000131BE
	adds r2, r2, r4
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
_08029296:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080292A8: .4byte gEwramData
_080292AC: .4byte 0x00013124
_080292B0: .4byte 0x000131BE

	thumb_func_start sub_080292B4
sub_080292B4: @ 0x080292B4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	beq _080292C4
	cmp r0, #1
	beq _0802933C
	b _0802934C
_080292C4:
	ldr r1, _08029370 @ =0x080E13BC
	adds r1, #0xcc
	ldr r0, [r1]
	ldr r5, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _08029374 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _08029378 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r3, _08029378 @ =0x000131CC
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldr r0, _0802937C @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	ldr r2, _08029380 @ =sub_0802D9B4
	adds r0, r7, #0
	movs r1, #5
	movs r3, #0
	bl sub_0804277C
	ldr r1, _08029384 @ =0x1010F8F8
	adds r0, r7, #0
	bl sub_08042884
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_0802933C:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r7, #0
	bl sub_0806D3D8
	adds r0, r7, #0
	bl sub_0803F17C
_0802934C:
	adds r0, r7, #0
	movs r1, #2
	bl sub_0806D128
	adds r2, r7, #0
	adds r2, #0x59
	cmp r0, #0
	bne _08029366
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08029388
_08029366:
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	b _0802938E
	.align 2, 0
_08029370: .4byte 0x080E13BC
_08029374: .4byte gEwramData
_08029378: .4byte 0x000131CC
_0802937C: .4byte sub_0803B9D0
_08029380: .4byte sub_0802D9B4
_08029384: .4byte 0x1010F8F8
_08029388:
	ldrb r0, [r7, #0x18]
	cmp r0, #0
	beq _080293B2
_0802938E:
	ldr r0, _080293B8 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	lsls r0, r0, #2
	ldr r3, _080293BC @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _080293C0 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
_080293B2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080293B8: .4byte gEwramData
_080293BC: .4byte 0x00013124
_080293C0: .4byte 0x000131BE

	thumb_func_start sub_080293C4
sub_080293C4: @ 0x080293C4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov sb, r0
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	beq _080293E0
	cmp r0, #1
	bne _080293DE
	b _0802951C
_080293DE:
	b _08029550
_080293E0:
	ldr r1, _08029480 @ =0x080E13BC
	adds r1, #0xcc
	ldr r0, [r1]
	ldr r5, [r1, #4]
	ldr r1, [r1, #8]
	mov r8, r1
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _08029484 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _08029488 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r3, _08029488 @ =0x000131CC
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r7, #0
	mov r1, r8
	movs r3, #2
	bl sub_0803B924
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r7, #0
	mov r1, sb
	movs r2, #8
	bl sub_08031EA4
	movs r0, #1
	movs r1, #4
	bl sub_08042A54
	ldr r1, [r4]
	ldr r0, _0802948C @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	movs r5, #3
	bl sub_08000A90
	movs r1, #7
	ands r1, r0
	cmp r1, #0
	bne _08029460
	movs r5, #5
_08029460:
	ldr r0, _08029490 @ =0xFFFFF000
	adds r1, r5, #0
	bl __divsi3
	str r0, [r7, #0x4c]
	asrs r1, r5, #1
	muls r0, r1, r0
	str r0, [r7, #0x48]
	movs r0, #0x80
	lsls r0, r0, #5
	adds r1, r5, #0
	bl __divsi3
	str r0, [r7, #0x4c]
	movs r4, #0
	b _080294F0
	.align 2, 0
_08029480: .4byte 0x080E13BC
_08029484: .4byte gEwramData
_08029488: .4byte 0x000131CC
_0802948C: .4byte 0x000131BE
_08029490: .4byte 0xFFFFF000
_08029494:
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0
	bl sub_08031EA4
	ldr r0, [r7, #0x48]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	lsls r0, r0, #1
	str r0, [r6, #0x48]
	ldr r0, [r7, #0x48]
	bl sub_080009E4
	lsls r0, r0, #1
	str r0, [r6, #0x4c]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080294CE
	ldr r0, [r6, #0x48]
	rsbs r0, r0, #0
	str r0, [r6, #0x48]
_080294CE:
	ldr r0, [r6, #0x48]
	cmp r0, #0
	bge _080294D6
	adds r0, #0x3f
_080294D6:
	asrs r0, r0, #6
	str r0, [r6, #0x50]
	ldr r0, [r6, #0x4c]
	cmp r0, #0
	bge _080294E2
	adds r0, #0x3f
_080294E2:
	asrs r0, r0, #6
	str r0, [r6, #0x54]
	ldr r0, [r7, #0x48]
	ldr r1, [r7, #0x4c]
	adds r0, r0, r1
	str r0, [r7, #0x48]
	adds r4, #1
_080294F0:
	cmp r4, r5
	bge _08029502
	adds r0, r7, #0
	ldr r1, _08029518 @ =sub_080292B4
	bl sub_08023530
	adds r6, r0, #0
	cmp r6, #0
	bne _08029494
_08029502:
	movs r0, #0xd8
	bl sub_080D7910
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x44]
	movs r2, #0xc
	movs r3, #6
	bl sub_08045CEC
	b _08029550
	.align 2, 0
_08029518: .4byte sub_080292B4
_0802951C:
	ldr r0, _08029544 @ =gEwramData
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r0, [r7, r3]
	lsls r0, r0, #2
	ldr r3, _08029548 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _0802954C @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
	b _0802955C
	.align 2, 0
_08029544: .4byte gEwramData
_08029548: .4byte 0x00013124
_0802954C: .4byte 0x000131BE
_08029550:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
_0802955C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08029568
sub_08029568: @ 0x08029568
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov r8, r0
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	beq _08029580
	cmp r0, #1
	beq _080295DC
	b _08029630
_08029580:
	ldr r1, _08029618 @ =0x080E13BC
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r1, r1, r2
	ldr r0, [r1]
	ldr r5, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _0802961C @ =gEwramData
	ldr r1, [r4]
	ldr r3, _08029620 @ =0x000131CC
	adds r1, r1, r3
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r1, _08029620 @ =0x000131CC
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _08029624 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_080295DC:
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0
	movs r3, #0
	bl sub_08031EA4
	adds r0, r7, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _08029630
	ldr r0, _0802961C @ =gEwramData
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r0, [r7, r3]
	lsls r0, r0, #2
	ldr r3, _08029628 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _0802962C @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
	b _08029676
	.align 2, 0
_08029618: .4byte 0x080E13BC
_0802961C: .4byte gEwramData
_08029620: .4byte 0x000131CC
_08029624: .4byte sub_0803B9D0
_08029628: .4byte 0x00013124
_0802962C: .4byte 0x000131BE
_08029630:
	adds r0, r7, #0
	movs r1, #2
	bl sub_0806D128
	adds r2, r7, #0
	adds r2, #0x59
	cmp r0, #0
	bne _0802964A
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08029676
_0802964A:
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08029680 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	lsls r0, r0, #2
	ldr r3, _08029684 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _08029688 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
_08029676:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029680: .4byte gEwramData
_08029684: .4byte 0x00013124
_08029688: .4byte 0x000131BE

	thumb_func_start sub_0802968C
sub_0802968C: @ 0x0802968C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, [r6, #0x14]
	mov sb, r0
	ldrb r4, [r6, #0xa]
	cmp r4, #1
	bne _080296A6
	b _080297F2
_080296A6:
	cmp r4, #1
	bgt _080296B0
	cmp r4, #0
	beq _080296B8
	b _08029910
_080296B0:
	cmp r4, #2
	bne _080296B6
	b _080298C8
_080296B6:
	b _08029910
_080296B8:
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _080296E4
	ldr r0, _080296DC @ =gEwramData
	ldr r1, [r0]
	movs r2, #0x1a
	ldrsh r0, [r6, r2]
	lsls r0, r0, #2
	ldr r3, _080296E0 @ =0x00013124
	adds r1, r1, r3
	adds r1, r1, r0
	str r4, [r1]
	b _080298FA
	.align 2, 0
_080296DC: .4byte gEwramData
_080296E0: .4byte 0x00013124
_080296E4:
	movs r0, #0x58
	adds r0, r0, r6
	mov r8, r0
	movs r0, #0x1f
	ands r2, r0
	mov r3, r8
	ldrb r1, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	adds r7, r6, #0
	adds r7, #0x59
	ldrb r0, [r7]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r7]
	ldr r1, _0802984C @ =0x080E13BC
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r4, [r1, #4]
	ldr r5, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r1, _08029850 @ =gEwramData
	mov sl, r1
	ldr r1, [r1]
	ldr r2, _08029854 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	mov r3, sl
	ldr r0, [r3]
	ldr r1, _08029854 @ =0x000131CC
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #2
	bl sub_0803B924
	ldrb r0, [r7]
	movs r1, #2
	orrs r0, r1
	strb r0, [r7]
	adds r1, r6, #0
	adds r1, #0x65
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08029858 @ =sub_0802DBD0
	str r0, [r6, #4]
	subs r1, #9
	movs r0, #0xd
	strb r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #6
	strh r0, [r6, #0x2c]
	ldr r0, _0802985C @ =0x0000FFC0
	strh r0, [r6, #0x2e]
	adds r2, r6, #0
	adds r2, #0x4a
	movs r0, #8
	strh r0, [r2]
	subs r1, #0xe
	ldr r0, _08029860 @ =0x0000FFE6
	strh r0, [r1]
	mov r0, sb
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080297A0
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
	ldrh r1, [r6, #0x2c]
	ldr r2, _08029864 @ =0xFFFF8000
	adds r0, r2, #0
	subs r0, r0, r1
	strh r0, [r6, #0x2c]
	ldrh r0, [r6, #0x2e]
	rsbs r0, r0, #0
	strh r0, [r6, #0x2e]
_080297A0:
	mov r3, r8
	ldrb r1, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	movs r0, #1
	movs r1, #0x3c
	bl sub_08042A54
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
	strb r0, [r2]
	mov r0, sl
	ldr r1, [r0]
	ldr r2, _08029868 @ =0x000131BE
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0xcd
	bl sub_08013D60
	movs r0, #0x20
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	ldr r1, _0802986C @ =sub_08029568
	adds r0, r6, #0
	bl sub_08023530
_080297F2:
	ldrb r0, [r6, #0xd]
	lsls r0, r0, #0xa
	bl sub_080009E4
	str r0, [r6, #0x24]
	ldrh r0, [r6, #0x2e]
	ldrh r3, [r6, #0x2c]
	adds r0, r0, r3
	strh r0, [r6, #0x2c]
	mov r1, sb
	ldr r0, [r1, #0x40]
	ldr r1, [r6, #0x48]
	adds r0, r0, r1
	str r0, [r6, #0x40]
	mov r2, sb
	ldr r0, [r2, #0x44]
	ldr r1, [r6, #0x4c]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	movs r3, #0x2c
	ldrsh r0, [r6, r3]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	lsls r0, r0, #5
	str r0, [r6, #0x50]
	movs r2, #0x2c
	ldrsh r0, [r6, r2]
	bl sub_080009E4
	lsls r0, r0, #5
	str r0, [r6, #0x54]
	ldrb r0, [r6, #0xd]
	movs r1, #7
	ands r1, r0
	ldr r0, [r6, #0x50]
	cmp r0, #0
	bge _08029870
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _08029872
	.align 2, 0
_0802984C: .4byte 0x080E13BC
_08029850: .4byte gEwramData
_08029854: .4byte 0x000131CC
_08029858: .4byte sub_0802DBD0
_0802985C: .4byte 0x0000FFC0
_08029860: .4byte 0x0000FFE6
_08029864: .4byte 0xFFFF8000
_08029868: .4byte 0x000131BE
_0802986C: .4byte sub_08029568
_08029870:
	asrs r0, r0, #0x10
_08029872:
	muls r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	ldrb r0, [r6, #0xd]
	movs r2, #7
	ands r2, r0
	ldr r0, [r6, #0x54]
	cmp r0, #0
	bge _0802988E
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _08029890
_0802988E:
	asrs r0, r0, #0x10
_08029890:
	muls r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #8
	movs r2, #0xff
	ands r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, #8
	ands r0, r2
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, _080298C4 @ =0x10100000
	adds r1, r1, r0
	adds r0, r6, #0
	bl sub_08042884
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _080298C8
	subs r0, #1
	strb r0, [r6, #0xd]
	b _08029910
	.align 2, 0
_080298C4: .4byte 0x10100000
_080298C8:
	movs r0, #0xcd
	bl sub_08013E18
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	ldr r0, _08029904 @ =gEwramData
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r0, [r6, r3]
	lsls r0, r0, #2
	ldr r3, _08029908 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _0802990C @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
_080298FA:
	adds r0, r6, #0
	bl sub_08000E14
	b _08029984
	.align 2, 0
_08029904: .4byte gEwramData
_08029908: .4byte 0x00013124
_0802990C: .4byte 0x000131BE
_08029910:
	movs r1, #0x2c
	ldrsh r0, [r6, r1]
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, [r6, #0x24]
	movs r5, #0
	str r5, [sp]
	adds r4, r6, #0
	adds r4, #0x58
	ldrb r3, [r4]
	lsls r3, r3, #0x1b
	lsrs r3, r3, #0x1b
	str r3, [sp, #4]
	movs r3, #0
	bl sub_0803E058
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806D128
	adds r2, r6, #0
	adds r2, #0x59
	cmp r0, #0
	bne _0802994A
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08029984
_0802994A:
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xcd
	bl sub_08013E18
	ldrb r0, [r4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	ldr r0, _08029994 @ =gEwramData
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r1, [r6, r3]
	lsls r1, r1, #2
	ldr r3, _08029998 @ =0x00013124
	adds r0, r2, r3
	adds r0, r0, r1
	str r5, [r0]
	ldr r0, _0802999C @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r6, #0
	bl sub_08000E14
_08029984:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029994: .4byte gEwramData
_08029998: .4byte 0x00013124
_0802999C: .4byte 0x000131BE

	thumb_func_start sub_080299A0
sub_080299A0: @ 0x080299A0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov r8, r0
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	beq _08029A80
	cmp r0, #1
	bgt _080299BC
	cmp r0, #0
	beq _080299C4
	b _08029BB8
_080299BC:
	cmp r0, #2
	bne _080299C2
	b _08029B48
_080299C2:
	b _08029BB8
_080299C4:
	ldr r1, _08029AA0 @ =0x080E13BC
	adds r1, #0xf0
	ldr r0, [r1]
	ldr r4, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r5, _08029AA4 @ =gEwramData
	ldr r1, [r5]
	ldr r2, _08029AA8 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r5]
	ldr r3, _08029AA8 @ =0x000131CC
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	ldr r0, _08029AAC @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r3, #0x1a
	rsbs r3, r3, #0
	adds r0, r7, #0
	mov r1, r8
	movs r2, #8
	bl sub_08031EA4
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x54]
	adds r3, r7, #0
	adds r3, #0x58
	ldrb r2, [r3]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r4, #1
	adds r1, r4, #0
	eors r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r0, #1
	movs r1, #0x14
	bl sub_08042A54
	adds r0, r7, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xa0
	strb r0, [r7, #0xd]
	ldr r1, [r5]
	ldr r0, _08029AB0 @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0xce
	lsls r0, r0, #1
	bl sub_080D7910
	strb r4, [r7, #0xa]
_08029A80:
	movs r1, #0xc0
	lsls r1, r1, #9
	ldr r2, _08029AB4 @ =0x084F13BE
	adds r0, r7, #0
	movs r3, #8
	bl sub_0806CAF8
	adds r4, r0, #0
	ldr r1, [r7, #0x4c]
	ldr r0, _08029AB8 @ =0xFFFF8000
	cmp r1, r0
	bge _08029ABC
	adds r1, r7, #0
	adds r1, #0x65
	movs r0, #0
	b _08029AD2
	.align 2, 0
_08029AA0: .4byte 0x080E13BC
_08029AA4: .4byte gEwramData
_08029AA8: .4byte 0x000131CC
_08029AAC: .4byte sub_0803B9D0
_08029AB0: .4byte 0x000131BE
_08029AB4: .4byte 0x084F13BE
_08029AB8: .4byte 0xFFFF8000
_08029ABC:
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	ble _08029ACC
	adds r1, r7, #0
	adds r1, #0x65
	movs r0, #2
	b _08029AD2
_08029ACC:
	adds r1, r7, #0
	adds r1, #0x65
	movs r0, #1
_08029AD2:
	strb r0, [r1]
	movs r5, #3
	adds r0, r4, #0
	ands r0, r5
	cmp r0, #0
	beq _08029AF8
	adds r3, r7, #0
	adds r3, #0x58
	ldrb r2, [r3]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_08029AF8:
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _08029B22
	bl sub_08000A90
	ands r0, r5
	cmp r0, #0
	beq _08029B14
	ldr r0, _08029B10 @ =0xFFFF0000
	str r0, [r7, #0x4c]
	b _08029B22
	.align 2, 0
_08029B10: .4byte 0xFFFF0000
_08029B14:
	bl sub_08000A90
	ldr r1, _08029B40 @ =0x0000FFFF
	ands r1, r0
	ldr r2, _08029B44 @ =0xFFFB0000
	adds r1, r1, r2
	str r1, [r7, #0x4c]
_08029B22:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	bne _08029BB4
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #1
	strb r0, [r7, #0xf]
	movs r0, #2
	strb r0, [r7, #0xa]
	movs r0, #0x10
	b _08029BB6
	.align 2, 0
_08029B40: .4byte 0x0000FFFF
_08029B44: .4byte 0xFFFB0000
_08029B48:
	ldrb r1, [r7, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08029B7A
	bl sub_08000A90
	ldr r5, _08029BA0 @ =0x0007FFFF
	ands r0, r5
	ldr r3, _08029BA4 @ =0xFFFC0000
	adds r0, r0, r3
	ldr r4, [r7, #0x40]
	adds r4, r4, r0
	bl sub_08000A90
	ands r0, r5
	ldr r1, _08029BA4 @ =0xFFFC0000
	adds r0, r0, r1
	ldr r1, [r7, #0x44]
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #7
	bl sub_08045CEC
_08029B7A:
	adds r0, r7, #0
	bl sub_0803F17C
	ldrb r0, [r7, #0xd]
	adds r3, r0, #0
	cmp r3, #0
	bne _08029BB4
	ldr r0, _08029BA8 @ =gEwramData
	ldr r2, [r0]
	movs r4, #0x1a
	ldrsh r1, [r7, r4]
	lsls r1, r1, #2
	ldr r4, _08029BAC @ =0x00013124
	adds r0, r2, r4
	adds r0, r0, r1
	str r3, [r0]
	ldr r0, _08029BB0 @ =0x000131BE
	adds r2, r2, r0
	b _08029BF2
	.align 2, 0
_08029BA0: .4byte 0x0007FFFF
_08029BA4: .4byte 0xFFFC0000
_08029BA8: .4byte gEwramData
_08029BAC: .4byte 0x00013124
_08029BB0: .4byte 0x000131BE
_08029BB4:
	subs r0, #1
_08029BB6:
	strb r0, [r7, #0xd]
_08029BB8:
	adds r0, r7, #0
	movs r1, #2
	bl sub_0806D128
	adds r2, r7, #0
	adds r2, #0x59
	cmp r0, #0
	bne _08029BD2
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08029C0C
_08029BD2:
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08029C00 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	lsls r0, r0, #2
	ldr r3, _08029C04 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r4, _08029C08 @ =0x000131BE
	adds r2, r2, r4
_08029BF2:
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
	b _08029C5C
	.align 2, 0
_08029C00: .4byte gEwramData
_08029C04: .4byte 0x00013124
_08029C08: .4byte 0x000131BE
_08029C0C:
	adds r2, r7, #0
	adds r2, #0x64
	ldr r0, _08029C48 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _08029C4C @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r7, #0
	adds r0, #0x65
	ldrb r0, [r0]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _08029C50
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	adds r1, r3, #0
	bl sub_08042848
	b _08029C5C
	.align 2, 0
_08029C48: .4byte gEwramData
_08029C4C: .4byte 0x0001017C
_08029C50:
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_08029C5C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08029C68
sub_08029C68: @ 0x08029C68
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldrb r0, [r7, #0xa]
	cmp r0, #4
	bls _08029C74
	b _08029F2C
_08029C74:
	lsls r0, r0, #2
	ldr r1, _08029C80 @ =_08029C84
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08029C80: .4byte _08029C84
_08029C84: @ jump table
	.4byte _08029C98 @ case 0
	.4byte _08029CEE @ case 1
	.4byte _08029DD4 @ case 2
	.4byte _08029ED0 @ case 3
	.4byte _08029F1C @ case 4
_08029C98:
	ldr r1, _08029D10 @ =0x080E13BC
	adds r1, #0xfc
	ldr r0, [r1]
	ldr r5, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _08029D14 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _08029D18 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r3, _08029D18 @ =0x000131CC
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _08029D1C @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	movs r0, #1
	strb r0, [r7, #0xa]
_08029CEE:
	adds r0, r7, #0
	bl sub_0803F17C
	adds r5, r0, #0
	cmp r5, #3
	beq _08029CFC
	b _08029F2C
_08029CFC:
	ldr r6, _08029D14 @ =gEwramData
	ldr r0, [r6]
	ldr r1, _08029D20 @ =0x00013220
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08029D24
	adds r5, r7, #0
	adds r5, #0x72
	b _08029D50
	.align 2, 0
_08029D10: .4byte 0x080E13BC
_08029D14: .4byte gEwramData
_08029D18: .4byte 0x000131CC
_08029D1C: .4byte sub_0803B9D0
_08029D20: .4byte 0x00013220
_08029D24:
	movs r4, #0
	bl sub_08000A90
	adds r1, r0, #0
	ands r1, r5
	adds r5, r7, #0
	adds r5, #0x72
	ldr r0, [r6]
	ldr r3, _08029D5C @ =0x00013194
	adds r2, r0, r3
	movs r3, #3
_08029D3A:
	lsls r0, r1, #2
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r0, #0
	bne _08029D50
	adds r1, #1
	ands r1, r3
	adds r4, #1
	cmp r4, #3
	ble _08029D3A
	movs r0, #0
_08029D50:
	str r0, [r7, #0x20]
	cmp r0, #0
	beq _08029D60
	movs r0, #2
	b _08029D62
	.align 2, 0
_08029D5C: .4byte 0x00013194
_08029D60:
	movs r0, #3
_08029D62:
	strb r0, [r7, #0xa]
	ldr r2, _08029DCC @ =sub_0802D9B4
	adds r0, r7, #0
	movs r1, #5
	movs r3, #0
	bl sub_0804277C
	ldr r1, _08029DD0 @ =0x1010F8F8
	adds r0, r7, #0
	bl sub_08042884
	ldrb r1, [r5]
	movs r0, #4
	orrs r0, r1
	strb r0, [r5]
	movs r0, #0x40
	strb r0, [r7, #0xd]
	adds r0, r7, #0
	movs r1, #7
	bl sub_0802383C
	adds r2, r0, #0
	cmp r2, #0
	beq _08029DA4
	movs r0, #1
	strb r0, [r2, #0xf]
	adds r2, #0x5a
	ldrb r1, [r2]
	subs r0, #8
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_08029DA4:
	adds r0, r7, #0
	movs r1, #3
	bl sub_0802383C
	adds r2, r0, #0
	cmp r2, #0
	beq _08029DC2
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_08029DC2:
	movs r0, #0x9a
	lsls r0, r0, #1
	bl sub_080D7910
	b _08029F2C
	.align 2, 0
_08029DCC: .4byte sub_0802D9B4
_08029DD0: .4byte 0x1010F8F8
_08029DD4:
	ldr r1, [r7, #0x24]
	ldr r0, _08029E04 @ =0x0004FFFF
	cmp r1, r0
	bgt _08029DE4
	movs r6, #0x80
	lsls r6, r6, #7
	adds r0, r1, r6
	str r0, [r7, #0x24]
_08029DE4:
	ldr r5, [r7, #0x20]
	ldr r0, [r5, #0x40]
	ldr r2, [r5, #0x44]
	movs r1, #0x2c
	ldrsh r4, [r7, r1]
	adds r1, r7, #0
	adds r1, #0x42
	movs r3, #0
	ldrsh r1, [r1, r3]
	cmp r0, #0
	bge _08029E08
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _08029E0A
	.align 2, 0
_08029E04: .4byte 0x0004FFFF
_08029E08:
	asrs r0, r0, #0x10
_08029E0A:
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	adds r0, r7, #0
	adds r0, #0x46
	movs r6, #0
	ldrsh r1, [r0, r6]
	cmp r2, #0
	bge _08029E24
	rsbs r0, r2, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _08029E26
_08029E24:
	asrs r0, r2, #0x10
_08029E26:
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r3, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r1, r0, r4
	cmp r1, #0
	ble _08029E5C
	ldr r0, _08029E4C @ =0x00007FFF
	cmp r1, r0
	bgt _08029E50
	movs r0, #0x80
	lsls r0, r0, #1
	adds r4, r4, r0
	b _08029E74
	.align 2, 0
_08029E4C: .4byte 0x00007FFF
_08029E50:
	ldr r1, _08029E58 @ =0xFFFFFF00
	adds r4, r4, r1
	b _08029E74
	.align 2, 0
_08029E58: .4byte 0xFFFFFF00
_08029E5C:
	ldr r0, _08029E6C @ =0xFFFF8000
	cmp r1, r0
	bge _08029E70
	movs r2, #0x80
	lsls r2, r2, #1
	adds r4, r4, r2
	b _08029E74
	.align 2, 0
_08029E6C: .4byte 0xFFFF8000
_08029E70:
	ldr r3, _08029ECC @ =0xFFFFFF00
	adds r4, r4, r3
_08029E74:
	strh r4, [r7, #0x2c]
	movs r6, #0x2c
	ldrsh r0, [r7, r6]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	ldr r1, [r7, #0x24]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	str r0, [r7, #0x48]
	movs r2, #0x2c
	ldrsh r0, [r7, r2]
	bl sub_080009E4
	ldr r1, [r7, #0x24]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	str r0, [r7, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r7, #0
	bl sub_0806D3D8
	ldrb r0, [r7, #0xd]
	subs r1, r0, #1
	strb r1, [r7, #0xd]
	movs r3, #0x34
	ldrsh r0, [r5, r3]
	cmp r0, #0
	ble _08029EC4
	ldrb r0, [r7, #0x18]
	cmp r0, #0
	bne _08029EC4
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _08029F2C
_08029EC4:
	movs r0, #3
	strb r0, [r7, #0xa]
	b _08029F2C
	.align 2, 0
_08029ECC: .4byte 0xFFFFFF00
_08029ED0:
	ldr r1, [r7, #0x24]
	ldr r0, _08029F18 @ =0x0004FFFF
	cmp r1, r0
	bgt _08029EE0
	movs r6, #0x80
	lsls r6, r6, #7
	adds r0, r1, r6
	str r0, [r7, #0x24]
_08029EE0:
	movs r1, #0x2c
	ldrsh r0, [r7, r1]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r0, r2
	bl sub_080009E4
	ldr r1, [r7, #0x24]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	str r0, [r7, #0x48]
	movs r3, #0x2c
	ldrsh r0, [r7, r3]
	bl sub_080009E4
	ldr r1, [r7, #0x24]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	str r0, [r7, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r7, #0
	bl sub_0806D3D8
	b _08029F2C
	.align 2, 0
_08029F18: .4byte 0x0004FFFF
_08029F1C:
	ldr r0, _08029F28 @ =gEwramData
	ldr r2, [r0]
	movs r6, #0x1a
	ldrsh r0, [r7, r6]
	b _08029F56
	.align 2, 0
_08029F28: .4byte gEwramData
_08029F2C:
	adds r0, r7, #0
	movs r1, #2
	bl sub_0806D128
	adds r2, r7, #0
	adds r2, #0x59
	cmp r0, #0
	bne _08029F46
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08029F80
_08029F46:
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08029F74 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
_08029F56:
	lsls r0, r0, #2
	ldr r3, _08029F78 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r6, _08029F7C @ =0x000131BE
	adds r2, r2, r6
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
	b _08029FA4
	.align 2, 0
_08029F74: .4byte gEwramData
_08029F78: .4byte 0x00013124
_08029F7C: .4byte 0x000131BE
_08029F80:
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	bls _08029FA4
	movs r0, #0x2c
	ldrsh r1, [r7, r0]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r1, r2
	cmp r0, #0
	bge _08029F98
	ldr r3, _08029FAC @ =0x00004FFF
	adds r0, r1, r3
_08029F98:
	asrs r0, r0, #0xc
	movs r1, #0xf
	ands r0, r1
	adds r1, r7, #0
	adds r1, #0x65
	strb r0, [r1]
_08029FA4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029FAC: .4byte 0x00004FFF

	thumb_func_start sub_08029FB0
sub_08029FB0: @ 0x08029FB0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov r8, r0
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	beq _08029FC8
	cmp r0, #1
	beq _0802A0A0
	b _0802A0C4
_08029FC8:
	ldr r1, _0802A03C @ =0x080E13BC
	adds r1, #0xfc
	ldr r0, [r1]
	ldr r5, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _0802A040 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _0802A044 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r3, _0802A044 @ =0x000131CC
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r3, #0x1a
	rsbs r3, r3, #0
	adds r0, r7, #0
	mov r1, r8
	movs r2, #8
	bl sub_08031EA4
	movs r0, #1
	movs r1, #0x14
	bl sub_08042A54
	ldr r1, [r4]
	ldr r0, _0802A048 @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, _0802A04C @ =0x000001A3
	bl sub_080D7910
	movs r5, #0
	movs r4, #0
	b _0802A07C
	.align 2, 0
_0802A03C: .4byte 0x080E13BC
_0802A040: .4byte gEwramData
_0802A044: .4byte 0x000131CC
_0802A048: .4byte 0x000131BE
_0802A04C: .4byte 0x000001A3
_0802A050:
	ldr r0, [r7, #0x40]
	str r0, [r2, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r2, #0x44]
	ldr r1, _0802A094 @ =0xFFFFE800
	adds r3, r4, r1
	strh r3, [r2, #0x2c]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802A074
	ldr r1, _0802A098 @ =0xFFFF8000
	adds r0, r1, #0
	subs r0, r0, r3
	strh r0, [r2, #0x2c]
_0802A074:
	movs r2, #0xc0
	lsls r2, r2, #5
	adds r4, r4, r2
	adds r5, #1
_0802A07C:
	cmp r5, #2
	bgt _0802A08E
	adds r0, r7, #0
	ldr r1, _0802A09C @ =sub_08029C68
	bl sub_08023530
	adds r2, r0, #0
	cmp r2, #0
	bne _0802A050
_0802A08E:
	movs r0, #1
	strb r0, [r7, #0xa]
	b _0802A0C4
	.align 2, 0
_0802A094: .4byte 0xFFFFE800
_0802A098: .4byte 0xFFFF8000
_0802A09C: .4byte sub_08029C68
_0802A0A0:
	ldr r0, _0802A0D0 @ =gEwramData
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r0, [r7, r3]
	lsls r0, r0, #2
	ldr r3, _0802A0D4 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _0802A0D8 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
_0802A0C4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A0D0: .4byte gEwramData
_0802A0D4: .4byte 0x00013124
_0802A0D8: .4byte 0x000131BE

	thumb_func_start sub_0802A0DC
sub_0802A0DC: @ 0x0802A0DC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov sb, r0
	ldrb r4, [r7, #0xa]
	cmp r4, #1
	bne _0802A0F4
	b _0802A204
_0802A0F4:
	cmp r4, #1
	bgt _0802A0FE
	cmp r4, #0
	beq _0802A106
	b _0802A29E
_0802A0FE:
	cmp r4, #2
	bne _0802A104
	b _0802A250
_0802A104:
	b _0802A29E
_0802A106:
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _0802A130
	ldr r0, _0802A128 @ =gEwramData
	ldr r1, [r0]
	movs r2, #0x1a
	ldrsh r0, [r7, r2]
	lsls r0, r0, #2
	ldr r3, _0802A12C @ =0x00013124
	adds r1, r1, r3
	adds r1, r1, r0
	str r4, [r1]
	b _0802A282
	.align 2, 0
_0802A128: .4byte gEwramData
_0802A12C: .4byte 0x00013124
_0802A130:
	adds r2, r7, #0
	adds r2, #0x58
	movs r0, #0x1f
	ands r3, r0
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	movs r0, #0x59
	adds r0, r0, r7
	mov r8, r0
	ldrb r0, [r0]
	movs r1, #0x10
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
	ldr r1, _0802A22C @ =0x080E13BC
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r1, r2
	ldr r0, [r1]
	ldr r4, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r5, _0802A230 @ =gEwramData
	ldr r1, [r5]
	ldr r3, _0802A234 @ =0x000131CC
	adds r1, r1, r3
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r5]
	ldr r1, _0802A234 @ =0x000131CC
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldr r0, _0802A238 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	mov r2, r8
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r3, #0x1a
	rsbs r3, r3, #0
	adds r0, r7, #0
	mov r1, sb
	movs r2, #8
	bl sub_08031EA4
	movs r0, #1
	movs r1, #0x14
	bl sub_08042A54
	ldr r2, _0802A23C @ =sub_0802D9B4
	adds r0, r7, #0
	movs r1, #5
	movs r3, #0
	bl sub_0804277C
	ldr r1, _0802A240 @ =0x1010F8F8
	adds r0, r7, #0
	bl sub_08042884
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xf0
	strb r0, [r7, #0xd]
	movs r0, #0xdc
	bl sub_080D7910
	ldr r1, [r5]
	ldr r3, _0802A244 @ =0x000131BE
	adds r1, r1, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #1
	strb r0, [r7, #0xa]
_0802A204:
	ldr r1, [r7, #0x24]
	ldr r0, _0802A248 @ =0x0000FFFF
	cmp r1, r0
	bgt _0802A214
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r1, r2
	str r0, [r7, #0x24]
_0802A214:
	ldrb r0, [r7, #0x18]
	cmp r0, #0
	beq _0802A21E
	movs r0, #0
	strb r0, [r7, #0xd]
_0802A21E:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	beq _0802A24C
	subs r0, #1
	strb r0, [r7, #0xd]
	b _0802A29E
	.align 2, 0
_0802A22C: .4byte 0x080E13BC
_0802A230: .4byte gEwramData
_0802A234: .4byte 0x000131CC
_0802A238: .4byte sub_0803B9D0
_0802A23C: .4byte sub_0802D9B4
_0802A240: .4byte 0x1010F8F8
_0802A244: .4byte 0x000131BE
_0802A248: .4byte 0x0000FFFF
_0802A24C:
	movs r0, #2
	strb r0, [r7, #0xa]
_0802A250:
	ldr r0, [r7, #0x24]
	cmp r0, #0
	bgt _0802A298
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	ldr r0, _0802A28C @ =gEwramData
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r0, [r7, r3]
	lsls r0, r0, #2
	ldr r3, _0802A290 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _0802A294 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
_0802A282:
	adds r0, r7, #0
	bl sub_08000E14
	b _0802A310
	.align 2, 0
_0802A28C: .4byte gEwramData
_0802A290: .4byte 0x00013124
_0802A294: .4byte 0x000131BE
_0802A298:
	ldr r1, _0802A320 @ =0xFFFFE000
	adds r0, r0, r1
	str r0, [r7, #0x24]
_0802A29E:
	adds r0, r7, #0
	bl sub_0803F17C
	ldr r2, [r7, #0x24]
	adds r4, r7, #0
	adds r4, #0x58
	ldrb r0, [r4]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	movs r5, #0
	str r5, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	adds r1, r2, #0
	bl sub_0803E058
	adds r0, r7, #0
	movs r1, #2
	bl sub_0806D128
	adds r2, r7, #0
	adds r2, #0x59
	cmp r0, #0
	bne _0802A2DC
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802A310
_0802A2DC:
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	ldr r0, _0802A324 @ =gEwramData
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r1, [r7, r3]
	lsls r1, r1, #2
	ldr r3, _0802A328 @ =0x00013124
	adds r0, r2, r3
	adds r0, r0, r1
	str r5, [r0]
	ldr r0, _0802A32C @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
_0802A310:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A320: .4byte 0xFFFFE000
_0802A324: .4byte gEwramData
_0802A328: .4byte 0x00013124
_0802A32C: .4byte 0x000131BE

	thumb_func_start sub_0802A330
sub_0802A330: @ 0x0802A330
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	adds r5, r3, #0
	adds r5, #0x10
	ldr r2, _0802A380 @ =gEwramData
	ldr r4, [r2]
	ldrb r1, [r3, #0xc]
	lsls r1, r1, #2
	ldr r6, _0802A384 @ =0x00013124
	adds r0, r4, r6
	adds r0, r0, r1
	ldr r6, [r0]
	ldr r7, _0802A388 @ =0x000131BE
	adds r0, r4, r7
	ldrb r0, [r0]
	movs r1, #0
	cmp r0, #0
	bne _0802A360
	subs r7, #0x9a
	adds r0, r4, r7
	ldr r0, [r0]
	cmp r0, #0
	bne _0802A360
	movs r1, #1
_0802A360:
	cmp r1, #0
	bne _0802A376
	ldr r0, [r2]
	ldrb r1, [r3, #0xc]
	lsls r1, r1, #2
	ldr r2, _0802A384 @ =0x00013124
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0802A38C
_0802A376:
	adds r0, r3, #0
	bl sub_08000E14
	b _0802A3C2
	.align 2, 0
_0802A380: .4byte gEwramData
_0802A384: .4byte 0x00013124
_0802A388: .4byte 0x000131BE
_0802A38C:
	ldrb r0, [r3, #0xa]
	cmp r0, #0
	bne _0802A39C
	ldr r0, _0802A3C8 @ =sub_0802DC10
	str r0, [r3, #4]
	ldrb r0, [r3, #0xa]
	adds r0, #1
	strb r0, [r3, #0xa]
_0802A39C:
	movs r2, #9
	adds r1, r5, #0
	adds r1, #0x20
_0802A3A2:
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	subs r1, #4
	subs r2, #1
	cmp r2, #0
	bgt _0802A3A2
	adds r0, r6, #0
	bl sub_08002188
	strh r0, [r5]
	adds r0, r6, #0
	bl sub_080021A8
	strh r0, [r5, #2]
_0802A3C2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A3C8: .4byte sub_0802DC10

	thumb_func_start sub_0802A3CC
sub_0802A3CC: @ 0x0802A3CC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	bl sub_0803B998
	mov r8, r0
	adds r2, r7, #0
	adds r2, #0x64
	ldr r0, _0802A404 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0802A408 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r4, [r1]
	adds r6, r4, #0
	ldr r2, _0802A40C @ =sub_0802A330
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r5, r0, #0
	cmp r5, #0
	bne _0802A410
	movs r0, #0
	b _0802A490
	.align 2, 0
_0802A404: .4byte gEwramData
_0802A408: .4byte 0x0001017C
_0802A40C: .4byte sub_0802A330
_0802A410:
	cmp r4, #0
	bne _0802A41E
	adds r0, r5, #0
	bl sub_08000E14
	movs r0, #0
	b _0802A490
_0802A41E:
	adds r0, r7, #0
	adds r0, #0x5a
	ldrb r3, [r0]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1c
	adds r0, r5, #0
	adds r1, r6, #0
	mov r2, r8
	bl sub_0803B924
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	adds r0, r7, #0
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
	ldrh r0, [r7, #0x1a]
	strb r0, [r5, #0xc]
	movs r6, #9
	movs r0, #0x59
	adds r0, r0, r5
	mov r8, r0
	adds r4, r5, #0
	adds r4, #0x34
_0802A46A:
	adds r0, r7, #0
	bl sub_08002188
	strh r0, [r4]
	adds r0, r7, #0
	bl sub_080021A8
	strh r0, [r4, #2]
	subs r4, #4
	subs r6, #1
	cmp r6, #0
	bne _0802A46A
	mov r1, r8
	ldrb r0, [r1]
	movs r1, #2
	orrs r0, r1
	mov r2, r8
	strb r0, [r2]
	adds r0, r5, #0
_0802A490:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802A49C
sub_0802A49C: @ 0x0802A49C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	ldrb r0, [r7, #0xa]
	cmp r0, #5
	bls _0802A4B2
	b _0802A870
_0802A4B2:
	lsls r0, r0, #2
	ldr r1, _0802A4BC @ =_0802A4C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802A4BC: .4byte _0802A4C0
_0802A4C0: @ jump table
	.4byte _0802A4D8 @ case 0
	.4byte _0802A52E @ case 1
	.4byte _0802A618 @ case 2
	.4byte _0802A70C @ case 3
	.4byte _0802A7F0 @ case 4
	.4byte _0802A83C @ case 5
_0802A4D8:
	ldr r1, _0802A564 @ =0x080E13BC
	adds r1, #0xfc
	ldr r0, [r1]
	ldr r5, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _0802A568 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _0802A56C @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r3, _0802A56C @ =0x000131CC
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _0802A570 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	movs r0, #1
	strb r0, [r7, #0xa]
_0802A52E:
	adds r0, r7, #0
	bl sub_0803F17C
	cmp r0, #3
	beq _0802A53A
	b _0802A870
_0802A53A:
	adds r0, r7, #0
	bl sub_0802A3CC
	movs r5, #1
	rsbs r5, r5, #0
	mov ip, r5
	movs r6, #0
	mov sb, r6
	ldr r0, _0802A568 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _0802A574 @ =0x00013220
	adds r0, r1, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _0802A57C
	ldr r3, _0802A578 @ =sub_0802D9B4
	mov sl, r3
	adds r5, r7, #0
	adds r5, #0x72
	str r5, [sp]
	b _0802A5D8
	.align 2, 0
_0802A564: .4byte 0x080E13BC
_0802A568: .4byte gEwramData
_0802A56C: .4byte 0x000131CC
_0802A570: .4byte sub_0803B9D0
_0802A574: .4byte 0x00013220
_0802A578: .4byte sub_0802D9B4
_0802A57C:
	ldr r6, _0802A5E4 @ =sub_0802D9B4
	mov sl, r6
	adds r0, r7, #0
	adds r0, #0x72
	str r0, [sp]
	ldr r2, _0802A5E8 @ =0x00013194
	adds r4, r1, r2
	movs r3, #0x42
	adds r3, r3, r7
	mov r8, r3
	movs r5, #3
_0802A592:
	ldr r3, [r4]
	cmp r3, #0
	beq _0802A5CE
	adds r0, r3, #0
	adds r0, #0x42
	movs r6, #0
	ldrsh r2, [r0, r6]
	mov r1, r8
	movs r6, #0
	ldrsh r0, [r1, r6]
	subs r2, r2, r0
	adds r0, r3, #0
	adds r0, #0x46
	movs r6, #0
	ldrsh r1, [r0, r6]
	adds r0, r7, #0
	adds r0, #0x46
	movs r6, #0
	ldrsh r0, [r0, r6]
	subs r1, r1, r0
	adds r0, r2, #0
	muls r0, r2, r0
	adds r2, r0, #0
	adds r0, r1, #0
	muls r0, r1, r0
	adds r2, r2, r0
	cmp ip, r2
	bls _0802A5CE
	mov ip, r2
	mov sb, r3
_0802A5CE:
	adds r4, #4
	subs r5, #1
	cmp r5, #0
	bge _0802A592
	mov r0, sb
_0802A5D8:
	str r0, [r7, #0x20]
	cmp r0, #0
	beq _0802A5EC
	movs r0, #2
	b _0802A5EE
	.align 2, 0
_0802A5E4: .4byte sub_0802D9B4
_0802A5E8: .4byte 0x00013194
_0802A5EC:
	movs r0, #3
_0802A5EE:
	strb r0, [r7, #0xa]
	adds r0, r7, #0
	movs r1, #5
	mov r2, sl
	movs r3, #0
	bl sub_0804277C
	ldr r1, _0802A614 @ =0x1010F8F8
	adds r0, r7, #0
	bl sub_08042884
	ldr r2, [sp]
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x40
	strb r0, [r7, #0xd]
	b _0802A870
	.align 2, 0
_0802A614: .4byte 0x1010F8F8
_0802A618:
	ldr r1, [r7, #0x24]
	ldr r0, _0802A648 @ =0x0003FFFF
	cmp r1, r0
	bgt _0802A628
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r1, r3
	str r0, [r7, #0x24]
_0802A628:
	ldr r5, [r7, #0x20]
	ldr r0, [r5, #0x40]
	ldr r2, [r5, #0x44]
	movs r6, #0x2c
	ldrsh r4, [r7, r6]
	adds r1, r7, #0
	adds r1, #0x42
	movs r3, #0
	ldrsh r1, [r1, r3]
	cmp r0, #0
	bge _0802A64C
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0802A64E
	.align 2, 0
_0802A648: .4byte 0x0003FFFF
_0802A64C:
	asrs r0, r0, #0x10
_0802A64E:
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	adds r0, r7, #0
	adds r0, #0x46
	movs r6, #0
	ldrsh r1, [r0, r6]
	cmp r2, #0
	bge _0802A668
	rsbs r0, r2, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0802A66A
_0802A668:
	asrs r0, r2, #0x10
_0802A66A:
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r3, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r1, r0, r4
	cmp r1, #0
	ble _0802A6A0
	ldr r0, _0802A690 @ =0x00007FFF
	cmp r1, r0
	bgt _0802A694
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r4, r4, r0
	b _0802A6B8
	.align 2, 0
_0802A690: .4byte 0x00007FFF
_0802A694:
	ldr r1, _0802A69C @ =0xFFFFFD00
	adds r4, r4, r1
	b _0802A6B8
	.align 2, 0
_0802A69C: .4byte 0xFFFFFD00
_0802A6A0:
	ldr r0, _0802A6B0 @ =0xFFFF8000
	cmp r1, r0
	bge _0802A6B4
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r4, r4, r2
	b _0802A6B8
	.align 2, 0
_0802A6B0: .4byte 0xFFFF8000
_0802A6B4:
	ldr r3, _0802A708 @ =0xFFFFFD00
	adds r4, r4, r3
_0802A6B8:
	strh r4, [r7, #0x2c]
	movs r6, #0x2c
	ldrsh r0, [r7, r6]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	ldr r1, [r7, #0x24]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	str r0, [r7, #0x48]
	movs r2, #0x2c
	ldrsh r0, [r7, r2]
	bl sub_080009E4
	ldr r1, [r7, #0x24]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	str r0, [r7, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r7, #0
	bl sub_0806D3D8
	ldrb r0, [r7, #0xd]
	subs r1, r0, #1
	strb r1, [r7, #0xd]
	movs r3, #0x34
	ldrsh r0, [r5, r3]
	cmp r0, #0
	ble _0802A7E6
	ldrb r0, [r7, #0x18]
	cmp r0, #0
	bne _0802A7E6
	lsls r0, r1, #0x18
	b _0802A7E2
	.align 2, 0
_0802A708: .4byte 0xFFFFFD00
_0802A70C:
	ldr r1, [r7, #0x24]
	ldr r0, _0802A774 @ =0x0003FFFF
	cmp r1, r0
	bgt _0802A71C
	movs r5, #0x80
	lsls r5, r5, #6
	adds r0, r1, r5
	str r0, [r7, #0x24]
_0802A71C:
	bl sub_08000A90
	ldr r1, _0802A778 @ =0x000001FF
	ands r1, r0
	lsls r5, r1, #0x10
	bl sub_08000A90
	movs r1, #0xff
	ands r1, r0
	lsls r3, r1, #0x10
	movs r6, #0x2c
	ldrsh r4, [r7, r6]
	adds r0, r7, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	asrs r0, r5, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r7, #0
	adds r0, #0x46
	movs r5, #0
	ldrsh r1, [r0, r5]
	asrs r0, r3, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r1, r0, r4
	cmp r1, #0
	ble _0802A78C
	ldr r0, _0802A77C @ =0x00007FFF
	cmp r1, r0
	bgt _0802A780
	movs r6, #0xc0
	lsls r6, r6, #2
	adds r4, r4, r6
	b _0802A7A4
	.align 2, 0
_0802A774: .4byte 0x0003FFFF
_0802A778: .4byte 0x000001FF
_0802A77C: .4byte 0x00007FFF
_0802A780:
	ldr r0, _0802A788 @ =0xFFFFFD00
	adds r4, r4, r0
	b _0802A7A4
	.align 2, 0
_0802A788: .4byte 0xFFFFFD00
_0802A78C:
	ldr r0, _0802A79C @ =0xFFFF8000
	cmp r1, r0
	bge _0802A7A0
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r4, r4, r1
	b _0802A7A4
	.align 2, 0
_0802A79C: .4byte 0xFFFF8000
_0802A7A0:
	ldr r2, _0802A7EC @ =0xFFFFFD00
	adds r4, r4, r2
_0802A7A4:
	strh r4, [r7, #0x2c]
	movs r3, #0x2c
	ldrsh r0, [r7, r3]
	movs r5, #0x80
	lsls r5, r5, #7
	adds r0, r0, r5
	bl sub_080009E4
	ldr r1, [r7, #0x24]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	str r0, [r7, #0x48]
	movs r6, #0x2c
	ldrsh r0, [r7, r6]
	bl sub_080009E4
	ldr r1, [r7, #0x24]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	str r0, [r7, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r7, #0
	bl sub_0806D3D8
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
_0802A7E2:
	cmp r0, #0
	bne _0802A870
_0802A7E6:
	movs r0, #4
	strb r0, [r7, #0xa]
	b _0802A870
	.align 2, 0
_0802A7EC: .4byte 0xFFFFFD00
_0802A7F0:
	ldr r1, [r7, #0x24]
	ldr r0, _0802A838 @ =0x0003FFFF
	cmp r1, r0
	bgt _0802A800
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r1, r2
	str r0, [r7, #0x24]
_0802A800:
	movs r3, #0x2c
	ldrsh r0, [r7, r3]
	movs r5, #0x80
	lsls r5, r5, #7
	adds r0, r0, r5
	bl sub_080009E4
	ldr r1, [r7, #0x24]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	str r0, [r7, #0x48]
	movs r6, #0x2c
	ldrsh r0, [r7, r6]
	bl sub_080009E4
	ldr r1, [r7, #0x24]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	str r0, [r7, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r7, #0
	bl sub_0806D3D8
	b _0802A870
	.align 2, 0
_0802A838: .4byte 0x0003FFFF
_0802A83C:
	ldr r0, _0802A864 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	lsls r0, r0, #2
	ldr r3, _0802A868 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r5, _0802A86C @ =0x000131BE
	adds r2, r2, r5
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
	b _0802A8B6
	.align 2, 0
_0802A864: .4byte gEwramData
_0802A868: .4byte 0x00013124
_0802A86C: .4byte 0x000131BE
_0802A870:
	adds r0, r7, #0
	movs r1, #2
	bl sub_0806D128
	adds r2, r7, #0
	adds r2, #0x59
	cmp r0, #0
	bne _0802A88A
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802A8B6
_0802A88A:
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0802A8C8 @ =gEwramData
	ldr r2, [r0]
	movs r6, #0x1a
	ldrsh r0, [r7, r6]
	lsls r0, r0, #2
	ldr r3, _0802A8CC @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r5, _0802A8D0 @ =0x000131BE
	adds r2, r2, r5
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
_0802A8B6:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A8C8: .4byte gEwramData
_0802A8CC: .4byte 0x00013124
_0802A8D0: .4byte 0x000131BE

	thumb_func_start sub_0802A8D4
sub_0802A8D4: @ 0x0802A8D4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r2, [r5, #0x14]
	adds r4, r5, #0
	adds r4, #0x59
	ldrb r0, [r4]
	movs r1, #4
	orrs r0, r1
	strb r0, [r4]
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _0802A932
	cmp r0, #1
	bgt _0802A8F6
	cmp r0, #0
	beq _0802A8FC
	b _0802A9C8
_0802A8F6:
	cmp r0, #2
	beq _0802A9A4
	b _0802A9C8
_0802A8FC:
	movs r3, #0x18
	rsbs r3, r3, #0
	adds r0, r5, #0
	adds r1, r2, #0
	movs r2, #0
	bl sub_08031EA4
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
	movs r0, #1
	movs r1, #0xf
	bl sub_08042A54
	ldr r0, _0802A938 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0802A93C @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0xd6
	bl sub_080D7910
	movs r0, #1
	strb r0, [r5, #0xa]
_0802A932:
	movs r7, #0
	movs r6, #0
	b _0802A97E
	.align 2, 0
_0802A938: .4byte gEwramData
_0802A93C: .4byte 0x000131BE
_0802A940:
	bl sub_08000A90
	ldr r1, _0802A998 @ =0x00000FFF
	ands r1, r0
	ldr r3, _0802A99C @ =0xFFFF8800
	adds r1, r1, r3
	adds r1, r6, r1
	strh r1, [r4, #0x2c]
	movs r1, #0x2c
	ldrsh r0, [r4, r1]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r0, r3
	bl sub_080009E4
	lsls r0, r0, #4
	ldr r1, [r5, #0x40]
	adds r1, r1, r0
	str r1, [r4, #0x40]
	movs r1, #0x2c
	ldrsh r0, [r4, r1]
	bl sub_080009E4
	lsls r0, r0, #4
	ldr r1, [r5, #0x44]
	adds r1, r1, r0
	str r1, [r4, #0x44]
	movs r3, #0xc0
	lsls r3, r3, #7
	adds r6, r6, r3
	adds r7, #1
_0802A97E:
	cmp r7, #1
	bgt _0802A990
	adds r0, r5, #0
	ldr r1, _0802A9A0 @ =sub_0802A49C
	bl sub_08023530
	adds r4, r0, #0
	cmp r4, #0
	bne _0802A940
_0802A990:
	movs r0, #2
	strb r0, [r5, #0xa]
	b _0802A9C8
	.align 2, 0
_0802A998: .4byte 0x00000FFF
_0802A99C: .4byte 0xFFFF8800
_0802A9A0: .4byte sub_0802A49C
_0802A9A4:
	ldr r0, _0802A9D0 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	lsls r0, r0, #2
	ldr r3, _0802A9D4 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _0802A9D8 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_08000E14
_0802A9C8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A9D0: .4byte gEwramData
_0802A9D4: .4byte 0x00013124
_0802A9D8: .4byte 0x000131BE

	thumb_func_start sub_0802A9DC
sub_0802A9DC: @ 0x0802A9DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, [r6, #0x14]
	mov sl, r0
	ldrb r4, [r6, #0xa]
	cmp r4, #1
	bne _0802A9F6
	b _0802AB50
_0802A9F6:
	cmp r4, #1
	bgt _0802AA00
	cmp r4, #0
	beq _0802AA0C
	b _0802AC04
_0802AA00:
	adds r5, r6, #0
	adds r5, #0x59
	cmp r4, #2
	bne _0802AA0A
	b _0802AC9C
_0802AA0A:
	b _0802ACA6
_0802AA0C:
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0802AA3C
	ldr r0, _0802AA34 @ =gEwramData
	ldr r1, [r0]
	movs r2, #0x1a
	ldrsh r0, [r6, r2]
	lsls r0, r0, #2
	ldr r3, _0802AA38 @ =0x00013124
	adds r1, r1, r3
	adds r1, r1, r0
	str r4, [r1]
	adds r0, r6, #0
	bl sub_08000E14
	b _0802AD56
	.align 2, 0
_0802AA34: .4byte gEwramData
_0802AA38: .4byte 0x00013124
_0802AA3C:
	movs r0, #0x58
	adds r0, r0, r6
	mov r8, r0
	movs r0, #0x1f
	ands r2, r0
	mov r3, r8
	ldrb r1, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	adds r7, r6, #0
	adds r7, #0x59
	ldrb r0, [r7]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r7]
	ldr r1, _0802AC0C @ =0x080E13BC
	movs r0, #0x8a
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r4, [r1, #4]
	ldr r5, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r1, _0802AC10 @ =gEwramData
	mov sb, r1
	ldr r1, [r1]
	ldr r2, _0802AC14 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	mov r3, sb
	ldr r0, [r3]
	ldr r1, _0802AC14 @ =0x000131CC
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldr r0, _0802AC18 @ =sub_0803B9D0
	str r0, [r6, #4]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	ldrb r0, [r7]
	movs r1, #2
	orrs r0, r1
	strb r0, [r7]
	adds r0, r6, #0
	mov r1, sl
	movs r2, #8
	movs r3, #0
	bl sub_08031EA4
	movs r2, #0x80
	lsls r2, r2, #7
	str r2, [r6, #0x48]
	movs r3, #0x80
	lsls r3, r3, #6
	str r3, [r6, #0x50]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802AAEE
	rsbs r0, r2, #0
	str r0, [r6, #0x48]
	rsbs r0, r3, #0
	str r0, [r6, #0x50]
_0802AAEE:
	mov r1, r8
	ldrb r2, [r1]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r4, #1
	adds r1, r4, #0
	eors r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r2, r8
	strb r0, [r2]
	movs r0, #1
	movs r1, #0x14
	bl sub_08042A54
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
	movs r1, #0
	orrs r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2]
	movs r0, #0xce
	lsls r0, r0, #1
	bl sub_080D7910
	movs r0, #0xe1
	bl sub_080D7910
	mov r3, sb
	ldr r1, [r3]
	ldr r0, _0802AC1C @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	strb r4, [r6, #0xa]
_0802AB50:
	bl sub_08000A90
	ldr r5, _0802AC20 @ =0x0007FFFF
	ands r0, r5
	ldr r1, _0802AC24 @ =0xFFFC0000
	adds r0, r0, r1
	ldr r4, [r6, #0x40]
	adds r4, r4, r0
	bl sub_08000A90
	ands r0, r5
	ldr r2, _0802AC28 @ =0xFFEC0000
	adds r0, r0, r2
	ldr r1, [r6, #0x44]
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #7
	bl sub_08045CEC
	adds r7, r0, #0
	adds r5, r6, #0
	adds r5, #0x58
	cmp r7, #0
	beq _0802ABD0
	bl sub_08000A90
	ldr r3, _0802AC2C @ =0x00003FFF
	adds r1, r3, #0
	ands r0, r1
	ldr r1, _0802AC30 @ =0xFFFFE000
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802ABA8
	lsls r0, r2, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x18
	adds r0, r0, r2
	lsrs r2, r0, #0x10
_0802ABA8:
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r4, r3
	bl sub_080009E4
	cmp r0, #0
	bge _0802ABBC
	adds r0, #0x1f
_0802ABBC:
	asrs r0, r0, #5
	str r0, [r7, #0x50]
	adds r0, r4, #0
	bl sub_080009E4
	cmp r0, #0
	bge _0802ABCC
	adds r0, #0x1f
_0802ABCC:
	asrs r0, r0, #5
	str r0, [r7, #0x54]
_0802ABD0:
	ldr r1, [r6, #0x24]
	ldr r0, _0802AC34 @ =0x0000FFFF
	cmp r1, r0
	bgt _0802AC38
	movs r0, #0x80
	lsls r0, r0, #5
	adds r1, r1, r0
	str r1, [r6, #0x24]
	movs r2, #0x80
	lsls r2, r2, #9
	ldrb r0, [r5]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	movs r4, #0
	str r4, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	bl sub_0803E058
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r6, #0
	bl sub_0806D3D8
_0802AC04:
	adds r5, r6, #0
	adds r5, #0x59
	b _0802ACA6
	.align 2, 0
_0802AC0C: .4byte 0x080E13BC
_0802AC10: .4byte gEwramData
_0802AC14: .4byte 0x000131CC
_0802AC18: .4byte sub_0803B9D0
_0802AC1C: .4byte 0x000131BE
_0802AC20: .4byte 0x0007FFFF
_0802AC24: .4byte 0xFFFC0000
_0802AC28: .4byte 0xFFEC0000
_0802AC2C: .4byte 0x00003FFF
_0802AC30: .4byte 0xFFFFE000
_0802AC34: .4byte 0x0000FFFF
_0802AC38:
	ldrb r0, [r5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	ldrb r1, [r5]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	adds r4, r6, #0
	adds r4, #0x59
	ldrb r1, [r4]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	movs r7, #2
	movs r0, #2
	strb r0, [r6, #0xa]
	adds r0, r6, #0
	movs r1, #7
	bl sub_0802383C
	adds r2, r0, #0
	adds r5, r4, #0
	cmp r2, #0
	beq _0802AC80
	movs r0, #1
	strb r0, [r2, #0xf]
	adds r2, #0x5a
	ldrb r1, [r2]
	subs r0, #8
	ands r0, r1
	orrs r0, r7
	strb r0, [r2]
_0802AC80:
	adds r0, r6, #0
	movs r1, #3
	bl sub_0802383C
	adds r2, r0, #0
	cmp r2, #0
	beq _0802AC9C
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r7
	strb r0, [r2]
_0802AC9C:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r6, #0
	bl sub_0806D3D8
_0802ACA6:
	adds r0, r6, #0
	bl sub_0803F17C
	adds r2, r6, #0
	adds r2, #0x64
	ldr r0, _0802ACE8 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0802ACEC @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r6, #0
	adds r0, #0x65
	ldrb r0, [r0]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _0802ACF0
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r1, r3, #0
	bl sub_08042848
	b _0802ACFC
	.align 2, 0
_0802ACE8: .4byte gEwramData
_0802ACEC: .4byte 0x0001017C
_0802ACF0:
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_0802ACFC:
	adds r0, r6, #0
	movs r1, #3
	bl sub_0806D128
	cmp r0, #0
	bne _0802AD12
	ldrb r1, [r5]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802AD56
_0802AD12:
	ldrb r0, [r5]
	movs r1, #4
	orrs r0, r1
	strb r0, [r5]
	adds r2, r6, #0
	adds r2, #0x58
	ldrh r1, [r2]
	ldr r0, _0802AD68 @ =0x0000101F
	ands r0, r1
	cmp r0, #0
	beq _0802AD32
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_0802AD32:
	ldr r0, _0802AD6C @ =gEwramData
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r0, [r6, r3]
	lsls r0, r0, #2
	ldr r3, _0802AD70 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _0802AD74 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r6, #0
	bl sub_08000E14
_0802AD56:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802AD68: .4byte 0x0000101F
_0802AD6C: .4byte gEwramData
_0802AD70: .4byte 0x00013124
_0802AD74: .4byte 0x000131BE

	thumb_func_start sub_0802AD78
sub_0802AD78: @ 0x0802AD78
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov r8, r0
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	beq _0802AE88
	cmp r0, #1
	bgt _0802AD96
	cmp r0, #0
	beq _0802ADA4
	b _0802AFB8
_0802AD96:
	cmp r0, #2
	bne _0802AD9C
	b _0802AF74
_0802AD9C:
	cmp r0, #3
	bne _0802ADA2
	b _0802AF88
_0802ADA2:
	b _0802AFB8
_0802ADA4:
	ldr r1, _0802AF5C @ =0x080E13BC
	movs r2, #0x96
	lsls r2, r2, #1
	adds r1, r1, r2
	ldr r0, [r1]
	ldr r4, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r5, _0802AF60 @ =gEwramData
	ldr r1, [r5]
	ldr r3, _0802AF64 @ =0x000131CC
	adds r1, r1, r3
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r5]
	ldr r4, _0802AF64 @ =0x000131CC
	adds r0, r0, r4
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _0802AF68 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xf
	strb r0, [r1]
	movs r3, #0x1a
	rsbs r3, r3, #0
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0x10
	bl sub_08031EA4
	movs r0, #1
	movs r1, #0x3c
	bl sub_08042A54
	adds r0, r7, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r1, _0802AF6C @ =0x7F7FC0C0
	adds r0, r7, #0
	bl sub_08042884
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x59
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	adds r3, r7, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	ldr r1, [r5]
	ldr r0, _0802AF70 @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0xdf
	bl sub_080D7910
	movs r0, #1
	strb r0, [r7, #0xa]
	movs r5, #0x80
	lsls r5, r5, #9
	str r5, [sp]
	movs r4, #0x18
	str r4, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	movs r3, #0
	bl sub_0803D18C
	str r5, [sp]
	str r4, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	movs r3, #0
	bl sub_0803CDF0
_0802AE88:
	ldrb r0, [r7, #0xd]
	adds r0, #1
	strb r0, [r7, #0xd]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0802AF22
	bl sub_08000A90
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r6, r5, r1
	adds r0, r6, #0
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r4, [r7, #0x40]
	adds r4, r4, r1
	adds r0, r5, #0
	bl sub_080009E4
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #3
	ldr r1, [r7, #0x44]
	adds r1, r1, r2
	adds r0, r4, #0
	movs r2, #0x10
	movs r3, #6
	bl sub_08045CEC
	adds r4, r0, #0
	cmp r4, #0
	beq _0802AF22
	movs r0, #1
	strb r0, [r4, #0xf]
	adds r0, r6, #0
	bl sub_080009E4
	cmp r0, #0
	bge _0802AEE4
	adds r0, #7
_0802AEE4:
	asrs r0, r0, #3
	str r0, [r4, #0x50]
	adds r0, r5, #0
	bl sub_080009E4
	cmp r0, #0
	bge _0802AEF4
	adds r0, #7
_0802AEF4:
	asrs r0, r0, #3
	str r0, [r4, #0x54]
	bl sub_08000A90
	movs r5, #1
	ands r0, r5
	adds r4, #0x58
	lsls r0, r0, #6
	ldrb r2, [r4]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	bl sub_08000A90
	ands r0, r5
	lsls r0, r0, #7
	ldrb r2, [r4]
	movs r1, #0x7f
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
_0802AF22:
	adds r0, r7, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0802AFB8
	bl sub_0803D270
	bl sub_0803CED4
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0x20
	strb r0, [r7, #0xd]
	movs r1, #2
	movs r0, #2
	strb r0, [r7, #0xa]
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r0, [r2]
	orrs r1, r0
	strb r1, [r2]
	b _0802AFB8
	.align 2, 0
_0802AF5C: .4byte 0x080E13BC
_0802AF60: .4byte gEwramData
_0802AF64: .4byte 0x000131CC
_0802AF68: .4byte sub_0803B9D0
_0802AF6C: .4byte 0x7F7FC0C0
_0802AF70: .4byte 0x000131BE
_0802AF74:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	bne _0802AFB4
	movs r0, #1
	strb r0, [r7, #0xf]
	movs r0, #8
	strb r0, [r7, #0xd]
	movs r0, #3
	strb r0, [r7, #0xa]
	b _0802AFB8
_0802AF88:
	ldrb r0, [r7, #0xd]
	adds r3, r0, #0
	cmp r3, #0
	bne _0802AFB4
	ldr r0, _0802AFA8 @ =gEwramData
	ldr r2, [r0]
	movs r4, #0x1a
	ldrsh r1, [r7, r4]
	lsls r1, r1, #2
	ldr r4, _0802AFAC @ =0x00013124
	adds r0, r2, r4
	adds r0, r0, r1
	str r3, [r0]
	ldr r0, _0802AFB0 @ =0x000131BE
	adds r2, r2, r0
	b _0802AFFA
	.align 2, 0
_0802AFA8: .4byte gEwramData
_0802AFAC: .4byte 0x00013124
_0802AFB0: .4byte 0x000131BE
_0802AFB4:
	subs r0, #1
	strb r0, [r7, #0xd]
_0802AFB8:
	adds r0, r7, #0
	movs r1, #4
	bl sub_0806D128
	adds r2, r7, #0
	adds r2, #0x59
	cmp r0, #0
	bne _0802AFD2
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802B014
_0802AFD2:
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	bl sub_0803D270
	bl sub_0803CED4
	ldr r0, _0802B008 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	lsls r0, r0, #2
	ldr r3, _0802B00C @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r4, _0802B010 @ =0x000131BE
	adds r2, r2, r4
_0802AFFA:
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
	b _0802B01A
	.align 2, 0
_0802B008: .4byte gEwramData
_0802B00C: .4byte 0x00013124
_0802B010: .4byte 0x000131BE
_0802B014:
	adds r0, r7, #0
	bl sub_0803F17C
_0802B01A:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802B028
sub_0802B028: @ 0x0802B028
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	beq _0802B0C0
	cmp r0, #1
	bgt _0802B03C
	cmp r0, #0
	beq _0802B042
	b _0802B160
_0802B03C:
	cmp r0, #2
	beq _0802B12E
	b _0802B160
_0802B042:
	ldr r0, _0802B10C @ =0x080E13BC
	adds r1, r0, #0
	adds r1, #0x54
	ldr r0, [r0, #0x54]
	ldr r5, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _0802B110 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _0802B114 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r3, _0802B114 @ =0x000131CC
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _0802B118 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	subs r1, #3
	ldrb r0, [r1]
	movs r4, #2
	orrs r0, r4
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	orrs r0, r4
	strb r0, [r2]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_0802B0C0:
	adds r0, r7, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _0802B0CE
	movs r0, #2
	strb r0, [r7, #0xa]
_0802B0CE:
	adds r2, r7, #0
	adds r2, #0x64
	ldr r0, _0802B110 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0802B11C @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r7, #0
	adds r0, #0x65
	ldrb r0, [r0]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _0802B120
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	adds r1, r3, #0
	bl sub_08042848
	b _0802B160
	.align 2, 0
_0802B10C: .4byte 0x080E13BC
_0802B110: .4byte gEwramData
_0802B114: .4byte 0x000131CC
_0802B118: .4byte sub_0803B9D0
_0802B11C: .4byte 0x0001017C
_0802B120:
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	b _0802B160
_0802B12E:
	ldr r0, _0802B154 @ =gEwramData
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r0, [r7, r3]
	lsls r0, r0, #2
	ldr r3, _0802B158 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _0802B15C @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
	b _0802B1A6
	.align 2, 0
_0802B154: .4byte gEwramData
_0802B158: .4byte 0x00013124
_0802B15C: .4byte 0x000131BE
_0802B160:
	adds r0, r7, #0
	movs r1, #2
	bl sub_0806D128
	adds r2, r7, #0
	adds r2, #0x59
	cmp r0, #0
	bne _0802B17A
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802B1A6
_0802B17A:
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0802B1AC @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	lsls r0, r0, #2
	ldr r3, _0802B1B0 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _0802B1B4 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
_0802B1A6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B1AC: .4byte gEwramData
_0802B1B0: .4byte 0x00013124
_0802B1B4: .4byte 0x000131BE

	thumb_func_start sub_0802B1B8
sub_0802B1B8: @ 0x0802B1B8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov r8, r0
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	beq _0802B242
	cmp r0, #1
	bgt _0802B1D4
	cmp r0, #0
	beq _0802B1DA
	b _0802B2F4
_0802B1D4:
	cmp r0, #2
	beq _0802B2C0
	b _0802B2F4
_0802B1DA:
	ldr r0, _0802B2AC @ =0x080E13BC
	adds r1, r0, #0
	adds r1, #0x54
	ldr r0, [r0, #0x54]
	ldr r5, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _0802B2B0 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _0802B2B4 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r3, _0802B2B4 @ =0x000131CC
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	movs r1, #0xc
	bl sub_08042A54
	ldr r1, [r4]
	ldr r0, _0802B2B8 @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0xc9
	bl sub_080D7910
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_0802B242:
	ldrb r2, [r7, #0xb]
	adds r2, #0x14
	movs r3, #0x14
	rsbs r3, r3, #0
	adds r0, r7, #0
	mov r1, r8
	bl sub_08031EA4
	ldrb r1, [r7, #0xd]
	adds r1, #1
	strb r1, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bls _0802B2F4
	movs r0, #0
	strb r0, [r7, #0xd]
	ldr r1, _0802B2BC @ =sub_0802B028
	adds r0, r7, #0
	bl sub_08023530
	adds r3, r0, #0
	cmp r3, #0
	beq _0802B298
	ldr r0, [r7, #0x40]
	str r0, [r3, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r3, #0x44]
	adds r0, r7, #0
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
_0802B298:
	ldrb r0, [r7, #0xc]
	adds r0, #1
	strb r0, [r7, #0xc]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0802B2F4
	movs r0, #2
	strb r0, [r7, #0xa]
	b _0802B2F4
	.align 2, 0
_0802B2AC: .4byte 0x080E13BC
_0802B2B0: .4byte gEwramData
_0802B2B4: .4byte 0x000131CC
_0802B2B8: .4byte 0x000131BE
_0802B2BC: .4byte sub_0802B028
_0802B2C0:
	ldr r0, _0802B2E8 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	lsls r0, r0, #2
	ldr r3, _0802B2EC @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _0802B2F0 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
	b _0802B33A
	.align 2, 0
_0802B2E8: .4byte gEwramData
_0802B2EC: .4byte 0x00013124
_0802B2F0: .4byte 0x000131BE
_0802B2F4:
	adds r0, r7, #0
	movs r1, #3
	bl sub_0806D128
	adds r2, r7, #0
	adds r2, #0x59
	cmp r0, #0
	bne _0802B30E
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802B33A
_0802B30E:
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0802B344 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	lsls r0, r0, #2
	ldr r3, _0802B348 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _0802B34C @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
_0802B33A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B344: .4byte gEwramData
_0802B348: .4byte 0x00013124
_0802B34C: .4byte 0x000131BE

	thumb_func_start sub_0802B350
sub_0802B350: @ 0x0802B350
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r0, [r6, #0x14]
	mov r8, r0
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _0802B36C
	adds r4, r6, #0
	adds r4, #0x59
	cmp r0, #1
	beq _0802B43C
	b _0802B44C
_0802B36C:
	ldr r1, _0802B46C @ =0x080E13BC
	adds r1, #0xcc
	ldr r0, [r1]
	ldr r4, [r1, #4]
	ldr r5, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r7, _0802B470 @ =gEwramData
	ldr r1, [r7]
	ldr r2, _0802B474 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r7]
	ldr r3, _0802B474 @ =0x000131CC
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldr r0, _0802B478 @ =sub_0803B9D0
	str r0, [r6, #4]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	adds r4, r6, #0
	adds r4, #0x59
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
	movs r3, #0x1a
	rsbs r3, r3, #0
	adds r0, r6, #0
	mov r1, r8
	movs r2, #8
	bl sub_08031EA4
	movs r2, #0x80
	lsls r2, r2, #0xa
	str r2, [r6, #0x48]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802B3F0
	rsbs r0, r2, #0
	str r0, [r6, #0x48]
_0802B3F0:
	ldr r0, [r6, #0x48]
	cmp r0, #0
	bge _0802B3F8
	adds r0, #0x1f
_0802B3F8:
	asrs r0, r0, #5
	str r0, [r6, #0x50]
	movs r0, #1
	movs r1, #0x14
	bl sub_08042A54
	ldr r2, _0802B47C @ =sub_0802D9B4
	adds r0, r6, #0
	movs r1, #5
	movs r3, #0
	bl sub_0804277C
	ldr r1, _0802B480 @ =0x0C0CFAFA
	adds r0, r6, #0
	bl sub_08042884
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xd8
	bl sub_080D7910
	ldr r1, [r7]
	ldr r0, _0802B484 @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
_0802B43C:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r6, #0
	bl sub_0806D3D8
	adds r0, r6, #0
	bl sub_0803F17C
_0802B44C:
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806D128
	cmp r0, #0
	bne _0802B462
	ldrb r1, [r4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802B488
_0802B462:
	ldrb r0, [r4]
	movs r1, #4
	orrs r0, r1
	strb r0, [r4]
	b _0802B48E
	.align 2, 0
_0802B46C: .4byte 0x080E13BC
_0802B470: .4byte gEwramData
_0802B474: .4byte 0x000131CC
_0802B478: .4byte sub_0803B9D0
_0802B47C: .4byte sub_0802D9B4
_0802B480: .4byte 0x0C0CFAFA
_0802B484: .4byte 0x000131BE
_0802B488:
	ldrb r0, [r6, #0x18]
	cmp r0, #0
	beq _0802B4B2
_0802B48E:
	ldr r0, _0802B4BC @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r6, r1]
	lsls r0, r0, #2
	ldr r3, _0802B4C0 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _0802B4C4 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r6, #0
	bl sub_08000E14
_0802B4B2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B4BC: .4byte gEwramData
_0802B4C0: .4byte 0x00013124
_0802B4C4: .4byte 0x000131BE

	thumb_func_start sub_0802B4C8
sub_0802B4C8: @ 0x0802B4C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	str r0, [sp, #8]
	ldr r1, [r7, #0x4c]
	str r1, [sp, #0xc]
	ldrb r5, [r7, #0xa]
	cmp r5, #1
	bne _0802B4E6
	b _0802B616
_0802B4E6:
	cmp r5, #1
	bgt _0802B4F0
	cmp r5, #0
	beq _0802B4F8
	b _0802B774
_0802B4F0:
	cmp r5, #2
	bne _0802B4F6
	b _0802B704
_0802B4F6:
	b _0802B774
_0802B4F8:
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0802B524
	ldr r0, _0802B51C @ =gEwramData
	ldr r1, [r0]
	movs r2, #0x1a
	ldrsh r0, [r7, r2]
	lsls r0, r0, #2
	ldr r3, _0802B520 @ =0x00013124
	adds r1, r1, r3
	adds r1, r1, r0
	str r5, [r1]
	b _0802B7C4
	.align 2, 0
_0802B51C: .4byte gEwramData
_0802B520: .4byte 0x00013124
_0802B524:
	movs r0, #0x58
	adds r0, r0, r7
	mov sb, r0
	movs r0, #0x1f
	ands r2, r0
	mov r3, sb
	ldrb r1, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	movs r0, #0x59
	adds r0, r0, r7
	mov r8, r0
	ldrb r0, [r0]
	movs r1, #0x10
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
	ldr r1, _0802B63C @ =0x080E13BC
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r1, r2
	ldr r0, [r1]
	ldr r4, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r3, _0802B640 @ =gEwramData
	mov sl, r3
	ldr r1, [r3]
	ldr r2, _0802B644 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	mov r3, sl
	ldr r0, [r3]
	ldr r1, _0802B644 @ =0x000131CC
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r7, #0
	adds r0, #0x65
	strb r5, [r0]
	ldr r0, _0802B648 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	mov r2, r8
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r3, #0x1a
	rsbs r3, r3, #0
	adds r0, r7, #0
	ldr r1, [sp, #8]
	movs r2, #8
	bl sub_08031EA4
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x54]
	ldr r0, _0802B64C @ =0xFFFD8000
	str r0, [r7, #0x4c]
	ldr r2, _0802B650 @ =0xFFFE0000
	str r2, [r7, #0x24]
	mov r3, sb
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802B5D6
	rsbs r0, r2, #0
	str r0, [r7, #0x24]
_0802B5D6:
	movs r0, #1
	movs r1, #0x1e
	bl sub_08042A54
	adds r0, r7, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r1, _0802B654 @ =0x2020F0F0
	adds r0, r7, #0
	bl sub_08042884
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	strb r0, [r7, #0xa]
	mov r0, sl
	ldr r1, [r0]
	ldr r2, _0802B658 @ =0x000131BE
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0xc5
	bl sub_080D7910
_0802B616:
	ldr r1, [r7, #0x24]
	rsbs r1, r1, #0
	ldr r2, _0802B65C @ =0x084F13C8
	adds r0, r7, #0
	movs r3, #2
	bl sub_0806CAF8
	adds r4, r0, #0
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _0802B660
	ldr r0, [r7, #0x24]
	cmp r0, #0
	bgt _0802B676
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r0, r1
	b _0802B67A
	.align 2, 0
_0802B63C: .4byte 0x080E13BC
_0802B640: .4byte gEwramData
_0802B644: .4byte 0x000131CC
_0802B648: .4byte sub_0803B9D0
_0802B64C: .4byte 0xFFFD8000
_0802B650: .4byte 0xFFFE0000
_0802B654: .4byte 0x2020F0F0
_0802B658: .4byte 0x000131BE
_0802B65C: .4byte 0x084F13C8
_0802B660:
	movs r1, #0x20
	ands r1, r4
	cmp r1, #0
	beq _0802B684
	ldr r0, [r7, #0x24]
	cmp r0, #0
	ble _0802B676
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r0, r2
	b _0802B67A
_0802B676:
	ldr r3, _0802B680 @ =0xFFFFF000
	adds r0, r0, r3
_0802B67A:
	str r0, [r7, #0x24]
	b _0802B6B6
	.align 2, 0
_0802B680: .4byte 0xFFFFF000
_0802B684:
	ldr r0, [r7, #0x24]
	cmp r0, #0
	blt _0802B69C
	ldr r2, _0802B698 @ =0xFFFFFE00
	adds r0, r0, r2
	str r0, [r7, #0x24]
	cmp r0, #0
	bgt _0802B6B6
	b _0802B6A8
	.align 2, 0
_0802B698: .4byte 0xFFFFFE00
_0802B69C:
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	str r0, [r7, #0x24]
	cmp r0, #0
	ble _0802B6B6
_0802B6A8:
	str r1, [r7, #0x24]
	movs r0, #0x10
	strb r0, [r7, #0xd]
	movs r0, #1
	strb r0, [r7, #0xf]
	movs r0, #2
	strb r0, [r7, #0xa]
_0802B6B6:
	ldr r0, [r7, #0x24]
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0802B6C0
	adds r0, #0x3f
_0802B6C0:
	asrs r0, r0, #6
	ldrh r1, [r7, #0x2c]
	adds r0, r0, r1
	strh r0, [r7, #0x2c]
	movs r0, #3
	ands r0, r4
	cmp r0, #0
	beq _0802B6E2
	ldr r0, _0802B700 @ =0x0000015F
	bl sub_080D7910
	ldr r0, [r7, #0x24]
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r7, #0x24]
_0802B6E2:
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _0802B774
	ldr r0, [r7, #0x4c]
	cmp r0, #0
	bne _0802B774
	ldr r2, [sp, #0xc]
	cmp r2, #0
	ble _0802B774
	ldr r0, _0802B700 @ =0x0000015F
	bl sub_080D7910
	b _0802B774
	.align 2, 0
_0802B700: .4byte 0x0000015F
_0802B704:
	ldrb r1, [r7, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0802B736
	bl sub_08000A90
	ldr r6, _0802B760 @ =0x001FFFFF
	ands r0, r6
	ldr r3, _0802B764 @ =0xFFF00000
	adds r0, r0, r3
	ldr r4, [r7, #0x40]
	adds r4, r4, r0
	bl sub_08000A90
	ands r0, r6
	ldr r1, _0802B764 @ =0xFFF00000
	adds r0, r0, r1
	ldr r1, [r7, #0x44]
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #7
	bl sub_08045CEC
_0802B736:
	ldrb r0, [r7, #0xd]
	adds r4, r0, #0
	cmp r4, #0
	bne _0802B770
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	ldr r0, _0802B768 @ =gEwramData
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r1, [r7, r3]
	lsls r1, r1, #2
	ldr r3, _0802B76C @ =0x00013124
	adds r0, r2, r3
	adds r0, r0, r1
	str r4, [r0]
	b _0802B7BA
	.align 2, 0
_0802B760: .4byte 0x001FFFFF
_0802B764: .4byte 0xFFF00000
_0802B768: .4byte gEwramData
_0802B76C: .4byte 0x00013124
_0802B770:
	subs r0, #1
	strb r0, [r7, #0xd]
_0802B774:
	adds r0, r7, #0
	movs r1, #3
	bl sub_0806D128
	adds r3, r0, #0
	adds r2, r7, #0
	adds r2, #0x59
	cmp r3, #0
	bne _0802B790
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802B7D8
_0802B790:
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	ldr r0, _0802B7CC @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	lsls r0, r0, #2
	ldr r3, _0802B7D0 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
_0802B7BA:
	ldr r0, _0802B7D4 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
_0802B7C4:
	adds r0, r7, #0
	bl sub_08000E14
	b _0802B7F6
	.align 2, 0
_0802B7CC: .4byte gEwramData
_0802B7D0: .4byte 0x00013124
_0802B7D4: .4byte 0x000131BE
_0802B7D8:
	movs r1, #0x2c
	ldrsh r0, [r7, r1]
	movs r2, #0x80
	lsls r2, r2, #9
	str r3, [sp]
	adds r1, r7, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
_0802B7F6:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802B808
sub_0802B808: @ 0x0802B808
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldr r0, [r6, #0x14]
	mov r8, r0
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _0802B82A
	adds r4, r6, #0
	adds r4, #0x59
	cmp r0, #1
	bne _0802B828
	b _0802B940
_0802B828:
	b _0802B94A
_0802B82A:
	ldr r1, _0802B90C @ =0x080E13BC
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	mov sl, r3
	ldr r0, [r1]
	ldr r4, [r1, #4]
	ldr r5, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r7, _0802B910 @ =gEwramData
	ldr r1, [r7]
	ldr r2, _0802B914 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r7]
	ldr r3, _0802B914 @ =0x000131CC
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #2
	bl sub_0803B924
	adds r5, r6, #0
	adds r5, #0x65
	movs r0, #2
	mov sb, r0
	movs r0, #2
	strb r0, [r5]
	ldr r0, _0802B918 @ =sub_0803B9D0
	str r0, [r6, #4]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	adds r4, r6, #0
	adds r4, #0x59
	ldrb r0, [r4]
	mov r1, sb
	orrs r0, r1
	strb r0, [r4]
	movs r3, #0x1a
	rsbs r3, r3, #0
	adds r0, r6, #0
	mov r1, r8
	movs r2, #8
	bl sub_08031EA4
	movs r2, #0x80
	lsls r2, r2, #0xb
	str r2, [r6, #0x48]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802B8B6
	rsbs r0, r2, #0
	str r0, [r6, #0x48]
_0802B8B6:
	movs r0, #1
	movs r1, #0x1e
	bl sub_08042A54
	adds r0, r6, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	adds r3, r6, #0
	adds r3, #0x72
	ldrb r1, [r3]
	movs r0, #4
	adds r2, r1, #0
	orrs r2, r0
	mov r0, sl
	orrs r2, r0
	strb r2, [r3]
	adds r0, r6, #0
	adds r0, #0x64
	ldr r1, [r7]
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r7, _0802B91C @ =0x0001017C
	adds r1, r1, r7
	adds r1, r1, r0
	ldr r1, [r1]
	ldrb r0, [r5]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _0802B920
	movs r0, #0xfd
	ands r2, r0
	strb r2, [r3]
	adds r0, r6, #0
	bl sub_08042848
	b _0802B926
	.align 2, 0
_0802B90C: .4byte 0x080E13BC
_0802B910: .4byte gEwramData
_0802B914: .4byte 0x000131CC
_0802B918: .4byte sub_0803B9D0
_0802B91C: .4byte 0x0001017C
_0802B920:
	mov r0, sb
	orrs r2, r0
	strb r2, [r3]
_0802B926:
	ldr r0, _0802B99C @ =gEwramData
	ldr r1, [r0]
	ldr r2, _0802B9A0 @ =0x000131BE
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0xc7
	bl sub_080D7910
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
_0802B940:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r6, #0
	bl sub_0806D3D8
_0802B94A:
	adds r0, r6, #0
	movs r1, #3
	bl sub_0806D128
	cmp r0, #0
	bne _0802B960
	ldrb r1, [r4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802B98C
_0802B960:
	ldrb r0, [r4]
	movs r1, #4
	orrs r0, r1
	strb r0, [r4]
	ldr r0, _0802B99C @ =gEwramData
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r0, [r6, r3]
	lsls r0, r0, #2
	ldr r7, _0802B9A4 @ =0x00013124
	adds r1, r2, r7
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _0802B9A0 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r6, #0
	bl sub_08000E14
_0802B98C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B99C: .4byte gEwramData
_0802B9A0: .4byte 0x000131BE
_0802B9A4: .4byte 0x00013124

	thumb_func_start sub_0802B9A8
sub_0802B9A8: @ 0x0802B9A8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov r8, r0
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	beq _0802BA66
	cmp r0, #1
	bgt _0802B9C4
	cmp r0, #0
	beq _0802B9CC
	b _0802BB14
_0802B9C4:
	cmp r0, #2
	bne _0802B9CA
	b _0802BAE2
_0802B9CA:
	b _0802BB14
_0802B9CC:
	ldr r1, _0802BABC @ =0x080E13BC
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r1, r1, r2
	ldr r0, [r1]
	ldr r4, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r5, _0802BAC0 @ =gEwramData
	ldr r1, [r5]
	ldr r3, _0802BAC4 @ =0x000131CC
	adds r1, r1, r3
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r5]
	ldr r1, _0802BAC4 @ =0x000131CC
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _0802BAC8 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	subs r1, #3
	ldrb r0, [r1]
	movs r4, #2
	orrs r0, r4
	strb r0, [r1]
	movs r0, #1
	movs r1, #0x14
	bl sub_08042A54
	adds r0, r7, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	orrs r0, r4
	strb r0, [r2]
	movs r0, #0xd1
	bl sub_080D7910
	ldr r1, [r5]
	ldr r2, _0802BACC @ =0x000131BE
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_0802BA66:
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0
	movs r3, #0
	bl sub_08031EA4
	adds r0, r7, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _0802BA80
	movs r0, #2
	strb r0, [r7, #0xa]
_0802BA80:
	adds r2, r7, #0
	adds r2, #0x64
	ldr r0, _0802BAC0 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r3, _0802BAD0 @ =0x0001017C
	adds r1, r1, r3
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r7, #0
	adds r0, #0x65
	ldrb r0, [r0]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _0802BAD4
	adds r2, #0xe
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	adds r1, r3, #0
	bl sub_08042848
	b _0802BB14
	.align 2, 0
_0802BABC: .4byte 0x080E13BC
_0802BAC0: .4byte gEwramData
_0802BAC4: .4byte 0x000131CC
_0802BAC8: .4byte sub_0803B9D0
_0802BACC: .4byte 0x000131BE
_0802BAD0: .4byte 0x0001017C
_0802BAD4:
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	b _0802BB14
_0802BAE2:
	ldr r0, _0802BB08 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	lsls r0, r0, #2
	ldr r3, _0802BB0C @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _0802BB10 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
	b _0802BB3A
	.align 2, 0
_0802BB08: .4byte gEwramData
_0802BB0C: .4byte 0x00013124
_0802BB10: .4byte 0x000131BE
_0802BB14:
	adds r0, r7, #0
	movs r1, #4
	bl sub_0806D128
	adds r2, r7, #0
	adds r2, #0x59
	cmp r0, #0
	bne _0802BB2E
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802BB3A
_0802BB2E:
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #2
	strb r0, [r7, #0xa]
_0802BB3A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0802BB44
sub_0802BB44: @ 0x0802BB44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov sl, r0
	movs r1, #0x59
	adds r1, r1, r7
	mov r8, r1
	ldrb r0, [r1]
	movs r1, #4
	orrs r0, r1
	mov r2, r8
	strb r0, [r2]
	ldrb r6, [r7, #0xa]
	cmp r6, #1
	beq _0802BC54
	cmp r6, #1
	bgt _0802BB76
	cmp r6, #0
	beq _0802BB7E
	b _0802BCFE
_0802BB76:
	cmp r6, #2
	bne _0802BB7C
	b _0802BCBE
_0802BB7C:
	b _0802BCFE
_0802BB7E:
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _0802BBB0
	ldr r0, _0802BBA8 @ =gEwramData
	ldr r1, [r0]
	movs r3, #0x1a
	ldrsh r0, [r7, r3]
	lsls r0, r0, #2
	ldr r2, _0802BBAC @ =0x00013124
	adds r1, r1, r2
	adds r1, r1, r0
	str r6, [r1]
	adds r0, r7, #0
	bl sub_08000E14
	b _0802BCFE
	.align 2, 0
_0802BBA8: .4byte gEwramData
_0802BBAC: .4byte 0x00013124
_0802BBB0:
	adds r2, r7, #0
	adds r2, #0x58
	movs r0, #0x1f
	ands r3, r0
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	mov r3, r8
	ldrb r0, [r3]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3]
	ldr r1, _0802BC94 @ =0x080E13BC
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r5, [r1, #4]
	ldr r1, [r1, #8]
	mov sb, r1
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _0802BC98 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _0802BC9C @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r3, _0802BC9C @ =0x000131CC
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r3, #2
	bl sub_0803B924
	adds r0, r7, #0
	adds r0, #0x65
	strb r6, [r0]
	ldr r0, _0802BCA0 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	adds r2, r7, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	subs r0, #0x14
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	mov r2, r8
	ldrb r0, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r4]
	ldr r3, _0802BCA4 @ =0x000131BE
	adds r1, r1, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0x97
	bl sub_080D7910
	movs r0, #0x20
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_0802BC54:
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	movs r3, #0
	bl sub_08031EA4
	ldrb r0, [r7, #0xd]
	lsls r0, r0, #0xa
	bl sub_080009E4
	adds r1, r0, #0
	str r1, [r7, #0x24]
	movs r2, #0x80
	lsls r2, r2, #9
	movs r0, #0
	str r0, [sp]
	adds r4, r7, #0
	adds r4, #0x58
	ldrb r0, [r4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	movs r3, #0
	bl sub_0803E058
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	beq _0802BCA8
	subs r0, #1
	strb r0, [r7, #0xd]
	b _0802BCFE
	.align 2, 0
_0802BC94: .4byte 0x080E13BC
_0802BC98: .4byte gEwramData
_0802BC9C: .4byte 0x000131CC
_0802BCA0: .4byte sub_0803B9D0
_0802BCA4: .4byte 0x000131BE
_0802BCA8:
	movs r0, #0xb4
	strh r0, [r7, #0x24]
	bl sub_08022134
	ldrb r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_0802BCBE:
	ldrh r0, [r7, #0x24]
	movs r1, #0x24
	ldrsh r4, [r7, r1]
	cmp r4, #0
	beq _0802BCCE
	subs r0, #1
	strh r0, [r7, #0x24]
	b _0802BCFE
_0802BCCE:
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	ldr r0, _0802BD10 @ =gEwramData
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r1, [r7, r3]
	lsls r1, r1, #2
	ldr r3, _0802BD14 @ =0x00013124
	adds r0, r2, r3
	adds r0, r0, r1
	str r4, [r0]
	ldr r0, _0802BD18 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
_0802BCFE:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802BD10: .4byte gEwramData
_0802BD14: .4byte 0x00013124
_0802BD18: .4byte 0x000131BE

	thumb_func_start sub_0802BD1C
sub_0802BD1C: @ 0x0802BD1C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldrb r4, [r7, #0xa]
	cmp r4, #0
	beq _0802BD3A
	adds r6, r7, #0
	adds r6, #0x59
	cmp r4, #1
	bne _0802BD38
	b _0802BE74
_0802BD38:
	b _0802BEEA
_0802BD3A:
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _0802BD78
	ldr r0, _0802BD6C @ =gEwramData
	ldr r2, [r0]
	movs r0, #0x1a
	ldrsh r1, [r7, r0]
	lsls r1, r1, #2
	ldr r3, _0802BD70 @ =0x00013124
	adds r0, r2, r3
	adds r0, r0, r1
	str r4, [r0]
	ldr r4, _0802BD74 @ =0x000131BE
	adds r2, r2, r4
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
	b _0802BF3A
	.align 2, 0
_0802BD6C: .4byte gEwramData
_0802BD70: .4byte 0x00013124
_0802BD74: .4byte 0x000131BE
_0802BD78:
	adds r2, r7, #0
	adds r2, #0x58
	movs r0, #0x1f
	ands r3, r0
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	adds r6, r7, #0
	adds r6, #0x59
	ldrb r0, [r6]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r6]
	ldr r1, _0802BE3C @ =0x080E13BC
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	mov sb, r2
	ldr r0, [r1]
	ldr r5, [r1, #4]
	ldr r1, [r1, #8]
	mov r8, r1
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _0802BE40 @ =gEwramData
	ldr r1, [r4]
	ldr r3, _0802BE44 @ =0x000131CC
	adds r1, r1, r3
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r1, _0802BE44 @ =0x000131CC
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r7, #0
	mov r1, r8
	movs r3, #2
	bl sub_0803B924
	adds r5, r7, #0
	adds r5, #0x65
	movs r0, #9
	strb r0, [r5]
	ldr r0, _0802BE48 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	adds r3, r7, #0
	adds r3, #0x72
	ldrb r1, [r3]
	movs r0, #4
	adds r2, r1, #0
	orrs r2, r0
	mov r0, sb
	orrs r2, r0
	strb r2, [r3]
	adds r0, r7, #0
	adds r0, #0x64
	ldr r1, [r4]
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r4, _0802BE4C @ =0x0001017C
	adds r1, r1, r4
	adds r1, r1, r0
	ldr r1, [r1]
	ldrb r0, [r5]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _0802BE50
	movs r0, #0xfd
	ands r2, r0
	strb r2, [r3]
	adds r0, r7, #0
	bl sub_08042848
	b _0802BE56
	.align 2, 0
_0802BE3C: .4byte 0x080E13BC
_0802BE40: .4byte gEwramData
_0802BE44: .4byte 0x000131CC
_0802BE48: .4byte sub_0803B9D0
_0802BE4C: .4byte 0x0001017C
_0802BE50:
	movs r0, #2
	orrs r2, r0
	strb r2, [r3]
_0802BE56:
	movs r2, #0x8d
	lsls r2, r2, #2
	strh r2, [r7, #0x2e]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802BE6E
	rsbs r0, r2, #0
	strh r0, [r7, #0x2e]
_0802BE6E:
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_0802BE74:
	ldrh r0, [r7, #0x2e]
	ldrh r1, [r7, #0x2c]
	adds r0, r0, r1
	movs r4, #0
	strh r0, [r7, #0x2c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r7, #0
	bl sub_0806D3D8
	movs r2, #0x2c
	ldrsh r0, [r7, r2]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r7, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
	ldrb r0, [r7, #0xd]
	adds r0, #1
	strb r0, [r7, #0xd]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0802BEEA
	bl sub_08000A90
	ldr r1, _0802BF48 @ =0x000FFFFF
	ands r1, r0
	ldr r3, _0802BF4C @ =0xFFF80000
	adds r1, r1, r3
	ldr r4, [r7, #0x40]
	adds r4, r4, r1
	bl sub_08000A90
	ldr r2, _0802BF50 @ =0x0003FFFF
	ands r2, r0
	ldr r0, _0802BF54 @ =0xFFFE0000
	adds r2, r2, r0
	ldr r1, [r7, #0x44]
	adds r1, r1, r2
	adds r0, r4, #0
	movs r2, #0xf
	movs r3, #7
	bl sub_08045CEC
	adds r1, r0, #0
	cmp r1, #0
	beq _0802BEEA
	ldr r0, _0802BF58 @ =0xFFFFF000
	str r0, [r1, #0x54]
_0802BEEA:
	adds r0, r7, #0
	movs r1, #3
	bl sub_0806D128
	cmp r0, #0
	bne _0802BF00
	ldrb r1, [r6]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802BF3A
_0802BF00:
	ldrb r0, [r6]
	movs r1, #4
	orrs r0, r1
	strb r0, [r6]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	ldr r0, _0802BF5C @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	lsls r0, r0, #2
	ldr r3, _0802BF60 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r4, _0802BF64 @ =0x000131BE
	adds r2, r2, r4
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
_0802BF3A:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802BF48: .4byte 0x000FFFFF
_0802BF4C: .4byte 0xFFF80000
_0802BF50: .4byte 0x0003FFFF
_0802BF54: .4byte 0xFFFE0000
_0802BF58: .4byte 0xFFFFF000
_0802BF5C: .4byte gEwramData
_0802BF60: .4byte 0x00013124
_0802BF64: .4byte 0x000131BE

	thumb_func_start sub_0802BF68
sub_0802BF68: @ 0x0802BF68
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov sb, r0
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	beq _0802BF82
	cmp r0, #1
	beq _0802C01A
	b _0802C0BC
_0802BF82:
	ldr r1, _0802C0A0 @ =0x080E13BC
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r1, r2
	ldr r0, [r1]
	ldr r5, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r3, _0802C0A4 @ =gEwramData
	mov r8, r3
	ldr r1, [r3]
	ldr r2, _0802C0A8 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	mov r3, r8
	ldr r0, [r3]
	ldr r1, _0802C0A8 @ =0x000131CC
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	ldr r0, _0802C0AC @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	movs r1, #0xf
	bl sub_08042A54
	mov r2, r8
	ldr r1, [r2]
	ldr r3, _0802C0B0 @ =0x000131BE
	adds r1, r1, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0xd2
	lsls r0, r0, #1
	bl sub_080D7910
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r7, #0
	mov r1, sb
	movs r2, #8
	bl sub_08031EA4
_0802C01A:
	ldrb r0, [r7, #0xd]
	adds r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bne _0802C06E
	ldr r1, _0802C0B4 @ =sub_0802BD1C
	adds r0, r7, #0
	bl sub_08023530
	adds r4, r0, #0
	cmp r4, #0
	beq _0802C06E
	movs r0, #0x95
	lsls r0, r0, #1
	bl sub_080D7910
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #0xa
	bl sub_08031EA4
	movs r2, #0xc0
	lsls r2, r2, #9
	str r2, [r4, #0x48]
	movs r3, #0x80
	lsls r3, r3, #3
	str r3, [r4, #0x50]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802C06E
	rsbs r0, r2, #0
	str r0, [r4, #0x48]
	rsbs r0, r3, #0
	str r0, [r4, #0x50]
_0802C06E:
	adds r0, r7, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _0802C0BC
	ldr r0, _0802C0A4 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	lsls r0, r0, #2
	ldr r3, _0802C0B8 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _0802C0B0 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
	b _0802C0C8
	.align 2, 0
_0802C0A0: .4byte 0x080E13BC
_0802C0A4: .4byte gEwramData
_0802C0A8: .4byte 0x000131CC
_0802C0AC: .4byte sub_0803B9D0
_0802C0B0: .4byte 0x000131BE
_0802C0B4: .4byte sub_0802BD1C
_0802C0B8: .4byte 0x00013124
_0802C0BC:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
_0802C0C8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0802C0D4
sub_0802C0D4: @ 0x0802C0D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r5, [r7, #0x14]
	movs r0, #0x59
	adds r0, r0, r7
	mov r8, r0
	ldrb r0, [r0]
	movs r1, #4
	mov sl, r1
	mov r2, sl
	orrs r0, r2
	mov r3, r8
	strb r0, [r3]
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	beq _0802C102
	cmp r0, #1
	beq _0802C1B8
	b _0802C220
_0802C102:
	ldr r1, _0802C208 @ =0x080E13BC
	movs r0, #0xae
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r4, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r1, _0802C20C @ =gEwramData
	mov sb, r1
	ldr r1, [r1]
	ldr r2, _0802C210 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	mov r3, sb
	ldr r0, [r3]
	ldr r1, _0802C210 @ =0x000131CC
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xe
	strb r0, [r1]
	ldr r0, _0802C214 @ =sub_0803B9D0
	str r0, [r7, #4]
	mov r2, r8
	ldrb r0, [r2]
	movs r4, #2
	orrs r0, r4
	strb r0, [r2]
	movs r0, #1
	movs r1, #0xf
	bl sub_08042A54
	adds r0, r7, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	adds r1, r7, #0
	adds r1, #0x72
	ldrb r0, [r1]
	mov r3, sl
	orrs r0, r3
	orrs r0, r4
	strb r0, [r1]
	adds r0, r7, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_08031EA4
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	strb r0, [r7, #0xc]
	mov r0, sb
	ldr r1, [r0]
	ldr r2, _0802C218 @ =0x000131BE
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, _0802C21C @ =0x000001A9
	bl sub_080D7910
	movs r0, #1
	strb r0, [r7, #0xa]
_0802C1B8:
	adds r0, r7, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_08031EA4
	adds r3, r7, #0
	adds r3, #0x58
	movs r0, #1
	ldrb r1, [r7, #0xc]
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r7, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #0xc
	bne _0802C1EC
	movs r0, #0xce
	bl sub_08013D60
_0802C1EC:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802C220
	movs r0, #0xce
	bl sub_08013E18
	ldr r0, _0802C20C @ =gEwramData
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r0, [r7, r3]
	b _0802C238
	.align 2, 0
_0802C208: .4byte 0x080E13BC
_0802C20C: .4byte gEwramData
_0802C210: .4byte 0x000131CC
_0802C214: .4byte sub_0803B9D0
_0802C218: .4byte 0x000131BE
_0802C21C: .4byte 0x000001A9
_0802C220:
	adds r0, r7, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _0802C264
	movs r0, #0xce
	bl sub_08013E18
	ldr r0, _0802C258 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
_0802C238:
	lsls r0, r0, #2
	ldr r3, _0802C25C @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _0802C260 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
	b _0802C2B4
	.align 2, 0
_0802C258: .4byte gEwramData
_0802C25C: .4byte 0x00013124
_0802C260: .4byte 0x000131BE
_0802C264:
	adds r2, r7, #0
	adds r2, #0x64
	ldr r0, _0802C2A0 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0802C2A4 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r7, #0
	adds r0, #0x65
	ldrb r0, [r0]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _0802C2A8
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	adds r1, r3, #0
	bl sub_08042848
	b _0802C2B4
	.align 2, 0
_0802C2A0: .4byte gEwramData
_0802C2A4: .4byte 0x0001017C
_0802C2A8:
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_0802C2B4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802C2C4
sub_0802C2C4: @ 0x0802C2C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov sb, r0
	movs r1, #0x59
	adds r1, r1, r7
	mov r8, r1
	ldrb r0, [r1]
	movs r2, #4
	mov sl, r2
	mov r3, sl
	orrs r0, r3
	strb r0, [r1]
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	beq _0802C3BE
	cmp r0, #1
	bgt _0802C2F6
	cmp r0, #0
	beq _0802C2FC
	b _0802C3EC
_0802C2F6:
	cmp r0, #2
	beq _0802C3DA
	b _0802C3EC
_0802C2FC:
	ldr r1, _0802C39C @ =0x080E13BC
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r4, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r5, _0802C3A0 @ =gEwramData
	ldr r1, [r5]
	ldr r2, _0802C3A4 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r5]
	ldr r3, _0802C3A4 @ =0x000131CC
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xe
	strb r0, [r1]
	ldr r0, _0802C3A8 @ =sub_0803B9D0
	str r0, [r7, #4]
	mov r1, r8
	ldrb r0, [r1]
	movs r4, #2
	orrs r0, r4
	strb r0, [r1]
	movs r0, #1
	movs r1, #0x3c
	bl sub_08042A54
	adds r0, r7, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	adds r1, r7, #0
	adds r1, #0x72
	ldrb r0, [r1]
	mov r2, sl
	orrs r0, r2
	orrs r0, r4
	strb r0, [r1]
	ldr r1, [r5]
	ldr r3, _0802C3AC @ =0x000131BE
	adds r1, r1, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	bl sub_080213F4
	cmp r0, #0
	beq _0802C3B4
	ldr r0, _0802C3B0 @ =0x0000019F
	bl sub_080D7910
	b _0802C3BA
	.align 2, 0
_0802C39C: .4byte 0x080E13BC
_0802C3A0: .4byte gEwramData
_0802C3A4: .4byte 0x000131CC
_0802C3A8: .4byte sub_0803B9D0
_0802C3AC: .4byte 0x000131BE
_0802C3B0: .4byte 0x0000019F
_0802C3B4:
	ldr r0, _0802C3E4 @ =0x000001A1
	bl sub_080D7910
_0802C3BA:
	movs r0, #1
	strb r0, [r7, #0xa]
_0802C3BE:
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	movs r3, #0
	bl sub_08031EA4
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #1
	ands r0, r1
	subs r1, #0x80
	cmp r0, r1
	beq _0802C3EC
_0802C3DA:
	ldr r0, _0802C3E8 @ =gEwramData
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r0, [r7, r3]
	b _0802C3FE
	.align 2, 0
_0802C3E4: .4byte 0x000001A1
_0802C3E8: .4byte gEwramData
_0802C3EC:
	adds r0, r7, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _0802C428
	ldr r0, _0802C41C @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
_0802C3FE:
	lsls r0, r0, #2
	ldr r3, _0802C420 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _0802C424 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
	b _0802C478
	.align 2, 0
_0802C41C: .4byte gEwramData
_0802C420: .4byte 0x00013124
_0802C424: .4byte 0x000131BE
_0802C428:
	adds r2, r7, #0
	adds r2, #0x64
	ldr r0, _0802C464 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0802C468 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r7, #0
	adds r0, #0x65
	ldrb r0, [r0]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _0802C46C
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	adds r1, r3, #0
	bl sub_08042848
	b _0802C478
	.align 2, 0
_0802C464: .4byte gEwramData
_0802C468: .4byte 0x0001017C
_0802C46C:
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_0802C478:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802C488
sub_0802C488: @ 0x0802C488
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldr r7, [r6, #0x14]
	adds r1, r6, #0
	adds r1, #0x59
	ldrb r0, [r1]
	movs r2, #4
	mov sb, r2
	mov r3, sb
	orrs r0, r3
	strb r0, [r1]
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	beq _0802C5A8
	cmp r0, #1
	bgt _0802C4B4
	cmp r0, #0
	beq _0802C4BC
	b _0802C688
_0802C4B4:
	cmp r0, #2
	bne _0802C4BA
	b _0802C656
_0802C4BA:
	b _0802C688
_0802C4BC:
	ldr r1, _0802C5D4 @ =0x080E13BC
	movs r0, #0xba
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r4, [r1, #4]
	ldr r5, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r1, _0802C5D8 @ =gEwramData
	mov r8, r1
	ldr r1, [r1]
	ldr r2, _0802C5DC @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	mov r3, r8
	ldr r0, [r3]
	ldr r1, _0802C5DC @ =0x000131CC
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	ldr r0, _0802C5E0 @ =sub_0803B9D0
	str r0, [r6, #4]
	movs r0, #1
	movs r1, #0x14
	bl sub_08042A54
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r6, #0
	adds r3, #0x58
	movs r4, #1
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r5, #0x41
	rsbs r5, r5, #0
	adds r0, r5, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r6, #0x2c]
	ldr r2, _0802C5E4 @ =0x0000FEB9
	strh r2, [r6, #0x2e]
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802C558
	ldr r0, _0802C5E8 @ =0xFFFF7000
	strh r0, [r6, #0x2c]
	rsbs r0, r2, #0
	strh r0, [r6, #0x2e]
_0802C558:
	ldrb r2, [r3]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1f
	movs r0, #1
	eors r1, r0
	ands r1, r4
	lsls r1, r1, #6
	adds r0, r5, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0x32
	strb r0, [r6, #0xd]
	adds r0, r6, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r0, [r2]
	mov r3, sb
	orrs r0, r3
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xee
	bl sub_080D7910
	mov r0, r8
	ldr r1, [r0]
	ldr r2, _0802C5EC @ =0x000131BE
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
_0802C5A8:
	ldrb r0, [r6, #0xd]
	ldr r4, _0802C5F0 @ =0x0000028F
	muls r0, r4, r0
	bl sub_080009E4
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	cmp r1, #0
	bge _0802C5F4
	ldrb r0, [r6, #0xd]
	muls r0, r4, r0
	bl sub_080009E4
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	rsbs r1, r1, #0
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	b _0802C604
	.align 2, 0
_0802C5D4: .4byte 0x080E13BC
_0802C5D8: .4byte gEwramData
_0802C5DC: .4byte 0x000131CC
_0802C5E0: .4byte sub_0803B9D0
_0802C5E4: .4byte 0x0000FEB9
_0802C5E8: .4byte 0xFFFF7000
_0802C5EC: .4byte 0x000131BE
_0802C5F0: .4byte 0x0000028F
_0802C5F4:
	ldrb r0, [r6, #0xd]
	muls r0, r4, r0
	bl sub_080009E4
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	asrs r1, r1, #0x10
_0802C604:
	str r1, [r6, #0x24]
	ldrh r0, [r6, #0x2e]
	ldrh r3, [r6, #0x2c]
	adds r0, r0, r3
	strh r0, [r6, #0x2c]
	movs r1, #0x2c
	ldrsh r0, [r6, r1]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r0, r2
	bl sub_080009E4
	ldr r1, [r6, #0x24]
	adds r4, r1, #0
	muls r4, r0, r4
	movs r3, #0x2c
	ldrsh r0, [r6, r3]
	bl sub_080009E4
	ldr r1, [r6, #0x24]
	muls r1, r0, r1
	ldr r0, [r7, #0x40]
	adds r0, r0, r4
	str r0, [r6, #0x40]
	ldr r0, [r7, #0x44]
	adds r0, r0, r1
	ldr r1, _0802C64C @ =0xFFEE0000
	adds r0, r0, r1
	str r0, [r6, #0x44]
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _0802C650
	subs r0, #1
	strb r0, [r6, #0xd]
	b _0802C688
	.align 2, 0
_0802C64C: .4byte 0xFFEE0000
_0802C650:
	movs r0, #2
	strb r0, [r6, #0xa]
	b _0802C688
_0802C656:
	ldr r0, _0802C67C @ =gEwramData
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r0, [r6, r3]
	lsls r0, r0, #2
	ldr r3, _0802C680 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _0802C684 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r6, #0
	bl sub_08000E14
	b _0802C6E0
	.align 2, 0
_0802C67C: .4byte gEwramData
_0802C680: .4byte 0x00013124
_0802C684: .4byte 0x000131BE
_0802C688:
	adds r0, r6, #0
	bl sub_0803F17C
	adds r2, r6, #0
	adds r2, #0x64
	ldr r0, _0802C6CC @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0802C6D0 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r6, #0
	adds r0, #0x65
	ldrb r0, [r0]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _0802C6D4
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r1, r3, #0
	bl sub_08042848
	b _0802C6E0
	.align 2, 0
_0802C6CC: .4byte gEwramData
_0802C6D0: .4byte 0x0001017C
_0802C6D4:
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_0802C6E0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0802C6EC
sub_0802C6EC: @ 0x0802C6EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r0, [r6, #0x14]
	mov r8, r0
	ldrb r0, [r6, #0xa]
	cmp r0, #5
	bls _0802C700
	b _0802C8C4
_0802C700:
	lsls r0, r0, #2
	ldr r1, _0802C70C @ =_0802C710
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802C70C: .4byte _0802C710
_0802C710: @ jump table
	.4byte _0802C728 @ case 0
	.4byte _0802C7FE @ case 1
	.4byte _0802C850 @ case 2
	.4byte _0802C862 @ case 3
	.4byte _0802C878 @ case 4
	.4byte _0802C892 @ case 5
_0802C728:
	ldr r1, _0802C834 @ =0x080E13BC
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r1, r2
	ldr r0, [r1]
	ldr r4, [r1, #4]
	ldr r5, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r7, _0802C838 @ =gEwramData
	ldr r1, [r7]
	ldr r3, _0802C83C @ =0x000131CC
	adds r1, r1, r3
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r7]
	ldr r1, _0802C83C @ =0x000131CC
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #2
	bl sub_0803B924
	bl sub_08000A90
	bl sub_08000A90
	movs r1, #3
	bl __umodsi3
	strb r0, [r6, #0xb]
	ldrb r1, [r6, #0xb]
	lsls r0, r1, #2
	adds r0, r0, r1
	strb r0, [r6, #0xc]
	ldr r0, _0802C840 @ =sub_0803B9D0
	str r0, [r6, #4]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r3, #0x1a
	rsbs r3, r3, #0
	adds r0, r6, #0
	mov r1, r8
	movs r2, #8
	bl sub_08031EA4
	movs r2, #0x90
	lsls r2, r2, #9
	str r2, [r6, #0x48]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802C7BC
	rsbs r0, r2, #0
	str r0, [r6, #0x48]
_0802C7BC:
	movs r0, #1
	movs r1, #0x14
	bl sub_08042A54
	ldr r2, _0802C844 @ =sub_0802D9B4
	adds r0, r6, #0
	movs r1, #5
	movs r3, #0
	bl sub_0804277C
	ldr r1, _0802C848 @ =0x0C0CFAFA
	adds r0, r6, #0
	bl sub_08042884
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xaf
	lsls r0, r0, #1
	bl sub_080D7910
	ldr r1, [r7]
	ldr r2, _0802C84C @ =0x000131BE
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
_0802C7FE:
	movs r3, #0x24
	ldrsh r0, [r6, r3]
	movs r1, #0xa
	bl __divsi3
	ldrb r1, [r6, #0xc]
	adds r1, r1, r0
	adds r0, r6, #0
	adds r0, #0x65
	strb r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r6, #0
	bl sub_0806D3D8
	ldrh r0, [r6, #0x24]
	adds r0, #1
	strh r0, [r6, #0x24]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _0802C8C4
	movs r0, #0x30
	strb r0, [r6, #0xd]
	movs r0, #2
	strb r0, [r6, #0xa]
	b _0802C8C4
	.align 2, 0
_0802C834: .4byte 0x080E13BC
_0802C838: .4byte gEwramData
_0802C83C: .4byte 0x000131CC
_0802C840: .4byte sub_0803B9D0
_0802C844: .4byte sub_0802D9B4
_0802C848: .4byte 0x0C0CFAFA
_0802C84C: .4byte 0x000131BE
_0802C850:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r6, #0
	bl sub_0806D3D8
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	bne _0802C87E
	b _0802C884
_0802C862:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r6, #0
	bl sub_0806D3D8
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	bne _0802C87E
	movs r0, #5
	strb r0, [r6, #0xa]
	b _0802C8C4
_0802C878:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _0802C884
_0802C87E:
	subs r0, #1
	strb r0, [r6, #0xd]
	b _0802C8C4
_0802C884:
	movs r0, #1
	strb r0, [r6, #0xf]
	movs r0, #0x10
	strb r0, [r6, #0xd]
	movs r0, #3
	strb r0, [r6, #0xa]
	b _0802C8C4
_0802C892:
	ldr r0, _0802C8B8 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r6, r1]
	lsls r0, r0, #2
	ldr r3, _0802C8BC @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _0802C8C0 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r6, #0
	bl sub_08000E14
	b _0802C92C
	.align 2, 0
_0802C8B8: .4byte gEwramData
_0802C8BC: .4byte 0x00013124
_0802C8C0: .4byte 0x000131BE
_0802C8C4:
	ldrb r0, [r6, #0xa]
	cmp r0, #2
	bhi _0802C8E6
	ldrb r0, [r6, #0x18]
	cmp r0, #0
	beq _0802C8E6
	movs r0, #0
	str r0, [r6, #0x48]
	ldrb r0, [r6, #0xc]
	adds r0, #4
	adds r1, r6, #0
	adds r1, #0x65
	strb r0, [r1]
	movs r0, #4
	strb r0, [r6, #0xa]
	movs r0, #0x10
	strb r0, [r6, #0xd]
_0802C8E6:
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806D128
	adds r2, r6, #0
	adds r2, #0x59
	cmp r0, #0
	bne _0802C900
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802C92C
_0802C900:
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0802C938 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r6, r1]
	lsls r0, r0, #2
	ldr r3, _0802C93C @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _0802C940 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r6, #0
	bl sub_08000E14
_0802C92C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C938: .4byte gEwramData
_0802C93C: .4byte 0x00013124
_0802C940: .4byte 0x000131BE

	thumb_func_start sub_0802C944
sub_0802C944: @ 0x0802C944
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	adds r5, r3, #0
	adds r5, #0x10
	ldr r2, _0802C994 @ =gEwramData
	ldr r4, [r2]
	ldrb r1, [r3, #0xc]
	lsls r1, r1, #2
	ldr r6, _0802C998 @ =0x00013124
	adds r0, r4, r6
	adds r0, r0, r1
	ldr r6, [r0]
	ldr r7, _0802C99C @ =0x000131BE
	adds r0, r4, r7
	ldrb r0, [r0]
	movs r1, #0
	cmp r0, #0
	bne _0802C974
	subs r7, #0x9a
	adds r0, r4, r7
	ldr r0, [r0]
	cmp r0, #0
	bne _0802C974
	movs r1, #1
_0802C974:
	cmp r1, #0
	bne _0802C98A
	ldr r0, [r2]
	ldrb r1, [r3, #0xc]
	lsls r1, r1, #2
	ldr r2, _0802C998 @ =0x00013124
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0802C9A0
_0802C98A:
	adds r0, r3, #0
	bl sub_08000E14
	b _0802C9E0
	.align 2, 0
_0802C994: .4byte gEwramData
_0802C998: .4byte 0x00013124
_0802C99C: .4byte 0x000131BE
_0802C9A0:
	ldrb r0, [r3, #0xa]
	cmp r0, #0
	bne _0802C9BA
	adds r2, r3, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r3, #0xa]
	adds r0, #1
	strb r0, [r3, #0xa]
_0802C9BA:
	movs r2, #9
	adds r1, r5, #0
	adds r1, #0x20
_0802C9C0:
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	subs r1, #4
	subs r2, #1
	cmp r2, #0
	bgt _0802C9C0
	adds r0, r6, #0
	bl sub_08002188
	strh r0, [r5]
	adds r0, r6, #0
	bl sub_080021A8
	strh r0, [r5, #2]
_0802C9E0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802C9E8
sub_0802C9E8: @ 0x0802C9E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r4, r1, #0
	mov sl, r2
	bl sub_0803B998
	mov sb, r0
	adds r2, r7, #0
	adds r2, #0x64
	ldr r0, _0802CA28 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0802CA2C @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r6, [r1]
	mov r8, r6
	movs r0, #0x49
	movs r1, #0xcf
	adds r2, r4, #0
	bl sub_08000DA0
	adds r5, r0, #0
	cmp r5, #0
	bne _0802CA30
	movs r0, #0
	b _0802CAB2
	.align 2, 0
_0802CA28: .4byte gEwramData
_0802CA2C: .4byte 0x0001017C
_0802CA30:
	cmp r6, #0
	bne _0802CA3E
	adds r0, r5, #0
	bl sub_08000E14
	movs r0, #0
	b _0802CAB2
_0802CA3E:
	adds r0, r7, #0
	adds r0, #0x5a
	ldrb r3, [r0]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1c
	adds r0, r5, #0
	mov r1, r8
	mov r2, sb
	bl sub_0803B924
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	adds r0, r7, #0
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
	ldrh r0, [r7, #0x1a]
	strb r0, [r5, #0xc]
	movs r6, #9
	movs r0, #0x59
	adds r0, r0, r5
	mov r8, r0
	adds r4, r5, #0
	adds r4, #0x34
_0802CA8A:
	adds r0, r7, #0
	bl sub_08002188
	strh r0, [r4]
	adds r0, r7, #0
	bl sub_080021A8
	strh r0, [r4, #2]
	subs r4, #4
	subs r6, #1
	cmp r6, #0
	bne _0802CA8A
	mov r1, sl
	str r1, [r5, #4]
	mov r2, r8
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
_0802CAB2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0802CAC0
sub_0802CAC0: @ 0x0802CAC0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldrb r0, [r7, #0xa]
	cmp r0, #4
	bls _0802CACC
	b _0802CC50
_0802CACC:
	lsls r0, r0, #2
	ldr r1, _0802CAD8 @ =_0802CADC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802CAD8: .4byte _0802CADC
_0802CADC: @ jump table
	.4byte _0802CAF0 @ case 0
	.4byte _0802CB82 @ case 1
	.4byte _0802CBFE @ case 2
	.4byte _0802CC0A @ case 3
	.4byte _0802CC1C @ case 4
_0802CAF0:
	ldr r1, _0802CBC4 @ =0x080E13BC
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r5, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _0802CBC8 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _0802CBCC @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r3, _0802CBCC @ =0x000131CC
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r7, #0
	adds r0, #0x65
	movs r4, #1
	strb r4, [r0]
	ldr r0, _0802CBD0 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802CB56
	ldr r0, [r7, #0x48]
	rsbs r0, r0, #0
	str r0, [r7, #0x48]
_0802CB56:
	ldr r2, _0802CBD4 @ =sub_0802D9B4
	adds r0, r7, #0
	movs r1, #5
	movs r3, #0
	bl sub_0804277C
	ldr r1, _0802CBD8 @ =0x0202FFFF
	adds r0, r7, #0
	bl sub_08042884
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	strb r4, [r7, #0xa]
	ldr r1, _0802CBDC @ =sub_0802C944
	ldr r2, _0802CBE0 @ =sub_0802DC60
	adds r0, r7, #0
	bl sub_0802C9E8
_0802CB82:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r7, #0
	bl sub_0806D3D8
	ldrb r0, [r7, #0x18]
	cmp r0, #0
	bne _0802CC16
	adds r0, r7, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r7, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802CBE4
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, #6
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	bl sub_0800207C
	b _0802CBF2
	.align 2, 0
_0802CBC4: .4byte 0x080E13BC
_0802CBC8: .4byte gEwramData
_0802CBCC: .4byte 0x000131CC
_0802CBD0: .4byte sub_0803B9D0
_0802CBD4: .4byte sub_0802D9B4
_0802CBD8: .4byte 0x0202FFFF
_0802CBDC: .4byte sub_0802C944
_0802CBE0: .4byte sub_0802DC60
_0802CBE4:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, #6
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	bl sub_08002058
_0802CBF2:
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802CC50
	movs r0, #2
	strb r0, [r7, #0xa]
	b _0802CC50
_0802CBFE:
	movs r0, #0x10
	strb r0, [r7, #0xd]
	movs r0, #1
	strb r0, [r7, #0xf]
	movs r0, #3
	strb r0, [r7, #0xa]
_0802CC0A:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	beq _0802CC16
	subs r0, #1
	strb r0, [r7, #0xd]
	b _0802CC50
_0802CC16:
	movs r0, #4
	strb r0, [r7, #0xa]
	b _0802CC50
_0802CC1C:
	ldr r0, _0802CC44 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	lsls r0, r0, #2
	ldr r3, _0802CC48 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _0802CC4C @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08000E14
	b _0802CC7E
	.align 2, 0
_0802CC44: .4byte gEwramData
_0802CC48: .4byte 0x00013124
_0802CC4C: .4byte 0x000131BE
_0802CC50:
	adds r0, r7, #0
	movs r1, #4
	bl sub_0806D128
	adds r2, r7, #0
	adds r2, #0x59
	cmp r0, #0
	bne _0802CC6A
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802CC76
_0802CC6A:
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #4
	strb r0, [r7, #0xa]
_0802CC76:
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
_0802CC7E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0802CC84
sub_0802CC84: @ 0x0802CC84
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x14]
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0802CCD2
	cmp r0, #1
	bgt _0802CC9A
	cmp r0, #0
	beq _0802CCA4
	b _0802CC9E
_0802CC9A:
	cmp r0, #2
	beq _0802CD28
_0802CC9E:
	adds r6, r4, #0
	adds r6, #0x59
	b _0802CD5C
_0802CCA4:
	movs r0, #1
	movs r1, #0x14
	bl sub_08042A54
	ldr r0, _0802CCDC @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0802CCE0 @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #1
	strb r0, [r4, #0xa]
	movs r3, #0x1a
	rsbs r3, r3, #0
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x14
	bl sub_08031EA4
	movs r0, #0xe6
	bl sub_080D7910
_0802CCD2:
	movs r5, #0
	adds r6, r4, #0
	adds r6, #0x59
	b _0802CD0A
	.align 2, 0
_0802CCDC: .4byte gEwramData
_0802CCE0: .4byte 0x000131BE
_0802CCE4:
	ldr r0, [r4, #0x40]
	str r0, [r3, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r3, #0x44]
	movs r0, #0xa0
	lsls r0, r0, #0xb
	str r0, [r3, #0x48]
	adds r3, #0x58
	movs r0, #1
	adds r1, r5, #0
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r5, #1
_0802CD0A:
	cmp r5, #1
	bgt _0802CD1C
	ldr r1, _0802CD24 @ =sub_0802CAC0
	adds r0, r4, #0
	bl sub_08023530
	adds r3, r0, #0
	cmp r3, #0
	bne _0802CCE4
_0802CD1C:
	movs r0, #2
	strb r0, [r4, #0xa]
	b _0802CD5C
	.align 2, 0
_0802CD24: .4byte sub_0802CAC0
_0802CD28:
	ldr r0, _0802CD50 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	lsls r0, r0, #2
	ldr r3, _0802CD54 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _0802CD58 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_08000E14
	b _0802CD64
	.align 2, 0
_0802CD50: .4byte gEwramData
_0802CD54: .4byte 0x00013124
_0802CD58: .4byte 0x000131BE
_0802CD5C:
	ldrb r0, [r6]
	movs r1, #4
	orrs r0, r1
	strb r0, [r6]
_0802CD64:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802CD6C
sub_0802CD6C: @ 0x0802CD6C
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	adds r6, r3, #0
	adds r6, #0x10
	ldr r2, _0802CDBC @ =gEwramData
	ldr r4, [r2]
	ldrb r1, [r3, #0xc]
	lsls r1, r1, #2
	ldr r5, _0802CDC0 @ =0x00013124
	adds r0, r4, r5
	adds r0, r0, r1
	ldr r5, [r0]
	ldr r7, _0802CDC4 @ =0x000131BE
	adds r0, r4, r7
	ldrb r0, [r0]
	movs r1, #0
	cmp r0, #0
	bne _0802CD9C
	subs r7, #0x9a
	adds r0, r4, r7
	ldr r0, [r0]
	cmp r0, #0
	bne _0802CD9C
	movs r1, #1
_0802CD9C:
	cmp r1, #0
	bne _0802CDB2
	ldr r0, [r2]
	ldrb r1, [r3, #0xc]
	lsls r1, r1, #2
	ldr r2, _0802CDC0 @ =0x00013124
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0802CDC8
_0802CDB2:
	adds r0, r3, #0
	bl sub_08000E14
	b _0802CE18
	.align 2, 0
_0802CDBC: .4byte gEwramData
_0802CDC0: .4byte 0x00013124
_0802CDC4: .4byte 0x000131BE
_0802CDC8:
	ldrb r1, [r3, #0xa]
	cmp r1, #0
	beq _0802CDD4
	cmp r1, #1
	beq _0802CDE4
	b _0802CDF2
_0802CDD4:
	adds r2, r3, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _0802CDEC
_0802CDE4:
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _0802CDF2
	strb r1, [r3, #0xf]
_0802CDEC:
	ldrb r0, [r3, #0xa]
	adds r0, #1
	strb r0, [r3, #0xa]
_0802CDF2:
	movs r2, #9
	adds r1, r6, #0
	adds r1, #0x20
_0802CDF8:
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	subs r1, #4
	subs r2, #1
	cmp r2, #0
	bgt _0802CDF8
	adds r0, r5, #0
	bl sub_08002188
	strh r0, [r6]
	adds r0, r5, #0
	bl sub_080021A8
	strh r0, [r6, #2]
_0802CE18:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802CE20
sub_0802CE20: @ 0x0802CE20
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	movs r6, #0
	mov r8, r6
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	adds r0, r5, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	blt _0802CE6E
	lsls r4, r4, #0x10
	asrs r0, r4, #0x10
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r2, r5, #0
	adds r2, #0x56
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	bl sub_08001D94
	b _0802CE84
_0802CE6E:
	lsls r4, r4, #0x10
	asrs r0, r4, #0x10
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r2, r5, #0
	adds r2, #0x56
	movs r3, #0
	ldrsh r2, [r2, r3]
	subs r1, r1, r2
	bl sub_08001C1C
_0802CE84:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	beq _0802CEA4
	ldr r0, _0802CEE8 @ =0x03002CB0
	ldr r2, _0802CEEC @ =0x0000100D
	adds r0, r0, r2
	ldrb r7, [r0]
	adds r2, r5, #0
	adds r2, #0x46
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldrh r3, [r2]
	adds r0, r0, r3
	strh r0, [r2]
	movs r6, #2
_0802CEA4:
	adds r0, r5, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bge _0802CEF0
	asrs r0, r4, #0x10
	adds r1, r5, #0
	adds r1, #0x52
	movs r3, #0
	ldrsh r1, [r1, r3]
	subs r0, r0, r1
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	bl sub_0800207C
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	beq _0802CF24
	adds r2, r5, #0
	adds r2, #0x42
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	cmp r6, #0
	bne _0802CF28
	movs r6, #1
	b _0802CF28
	.align 2, 0
_0802CEE8: .4byte 0x03002CB0
_0802CEEC: .4byte 0x0000100D
_0802CEF0:
	cmp r0, #0
	ble _0802CF24
	asrs r0, r4, #0x10
	adds r1, r5, #0
	adds r1, #0x52
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r0, r0, r1
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	bl sub_08002058
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	beq _0802CF24
	adds r2, r5, #0
	adds r2, #0x42
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	cmp r6, #0
	bne _0802CF28
	movs r6, #1
_0802CF24:
	cmp r6, #0
	beq _0802CFBA
_0802CF28:
	cmp r6, #2
	bne _0802CF76
	movs r0, #0xc0
	ands r0, r7
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802CF76
	lsrs r0, r0, #0x1e
	cmp r0, #2
	beq _0802CF54
	cmp r0, #2
	bgt _0802CF46
	cmp r0, #1
	beq _0802CF4C
	b _0802CF64
_0802CF46:
	cmp r0, #3
	beq _0802CF60
	b _0802CF64
_0802CF4C:
	movs r2, #0x80
	lsls r2, r2, #7
	mov r8, r2
	b _0802CF64
_0802CF54:
	ldr r3, _0802CF5C @ =0x00005556
	mov r8, r3
	b _0802CF64
	.align 2, 0
_0802CF5C: .4byte 0x00005556
_0802CF60:
	ldr r0, _0802CF8C @ =0x000063D8
	mov r8, r0
_0802CF64:
	movs r0, #4
	ands r7, r0
	cmp r7, #0
	beq _0802CF76
	mov r1, r8
	lsls r0, r1, #0x10
	rsbs r0, r0, #0
	lsrs r0, r0, #0x10
	mov r8, r0
_0802CF76:
	mov r2, r8
	lsls r0, r2, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _0802CF90
	movs r0, #0xb5
	lsls r0, r0, #1
	bl sub_080D7910
	b _0802CF96
	.align 2, 0
_0802CF8C: .4byte 0x000063D8
_0802CF90:
	ldr r0, _0802CFA4 @ =0x0000016B
	bl sub_080D7910
_0802CF96:
	cmp r6, #1
	bne _0802CFAC
	ldrh r1, [r5, #0x2c]
	ldr r3, _0802CFA8 @ =0xFFFF8000
	adds r0, r3, #0
	subs r0, r0, r1
	b _0802CFB0
	.align 2, 0
_0802CFA4: .4byte 0x0000016B
_0802CFA8: .4byte 0xFFFF8000
_0802CFAC:
	ldrh r0, [r5, #0x2c]
	rsbs r0, r0, #0
_0802CFB0:
	strh r0, [r5, #0x2c]
	asrs r0, r4, #0x10
	ldrh r1, [r5, #0x2c]
	adds r0, r0, r1
	strh r0, [r5, #0x2c]
_0802CFBA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0802CFC4
sub_0802CFC4: @ 0x0802CFC4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r0, [r6, #0x14]
	mov r8, r0
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	bne _0802CFD8
	b _0802D0E6
_0802CFD8:
	cmp r0, #1
	bgt _0802CFE2
	cmp r0, #0
	beq _0802CFEA
	b _0802D174
_0802CFE2:
	cmp r0, #2
	bne _0802CFE8
	b _0802D142
_0802CFE8:
	b _0802D174
_0802CFEA:
	ldr r1, _0802D14C @ =0x080E13BC
	movs r2, #0xc6
	lsls r2, r2, #1
	adds r1, r1, r2
	ldr r0, [r1]
	ldr r4, [r1, #4]
	ldr r5, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r7, _0802D150 @ =gEwramData
	ldr r1, [r7]
	ldr r3, _0802D154 @ =0x000131CC
	adds r1, r1, r3
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r7]
	ldr r1, _0802D154 @ =0x000131CC
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldr r0, _0802D158 @ =sub_0803B9D0
	str r0, [r6, #4]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r3, #0x1a
	rsbs r3, r3, #0
	adds r0, r6, #0
	mov r1, r8
	movs r2, #0xc
	bl sub_08031EA4
	bl sub_08000A90
	ldr r2, _0802D15C @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #5
	adds r1, r3, #0
	adds r2, r0, r1
	strh r2, [r6, #0x2c]
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r6, #0x34]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802D08A
	ldr r1, _0802D160 @ =0xFFFF8000
	adds r0, r1, #0
	subs r0, r0, r2
	strh r0, [r6, #0x2c]
_0802D08A:
	movs r0, #1
	movs r1, #0xf
	bl sub_08042A54
	adds r0, r6, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r1, _0802D164 @ =0x0808FCFC
	adds r0, r6, #0
	bl sub_08042884
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r1, #0
	orrs r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #0x24]
	adds r1, r6, #0
	adds r1, #0x52
	movs r0, #4
	strh r0, [r1]
	adds r1, #4
	strh r0, [r1]
	ldr r1, [r7]
	ldr r2, _0802D168 @ =0x000131BE
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _0802D16C @ =sub_0802CD6C
	ldr r2, _0802D170 @ =sub_0802DCB0
	adds r0, r6, #0
	bl sub_0802C9E8
	movs r0, #1
	strb r0, [r6, #0xa]
_0802D0E6:
	ldr r0, [r6, #0x2c]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r0, r3
	bl sub_080009E4
	ldr r1, [r6, #0x34]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	str r0, [r6, #0x48]
	ldr r0, [r6, #0x2c]
	bl sub_080009E4
	ldr r1, [r6, #0x34]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	str r0, [r6, #0x4c]
	adds r0, r6, #0
	bl sub_0802CE20
	ldrh r0, [r6, #0x24]
	subs r1, r0, #1
	strh r1, [r6, #0x24]
	ldrb r0, [r6, #0xb]
	cmp r0, #0
	bne _0802D136
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	bne _0802D136
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #1
	strb r0, [r6, #0xb]
_0802D136:
	movs r1, #0x24
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bne _0802D174
	movs r0, #2
	strb r0, [r6, #0xb]
_0802D142:
	ldr r0, _0802D150 @ =gEwramData
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r0, [r6, r3]
	b _0802D19E
	.align 2, 0
_0802D14C: .4byte 0x080E13BC
_0802D150: .4byte gEwramData
_0802D154: .4byte 0x000131CC
_0802D158: .4byte sub_0803B9D0
_0802D15C: .4byte 0x000003FF
_0802D160: .4byte 0xFFFF8000
_0802D164: .4byte 0x0808FCFC
_0802D168: .4byte 0x000131BE
_0802D16C: .4byte sub_0802CD6C
_0802D170: .4byte sub_0802DCB0
_0802D174:
	adds r0, r6, #0
	movs r1, #6
	bl sub_0806D128
	adds r2, r6, #0
	adds r2, #0x59
	cmp r0, #0
	bne _0802D18E
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802D1C8
_0802D18E:
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0802D1BC @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r6, r1]
_0802D19E:
	lsls r0, r0, #2
	ldr r3, _0802D1C0 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _0802D1C4 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r6, #0
	bl sub_08000E14
	b _0802D1CE
	.align 2, 0
_0802D1BC: .4byte gEwramData
_0802D1C0: .4byte 0x00013124
_0802D1C4: .4byte 0x000131BE
_0802D1C8:
	adds r0, r6, #0
	bl sub_0803F17C
_0802D1CE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0802D1D8
sub_0802D1D8: @ 0x0802D1D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0802D1FC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0802D200 @ =0x00013269
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_0802D284
	ldr r1, _0802D204 @ =0x080E1918
	ldrh r0, [r0, #4]
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r4, r4, r1
	ldrb r0, [r4]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0802D1FC: .4byte gEwramData
_0802D200: .4byte 0x00013269
_0802D204: .4byte 0x080E1918

	thumb_func_start sub_0802D208
sub_0802D208: @ 0x0802D208
	push {lr}
	movs r1, #0
	ldr r0, _0802D228 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _0802D22C @ =0x00013124
	adds r2, r0, r3
_0802D214:
	lsls r0, r1, #0x18
	asrs r1, r0, #0x18
	lsls r0, r1, #2
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r0, #0
	bne _0802D230
	adds r0, r1, #0
	b _0802D240
	.align 2, 0
_0802D228: .4byte gEwramData
_0802D22C: .4byte 0x00013124
_0802D230:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _0802D214
	movs r0, #1
	rsbs r0, r0, #0
_0802D240:
	pop {r1}
	bx r1

	thumb_func_start sub_0802D244
sub_0802D244: @ 0x0802D244
	push {lr}
	ldr r0, _0802D260 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _0802D264 @ =0x00013266
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802D26C
	subs r2, #0xa7
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, _0802D268 @ =0x080E1ED8
	b _0802D276
	.align 2, 0
_0802D260: .4byte gEwramData
_0802D264: .4byte 0x00013266
_0802D268: .4byte 0x080E1ED8
_0802D26C:
	ldr r2, _0802D27C @ =0x000131BF
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, _0802D280 @ =0x080E1598
_0802D276:
	adds r0, r0, r1
	pop {r1}
	bx r1
	.align 2, 0
_0802D27C: .4byte 0x000131BF
_0802D280: .4byte 0x080E1598

	thumb_func_start sub_0802D284
sub_0802D284: @ 0x0802D284
	push {lr}
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, _0802D2A0 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0802D2A4 @ =0x00013266
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802D2AC
	lsls r0, r1, #4
	ldr r1, _0802D2A8 @ =0x080E1ED8
	b _0802D2B0
	.align 2, 0
_0802D2A0: .4byte gEwramData
_0802D2A4: .4byte 0x00013266
_0802D2A8: .4byte 0x080E1ED8
_0802D2AC:
	lsls r0, r1, #4
	ldr r1, _0802D2B8 @ =0x080E1598
_0802D2B0:
	adds r0, r0, r1
	pop {r1}
	bx r1
	.align 2, 0
_0802D2B8: .4byte 0x080E1598

	thumb_func_start sub_0802D2BC
sub_0802D2BC: @ 0x0802D2BC
	push {lr}
	ldr r0, _0802D2D8 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _0802D2DC @ =0x00013266
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802D2E4
	subs r2, #0xa7
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, _0802D2E0 @ =0x080E1598
	b _0802D2EE
	.align 2, 0
_0802D2D8: .4byte gEwramData
_0802D2DC: .4byte 0x00013266
_0802D2E0: .4byte 0x080E1598
_0802D2E4:
	ldr r2, _0802D2F8 @ =0x000131BF
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, _0802D2FC @ =0x080E1ED8
_0802D2EE:
	adds r0, r0, r1
	ldrb r0, [r0, #8]
	pop {r1}
	bx r1
	.align 2, 0
_0802D2F8: .4byte 0x000131BF
_0802D2FC: .4byte 0x080E1ED8

	thumb_func_start sub_0802D300
sub_0802D300: @ 0x0802D300
	ldr r0, _0802D30C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0802D310 @ =0x0001307D
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0802D30C: .4byte gEwramData
_0802D310: .4byte 0x0001307D

	thumb_func_start sub_0802D314
sub_0802D314: @ 0x0802D314
	push {lr}
	adds r3, r0, #0
	adds r0, r1, #0
	adds r0, #0x42
	adds r2, r3, #0
	adds r2, #0x42
	ldrh r0, [r0]
	ldrh r2, [r2]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, #0x46
	adds r3, #0x46
	ldrh r1, [r1]
	ldrh r2, [r3]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1

	thumb_func_start sub_0802D344
sub_0802D344: @ 0x0802D344
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x42
	movs r5, #0
	ldrsh r3, [r0, r5]
	cmp r1, #0
	bge _0802D35A
	rsbs r0, r1, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0802D35C
_0802D35A:
	asrs r0, r1, #0x10
_0802D35C:
	subs r0, r0, r3
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	adds r0, r4, #0
	adds r0, #0x46
	movs r1, #0
	ldrsh r3, [r0, r1]
	cmp r2, #0
	bge _0802D376
	rsbs r0, r2, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0802D378
_0802D376:
	asrs r0, r2, #0x10
_0802D378:
	subs r0, r0, r3
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r5, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802D390
sub_0802D390: @ 0x0802D390
	push {r4, lr}
	adds r2, r1, #0
	adds r2, #0x42
	movs r4, #0
	ldrsh r3, [r2, r4]
	adds r2, r0, #0
	adds r2, #0x42
	movs r4, #0
	ldrsh r2, [r2, r4]
	subs r3, r3, r2
	adds r1, #0x46
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r0, #0x46
	movs r4, #0
	ldrsh r0, [r0, r4]
	subs r1, r1, r0
	adds r0, r3, #0
	muls r0, r3, r0
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0802D3C4
sub_0802D3C4: @ 0x0802D3C4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x42
	movs r5, #0
	ldrsh r3, [r0, r5]
	cmp r1, #0
	bge _0802D3DA
	rsbs r0, r1, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0802D3DC
_0802D3DA:
	asrs r0, r1, #0x10
_0802D3DC:
	subs r3, r0, r3
	adds r0, r4, #0
	adds r0, #0x46
	movs r4, #0
	ldrsh r1, [r0, r4]
	cmp r2, #0
	bge _0802D3F2
	rsbs r0, r2, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0802D3F4
_0802D3F2:
	asrs r0, r2, #0x10
_0802D3F4:
	subs r1, r0, r1
	adds r0, r3, #0
	muls r0, r3, r0
	adds r5, r1, #0
	muls r5, r1, r5
	adds r1, r5, #0
	adds r0, r0, r1
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0802D408
sub_0802D408: @ 0x0802D408
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r3, #0
	ldr r7, [sp, #0x14]
	adds r3, r6, #0
	adds r3, #0x42
	movs r0, #0
	ldrsh r3, [r3, r0]
	cmp r1, #0
	bge _0802D424
	rsbs r0, r1, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0802D426
_0802D424:
	asrs r0, r1, #0x10
_0802D426:
	subs r0, r0, r3
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	adds r0, r6, #0
	adds r0, #0x46
	movs r1, #0
	ldrsh r3, [r0, r1]
	cmp r2, #0
	bge _0802D440
	rsbs r0, r2, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0802D442
_0802D440:
	asrs r0, r2, #0x10
_0802D442:
	subs r0, r0, r3
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r5, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r1, r0, r4
	cmp r1, #0
	ble _0802D464
	ldr r0, _0802D460 @ =0x00007FFF
	cmp r1, r0
	ble _0802D46A
	b _0802D474
	.align 2, 0
_0802D460: .4byte 0x00007FFF
_0802D464:
	ldr r0, _0802D470 @ =0xFFFF8000
	cmp r1, r0
	bge _0802D474
_0802D46A:
	adds r4, r4, r7
	b _0802D476
	.align 2, 0
_0802D470: .4byte 0xFFFF8000
_0802D474:
	subs r4, r4, r7
_0802D476:
	ldr r0, _0802D480 @ =0x0000FFFF
	ands r0, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802D480: .4byte 0x0000FFFF

	thumb_func_start sub_0802D484
sub_0802D484: @ 0x0802D484
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	movs r6, #1
	rsbs r6, r6, #0
	movs r0, #0
	mov r8, r0
	ldr r0, _0802D504 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _0802D508 @ =0x00013220
	adds r0, r1, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _0802D4F6
	ldr r7, _0802D50C @ =0x00013194
	adds r4, r1, r7
	movs r0, #0x42
	add r0, ip
	mov sb, r0
	movs r5, #3
_0802D4B0:
	ldr r3, [r4]
	cmp r3, #0
	beq _0802D4EC
	adds r0, r3, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r2, [r0, r1]
	mov r7, sb
	movs r1, #0
	ldrsh r0, [r7, r1]
	subs r2, r2, r0
	adds r0, r3, #0
	adds r0, #0x46
	movs r7, #0
	ldrsh r1, [r0, r7]
	mov r0, ip
	adds r0, #0x46
	movs r7, #0
	ldrsh r0, [r0, r7]
	subs r1, r1, r0
	adds r0, r2, #0
	muls r0, r2, r0
	adds r2, r0, #0
	adds r0, r1, #0
	muls r0, r1, r0
	adds r2, r2, r0
	cmp r6, r2
	bls _0802D4EC
	adds r6, r2, #0
	mov r8, r3
_0802D4EC:
	adds r4, #4
	subs r5, #1
	cmp r5, #0
	bge _0802D4B0
	mov r0, r8
_0802D4F6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802D504: .4byte gEwramData
_0802D508: .4byte 0x00013220
_0802D50C: .4byte 0x00013194

	thumb_func_start sub_0802D510
sub_0802D510: @ 0x0802D510
	push {r4, r5, lr}
	ldr r5, _0802D550 @ =gEwramData
	ldr r0, [r5]
	ldr r1, _0802D554 @ =0x00013220
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0802D54A
	movs r4, #0
	bl sub_08000A90
	adds r1, r0, #0
	movs r0, #3
	ands r1, r0
	ldr r0, [r5]
	ldr r3, _0802D558 @ =0x00013194
	adds r2, r0, r3
	movs r3, #3
_0802D534:
	lsls r0, r1, #2
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r0, #0
	bne _0802D54A
	adds r1, #1
	ands r1, r3
	adds r4, #1
	cmp r4, #3
	ble _0802D534
	movs r0, #0
_0802D54A:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802D550: .4byte gEwramData
_0802D554: .4byte 0x00013220
_0802D558: .4byte 0x00013194

	thumb_func_start sub_0802D55C
sub_0802D55C: @ 0x0802D55C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806D128
	cmp r0, #0
	bne _0802D576
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802D586
_0802D576:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
	movs r0, #1
	b _0802D588
_0802D586:
	movs r0, #0
_0802D588:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802D590
sub_0802D590: @ 0x0802D590
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x64
	ldr r0, _0802D5D0 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0802D5D4 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r3, #0
	adds r0, #0x65
	ldrb r0, [r0]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r4, [r0, #8]
	cmp r4, #0
	beq _0802D5D8
	adds r2, r3, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_08042848
	b _0802D5E4
	.align 2, 0
_0802D5D0: .4byte gEwramData
_0802D5D4: .4byte 0x0001017C
_0802D5D8:
	adds r2, r3, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_0802D5E4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802D5EC
sub_0802D5EC: @ 0x0802D5EC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08000A90
	adds r1, r0, #0
	subs r0, r4, #1
	ands r0, r1
	lsrs r4, r4, #1
	subs r0, r0, r4
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0802D604
sub_0802D604: @ 0x0802D604
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	mov sl, r0
	adds r0, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r4, [sp, #0x1c]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r6, _0802D658 @ =gEwramData
	ldr r1, [r6]
	ldr r5, _0802D65C @ =0x000131CC
	adds r1, r1, r5
	str r0, [r1]
	mov r0, r8
	adds r1, r4, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r6]
	adds r0, r0, r5
	ldr r2, [r0]
	mov r0, sl
	mov r1, sb
	movs r3, #2
	bl sub_0803B924
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802D658: .4byte gEwramData
_0802D65C: .4byte 0x000131CC

	thumb_func_start sub_0802D660
sub_0802D660: @ 0x0802D660
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	mov sb, r0
	ldrb r6, [r1, #0xe]
	ldr r0, [r1]
	ldr r5, [r1, #4]
	ldr r1, [r1, #8]
	mov r8, r1
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _0802D6B0 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _0802D6B4 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r1, _0802D6B4 @ =0x000131CC
	adds r0, r0, r1
	ldr r2, [r0]
	mov r0, sb
	mov r1, r8
	movs r3, #2
	bl sub_0803B924
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802D6B0: .4byte gEwramData
_0802D6B4: .4byte 0x000131CC

	thumb_func_start sub_0802D6B8
sub_0802D6B8: @ 0x0802D6B8
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	mov sb, r0
	adds r4, r2, #0
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	ldr r0, _0802D718 @ =0x080E13BC
	adds r2, r2, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, [r2]
	ldr r6, [r2, #4]
	ldr r2, [r2, #8]
	mov r8, r2
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r5, _0802D71C @ =gEwramData
	ldr r1, [r5]
	ldr r2, _0802D720 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r5]
	ldr r1, _0802D720 @ =0x000131CC
	adds r0, r0, r1
	ldr r2, [r0]
	mov r0, sb
	mov r1, r8
	movs r3, #2
	bl sub_0803B924
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802D718: .4byte 0x080E13BC
_0802D71C: .4byte gEwramData
_0802D720: .4byte 0x000131CC

	thumb_func_start sub_0802D724
sub_0802D724: @ 0x0802D724
	ldr r1, _0802D744 @ =gEwramData
	ldr r2, [r1]
	movs r1, #0x1a
	ldrsh r0, [r0, r1]
	lsls r0, r0, #2
	ldr r3, _0802D748 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _0802D74C @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	bx lr
	.align 2, 0
_0802D744: .4byte gEwramData
_0802D748: .4byte 0x00013124
_0802D74C: .4byte 0x000131BE

	thumb_func_start sub_0802D750
sub_0802D750: @ 0x0802D750
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0802D77C @ =gEwramData
	ldr r1, [r0]
	ldr r2, _0802D780 @ =0x000131BE
	adds r0, r1, r2
	ldrb r0, [r0]
	movs r2, #0
	cmp r0, #0
	bne _0802D770
	ldr r3, _0802D784 @ =0x00013124
	adds r0, r1, r3
	ldr r0, [r0]
	cmp r0, #0
	bne _0802D770
	movs r2, #1
_0802D770:
	cmp r2, #0
	beq _0802D788
	adds r0, r4, #0
	bl sub_08000E14
	b _0802D7C2
	.align 2, 0
_0802D77C: .4byte gEwramData
_0802D780: .4byte 0x000131BE
_0802D784: .4byte 0x00013124
_0802D788:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0802D796
	ldr r0, _0802D7C8 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	strb r0, [r4, #0xa]
_0802D796:
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
	bne _0802D7C2
	adds r0, r4, #0
	bl sub_08000E14
_0802D7C2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802D7C8: .4byte sub_0803B9D0

	thumb_func_start sub_0802D7CC
sub_0802D7CC: @ 0x0802D7CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	mov sl, r1
	adds r4, r2, #0
	mov r8, r3
	ldr r2, _0802D860 @ =sub_0802D750
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r7, r0, #0
	cmp r7, #0
	beq _0802D870
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	ldr r0, _0802D864 @ =0x080E13BC
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r5, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _0802D868 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _0802D86C @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r1, _0802D86C @ =0x000131CC
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	mov r2, r8
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x10
	adds r0, r7, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	mov r0, sb
	str r0, [r7, #0x40]
	mov r1, sl
	str r1, [r7, #0x44]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	b _0802D872
	.align 2, 0
_0802D860: .4byte sub_0802D750
_0802D864: .4byte 0x080E13BC
_0802D868: .4byte gEwramData
_0802D86C: .4byte 0x000131CC
_0802D870:
	movs r0, #0
_0802D872:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0802D880
sub_0802D880: @ 0x0802D880
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _0802D8B0 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _0802D8B4 @ =0x000131BE
	adds r0, r1, r2
	ldrb r0, [r0]
	movs r2, #0
	cmp r0, #0
	bne _0802D8A2
	ldr r3, _0802D8B8 @ =0x00013124
	adds r0, r1, r3
	ldr r0, [r0]
	cmp r0, #0
	bne _0802D8A2
	movs r2, #1
_0802D8A2:
	cmp r2, #0
	beq _0802D8BC
	adds r0, r4, #0
	bl sub_08000E14
	b _0802D8F6
	.align 2, 0
_0802D8B0: .4byte gEwramData
_0802D8B4: .4byte 0x000131BE
_0802D8B8: .4byte 0x00013124
_0802D8BC:
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
	bne _0802D8F6
	adds r0, r4, #0
	bl sub_08000E14
_0802D8F6:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802D900
sub_0802D900: @ 0x0802D900
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	mov sl, r1
	adds r4, r2, #0
	mov r8, r3
	ldr r2, _0802D990 @ =sub_0802D880
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r7, r0, #0
	cmp r7, #0
	beq _0802D9A4
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	ldr r0, _0802D994 @ =0x080E13BC
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r5, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _0802D998 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _0802D99C @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r1, _0802D99C @ =0x000131CC
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r7, #0
	adds r0, #0x65
	mov r2, r8
	strb r2, [r0]
	ldr r0, _0802D9A0 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	mov r0, sb
	str r0, [r7, #0x40]
	mov r1, sl
	str r1, [r7, #0x44]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	b _0802D9A6
	.align 2, 0
_0802D990: .4byte sub_0802D880
_0802D994: .4byte 0x080E13BC
_0802D998: .4byte gEwramData
_0802D99C: .4byte 0x000131CC
_0802D9A0: .4byte sub_0803B9D0
_0802D9A4:
	movs r0, #0
_0802D9A6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0802D9B4
sub_0802D9B4: @ 0x0802D9B4
	movs r1, #1
	strb r1, [r0, #0x18]
	bx lr
	.align 2, 0

	thumb_func_start sub_0802D9BC
sub_0802D9BC: @ 0x0802D9BC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, [r5, #0x20]
	cmp r0, #0
	bne _0802DA08
	ldr r2, _0802DA00 @ =sub_080239E4
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	beq _0802DA0C
	str r4, [r5, #0x20]
	str r5, [r4, #0x14]
	str r6, [r4, #0x20]
	ldrb r0, [r5, #0x10]
	strb r0, [r4, #0x10]
	movs r0, #0x78
	strb r0, [r5, #0xd]
	ldr r1, _0802DA04 @ =0x1014F8F6
	adds r0, r5, #0
	bl sub_08042884
	ldr r0, [r5, #0x40]
	ldr r1, [r6, #0x40]
	subs r0, r0, r1
	str r0, [r4, #0x50]
	ldr r0, [r5, #0x44]
	ldr r1, [r6, #0x44]
	subs r0, r0, r1
	str r0, [r4, #0x54]
	b _0802DA0C
	.align 2, 0
_0802DA00: .4byte sub_080239E4
_0802DA04: .4byte 0x1014F8F6
_0802DA08:
	movs r0, #0
	strh r0, [r5, #0x26]
_0802DA0C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802DA14
sub_0802DA14: @ 0x0802DA14
	movs r1, #3
	strb r1, [r0, #0xa]
	bx lr
	.align 2, 0

	thumb_func_start sub_0802DA1C
sub_0802DA1C: @ 0x0802DA1C
	push {lr}
	adds r3, r0, #0
	ldr r0, _0802DA50 @ =gEwramData
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x64
	ldrb r0, [r0]
	cmp r0, #6
	beq _0802DA44
	ldr r1, _0802DA54 @ =0x0000A074
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802DA44
	ldr r0, _0802DA58 @ =0x00012FE4
	adds r1, r2, r0
	ldr r0, [r3, #0x28]
	str r0, [r1]
_0802DA44:
	adds r0, r3, #0
	bl sub_0803AC40
	pop {r0}
	bx r0
	.align 2, 0
_0802DA50: .4byte gEwramData
_0802DA54: .4byte 0x0000A074
_0802DA58: .4byte 0x00012FE4

	thumb_func_start sub_0802DA5C
sub_0802DA5C: @ 0x0802DA5C
	push {r4, lr}
	movs r4, #0
	bl sub_08000A90
	adds r1, r0, #0
	movs r0, #3
	ands r1, r0
	ldr r0, _0802DA90 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _0802DA94 @ =0x00013194
	adds r2, r0, r3
	movs r3, #3
_0802DA74:
	lsls r0, r1, #2
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r0, #0
	bne _0802DA8A
	adds r1, #1
	ands r1, r3
	adds r4, #1
	cmp r4, #3
	ble _0802DA74
	movs r0, #0
_0802DA8A:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0802DA90: .4byte gEwramData
_0802DA94: .4byte 0x00013194

	thumb_func_start sub_0802DA98
sub_0802DA98: @ 0x0802DA98
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0x80
	lsls r4, r4, #0xc
	adds r1, r4, #0
	bl sub_0806D430
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806D460
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _0802DAC6
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0802DAC6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0802DACC
sub_0802DACC: @ 0x0802DACC
	movs r1, #1
	strh r1, [r0, #0x20]
	bx lr
	.align 2, 0

	thumb_func_start sub_0802DAD4
sub_0802DAD4: @ 0x0802DAD4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0802DB08
	ldr r0, _0802DB30 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0802DB34 @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #4
	bl sub_0803B924
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x35
	strb r0, [r1]
	ldr r0, _0802DB38 @ =sub_0803B9D0
	str r0, [r4, #4]
	subs r1, #9
	movs r0, #0xd
	strb r0, [r1]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_0802DB08:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D3D8
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806D128
	cmp r0, #0
	beq _0802DB2A
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0802DB2A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802DB30: .4byte 0x081C15F4
_0802DB34: .4byte 0x0820ED60
_0802DB38: .4byte sub_0803B9D0

	thumb_func_start sub_0802DB3C
sub_0802DB3C: @ 0x0802DB3C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r6, [r4, #0x40]
	ldr r7, [r4, #0x44]
	ldr r0, [r4, #0x48]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r0, r6, r0
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x4c]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r0, r7, r0
	str r0, [r4, #0x44]
	movs r5, #2
_0802DB5E:
	adds r0, r4, #0
	bl sub_0803AC40
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	subs r5, #1
	cmp r5, #0
	bne _0802DB5E
	str r6, [r4, #0x40]
	str r7, [r4, #0x44]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0802DB84
sub_0802DB84: @ 0x0802DB84
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _0802DBC6
	ldr r2, _0802DBCC @ =sub_080239E4
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r2, r0, #0
	cmp r2, #0
	beq _0802DBC6
	str r2, [r4, #0x20]
	str r4, [r2, #0x14]
	str r5, [r2, #0x20]
	ldrb r0, [r4, #0x10]
	strb r0, [r2, #0x10]
	adds r3, r4, #0
	adds r3, #0x72
	ldrb r1, [r3]
	movs r0, #2
	orrs r0, r1
	strb r0, [r3]
	ldr r0, [r4, #0x40]
	ldr r1, [r5, #0x40]
	subs r0, r0, r1
	str r0, [r2, #0x50]
	ldr r0, [r4, #0x44]
	ldr r1, [r5, #0x44]
	subs r0, r0, r1
	str r0, [r2, #0x54]
_0802DBC6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802DBCC: .4byte sub_080239E4

	thumb_func_start sub_0802DBD0
sub_0802DBD0: @ 0x0802DBD0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r7, [r4, #0x40]
	ldr r6, [r4, #0x44]
	movs r0, #0x80
	lsls r0, r0, #0xc
	adds r1, r6, r0
	ldr r0, [r4, #0x24]
	lsls r0, r0, #3
	subs r1, r1, r0
	str r1, [r4, #0x44]
	movs r5, #8
_0802DBE8:
	adds r0, r4, #0
	bl sub_0803AC40
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x50]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x54]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	subs r5, #1
	cmp r5, #0
	bne _0802DBE8
	str r7, [r4, #0x40]
	str r6, [r4, #0x44]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802DC10
sub_0802DC10: @ 0x0802DC10
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0
	adds r5, r4, #0
	adds r5, #0x10
_0802DC1A:
	ldr r0, _0802DC58 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0802DC5C @ =0x0000A094
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
	adds r0, r6, #0
	adds r0, #0x10
	adds r1, r4, #0
	adds r1, #0x65
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803AC40
	adds r5, #8
	adds r6, #1
	cmp r6, #4
	ble _0802DC1A
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802DC58: .4byte gEwramData
_0802DC5C: .4byte 0x0000A094

	thumb_func_start sub_0802DC60
sub_0802DC60: @ 0x0802DC60
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0
	adds r5, r4, #0
	adds r5, #0x10
_0802DC6A:
	ldr r0, _0802DCA8 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0802DCAC @ =0x0000A094
	adds r2, r2, r0
	ldrh r1, [r5, #4]
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x42
	strh r1, [r0]
	ldrh r1, [r5, #6]
	ldrh r0, [r2, #0xa]
	subs r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x46
	strh r1, [r0]
	adds r0, r6, #3
	adds r1, r4, #0
	adds r1, #0x65
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803AC40
	adds r5, #4
	adds r6, #1
	cmp r6, #2
	ble _0802DC6A
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802DCA8: .4byte gEwramData
_0802DCAC: .4byte 0x0000A094

	thumb_func_start sub_0802DCB0
sub_0802DCB0: @ 0x0802DCB0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0
	adds r5, r4, #0
	adds r5, #0x10
_0802DCBA:
	ldr r0, _0802DCF8 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0802DCFC @ =0x0000A094
	adds r2, r2, r0
	ldrh r1, [r5, #4]
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x42
	strh r1, [r0]
	ldrh r1, [r5, #6]
	ldrh r0, [r2, #0xa]
	subs r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x46
	strh r1, [r0]
	asrs r0, r6, #1
	adds r0, #2
	adds r1, r4, #0
	adds r1, #0x65
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803AC40
	adds r5, #4
	adds r6, #1
	cmp r6, #7
	ble _0802DCBA
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802DCF8: .4byte gEwramData
_0802DCFC: .4byte 0x0000A094

	thumb_func_start sub_0802DD00
sub_0802DD00: @ 0x0802DD00
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r2, r1, #0
	movs r1, #0
	ldr r0, _0802DD3C @ =gEwramData
	ldr r0, [r0]
	ldr r4, _0802DD40 @ =0x00013144
	adds r3, r0, r4
_0802DD10:
	lsls r0, r1, #0x18
	asrs r1, r0, #0x18
	lsls r0, r1, #2
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _0802DD44
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _0802DD10
	movs r0, #1
	rsbs r0, r0, #0
_0802DD2E:
	lsls r0, r0, #0x18
	asrs r4, r0, #0x18
	cmp r4, #0
	bge _0802DD48
_0802DD36:
	movs r0, #0
	b _0802DD76
	.align 2, 0
_0802DD3C: .4byte gEwramData
_0802DD40: .4byte 0x00013144
_0802DD44:
	adds r0, r1, #0
	b _0802DD2E
_0802DD48:
	movs r0, #2
	movs r1, #0x10
	bl sub_08000DA0
	adds r2, r0, #0
	cmp r2, #0
	beq _0802DD36
	str r5, [r2, #0x14]
	strh r4, [r2, #0x24]
	ldr r0, _0802DD7C @ =gEwramData
	ldr r0, [r0]
	lsls r1, r4, #2
	ldr r3, _0802DD80 @ =0x00013144
	adds r0, r0, r3
	adds r0, r0, r1
	str r2, [r0]
	adds r3, r2, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	adds r0, r2, #0
_0802DD76:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802DD7C: .4byte gEwramData
_0802DD80: .4byte 0x00013144

	thumb_func_start sub_0802DD84
sub_0802DD84: @ 0x0802DD84
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r2, r0, #0
	adds r2, #0x58
	ldrh r1, [r2]
	ldr r0, _0802DE3C @ =0x0000101F
	ands r0, r1
	cmp r0, #0
	beq _0802DDA2
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_0802DDA2:
	ldr r3, _0802DE40 @ =gEwramData
	ldr r0, [r3]
	ldr r2, _0802DE44 @ =0x00013144
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
	movs r6, #1
	mov r8, r3
	adds r7, r2, #0
_0802DDB4:
	mov r1, r8
	ldr r0, [r1]
	lsls r5, r6, #2
	adds r0, r0, r7
	adds r0, r0, r5
	ldr r4, [r0]
	cmp r4, #0
	beq _0802DDF0
	adds r2, r4, #0
	adds r2, #0x58
	ldrh r1, [r2]
	ldr r3, _0802DE3C @ =0x0000101F
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0802DDDE
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_0802DDDE:
	adds r0, r4, #0
	bl sub_08000E14
	mov r1, r8
	ldr r0, [r1]
	adds r0, r0, r7
	adds r0, r0, r5
	movs r1, #0
	str r1, [r0]
_0802DDF0:
	adds r6, #1
	cmp r6, #7
	ble _0802DDB4
	ldr r4, _0802DE40 @ =gEwramData
	ldr r0, [r4]
	ldr r3, _0802DE48 @ =0x000131D0
	adds r0, r0, r3
	ldr r0, [r0]
	movs r5, #1
	rsbs r5, r5, #0
	cmp r0, r5
	beq _0802DE14
	bl sub_0803B980
	ldr r0, [r4]
	ldr r1, _0802DE48 @ =0x000131D0
	adds r0, r0, r1
	str r5, [r0]
_0802DE14:
	ldr r2, [r4]
	ldr r0, _0802DE4C @ =0x00013260
	adds r3, r2, r0
	ldr r0, [r3]
	ldr r1, _0802DE50 @ =0xFFFFC0FF
	ands r0, r1
	str r0, [r3]
	ldr r1, _0802DE54 @ =0x00013110
	adds r2, r2, r1
	ldr r2, [r2]
	ldr r0, [r2, #0x10]
	ldr r1, _0802DE58 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r2, #0x10]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802DE3C: .4byte 0x0000101F
_0802DE40: .4byte gEwramData
_0802DE44: .4byte 0x00013144
_0802DE48: .4byte 0x000131D0
_0802DE4C: .4byte 0x00013260
_0802DE50: .4byte 0xFFFFC0FF
_0802DE54: .4byte 0x00013110
_0802DE58: .4byte 0xFFFFFDFF

	thumb_func_start sub_0802DE5C
sub_0802DE5C: @ 0x0802DE5C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r4, _0802DEB0 @ =gEwramData
	ldr r6, [r4]
	ldr r1, _0802DEB4 @ =0x0001326A
	adds r0, r6, r1
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0802DEB8 @ =0x080E192C
	adds r7, r0, r1
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r5, #0x22]
	adds r0, #1
	strh r0, [r5, #0x22]
	ldrh r0, [r5, #0x22]
	adds r1, r5, #0
	adds r1, #0x20
	ldrb r1, [r1]
	bl __modsi3
	adds r1, r0, #0
	adds r3, r4, #0
	cmp r1, #0
	bne _0802DEC0
	ldr r2, _0802DEBC @ =0x0001327C
	adds r4, r6, r2
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0802DEC0
	strh r1, [r4]
	b _0802DF10
	.align 2, 0
_0802DEB0: .4byte gEwramData
_0802DEB4: .4byte 0x0001326A
_0802DEB8: .4byte 0x080E192C
_0802DEBC: .4byte 0x0001327C
_0802DEC0:
	ldrb r1, [r7, #5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802DEE0
	ldr r0, [r3]
	ldr r2, _0802DEDC @ =0x0001339E
	adds r1, r0, r2
	ldrh r2, [r0, #0x1c]
	ldrh r0, [r1]
	ands r0, r2
	cmp r0, #0
	bne _0802DEF6
	b _0802DF10
	.align 2, 0
_0802DEDC: .4byte 0x0001339E
_0802DEE0:
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _0802DEF6
	ldr r0, [r3]
	ldr r2, _0802DF1C @ =0x0001339E
	adds r1, r0, r2
	ldrh r2, [r0, #0x1e]
	ldrh r0, [r1]
	ands r0, r2
	cmp r0, #0
	bne _0802DF10
_0802DEF6:
	ldr r0, [r3]
	ldr r1, _0802DF20 @ =0x0000042C
	adds r0, r0, r1
	ldr r4, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r4
	cmp r0, #0
	bne _0802DF24
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	beq _0802DF24
_0802DF10:
	adds r0, r5, #0
	bl sub_0802DD84
	movs r0, #1
	b _0802DF26
	.align 2, 0
_0802DF1C: .4byte 0x0001339E
_0802DF20: .4byte 0x0000042C
_0802DF24:
	movs r0, #0
_0802DF26:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0802DF2C
sub_0802DF2C: @ 0x0802DF2C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r4, _0802DF80 @ =gEwramData
	ldr r6, [r4]
	ldr r1, _0802DF84 @ =0x0001326A
	adds r0, r6, r1
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0802DF88 @ =0x080E192C
	adds r7, r0, r1
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r5, #0x22]
	adds r0, #1
	strh r0, [r5, #0x22]
	ldrh r0, [r5, #0x22]
	adds r1, r5, #0
	adds r1, #0x20
	ldrb r1, [r1]
	bl __modsi3
	adds r1, r0, #0
	adds r3, r4, #0
	cmp r1, #0
	bne _0802DF90
	ldr r2, _0802DF8C @ =0x0001327C
	adds r4, r6, r2
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0802DF90
	strh r1, [r4]
_0802DF7C:
	movs r0, #1
	b _0802DFE2
	.align 2, 0
_0802DF80: .4byte gEwramData
_0802DF84: .4byte 0x0001326A
_0802DF88: .4byte 0x080E192C
_0802DF8C: .4byte 0x0001327C
_0802DF90:
	ldrb r1, [r7, #5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802DFB0
	ldr r0, [r3]
	ldr r2, _0802DFAC @ =0x0001339E
	adds r1, r0, r2
	ldrh r2, [r0, #0x1c]
	ldrh r0, [r1]
	ands r0, r2
	cmp r0, #0
	bne _0802DFC6
	b _0802DF7C
	.align 2, 0
_0802DFAC: .4byte 0x0001339E
_0802DFB0:
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _0802DFC6
	ldr r0, [r3]
	ldr r2, _0802DFE8 @ =0x0001339E
	adds r1, r0, r2
	ldrh r2, [r0, #0x1e]
	ldrh r0, [r1]
	ands r0, r2
	cmp r0, #0
	bne _0802DF7C
_0802DFC6:
	ldr r0, [r3]
	ldr r1, _0802DFEC @ =0x0000042C
	adds r0, r0, r1
	ldr r4, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r4
	cmp r0, #0
	bne _0802DFE0
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	bne _0802DFE2
_0802DFE0:
	movs r0, #0
_0802DFE2:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802DFE8: .4byte 0x0001339E
_0802DFEC: .4byte 0x0000042C

	thumb_func_start sub_0802DFF0
sub_0802DFF0: @ 0x0802DFF0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _0802E0A0 @ =gEwramData
	ldr r0, [r2]
	ldr r1, _0802E0A4 @ =0x00013266
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802E096
	movs r1, #0
	mov r8, r2
	ldr r7, _0802E0A8 @ =0x00013144
_0802E00A:
	mov r2, r8
	ldr r0, [r2]
	lsls r1, r1, #0x18
	asrs r5, r1, #0x16
	adds r0, r0, r7
	adds r0, r0, r5
	ldr r4, [r0]
	adds r6, r1, #0
	cmp r4, #0
	beq _0802E04A
	adds r2, r4, #0
	adds r2, #0x58
	ldrh r1, [r2]
	ldr r3, _0802E0AC @ =0x0000101F
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0802E038
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_0802E038:
	adds r0, r4, #0
	bl sub_08000E14
	mov r1, r8
	ldr r0, [r1]
	adds r0, r0, r7
	adds r0, r0, r5
	movs r1, #0
	str r1, [r0]
_0802E04A:
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r6, r2
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _0802E00A
	movs r0, #0x9c
	bl sub_08013E18
	ldr r5, _0802E0A0 @ =gEwramData
	ldr r2, [r5]
	ldr r0, _0802E0B0 @ =0x00013260
	adds r3, r2, r0
	ldr r0, [r3]
	ldr r1, _0802E0B4 @ =0xFFFFC0FF
	ands r0, r1
	str r0, [r3]
	ldr r1, _0802E0B8 @ =0x00013110
	adds r0, r2, r1
	ldr r3, [r0]
	ldr r0, [r3, #0x10]
	ldr r1, _0802E0BC @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r3, _0802E0C0 @ =0x000131D0
	adds r2, r2, r3
	ldr r0, [r2]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r0, r4
	beq _0802E096
	bl sub_0803B980
	ldr r0, [r5]
	ldr r1, _0802E0C0 @ =0x000131D0
	adds r0, r0, r1
	str r4, [r0]
_0802E096:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E0A0: .4byte gEwramData
_0802E0A4: .4byte 0x00013266
_0802E0A8: .4byte 0x00013144
_0802E0AC: .4byte 0x0000101F
_0802E0B0: .4byte 0x00013260
_0802E0B4: .4byte 0xFFFFC0FF
_0802E0B8: .4byte 0x00013110
_0802E0BC: .4byte 0xFFFFFDFF
_0802E0C0: .4byte 0x000131D0

	thumb_func_start sub_0802E0C4
sub_0802E0C4: @ 0x0802E0C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldr r0, _0802E1B0 @ =gEwramData
	mov sb, r0
	ldr r3, [r0]
	ldr r1, _0802E1B4 @ =0x000131B8
	adds r0, r3, r1
	ldr r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #2
	mov sl, r2
	ands r0, r2
	cmp r0, #0
	bne _0802E1A0
	movs r4, #0xd1
	lsls r4, r4, #2
	adds r0, r3, r4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xe
	ands r0, r1
	cmp r0, #0
	beq _0802E104
	ldr r1, _0802E1B8 @ =0x0001326A
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #3
	bhi _0802E1A0
_0802E104:
	ldr r2, _0802E1BC @ =0x00013144
	mov r8, r2
	adds r0, r3, r2
	ldr r7, [r0]
	cmp r7, #0
	bne _0802E1A0
	ldr r4, _0802E1C0 @ =0x0001339E
	adds r0, r3, r4
	ldrh r1, [r3, #0x1c]
	ldrh r2, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0802E1A0
	ldr r1, _0802E1B8 @ =0x0001326A
	adds r0, r3, r1
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0802E1C4 @ =0x080E192C
	adds r5, r0, r1
	ldrb r1, [r5, #5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802E142
	ldrh r0, [r3, #0x1e]
	ands r2, r0
	cmp r2, #0
	beq _0802E1A0
_0802E142:
	ldr r2, [r5]
	cmp r2, #0
	beq _0802E1A0
	ldr r4, _0802E1C8 @ =0x0001327C
	adds r0, r3, r4
	movs r4, #0
	ldrsh r1, [r0, r4]
	ldr r4, _0802E1CC @ =0x00013280
	adds r0, r3, r4
	ldrh r0, [r0]
	lsrs r0, r0, #7
	adds r0, #1
	cmp r1, r0
	blt _0802E1A0
	movs r0, #2
	movs r1, #0x10
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	beq _0802E1A0
	mov r1, sb
	ldr r0, [r1]
	mov r2, r8
	adds r1, r0, r2
	str r4, [r1]
	str r6, [r4, #0x14]
	ldr r1, _0802E1B8 @ =0x0001326A
	adds r0, r0, r1
	ldrb r0, [r0]
	strh r0, [r4, #0x18]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0x1a]
	strh r7, [r4, #0x24]
	ldr r0, [r5, #8]
	str r0, [r4, #0x1c]
	ldrb r1, [r5, #4]
	movs r0, #0x3c
	bl __divsi3
	adds r1, r4, #0
	adds r1, #0x20
	strb r0, [r1]
	ldr r0, [r6, #0x10]
	mov r2, sl
	orrs r0, r2
	str r0, [r6, #0x10]
_0802E1A0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E1B0: .4byte gEwramData
_0802E1B4: .4byte 0x000131B8
_0802E1B8: .4byte 0x0001326A
_0802E1BC: .4byte 0x00013144
_0802E1C0: .4byte 0x0001339E
_0802E1C4: .4byte 0x080E192C
_0802E1C8: .4byte 0x0001327C
_0802E1CC: .4byte 0x00013280

	thumb_func_start sub_0802E1D0
sub_0802E1D0: @ 0x0802E1D0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r2, r6, #0
	adds r2, #0x64
	ldr r0, _0802E220 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0802E224 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r7, [r1]
	adds r5, r6, #0
	adds r5, #0x65
	ldrb r4, [r5]
	adds r0, r6, #0
	bl sub_0803F17C
	ldrb r0, [r5]
	cmp r4, r0
	beq _0802E234
	ldrb r0, [r5]
	ldr r1, [r7, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _0802E228
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r1, r3, #0
	bl sub_08042848
	b _0802E234
	.align 2, 0
_0802E220: .4byte gEwramData
_0802E224: .4byte 0x0001017C
_0802E228:
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_0802E234:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802E23C
sub_0802E23C: @ 0x0802E23C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov r8, r0
	adds r0, r7, #0
	bl sub_0802DE5C
	cmp r0, #0
	beq _0802E25C
	adds r0, r7, #0
	bl sub_08000E14
	b _0802E3AA
_0802E25C:
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	beq _0802E268
	cmp r0, #1
	beq _0802E2C8
	b _0802E306
_0802E268:
	ldr r0, _0802E3B8 @ =0x0825E08C
	ldr r5, _0802E3BC @ =0x0825E914
	ldr r6, _0802E3C0 @ =0x0825EAC4
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _0802E3C4 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _0802E3C8 @ =0x000131D0
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r1, _0802E3C8 @ =0x000131D0
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #3
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	ldr r0, _0802E3CC @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_0802E2C8:
	movs r4, #0
	mov r0, r8
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r7, #0
	adds r3, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r1, #0x40
	ands r0, r1
	mov r0, r8
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, r0, r4
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	mov r0, r8
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, #4
	strh r0, [r1]
	adds r0, r7, #0
	bl sub_0803F17C
_0802E306:
	ldrb r0, [r7, #0xd]
	adds r0, #1
	strb r0, [r7, #0xd]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0802E398
	movs r0, #0x80
	lsls r0, r0, #0xc
	bl sub_0802D5EC
	mov r2, r8
	ldr r4, [r2, #0x40]
	adds r4, r4, r0
	movs r0, #0x80
	lsls r0, r0, #9
	bl sub_0802D5EC
	ldr r1, _0802E3D0 @ =0xFFE60000
	adds r0, r0, r1
	mov r2, r8
	ldr r1, [r2, #0x44]
	adds r1, r1, r0
	movs r0, #8
	str r0, [sp]
	movs r0, #9
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_08045B44
	adds r4, r0, #0
	cmp r4, #0
	beq _0802E398
	movs r0, #0x80
	lsls r0, r0, #8
	bl sub_0802D5EC
	str r0, [r4, #0x48]
	movs r0, #0x80
	lsls r0, r0, #7
	bl sub_0802D5EC
	ldr r1, _0802E3D4 @ =0xFFFF0000
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	movs r5, #0x80
	lsls r5, r5, #5
	adds r0, r5, #0
	bl sub_0802D5EC
	adds r1, r0, #0
	ldr r0, [r4, #0x48]
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0802E37A
	adds r0, #3
_0802E37A:
	asrs r0, r0, #2
	adds r0, r0, r1
	str r0, [r4, #0x50]
	adds r0, r5, #0
	bl sub_0802D5EC
	adds r1, r0, #0
	ldr r0, [r4, #0x4c]
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0802E392
	adds r0, #0x3f
_0802E392:
	asrs r0, r0, #6
	adds r0, r0, r1
	str r0, [r4, #0x54]
_0802E398:
	ldr r0, _0802E3C4 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _0802E3D8 @ =0x00013260
	adds r1, r1, r2
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r0, r2
	str r0, [r1]
_0802E3AA:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E3B8: .4byte 0x0825E08C
_0802E3BC: .4byte 0x0825E914
_0802E3C0: .4byte 0x0825EAC4
_0802E3C4: .4byte gEwramData
_0802E3C8: .4byte 0x000131D0
_0802E3CC: .4byte sub_0803B9D0
_0802E3D0: .4byte 0xFFE60000
_0802E3D4: .4byte 0xFFFF0000
_0802E3D8: .4byte 0x00013260

	thumb_func_start sub_0802E3DC
sub_0802E3DC: @ 0x0802E3DC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x14]
	bl sub_0802DE5C
	cmp r0, #0
	beq _0802E3F2
	adds r0, r4, #0
	bl sub_08000E14
	b _0802E4DC
_0802E3F2:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0802E3FE
	cmp r0, #1
	beq _0802E44C
	b _0802E4CC
_0802E3FE:
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r1, _0802E474 @ =0x3030D8F4
	adds r0, r4, #0
	bl sub_08042884
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #2
	movs r1, #0x3c
	bl sub_08042A54
	movs r2, #8
	movs r3, #1
	ldr r0, _0802E478 @ =gEwramData
	ldr r0, [r0]
	ldr r6, _0802E47C @ =0x000131C2
	adds r1, r0, r6
	strh r2, [r1]
	ldr r1, _0802E480 @ =0x000131C4
	adds r0, r0, r1
	strh r3, [r0]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_0802E44C:
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #3
	bne _0802E484
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0802E466
	movs r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0x9a
	bl sub_080D7910
_0802E466:
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	b _0802E492
	.align 2, 0
_0802E474: .4byte 0x3030D8F4
_0802E478: .4byte gEwramData
_0802E47C: .4byte 0x000131C2
_0802E480: .4byte 0x000131C4
_0802E484:
	movs r0, #0
	strb r0, [r4, #0xb]
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
_0802E492:
	strb r0, [r2]
	movs r6, #0
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r1, #0x40
	ands r0, r1
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, r0, r6
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, #4
	strh r0, [r1]
_0802E4CC:
	ldr r0, _0802E4E4 @ =gEwramData
	ldr r1, [r0]
	ldr r6, _0802E4E8 @ =0x00013260
	adds r1, r1, r6
	ldr r0, [r1]
	ldr r2, [r4, #0x1c]
	orrs r0, r2
	str r0, [r1]
_0802E4DC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802E4E4: .4byte gEwramData
_0802E4E8: .4byte 0x00013260

	thumb_func_start sub_0802E4EC
sub_0802E4EC: @ 0x0802E4EC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov r8, r0
	adds r0, r7, #0
	bl sub_0802DE5C
	cmp r0, #0
	beq _0802E50C
	adds r0, r7, #0
	bl sub_08000E14
	b _0802E608
_0802E50C:
	ldrb r6, [r7, #0xa]
	cmp r6, #0
	beq _0802E518
	cmp r6, #1
	beq _0802E5BA
	b _0802E602
_0802E518:
	ldr r0, _0802E614 @ =0x081DC144
	ldr r5, _0802E618 @ =0x0820B4E4
	ldr r1, _0802E61C @ =0x082361A4
	mov sb, r1
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _0802E620 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _0802E624 @ =0x000131D0
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r3, _0802E624 @ =0x000131D0
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r3, #3
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xf
	strb r0, [r1]
	ldr r0, _0802E628 @ =sub_0803B9D0
	str r0, [r7, #4]
	movs r2, #0xc
	ldr r0, [r4]
	ldr r3, _0802E62C @ =0x000131C2
	adds r1, r0, r3
	strh r2, [r1]
	ldr r1, _0802E630 @ =0x000131C4
	adds r0, r0, r1
	strh r6, [r0]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r1, _0802E634 @ =0x1414050A
	adds r0, r7, #0
	bl sub_08042884
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #2
	movs r1, #0x14
	bl sub_08042A54
	movs r0, #0xd5
	lsls r0, r0, #1
	bl sub_080D7910
_0802E5BA:
	movs r4, #0x10
	mov r0, r8
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r7, #0
	adds r3, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802E5E4
	rsbs r0, r4, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0802E5E4:
	mov r1, r8
	adds r1, #0x42
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	mov r0, r8
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0x20
	adds r1, #4
	strh r0, [r1]
_0802E602:
	adds r0, r7, #0
	bl sub_0803F17C
_0802E608:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E614: .4byte 0x081DC144
_0802E618: .4byte 0x0820B4E4
_0802E61C: .4byte 0x082361A4
_0802E620: .4byte gEwramData
_0802E624: .4byte 0x000131D0
_0802E628: .4byte sub_0803B9D0
_0802E62C: .4byte 0x000131C2
_0802E630: .4byte 0x000131C4
_0802E634: .4byte 0x1414050A

	thumb_func_start sub_0802E638
sub_0802E638: @ 0x0802E638
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x59
	ldrb r0, [r5]
	movs r6, #4
	orrs r0, r6
	strb r0, [r5]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0802E654
	cmp r0, #1
	beq _0802E6B0
	b _0802E724
_0802E654:
	ldr r1, _0802E708 @ =0x082362B8
	ldr r0, _0802E70C @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0802E710 @ =0x000131D0
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r4, #0
	movs r3, #3
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	ldr r0, _0802E714 @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r1, _0802E718 @ =0x1414F6F6
	adds r0, r4, #0
	bl sub_08042884
	adds r1, r4, #0
	adds r1, #0x72
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	movs r0, #0x1a
	strb r0, [r4, #0xd]
	ldrb r0, [r5]
	movs r1, #2
	orrs r0, r1
	strb r0, [r5]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_0802E6B0:
	ldrb r0, [r4, #0xd]
	lsrs r0, r0, #2
	adds r0, #7
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D3D8
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _0802E724
	adds r2, r4, #0
	adds r2, #0x58
	ldrh r1, [r2]
	ldr r0, _0802E71C @ =0x0000101F
	ands r0, r1
	cmp r0, #0
	beq _0802E6EC
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_0802E6EC:
	ldr r0, _0802E70C @ =gEwramData
	ldr r1, [r0]
	movs r2, #0x24
	ldrsh r0, [r4, r2]
	lsls r0, r0, #2
	ldr r2, _0802E720 @ =0x00013144
	adds r1, r1, r2
	adds r1, r1, r0
	str r5, [r1]
	adds r0, r4, #0
	bl sub_08000E14
	b _0802E72A
	.align 2, 0
_0802E708: .4byte 0x082362B8
_0802E70C: .4byte gEwramData
_0802E710: .4byte 0x000131D0
_0802E714: .4byte sub_0803B9D0
_0802E718: .4byte 0x1414F6F6
_0802E71C: .4byte 0x0000101F
_0802E720: .4byte 0x00013144
_0802E724:
	adds r0, r4, #0
	bl sub_0803F17C
_0802E72A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0802E730
sub_0802E730: @ 0x0802E730
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r7, [r6, #0x14]
	bl sub_0802DE5C
	cmp r0, #0
	bne _0802E756
	ldr r0, [r7, #0x10]
	ldr r1, _0802E760 @ =0x001001A2
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xd
	cmp r0, r1
	beq _0802E764
	adds r0, r6, #0
	bl sub_0802DD84
_0802E756:
	adds r0, r6, #0
	bl sub_08000E14
	b _0802E94E
	.align 2, 0
_0802E760: .4byte 0x001001A2
_0802E764:
	ldr r0, _0802E784 @ =gEwramData
	mov r8, r0
	ldr r0, [r0]
	ldr r1, _0802E788 @ =0x000131B8
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #0x82
	lsls r2, r2, #4
	orrs r1, r2
	str r1, [r0]
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _0802E78C
	cmp r0, #1
	beq _0802E814
	b _0802E94E
	.align 2, 0
_0802E784: .4byte gEwramData
_0802E788: .4byte 0x000131B8
_0802E78C:
	ldr r0, _0802E880 @ =0x081DC948
	ldr r4, _0802E884 @ =0x0820B508
	ldr r5, _0802E888 @ =0x082362B8
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	mov r2, r8
	ldr r1, [r2]
	ldr r2, _0802E88C @ =0x000131D0
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl sub_0803C7B4
	mov r4, r8
	ldr r0, [r4]
	ldr r1, _0802E88C @ =0x000131D0
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #3
	bl sub_0803B924
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	movs r0, #2
	movs r1, #0xf
	bl sub_08042A54
	movs r2, #0x14
	movs r3, #2
	ldr r1, [r4]
	ldr r4, _0802E890 @ =0x000131C2
	adds r0, r1, r4
	strh r2, [r0]
	ldr r2, _0802E894 @ =0x000131C4
	adds r0, r1, r2
	strh r3, [r0]
	subs r2, #0xb4
	adds r1, r1, r2
	ldr r1, [r1]
	movs r0, #0xa
	strb r0, [r1, #0xa]
	mov r4, r8
	ldr r0, [r4]
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x35
	movs r2, #3
	movs r3, #1
	bl sub_0803F2C8
	ldr r0, [r7, #0x10]
	ldr r1, _0802E898 @ =0xEFFFFBFF
	ands r0, r1
	str r0, [r7, #0x10]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
_0802E814:
	movs r5, #0x10
	adds r4, r7, #0
	adds r4, #0x58
	ldrb r0, [r4]
	adds r3, r6, #0
	adds r3, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802E83E
	rsbs r0, r5, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0802E83E:
	adds r1, r7, #0
	adds r1, #0x42
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r6, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0x1c
	adds r1, #4
	strh r0, [r1]
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	bne _0802E948
	ldr r1, _0802E89C @ =sub_0802E638
	adds r0, r6, #0
	bl sub_0802DD00
	adds r5, r0, #0
	cmp r5, #0
	beq _0802E932
	ldrb r0, [r6, #0xb]
	cmp r0, #0
	bne _0802E8A0
	movs r0, #0x91
	bl sub_080D7910
	b _0802E8B6
	.align 2, 0
_0802E880: .4byte 0x081DC948
_0802E884: .4byte 0x0820B508
_0802E888: .4byte 0x082362B8
_0802E88C: .4byte 0x000131D0
_0802E890: .4byte 0x000131C2
_0802E894: .4byte 0x000131C4
_0802E898: .4byte 0xEFFFFBFF
_0802E89C: .4byte sub_0802E638
_0802E8A0:
	cmp r0, #2
	bne _0802E8B6
	bl sub_08000A90
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0802E8B6
	movs r0, #0x91
	bl sub_080D7910
_0802E8B6:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _0802E8C8
	movs r0, #0
	strb r0, [r6, #0xb]
_0802E8C8:
	str r6, [r5, #0x14]
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	ldrb r0, [r6, #0x10]
	strb r0, [r5, #0x10]
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802E8F0
	ldr r0, _0802E8E8 @ =0xFFFE8000
	str r0, [r5, #0x48]
	ldr r0, _0802E8EC @ =0xFFFFFC00
	b _0802E8FA
	.align 2, 0
_0802E8E8: .4byte 0xFFFE8000
_0802E8EC: .4byte 0xFFFFFC00
_0802E8F0:
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r5, #0x48]
	movs r0, #0x80
	lsls r0, r0, #3
_0802E8FA:
	str r0, [r5, #0x50]
	ldr r0, [r5, #0x48]
	ldr r1, [r7, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x48]
	ldrb r0, [r4]
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
	ldr r1, _0802E958 @ =0x080E1A64
	movs r2, #0x26
	ldrsh r0, [r6, r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r4, #0xa0
	lsls r4, r4, #9
	adds r0, r0, r4
	str r0, [r5, #0x4c]
	ldr r0, _0802E95C @ =0xFFFFE800
	str r0, [r5, #0x54]
_0802E932:
	ldrh r0, [r6, #0x26]
	adds r0, #1
	strh r0, [r6, #0x26]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _0802E944
	movs r0, #0
	strh r0, [r6, #0x26]
_0802E944:
	movs r0, #5
	strb r0, [r6, #0xd]
_0802E948:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
_0802E94E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E958: .4byte 0x080E1A64
_0802E95C: .4byte 0xFFFFE800

	thumb_func_start sub_0802E960
sub_0802E960: @ 0x0802E960
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, [r6, #0x14]
	mov sb, r0
	adds r7, r6, #0
	adds r7, #0x59
	ldrb r0, [r7]
	movs r1, #4
	orrs r0, r1
	strb r0, [r7]
	ldr r1, _0802E9A0 @ =gEwramData
	mov sl, r1
	ldr r0, [r1]
	ldr r2, _0802E9A4 @ =0x0001327A
	adds r1, r0, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	ldr r2, _0802E9A8 @ =0x0001327E
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r1, r0
	blt _0802E9AC
	adds r0, r6, #0
	bl sub_0802DD84
	b _0802EA5A
	.align 2, 0
_0802E9A0: .4byte gEwramData
_0802E9A4: .4byte 0x0001327A
_0802E9A8: .4byte 0x0001327E
_0802E9AC:
	adds r0, r6, #0
	bl sub_0802DE5C
	cmp r0, #0
	bne _0802EA5A
	ldrb r0, [r6, #0xa]
	mov r8, r0
	cmp r0, #0
	beq _0802E9C8
	adds r3, r6, #0
	adds r3, #0x58
	cmp r0, #1
	beq _0802EAA4
	b _0802EB00
_0802E9C8:
	ldr r0, _0802EA64 @ =0x081DE154
	ldr r4, _0802EA68 @ =0x0820B574
	ldr r5, _0802EA6C @ =0x082368A8
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	mov r2, sl
	ldr r1, [r2]
	ldr r2, _0802EA70 @ =0x000131D0
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl sub_0803C7B4
	mov r1, sl
	ldr r0, [r1]
	ldr r2, _0802EA70 @ =0x000131D0
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #3
	bl sub_0803B924
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	ldr r0, _0802EA74 @ =sub_0803B9D0
	str r0, [r6, #4]
	ldrb r0, [r7]
	movs r1, #2
	orrs r0, r1
	strb r0, [r7]
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _0802EA80
	adds r2, r6, #0
	adds r2, #0x58
	ldrh r1, [r2]
	ldr r0, _0802EA78 @ =0x0000101F
	ands r0, r1
	cmp r0, #0
	beq _0802EA46
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_0802EA46:
	mov r0, sl
	ldr r1, [r0]
	movs r2, #0x24
	ldrsh r0, [r6, r2]
	lsls r0, r0, #2
	ldr r2, _0802EA7C @ =0x00013144
	adds r1, r1, r2
	adds r1, r1, r0
	mov r0, r8
	str r0, [r1]
_0802EA5A:
	adds r0, r6, #0
	bl sub_08000E14
	b _0802EB62
	.align 2, 0
_0802EA64: .4byte 0x081DE154
_0802EA68: .4byte 0x0820B574
_0802EA6C: .4byte 0x082368A8
_0802EA70: .4byte 0x000131D0
_0802EA74: .4byte sub_0803B9D0
_0802EA78: .4byte 0x0000101F
_0802EA7C: .4byte 0x00013144
_0802EA80:
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
	ldrb r0, [r7]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r7]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	adds r3, r2, #0
_0802EAA4:
	movs r4, #0x10
	rsbs r4, r4, #0
	mov r0, sb
	adds r0, #0x58
	ldrb r0, [r0]
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802EAC8
	movs r4, #0x10
_0802EAC8:
	mov r0, sb
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, r0, r4
	adds r1, r6, #0
	adds r1, #0x42
	strh r0, [r1]
	mov r0, sb
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0x1a
	adds r1, #4
	strh r0, [r1]
	ldr r0, [r6, #0x28]
	ldr r1, _0802EB74 @ =0x0000FFFF
	cmp r0, r1
	bgt _0802EAF2
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r6, #0x28]
_0802EAF2:
	ldr r0, [r6, #0x2c]
	cmp r0, r1
	bgt _0802EB00
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r0, r1
	str r0, [r6, #0x2c]
_0802EB00:
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x2c]
	ldrb r0, [r3]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	movs r4, #0
	str r4, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	bl sub_0803E058
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _0802EB62
	strb r4, [r6, #0xd]
	movs r0, #0xa0
	lsls r0, r0, #1
	bl sub_080D7910
	movs r0, #0xa
	bl sub_08021FEC
	ldr r0, _0802EB78 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0802EB7C @ =0x0001327A
	adds r1, r0, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	ldr r2, _0802EB80 @ =0x0001327E
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r1, r0
	blt _0802EB62
	bl sub_08000A90
	movs r1, #0x3f
	ands r1, r0
	cmp r1, #7
	bhi _0802EB62
	movs r0, #0xd6
	lsls r0, r0, #1
	bl sub_080D7910
_0802EB62:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802EB74: .4byte 0x0000FFFF
_0802EB78: .4byte gEwramData
_0802EB7C: .4byte 0x0001327A
_0802EB80: .4byte 0x0001327E

	thumb_func_start sub_0802EB84
sub_0802EB84: @ 0x0802EB84
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r7, r0, #0
	bl sub_0802DE5C
	cmp r0, #0
	bne _0802EBB2
	ldr r2, _0802EBBC @ =gEwramData
	ldr r0, [r2]
	ldr r1, _0802EBC0 @ =0x00013110
	adds r0, r0, r1
	ldr r3, [r0]
	ldr r0, [r3, #0x10]
	ldr r1, _0802EBC4 @ =0x010001A0
	ands r0, r1
	cmp r0, #0
	beq _0802EBC8
	adds r0, r7, #0
	bl sub_0802DD84
_0802EBB2:
	adds r0, r7, #0
	bl sub_08000E14
	b _0802ECCE
	.align 2, 0
_0802EBBC: .4byte gEwramData
_0802EBC0: .4byte 0x00013110
_0802EBC4: .4byte 0x010001A0
_0802EBC8:
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	bne _0802EC2E
	ldr r0, [r3, #0x48]
	movs r1, #0x80
	lsls r1, r1, #0xb
	cmp r0, r1
	bgt _0802EBDE
	ldr r1, _0802ECDC @ =0xFFFC0000
	cmp r0, r1
	bge _0802EBE0
_0802EBDE:
	str r1, [r3, #0x48]
_0802EBE0:
	ldr r0, [r2]
	ldr r2, _0802ECE0 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r1, [r0, #0x4c]
	movs r2, #0x80
	lsls r2, r2, #0xb
	cmp r1, r2
	bgt _0802EBF8
	ldr r2, _0802ECDC @ =0xFFFC0000
	cmp r1, r2
	bge _0802EBFA
_0802EBF8:
	str r2, [r0, #0x4c]
_0802EBFA:
	ldr r6, _0802ECE4 @ =gEwramData
	ldr r1, [r6]
	ldr r5, _0802ECE0 @ =0x00013110
	adds r1, r1, r5
	ldr r0, [r1]
	movs r4, #0
	str r4, [r0, #0x50]
	ldr r0, [r1]
	str r4, [r0, #0x54]
	ldr r2, [r1]
	ldr r0, [r2, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0x8f
	bl sub_080D7910
	movs r0, #1
	strb r0, [r7, #0xa]
	ldr r0, [r6]
	adds r0, r0, r5
	ldr r0, [r0]
	strb r4, [r0, #0xb]
	movs r0, #0x10
	strb r0, [r7, #0xd]
_0802EC2E:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	beq _0802ECA4
	subs r0, #1
	strb r0, [r7, #0xd]
	ldr r0, _0802ECE4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0802ECE0 @ =0x00013110
	adds r0, r0, r1
	ldr r6, [r0]
	bl sub_08000A90
	movs r4, #0xff
	ands r4, r0
	lsls r4, r4, #8
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r4, r2
	bl sub_080009E4
	adds r5, r0, #0
	lsls r7, r5, #1
	mov sb, r7
	adds r0, r4, #0
	bl sub_080009E4
	lsls r4, r0, #1
	mov r8, r4
	lsls r5, r5, #2
	ldr r1, [r6, #0x40]
	adds r5, r1, r5
	ldr r1, [r6, #0x44]
	ldr r2, _0802ECE8 @ =0xFFF00000
	adds r1, r1, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r2, r7, #0
	cmp r7, #0
	bge _0802EC7E
	adds r2, #0xf
_0802EC7E:
	asrs r2, r2, #4
	adds r3, r4, #0
	cmp r4, #0
	bge _0802EC88
	adds r3, #0xf
_0802EC88:
	asrs r3, r3, #4
	movs r0, #4
	str r0, [sp]
	movs r0, #6
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_08045B44
	cmp r0, #0
	beq _0802ECA4
	mov r1, sb
	str r1, [r0, #0x48]
	mov r2, r8
	str r2, [r0, #0x4c]
_0802ECA4:
	ldr r2, _0802ECE4 @ =gEwramData
	ldr r0, [r2]
	ldr r1, _0802ECE0 @ =0x00013110
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #8
	strb r0, [r1, #0xa]
	ldr r2, [r2]
	ldr r0, _0802ECEC @ =0x00013260
	adds r3, r2, r0
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r3]
	ldr r1, _0802ECF0 @ =0x000131B8
	adds r2, r2, r1
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
_0802ECCE:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802ECDC: .4byte 0xFFFC0000
_0802ECE0: .4byte 0x00013110
_0802ECE4: .4byte gEwramData
_0802ECE8: .4byte 0xFFF00000
_0802ECEC: .4byte 0x00013260
_0802ECF0: .4byte 0x000131B8

	thumb_func_start sub_0802ECF4
sub_0802ECF4: @ 0x0802ECF4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	bne _0802ED66
	ldr r0, _0802EDB4 @ =0x081DD14C
	ldr r5, _0802EDB8 @ =0x0820B52C
	ldr r6, _0802EDBC @ =0x0823641C
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _0802EDC0 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _0802EDC4 @ =0x000131D0
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r1, _0802EDC4 @ =0x000131D0
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #3
	bl sub_0803B924
	bl sub_08000A90
	adds r1, r0, #0
	movs r0, #3
	ands r1, r0
	adds r0, r7, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	ldr r0, _0802EDC8 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_0802ED66:
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _0802EDAE
	adds r2, r7, #0
	adds r2, #0x58
	ldrh r1, [r2]
	ldr r0, _0802EDCC @ =0x0000101F
	ands r0, r1
	cmp r0, #0
	beq _0802ED94
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_0802ED94:
	ldr r0, _0802EDC0 @ =gEwramData
	ldr r1, [r0]
	movs r2, #0x24
	ldrsh r0, [r7, r2]
	lsls r0, r0, #2
	ldr r2, _0802EDD0 @ =0x00013144
	adds r1, r1, r2
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	adds r0, r7, #0
	bl sub_08000E14
_0802EDAE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802EDB4: .4byte 0x081DD14C
_0802EDB8: .4byte 0x0820B52C
_0802EDBC: .4byte 0x0823641C
_0802EDC0: .4byte gEwramData
_0802EDC4: .4byte 0x000131D0
_0802EDC8: .4byte sub_0803B9D0
_0802EDCC: .4byte 0x0000101F
_0802EDD0: .4byte 0x00013144

	thumb_func_start sub_0802EDD4
sub_0802EDD4: @ 0x0802EDD4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x14]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r4, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0802EDF6
	movs r0, #0x90
	bl sub_080D7910
_0802EDF6:
	ldrb r1, [r4, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0802EE2E
	ldr r1, _0802EE3C @ =sub_0802ECF4
	adds r0, r4, #0
	bl sub_0802DD00
	adds r3, r0, #0
	cmp r3, #0
	beq _0802EE2E
	ldr r0, [r5, #0x40]
	str r0, [r3, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r3, #0x44]
	adds r0, r5, #0
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
_0802EE2E:
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802EE3C: .4byte sub_0802ECF4

	thumb_func_start sub_0802EE40
sub_0802EE40: @ 0x0802EE40
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r6, [r7, #0x14]
	movs r0, #0x59
	adds r0, r0, r7
	mov r8, r0
	ldrb r0, [r0]
	movs r1, #4
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	beq _0802EE68
	cmp r0, #1
	beq _0802EEC8
	b _0802EEFE
_0802EE68:
	ldr r0, _0802EF10 @ =0x081E116C
	ldr r5, _0802EF14 @ =0x0820B64C
	ldr r2, _0802EF18 @ =0x0823760C
	mov sb, r2
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _0802EF1C @ =gEwramData
	ldr r1, [r4]
	ldr r2, _0802EF20 @ =0x000131D0
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r1, _0802EF20 @ =0x000131D0
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r3, #3
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xe
	strb r0, [r1]
	ldr r0, _0802EF24 @ =sub_0803B9D0
	str r0, [r7, #4]
	mov r2, r8
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_0802EEC8:
	ldr r0, [r6, #0x40]
	str r0, [r7, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r7, #0x44]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r7, #0
	adds r3, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r0, [r7, #0xd]
	adds r0, #1
	strb r0, [r7, #0xd]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0802EEFE
	movs r0, #0x93
	bl sub_080D7910
_0802EEFE:
	adds r0, r7, #0
	bl sub_0803F17C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802EF10: .4byte 0x081E116C
_0802EF14: .4byte 0x0820B64C
_0802EF18: .4byte 0x0823760C
_0802EF1C: .4byte gEwramData
_0802EF20: .4byte 0x000131D0
_0802EF24: .4byte sub_0803B9D0

	thumb_func_start sub_0802EF28
sub_0802EF28: @ 0x0802EF28
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r6, _0802EFA8 @ =gEwramData
	ldr r0, [r6]
	ldr r5, _0802EFAC @ =0x00013110
	adds r0, r0, r5
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x42
	ldrh r7, [r1]
	adds r0, #0x46
	ldrh r0, [r0]
	mov r8, r0
	adds r0, r4, #0
	bl sub_0803B9D0
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r4, #0xb]
	cmp r0, r1
	bls _0802EF60
	movs r0, #0
	strb r0, [r4, #0xd]
_0802EF60:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _0802EF9C
	ldr r2, [r6]
	adds r2, r2, r5
	ldr r0, [r2]
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r1, [r1]
	adds r0, #0x42
	strh r1, [r0]
	ldr r0, [r2]
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	adds r0, #0x46
	strh r1, [r0]
	ldr r0, [r2]
	ldr r1, [r0, #4]
	bl _call_via_r1
	ldr r1, [r6]
	adds r1, r1, r5
	ldr r0, [r1]
	adds r0, #0x42
	strh r7, [r0]
	ldr r0, [r1]
	adds r0, #0x46
	mov r1, r8
	strh r1, [r0]
_0802EF9C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802EFA8: .4byte gEwramData
_0802EFAC: .4byte 0x00013110

	thumb_func_start sub_0802EFB0
sub_0802EFB0: @ 0x0802EFB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	ldr r6, [r4, #0x14]
	ldr r0, _0802F008 @ =gEwramData
	mov r8, r0
	ldr r0, [r0]
	ldr r1, _0802F00C @ =0x0001326A
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0802F010 @ =0x080E192C
	adds r0, r0, r1
	mov sb, r0
	mov sl, sb
	adds r0, r4, #0
	bl sub_0802DE5C
	cmp r0, #0
	bne _0802F000
	mov r2, r8
	ldr r0, [r2]
	ldr r1, _0802F014 @ =0x00013110
	mov ip, r1
	adds r5, r0, r1
	ldr r0, [r5]
	ldr r0, [r0, #0x10]
	ldr r1, _0802F018 @ =0x000081A2
	ands r0, r1
	cmp r0, #0
	beq _0802F01C
	adds r0, r4, #0
	bl sub_0802DD84
_0802F000:
	adds r0, r4, #0
	bl sub_08000E14
	b _0802F182
	.align 2, 0
_0802F008: .4byte gEwramData
_0802F00C: .4byte 0x0001326A
_0802F010: .4byte 0x080E192C
_0802F014: .4byte 0x00013110
_0802F018: .4byte 0x000081A2
_0802F01C:
	movs r7, #0
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r1, #0x40
	ands r0, r1
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, r0, r7
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, #4
	strh r0, [r1]
	ldrb r1, [r4, #0xa]
	cmp r1, #1
	beq _0802F09A
	cmp r1, #1
	bgt _0802F064
	cmp r1, #0
	beq _0802F06A
	b _0802F164
_0802F064:
	cmp r1, #2
	beq _0802F142
	b _0802F164
_0802F06A:
	ldr r0, [r5]
	str r1, [r0, #0x50]
	ldr r0, [r5]
	str r1, [r0, #0x54]
	ldr r2, [r5]
	ldr r0, [r2, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #1
	strb r0, [r4, #0xa]
	ldr r1, [r5]
	movs r0, #0
	strb r0, [r1, #0xb]
	mov r2, r8
	ldr r0, [r2]
	add r0, ip
	ldr r0, [r0]
	mov r6, sb
	ldr r1, [r6, #8]
	adds r0, #0x27
	strb r1, [r0]
	b _0802F164
_0802F09A:
	ldr r0, [r5]
	ldrb r0, [r0, #0xb]
	cmp r0, #3
	bne _0802F164
	mov r0, sl
	ldr r1, [r0, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0802F108 @ =0x080E1A74
	adds r5, r0, r1
	ldr r1, [r5]
	adds r0, r6, #0
	bl sub_0802DD00
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r1, _0802F10C @ =0x4430C0E8
	adds r0, r4, #0
	bl sub_08042884
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2]
	movs r0, #2
	movs r1, #0xf
	bl sub_08042A54
	ldrh r2, [r5, #4]
	ldrh r3, [r5, #6]
	mov r1, r8
	ldr r0, [r1]
	ldr r6, _0802F110 @ =0x000131C2
	adds r1, r0, r6
	strh r2, [r1]
	ldr r1, _0802F114 @ =0x000131C4
	adds r0, r0, r1
	strh r3, [r0]
	bl sub_080213F4
	cmp r0, #0
	beq _0802F11C
	ldr r0, _0802F118 @ =0x0000019F
	bl sub_080D7910
	b _0802F122
	.align 2, 0
_0802F108: .4byte 0x080E1A74
_0802F10C: .4byte 0x4430C0E8
_0802F110: .4byte 0x000131C2
_0802F114: .4byte 0x000131C4
_0802F118: .4byte 0x0000019F
_0802F11C:
	ldrh r0, [r5, #8]
	bl sub_080D7910
_0802F122:
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	movs r3, #0x80
	lsls r3, r3, #8
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x1f
	movs r1, #0xf
	movs r2, #0xf
	bl sub_0803D18C
	b _0802F164
_0802F142:
	bl sub_0803D408
	cmp r0, #0
	bne _0802F14E
	bl sub_0803D270
_0802F14E:
	mov r2, r8
	ldr r1, [r2]
	ldr r6, _0802F194 @ =0x000131B8
	adds r1, r1, r6
	ldr r0, [r1]
	movs r2, #0xe
	orrs r0, r2
	str r0, [r1]
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
_0802F164:
	ldr r2, _0802F198 @ =gEwramData
	ldr r0, [r2]
	ldr r1, _0802F19C @ =0x00013110
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #9
	strb r0, [r1, #0xa]
	ldr r1, [r2]
	ldr r2, _0802F1A0 @ =0x00013260
	adds r1, r1, r2
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #5
	orrs r0, r2
	str r0, [r1]
_0802F182:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802F194: .4byte 0x000131B8
_0802F198: .4byte gEwramData
_0802F19C: .4byte 0x00013110
_0802F1A0: .4byte 0x00013260

	thumb_func_start sub_0802F1A4
sub_0802F1A4: @ 0x0802F1A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r5, [r7, #0x14]
	ldr r0, _0802F240 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0802F244 @ =0x000131F2
	adds r1, r0, r1
	str r1, [sp, #8]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r7, #0xa]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0802F1F4
	adds r0, r7, #0
	bl sub_0802DF2C
	cmp r0, #0
	beq _0802F1E4
	movs r0, #4
	strb r0, [r7, #0xa]
_0802F1E4:
	ldr r0, [r5, #0x10]
	movs r1, #0xd1
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802F1F4
	movs r0, #4
	strb r0, [r7, #0xa]
_0802F1F4:
	movs r6, #0
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r7, #0
	adds r3, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r1, #0x40
	ands r0, r1
	adds r4, r3, #0
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, r0, r6
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, #4
	strh r0, [r1]
	ldrb r0, [r7, #0xa]
	cmp r0, #5
	bls _0802F236
	b _0802F504
_0802F236:
	lsls r0, r0, #2
	ldr r1, _0802F248 @ =_0802F24C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802F240: .4byte gEwramData
_0802F244: .4byte 0x000131F2
_0802F248: .4byte _0802F24C
_0802F24C: @ jump table
	.4byte _0802F264 @ case 0
	.4byte _0802F2F4 @ case 1
	.4byte _0802F424 @ case 2
	.4byte _0802F504 @ case 3
	.4byte _0802F482 @ case 4
	.4byte _0802F4BC @ case 5
_0802F264:
	ldr r0, [r5, #0x10]
	movs r1, #0x82
	ands r0, r1
	cmp r0, #0
	beq _0802F270
	b _0802F4F6
_0802F270:
	ldr r0, _0802F2DC @ =0x081DD950
	ldr r5, _0802F2E0 @ =0x0820B550
	ldr r6, _0802F2E4 @ =0x08236868
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _0802F2E8 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _0802F2EC @ =0x000131D0
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r1, _0802F2EC @ =0x000131D0
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #3
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xf
	strb r0, [r1]
	ldr r0, _0802F2F0 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x10
	strb r0, [r7, #0xd]
	movs r0, #1
	strb r0, [r7, #0xa]
	movs r0, #0x99
	bl sub_080D7910
	b _0802F504
	.align 2, 0
_0802F2DC: .4byte 0x081DD950
_0802F2E0: .4byte 0x0820B550
_0802F2E4: .4byte 0x08236868
_0802F2E8: .4byte gEwramData
_0802F2EC: .4byte 0x000131D0
_0802F2F0: .4byte sub_0803B9D0
_0802F2F4:
	ldr r2, _0802F410 @ =gEwramData
	ldr r1, [r2]
	ldr r0, _0802F414 @ =0x0001325C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #1
	orrs r0, r2
	str r0, [r1]
	bl sub_08000A90
	adds r4, r0, #0
	movs r0, #0xff
	ands r4, r0
	lsls r4, r4, #8
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	adds r5, r0, #0
	lsls r6, r5, #1
	mov sb, r6
	adds r0, r4, #0
	bl sub_080009E4
	lsls r4, r0, #1
	mov r8, r4
	lsls r5, r5, #4
	ldr r1, [r7, #0x40]
	adds r5, r1, r5
	ldr r1, [r7, #0x44]
	ldr r2, _0802F418 @ =0xFFD80000
	adds r1, r1, r2
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r2, r6, #0
	cmp r6, #0
	bge _0802F342
	adds r2, #0xf
_0802F342:
	asrs r2, r2, #4
	adds r3, r4, #0
	cmp r4, #0
	bge _0802F34C
	adds r3, #0xf
_0802F34C:
	asrs r3, r3, #4
	movs r0, #4
	mov sl, r0
	str r0, [sp]
	movs r0, #8
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_08045B44
	cmp r0, #0
	beq _0802F36A
	mov r1, sb
	str r1, [r0, #0x48]
	mov r2, r8
	str r2, [r0, #0x4c]
_0802F36A:
	bl sub_08000A90
	adds r4, r0, #0
	movs r0, #0xff
	ands r4, r0
	lsls r4, r4, #8
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	adds r5, r0, #0
	lsls r6, r5, #1
	adds r0, r4, #0
	bl sub_080009E4
	lsls r4, r0, #1
	lsls r5, r5, #4
	ldr r1, [r7, #0x40]
	adds r5, r1, r5
	ldr r1, [r7, #0x44]
	ldr r2, _0802F418 @ =0xFFD80000
	adds r1, r1, r2
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r2, r6, #0
	cmp r6, #0
	bge _0802F3A4
	adds r2, #0xf
_0802F3A4:
	asrs r2, r2, #4
	adds r3, r4, #0
	cmp r4, #0
	bge _0802F3AE
	adds r3, #0xf
_0802F3AE:
	asrs r3, r3, #4
	mov r0, sl
	str r0, [sp]
	movs r0, #8
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_08045B44
	cmp r0, #0
	beq _0802F3C6
	str r6, [r0, #0x48]
	str r4, [r0, #0x4c]
_0802F3C6:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	beq _0802F3CE
	b _0802F4F0
_0802F3CE:
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #2
	strb r0, [r7, #0xa]
	movs r1, #1
	strh r1, [r7, #0x30]
	ldr r0, _0802F410 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0802F41C @ =0x000131B8
	adds r3, r2, r1
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r3]
	ldr r0, _0802F420 @ =0x00013110
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #0x34
	movs r2, #3
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #0xd4
	lsls r0, r0, #1
	bl sub_080D7910
	b _0802F504
	.align 2, 0
_0802F410: .4byte gEwramData
_0802F414: .4byte 0x0001325C
_0802F418: .4byte 0xFFD80000
_0802F41C: .4byte 0x000131B8
_0802F420: .4byte 0x00013110
_0802F424:
	ldr r0, _0802F46C @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0802F470 @ =0x000131B8
	adds r3, r2, r1
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r3]
	ldr r0, _0802F474 @ =0x0001325C
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	movs r1, #0x32
	ldrsh r0, [r7, r1]
	movs r1, #0x3c
	bl __modsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802F458
	movs r0, #0x95
	bl sub_080D7910
_0802F458:
	ldrh r2, [r7, #0x32]
	movs r0, #0x32
	ldrsh r1, [r7, r0]
	ldr r0, _0802F478 @ =0x0000012B
	cmp r1, r0
	bgt _0802F47C
	adds r0, r2, #1
	strh r0, [r7, #0x32]
	b _0802F504
	.align 2, 0
_0802F46C: .4byte gEwramData
_0802F470: .4byte 0x000131B8
_0802F474: .4byte 0x0001325C
_0802F478: .4byte 0x0000012B
_0802F47C:
	movs r0, #4
	strb r0, [r7, #0xa]
	b _0802F504
_0802F482:
	movs r0, #0
	movs r1, #5
	strb r1, [r7, #0xa]
	strb r0, [r7, #0xd]
	movs r1, #0x30
	ldrsh r0, [r7, r1]
	cmp r0, #0
	beq _0802F4AA
	movs r0, #0xf0
	strb r0, [r7, #0xd]
	ldr r0, [r5, #0x10]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0802F4B2
	movs r0, #0xd1
	lsls r0, r0, #1
	bl sub_080D7910
	b _0802F4B2
_0802F4AA:
	ldrb r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4]
_0802F4B2:
	ldrb r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4]
	b _0802F504
_0802F4BC:
	ldrb r1, [r7, #0xd]
	cmp r1, #0
	beq _0802F4F6
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0802F4EE
	movs r0, #0x10
	bl sub_0802D5EC
	lsls r0, r0, #0x10
	ldr r4, [r7, #0x40]
	adds r4, r4, r0
	movs r0, #0x10
	bl sub_0802D5EC
	subs r0, #0x10
	lsls r0, r0, #0x10
	ldr r1, [r7, #0x44]
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x10
	movs r3, #8
	bl sub_08045CEC
_0802F4EE:
	ldrb r0, [r7, #0xd]
_0802F4F0:
	subs r0, #1
	strb r0, [r7, #0xd]
	b _0802F504
_0802F4F6:
	adds r0, r7, #0
	bl sub_0802DD84
	adds r0, r7, #0
	bl sub_08000E14
	b _0802F52E
_0802F504:
	ldrh r0, [r7, #0x32]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	ldr r2, [sp, #8]
	ldrh r2, [r2]
	adds r0, r0, r2
	ldr r1, [sp, #8]
	strh r0, [r1]
	ldr r0, _0802F540 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _0802F544 @ =0x000131F8
	adds r1, r1, r2
	ldrh r0, [r7, #0x32]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	bl sub_08021C44
	adds r0, r7, #0
	bl sub_0803F17C
_0802F52E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802F540: .4byte gEwramData
_0802F544: .4byte 0x000131F8

	thumb_func_start sub_0802F548
sub_0802F548: @ 0x0802F548
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, [r6, #0x14]
	mov sl, r0
	adds r0, r6, #0
	bl sub_0802DE5C
	cmp r0, #0
	bne _0802F606
	ldrb r7, [r6, #0xa]
	movs r1, #0x58
	adds r1, r1, r6
	mov r8, r1
	cmp r7, #1
	bne _0802F572
	b _0802F6AA
_0802F572:
	cmp r7, #1
	bgt _0802F57C
	cmp r7, #0
	beq _0802F58A
	b _0802F77E
_0802F57C:
	cmp r7, #2
	bne _0802F582
	b _0802F72C
_0802F582:
	cmp r7, #3
	bne _0802F588
	b _0802F760
_0802F588:
	b _0802F77E
_0802F58A:
	ldr r0, _0802F610 @ =0x081DF15C
	ldr r4, _0802F614 @ =0x0820B5BC
	ldr r5, _0802F618 @ =0x0823717C
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r2, _0802F61C @ =gEwramData
	mov sb, r2
	ldr r1, [r2]
	ldr r3, _0802F620 @ =0x000131D0
	adds r1, r1, r3
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl sub_0803C7B4
	mov r4, sb
	ldr r0, [r4]
	ldr r1, _0802F620 @ =0x000131D0
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #3
	bl sub_0803B924
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0802F62C
	mov r2, r8
	ldrh r1, [r2]
	ldr r0, _0802F624 @ =0x0000101F
	ands r0, r1
	cmp r0, #0
	beq _0802F5F4
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_0802F5F4:
	mov r3, sb
	ldr r1, [r3]
	movs r4, #0x24
	ldrsh r0, [r6, r4]
	lsls r0, r0, #2
	ldr r2, _0802F628 @ =0x00013144
	adds r1, r1, r2
	adds r1, r1, r0
	str r7, [r1]
_0802F606:
	adds r0, r6, #0
	bl sub_08000E14
	b _0802F7D6
	.align 2, 0
_0802F610: .4byte 0x081DF15C
_0802F614: .4byte 0x0820B5BC
_0802F618: .4byte 0x0823717C
_0802F61C: .4byte gEwramData
_0802F620: .4byte 0x000131D0
_0802F624: .4byte 0x0000101F
_0802F628: .4byte 0x00013144
_0802F62C:
	movs r0, #0x1f
	ands r2, r0
	mov r3, r8
	ldrb r1, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xf
	strb r0, [r1]
	ldr r0, _0802F6F0 @ =sub_0803B9D0
	str r0, [r6, #4]
	ldrb r0, [r2]
	movs r4, #2
	orrs r0, r4
	strb r0, [r2]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	movs r0, #0x20
	strb r0, [r6, #0xd]
	adds r0, r6, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	orrs r0, r4
	strb r0, [r2]
	movs r0, #2
	movs r1, #0x3c
	bl sub_08042A54
	movs r2, #0x23
	movs r3, #1
	mov r4, sb
	ldr r0, [r4]
	ldr r4, _0802F6F4 @ =0x000131C2
	adds r1, r0, r4
	strh r2, [r1]
	ldr r1, _0802F6F8 @ =0x000131C4
	adds r0, r0, r1
	strh r3, [r0]
	movs r0, #0xd3
	lsls r0, r0, #1
	bl sub_080D7910
_0802F6AA:
	ldr r0, [r6, #0x28]
	ldr r1, _0802F6FC @ =0x0000FFFF
	cmp r0, r1
	bgt _0802F6BA
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r6, #0x28]
_0802F6BA:
	ldr r0, [r6, #0x2c]
	cmp r0, r1
	bgt _0802F6C8
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [r6, #0x2c]
_0802F6C8:
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x2c]
	mov r4, r8
	ldrb r0, [r4]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	movs r4, #0
	str r4, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	bl sub_0803E058
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _0802F700
	subs r0, #1
	strb r0, [r6, #0xd]
	b _0802F77E
	.align 2, 0
_0802F6F0: .4byte sub_0803B9D0
_0802F6F4: .4byte 0x000131C2
_0802F6F8: .4byte 0x000131C4
_0802F6FC: .4byte 0x0000FFFF
_0802F700:
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	mov r2, r8
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
_0802F72C:
	ldr r0, _0802F758 @ =gEwramData
	ldr r1, [r0]
	mov r0, sl
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r3, _0802F75C @ =0x0001311C
	adds r1, r1, r3
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0802F77E
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #3
	strb r0, [r6, #0xa]
	b _0802F77E
	.align 2, 0
_0802F758: .4byte gEwramData
_0802F75C: .4byte 0x0001311C
_0802F760:
	adds r0, r6, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0802F77E
	movs r0, #2
	strb r0, [r6, #0xa]
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0802F77E:
	movs r4, #0
	mov r0, sl
	adds r0, #0x58
	ldrb r0, [r0]
	mov r3, r8
	movs r5, #1
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r7, #0x41
	rsbs r7, r7, #0
	adds r0, r7, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r1, #0x40
	ands r0, r1
	mov r0, sl
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, r0, r4
	adds r1, r6, #0
	adds r1, #0x42
	strh r0, [r1]
	mov r0, sl
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, #4
	strh r0, [r1]
	mov r4, r8
	ldrb r2, [r4]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1f
	movs r0, #1
	eors r1, r0
	ands r1, r5
	lsls r1, r1, #6
	adds r0, r7, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	adds r0, r6, #0
	bl sub_0802E1D0
_0802F7D6:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802F7E8
sub_0802F7E8: @ 0x0802F7E8
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0802F83A
	cmp r0, #1
	bgt _0802F7FE
	cmp r0, #0
	beq _0802F804
	b _0802F8A8
_0802F7FE:
	cmp r0, #2
	beq _0802F868
	b _0802F8A8
_0802F804:
	ldr r2, _0802F860 @ =sub_08031F04
	adds r0, r4, #0
	movs r1, #6
	movs r3, #0
	bl sub_0804277C
	ldr r1, _0802F864 @ =0x0808FCFC
	adds r0, r4, #0
	bl sub_08042884
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	subs r2, #0x19
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	movs r0, #0x98
	bl sub_080D7910
_0802F83A:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	movs r2, #5
	str r2, [sp]
	movs r2, #6
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #0
	bl sub_08045B44
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	b _0802F8A8
	.align 2, 0
_0802F860: .4byte sub_08031F04
_0802F864: .4byte 0x0808FCFC
_0802F868:
	adds r2, r4, #0
	adds r2, #0x58
	ldrh r1, [r2]
	ldr r0, _0802F89C @ =0x0000101F
	ands r0, r1
	cmp r0, #0
	beq _0802F880
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_0802F880:
	ldr r0, _0802F8A0 @ =gEwramData
	ldr r1, [r0]
	movs r2, #0x24
	ldrsh r0, [r4, r2]
	lsls r0, r0, #2
	ldr r2, _0802F8A4 @ =0x00013144
	adds r1, r1, r2
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	adds r0, r4, #0
	bl sub_08000E14
	b _0802F8C4
	.align 2, 0
_0802F89C: .4byte 0x0000101F
_0802F8A0: .4byte gEwramData
_0802F8A4: .4byte 0x00013144
_0802F8A8:
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806D128
	cmp r0, #0
	beq _0802F8C4
	movs r0, #2
	strb r0, [r4, #0xa]
_0802F8C4:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0802F8CC
sub_0802F8CC: @ 0x0802F8CC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	adds r4, r1, #0
	ldr r1, _0802F968 @ =sub_0802F7E8
	bl sub_0802DD00
	adds r6, r0, #0
	cmp r6, #0
	beq _0802F94C
	mov r5, sp
	adds r5, #2
	adds r0, r7, #0
	adds r1, r4, #0
	mov r2, sp
	adds r3, r5, #0
	bl sub_0806B658
	mov r0, sp
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r4, [r0]
	ldrh r0, [r1]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r0, #4
	bl sub_0802D5EC
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r2, [r1]
	subs r2, #0x10
	ldrh r1, [r5]
	subs r1, r1, r2
	adds r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl ArcTan2
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, sp
	ldrh r0, [r0]
	adds r1, r6, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r0, [r5]
	adds r1, #4
	strh r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	lsls r0, r0, #2
	str r0, [r6, #0x48]
	adds r0, r4, #0
	bl sub_080009E4
	lsls r0, r0, #2
	str r0, [r6, #0x4c]
_0802F94C:
	adds r2, r7, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802F968: .4byte sub_0802F7E8

	thumb_func_start sub_0802F96C
sub_0802F96C: @ 0x0802F96C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov sb, r0
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r7, #0xa]
	cmp r0, #3
	bhs _0802F9AA
	adds r0, r7, #0
	bl sub_0802DF2C
	cmp r0, #0
	beq _0802F9AA
	movs r0, #3
	strb r0, [r7, #0xa]
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_0802F9AA:
	ldrb r4, [r7, #0xa]
	cmp r4, #1
	bne _0802F9B2
	b _0802FB60
_0802F9B2:
	cmp r4, #1
	bgt _0802F9BC
	cmp r4, #0
	beq _0802F9C4
	b _0802FBDE
_0802F9BC:
	cmp r4, #3
	bne _0802F9C2
	b _0802FBB8
_0802F9C2:
	b _0802FBDE
_0802F9C4:
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r8, r1
	cmp r0, #0
	bge _0802FA0C
	adds r2, r7, #0
	adds r2, #0x58
	ldrh r1, [r2]
	ldr r0, _0802FA00 @ =0x0000101F
	ands r0, r1
	cmp r0, #0
	beq _0802F9EC
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_0802F9EC:
	ldr r0, _0802FA04 @ =gEwramData
	ldr r1, [r0]
	movs r2, #0x24
	ldrsh r0, [r7, r2]
	lsls r0, r0, #2
	ldr r2, _0802FA08 @ =0x00013144
	adds r1, r1, r2
	adds r1, r1, r0
	str r4, [r1]
	b _0802FBD0
	.align 2, 0
_0802FA00: .4byte 0x0000101F
_0802FA04: .4byte gEwramData
_0802FA08: .4byte 0x00013144
_0802FA0C:
	adds r5, r7, #0
	adds r5, #0x59
	ldrb r0, [r5]
	movs r4, #2
	orrs r0, r4
	strb r0, [r5]
	movs r0, #2
	movs r1, #0xa
	bl sub_08042A54
	ldr r2, _0802FAA0 @ =sub_0802F8CC
	adds r0, r7, #0
	movs r1, #7
	movs r3, #0
	bl sub_0804277C
	adds r1, r7, #0
	adds r1, #0x72
	ldrb r0, [r1]
	orrs r4, r0
	movs r0, #4
	orrs r4, r0
	strb r4, [r1]
	ldr r0, [r7, #0x1c]
	mov sl, r5
	cmp r0, #0
	bne _0802FAC0
	ldr r0, _0802FAA4 @ =0x081DE958
	ldr r5, _0802FAA8 @ =0x0820B598
	ldr r6, _0802FAAC @ =0x0823693C
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _0802FAB0 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _0802FAB4 @ =0x000131D0
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r4, _0802FAB4 @ =0x000131D0
	adds r0, r0, r4
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #3
	bl sub_0803B924
	ldr r0, _0802FAB8 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldr r1, _0802FABC @ =0x2010E010
	adds r0, r7, #0
	bl sub_08042884
	movs r0, #0x97
	bl sub_080D7910
	b _0802FB1C
	.align 2, 0
_0802FAA0: .4byte sub_0802F8CC
_0802FAA4: .4byte 0x081DE958
_0802FAA8: .4byte 0x0820B598
_0802FAAC: .4byte 0x0823693C
_0802FAB0: .4byte gEwramData
_0802FAB4: .4byte 0x000131D0
_0802FAB8: .4byte sub_0803B9D0
_0802FABC: .4byte 0x2010E010
_0802FAC0:
	ldr r0, _0802FB70 @ =0x081E0968
	ldr r5, _0802FB74 @ =0x0820B628
	ldr r6, _0802FB78 @ =0x08237464
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _0802FB7C @ =gEwramData
	ldr r1, [r4]
	ldr r2, _0802FB80 @ =0x000131D0
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r4, _0802FB80 @ =0x000131D0
	adds r0, r0, r4
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #3
	bl sub_0803B924
	ldr r0, _0802FB84 @ =sub_08031F08
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xe
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldr r1, _0802FB88 @ =0x2830D8E8
	adds r0, r7, #0
	bl sub_08042884
	movs r0, #0x8d
	bl sub_080D7910
_0802FB1C:
	adds r2, r7, #0
	adds r2, #0x58
	movs r0, #0x1f
	mov r1, r8
	ands r1, r0
	mov r8, r1
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	mov r4, r8
	orrs r0, r4
	strb r0, [r2]
	mov r1, sl
	ldrb r0, [r1]
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	mov r2, sl
	strb r0, [r2]
	movs r2, #0x1e
	movs r3, #0x20
	ldr r0, _0802FB7C @ =gEwramData
	ldr r0, [r0]
	ldr r4, _0802FB8C @ =0x000131C2
	adds r1, r0, r4
	strh r2, [r1]
	ldr r1, _0802FB90 @ =0x000131C4
	adds r0, r0, r1
	strh r3, [r0]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_0802FB60:
	ldr r1, [r7, #0x28]
	ldr r0, _0802FB94 @ =0x0000FFFF
	cmp r1, r0
	bgt _0802FB98
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r1, r2
	b _0802FBDC
	.align 2, 0
_0802FB70: .4byte 0x081E0968
_0802FB74: .4byte 0x0820B628
_0802FB78: .4byte 0x08237464
_0802FB7C: .4byte gEwramData
_0802FB80: .4byte 0x000131D0
_0802FB84: .4byte sub_08031F08
_0802FB88: .4byte 0x2830D8E8
_0802FB8C: .4byte 0x000131C2
_0802FB90: .4byte 0x000131C4
_0802FB94: .4byte 0x0000FFFF
_0802FB98:
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	adds r2, #0x19
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	b _0802FBDE
_0802FBB8:
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r7, #0x28]
	cmp r0, #0
	bgt _0802FBD8
	adds r0, r7, #0
	bl sub_0802DD84
_0802FBD0:
	adds r0, r7, #0
	bl sub_08000E14
	b _0802FC48
_0802FBD8:
	ldr r4, _0802FC58 @ =0xFFFFE000
	adds r0, r0, r4
_0802FBDC:
	str r0, [r7, #0x28]
_0802FBDE:
	adds r2, r7, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	movs r4, #0
	movs r5, #0
	mov r0, sb
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r7, #0
	adds r3, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r1, #0x40
	ands r0, r1
	mov r0, sb
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, r0, r5
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	mov r0, sb
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, #4
	strh r0, [r1]
	ldr r2, [r7, #0x28]
	ldrb r0, [r3]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	str r4, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	adds r1, r2, #0
	bl sub_0803E058
	adds r0, r7, #0
	bl sub_0803F17C
_0802FC48:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802FC58: .4byte 0xFFFFE000

	thumb_func_start sub_0802FC5C
sub_0802FC5C: @ 0x0802FC5C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov r8, r0
	adds r0, r7, #0
	bl sub_0802DE5C
	cmp r0, #0
	bne _0802FD3E
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	beq _0802FC7E
	cmp r0, #1
	beq _0802FD22
	b _0802FD28
_0802FC7E:
	mov r1, r8
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	bne _0802FD38
	mov r2, r8
	ldr r0, [r2, #0x10]
	ldr r1, _0802FD48 @ =0x001001A2
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xd
	cmp r0, r1
	bne _0802FD38
	ldr r0, _0802FD4C @ =0x081DF960
	ldr r5, _0802FD50 @ =0x0820B5E0
	ldr r6, _0802FD54 @ =0x082371F0
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _0802FD58 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _0802FD5C @ =0x000131D0
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r1, _0802FD5C @ =0x000131D0
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #3
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	ldr r0, _0802FD60 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r4]
	ldr r2, _0802FD64 @ =0x00013110
	adds r0, r0, r2
	ldr r1, [r0]
	movs r0, #0xa
	strb r0, [r1, #0xa]
	ldr r0, [r4]
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x35
	movs r2, #3
	movs r3, #1
	bl sub_0803F2C8
	mov r2, r8
	ldr r0, [r2, #0x10]
	ldr r1, _0802FD68 @ =0xEFFFFBFF
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r0, _0802FD6C @ =0x000001A7
	bl sub_080D7910
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_0802FD22:
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_0802FD28:
	mov r1, r8
	ldr r0, [r1, #0x10]
	ldr r1, _0802FD48 @ =0x001001A2
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xd
	cmp r0, r1
	beq _0802FD70
_0802FD38:
	adds r0, r7, #0
	bl sub_0802DD84
_0802FD3E:
	adds r0, r7, #0
	bl sub_08000E14
	b _0802FDCE
	.align 2, 0
_0802FD48: .4byte 0x001001A2
_0802FD4C: .4byte 0x081DF960
_0802FD50: .4byte 0x0820B5E0
_0802FD54: .4byte 0x082371F0
_0802FD58: .4byte gEwramData
_0802FD5C: .4byte 0x000131D0
_0802FD60: .4byte sub_0803B9D0
_0802FD64: .4byte 0x00013110
_0802FD68: .4byte 0xEFFFFBFF
_0802FD6C: .4byte 0x000001A7
_0802FD70:
	ldr r0, _0802FDD8 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0802FDDC @ =0x00013260
	adds r3, r2, r0
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r3]
	ldr r1, _0802FDE0 @ =0x000131B8
	adds r2, r2, r1
	ldr r0, [r2]
	movs r1, #0x82
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r2]
	movs r4, #0
	mov r0, r8
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r7, #0
	adds r3, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r1, #0x40
	ands r0, r1
	mov r0, r8
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, r0, r4
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	mov r0, r8
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, #4
	strh r0, [r1]
	adds r0, r7, #0
	bl sub_0803F17C
_0802FDCE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802FDD8: .4byte gEwramData
_0802FDDC: .4byte 0x00013260
_0802FDE0: .4byte 0x000131B8

	thumb_func_start sub_0802FDE4
sub_0802FDE4: @ 0x0802FDE4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r6, [r7, #0x14]
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	beq _0802FE02
	movs r1, #0x59
	adds r1, r1, r7
	mov r8, r1
	cmp r0, #1
	beq _0802FE86
	b _0802FEFE
_0802FE02:
	ldr r0, _0802FF1C @ =0x081E0164
	ldr r5, _0802FF20 @ =0x0820B604
	ldr r2, _0802FF24 @ =0x08237304
	mov r8, r2
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _0802FF28 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _0802FF2C @ =0x000131D0
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r1, _0802FF2C @ =0x000131D0
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r7, #0
	mov r1, r8
	movs r3, #3
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xc
	strb r0, [r1]
	ldr r0, _0802FF30 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r4, r7, #0
	adds r4, #0x59
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r1, _0802FF34 @ =0x1414F6F6
	adds r0, r7, #0
	bl sub_08042884
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	mov r8, r4
_0802FE86:
	movs r2, #0x2c
	ldrsh r0, [r7, r2]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	ldr r1, [r6, #0x30]
	adds r4, r1, #0
	muls r4, r0, r4
	movs r2, #0x2c
	ldrsh r0, [r7, r2]
	bl sub_080009E4
	ldr r1, [r6, #0x30]
	adds r5, r1, #0
	muls r5, r0, r5
	ldr r0, [r6, #0x40]
	adds r0, r0, r4
	str r0, [r7, #0x40]
	ldr r0, [r6, #0x44]
	adds r0, r0, r5
	str r0, [r7, #0x44]
	ldrh r0, [r7, #0x2e]
	ldrh r1, [r7, #0x2c]
	adds r0, r0, r1
	strh r0, [r7, #0x2c]
	ldrb r0, [r7, #0xd]
	adds r0, #1
	strb r0, [r7, #0xd]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0802FEFE
	ldr r5, _0802FF38 @ =0xFFFF0000
	movs r0, #0x80
	lsls r0, r0, #0xa
	bl sub_0802D5EC
	ldr r2, [r7, #0x40]
	adds r2, r2, r0
	ldr r1, [r7, #0x44]
	ldr r0, _0802FF3C @ =0xFFFC0000
	adds r1, r1, r0
	asrs r3, r5, #4
	movs r0, #6
	str r0, [sp]
	movs r0, #7
	str r0, [sp, #4]
	adds r0, r2, #0
	movs r2, #0
	bl sub_08045B44
	cmp r0, #0
	beq _0802FEFE
	str r5, [r0, #0x4c]
	adds r1, r0, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
_0802FEFE:
	mov r1, r8
	ldrb r0, [r1]
	movs r1, #4
	orrs r0, r1
	mov r2, r8
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_0803F17C
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802FF1C: .4byte 0x081E0164
_0802FF20: .4byte 0x0820B604
_0802FF24: .4byte 0x08237304
_0802FF28: .4byte gEwramData
_0802FF2C: .4byte 0x000131D0
_0802FF30: .4byte sub_0803B9D0
_0802FF34: .4byte 0x1414F6F6
_0802FF38: .4byte 0xFFFF0000
_0802FF3C: .4byte 0xFFFC0000

	thumb_func_start sub_0802FF40
sub_0802FF40: @ 0x0802FF40
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r0, [r4, #0x14]
	mov r8, r0
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bhs _0802FF6C
	adds r0, r4, #0
	bl sub_0802DF2C
	cmp r0, #0
	beq _0802FF6C
	movs r0, #2
	strb r0, [r4, #0xa]
_0802FF6C:
	ldrb r5, [r4, #0xa]
	cmp r5, #1
	beq _08030000
	cmp r5, #1
	bgt _0802FF7C
	cmp r5, #0
	beq _0802FF84
	b _08030098
_0802FF7C:
	cmp r5, #2
	bne _0802FF82
	b _08030080
_0802FF82:
	b _08030098
_0802FF84:
	movs r0, #2
	movs r1, #0x18
	bl sub_08042A54
	movs r2, #0xc
	movs r3, #2
	ldr r0, _0803004C @ =gEwramData
	ldr r0, [r0]
	ldr r6, _08030050 @ =0x000131C2
	adds r1, r0, r6
	strh r2, [r1]
	ldr r1, _08030054 @ =0x000131C4
	adds r0, r0, r1
	strh r3, [r0]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08030058 @ =0xFFF00000
	str r0, [r4, #0x4c]
	movs r6, #0x80
	lsls r6, r6, #2
	mov r0, r8
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802FFC4
	rsbs r6, r6, #0
_0802FFC4:
	ldr r7, _0803005C @ =sub_0802FDE4
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_0802DD00
	adds r1, r0, #0
	cmp r1, #0
	beq _0802FFD8
	strh r5, [r1, #0x2c]
	strh r6, [r1, #0x2e]
_0802FFD8:
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_0802DD00
	adds r1, r0, #0
	cmp r1, #0
	beq _0802FFEE
	movs r0, #0x80
	lsls r0, r0, #8
	strh r0, [r1, #0x2c]
	strh r6, [r1, #0x2e]
_0802FFEE:
	ldr r0, _08030060 @ =0x000001A5
	bl sub_080D7910
	movs r0, #0x92
	bl sub_080D7910
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_08030000:
	ldr r0, [r4, #0x30]
	cmp r0, #0x1b
	bgt _0803000A
	adds r0, #1
	str r0, [r4, #0x30]
_0803000A:
	mov r0, r8
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	mov r1, r8
	adds r1, #0x46
	adds r0, r4, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	mov r2, r8
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08030068
	ldr r1, [r4, #0x4c]
	ldr r0, _08030064 @ =0xFFF80000
	cmp r1, r0
	bge _08030098
	movs r6, #0x80
	lsls r6, r6, #7
	adds r0, r1, r6
	str r0, [r4, #0x4c]
	b _08030098
	.align 2, 0
_0803004C: .4byte gEwramData
_08030050: .4byte 0x000131C2
_08030054: .4byte 0x000131C4
_08030058: .4byte 0xFFF00000
_0803005C: .4byte sub_0802FDE4
_08030060: .4byte 0x000001A5
_08030064: .4byte 0xFFF80000
_08030068:
	ldr r1, [r4, #0x4c]
	ldr r0, _08030078 @ =0xFFEC0000
	cmp r1, r0
	ble _08030098
	ldr r2, _0803007C @ =0xFFFFC000
	adds r0, r1, r2
	str r0, [r4, #0x4c]
	b _08030098
	.align 2, 0
_08030078: .4byte 0xFFEC0000
_0803007C: .4byte 0xFFFFC000
_08030080:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	ble _0803008C
	subs r0, #2
	str r0, [r4, #0x30]
	b _08030098
_0803008C:
	adds r0, r4, #0
	bl sub_0802DD84
	adds r0, r4, #0
	bl sub_08000E14
_08030098:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080300A4
sub_080300A4: @ 0x080300A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov sb, r0
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r7, #0xa]
	cmp r0, #3
	bhs _080300E0
	adds r0, r7, #0
	bl sub_0802DF2C
	cmp r0, #0
	beq _080300E0
	movs r0, #3
	strb r0, [r7, #0xa]
	movs r0, #0x9c
	bl sub_08013E18
	movs r0, #1
	strb r0, [r7, #0xf]
	movs r0, #0x10
	strb r0, [r7, #0xd]
_080300E0:
	ldrb r6, [r7, #0xa]
	cmp r6, #1
	beq _0803019E
	cmp r6, #1
	bgt _080300F0
	cmp r6, #0
	beq _080300FC
	b _0803022C
_080300F0:
	cmp r6, #2
	beq _080301AA
	cmp r6, #3
	bne _080300FA
	b _08030214
_080300FA:
	b _0803022C
_080300FC:
	adds r1, r7, #0
	adds r1, #0x59
	ldrb r0, [r1]
	movs r2, #2
	mov r8, r2
	mov r3, r8
	orrs r0, r3
	strb r0, [r1]
	ldr r0, _080301F0 @ =0x081E0968
	ldr r4, _080301F4 @ =0x0820B628
	ldr r5, _080301F8 @ =0x08237464
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r2, _080301FC @ =gEwramData
	ldr r1, [r2]
	ldr r3, _08030200 @ =0x000131D0
	adds r1, r1, r3
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl sub_0803C7B4
	ldr r1, _080301FC @ =gEwramData
	ldr r0, [r1]
	ldr r2, _08030200 @ =0x000131D0
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r5, #0
	movs r3, #3
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	ldr r0, _08030204 @ =sub_0803B9D0
	str r0, [r7, #4]
	ldr r2, _08030208 @ =sub_08031F28
	adds r0, r7, #0
	movs r1, #6
	movs r3, #0
	bl sub_0804277C
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	mov r3, r8
	orrs r0, r3
	strb r0, [r2]
	movs r0, #2
	movs r1, #0x14
	bl sub_08042A54
	movs r2, #0xa
	ldr r1, _080301FC @ =gEwramData
	ldr r0, [r1]
	ldr r3, _0803020C @ =0x000131C2
	adds r1, r0, r3
	strh r2, [r1]
	ldr r1, _08030210 @ =0x000131C4
	adds r0, r0, r1
	strh r6, [r0]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	movs r0, #0x9c
	bl sub_08013DA8
_0803019E:
	movs r0, #0x9c
	bl sub_08013DA8
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_080301AA:
	movs r0, #0x9c
	bl sub_08013DA8
	movs r4, #0
	mov r0, sb
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r7, #0
	adds r3, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r1, #0x40
	ands r0, r1
	mov r0, sb
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, r0, r4
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	mov r0, sb
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, #4
	strh r0, [r1]
	adds r0, r7, #0
	bl sub_0802E1D0
	b _0803022C
	.align 2, 0
_080301F0: .4byte 0x081E0968
_080301F4: .4byte 0x0820B628
_080301F8: .4byte 0x08237464
_080301FC: .4byte gEwramData
_08030200: .4byte 0x000131D0
_08030204: .4byte sub_0803B9D0
_08030208: .4byte sub_08031F28
_0803020C: .4byte 0x000131C2
_08030210: .4byte 0x000131C4
_08030214:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	beq _08030220
	subs r0, #1
	strb r0, [r7, #0xd]
	b _0803022C
_08030220:
	adds r0, r7, #0
	bl sub_0802DD84
	adds r0, r7, #0
	bl sub_08000E14
_0803022C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08030238
sub_08030238: @ 0x08030238
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r7, #0xa]
	cmp r0, #4
	bls _08030256
	b _080304DC
_08030256:
	lsls r0, r0, #2
	ldr r1, _08030260 @ =_08030264
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08030260: .4byte _08030264
_08030264: @ jump table
	.4byte _08030278 @ case 0
	.4byte _08030332 @ case 1
	.4byte _080303B4 @ case 2
	.4byte _08030438 @ case 3
	.4byte _0803049C @ case 4
_08030278:
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08030288
	b _0803049C
_08030288:
	adds r6, r7, #0
	adds r6, #0x58
	movs r0, #0x1f
	ands r2, r0
	ldrb r1, [r6]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r6]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0803036C @ =0x081E2174
	ldr r5, _08030370 @ =0x0820B694
	ldr r1, _08030374 @ =0x08237770
	mov r8, r1
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _08030378 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _0803037C @ =0x000131D0
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r1, _0803037C @ =0x000131D0
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r7, #0
	mov r1, r8
	movs r3, #3
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xf
	strb r0, [r1]
	ldr r0, _08030380 @ =sub_0803B9D0
	str r0, [r7, #4]
	bl sub_08000A90
	strh r0, [r7, #0x2c]
	strh r0, [r7, #0x34]
	movs r0, #0xf7
	lsls r0, r0, #8
	strh r0, [r7, #0x2e]
	bl sub_08000A90
	movs r4, #1
	ands r0, r4
	lsls r0, r0, #6
	ldrb r2, [r6]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r6]
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _0803032A
	ldrh r0, [r7, #0x2e]
	rsbs r0, r0, #0
	strh r0, [r7, #0x2e]
_0803032A:
	movs r0, #0x96
	bl sub_080D7910
	strb r4, [r7, #0xa]
_08030332:
	ldr r1, [r7, #0x28]
	ldr r0, _08030384 @ =0x0000FFFF
	cmp r1, r0
	bgt _08030342
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r1, r2
	str r0, [r7, #0x28]
_08030342:
	ldrh r0, [r7, #0x2e]
	ldrh r1, [r7, #0x2c]
	adds r0, r0, r1
	strh r0, [r7, #0x2c]
	adds r0, r7, #0
	bl sub_0803F17C
	adds r4, r0, #0
	cmp r4, #3
	beq _08030358
	b _080304DC
_08030358:
	adds r0, r7, #0
	bl sub_0802D484
	str r0, [r7, #0x30]
	cmp r0, #0
	beq _08030388
	movs r0, #2
	strb r0, [r7, #0xa]
	b _0803038A
	.align 2, 0
_0803036C: .4byte 0x081E2174
_08030370: .4byte 0x0820B694
_08030374: .4byte 0x08237770
_08030378: .4byte gEwramData
_0803037C: .4byte 0x000131D0
_08030380: .4byte sub_0803B9D0
_08030384: .4byte 0x0000FFFF
_08030388:
	strb r4, [r7, #0xa]
_0803038A:
	adds r0, r7, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r1, _080303B0 @ =0x1010F8F8
	adds r0, r7, #0
	bl sub_08042884
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x40
	strb r0, [r7, #0xd]
	b _080304DC
	.align 2, 0
_080303B0: .4byte 0x1010F8F8
_080303B4:
	ldr r1, [r7, #0x1c]
	ldr r0, _08030430 @ =0x0001FFFF
	cmp r1, r0
	bgt _080303C4
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r1, r2
	str r0, [r7, #0x1c]
_080303C4:
	ldr r4, [r7, #0x30]
	ldr r1, [r4, #0x40]
	ldr r2, [r4, #0x44]
	movs r0, #0x34
	ldrsh r3, [r7, r0]
	ldr r0, _08030434 @ =0x00000555
	str r0, [sp]
	adds r0, r7, #0
	bl sub_0802D408
	strh r0, [r7, #0x34]
	ldrh r0, [r7, #0x2e]
	ldrh r1, [r7, #0x2c]
	adds r0, r0, r1
	strh r0, [r7, #0x2c]
	movs r2, #0x34
	ldrsh r0, [r7, r2]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	ldr r1, [r7, #0x1c]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	str r0, [r7, #0x48]
	movs r2, #0x34
	ldrsh r0, [r7, r2]
	bl sub_080009E4
	ldr r1, [r7, #0x1c]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	str r0, [r7, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r7, #0
	bl sub_0806D3D8
	ldrb r0, [r7, #0xd]
	subs r1, r0, #1
	strb r1, [r7, #0xd]
	movs r2, #0x34
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _0803042A
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _080304DC
_0803042A:
	movs r0, #3
	strb r0, [r7, #0xa]
	b _080304DC
	.align 2, 0
_08030430: .4byte 0x0001FFFF
_08030434: .4byte 0x00000555
_08030438:
	ldr r1, [r7, #0x1c]
	ldr r0, _08030498 @ =0x0001FFFF
	cmp r1, r0
	bgt _08030448
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r1, r2
	str r0, [r7, #0x1c]
_08030448:
	movs r1, #0x2e
	ldrsh r0, [r7, r1]
	cmp r0, #0
	bge _08030452
	adds r0, #0xf
_08030452:
	asrs r0, r0, #4
	ldrh r2, [r7, #0x34]
	adds r0, r0, r2
	strh r0, [r7, #0x34]
	ldrh r0, [r7, #0x2e]
	ldrh r1, [r7, #0x2c]
	adds r0, r0, r1
	strh r0, [r7, #0x2c]
	movs r2, #0x34
	ldrsh r0, [r7, r2]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	ldr r1, [r7, #0x1c]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	str r0, [r7, #0x48]
	movs r2, #0x34
	ldrsh r0, [r7, r2]
	bl sub_080009E4
	ldr r1, [r7, #0x1c]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	str r0, [r7, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r7, #0
	bl sub_0806D3D8
	b _080304DC
	.align 2, 0
_08030498: .4byte 0x0001FFFF
_0803049C:
	adds r2, r7, #0
	adds r2, #0x58
	ldrh r1, [r2]
	ldr r0, _080304D0 @ =0x0000101F
	ands r0, r1
	cmp r0, #0
	beq _080304B4
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080304B4:
	ldr r0, _080304D4 @ =gEwramData
	ldr r1, [r0]
	movs r2, #0x24
	ldrsh r0, [r7, r2]
	lsls r0, r0, #2
	ldr r2, _080304D8 @ =0x00013144
	adds r1, r1, r2
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	adds r0, r7, #0
	bl sub_08000E14
	b _0803050C
	.align 2, 0
_080304D0: .4byte 0x0000101F
_080304D4: .4byte gEwramData
_080304D8: .4byte 0x00013144
_080304DC:
	movs r1, #0x2c
	ldrsh r0, [r7, r1]
	ldr r2, [r7, #0x28]
	adds r1, r7, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	movs r4, #0
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
	adds r0, r7, #0
	movs r1, #1
	bl sub_0806D128
	cmp r0, #0
	beq _0803050C
	movs r0, #4
	strb r0, [r7, #0xa]
_0803050C:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08030518
sub_08030518: @ 0x08030518
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov r8, r0
	adds r0, r7, #0
	bl sub_0802DE5C
	cmp r0, #0
	beq _08030536
	adds r0, r7, #0
	bl sub_08000E14
	b _08030626
_08030536:
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	beq _08030542
	cmp r0, #1
	beq _080305A8
	b _08030626
_08030542:
	ldr r0, _08030630 @ =0x081E2174
	ldr r5, _08030634 @ =0x0820B694
	ldr r6, _08030638 @ =0x08237770
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _0803063C @ =gEwramData
	ldr r1, [r4]
	ldr r2, _08030640 @ =0x000131D0
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r1, _08030640 @ =0x000131D0
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #3
	bl sub_0803B924
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	movs r0, #2
	movs r1, #0x14
	bl sub_08042A54
	movs r2, #0x14
	movs r3, #1
	ldr r0, [r4]
	ldr r4, _08030644 @ =0x000131C2
	adds r1, r0, r4
	strh r2, [r1]
	ldr r1, _08030648 @ =0x000131C4
	adds r0, r0, r1
	strh r3, [r0]
	movs r0, #8
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_080305A8:
	mov r0, r8
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r7, #0
	adds r3, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	mov r0, r8
	adds r0, #0x42
	ldrh r0, [r0]
	adds r5, r7, #0
	adds r5, #0x42
	strh r0, [r5]
	mov r0, r8
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0x20
	adds r6, r7, #0
	adds r6, #0x46
	strh r0, [r6]
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08030626
	ldr r1, _0803064C @ =sub_08030238
	mov r0, r8
	bl sub_0802DD00
	adds r4, r0, #0
	cmp r4, #0
	beq _08030622
	movs r0, #0x40
	bl sub_0802D5EC
	ldrh r1, [r5]
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x42
	strh r1, [r0]
	movs r0, #0x40
	bl sub_0802D5EC
	ldrh r1, [r6]
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x46
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_08030622:
	movs r0, #0x38
	strb r0, [r7, #0xd]
_08030626:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030630: .4byte 0x081E2174
_08030634: .4byte 0x0820B694
_08030638: .4byte 0x08237770
_0803063C: .4byte gEwramData
_08030640: .4byte 0x000131D0
_08030644: .4byte 0x000131C2
_08030648: .4byte 0x000131C4
_0803064C: .4byte sub_08030238

	thumb_func_start sub_08030650
sub_08030650: @ 0x08030650
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r2, _080306C8 @ =gEwramData
	adds r0, #0x30
	ldrb r1, [r0]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080306CC @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r1, r1, r0
	mov r8, r1
	ldr r7, [r6, #0x14]
	adds r4, r6, #0
	adds r4, #0x59
	ldrb r0, [r4]
	movs r5, #4
	orrs r0, r5
	strb r0, [r4]
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	bne _080306AE
	adds r0, r6, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r1, _080306D0 @ =0x2020F0F0
	adds r0, r6, #0
	bl sub_08042884
	adds r1, r6, #0
	adds r1, #0x72
	ldrb r0, [r1]
	orrs r0, r5
	strb r0, [r1]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
_080306AE:
	mov r0, r8
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	bne _080306D4
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	b _08030748
	.align 2, 0
_080306C8: .4byte gEwramData
_080306CC: .4byte 0x000004E4
_080306D0: .4byte 0x2020F0F0
_080306D4:
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080306F2
	movs r0, #0x30
	b _080306F4
_080306F2:
	movs r0, #0x10
_080306F4:
	strh r0, [r6, #0x32]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08030714
	ldr r1, _08030710 @ =0xFFFF8000
	adds r0, r1, #0
	ldrh r1, [r7, #0x2c]
	adds r0, r0, r1
	b _08030718
	.align 2, 0
_08030710: .4byte 0xFFFF8000
_08030714:
	ldrh r0, [r7, #0x2c]
	rsbs r0, r0, #0
_08030718:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x32
	ldrsh r5, [r6, r1]
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, [r7, #0x40]
	adds r0, r0, r1
	str r0, [r6, #0x40]
	adds r0, r4, #0
	bl sub_080009E4
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, [r7, #0x44]
	adds r0, r0, r1
	str r0, [r6, #0x44]
_08030748:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08030754
sub_08030754: @ 0x08030754
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r2, _080307D4 @ =gEwramData
	adds r0, #0x30
	ldrb r1, [r0]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080307D8 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [sp, #8]
	ldr r2, [r7, #0x14]
	mov sl, r2
	ldr r0, [r1, #0x2c]
	mov sb, r0
	ldrh r5, [r0]
	movs r1, #4
	add sb, r1
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	beq _080307A4
	ldr r0, [sp, #8]
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	beq _080307A4
	movs r0, #2
	strb r0, [r7, #0xa]
_080307A4:
	ldr r0, [sp, #8]
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r7, #0
	adds r3, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r0, [r7, #0xa]
	mov r8, r3
	cmp r0, #4
	bls _080307C8
	b _0803095C
_080307C8:
	lsls r0, r0, #2
	ldr r1, _080307DC @ =_080307E0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080307D4: .4byte gEwramData
_080307D8: .4byte 0x000004E4
_080307DC: .4byte _080307E0
_080307E0: @ jump table
	.4byte _080307F4 @ case 0
	.4byte _0803095C @ case 1
	.4byte _080308BC @ case 2
	.4byte _080308EE @ case 3
	.4byte _0803091A @ case 4
_080307F4:
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r0, #0
	bge _08030818
	mov r2, r8
	ldrh r1, [r2]
	ldr r0, _08030814 @ =0x0000101F
	ands r0, r1
	cmp r0, #0
	bne _08030810
	b _08030932
_08030810:
	ldrb r0, [r2]
	b _0803092A
	.align 2, 0
_08030814: .4byte 0x0000101F
_08030818:
	ldr r0, _080308A0 @ =0x081E1970
	ldr r5, _080308A4 @ =0x0820B670
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _080308A8 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _080308AC @ =0x000131D0
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r1, _080308AC @ =0x000131D0
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r7, #0
	ldr r1, _080308B0 @ =0x0823767C
	movs r3, #3
	bl sub_0803B924
	ldr r1, _080308B4 @ =0x080E1AF8
	adds r3, r7, #0
	adds r3, #0x31
	ldrb r0, [r3]
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x65
	strb r0, [r1]
	subs r1, #9
	movs r0, #0xf
	strb r0, [r1]
	ldr r0, _080308B8 @ =sub_0803B9D0
	str r0, [r7, #4]
	movs r0, #0x1f
	ands r6, r0
	mov r2, r8
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r6
	strb r0, [r2]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #0xe
	str r0, [r7, #0x1c]
	ldrb r0, [r3]
	lsls r0, r0, #1
	add r0, sb
	ldrh r0, [r0]
	strh r0, [r7, #0x2c]
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	b _08030914
	.align 2, 0
_080308A0: .4byte 0x081E1970
_080308A4: .4byte 0x0820B670
_080308A8: .4byte gEwramData
_080308AC: .4byte 0x000131D0
_080308B0: .4byte 0x0823767C
_080308B4: .4byte 0x080E1AF8
_080308B8: .4byte sub_0803B9D0
_080308BC:
	adds r0, r7, #0
	adds r0, #0x31
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, sb
	ldrh r4, [r0]
	ldrh r0, [r7, #0x2c]
	lsls r4, r4, #0x10
	lsrs r1, r4, #0x10
	bl sub_08068BC0
	ldrh r0, [r7, #0x2c]
	asrs r4, r4, #0x10
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl __divsi3
	strh r0, [r7, #0x2e]
	strh r5, [r7, #0x32]
	movs r0, #3
	strb r0, [r7, #0xa]
_080308EE:
	adds r0, r7, #0
	adds r0, #0x31
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, sb
	ldrh r4, [r0]
	ldrh r0, [r7, #0x2e]
	ldrh r1, [r7, #0x2c]
	adds r0, r0, r1
	strh r0, [r7, #0x2c]
	ldrh r1, [r7, #0x32]
	movs r2, #0x32
	ldrsh r0, [r7, r2]
	cmp r0, #0
	beq _08030912
	subs r0, r1, #1
	strh r0, [r7, #0x32]
	b _0803095C
_08030912:
	strh r4, [r7, #0x2c]
_08030914:
	movs r0, #1
	strb r0, [r7, #0xa]
	b _0803095C
_0803091A:
	mov r0, r8
	ldrh r1, [r0]
	ldr r0, _08030950 @ =0x0000101F
	ands r0, r1
	cmp r0, #0
	beq _08030932
	mov r1, r8
	ldrb r0, [r1]
_0803092A:
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_08030932:
	ldr r0, _08030954 @ =gEwramData
	ldr r1, [r0]
	movs r2, #0x24
	ldrsh r0, [r7, r2]
	lsls r0, r0, #2
	ldr r2, _08030958 @ =0x00013144
	adds r1, r1, r2
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	adds r0, r7, #0
	bl sub_08000E14
	b _08030A12
	.align 2, 0
_08030950: .4byte 0x0000101F
_08030954: .4byte gEwramData
_08030958: .4byte 0x00013144
_0803095C:
	adds r2, r7, #0
	adds r2, #0x31
	ldrb r0, [r2]
	cmp r0, #0
	beq _080309D8
	ldr r1, _08030984 @ =0x080E1AFC
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r2, [sp, #8]
	ldr r0, [r2, #0x28]
	muls r0, r1, r0
	cmp r0, #0
	bge _08030988
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r5, r0, #0
	b _0803098A
	.align 2, 0
_08030984: .4byte 0x080E1AFC
_08030988:
	asrs r5, r0, #0x10
_0803098A:
	mov r0, sl
	ldrh r2, [r0, #0x2c]
	ldr r1, _080309D4 @ =0xFFFF8000
	adds r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080309A8
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080309A8:
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	adds r1, r5, #0
	muls r1, r0, r1
	mov r2, sl
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r7, #0x40]
	adds r0, r4, #0
	bl sub_080009E4
	adds r1, r5, #0
	muls r1, r0, r1
	mov r2, sl
	ldr r0, [r2, #0x44]
	adds r0, r0, r1
	b _080309E0
	.align 2, 0
_080309D4: .4byte 0xFFFF8000
_080309D8:
	mov r1, sl
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x40]
	ldr r0, [r1, #0x44]
_080309E0:
	str r0, [r7, #0x44]
	ldrh r4, [r7, #0x2c]
	mov r2, r8
	ldrb r5, [r2]
	movs r0, #0x40
	ands r0, r5
	cmp r0, #0
	beq _080309F6
	lsls r0, r4, #0x10
	rsbs r0, r0, #0
	lsrs r4, r0, #0x10
_080309F6:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #8]
	ldr r2, [r1, #0x28]
	lsls r3, r5, #0x19
	lsrs r3, r3, #0x1f
	movs r1, #0
	str r1, [sp]
	lsls r1, r5, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
_08030A12:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
