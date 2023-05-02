.text

main: 
	addi $2, $0 ,5
	syscall
	add $8, $0 $2 # input numero 1
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2 # input numero 2
	
	slt $10, $8, $9 # se $8 for menor que $9,
			# então $10 recebe 1
			# se nao $10 recebe 0
			
	beq $10, $0 maior8 # se $10 for 0 pula para o rotulo maior8
	add $4, $0, $9 # $10 é 1 então o 9 é maior
	j fimif # pula para o rotulo fimif, assim nao executa o else
	
maior8: add $4, $0, $8

fimif: 	addi $2, $0, 1 #print maior numero
	syscall	
	
	addi $2, $0, 10
	syscall
