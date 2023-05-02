.text

main:
	addi $2, $0, 5
	syscall
	
	srl $8, $2, 31
	
	beq $8, $0 quadrado
	
	mul $8, $2, $2
	j print
	
quadrado:
	sll $8, $2, 1
	
print: 
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	
fim:
	addi $2, $0, 10
	syscall