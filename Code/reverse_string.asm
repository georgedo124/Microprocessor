; reverse string 

.model small
.stack 100h
.data 
    nhap db 'Nhap chuoi: $' 
    xuat db 13, 10, 'Xuat chuoi: $' 
.code 
main proc 
    mov ax, @data   
    mov ds, ax 

    lea dx, nhap 
    mov ah, 09h
    int 21h 

    xor bx, bx
    xor cx, cx
nhapchuoi:  
  
    mov ah, 01h 
    int 21h 
    cmp al, 0Dh 
    je ra     
    
    ; push character into stack 
    inc cx 
    mov bl, al 
    push bx 
    jmp nhapchuoi  
ra:    

    lea dx, xuat
    mov ah, 09h
    int 21h     
xuatchuoi:    

    pop bx 
    mov dl, bl 
    mov ah, 02h     
    int 21h   
    
    dec cx
    cmp cx, 0 
    je done 
    jmp xuatchuoi     
done:     

    mov ah, 4Ch 
    int 21h 
main endp 
end main
