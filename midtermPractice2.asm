.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
var1 SBYTE -20, -1, 1, 29
var2 WORD 0FE00h, 0C900h, 9100h, 2F00h
var3 SWORD -16, -27
var4 DWORD -15,14,13,12,11

.code
main proc
	mov edx, var4 ; a:
	movzx edx, [var2+6] ; b:
	mov edx, [var4+12] ; c:
	movsx edx, var1 ; d:

	invoke ExitProcess, 0
main endp
end main
