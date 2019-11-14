.model small
.data
  n db 5
  r db 3
  ncr DB 0
.code

  mov ax,@data
  mov ds,ax
  mov al,n
  mov bl,r
  mov ncr,0
  call encr
  mov al,ncr
  mov ah,4ch
  int 21h
 encr PROC NEAR
  cmp bl,al
  JE gat1
  cmp bl,1
  JE gat3
  cmp bl,0
  JE gat1
  dec al
  cmp bl,al
  je gat2
  push ax
  push bx
  call encr
  pop bx
  pop ax
  dec BX
  push ax
  push BX
  call encr
  pop bx
  pop ax
  ret
gat1:inc ncr
    ret
gat2: inc ncr
gat3: ADD ncr,al
    ret
    encr endp
   
   end 
