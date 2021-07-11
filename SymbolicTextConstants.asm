.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

one TEXTEQU <"uno">
two TEXTEQU <"dos">
three TEXTEQU <"tres">
four TEXTEQU <"cautro">
five TEXTEQU <"cinco">

.data
var1 BYTE one
var2 BYTE two
var3 BYTE three
var4 BYTE four
var5 BYTE five

.code
main proc
	; nothing
	invoke ExitProcess,0
main endp
end main