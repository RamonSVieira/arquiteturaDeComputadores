#--------------------- JOGUINHO ASTEROIDS ---------------------
.text
main: 
	lui $8, 0x1001			#Endereço de memória inicial
      	addi $10, $0, 0x242424		#Cor de fundo
      	addi $11, $0, 0xff0000		#Cor vermelha para a nave
      	addi $12, $0, 0xffffff		#Cor branca para a nave

	#----PINTA CENÁRIO----#
	addi $4, $8, 0			#Endereço de memória para pintar o cenário
	add $5, $10, $0			#Cor preta para o cenário
	jal CriaFundo
	
	#------CRIA NAVE------#
	addi $4, $8, 474112		#Endereço de memória para a nave
	add $5, $11, $0 		#Cor vermelha para a nave
	jal CriaNave
	
	#------CRIA ASTEROIDET1 1------#
	addi $4, $8, 39936		#Endereço de memória para o asteróide
	add $5, $12, 0			#Cor branca para o asteróide
	jal AsteroidT1
	
	#------CRIA ASTEROIDET1 2------#
	addi $4, $8, 55376		#Endereço de memória para o asteróide
	add $5, $12, 0			#Cor branca para o asteróide
	jal AsteroidT1
	
	#------CRIA ASTEROIDET1 3------#
	addi $4, $8, 124672		#Endereço de memória para o asteróide
	add $5, $12, 0			#Cor branca para o asteróide
	jal AsteroidT1
	
	#------CRIA ASTEROIDET1 4------#
	addi $4, $8, 197120		#Endereço de memória para o asteróide
	add $5, $12, 0			#Cor branca para o asteróide
	jal AsteroidT1
	
	#--------CRIA PLACAR--------#
	addi $4, $8, 8256		#Endereço de memória para o asteróide
	add $5, $12, 0			#Cor branca para o asteróide
	jal Placar
	
	
	
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

#=======================================
#Nome: AsteroidT1
#Utilidade: Cria asteróide do tipo1
#Parametro: $4(ender. memória), $5(cor)
#Saida: ...
AsteroidT1:
	addi $9, $0, 2	#Unidades gráficas
	forAsteroidT1:  
		beq $9, $0, fimAsteroidT1P1
      		sw $5, 0($4)
      		
      		addi $4, $4, 2048
      		addi $9, $9, -1
      		j forAsteroidT1
      		
	fimAsteroidT1P1:
	addi $4, $4, 4
	addi $9, $0, 4	#Unidades gráficas
	forAsteroidT1P2:  
		beq $9, $0, fimAsteroidT1P2
      		sw $5, 0($4)
      		
      		addi $4, $4, -2048
      		addi $9, $9, -1
      		j forAsteroidT1P2
      		
      	fimAsteroidT1P2:
      	addi $4, $4, 4
      	addi $9, $0, 6
      	forAsteroidT1P3:  
		beq $9, $0, fimAsteroidT1P3
      		sw $5, 0($4)
      		
      		addi $4, $4, 2048
      		addi $9, $9, -1
      		j forAsteroidT1P3
      		
      	fimAsteroidT1P3:
      	addi $4, $4, 4
      	addi $9, $0, 8
      	
      	forAsteroidT1P4:  
		beq $9, $0, fimAsteroidT1P4
      		sw $5, 0($4)
      		
      		addi $4, $4, -2048
      		addi $9, $9, -1
      		j forAsteroidT1P4
      		
      	fimAsteroidT1P4:
      	addi $4, $4, 4
      	addi $9, $0, 10
      	
      	forAsteroidT1P5:  
		beq $9, $0, fimAsteroidT1P5
      		sw $5, 0($4)
      		
      		addi $4, $4, 2048
      		addi $9, $9, -1
      		j forAsteroidT1P5
      		
      	fimAsteroidT1P5:
      	addi $4, $4, 4
      	addi $9, $0, 12
      	
      	forAsteroidT1P6:  
		beq $9, $0, fimAsteroidT1P6
      		sw $5, 0($4)
      		
      		addi $4, $4, -2048
      		addi $9, $9, -1
      		j forAsteroidT1P6
      		
      	fimAsteroidT1P6:
      	addi $4, $4, 4
      	addi $9, $0, 12
      	
      	forAsteroidT1P7:  
		beq $9, $0, fimAsteroidT1P7
      		sw $5, 0($4)
      		
      		addi $4, $4, 2048
      		addi $9, $9, -1
      		j forAsteroidT1P7
      		
      	fimAsteroidT1P7:
      	addi $4, $4, 4
      	addi $9, $0, 12
      	
      	forAsteroidT1P8:  
		beq $9, $0, fimAsteroidT1P8
      		sw $5, 0($4)
      		
      		addi $4, $4, -2048
      		addi $9, $9, -1
      		j forAsteroidT1P8
      		
      	fimAsteroidT1P8:
      	addi $4, $4, 4
      	addi $9, $0, 12
      	
      	forAsteroidT1P9:  
		beq $9, $0, fimAsteroidT1P9
      		sw $5, 0($4)
      		
      		addi $4, $4, 2048
      		addi $9, $9, -1
      		j forAsteroidT1P9
      		
      	fimAsteroidT1P9:
      	addi $4, $4, 4
      	addi $9, $0, 14
      	
      	forAsteroidT1P10:  
		beq $9, $0, fimAsteroidT1P10
      		sw $5, 0($4)
      		
      		addi $4, $4, -2048
      		addi $9, $9, -1
      		j forAsteroidT1P10
      		
      	fimAsteroidT1P10:
      	addi $4, $4, 4
      	addi $9, $0, 14
      	
      	forAsteroidT1P11:  
		beq $9, $0, fimAsteroidT1P11
      		sw $5, 0($4)
      		
      		addi $4, $4, 2048
      		addi $9, $9, -1
      		j forAsteroidT1P11
      		
      	fimAsteroidT1P11:
      	addi $4, $4, -2044
      	addi $9, $0, 12
      	
      	forAsteroidT1P12:  
		beq $9, $0, fimAsteroidT1P12
      		sw $5, 0($4)
      		
      		addi $4, $4, -2048
      		addi $9, $9, -1
      		j forAsteroidT1P12
      		
      	fimAsteroidT1P12:
      	addi $4, $4, -2052
      	addi $9, $0, 10
      	
      	forAsteroidT1P13:  
		beq $9, $0, fimAsteroidT1P13
      		sw $5, 0($4)
      		
      		addi $4, $4, 2048
      		addi $9, $9, -1
      		j forAsteroidT1P13
      		
      	fimAsteroidT1P13:
      	addi $4, $4, 4104
      	addi $9, $0, 10
      	
      	forAsteroidT1P14:  
		beq $9, $0, fimAsteroidT1P14
      		sw $5, 0($4)
      		
      		addi $4, $4, -2048
      		addi $9, $9, -1
      		j forAsteroidT1P14
      		
      	fimAsteroidT1P14:
      	addi $4, $4, 4100
      	addi $9, $0, 8
      	
      	forAsteroidT1P15:  
		beq $9, $0, fimAsteroidT1P15
      		sw $5, 0($4)
      		
      		addi $4, $4, 2048
      		addi $9, $9, -1
      		j forAsteroidT1P15
      		
      	fimAsteroidT1P15:
      	addi $4, $4, -4092
      	addi $9, $0, 6
      	
      	forAsteroidT1P16:  
		beq $9, $0, fimAsteroidT1P16
      		sw $5, 0($4)
      		
      		addi $4, $4, -2048
      		addi $9, $9, -1
      		j forAsteroidT1P16
      		
      	fimAsteroidT1P16:
      	
      	addi $4, $4, 4100
      	addi $9, $0, 4
      	
      	forAsteroidT1P17:  
		beq $9, $0, fimAsteroidT1P17
      		sw $5, 0($4)
      		
      		addi $4, $4, 2048
      		addi $9, $9, -1
      		j forAsteroidT1P17
      		
      	fimAsteroidT1P17:
      	
      	addi $4, $4, -4092
      	addi $9, $0, 2
      	
      	forAsteroidT1P18:  
		beq $9, $0, fimAsteroidT1P18
      		sw $5, 0($4)
      		
      		addi $4, $4, -2048
      		addi $9, $9, -1
      		j forAsteroidT1P18
      		
      	fimAsteroidT1P18:
	
	fimAsteroidT1:
		jr $31
		
		
#=======================================
#Nome: Placar
#Utilidade: Cria o placar do jogo
#Parametro: $4(ender. memória), $5(cor)
#Saida: ...
Placar:
	#-------S-------#
	sw $5, 0($4)
	sw $5, 4($4)
	sw $5, 8($4)
	sw $5, 12($4)
	sw $5, 16($4)
	sw $5, 2068($4)
	
	sw $5, 2044($4)
	sw $5, 4092($4)
	sw $5, 6140($4)
	sw $5, 8188($4)
	
	sw $5, 10240($4)
	sw $5, 10244($4)
	sw $5, 10248($4)
	sw $5, 10252($4)
	sw $5, 10256($4)
	
	sw $5, 12308($4)
	sw $5, 14356($4)
	sw $5, 16404($4)
	sw $5, 18452($4)
	
	sw $5, 20496($4)
	sw $5, 20492($4)
	sw $5, 20488($4)
	sw $5, 20484($4)
	sw $5, 20480($4)
	
	sw $5, 18428($4)
	
	#-------C-------#
	sw $5, 6188($4)
	sw $5, 8236($4)
	sw $5, 10284($4)
	sw $5, 12332($4)
	sw $5, 14380($4)
	
	sw $5, 4144($4)
	sw $5, 2100($4)
	sw $5, 56($4)
	
	sw $5, 60($4)
	sw $5, 64($4)
	sw $5, 68($4)
	sw $5, 72($4)
	
	sw $5, 16432($4)
	sw $5, 18484($4)
	sw $5, 20536($4)
	
	sw $5, 20540($4)
	sw $5, 20544($4)
	sw $5, 20548($4)
	sw $5, 20552($4)
	
	#-------O-------#
	
	sw $5, 6240($4)
	sw $5, 8288($4)
	sw $5, 10336($4)
	sw $5, 12384($4)
	sw $5, 14432($4)
	
	sw $5, 16484($4)
	sw $5, 18536($4)
	sw $5, 20588($4)
	
	sw $5, 20592($4)
	sw $5, 20596($4)
	sw $5, 20600($4)
	sw $5, 20604($4)
	sw $5, 20608($4)
	
	sw $5, 18564($4)
	sw $5, 16520($4)
	
	sw $5, 14476($4)
	sw $5, 12428($4)
	sw $5, 10380($4)
	sw $5, 8332($4)
	sw $5, 6284($4)
	
	sw $5, 4232($4)
	sw $5, 2180($4)
	
	sw $5, 128($4)
	sw $5, 124($4)
	sw $5, 120($4)
	sw $5, 116($4)
	sw $5, 112($4)
	sw $5, 108($4)
	
	sw $5, 2152($4)
	sw $5, 4196($4)
	
	
	#-------R-------#
	
	#-------E-------#
	
	