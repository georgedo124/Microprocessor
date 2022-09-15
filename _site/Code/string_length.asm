; string length 

.model small
.stack 100
.data
    nhap db 'Nhap chuoi: $' 
    xuat db 13, 10, 'Chieu dai chuoi: $' 
.code 
main proc
    mov ax, @data
    mov ds, ax 

    lea dx, nhap 
    mov ah, 09h 
    int 21h 

    xor cx, cx
nhapchuoi:
    mov ah, 01h 
    int 21h     
    
    mov bl, al 
    cmp bl, 0Dh 
    je ra 
    inc cx 
    jmp nhapchuoi
ra: 
    lea dx, xuat
    mov ah, 09h 
    int 21h 
    
    mov dx, 0 
    mov ax, cx 
    xor cx, cx ; reset cx de lat nua tinh xem co bao nhieu so du duoc day vao stack
indodaichuoi:    
    mov dx, 0
    mov bx, 0Ah 
    div bx ; chia dxax cho 10 
    push dx  
    cmp ax, 0 
    je ra2   
    inc cx 
    jmp indodaichuoi
ra2: 
    mov ah, 02h 
    pop dx 
    add dx, 30h 
    int 21h 
    cmp cx, 0 
    je done 
    dec cx 
    jmp ra2
done:
    mov ah, 4Ch 
    int 21h  
main endp 
end main 
