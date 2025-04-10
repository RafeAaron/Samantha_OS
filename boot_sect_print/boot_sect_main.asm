[org 0x7c00] ;Tell the assembler that our offset is bootsector code

mov bx, HELLO
call print

mov bx, GOODBYE
call print

call print_nl

jmp $

;Always include subroutines below the hang
%include "boot_sect_print.asm"


;data
HELLO:
	db 'Hello, World', 0

GOODBYE:
	db 'Goodbye', 0

;filler and magic number
times 510 - ($ - $$) db 0
dw 0xaa55
