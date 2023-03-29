#include "../../riscv-isa-sim/arch_test_target/spike/model_test.h"
.macro init
.endm
.section .text.init
.globl _start
.option norvc
.org 0x00
_start:
	# CSR_MIP
	li x13, 0xa5a5a5a5
	csrrw x11, 836, x13
	li x13, 0x00000000
	bne x13, x11, csr_fail
	li x13, 0x5a5a5a5a
	csrrw x11, 836, x13
	li x13, 0x00000020
	bne x13, x11, csr_fail
	li x13, 0x4afe3554
	csrrw x11, 836, x13
	li x13, 0x00000202
	bne x13, x11, csr_fail
	li x13, 0xa5a5a5a5
	csrrs x11, 836, x13
	li x13, 0x00000000
	bne x13, x11, csr_fail
	li x13, 0x5a5a5a5a
	csrrs x11, 836, x13
	li x13, 0x00000020
	bne x13, x11, csr_fail
	li x13, 0x9da8dcd5
	csrrs x11, 836, x13
	li x13, 0x00000222
	bne x13, x11, csr_fail
	li x13, 0xa5a5a5a5
	csrrc x11, 836, x13
	li x13, 0x00000222
	bne x13, x11, csr_fail
	li x13, 0x5a5a5a5a
	csrrc x11, 836, x13
	li x13, 0x00000202
	bne x13, x11, csr_fail
	li x13, 0x2d6cd061
	csrrc x11, 836, x13
	li x13, 0x00000000
	bne x13, x11, csr_fail
	csrrwi x11, 836, 0b00101
	li x13, 0x00000000
	bne x13, x11, csr_fail
	csrrwi x11, 836, 0b11010
	li x13, 0x00000000
	bne x13, x11, csr_fail
	csrrwi x11, 836, 0b01010
	li x13, 0x00000002
	bne x13, x11, csr_fail
	csrrsi x11, 836, 0b00101
	li x13, 0x00000002
	bne x13, x11, csr_fail
	csrrsi x11, 836, 0b11010
	li x13, 0x00000002
	bne x13, x11, csr_fail
	csrrsi x11, 836, 0b00001
	li x13, 0x00000002
	bne x13, x11, csr_fail
	csrrci x11, 836, 0b00101
	li x13, 0x00000002
	bne x13, x11, csr_fail
	csrrci x11, 836, 0b11010
	li x13, 0x00000002
	bne x13, x11, csr_fail
	csrrci x11, 836, 0b00110
	li x13, 0x00000000
	bne x13, x11, csr_fail
	csrr x11, 836
	li x13, 0x00000000
	bne x13, x11, csr_fail
csr_pass:
	li x1, 0
	slli x1, x1, 1
	addi x1, x1, 1
	sw x1, tohost, x30
	self_loop: j self_loop

csr_fail:
	li x1, 1
	slli x1, x1, 1
	addi x1, x1, 1
	sw x1, tohost, x30
	self_loop_2: j self_loop_2

RVMODEL_DATA_BEGIN
RVMODEL_DATA_END
