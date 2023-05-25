#Questão 1: Crie um programa que leia 6 valores inteiros estritamente 
#positivos (maiores que 0), descartando qualquer entrada negativa ou zero, 
#e, em seguida, mostre na tela os valores lidos na ordem inversa.

.data

.text
	#--------------------------------------------------------#
	
	lui $8, 0x1001		#Carrega a memória no $8
	addi $9, $0, 0		#Contador
	addi $10, $0, 6		#Limite
	
	#-------LACO ENTRADA E VERIFICAÇÃO DE MAIOR QUE 0--------#
	
forEntrada:
	beq $9, $10, sai	#VERIFICA
	
	addi $2, $0, 5		#ENTRADA
	syscall
	
	beq $2, $0, nEntrada	#Se for 0, não é válido
	slt $11, $2, $0		#Se ENTRADA > 0, $11 = 1, else = 0
	bne $11, $0, nEntrada	#Se temos 0, é um valor igual a 0 ou -0, logo nao entrada
	#Se chegou aqui, é porque é um entrada válida
	
	sw $2, 0($8)		#Salva ENTRADA na memória apontada por $8
	addi $8, $8, 4		#$8 aponta para proximo enderenço de memória
	addi $9, $9, 1		#INCREMENTA
	
nEntrada:	
	j forEntrada
sai:
	addi $4, $0, '\n'	#QUEBRA DE LINHA
	addi $2, $0, 11
	syscall
	
	#Nosso ponteiro agora aponta para o prox do ultimo elemento, entao vamos apontar para o ultimo
	addi $8, $8, -4
forSaida:
	beq $10, $0, saiSaida
	
	lw $4, 0($8)		#Trazemos para o $4, o que está no enederço de memporia de $8
	
	addi $2, $0, 1		#IMPRIME
	syscall
	
	addi $4, $0, ' '	#ESPAÇO
	addi $2, $0, 11
	syscall
	
	addi $8, $8, -4		#Aponta para o anterior, visto que estamos fazendo de tras pra frente
	addi $10, $10, -1	#DECREMENTA
	
	j forSaida
saiSaida:
fim:
	addi $2, $0, 10
	syscall
