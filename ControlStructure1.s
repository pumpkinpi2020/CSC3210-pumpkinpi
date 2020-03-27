.section .data
x: .word 1

.section .text
.globl _start
_start:
	ldr r1,=x
	ldr r2,=x
	ldr r2,[r2]

	cmp r2,#3
	bgt false
	sub r2,#1
	str r2,[r1]
	bal endofif
false:
	sub r2,#2
	str r2,[r1]
	bal endofif
endofif:
	mov r7,#1
	svc #0
	.end 
