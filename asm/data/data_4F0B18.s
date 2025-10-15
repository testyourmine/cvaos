	.include "asm/gba_constants.inc"
    .include "asm/macros.inc"

	.syntax unified

    .section .data

    .incbin "cvaos_us_baserom.gba", 0x4F1054, 0x3B8

    .global sUnk_084F140C
sUnk_084F140C: @ 0x084F140C
    .incbin "cvaos_us_baserom.gba", 0x4F140C, 0x2C

    .incbin "cvaos_us_baserom.gba", 0x4F1438, 0x15700

    .global sUnk_08506B38
sUnk_08506B38: @ 0x08506B38
    .incbin "cvaos_us_baserom.gba", 0x506B38, 0x2D3C

    .incbin "cvaos_us_baserom.gba", 0x509874, 0x50F4

    .global gUnk_0850E968
gUnk_0850E968: @ 0x0850E968
    .incbin "cvaos_us_baserom.gba", 0x50E968, 0x44

    .incbin "cvaos_us_baserom.gba", 0x50E9AC, 0x55C

    .global gUnk_0850EF08
gUnk_0850EF08: @ 0x0850EF08
    .incbin "cvaos_us_baserom.gba", 0x50EF08, 0x30

    .incbin "cvaos_us_baserom.gba", 0x50EF38, 0x141B14
