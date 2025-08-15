	.include "asm/gba_constants.inc"
    .include "asm/macros.inc"

	.syntax unified

	thumb_func_start MidiKeyToFreq
MidiKeyToFreq: @ 0x080D9250
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r7, r2, #0x18
	cmp r6, #0xb2
	bls _080D9264
	movs r6, #0xb2
	movs r7, #0xff
	lsls r7, r7, #0x18
_080D9264:
	ldr r3, _080D92AC @ =0x0827DD44
	adds r0, r6, r3
	ldrb r5, [r0]
	ldr r4, _080D92B0 @ =0x0827DDF8
	movs r2, #0xf
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r5, #4
	ldr r5, [r0]
	lsrs r5, r1
	adds r0, r6, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r1, #4
	ldr r0, [r0]
	lsrs r0, r1
	mov r1, ip
	ldr r4, [r1, #4]
	subs r0, r0, r5
	adds r1, r7, #0
	bl umul3232H32
	adds r1, r0, #0
	adds r1, r5, r1
	adds r0, r4, #0
	bl umul3232H32
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080D92AC: .4byte 0x0827DD44
_080D92B0: .4byte 0x0827DDF8

	thumb_func_start sub_080D92B4
sub_080D92B4: @ 0x080D92B4
	bx lr
	.align 2, 0

	thumb_func_start MPlayContinue
MPlayContinue: @ 0x080D92B8
	adds r2, r0, #0
	ldr r3, [r2, #0x34]
	ldr r0, _080D92CC @ =0x68736D53
	cmp r3, r0
	bne _080D92CA
	ldr r0, [r2, #4]
	ldr r1, _080D92D0 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_080D92CA:
	bx lr
	.align 2, 0
_080D92CC: .4byte 0x68736D53
_080D92D0: .4byte 0x7FFFFFFF

	thumb_func_start MPlayFadeOut
MPlayFadeOut: @ 0x080D92D4
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _080D92F0 @ =0x68736D53
	cmp r3, r0
	bne _080D92EC
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x28]
_080D92EC:
	bx lr
	.align 2, 0
_080D92F0: .4byte 0x68736D53

	thumb_func_start m4aSoundInit
m4aSoundInit: @ 0x080D92F4
	push {r4, r5, r6, lr}
	ldr r0, _080D9348 @ =SoundMainRAM
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _080D934C @ =0x030028D8
	ldr r2, _080D9350 @ =0x040000E0
	bl CpuSet
	ldr r0, _080D9354 @ =0x030054F0
	bl SoundInit
	ldr r0, _080D9358 @ =0x03005F00
	bl MPlayExtender
	ldr r0, _080D935C @ =0x0093F800
	bl m4aSoundMode
	ldr r0, _080D9360 @ =0x00000008
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _080D9342
	ldr r5, _080D9364 @ =0x0827CCD8
	adds r6, r0, #0
_080D9326:
	ldr r4, [r5]
	ldr r1, [r5, #4]
	ldrb r2, [r5, #8]
	adds r0, r4, #0
	bl MPlayOpen
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0xb]
	ldr r0, _080D9368 @ =0x030054A0
	str r0, [r4, #0x18]
	adds r5, #0xc
	subs r6, #1
	cmp r6, #0
	bne _080D9326
_080D9342:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080D9348: .4byte SoundMainRAM
_080D934C: .4byte 0x030028D8
_080D9350: .4byte 0x040000E0
_080D9354: .4byte 0x030054F0
_080D9358: .4byte 0x03005F00
_080D935C: .4byte 0x0093F800
_080D9360: .4byte 0x00000008
_080D9364: .4byte 0x0827CCD8
_080D9368: .4byte 0x030054A0

	thumb_func_start m4aSoundMain
m4aSoundMain: @ 0x080D936C
	push {lr}
	bl SoundMain
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aSongNumStart
m4aSongNumStart: @ 0x080D9378
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _080D939C @ =0x0827CCD8
	ldr r1, _080D93A0 @ =0x0827CD38
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r0]
	adds r0, r2, #0
	bl MPlayStart
	pop {r0}
	bx r0
	.align 2, 0
_080D939C: .4byte 0x0827CCD8
_080D93A0: .4byte 0x0827CD38

	thumb_func_start m4aSongNumStartOrChange
m4aSongNumStartOrChange: @ 0x080D93A4
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _080D93D0 @ =0x0827CCD8
	ldr r1, _080D93D4 @ =0x0827CD38
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _080D93D8
	adds r0, r1, #0
	adds r1, r2, #0
	bl MPlayStart
	b _080D93EC
	.align 2, 0
_080D93D0: .4byte 0x0827CCD8
_080D93D4: .4byte 0x0827CD38
_080D93D8:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _080D93E4
	cmp r2, #0
	bge _080D93EC
_080D93E4:
	adds r0, r1, #0
	adds r1, r3, #0
	bl MPlayStart
_080D93EC:
	pop {r0}
	bx r0

	thumb_func_start m4aSongNumStartOrContinue
m4aSongNumStartOrContinue: @ 0x080D93F0
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _080D941C @ =0x0827CCD8
	ldr r1, _080D9420 @ =0x0827CD38
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _080D9424
	adds r0, r1, #0
	adds r1, r2, #0
	bl MPlayStart
	b _080D9440
	.align 2, 0
_080D941C: .4byte 0x0827CCD8
_080D9420: .4byte 0x0827CD38
_080D9424:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _080D9436
	adds r0, r1, #0
	adds r1, r3, #0
	bl MPlayStart
	b _080D9440
_080D9436:
	cmp r2, #0
	bge _080D9440
	adds r0, r1, #0
	bl MPlayContinue
_080D9440:
	pop {r0}
	bx r0

	thumb_func_start m4aSongNumStop
m4aSongNumStop: @ 0x080D9444
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _080D9470 @ =0x0827CCD8
	ldr r1, _080D9474 @ =0x0827CD38
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _080D946A
	adds r0, r2, #0
	bl MPlayStop
_080D946A:
	pop {r0}
	bx r0
	.align 2, 0
_080D9470: .4byte 0x0827CCD8
_080D9474: .4byte 0x0827CD38

	thumb_func_start m4aSongNumContinue
m4aSongNumContinue: @ 0x080D9478
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _080D94A4 @ =0x0827CCD8
	ldr r1, _080D94A8 @ =0x0827CD38
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _080D949E
	adds r0, r2, #0
	bl MPlayContinue
_080D949E:
	pop {r0}
	bx r0
	.align 2, 0
_080D94A4: .4byte 0x0827CCD8
_080D94A8: .4byte 0x0827CD38

	thumb_func_start m4aMPlayAllStop
m4aMPlayAllStop: @ 0x080D94AC
	push {r4, r5, lr}
	ldr r0, _080D94D0 @ =0x00000008
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _080D94CA
	ldr r5, _080D94D4 @ =0x0827CCD8
	adds r4, r0, #0
_080D94BC:
	ldr r0, [r5]
	bl MPlayStop
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _080D94BC
_080D94CA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080D94D0: .4byte 0x00000008
_080D94D4: .4byte 0x0827CCD8

	thumb_func_start m4aMPlayContinue
m4aMPlayContinue: @ 0x080D94D8
	push {lr}
	bl MPlayContinue
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aMPlayAllContinue
m4aMPlayAllContinue: @ 0x080D94E4
	push {r4, r5, lr}
	ldr r0, _080D9508 @ =0x00000008
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _080D9502
	ldr r5, _080D950C @ =0x0827CCD8
	adds r4, r0, #0
_080D94F4:
	ldr r0, [r5]
	bl MPlayContinue
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _080D94F4
_080D9502:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080D9508: .4byte 0x00000008
_080D950C: .4byte 0x0827CCD8

	thumb_func_start m4aMPlayFadeOut
m4aMPlayFadeOut: @ 0x080D9510
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl MPlayFadeOut
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aMPlayFadeOutTemporarily
m4aMPlayFadeOutTemporarily: @ 0x080D9520
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _080D9538 @ =0x68736D53
	cmp r3, r0
	bne _080D9536
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	ldr r0, _080D953C @ =0x00000101
	strh r0, [r2, #0x28]
_080D9536:
	bx lr
	.align 2, 0
_080D9538: .4byte 0x68736D53
_080D953C: .4byte 0x00000101

	thumb_func_start m4aMPlayFadeIn
m4aMPlayFadeIn: @ 0x080D9540
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _080D9560 @ =0x68736D53
	cmp r3, r0
	bne _080D955E
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #2
	strh r0, [r2, #0x28]
	ldr r0, [r2, #4]
	ldr r1, _080D9564 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_080D955E:
	bx lr
	.align 2, 0
_080D9560: .4byte 0x68736D53
_080D9564: .4byte 0x7FFFFFFF

	thumb_func_start m4aMPlayImmInit
m4aMPlayImmInit: @ 0x080D9568
	push {r4, r5, r6, r7, lr}
	ldrb r5, [r0, #8]
	ldr r4, [r0, #0x2c]
	cmp r5, #0
	ble _080D95AA
	movs r7, #0x80
_080D9574:
	ldrb r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _080D95A2
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080D95A2
	adds r0, r4, #0
	bl Clear64byte
	strb r7, [r4]
	movs r0, #2
	strb r0, [r4, #0xf]
	strb r6, [r4, #0x13]
	movs r0, #0x16
	strb r0, [r4, #0x19]
	adds r1, r4, #0
	adds r1, #0x24
	movs r0, #1
	strb r0, [r1]
_080D95A2:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _080D9574
_080D95AA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start MPlayExtender
MPlayExtender: @ 0x080D95B0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _080D9678 @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	ldr r3, _080D967C @ =0x04000080
	movs r2, #0
	strh r2, [r3]
	ldr r0, _080D9680 @ =0x04000063
	movs r1, #8
	strb r1, [r0]
	adds r0, #6
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0x14
	movs r1, #0x80
	strb r1, [r0]
	adds r0, #8
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0xd
	strb r2, [r0]
	movs r0, #0x77
	strb r0, [r3]
	ldr r0, _080D9684 @ =0x03007FF0
	ldr r4, [r0]
	ldr r6, [r4]
	ldr r0, _080D9688 @ =0x68736D53
	cmp r6, r0
	bne _080D9670
	adds r0, r6, #1
	str r0, [r4]
	ldr r1, _080D968C @ =0x03005E70
	ldr r0, _080D9690 @ =MP2K_event_memacc
	str r0, [r1, #0x20]
	ldr r0, _080D9694 @ =MP2K_event_lfos
	str r0, [r1, #0x44]
	ldr r0, _080D9698 @ =MP2K_event_mod
	str r0, [r1, #0x4c]
	ldr r0, _080D969C @ =MP2K_event_xcmd
	str r0, [r1, #0x70]
	ldr r0, _080D96A0 @ =MP2K_event_endtie
	str r0, [r1, #0x74]
	ldr r0, _080D96A4 @ =SampleFreqSet
	str r0, [r1, #0x78]
	ldr r0, _080D96A8 @ =TrackStop
	str r0, [r1, #0x7c]
	adds r2, r1, #0
	adds r2, #0x80
	ldr r0, _080D96AC @ =FadeOutBody
	str r0, [r2]
	adds r1, #0x84
	ldr r0, _080D96B0 @ =TrkVolPitSet
	str r0, [r1]
	str r5, [r4, #0x1c]
	ldr r0, _080D96B4 @ =CgbSound
	str r0, [r4, #0x28]
	ldr r0, _080D96B8 @ =CgbOscOff
	str r0, [r4, #0x2c]
	ldr r0, _080D96BC @ =MidiKeyToCgbFreq
	str r0, [r4, #0x30]
	ldr r0, _080D96C0 @ =0x00000000
	movs r1, #0
	strb r0, [r4, #0xc]
	str r1, [sp]
	ldr r2, _080D96C4 @ =0x05000040
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #1
	strb r0, [r5, #1]
	movs r0, #0x11
	strb r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x41
	movs r0, #2
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x22
	strb r0, [r1]
	adds r1, #0x25
	movs r0, #3
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x44
	strb r0, [r1]
	adds r1, #0x24
	movs r0, #4
	strb r0, [r1, #1]
	movs r0, #0x88
	strb r0, [r1, #0x1c]
	str r6, [r4]
_080D9670:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080D9678: .4byte 0x04000084
_080D967C: .4byte 0x04000080
_080D9680: .4byte 0x04000063
_080D9684: .4byte 0x03007FF0
_080D9688: .4byte 0x68736D53
_080D968C: .4byte 0x03005E70
_080D9690: .4byte MP2K_event_memacc
_080D9694: .4byte MP2K_event_lfos
_080D9698: .4byte MP2K_event_mod
_080D969C: .4byte MP2K_event_xcmd
_080D96A0: .4byte MP2K_event_endtie
_080D96A4: .4byte SampleFreqSet
_080D96A8: .4byte TrackStop
_080D96AC: .4byte FadeOutBody
_080D96B0: .4byte TrkVolPitSet
_080D96B4: .4byte CgbSound
_080D96B8: .4byte CgbOscOff
_080D96BC: .4byte MidiKeyToCgbFreq
_080D96C0: .4byte 0x00000000
_080D96C4: .4byte 0x05000040

	thumb_func_start MusicPlayerJumpTableCopy
MusicPlayerJumpTableCopy: @ 0x080D96C8
	svc #0x2a
	bx lr

	thumb_func_start ClearChain
ClearChain: @ 0x080D96CC
	push {lr}
	ldr r1, _080D96DC @ =0x03005EF8
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_080D96DC: .4byte 0x03005EF8

	thumb_func_start Clear64byte
Clear64byte: @ 0x080D96E0
	push {lr}
	ldr r1, _080D96F0 @ =0x03005EFC
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_080D96F0: .4byte 0x03005EFC

	thumb_func_start SoundInit
SoundInit: @ 0x080D96F4
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r3, #0
	str r3, [r5]
	ldr r2, _080D978C @ =0x040000C4
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	beq _080D9710
	ldr r0, _080D9790 @ =0x84400004
	str r0, [r2]
_080D9710:
	ldr r1, _080D9794 @ =0x040000C6
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #0x42
	movs r0, #0x8f
	strh r0, [r1]
	subs r1, #2
	ldr r2, _080D9798 @ =0x00000B0E
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _080D979C @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _080D97A0 @ =0x040000BC
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _080D97A4 @ =0x040000A0
	str r0, [r1]
	ldr r0, _080D97A8 @ =0x03007FF0
	str r5, [r0]
	str r3, [sp]
	ldr r2, _080D97AC @ =0x05000260
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #8
	strb r0, [r5, #6]
	movs r0, #0xf
	strb r0, [r5, #7]
	ldr r0, _080D97B0 @ =MP2K_event_nxx
	str r0, [r5, #0x38]
	ldr r0, _080D97B4 @ =MP2K_event_null
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	str r0, [r5, #0x3c]
	ldr r4, _080D97B8 @ =0x03005E70
	adds r0, r4, #0
	bl MPlayJumpTableCopy
	str r4, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl SampleFreqSet
	ldr r0, _080D97BC @ =0x68736D53
	str r0, [r5]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080D978C: .4byte 0x040000C4
_080D9790: .4byte 0x84400004
_080D9794: .4byte 0x040000C6
_080D9798: .4byte 0x00000B0E
_080D979C: .4byte 0x04000089
_080D97A0: .4byte 0x040000BC
_080D97A4: .4byte 0x040000A0
_080D97A8: .4byte 0x03007FF0
_080D97AC: .4byte 0x05000260
_080D97B0: .4byte MP2K_event_nxx
_080D97B4: .4byte MP2K_event_null
_080D97B8: .4byte 0x03005E70
_080D97BC: .4byte 0x68736D53

	thumb_func_start SampleFreqSet
SampleFreqSet: @ 0x080D97C0
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, _080D9840 @ =0x03007FF0
	ldr r4, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r2
	lsrs r2, r0, #0x10
	movs r6, #0
	strb r2, [r4, #8]
	ldr r1, _080D9844 @ =0x0827DE28
	subs r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	str r5, [r4, #0x10]
	movs r0, #0xc6
	lsls r0, r0, #3
	adds r1, r5, #0
	bl __divsi3
	strb r0, [r4, #0xb]
	ldr r0, _080D9848 @ =0x00091D1B
	muls r0, r5, r0
	ldr r1, _080D984C @ =0x00001388
	adds r0, r0, r1
	ldr r1, _080D9850 @ =0x00002710
	bl __divsi3
	adds r1, r0, #0
	str r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl __divsi3
	adds r0, #1
	asrs r0, r0, #1
	str r0, [r4, #0x18]
	ldr r0, _080D9854 @ =0x04000102
	strh r6, [r0]
	ldr r4, _080D9858 @ =0x04000100
	ldr r0, _080D985C @ =0x00044940
	adds r1, r5, #0
	bl __divsi3
	rsbs r0, r0, #0
	strh r0, [r4]
	bl m4aSoundVSyncOn
	ldr r1, _080D9860 @ =0x04000006
_080D9824:
	ldrb r0, [r1]
	cmp r0, #0x9f
	beq _080D9824
	ldr r1, _080D9860 @ =0x04000006
_080D982C:
	ldrb r0, [r1]
	cmp r0, #0x9f
	bne _080D982C
	ldr r1, _080D9854 @ =0x04000102
	movs r0, #0x80
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080D9840: .4byte 0x03007FF0
_080D9844: .4byte 0x0827DE28
_080D9848: .4byte 0x00091D1B
_080D984C: .4byte 0x00001388
_080D9850: .4byte 0x00002710
_080D9854: .4byte 0x04000102
_080D9858: .4byte 0x04000100
_080D985C: .4byte 0x00044940
_080D9860: .4byte 0x04000006

	thumb_func_start m4aSoundMode
m4aSoundMode: @ 0x080D9864
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _080D98F0 @ =0x03007FF0
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _080D98F4 @ =0x68736D53
	cmp r1, r0
	bne _080D98EA
	adds r0, r1, #1
	str r0, [r5]
	movs r4, #0xff
	ands r4, r3
	cmp r4, #0
	beq _080D9886
	movs r0, #0x7f
	ands r4, r0
	strb r4, [r5, #5]
_080D9886:
	movs r4, #0xf0
	lsls r4, r4, #4
	ands r4, r3
	cmp r4, #0
	beq _080D98A6
	lsrs r0, r4, #8
	strb r0, [r5, #6]
	movs r4, #0xc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
_080D989C:
	strb r1, [r0]
	subs r4, #1
	adds r0, #0x40
	cmp r4, #0
	bne _080D989C
_080D98A6:
	movs r4, #0xf0
	lsls r4, r4, #8
	ands r4, r3
	cmp r4, #0
	beq _080D98B4
	lsrs r0, r4, #0xc
	strb r0, [r5, #7]
_080D98B4:
	movs r4, #0xb0
	lsls r4, r4, #0x10
	ands r4, r3
	cmp r4, #0
	beq _080D98D2
	movs r0, #0xc0
	lsls r0, r0, #0xe
	ands r0, r4
	lsrs r4, r0, #0xe
	ldr r2, _080D98F8 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
_080D98D2:
	movs r4, #0xf0
	lsls r4, r4, #0xc
	ands r4, r3
	cmp r4, #0
	beq _080D98E6
	bl m4aSoundVSyncOff
	adds r0, r4, #0
	bl SampleFreqSet
_080D98E6:
	ldr r0, _080D98F4 @ =0x68736D53
	str r0, [r5]
_080D98EA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080D98F0: .4byte 0x03007FF0
_080D98F4: .4byte 0x68736D53
_080D98F8: .4byte 0x04000089

	thumb_func_start SoundClear
SoundClear: @ 0x080D98FC
	push {r4, r5, r6, r7, lr}
	ldr r0, _080D9948 @ =0x03007FF0
	ldr r6, [r0]
	ldr r1, [r6]
	ldr r0, _080D994C @ =0x68736D53
	cmp r1, r0
	bne _080D9942
	adds r0, r1, #1
	str r0, [r6]
	movs r5, #0xc
	adds r4, r6, #0
	adds r4, #0x50
	movs r0, #0
_080D9916:
	strb r0, [r4]
	subs r5, #1
	adds r4, #0x40
	cmp r5, #0
	bgt _080D9916
	ldr r4, [r6, #0x1c]
	cmp r4, #0
	beq _080D993E
	movs r5, #1
	movs r7, #0
_080D992A:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	ldr r1, [r6, #0x2c]
	bl _call_via_r1
	strb r7, [r4]
	adds r5, #1
	adds r4, #0x40
	cmp r5, #4
	ble _080D992A
_080D993E:
	ldr r0, _080D994C @ =0x68736D53
	str r0, [r6]
_080D9942:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D9948: .4byte 0x03007FF0
_080D994C: .4byte 0x68736D53

	thumb_func_start m4aSoundVSyncOff
m4aSoundVSyncOff: @ 0x080D9950
	push {lr}
	sub sp, #4
	ldr r0, _080D999C @ =0x03007FF0
	ldr r2, [r0]
	ldr r1, [r2]
	ldr r3, _080D99A0 @ =0x978C92AD
	adds r0, r1, r3
	cmp r0, #1
	bhi _080D9996
	adds r0, r1, #0
	adds r0, #0xa
	str r0, [r2]
	ldr r3, _080D99A4 @ =0x040000C4
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	beq _080D997A
	ldr r0, _080D99A8 @ =0x84400004
	str r0, [r3]
_080D997A:
	ldr r1, _080D99AC @ =0x040000C6
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	strh r0, [r1]
	movs r0, #0
	str r0, [sp]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r2, r0
	ldr r2, _080D99B0 @ =0x0500018C
	mov r0, sp
	bl CpuSet
_080D9996:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080D999C: .4byte 0x03007FF0
_080D99A0: .4byte 0x978C92AD
_080D99A4: .4byte 0x040000C4
_080D99A8: .4byte 0x84400004
_080D99AC: .4byte 0x040000C6
_080D99B0: .4byte 0x0500018C

	thumb_func_start m4aSoundVSyncOn
m4aSoundVSyncOn: @ 0x080D99B4
	push {r4, lr}
	ldr r0, _080D99E0 @ =0x03007FF0
	ldr r2, [r0]
	ldr r3, [r2]
	ldr r0, _080D99E4 @ =0x68736D53
	cmp r3, r0
	beq _080D99D8
	ldr r1, _080D99E8 @ =0x040000C6
	movs r4, #0xb6
	lsls r4, r4, #8
	adds r0, r4, #0
	strh r0, [r1]
	ldrb r0, [r2, #4]
	movs r0, #0
	strb r0, [r2, #4]
	adds r0, r3, #0
	subs r0, #0xa
	str r0, [r2]
_080D99D8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D99E0: .4byte 0x03007FF0
_080D99E4: .4byte 0x68736D53
_080D99E8: .4byte 0x040000C6

	thumb_func_start MPlayOpen
MPlayOpen: @ 0x080D99EC
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	cmp r4, #0
	beq _080D9A50
	cmp r4, #0x10
	bls _080D9A00
	movs r4, #0x10
_080D9A00:
	ldr r0, _080D9A58 @ =0x03007FF0
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _080D9A5C @ =0x68736D53
	cmp r1, r0
	bne _080D9A50
	adds r0, r1, #1
	str r0, [r5]
	adds r0, r7, #0
	bl Clear64byte
	str r6, [r7, #0x2c]
	strb r4, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	cmp r4, #0
	beq _080D9A34
	movs r1, #0
_080D9A26:
	strb r1, [r6]
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, #0x50
	cmp r4, #0
	bne _080D9A26
_080D9A34:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _080D9A44
	str r0, [r7, #0x38]
	ldr r0, [r5, #0x24]
	str r0, [r7, #0x3c]
	movs r0, #0
	str r0, [r5, #0x20]
_080D9A44:
	str r7, [r5, #0x24]
	ldr r0, _080D9A60 @ =MP2KPlayerMain
	str r0, [r5, #0x20]
	ldr r0, _080D9A5C @ =0x68736D53
	str r0, [r5]
	str r0, [r7, #0x34]
_080D9A50:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D9A58: .4byte 0x03007FF0
_080D9A5C: .4byte 0x68736D53
_080D9A60: .4byte MP2KPlayerMain

	thumb_func_start MPlayStart
MPlayStart: @ 0x080D9A64
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, [r5, #0x34]
	ldr r0, _080D9B44 @ =0x68736D53
	cmp r1, r0
	bne _080D9B3A
	ldrb r0, [r5, #0xb]
	ldrb r2, [r7, #2]
	cmp r0, #0
	beq _080D9AA6
	ldr r0, [r5]
	cmp r0, #0
	beq _080D9A90
	ldr r1, [r5, #0x2c]
	movs r0, #0x40
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _080D9A9C
_080D9A90:
	ldr r1, [r5, #4]
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _080D9AA6
	cmp r1, #0
	blt _080D9AA6
_080D9A9C:
	ldrb r0, [r7, #2]
	adds r2, r0, #0
	ldrb r0, [r5, #9]
	cmp r0, r2
	bhi _080D9B3A
_080D9AA6:
	ldr r0, [r5, #0x34]
	adds r0, #1
	str r0, [r5, #0x34]
	movs r1, #0
	str r1, [r5, #4]
	str r7, [r5]
	ldr r0, [r7, #4]
	str r0, [r5, #0x30]
	strb r2, [r5, #9]
	str r1, [r5, #0xc]
	movs r0, #0x96
	strh r0, [r5, #0x1c]
	strh r0, [r5, #0x20]
	adds r0, #0x6a
	strh r0, [r5, #0x1e]
	strh r1, [r5, #0x22]
	strh r1, [r5, #0x24]
	movs r6, #0
	ldr r4, [r5, #0x2c]
	ldrb r1, [r7]
	cmp r6, r1
	bge _080D9B06
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _080D9B26
	mov r8, r6
_080D9ADA:
	adds r0, r5, #0
	adds r1, r4, #0
	bl TrackStop
	movs r0, #0xc0
	strb r0, [r4]
	mov r1, r8
	str r1, [r4, #0x20]
	lsls r1, r6, #2
	adds r0, r7, #0
	adds r0, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x40]
	adds r6, #1
	adds r4, #0x50
	ldrb r0, [r7]
	cmp r6, r0
	bge _080D9B06
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _080D9ADA
_080D9B06:
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _080D9B26
	movs r1, #0
	mov r8, r1
_080D9B10:
	adds r0, r5, #0
	adds r1, r4, #0
	bl TrackStop
	mov r0, r8
	strb r0, [r4]
	adds r6, #1
	adds r4, #0x50
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _080D9B10
_080D9B26:
	movs r0, #0x80
	ldrb r1, [r7, #3]
	ands r0, r1
	cmp r0, #0
	beq _080D9B36
	ldrb r0, [r7, #3]
	bl m4aSoundMode
_080D9B36:
	ldr r0, _080D9B44 @ =0x68736D53
	str r0, [r5, #0x34]
_080D9B3A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D9B44: .4byte 0x68736D53

	thumb_func_start MPlayStop
MPlayStop: @ 0x080D9B48
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x34]
	ldr r0, _080D9B84 @ =0x68736D53
	cmp r1, r0
	bne _080D9B7E
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r6, #4]
	ldrb r4, [r6, #8]
	ldr r5, [r6, #0x2c]
	cmp r4, #0
	ble _080D9B7A
_080D9B6A:
	adds r0, r6, #0
	adds r1, r5, #0
	bl TrackStop
	subs r4, #1
	adds r5, #0x50
	cmp r4, #0
	bgt _080D9B6A
_080D9B7A:
	ldr r0, _080D9B84 @ =0x68736D53
	str r0, [r6, #0x34]
_080D9B7E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080D9B84: .4byte 0x68736D53

	thumb_func_start FadeOutBody
FadeOutBody: @ 0x080D9B88
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r1, [r6, #0x24]
	cmp r1, #0
	beq _080D9C4A
	ldrh r0, [r6, #0x26]
	subs r0, #1
	strh r0, [r6, #0x26]
	ldr r3, _080D9BC8 @ =0x0000FFFF
	adds r2, r3, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _080D9C4A
	strh r1, [r6, #0x26]
	ldrh r1, [r6, #0x28]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080D9BCC
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	cmp r0, #0xff
	bls _080D9C1E
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #0x28]
	strh r3, [r6, #0x24]
	b _080D9C1E
	.align 2, 0
_080D9BC8: .4byte 0x0000FFFF
_080D9BCC:
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080D9C1E
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _080D9BFE
_080D9BE2:
	adds r0, r6, #0
	adds r1, r4, #0
	bl TrackStop
	movs r0, #1
	ldrh r7, [r6, #0x28]
	ands r0, r7
	cmp r0, #0
	bne _080D9BF6
	strb r0, [r4]
_080D9BF6:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _080D9BE2
_080D9BFE:
	movs r0, #1
	ldrh r1, [r6, #0x28]
	ands r0, r1
	cmp r0, #0
	beq _080D9C12
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	b _080D9C16
_080D9C12:
	movs r0, #0x80
	lsls r0, r0, #0x18
_080D9C16:
	str r0, [r6, #4]
	movs r0, #0
	strh r0, [r6, #0x24]
	b _080D9C4A
_080D9C1E:
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _080D9C4A
	movs r3, #0x80
	movs r7, #0
	movs r2, #3
_080D9C2C:
	ldrb r1, [r4]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080D9C42
	ldrh r7, [r6, #0x28]
	lsrs r0, r7, #2
	strb r0, [r4, #0x13]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r4]
_080D9C42:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _080D9C2C
_080D9C4A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start TrkVolPitSet
TrkVolPitSet: @ 0x080D9C50
	push {r4, lr}
	adds r2, r1, #0
	movs r0, #1
	ldrb r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _080D9CB4
	ldrb r3, [r2, #0x13]
	ldrb r1, [r2, #0x12]
	adds r0, r3, #0
	muls r0, r1, r0
	lsrs r3, r0, #5
	ldrb r4, [r2, #0x18]
	cmp r4, #1
	bne _080D9C78
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r3, r0, #7
_080D9C78:
	movs r0, #0x14
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	movs r1, #0x15
	ldrsb r1, [r2, r1]
	adds r1, r0, r1
	cmp r4, #2
	bne _080D9C8E
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
_080D9C8E:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080D9C9A
	adds r1, r0, #0
	b _080D9CA0
_080D9C9A:
	cmp r1, #0x7f
	ble _080D9CA0
	movs r1, #0x7f
_080D9CA0:
	adds r0, r1, #0
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x10]
	movs r0, #0x7f
	subs r0, r0, r1
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x11]
_080D9CB4:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _080D9CF8
	movs r0, #0xe
	ldrsb r0, [r2, r0]
	ldrb r1, [r2, #0xf]
	muls r0, r1, r0
	movs r1, #0xc
	ldrsb r1, [r2, r1]
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r0, #0xa
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	movs r0, #0xb
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	adds r1, r0, r1
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	bne _080D9CF2
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	lsls r0, r0, #4
	adds r1, r1, r0
_080D9CF2:
	asrs r0, r1, #8
	strb r0, [r2, #8]
	strb r1, [r2, #9]
_080D9CF8:
	movs r0, #0xfa
	ands r0, r3
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start MidiKeyToCgbFreq
MidiKeyToCgbFreq: @ 0x080D9D04
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov ip, r2
	cmp r0, #4
	bne _080D9D3C
	cmp r5, #0x14
	bhi _080D9D20
	movs r5, #0
	b _080D9D2E
_080D9D20:
	adds r0, r5, #0
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _080D9D2E
	movs r5, #0x3b
_080D9D2E:
	ldr r0, _080D9D38 @ =0x0827DEDC
	adds r0, r5, r0
	ldrb r0, [r0]
	b _080D9D9E
	.align 2, 0
_080D9D38: .4byte 0x0827DEDC
_080D9D3C:
	cmp r5, #0x23
	bhi _080D9D48
	movs r0, #0
	mov ip, r0
	movs r5, #0
	b _080D9D5A
_080D9D48:
	adds r0, r5, #0
	subs r0, #0x24
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x82
	bls _080D9D5A
	movs r5, #0x82
	movs r1, #0xff
	mov ip, r1
_080D9D5A:
	ldr r3, _080D9DA4 @ =0x0827DE40
	adds r0, r5, r3
	ldrb r6, [r0]
	ldr r4, _080D9DA8 @ =0x0827DEC4
	movs r2, #0xf
	adds r0, r6, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r7, #0
	ldrsh r1, [r0, r7]
	asrs r0, r6, #4
	adds r6, r1, #0
	asrs r6, r0
	adds r0, r5, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r1, r1, #4
	asrs r0, r1
	subs r0, r0, r6
	mov r7, ip
	muls r7, r0, r7
	adds r0, r7, #0
	asrs r0, r0, #8
	adds r0, r6, r0
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
_080D9D9E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080D9DA4: .4byte 0x0827DE40
_080D9DA8: .4byte 0x0827DEC4

	thumb_func_start CgbOscOff
CgbOscOff: @ 0x080D9DAC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #2
	beq _080D9DD4
	cmp r0, #2
	bgt _080D9DC0
	cmp r0, #1
	beq _080D9DC6
	b _080D9DE8
_080D9DC0:
	cmp r1, #3
	beq _080D9DDC
	b _080D9DE8
_080D9DC6:
	ldr r1, _080D9DD0 @ =0x04000063
	movs r0, #8
	strb r0, [r1]
	adds r1, #2
	b _080D9DF0
	.align 2, 0
_080D9DD0: .4byte 0x04000063
_080D9DD4:
	ldr r1, _080D9DD8 @ =0x04000069
	b _080D9DEA
	.align 2, 0
_080D9DD8: .4byte 0x04000069
_080D9DDC:
	ldr r1, _080D9DE4 @ =0x04000070
	movs r0, #0
	b _080D9DF2
	.align 2, 0
_080D9DE4: .4byte 0x04000070
_080D9DE8:
	ldr r1, _080D9DF8 @ =0x04000079
_080D9DEA:
	movs r0, #8
	strb r0, [r1]
	adds r1, #4
_080D9DF0:
	movs r0, #0x80
_080D9DF2:
	strb r0, [r1]
	bx lr
	.align 2, 0
_080D9DF8: .4byte 0x04000079

	thumb_func_start CgbModVol
CgbModVol: @ 0x080D9DFC
	push {r4, lr}
	adds r1, r0, #0
	ldrb r0, [r1, #2]
	lsls r2, r0, #0x18
	lsrs r4, r2, #0x18
	ldrb r3, [r1, #3]
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
	cmp r4, r3
	blo _080D9E1C
	lsrs r0, r2, #0x19
	cmp r0, r3
	blo _080D9E28
	movs r0, #0xf
	strb r0, [r1, #0x1b]
	b _080D9E36
_080D9E1C:
	lsrs r0, r0, #0x19
	cmp r0, r4
	blo _080D9E28
	movs r0, #0xf0
	strb r0, [r1, #0x1b]
	b _080D9E36
_080D9E28:
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	b _080D9E46
_080D9E36:
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	strb r0, [r1, #0xa]
	cmp r0, #0xf
	bls _080D9E48
	movs r0, #0xf
_080D9E46:
	strb r0, [r1, #0xa]
_080D9E48:
	ldrb r2, [r1, #6]
	ldrb r3, [r1, #0xa]
	adds r0, r2, #0
	muls r0, r3, r0
	adds r0, #0xf
	asrs r0, r0, #4
	strb r0, [r1, #0x19]
	ldrb r0, [r1, #0x1c]
	ldrb r2, [r1, #0x1b]
	ands r0, r2
	strb r0, [r1, #0x1b]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start CgbSound
CgbSound: @ 0x080D9E64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _080D9E84 @ =0x03007FF0
	ldr r0, [r0]
	str r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _080D9E88
	subs r0, #1
	ldr r1, [sp, #4]
	strb r0, [r1, #0xa]
	b _080D9E8E
	.align 2, 0
_080D9E84: .4byte 0x03007FF0
_080D9E88:
	movs r0, #0xe
	ldr r2, [sp, #4]
	strb r0, [r2, #0xa]
_080D9E8E:
	movs r6, #1
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
_080D9E94:
	ldrb r1, [r4]
	movs r0, #0xc7
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	bne _080D9EAA
	b _080DA294
_080D9EAA:
	cmp r6, #2
	beq _080D9EDC
	cmp r6, #2
	bgt _080D9EB8
	cmp r6, #1
	beq _080D9EBE
	b _080D9F14
_080D9EB8:
	cmp r6, #3
	beq _080D9EF4
	b _080D9F14
_080D9EBE:
	ldr r0, _080D9ED0 @ =0x04000060
	str r0, [sp, #8]
	ldr r7, _080D9ED4 @ =0x04000062
	ldr r2, _080D9ED8 @ =0x04000063
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _080D9F24
	.align 2, 0
_080D9ED0: .4byte 0x04000060
_080D9ED4: .4byte 0x04000062
_080D9ED8: .4byte 0x04000063
_080D9EDC:
	ldr r0, _080D9EE8 @ =0x04000061
	str r0, [sp, #8]
	ldr r7, _080D9EEC @ =0x04000068
	ldr r2, _080D9EF0 @ =0x04000069
	b _080D9F1C
	.align 2, 0
_080D9EE8: .4byte 0x04000061
_080D9EEC: .4byte 0x04000068
_080D9EF0: .4byte 0x04000069
_080D9EF4:
	ldr r0, _080D9F08 @ =0x04000070
	str r0, [sp, #8]
	ldr r7, _080D9F0C @ =0x04000072
	ldr r2, _080D9F10 @ =0x04000073
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _080D9F24
	.align 2, 0
_080D9F08: .4byte 0x04000070
_080D9F0C: .4byte 0x04000072
_080D9F10: .4byte 0x04000073
_080D9F14:
	ldr r0, _080D9F74 @ =0x04000071
	str r0, [sp, #8]
	ldr r7, _080D9F78 @ =0x04000078
	ldr r2, _080D9F7C @ =0x04000079
_080D9F1C:
	str r2, [sp, #0xc]
	adds r0, #0xb
	str r0, [sp, #0x10]
	adds r2, #4
_080D9F24:
	str r2, [sp, #0x14]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	mov r8, r0
	adds r2, r1, #0
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _080DA01A
	movs r3, #0x40
	adds r0, r3, #0
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #1
	mov sl, r0
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r5, #0
	bne _080DA03E
	movs r0, #3
	strb r0, [r4]
	strb r0, [r4, #0x1d]
	adds r0, r4, #0
	str r3, [sp, #0x18]
	bl CgbModVol
	ldr r3, [sp, #0x18]
	cmp r6, #2
	beq _080D9F8C
	cmp r6, #2
	bgt _080D9F80
	cmp r6, #1
	beq _080D9F86
	b _080D9FE0
	.align 2, 0
_080D9F74: .4byte 0x04000071
_080D9F78: .4byte 0x04000078
_080D9F7C: .4byte 0x04000079
_080D9F80:
	cmp r6, #3
	beq _080D9F98
	b _080D9FE0
_080D9F86:
	ldrb r0, [r4, #0x1f]
	ldr r2, [sp, #8]
	strb r0, [r2]
_080D9F8C:
	ldr r0, [r4, #0x24]
	lsls r0, r0, #6
	ldrb r1, [r4, #0x1e]
	adds r0, r1, r0
	strb r0, [r7]
	b _080D9FEC
_080D9F98:
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	beq _080D9FC0
	ldr r2, [sp, #8]
	strb r3, [r2]
	ldr r1, _080D9FD4 @ =0x04000090
	ldr r2, [r4, #0x24]
	ldr r0, [r2]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #4]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #8]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #0xc]
	str r0, [r1]
	str r2, [r4, #0x28]
_080D9FC0:
	ldr r0, [sp, #8]
	strb r5, [r0]
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _080D9FD8
	movs r0, #0xc0
	b _080D9FFA
	.align 2, 0
_080D9FD4: .4byte 0x04000090
_080D9FD8:
	movs r1, #0x80
	rsbs r1, r1, #0
	strb r1, [r4, #0x1a]
	b _080D9FFC
_080D9FE0:
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldr r0, [r4, #0x24]
	lsls r0, r0, #3
	ldr r2, [sp, #0x10]
	strb r0, [r2]
_080D9FEC:
	ldrb r0, [r4, #4]
	adds r0, #8
	mov r8, r0
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _080D9FFA
	movs r0, #0x40
_080D9FFA:
	strb r0, [r4, #0x1a]
_080D9FFC:
	ldrb r1, [r4, #4]
	movs r2, #0
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	adds r1, r6, #1
	mov sl, r1
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r0, #0
	bne _080DA016
	b _080DA152
_080DA016:
	strb r2, [r4, #9]
	b _080DA180
_080DA01A:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _080DA04C
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	movs r2, #0xff
	ands r0, r2
	lsls r0, r0, #0x18
	adds r1, r6, #1
	mov sl, r1
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	ble _080DA03E
	b _080DA192
_080DA03E:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl CgbOscOff
	movs r0, #0
	strb r0, [r4]
	b _080DA290
_080DA04C:
	movs r0, #0x40
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	beq _080DA08C
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080DA08C
	movs r0, #0xfc
	ands r0, r1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #7]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _080DA0BE
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _080DA180
	ldrb r2, [r4, #7]
	mov r8, r2
	b _080DA180
_080DA08C:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080DA180
	cmp r6, #3
	bne _080DA09E
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
_080DA09E:
	adds r0, r4, #0
	bl CgbModVol
	movs r0, #3
	ldrb r2, [r4]
	ands r0, r2
	cmp r0, #0
	bne _080DA0F2
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080DA0EE
_080DA0BE:
	ldrb r2, [r4, #0xc]
	ldrb r1, [r4, #0xa]
	adds r0, r2, #0
	muls r0, r1, r0
	adds r0, #0xff
	asrs r0, r0, #8
	movs r1, #0
	strb r0, [r4, #9]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080DA03E
	movs r0, #4
	ldrb r2, [r4]
	orrs r0, r2
	strb r0, [r4]
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _080DA192
	movs r2, #8
	mov r8, r2
	b _080DA192
_080DA0EE:
	ldrb r0, [r4, #7]
	b _080DA17E
_080DA0F2:
	cmp r0, #1
	bne _080DA0FE
_080DA0F6:
	ldrb r0, [r4, #0x19]
	strb r0, [r4, #9]
	movs r0, #7
	b _080DA17E
_080DA0FE:
	cmp r0, #2
	bne _080DA142
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	ldrb r2, [r4, #0x19]
	lsls r1, r2, #0x18
	cmp r0, r1
	bgt _080DA13E
_080DA116:
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _080DA126
	movs r0, #0xfc
	ldrb r1, [r4]
	ands r0, r1
	strb r0, [r4]
	b _080DA0BE
_080DA126:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	orrs r0, r2
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _080DA0F6
	movs r0, #8
	mov r8, r0
	b _080DA0F6
_080DA13E:
	ldrb r0, [r4, #5]
	b _080DA17E
_080DA142:
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	ldrb r2, [r4, #0xa]
	cmp r0, r2
	blo _080DA17C
_080DA152:
	ldrb r0, [r4]
	subs r0, #1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #5]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _080DA116
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #9]
	cmp r6, #3
	beq _080DA180
	ldrb r2, [r4, #5]
	mov r8, r2
	b _080DA180
_080DA17C:
	ldrb r0, [r4, #4]
_080DA17E:
	strb r0, [r4, #0xb]
_080DA180:
	ldrb r0, [r4, #0xb]
	subs r0, #1
	strb r0, [r4, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	bne _080DA192
	subs r0, #1
	str r0, [sp]
	b _080DA08C
_080DA192:
	movs r0, #2
	ldrb r1, [r4, #0x1d]
	ands r0, r1
	cmp r0, #0
	beq _080DA20A
	cmp r6, #3
	bgt _080DA1D2
	movs r0, #8
	ldrb r2, [r4, #1]
	ands r0, r2
	cmp r0, #0
	beq _080DA1D2
	ldr r0, _080DA1BC @ =0x04000089
	ldrb r0, [r0]
	cmp r0, #0x3f
	bgt _080DA1C4
	ldr r0, [r4, #0x20]
	adds r0, #2
	ldr r1, _080DA1C0 @ =0x000007FC
	b _080DA1CE
	.align 2, 0
_080DA1BC: .4byte 0x04000089
_080DA1C0: .4byte 0x000007FC
_080DA1C4:
	cmp r0, #0x7f
	bgt _080DA1D2
	ldr r0, [r4, #0x20]
	adds r0, #1
	ldr r1, _080DA1E0 @ =0x000007FE
_080DA1CE:
	ands r0, r1
	str r0, [r4, #0x20]
_080DA1D2:
	cmp r6, #4
	beq _080DA1E4
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	b _080DA1F2
	.align 2, 0
_080DA1E0: .4byte 0x000007FE
_080DA1E4:
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	movs r1, #8
	ands r1, r0
	ldr r0, [r4, #0x20]
	orrs r0, r1
	strb r0, [r2]
_080DA1F2:
	movs r0, #0xc0
	ldrb r1, [r4, #0x1a]
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x21
	ldrb r1, [r1]
	adds r0, r1, r0
	strb r0, [r4, #0x1a]
	movs r2, #0xff
	ands r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_080DA20A:
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	ands r0, r2
	cmp r0, #0
	beq _080DA290
	ldr r1, _080DA254 @ =0x04000081
	ldrb r0, [r1]
	ldrb r2, [r4, #0x1c]
	bics r0, r2
	ldrb r2, [r4, #0x1b]
	orrs r0, r2
	strb r0, [r1]
	cmp r6, #3
	bne _080DA25C
	ldr r0, _080DA258 @ =0x0827DF18
	ldrb r1, [r4, #9]
	adds r0, r1, r0
	ldrb r0, [r0]
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	movs r1, #0x80
	adds r0, r1, #0
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	cmp r0, #0
	beq _080DA290
	ldr r0, [sp, #8]
	strb r1, [r0]
	ldrb r0, [r4, #0x1a]
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	movs r0, #0x7f
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	strb r0, [r4, #0x1a]
	b _080DA290
	.align 2, 0
_080DA254: .4byte 0x04000081
_080DA258: .4byte 0x0827DF18
_080DA25C:
	movs r0, #0xf
	mov r1, r8
	ands r1, r0
	mov r8, r1
	ldrb r2, [r4, #9]
	lsls r0, r2, #4
	add r0, r8
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	movs r2, #0x80
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	cmp r6, #1
	bne _080DA290
	ldr r0, [sp, #8]
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080DA290
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_080DA290:
	movs r0, #0
	strb r0, [r4, #0x1d]
_080DA294:
	mov r6, sl
	mov r4, sb
	cmp r6, #4
	bgt _080DA29E
	b _080D9E94
_080DA29E:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aMPlayTempoControl
m4aMPlayTempoControl: @ 0x080DA2B0
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _080DA2D4 @ =0x68736D53
	cmp r3, r0
	bne _080DA2CC
	strh r1, [r2, #0x1e]
	ldrh r4, [r2, #0x1c]
	adds r0, r1, #0
	muls r0, r4, r0
	asrs r0, r0, #8
	strh r0, [r2, #0x20]
_080DA2CC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DA2D4: .4byte 0x68736D53

	thumb_func_start m4aMPlayVolumeControl
m4aMPlayVolumeControl: @ 0x080DA2D8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _080DA33C @ =0x68736D53
	cmp r3, r0
	bne _080DA330
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _080DA32C
	movs r0, #0x80
	mov r8, r0
	lsrs r6, r6, #0x12
	movs r0, #3
	mov ip, r0
_080DA308:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _080DA322
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _080DA322
	strb r6, [r1, #0x13]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_080DA322:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _080DA308
_080DA32C:
	ldr r0, _080DA33C @ =0x68736D53
	str r0, [r4, #0x34]
_080DA330:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DA33C: .4byte 0x68736D53

	thumb_func_start m4aMPlayPitchControl
m4aMPlayPitchControl: @ 0x080DA340
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _080DA3B0 @ =0x68736D53
	cmp r3, r0
	bne _080DA3A2
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r3, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _080DA39E
	movs r0, #0x80
	mov sb, r0
	lsls r0, r6, #0x10
	asrs r7, r0, #0x18
	movs r0, #0xc
	mov r8, r0
_080DA378:
	mov r0, ip
	ands r0, r5
	cmp r0, #0
	beq _080DA394
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _080DA394
	strb r7, [r3, #0xb]
	strb r6, [r3, #0xd]
	mov r0, r8
	orrs r0, r1
	strb r0, [r3]
_080DA394:
	subs r2, #1
	adds r3, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _080DA378
_080DA39E:
	ldr r0, _080DA3B0 @ =0x68736D53
	str r0, [r4, #0x34]
_080DA3A2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DA3B0: .4byte 0x68736D53

	thumb_func_start m4aMPlayPanpotControl
m4aMPlayPanpotControl: @ 0x080DA3B4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	ldr r3, [r4, #0x34]
	ldr r0, _080DA418 @ =0x68736D53
	cmp r3, r0
	bne _080DA40C
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _080DA408
	movs r0, #0x80
	mov r8, r0
	movs r0, #3
	mov ip, r0
_080DA3E4:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _080DA3FE
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _080DA3FE
	strb r6, [r1, #0x15]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_080DA3FE:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _080DA3E4
_080DA408:
	ldr r0, _080DA418 @ =0x68736D53
	str r0, [r4, #0x34]
_080DA40C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DA418: .4byte 0x68736D53

	thumb_func_start ClearModM
ClearModM: @ 0x080DA41C
	adds r1, r0, #0
	movs r2, #0
	movs r0, #0
	strb r0, [r1, #0x1a]
	strb r0, [r1, #0x16]
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _080DA430
	movs r0, #0xc
	b _080DA432
_080DA430:
	movs r0, #3
_080DA432:
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	bx lr
	.align 2, 0

	thumb_func_start m4aMPlayModDepthSet
m4aMPlayModDepthSet: @ 0x080DA43C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6, #0x34]
	ldr r0, _080DA4AC @ =0x68736D53
	cmp r1, r0
	bne _080DA49C
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _080DA498
	mov sb, r8
_080DA46C:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _080DA48E
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _080DA48E
	mov r0, r8
	strb r0, [r4, #0x17]
	mov r1, sb
	cmp r1, #0
	bne _080DA48E
	adds r0, r4, #0
	bl ClearModM
_080DA48E:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _080DA46C
_080DA498:
	ldr r0, _080DA4AC @ =0x68736D53
	str r0, [r6, #0x34]
_080DA49C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DA4AC: .4byte 0x68736D53

	thumb_func_start m4aMPlayLFOSpeedSet
m4aMPlayLFOSpeedSet: @ 0x080DA4B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6, #0x34]
	ldr r0, _080DA520 @ =0x68736D53
	cmp r1, r0
	bne _080DA510
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _080DA50C
	mov sb, r8
_080DA4E0:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _080DA502
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _080DA502
	mov r0, r8
	strb r0, [r4, #0x19]
	mov r1, sb
	cmp r1, #0
	bne _080DA502
	adds r0, r4, #0
	bl ClearModM
_080DA502:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _080DA4E0
_080DA50C:
	ldr r0, _080DA520 @ =0x68736D53
	str r0, [r6, #0x34]
_080DA510:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DA520: .4byte 0x68736D53

	thumb_func_start MP2K_event_memacc
MP2K_event_memacc: @ 0x080DA524
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r1, [r6, #0x40]
	ldrb r5, [r1]
	adds r2, r1, #1
	str r2, [r6, #0x40]
	ldr r0, [r4, #0x18]
	ldrb r1, [r1, #1]
	adds r3, r1, r0
	adds r0, r2, #1
	str r0, [r6, #0x40]
	ldrb r2, [r2, #1]
	adds r0, #1
	str r0, [r6, #0x40]
	cmp r5, #0x11
	bls _080DA548
	b _080DA676
_080DA548:
	lsls r0, r5, #2
	ldr r1, _080DA554 @ =_080DA558
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080DA554: .4byte _080DA558
_080DA558: @ jump table
	.4byte _080DA5A0 @ case 0
	.4byte _080DA5A4 @ case 1
	.4byte _080DA5AC @ case 2
	.4byte _080DA5B4 @ case 3
	.4byte _080DA5BE @ case 4
	.4byte _080DA5CC @ case 5
	.4byte _080DA5DA @ case 6
	.4byte _080DA5E2 @ case 7
	.4byte _080DA5EA @ case 8
	.4byte _080DA5F2 @ case 9
	.4byte _080DA5FA @ case 10
	.4byte _080DA602 @ case 11
	.4byte _080DA60A @ case 12
	.4byte _080DA618 @ case 13
	.4byte _080DA626 @ case 14
	.4byte _080DA634 @ case 15
	.4byte _080DA642 @ case 16
	.4byte _080DA650 @ case 17
_080DA5A0:
	strb r2, [r3]
	b _080DA676
_080DA5A4:
	ldrb r1, [r3]
	adds r0, r1, r2
	strb r0, [r3]
	b _080DA676
_080DA5AC:
	ldrb r1, [r3]
	subs r0, r1, r2
	strb r0, [r3]
	b _080DA676
_080DA5B4:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r3]
	b _080DA676
_080DA5BE:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	adds r0, r1, r0
	strb r0, [r3]
	b _080DA676
_080DA5CC:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	subs r0, r1, r0
	strb r0, [r3]
	b _080DA676
_080DA5DA:
	ldrb r3, [r3]
	cmp r3, r2
	beq _080DA65C
	b _080DA670
_080DA5E2:
	ldrb r3, [r3]
	cmp r3, r2
	bne _080DA65C
	b _080DA670
_080DA5EA:
	ldrb r3, [r3]
	cmp r3, r2
	bhi _080DA65C
	b _080DA670
_080DA5F2:
	ldrb r3, [r3]
	cmp r3, r2
	bhs _080DA65C
	b _080DA670
_080DA5FA:
	ldrb r3, [r3]
	cmp r3, r2
	bls _080DA65C
	b _080DA670
_080DA602:
	ldrb r3, [r3]
	cmp r3, r2
	blo _080DA65C
	b _080DA670
_080DA60A:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	beq _080DA65C
	b _080DA670
_080DA618:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bne _080DA65C
	b _080DA670
_080DA626:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhi _080DA65C
	b _080DA670
_080DA634:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _080DA65C
	b _080DA670
_080DA642:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bls _080DA65C
	b _080DA670
_080DA650:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _080DA670
_080DA65C:
	ldr r0, _080DA66C @ =0x03005E74
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	bl _call_via_r2
	b _080DA676
	.align 2, 0
_080DA66C: .4byte 0x03005E74
_080DA670:
	ldr r0, [r6, #0x40]
	adds r0, #4
	str r0, [r6, #0x40]
_080DA676:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start MP2K_event_xcmd
MP2K_event_xcmd: @ 0x080DA67C
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	ldr r2, _080DA698 @ =0x0827DF5C
	lsls r3, r3, #2
	adds r3, r3, r2
	ldr r2, [r3]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_080DA698: .4byte 0x0827DF5C

	thumb_func_start MP2K_event_xxx
MP2K_event_xxx: @ 0x080DA69C
	push {lr}
	ldr r2, _080DA6AC @ =0x03005E70
	ldr r2, [r2]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_080DA6AC: .4byte 0x03005E70

	thumb_func_start MP2K_event_xwave
MP2K_event_xwave: @ 0x080DA6B0
	push {r4, lr}
	ldr r2, [r1, #0x40]
	ldr r0, _080DA6E8 @ =0xFFFFFF00
	ands r4, r0
	ldrb r0, [r2]
	orrs r4, r0
	ldrb r0, [r2, #1]
	lsls r3, r0, #8
	ldr r0, _080DA6EC @ =0xFFFF00FF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #2]
	lsls r3, r0, #0x10
	ldr r0, _080DA6F0 @ =0xFF00FFFF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #3]
	lsls r3, r0, #0x18
	ldr r0, _080DA6F4 @ =0x00FFFFFF
	ands r4, r0
	orrs r4, r3
	str r4, [r1, #0x28]
	adds r2, #4
	str r2, [r1, #0x40]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DA6E8: .4byte 0xFFFFFF00
_080DA6EC: .4byte 0xFFFF00FF
_080DA6F0: .4byte 0xFF00FFFF
_080DA6F4: .4byte 0x00FFFFFF

	thumb_func_start MP2K_event_xtype
MP2K_event_xtype: @ 0x080DA6F8
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	adds r0, r1, #0
	adds r0, #0x24
	strb r2, [r0]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start MP2K_event_xatta
MP2K_event_xatta: @ 0x080DA70C
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	adds r0, r1, #0
	adds r0, #0x2c
	strb r2, [r0]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start MP2K_event_xdeca
MP2K_event_xdeca: @ 0x080DA720
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2d
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start MP2K_event_xsust
MP2K_event_xsust: @ 0x080DA734
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2e
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start MP2K_event_xrele
MP2K_event_xrele: @ 0x080DA748
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2f
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start MP2K_event_xiecv
MP2K_event_xiecv: @ 0x080DA75C
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1e]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start MP2K_event_xiecl
MP2K_event_xiecl: @ 0x080DA768
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1f]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start MP2K_event_xleng
MP2K_event_xleng: @ 0x080DA774
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x26
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start MP2K_event_xswee
MP2K_event_xswee: @ 0x080DA788
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x27
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start MP2K_event_null
MP2K_event_null: @ 0x080DA79C
	bx lr
	.align 2, 0
