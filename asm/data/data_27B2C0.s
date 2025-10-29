	.include "asm/gba_constants.inc"
    .include "asm/macros.inc"

	.syntax unified

    .section .rodata

    .incbin "cvaos_us_baserom.gba", 0x27B2C0, 0x1A18
