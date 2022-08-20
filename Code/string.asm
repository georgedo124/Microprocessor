; string 

.model small
.stack 100
.data 
    nhap db 'nhap chuoi: $' 
    xuat db 13, 10, 'xuat chuoi: $'
    str db 200 dup ('$') 
.code 
main proc   
    mov ax, @data
    mov ds, ax
    
    lea dx, nhap 
    mov ah, 09h
    int 21h 
    
    lea dx, str 
    mov ah, 0Ah
    int 21h 
    
    lea dx, xuat
    mov ah, 09h
    int 21h 
    
    lea dx, str + 2
    mov ah, 09h
    int 21h
    
    ; return DOS 
    mov ah, 4Ch
    int 21h
main endp 
end main