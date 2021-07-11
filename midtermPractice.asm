.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
var1 SBYTE -4, -2, 3, 1
var2 WORD 1000h, 2000h, 3000h, 4000h
var3 SWORD -16, -42
var4 DWORD 1,2,3,4,5

.code
main proc
	mov edx, var4
	movzx edx, var2
	mov edx, [var4+4]
	movsx edx, var1

	invoke ExitProcess,0
main endp
end main