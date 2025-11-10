	.include "asm/gba_constants.inc"
    .include "asm/macros.inc"

	.syntax unified

    .section .rodata

    .incbin "cvaos_us_baserom.gba", 0xE117C, 0x22E8
