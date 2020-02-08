@ second program
.section .data
.section .text
.global _start
_start:
	mov r1, #10
	mov r2, #11
	add r3, r1, r2 
	mov r4, #7
	mov r5, #2
	mul r8, r4, r5
	sub r1, r3, r8

	mov r7, #1
	svc #0
.end
