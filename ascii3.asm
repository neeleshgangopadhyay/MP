.model small
.code
 mov ax,@data
 mov ds,ax
 mov  ah,01h
 int 21h
 mov bl,al
 mov cl,04
 and al,0f0h
 shr al,cl
 add al,30h
  
 mov dl,al
 mov ah,02h
 int 21h
 mov al,bl
 and al,0fh
 add al,30h
  
 mov dl,al
 mov ah,02h
 int 21h
 mov ah,4ch
 int 21h
 end
