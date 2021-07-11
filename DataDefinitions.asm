.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
; BYTE - 8-bit unsigned integer. B stands for byte
var1 BYTE 200

; SBYTE - 8-bit signed integer. S stands for signed
var2 SBYTE -120

; WORD - 16-bit unsigned integer
var3 WORD 60000

; SWORD - 16-bit signed integer
var4 SWORD -10000

; DWORD - 32-bit unsigned integer. D stands for double
var5 DWORD 4000000000

; SDWORD - 32-bit signed integer. SD stands for signed double
var6 SDWORD -1000000000

; FWORD - 48-bit integer (Far pointer in protected mode)
var7 FWORD 0

; QWORD - 64-bit integer. Q stands for quad
var8 QWORD 1

; TBYTE - 80-bit (10-byte) integer. T stands for Ten-byte
var9 TBYTE 12341234123412341234

; REAL4 - 32-bit (4-byte) IEEE short real
var10 REAL4 -3.0

; REAL8 - 64-bit (8-byte) IEEE long real
var11 REAL8 4.1234

; REAL10 - 80-bit (10-byte) IEEE extended real
var12 REAL10 5.12342345612343456

.code
main proc
	; nothing
	invoke ExitProcess,0
main endp
end main