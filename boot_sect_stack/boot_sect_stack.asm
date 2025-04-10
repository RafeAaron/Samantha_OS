;Start with placing the terminal in tty mode

mov ah, 0x0e

;Set the starting stack address
mov bp, 0x8000; This is very far from our small bootsector
mov sp, bp; If the stack is empty then sp points to bp

push 'A'
push 'B'
push 'C'

;You can't access the stack bottom but only the stack top
mov al, [0x7ffe]
int 0x10

;Recovering our characters
pop bx
mov al, bl
int 0x10 ; prints C

pop bx
mov al, bl
int 0x10; prints B

pop bx
mov al, bl
int 0x10; prints C

jmp $

times 510 - ($ - $$) db 0
dw 0xaa55
