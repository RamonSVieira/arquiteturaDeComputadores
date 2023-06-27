#--------------------- JOGUINHO ASTEROIDS ---------------------
.text
main: 
	lui $8, 0x1001			#Endereço de memória inicial
      	addi $10, $0, 0x242424		#Cor de fundo
      	addi $11, $0, 0xff0000		#Cor vermelha para a nave
      	addi $12, $0, 0xffffff		#Cor branca para os asteroids
      	addi $13, $0, 0x808080		#Cor cinza para os asteroids
      	
      	addi $14, $0, 0xb7adb3		#Cor cinza para os asteroids
      	addi $15, $0, 0x005c7f		#Cor cinza para os asteroids

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
	
	#------CRIA ASTEROIDET2 4------#
	addi $4, $8, 155136		#Endereço de memória para o asteróide
	add $5, $13, 0			#Cor branca para o asteróide
	jal AsteroidT2
	
	#------CRIA ALIEN 1------#
	addi $4, $8, 232448		#Endereço de memória para o asteróide
	add $5, $14, 0			#Cor branca para o asteróide
	add $6, $15, 0			#Cor branca para o asteróide
	jal Alien
	
	#------CRIA ALIEN 2------#
	addi $4, $8, 41476		#Endereço de memória para o asteróide
	add $5, $14, 0			#Cor branca para o asteróide
	add $6, $15, 0			#Cor branca para o asteróide
	jal Alien
	
	#--------CRIA PLACAR--------#
	addi $4, $8, 8256		#Endereço de memória para o asteróide
	add $5, $12, 0			#Cor branca para o asteróide
	jal Placar
	
	sw $11, 516032($4)
	
	##---------SHADOW--------##
	#----PINTA CENÁRIO----#
	addi $4, $8, 516032		#Endereço de memória para pintar o cenário
	add $5, $10, $0			#Cor preta para o cenário
	jal CriaFundo
	
	lui $21, 0x1001
	
	#------CRIA ALIEN 1------#
	addi $4, $8, 232452		#Endereço de memória para o asteróide
	add $5, $14, 0			#Cor branca para o asteróide
	add $6, $15, 0			#Cor branca para o asteróide
	jal Alien
	
	
	addi $22, $0, 4096
	addi $23, $21, -4
	
fmv:  
	beq $22, $0, sai2
	lw $23, 232444($21)
	sw $23, 232448($21)
	sw $23, 234492($21)
	sw $23, 236536($21)
	sw $23, 238580($21)
	sw $23, 240624($21)
	sw $23, 242668($21)
	sw $23, 244712($21)
	sw $23, 246760($21)
	sw $23, 248808($21)
	sw $23, 250852($21)
	sw $23, 252896($21)
	sw $23, 254944($21)
	sw $23, 256992($21)
	sw $23, 259040($21)
	sw $23, 261088($21)
	sw $23, 263136($21)
	sw $23, 265176($21)
	sw $23, 267216($21)
	sw $23, 269256($21)
	sw $23, 271292($21)
	sw $23, 273324($21)
	sw $23, 275372($21)
	sw $23, 277420($21)
	sw $23, 279484($21)
	sw $23, 281556($21)
	sw $23, 283628($21)
	sw $23, 285708($21)
	addi $21, $21, 4
	
		#------CRIA ALIEN 1------#
		addi $4, $21, 232448  		#Endereço de memória para o asteróide
		add $5, $14, 0			#Cor branca para o asteróide
		add $6, $15, 0			#Cor branca para o asteróide
		jal Alien
		
		
	addi $22, $22, -1
	j fmv
	sai2:
	
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
#Nome: Alien
#Utilidade: Cria alien
#Parametro: $4(ender. memória), $5(cor)
#Saida: ...
Alien:
	addi $9, $0, 30
	
	forAlien1:
		beq $9, $0, saiAlien1
		sw $5, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien1
	
	saiAlien1:
	addi $9, $0, 32
	addi $4, $4, 2048
	forAlien2:
		beq $9, $0, saiAlien2
		sw $5, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien2
	
	saiAlien2:
	addi $9, $0, 34
	addi $4, $4, 2048
	forAlien3:
		beq $9, $0, saiAlien3
		sw $5, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien3
	
	saiAlien3:
	addi $9, $0, 36
	addi $4, $4, 2048
	forAlien4:
		beq $9, $0, saiAlien4
		sw $5, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien4
	
	saiAlien4:
	addi $9, $0, 38
	addi $4, $4, 2048
	forAlien5:
		beq $9, $0, saiAlien5
		sw $5, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien5
	
	saiAlien5:
	addi $9, $0, 40
	addi $4, $4, 2048
	forAlien6:
		beq $9, $0, saiAlien6
		sw $5, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien6
	
	saiAlien6:
	addi $9, $0, 42
	addi $4, $4, 2048
	forAlien7:
		beq $9, $0, saiAlien7
		sw $5, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien7
	
	saiAlien7:
	addi $9, $0, 42
	addi $4, $4, 2044
	forAlien8:
		beq $9, $0, saiAlien8
		sw $5, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien8
	
	saiAlien8:
	addi $9, $0, 8
	addi $4, $4, 2052
	forAlien9:
		beq $9, $0, saiAlien9
		sw $6, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien9
	
	saiAlien9:
	addi $9, $0, 26
	forAlien10:
		beq $9, $0, saiAlien10
		sw $5, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien10
	
	saiAlien10:
	addi $9, $0, 8
	forAlien11:
		beq $9, $0, saiAlien11
		sw $6, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien11
	
	saiAlien11:
	addi $9, $0, 44
	addi $4, $4, 2048
	forAlien12:
		beq $9, $0, saiAlien12
		sw $6, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien12
	
	saiAlien12:
	addi $9, $0, 46
	addi $4, $4, 2048
	forAlien13:
		beq $9, $0, saiAlien13
		sw $6, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien13
	
	saiAlien13:
	addi $9, $0, 46
	addi $4, $4, 2044
	forAlien14:
		beq $9, $0, saiAlien14
		sw $6, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien14
	
	saiAlien14:
	addi $9, $0, 46
	addi $4, $4, 2052
	forAlien15:
		beq $9, $0, saiAlien15
		sw $6, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien15
	
	saiAlien15:
	addi $9, $0, 46
	addi $4, $4, 2044
	forAlien16:
		beq $9, $0, saiAlien16
		sw $6, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien16
	
	saiAlien16:
	addi $9, $0, 46
	addi $4, $4, 2052
	forAlien17:
		beq $9, $0, saiAlien17
		sw $6, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien17
	
	saiAlien17:
	addi $9, $0, 4
	addi $4, $4, 2044
	forAlien18:
		beq $9, $0, saiAlien18
		sw $5, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien18
	
	saiAlien18:
	addi $9, $0, 38
	forAlien19:
		beq $9, $0, saiAlien19
		sw $6, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien19
	
	saiAlien19:
	addi $9, $0, 4
	forAlien20:
		beq $9, $0, saiAlien20
		sw $5, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien20
	
	saiAlien20:
	addi $9, $0, 10
	addi $4, $4, 2044
	forAlien21:
		beq $9, $0, saiAlien21
		sw $5, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien21
	
	saiAlien21:
	addi $9, $0, 30
	forAlien22:
		beq $9, $0, saiAlien22
		sw $6, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien22
	
	saiAlien22:
	addi $9, $0, 10
	forAlien23:
		beq $9, $0, saiAlien23
		sw $5, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien23
	
	saiAlien23:
	addi $9, $0, 14
	addi $4, $4, 2052
	forAlien24:
		beq $9, $0, saiAlien24
		sw $5, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien24
	
	saiAlien24:
	addi $9, $0, 26
	forAlien25:
		beq $9, $0, saiAlien25
		sw $6, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien25
	
	saiAlien25:
	addi $9, $0, 14
	forAlien26:
		beq $9, $0, saiAlien26
		sw $5, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien26
	
	saiAlien26:
	addi $9, $0, 18
	addi $4, $4, 2044
	forAlien27:
		beq $9, $0, saiAlien27
		sw $5, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien27
	
	saiAlien27:
	addi $9, $0, 22
	forAlien28:
		beq $9, $0, saiAlien28
		sw $6, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien28
	
	saiAlien28:
	addi $9, $0, 18
	forAlien29:
		beq $9, $0, saiAlien29
		sw $5, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien29
	
	saiAlien29:
	addi $9, $0, 64
	addi $4, $4, 2056
	forAlien30:
		beq $9, $0, saiAlien30
		sw $5, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien30
	
	saiAlien30:
	addi $9, $0, 72
	addi $4, $4, 2036
	forAlien31:
		beq $9, $0, saiAlien31
		sw $5, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien31
	
	saiAlien31:
	addi $9, $0, 72
	addi $4, $4, 2044
	forAlien32:
		beq $9, $0, saiAlien32
		sw $5, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien32
	
	saiAlien32:
	addi $9, $0, 72
	addi $4, $4, 2052
	forAlien33:
		beq $9, $0, saiAlien33
		sw $5, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien33
	
	saiAlien33:
	addi $9, $0, 64
	addi $4, $4, 2028
	forAlien34:
		beq $9, $0, saiAlien34
		sw $5, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien34
	
	saiAlien34:
	addi $9, $0, 52
	addi $4, $4, 2076
	forAlien35:
		beq $9, $0, saiAlien35
		sw $5, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien35
	
	saiAlien35:
	addi $9, $0, 40
	addi $4, $4, 2020
	forAlien36:
		beq $9, $0, saiAlien36
		sw $5, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien36
	
	saiAlien36:
	addi $9, $0, 24
	addi $4, $4, 2084
	forAlien37:
		beq $9, $0, saiAlien37
		sw $5, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien37
	
	saiAlien37:
	fimAlien:
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
      	addi $4, $4, 2052
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
#Nome: AsteroidT2
#Utilidade: Cria asteróide do tipo2
#Parametro: $4(ender. memória), $5(cor)
#Saida: ...
AsteroidT2:

	sw $5 0($4)
	sw $5 60($4)
	
	addi $4, $4, 2044
	
	sw $5 0($4)
	sw $5 4($4)
	sw $5 8($4)
	
	sw $5 60($4)
	sw $5 64($4)
	sw $5 68($4)
	
	addi $4, $4, 2044
	
	sw $5 0($4)
	sw $5 4($4)
	sw $5 8($4)
	sw $5 12($4)
	sw $5 16($4)
	sw $5 20($4)
	sw $5 24($4)
	sw $5 28($4)
	sw $5 32($4)
	sw $5 36($4)
	sw $5 40($4)
	sw $5 44($4)
	sw $5 48($4)
	sw $5 52($4)
	sw $5 56($4)
	sw $5 60($4)
	sw $5 64($4)
	sw $5 68($4)
	sw $5 72($4)
	sw $5 76($4)
	
	addi $4, $4, 2044
	
	sw $5 0($4)
	sw $5 4($4)
	sw $5 8($4)
	sw $5 12($4)
	sw $5 16($4)
	sw $5 20($4)
	sw $5 24($4)
	sw $5 28($4)
	sw $5 32($4)
	sw $5 36($4)
	sw $5 40($4)
	sw $5 44($4)
	sw $5 48($4)
	sw $5 52($4)
	sw $5 56($4)
	sw $5 60($4)
	sw $5 64($4)
	sw $5 68($4)
	sw $5 72($4)
	sw $5 76($4)
	sw $5 80($4)
	sw $5 84($4)
	
	addi $4, $4, 2044
	
	sw $5 0($4)
	sw $5 4($4)
	sw $5 8($4)
	sw $5 12($4)
	sw $5 16($4)
	sw $5 20($4)
	sw $5 24($4)
	sw $5 28($4)
	sw $5 32($4)
	sw $5 36($4)
	sw $5 40($4)
	sw $5 44($4)
	sw $5 48($4)
	sw $5 52($4)
	sw $5 56($4)
	sw $5 60($4)
	sw $5 64($4)
	sw $5 68($4)
	sw $5 72($4)
	sw $5 76($4)
	sw $5 80($4)
	sw $5 84($4)
	sw $5 88($4)
	sw $5 92($4)
	
	addi $4, $4, 2044
	
	sw $5 0($4)
	sw $5 4($4)
	sw $5 8($4)
	sw $5 12($4)
	sw $5 16($4)
	sw $5 20($4)
	sw $5 24($4)
	sw $5 28($4)
	sw $5 32($4)
	sw $5 36($4)
	sw $5 40($4)
	sw $5 44($4)
	sw $5 48($4)
	sw $5 52($4)
	sw $5 56($4)
	sw $5 60($4)
	sw $5 64($4)
	
	sw $5 68($4)
	sw $5 72($4)
	sw $5 76($4)
	sw $5 80($4)
	sw $5 84($4)
	sw $5 88($4)
	sw $5 92($4)
	sw $5 96($4)
	sw $5 100($4)
	
	addi $4, $4, 2044
	addi $21, $0, 28
	fort21: 
		beq $21, $0, saiFort21
		sw $5, 0($4)
		
		addi $21, $21, -1
		addi $4, $4, 4
		j fort21
	
	saiFort21:
	addi $4, $4, 1932
	addi $21, $0, 30
	
	fort22: 
		beq $21, $0, saiFort22
		sw $5, 0($4)
		
		addi $21, $21, -1
		addi $4, $4, 4
		j fort22
	
	saiFort22:
	addi $4, $4, 1924
	addi $21, $0, 32
	
	fort23: 
		beq $21, $0, saiFort23
		sw $5, 0($4)
		
		addi $21, $21, -1
		addi $4, $4, 4
		j fort23
	
	saiFort23:
	
	addi $4, $4, 1924
	addi $21, $0, 30
	
	fort24: 
		beq $21, $0, saiFort24
		sw $5, 0($4)
		
		addi $21, $21, -1
		addi $4, $4, 4
		j fort24
	
	saiFort24:
	addi $4, $4, 1932
	addi $21, $0, 28
	
	fort25: 
		beq $21, $0, saiFort25
		sw $5, 0($4)
		
		addi $21, $21, -1
		addi $4, $4, 4
		j fort25
	
	saiFort25:
	addi $4, $4, 1936
	addi $21, $0, 26
	
	fort26: 
		beq $21, $0, saiFort26
		sw $5, 0($4)
		
		addi $21, $21, -1
		addi $4, $4, 4
		j fort26
	
	saiFort26:
	addi $4, $4, 1944
	addi $21, $0, 24
	
	fort27: 
		beq $21, $0, saiFort27
		sw $5, 0($4)
		
		addi $21, $21, -1
		addi $4, $4, 4
		j fort27
	
	saiFort27:
	
	addi $4, $4, 1952
	addi $21, $0, 22
	
	fort28: 
		beq $21, $0, saiFort28
		sw $5, 0($4)
		
		addi $21, $21, -1
		addi $4, $4, 4
		j fort28
	
	saiFort28:
	
	addi $4, $4, 1960
	addi $21, $0, 20
	
	fort29: 
		beq $21, $0, saiFort29
		sw $5, 0($4)
		
		addi $21, $21, -1
		addi $4, $4, 4
		j fort29
	
	saiFort29:
	
	addi $4, $4, 1968
	addi $21, $0, 18
	
	fort210: 
		beq $21, $0, saiFort210
		sw $5, 0($4)
		
		addi $21, $21, -1
		addi $4, $4, 4
		j fort210
	
	saiFort210:
	addi $4, $4, 1976
	addi $21, $0, 16
	
	fort211: 
		beq $21, $0, saiFort211
		sw $5, 0($4)
		
		addi $21, $21, -1
		addi $4, $4, 4
		j fort211
	
	saiFort211:
	addi $4, $4, 1984
	addi $21, $0, 14
	
	fort212: 
		beq $21, $0, saiFort212
		sw $5, 0($4)
		
		addi $21, $21, -1
		addi $4, $4, 4
		j fort212
	
	saiFort212:
	
	addi $4, $4, 1992
	addi $21, $0, 12
	
	fort213: 
		beq $21, $0, saiFort213
		sw $5, 0($4)
		
		addi $21, $21, -1
		addi $4, $4, 4
		j fort213
	
	saiFort213:
	
	addi $4, $4, 2000
	addi $21, $0, 8
	
	fort214: 
		beq $21, $0, saiFort214
		sw $5, 0($4)
		
		addi $21, $21, -1
		addi $4, $4, 4
		j fort214
	
	saiFort214:
	
	addi $4, $4, 2012
	addi $21, $0, 4
	
	fort215: 
		beq $21, $0, saiFort215
		sw $5, 0($4)
		
		addi $21, $21, -1
		addi $4, $4, 8
		j fort215
	
	saiFort215:
	
	addi $4, $4, -32
	addi $21, $0, 6
	
	fort216: 
		beq $21, $0, saiFort216
		sw $5, 0($4)
		
		addi $21, $21, -1
		addi $4, $4, -4096
		j fort216
	
	saiFort216:
	
	fimAsteroidt2:
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
	sw $5, 164($4)
    	sw $5, 168($4)
    	sw $5, 172($4)
    	sw $5, 176($4)
    	sw $5, 180($4)
    	sw $5, 184($4)
    	sw $5, 188($4)

    	sw $5, 2240($4)
    	sw $5, 4288($4)
    	sw $5, 6336($4)
    	sw $5, 8384($4)

    	sw $5, 10428($4)
    	sw $5, 10424($4)
    	sw $5, 10420($4)
    	sw $5, 10416($4)
    	sw $5, 10412($4)
    	sw $5, 10408($4)

    	sw $5, 12480($4)
    	sw $5, 14528($4)
    	sw $5, 16576($4)
    	sw $5, 18624($4)
    	sw $5, 20672($4)

    	sw $5, 2212($4)
    	sw $5, 4260($4)
    	sw $5, 6308($4)
    	sw $5, 8356($4)
    	sw $5, 10404($4)
    	sw $5, 12452($4)
    	sw $5, 14500($4)
    	sw $5, 16548($4)
    	sw $5, 18596($4)
    	sw $5, 20644($4)
	
	#-------E-------#
	
	sw $5, 216($4)
	sw $5, 220($4)
	sw $5, 224($4)
	sw $5, 228($4)
	sw $5, 232($4)
	sw $5, 236($4)
	sw $5, 240($4)
	
	sw $5, 2264($4)
	sw $5, 4312($4)
	sw $5, 6360($4)
	sw $5, 8408($4)
	sw $5, 10456($4)
	sw $5, 12504($4)
	sw $5, 14552($4)
	sw $5, 16600($4)
	sw $5, 18648($4)
	sw $5, 20696($4)
	
	sw $5, 20700($4)
	sw $5, 20704($4)
	sw $5, 20708($4)
	sw $5, 20712($4)
	sw $5, 20716($4)
	sw $5, 20720($4)
	
	sw $5, 10460($4)
	sw $5, 10464($4)
	sw $5, 10468($4)
	sw $5, 10472($4)
	sw $5, 10476($4)
	
	sw $5, 6400($4)
	
	sw $5, 14592($4)
	
	#-------0-------#
	
	sw $5, 6428($4)
	sw $5, 8476($4)
	sw $5, 10524($4)
	sw $5, 12572($4)
	sw $5, 14620($4)
	
	sw $5, 16672($4)
	sw $5, 18724($4)
	sw $5, 20776($4)
	
	sw $5, 20780($4)
	sw $5, 20784($4)
	sw $5, 20788($4)
	
	sw $5, 18744($4)
	sw $5, 16700($4)
	
	sw $5, 14656($4)
	sw $5, 12608($4)
	sw $5, 10560($4)
	sw $5, 8512($4)
	sw $5, 6464($4)
	
	sw $5, 4412($4)
	sw $5, 2360($4)
	sw $5, 308($4)
	
	sw $5, 304($4)
	sw $5, 300($4)
	sw $5, 296($4)
	
	sw $5, 2340($4)
	sw $5, 4384($4)
	
	fimPlacar:
		jr $31
	
	
	
	