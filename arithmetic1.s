


@ second program
 .section .data
 .section .text
 .global _start
_start:
   mov r1, #10  @load r1 with 10
   mov r2, #11  @load r2 with 11
   mov r3, #7   @load r3 with 7
   mov r4, #2   @load r4 with 2

  add r5, r1, r2   @add  r1 and r2 , store in r5
  mul r6, r3, r4   @multiply of r3 and r4, store in r6
  sub r1, r5, r6   @substract r5 and r6, store in r1

 mov r7,#1
  svc #0

.end


