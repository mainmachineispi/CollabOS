[bits 32]

VIDEO_MEMORY equ 0xb8000

print_string_pm:
    pusha
    mov edx, VIDEO_MEMORY

print_string_pm_loop:
    mov al, [ebx]
    mov ah, color ; Dynamic!
    cmp al, 0
    je print_string_pm_done
    mov [edx], ax
    add ebx, 1
    add edx, 2
    jmp print_string_pm_loop
    
print_string_pm_done:
    popa
    ret
