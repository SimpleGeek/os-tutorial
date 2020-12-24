mov ah, 0x0e ; tty mode
mov al, 'H'
int 0x10 ; int command raises an interrupt - 0x10 is the general interrupt for video services
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
int 0x10 ; 'l' is already on the register, just fire it again
mov al, 'o'
int 0x10

jmp $ ; jump to current address - this is a basic infinite loop

; padding and magic number
times 510 - ($-$$) db 0
dw 0xaa55
