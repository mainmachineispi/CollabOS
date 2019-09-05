[org 0x7C00]
main:
    mov bx, okstring
    call print
    call nl
    
call main ; hopefully i know enough 'bout asm and this works

jmp $ ; hang

okstring:
    db 'CollabOS OK', 0


%include screen.asm

times 510 - ($-$$) db 0
dw 0xaa55
