.model small
.data
 a db 00,01,02,05
 key db 00
 pos db 00
.code
 mov ax,@data
 mov ds,ax
 mov bl,00
 mov cl,03
 mov dl,00
 mov dh ,00
 mov SI,offset a
 mov bh,key
 mov DI,offset pos

l1: add dl,bl
    add dl,cl
    SHR dl,01
    add SI,dx
    mov al,[SI]
    cmp bh,al
    JE d1
    JB s1
    JNB q1
 s1: SUB dl,01
     mov cl,dl
     mov SI,offset a
     cmp bl,cl
     JBE l1
     JNB r1
 q1: ADD dl,01
     mov cl,dl
     mov SI,offset a
     cmp bl,cl
     JBE l1
 r1: mov byte ptr [DI],00
     JMP m1
 d1: mov [DI],dl
 m1: mov ah,4ch
     int 21h
     end

