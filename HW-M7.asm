INCLUDE Irvine32.inc

.data
TRUE = 1
FALSE = 0
gradeAverage WORD 275 ; test value
credits WORD 12 ; test value
OkToRegister BYTE ?

prompt0 BYTE "The student can register", 0
prompt1 BYTE "The student cannot register", 0

.code
main proc
	call Crlf

	movzx eax, gradeAverage
	call WriteDec
	call Crlf

	movzx eax, credits
	call WriteDec
	call Crlf

	mov OkToRegister, FALSE
	cmp gradeAverage, 350
	jb L3
	jmp L1
L3:
	cmp gradeAverage, 250
	jb L4
	cmp credits, 30
	ja L4
	jmp L1
L4:
	cmp credits, 1
	ja L2
L1:
	mov OkToRegister, TRUE
L2:

	cmp OkToRegister, 1
	jne L5
	mov edx, OFFSET prompt0
	call WriteString
	call Crlf
	jmp L6
L5:
	mov edx, OFFSET prompt1
	call WriteString
	call Crlf
	call Crlf
L6:
	exit
main endp
end main