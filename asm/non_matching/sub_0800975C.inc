
.syntax unified
.text
    push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	cmp r5, #0
	bgt _08009768
	b _08009868
_08009768:
	movs r0, #0x28
	ldrsh r1, [r6, r0]
	movs r2, #0x2a
	ldrsh r0, [r6, r2]
	adds r2, r1, r0
	adds r4, r5, #0
	movs r3, #0
	cmp r3, r5
	bge _08009794
	ldr r0, _080097E4 @ =gEwramData
	ldr r1, [r0]
	ldr r7, _080097E8 @ =0x000143F4
	adds r0, r2, r7
	adds r1, r0, r1
_08009784:
	adds r1, #1
	adds r2, #1
	adds r3, #1
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080097EC
	cmp r3, r4
	blt _08009784
_08009794:
	adds r0, r2, #0
_08009796:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _080097A0
	b _08009974
_080097A0:
	ldr r0, _080097E4 @ =gEwramData
	ldr r7, [r0]
	adds r0, r1, r7
	ldr r2, _080097E8 @ =0x000143F4
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r3, r0, #0
	strh r0, [r6, #0x18]
	movs r4, #0x2a
	ldrsh r2, [r6, r4]
	adds r0, r2, #0
	adds r0, #8
	cmp r1, r0
	blt _08009840
	adds r1, r2, #0
	adds r4, r5, #0
	movs r3, #0
	cmp r5, #0
	blt _080097F8
	cmp r3, r5
	bge _0800980A
	ldr r5, _080097E8 @ =0x000143F4
	adds r0, r2, r5
	adds r2, r0, r7
_080097D0:
	adds r2, #1
	adds r1, #1
	adds r3, #1
	ldrb r0, [r2]
	cmp r0, #0xff
	beq _080097F0
	cmp r3, r4
	blt _080097D0
	b _0800980A
	.align 2, 0
_080097E4: .4byte gEwramData
_080097E8: .4byte 0x000143F4
_080097EC:
	subs r0, r2, #1
	b _08009796
_080097F0:
	subs r0, r1, #1
	b _0800980C
_080097F4:
	adds r0, r1, #1
	b _0800980C
_080097F8:
	rsbs r4, r5, #0
	cmp r3, r4
	bge _0800980A
_080097FE:
	subs r1, #1
	adds r3, #1
	cmp r1, #0
	blt _080097F4
	cmp r3, r4
	blt _080097FE
_0800980A:
	adds r0, r1, #0
_0800980C:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	bge _08009816
	b _08009974
_08009816:
	strh r1, [r6, #0x2a]
	movs r7, #0x2a
	ldrsh r4, [r6, r7]
	ldrb r3, [r6, #0x18]
	movs r1, #0
	ldr r0, _08009838 @ =gEwramData
	ldr r2, [r0]
_08009824:
	adds r0, r1, r2
	ldr r5, _0800983C @ =0x000143F4
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, r3
	beq _0800991A
	adds r1, #1
	cmp r1, #0x7f
	ble _08009824
	b _08009936
	.align 2, 0
_08009838: .4byte gEwramData
_0800983C: .4byte 0x000143F4
_08009840:
	adds r4, r2, #0
	movs r1, #0
	adds r2, r7, #0
_08009846:
	adds r0, r1, r2
	ldr r7, _08009858 @ =0x000143F4
	adds r0, r0, r7
	ldrb r0, [r0]
	cmp r0, r3
	bne _0800985C
	subs r1, r1, r4
	b _08009958
	.align 2, 0
_08009858: .4byte 0x000143F4
_0800985C:
	adds r1, #1
	cmp r1, #0x7f
	ble _08009846
	b _0800996E
_08009864:
	adds r0, #1
	b _0800988E
_08009868:
	cmp r5, #0
	blt _0800986E
	b _08009974
_0800986E:
	movs r0, #0x28
	ldrsh r1, [r6, r0]
	movs r2, #0x2a
	ldrsh r0, [r6, r2]
	adds r0, r1, r0
	movs r1, #0
	rsbs r7, r5, #0
	adds r2, r7, #0
	cmp r1, r7
	bge _0800988E
_08009882:
	subs r0, #1
	adds r1, #1
	cmp r0, #0
	blt _08009864
	cmp r1, r2
	blt _08009882
_0800988E:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _08009974
	ldr r0, _080098D4 @ =gEwramData
	ldr r3, [r0]
	adds r0, r1, r3
	ldr r4, _080098D8 @ =0x000143F4
	adds r0, r0, r4
	ldrb r0, [r0]
	adds r2, r0, #0
	strh r0, [r6, #0x18]
	movs r4, #0x2a
	ldrsh r0, [r6, r4]
	cmp r1, r0
	bge _08009940
	adds r2, r0, #0
	adds r1, r5, #0
	movs r4, #0
	cmp r1, #0
	blt _080098E4
	cmp r4, r1
	bge _080098F6
	ldr r5, _080098D8 @ =0x000143F4
	adds r0, r2, r5
	adds r3, r0, r3
_080098C2:
	adds r3, #1
	adds r2, #1
	adds r4, #1
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _080098DC
	cmp r4, r1
	blt _080098C2
	b _080098F6
	.align 2, 0
_080098D4: .4byte gEwramData
_080098D8: .4byte 0x000143F4
_080098DC:
	subs r0, r2, #1
	b _080098F8
_080098E0:
	adds r0, r2, #1
	b _080098F8
_080098E4:
	adds r1, r7, #0
	cmp r4, r1
	bge _080098F6
_080098EA:
	subs r2, #1
	adds r4, #1
	cmp r2, #0
	blt _080098E0
	cmp r4, r1
	blt _080098EA
_080098F6:
	adds r0, r2, #0
_080098F8:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	blt _08009974
	strh r1, [r6, #0x2a]
	movs r7, #0x2a
	ldrsh r4, [r6, r7]
	ldrb r3, [r6, #0x18]
	movs r1, #0
	ldr r0, _08009928 @ =gEwramData
	ldr r2, [r0]
_0800990E:
	adds r0, r1, r2
	ldr r5, _0800992C @ =0x000143F4
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, r3
	bne _08009930
_0800991A:
	subs r1, r1, r4
	cmp r1, #0
	bge _08009922
	movs r1, #0
_08009922:
	adds r0, r1, #0
	b _0800993A
	.align 2, 0
_08009928: .4byte gEwramData
_0800992C: .4byte 0x000143F4
_08009930:
	adds r1, #1
	cmp r1, #0x7f
	ble _0800990E
_08009936:
	movs r0, #1
	rsbs r0, r0, #0
_0800993A:
	strh r0, [r6, #0x28]
	movs r0, #1
	b _08009976
_08009940:
	movs r7, #0x2a
	ldrsh r5, [r6, r7]
	adds r4, r2, #0
	movs r1, #0
	adds r2, r3, #0
_0800994A:
	adds r0, r1, r2
	ldr r3, _08009964 @ =0x000143F4
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, r4
	bne _08009968
	subs r1, r1, r5
_08009958:
	cmp r1, #0
	bge _0800995E
	movs r1, #0
_0800995E:
	adds r0, r1, #0
	b _08009972
	.align 2, 0
_08009964: .4byte 0x000143F4
_08009968:
	adds r1, #1
	cmp r1, #0x7f
	ble _0800994A
_0800996E:
	movs r0, #1
	rsbs r0, r0, #0
_08009972:
	strh r0, [r6, #0x28]
_08009974:
	movs r0, #0
_08009976:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
.syntax divided
