; if AX < 0 then CX = -1 
; if AX = 0 then CX = 0 
; if AX > 0 then CX = 1 

CMP AX, 0 
JL Label_L 
JG Label_G
JE Label_E 

Label_L: MOV CX, -1
         JMP End_Case
Label_G: MOV CX, 1
         JMP End_Case
Label_E: MOV CX, 0 
End_Case: 