.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
fib BYTE 1, 1, ?, ?, ?, ?, ?

.code
main proc
	mov esi, 2					;index
	mov ecx, (LENGTHOF fib)-2	;loop counter
L1:
	mov bl, fib[esi-(2*(TYPE fib))]
	add bl, fib[esi-(TYPE fib)]
	mov fib[esi], bl

	inc esi
	loop L1

	invoke ExitProcess,0
main endp
end main