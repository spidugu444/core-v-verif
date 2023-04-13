#include "../../riscv-isa-sim/arch_test_target/spike/model_test.h"
.macro init
.endm
.section .text.init
.globl _start
.option norvc
.org 0x00
_start:
	# CSR_PMPCFG0
	li x5, 0xa5a5a5a5
	csrrw x3, 928, x5
	li x5, 0x00000000
	bne x5, x3, csr_fail
	li x5, 0x5a5a5a5a
	csrrw x3, 928, x5
	li x5, 0xa5a5a5a5
	bne x5, x3, csr_fail
	li x5, 0x6f334437
	csrrw x3, 928, x5
	li x5, 0x5a5a5a5a
	bne x5, x3, csr_fail
	li x5, 0xa5a5a5a5
	csrrs x3, 928, x5
	li x5, 0x6f334437
	bne x5, x3, csr_fail
	li x5, 0x5a5a5a5a
	csrrs x3, 928, x5
	li x5, 0xefb7e5b7
	bne x5, x3, csr_fail
	li x5, 0x5b2b8822
	csrrs x3, 928, x5
	li x5, 0xffffffff
	bne x5, x3, csr_fail
	li x5, 0xa5a5a5a5
	csrrc x3, 928, x5
	li x5, 0xffffffff
	bne x5, x3, csr_fail
	li x5, 0x5a5a5a5a
	csrrc x3, 928, x5
	li x5, 0x5a5a5a5a
	bne x5, x3, csr_fail
	li x5, 0xd53a98f8
	csrrc x3, 928, x5
	li x5, 0x00000000
	bne x5, x3, csr_fail
	csrrwi x3, 928, 0b00101
	li x5, 0x00000000
	bne x5, x3, csr_fail
	csrrwi x3, 928, 0b11010
	li x5, 0x00000005
	bne x5, x3, csr_fail
	csrrwi x3, 928, 0b00000
	li x5, 0x0000001a
	bne x5, x3, csr_fail
	csrrsi x3, 928, 0b00101
	li x5, 0x00000000
	bne x5, x3, csr_fail
	csrrsi x3, 928, 0b11010
	li x5, 0x00000005
	bne x5, x3, csr_fail
	csrrsi x3, 928, 0b10111
	li x5, 0x0000001f
	bne x5, x3, csr_fail
	csrrci x3, 928, 0b00101
	li x5, 0x0000001f
	bne x5, x3, csr_fail
	csrrci x3, 928, 0b11010
	li x5, 0x0000001a
	bne x5, x3, csr_fail
	csrrci x3, 928, 0b11010
	li x5, 0x00000000
	bne x5, x3, csr_fail
	csrr x3, 928
	li x5, 0x00000000
	bne x5, x3, csr_fail
csr_pass:
	li x1, 0
	slli x1, x1, 1
	addi x1, x1, 1
	sw x1, tohost, t5
	self_loop: j self_loop

csr_fail:
	li x1, 1
	slli x1, x1, 1
	addi x1, x1, 1
	sw x1, tohost, t5
	self_loop_2: j self_loop_2

RVMODEL_DATA_BEGIN
RVMODEL_DATA_END
