.text

main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2 # input 1
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2 # input 2
	
	addi $2, $0, 5
	syscall
	add $10, $0, $2 # input 3
	
	addi $11, $0, 1
	addi $12, $0, 2
	addi $13, $0, 3
	addi $14, $0, 6
	
	mul $8, $8, $11
	mul $9, $9, $12
	mul $10, $10, $13
	
	add $15, $8, $9
	add $15, $15, $10
	
	div $15, $14
	mflo $14
	
	addi $16, $0, 59 #media
	slt $17, $16, $14 # se $16 < $14(mediaDoAluno) ? retorna 1 : 0
	
	beq $17, $11, aprovado
	j reprovado

reprovado:
	add $4, $0, $14
	addi $2, $0, 1
	syscall
	addi $4, $0, ','
	addi $2, $0, 11
	syscall
	
	mfhi $11
	addi $12, $0, 10
	mul $13, $11, $12
	addi $20, $0, 6
	div $13, $20
	mflo $4
	addi $2, $0, 1
	syscall
	
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	addi $4, $0, 'R'
	addi $2, $0, 11
	syscall
	j fim
	
aprovado: 
	add $4, $0, $14
	addi $2, $0, 1
	syscall
	addi $4, $0, ','
	addi $2, $0, 11
	syscall
	
	mfhi $11
	addi $12, $0, 10
	mul $13, $11, $12
	addi $20, $0, 6
	div $13, $20
	mflo $4
	addi $2, $0, 1
	syscall
	
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	addi $4, $0, 'A'
	addi $2, $0, 11
	syscall
	
fim:	addi $2, $0, 10
	syscall