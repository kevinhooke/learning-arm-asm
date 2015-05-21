.global _start
_start:
MOV R7, #4 @ Syscall 4 = write to screen
MOV R0, #1 @ 1=stdout: move 1 to R0
MOV R2, #13 @ length of string to R2
LDR R1, =string
SWI 0
BX lr
string:
.asciz "hello world!\n"
