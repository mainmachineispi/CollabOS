[org 0x7C00]

mov bp, 0x9000
mov sp, bp
mov bx, MSG_REAL_MODE
call print
call switch_to_pm
jmp $

%include "screen.asm"
%include "gdt32.asm"
%include "print32.asm"
%include "switch32.asm"

[bits 32]

BEGIN_PM:
    mov ebx, MSG_PROT_MODE
    call print_string_pm
    jmp $
    
MSG_REAL_MODE db '16-Bit OK ', 0
MSG_PROT_MODE db '32-Bit OK', 0


times 510 - ($-$$) db 0
dw 0xaa55
