; This will loop infinitely
loop:
	jmp loop

; Fill with 510 zeroes minus the size of the previous code
times 510-($-$$) db 0
; The magic number
dw 0xaa55
