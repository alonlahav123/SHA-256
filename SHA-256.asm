INCLUDE Irvine32.inc

.data
str1 BYTE "Excellent time too listen to music",0
char BYTE 'o'

.code
main PROC
	call Crlf
	mov edx, OFFSET str1
	call WriteString

	mov ecx, LENGTHOF str1
	mov esi, OFFSET str1
	dec esi
	mov al, char

Continue:
L1:
	inc esi
	cmp [esi], al
	LOOPNE L1
	jne finish

	inc esi
	cmp [esi], al
	jne Continue

	cld
	dec esi
	mov edi, esi
	inc esi
	rep movsb

finish:
	call Crlf
	mov edx, OFFSET str1
	call WriteString

	exit
main ENDP

END main
