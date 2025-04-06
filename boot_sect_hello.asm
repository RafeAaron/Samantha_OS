;Printing Hello World To The Screen

mov ah, 0x0e

mov al, 'H'
int 0x10

mov al, 'e'
int 0x10

mov al, 'l'
int 0x10
int 0x10

mov al, 'o'
int 0x10

mov al, 'W'
int 0x10

mov al, 'o'
int 0x10

mov al, 'r'
int 0x10

mov al, 'l'
int 0x10

mov al, 'd'
int 0x10

jmp $; jump to current address

; Fill with 510 zeros minus the size of the previous code
times 510-($-$$) db 0

;Magic number
dw 0xaa55
