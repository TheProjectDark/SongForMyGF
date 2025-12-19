.global _start
.intel_syntax noprefix

.text
_start:
	mov rax, 1
	mov rdi, 1
	lea rsi, [rip + msg1]
	mov rdx, 13
	syscall

	mov rax, 1
	mov rdi, 1
	lea rsi, [rip + msg2]
	mov rdx, 15
	syscall

	mov rax, 1
	mov rdi, 1
	lea rsi, [rip + msg3]
	mov rdx, 16
	syscall

	mov rax, 1
	mov rdi, 1
	lea rsi, [rip + msg4]
	mov rdx, 16
	syscall

	mov rax, 1
	mov rdi, 1
	lea rsi, [rip + msg5]
	mov rdx, 15
	syscall

	mov rax, 1
	mov rdi, 1
	lea rsi, [rip + msg6]
	mov rdx, 13
	syscall

	mov rax, 1
	mov rdi, 1
	lea rsi, [rip + msg7]
	mov rdx, 11
	syscall

	mov rax, 1
	mov rdi, 1
	lea rsi, [rip + msg8]
	mov rdx, 10
	syscall

	lea r10, [rip + ts]
	xor r8, r8
	mov r9, 18
print_loop:
	cmp r8, r9
	jge next

	mov rax, 1
	mov rdi, 1
	lea rsi, [rip + msg]
	add rsi, r8
	mov rdx, 1
	syscall

	mov rax, 35
	mov rdi, r10
	xor rsi, rsi
	syscall
	
	inc r8
	jmp print_loop

next:
	mov rax, 1
	mov rdi, 1
	lea rsi, [rip + space]
	mov rdx, 2
	syscall

	lea r10, [rip + ts]
	xor r8, r8
	mov r9, 14

print_loop1:
	cmp r8, r9
	jge next1
	
	mov rax, 1
	mov rdi, 1
	lea rsi, [rip + msg_l]
	add rsi, r8
	mov rdx, 1
	syscall

	mov rax, 35
	mov rdi, r10
	xor rsi, rsi
	syscall

	inc r8
	jmp print_loop1

next1:
	lea r10, [rip + ts]
	xor r8, r8
	mov r9, 25

print_loop2:
	cmp r8, r9
	jge next2

	mov rax, 1
	mov rdi, 1
	lea rsi, [rip + msg_l1]
	add rsi, r8
	mov rdx, 1
	syscall

	mov rax, 35
	mov rdi, r10
	mov rsi, rsi
	syscall

	inc r8
	jmp print_loop2
next2:
	lea r10, [rip + ts]
	xor r8, r8
	mov r9, 47

print_loop3:
	cmp r8, r9
	jge next3

	mov rax, 1
	mov rdi, 1
	lea rsi, [rip + msg_l2]
	add rsi, r8
	mov rdx, 1
	syscall

	mov rax, 35
	mov rdi, r10
	mov rsi, rsi
	syscall

	inc r8
	jmp print_loop3

next3:
	lea r10, [rip + ts]
	xor r8, r8
	mov r9, 14

print_loop4:
	cmp r8, r9
	jge next4

	mov rax, 1
	mov rdi, 1
	lea rsi, [rip + msg_l]
	add rsi, r8
	mov rdx, 1
	syscall

	mov rax, 35
	mov rdi, r10
	mov rsi, rsi
	syscall

	inc r8
	jmp print_loop4

next4:
	lea r10, [rip + ts]
	xor r8, r8
	mov r9, 25

print_loop5:
	cmp r8, r9
	jge next5

	mov rax, 1
	mov rdi, 1
	lea rsi, [rip + msg_l1]
	add rsi, r8
	mov rdx, 1
	syscall

	mov rax, 35
	mov rdi, r10
	mov rsi, rsi
	syscall

	inc r8
	jmp print_loop5

next5:
	lea r10, [rip + ts]
	xor r8, r8
	mov r9, 25

print_loop6:
	cmp r8, r9
	jge next6

	mov rax, 1
	mov rdi, 1
	lea rsi, [rip + msg_l3]
	add rsi, r8
	mov rdx, 1
	syscall

	mov rax, 35
	mov rdi, r10
	mov rsi, rsi
	syscall

	inc r8
	jmp print_loop6

next6:
	lea r10, [rip + ts]
	xor r8, r8
	mov r9, 16

print_loop7:
	cmp r8, r9
	jge done

	mov rax, 1
	mov rdi, 1
	lea rsi, [rip + msg_l4]
	add rsi, r8
	mov rdx, 1
	syscall

	mov rax, 35
	mov rdi, r10
	mov rsi, rsi
	syscall

	inc r8
	jmp print_loop7
	
done:
	mov rax, 60
	xor rdi, rdi
	syscall

.data
ts:
	.quad 0
	.quad 120000000   # 120 ms

msg1:
	.ascii "   #       #\n"
msg2:
	.ascii "  #  #   #   #\n"
msg3:
	.ascii " #     #      #\n"
msg4:
	.ascii " # VIKULECHKA #\n"
msg5:
	.ascii "  #          #\n"
msg6:
	.ascii "    #      #\n"
msg7:
	.ascii "      #  #\n"
msg8:
	.ascii "       ##\n"
msg:
	.ascii "I love Vikulechka\n"
msg_l:
	.ascii "I love you so\n"
msg_l1:
	.ascii "I could never let you go\n"
msg_l2:
	.ascii "In the whole wide world, you're the one for me\n"
msg_l3:
	.ascii "I'll do anything for you\n"
msg_l4:
	.ascii "My love is true\n"
space:
	.ascii " \n"
