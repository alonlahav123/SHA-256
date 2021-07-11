INCLUDE Irvine32.inc

.data
x WORD ?
y WORD ?

.code
main proc
	call DisplayCharacterRandomly

	invoke ExitProcess, 0
main endp

DisplayCharacterRandomly PROC
	call CLRscr
	call GetMaxXY
	mov x, ax
	mov y, dx
	mov ecx, 100

L1:
	movzx eax, x
	call RandomRange
	mov dh, al

	movzx eax, y
	call RandomRange
	mov dl, al

	call Gotoxy

	mov al, '*'
	call WriteChar

	mov eax, 100
	call Delay
	Loop L1

	ret
DisplayCharacterRandomly ENDP

end main