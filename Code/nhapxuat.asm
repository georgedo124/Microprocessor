; nhap va xuat 1 ki tu  

.model small
.stack 100
.data 
    nhap db 'nhap 1 ki tu tu ban phim: $' 
    xuat db 13, 10, 'ki tu vua nhap la: $' 
.code 
main proc
    ; khoi tao thanh ghi ds  
    mov ax, @data 
    mov ds, ax      
    
    ; hien thi bien nhap 
    mov ah, 09h 
    lea dx, nhap
    int 21h 
    
    ; thuc hien cong viec nhap 1 ki tu tu ban phim 
    ; ma ascii cua ki tu vua nhap se duoc luu trong al 
    mov ah, 01h 
    int 21h        
    mov bl, al
                                                       
    ;hien thi bien xuat 
    mov ah, 09h
    lea dx, xuat
    int 21h 
    
    ; hien thi ki tu vua nhap 
    mov dl, bl
    mov ah, 02h 
    int 21h 
    
    ; tro ve DOS 
    mov ah, 4ch 
    int 21h 
main endp 
end main 