.text

main:
	addi $2, $0, 5
	syscall
	add $8, $2, $0		# Número de referência
	
	addi $2, $0, 5
	syscall
	add $9, $2, $0		# Quantidades de valores a ser impresso
	
	addi $10, $0, 1		# Incremento
	
loop:
	beq $0, $9, fim		# Quando o valor de quantidades for igual a 0, fim
	div $10, $8 		# Divisão do incremento com o número de referencia
	mfhi $11 		# Resto da divisão
	
	beq $11, $0, imprime	# Se o resto da divisão for 0 então imprime
	addi $10, $10, 1	# + 1 ao incremento
	j loop

imprime:
	add $4, $10, $0
	addi $2, $0, 1
	syscall
	
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	
	subi $9, $9, 1		# Diminui 1 a cada impressão
	addi $10, $10, 1	# + 1 ao incremento
	j loop
	
fim:
	addi $2, $0, 10
	syscall 