	.include "asm/gba_constants.inc"
    .include "asm/macros.inc"

	.syntax unified

	thumb_func_start sub_080E032C
sub_080E032C: @ 0x080E032C
	bx pc
	nop

	arm_func_start sub_080E0330
sub_080E0330: @ 0x080E0330
	b sub_08043908
