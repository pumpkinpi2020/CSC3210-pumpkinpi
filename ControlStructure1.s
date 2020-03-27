.section .data
x: .word 1 @ 32-bit signed integer, you can also use int directive instead of .word directive
.section .text
.globl _start
_start:
 ldr r1, =x @ load the memory address of x into r1
ldr r1, [r1] @ load the value x into r1
cmp r1, #3 @
bgt thenpart
sub r1, r2, #1
b endofif
thenpart:
sub r1, r2, #2

endofif:
mov r7, #1
svc #0
