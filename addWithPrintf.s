
.global main
.extern printf
main:
    push {ip, lr}
    mov r3, #1          /* move 1 to r3 */
    mov r4, #2          /* move 2 to r4 */
    add r4, r3, r4      /* r4 = r3 + r4 */
_ouput:
    ldr r0,=output      /* load addres of output string */
    mov r1, r4          /* move r4 result to r1 to include as param in string */
    bl  printf		/* call printf */
_exit:
    MOV R1, #0
    MOV R7, #1
    SWI 0
.data
output:
.asciz "Result: %d\n"
