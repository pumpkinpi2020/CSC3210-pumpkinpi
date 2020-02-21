@ second program c = a + b
.section .data
a: .word 2	@32-bit variable a in memory
b: .word 5	@32-bit variable b in memory
c: .word 0	@32-bit variable c in memory 
.section .text
.globl _start
_start:
	ldr r1,=a	@load the mem address of a into r1
	ldr r1,[r1]	@load the value a into r1
	ldr r2,=b	@load the mem address of b into r2
	ldr r2,[r2]	@load the value of b into r2
	add r1,r1,r2	@add r1 to r2 and store in r1
	ldr r2,=c	@load the mem address of c into r2
	str r1,[r2]	@store r1 into memory c

	mov r7,#1
	svc #0
.end
