
  org 07c00h
  mov ax, cs
  mov ds, ax
  mov es, ax
  call display
  jmp $


display:
  mov ax, message
  mov bp, ax
  mov cx, 16
  mov ax, 01301h
  mov bx, 000ch
  mov dl, 0
  int 10h
  ret

message:
  db  "Hello World"

times 510 - ($ - $$) db 0
db 0x55
db 0xaa