.text

main: 
		addi $2, $0, 5
		syscall
		add $8, $0, $2
	
		addi $2, $0, 5
		syscall
		add $9, $0, $2
	
		slt $10, $8, $9
	
		beq $10, $0 maior8
		add $4, $0, $9
		j diffmaior9
	
maior8:		add $4, $0, $8
		addi $2, $0, 1
		syscall
		
		addi $4, $0, '\n'
		addi $2, $0, 11
		syscall
		
		sub $4, $8, $9
		j prnfim
	
diffmaior9: 	addi $2, $0, 1	
		syscall
		
		addi $4, $0, '\n'
		addi $2, $0, 11
		syscall
		
		sub $4, $9, $8
		
prnfim:		
		addi $2, $0, 1
		syscall
		
		addi $2, $0, 10
		syscall