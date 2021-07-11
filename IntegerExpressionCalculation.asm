.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.code
main proc
	; assigning values A-D to the registers
	mov	eax, 0Ah
	mov	ebx, 0Bh
	mov	ecx, 0Ch
	mov	edx, 0Dh
	
	; adding each side of the subtraction
	add	eax, ebx ; = A+B
	add ecx, edx ; = C+D

	; subtracting, final calculation
	sub eax, ecx ; = (A+B) - (C+D)

	invoke ExitProcess,0
main endp
end main