INCLUDE Irvine32.inc

.data
key BYTE -2, 4, 1, 0, -3, 5, 2, -4, -4, 6
plaintextMsg BYTE "Hello I am Alon", 0
out BYTE LENGTHOF plaintextMsg DUP(?)

.code
main proc
	mov edx, OFFSET plaintextMsg
	mov ecx, OFFSET out
	mov esi, OFFSET key
	call WriteString
	call crlf

	call Encryption

	;mov edx, OFFSET 

	exit
main endp

Encryption PROC
	pushad
	mov edi, 0
rotateloop:
	mov al, [edx]
	mov cl, [esi+edi]
	ror al, cl

	mov [edx], al
	inc edx
	inc edi

	cmp edi, 10
	JNE continue
	mov edi, 0
continue:
	mov bl, [edx]
	cmp bl, 0
	je endloop
	jmp rotateloop
endloop:
	popad
	ret
Encryption ENDP

end main