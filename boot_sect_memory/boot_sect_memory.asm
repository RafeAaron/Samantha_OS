;Print from a memory address

secretPhase:
	db "X"

mov ah, 0x0e

mov al, "H"
int 0x10

mov bx, secretPhase
add bx, 0x7c00
mov al, [bx]
int 0x10

jmp $

times 510 - ($ - $$) db 0
dw 0xaa55
