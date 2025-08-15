	.include "asm/gba_constants.inc"
    .include "asm/macros.inc"

	.syntax unified

	thumb_func_start ArcTan2
ArcTan2: @ 0x080D811C
	svc #0xa
	bx lr

	thumb_func_start BgAffineSet
BgAffineSet: @ 0x080D8120
	svc #0xe
	bx lr

	thumb_func_start CpuSet
CpuSet: @ 0x080D8124
	svc #0xb
	bx lr

	thumb_func_start Div
Div: @ 0x080D8128
	svc #6
	bx lr

	thumb_func_start Mod
Mod: @ 0x080D812C
	svc #6
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start IntrWait
IntrWait: @ 0x080D8134
	movs r2, #0
	svc #4
	bx lr
	.align 2, 0

	thumb_func_start LZ77UnCompWram
LZ77UnCompWram: @ 0x080D813C
	svc #0x11
	bx lr

	thumb_func_start SoftReset
SoftReset: @ 0x080D8140
	ldr r3, =REG_IME
	movs r2, #0
	strb r2, [r3]
	ldr r1, =0x03007F00
	mov sp, r1
	svc #1
	svc #0
	movs r0, r0
	.align 2, 0
    .pool

	thumb_func_start Sqrt
Sqrt: @ 0x080D8158
	svc #8
	bx lr

	thumb_func_start VBlankIntrWait
VBlankIntrWait: @ 0x080D815C
	movs r2, #0
	svc #5
	bx lr
	.align 2, 0
