.text

main:
	addi $2, $0, 5
	syscall
	add $8, $2, $0		# N�mero de refer�ncia
	
	addi $2, $0, 5
	syscall
	add $9, $2, $0		# Quantidades de valores a ser impresso
	
	addi $10, $0, 1		# Incremento
	
loop:
	beq $0, $9, fim		# Quando o valor de quantidades for igual a 0, fim
	div $10, $8 		# Divis�o do incremento com o n�mero de referencia
	mfhi $11 		# Resto da divis�o
	
	beq $11, $0, imprime	# Se o resto da divis�o for 0 ent�o imprime
	addi $10, $10, 1	# + 1 ao incremento
	j loop

imprime:
	add $4, $10, $0
	addi $2, $0, 1
	syscall
	
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	
	subi $9, $9, 1		# Diminui 1 a cada impress�o
	addi $10, $10, 1	# + 1 ao incremento
	j loop
	
fim:
	addi $2, $0, 10
	syscall 