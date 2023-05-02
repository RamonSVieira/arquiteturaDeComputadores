.text

main:
	addi $2, $0, 5	#ler numero e coloca no reg2
	syscall
	add $8, $0, 2	#Valor 2 para divisões
	
	div $2, $8	#divisão por 2
	mfhi $10	#Move para o reg10 o resto da divisão valor
	mflo $2		#Move o quociente para o reg2
	
	div $2, $8	#divisão por 2
	mfhi $11	#Move para o reg10 o resto da divisão valor
	mflo $2		#Move o quociente para o reg2
	
	div $2, $8
	mfhi $12
	mflo $2
	
	div $2, $8
	mfhi $13
	mflo $2
	
	div $2, $8
	mfhi $14
	mflo $2
	
	div $2, $8
	mfhi $15
	mflo $2
	
	div $2, $8
	mfhi $16
	mflo $2
	
	div $2, $8
	mfhi $17
	mflo $2
	
	div $2, $8
	mfhi $18
	mflo $2
	
	div $2, $8
	mfhi $19
	mflo $2
	
print:	
	add $4, $0, $19
	addi $2, $0, 1
	syscall
	
	add $4, $0, $18
	addi $2, $0, 1
	syscall
	
	add $4, $0, $17
	addi $2, $0, 1
	syscall
	
	add $4, $0, $16
	addi $2, $0, 1
	syscall
	
	add $4, $0, $15
	addi $2, $0, 1
	syscall
	
	add $4, $0, $14
	addi $2, $0, 1
	syscall
	
	add $4, $0, $13
	addi $2, $0, 1
	syscall
	
	add $4, $0, $12
	addi $2, $0, 1
	syscall
	
	add $4, $0, $11
	addi $2, $0, 1
	syscall
	
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	
fim:	
	addi $2, $0 10
	syscall
	
	
	

	
	
	
	