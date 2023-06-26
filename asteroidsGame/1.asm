#--------------------- JOGUINHO ASTEROIDS ---------------------
.text
main: 
	lui $8, 0x1001			#Endereço de memória inicial
      	addi $10, $0, 0x242424		#Cor de fundo
      	addi $11, $0, 0xff0000		#Cor branca para a nave

	#----PINTA CENÁRIO----#
	addi $4, $8, 0			#Endereço de memória para pintar o cenário
	add $5, $10, $0			#Cor preta para o cenário
	jal CriaFundo
	
	#------CRIA NAVE------#
	addi $4, $8, 263168		#Endereço de memória para a nave
	add $5, $11, $0 		#Cor branca para a nave
	jal CriaNave
	
fimMain:
	addi $2, $0, 10
	syscall

#=======================================
#Nome:CriaFundo
#Utilidade: Pinta o fundo do jogo
#Parametro: $4(ender. memória), $5(cor)
#Saida: ...
CriaFundo:
	addi $9, $0, 131072		#Unidades gráficas
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
#Parametro: $4(ender. memória), $5(cor)
#Saida: ...
CriaNave:
	addi $9, $0, 1	#Unidades gráficas
	forNave:  
		beq $9, $0, fimLinha1
      		sw $5, 0($4)
      		
      		addi $9, $9, -1
      		j forNave
      		
	fimLinha1:
	addi $4, $4, 2044
	addi $9, $0, 3	#Unidades gráficas
	forLinha2:
		beq $9, $0, fimLinha2
      		sw $5, 0($4)
     		
     		addi $4, $4, 4
      		addi $9, $9, -1
      		j forLinha2
      		
      	fimLinha2:
      	addi $4, $4, 2032
      	addi $9, $0, 5	#Unidades gráficas
      	
      	forLinha3:
		beq $9, $0, fimLinha3
      		sw $5, 0($4)
     		
     		addi $4, $4, 4
      		addi $9, $9, -1
      		j forLinha3
      		
      	fimLinha3:
      	addi $4, $4, 2024
      	addi $9, $0, 7	#Unidades gráficas
      	
      	forLinha4:
		beq $9, $0, fimLinha4
      		sw $5, 0($4)
     		
     		addi $4, $4, 4
      		addi $9, $9, -1
      		j forLinha4
      		
      	fimLinha4:
      	addi $4, $4, 2016
      	addi $9, $0, 9	#Unidades gráficas
      	
      	forLinha5:
		beq $9, $0, fimLinha5
      		sw $5, 0($4)
     		
     		addi $4, $4, 4
      		addi $9, $9, -1
      		j forLinha5
      		
      	fimLinha5:
      	addi $4, $4, 2008
      	addi $9, $0, 11	#Unidades gráficas
      	
      	forLinha6:
		beq $9, $0, fimLinha6
      		sw $5, 0($4)
     		
     		addi $4, $4, 4
      		addi $9, $9, -1
      		j forLinha6
      		
      	fimLinha6:
      	addi $4, $4, 2000
      	addi $9, $0, 13	#Unidades gráficas
      	
      	forLinha7:
		beq $9, $0, fimLinha7
      		sw $5, 0($4)
     		
     		addi $4, $4, 4
      		addi $9, $9, -1
      		j forLinha7
      		
      	fimLinha7:
      	addi $4, $4, 1992
      	addi $9, $0, 15	#Unidades gráficas
      	
      	forLinha8:
		beq $9, $0, fimLinha8
      		sw $5, 0($4)
     		
     		addi $4, $4, 4
      		addi $9, $9, -1
      		j forLinha8
      		
      	fimLinha8:
      	addi $4, $4, 1984
      	addi $9, $0, 17	#Unidades gráficas
      	
      	forLinha9:
		beq $9, $0, fimCriaNave
      		sw $5, 0($4)
     		
     		addi $4, $4, 4
      		addi $9, $9, -1
      		j forLinha9
      	
      	fimCriaNave:
      		jr $31
