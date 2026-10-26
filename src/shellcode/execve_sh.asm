section .text
	global _start

_start:
    xor rsi, rsi
    mul rsi
    mov rbx, 0x68732f2f6e69622f	; Cadena que contiene "/bin//sh". Que posea 2 "/" no afecta a la función.
    push rax			; Insertamos en el stack un terminador nulo
    push rbx			; Insertamos en el stack la cadena /bin/sh

    push rsp			; Insertamos la cadena "/bin//sh" en el stack
    pop rdi			; Sacamos el último valor que copiamos en el stack ("/bin//sh") y lo insertamos en "rdi"

    mov al, 59			; Se va a realizar una syscall a "execve"
    syscall			; Se ejecuta la syscall
