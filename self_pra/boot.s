.global _start, begtext, begdata, begbss, endtext, enddata, endbss

.text
begtext:
.data
begdata:
.bss
begbss:
.text
BOOTSEG = 0x07c0

_start:
	mov BOOTSEG, %ds
	jmp go
go:
	mov %cs,%ax
	mov %ax,%ds
	mov %ax,%es
	mov %ah, msg1+17
	mov 20,%cx
	mov 0x1004,%dx
	mov 0x000c,%bx
	mov msg1,%bx
	mov 0x1301,%ax
	int $0x10

loop1:	jmp loop1
msg1:	.ascii "Loading system..."
	.byte 13,10
.org 510
	.word 0xAA55
.text
endtext:
.data
enddata:
.bss
endbss:	
