.text

main: 
	addi $2, $0 ,5
	syscall
	add $8, $0, $2
	
	srl $9, $8, 31
	
	beq $9, $0, posit
	
neg:	mul $4, $8, $8
	j fimif
	
posit:	sll $4, $8, 1

fimif: 	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall