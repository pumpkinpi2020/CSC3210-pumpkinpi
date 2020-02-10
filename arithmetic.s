@ second program arithmetic.s
.section .data
.section .text
.globl _start
_start:
	mov r1,#10	@r1 is var A which we are loading 10
	mov r2,#11	@r2 is B which we load 11
	mov r3,#7	@r3 is C which we load 7
	mov r4,#2	@r4 is D which we load 2
	add r1,r2	@add B(r2) to A(r1) as the destination
	mul r3,r4	@multiply C(r3) by D(r4) where C is the destination
	sub r1,r3	@subtracting  r3(C) from r1(A) as r1(A) being the destination

	mov r7,#1	@Program Termination: exit syscall
	svc #0		@Program Termination: wake kernel
.end
