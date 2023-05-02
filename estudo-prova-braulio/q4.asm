.text

main: 
	addi $2, $0, 5
	syscall
	add $8, $0, $2 #input num 1
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2 #input num 2
	
	slt $11, $8, $9 # se $8<$9, $11=1
	slt $12, $9, $8 # se $9<$8, $12=1
	
	beq $11, $12, iguais
	beq $11, $0, maior8
	j maior9
	
iguais: add $4, $0, $8
	addi $2, $0, 1
	syscall
	addi $4, $0, '='
	addi $2, $0, 11
	syscall
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	j fim
	
maior8:	add $4, $0, $8
	addi $2, $0, 1
	syscall
	addi $4, $0, '>'
	addi $2, $0, 11
	syscall
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	j fim
	
maior9: add $4, $0, $8
	addi $2, $0, 1
	syscall
	addi $4, $0, '<'
	addi $2, $0, 11
	syscall
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	
fim:	addi $2, $0, 10
	syscall