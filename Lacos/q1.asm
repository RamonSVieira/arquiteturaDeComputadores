.text

main:
	addi $8, $0, 31 # Constante 31 para verifica��o do loop
	addi $9, $0, 3	# Constante 3 para verificar se o n�mero � multiplo de 3
	addi $10, $0, 1	# Constante para incremento
	
loop:
	slt $20, $10, $8 # Se o valor 31 for menor que incremento $20 = 1
	beq $20, $0, fim
	
	div $10, $9	# Divis�o do nosso incremento por 3
	mfhi $11	# Pegamos o resto da divis�o
	
	beq $11, $0, multiplo	# Se o resto da divis�o for 0 ent�o � multiplo de 3
	add $10, $10, 1	# Se nao, Incremento
	j loop		# E volta ao loop
	
multiplo:
	addi $4, $10, 0
	addi $2, $0, 1
	syscall
	
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	
	add $10, $10, 1	# Incremento
	j loop

fim:
	addi $2, $0, 10
	syscall