.text

main:	addi $2, $0, 5		#Input em reg 2
	syscall
	addi $8, $0, 4		#Valor 100 reg 8
	
	addi $9, $0 , 100	#Valor 100 reg 9
	addi $10, $0 400	#valor 400 em reg10
	
	div $2, $8		#divisão para verificar o resto
	mfhi $15		
	beq $0, $15, mult4	# se resto da divisão igual a 0 entao divisivel por 4
	j nao

mult4:	
	div $2, $9
	mfhi $15
	beq $0, $15, mult400	#Se resto da divisão igual a 0 entao divisil por 100
	j sim

mult400:
	div $2, $10
	mfhi $15
	beq $0, $15, sim	#Se resto da divisão igual a 0 então divisão por 400 logo bissexto
	j nao			#se nao, o valor é divisão por 100 mas n por 400, logo nao será bissexto
	
sim:	addi $4, $0, 'S'
	j print
	
nao:
	addi $4, $0, 'N'
	
print:
	addi $2, $0, 11
	syscall

fim:	addi $2, $0, 10
	syscall