#Quest�o 4: Fa�a uma fun��o que receba uma data (dia, m�s e ano em inteiro) e retorne 
#se a data � v�lida (retorne 1)ou inv�lida (retorna 0). Crie tamb�m uma rotina main 
#que faz uso da fun��o criada.
.text
main:
	#Lendo o dia e movendo para o $4
	addi $2, $0, 5
	syscall
	addi $4, $2, 0
	
	#Lendo o m�s e movendo para o $5
	addi $2, $0, 5
	syscall
	addi $5, $2, 0
	
	#Lendo o dia e movendo para o $6
	addi $2, $0, 5
	syscall
	addi $6, $2, 0
	
	jal verificaData 	#Redireciona para a fun��o verificaData, $31, recebe a prox instru��o, para voltar
	
	addi $4, $2, 0		#Pega o valor de sa�da da fun��o e coloca em $4
	addi $2, $0, 1
	syscall

fim: 
	addi $2, $0 10
	syscall
#=========================================
#fun��o:	VERIFICA A DATA
#par�metros:	RECEBE $4(DIA), $5(M�S), $6(ANO)
#utilidade:	DATA V�LIDA -> 1, DATA INVALIDA -> 0
#retorno: 	$2, COM VALORES 1 OU 0
#=========================================
verificaData:
	#Verifica��es padr�es
	#DIA POSITIVO
	srl $10, $4, 31		#Bit mais significativo
	andi $10, $10, 1	#Se $10 == 1, invalido
	bne $10, $0, invalido	
	#DIA MENOR QUE 32
	addi $10, $0, 32	#Constante 32
	slt $10, $4, $10	#Verifica se o dia � menor que 32
	beq $10, $0, invalido	#Se dia < 32, $10 = 1, logo invalido
	
	#M�S POSITIVO
	srl $10, $5, 31		#Bit mais significativo
	andi $10, $10, 1	#Se $10 == 1, invalido
	bne $10, $0, invalido	
	#M�S MENOR QUE 32
	addi $10, $0, 13	#Constante 13
	slt $10, $5, $10	#Verifica se o dia � menor que 32
	beq $10, $0, invalido	#Se dia < 13, $10 = 1, logo invalido
	
	#ANO POSITIVO
	srl $10, $6, 31		#bit mais significativo
	andi $10, $10, 1	#Verfica se $10 == 1, invalido
	bne $10, $0, invalido
	
	#VERIFICA SE O MES � FEVEREIRO
	addi $10, $0, 2		#Contante 2
	beq $5, $10, fevereiro	#Se o mes digitado for 2 � fevereiro
	
	#VERIFICA��O OUTROS MESES(exceto fevereiro)
	addi $10, $0 8		#Constante 8
	
	div $5, $10		#dividimos por 8
	mflo $10
	mfhi $11
	
	add $10, $10, $11	#Soma entre resto e quociente
	andi $11, $10, 1	#Verificar se o result � par ou impar, se par = 30, impar = 31
	
	beq $11, $0, mesPar
	
	#Caso impar
	addi $12, $0, 32	#Constante 32
	slt $12, $4, $12	#se mes < 32 = 1, else 0
	beq $12, $0, invalido
	
	j valido
	
mesPar:
	addi $12, $0, 31	#Constante 31
	slt $12, $4, $12	#se mes < 31 = 1, else 0
	beq $12, $0, invalido
	
	j valido
	
#SE O MES FOR FEVEREIRO, TEMOS QUE VERIFICAR SE O NAO � BISSEXTO
fevereiro:
	addi $10, $0, 400	#Constante 400
	
	#Regra ano bissexto: DIVISIVIL POR 400 = BI.
	#DIVISIVIL POR 4, VERIFICA SE � POR 100, SE SIM N�O � BISSEXTO, SE N�O � POR 100 � BISSEXTO
	
	div $6, $10		#divide o ano por 400
	mfhi $12		#pega o resto
	beq $12, $0, anoBI	#Se resto da divs�o igual a 0, bissexto
	
	addi $10, $0, 4	#Constante 4
	
	div $6, $10		#divide o ano por 4
	mfhi $12		#pega o resto
	bne $12, $0, NanoBI	#Se resto da divs�o diff a 0, N�O BISSEXTO
	#Se passa � pq � divisivil por 4
	
	addi $10, $0, 100	#Constante 100
	
	div $6, $10		#divide o ano por 100
	mfhi $12		#pega o resto
	bne $12, $0, anoBI	#Se resto da divs�o diff a 0, BISSEXTO, ou seja, se nao � por 100 � BI
	j NanoBI		#Se chegou aqui � por 100, logo nao � BISSEXTO
	
anoBI:
	addi $10, $0, 30	#Constante 30
	slt $10, $4, $10	#Se o dia � menor que 30 == 1, se 1 == v�lido
	beq $10, $0, invalido	#Se $12 != 0, logo o dia digitado foi maior que 30
	
	j valido		#Se chegou aqui, v�lido
	
NanoBI:
	addi $10, $0, 29	#Constante 29
	slt $10, $4, $10	#Se o dia � menor que 30 == 1, se 1 == v�lido
	beq $10, $0, invalido	#Se $12 != 0, logo o dia digitado foi maior que 30
	
	j valido		#Se chegou aqui, v�lido

valido:
	addi $2, $0, 1
	jr $31
	
invalido:
	addi $2, $0, 0
	jr $31	