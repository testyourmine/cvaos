	.include "asm/gba_constants.inc"
    .include "asm/macros.inc"

	.syntax unified

    .section .data

    .incbin "cvaos_us_baserom.gba", 0x4F158C, 0x506B38 - 0x4F158C

    .global sUnk_08506B38
sUnk_08506B38: @ 0x08506B38
    .incbin "cvaos_us_baserom.gba", 0x506B38, 0x2D3C

    .incbin "cvaos_us_baserom.gba", 0x509874, 0x50E968 - 0x509874

    .global sUnk_0850E968
sUnk_0850E968: @ 0x0850E968
    .incbin "cvaos_us_baserom.gba", 0x50E968, 0x44

    .incbin "cvaos_us_baserom.gba", 0x50E9AC, 0x50EF08 - 0x50E9AC

    .global sUnk_0850EF08
sUnk_0850EF08: @ 0x0850EF08
    .incbin "cvaos_us_baserom.gba", 0x50EF08, 0x30

    .incbin "cvaos_us_baserom.gba", 0x50EF38, 0x650A1C - 0x50EF38
