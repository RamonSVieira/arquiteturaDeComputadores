.text 

main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2	#Recebendo o valor do input e colocando no reg8
	
	addi $9, $0, 11	#Salvando o valor 11 no reg 9
	addi $25, $0, 10#Salvando valor para verificação
	
divid:
	div $8, $9
	mfhi $11
	mflo $8
	
	div $8, $9
	mfhi $10
	mflo $9
	
firstPrint:
	beq $9, $25 imprimirA #Se o reg9 conter o valor 10, Pula para rótuo imprimirA
	
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	j secondPrint
	
imprimirA:
	addi $4, $0, 'A'
	addi $2, $0, 11
	syscall
	
secondPrint:
	beq $10, $25 imprimirA2 #Se o reg9 conter o valor 10, Pula para rótuo imprimirA
	
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	j thirdPrint
	
imprimirA2:
	addi $4, $0, 'A'
	addi $2, $0, 11
	syscall
	
thirdPrint:
	beq $11, $25 imprimirA3 #Se o reg9 conter o valor 10, Pula para rótuo imprimirA
	
	add $4, $0, $11
	addi $2, $0, 1
	syscall
	j fim
	
imprimirA3:
	addi $4, $0, 'A'
	addi $2, $0, 11
	syscall
fim:
	addi $2, $0, 10
	syscall
	
	