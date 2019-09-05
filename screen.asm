print:
    pusha
    
start:
    mov al, [bx]
    cmp al, 0
    popa
    mov ah, 0x0e
    int 0x10
    add bx, 1
    jmp start
    
nl:
    pusha
    mov ah, 0x0e
    mov al, 0x0a
    int 0x10
    popa
    ret
