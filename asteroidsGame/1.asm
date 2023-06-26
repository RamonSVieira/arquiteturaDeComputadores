#--------------------- JOGUINHO ASTEROIDS ---------------------
.text
main: 
	lui $8, 0x1001			#Endere�o de mem�ria inicial
      	addi $10, $0, 0x242424		#Cor de fundo
      	addi $11, $0, 0xff0000		#Cor branca para a nave

	#----PINTA CEN�RIO----#
	addi $4, $8, 0			#Endere�o de mem�ria para pintar o cen�rio
	add $5, $10, $0			#Cor preta para o cen�rio
	jal CriaFundo
	
	#------CRIA NAVE------#
	addi $4, $8, 263168		#Endere�o de mem�ria para a nave
	add $5, $11, $0 		#Cor branca para a nave
	jal CriaNave
	
fimMain:
	addi $2, $0, 10
	syscall

#=======================================
#Nome:CriaFundo
#Utilidade: Pinta o fundo do jogo
#Parametro: $4(ender. mem�ria), $5(cor)
#Saida: ...
CriaFundo:
	addi $9, $0, 131072		#Unidades gr�ficas
	for:  
		beq $9, $0, fim
      		sw $5, 0($4)
     
      		addi $4, $4, 4
      		addi $9, $9, -1
      		j for
	fim:  
		jr $31

#=======================================
#Nome:CriaNave
#Utilidade: Cria a nave do jogador
#Parametro: $4(ender. mem�ria), $5(cor)
#Saida: ...
CriaNave:
	addi $9, $0, 1	#Unidades gr�ficas
	forNave:  
		beq $9, $0, fimLinha1
      		sw $5, 0($4)
      		
      		addi $9, $9, -1
      		j forNave
      		
	fimLinha1:
	addi $4, $4, 2044
	addi $9, $0, 3	#Unidades gr�ficas
	forLinha2:
		beq $9, $0, fimLinha2
      		sw $5, 0($4)
     		
     		addi $4, $4, 4
      		addi $9, $9, -1
      		j forLinha2
      		
      	fimLinha2:
      	addi $4, $4, 2032
      	addi $9, $0, 5	#Unidades gr�ficas
      	
      	forLinha3:
		beq $9, $0, fimLinha3
      		sw $5, 0($4)
     		
     		addi $4, $4, 4
      		addi $9, $9, -1
      		j forLinha3
      		
      	fimLinha3:
      	addi $4, $4, 2024
      	addi $9, $0, 7	#Unidades gr�ficas
      	
      	forLinha4:
		beq $9, $0, fimLinha4
      		sw $5, 0($4)
     		
     		addi $4, $4, 4
      		addi $9, $9, -1
      		j forLinha4
      		
      	fimLinha4:
      	addi $4, $4, 2016
      	addi $9, $0, 9	#Unidades gr�ficas
      	
      	forLinha5:
		beq $9, $0, fimLinha5
      		sw $5, 0($4)
     		
     		addi $4, $4, 4
      		addi $9, $9, -1
      		j forLinha5
      		
      	fimLinha5:
      	addi $4, $4, 2008
      	addi $9, $0, 11	#Unidades gr�ficas
      	
      	forLinha6:
		beq $9, $0, fimLinha6
      		sw $5, 0($4)
     		
     		addi $4, $4, 4
      		addi $9, $9, -1
      		j forLinha6
      		
      	fimLinha6:
      	addi $4, $4, 2000
      	addi $9, $0, 13	#Unidades gr�ficas
      	
      	forLinha7:
		beq $9, $0, fimLinha7
      		sw $5, 0($4)
     		
     		addi $4, $4, 4
      		addi $9, $9, -1
      		j forLinha7
      		
      	fimLinha7:
      	addi $4, $4, 1992
      	addi $9, $0, 15	#Unidades gr�ficas
      	
      	forLinha8:
		beq $9, $0, fimLinha8
      		sw $5, 0($4)
     		
     		addi $4, $4, 4
      		addi $9, $9, -1
      		j forLinha8
      		
      	fimLinha8:
      	addi $4, $4, 1984
      	addi $9, $0, 17	#Unidades gr�ficas
      	
      	forLinha9:
		beq $9, $0, fimCriaNave
      		sw $5, 0($4)
     		
     		addi $4, $4, 4
      		addi $9, $9, -1
      		j forLinha9
      	
      	fimCriaNave:
      		jr $31
