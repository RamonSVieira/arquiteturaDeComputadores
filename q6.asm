.text

main:	addi $2, $0, 5
	syscall
	add $8, $0, $2		#Recebendo idade
	addi $2, $0, 5
	syscall
	add $9, $0, $2		#Recebendo tempo de trabalho
	
	addi $10, $0, 64	#Valor para comparação idade
	addi $11, $0, 39	#Valor para comparação tempo de trabalho
	addi $15, $0, 59	#Valor para comparação idade
	addi $16, $0, 34	#Valor para comparação tempo de trabalho
	
	addi $12, $0, 1		#Valor 1 para comparação de BEQ
	slt $13, $10, $8	#Se maior de 64 anos, $13 recebe 1
	slt $14, $11, $9	#Se maior de 39 anos de trabalho, $14 recebe 1
	slt $17, $15, $8	#Se maior de 59 anos, $17 recebe 1
	slt $18, $16, $9	#Se maior de 34 anos de trabalho, $18 recebe 1
	
	beq $13, $12, sim	#Se reg 13 tem o valor 1, aposenta
	beq $14, $12, sim	#Se reg 14 tem o valor 1, aposenta
	and $19, $18, $17	#Fazemos um and para verificar se é maior de 59anos e 39 de trabalho
	beq $19, $12, sim	#Se reg 19 tem o valor1, aposenta


nao: 	addi $4, $0, 78
	addi $2, $0, 11
	syscall
	j fim

sim: 	addi $4, $0, 83
	addi $2, $0, 11
	syscall
	
fim: 	addi $2, $0, 10
	syscall