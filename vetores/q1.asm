.data

.text
main:
	#--------------------------------------------------------#
	lui $8, 0x1001		#Carrega a memória no $8
	addi $9, $0, 0		#Contador
	addi $10, $0 6		#Limite

	#----------------LAÇO FOR ENTRADA DE DADOS---------------#
for:
	beq $9, $10, sai	#Verifica se ja chegou no limite
	
	addi $2, $0, 5		#Entrada
	syscall
	
	andi $11, $2, 1		#Se $11 = 0 -> par, else impar
	bne $11, $0, impar	#Ou seja, Se $11 != 0, temos um impar
	#Caso Seja par, executa os seguinte passos
	sw $2, 0($8) 		#Armazena o numero par no endereço de memória apontado por $8
	addi $8, $8, 4		#Nosso $8 agora aponta para o proximo endereço de memória vazio
	addi $9, $9, 1		#Adiciona 1 ao nosso contador

	#Caso o número seja impar, apenas voltamos para o for pois os impares são descartados
impar:
	j for
sai:
	#Ao final do for anterior, o nosso $8, está apontando para o
	#primeiro endereço de memória após nosso ultimo dado.
	#Como a questão pede para imprimir na ordem inversa, vamos apenas
	#voltar um endereço de memória e decrementar a cada impressão. 
	addi $8, $8, -4		#Decremento para apontar para o ultimo dado

forSaida:
	beq $10, $0, forSai	#Agora vamos decrementando o nosso limite, quando chegar a 0 para
	lw $4, 0($8)		#Armazena em $4, o valor que está na memoria apontado por $8
	
	addi $2, $0, 1		#imprime o valor
	syscall
	
	addi $4, $0, ' '	#imprime um caracter vazio para espaçamento
	addi $2, $0, 11
	syscall
	
	addi $8, $8, -4		#Aponta para o endereço de memória anterior
	addi $10, $10, -1	#Decrementa 1 ao nosso limite
	j forSaida
	
forSai:
	addi $2, $0, 10
	syscall