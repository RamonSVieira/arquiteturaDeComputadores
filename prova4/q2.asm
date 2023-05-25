#Quest�o 2: Fa�a um programa que leia um vetor de 10 posi��es 
#e verifique se existem valores repetidos e os escreva na tela.
.data

.text
	#--------------------------------------------------------#
	
	lui $8, 0x1001		#Carrega a mem�ria no $8
	addi $9, $0, 0		#Contador
	addi $10, $0, 10	#Limite
	
	#-------LACO ENTRADA E VERIFICA��O DE MAIOR QUE 0--------#
	
forEntrada:
	beq $9, $10, sai	#VERIFICA
	
	addi $2, $0, 5		#ENTRADA
	syscall
	
	sw $2, 0($8)		#Salva ENTRADA na mem�ria apontada por $8
	addi $8, $8, 4		#$8 aponta para proximo enderen�o de mem�ria
	addi $9, $9, 1		#INCREMENTA
	
nEntrada:	
	j forEntrada
sai:
	addi $4, $0, '\n'	#printa
	addi $2, $0, 11
	syscall

	lui $8, 0x1001		#Carrega a mem�ria no $8
	addi $9, $0, 0		#Contador
	
forCompara:
	beq $10, $0, saiCompara
	
	lw $13, 0($8)		#Coloca no $13 o valor apontado por $8
	
	add $12, $0, $8		#Coloca o endere�o de memoria de $8, para $12
	add $15, $0, $10	#Limite 2
	forDentro:
		beq $15, $0, saiDentro
		
		lw $14, 4($12)
		
		bne $13, $14, diff	#verifica se s�o diferentes
		
		addi $4, $13, 0		#printa
		addi $2, $0, 1
		syscall
		
		addi $4, $0, '\n'	#printa
		addi $2, $0, 11
		syscall
		
		j saiDentro
		
	diff:
		addi $15, $15, -1	#Decrementa
		addi $12, $12, 4	#prox enedere�o de mem�ria
		j forDentro
	
	saiDentro:
	addi $10, $10, -1		#Decrementa
	addi $8, $8, 4			#prox endere�o de mem�ria
	j forCompara

saiCompara:
	
	addi $2, $0, 10
	syscall
