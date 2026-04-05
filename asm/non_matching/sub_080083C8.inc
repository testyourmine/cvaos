
.syntax unified
.text
    push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r0, _080083F8 @ =gEwramData
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0x20
	ldrh r4, [r0, #0x18]
	ldrb r0, [r7, #0x15]
	mov sb, r0
	movs r1, #0
	mov r8, r1
	mov sl, r1
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _080083FC
	movs r3, #1
	mov r8, r3
	b _080084C0
	.align 2, 0
_080083F8: .4byte gEwramData
_080083FC:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0800843E
	mov r0, sb
	cmp r0, #0x21
	bgt _0800842E
	movs r0, #0xf3
	bl PlaySong
	ldrb r0, [r7, #0x17]
	adds r0, r5, r0
	mov r1, sb
	adds r1, #2
	strb r1, [r0]
	ldrb r0, [r7, #0x17]
	adds r0, #1
	strb r0, [r7, #0x17]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _080084C0
	movs r0, #0x23
	strb r0, [r7, #0x15]
	b _080084BE
_0800842E:
	movs r1, #1
	mov r8, r1
	mov r3, sb
	cmp r3, #0x22
	bne _080084C0
	movs r0, #4
	mov r8, r0
	b _080084C0
_0800843E:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _0800844C
	movs r1, #3
	mov r8, r1
	b _080084C0
_0800844C:
	movs r0, #0xc0
	lsls r0, r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08008472
	movs r0, #0xf2
	bl PlaySong
	ldrb r1, [r7, #0x17]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r4, r0
	cmp r4, #0
	beq _0800846C
	adds r0, r1, #1
	b _0800846E
_0800846C:
	subs r0, r1, #1
_0800846E:
	strb r0, [r7, #0x17]
	b _080084C0
_08008472:
	movs r0, #0x30
	ands r0, r4
	cmp r0, #0
	beq _080084A2
	mov r0, sb
	movs r1, #9
	bl Div
	adds r6, r0, #0
	movs r0, #0x10
	ands r4, r0
	mov r0, sb
	adds r0, #8
	cmp r4, #0
	beq _08008492
	subs r0, #7
_08008492:
	movs r1, #9
	bl Mod
	lsls r1, r6, #3
	adds r1, r1, r6
	adds r1, r1, r0
	mov sb, r1
	b _080084C0
_080084A2:
	movs r0, #0xc0
	ands r0, r4
	cmp r0, #0
	beq _080084C0
	movs r0, #0x40
	ands r4, r0
	mov r0, sb
	adds r0, #9
	cmp r4, #0
	beq _080084B8
	adds r0, #0x12
_080084B8:
	movs r1, #0x24
	bl Mod
_080084BE:
	mov sb, r0
_080084C0:
	mov r3, r8
	cmp r3, #2
	bne _080084C8
	b _080086A6
_080084C8:
	cmp r3, #2
	bgt _080084D2
	cmp r3, #1
	beq _080084E2
	b _080086F6
_080084D2:
	mov r0, r8
	cmp r0, #3
	bne _080084DA
	b _0800869C
_080084DA:
	cmp r0, #4
	bne _080084E0
	b _0800864C
_080084E0:
	b _080086F6
_080084E2:
	movs r1, #0xf4
	mov r8, r1
	adds r1, r5, #0
	movs r2, #0
	ldrb r0, [r5]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r6, _08008598 @ =gEwramData
	cmp r0, #0x20
	bls _0800850C
_080084F8:
	adds r1, #1
	adds r2, #1
	cmp r2, #7
	bgt _0800850C
	ldrb r0, [r1]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bhi _080084F8
_0800850C:
	movs r0, #0
	cmp r2, #7
	ble _08008514
	movs r0, #1
_08008514:
	cmp r0, #0
	beq _0800852A
	movs r2, #0
	ldr r3, _0800859C @ =0x084F0D84
_0800851C:
	adds r0, r5, r2
	adds r1, r2, r3
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, #7
	ble _0800851C
_0800852A:
	movs r2, #0
	ldr r3, _08008598 @ =gEwramData
_0800852E:
	ldr r0, [r3]
	adds r0, #0x94
	adds r0, r0, r2
	adds r1, r5, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, #7
	ble _0800852E
	ldr r2, [r6]
	ldr r0, [r2, #0x60]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800863A
	ldrb r1, [r7, #0xb]
	cmp r1, #0
	bne _0800863A
	ldr r3, _080085A0 @ =0x00013266
	adds r0, r2, r3
	strb r1, [r0]
	movs r5, #1
	movs r3, #0
	ldr r0, [r6]
	adds r2, r0, #0
	adds r2, #0x94
	ldr r0, _080085A4 @ =0x080E0DCC
	ldrb r1, [r2]
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r1, r0
	bne _080085AC
_0800856E:
	adds r3, #1
	adds r2, #1
	cmp r3, #7
	bgt _08008582
	adds r1, r3, r4
	ldrb r0, [r2]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0800856E
	movs r5, #0
_08008582:
	cmp r5, #0
	beq _080085AC
	ldr r1, _080085A8 @ =0x000001E5
	mov r8, r1
	ldr r0, [r6]
	ldr r3, _080085A0 @ =0x00013266
	adds r0, r0, r3
	movs r1, #1
	strb r1, [r0]
	b _0800863A
	.align 2, 0
_08008598: .4byte gEwramData
_0800859C: .4byte 0x084F0D84
_080085A0: .4byte 0x00013266
_080085A4: .4byte 0x080E0DCC
_080085A8: .4byte 0x000001E5
_080085AC:
	movs r4, #1
	movs r3, #0
	ldr r0, [r6]
	adds r2, r0, #0
	adds r2, #0x94
	b _080085C4
_080085B8:
	cmp r3, #7
	bne _080085C0
	movs r0, #2
	b _080085FC
_080085C0:
	adds r3, #1
	adds r2, #1
_080085C4:
	cmp r3, #7
	bgt _080085D4
	ldr r0, _080085E0 @ =0x080E0DDC
	adds r0, r3, r0
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	beq _080085B8
_080085D4:
	movs r3, #0
	ldr r0, [r6]
	adds r2, r0, #0
	adds r2, #0x94
	b _080085E8
	.align 2, 0
_080085E0: .4byte 0x080E0DDC
_080085E4:
	adds r3, #1
	adds r2, #1
_080085E8:
	cmp r3, #7
	bgt _080085FA
	ldr r0, _08008608 @ =0x080E0DD4
	adds r0, r3, r0
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	beq _080085E4
	movs r4, #0
_080085FA:
	adds r0, r4, #0
_080085FC:
	cmp r0, #1
	beq _0800860C
	cmp r0, #2
	beq _08008624
	b _0800863A
	.align 2, 0
_08008608: .4byte 0x080E0DD4
_0800860C:
	ldr r0, _08008620 @ =0x000001B5
	mov r8, r0
	ldr r0, [r6]
	movs r1, #0xd1
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0xd
	b _08008636
	.align 2, 0
_08008620: .4byte 0x000001B5
_08008624:
	ldr r3, _08008648 @ =0x00000199
	mov r8, r3
	ldr r0, [r6]
	movs r1, #0xd1
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0xe
_08008636:
	orrs r1, r2
	str r1, [r0]
_0800863A:
	mov r0, r8
	bl PlaySong
	movs r3, #1
	mov sl, r3
	b _080086F6
	.align 2, 0
_08008648: .4byte 0x00000199
_0800864C:
	ldrb r0, [r7, #0x17]
	cmp r0, #0
	beq _08008656
	subs r0, #1
	strb r0, [r7, #0x17]
_08008656:
	adds r1, r5, #0
	movs r2, #0
	ldrb r0, [r5]
	b _08008668
_0800865E:
	adds r1, #1
	adds r2, #1
	cmp r2, #7
	bgt _08008672
	ldrb r0, [r1]
_08008668:
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bhi _0800865E
_08008672:
	movs r0, #0
	cmp r2, #7
	ble _0800867A
	movs r0, #1
_0800867A:
	cmp r0, #0
	bne _080086F6
	movs r0, #0xf0
	bl PlaySong
	ldrb r0, [r7, #0x17]
	adds r2, r0, #1
	cmp r2, #7
	bgt _080086F2
	adds r1, r0, r5
_0800868E:
	ldrb r0, [r1, #1]
	strb r0, [r1]
	adds r1, #1
	adds r2, #1
	cmp r2, #7
	ble _0800868E
	b _080086F2
_0800869C:
	ldrb r0, [r7, #0x17]
	cmp r0, #0
	beq _080086A6
	subs r0, #1
	strb r0, [r7, #0x17]
_080086A6:
	adds r1, r5, #0
	movs r2, #0
	ldrb r0, [r5]
	b _080086B8
_080086AE:
	adds r1, #1
	adds r2, #1
	cmp r2, #7
	bgt _080086C2
	ldrb r0, [r1]
_080086B8:
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bhi _080086AE
_080086C2:
	movs r0, #0
	cmp r2, #7
	ble _080086CA
	movs r0, #1
_080086CA:
	cmp r0, #0
	beq _080086D6
	movs r0, #1
	rsbs r0, r0, #0
	mov sl, r0
	b _080086F6
_080086D6:
	movs r0, #0xf0
	bl PlaySong
	ldrb r0, [r7, #0x17]
	adds r2, r0, #1
	cmp r2, #7
	bgt _080086F2
	adds r1, r0, r5
_080086E6:
	ldrb r0, [r1, #1]
	strb r0, [r1]
	adds r1, #1
	adds r2, #1
	cmp r2, #7
	ble _080086E6
_080086F2:
	movs r0, #0
	strb r0, [r5, #7]
_080086F6:
	ldrb r0, [r7, #0x17]
	movs r1, #7
	ands r1, r0
	strb r1, [r7, #0x17]
	ldrb r0, [r7, #0x15]
	cmp r0, sb
	beq _0800870E
	mov r1, sb
	strb r1, [r7, #0x15]
	movs r0, #0xf1
	bl PlaySong
_0800870E:
	mov r0, sl
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
.syntax divided
