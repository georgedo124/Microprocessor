; if AX < BX then CX = 0 else CX = 1 

CMP AX, BX
JL Label_Then
MOV CX, 1 
JMP Label_End 

Label_Then: MOV CX, 0 
Label_End: 