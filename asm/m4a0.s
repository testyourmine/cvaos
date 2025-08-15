	.include "asm/gba_constants.inc"
    .include "asm/macros.inc"

	.syntax unified

	thumb_func_start umul3232H32
umul3232H32: @ 0x080D86B8
	add r2, pc, #0x0 @ =__umul3232H32
	bx r2

	arm_func_start __umul3232H32
__umul3232H32: @ 0x080D86BC
	umull r2, r3, r0, r1
	add r0, r3, #0
	bx lr

	thumb_func_start SoundMain
SoundMain: @ 0x080D86C8
	ldr r0, _080D8734 @ =0x03007FF0
	ldr r0, [r0]
	ldr r2, _080D8738 @ =0x68736D53
	ldr r3, [r0]
	cmp r2, r3
	beq _080D86D6
	bx lr
_080D86D6:
	adds r3, #1
	str r3, [r0]
	push {r4, r5, r6, r7, lr}
	mov r1, r8
	mov r2, sb
	mov r3, sl
	mov r4, fp
	push {r0, r1, r2, r3, r4}
	sub sp, #0x18
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	beq _080D86FA
	ldr r2, _080D8740 @ =0x04000006
	ldrb r2, [r2]
	cmp r2, #0xa0
	bhs _080D86F8
	adds r2, #0xe4
_080D86F8:
	adds r1, r1, r2
_080D86FA:
	str r1, [sp, #0x14]
	ldr r3, [r0, #0x20]
	cmp r3, #0
	beq _080D870A
	ldr r0, [r0, #0x24]
	bl _080D8A76
	ldr r0, [sp, #0x18]
_080D870A:
	ldr r3, [r0, #0x28]
	bl _080D8A76
	ldr r0, [sp, #0x18]
	ldr r3, [r0, #0x10]
	mov r8, r3
	ldr r5, _080D8744 @ =0x00000350
	adds r5, r5, r0
	ldrb r4, [r0, #4]
	subs r7, r4, #1
	bls _080D872A
	ldrb r1, [r0, #0xb]
	subs r1, r1, r7
	mov r2, r8
	muls r2, r1, r2
	adds r5, r5, r2
_080D872A:
	str r5, [sp, #8]
	ldr r6, _080D8748 @ =0x00000630
	ldr r3, _080D873C @ =0x030028D9
	bx r3
	.align 2, 0
_080D8734: .4byte 0x03007FF0
_080D8738: .4byte 0x68736D53
_080D873C: .4byte 0x030028D9
_080D8740: .4byte 0x04000006
_080D8744: .4byte 0x00000350
_080D8748: .4byte 0x00000630

	thumb_func_start SoundMainRAM
SoundMainRAM: @ 0x080D874C
	ldrb r3, [r0, #5]
	cmp r3, #0
	beq SoundMainRAM_NoReverb
	add r1, pc, #0x4 @ =SoundMainRAM_Reverb
	bx r1
	.align 2, 0

	arm_func_start SoundMainRAM_Reverb
SoundMainRAM_Reverb: @ 0x080D8758
	cmp r4, #2
	addeq r7, r0, #0x350
	addne r7, r5, r8
	mov r4, r8
_080D8768:
	ldrsb r0, [r5]
	ldrsb r1, [r7], #1
	add r0, r0, r1
	mul r1, r0, r3
	asr r0, r1, #8
	tst r0, #0x80
	addne r0, r0, #1
	strb r0, [r5], #1
	subs r4, r4, #1
	bgt _080D8768
	add r0, pc, #0x1F @ =_080D87B6
	bx r0

	thumb_func_start SoundMainRAM_NoReverb
SoundMainRAM_NoReverb: @ 0x080D8798
	movs r0, #0
	mov r1, r8
	lsrs r1, r1, #3
	blo _080D87A2
	stm r5!, {r0}
_080D87A2:
	lsrs r1, r1, #1
	blo _080D87AA
	stm r5!, {r0}
	stm r5!, {r0}
_080D87AA:
	stm r5!, {r0}
	stm r5!, {r0}
	stm r5!, {r0}
	stm r5!, {r0}
	subs r1, #1
	bgt _080D87AA

	non_word_aligned_thumb_func_start _080D87B6
_080D87B6: @ 0x080D87B6
	ldr r4, [sp, #0x18]
	ldr r0, [r4, #0x18]
	mov ip, r0
	ldrb r0, [r4, #6]
	adds r4, #0x50
_080D87C0:
	str r0, [sp, #4]
	ldr r3, [r4, #0x24]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _080D87E0
	ldr r1, _080D87DC @ =0x04000006
	ldrb r1, [r1]
	cmp r1, #0xa0
	bhs _080D87D4
	adds r1, #0xe4
_080D87D4:
	cmp r1, r0
	blo _080D87E0
	b _080D8A62
	.align 2, 0
_080D87DC: .4byte 0x04000006
_080D87E0:
	ldrb r6, [r4]
	movs r0, #0xc7
	tst r0, r6
	bne _080D87EA
	b sub_080D8A58
_080D87EA:
	movs r0, #0x80
	tst r0, r6
	beq _080D881A
	movs r0, #0x40
	tst r0, r6
	bne _080D882A
	movs r6, #3
	strb r6, [r4]
	adds r0, r3, #0
	adds r0, #0x10
	str r0, [r4, #0x28]
	ldr r0, [r3, #0xc]
	str r0, [r4, #0x18]
	movs r5, #0
	strb r5, [r4, #9]
	str r5, [r4, #0x1c]
	ldrb r2, [r3, #3]
	movs r0, #0xc0
	tst r0, r2
	beq _080D8872
	movs r0, #0x10
	orrs r6, r0
	strb r6, [r4]
	b _080D8872
_080D881A:
	ldrb r5, [r4, #9]
	movs r0, #4
	tst r0, r6
	beq _080D8830
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	bhi _080D8880
_080D882A:
	movs r0, #0
	strb r0, [r4]
	b sub_080D8A58
_080D8830:
	movs r0, #0x40
	tst r0, r6
	beq _080D8850
	ldrb r0, [r4, #7]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #0xc]
	cmp r5, r0
	bhi _080D8880
_080D8842:
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	beq _080D882A
	movs r0, #4
	orrs r6, r0
	strb r6, [r4]
	b _080D8880
_080D8850:
	movs r2, #3
	ands r2, r6
	cmp r2, #2
	bne _080D886E
	ldrb r0, [r4, #5]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #6]
	cmp r5, r0
	bhi _080D8880
	adds r5, r0, #0
	beq _080D8842
	subs r6, #1
	strb r6, [r4]
	b _080D8880
_080D886E:
	cmp r2, #3
	bne _080D8880
_080D8872:
	ldrb r0, [r4, #4]
	adds r5, r5, r0
	cmp r5, #0xff
	blo _080D8880
	movs r5, #0xff
	subs r6, #1
	strb r6, [r4]
_080D8880:
	strb r5, [r4, #9]
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, #7]
	adds r0, #1
	muls r0, r5, r0
	lsrs r5, r0, #4
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	muls r0, r5, r0
	lsrs r0, r0, #9
	strb r0, [r4, #0xa]
	movs r0, #0x10
	ands r0, r6
	str r0, [sp, #0x10]
	beq _080D88B0
	adds r0, r3, #0
	adds r0, #0x10
	ldr r1, [r3, #8]
	adds r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [r3, #0xc]
	subs r0, r0, r1
	str r0, [sp, #0x10]
_080D88B0:
	ldr r5, [sp, #8]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x28]
	add r0, pc, #0x4 @ =sub_080D88BC
	bx r0
	.align 2, 0

	arm_func_start sub_080D88BC
sub_080D88BC: @ 0x080D88BC
	str r8, [sp]
	ldrb sl, [r4, #0xa]
	lsl sl, sl, #0x10
	ldrb r0, [r4, #1]
	tst r0, #8
	beq _080D89C4
_080D88D4:
	cmp r2, #4
	ble _080D8930
	subs r2, r2, r8
	movgt lr, #0
	bgt _080D8900
	mov lr, r8
	add r2, r2, r8
	sub r8, r2, #4
	sub lr, lr, r8
	ands r2, r2, #3
	moveq r2, #4
_080D8900:
	ldr r6, [r5]
_080D8904:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	adds r5, r5, #0x40000000
	blo _080D8904
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _080D8900
	adds r8, r8, lr
	beq _080D8A44
_080D8930:
	ldr r6, [r5]
_080D8934:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	subs r2, r2, #1
	beq _080D8994
_080D894C:
	adds r5, r5, #0x40000000
	blo _080D8934
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _080D88D4
	b _080D8A44
_080D8964:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _080D8988
	ldr r3, [sp, #0x14]
	rsb sb, r2, #0
_080D8978:
	adds r2, r0, r2
	bgt _080D8A18
	sub sb, sb, r0
	b _080D8978
_080D8988:
	pop {r4, ip}
	mov r2, #0
	b _080D89A4
_080D8994:
	ldr r2, [sp, #0x10]
	cmp r2, #0
	ldrne r3, [sp, #0xc]
	bne _080D894C
_080D89A4:
	strb r2, [r4]
	lsr r0, r5, #0x1e
	bic r5, r5, #0xc0000000
	rsb r0, r0, #3
	lsl r0, r0, #3
	ror r6, r6, r0
	str r6, [r5], #4
	b _080D8A4C
_080D89C4:
	push {r4, ip}
	ldr lr, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	mul r4, ip, r1
	ldrsb r0, [r3]
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_080D89E0:
	ldr r6, [r5]
_080D89E4:
	mul sb, lr, r1
	add sb, r0, sb, asr #23
	mul ip, sl, sb
	bic ip, ip, #0xff0000
	add r6, ip, r6, ror #8
	add lr, lr, r4
	lsrs sb, lr, #0x17
	beq _080D8A24
	bic lr, lr, #0x3f800000
	subs r2, r2, sb
	ble _080D8964
	subs sb, sb, #1
	addeq r0, r0, r1
_080D8A18:
	ldrsbne r0, [r3, sb]!
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_080D8A24:
	adds r5, r5, #0x40000000
	blo _080D89E4
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _080D89E0
	sub r3, r3, #1
	pop {r4, ip}
	str lr, [r4, #0x1c]
_080D8A44:
	str r2, [r4, #0x18]
	str r3, [r4, #0x28]
_080D8A4C:
	ldr r8, [sp]
	add r0, pc, #0x1 @ =sub_080D8A58
	bx r0

	thumb_func_start sub_080D8A58
sub_080D8A58: @ 0x080D8A58
	ldr r0, [sp, #4]
	subs r0, #1
	ble _080D8A62
	adds r4, #0x40
	b _080D87C0
_080D8A62:
	ldr r0, [sp, #0x18]
	ldr r3, _080D8A78 @ =0x68736D53
	str r3, [r0]
	add sp, #0x1c
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}
_080D8A76:
	bx r3
	.align 2, 0
_080D8A78: .4byte 0x68736D53

	thumb_func_start SoundMainBTM
SoundMainBTM: @ 0x080D8A7C
	mov ip, r4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	movs r4, #0
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	mov r4, ip
	bx lr
	.align 2, 0

	thumb_func_start MP2KClearChain
MP2KClearChain: @ 0x080D8A94
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	beq _080D8AB2
	ldr r1, [r0, #0x34]
	ldr r2, [r0, #0x30]
	cmp r2, #0
	beq _080D8AA6
	str r1, [r2, #0x34]
	b _080D8AA8
_080D8AA6:
	str r1, [r3, #0x20]
_080D8AA8:
	cmp r1, #0
	beq _080D8AAE
	str r2, [r1, #0x30]
_080D8AAE:
	movs r1, #0
	str r1, [r0, #0x2c]
_080D8AB2:
	bx lr

	thumb_func_start MP2K_event_fine
MP2K_event_fine: @ 0x080D8AB4
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _080D8AD8
_080D8ABE:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _080D8ACC
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
_080D8ACC:
	adds r0, r4, #0
	bl MP2KClearChain
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _080D8ABE
_080D8AD8:
	movs r0, #0
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start MPlayJumpTableCopy
MPlayJumpTableCopy: @ 0x080D8AE4
	mov ip, lr
	movs r1, #0x24
	ldr r2, _080D8B14 @ =0x0827DCB4
_080D8AEA:
	ldr r3, [r2]
	bl chk_adr_r2
	stm r0!, {r3}
	adds r2, #4
	subs r1, #1
	bgt _080D8AEA
	bx ip
	.align 2, 0

	thumb_func_start ldrb_r3_r2
ldrb_r3_r2: @ 0x080D8AFC
	ldrb r3, [r2]

	non_word_aligned_thumb_func_start chk_adr_r2
chk_adr_r2: @ 0x080D8AFE
	push {r0}
	lsrs r0, r2, #0x19
	bne _080D8B10
	ldr r0, _080D8B14 @ =0x0827DCB4
	cmp r2, r0
	blo _080D8B0E
	lsrs r0, r2, #0xe
	beq _080D8B10
_080D8B0E:
	movs r3, #0
_080D8B10:
	pop {r0}
	bx lr
	.align 2, 0
_080D8B14: .4byte 0x0827DCB4

	thumb_func_start ld_r3_tp_adr_i
ld_r3_tp_adr_i: @ 0x080D8B18
	ldr r2, [r1, #0x40]
_080D8B1A:
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	b chk_adr_r2
	.align 2, 0

	thumb_func_start MP2K_event_goto
MP2K_event_goto: @ 0x080D8B24
	push {lr}
_080D8B26:
	ldr r2, [r1, #0x40]
	ldrb r0, [r2, #3]
	lsls r0, r0, #8
	ldrb r3, [r2, #2]
	orrs r0, r3
	lsls r0, r0, #8
	ldrb r3, [r2, #1]
	orrs r0, r3
	lsls r0, r0, #8
	bl ldrb_r3_r2
	orrs r0, r3
	str r0, [r1, #0x40]
	pop {r0}
	bx r0

	thumb_func_start MP2K_event_patt
MP2K_event_patt: @ 0x080D8B44
	ldrb r2, [r1, #2]
	cmp r2, #3
	bhs _080D8B5C
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r1, #0x40]
	adds r2, #4
	str r2, [r3, #0x44]
	ldrb r2, [r1, #2]
	adds r2, #1
	strb r2, [r1, #2]
	b MP2K_event_goto
_080D8B5C:
	b MP2K_event_fine
	.align 2, 0

	thumb_func_start MP2K_event_pend
MP2K_event_pend: @ 0x080D8B60
	ldrb r2, [r1, #2]
	cmp r2, #0
	beq _080D8B72
	subs r2, #1
	strb r2, [r1, #2]
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r3, #0x44]
	str r2, [r1, #0x40]
_080D8B72:
	bx lr

	thumb_func_start MP2K_event_rept
MP2K_event_rept: @ 0x080D8B74
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0
	bne _080D8B84
	adds r2, #1
	str r2, [r1, #0x40]
	b _080D8B26
_080D8B84:
	ldrb r3, [r1, #3]
	adds r3, #1
	strb r3, [r1, #3]
	mov ip, r3
	bl ld_r3_tp_adr_i
	cmp ip, r3
	bhs _080D8B96
	b _080D8B26
_080D8B96:
	movs r3, #0
	strb r3, [r1, #3]
	adds r2, #5
	str r2, [r1, #0x40]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start MP2K_event_prio
MP2K_event_prio: @ 0x080D8BA4
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x1d]
	bx ip
	.align 2, 0

	thumb_func_start MP2K_event_tempo
MP2K_event_tempo: @ 0x080D8BB0
	mov ip, lr
	bl ld_r3_tp_adr_i
	lsls r3, r3, #1
	strh r3, [r0, #0x1c]
	ldrh r2, [r0, #0x1e]
	muls r3, r2, r3
	lsrs r3, r3, #8
	strh r3, [r0, #0x20]
	bx ip

	thumb_func_start MP2K_event_keysh
MP2K_event_keysh: @ 0x080D8BC4
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0xa]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start MP2K_event_voice
MP2K_event_voice: @ 0x080D8BD8
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #2
	ldr r3, [r0, #0x30]
	adds r2, r2, r3
	ldr r3, [r2]
	bl chk_adr_r2
	str r3, [r1, #0x24]
	ldr r3, [r2, #4]
	bl chk_adr_r2
	str r3, [r1, #0x28]
	ldr r3, [r2, #8]
	bl chk_adr_r2
	str r3, [r1, #0x2c]
	bx ip
	.align 2, 0

	thumb_func_start MP2K_event_vol
MP2K_event_vol: @ 0x080D8C08
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x12]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start MP2K_event_pan
MP2K_event_pan: @ 0x080D8C1C
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0x14]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start MP2K_event_bend
MP2K_event_bend: @ 0x080D8C30
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0xe]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start MP2K_event_bendr
MP2K_event_bendr: @ 0x080D8C44
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0xf]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start MP2K_event_lfodl
MP2K_event_lfodl: @ 0x080D8C58
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x1b]
	bx ip
	.align 2, 0

	thumb_func_start MP2K_event_modt
MP2K_event_modt: @ 0x080D8C64
	mov ip, lr
	bl ld_r3_tp_adr_i
	ldrb r0, [r1, #0x18]
	cmp r0, r3
	beq _080D8C7A
	strb r3, [r1, #0x18]
	ldrb r3, [r1]
	movs r2, #0xf
	orrs r3, r2
	strb r3, [r1]
_080D8C7A:
	bx ip

	thumb_func_start MP2K_event_tune
MP2K_event_tune: @ 0x080D8C7C
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0xc]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start MP2K_event_port
MP2K_event_port: @ 0x080D8C90
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	ldr r0, _080D8CA4 @ =0x04000060
	adds r0, r0, r3
	bl _080D8B1A
	strb r3, [r0]
	bx ip
	.align 2, 0
_080D8CA4: .4byte 0x04000060

	thumb_func_start m4aSoundVSync
m4aSoundVSync: @ 0x080D8CA8
	ldr r0, _080D8F44 @ =0x03007FF0
	ldr r0, [r0]
	ldr r2, _080D8F48 @ =0x68736D53
	ldr r3, [r0]
	subs r3, r3, r2
	cmp r3, #1
	bhi _080D8CDA
	ldrb r1, [r0, #4]
	subs r1, #1
	strb r1, [r0, #4]
	bgt _080D8CDA
	ldrb r1, [r0, #0xb]
	strb r1, [r0, #4]
	ldr r2, _080D8CDC @ =0x040000BC
	ldr r1, [r2, #8]
	lsls r1, r1, #7
	blo _080D8CCE
	ldr r1, _080D8CE0 @ =0x84400004
	str r1, [r2, #8]
_080D8CCE:
	movs r1, #4
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	movs r1, #0xb6
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
_080D8CDA:
	bx lr
	.align 2, 0
_080D8CDC: .4byte 0x040000BC
_080D8CE0: .4byte 0x84400004

	thumb_func_start MP2KPlayerMain
MP2KPlayerMain: @ 0x080D8CE4
	ldr r2, _080D8F48 @ =0x68736D53
	ldr r3, [r0, #0x34]
	cmp r2, r3
	beq _080D8CEE
	bx lr
_080D8CEE:
	adds r3, #1
	str r3, [r0, #0x34]
	push {r0, lr}
	ldr r3, [r0, #0x38]
	cmp r3, #0
	beq _080D8D00
	ldr r0, [r0, #0x3c]
	bl call_r3
_080D8D00:
	pop {r0}
	push {r4, r5, r6, r7}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _080D8D18
	b _080D8F2C
_080D8D18:
	ldr r0, _080D8F44 @ =0x03007FF0
	ldr r0, [r0]
	mov r8, r0
	adds r0, r7, #0
	bl FadeOutBody
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _080D8D2C
	b _080D8F2C
_080D8D2C:
	ldrh r0, [r7, #0x22]
	ldrh r1, [r7, #0x20]
	adds r0, r0, r1
	b _080D8E7C
_080D8D34:
	ldrb r6, [r7, #8]
	ldr r5, [r7, #0x2c]
	movs r3, #1
	movs r4, #0
_080D8D3C:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	bne _080D8D46
	b _080D8E58
_080D8D46:
	mov sl, r3
	orrs r4, r3
	mov fp, r4
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _080D8D7A
_080D8D52:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _080D8D6E
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _080D8D74
	subs r0, #1
	strb r0, [r4, #0x10]
	bne _080D8D74
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
	b _080D8D74
_080D8D6E:
	adds r0, r4, #0
	bl ClearChain
_080D8D74:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _080D8D52
_080D8D7A:
	ldrb r3, [r5]
	movs r0, #0x40
	tst r0, r3
	beq _080D8DF8
	adds r0, r5, #0
	bl Clear64byte
	movs r0, #0x80
	strb r0, [r5]
	movs r0, #2
	strb r0, [r5, #0xf]
	movs r0, #0x40
	strb r0, [r5, #0x13]
	movs r0, #0x16
	strb r0, [r5, #0x19]
	movs r0, #1
	adds r1, r5, #6
	strb r0, [r1, #0x1e]
	b _080D8DF8
_080D8DA0:
	ldr r2, [r5, #0x40]
	ldrb r1, [r2]
	cmp r1, #0x80
	bhs _080D8DAC
	ldrb r1, [r5, #7]
	b _080D8DB6
_080D8DAC:
	adds r2, #1
	str r2, [r5, #0x40]
	cmp r1, #0xbd
	blo _080D8DB6
	strb r1, [r5, #7]
_080D8DB6:
	cmp r1, #0xcf
	blo _080D8DCC
	mov r0, r8
	ldr r3, [r0, #0x38]
	adds r0, r1, #0
	subs r0, #0xcf
	adds r1, r7, #0
	adds r2, r5, #0
	bl call_r3
	b _080D8DF8
_080D8DCC:
	cmp r1, #0xb0
	bls _080D8DEE
	adds r0, r1, #0
	subs r0, #0xb1
	strb r0, [r7, #0xa]
	mov r3, r8
	ldr r3, [r3, #0x34]
	lsls r0, r0, #2
	ldr r3, [r3, r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl call_r3
	ldrb r0, [r5]
	cmp r0, #0
	beq _080D8E54
	b _080D8DF8
_080D8DEE:
	ldr r0, _080D8F40 @ =0x0827DF28
	subs r1, #0x80
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5, #1]
_080D8DF8:
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _080D8DA0
	subs r0, #1
	strb r0, [r5, #1]
	ldrb r1, [r5, #0x19]
	cmp r1, #0
	beq _080D8E54
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	beq _080D8E54
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _080D8E1A
	subs r0, #1
	strb r0, [r5, #0x1c]
	b _080D8E54
_080D8E1A:
	ldrb r0, [r5, #0x1a]
	adds r0, r0, r1
	strb r0, [r5, #0x1a]
	adds r1, r0, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	bpl _080D8E2E
	lsls r2, r1, #0x18
	asrs r2, r2, #0x18
	b _080D8E32
_080D8E2E:
	movs r0, #0x80
	subs r2, r0, r1
_080D8E32:
	ldrb r0, [r5, #0x17]
	muls r0, r2, r0
	asrs r2, r0, #6
	ldrb r0, [r5, #0x16]
	eors r0, r2
	lsls r0, r0, #0x18
	beq _080D8E54
	strb r2, [r5, #0x16]
	ldrb r0, [r5]
	ldrb r1, [r5, #0x18]
	cmp r1, #0
	bne _080D8E4E
	movs r1, #0xc
	b _080D8E50
_080D8E4E:
	movs r1, #3
_080D8E50:
	orrs r0, r1
	strb r0, [r5]
_080D8E54:
	mov r3, sl
	mov r4, fp
_080D8E58:
	subs r6, #1
	ble _080D8E64
	movs r0, #0x50
	adds r5, r5, r0
	lsls r3, r3, #1
	b _080D8D3C
_080D8E64:
	ldr r0, [r7, #0xc]
	adds r0, #1
	str r0, [r7, #0xc]
	cmp r4, #0
	bne _080D8E76
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	b _080D8F2C
_080D8E76:
	str r4, [r7, #4]
	ldrh r0, [r7, #0x22]
	subs r0, #0x96
_080D8E7C:
	strh r0, [r7, #0x22]
	cmp r0, #0x96
	blo _080D8E84
	b _080D8D34
_080D8E84:
	ldrb r2, [r7, #8]
	ldr r5, [r7, #0x2c]
_080D8E88:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	beq _080D8F22
	movs r1, #0xf
	tst r1, r0
	beq _080D8F22
	mov sb, r2
	adds r0, r7, #0
	adds r1, r5, #0
	bl TrkVolPitSet
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _080D8F18
_080D8EA6:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	bne _080D8EB6
	adds r0, r4, #0
	bl ClearChain
	b _080D8F12
_080D8EB6:
	ldrb r0, [r4, #1]
	movs r6, #7
	ands r6, r0
	ldrb r3, [r5]
	movs r0, #3
	tst r0, r3
	beq _080D8ED4
	bl ChnVolSetAsm
	cmp r6, #0
	beq _080D8ED4
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
_080D8ED4:
	ldrb r3, [r5]
	movs r0, #0xc
	tst r0, r3
	beq _080D8F12
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r2, r1, r0
	bpl _080D8EE8
	movs r2, #0
_080D8EE8:
	cmp r6, #0
	beq _080D8F06
	mov r0, r8
	ldr r3, [r0, #0x30]
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	adds r0, r6, #0
	bl call_r3
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0x1d]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0x1d]
	b _080D8F12
_080D8F06:
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	ldr r0, [r4, #0x24]
	bl MidiKeyToFreq
	str r0, [r4, #0x20]
_080D8F12:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _080D8EA6
_080D8F18:
	ldrb r0, [r5]
	movs r1, #0xf0
	ands r0, r1
	strb r0, [r5]
	mov r2, sb
_080D8F22:
	subs r2, #1
	ble _080D8F2C
	movs r0, #0x50
	adds r5, r5, r0
	bgt _080D8E88
_080D8F2C:
	ldr r0, _080D8F48 @ =0x68736D53
	str r0, [r7, #0x34]
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}
call_r3:
	bx r3
	.align 2, 0
_080D8F40: .4byte 0x0827DF28
_080D8F44: .4byte 0x03007FF0
_080D8F48: .4byte 0x68736D53

	thumb_func_start TrackStop
TrackStop: @ 0x080D8F4C
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldrb r1, [r5]
	movs r0, #0x80
	tst r0, r1
	beq _080D8F84
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _080D8F82
	movs r6, #0
_080D8F60:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080D8F7A
	ldrb r0, [r4, #1]
	movs r3, #7
	ands r0, r3
	beq _080D8F78
	ldr r3, _080D8F8C @ =0x03007FF0
	ldr r3, [r3]
	ldr r3, [r3, #0x2c]
	bl call_r3
_080D8F78:
	strb r6, [r4]
_080D8F7A:
	str r6, [r4, #0x2c]
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _080D8F60
_080D8F82:
	str r4, [r5, #0x20]
_080D8F84:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080D8F8C: .4byte 0x03007FF0

	thumb_func_start ChnVolSetAsm
ChnVolSetAsm: @ 0x080D8F90
	ldrb r1, [r4, #0x12]
	movs r0, #0x14
	ldrsb r2, [r4, r0]
	movs r3, #0x80
	adds r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x10]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _080D8FA8
	movs r0, #0xff
_080D8FA8:
	strb r0, [r4, #2]
	movs r3, #0x7f
	subs r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x11]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _080D8FBC
	movs r0, #0xff
_080D8FBC:
	strb r0, [r4, #3]
	bx lr

	thumb_func_start MP2K_event_nxx
MP2K_event_nxx: @ 0x080D8FC0
	push {r4, r5, r6, r7, lr}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	sub sp, #0x18
	str r1, [sp]
	adds r5, r2, #0
	ldr r1, _080D91B8 @ =0x03007FF0
	ldr r1, [r1]
	str r1, [sp, #4]
	ldr r1, _080D91BC @ =0x0827DF28
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #4]
	ldr r3, [r5, #0x40]
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _080D9006
	strb r0, [r5, #5]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _080D9004
	strb r0, [r5, #6]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _080D9004
	ldrb r1, [r5, #4]
	adds r1, r1, r0
	strb r1, [r5, #4]
	adds r3, #1
_080D9004:
	str r3, [r5, #0x40]
_080D9006:
	movs r0, #0
	str r0, [sp, #0x14]
	adds r4, r5, #0
	adds r4, #0x24
	ldrb r2, [r4]
	movs r0, #0xc0
	tst r0, r2
	beq _080D9058
	ldrb r3, [r5, #5]
	movs r0, #0x40
	tst r0, r2
	beq _080D9026
	ldr r1, [r5, #0x2c]
	adds r1, r1, r3
	ldrb r0, [r1]
	b _080D9028
_080D9026:
	adds r0, r3, #0
_080D9028:
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r5, #0x28]
	adds r1, r1, r0
	mov sb, r1
	mov r6, sb
	ldrb r1, [r6]
	movs r0, #0xc0
	tst r0, r1
	beq _080D9040
	b _080D91A6
_080D9040:
	movs r0, #0x80
	tst r0, r2
	beq _080D905C
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	beq _080D9054
	subs r1, #0xc0
	lsls r1, r1, #1
	str r1, [sp, #0x14]
_080D9054:
	ldrb r3, [r6, #1]
	b _080D905C
_080D9058:
	mov sb, r4
	ldrb r3, [r5, #5]
_080D905C:
	str r3, [sp, #8]
	ldr r6, [sp]
	ldrb r1, [r6, #9]
	ldrb r0, [r5, #0x1d]
	adds r0, r0, r1
	cmp r0, #0xff
	bls _080D906C
	movs r0, #0xff
_080D906C:
	str r0, [sp, #0x10]
	mov r6, sb
	ldrb r0, [r6]
	movs r6, #7
	ands r6, r0
	str r6, [sp, #0xc]
	beq _080D90AC
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
	cmp r4, #0
	bne _080D9084
	b _080D91A6
_080D9084:
	subs r6, #1
	lsls r0, r6, #6
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _080D9100
	movs r0, #0x40
	tst r0, r1
	bne _080D9100
	ldrb r1, [r4, #0x13]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	blo _080D9100
	beq _080D90A4
	b _080D91A6
_080D90A4:
	ldr r0, [r4, #0x2c]
	cmp r0, r5
	bhs _080D9100
	b _080D91A6
_080D90AC:
	ldr r6, [sp, #0x10]
	adds r7, r5, #0
	movs r2, #0
	mov r8, r2
	ldr r4, [sp, #4]
	ldrb r3, [r4, #6]
	adds r4, #0x50
_080D90BA:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _080D9100
	movs r0, #0x40
	tst r0, r1
	beq _080D90D4
	cmp r2, #0
	bne _080D90D8
	adds r2, #1
	ldrb r6, [r4, #0x13]
	ldr r7, [r4, #0x2c]
	b _080D90F2
_080D90D4:
	cmp r2, #0
	bne _080D90F4
_080D90D8:
	ldrb r0, [r4, #0x13]
	cmp r0, r6
	bhs _080D90E4
	adds r6, r0, #0
	ldr r7, [r4, #0x2c]
	b _080D90F2
_080D90E4:
	bhi _080D90F4
	ldr r0, [r4, #0x2c]
	cmp r0, r7
	bls _080D90F0
	adds r7, r0, #0
	b _080D90F2
_080D90F0:
	blo _080D90F4
_080D90F2:
	mov r8, r4
_080D90F4:
	adds r4, #0x40
	subs r3, #1
	bgt _080D90BA
	mov r4, r8
	cmp r4, #0
	beq _080D91A6
_080D9100:
	adds r0, r4, #0
	bl ClearChain
	movs r1, #0
	str r1, [r4, #0x30]
	ldr r3, [r5, #0x20]
	str r3, [r4, #0x34]
	cmp r3, #0
	beq _080D9114
	str r4, [r3, #0x30]
_080D9114:
	str r4, [r5, #0x20]
	str r5, [r4, #0x2c]
	ldrb r0, [r5, #0x1b]
	strb r0, [r5, #0x1c]
	cmp r0, r1
	beq _080D9126
	adds r1, r5, #0
	bl clear_modM
_080D9126:
	ldr r0, [sp]
	adds r1, r5, #0
	bl TrkVolPitSet
	ldr r0, [r5, #4]
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x10]
	strb r0, [r4, #0x13]
	ldr r0, [sp, #8]
	strb r0, [r4, #8]
	ldr r0, [sp, #0x14]
	strb r0, [r4, #0x14]
	mov r6, sb
	ldrb r0, [r6]
	strb r0, [r4, #1]
	ldr r7, [r6, #4]
	str r7, [r4, #0x24]
	ldr r0, [r6, #8]
	str r0, [r4, #4]
	ldrh r0, [r5, #0x1e]
	strh r0, [r4, #0xc]
	bl ChnVolSetAsm
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r3, r1, r0
	bpl _080D9160
	movs r3, #0
_080D9160:
	ldr r6, [sp, #0xc]
	cmp r6, #0
	beq _080D918E
	mov r6, sb
	ldrb r0, [r6, #2]
	strb r0, [r4, #0x1e]
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	bne _080D917A
	movs r0, #0x70
	tst r0, r1
	bne _080D917C
_080D917A:
	movs r1, #8
_080D917C:
	strb r1, [r4, #0x1f]
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #4]
	ldr r3, [r3, #0x30]
	bl call_r3
	b _080D9198
_080D918E:
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	adds r0, r7, #0
	bl MidiKeyToFreq
_080D9198:
	str r0, [r4, #0x20]
	movs r0, #0x80
	strb r0, [r4]
	ldrb r1, [r5]
	movs r0, #0xf0
	ands r0, r1
	strb r0, [r5]
_080D91A6:
	add sp, #0x18
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r0}
	bx r0
	.align 2, 0
_080D91B8: .4byte 0x03007FF0
_080D91BC: .4byte 0x0827DF28

	thumb_func_start MP2K_event_endtie
MP2K_event_endtie: @ 0x080D91C0
	push {r4, r5}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0x80
	bhs _080D91D2
	strb r3, [r1, #5]
	adds r2, #1
	str r2, [r1, #0x40]
	b _080D91D4
_080D91D2:
	ldrb r3, [r1, #5]
_080D91D4:
	ldr r1, [r1, #0x20]
	cmp r1, #0
	beq _080D91FC
	movs r4, #0x83
	movs r5, #0x40
_080D91DE:
	ldrb r2, [r1]
	tst r2, r4
	beq _080D91F6
	tst r2, r5
	bne _080D91F6
	ldrb r0, [r1, #0x11]
	cmp r0, r3
	bne _080D91F6
	movs r0, #0x40
	orrs r2, r0
	strb r2, [r1]
	b _080D91FC
_080D91F6:
	ldr r1, [r1, #0x34]
	cmp r1, #0
	bne _080D91DE
_080D91FC:
	pop {r4, r5}
	bx lr

	thumb_func_start clear_modM
clear_modM: @ 0x080D9200
	movs r2, #0
	strb r2, [r1, #0x16]
	strb r2, [r1, #0x1a]
	ldrb r2, [r1, #0x18]
	cmp r2, #0
	bne _080D9210
	movs r2, #0xc
	b _080D9212
_080D9210:
	movs r2, #3
_080D9212:
	ldrb r3, [r1]
	orrs r3, r2
	strb r3, [r1]
	bx lr
	.align 2, 0

	thumb_func_start ld_r3_tp_adr_i_unchecked
ld_r3_tp_adr_i_unchecked: @ 0x080D921C
	ldr r2, [r1, #0x40]
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	bx lr
	.align 2, 0

	thumb_func_start MP2K_event_lfos
MP2K_event_lfos: @ 0x080D9228
	mov ip, lr
	bl ld_r3_tp_adr_i_unchecked
	strb r3, [r1, #0x19]
	cmp r3, #0
	bne _080D9238
	bl clear_modM
_080D9238:
	bx ip
	.align 2, 0

	thumb_func_start MP2K_event_mod
MP2K_event_mod: @ 0x080D923C
	mov ip, lr
	bl ld_r3_tp_adr_i_unchecked
	strb r3, [r1, #0x17]
	cmp r3, #0
	bne _080D924C
	bl clear_modM
_080D924C:
	bx ip
	.align 2, 0
