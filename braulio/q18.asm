.text

main: 
	addi $2, $0, 5
	syscall
	add $8, $0, $2 #Recebendo o primeiro Valor
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2 #Recebendo o segundo Valor
	
	sub $10, $9, $8 #se $9 < $8 ent�o $10 � negativo
	add $11, $10, $0 #Copia da subtra��o
	not $11, $11 #Nega��o da c�pia da subtra��o
	
	srl $10, $10, 31 #levando o bit de sinal o maximo para direita
	srl $11, $11, 31 #levando o bit de sinal o maximo para direita
	
	mul $12, $10, $9 #multiplica��o
	mul $13, $11, $8
	
	add $4, $12, $13 #soma dos valores
	addi $2, $0, 1 #print
	syscall
	
	addi $2, $0, 10 #finalizando
	syscall