#A QUESTÃO ESTÁ ERRADA POIS O VALOR É RETORNADA INTEIRO E NAO EM HEX


#Questão 5: Faça uma função que receba um endereço de início de uma matriz 
#(endereço do primeiro dado) de inteiros; a quantidade de colunas da matriz; 
#uma linha; e uma coluna e retorne o endereço do dado. Por exemplo,uma matriz
#3x4 (3 linhas e 4 colunas) ocupa os endereços mostrados na tabela a seguir.
.data
.text
main:	
	addi $2, $0, 5		#recebendo o endereço de memória
	syscall		
	add $4, $0, $2
	
	addi $2, $0, 5		#Recebendo as colunas
	syscall		
	add $5, $0, $2
	
	addi $2, $0, 5		#Recebendo a linha a ser encontrada
	syscall		
	add $6, $0, $2
	
	addi $2, $0, 5		#Recebendo a coluna a ser encontrada
	syscall		
	add $7, $0, $2
	
	jal retornaEndereco
	
	addi $2, $0, 1
	syscall
	
fim:	addi $2, $0, 10
	syscall
	
#====================================
#Função: Retorna o endereço de memória de acordo com a linha e coluna
#Parâmetros: $4 (endereço), $5(Quantidades de coluna), $6(Linha), $7(Coluna)
#Retorno: $2
retornaEndereco:
	add $10, $0, $7		#Verifica coluna
	add $11, $0, $0		#Conta colunas para pular linha
	add $12, $0, $0		#Conta as linhas
for:	
	beq $11, $5, proxLinha	#Se $11 == quantidades de coluna, vai para a proxima linha
	beq $12, $6, achouLinha	#Se $12 == Linha a ser encontrada, achou a linha
	
	addi $4, $4, 4		#Soma 4, para teóricamente ir para proximo 
	
	addi $11, $11, 1	#Soma 1 a quantidade de colunas naquela linha especifica
	
	j for

proxLinha: 
	addi $11, $0, 0		#Zera a quantidade de colunas, pois estamos em uma nova linha
	
	addi $12, $12, 1	#Incrementa 1 a linha que estamos verificando
	
	j for
	   
achouLinha: 
	addi $11, $0, 0		#Quando chegamos a linha certa, zeramos a coluna

achaColuna: 
	beq $11, $7, colunacerta
				#Verifica se ja chegamos na coluna que o usuário pediu
	addi $4, $4, 4		#Soma 4, para teóricamente ir para proximo
	addi $11, $11, 1	#Adicionamos 1 a coluna a cada iteração
	j achaColuna    
colunacerta: 
	add $2, $4, $0 
fimfunc:	
	jr $31