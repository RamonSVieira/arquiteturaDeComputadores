.text

main:
	addi $8, $0, 31 # Constante 31 para verificação do loop
	addi $9, $0, 3	# Constante 3 para verificar se o número é multiplo de 3
	addi $10, $0, 1	# Constante para incremento
	
loop:
	slt $20, $10, $8 # Se o valor 31 for menor que incremento $20 = 1
	beq $20, $0, fim
	
	div $10, $9	# Divisão do nosso incremento por 3
	mfhi $11	# Pegamos o resto da divisão
	
	beq $11, $0, multiplo	# Se o resto da divisão for 0 então é multiplo de 3
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