mov cx, 80 
mov ah, 2
mov dl, '$' 
show: int 21h 
      loop show 
 