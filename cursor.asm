.model small
display macro msg
 lea dx,msg
 mov ah,09h
 int 21h
 endm

.data
 msg1 db 0dh,0ah,"Enter the first coordinates...$"
 msg2 db 0dh,0ah,"Enter the second coordinates...$"
 msg3 db 0dh,0ah,"THE cursor placed  the reqiured position....$"
 arr1 db 02 DUP(0)
 arr2 db 02 DUP(0)


.code
mov ax,@data
mov ds,ax
mov SI,offset arr1 
display msg1
mov cx,02
INPUT1: mov ah,01h
       int 21h
       mov [SI],al
       inc SI
       loop INPUT1
mov SI,offset arr2
display msg2
mov CX,02
INPUT2: mov ah,01h
        int 21h
        mov [SI],al
        inc SI
        loop INPUT2
mov SI,offset arr1
mov ah,[SI]
inc SI
mov al,[SI]
SUB al,30h
SUB ah,30h
AAD
mov bl,al
mov SI,offset arr2
mov ah,[SI]
inc SI
mov al,[SI]
SUB al,30h
SUB ah,30h
AAD
mov ch,al
push bx
push cx

mov cl,00h
mov ah,00H
mov al,03h
INT 10H
pop cx
pop bx
mov bh,00H
mov dh,bl
mov dl,ch
mov ah,02h
int 10H



mov ah,4ch
int 21h
end
