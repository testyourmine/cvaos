    .include "asm/gba_constants.inc"
    .include "asm/macros.inc"

    .syntax unified

	arm_func_start _start
_start: @ 0x080000C0
	mov r0, #PSR_IRQ_MODE
	msr cpsr_fc, r0
	ldr sp, sp_irq @ =0x03007FA0
	mov r0, #PSR_SYS_MODE
	msr cpsr_fc, r0
	ldr sp, sp_sys @ =0x03007F00
	ldr r1, =INTR_VECTOR
	adr r0, _intr_main
	str r0, [r1]
	ldr r1, =AgbMain + 1
	mov lr, pc
	bx r1
	b _start
	.align 2, 0
sp_sys: .4byte IWRAM_END - 0x100
sp_irq: .4byte IWRAM_END - 0x60

	arm_func_start _intr_main
_intr_main: @ 0x080000FC
	mov r3, REG_BASE
	add r3, r3, OFFSET_REG_IE
	ldr ip, [r3, #OFFSET_REG_IE - OFFSET_REG_IE]
	mrs r0, spsr
	push {r0, r3, ip, lr}
	and r1, ip, ip, lsr #16
	mov r2, #0
	ands r0, r1, #INTR_FLAG_VBLANK
	bne interrupt_found
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_SERIAL | INTR_FLAG_TIMER3
	bne interrupt_found
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_HBLANK
	bne interrupt_found
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_VCOUNT
	bne interrupt_found
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_DMA0
	bne interrupt_found
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_DMA1
	bne interrupt_found
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_DMA2
	bne interrupt_found
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_DMA3
	bne interrupt_found
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_KEYPAD
	bne interrupt_found
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_GAMEPAK
	bne . @ spin
interrupt_found:
	strh r0, [r3, #OFFSET_REG_IF - OFFSET_REG_IE]
	mov r1, #INTR_FLAG_GAMEPAK | INTR_FLAG_SERIAL | INTR_FLAG_TIMER3
	and r1, r1, ip
	strh r1, [r3, #OFFSET_REG_IE - OFFSET_REG_IE]
	mrs r3, cpsr
	bic r3, r3, #PSR_I_BIT | PSR_F_BIT | PSR_MODE_MASK
	orr r3, r3, #PSR_SYS_MODE
	msr cpsr_fc, r3
	ldr r1, =sIntrTable
	add r1, r1, r2
	ldr r0, [r1]
	stmdb sp!, {lr}
	adr lr, interrupt_return
	bx r0
interrupt_return:
	ldm sp!, {lr}
	mrs r3, cpsr
	bic r3, r3, #PSR_I_BIT | PSR_F_BIT | PSR_MODE_MASK
	orr r3, r3, #PSR_I_BIT | PSR_IRQ_MODE
	msr cpsr_fc, r3
	pop {r0, r3, ip, lr}
	strh ip, [r3, #OFFSET_REG_IE - OFFSET_REG_IE]
	msr spsr_fc, r0
	bx lr
	.align 2, 0

    .pool
