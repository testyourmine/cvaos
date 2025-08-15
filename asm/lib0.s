	.include "asm/gba_constants.inc"
    .include "asm/macros.inc"

	.syntax unified

    @sprintf

	thumb_func_start _sprintf_r
_sprintf_r: @ 0x080DC318
	push {r2, r3}
	push {r4, r5, lr}
	sub sp, #0x58
	ldr r4, [sp, #0x64]
	mov r3, sp
	movs r5, #0
	movs r2, #0x82
	lsls r2, r2, #2
	strh r2, [r3, #0xc]
	str r1, [sp]
	str r1, [sp, #0x10]
	ldr r1, _080DC350 @ =0x7FFFFFFF
	str r1, [sp, #8]
	str r1, [sp, #0x14]
	str r0, [sp, #0x54]
	add r2, sp, #0x68
	mov r0, sp
	adds r1, r4, #0
	bl vfprintf
	ldr r1, [sp]
	strb r5, [r1]
	add sp, #0x58
	pop {r4, r5}
	pop {r3}
	add sp, #8
	bx r3
	.align 2, 0
_080DC350: .4byte 0x7FFFFFFF

	thumb_func_start sprintf
sprintf: @ 0x080DC354
	push {r1, r2, r3}
	push {r4, lr}
	sub sp, #0x58
	ldr r1, [sp, #0x60]
	mov r3, sp
	movs r4, #0
	movs r2, #0x82
	lsls r2, r2, #2
	strh r2, [r3, #0xc]
	str r0, [sp]
	str r0, [sp, #0x10]
	ldr r0, _080DC38C @ =0x7FFFFFFF
	str r0, [sp, #8]
	str r0, [sp, #0x14]
	ldr r0, _080DC390 @ =0x08650D38
	ldr r0, [r0]
	str r0, [sp, #0x54]
	add r2, sp, #0x64
	mov r0, sp
	bl vfprintf
	ldr r1, [sp]
	strb r4, [r1]
	add sp, #0x58
	pop {r4}
	pop {r3}
	add sp, #0xc
	bx r3
	.align 2, 0
_080DC38C: .4byte 0x7FFFFFFF
_080DC390: .4byte 0x08650D38

    @vfprintf

	thumb_func_start __sprint
__sprint: @ 0x080DC394
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _080DC3AC
	adds r1, r4, #0
	bl __sfvwrite
	movs r1, #0
	str r1, [r4, #8]
	str r1, [r4, #4]
	b _080DC3B0
_080DC3AC:
	str r1, [r4, #4]
	movs r0, #0
_080DC3B0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __sbprintf
__sbprintf: @ 0x080DC3B4
	push {r4, r5, lr}
	ldr r4, _080DC424 @ =0xFFFFFBA8
	add sp, r4
	adds r5, r0, #0
	ldr r0, [r5, #0x54]
	str r0, [sp, #0x54]
	mov r3, sp
	movs r0, #3
	rsbs r0, r0, #0
	ldrh r4, [r5, #0xc]
	ands r0, r4
	movs r4, #0
	strh r0, [r3, #0xc]
	ldrh r0, [r5, #0xe]
	strh r0, [r3, #0xe]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x24]
	add r0, sp, #0x58
	str r0, [sp]
	str r0, [sp, #0x10]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [sp, #8]
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	mov r0, sp
	bl vfprintf
	adds r4, r0, #0
	cmp r4, #0
	blt _080DC404
	mov r0, sp
	bl fflush
	cmp r0, #0
	beq _080DC404
	movs r4, #1
	rsbs r4, r4, #0
_080DC404:
	mov r1, sp
	movs r0, #0x40
	ldrh r1, [r1, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _080DC418
	movs r0, #0x40
	ldrh r1, [r5, #0xc]
	orrs r0, r1
	strh r0, [r5, #0xc]
_080DC418:
	adds r0, r4, #0
	movs r3, #0x8b
	lsls r3, r3, #3
	add sp, r3
	pop {r4, r5, pc}
	.align 2, 0
_080DC424: .4byte 0xFFFFFBA8

	thumb_func_start vfprintf
vfprintf: @ 0x080DC428
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r3, r2, #0
	ldr r0, [r4, #0x54]
	adds r1, r4, #0
	adds r2, r5, #0
	bl _vfprintf_r
	pop {r4, r5, pc}

	thumb_func_start _vfprintf_r
_vfprintf_r: @ 0x080DC43C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _080DC4A4 @ =0xFFFFFDE0
	add sp, r4
	str r0, [sp, #0x1dc]
	str r1, [sp, #0x1e0]
	adds r4, r2, #0
	mov sl, r3
	bl localeconv
	ldr r0, [r0]
	str r0, [sp, #0x1f8]
	movs r1, #0
	add r0, sp, #0x1d0
	str r1, [r0]
	ldr r1, [sp, #0x1e0]
	ldr r0, [r1, #0x54]
	cmp r0, #0
	bne _080DC46E
	ldr r0, _080DC4A8 @ =0x08650D38
	ldr r0, [r0]
	str r0, [r1, #0x54]
_080DC46E:
	ldr r2, [sp, #0x1e0]
	ldr r1, [r2, #0x54]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bne _080DC47E
	adds r0, r1, #0
	bl __sinit
_080DC47E:
	movs r0, #8
	ldr r1, [sp, #0x1e0]
	ldrh r1, [r1, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _080DC492
	ldr r2, [sp, #0x1e0]
	ldr r0, [r2, #0x10]
	cmp r0, #0
	bne _080DC4AC
_080DC492:
	ldr r0, [sp, #0x1e0]
	bl __swsetup
	cmp r0, #0
	beq _080DC4AC
	movs r0, #1
	rsbs r0, r0, #0
	bl _080DD38C
	.align 2, 0
_080DC4A4: .4byte 0xFFFFFDE0
_080DC4A8: .4byte 0x08650D38
_080DC4AC:
	movs r0, #0x1a
	ldr r1, [sp, #0x1e0]
	ldrh r1, [r1, #0xc]
	ands r0, r1
	cmp r0, #0xa
	bne _080DC4D0
	ldr r2, [sp, #0x1e0]
	movs r1, #0xe
	ldrsh r0, [r2, r1]
	cmp r0, #0
	blt _080DC4D0
	adds r0, r2, #0
	adds r1, r4, #0
	mov r2, sl
	bl __sbprintf
	bl _080DD38C
_080DC4D0:
	str r4, [sp, #0x1e4]
	add r1, sp, #0x1c
	add r5, sp, #0x28
	str r5, [sp, #0x1c]
	movs r0, #0
	str r0, [r1, #8]
	str r0, [r1, #4]
	movs r2, #0
	str r2, [sp, #0x1f0]
	mov sb, r1
	movs r4, #0xe6
	lsls r4, r4, #1
	add r4, sp
	str r4, [sp, #0x214]
	movs r0, #0xe8
	lsls r0, r0, #1
	add r0, sp
	str r0, [sp, #0x218]
_080DC4F4:
	ldr r1, [sp, #0x1e4]
	mov r8, r1
_080DC4F8:
	ldr r0, _080DC5A4 @ =0x08650D38
	ldr r0, [r0]
	ldr r1, _080DC5A8 @ =0x08650D3C
	ldr r3, [r1]
	ldr r2, [sp, #0x218]
	str r2, [sp]
	ldr r1, [sp, #0x214]
	ldr r2, [sp, #0x1e4]
	bl _mbtowc_r
	adds r4, r0, #0
	cmp r4, #0
	ble _080DC526
	ldr r0, [sp, #0x1e4]
	adds r0, r0, r4
	str r0, [sp, #0x1e4]
	add r0, sp, #0x1cc
	ldr r0, [r0]
	cmp r0, #0x25
	bne _080DC4F8
	ldr r1, [sp, #0x1e4]
	subs r1, #1
	str r1, [sp, #0x1e4]
_080DC526:
	ldr r2, [sp, #0x1e4]
	mov r0, r8
	subs r6, r2, r0
	cmp r6, #0
	beq _080DC55E
	str r0, [r5]
	str r6, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r6
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080DC558
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _080DC556
	bl _080DD378
_080DC556:
	add r5, sp, #0x28
_080DC558:
	ldr r2, [sp, #0x1f0]
	adds r2, r2, r6
	str r2, [sp, #0x1f0]
_080DC55E:
	cmp r4, #0
	bgt _080DC566
	bl _080DD360
_080DC566:
	ldr r4, [sp, #0x1e4]
	adds r4, #1
	str r4, [sp, #0x1e4]
	movs r0, #0
	str r0, [sp, #0x1ec]
	movs r1, #0
	str r1, [sp, #0x208]
	movs r2, #0
	str r2, [sp, #0x1f4]
	movs r6, #1
	rsbs r6, r6, #0
	ldr r0, _080DC5AC @ =0x000001C9
	add r0, sp
	strb r2, [r0]
_080DC582:
	ldr r0, [sp, #0x1e4]
	ldrb r0, [r0]
	str r0, [sp, #0x1e8]
	ldr r1, [sp, #0x1e4]
	adds r1, #1
	str r1, [sp, #0x1e4]
_080DC58E:
	ldr r0, [sp, #0x1e8]
	subs r0, #0x20
	cmp r0, #0x58
	bls _080DC598
	b _080DCC4A
_080DC598:
	lsls r0, r0, #2
	ldr r1, _080DC5B0 @ =_080DC5B4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080DC5A4: .4byte 0x08650D38
_080DC5A8: .4byte 0x08650D3C
_080DC5AC: .4byte 0x000001C9
_080DC5B0: .4byte _080DC5B4
_080DC5B4: @ jump table
	.4byte _080DC718 @ case 0
	.4byte _080DCC4A @ case 1
	.4byte _080DCC4A @ case 2
	.4byte _080DC730 @ case 3
	.4byte _080DCC4A @ case 4
	.4byte _080DCC4A @ case 5
	.4byte _080DCC4A @ case 6
	.4byte _080DCC4A @ case 7
	.4byte _080DCC4A @ case 8
	.4byte _080DCC4A @ case 9
	.4byte _080DC734 @ case 10
	.4byte _080DC74E @ case 11
	.4byte _080DCC4A @ case 12
	.4byte _080DC74A @ case 13
	.4byte _080DC75C @ case 14
	.4byte _080DCC4A @ case 15
	.4byte _080DC7BC @ case 16
	.4byte _080DC7C0 @ case 17
	.4byte _080DC7C0 @ case 18
	.4byte _080DC7C0 @ case 19
	.4byte _080DC7C0 @ case 20
	.4byte _080DC7C0 @ case 21
	.4byte _080DC7C0 @ case 22
	.4byte _080DC7C0 @ case 23
	.4byte _080DC7C0 @ case 24
	.4byte _080DC7C0 @ case 25
	.4byte _080DCC4A @ case 26
	.4byte _080DCC4A @ case 27
	.4byte _080DCC4A @ case 28
	.4byte _080DCC4A @ case 29
	.4byte _080DCC4A @ case 30
	.4byte _080DCC4A @ case 31
	.4byte _080DCC4A @ case 32
	.4byte _080DCC4A @ case 33
	.4byte _080DCC4A @ case 34
	.4byte _080DCC4A @ case 35
	.4byte _080DC82A @ case 36
	.4byte _080DC87C @ case 37
	.4byte _080DCC4A @ case 38
	.4byte _080DC87C @ case 39
	.4byte _080DCC4A @ case 40
	.4byte _080DCC4A @ case 41
	.4byte _080DCC4A @ case 42
	.4byte _080DCC4A @ case 43
	.4byte _080DC7E4 @ case 44
	.4byte _080DCC4A @ case 45
	.4byte _080DCC4A @ case 46
	.4byte _080DCA32 @ case 47
	.4byte _080DCC4A @ case 48
	.4byte _080DCC4A @ case 49
	.4byte _080DCC4A @ case 50
	.4byte _080DCC4A @ case 51
	.4byte _080DCC4A @ case 52
	.4byte _080DCACA @ case 53
	.4byte _080DCC4A @ case 54
	.4byte _080DCC4A @ case 55
	.4byte _080DCB06 @ case 56
	.4byte _080DCC4A @ case 57
	.4byte _080DCC4A @ case 58
	.4byte _080DCC4A @ case 59
	.4byte _080DCC4A @ case 60
	.4byte _080DCC4A @ case 61
	.4byte _080DCC4A @ case 62
	.4byte _080DCC4A @ case 63
	.4byte _080DCC4A @ case 64
	.4byte _080DCC4A @ case 65
	.4byte _080DCC4A @ case 66
	.4byte _080DC818 @ case 67
	.4byte _080DC832 @ case 68
	.4byte _080DC87C @ case 69
	.4byte _080DC87C @ case 70
	.4byte _080DC87C @ case 71
	.4byte _080DC7E8 @ case 72
	.4byte _080DC832 @ case 73
	.4byte _080DCC4A @ case 74
	.4byte _080DCC4A @ case 75
	.4byte _080DC7EC @ case 76
	.4byte _080DCC4A @ case 77
	.4byte _080DC9EC @ case 78
	.4byte _080DCA3A @ case 79
	.4byte _080DCA68 @ case 80
	.4byte _080DC80E @ case 81
	.4byte _080DCC4A @ case 82
	.4byte _080DCA88 @ case 83
	.4byte _080DCC4A @ case 84
	.4byte _080DCAD2 @ case 85
	.4byte _080DCC4A @ case 86
	.4byte _080DCC4A @ case 87
	.4byte _080DCB10 @ case 88
_080DC718:
	ldr r1, _080DC72C @ =0x000001C9
	add r1, sp
	ldrb r0, [r1]
	cmp r0, #0
	beq _080DC724
	b _080DC582
_080DC724:
	movs r0, #0x20
	strb r0, [r1]
	b _080DC582
	.align 2, 0
_080DC72C: .4byte 0x000001C9
_080DC730:
	movs r0, #1
	b _080DC7FC
_080DC734:
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	str r0, [sp, #0x1f4]
	cmp r0, #0
	blt _080DC746
	b _080DC582
_080DC746:
	rsbs r0, r0, #0
	str r0, [sp, #0x1f4]
_080DC74A:
	movs r0, #4
	b _080DC810
_080DC74E:
	ldr r1, _080DC758 @ =0x000001C9
	add r1, sp
	movs r0, #0x2b
	strb r0, [r1]
	b _080DC582
	.align 2, 0
_080DC758: .4byte 0x000001C9
_080DC75C:
	ldr r2, [sp, #0x1e4]
	ldrb r2, [r2]
	str r2, [sp, #0x1e8]
	ldr r4, [sp, #0x1e4]
	adds r4, #1
	str r4, [sp, #0x1e4]
	cmp r2, #0x2a
	bne _080DC786
	movs r0, #4
	add sl, r0
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
	adds r6, r4, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	blt _080DC782
	b _080DC582
_080DC782:
	adds r6, r0, #0
	b _080DC582
_080DC786:
	movs r4, #0
	ldr r0, [sp, #0x1e8]
	b _080DC7A6
_080DC78C:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	subs r0, #0x30
	ldr r1, [sp, #0x1e8]
	adds r4, r0, r1
	ldr r2, [sp, #0x1e4]
	ldrb r2, [r2]
	str r2, [sp, #0x1e8]
	ldr r0, [sp, #0x1e4]
	adds r0, #1
	str r0, [sp, #0x1e4]
	adds r0, r2, #0
_080DC7A6:
	subs r0, #0x30
	cmp r0, #9
	bls _080DC78C
	adds r6, r4, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	blt _080DC7B8
	b _080DC58E
_080DC7B8:
	adds r6, r0, #0
	b _080DC58E
_080DC7BC:
	movs r0, #0x80
	b _080DC810
_080DC7C0:
	movs r4, #0
_080DC7C2:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	subs r0, #0x30
	ldr r2, [sp, #0x1e8]
	adds r4, r0, r2
	ldr r0, [sp, #0x1e4]
	ldrb r0, [r0]
	str r0, [sp, #0x1e8]
	ldr r1, [sp, #0x1e4]
	adds r1, #1
	str r1, [sp, #0x1e4]
	subs r0, #0x30
	cmp r0, #9
	bls _080DC7C2
	str r4, [sp, #0x1f4]
	b _080DC58E
_080DC7E4:
	movs r0, #8
	b _080DC7FC
_080DC7E8:
	movs r0, #0x40
	b _080DC806
_080DC7EC:
	ldr r0, [sp, #0x1e4]
	ldrb r0, [r0]
	cmp r0, #0x6c
	bne _080DC804
	ldr r1, [sp, #0x1e4]
	adds r1, #1
	str r1, [sp, #0x1e4]
	movs r0, #0x20
_080DC7FC:
	ldr r2, [sp, #0x1ec]
	orrs r2, r0
	str r2, [sp, #0x1ec]
	b _080DC582
_080DC804:
	movs r0, #0x10
_080DC806:
	ldr r4, [sp, #0x1ec]
	orrs r4, r0
	str r4, [sp, #0x1ec]
	b _080DC582
_080DC80E:
	movs r0, #0x20
_080DC810:
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
	b _080DC582
_080DC818:
	add r2, sp, #0x68
	mov r8, r2
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	strb r0, [r2]
	b _080DCC58
_080DC82A:
	movs r0, #0x10
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
_080DC832:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _080DC842
	movs r4, #4
	add sl, r4
	b _080DC85E
_080DC842:
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080DC85A
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	movs r1, #0
	ldrsh r4, [r0, r1]
	b _080DC864
_080DC85A:
	movs r2, #4
	add sl, r2
_080DC85E:
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_080DC864:
	cmp r4, #0
	bge _080DC872
	rsbs r4, r4, #0
	ldr r1, _080DC878 @ =0x000001C9
	add r1, sp
	movs r0, #0x2d
	strb r0, [r1]
_080DC872:
	movs r2, #1
	b _080DCB5E
	.align 2, 0
_080DC878: .4byte 0x000001C9
_080DC87C:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	bne _080DC888
	movs r6, #6
	b _080DC898
_080DC888:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x67
	beq _080DC892
	cmp r4, #0x47
	bne _080DC898
_080DC892:
	cmp r6, #0
	bne _080DC898
	movs r6, #1
_080DC898:
	movs r0, #8
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	movs r2, #8
	add sl, r2
	mov r0, sl
	subs r0, #8
	ldr r1, [r0]
	ldr r2, [r0, #4]
	str r1, [sp, #0x1fc]
	str r2, [sp, #0x200]
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl isinf
	cmp r0, #0
	beq _080DC8EC
	ldr r3, _080DC8E0 @ =0x00000000
	ldr r2, _080DC8DC @ =0x00000000
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl __ltdf2
	cmp r0, #0
	bge _080DC8D2
	ldr r1, _080DC8E4 @ =0x000001C9
	add r1, sp
	movs r0, #0x2d
	strb r0, [r1]
_080DC8D2:
	ldr r2, _080DC8E8 @ =0x084F0918
	mov r8, r2
	movs r3, #3
	b _080DCC62
	.align 2, 0
_080DC8DC: .4byte 0x00000000
_080DC8E0: .4byte 0x00000000
_080DC8E4: .4byte 0x000001C9
_080DC8E8: .4byte 0x084F0918
_080DC8EC:
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl isnan
	cmp r0, #0
	beq _080DC904
	ldr r4, _080DC900 @ =0x084F091C
	mov r8, r4
	movs r3, #3
	b _080DCC62
	.align 2, 0
_080DC900: .4byte 0x084F091C
_080DC904:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
	str r1, [sp]
	add r0, sp, #0x1c8
	str r0, [sp, #4]
	add r0, sp, #0x1d4
	str r0, [sp, #8]
	ldr r2, [sp, #0x1e8]
	str r2, [sp, #0xc]
	add r0, sp, #0x1d8
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1dc]
	ldr r1, [sp, #0x1fc]
	ldr r2, [sp, #0x200]
	adds r3, r6, #0
	bl cvt
	mov r8, r0
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x67
	beq _080DC938
	cmp r4, #0x47
	bne _080DC95A
_080DC938:
	add r0, sp, #0x1d4
	ldr r1, [r0]
	movs r0, #4
	rsbs r0, r0, #0
	cmp r1, r0
	ble _080DC948
	cmp r1, r6
	ble _080DC956
_080DC948:
	movs r0, #0x45
	ldr r1, [sp, #0x1e8]
	cmp r1, #0x67
	bne _080DC952
	movs r0, #0x65
_080DC952:
	str r0, [sp, #0x1e8]
	b _080DC95A
_080DC956:
	movs r2, #0x67
	str r2, [sp, #0x1e8]
_080DC95A:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x65
	bgt _080DC980
	add r0, sp, #0x1d4
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	add r0, sp, #0x14
	ldr r2, [sp, #0x1e8]
	bl exponent
	str r0, [sp, #0x204]
	add r0, sp, #0x1d8
	ldr r0, [r0]
	ldr r1, [sp, #0x204]
	adds r3, r1, r0
	cmp r0, #1
	bgt _080DC9C0
	b _080DC9B6
_080DC980:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x66
	bne _080DC9A8
	add r0, sp, #0x1d4
	ldr r0, [r0]
	cmp r0, #0
	ble _080DC9A4
	adds r3, r0, #0
	cmp r6, #0
	bne _080DC99E
	movs r0, #1
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080DC9D0
_080DC99E:
	adds r0, r3, #1
	adds r3, r0, r6
	b _080DC9D0
_080DC9A4:
	adds r3, r6, #2
	b _080DC9D0
_080DC9A8:
	add r0, sp, #0x1d4
	ldr r1, [r0]
	add r0, sp, #0x1d8
	ldr r0, [r0]
	cmp r1, r0
	blt _080DC9C4
	adds r3, r1, #0
_080DC9B6:
	movs r0, #1
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _080DC9D0
_080DC9C0:
	adds r3, #1
	b _080DC9D0
_080DC9C4:
	cmp r1, #0
	bgt _080DC9CE
	adds r0, #2
	subs r3, r0, r1
	b _080DC9D0
_080DC9CE:
	adds r3, r0, #1
_080DC9D0:
	add r0, sp, #0x1c8
	ldrb r0, [r0]
	adds r7, r5, #0
	adds r7, #8
	cmp r0, #0
	bne _080DC9DE
	b _080DCC66
_080DC9DE:
	ldr r1, _080DC9E8 @ =0x000001C9
	add r1, sp
	movs r0, #0x2d
	strb r0, [r1]
	b _080DCC66
	.align 2, 0
_080DC9E8: .4byte 0x000001C9
_080DC9EC:
	movs r0, #0x10
	ldr r4, [sp, #0x1ec]
	ands r0, r4
	cmp r0, #0
	beq _080DCA06
	movs r0, #4
	add sl, r0
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	ldr r1, [sp, #0x1f0]
	str r1, [r0]
	b _080DC4F4
_080DCA06:
	movs r0, #0x40
	ldr r2, [sp, #0x1ec]
	ands r2, r0
	cmp r2, #0
	beq _080DCA22
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	add r1, sp, #0x1f0
	ldrh r1, [r1]
	strh r1, [r0]
	b _080DC4F4
_080DCA22:
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	ldr r4, [sp, #0x1f0]
	str r4, [r0]
	b _080DC4F4
_080DCA32:
	movs r0, #0x10
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
_080DCA3A:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	bne _080DCA5A
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080DCA5A
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldrh r4, [r0]
	b _080DCA64
_080DCA5A:
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_080DCA64:
	movs r2, #0
	b _080DCB56
_080DCA68:
	movs r0, #4
	add sl, r0
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
	movs r2, #2
	ldr r1, _080DCA84 @ =0x084F0920
	str r1, [sp, #0x210]
	ldr r0, [sp, #0x1ec]
	orrs r0, r2
	str r0, [sp, #0x1ec]
	movs r1, #0x78
	str r1, [sp, #0x1e8]
	b _080DCB56
	.align 2, 0
_080DCA84: .4byte 0x084F0920
_080DCA88:
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	mov r8, r0
	cmp r0, #0
	bne _080DCA9C
	ldr r4, _080DCABC @ =0x084F0934
	mov r8, r4
_080DCA9C:
	cmp r6, #0
	blt _080DCAC0
	mov r0, r8
	movs r1, #0
	adds r2, r6, #0
	bl memchr
	cmp r0, #0
	beq _080DCAB8
	mov r1, r8
	subs r3, r0, r1
	cmp r3, r6
	bgt _080DCAB8
	b _080DCC5A
_080DCAB8:
	adds r3, r6, #0
	b _080DCC5A
	.align 2, 0
_080DCABC: .4byte 0x084F0934
_080DCAC0:
	mov r0, r8
	bl strlen
	adds r3, r0, #0
	b _080DCC5A
_080DCACA:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	orrs r2, r0
	str r2, [sp, #0x1ec]
_080DCAD2:
	movs r0, #0x10
	ldr r4, [sp, #0x1ec]
	ands r0, r4
	cmp r0, #0
	beq _080DCAE2
	movs r0, #4
	add sl, r0
	b _080DCAFC
_080DCAE2:
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080DCAF8
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldrh r4, [r0]
	b _080DCB02
_080DCAF8:
	movs r4, #4
	add sl, r4
_080DCAFC:
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_080DCB02:
	movs r2, #1
	b _080DCB56
_080DCB06:
	ldr r0, _080DCB0C @ =0x084F093C
	str r0, [sp, #0x210]
	b _080DCB14
	.align 2, 0
_080DCB0C: .4byte 0x084F093C
_080DCB10:
	ldr r1, _080DCB34 @ =0x084F0920
	str r1, [sp, #0x210]
_080DCB14:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	bne _080DCB38
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080DCB38
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldrh r4, [r0]
	b _080DCB42
	.align 2, 0
_080DCB34: .4byte 0x084F0920
_080DCB38:
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_080DCB42:
	movs r2, #2
	movs r0, #1
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080DCB56
	cmp r4, #0
	beq _080DCB56
	orrs r1, r2
	str r1, [sp, #0x1ec]
_080DCB56:
	ldr r1, _080DCBA0 @ =0x000001C9
	add r1, sp
	movs r0, #0
	strb r0, [r1]
_080DCB5E:
	str r6, [sp, #0x208]
	cmp r6, #0
	blt _080DCB6E
	movs r0, #0x81
	rsbs r0, r0, #0
	ldr r1, [sp, #0x1ec]
	ands r1, r0
	str r1, [sp, #0x1ec]
_080DCB6E:
	movs r0, #0xe2
	lsls r0, r0, #1
	add r0, sp
	mov r8, r0
	cmp r4, #0
	bne _080DCB84
	adds r7, r5, #0
	adds r7, #8
	ldr r1, [sp, #0x208]
	cmp r1, #0
	beq _080DCC3C
_080DCB84:
	cmp r2, #1
	beq _080DCBE2
	cmp r2, #1
	blo _080DCBA8
	cmp r2, #2
	beq _080DCC1C
	ldr r2, _080DCBA4 @ =0x084F0950
	mov r8, r2
	mov r0, r8
	bl strlen
	adds r3, r0, #0
	b _080DCC62
	.align 2, 0
_080DCBA0: .4byte 0x000001C9
_080DCBA4: .4byte 0x084F0950
_080DCBA8:
	adds r7, r5, #0
	adds r7, #8
	movs r2, #7
_080DCBAE:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	adds r0, r4, #0
	ands r0, r2
	adds r1, r0, #0
	adds r1, #0x30
	mov r0, r8
	strb r1, [r0]
	lsrs r4, r4, #3
	cmp r4, #0
	bne _080DCBAE
	movs r0, #1
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _080DCC3C
	cmp r1, #0x30
	beq _080DCC3C
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	movs r0, #0x30
	mov r1, r8
	strb r0, [r1]
	b _080DCC3C
_080DCBE2:
	adds r7, r5, #0
	adds r7, #8
	cmp r4, #9
	bls _080DCC0C
_080DCBEA:
	movs r2, #1
	rsbs r2, r2, #0
	add r8, r2
	adds r0, r4, #0
	movs r1, #0xa
	bl __umodsi3
	adds r0, #0x30
	mov r1, r8
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xa
	bl __udivsi3
	adds r4, r0, #0
	cmp r4, #9
	bhi _080DCBEA
_080DCC0C:
	movs r2, #1
	rsbs r2, r2, #0
	add r8, r2
	adds r0, r4, #0
	adds r0, #0x30
	mov r4, r8
	strb r0, [r4]
	b _080DCC3C
_080DCC1C:
	adds r7, r5, #0
	adds r7, #8
	movs r1, #0xf
_080DCC22:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	adds r0, r4, #0
	ands r0, r1
	ldr r2, [sp, #0x210]
	adds r0, r2, r0
	ldrb r0, [r0]
	mov r2, r8
	strb r0, [r2]
	lsrs r4, r4, #4
	cmp r4, #0
	bne _080DCC22
_080DCC3C:
	add r4, sp, #0x14
	mov r1, r8
	subs r0, r4, r1
	movs r2, #0xd8
	lsls r2, r2, #1
	adds r3, r0, r2
	b _080DCC66
_080DCC4A:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0
	bne _080DCC52
	b _080DD360
_080DCC52:
	add r0, sp, #0x68
	mov r8, r0
	strb r4, [r0]
_080DCC58:
	movs r3, #1
_080DCC5A:
	ldr r1, _080DCC84 @ =0x000001C9
	add r1, sp
	movs r0, #0
	strb r0, [r1]
_080DCC62:
	adds r7, r5, #0
	adds r7, #8
_080DCC66:
	str r3, [sp, #0x20c]
	ldr r2, [sp, #0x208]
	cmp r3, r2
	bge _080DCC70
	str r2, [sp, #0x20c]
_080DCC70:
	ldr r0, _080DCC84 @ =0x000001C9
	add r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DCC88
	ldr r4, [sp, #0x20c]
	adds r4, #1
	str r4, [sp, #0x20c]
	b _080DCC98
	.align 2, 0
_080DCC84: .4byte 0x000001C9
_080DCC88:
	movs r0, #2
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080DCC98
	ldr r2, [sp, #0x20c]
	adds r2, #2
	str r2, [sp, #0x20c]
_080DCC98:
	movs r0, #0x84
	ldr r4, [sp, #0x1ec]
	ands r0, r4
	cmp r0, #0
	bne _080DCD18
	ldr r0, [sp, #0x1f4]
	ldr r1, [sp, #0x20c]
	subs r4, r0, r1
	cmp r4, #0
	ble _080DCD18
	ldr r1, _080DCD44 @ =0x084F08F8
	cmp r4, #0x10
	ble _080DCCEC
	mov r6, sb
_080DCCB4:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, r7, #0
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080DCCE2
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _080DCCDE
	b _080DD378
_080DCCDE:
	add r5, sp, #0x28
	ldr r1, _080DCD44 @ =0x084F08F8
_080DCCE2:
	subs r4, #0x10
	adds r7, r5, #0
	adds r7, #8
	cmp r4, #0x10
	bgt _080DCCB4
_080DCCEC:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	str r0, [r2, #8]
	adds r5, r7, #0
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _080DCD18
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _080DCD16
	b _080DD378
_080DCD16:
	add r5, sp, #0x28
_080DCD18:
	ldr r1, _080DCD48 @ =0x000001C9
	add r1, sp
	ldrb r0, [r1]
	cmp r0, #0
	beq _080DCD4C
	str r1, [r5]
	movs r0, #1
	str r0, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _080DCD8C
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	b _080DCD7C
	.align 2, 0
_080DCD44: .4byte 0x084F08F8
_080DCD48: .4byte 0x000001C9
_080DCD4C:
	movs r2, #2
	ldr r0, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _080DCD8C
	add r1, sp, #0x1c4
	movs r0, #0x30
	strb r0, [r1]
	add r0, sp, #0x1e8
	ldrb r0, [r0]
	strb r0, [r1, #1]
	str r1, [r5]
	str r2, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #2
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080DCD8C
	ldr r0, [sp, #0x1e0]
_080DCD7C:
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _080DCD8A
	b _080DD378
_080DCD8A:
	add r5, sp, #0x28
_080DCD8C:
	movs r0, #0x84
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0x80
	bne _080DCE08
	ldr r0, [sp, #0x1f4]
	ldr r1, [sp, #0x20c]
	subs r4, r0, r1
	cmp r4, #0
	ble _080DCE08
	ldr r1, _080DCEA4 @ =0x084F0908
	cmp r4, #0x10
	ble _080DCDDC
	mov r6, sb
_080DCDA8:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080DCDD6
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _080DCDD2
	b _080DD378
_080DCDD2:
	add r5, sp, #0x28
	ldr r1, _080DCEA4 @ =0x084F0908
_080DCDD6:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _080DCDA8
_080DCDDC:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _080DCE08
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _080DCE06
	b _080DD378
_080DCE06:
	add r5, sp, #0x28
_080DCE08:
	ldr r0, [sp, #0x208]
	subs r4, r0, r3
	cmp r4, #0
	ble _080DCE76
	ldr r1, _080DCEA4 @ =0x084F0908
	cmp r4, #0x10
	ble _080DCE4C
	mov r6, sb
_080DCE18:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080DCE46
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _080DCE42
	b _080DD378
_080DCE42:
	add r5, sp, #0x28
	ldr r1, _080DCEA4 @ =0x084F0908
_080DCE46:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _080DCE18
_080DCE4C:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080DCE76
	ldr r0, [sp, #0x1e0]
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _080DCE74
	b _080DD378
_080DCE74:
	add r5, sp, #0x28
_080DCE76:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	bne _080DCEA8
	mov r4, r8
	str r4, [r5]
	str r3, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r3
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	bgt _080DCE9E
	b _080DD2BE
_080DCE9E:
	ldr r0, [sp, #0x1e0]
	b _080DD2B4
	.align 2, 0
_080DCEA4: .4byte 0x084F0908
_080DCEA8:
	ldr r2, [sp, #0x1e8]
	cmp r2, #0x65
	bgt _080DCEB0
	b _080DD194
_080DCEB0:
	ldr r3, _080DCF7C @ =0x00000000
	ldr r2, _080DCF78 @ =0x00000000
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl __eqdf2
	cmp r0, #0
	bne _080DCF88
	ldr r0, _080DCF80 @ =0x084F096C
	str r0, [r5]
	movs r6, #1
	str r6, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _080DCEEC
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _080DCEEA
	b _080DD378
_080DCEEA:
	add r5, sp, #0x28
_080DCEEC:
	add r0, sp, #0x1d4
	ldr r1, [r0]
	add r4, sp, #0x1d8
	ldr r0, [r4]
	cmp r1, r0
	blt _080DCF02
	ldr r0, [sp, #0x1ec]
	ands r0, r6
	cmp r0, #0
	bne _080DCF02
	b _080DD2BE
_080DCF02:
	ldr r0, [sp, #0x1f8]
	str r0, [r5]
	str r6, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #1
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080DCF2A
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _080DCF28
	b _080DD378
_080DCF28:
	add r5, sp, #0x28
_080DCF2A:
	ldr r0, [r4]
	subs r4, r0, #1
	cmp r4, #0
	bgt _080DCF34
	b _080DD2BE
_080DCF34:
	ldr r1, _080DCF84 @ =0x084F0908
	cmp r4, #0x10
	ble _080DCF6C
	mov r6, sb
_080DCF3C:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080DCF66
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _080DCF62
	b _080DD378
_080DCF62:
	add r5, sp, #0x28
	ldr r1, _080DCF84 @ =0x084F0908
_080DCF66:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _080DCF3C
_080DCF6C:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	b _080DD2A2
	.align 2, 0
_080DCF78: .4byte 0x00000000
_080DCF7C: .4byte 0x00000000
_080DCF80: .4byte 0x084F096C
_080DCF84: .4byte 0x084F0908
_080DCF88:
	add r6, sp, #0x1d4
	ldr r2, [r6]
	cmp r2, #0
	bgt _080DD070
	ldr r0, _080DD068 @ =0x084F096C
	str r0, [r5]
	movs r4, #1
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #1
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080DCFBA
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _080DCFB8
	b _080DD378
_080DCFB8:
	add r5, sp, #0x28
_080DCFBA:
	ldr r2, [sp, #0x1f8]
	str r2, [r5]
	str r4, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _080DCFE4
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _080DCFE2
	b _080DD378
_080DCFE2:
	add r5, sp, #0x28
_080DCFE4:
	ldr r0, [r6]
	rsbs r4, r0, #0
	cmp r4, #0
	ble _080DD04A
	ldr r1, _080DD06C @ =0x084F0908
	cmp r4, #0x10
	ble _080DD024
	mov r6, sb
_080DCFF4:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080DD01E
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _080DD01A
	b _080DD378
_080DD01A:
	add r5, sp, #0x28
	ldr r1, _080DD06C @ =0x084F0908
_080DD01E:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _080DCFF4
_080DD024:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080DD04A
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _080DD048
	b _080DD378
_080DD048:
	add r5, sp, #0x28
_080DD04A:
	mov r2, r8
	str r2, [r5]
	add r0, sp, #0x1d8
	ldr r1, [r0]
	str r1, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, r0, r1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	b _080DD2AC
	.align 2, 0
_080DD068: .4byte 0x084F096C
_080DD06C: .4byte 0x084F0908
_080DD070:
	add r4, sp, #0x1d8
	ldr r1, [r4]
	cmp r2, r1
	blt _080DD12C
	mov r0, r8
	str r0, [r5]
	str r1, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r1
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _080DD0A2
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _080DD0A0
	b _080DD378
_080DD0A0:
	add r5, sp, #0x28
_080DD0A2:
	ldr r1, [r6]
	ldr r0, [r4]
	subs r4, r1, r0
	cmp r4, #0
	ble _080DD10A
	ldr r1, _080DD124 @ =0x084F0908
	cmp r4, #0x10
	ble _080DD0E4
	mov r6, sb
_080DD0B4:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080DD0DE
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _080DD0DA
	b _080DD378
_080DD0DA:
	add r5, sp, #0x28
	ldr r1, _080DD124 @ =0x084F0908
_080DD0DE:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _080DD0B4
_080DD0E4:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080DD10A
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _080DD108
	b _080DD378
_080DD108:
	add r5, sp, #0x28
_080DD10A:
	movs r1, #1
	ldr r0, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	bne _080DD116
	b _080DD2BE
_080DD116:
	ldr r0, _080DD128 @ =0x084F0970
	str r0, [r5]
	str r1, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, #1
	b _080DD2A2
	.align 2, 0
_080DD124: .4byte 0x084F0908
_080DD128: .4byte 0x084F0970
_080DD12C:
	mov r0, r8
	str r0, [r5]
	str r2, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r2
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080DD154
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _080DD152
	b _080DD378
_080DD152:
	add r5, sp, #0x28
_080DD154:
	ldr r0, [r6]
	add r8, r0
	ldr r0, _080DD190 @ =0x084F0970
	str r0, [r5]
	movs r0, #1
	str r0, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, #1
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _080DD184
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _080DD182
	b _080DD378
_080DD182:
	add r5, sp, #0x28
_080DD184:
	mov r0, r8
	str r0, [r5]
	ldr r1, [r4]
	ldr r0, [r6]
	subs r1, r1, r0
	b _080DD29A
	.align 2, 0
_080DD190: .4byte 0x084F0970
_080DD194:
	add r4, sp, #0x1d8
	ldr r0, [r4]
	cmp r0, #1
	bgt _080DD1A6
	movs r1, #1
	ldr r0, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080DD26C
_080DD1A6:
	add r1, sp, #0x1c4
	mov r2, r8
	ldrb r0, [r2]
	strb r0, [r1]
	movs r0, #1
	add r8, r0
	movs r0, #0x2e
	strb r0, [r1, #1]
	str r1, [r5]
	movs r0, #2
	str r0, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #2
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080DD1DE
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _080DD1DC
	b _080DD378
_080DD1DC:
	add r5, sp, #0x28
_080DD1DE:
	ldr r3, _080DD208 @ =0x00000000
	ldr r2, _080DD204 @ =0x00000000
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl __nedf2
	cmp r0, #0
	beq _080DD20C
	mov r2, r8
	str r2, [r5]
	ldr r1, [r4]
	subs r0, r1, #1
	str r0, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	subs r0, #1
	adds r0, r0, r1
	b _080DD278
	.align 2, 0
_080DD204: .4byte 0x00000000
_080DD208: .4byte 0x00000000
_080DD20C:
	ldr r0, [r4]
	subs r4, r0, #1
	cmp r4, #0
	ble _080DD294
	ldr r1, _080DD268 @ =0x084F0908
	cmp r4, #0x10
	ble _080DD24C
	mov r6, sb
_080DD21C:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080DD246
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _080DD242
	b _080DD378
_080DD242:
	add r5, sp, #0x28
	ldr r1, _080DD268 @ =0x084F0908
_080DD246:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _080DD21C
_080DD24C:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080DD294
	ldr r0, [sp, #0x1e0]
	b _080DD28A
	.align 2, 0
_080DD268: .4byte 0x084F0908
_080DD26C:
	mov r2, r8
	str r2, [r5]
	str r1, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
_080DD278:
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _080DD294
	ldr r0, [sp, #0x1e0]
	mov r1, sb
_080DD28A:
	bl __sprint
	cmp r0, #0
	bne _080DD378
	add r5, sp, #0x28
_080DD294:
	add r0, sp, #0x14
	str r0, [r5]
	ldr r1, [sp, #0x204]
_080DD29A:
	str r1, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r1
_080DD2A2:
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
_080DD2AC:
	cmp r0, #7
	ble _080DD2BE
	ldr r0, [sp, #0x1e0]
	mov r1, sb
_080DD2B4:
	bl __sprint
	cmp r0, #0
	bne _080DD378
	add r5, sp, #0x28
_080DD2BE:
	movs r0, #4
	ldr r4, [sp, #0x1ec]
	ands r4, r0
	cmp r4, #0
	beq _080DD32A
	ldr r0, [sp, #0x1f4]
	ldr r1, [sp, #0x20c]
	subs r4, r0, r1
	cmp r4, #0
	ble _080DD32A
	ldr r1, _080DD35C @ =0x084F08F8
	cmp r4, #0x10
	ble _080DD308
	mov r6, sb
_080DD2DA:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080DD302
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	bne _080DD378
	add r5, sp, #0x28
	ldr r1, _080DD35C @ =0x084F08F8
_080DD302:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _080DD2DA
_080DD308:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	str r0, [r2, #8]
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _080DD32A
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	bne _080DD378
_080DD32A:
	ldr r0, [sp, #0x20c]
	ldr r4, [sp, #0x1f4]
	cmp r0, r4
	bge _080DD334
	adds r0, r4, #0
_080DD334:
	ldr r1, [sp, #0x1f0]
	adds r1, r1, r0
	str r1, [sp, #0x1f0]
	mov r2, sb
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _080DD34E
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	bne _080DD378
_080DD34E:
	movs r0, #0
	mov r4, sb
	str r0, [r4, #4]
	add r5, sp, #0x28
	bl _080DC4F4
	.align 2, 0
_080DD35C: .4byte 0x084F08F8
_080DD360:
	mov r1, sb
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _080DD372
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	bne _080DD378
_080DD372:
	movs r0, #0
	mov r1, sb
	str r0, [r1, #4]
_080DD378:
	movs r0, #0x40
	ldr r2, [sp, #0x1e0]
	ldrh r2, [r2, #0xc]
	ands r0, r2
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	bne _080DD38A
	ldr r1, [sp, #0x1f0]
_080DD38A:
	adds r0, r1, #0
_080DD38C:
	movs r3, #0x88
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start cvt
cvt: @ 0x080DD39C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp, #0x18]
	adds r5, r2, #0
	adds r4, r1, #0
	mov r8, r3
	ldr r6, [sp, #0x3c]
	ldr r0, [sp, #0x44]
	mov sl, r0
	ldr r1, [sp, #0x48]
	mov sb, r1
	cmp r1, #0x66
	bne _080DD3C2
	movs r7, #3
	b _080DD3D2
_080DD3C2:
	mov r0, sb
	cmp r0, #0x65
	beq _080DD3CC
	cmp r0, #0x45
	bne _080DD3D0
_080DD3CC:
	movs r1, #1
	add r8, r1
_080DD3D0:
	movs r7, #2
_080DD3D2:
	lsls r0, r4, #0x1f
	lsrs r0, r0, #0x1f
	cmp r0, #0
	beq _080DD3E8
	adds r1, r5, #0
	adds r0, r4, #0
	bl __negdf2
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #0x2d
_080DD3E8:
	ldr r1, [sp, #0x40]
	strb r0, [r1]
	mov r0, r8
	str r0, [sp]
	mov r1, sl
	str r1, [sp, #4]
	add r0, sp, #0x10
	str r0, [sp, #8]
	add r0, sp, #0x14
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	adds r2, r5, #0
	adds r1, r4, #0
	adds r3, r7, #0
	bl _dtoa_r
	adds r7, r0, #0
	mov r1, sb
	cmp r1, #0x67
	beq _080DD414
	cmp r1, #0x47
	bne _080DD41C
_080DD414:
	movs r0, #1
	ands r6, r0
	cmp r6, #0
	beq _080DD470
_080DD41C:
	mov r0, r8
	adds r6, r7, r0
	mov r1, sb
	cmp r1, #0x66
	bne _080DD44C
	ldrb r0, [r7]
	cmp r0, #0x30
	bne _080DD446
	ldr r3, _080DD48C @ =0x00000000
	ldr r2, _080DD488 @ =0x00000000
	adds r1, r5, #0
	adds r0, r4, #0
	bl __nedf2
	cmp r0, #0
	beq _080DD446
	mov r1, r8
	rsbs r0, r1, #0
	adds r0, #1
	mov r1, sl
	str r0, [r1]
_080DD446:
	mov r1, sl
	ldr r0, [r1]
	adds r6, r6, r0
_080DD44C:
	ldr r3, _080DD48C @ =0x00000000
	ldr r2, _080DD488 @ =0x00000000
	adds r1, r5, #0
	adds r0, r4, #0
	bl __eqdf2
	cmp r0, #0
	bne _080DD45E
	str r6, [sp, #0x14]
_080DD45E:
	ldr r0, [sp, #0x14]
	cmp r0, r6
	bhs _080DD470
	movs r1, #0x30
_080DD466:
	strb r1, [r0]
	adds r0, #1
	str r0, [sp, #0x14]
	cmp r0, r6
	blo _080DD466
_080DD470:
	ldr r0, [sp, #0x14]
	subs r0, r0, r7
	ldr r1, [sp, #0x4c]
	str r0, [r1]
	adds r0, r7, #0
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080DD488: .4byte 0x00000000
_080DD48C: .4byte 0x00000000

	thumb_func_start exponent
exponent: @ 0x080DD490
	push {r4, r5, r6, r7, lr}
	sub sp, #0x134
	adds r7, r0, #0
	adds r6, r1, #0
	strb r2, [r7]
	adds r5, r7, #1
	cmp r6, #0
	bge _080DD4A6
	rsbs r6, r6, #0
	movs r0, #0x2d
	b _080DD4A8
_080DD4A6:
	movs r0, #0x2b
_080DD4A8:
	strb r0, [r7, #1]
	adds r5, #1
	add r4, sp, #0x134
	cmp r6, #9
	ble _080DD4EA
_080DD4B2:
	subs r4, #1
	adds r0, r6, #0
	movs r1, #0xa
	bl __modsi3
	adds r0, #0x30
	strb r0, [r4]
	adds r0, r6, #0
	movs r1, #0xa
	bl __divsi3
	adds r6, r0, #0
	cmp r6, #9
	bgt _080DD4B2
	subs r4, #1
	adds r0, #0x30
	strb r0, [r4]
	add r0, sp, #0x134
	cmp r4, r0
	bhs _080DD4F8
	adds r1, r0, #0
_080DD4DC:
	ldrb r0, [r4]
	strb r0, [r5]
	adds r4, #1
	adds r5, #1
	cmp r4, r1
	blo _080DD4DC
	b _080DD4F8
_080DD4EA:
	movs r0, #0x30
	strb r0, [r5]
	adds r5, #1
	adds r0, r6, #0
	adds r0, #0x30
	strb r0, [r5]
	adds r5, #1
_080DD4F8:
	subs r0, r5, r7
	add sp, #0x134
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

    @vsprintf

	thumb_func_start vsprintf
vsprintf: @ 0x080DD500
	push {r4, r5, lr}
	sub sp, #0x58
	mov r4, sp
	movs r5, #0
	movs r3, #0x82
	lsls r3, r3, #2
	strh r3, [r4, #0xc]
	str r0, [sp]
	str r0, [sp, #0x10]
	ldr r0, _080DD52C @ =0x7FFFFFFF
	str r0, [sp, #8]
	str r0, [sp, #0x14]
	ldr r0, _080DD530 @ =0x08650D38
	ldr r0, [r0]
	str r0, [sp, #0x54]
	mov r0, sp
	bl vfprintf
	ldr r1, [sp]
	strb r5, [r1]
	add sp, #0x58
	pop {r4, r5, pc}
	.align 2, 0
_080DD52C: .4byte 0x7FFFFFFF
_080DD530: .4byte 0x08650D38

    @wsetup

	thumb_func_start __swsetup
__swsetup: @ 0x080DD534
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _080DD544
	ldr r0, _080DD570 @ =0x08650D38
	ldr r0, [r0]
	str r0, [r4, #0x54]
_080DD544:
	ldr r1, [r4, #0x54]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bne _080DD552
	adds r0, r1, #0
	bl __sinit
_080DD552:
	ldrh r1, [r4, #0xc]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bne _080DD5AC
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080DD574
	movs r0, #1
	rsbs r0, r0, #0
	b _080DD5DE
	.align 2, 0
_080DD570: .4byte 0x08650D38
_080DD574:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080DD5A4
	ldr r1, [r4, #0x30]
	cmp r1, #0
	beq _080DD592
	adds r0, r4, #0
	adds r0, #0x40
	cmp r1, r0
	beq _080DD590
	ldr r0, [r4, #0x54]
	bl _free_r
_080DD590:
	str r5, [r4, #0x30]
_080DD592:
	movs r0, #0x25
	rsbs r0, r0, #0
	ldrh r1, [r4, #0xc]
	ands r0, r1
	movs r1, #0
	strh r0, [r4, #0xc]
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r4]
_080DD5A4:
	movs r0, #8
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
_080DD5AC:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _080DD5B8
	adds r0, r4, #0
	bl __smakebuf
_080DD5B8:
	ldrh r1, [r4, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080DD5CE
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0x14]
	rsbs r0, r0, #0
	str r0, [r4, #0x18]
	b _080DD5DC
_080DD5CE:
	movs r0, #2
	ands r0, r1
	movs r1, #0
	cmp r0, #0
	bne _080DD5DA
	ldr r1, [r4, #0x14]
_080DD5DA:
	str r1, [r4, #8]
_080DD5DC:
	movs r0, #0
_080DD5DE:
	pop {r4, r5, pc}

    @dtoa

	thumb_func_start quorem
quorem: @ 0x080DD5E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	ldr r7, [r1, #0x10]
	ldr r0, [r0, #0x10]
	cmp r0, r7
	bge _080DD5FC
	movs r0, #0
	b _080DD730
_080DD5FC:
	ldr r0, [sp, #4]
	adds r0, #0x14
	mov r8, r0
	subs r7, #1
	lsls r0, r7, #2
	mov r1, r8
	adds r1, r1, r0
	str r1, [sp, #0xc]
	ldr r4, [sp]
	adds r4, #0x14
	adds r5, r4, r0
	ldr r1, [r1]
	adds r1, #1
	ldr r2, [r5]
	mov sl, r2
	mov r0, sl
	bl __udivsi3
	str r0, [sp, #8]
	mov r3, r8
	str r3, [sp, #0x14]
	str r4, [sp, #0x10]
	cmp r0, #0
	beq _080DD6A6
	movs r6, #0
	mov sb, r6
	ldr r0, _080DD690 @ =0x0000FFFF
	mov ip, r0
_080DD634:
	mov r2, r8
	adds r2, #4
	mov r8, r2
	subs r2, #4
	ldm r2!, {r1}
	adds r0, r1, #0
	mov r3, ip
	ands r0, r3
	ldr r2, [sp, #8]
	muls r0, r2, r0
	mov r3, sb
	adds r2, r0, r3
	lsrs r0, r1, #0x10
	ldr r3, [sp, #8]
	adds r1, r0, #0
	muls r1, r3, r1
	lsrs r0, r2, #0x10
	adds r3, r1, r0
	lsrs r0, r3, #0x10
	mov sb, r0
	ldr r0, [r4]
	mov r1, ip
	ands r0, r1
	ands r2, r1
	subs r0, r0, r2
	adds r2, r0, r6
	asrs r6, r2, #0x10
	ldr r0, [r4]
	lsrs r1, r0, #0x10
	mov r0, ip
	ands r3, r0
	subs r1, r1, r3
	adds r0, r1, r6
	asrs r6, r0, #0x10
	strh r0, [r4]
	strh r2, [r4, #2]
	adds r4, #4
	ldr r1, [sp, #0xc]
	cmp r8, r1
	bls _080DD634
	mov r2, sl
	cmp r2, #0
	bne _080DD6A6
	ldr r4, [sp, #0x10]
	b _080DD696
	.align 2, 0
_080DD690: .4byte 0x0000FFFF
_080DD694:
	subs r7, #1
_080DD696:
	subs r5, #4
	cmp r5, r4
	bls _080DD6A2
	ldr r0, [r5]
	cmp r0, #0
	beq _080DD694
_080DD6A2:
	ldr r3, [sp]
	str r7, [r3, #0x10]
_080DD6A6:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl __mcmp
	cmp r0, #0
	blt _080DD72E
	ldr r0, [sp, #8]
	adds r0, #1
	str r0, [sp, #8]
	movs r6, #0
	mov sb, r6
	ldr r4, [sp, #0x10]
	ldr r1, [sp, #0x14]
	mov r8, r1
	lsls r2, r7, #2
	mov sl, r2
	ldr r5, _080DD718 @ =0x0000FFFF
_080DD6C8:
	mov r3, r8
	adds r3, #4
	mov r8, r3
	subs r3, #4
	ldm r3!, {r1}
	adds r0, r1, #0
	ands r0, r5
	mov r3, sb
	adds r2, r0, r3
	lsrs r1, r1, #0x10
	lsrs r0, r2, #0x10
	adds r3, r1, r0
	lsrs r0, r3, #0x10
	mov sb, r0
	ldr r1, [r4]
	adds r0, r1, #0
	ands r0, r5
	ands r2, r5
	subs r0, r0, r2
	adds r2, r0, r6
	asrs r6, r2, #0x10
	lsrs r1, r1, #0x10
	ands r3, r5
	subs r1, r1, r3
	adds r0, r1, r6
	asrs r6, r0, #0x10
	strh r0, [r4]
	strh r2, [r4, #2]
	adds r4, #4
	ldr r1, [sp, #0xc]
	cmp r8, r1
	bls _080DD6C8
	ldr r4, [sp, #0x10]
	mov r2, sl
	adds r5, r4, r2
	ldr r0, [r5]
	cmp r0, #0
	bne _080DD72E
	b _080DD71E
	.align 2, 0
_080DD718: .4byte 0x0000FFFF
_080DD71C:
	subs r7, #1
_080DD71E:
	subs r5, #4
	cmp r5, r4
	bls _080DD72A
	ldr r0, [r5]
	cmp r0, #0
	beq _080DD71C
_080DD72A:
	ldr r3, [sp]
	str r7, [r3, #0x10]
_080DD72E:
	ldr r0, [sp, #8]
_080DD730:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start _dtoa_r
_dtoa_r: @ 0x080DD73C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x84
	mov sl, r0
	str r3, [sp, #0xc]
	ldr r4, [sp, #0xac]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	ldr r2, [r0, #0x40]
	cmp r2, #0
	beq _080DD774
	ldr r0, [r0, #0x44]
	str r0, [r2, #4]
	mov r0, sl
	ldr r1, [r0, #0x44]
	movs r0, #1
	lsls r0, r1
	str r0, [r2, #8]
	mov r0, sl
	adds r1, r2, #0
	bl _Bfree
	movs r0, #0
	mov r1, sl
	str r0, [r1, #0x40]
_080DD774:
	movs r0, #0x80
	lsls r0, r0, #0x18
	ldr r1, [sp, #0x40]
	ands r0, r1
	cmp r0, #0
	beq _080DD790
	movs r0, #1
	str r0, [r4]
	ldr r0, _080DD78C @ =0x7FFFFFFF
	ands r1, r0
	str r1, [sp, #0x40]
	b _080DD792
	.align 2, 0
_080DD78C: .4byte 0x7FFFFFFF
_080DD790:
	str r0, [r4]
_080DD792:
	ldr r1, _080DD7D4 @ =0x7FF00000
	ldr r2, [sp, #0x40]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, r1
	bne _080DD7E8
	ldr r0, _080DD7D8 @ =0x0000270F
	ldr r3, [sp, #0xa8]
	str r0, [r3]
	ldr r0, _080DD7DC @ =0x084F0980
	mov sb, r0
	ldr r1, [sp, #0x44]
	cmp r1, #0
	bne _080DD7BA
	ldr r0, _080DD7E0 @ =0x000FFFFF
	ands r2, r0
	cmp r2, #0
	bne _080DD7BA
	ldr r2, _080DD7E4 @ =0x084F0974
	mov sb, r2
_080DD7BA:
	ldr r3, [sp, #0xb0]
	cmp r3, #0
	beq _080DD80C
	mov r1, sb
	ldrb r0, [r1, #3]
	adds r1, #3
	cmp r0, #0
	beq _080DD7CC
	adds r1, #5
_080DD7CC:
	ldr r2, [sp, #0xb0]
	str r1, [r2]
	b _080DD80C
	.align 2, 0
_080DD7D4: .4byte 0x7FF00000
_080DD7D8: .4byte 0x0000270F
_080DD7DC: .4byte 0x084F0980
_080DD7E0: .4byte 0x000FFFFF
_080DD7E4: .4byte 0x084F0974
_080DD7E8:
	ldr r3, _080DD818 @ =0x00000000
	ldr r2, _080DD814 @ =0x00000000
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __eqdf2
	cmp r0, #0
	bne _080DD820
	movs r0, #1
	ldr r3, [sp, #0xa8]
	str r0, [r3]
	ldr r0, _080DD81C @ =0x084F0984
	mov sb, r0
	ldr r1, [sp, #0xb0]
	cmp r1, #0
	beq _080DD80C
	adds r0, #1
	str r0, [r1]
_080DD80C:
	mov r0, sb
	bl _080DE426
	.align 2, 0
_080DD814: .4byte 0x00000000
_080DD818: .4byte 0x00000000
_080DD81C: .4byte 0x084F0984
_080DD820:
	add r0, sp, #8
	str r0, [sp]
	mov r0, sl
	ldr r1, [sp, #0x40]
	ldr r2, [sp, #0x44]
	add r3, sp, #4
	bl _d2b
	str r0, [sp, #0x5c]
	ldr r2, [sp, #0x40]
	lsls r0, r2, #1
	lsrs r0, r0, #0x15
	mov r8, r0
	cmp r0, #0
	beq _080DD870
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	ldr r0, _080DD864 @ =0x000FFFFF
	ldr r1, [sp, #0x48]
	ands r1, r0
	str r1, [sp, #0x48]
	ldr r0, _080DD868 @ =0x3FF00000
	adds r2, r1, #0
	orrs r2, r0
	str r2, [sp, #0x48]
	ldr r3, _080DD86C @ =0xFFFFFC01
	add r8, r3
	movs r0, #0
	str r0, [sp, #0x58]
	ldr r6, [sp, #8]
	b _080DD8D0
	.align 2, 0
_080DD864: .4byte 0x000FFFFF
_080DD868: .4byte 0x3FF00000
_080DD86C: .4byte 0xFFFFFC01
_080DD870:
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	adds r2, r1, r0
	ldr r3, _080DD898 @ =0x00000432
	adds r3, r3, r2
	mov r8, r3
	adds r6, r1, #0
	cmp r3, #0x20
	ble _080DD8A0
	movs r0, #0x40
	subs r0, r0, r3
	ldr r4, [sp, #0x40]
	lsls r4, r0
	ldr r1, _080DD89C @ =0x00000412
	adds r0, r2, r1
	ldr r2, [sp, #0x44]
	lsrs r2, r0
	adds r0, r2, #0
	orrs r4, r0
	b _080DD8AA
	.align 2, 0
_080DD898: .4byte 0x00000432
_080DD89C: .4byte 0x00000412
_080DD8A0:
	movs r0, #0x20
	mov r3, r8
	subs r0, r0, r3
	ldr r4, [sp, #0x44]
	lsls r4, r0
_080DD8AA:
	adds r0, r4, #0
	bl __floatsidf
	cmp r4, #0
	bge _080DD8BC
	ldr r3, _080DD980 @ =0x00000000
	ldr r2, _080DD97C @ =0x41F00000
	bl __adddf3
_080DD8BC:
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	ldr r1, _080DD984 @ =0xFE100000
	ldr r0, [sp, #0x48]
	adds r1, r0, r1
	str r1, [sp, #0x48]
	ldr r2, _080DD988 @ =0xFFFFFBCD
	add r8, r2
	movs r3, #1
	str r3, [sp, #0x58]
_080DD8D0:
	ldr r2, _080DD98C @ =0x3FF80000
	ldr r3, _080DD990 @ =0x00000000
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x4c]
	bl __subdf3
	ldr r2, _080DD994 @ =0x3FD287A7
	ldr r3, _080DD998 @ =0x636F4361
	bl __muldf3
	ldr r2, _080DD99C @ =0x3FC68A28
	ldr r3, _080DD9A0 @ =0x8B60C8B3
	bl __adddf3
	adds r5, r1, #0
	adds r4, r0, #0
	mov r0, r8
	bl __floatsidf
	ldr r2, _080DD9A4 @ =0x3FD34413
	ldr r3, _080DD9A8 @ =0x509F79FB
	bl __muldf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __adddf3
	str r0, [sp, #0x6c]
	str r1, [sp, #0x70]
	bl __fixdfsi
	str r0, [sp, #0x24]
	ldr r2, _080DD9AC @ =0x00000000
	ldr r3, _080DD9B0 @ =0x00000000
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl __ltdf2
	cmp r0, #0
	bge _080DD940
	ldr r0, [sp, #0x24]
	bl __floatsidf
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl __nedf2
	cmp r0, #0
	beq _080DD940
	ldr r0, [sp, #0x24]
	subs r0, #1
	str r0, [sp, #0x24]
_080DD940:
	movs r1, #1
	str r1, [sp, #0x2c]
	ldr r2, [sp, #0x24]
	cmp r2, #0x16
	bhi _080DD96A
	ldr r1, _080DD9B4 @ =0x084F09D4
	lsls r0, r2, #3
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r3, [r0, #4]
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __ltdf2
	cmp r0, #0
	bge _080DD966
	ldr r3, [sp, #0x24]
	subs r3, #1
	str r3, [sp, #0x24]
_080DD966:
	movs r0, #0
	str r0, [sp, #0x2c]
_080DD96A:
	mov r1, r8
	subs r0, r6, r1
	subs r4, r0, #1
	cmp r4, #0
	blt _080DD9B8
	movs r2, #0
	str r2, [sp, #0x10]
	str r4, [sp, #0x34]
	b _080DD9C0
	.align 2, 0
_080DD97C: .4byte 0x41F00000
_080DD980: .4byte 0x00000000
_080DD984: .4byte 0xFE100000
_080DD988: .4byte 0xFFFFFBCD
_080DD98C: .4byte 0x3FF80000
_080DD990: .4byte 0x00000000
_080DD994: .4byte 0x3FD287A7
_080DD998: .4byte 0x636F4361
_080DD99C: .4byte 0x3FC68A28
_080DD9A0: .4byte 0x8B60C8B3
_080DD9A4: .4byte 0x3FD34413
_080DD9A8: .4byte 0x509F79FB
_080DD9AC: .4byte 0x00000000
_080DD9B0: .4byte 0x00000000
_080DD9B4: .4byte 0x084F09D4
_080DD9B8:
	rsbs r4, r4, #0
	str r4, [sp, #0x10]
	movs r3, #0
	str r3, [sp, #0x34]
_080DD9C0:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	blt _080DD9D4
	movs r1, #0
	str r1, [sp, #0x14]
	str r0, [sp, #0x38]
	ldr r2, [sp, #0x34]
	adds r2, r2, r0
	str r2, [sp, #0x34]
	b _080DD9E4
_080DD9D4:
	ldr r3, [sp, #0x10]
	ldr r0, [sp, #0x24]
	subs r3, r3, r0
	str r3, [sp, #0x10]
	rsbs r1, r0, #0
	str r1, [sp, #0x14]
	movs r2, #0
	str r2, [sp, #0x38]
_080DD9E4:
	ldr r3, [sp, #0xc]
	cmp r3, #9
	bls _080DD9EE
	movs r0, #0
	str r0, [sp, #0xc]
_080DD9EE:
	movs r5, #1
	ldr r1, [sp, #0xc]
	cmp r1, #5
	ble _080DD9FC
	subs r1, #4
	str r1, [sp, #0xc]
	movs r5, #0
_080DD9FC:
	movs r2, #1
	str r2, [sp, #0x30]
	ldr r3, [sp, #0xc]
	cmp r3, #5
	bhi _080DDA76
	lsls r0, r3, #2
	ldr r1, _080DDA10 @ =_080DDA14
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080DDA10: .4byte _080DDA14
_080DDA14: @ jump table
	.4byte _080DDA2C @ case 0
	.4byte _080DDA2C @ case 1
	.4byte _080DDA3E @ case 2
	.4byte _080DDA5A @ case 3
	.4byte _080DDA42 @ case 4
	.4byte _080DDA5E @ case 5
_080DDA2C:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x20]
	movs r1, #0x12
	mov r8, r1
	movs r2, #0
	str r2, [sp, #0xa4]
	b _080DDA76
_080DDA3E:
	movs r3, #0
	str r3, [sp, #0x30]
_080DDA42:
	ldr r0, [sp, #0xa4]
	cmp r0, #0
	bgt _080DDA4C
	movs r1, #1
	str r1, [sp, #0xa4]
_080DDA4C:
	ldr r2, [sp, #0xa4]
	mov r8, r2
	mov r3, r8
	str r3, [sp, #0x20]
	mov r0, r8
	str r0, [sp, #0x18]
	b _080DDA76
_080DDA5A:
	movs r1, #0
	str r1, [sp, #0x30]
_080DDA5E:
	ldr r2, [sp, #0xa4]
	ldr r3, [sp, #0x24]
	adds r0, r2, r3
	adds r1, r0, #1
	mov r8, r1
	mov r2, r8
	str r2, [sp, #0x18]
	str r0, [sp, #0x20]
	cmp r1, #0
	bgt _080DDA76
	movs r3, #1
	mov r8, r3
_080DDA76:
	movs r4, #4
	movs r0, #0
	mov r1, sl
	str r0, [r1, #0x44]
	mov r2, r8
	cmp r2, #0x17
	bls _080DDA96
	movs r1, #0
_080DDA86:
	adds r1, #1
	lsls r4, r4, #1
	adds r0, r4, #0
	adds r0, #0x14
	cmp r0, r8
	bls _080DDA86
	mov r3, sl
	str r1, [r3, #0x44]
_080DDA96:
	mov r0, sl
	ldr r1, [r0, #0x44]
	bl _Balloc
	mov r1, sl
	str r0, [r1, #0x40]
	str r0, [sp, #0x74]
	mov sb, r0
	ldr r2, [sp, #0x18]
	cmp r2, #0xe
	bls _080DDAAE
	b _080DDE20
_080DDAAE:
	cmp r5, #0
	bne _080DDAB4
	b _080DDE20
_080DDAB4:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	str r0, [sp, #0x78]
	str r1, [sp, #0x7c]
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	ldr r1, [sp, #0x24]
	str r1, [sp, #0x28]
	str r2, [sp, #0x1c]
	movs r7, #2
	cmp r1, #0
	ble _080DDB44
	ldr r0, _080DDB3C @ =0x084F09D4
	movs r2, #0xf
	ands r1, r2
	lsls r1, r1, #3
	adds r3, r1, r0
	ldr r0, [r3]
	ldr r1, [r3, #4]
	str r0, [sp, #0x6c]
	str r1, [sp, #0x70]
	ldr r1, [sp, #0x24]
	asrs r4, r1, #4
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _080DDB00
	ands r4, r2
	ldr r0, _080DDB40 @ =0x084F0A9C
	ldr r2, [r0, #0x20]
	ldr r3, [r0, #0x24]
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	bl __divdf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	movs r7, #3
_080DDB00:
	cmp r4, #0
	beq _080DDB28
	ldr r5, _080DDB40 @ =0x084F0A9C
_080DDB06:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _080DDB20
	adds r7, #1
	ldr r2, [r5]
	ldr r3, [r5, #4]
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl __muldf3
	str r0, [sp, #0x6c]
	str r1, [sp, #0x70]
_080DDB20:
	asrs r4, r4, #1
	adds r5, #8
	cmp r4, #0
	bne _080DDB06
_080DDB28:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl __divdf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	b _080DDB90
	.align 2, 0
_080DDB3C: .4byte 0x084F09D4
_080DDB40: .4byte 0x084F0A9C
_080DDB44:
	ldr r2, [sp, #0x24]
	rsbs r6, r2, #0
	cmp r6, #0
	beq _080DDB90
	ldr r1, _080DDC38 @ =0x084F09D4
	movs r0, #0xf
	ands r0, r6
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	asrs r4, r6, #4
	cmp r4, #0
	beq _080DDB90
	ldr r5, _080DDC3C @ =0x084F0A9C
_080DDB6E:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _080DDB88
	adds r7, #1
	ldr r0, [r5]
	ldr r1, [r5, #4]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_080DDB88:
	asrs r4, r4, #1
	adds r5, #8
	cmp r4, #0
	bne _080DDB6E
_080DDB90:
	ldr r3, [sp, #0x2c]
	cmp r3, #0
	beq _080DDBCE
	ldr r2, _080DDC40 @ =0x3FF00000
	ldr r3, _080DDC44 @ =0x00000000
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __ltdf2
	cmp r0, #0
	bge _080DDBCE
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ble _080DDBCE
	ldr r1, [sp, #0x20]
	cmp r1, #0
	bgt _080DDBB4
	b _080DDE0C
_080DDBB4:
	str r1, [sp, #0x18]
	ldr r2, [sp, #0x24]
	subs r2, #1
	str r2, [sp, #0x24]
	ldr r0, _080DDC48 @ =0x40240000
	ldr r1, _080DDC4C @ =0x00000000
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	adds r7, #1
_080DDBCE:
	adds r0, r7, #0
	bl __floatsidf
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl __muldf3
	ldr r2, _080DDC50 @ =0x401C0000
	ldr r3, _080DDC54 @ =0x00000000
	bl __adddf3
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	ldr r0, _080DDC58 @ =0xFCC00000
	ldr r3, [sp, #0x50]
	adds r0, r3, r0
	str r0, [sp, #0x50]
	ldr r1, [sp, #0x18]
	cmp r1, #0
	bne _080DDC64
	movs r2, #0
	str r2, [sp, #0x64]
	movs r3, #0
	str r3, [sp, #0x68]
	ldr r2, _080DDC5C @ =0x40140000
	ldr r3, _080DDC60 @ =0x00000000
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __subdf3
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __gtdf2
	cmp r0, #0
	ble _080DDC1C
	b _080DE196
_080DDC1C:
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	bl __negdf2
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __ltdf2
	cmp r0, #0
	bge _080DDC36
	b _080DE18E
_080DDC36:
	b _080DDE0C
	.align 2, 0
_080DDC38: .4byte 0x084F09D4
_080DDC3C: .4byte 0x084F0A9C
_080DDC40: .4byte 0x3FF00000
_080DDC44: .4byte 0x00000000
_080DDC48: .4byte 0x40240000
_080DDC4C: .4byte 0x00000000
_080DDC50: .4byte 0x401C0000
_080DDC54: .4byte 0x00000000
_080DDC58: .4byte 0xFCC00000
_080DDC5C: .4byte 0x40140000
_080DDC60: .4byte 0x00000000
_080DDC64:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _080DDD34
	ldr r1, _080DDC94 @ =0x084F09D4
	ldr r0, [sp, #0x18]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r3, [r0, #4]
	ldr r0, _080DDC98 @ =0x3FE00000
	ldr r1, _080DDC9C @ =0x00000000
	bl __divdf3
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __subdf3
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	movs r1, #0
	mov r8, r1
	b _080DDCC0
	.align 2, 0
_080DDC94: .4byte 0x084F09D4
_080DDC98: .4byte 0x3FE00000
_080DDC9C: .4byte 0x00000000
_080DDCA0:
	ldr r1, _080DDD28 @ =0x00000000
	ldr r0, _080DDD24 @ =0x40240000
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __muldf3
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	ldr r1, _080DDD28 @ =0x00000000
	ldr r0, _080DDD24 @ =0x40240000
	adds r3, r5, #0
	adds r2, r4, #0
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_080DDCC0:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __fixdfsi
	adds r6, r0, #0
	bl __floatsidf
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __subdf3
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r6, #0
	adds r0, #0x30
	mov r2, sb
	strb r0, [r2]
	movs r3, #1
	add sb, r3
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __ltdf2
	cmp r0, #0
	bge _080DDCFC
	b _080DE406
_080DDCFC:
	ldr r0, _080DDD2C @ =0x3FF00000
	ldr r1, _080DDD30 @ =0x00000000
	adds r3, r5, #0
	adds r2, r4, #0
	bl __subdf3
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __ltdf2
	cmp r0, #0
	bge _080DDD16
	b _080DDF20
_080DDD16:
	movs r0, #1
	add r8, r0
	ldr r1, [sp, #0x18]
	cmp r8, r1
	blt _080DDCA0
	b _080DDE0C
	.align 2, 0
_080DDD24: .4byte 0x40240000
_080DDD28: .4byte 0x00000000
_080DDD2C: .4byte 0x3FF00000
_080DDD30: .4byte 0x00000000
_080DDD34:
	ldr r1, _080DDD54 @ =0x084F09D4
	ldr r0, [sp, #0x18]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __muldf3
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	movs r2, #1
	mov r8, r2
	b _080DDD6C
	.align 2, 0
_080DDD54: .4byte 0x084F09D4
_080DDD58:
	movs r3, #1
	add r8, r3
	ldr r1, _080DDE00 @ =0x00000000
	ldr r0, _080DDDFC @ =0x40240000
	adds r3, r5, #0
	adds r2, r4, #0
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_080DDD6C:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __fixdfsi
	adds r6, r0, #0
	bl __floatsidf
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __subdf3
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r6, #0
	adds r0, #0x30
	mov r1, sb
	strb r0, [r1]
	movs r2, #1
	add sb, r2
	ldr r3, [sp, #0x18]
	cmp r8, r3
	bne _080DDD58
	ldr r6, _080DDE04 @ =0x3FE00000
	ldr r7, _080DDE08 @ =0x00000000
	adds r1, r7, #0
	adds r0, r6, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __adddf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __gtdf2
	cmp r0, #0
	ble _080DDDBE
	b _080DDF20
_080DDDBE:
	adds r1, r7, #0
	adds r0, r6, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __subdf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __ltdf2
	cmp r0, #0
	bge _080DDE0C
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	ldrb r1, [r1]
	cmp r1, #0x30
	beq _080DDDEA
	b _080DDF46
_080DDDEA:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	mov r3, sb
	ldrb r3, [r3]
	cmp r3, #0x30
	beq _080DDDEA
	b _080DDF46
	.align 2, 0
_080DDDFC: .4byte 0x40240000
_080DDE00: .4byte 0x00000000
_080DDE04: .4byte 0x3FE00000
_080DDE08: .4byte 0x00000000
_080DDE0C:
	ldr r1, [sp, #0x74]
	mov sb, r1
	ldr r2, [sp, #0x48]
	ldr r3, [sp, #0x4c]
	str r2, [sp, #0x40]
	str r3, [sp, #0x44]
	ldr r3, [sp, #0x28]
	str r3, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0x18]
_080DDE20:
	ldr r0, [sp, #4]
	cmp r0, #0
	bge _080DDE28
	b _080DDF5C
_080DDE28:
	ldr r1, [sp, #0x24]
	cmp r1, #0xe
	ble _080DDE30
	b _080DDF5C
_080DDE30:
	ldr r1, _080DDE7C @ =0x084F09D4
	ldr r2, [sp, #0x24]
	lsls r0, r2, #3
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r0, #4]
	str r1, [sp, #0x6c]
	str r2, [sp, #0x70]
	ldr r2, [sp, #0xa4]
	cmp r2, #0
	bge _080DDE88
	ldr r3, [sp, #0x18]
	cmp r3, #0
	bgt _080DDE88
	movs r0, #0
	str r0, [sp, #0x64]
	movs r1, #0
	str r1, [sp, #0x68]
	cmp r3, #0
	bge _080DDE5A
	b _080DE18E
_080DDE5A:
	ldr r2, _080DDE80 @ =0x40140000
	ldr r3, _080DDE84 @ =0x00000000
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl __muldf3
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __ledf2
	cmp r0, #0
	bgt _080DDE78
	b _080DE18E
_080DDE78:
	b _080DE196
	.align 2, 0
_080DDE7C: .4byte 0x084F09D4
_080DDE80: .4byte 0x40140000
_080DDE84: .4byte 0x00000000
_080DDE88:
	movs r2, #1
	mov r8, r2
	b _080DDEAC
_080DDE8E:
	ldr r1, _080DDF50 @ =0x00000000
	ldr r0, _080DDF4C @ =0x40240000
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	ldr r2, _080DDF54 @ =0x00000000
	ldr r3, _080DDF58 @ =0x00000000
	bl __eqdf2
	cmp r0, #0
	bne _080DDEA8
	b _080DE406
_080DDEA8:
	movs r3, #1
	add r8, r3
_080DDEAC:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl __divdf3
	bl __fixdfsi
	adds r6, r0, #0
	bl __floatsidf
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl __muldf3
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __subdf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r0, r6, #0
	adds r0, #0x30
	mov r1, sb
	strb r0, [r1]
	movs r0, #1
	add sb, r0
	ldr r1, [sp, #0x18]
	cmp r8, r1
	bne _080DDE8E
	adds r1, r3, #0
	adds r0, r2, #0
	bl __adddf3
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl __gtdf2
	cmp r0, #0
	bgt _080DDF20
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl __eqdf2
	cmp r0, #0
	beq _080DDF16
	b _080DE406
_080DDF16:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	bne _080DDF20
	b _080DE406
_080DDF20:
	movs r0, #0x30
_080DDF22:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	mov r3, sb
	ldrb r3, [r3]
	cmp r3, #0x39
	bne _080DDF3E
	ldr r1, [sp, #0x74]
	cmp sb, r1
	bne _080DDF22
	ldr r2, [sp, #0x24]
	adds r2, #1
	str r2, [sp, #0x24]
	strb r0, [r1]
_080DDF3E:
	mov r3, sb
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_080DDF46:
	movs r0, #1
	add sb, r0
	b _080DE406
	.align 2, 0
_080DDF4C: .4byte 0x40240000
_080DDF50: .4byte 0x00000000
_080DDF54: .4byte 0x00000000
_080DDF58: .4byte 0x00000000
_080DDF5C:
	ldr r5, [sp, #0x10]
	ldr r6, [sp, #0x14]
	movs r1, #0
	str r1, [sp, #0x60]
	movs r2, #0
	str r2, [sp, #0x64]
	ldr r3, [sp, #0x30]
	cmp r3, #0
	beq _080DDFD2
	ldr r1, [sp, #0xc]
	cmp r1, #1
	bgt _080DDF90
	ldr r2, [sp, #0x58]
	cmp r2, #0
	beq _080DDF88
	ldr r3, _080DDF84 @ =0x00000433
	adds r3, r3, r0
	mov r8, r3
	b _080DDFBC
	.align 2, 0
_080DDF84: .4byte 0x00000433
_080DDF88:
	ldr r1, [sp, #8]
	movs r0, #0x36
	subs r0, r0, r1
	b _080DDFBA
_080DDF90:
	ldr r4, [sp, #0x18]
	subs r4, #1
	ldr r0, [sp, #0x14]
	cmp r0, r4
	blt _080DDF9E
	subs r6, r0, r4
	b _080DDFAE
_080DDF9E:
	ldr r1, [sp, #0x14]
	subs r4, r4, r1
	ldr r2, [sp, #0x38]
	adds r2, r2, r4
	str r2, [sp, #0x38]
	adds r1, r1, r4
	str r1, [sp, #0x14]
	movs r6, #0
_080DDFAE:
	ldr r3, [sp, #0x18]
	mov r8, r3
	cmp r3, #0
	bge _080DDFBC
	subs r5, r5, r3
	movs r0, #0
_080DDFBA:
	mov r8, r0
_080DDFBC:
	ldr r1, [sp, #0x10]
	add r1, r8
	str r1, [sp, #0x10]
	ldr r2, [sp, #0x34]
	add r2, r8
	str r2, [sp, #0x34]
	mov r0, sl
	movs r1, #1
	bl _i2b
	str r0, [sp, #0x64]
_080DDFD2:
	cmp r5, #0
	ble _080DDFF4
	ldr r3, [sp, #0x34]
	cmp r3, #0
	ble _080DDFF4
	mov r8, r3
	cmp r8, r5
	ble _080DDFE4
	mov r8, r5
_080DDFE4:
	ldr r0, [sp, #0x10]
	mov r1, r8
	subs r0, r0, r1
	str r0, [sp, #0x10]
	subs r5, r5, r1
	ldr r2, [sp, #0x34]
	subs r2, r2, r1
	str r2, [sp, #0x34]
_080DDFF4:
	ldr r3, [sp, #0x14]
	cmp r3, #0
	ble _080DE042
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _080DE036
	cmp r6, #0
	ble _080DE026
	mov r0, sl
	ldr r1, [sp, #0x64]
	adds r2, r6, #0
	bl _pow5mult
	str r0, [sp, #0x64]
	mov r0, sl
	ldr r1, [sp, #0x64]
	ldr r2, [sp, #0x5c]
	bl _multiply
	adds r4, r0, #0
	mov r0, sl
	ldr r1, [sp, #0x5c]
	bl _Bfree
	str r4, [sp, #0x5c]
_080DE026:
	ldr r1, [sp, #0x14]
	subs r4, r1, r6
	cmp r4, #0
	beq _080DE042
	mov r0, sl
	ldr r1, [sp, #0x5c]
	adds r2, r4, #0
	b _080DE03C
_080DE036:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	ldr r2, [sp, #0x14]
_080DE03C:
	bl _pow5mult
	str r0, [sp, #0x5c]
_080DE042:
	mov r0, sl
	movs r1, #1
	bl _i2b
	str r0, [sp, #0x68]
	ldr r2, [sp, #0x38]
	cmp r2, #0
	ble _080DE05C
	mov r0, sl
	ldr r1, [sp, #0x68]
	bl _pow5mult
	str r0, [sp, #0x68]
_080DE05C:
	ldr r3, [sp, #0xc]
	cmp r3, #1
	bgt _080DE098
	ldr r0, [sp, #0x44]
	cmp r0, #0
	bne _080DE094
	ldr r0, _080DE08C @ =0x000FFFFF
	ldr r1, [sp, #0x40]
	ands r0, r1
	cmp r0, #0
	bne _080DE094
	ldr r0, _080DE090 @ =0x7FF00000
	ands r1, r0
	cmp r1, #0
	beq _080DE094
	ldr r1, [sp, #0x10]
	adds r1, #1
	str r1, [sp, #0x10]
	ldr r2, [sp, #0x34]
	adds r2, #1
	str r2, [sp, #0x34]
	movs r3, #1
	str r3, [sp, #0x3c]
	b _080DE098
	.align 2, 0
_080DE08C: .4byte 0x000FFFFF
_080DE090: .4byte 0x7FF00000
_080DE094:
	movs r0, #0
	str r0, [sp, #0x3c]
_080DE098:
	ldr r1, [sp, #0x38]
	cmp r1, #0
	beq _080DE0C4
	ldr r2, [sp, #0x68]
	ldr r1, [r2, #0x10]
	subs r1, #1
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	bl _hi0bits
	ldr r1, [sp, #0x34]
	adds r1, #0x20
	subs r1, r1, r0
	mov r8, r1
	movs r0, #0x1f
	mov r3, r8
	ands r3, r0
	mov r8, r3
	b _080DE0D2
_080DE0C4:
	ldr r0, [sp, #0x34]
	adds r0, #1
	mov r8, r0
	movs r0, #0x1f
	mov r1, r8
	ands r1, r0
	mov r8, r1
_080DE0D2:
	mov r2, r8
	cmp r2, #0
	beq _080DE0DE
	movs r0, #0x20
	subs r2, r0, r2
	mov r8, r2
_080DE0DE:
	mov r3, r8
	cmp r3, #4
	ble _080DE0EA
	movs r0, #4
	rsbs r0, r0, #0
	b _080DE0F2
_080DE0EA:
	mov r3, r8
	cmp r3, #3
	bgt _080DE102
	movs r0, #0x1c
_080DE0F2:
	add r8, r0
	ldr r1, [sp, #0x10]
	add r1, r8
	str r1, [sp, #0x10]
	add r5, r8
	ldr r2, [sp, #0x34]
	add r2, r8
	str r2, [sp, #0x34]
_080DE102:
	ldr r3, [sp, #0x10]
	cmp r3, #0
	ble _080DE114
	mov r0, sl
	ldr r1, [sp, #0x5c]
	adds r2, r3, #0
	bl _lshift
	str r0, [sp, #0x5c]
_080DE114:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	ble _080DE126
	mov r0, sl
	ldr r1, [sp, #0x68]
	ldr r2, [sp, #0x34]
	bl _lshift
	str r0, [sp, #0x68]
_080DE126:
	ldr r1, [sp, #0x2c]
	cmp r1, #0
	beq _080DE164
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl __mcmp
	cmp r0, #0
	bge _080DE164
	ldr r2, [sp, #0x24]
	subs r2, #1
	str r2, [sp, #0x24]
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x5c]
	ldr r3, [sp, #0x30]
	cmp r3, #0
	beq _080DE160
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x64]
_080DE160:
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x18]
_080DE164:
	ldr r1, [sp, #0x18]
	cmp r1, #0
	bgt _080DE1A8
	ldr r2, [sp, #0xc]
	cmp r2, #2
	ble _080DE1A8
	cmp r1, #0
	blt _080DE18E
	mov r0, sl
	ldr r1, [sp, #0x68]
	movs r2, #5
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x68]
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl __mcmp
	cmp r0, #0
	bgt _080DE196
_080DE18E:
	ldr r3, [sp, #0xa4]
	mvns r3, r3
	str r3, [sp, #0x24]
	b _080DE3DE
_080DE196:
	movs r0, #0x31
	mov r1, sb
	strb r0, [r1]
	movs r2, #1
	add sb, r2
	ldr r3, [sp, #0x24]
	adds r3, #1
	str r3, [sp, #0x24]
	b _080DE3DE
_080DE1A8:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _080DE1B0
	b _080DE326
_080DE1B0:
	cmp r5, #0
	ble _080DE1C0
	mov r0, sl
	ldr r1, [sp, #0x64]
	adds r2, r5, #0
	bl _lshift
	str r0, [sp, #0x64]
_080DE1C0:
	ldr r1, [sp, #0x64]
	str r1, [sp, #0x60]
	ldr r2, [sp, #0x3c]
	cmp r2, #0
	beq _080DE1F2
	ldr r1, [r1, #4]
	mov r0, sl
	bl _Balloc
	str r0, [sp, #0x64]
	adds r0, #0xc
	ldr r1, [sp, #0x60]
	adds r1, #0xc
	ldr r3, [sp, #0x60]
	ldr r2, [r3, #0x10]
	lsls r2, r2, #2
	adds r2, #8
	bl memcpy
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #1
	bl _lshift
	str r0, [sp, #0x64]
_080DE1F2:
	movs r0, #1
	mov r8, r0
	mov r1, r8
	ldr r2, [sp, #0x44]
	ands r2, r1
	str r2, [sp, #0x80]
	b _080DE248
_080DE200:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x5c]
	ldr r3, [sp, #0x60]
	ldr r0, [sp, #0x64]
	cmp r3, r0
	bne _080DE228
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x64]
	str r0, [sp, #0x60]
	b _080DE244
_080DE228:
	mov r0, sl
	ldr r1, [sp, #0x60]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x60]
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x64]
_080DE244:
	movs r1, #1
	add r8, r1
_080DE248:
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl quorem
	adds r7, r0, #0
	adds r7, #0x30
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	bl __mcmp
	adds r4, r0, #0
	mov r0, sl
	ldr r1, [sp, #0x68]
	ldr r2, [sp, #0x64]
	bl __mdiff
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080DE27C
	ldr r0, [sp, #0x5c]
	adds r1, r5, #0
	bl __mcmp
	adds r6, r0, #0
	b _080DE27E
_080DE27C:
	movs r6, #1
_080DE27E:
	mov r0, sl
	adds r1, r5, #0
	bl _Bfree
	cmp r6, #0
	bne _080DE2AA
	ldr r2, [sp, #0xc]
	cmp r2, #0
	bne _080DE2AA
	ldr r3, [sp, #0x80]
	cmp r3, #0
	bne _080DE2AA
	cmp r7, #0x39
	beq _080DE2FC
	cmp r4, #0
	ble _080DE2A0
	adds r7, #1
_080DE2A0:
	mov r0, sb
	strb r7, [r0]
	movs r1, #1
	add sb, r1
	b _080DE3DE
_080DE2AA:
	cmp r4, #0
	blt _080DE2BE
	cmp r4, #0
	bne _080DE2F4
	ldr r2, [sp, #0xc]
	cmp r2, #0
	bne _080DE2F4
	ldr r3, [sp, #0x80]
	cmp r3, #0
	bne _080DE2F4
_080DE2BE:
	cmp r6, #0
	ble _080DE2EE
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #1
	bl _lshift
	str r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl __mcmp
	adds r6, r0, #0
	cmp r6, #0
	bgt _080DE2E8
	cmp r6, #0
	bne _080DE2EE
	adds r0, r7, #0
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DE2EE
_080DE2E8:
	adds r7, #1
	cmp r7, #0x3a
	beq _080DE2FC
_080DE2EE:
	mov r2, sb
	strb r7, [r2]
	b _080DE3A6
_080DE2F4:
	cmp r6, #0
	ble _080DE314
	cmp r7, #0x39
	bne _080DE308
_080DE2FC:
	movs r0, #0x39
	mov r1, sb
	strb r0, [r1]
	movs r2, #1
	add sb, r2
	b _080DE37C
_080DE308:
	adds r0, r7, #1
	mov r3, sb
	strb r0, [r3]
	movs r0, #1
	add sb, r0
	b _080DE3DE
_080DE314:
	mov r1, sb
	strb r7, [r1]
	movs r2, #1
	add sb, r2
	ldr r3, [sp, #0x18]
	cmp r8, r3
	beq _080DE324
	b _080DE200
_080DE324:
	b _080DE358
_080DE326:
	movs r0, #1
	mov r8, r0
	b _080DE33E
_080DE32C:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x5c]
	movs r1, #1
	add r8, r1
_080DE33E:
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl quorem
	adds r7, r0, #0
	adds r7, #0x30
	mov r2, sb
	strb r7, [r2]
	movs r3, #1
	add sb, r3
	ldr r0, [sp, #0x18]
	cmp r8, r0
	blt _080DE32C
_080DE358:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #1
	bl _lshift
	str r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl __mcmp
	adds r4, r0, #0
	cmp r4, #0
	bgt _080DE37C
	cmp r4, #0
	bne _080DE3BE
	movs r0, #1
	ands r7, r0
	cmp r7, #0
	beq _080DE3BE
_080DE37C:
	movs r1, #1
	rsbs r1, r1, #0
	add sb, r1
	mov r2, sb
	ldrb r2, [r2]
	cmp r2, #0x39
	bne _080DE39E
_080DE38A:
	ldr r3, [sp, #0x74]
	cmp sb, r3
	beq _080DE3AC
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	ldrb r1, [r1]
	cmp r1, #0x39
	beq _080DE38A
_080DE39E:
	mov r2, sb
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_080DE3A6:
	movs r3, #1
	add sb, r3
	b _080DE3DE
_080DE3AC:
	ldr r0, [sp, #0x24]
	adds r0, #1
	str r0, [sp, #0x24]
	movs r0, #0x31
	ldr r1, [sp, #0x74]
	strb r0, [r1]
	adds r1, #1
	mov sb, r1
	b _080DE3DE
_080DE3BE:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	mov r3, sb
	ldrb r3, [r3]
	cmp r3, #0x30
	bne _080DE3DA
_080DE3CC:
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	ldrb r1, [r1]
	cmp r1, #0x30
	beq _080DE3CC
_080DE3DA:
	movs r2, #1
	add sb, r2
_080DE3DE:
	mov r0, sl
	ldr r1, [sp, #0x68]
	bl _Bfree
	ldr r3, [sp, #0x64]
	cmp r3, #0
	beq _080DE406
	ldr r0, [sp, #0x60]
	cmp r0, #0
	beq _080DE3FE
	cmp r0, r3
	beq _080DE3FE
	mov r0, sl
	ldr r1, [sp, #0x60]
	bl _Bfree
_080DE3FE:
	mov r0, sl
	ldr r1, [sp, #0x64]
	bl _Bfree
_080DE406:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	bl _Bfree
	movs r0, #0
	mov r1, sb
	strb r0, [r1]
	ldr r0, [sp, #0x24]
	adds r0, #1
	ldr r2, [sp, #0xa8]
	str r0, [r2]
	ldr r3, [sp, #0xb0]
	cmp r3, #0
	beq _080DE424
	str r1, [r3]
_080DE424:
	ldr r0, [sp, #0x74]
_080DE426:
	add sp, #0x84
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

    @fflush

	thumb_func_start fflush
fflush: @ 0x080DE434
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	cmp r4, #0
	bne _080DE450
	ldr r0, _080DE448 @ =0x08650D38
	ldr r0, [r0]
	ldr r1, _080DE44C @ =fflush
	bl _fwalk
	b _080DE4C6
	.align 2, 0
_080DE448: .4byte 0x08650D38
_080DE44C: .4byte fflush
_080DE450:
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _080DE45C
	ldr r0, _080DE490 @ =0x08650D38
	ldr r0, [r0]
	str r0, [r4, #0x54]
_080DE45C:
	ldr r1, [r4, #0x54]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bne _080DE46A
	adds r0, r1, #0
	bl __sinit
_080DE46A:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080DE4C4
	ldr r6, [r4, #0x10]
	cmp r6, #0
	beq _080DE4C4
	ldr r0, [r4]
	subs r5, r0, r6
	str r6, [r4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080DE4A2
	ldr r0, [r4, #0x14]
	b _080DE4A4
	.align 2, 0
_080DE490: .4byte 0x08650D38
_080DE494:
	movs r0, #0x40
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
	movs r0, #1
	rsbs r0, r0, #0
	b _080DE4C6
_080DE4A2:
	movs r0, #0
_080DE4A4:
	str r0, [r4, #8]
	cmp r5, #0
	ble _080DE4C4
_080DE4AA:
	ldr r0, [r4, #0x1c]
	ldr r3, [r4, #0x24]
	adds r1, r6, #0
	adds r2, r5, #0
	bl _call_via_r3
	adds r1, r0, #0
	cmp r1, #0
	ble _080DE494
	adds r6, r6, r1
	subs r5, r5, r1
	cmp r5, #0
	bgt _080DE4AA
_080DE4C4:
	movs r0, #0
_080DE4C6:
	pop {r4, r5, r6, pc}

    @findfp

	thumb_func_start std
std: @ 0x080DE4C8
	push {r4, lr}
	movs r4, #0
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	strh r1, [r0, #0xc]
	strh r2, [r0, #0xe]
	str r4, [r0, #0x10]
	str r4, [r0, #0x18]
	str r0, [r0, #0x1c]
	ldr r1, _080DE4F0 @ =__sread
	str r1, [r0, #0x20]
	ldr r1, _080DE4F4 @ =__swrite
	str r1, [r0, #0x24]
	ldr r1, _080DE4F8 @ =__sseek
	str r1, [r0, #0x28]
	ldr r1, _080DE4FC @ =__sclose
	str r1, [r0, #0x2c]
	str r3, [r0, #0x54]
	pop {r4, pc}
	.align 2, 0
_080DE4F0: .4byte __sread
_080DE4F4: .4byte __swrite
_080DE4F8: .4byte __sseek
_080DE4FC: .4byte __sclose

	thumb_func_start __sfmoreglue
__sfmoreglue: @ 0x080DE500
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	movs r1, #0x58
	adds r6, r5, #0
	muls r6, r1, r6
	adds r1, r6, #0
	adds r1, #0xc
	bl _malloc_r
	adds r4, r0, #0
	cmp r4, #0
	beq _080DE52C
	adds r0, #0xc
	movs r1, #0
	str r1, [r4]
	str r5, [r4, #4]
	str r0, [r4, #8]
	adds r2, r6, #0
	bl memset
	adds r0, r4, #0
	b _080DE52E
_080DE52C:
	movs r0, #0
_080DE52E:
	pop {r4, r5, r6, pc}

	thumb_func_start __sfp
__sfp: @ 0x080DE530
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x38]
	cmp r0, #0
	bne _080DE540
	adds r0, r5, #0
	bl __sinit
_080DE540:
	movs r0, #0xec
	lsls r0, r0, #1
	adds r4, r5, r0
	b _080DE54A
_080DE548:
	ldr r4, [r4]
_080DE54A:
	ldr r2, [r4, #8]
	ldr r0, [r4, #4]
	b _080DE55A
_080DE550:
	movs r3, #0xc
	ldrsh r1, [r2, r3]
	cmp r1, #0
	beq _080DE57C
	adds r2, #0x58
_080DE55A:
	subs r0, #1
	cmp r0, #0
	bge _080DE550
	ldr r0, [r4]
	cmp r0, #0
	bne _080DE548
	adds r0, r5, #0
	movs r1, #4
	bl __sfmoreglue
	str r0, [r4]
	cmp r0, #0
	bne _080DE548
	movs r0, #0xc
	str r0, [r5]
	movs r0, #0
	b _080DE59C
_080DE57C:
	movs r0, #1
	strh r0, [r2, #0xc]
	str r1, [r2]
	str r1, [r2, #8]
	str r1, [r2, #4]
	str r1, [r2, #0x10]
	str r1, [r2, #0x14]
	str r1, [r2, #0x18]
	ldr r0, _080DE5A0 @ =0x0000FFFF
	strh r0, [r2, #0xe]
	str r1, [r2, #0x30]
	str r1, [r2, #0x34]
	str r1, [r2, #0x44]
	str r1, [r2, #0x48]
	str r5, [r2, #0x54]
	adds r0, r2, #0
_080DE59C:
	pop {r4, r5, pc}
	.align 2, 0
_080DE5A0: .4byte 0x0000FFFF

	thumb_func_start _cleanup_r
_cleanup_r: @ 0x080DE5A4
	push {lr}
	ldr r1, _080DE5B0 @ =fflush
	bl _fwalk
	pop {pc}
	.align 2, 0
_080DE5B0: .4byte fflush

	thumb_func_start _cleanup
_cleanup: @ 0x080DE5B4
	push {lr}
	ldr r0, _080DE5C0 @ =0x08650D38
	ldr r0, [r0]
	bl _cleanup_r
	pop {pc}
	.align 2, 0
_080DE5C0: .4byte 0x08650D38

	thumb_func_start __sinit
__sinit: @ 0x080DE5C4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _080DE620 @ =_cleanup_r
	str r0, [r5, #0x3c]
	movs r0, #1
	str r0, [r5, #0x38]
	movs r0, #0xf2
	lsls r0, r0, #1
	adds r4, r5, r0
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	adds r3, r5, #0
	bl std
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #9
	movs r2, #1
	adds r3, r5, #0
	bl std
	movs r1, #0xa5
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #0xa
	movs r2, #2
	adds r3, r5, #0
	bl std
	movs r0, #0xec
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
	movs r0, #0xee
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #3
	str r0, [r1]
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r5, r1
	str r4, [r0]
	pop {r4, r5, pc}
	.align 2, 0
_080DE620: .4byte _cleanup_r

    @freer

	thumb_func_start _free_r
_free_r: @ 0x080DE624
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r4, r1, #0
	cmp r4, #0
	bne _080DE636
	b _080DE7DA
_080DE636:
	bl __malloc_lock
	adds r5, r4, #0
	subs r5, #8
	ldr r1, [r5, #4]
	movs r6, #2
	rsbs r6, r6, #0
	ands r6, r1
	adds r7, r5, r6
	ldr r4, [r7, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r4, r0
	ldr r0, _080DE698 @ =0x08650D50
	mov ip, r0
	ldr r0, [r0, #8]
	cmp r7, r0
	bne _080DE6A4
	adds r6, r6, r4
	movs r4, #1
	ands r1, r4
	cmp r1, #0
	bne _080DE672
	ldr r0, [r5]
	subs r5, r5, r0
	adds r6, r6, r0
	ldr r3, [r5, #0xc]
	ldr r2, [r5, #8]
	str r3, [r2, #0xc]
	str r2, [r3, #8]
_080DE672:
	adds r0, r6, #0
	orrs r0, r4
	str r0, [r5, #4]
	mov r2, ip
	str r5, [r2, #8]
	ldr r0, _080DE69C @ =0x08651158
	ldr r0, [r0]
	cmp r6, r0
	blo _080DE68E
	ldr r0, _080DE6A0 @ =0x0865115C
	ldr r1, [r0]
	mov r0, sb
	bl _malloc_trim_r
_080DE68E:
	mov r0, sb
	bl __malloc_unlock
	b _080DE7DA
	.align 2, 0
_080DE698: .4byte 0x08650D50
_080DE69C: .4byte 0x08651158
_080DE6A0: .4byte 0x0865115C
_080DE6A4:
	str r4, [r7, #4]
	movs r0, #0
	mov r8, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _080DE6D0
	ldr r0, [r5]
	subs r5, r5, r0
	adds r6, r6, r0
	ldr r1, [r5, #8]
	mov r0, ip
	adds r0, #8
	cmp r1, r0
	bne _080DE6C8
	movs r2, #1
	mov r8, r2
	b _080DE6D0
_080DE6C8:
	ldr r3, [r5, #0xc]
	adds r2, r1, #0
	str r3, [r2, #0xc]
	str r2, [r3, #8]
_080DE6D0:
	adds r0, r7, r4
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080DE708
	adds r6, r6, r4
	ldr r1, [r7, #8]
	mov r0, r8
	cmp r0, #0
	bne _080DE700
	ldr r0, _080DE6FC @ =0x08650D58
	cmp r1, r0
	bne _080DE700
	movs r2, #1
	mov r8, r2
	str r5, [r1, #0xc]
	str r5, [r1, #8]
	str r1, [r5, #0xc]
	str r1, [r5, #8]
	b _080DE708
	.align 2, 0
_080DE6FC: .4byte 0x08650D58
_080DE700:
	ldr r3, [r7, #0xc]
	adds r2, r1, #0
	str r3, [r2, #0xc]
	str r2, [r3, #8]
_080DE708:
	movs r1, #1
	adds r0, r6, #0
	orrs r0, r1
	str r0, [r5, #4]
	adds r0, r5, r6
	str r6, [r0]
	mov r0, r8
	cmp r0, #0
	bne _080DE7D4
	ldr r0, _080DE738 @ =0x000001FF
	cmp r6, r0
	bhi _080DE740
	lsrs r4, r6, #3
	ldr r2, _080DE73C @ =0x08650D50
	adds r0, r4, #0
	asrs r0, r0, #2
	lsls r1, r0
	ldr r0, [r2, #4]
	orrs r0, r1
	str r0, [r2, #4]
	lsls r0, r4, #3
	adds r3, r0, r2
	ldr r2, [r3, #8]
	b _080DE7CC
	.align 2, 0
_080DE738: .4byte 0x000001FF
_080DE73C: .4byte 0x08650D50
_080DE740:
	lsrs r1, r6, #9
	cmp r1, #0
	bne _080DE74A
	lsrs r4, r6, #3
	b _080DE792
_080DE74A:
	cmp r1, #4
	bhi _080DE756
	lsrs r0, r6, #6
	adds r4, r0, #0
	adds r4, #0x38
	b _080DE792
_080DE756:
	cmp r1, #0x14
	bhi _080DE760
	adds r4, r1, #0
	adds r4, #0x5b
	b _080DE792
_080DE760:
	cmp r1, #0x54
	bhi _080DE76C
	lsrs r0, r6, #0xc
	adds r4, r0, #0
	adds r4, #0x6e
	b _080DE792
_080DE76C:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r1, r0
	bhi _080DE77C
	lsrs r0, r6, #0xf
	adds r4, r0, #0
	adds r4, #0x77
	b _080DE792
_080DE77C:
	ldr r0, _080DE78C @ =0x00000554
	cmp r1, r0
	bhi _080DE790
	lsrs r0, r6, #0x12
	adds r4, r0, #0
	adds r4, #0x7c
	b _080DE792
	.align 2, 0
_080DE78C: .4byte 0x00000554
_080DE790:
	movs r4, #0x7e
_080DE792:
	lsls r0, r4, #3
	ldr r7, _080DE7B0 @ =0x08650D50
	adds r3, r0, r7
	ldr r2, [r3, #8]
	cmp r2, r3
	bne _080DE7B4
	adds r0, r4, #0
	asrs r0, r0, #2
	movs r1, #1
	lsls r1, r0
	ldr r0, [r7, #4]
	orrs r0, r1
	str r0, [r7, #4]
	b _080DE7CC
	.align 2, 0
_080DE7B0: .4byte 0x08650D50
_080DE7B4:
	ldr r0, [r2, #4]
	movs r1, #4
	rsbs r1, r1, #0
	b _080DE7C4
_080DE7BC:
	ldr r2, [r2, #8]
	cmp r2, r3
	beq _080DE7CA
	ldr r0, [r2, #4]
_080DE7C4:
	ands r0, r1
	cmp r6, r0
	blo _080DE7BC
_080DE7CA:
	ldr r3, [r2, #0xc]
_080DE7CC:
	str r3, [r5, #0xc]
	str r2, [r5, #8]
	str r5, [r3, #8]
	str r5, [r2, #0xc]
_080DE7D4:
	mov r0, sb
	bl __malloc_unlock
_080DE7DA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start _malloc_trim_r
_malloc_trim_r: @ 0x080DE7E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r4, r1, #0
	bl __malloc_lock
	ldr r0, _080DE86C @ =0x08650D50
	mov r8, r0
	ldr r0, [r0, #8]
	ldr r6, [r0, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r6, r0
	subs r4, r6, r4
	movs r5, #0x80
	lsls r5, r5, #5
	ldr r1, _080DE870 @ =0x00000FEF
	adds r4, r4, r1
	adds r0, r4, #0
	adds r1, r5, #0
	bl __udivsi3
	subs r0, #1
	lsls r4, r0, #0xc
	cmp r4, r5
	blt _080DE862
	adds r0, r7, #0
	movs r1, #0
	bl _sbrk_r
	adds r2, r0, #0
	mov r1, r8
	ldr r0, [r1, #8]
	adds r0, r0, r6
	cmp r2, r0
	bne _080DE862
	rsbs r1, r4, #0
	adds r0, r7, #0
	bl _sbrk_r
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080DE87C
	adds r0, r7, #0
	movs r1, #0
	bl _sbrk_r
	adds r2, r0, #0
	mov r0, r8
	ldr r3, [r0, #8]
	subs r6, r2, r3
	cmp r6, #0xf
	ble _080DE862
	ldr r1, _080DE874 @ =0x0865116C
	ldr r0, _080DE878 @ =0x08651160
	ldr r0, [r0]
	subs r0, r2, r0
	str r0, [r1]
	movs r0, #1
	orrs r6, r0
	str r6, [r3, #4]
_080DE862:
	adds r0, r7, #0
	bl __malloc_unlock
	movs r0, #0
	b _080DE898
	.align 2, 0
_080DE86C: .4byte 0x08650D50
_080DE870: .4byte 0x00000FEF
_080DE874: .4byte 0x0865116C
_080DE878: .4byte 0x08651160
_080DE87C:
	mov r1, r8
	ldr r2, [r1, #8]
	subs r0, r6, r4
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	ldr r1, _080DE8A0 @ =0x0865116C
	ldr r0, [r1]
	subs r0, r0, r4
	str r0, [r1]
	adds r0, r7, #0
	bl __malloc_unlock
	movs r0, #1
_080DE898:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080DE8A0: .4byte 0x0865116C

    @fvwrite

	thumb_func_start __sfvwrite
__sfvwrite: @ 0x080DE8A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	mov sl, r1
	ldr r6, [r1, #8]
	cmp r6, #0
	bne _080DE8BC
	b _080DEAB2
_080DE8BC:
	movs r0, #8
	ldrh r1, [r5, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _080DE8CC
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080DE8D8
_080DE8CC:
	adds r0, r5, #0
	bl __swsetup
	cmp r0, #0
	beq _080DE8D8
	b _080DEABE
_080DE8D8:
	mov r2, sl
	ldr r2, [r2]
	mov r8, r2
	movs r6, #0
	ldrh r1, [r5, #0xc]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080DE92C
_080DE8EA:
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x24]
	cmp r6, #0
	bne _080DE900
_080DE8F2:
	mov r1, r8
	ldr r7, [r1]
	ldr r6, [r1, #4]
	movs r2, #8
	add r8, r2
	cmp r6, #0
	beq _080DE8F2
_080DE900:
	adds r2, r6, #0
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r6, r1
	bls _080DE90C
	adds r2, r1, #0
_080DE90C:
	adds r1, r7, #0
	bl _call_via_r3
	adds r4, r0, #0
	cmp r4, #0
	bgt _080DE91A
	b _080DEAB6
_080DE91A:
	adds r7, r7, r4
	subs r6, r6, r4
	mov r1, sl
	ldr r0, [r1, #8]
	subs r0, r0, r4
	str r0, [r1, #8]
	cmp r0, #0
	bne _080DE8EA
	b _080DEAB2
_080DE92C:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080DE9E6
_080DE934:
	ldrh r1, [r5, #0xc]
	ldr r0, [r5, #8]
	ldr r3, [r5]
	cmp r6, #0
	bne _080DE94C
_080DE93E:
	mov r2, r8
	ldr r7, [r2]
	ldr r6, [r2, #4]
	movs r2, #8
	add r8, r2
	cmp r6, #0
	beq _080DE93E
_080DE94C:
	adds r4, r0, #0
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080DE97A
	cmp r6, r4
	bhs _080DE960
	adds r4, r6, #0
_080DE960:
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memmove
	ldr r0, [r5, #8]
	subs r0, r0, r4
	str r0, [r5, #8]
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
	adds r4, r6, #0
	b _080DE9D4
_080DE97A:
	ldr r0, [r5, #0x10]
	cmp r3, r0
	bls _080DE9A2
	cmp r6, r4
	bls _080DE9A2
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memmove
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
	adds r0, r5, #0
	bl fflush
	cmp r0, #0
	beq _080DE9A0
	b _080DEAB6
_080DE9A0:
	b _080DE9D4
_080DE9A2:
	ldr r4, [r5, #0x14]
	cmp r6, r4
	blo _080DE9BC
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x24]
	adds r1, r7, #0
	adds r2, r4, #0
	bl _call_via_r3
	adds r4, r0, #0
	cmp r4, #0
	ble _080DEAB6
	b _080DE9D4
_080DE9BC:
	adds r4, r6, #0
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memmove
	ldr r0, [r5, #8]
	subs r0, r0, r4
	str r0, [r5, #8]
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
_080DE9D4:
	adds r7, r7, r4
	subs r6, r6, r4
	mov r1, sl
	ldr r0, [r1, #8]
	subs r0, r0, r4
	str r0, [r1, #8]
	cmp r0, #0
	bne _080DE934
	b _080DEAB2
_080DE9E6:
	movs r2, #0
	str r2, [sp]
_080DE9EA:
	cmp r6, #0
	bne _080DEA00
	movs r0, #0
	str r0, [sp]
_080DE9F2:
	mov r1, r8
	ldr r7, [r1]
	ldr r6, [r1, #4]
	movs r2, #8
	add r8, r2
	cmp r6, #0
	beq _080DE9F2
_080DEA00:
	ldr r0, [sp]
	cmp r0, #0
	bne _080DEA24
	adds r0, r7, #0
	movs r1, #0xa
	adds r2, r6, #0
	bl memchr
	adds r1, r0, #0
	cmp r1, #0
	beq _080DEA1C
	subs r0, r7, #1
	subs r1, r1, r0
	b _080DEA1E
_080DEA1C:
	adds r1, r6, #1
_080DEA1E:
	mov sb, r1
	movs r2, #1
	str r2, [sp]
_080DEA24:
	mov r2, sb
	cmp sb, r6
	bls _080DEA2C
	adds r2, r6, #0
_080DEA2C:
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x14]
	adds r4, r0, r1
	ldr r0, [r5, #0x10]
	ldr r3, [r5]
	cmp r3, r0
	bls _080DEA5A
	cmp r2, r4
	ble _080DEA5A
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memmove
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
	adds r0, r5, #0
	bl fflush
	cmp r0, #0
	bne _080DEAB6
	b _080DEA8A
_080DEA5A:
	adds r4, r1, #0
	cmp r2, r4
	blt _080DEA74
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x24]
	adds r1, r7, #0
	adds r2, r4, #0
	bl _call_via_r3
	adds r4, r0, #0
	cmp r4, #0
	ble _080DEAB6
	b _080DEA8A
_080DEA74:
	adds r4, r2, #0
	adds r0, r3, #0
	adds r1, r7, #0
	bl memmove
	ldr r0, [r5, #8]
	subs r0, r0, r4
	str r0, [r5, #8]
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
_080DEA8A:
	mov r0, sb
	subs r0, r0, r4
	mov sb, r0
	cmp r0, #0
	bne _080DEAA2
	adds r0, r5, #0
	bl fflush
	cmp r0, #0
	bne _080DEAB6
	movs r1, #0
	str r1, [sp]
_080DEAA2:
	adds r7, r7, r4
	subs r6, r6, r4
	mov r2, sl
	ldr r0, [r2, #8]
	subs r0, r0, r4
	str r0, [r2, #8]
	cmp r0, #0
	bne _080DE9EA
_080DEAB2:
	movs r0, #0
	b _080DEAC2
_080DEAB6:
	movs r0, #0x40
	ldrh r1, [r5, #0xc]
	orrs r0, r1
	strh r0, [r5, #0xc]
_080DEABE:
	movs r0, #1
	rsbs r0, r0, #0
_080DEAC2:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

    @fwalk

	thumb_func_start _fwalk
_fwalk: @ 0x080DEAD0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r1
	movs r7, #0
	movs r1, #0xec
	lsls r1, r1, #1
	adds r6, r0, r1
	cmp r6, #0
	beq _080DEB08
_080DEAE4:
	ldr r5, [r6, #8]
	ldr r4, [r6, #4]
	b _080DEAFC
_080DEAEA:
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080DEAFA
	adds r0, r5, #0
	bl _call_via_r8
	orrs r7, r0
_080DEAFA:
	adds r5, #0x58
_080DEAFC:
	subs r4, #1
	cmp r4, #0
	bge _080DEAEA
	ldr r6, [r6]
	cmp r6, #0
	bne _080DEAE4
_080DEB08:
	adds r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

    @locale

	thumb_func_start _setlocale_r
_setlocale_r: @ 0x080DEB10
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	cmp r4, #0
	beq _080DEB44
	ldr r1, _080DEB38 @ =0x084F09C4
	adds r0, r4, #0
	bl strcmp
	cmp r0, #0
	beq _080DEB40
	ldr r1, _080DEB3C @ =0x084F09BC
	adds r0, r4, #0
	bl strcmp
	cmp r0, #0
	beq _080DEB40
	movs r0, #0
	b _080DEB46
	.align 2, 0
_080DEB38: .4byte 0x084F09C4
_080DEB3C: .4byte 0x084F09BC
_080DEB40:
	str r6, [r5, #0x30]
	str r4, [r5, #0x34]
_080DEB44:
	ldr r0, _080DEB48 @ =0x084F09C4
_080DEB46:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080DEB48: .4byte 0x084F09C4

	thumb_func_start _localeconv_r
_localeconv_r: @ 0x080DEB4C
	ldr r0, _080DEB50 @ =0x084F098C
	bx lr
	.align 2, 0
_080DEB50: .4byte 0x084F098C

	thumb_func_start setlocale
setlocale: @ 0x080DEB54
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldr r0, _080DEB68 @ =0x08650D38
	ldr r0, [r0]
	adds r1, r3, #0
	bl _setlocale_r
	pop {pc}
	.align 2, 0
_080DEB68: .4byte 0x08650D38

	thumb_func_start localeconv
localeconv: @ 0x080DEB6C
	push {lr}
	ldr r0, _080DEB78 @ =0x08650D38
	ldr r0, [r0]
	bl _localeconv_r
	pop {pc}
	.align 2, 0
_080DEB78: .4byte 0x08650D38

    @makebuf

	thumb_func_start __smakebuf
__smakebuf: @ 0x080DEB7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r4, r0, #0
	movs r0, #2
	ldrh r1, [r4, #0xc]
	ands r0, r1
	cmp r0, #0
	bne _080DEC12
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0
	blt _080DEBA4
	ldr r0, [r4, #0x54]
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	mov r2, sp
	bl _fstat_r
	cmp r0, #0
	bge _080DEBB6
_080DEBA4:
	movs r7, #0
	movs r6, #0x80
	lsls r6, r6, #3
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r1, #0
	ldrh r2, [r4, #0xc]
	orrs r0, r2
	b _080DEBFA
_080DEBB6:
	movs r7, #0
	ldr r1, [sp, #4]
	movs r0, #0xf0
	lsls r0, r0, #8
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r1, r0
	bne _080DEBCA
	movs r7, #1
_080DEBCA:
	movs r6, #0x80
	lsls r6, r6, #3
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	bne _080DEBF0
	ldr r1, [r4, #0x28]
	ldr r0, _080DEBEC @ =__sseek
	cmp r1, r0
	bne _080DEBF0
	adds r0, r6, #0
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
	str r6, [r4, #0x4c]
	b _080DEBFC
	.align 2, 0
_080DEBEC: .4byte __sseek
_080DEBF0:
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	ldrh r1, [r4, #0xc]
	orrs r0, r1
_080DEBFA:
	strh r0, [r4, #0xc]
_080DEBFC:
	ldr r0, [r4, #0x54]
	adds r1, r6, #0
	bl _malloc_r
	adds r2, r0, #0
	cmp r2, #0
	bne _080DEC20
	movs r0, #2
	ldrh r2, [r4, #0xc]
	orrs r0, r2
	strh r0, [r4, #0xc]
_080DEC12:
	adds r0, r4, #0
	adds r0, #0x43
	str r0, [r4]
	str r0, [r4, #0x10]
	movs r0, #1
	str r0, [r4, #0x14]
	b _080DEC4E
_080DEC20:
	ldr r1, [r4, #0x54]
	ldr r0, _080DEC54 @ =_cleanup_r
	str r0, [r1, #0x3c]
	movs r0, #0x80
	movs r5, #0
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
	str r2, [r4]
	str r2, [r4, #0x10]
	str r6, [r4, #0x14]
	cmp r7, #0
	beq _080DEC4E
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	bl isatty
	cmp r0, #0
	beq _080DEC4E
	movs r0, #1
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
_080DEC4E:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080DEC54: .4byte _cleanup_r

    @mallocr

	thumb_func_start malloc_extend_top
malloc_extend_top: @ 0x080DEC58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	ldr r0, _080DECCC @ =0x08650D50
	ldr r0, [r0, #8]
	mov r8, r0
	ldr r7, [r0, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r7, r0
	mov r2, r8
	adds r4, r2, r7
	ldr r0, _080DECD0 @ =0x0865115C
	ldr r0, [r0]
	adds r1, r1, r0
	adds r6, r1, #0
	adds r6, #0x10
	ldr r3, _080DECD4 @ =0x08651160
	mov sl, r3
	ldr r0, [r3]
	movs r2, #1
	rsbs r2, r2, #0
	mov sb, r2
	cmp r0, sb
	beq _080DEC9A
	ldr r3, _080DECD8 @ =0x0000100F
	adds r6, r1, r3
	ldr r0, _080DECDC @ =0xFFFFF000
	ands r6, r0
_080DEC9A:
	ldr r0, [sp]
	adds r1, r6, #0
	bl _sbrk_r
	adds r5, r0, #0
	cmp r5, sb
	beq _080DED9C
	cmp r5, r4
	bhs _080DECB2
	ldr r0, _080DECCC @ =0x08650D50
	cmp r8, r0
	bne _080DED9C
_080DECB2:
	ldr r1, _080DECE0 @ =0x0865116C
	ldr r0, [r1]
	adds r2, r0, r6
	str r2, [r1]
	cmp r5, r4
	bne _080DECE4
	adds r2, r6, r7
	ldr r3, _080DECCC @ =0x08650D50
	ldr r1, [r3, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r1, #4]
	b _080DED84
	.align 2, 0
_080DECCC: .4byte 0x08650D50
_080DECD0: .4byte 0x0865115C
_080DECD4: .4byte 0x08651160
_080DECD8: .4byte 0x0000100F
_080DECDC: .4byte 0xFFFFF000
_080DECE0: .4byte 0x0865116C
_080DECE4:
	mov r3, sl
	ldr r0, [r3]
	cmp r0, sb
	bne _080DECF0
	str r5, [r3]
	b _080DECF6
_080DECF0:
	subs r0, r5, r4
	adds r0, r2, r0
	str r0, [r1]
_080DECF6:
	adds r1, r5, #0
	adds r1, #8
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	beq _080DED0A
	movs r0, #8
	subs r4, r0, r1
	adds r5, r5, r4
	b _080DED0C
_080DED0A:
	movs r4, #0
_080DED0C:
	adds r0, r5, r6
	movs r1, #0x80
	lsls r1, r1, #5
	subs r1, #1
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	subs r0, r1, r0
	adds r4, r4, r0
	ldr r0, [sp]
	adds r1, r4, #0
	bl _sbrk_r
	adds r2, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _080DED9C
	ldr r1, _080DED54 @ =0x0865116C
	ldr r0, [r1]
	adds r0, r0, r4
	str r0, [r1]
	ldr r1, _080DED58 @ =0x08650D50
	str r5, [r1, #8]
	subs r0, r2, r5
	adds r2, r0, r4
	movs r3, #1
	orrs r2, r3
	str r2, [r5, #4]
	cmp r8, r1
	beq _080DED84
	cmp r7, #0xf
	bhi _080DED5C
	str r3, [r5, #4]
	b _080DED9C
	.align 2, 0
_080DED54: .4byte 0x0865116C
_080DED58: .4byte 0x08650D50
_080DED5C:
	subs r7, #0xc
	movs r0, #8
	rsbs r0, r0, #0
	ands r7, r0
	mov r2, r8
	ldr r0, [r2, #4]
	ands r0, r3
	orrs r0, r7
	str r0, [r2, #4]
	adds r1, r2, r7
	movs r0, #5
	str r0, [r1, #4]
	str r0, [r1, #8]
	cmp r7, #0xf
	bls _080DED84
	mov r1, r8
	adds r1, #8
	ldr r0, [sp]
	bl _free_r
_080DED84:
	ldr r0, _080DEDA8 @ =0x0865116C
	ldr r2, _080DEDAC @ =0x08651164
	ldr r1, [r0]
	ldr r0, [r2]
	cmp r1, r0
	bls _080DED92
	str r1, [r2]
_080DED92:
	ldr r2, _080DEDB0 @ =0x08651168
	ldr r0, [r2]
	cmp r1, r0
	bls _080DED9C
	str r1, [r2]
_080DED9C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080DEDA8: .4byte 0x0865116C
_080DEDAC: .4byte 0x08651164
_080DEDB0: .4byte 0x08651168

	thumb_func_start _malloc_r
_malloc_r: @ 0x080DEDB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	adds r1, #0xb
	cmp r1, #0x16
	ble _080DEDD6
	movs r0, #8
	rsbs r0, r0, #0
	mov r8, r0
	mov r2, r8
	ands r2, r1
	mov r8, r2
	b _080DEDDA
_080DEDD6:
	movs r3, #0x10
	mov r8, r3
_080DEDDA:
	ldr r0, [sp]
	bl __malloc_lock
	ldr r0, _080DEE20 @ =0x000001F7
	cmp r8, r0
	bhi _080DEE2E
	mov r4, r8
	lsrs r4, r4, #3
	mov ip, r4
	ldr r0, _080DEE24 @ =0x08650D50
	mov r7, r8
	adds r2, r7, r0
	ldr r5, [r2, #0xc]
	cmp r5, r2
	bne _080DEE02
	adds r2, r5, #0
	adds r2, #8
	ldr r5, [r2, #0xc]
	cmp r5, r2
	beq _080DEE28
_080DEE02:
	ldr r2, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r2, r0
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	adds r2, r5, r2
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	b _080DF15A
	.align 2, 0
_080DEE20: .4byte 0x000001F7
_080DEE24: .4byte 0x08650D50
_080DEE28:
	movs r0, #2
	add ip, r0
	b _080DEEDA
_080DEE2E:
	mov r2, r8
	lsrs r1, r2, #9
	cmp r1, #0
	bne _080DEE3A
	lsrs r2, r2, #3
	b _080DEE8A
_080DEE3A:
	cmp r1, #4
	bhi _080DEE48
	mov r3, r8
	lsrs r0, r3, #6
	adds r0, #0x38
	mov ip, r0
	b _080DEE8C
_080DEE48:
	cmp r1, #0x14
	bhi _080DEE52
	adds r1, #0x5b
	mov ip, r1
	b _080DEE8C
_080DEE52:
	cmp r1, #0x54
	bhi _080DEE60
	mov r4, r8
	lsrs r0, r4, #0xc
	adds r0, #0x6e
	mov ip, r0
	b _080DEE8C
_080DEE60:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r1, r0
	bhi _080DEE72
	mov r7, r8
	lsrs r0, r7, #0xf
	adds r0, #0x77
	mov ip, r0
	b _080DEE8C
_080DEE72:
	ldr r0, _080DEE84 @ =0x00000554
	cmp r1, r0
	bhi _080DEE88
	mov r1, r8
	lsrs r0, r1, #0x12
	adds r0, #0x7c
	mov ip, r0
	b _080DEE8C
	.align 2, 0
_080DEE84: .4byte 0x00000554
_080DEE88:
	movs r2, #0x7e
_080DEE8A:
	mov ip, r2
_080DEE8C:
	mov r3, ip
	lsls r0, r3, #3
	ldr r1, _080DEEB0 @ =0x08650D50
	adds r4, r0, r1
	ldr r5, [r4, #0xc]
	cmp r5, r4
	beq _080DEED6
	ldr r1, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0xf
	ble _080DEEB4
	adds r0, #3
	add ip, r0
	b _080DEED6
	.align 2, 0
_080DEEB0: .4byte 0x08650D50
_080DEEB4:
	cmp r3, #0
	blt _080DEEBA
	b _080DF0F4
_080DEEBA:
	ldr r5, [r5, #0xc]
	cmp r5, r4
	beq _080DEED6
	ldr r1, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	mov r2, r8
	subs r3, r1, r2
	cmp r3, #0xf
	ble _080DEEB4
	movs r3, #1
	rsbs r3, r3, #0
	add ip, r3
_080DEED6:
	movs r4, #1
	add ip, r4
_080DEEDA:
	ldr r0, _080DEF18 @ =0x08650D58
	ldr r5, [r0, #8]
	mov sl, r0
	cmp r5, sl
	bne _080DEEE6
	b _080DEFE8
_080DEEE6:
	ldr r1, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0xf
	ble _080DEF1C
	adds r2, r5, r7
	movs r1, #1
	adds r0, r7, #0
	orrs r0, r1
	str r0, [r5, #4]
	mov r4, sl
	str r2, [r4, #0xc]
	str r2, [r4, #8]
	str r4, [r2, #0xc]
	str r4, [r2, #8]
	adds r0, r3, #0
	orrs r0, r1
	str r0, [r2, #4]
	adds r0, r2, r3
	str r3, [r0]
	b _080DF15A
	.align 2, 0
_080DEF18: .4byte 0x08650D58
_080DEF1C:
	mov r7, sl
	str r7, [r7, #0xc]
	str r7, [r7, #8]
	cmp r3, #0
	blt _080DEF32
	adds r2, r5, r1
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	b _080DF15A
_080DEF32:
	ldr r0, _080DEF54 @ =0x000001FF
	cmp r1, r0
	bhi _080DEF58
	lsrs r2, r1, #3
	mov r3, sl
	subs r3, #8
	adds r0, r2, #0
	asrs r0, r0, #2
	movs r1, #1
	lsls r1, r0
	ldr r0, [r3, #4]
	orrs r0, r1
	str r0, [r3, #4]
	lsls r0, r2, #3
	adds r6, r0, r3
	ldr r4, [r6, #8]
	b _080DEFE0
	.align 2, 0
_080DEF54: .4byte 0x000001FF
_080DEF58:
	lsrs r2, r1, #9
	cmp r2, #0
	bne _080DEF62
	lsrs r2, r1, #3
	b _080DEFA6
_080DEF62:
	cmp r2, #4
	bhi _080DEF6E
	lsrs r0, r1, #6
	adds r2, r0, #0
	adds r2, #0x38
	b _080DEFA6
_080DEF6E:
	cmp r2, #0x14
	bhi _080DEF76
	adds r2, #0x5b
	b _080DEFA6
_080DEF76:
	cmp r2, #0x54
	bhi _080DEF82
	lsrs r0, r1, #0xc
	adds r2, r0, #0
	adds r2, #0x6e
	b _080DEFA6
_080DEF82:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r2, r0
	bhi _080DEF92
	lsrs r0, r1, #0xf
	adds r2, r0, #0
	adds r2, #0x77
	b _080DEFA6
_080DEF92:
	ldr r0, _080DEFA0 @ =0x00000554
	cmp r2, r0
	bhi _080DEFA4
	lsrs r0, r1, #0x12
	adds r2, r0, #0
	adds r2, #0x7c
	b _080DEFA6
	.align 2, 0
_080DEFA0: .4byte 0x00000554
_080DEFA4:
	movs r2, #0x7e
_080DEFA6:
	lsls r0, r2, #3
	ldr r3, _080DEFC4 @ =0x08650D50
	adds r6, r0, r3
	ldr r4, [r6, #8]
	cmp r4, r6
	bne _080DEFC8
	adds r0, r2, #0
	asrs r0, r0, #2
	movs r1, #1
	lsls r1, r0
	ldr r7, _080DEFC4 @ =0x08650D50
	ldr r0, [r7, #4]
	orrs r0, r1
	str r0, [r7, #4]
	b _080DEFE0
	.align 2, 0
_080DEFC4: .4byte 0x08650D50
_080DEFC8:
	ldr r0, [r4, #4]
	movs r2, #4
	rsbs r2, r2, #0
	b _080DEFD8
_080DEFD0:
	ldr r4, [r4, #8]
	cmp r4, r6
	beq _080DEFDE
	ldr r0, [r4, #4]
_080DEFD8:
	ands r0, r2
	cmp r1, r0
	blo _080DEFD0
_080DEFDE:
	ldr r6, [r4, #0xc]
_080DEFE0:
	str r6, [r5, #0xc]
	str r4, [r5, #8]
	str r5, [r6, #8]
	str r5, [r4, #0xc]
_080DEFE8:
	mov r0, ip
	cmp r0, #0
	bge _080DEFF0
	adds r0, #3
_080DEFF0:
	asrs r0, r0, #2
	movs r6, #1
	lsls r6, r0
	ldr r0, _080DF014 @ =0x08650D50
	ldr r1, [r0, #4]
	cmp r6, r1
	bhi _080DF0B2
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080DF026
	movs r0, #4
	rsbs r0, r0, #0
	mov r2, ip
	ands r0, r2
	adds r0, #4
	mov ip, r0
	b _080DF01C
	.align 2, 0
_080DF014: .4byte 0x08650D50
_080DF018:
	movs r3, #4
	add ip, r3
_080DF01C:
	lsls r6, r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080DF018
_080DF026:
	ldr r4, _080DF0A4 @ =0x08650D50
	mov sb, r4
_080DF02A:
	mov r7, ip
	str r7, [sp, #4]
	mov r1, ip
	lsls r0, r1, #3
	mov r3, sb
	adds r2, r0, r3
	adds r4, r2, #0
_080DF038:
	ldr r5, [r4, #0xc]
	cmp r5, r4
	beq _080DF058
	movs r0, #4
	rsbs r0, r0, #0
_080DF042:
	ldr r1, [r5, #4]
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0xf
	bgt _080DF108
	cmp r3, #0
	bge _080DF130
	ldr r5, [r5, #0xc]
	cmp r5, r4
	bne _080DF042
_080DF058:
	adds r4, #8
	movs r0, #1
	add ip, r0
	mov r0, ip
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080DF038
_080DF068:
	ldr r0, [sp, #4]
	ands r0, r1
	cmp r0, #0
	beq _080DF0A8
	ldr r3, [sp, #4]
	subs r3, #1
	str r3, [sp, #4]
	subs r2, #8
	ldr r0, [r2, #8]
	cmp r0, r2
	beq _080DF068
_080DF07E:
	lsls r6, r6, #1
	mov r4, sb
	ldr r1, [r4, #4]
	cmp r6, r1
	bhi _080DF0B2
	cmp r6, #0
	beq _080DF0B2
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080DF02A
_080DF094:
	movs r7, #4
	add ip, r7
	lsls r6, r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080DF094
	b _080DF02A
	.align 2, 0
_080DF0A4: .4byte 0x08650D50
_080DF0A8:
	mov r1, sb
	ldr r0, [r1, #4]
	bics r0, r6
	str r0, [r1, #4]
	b _080DF07E
_080DF0B2:
	ldr r2, _080DF0F0 @ =0x08650D50
	ldr r0, [r2, #8]
	ldr r0, [r0, #4]
	movs r4, #4
	rsbs r4, r4, #0
	ands r0, r4
	mov r7, r8
	subs r3, r0, r7
	cmp r0, r8
	blo _080DF0CA
	cmp r3, #0xf
	bgt _080DF144
_080DF0CA:
	ldr r0, [sp]
	mov r1, r8
	bl malloc_extend_top
	ldr r1, _080DF0F0 @ =0x08650D50
	ldr r0, [r1, #8]
	ldr r0, [r0, #4]
	ands r0, r4
	mov r2, r8
	subs r3, r0, r2
	cmp r0, r8
	blo _080DF0E6
	cmp r3, #0xf
	bgt _080DF144
_080DF0E6:
	ldr r0, [sp]
	bl __malloc_unlock
	movs r0, #0
	b _080DF164
	.align 2, 0
_080DF0F0: .4byte 0x08650D50
_080DF0F4:
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	adds r2, r5, r1
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	b _080DF15A
_080DF108:
	mov r4, r8
	adds r2, r5, r4
	movs r1, #1
	orrs r4, r1
	str r4, [r5, #4]
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	mov r7, sl
	str r2, [r7, #0xc]
	str r2, [r7, #8]
	str r7, [r2, #0xc]
	str r7, [r2, #8]
	adds r0, r3, #0
	orrs r0, r1
	str r0, [r2, #4]
	adds r0, r2, r3
	str r3, [r0]
	b _080DF15A
_080DF130:
	adds r2, r5, r1
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	b _080DF15A
_080DF144:
	ldr r2, _080DF170 @ =0x08650D50
	ldr r5, [r2, #8]
	movs r1, #1
	mov r0, r8
	orrs r0, r1
	str r0, [r5, #4]
	mov r4, r8
	adds r0, r5, r4
	str r0, [r2, #8]
	orrs r3, r1
	str r3, [r0, #4]
_080DF15A:
	ldr r0, [sp]
	bl __malloc_unlock
	adds r0, r5, #0
	adds r0, #8
_080DF164:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080DF170: .4byte 0x08650D50

    @mbtowc_r

	thumb_func_start _mbtowc_r
_mbtowc_r: @ 0x080DF174
	sub sp, #4
	cmp r1, #0
	bne _080DF17C
	mov r1, sp
_080DF17C:
	cmp r2, #0
	beq _080DF198
	cmp r3, #0
	bne _080DF18A
	movs r0, #1
	rsbs r0, r0, #0
	b _080DF19A
_080DF18A:
	ldrb r0, [r2]
	str r0, [r1]
	ldrb r0, [r2]
	cmp r0, #0
	beq _080DF198
	movs r0, #1
	b _080DF19A
_080DF198:
	movs r0, #0
_080DF19A:
	add sp, #4
	bx lr
	.align 2, 0

    @memchr

	thumb_func_start memchr
memchr: @ 0x080DF1A0
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r1, r0, #0
	movs r0, #0xff
	ands r5, r0
	cmp r2, #3
	bls _080DF214
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080DF214
	adds r4, r1, #0
	movs r6, #0
	movs r1, #0
_080DF1BC:
	lsls r0, r6, #8
	adds r6, r0, r5
	adds r1, #1
	cmp r1, #3
	bls _080DF1BC
	cmp r2, #3
	bls _080DF1FA
	ldr r0, _080DF200 @ =0xFEFEFEFF
	mov ip, r0
	ldr r7, _080DF204 @ =0x80808080
_080DF1D0:
	ldr r1, [r4]
	eors r1, r6
	mov r3, ip
	adds r0, r1, r3
	bics r0, r1
	ands r0, r7
	cmp r0, #0
	beq _080DF1F2
	adds r1, r4, #0
	movs r3, #0
_080DF1E4:
	ldrb r0, [r1]
	cmp r0, r5
	beq _080DF20E
	adds r1, #1
	adds r3, #1
	cmp r3, #3
	bls _080DF1E4
_080DF1F2:
	subs r2, #4
	adds r4, #4
	cmp r2, #3
	bhi _080DF1D0
_080DF1FA:
	adds r1, r4, #0
	b _080DF214
	.align 2, 0
_080DF200: .4byte 0xFEFEFEFF
_080DF204: .4byte 0x80808080
_080DF208:
	ldrb r0, [r1]
	cmp r0, r5
	bne _080DF212
_080DF20E:
	adds r0, r1, #0
	b _080DF21E
_080DF212:
	adds r1, #1
_080DF214:
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bne _080DF208
	movs r0, #0
_080DF21E:
	pop {r4, r5, r6, r7, pc}

    @memmove

	thumb_func_start memmove
memmove: @ 0x080DF220
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r3, r1, #0
	cmp r3, r5
	bhs _080DF252
	adds r0, r3, r2
	cmp r5, r0
	bhs _080DF252
	adds r3, r0, #0
	adds r4, r5, r2
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _080DF2A4
	adds r1, r0, #0
_080DF242:
	subs r4, #1
	subs r3, #1
	ldrb r0, [r3]
	strb r0, [r4]
	subs r2, #1
	cmp r2, r1
	bne _080DF242
	b _080DF2A4
_080DF252:
	cmp r2, #0xf
	bls _080DF28A
	adds r0, r3, #0
	orrs r0, r4
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080DF28A
	adds r1, r3, #0
_080DF264:
	ldm r1!, {r0}
	stm r4!, {r0}
	ldm r1!, {r0}
	stm r4!, {r0}
	ldm r1!, {r0}
	stm r4!, {r0}
	ldm r1!, {r0}
	stm r4!, {r0}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _080DF264
	cmp r2, #3
	bls _080DF288
_080DF27E:
	ldm r1!, {r0}
	stm r4!, {r0}
	subs r2, #4
	cmp r2, #3
	bhi _080DF27E
_080DF288:
	adds r3, r1, #0
_080DF28A:
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _080DF2A4
	adds r1, r0, #0
_080DF296:
	ldrb r0, [r3]
	strb r0, [r4]
	adds r3, #1
	adds r4, #1
	subs r2, #1
	cmp r2, r1
	bne _080DF296
_080DF2A4:
	adds r0, r5, #0
	pop {r4, r5, pc}

    @mlock

	thumb_func_start __malloc_lock
__malloc_lock: @ 0x080DF2A8
	bx lr
	.align 2, 0

	thumb_func_start __malloc_unlock
__malloc_unlock: @ 0x080DF2AC
	bx lr
	.align 2, 0

    @mprec

	thumb_func_start _Balloc
_Balloc: @ 0x080DF2B0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bne _080DF2CC
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0x10
	bl _calloc_r
	str r0, [r4, #0x4c]
	cmp r0, #0
	beq _080DF2F4
_080DF2CC:
	ldr r1, [r4, #0x4c]
	lsls r0, r6, #2
	adds r2, r0, r1
	ldr r1, [r2]
	cmp r1, #0
	beq _080DF2DE
	ldr r0, [r1]
	str r0, [r2]
	b _080DF2FC
_080DF2DE:
	movs r5, #1
	lsls r5, r6
	lsls r2, r5, #2
	adds r2, #0x14
	adds r0, r4, #0
	movs r1, #1
	bl _calloc_r
	adds r1, r0, #0
	cmp r1, #0
	bne _080DF2F8
_080DF2F4:
	movs r0, #0
	b _080DF304
_080DF2F8:
	str r6, [r1, #4]
	str r5, [r1, #8]
_080DF2FC:
	movs r0, #0
	str r0, [r1, #0x10]
	str r0, [r1, #0xc]
	adds r0, r1, #0
_080DF304:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start _Bfree
_Bfree: @ 0x080DF308
	adds r3, r0, #0
	adds r2, r1, #0
	cmp r2, #0
	beq _080DF31E
	ldr r0, [r2, #4]
	ldr r1, [r3, #0x4c]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	str r1, [r2]
	str r2, [r0]
_080DF31E:
	bx lr

	thumb_func_start _multadd
_multadd: @ 0x080DF320
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r5, r1, #0
	adds r4, r2, #0
	mov r8, r3
	ldr r6, [r5, #0x10]
	adds r3, r5, #0
	adds r3, #0x14
	movs r7, #0
	ldr r0, _080DF3B4 @ =0x0000FFFF
	mov ip, r0
_080DF33C:
	ldr r1, [r3]
	adds r0, r1, #0
	mov r2, ip
	ands r0, r2
	adds r2, r0, #0
	muls r2, r4, r2
	add r2, r8
	lsrs r1, r1, #0x10
	adds r0, r1, #0
	muls r0, r4, r0
	lsrs r1, r2, #0x10
	adds r0, r0, r1
	lsrs r1, r0, #0x10
	mov r8, r1
	lsls r0, r0, #0x10
	mov r1, ip
	ands r2, r1
	adds r0, r0, r2
	stm r3!, {r0}
	adds r7, #1
	cmp r7, r6
	blt _080DF33C
	mov r2, r8
	cmp r2, #0
	beq _080DF3AA
	ldr r0, [r5, #8]
	cmp r6, r0
	blt _080DF39A
	ldr r1, [r5, #4]
	adds r1, #1
	mov r0, sb
	bl _Balloc
	adds r4, r0, #0
	adds r0, #0xc
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, [r5, #0x10]
	lsls r2, r2, #2
	adds r2, #8
	bl memcpy
	mov r0, sb
	adds r1, r5, #0
	bl _Bfree
	adds r5, r4, #0
_080DF39A:
	lsls r1, r6, #2
	adds r0, r5, #0
	adds r0, #0x14
	adds r0, r0, r1
	mov r1, r8
	str r1, [r0]
	adds r6, #1
	str r6, [r5, #0x10]
_080DF3AA:
	adds r0, r5, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080DF3B4: .4byte 0x0000FFFF

	thumb_func_start _s2b
_s2b: @ 0x080DF3B8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	mov r8, r3
	mov r0, r8
	adds r0, #8
	movs r1, #9
	bl __divsi3
	movs r1, #0
	movs r2, #1
	cmp r0, #1
	ble _080DF3E0
_080DF3D8:
	lsls r2, r2, #1
	adds r1, #1
	cmp r0, r2
	bgt _080DF3D8
_080DF3E0:
	adds r0, r7, #0
	bl _Balloc
	adds r1, r0, #0
	ldr r0, [sp, #0x18]
	str r0, [r1, #0x14]
	movs r0, #1
	str r0, [r1, #0x10]
	movs r5, #9
	cmp r6, #9
	ble _080DF412
	adds r4, #9
_080DF3F8:
	ldrb r3, [r4]
	subs r3, #0x30
	adds r4, #1
	adds r0, r7, #0
	movs r2, #0xa
	bl _multadd
	adds r1, r0, #0
	adds r5, #1
	cmp r5, r6
	blt _080DF3F8
	adds r4, #1
	b _080DF414
_080DF412:
	adds r4, #0xa
_080DF414:
	cmp r5, r8
	bge _080DF432
	mov r0, r8
	subs r5, r0, r5
_080DF41C:
	ldrb r3, [r4]
	subs r3, #0x30
	adds r4, #1
	adds r0, r7, #0
	movs r2, #0xa
	bl _multadd
	adds r1, r0, #0
	subs r5, #1
	cmp r5, #0
	bne _080DF41C
_080DF432:
	adds r0, r1, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start _hi0bits
_hi0bits: @ 0x080DF43C
	adds r1, r0, #0
	movs r2, #0
	ldr r0, _080DF48C @ =0xFFFF0000
	ands r0, r1
	cmp r0, #0
	bne _080DF44C
	movs r2, #0x10
	lsls r1, r1, #0x10
_080DF44C:
	movs r0, #0xff
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _080DF45A
	adds r2, #8
	lsls r1, r1, #8
_080DF45A:
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _080DF468
	adds r2, #4
	lsls r1, r1, #4
_080DF468:
	movs r0, #0xc0
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _080DF476
	adds r2, #2
	lsls r1, r1, #2
_080DF476:
	cmp r1, #0
	blt _080DF490
	adds r2, #1
	movs r0, #0x80
	lsls r0, r0, #0x17
	ands r0, r1
	cmp r0, #0
	bne _080DF490
	movs r0, #0x20
	b _080DF492
	.align 2, 0
_080DF48C: .4byte 0xFFFF0000
_080DF490:
	adds r0, r2, #0
_080DF492:
	bx lr

	thumb_func_start _lo0bits
_lo0bits: @ 0x080DF494
	adds r3, r0, #0
	ldr r1, [r3]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	beq _080DF4C4
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080DF4AC
	movs r0, #0
	b _080DF514
_080DF4AC:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080DF4BC
	lsrs r0, r1, #1
	str r0, [r3]
	movs r0, #1
	b _080DF514
_080DF4BC:
	lsrs r0, r1, #2
	str r0, [r3]
	movs r0, #2
	b _080DF514
_080DF4C4:
	movs r2, #0
	ldr r0, _080DF50C @ =0x0000FFFF
	ands r0, r1
	cmp r0, #0
	bne _080DF4D2
	movs r2, #0x10
	lsrs r1, r1, #0x10
_080DF4D2:
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	bne _080DF4DE
	adds r2, #8
	lsrs r1, r1, #8
_080DF4DE:
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080DF4EA
	adds r2, #4
	lsrs r1, r1, #4
_080DF4EA:
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080DF4F6
	adds r2, #2
	lsrs r1, r1, #2
_080DF4F6:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080DF510
	adds r2, #1
	lsrs r1, r1, #1
	cmp r1, #0
	bne _080DF510
	movs r0, #0x20
	b _080DF514
	.align 2, 0
_080DF50C: .4byte 0x0000FFFF
_080DF510:
	str r1, [r3]
	adds r0, r2, #0
_080DF514:
	bx lr
	.align 2, 0

	thumb_func_start _i2b
_i2b: @ 0x080DF518
	push {r4, lr}
	adds r4, r1, #0
	movs r1, #1
	bl _Balloc
	str r4, [r0, #0x14]
	movs r1, #1
	str r1, [r0, #0x10]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start _multiply
_multiply: @ 0x080DF52C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r3, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x10]
	cmp r1, r0
	bge _080DF54C
	str r4, [sp]
	adds r4, r5, #0
	ldr r5, [sp]
_080DF54C:
	ldr r1, [r4, #4]
	ldr r6, [r4, #0x10]
	ldr r0, [r5, #0x10]
	mov r8, r0
	mov r2, r8
	adds r2, r6, r2
	str r2, [sp, #4]
	ldr r0, [r4, #8]
	cmp r2, r0
	ble _080DF562
	adds r1, #1
_080DF562:
	adds r0, r3, #0
	bl _Balloc
	str r0, [sp]
	adds r7, r0, #0
	adds r7, #0x14
	ldr r1, [sp, #4]
	lsls r0, r1, #2
	adds r2, r7, r0
	str r2, [sp, #8]
	str r0, [sp, #0x18]
	adds r1, r4, #0
	adds r1, #0x14
	lsls r3, r6, #2
	adds r2, r5, #0
	adds r2, #0x14
	mov r5, r8
	lsls r4, r5, #2
	ldr r0, [sp, #8]
	cmp r7, r0
	bhs _080DF596
	movs r0, #0
_080DF58E:
	stm r7!, {r0}
	ldr r5, [sp, #8]
	cmp r7, r5
	blo _080DF58E
_080DF596:
	str r1, [sp, #8]
	adds r3, r1, r3
	str r3, [sp, #0xc]
	mov r8, r2
	add r4, r8
	str r4, [sp, #0x10]
	ldr r0, [sp]
	adds r0, #0x14
	mov sb, r0
	mov r1, sb
	str r1, [sp, #0x20]
	cmp r8, r4
	bhs _080DF65E
_080DF5B0:
	mov r2, r8
	ldm r2!, {r6}
	str r2, [sp, #0x14]
	ldr r0, _080DF66C @ =0x0000FFFF
	ands r6, r0
	mov r4, sb
	adds r4, #4
	str r4, [sp, #0x1c]
	cmp r6, #0
	beq _080DF608
	ldr r7, [sp, #8]
	mov r5, sb
	movs r1, #0
	mov ip, r1
	mov sl, r0
_080DF5CE:
	ldm r7!, {r3}
	adds r0, r3, #0
	mov r2, sl
	ands r0, r2
	adds r1, r0, #0
	muls r1, r6, r1
	ldr r2, [r5]
	adds r0, r2, #0
	mov r4, sl
	ands r0, r4
	adds r1, r1, r0
	mov r0, ip
	adds r4, r1, r0
	lsrs r1, r4, #0x10
	lsrs r3, r3, #0x10
	adds r0, r3, #0
	muls r0, r6, r0
	lsrs r2, r2, #0x10
	adds r0, r0, r2
	adds r2, r0, r1
	lsrs r0, r2, #0x10
	mov ip, r0
	strh r2, [r5]
	strh r4, [r5, #2]
	adds r5, #4
	ldr r1, [sp, #0xc]
	cmp r7, r1
	blo _080DF5CE
	str r0, [r5]
_080DF608:
	mov r2, r8
	ldrh r6, [r2, #2]
	cmp r6, #0
	beq _080DF650
	ldr r7, [sp, #8]
	mov r5, sb
	movs r4, #0
	mov ip, r4
	ldr r2, [r5]
	ldr r3, _080DF66C @ =0x0000FFFF
_080DF61C:
	ldm r7!, {r1}
	adds r0, r1, #0
	ands r0, r3
	muls r0, r6, r0
	ldrh r4, [r5, #2]
	adds r4, r4, r0
	mov r8, r4
	add r4, ip
	lsrs r0, r4, #0x10
	mov ip, r0
	strh r4, [r5]
	strh r2, [r5, #2]
	adds r5, #4
	lsrs r1, r1, #0x10
	muls r1, r6, r1
	ldr r0, [r5]
	ands r0, r3
	adds r1, r1, r0
	mov r4, ip
	adds r2, r1, r4
	lsrs r0, r2, #0x10
	mov ip, r0
	ldr r1, [sp, #0xc]
	cmp r7, r1
	blo _080DF61C
	str r2, [r5]
_080DF650:
	ldr r2, [sp, #0x14]
	mov r8, r2
	ldr r4, [sp, #0x1c]
	mov sb, r4
	ldr r5, [sp, #0x10]
	cmp r8, r5
	blo _080DF5B0
_080DF65E:
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x18]
	adds r5, r0, r1
	ldr r2, [sp, #4]
	cmp r2, #0
	ble _080DF682
	b _080DF67A
	.align 2, 0
_080DF66C: .4byte 0x0000FFFF
_080DF670:
	ldr r4, [sp, #4]
	subs r4, #1
	str r4, [sp, #4]
	cmp r4, #0
	ble _080DF682
_080DF67A:
	subs r5, #4
	ldr r0, [r5]
	cmp r0, #0
	beq _080DF670
_080DF682:
	ldr r5, [sp, #4]
	ldr r0, [sp]
	str r5, [r0, #0x10]
	ldr r0, [sp]
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start _pow5mult
_pow5mult: @ 0x080DF698
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r7, r1, #0
	adds r6, r2, #0
	movs r1, #3
	ands r1, r6
	cmp r1, #0
	beq _080DF6C2
	ldr r0, _080DF6E4 @ =0x084F09C8
	subs r1, #1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	mov r0, r8
	adds r1, r7, #0
	movs r3, #0
	bl _multadd
	adds r7, r0, #0
_080DF6C2:
	asrs r6, r6, #2
	cmp r6, #0
	beq _080DF728
	mov r0, r8
	ldr r5, [r0, #0x48]
	adds r4, r5, #0
	cmp r5, #0
	bne _080DF704
	ldr r1, _080DF6E8 @ =0x00000271
	bl _i2b
	mov r1, r8
	str r0, [r1, #0x48]
	adds r5, r0, #0
	str r4, [r5]
	b _080DF704
	.align 2, 0
_080DF6E4: .4byte 0x084F09C8
_080DF6E8: .4byte 0x00000271
_080DF6EC:
	ldr r0, [r5]
	adds r4, r0, #0
	cmp r0, #0
	bne _080DF702
	mov r0, r8
	adds r1, r5, #0
	adds r2, r5, #0
	bl _multiply
	str r0, [r5]
	str r4, [r0]
_080DF702:
	adds r5, r0, #0
_080DF704:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _080DF722
	mov r0, r8
	adds r1, r7, #0
	adds r2, r5, #0
	bl _multiply
	adds r4, r0, #0
	mov r0, r8
	adds r1, r7, #0
	bl _Bfree
	adds r7, r4, #0
_080DF722:
	asrs r6, r6, #1
	cmp r6, #0
	bne _080DF6EC
_080DF728:
	adds r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start _lshift
_lshift: @ 0x080DF730
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	mov r8, r1
	adds r5, r2, #0
	asrs r6, r5, #5
	ldr r1, [r1, #4]
	mov r2, r8
	ldr r0, [r2, #0x10]
	adds r0, r6, r0
	adds r7, r0, #1
	ldr r2, [r2, #8]
	cmp r7, r2
	ble _080DF75A
_080DF752:
	adds r1, #1
	lsls r2, r2, #1
	cmp r7, r2
	bgt _080DF752
_080DF75A:
	mov r0, sl
	bl _Balloc
	mov sb, r0
	mov r4, sb
	adds r4, #0x14
	mov r0, r8
	adds r0, #0x14
	cmp r6, #0
	ble _080DF77A
	movs r1, #0
	adds r2, r6, #0
_080DF772:
	stm r4!, {r1}
	subs r2, #1
	cmp r2, #0
	bne _080DF772
_080DF77A:
	adds r3, r0, #0
	mov r1, r8
	ldr r0, [r1, #0x10]
	lsls r0, r0, #2
	adds r6, r3, r0
	movs r0, #0x1f
	ands r5, r0
	cmp r5, #0
	beq _080DF7AC
	movs r0, #0x20
	subs r1, r0, r5
	movs r2, #0
_080DF792:
	ldr r0, [r3]
	lsls r0, r5
	orrs r0, r2
	stm r4!, {r0}
	ldm r3!, {r2}
	lsrs r2, r1
	cmp r3, r6
	blo _080DF792
	str r2, [r4]
	cmp r2, #0
	beq _080DF7B4
	adds r7, #1
	b _080DF7B4
_080DF7AC:
	ldm r3!, {r0}
	stm r4!, {r0}
	cmp r3, r6
	blo _080DF7AC
_080DF7B4:
	subs r0, r7, #1
	mov r2, sb
	str r0, [r2, #0x10]
	mov r0, sl
	mov r1, r8
	bl _Bfree
	mov r0, sb
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start __mcmp
__mcmp: @ 0x080DF7D0
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r5, r1, #0
	ldr r0, [r2, #0x10]
	ldr r1, [r5, #0x10]
	subs r0, r0, r1
	cmp r0, #0
	bne _080DF80C
	adds r4, r2, #0
	adds r4, #0x14
	lsls r1, r1, #2
	adds r3, r4, r1
	adds r0, r5, #0
	adds r0, #0x14
	adds r1, r0, r1
_080DF7EE:
	subs r3, #4
	subs r1, #4
	ldr r0, [r3]
	ldr r2, [r1]
	cmp r0, r2
	beq _080DF806
	movs r1, #1
	cmp r0, r2
	bhs _080DF802
	subs r1, #2
_080DF802:
	adds r0, r1, #0
	b _080DF80C
_080DF806:
	cmp r3, r4
	bhi _080DF7EE
	movs r0, #0
_080DF80C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start __mdiff
__mdiff: @ 0x080DF810
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r1, #0
	mov r8, r2
	adds r0, r5, #0
	mov r1, r8
	bl __mcmp
	adds r4, r0, #0
	cmp r4, #0
	bne _080DF842
	adds r0, r6, #0
	movs r1, #0
	bl _Balloc
	adds r7, r0, #0
	movs r0, #1
	str r0, [r7, #0x10]
	str r4, [r7, #0x14]
	b _080DF8F2
_080DF842:
	cmp r4, #0
	bge _080DF850
	adds r7, r5, #0
	mov r5, r8
	mov r8, r7
	movs r4, #1
	b _080DF852
_080DF850:
	movs r4, #0
_080DF852:
	ldr r1, [r5, #4]
	adds r0, r6, #0
	bl _Balloc
	adds r7, r0, #0
	str r4, [r7, #0xc]
	ldr r0, [r5, #0x10]
	mov sb, r0
	adds r6, r5, #0
	adds r6, #0x14
	lsls r0, r0, #2
	adds r0, r0, r6
	mov sl, r0
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r3, #0x14
	add r3, r8
	mov ip, r3
	lsls r0, r0, #2
	add r0, ip
	str r0, [sp]
	adds r4, r7, #0
	adds r4, #0x14
	movs r5, #0
	ldr r0, _080DF8DC @ =0x0000FFFF
	mov r8, r0
_080DF886:
	ldm r6!, {r1}
	str r1, [sp, #4]
	mov r3, r8
	ands r1, r3
	mov r0, ip
	adds r0, #4
	mov ip, r0
	subs r0, #4
	ldm r0!, {r2}
	adds r0, r2, #0
	ands r0, r3
	subs r1, r1, r0
	adds r0, r1, r5
	asrs r5, r0, #0x10
	ldr r1, [sp, #4]
	lsrs r3, r1, #0x10
	lsrs r2, r2, #0x10
	subs r3, r3, r2
	adds r1, r3, r5
	asrs r5, r1, #0x10
	strh r1, [r4]
	strh r0, [r4, #2]
	adds r4, #4
	ldr r3, [sp]
	cmp ip, r3
	blo _080DF886
	cmp r6, sl
	bhs _080DF8E6
	ldr r2, _080DF8DC @ =0x0000FFFF
_080DF8C0:
	ldm r6!, {r1}
	adds r0, r1, #0
	ands r0, r2
	adds r0, r0, r5
	asrs r5, r0, #0x10
	lsrs r1, r1, #0x10
	adds r1, r1, r5
	asrs r5, r1, #0x10
	strh r1, [r4]
	strh r0, [r4, #2]
	adds r4, #4
	cmp r6, sl
	blo _080DF8C0
	b _080DF8E6
	.align 2, 0
_080DF8DC: .4byte 0x0000FFFF
_080DF8E0:
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
_080DF8E6:
	subs r4, #4
	ldr r0, [r4]
	cmp r0, #0
	beq _080DF8E0
	mov r1, sb
	str r1, [r7, #0x10]
_080DF8F2:
	adds r0, r7, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start _ulp
_ulp: @ 0x080DF900
	push {r4, lr}
	ldr r2, _080DF914 @ =0x7FF00000
	ands r2, r0
	ldr r0, _080DF918 @ =0xFCC00000
	adds r2, r2, r0
	cmp r2, #0
	ble _080DF91C
	adds r3, r2, #0
	movs r4, #0
	b _080DF946
	.align 2, 0
_080DF914: .4byte 0x7FF00000
_080DF918: .4byte 0xFCC00000
_080DF91C:
	rsbs r0, r2, #0
	asrs r2, r0, #0x14
	cmp r2, #0x13
	bgt _080DF930
	movs r0, #0x80
	lsls r0, r0, #0xc
	adds r3, r0, #0
	asrs r3, r2
	movs r4, #0
	b _080DF946
_080DF930:
	movs r3, #0
	subs r2, #0x14
	cmp r2, #0x1e
	bgt _080DF942
	movs r0, #0x1f
	subs r0, r0, r2
	movs r1, #1
	lsls r1, r0
	b _080DF944
_080DF942:
	movs r1, #1
_080DF944:
	adds r4, r1, #0
_080DF946:
	adds r1, r4, #0
	adds r0, r3, #0
	pop {r4, pc}

	thumb_func_start _b2d
_b2d: @ 0x080DF94C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r1, #0
	movs r1, #0x14
	adds r1, r1, r0
	mov r8, r1
	ldr r0, [r0, #0x10]
	lsls r0, r0, #2
	adds r5, r1, r0
	subs r5, #4
	ldr r2, [r5]
	adds r0, r2, #0
	str r2, [sp]
	bl _hi0bits
	adds r3, r0, #0
	movs r0, #0x20
	subs r0, r0, r3
	str r0, [r4]
	ldr r2, [sp]
	cmp r3, #0xa
	bgt _080DF9AC
	movs r0, #0xb
	subs r0, r0, r3
	adds r1, r2, #0
	lsrs r1, r0
	ldr r0, _080DF994 @ =0x3FF00000
	adds r6, r1, #0
	orrs r6, r0
	cmp r5, r8
	bls _080DF998
	subs r5, #4
	ldr r1, [r5]
	b _080DF99A
	.align 2, 0
_080DF994: .4byte 0x3FF00000
_080DF998:
	movs r1, #0
_080DF99A:
	adds r0, r3, #0
	adds r0, #0x15
	lsls r2, r0
	movs r0, #0xb
	subs r0, r0, r3
	lsrs r1, r0
	adds r7, r2, #0
	orrs r7, r1
	b _080DF9F8
_080DF9AC:
	cmp r5, r8
	bls _080DF9B6
	subs r5, #4
	ldr r4, [r5]
	b _080DF9B8
_080DF9B6:
	movs r4, #0
_080DF9B8:
	subs r3, #0xb
	cmp r3, #0
	beq _080DF9F0
	lsls r2, r3
	movs r0, #0x20
	subs r0, r0, r3
	adds r1, r4, #0
	lsrs r1, r0
	ldr r0, _080DF9DC @ =0x3FF00000
	orrs r1, r0
	adds r6, r2, #0
	orrs r6, r1
	cmp r5, r8
	bls _080DF9E0
	subs r5, #4
	ldr r2, [r5]
	b _080DF9E2
	.align 2, 0
_080DF9DC: .4byte 0x3FF00000
_080DF9E0:
	movs r2, #0
_080DF9E2:
	lsls r4, r3
	movs r0, #0x20
	subs r0, r0, r3
	lsrs r2, r0
	adds r7, r4, #0
	orrs r7, r2
	b _080DF9F8
_080DF9F0:
	ldr r0, _080DFA04 @ =0x3FF00000
	adds r6, r2, #0
	orrs r6, r0
	adds r7, r4, #0
_080DF9F8:
	adds r1, r7, #0
	adds r0, r6, #0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080DFA04: .4byte 0x3FF00000

	thumb_func_start _d2b
_d2b: @ 0x080DFA08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r3
	ldr r3, [sp, #0x28]
	mov sl, r3
	adds r5, r2, #0
	adds r4, r1, #0
	movs r1, #1
	bl _Balloc
	adds r6, r0, #0
	movs r0, #0x14
	adds r0, r0, r6
	mov r8, r0
	ldr r2, _080DFA70 @ =0x000FFFFF
	adds r1, r4, #0
	ands r2, r1
	str r2, [sp, #4]
	ldr r0, _080DFA74 @ =0x7FFFFFFF
	ands r4, r0
	lsrs r7, r4, #0x14
	cmp r7, #0
	beq _080DFA46
	movs r0, #0x80
	lsls r0, r0, #0xd
	orrs r0, r2
	str r0, [sp, #4]
_080DFA46:
	str r5, [sp]
	cmp r5, #0
	beq _080DFA90
	mov r0, sp
	bl _lo0bits
	adds r2, r0, #0
	cmp r2, #0
	beq _080DFA78
	movs r0, #0x20
	subs r0, r0, r2
	ldr r1, [sp, #4]
	lsls r1, r0
	ldr r0, [sp]
	orrs r0, r1
	str r0, [r6, #0x14]
	ldr r0, [sp, #4]
	lsrs r0, r2
	str r0, [sp, #4]
	b _080DFA7C
	.align 2, 0
_080DFA70: .4byte 0x000FFFFF
_080DFA74: .4byte 0x7FFFFFFF
_080DFA78:
	ldr r0, [sp]
	str r0, [r6, #0x14]
_080DFA7C:
	ldr r0, [sp, #4]
	mov r1, r8
	str r0, [r1, #4]
	movs r1, #1
	cmp r0, #0
	beq _080DFA8A
	movs r1, #2
_080DFA8A:
	str r1, [r6, #0x10]
	adds r4, r1, #0
	b _080DFAA4
_080DFA90:
	add r0, sp, #4
	bl _lo0bits
	adds r2, r0, #0
	ldr r0, [sp, #4]
	str r0, [r6, #0x14]
	movs r0, #1
	str r0, [r6, #0x10]
	movs r4, #1
	adds r2, #0x20
_080DFAA4:
	cmp r7, #0
	beq _080DFAC0
	ldr r3, _080DFABC @ =0xFFFFFBCD
	adds r0, r2, r3
	adds r0, r7, r0
	mov r1, sb
	str r0, [r1]
	movs r0, #0x35
	subs r0, r0, r2
	mov r3, sl
	str r0, [r3]
	b _080DFADC
	.align 2, 0
_080DFABC: .4byte 0xFFFFFBCD
_080DFAC0:
	ldr r1, _080DFAEC @ =0xFFFFFBCE
	adds r0, r2, r1
	mov r3, sb
	str r0, [r3]
	lsls r0, r4, #2
	add r0, r8
	subs r0, #4
	ldr r0, [r0]
	bl _hi0bits
	lsls r1, r4, #5
	subs r1, r1, r0
	mov r0, sl
	str r1, [r0]
_080DFADC:
	adds r0, r6, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080DFAEC: .4byte 0xFFFFFBCE

	thumb_func_start _ratio
_ratio: @ 0x080DFAF0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	mov r1, sp
	bl _b2d
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r1, sp, #4
	adds r0, r5, #0
	bl _b2d
	adds r7, r1, #0
	adds r6, r0, #0
	ldr r2, [sp]
	ldr r0, [sp, #4]
	subs r2, r2, r0
	ldr r0, [r4, #0x10]
	ldr r1, [r5, #0x10]
	subs r0, r0, r1
	lsls r0, r0, #5
	adds r0, r2, r0
	cmp r0, #0
	ble _080DFB2C
	lsls r0, r0, #0x14
	ldr r1, [sp, #8]
	adds r0, r1, r0
	str r0, [sp, #8]
	b _080DFB30
_080DFB2C:
	lsls r0, r0, #0x14
	subs r6, r6, r0
_080DFB30:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	adds r3, r7, #0
	adds r2, r6, #0
	bl __divdf3
	add sp, #0x10
	pop {r4, r5, r6, r7, pc}

	thumb_func_start _mprec_log10
_mprec_log10: @ 0x080DFB40
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080DFB5C @ =0x00000000
	ldr r0, _080DFB58 @ =0x3FF00000
	cmp r4, #0x17
	bgt _080DFB64
	ldr r0, _080DFB60 @ =0x084F09D4
	lsls r1, r4, #3
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r1, [r1, #4]
	b _080DFB76
	.align 2, 0
_080DFB58: .4byte 0x3FF00000
_080DFB5C: .4byte 0x00000000
_080DFB60: .4byte 0x084F09D4
_080DFB64:
	cmp r4, #0
	ble _080DFB76
_080DFB68:
	ldr r3, _080DFB7C @ =0x00000000
	ldr r2, _080DFB78 @ =0x40240000
	bl __muldf3
	subs r4, #1
	cmp r4, #0
	bgt _080DFB68
_080DFB76:
	pop {r4, pc}
	.align 2, 0
_080DFB78: .4byte 0x40240000
_080DFB7C: .4byte 0x00000000

    @s_isinf

	thumb_func_start isinf
isinf: @ 0x080DFB80
	ldr r3, _080DFB9C @ =0x7FFFFFFF
	ands r3, r0
	rsbs r2, r1, #0
	orrs r2, r1
	lsrs r2, r2, #0x1f
	orrs r3, r2
	ldr r0, _080DFBA0 @ =0x7FF00000
	subs r3, r0, r3
	rsbs r0, r3, #0
	orrs r3, r0
	lsrs r3, r3, #0x1f
	movs r0, #1
	subs r0, r0, r3
	bx lr
	.align 2, 0
_080DFB9C: .4byte 0x7FFFFFFF
_080DFBA0: .4byte 0x7FF00000

    @s_isnan

	thumb_func_start isnan
isnan: @ 0x080DFBA4
	ldr r3, _080DFBBC @ =0x7FFFFFFF
	ands r3, r0
	rsbs r2, r1, #0
	orrs r2, r1
	lsrs r2, r2, #0x1f
	orrs r3, r2
	ldr r0, _080DFBC0 @ =0x7FF00000
	subs r3, r0, r3
	lsrs r3, r3, #0x1f
	adds r0, r3, #0
	bx lr
	.align 2, 0
_080DFBBC: .4byte 0x7FFFFFFF
_080DFBC0: .4byte 0x7FF00000

    @sbrkr

	thumb_func_start _sbrk_r
_sbrk_r: @ 0x080DFBC4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	ldr r4, _080DFBEC @ =0x03006000
	movs r1, #0
	str r1, [r4]
	bl _sbrk
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080DFBE6
	ldr r0, [r4]
	cmp r0, #0
	beq _080DFBE6
	str r0, [r5]
_080DFBE6:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_080DFBEC: .4byte 0x03006000

    @stdio

	thumb_func_start __sread
__sread: @ 0x080DFBF0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r0, [r5, #0x54]
	movs r2, #0xe
	ldrsh r1, [r5, r2]
	adds r2, r4, #0
	bl _read_r
	adds r1, r0, #0
	cmp r1, #0
	blt _080DFC12
	ldr r0, [r5, #0x50]
	adds r0, r0, r1
	str r0, [r5, #0x50]
	b _080DFC1A
_080DFC12:
	ldr r0, _080DFC20 @ =0xFFFFEFFF
	ldrh r2, [r5, #0xc]
	ands r0, r2
	strh r0, [r5, #0xc]
_080DFC1A:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_080DFC20: .4byte 0xFFFFEFFF

	thumb_func_start __swrite
__swrite: @ 0x080DFC24
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	movs r0, #0x80
	lsls r0, r0, #1
	ldrh r1, [r4, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _080DFC46
	ldr r0, [r4, #0x54]
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	movs r2, #0
	movs r3, #2
	bl _lseek_r
_080DFC46:
	ldr r0, _080DFC60 @ =0xFFFFEFFF
	ldrh r1, [r4, #0xc]
	ands r0, r1
	strh r0, [r4, #0xc]
	ldr r0, [r4, #0x54]
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	adds r2, r5, #0
	adds r3, r6, #0
	bl _write_r
	pop {r4, r5, r6, pc}
	.align 2, 0
_080DFC60: .4byte 0xFFFFEFFF

	thumb_func_start __sseek
__sseek: @ 0x080DFC64
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r0, [r5, #0x54]
	movs r2, #0xe
	ldrsh r1, [r5, r2]
	adds r2, r4, #0
	bl _lseek_r
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080DFC90
	ldr r0, _080DFC8C @ =0xFFFFEFFF
	ldrh r2, [r5, #0xc]
	ands r0, r2
	strh r0, [r5, #0xc]
	b _080DFC9E
	.align 2, 0
_080DFC8C: .4byte 0xFFFFEFFF
_080DFC90:
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ldrh r2, [r5, #0xc]
	orrs r0, r2
	strh r0, [r5, #0xc]
	str r1, [r5, #0x50]
_080DFC9E:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start __sclose
__sclose: @ 0x080DFCA4
	push {lr}
	ldr r2, [r0, #0x54]
	movs r3, #0xe
	ldrsh r1, [r0, r3]
	adds r0, r2, #0
	bl _close_r
	pop {pc}

    @strcmp

	thumb_func_start strcmp
strcmp: @ 0x080DFCB4
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	orrs r0, r3
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080DFCFA
	ldr r1, [r2]
	ldr r0, [r3]
	cmp r1, r0
	bne _080DFCFA
	ldr r5, _080DFCE0 @ =0xFEFEFEFF
	ldr r4, _080DFCE4 @ =0x80808080
_080DFCD0:
	ldr r1, [r2]
	adds r0, r1, r5
	bics r0, r1
	ands r0, r4
	cmp r0, #0
	beq _080DFCE8
	movs r0, #0
	b _080DFD0C
	.align 2, 0
_080DFCE0: .4byte 0xFEFEFEFF
_080DFCE4: .4byte 0x80808080
_080DFCE8:
	adds r2, #4
	adds r3, #4
	ldr r1, [r2]
	ldr r0, [r3]
	cmp r1, r0
	beq _080DFCD0
	b _080DFCFA
_080DFCF6:
	adds r2, #1
	adds r3, #1
_080DFCFA:
	ldrb r0, [r2]
	cmp r0, #0
	beq _080DFD06
	ldrb r1, [r3]
	cmp r0, r1
	beq _080DFCF6
_080DFD06:
	ldrb r2, [r2]
	ldrb r3, [r3]
	subs r0, r2, r3
_080DFD0C:
	pop {r4, r5, pc}
	.align 2, 0

    @strlen

	thumb_func_start strlen
strlen: @ 0x080DFD10
	push {r4, r5, lr}
	adds r1, r0, #0
	adds r5, r1, #0
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080DFD48
	adds r2, r1, #0
	ldr r1, [r2]
	ldr r4, _080DFD2C @ =0xFEFEFEFF
	adds r0, r1, r4
	bics r0, r1
	ldr r3, _080DFD30 @ =0x80808080
	b _080DFD3C
	.align 2, 0
_080DFD2C: .4byte 0xFEFEFEFF
_080DFD30: .4byte 0x80808080
_080DFD34:
	adds r2, #4
	ldr r1, [r2]
	adds r0, r1, r4
	bics r0, r1
_080DFD3C:
	ands r0, r3
	cmp r0, #0
	beq _080DFD34
	adds r1, r2, #0
	b _080DFD48
_080DFD46:
	adds r1, #1
_080DFD48:
	ldrb r0, [r1]
	cmp r0, #0
	bne _080DFD46
	subs r0, r1, r5
	pop {r4, r5, pc}
	.align 2, 0

    @syscalls

	thumb_func_start findslot
findslot: @ 0x080DFD54
	adds r3, r0, #0
	movs r1, #0
	ldr r2, _080DFD5C @ =0x03002838
	b _080DFD68
	.align 2, 0
_080DFD5C: .4byte 0x03002838
_080DFD60:
	adds r2, #8
	adds r1, #1
	cmp r1, #0x13
	bgt _080DFD6E
_080DFD68:
	ldr r0, [r2]
	cmp r0, r3
	bne _080DFD60
_080DFD6E:
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start remap_handle
remap_handle: @ 0x080DFD74
	adds r2, r0, #0
	ldr r0, _080DFD88 @ =0x08650D38
	ldr r1, [r0]
	ldr r0, [r1, #4]
	movs r3, #0xe
	ldrsh r0, [r0, r3]
	cmp r2, r0
	bne _080DFD90
	ldr r0, _080DFD8C @ =0x0300282C
	b _080DFDB6
	.align 2, 0
_080DFD88: .4byte 0x08650D38
_080DFD8C: .4byte 0x0300282C
_080DFD90:
	ldr r0, [r1, #8]
	movs r3, #0xe
	ldrsh r0, [r0, r3]
	cmp r2, r0
	bne _080DFDA4
	ldr r0, _080DFDA0 @ =0x03002830
	b _080DFDB6
	.align 2, 0
_080DFDA0: .4byte 0x03002830
_080DFDA4:
	ldr r0, [r1, #0xc]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	cmp r2, r0
	beq _080DFDB4
	adds r0, r2, #0
	subs r0, #0x20
	b _080DFDB8
_080DFDB4:
	ldr r0, _080DFDBC @ =0x03002834
_080DFDB6:
	ldr r0, [r0]
_080DFDB8:
	bx lr
	.align 2, 0
_080DFDBC: .4byte 0x03002834

	thumb_func_start initialise_monitor_handles
initialise_monitor_handles: @ 0x080DFDC0
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r4, _080DFE1C @ =0x084F0AEC
	str r4, [sp]
	movs r3, #3
	str r3, [sp, #8]
	movs r0, #0
	str r0, [sp, #4]
	movs r5, #1
	adds r0, r5, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	ldr r5, _080DFE20 @ =0x0300282C
	str r2, [r5]
	str r4, [sp]
	str r3, [sp, #8]
	movs r0, #4
	str r0, [sp, #4]
	ldr r3, _080DFE24 @ =0x03002830
	movs r4, #1
	adds r0, r4, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	ldr r0, _080DFE28 @ =0x03002834
	str r2, [r0]
	str r2, [r3]
	ldr r2, _080DFE2C @ =0x03002838
	adds r1, r2, #0
	subs r4, #2
	adds r0, r2, #0
	adds r0, #0x98
_080DFE02:
	str r4, [r0]
	subs r0, #8
	cmp r0, r1
	bge _080DFE02
	movs r0, #0
	ldr r1, [r5]
	str r1, [r2]
	str r0, [r2, #4]
	ldr r1, [r3]
	str r1, [r2, #8]
	str r0, [r2, #0xc]
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_080DFE1C: .4byte 0x084F0AEC
_080DFE20: .4byte 0x0300282C
_080DFE24: .4byte 0x03002830
_080DFE28: .4byte 0x03002834
_080DFE2C: .4byte 0x03002838

	thumb_func_start get_errno
get_errno: @ 0x080DFE30
	push {r4, lr}
	movs r3, #0x13
	movs r4, #0
	adds r0, r3, #0
	adds r1, r4, #0
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start error
error: @ 0x080DFE44
	push {r4, r5, lr}
	adds r5, r0, #0
	bl __errno
	adds r4, r0, #0
	bl get_errno
	str r0, [r4]
	adds r0, r5, #0
	pop {r4, r5, pc}

	thumb_func_start wrap
wrap: @ 0x080DFE58
	push {lr}
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080DFE68
	adds r0, r1, #0
	b _080DFE6E
_080DFE68:
	adds r0, r1, #0
	bl error
_080DFE6E:
	pop {pc}

	thumb_func_start _swiread
_swiread: @ 0x080DFE70
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r2, #0
	bl remap_handle
	str r0, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	movs r3, #6
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start _read
_read: @ 0x080DFE94
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	bl remap_handle
	bl findslot
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl _swiread
	cmp r0, #0
	bge _080DFEBE
	movs r0, #1
	rsbs r0, r0, #0
	bl error
	b _080DFED4
_080DFEBE:
	subs r2, r7, r0
	cmp r6, #0x14
	beq _080DFED2
	ldr r0, _080DFED8 @ =0x03002838
	lsls r1, r6, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
_080DFED2:
	adds r0, r2, #0
_080DFED4:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080DFED8: .4byte 0x03002838

	thumb_func_start _swilseek
_swilseek: @ 0x080DFEDC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	adds r5, r1, #0
	adds r4, r2, #0
	bl remap_handle
	adds r7, r0, #0
	bl findslot
	adds r6, r0, #0
	cmp r4, #1
	bne _080DFF12
	cmp r6, #0x14
	bne _080DFF04
	movs r0, #1
	rsbs r0, r0, #0
	b _080DFF54
_080DFF04:
	ldr r0, _080DFF5C @ =0x03002838
	lsls r1, r6, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	adds r5, r5, r0
	movs r4, #0
_080DFF12:
	cmp r4, #2
	bne _080DFF24
	str r7, [sp]
	movs r3, #0xc
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r5, r5, r2
_080DFF24:
	mov r0, r8
	bl remap_handle
	str r0, [sp]
	str r5, [sp, #4]
	movs r3, #0xa
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	cmp r6, #0x14
	beq _080DFF4A
	cmp r2, #0
	bne _080DFF4A
	ldr r0, _080DFF5C @ =0x03002838
	lsls r1, r6, #3
	adds r0, #4
	adds r1, r1, r0
	str r5, [r1]
_080DFF4A:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, #0
	bne _080DFF54
	adds r0, r5, #0
_080DFF54:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080DFF5C: .4byte 0x03002838

	thumb_func_start _lseek
_lseek: @ 0x080DFF60
	push {lr}
	bl _swilseek
	bl wrap
	pop {pc}

	thumb_func_start _swiwrite
_swiwrite: @ 0x080DFF6C
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r2, #0
	bl remap_handle
	str r0, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	movs r3, #5
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start _write
_write: @ 0x080DFF90
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	bl remap_handle
	bl findslot
	adds r7, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl _swiwrite
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080DFFB8
	cmp r0, r6
	bne _080DFFC0
_080DFFB8:
	adds r0, r1, #0
	bl error
	b _080DFFD6
_080DFFC0:
	subs r2, r6, r0
	cmp r7, #0x14
	beq _080DFFD4
	ldr r0, _080DFFD8 @ =0x03002838
	lsls r1, r7, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
_080DFFD4:
	adds r0, r2, #0
_080DFFD6:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080DFFD8: .4byte 0x03002838

	thumb_func_start _swiopen
_swiopen: @ 0x080DFFDC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r7, r0, #0
	adds r4, r1, #0
	movs r5, #0
	movs r6, #1
	rsbs r6, r6, #0
	adds r0, r6, #0
	bl findslot
	mov r8, r0
	cmp r0, #0x14
	bne _080DFFFE
	adds r0, r6, #0
	b _080E0072
_080DFFFE:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _080E0008
	movs r5, #2
_080E0008:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r4
	cmp r0, #0
	beq _080E0016
	movs r0, #4
	orrs r5, r0
_080E0016:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	beq _080E0024
	movs r0, #4
	orrs r5, r0
_080E0024:
	movs r1, #8
	ands r4, r1
	cmp r4, #0
	beq _080E0034
	movs r0, #5
	rsbs r0, r0, #0
	ands r5, r0
	orrs r5, r1
_080E0034:
	str r7, [sp]
	adds r0, r7, #0
	bl strlen
	str r0, [sp, #8]
	str r5, [sp, #4]
	movs r2, #1
	adds r0, r2, #0
	mov r1, sp
	svc #0xab
	adds r3, r0, #0
	cmp r3, #0
	blt _080E006C
	ldr r0, _080E0068 @ =0x03002838
	mov r1, r8
	lsls r2, r1, #3
	adds r1, r2, r0
	str r3, [r1]
	adds r0, #4
	adds r2, r2, r0
	movs r0, #0
	str r0, [r2]
	adds r0, r3, #0
	adds r0, #0x20
	b _080E0072
	.align 2, 0
_080E0068: .4byte 0x03002838
_080E006C:
	adds r0, r3, #0
	bl error
_080E0072:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start _open
_open: @ 0x080E007C
	push {r1, r2, r3}
	push {lr}
	ldr r1, [sp, #4]
	bl _swiopen
	bl wrap
	pop {r3}
	add sp, #0xc
	bx r3

	thumb_func_start _swiclose
_swiclose: @ 0x080E0090
	push {lr}
	sub sp, #4
	bl remap_handle
	str r0, [sp]
	bl findslot
	adds r1, r0, #0
	cmp r1, #0x14
	beq _080E00B0
	ldr r0, _080E00C0 @ =0x03002838
	lsls r1, r1, #3
	adds r1, r1, r0
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
_080E00B0:
	movs r3, #2
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	add sp, #4
	pop {pc}
	.align 2, 0
_080E00C0: .4byte 0x03002838

	thumb_func_start _close
_close: @ 0x080E00C4
	push {lr}
	bl _swiclose
	bl wrap
	pop {pc}

	thumb_func_start _exit
_exit: @ 0x080E00D0
	mov ip, r3
	mov r3, r8
	push {r3}
	mov r3, ip
	movs r2, #0x18
	ldr r3, _080E00EC @ =0x00020026
	adds r0, r2, #0
	adds r1, r3, #0
	svc #0xab
	mov r8, r0
	pop {r3}
	mov r8, r3
	bx lr
	.align 2, 0
_080E00EC: .4byte 0x00020026

	thumb_func_start _kill
_kill: @ 0x080E00F0
	mov ip, r3
	mov r3, r8
	push {r3}
	mov r3, ip
	movs r2, #0x18
	ldr r3, _080E010C @ =0x00020026
	adds r0, r2, #0
	adds r1, r3, #0
	svc #0xab
	mov r8, r0
	pop {r3}
	mov r8, r3
	bx lr
	.align 2, 0
_080E010C: .4byte 0x00020026

	thumb_func_start _getpid
_getpid: @ 0x080E0110
	movs r0, #1
	bx lr

	thumb_func_start _sbrk
_sbrk: @ 0x080E0114
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r4, _080E0144 @ =0x03002828
	ldr r0, [r4]
	cmp r0, #0
	bne _080E0124
	ldr r0, _080E0148 @ =0x03006004
	str r0, [r4]
_080E0124:
	ldr r5, [r4]
	adds r0, r5, r6
	cmp r0, sp
	bls _080E013A
	ldr r1, _080E014C @ =0x084F0AF0
	movs r0, #1
	movs r2, #0x20
	bl _write
	bl abort
_080E013A:
	ldr r0, [r4]
	adds r0, r0, r6
	str r0, [r4]
	adds r0, r5, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_080E0144: .4byte 0x03002828
_080E0148: .4byte 0x03006004
_080E014C: .4byte 0x084F0AF0

	thumb_func_start _fstat
_fstat: @ 0x080E0150
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start _unlink
_unlink: @ 0x080E015C
	movs r0, #1
	rsbs r0, r0, #0
	bx lr
	.align 2, 0

	thumb_func_start _raise
_raise: @ 0x080E0164
	bx lr
	.align 2, 0

	thumb_func_start _gettimeofday
_gettimeofday: @ 0x080E0168
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	cmp r2, #0
	beq _080E0186
	movs r4, #0x11
	movs r5, #0
	adds r0, r4, #0
	adds r1, r5, #0
	svc #0xab
	adds r5, r0, #0
	adds r4, r5, #0
	str r4, [r2]
	movs r0, #0
	str r0, [r2, #4]
_080E0186:
	cmp r3, #0
	beq _080E0190
	movs r0, #0
	str r0, [r3]
	str r0, [r3, #4]
_080E0190:
	movs r0, #0
	pop {r4, r5, pc}

	thumb_func_start _times
_times: @ 0x080E0194
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r4, #0x10
	movs r5, #0
	adds r0, r4, #0
	adds r1, r5, #0
	svc #0xab
	adds r3, r0, #0
	cmp r2, #0
	beq _080E01B2
	str r3, [r2]
	movs r0, #0
	str r0, [r2, #4]
	str r0, [r2, #8]
	str r0, [r2, #0xc]
_080E01B2:
	adds r0, r3, #0
	pop {r4, r5, pc}
	.align 2, 0

    @writer

	thumb_func_start _write_r
_write_r: @ 0x080E01B8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r4, _080E01E4 @ =0x03006000
	movs r3, #0
	str r3, [r4]
	bl _write
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E01DE
	ldr r0, [r4]
	cmp r0, #0
	beq _080E01DE
	str r0, [r5]
_080E01DE:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_080E01E4: .4byte 0x03006000

    @callocr

	thumb_func_start _calloc_r
_calloc_r: @ 0x080E01E8
	push {r4, lr}
	muls r1, r2, r1
	bl _malloc_r
	adds r4, r0, #0
	cmp r4, #0
	bne _080E01FA
	movs r0, #0
	b _080E023E
_080E01FA:
	adds r0, r4, #0
	subs r0, #8
	ldr r0, [r0, #4]
	movs r1, #4
	rsbs r1, r1, #0
	ands r0, r1
	subs r2, r0, #4
	cmp r2, #0x24
	bhi _080E0234
	adds r1, r4, #0
	cmp r2, #0x13
	bls _080E022A
	movs r0, #0
	stm r1!, {r0}
	str r0, [r4, #4]
	adds r1, #4
	cmp r2, #0x1b
	bls _080E022A
	stm r1!, {r0}
	stm r1!, {r0}
	cmp r2, #0x23
	bls _080E022A
	stm r1!, {r0}
	stm r1!, {r0}
_080E022A:
	movs r0, #0
	stm r1!, {r0}
	stm r1!, {r0}
	str r0, [r1]
	b _080E023C
_080E0234:
	adds r0, r4, #0
	movs r1, #0
	bl memset
_080E023C:
	adds r0, r4, #0
_080E023E:
	pop {r4, pc}

    @closer

	thumb_func_start _close_r
_close_r: @ 0x080E0240
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	ldr r4, _080E0268 @ =0x03006000
	movs r1, #0
	str r1, [r4]
	bl _close
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E0262
	ldr r0, [r4]
	cmp r0, #0
	beq _080E0262
	str r0, [r5]
_080E0262:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_080E0268: .4byte 0x03006000

    @errno

	thumb_func_start __errno
__errno: @ 0x080E026C
	ldr r0, _080E0274 @ =0x08650D38
	ldr r0, [r0]
	bx lr
	.align 2, 0
_080E0274: .4byte 0x08650D38

    @fstatr

	thumb_func_start _fstat_r
_fstat_r: @ 0x080E0278
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	ldr r4, _080E02A0 @ =0x03006000
	movs r2, #0
	str r2, [r4]
	bl _fstat
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E029C
	ldr r0, [r4]
	cmp r0, #0
	beq _080E029C
	str r0, [r5]
_080E029C:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_080E02A0: .4byte 0x03006000

    @abort

	thumb_func_start abort
abort: @ 0x080E02A4
	mov ip, r3
	mov r3, r8
	push {r3}
	mov r3, ip
	movs r2, #0x18
	ldr r3, _080E02C0 @ =0x00020022
	adds r0, r2, #0
	adds r1, r3, #0
	svc #0xab
	mov r8, r0
	pop {r3}
	mov r8, r3
	bx lr
	.align 2, 0
_080E02C0: .4byte 0x00020022

	thumb_func_start isatty
isatty: @ 0x080E02C4
	movs r0, #1
	bx lr

	thumb_func_start alarm
alarm: @ 0x080E02C8
	bx lr
	.align 2, 0

    @lseekr

	thumb_func_start _lseek_r
_lseek_r: @ 0x080E02CC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r4, _080E02F8 @ =0x03006000
	movs r3, #0
	str r3, [r4]
	bl _lseek
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E02F2
	ldr r0, [r4]
	cmp r0, #0
	beq _080E02F2
	str r0, [r5]
_080E02F2:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_080E02F8: .4byte 0x03006000

    @readr

	thumb_func_start _read_r
_read_r: @ 0x080E02FC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r4, _080E0328 @ =0x03006000
	movs r3, #0
	str r3, [r4]
	bl _read
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E0322
	ldr r0, [r4]
	cmp r0, #0
	beq _080E0322
	str r0, [r5]
_080E0322:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_080E0328: .4byte 0x03006000

    @not library

	thumb_func_start sub_080E032C
sub_080E032C: @ 0x080E032C
	bx pc
	nop

	arm_func_start sub_080E0330
sub_080E0330: @ 0x080E0330
	b sub_08043908
