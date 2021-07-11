.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

sun = 1
mon = 2
tue = 3
wed = 4
thu = 5
fri = 6
sat = 7

.data
weekArr BYTE sun, mon, tue, wed, thu, fri, sat

.code
main proc
	; nothing
	invoke ExitProcess,0
main endp
end main