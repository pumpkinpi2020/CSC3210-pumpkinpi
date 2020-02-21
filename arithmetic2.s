@arithmetic2 program register = val2 + 9 + val3 - val1
.section .data
val2: .word 11
val3: .word 16
val1: .word 6
.section .text
.globl _start
_start:
	ldr r1,=val2	@load mem address of val2 to r1
	ldr r1,[r1]	@load value of val1 to r1
	ldr r2,=val3	@load mem address of val3 to r2
	ldr r2,[r2]	@load value of val3 to r2
	ldr r3,=val1	@load mem address of val1 to r3
	ldr r3,[r3]	@load value of val1 to r3
	mov r0,r1	@mov r1(val1) to r0 bc that's where I want to store my final value
	add r0,r0,#9	@add immediate 9 r0
	add r0,r0,r2	@we add r2(val3) to r0 and store it there
	sub r0,r0,r3	@sub r3(val1) from r0 and store it in 0

	mov r7,#1
	svc #0
.end
