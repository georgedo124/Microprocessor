; nhap vao 1 ki tu thuong va in ra ki tu hoa 

.model small
.stack 100
.data    
    nhap db 'nhap 1 ki tu tu ban phim: $'
    xuat db 13, 10, 'xuat ki tu in hoa: $'
.code 
main proc
    mov ax, @data
    mov ds, ax 
    
    mov ah, 09h
    lea dx, nhap
    int 21h 
    
    mov ah, 01h   
nhaplaikitu:
    int 21h   
    ; kiem tra ki tu co hop le khong
    cmp al, 61h
    jl nhaplaikitu     
    cmp al, 7Ah 
    jg nhaplaikitu
    mov bl, al   
    sub bl, 20h 
    
    
    mov ah, 09h
    lea dx, xuat
    int 21h 
    
    mov ah, 02h  
    mov dl, bl
    int 21h 
    
    mov ah, 4ch 
    int 21h
main endp
end main 