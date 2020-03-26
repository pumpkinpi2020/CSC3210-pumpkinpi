.section .data
x: .word 0

.section .text
.globl _start
_start:
       ldr r1, =x
       ldr r1, [r1]
       cmp r1, #3
       ble true
       bgt false

true: sub r1,r1,#1

false: sub r1,r1,#2

       mov r7, #1
       svc #0
       .end
