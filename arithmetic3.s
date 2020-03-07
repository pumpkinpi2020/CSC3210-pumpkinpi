.section .data
val1: .byte -60 @ 16-bit signed integer
val2: .byte 11
val3: .byte 16
.section .text
.globl _start
_start:

@ The following is a simple ARMvalues into registers and it might have problems.
ldr r1, =val1
ldrsb r1, [r1]
ldr r2, =val2
ldrb r2, [r2]
ldr r3, =val3
ldrb r3, [r3]
add r2, r2, #3
add r2, r2, r3
sub r2, r2, r1


mov r7, #1 @ Program Termination: exit syscall
svc #0 @ Program Termination: wake kernel
