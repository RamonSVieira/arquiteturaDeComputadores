#Questão 2: Faça um programa que leia um vetor de 10 posições 
#e verifique se existem valores repetidos e os escreva na tela.
.data

.text
	#--------------------------------------------------------#
	
	lui $8, 0x1001		#Carrega a memória no $8
	addi $9, $0, 0		#Contador
	addi $10, $0, 10	#Limite
	
	#-------LACO ENTRADA E VERIFICAÇÃO DE MAIOR QUE 0--------#
	
forEntrada:
	beq $9, $10, sai	#VERIFICA
	
	addi $2, $0, 5		#ENTRADA
	syscall
	
	sw $2, 0($8)		#Salva ENTRADA na memória apontada por $8
	addi $8, $8, 4		#$8 aponta para proximo enderenço de memória
	addi $9, $9, 1		#INCREMENTA
	
nEntrada:	
	j forEntrada
sai:
	addi $4, $0, '\n'	#printa
	addi $2, $0, 11
	syscall

	lui $8, 0x1001		#Carrega a memória no $8
	addi $9, $0, 0		#Contador
	
forCompara:
	beq $10, $0, saiCompara
	
	lw $13, 0($8)		#Coloca no $13 o valor apontado por $8
	
	add $12, $0, $8		#Coloca o endereço de memoria de $8, para $12
	add $15, $0, $10	#Limite 2
	forDentro:
		beq $15, $0, saiDentro
		
		lw $14, 4($12)
		
		bne $13, $14, diff	#verifica se são diferentes
		
		addi $4, $13, 0		#printa
		addi $2, $0, 1
		syscall
		
		addi $4, $0, '\n'	#printa
		addi $2, $0, 11
		syscall
		
		j saiDentro
		
	diff:
		addi $15, $15, -1	#Decrementa
		addi $12, $12, 4	#prox enedereço de memória
		j forDentro
	
	saiDentro:
	addi $10, $10, -1		#Decrementa
	addi $8, $8, 4			#prox endereço de memória
	j forCompara

saiCompara:
	
	addi $2, $0, 10
	syscall
