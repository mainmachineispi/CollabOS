[org 0x7C00]

mov bp, 0x9000
mov sp, bp
mov bx, MSG_REAL_MODE
call print
call switch_to_pm
jmp $

%include screen.asm
%include gdt32.asm
%include print32.asm
%include switch32.asm

times 510 - ($-$$) db 0
dw 0xaa55
