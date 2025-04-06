;Print from a memory address
[org 0x7c00]
secretPhase:
	db "X"

mov ah, 0x0e

mov al, "H"
int 0x10

mov al, [secretPhase]
int 0x10

jmp $

times 510 - ($ - $$) db 0
dw 0xaa55
