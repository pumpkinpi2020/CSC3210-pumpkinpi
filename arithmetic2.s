@ second program: c = a + b
.section .data
val1: .word 6 @ 32-bit variable a in memory
val2: .word 11 @ 32-bit variable b in memory
val3: .word 16 @ 32-bit variable c in memory
.section .text
.globl _start
_start:
ldr r1, = val2
ldr r1, [r1]
add r1, r1, #9
ldr r2, = val3
ldr r2, [r2]
add r1, r1, r2
ldr r3, = val1
ldr r3, [r3]
sub r1, r1, r3
ldr r2, = val1
str r1, [r2]

mov r7, #1 @ Program Termination: exit syscall
svc #0 @ Program Termination: wake kernel
.end
