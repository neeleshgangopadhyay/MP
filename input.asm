.model small
.code
 mov ax,@data
 mov ds,ax
 mov ah,01h
 int 21h
 mov ah,02h
 mov dl,35h
 int 21h
 mov ah,4ch
 int 21h
 end
