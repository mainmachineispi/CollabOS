[org 0x7C00]
main:
    mov ah, 0x0e ; this lets us print text to the screen
    mov al, 'O' ; we set the char we want to print
    int 0x10 ; we print it
    mov al, 'K'
    int 0x10
    
call main ; hopefully i know enough 'bout asm and this works

jmp $ ; hang


%include screen.asm

times 510 - ($-$$) db 0
dw 0xaa55
