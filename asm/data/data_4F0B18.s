	.include "asm/gba_constants.inc"
    .include "asm/macros.inc"

	.syntax unified

    .section .data

    .incbin "cvaos_us_baserom.gba", 0x4F10A0, 0x36C

    .global sUnk_084F140C
sUnk_084F140C: @ 0x084F140C
    .incbin "cvaos_us_baserom.gba", 0x4F140C, 0x2C

    .incbin "cvaos_us_baserom.gba", 0x4F1438, 0x4F1444 - 0x4F1438
