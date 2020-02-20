@arithmetic2 program: Register = val2 + 9 + val3 - val1
.section .data
val1: .word 6
val2: .word 11
val3: .word 16
.section .text
.globl _start
_start:
	ldr r1, =val1	@load the memory address of val1 into r1
	ldr r1, [r1]	@load the value val1 into r1
	ldr r2, =val2	@load the memory address of val2 into r2
	ldr r2, [r2]	@load the value val2 into r2
	ldr r3, =val3	@load the memory address of val3 into r3
	ldr r3, [r3]	@load the value val3 into r3
	add r2, r2, #9	@added r2 = r2 + 9
	add r2, r2, r3  @added r2 = r2 + r3
	sub r2, r2, r1	@subtracted r2 = r2 -r1

	mov r7, #1
	svc #0
.end

