mov ah, 0x0e; tty

mov al, [the_secret]

int 0x10

mov bx, 0x7c0; segment is automatically shifted for you

mov ds, bx

;All memory references will be offset by 'ds' implicitly

mov al, [the_secret]
int 0x10

mov al, [es:the_secret]
int 0x10

mov bx, 0x7c0
mov es, bx
mov al, [es:the_secret]
int 0x10

jmp $

the_secret:
	db 'X'

times 510 - ($ - $$) db 0
dw 0xaa55
