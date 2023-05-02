.text

main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	sub $10, $8, $9
	
	sra $11, $10, 31
	beq $11, $0, pos

neg: 	mul $4, $10, $11
	j prn

pos: 	add $4, $10, $0

prn: 	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall