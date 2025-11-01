	.include "asm/gba_constants.inc"
    .include "asm/macros.inc"

	.syntax unified

    .section .rodata

    .incbin "cvaos_us_baserom.gba", 0x0E5364, 0x1AA0

    .global sUnk_080E6E04
sUnk_080E6E04: @ 0x080E6E04
    .incbin "cvaos_us_baserom.gba", 0x0E6E04, 0x1 @ TODO: size

    .incbin "cvaos_us_baserom.gba", 0x0E6E05, 0x1AF

    .global sUnk_080E6FB4
sUnk_080E6FB4: @ 0x080E6FB4
    .incbin "cvaos_us_baserom.gba", 0x0E6FB4, 0x1 @ TODO: size

    .incbin "cvaos_us_baserom.gba", 0x0E6FB5, 0x23F

    .global sUnk_080E71F4
sUnk_080E71F4: @ 0x080E71F4
    .incbin "cvaos_us_baserom.gba", 0x0E71F4, 0x1 @ TODO: size

    .incbin "cvaos_us_baserom.gba", 0x0E71F5, 0x8F

    .global sUnk_080E7284
sUnk_080E7284: @ 0x080E7284
    .incbin "cvaos_us_baserom.gba", 0x0E7284, 0x1 @ TODO: size

    .incbin "cvaos_us_baserom.gba", 0x0E7285, 0x23BF

    .global sUnk_080E9644
sUnk_080E9644: @ 0x080E9644
    .incbin "cvaos_us_baserom.gba", 0x0E9644, 0x1 @ TODO: size

    .incbin "cvaos_us_baserom.gba", 0x0E9645, 0xFE3

    .global sUnk_080EA628
sUnk_080EA628: @ 0x080EA628
    .incbin "cvaos_us_baserom.gba", 0x0EA628, 0x1 @ TODO: size

    .incbin "cvaos_us_baserom.gba", 0x0EA629, 0x2C027

    .global gUnk_08116650
gUnk_08116650: @ 0x08116650
    .incbin "cvaos_us_baserom.gba", 0x116650, 0x1 @ TODO: size

    .incbin "cvaos_us_baserom.gba", 0x116651, 0x49E2F

    .global sUnk_08160480
sUnk_08160480: @ 0x08160480
    .incbin "cvaos_us_baserom.gba", 0x160480, 0x8

    .global sUnk_08160488
sUnk_08160488: @ 0x08160488
    .incbin "cvaos_us_baserom.gba", 0x160488, 0x8

    .incbin "cvaos_us_baserom.gba", 0x160490, 0xAC418

    .global sUnk_0820C8A8
sUnk_0820C8A8: @ 0x0820C8A8
    .incbin "cvaos_us_baserom.gba", 0x20C8A8, 0x1 @ TODO: size

    .incbin "cvaos_us_baserom.gba", 0x20C8A9, 0x273

    .global sUnk_0820CB1C
sUnk_0820CB1C: @ 0x0820CB1C
    .incbin "cvaos_us_baserom.gba", 0x20CB1C, 0x1 @ TODO: size

    .incbin "cvaos_us_baserom.gba", 0x20CB1D, 0x51FB7

    .global sUnk_0825EAD4
sUnk_0825EAD4: @ 0x0825EAD4
    .incbin "cvaos_us_baserom.gba", 0x25EAD4, 0x8

    .incbin "cvaos_us_baserom.gba", 0x25EADC, 0x7E60

    .global sUnk_0826693C
sUnk_0826693C: @ 0x0826693C
    .incbin "cvaos_us_baserom.gba", 0x26693C, 0x1 @ TODO: size

    .incbin "cvaos_us_baserom.gba", 0x26693D, 0x18FF

    .global sUnk_0826823C
sUnk_0826823C: @ 0x0826823C
    .incbin "cvaos_us_baserom.gba", 0x26823C, 0x8

    .global sUnk_08268244
sUnk_08268244: @ 0x08268244
    .incbin "cvaos_us_baserom.gba", 0x268244, 0x8

    .incbin "cvaos_us_baserom.gba", 0x26824C, 0xF8

    .global sUnk_08268344
sUnk_08268344: @ 0x08268344
    .incbin "cvaos_us_baserom.gba", 0x268344, 0x1 @ TODO: size

    .incbin "cvaos_us_baserom.gba", 0x268345, 0xFB

    .global sUnk_08268440
sUnk_08268440: @ 0x08268440
    .incbin "cvaos_us_baserom.gba", 0x268440, 0x1 @ TODO: size

    .incbin "cvaos_us_baserom.gba", 0x268441, 0x12DCF
