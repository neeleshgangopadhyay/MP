.model  small
.data
 array dw -5,4,1,3
.code
 mov ax,@data
 mov ds,ax
 mov dx,04
 dec dx
 outer:mov cx,dx
       mov SI,offset array
 again:mov ax,[SI]
       cmp ax,[SI+2]
       JLE l1
       XCHG ax,[SI+2]
       XCHG ax,[SI]
  l1  :inc SI
       inc SI
       dec CX
       JNZ again
       dec DX
       JNZ outer
       mov ah,4ch
       int 21h
       end
