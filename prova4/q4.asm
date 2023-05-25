#Questão 4: Faça uma função que receba uma data (dia, mês e ano em inteiro) e retorne 
#se a data é válida (retorne 1)ou inválida (retorna 0). Crie também uma rotina main 
#que faz uso da função criada.
.text
main:
	#Lendo o dia e movendo para o $4
	addi $2, $0, 5
	syscall
	addi $4, $2, 0
	
	#Lendo o mês e movendo para o $5
	addi $2, $0, 5
	syscall
	addi $5, $2, 0
	
	#Lendo o dia e movendo para o $6
	addi $2, $0, 5
	syscall
	addi $6, $2, 0
	
	jal verificaData 	#Redireciona para a função verificaData, $31, recebe a prox instrução, para voltar
	
	addi $4, $2, 0		#Pega o valor de saída da função e coloca em $4
	addi $2, $0, 1
	syscall

fim: 
	addi $2, $0 10
	syscall
#=========================================
#função:	VERIFICA A DATA
#parâmetros:	RECEBE $4(DIA), $5(MÊS), $6(ANO)
#utilidade:	DATA VÁLIDA -> 1, DATA INVALIDA -> 0
#retorno: 	$2, COM VALORES 1 OU 0
#=========================================
verificaData:
	#Verificações padrões
	#DIA POSITIVO
	srl $10, $4, 31		#Bit mais significativo
	andi $10, $10, 1	#Se $10 == 1, invalido
	bne $10, $0, invalido	
	#DIA MENOR QUE 32
	addi $10, $0, 32	#Constante 32
	slt $10, $4, $10	#Verifica se o dia é menor que 32
	beq $10, $0, invalido	#Se dia < 32, $10 = 1, logo invalido
	
	#MÊS POSITIVO
	srl $10, $5, 31		#Bit mais significativo
	andi $10, $10, 1	#Se $10 == 1, invalido
	bne $10, $0, invalido	
	#MÊS MENOR QUE 32
	addi $10, $0, 13	#Constante 13
	slt $10, $5, $10	#Verifica se o dia é menor que 32
	beq $10, $0, invalido	#Se dia < 13, $10 = 1, logo invalido
	
	#ANO POSITIVO
	srl $10, $6, 31		#bit mais significativo
	andi $10, $10, 1	#Verfica se $10 == 1, invalido
	bne $10, $0, invalido
	
	#VERIFICA SE O MES É FEVEREIRO
	addi $10, $0, 2		#Contante 2
	beq $5, $10, fevereiro	#Se o mes digitado for 2 é fevereiro
	
	#VERIFICAÇÃO OUTROS MESES(exceto fevereiro)
	addi $10, $0 8		#Constante 8
	
	div $5, $10		#dividimos por 8
	mflo $10
	mfhi $11
	
	add $10, $10, $11	#Soma entre resto e quociente
	andi $11, $10, 1	#Verificar se o result é par ou impar, se par = 30, impar = 31
	
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
	
#SE O MES FOR FEVEREIRO, TEMOS QUE VERIFICAR SE O NAO É BISSEXTO
fevereiro:
	addi $10, $0, 400	#Constante 400
	
	#Regra ano bissexto: DIVISIVIL POR 400 = BI.
	#DIVISIVIL POR 4, VERIFICA SE É POR 100, SE SIM NÃO É BISSEXTO, SE NÃO É POR 100 É BISSEXTO
	
	div $6, $10		#divide o ano por 400
	mfhi $12		#pega o resto
	beq $12, $0, anoBI	#Se resto da divsão igual a 0, bissexto
	
	addi $10, $0, 4	#Constante 4
	
	div $6, $10		#divide o ano por 4
	mfhi $12		#pega o resto
	bne $12, $0, NanoBI	#Se resto da divsão diff a 0, NÃO BISSEXTO
	#Se passa é pq é divisivil por 4
	
	addi $10, $0, 100	#Constante 100
	
	div $6, $10		#divide o ano por 100
	mfhi $12		#pega o resto
	bne $12, $0, anoBI	#Se resto da divsão diff a 0, BISSEXTO, ou seja, se nao é por 100 é BI
	j NanoBI		#Se chegou aqui é por 100, logo nao é BISSEXTO
	
anoBI:
	addi $10, $0, 30	#Constante 30
	slt $10, $4, $10	#Se o dia é menor que 30 == 1, se 1 == válido
	beq $10, $0, invalido	#Se $12 != 0, logo o dia digitado foi maior que 30
	
	j valido		#Se chegou aqui, válido
	
NanoBI:
	addi $10, $0, 29	#Constante 29
	slt $10, $4, $10	#Se o dia é menor que 30 == 1, se 1 == válido
	beq $10, $0, invalido	#Se $12 != 0, logo o dia digitado foi maior que 30
	
	j valido		#Se chegou aqui, válido

valido:
	addi $2, $0, 1
	jr $31
	
invalido:
	addi $2, $0, 0
	jr $31	