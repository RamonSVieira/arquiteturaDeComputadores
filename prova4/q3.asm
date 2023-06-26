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
	#--------------------------------------------------------#
	
	lui $8, 0x1001		#Carrega a memória no $8
	addi $9, $0, 0		#Contador
	addi $10, $0, 10	#Limite

forVerifica:
	beq $10, $0, saiVerifica
	
	lw $2, 0($8)
	addi $24, $0, 0 	#divisores
	add $25, $2, $0
	
	forp: 
		beq $25, $0, fimp    	#Verifica  
      		div $2, $25		#Divide
      		mfhi $15		#Pega o resto
      		bne $15, $0, contp	#Se for diferente de 0, Nao adiciona aos divisores
      		addi $24, $24, 1	#Se sim, adiciona aos divisores
	contp:	
		addi $25, $25, -1	#Decrementa
      		j forp
	fimp: 
		addi $14, $0, 2		#Constante 2
      		beq $14, $24, naop    	
      		add $4, $2, $0
      		addi $2, $0, 1
     		syscall
      		addi $4, $0, '('
      		addi $2, $0, 11
      		syscall
      		add $4, $12, $0
      		addi $2, $0, 1
      		syscall
      		addi $4, $0, ')'
      		addi $2, $0, 11
      		syscall
      		addi $4, $0, '\n'
      		addi $2, $0, 11
      		syscall
	naop:      
      		addi $8, $8, 4
      		addi $12, $12, 1
      		addi $10, $10, -1
      		j forVerifica
	saiVerifica:      

	addi $2, $0, 10
	syscall