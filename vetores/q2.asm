.data

.text
main:
	lui $8, 0x1001		#Carrega a memória no $8
	addi $10, $0, 10	#Contador
	
forE:
	beq $10, 0, sai		#Compara se o 10 chegou a 0
	
	addi $2, $0 5		#Entrada
	syscall
	
	sw $2, 0($8)		#Salva o valor de entrada no endereço de memória apontado por $8
	addi $8, $8, 4		#Aponta para o proximo endereço de memória
	addi $10, $10, -1	#decrementa
	
	j forE

sai:
	addi $4, $0, '\n'	#Quebra de linha
	addi $2, $0, 11
	syscall
	
	addi $2, $0, 5		#Entrada 
	syscall
	add $9, $0, $2		#Salva a entrada no $9
	
	addi $4, $0, '\n'	#Quebra de linha
	addi $2, $0, 11
	syscall
	
	lui $8, 0x1001		#Volta nosso ponteiro para o primeiro dado
	addi $10, $0, 10	#Reinicia o contador
	addi $12, $0, 0, 	#Contador responsável pelo indice
	
forS:
	beq $10, $0, saiS	#Compara se o 10 chegou a 0
	
	lw $2 0($8)		#Puxa o valor na memória apontado por $8
	bne $2, $9, diff	#Compara se o valor digitado é diff a posição x no nosso vetor
	#So vem para aqui caso Sejam IGUAIS
	add $4, $0, $12	#Print da posição
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'	#Pula linha
	addi $2, $0, 11
	syscall
	
diff:
	addi $8, $8, 4		#Aponta para o proximo endereço de memória
	addi $12, $12, 1	#Adiciona 1 ao indice
	addi $10, $10, -1	#Decremento 1 ao contador
	j forS
	
saiS:
	addi $2, $0, 10
	syscall
	
	