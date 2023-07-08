#--------------------- JOGUINHO ASTEROIDS ---------------------
.text
main: 
	lui $8, 0x1001			#Endereço de memória inicial
      	addi $10, $0, 0x242424		#Cor de fundo
      	addi $11, $0, 0xff0000		#Cor vermelha para a nave
      	addi $12, $0, 0xffffff		#Cor branca para os asteroids
      	addi $13, $0, 0x814D2D		#Cor cinza para os asteroids
      	
      	addi $14, $0, 0x000000		#Cor cinza para os asteroids
      	addi $15, $0, 0x776F66		#Cor cinza para os asteroids
      	
      	lui $25, 0xffff			#$25 = digitado? o que foi?
      	addi $26, $0, 'a'
      	addi $27, $0, 's'
      	addi $28, $0, 'd'
      	addi $29, $0, 'w'
      	
	#----PINTA CENÁRIO----#
	addi $4, $8, 0			#Endereço de memória para pintar o cenário
	add $5, $10, $0			#Cor preta para o cenário
	jal CriaFundo
	
	#------CRIA NAVE------#
	addi $4, $8, 474112		#Endereço de memória para a nave
	add $5, $11, $0 		#Cor vermelha para a nave
	jal CriaNave
	
	#------CRIA ASTEROIDET1 1------#
	addi $4, $8, 39900		#Endereço de memória para o asteróide
	add $5, $13, 0			#Cor branca para o asteróide
	jal AsteroidT1
	
	#------CRIA ASTEROIDET1 2------#
	addi $4, $8, 55376		#Endereço de memória para o asteróide
	add $5, $13, 0			#Cor branca para o asteróide
	jal AsteroidT1
	
	#------CRIA ASTEROIDET1 3------#
	addi $4, $8, 124672		#Endereço de memória para o asteróide
	add $5, $13, 0			#Cor branca para o asteróide
	jal AsteroidT1
	
	#------CRIA ASTEROIDET1 4------#
	addi $4, $8, 233216		#Endereço de memória para o asteróide
	add $5, $13, 0			#Cor branca para o asteróide
	jal AsteroidT1
	
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
	
	
	
	
	#SOMA 516.032 PARA A SHADOW
	
	##---------SHADOW--------##
	#----PINTA CENÁRIO----#
	addi $4, $8, 516032		#Endereço de memória para pintar o cenário
	add $5, $10, $0			#Cor preta para o cenário
	jal CriaFundo
	
	#------CRIA ASTEROIDET1 1------#
	addi $4, $8, 555932		#Endereço de memória para o asteróide
	add $5, $13, 0			#Cor branca para o asteróide
	jal AsteroidT1
	
	#------CRIA ASTEROIDET1 4------#
	addi $4, $8, 745248		#Endereço de memória para o asteróide
	add $5, $13, 0			#Cor branca para o asteróide
	jal AsteroidT1
	
	lui $21, 0x1001
	lui $24, 0x1001
	
	#------CRIA ALIEN 1------#
	addi $4, $8, 232452		#Endereço de memória para o asteróide
	add $5, $14, 0			#Cor branca para o asteróide
	add $6, $15, 0			#Cor branca para o asteróide
	jal Alien
	
	
	
	
	addi $22, $0, 4096
	addi $23, $21, -4
	
fmv:  
	beq $22, $0, sai2
	
	##MOVIMENTO ALIEN## 
	##MOVIMENTO ALIEN##
		##MOVIMENTO ALIEN LINHA1
		lw $23, 744480($21)
		sw $23, 232448($21)
		##MOVIMENTO ALIEN LINHA2
		lw $23, 746524($21)
		sw $23, 234492($21)
		##MOVIMENTO ALIEN LINHA3
		lw $23, 748560($21)
		sw $23, 236528($21)
		##MOVIMENTO ALIEN LINHA4
		lw $23, 750604($21)
		sw $23, 238572($21)
		##MOVIMENTO ALIEN LINHA5
		lw $23, 752640($21)
		sw $23, 240608($21)
		##MOVIMENTO ALIEN LINHA6
		lw $23, 754684($21)
		sw $23, 242652($21)
		##MOVIMENTO ALIEN LINHA7
		lw $23, 756728($21)
		sw $23, 244696($21)
		##MOVIMENTO ALIEN LINHA8
		lw $23, 758772($21)
		sw $23, 246740($21)
		##MOVIMENTO ALIEN LINHA9
		lw $23, 760816($21)
		sw $23, 248784($21)
		##MOVIMENTO ALIEN LINHA10
		lw $23, 762864($21)
		sw $23, 250832($21)
		##MOVIMENTO ALIEN LINHA11
		lw $23, 764912($21)
		sw $23, 252880($21)
		##MOVIMENTO ALIEN LINHA12
		lw $23, 766956($21)
		sw $23, 254924($21)
		##MOVIMENTO ALIEN LINHA13
		lw $23, 769000($21)
		sw $23, 256968($21)
		##MOVIMENTO ALIEN LINHA14
		lw $23, 771048($21)
		sw $23, 259016($21)
		##MOVIMENTO ALIEN LINHA15
		lw $23, 773096($21)
		sw $23, 261064($21)
		##MOVIMENTO ALIEN LINHA16
		lw $23, 775140($21)
		sw $23, 263108($21)
		##MOVIMENTO ALIEN LINHA17
		lw $23, 777184($21)
		sw $23, 265152($21)
		##MOVIMENTO ALIEN LINHA18
		lw $23, 779232($21)
		sw $23, 267200($21)
		##MOVIMENTO ALIEN LINHA19
		lw $23, 781280($21)
		sw $23, 269248($21)
		##MOVIMENTO ALIEN LINHA20
		lw $23, 783328($21)
		sw $23, 271296($21)
		##MOVIMENTO ALIEN LINHA21
		lw $23, 785376($21)
		sw $23, 273344($21)
		##MOVIMENTO ALIEN LINHA22
		lw $23, 787424($21)
		sw $23, 275392($21)
		##MOVIMENTO ALIEN LINHA23
		lw $23, 789448($21)
		sw $23, 277416($21)
		##MOVIMENTO ALIEN LINHA24
		lw $23, 791492($21)
		sw $23, 279460($21)
		##MOVIMENTO ALIEN LINHA25
		lw $23, 793536($21)
		sw $23, 281504($21)
		##MOVIMENTO ALIEN LINHA26
		lw $23, 795580($21)
		sw $23, 283548($21)
		##MOVIMENTO ALIEN LINHA27
		lw $23, 797624($21)
		sw $23, 285592($21)
		##MOVIMENTO ALIEN LINHA28
		lw $23, 799668($21)
		sw $23, 287636($21)
		##MOVIMENTO ALIEN LINHA29
		lw $23, 801712($21)
		sw $23, 289680($21)
		##MOVIMENTO ALIEN LINHA30
		lw $23, 803756($21)
		sw $23, 291724($21)
		##MOVIMENTO ALIEN LINHA31
		lw $23, 805800($21)
		sw $23, 293768($21)
		##MOVIMENTO ALIEN LINHA32
		lw $23, 807844($21)
		sw $23, 295812($21)
		##MOVIMENTO ALIEN LINHA33
		lw $23, 809888($21)
		sw $23, 297856($21)
		##MOVIMENTO ALIEN LINHA34
		lw $23, 811936($21)
		sw $23, 299904($21)
		##MOVIMENTO ALIEN LINHA35
		lw $23, 813984($21)
		sw $23, 301952($21)
		##MOVIMENTO ALIEN LINHA36
		lw $23, 816032($21)
		sw $23, 304000($21)
		##MOVIMENTO ALIEN LINHA37
		lw $23, 818080($21)
		sw $23, 306048($21)
		##MOVIMENTO ALIEN LINHA38
		lw $23, 820128($21)
		sw $23, 308096($21)
		##MOVIMENTO ALIEN LINHA39
		lw $23, 822180($21)
		sw $23, 310148($21)
		##MOVIMENTO ALIEN LINHA40
		lw $23, 824232($21)
		sw $23, 312200($21)
		##MOVIMENTO ALIEN LINHA41
		lw $23, 826284($21)
		sw $23, 314252($21)
		##MOVIMENTO ALIEN LINHA42
		lw $23, 828336($21)
		sw $23, 316304($21)
		##MOVIMENTO ALIEN LINHA43
		lw $23, 830388($21)
		sw $23, 318356($21)
		##MOVIMENTO ALIEN LINHA44
		lw $23, 832440($21)
		sw $23, 320408($21)
	##MOVIMENTO ALIEN## 
	##MOVIMENTO ALIEN##
	
	lw $30, 0($25)		#Se digitou = 1, else = 0
	beq $30, $0, naoDig
	lw $30, 4($25)		#Algo foi digitado, entao veremos o que foi
	beq $30, $26, digA
	beq $30, $27, digS
	beq $30, $28, digD
	beq $30, $29, digW
	
digD:
	##MOVIMENTO DIREITA NAVE##

		##MOVIMENTO LINHA 1
		 lw $23, 992144($24)
		 sw $23, 474112($24)
		##MOVIMENTO LINHA 2
		 lw $23, 994188($24)
		 sw $23, 476156($24)
		##MOVIMENTO LINHA 3
		 lw $23, 996232($24)
		 sw $23, 478200($24)
		##MOVIMENTO LINHA 4
		 lw $23, 998276($24)
		 sw $23, 480244($24)
		##MOVIMENTO LINHA 5
		 lw $23, 1000320($24)
		 sw $23, 482288($24)
		##MOVIMENTO LINHA 6
		 lw $23, 1002364($24)
		 sw $23, 484332($24)
		##MOVIMENTO LINHA 7
		 lw $23, 1004408($24)
		 sw $23, 486376($24)
		##MOVIMENTO LINHA 8
		 lw $23, 1006452($24)
		 sw $23, 488420($24)
		##MOVIMENTO LINHA 9
		 lw $23, 1008496($24)
		 sw $23, 490464($24)
		
		addi $24, $24, 4
		
		#------CRIA NAVE------#
		addi $4, $24, 474112		#Endereço de memória para a nave
		add $5, $11, $0 		#Cor vermelha para a nave
		jal CriaNave
		
		j naoDig
		
digA:		
	##MOVIMENTO ESQUERDA NAVE##
		##MOVIMENTO LINHA 1
		 lw $23, 992144($24)
		 sw $23, 474112($24)
		##MOVIMENTO LINHA 2
		 lw $23, 994196($24)
		 sw $23, 476164($24)
		##MOVIMENTO LINHA 3
		 lw $23, 996248($24)
		 sw $23, 478216($24)
		##MOVIMENTO LINHA 4
		 lw $23, 998300($24)
		 sw $23, 480268($24)
		##MOVIMENTO LINHA 5
		 lw $23, 1000352($24)
		 sw $23, 482320($24)
		##MOVIMENTO LINHA 6
		 lw $23, 1002404($24)
		 sw $23, 484372($24)
		##MOVIMENTO LINHA 7
		 lw $23, 1004456($24)
		 sw $23, 486424($24)
		##MOVIMENTO LINHA 8
		 lw $23, 1006508($24)
		 sw $23, 488476($24)
		##MOVIMENTO LINHA 9
		 lw $23, 1008560($24)
		 sw $23, 490528($24)
		
		 addi $24, $24, -4
		
		#------CRIA NAVE------#
		 addi $4, $24, 474112		#Endereço de memória para a nave
		 add $5, $11, $0 		#Cor vermelha para a nave
		 jal CriaNave
		
		j naoDig
		
digW:	 
	##MOVIMENTO CIMA NAVE##
		##MOVIMENTO COLUNA 1
		 lw $23, 1002496($24)
		 sw $23, 490464($24)
		##MOVIMENTO COLUNA 2
		 lw $23, 1002500($24)
		 sw $23, 490468($24)
		##MOVIMENTO COLUNA 3
		 lw $23, 1002504($24)
		 sw $23, 490472($24)
		##MOVIMENTO COLUNA 4
		 lw $23, 1002508($24)
		 sw $23, 490476($24)
		##MOVIMENTO COLUNA 5
		 lw $23, 1002512($24)
		 sw $23, 490480($24)
		##MOVIMENTO COLUNA 6
		 lw $23, 1002516($24)
		 sw $23, 490484($24)
		##MOVIMENTO COLUNA 7
		 lw $23, 1002520($24)
		 sw $23, 490488($24)
		##MOVIMENTO COLUNA 8
		 lw $23, 1002524($24)
		 sw $23, 490492($24)
		##MOVIMENTO COLUNA 9
		 lw $23, 1002528($24)
		 sw $23, 490496($24)
		##MOVIMENTO COLUNA 10
		 lw $23, 1002532($24)
		 sw $23, 490500($24)
		##MOVIMENTO COLUNA 11
		 lw $23, 1002536($24)
		 sw $23, 490504($24)
		##MOVIMENTO COLUNA 12
		 lw $23, 1002540($24)
		 sw $23, 490508($24)
		##MOVIMENTO COLUNA 13
		 lw $23, 1002544($24)
		 sw $23, 490512($24)
		##MOVIMENTO COLUNA 14
		 lw $23, 1002548($24)
		 sw $23, 490516($24)
		##MOVIMENTO COLUNA 15
		 lw $23, 1002552($24)
		 sw $23, 490520($24)
		##MOVIMENTO COLUNA 16
		 lw $23, 1002556($24)
		 sw $23, 490524($24)
		##MOVIMENTO COLUNA 17
		 lw $23, 1002560($24)
		 sw $23, 490528($24)
		
		addi $24, $24, -2048
		
		#------CRIA NAVE------#
		addi $4, $24, 474112		#Endereço de memória para a nave
		add $5, $11, $0 		#Cor vermelha para a nave
		jal CriaNave
		
		j naoDig
		
digS:
	##MOVIMENTO BAIXO NAVE##
		##MOVIMENTO LINHA 1
		 lw $23, 992144($24)
		 sw $23, 474112($24)
		##MOVIMENTO LINHA 2
		 lw $23, 994188($24)
		 sw $23, 476156($24)
		##MOVIMENTO LINHA 3
		 lw $23, 996232($24)
		 sw $23, 478200($24)
		##MOVIMENTO LINHA 4
		 lw $23, 998276($24)
		 sw $23, 480244($24)
		##MOVIMENTO LINHA 5
		 lw $23, 1000320($24)
		 sw $23, 482288($24)
		##MOVIMENTO LINHA 6
		 lw $23, 1002364($24)
		 sw $23, 484332($24)
		##MOVIMENTO LINHA 7
		 lw $23, 1004408($24)
		 sw $23, 486376($24)
		##MOVIMENTO LINHA 8
		 lw $23, 1006452($24)
		 sw $23, 488420($24)
		##MOVIMENTO LINHA 9
		 lw $23, 1008496($24)
		 sw $23, 490464($24)
		##MOVIMENTO LINHA 1
		 lw $23, 992144($24)
		 sw $23, 474112($24)
		##MOVIMENTO LINHA 2
		 lw $23, 994196($24)
		 sw $23, 476164($24)
		##MOVIMENTO LINHA 3
		 lw $23, 996248($24)
		 sw $23, 478216($24)
		##MOVIMENTO LINHA 4
		 lw $23, 998300($24)
		 sw $23, 480268($24)
		##MOVIMENTO LINHA 5
		 lw $23, 1000352($24)
		 sw $23, 482320($24)
		##MOVIMENTO LINHA 6
		 lw $23, 1002404($24)
		 sw $23, 484372($24)
		##MOVIMENTO LINHA 7
		 lw $23, 1004456($24)
		 sw $23, 486424($24)
		##MOVIMENTO LINHA 8
		 lw $23, 1006508($24)
		 sw $23, 488476($24)
		##MOVIMENTO LINHA 9
		 lw $23, 1008560($24)
		 sw $23, 490528($24)
		 
		addi $24, $24, 2048
		
		#------CRIA NAVE------#
		addi $4, $24, 474112		#Endereço de memória para a nave
		add $5, $11, $0 		#Cor vermelha para a nave
		jal CriaNave
		
		j naoDig

naoDig:

	addi $21, $21, 4
	
		#------CRIA ALIEN 1------#
		addi $4, $21, 232448  		#Endereço de memória para o asteróide
		add $5, $14, 0			#Cor branca para o asteróide
		add $6, $15, 0			#Cor branca para o asteróide
		jal Alien
		
		
		
		
	addi $22, $22, -1
	j fmv
	sai2:
	
	#------- FIM DO GAME -------#
	
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
	addi $18, $0, 0x0F623E
	addi $19, $0, 0xA36BC1
	addi $20, $0, 0x5a5653
	addi $9, $0, 14
	
	forAlien1:
		beq $9, $0, saiAlien1
		sw $5, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien1
	
	saiAlien1:
	
	addi $4, $4, 2048
	addi $9, $0, 16
	
	forAlien2:
		beq $9, $0, saiAlien2
		sw $5, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien2
	
	saiAlien2:
	
	addi $4, $4, 2040
	addi $9, $0, 5
	
	forAlien3:
		beq $9, $0, saiAlien3
		sw $5, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien3
	
	saiAlien3:
	
	addi $9, $0, 12
	
	forAlien4:
		beq $9, $0, saiAlien4
		sw $6, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien4
	
	saiAlien4:
	
	addi $9, $0, 5
	
	forAlien5:
		beq $9, $0, saiAlien5
		sw $5, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien5
	
	saiAlien5:
	
	addi $4, $4, 2048
	addi $9, $0, 5
	
	forAlien6:
		beq $9, $0, saiAlien6
		sw $5, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien6
	
	saiAlien6:
	
	addi $9, $0, 14
	
	forAlien7:
		beq $9, $0, saiAlien7
		sw $6, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien7
	
	saiAlien7:
	
	addi $9, $0, 5
	
	forAlien8:
		beq $9, $0, saiAlien8
		sw $5, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien8
	
	saiAlien8:
	
	addi $4, $4, 2040
	
	addi $9, $0, 5
	
	forAlien9:
		beq $9, $0, saiAlien9
		sw $5, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien9
	
	saiAlien9:
	
	addi $9, $0, 7
	
	forAlien10:
		beq $9, $0, saiAlien10
		sw $6, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien10
	
	saiAlien10:
	
	addi $9, $0, 6
	
	forAlien11:
		beq $9, $0, saiAlien11
		sw $5, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien11
	
	saiAlien11:
	
	addi $9, $0, 7
	
	forAlien12:
		beq $9, $0, saiAlien12
		sw $6, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien12
	
	saiAlien12:
	
	addi $9, $0, 5
	
	forAlien13:
		beq $9, $0, saiAlien13
		sw $5, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien13
	
	saiAlien13:
	
	addi $4, $4, 2048
	
	addi $9, $0, 5
	
	forAlien14:
		beq $9, $0, saiAlien14
		sw $5, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien14
	
	saiAlien14:
	
	addi $9, $0, 7
	
	forAlien15:
		beq $9, $0, saiAlien15
		sw $6, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien15
	
	saiAlien15:
	
	addi $9, $0, 8
	
	forAlien16:
		beq $9, $0, saiAlien16
		sw $5, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien16
	
	saiAlien16:
	
	addi $9, $0, 7
	
	forAlien17:
		beq $9, $0, saiAlien17
		sw $6, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien17
	
	saiAlien17:
	
	addi $9, $0, 5
	
	forAlien18:
		beq $9, $0, saiAlien18
		sw $5, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien18
	
	saiAlien18:
	
	addi $4, $4, 2048
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	addi $9, $0, 7
	
	forAlien19:
		beq $9, $0, saiAlien19
		sw $6, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien19
	
	saiAlien19:
	
	addi $9, $0, 5
	
	forAlien20:
		beq $9, $0, saiAlien20
		sw $5, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien20
	
	saiAlien20:
	
	addi $9, $0, 4
	
	forAlien21:
		beq $9, $0, saiAlien21
		sw $18, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien21
	
	saiAlien21:
	
	addi $9, $0, 5
	
	forAlien22:
		beq $9, $0, saiAlien22
		sw $5, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien22
	
	saiAlien22:
	
	addi $9, $0, 7
	
	forAlien23:
		beq $9, $0, saiAlien23
		sw $6, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien23
	
	saiAlien23:
	
	addi $9, $0, 3
	
	forAlien24:
		beq $9, $0, saiAlien24
		sw $5, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien24
	
	saiAlien24:
	
	addi $4, $4, 2048
	
	addi $9, $0, 3
	
	forAlien25:
		beq $9, $0, saiAlien25
		sw $5, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien25
	
	saiAlien25:
	
	addi $9, $0, 7
	
	forAlien26:
		beq $9, $0, saiAlien26
		sw $6, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien26
	
	saiAlien26:
	
	addi $9, $0, 5
	
	forAlien27:
		beq $9, $0, saiAlien27
		sw $5, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien27
	
	saiAlien27:
	
	addi $9, $0, 6
	
	forAlien28:
		beq $9, $0, saiAlien28
		sw $18, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien28
	
	saiAlien28:
	
	addi $9, $0, 5
	
	forAlien29:
		beq $9, $0, saiAlien29
		sw $5, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien29
	
	saiAlien29:
	
	addi $9, $0, 7
	
	forAlien30:
		beq $9, $0, saiAlien30
		sw $6, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien30
	
	saiAlien30:
	
	addi $9, $0, 3
	
	forAlien31:
		beq $9, $0, saiAlien31
		sw $5, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien31
	
	saiAlien31:
	
	addi $4, $4, 2048
	addi $9, $0, 3
	
	forAlien32:
		beq $9, $0, saiAlien32
		sw $5, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien32
	
	saiAlien32:
	
	addi $9, $0, 7
	
	forAlien33:
		beq $9, $0, saiAlien33
		sw $6, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien33
	
	saiAlien33:
	
	addi $9, $0, 3
	
	forAlien34:
		beq $9, $0, saiAlien34
		sw $5, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien34
	
	saiAlien34:
	
	addi $9, $0, 12
	
	forAlien35:
		beq $9, $0, saiAlien35
		sw $18, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien35
	
	saiAlien35:
	
	addi $9, $0, 3
	
	forAlien36:
		beq $9, $0, saiAlien36
		sw $5, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien36
	
	saiAlien36:
	
	addi $9, $0, 7
	
	forAlien37:
		beq $9, $0, saiAlien37
		sw $6, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien37
	
	saiAlien37:
	
	addi $9, $0, 3
	
	forAlien38:
		beq $9, $0, saiAlien38
		sw $5, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien38
	
	saiAlien38:
	
	addi $4, $4, 2044
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	addi $9, $0, 7
	
	forAlien39:
		beq $9, $0, saiAlien39
		sw $6, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien39
	
	saiAlien39:
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	addi $9, $0, 14
	
	forAlien40:
		beq $9, $0, saiAlien40
		sw $18, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien40
	
	saiAlien40:
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	addi $9, $0, 7
	
	forAlien41:
		beq $9, $0, saiAlien41
		sw $6, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien41
	
	saiAlien41:
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	addi $4, $4, 2052
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	addi $9, $0, 6
	
	forAlien42:
		beq $9, $0, saiAlien42
		sw $6, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien42
	
	saiAlien42:
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	addi $9, $0, 16
	
	forAlien43:
		beq $9, $0, saiAlien43
		sw $18, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien43
	
	saiAlien43:
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	addi $9, $0, 6
	
	forAlien44:
		beq $9, $0, saiAlien44
		sw $6, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien44
	
	saiAlien44:
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	addi $4, $4, 2048
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	addi $9, $0, 6
	
	forAlien45:
		beq $9, $0, saiAlien45
		sw $6, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien45
	
	saiAlien45:
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	addi $9, $0, 18
	
	forAlien46:
		beq $9, $0, saiAlien46
		sw $18, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien46
	
	saiAlien46:
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	addi $9, $0, 6
	
	forAlien47:
		beq $9, $0, saiAlien47
		sw $6, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien47
	
	saiAlien47:
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	addi $4, $4, 2048
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	addi $9, $0, 7
	
	forAlien48:
		beq $9, $0, saiAlien48
		sw $6, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien48
	
	saiAlien48:
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	sw $18, 0($4)
	addi $4, $4, 4
	sw $18, 0($4)
	addi $4, $4, 4
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	addi $9, $0, 6
	
	forAlien49:
		beq $9, $0, saiAlien49
		sw $18, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien49
	
	saiAlien49:
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	sw $18, 0($4)
	addi $4, $4, 4
	sw $18, 0($4)
	addi $4, $4, 4
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	addi $9, $0, 7
	
	forAlien50:
		beq $9, $0, saiAlien50
		sw $6, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien50
	
	saiAlien50:
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	addi $4, $4, 2044
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	addi $9, $0, 8
	
	forAlien51:
		beq $9, $0, saiAlien51
		sw $6, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien51
	
	saiAlien51:
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	sw $18, 0($4)
	addi $4, $4, -4
	sw $18, 0($4)
	addi $4, $4, -4
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	addi $9, $0, 6
	
	forAlien52:
		beq $9, $0, saiAlien52
		sw $18, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien52
	
	saiAlien52:
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	sw $18, 0($4)
	addi $4, $4, -4
	sw $18, 0($4)
	addi $4, $4, -4
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	addi $9, $0, 8
	
	forAlien53:
		beq $9, $0, saiAlien53
		sw $6, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien53
	
	saiAlien53:
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	addi $4, $4, 2052
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	addi $9, $0, 8
	
	forAlien54:
		beq $9, $0, saiAlien54
		sw $6, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien54
	
	saiAlien54:
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	sw $18, 0($4)
	addi $4, $4, 4
	sw $18, 0($4)
	addi $4, $4, 4
	
	addi $9, $0, 6
	
	forAlien55:
		beq $9, $0, saiAlien55
		sw $5, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien55
	
	saiAlien55:
	
	sw $18, 0($4)
	addi $4, $4, 4
	sw $18, 0($4)
	addi $4, $4, 4
	
	addi $9, $0, 6
	
	forAlien56:
		beq $9, $0, saiAlien56
		sw $5, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien56
	
	saiAlien56:
	
	sw $18, 0($4)
	addi $4, $4, 4
	sw $18, 0($4)
	addi $4, $4, 4
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	addi $9, $0, 8
	
	forAlien57:
		beq $9, $0, saiAlien57
		sw $6, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien57
	
	saiAlien57:
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	addi $4, $4, 2048
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	addi $9, $0, 8
	
	forAlien58:
		beq $9, $0, saiAlien58
		sw $6, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien58
	
	saiAlien58:
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	sw $18, 0($4)
	addi $4, $4, -4
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	sw $18, 0($4)
	addi $4, $4, -4
	sw $18, 0($4)
	addi $4, $4, -4
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	sw $18, 0($4)
	addi $4, $4, -4
	sw $18, 0($4)
	addi $4, $4, -4
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	addi $9, $0, 8
	
	forAlien59:
		beq $9, $0, saiAlien59
		sw $6, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien59
	
	saiAlien59:
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	addi $4, $4, 2048
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	addi $9, $0, 10
	
	forAlien60:
		beq $9, $0, saiAlien60
		sw $6, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien60
	
	saiAlien60:
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	sw $18, 0($4)
	addi $4, $4, 4
	sw $18, 0($4)
	addi $4, $4, 4
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	sw $18, 0($4)
	addi $4, $4, 4
	sw $18, 0($4)
	addi $4, $4, 4
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	sw $18, 0($4)
	addi $4, $4, 4
	sw $18, 0($4)
	addi $4, $4, 4
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	addi $9, $0, 10
	
	forAlien61:
		beq $9, $0, saiAlien61
		sw $6, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien61
	
	saiAlien61:
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	addi $4, $4, 2044
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	addi $9, $0, 12
	
	forAlien62:
		beq $9, $0, saiAlien62
		sw $6, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien62
	
	saiAlien62:
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	sw $18, 0($4)
	addi $4, $4, -4
	sw $18, 0($4)
	addi $4, $4, -4
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	sw $18, 0($4)
	addi $4, $4, -4
	sw $18, 0($4)
	addi $4, $4, -4
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	sw $18, 0($4)
	addi $4, $4, -4
	sw $18, 0($4)
	addi $4, $4, -4
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	addi $9, $0, 12
	
	forAlien63:
		beq $9, $0, saiAlien63
		sw $6, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien63
	
	saiAlien63:
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	addi $4, $4, 2052
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	sw $6, 0($4)
	addi $4, $4, 4
	sw $6, 0($4)
	addi $4, $4, 4
	sw $6, 0($4)
	addi $4, $4, 4
	sw $6, 0($4)
	addi $4, $4, 4
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	sw $6, 0($4)
	addi $4, $4, 4
	sw $6, 0($4)
	addi $4, $4, 4
	sw $6, 0($4)
	addi $4, $4, 4
	sw $6, 0($4)
	addi $4, $4, 4
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	addi $9, $0, 14
	
	forAlien64:
		beq $9, $0, saiAlien64
		sw $18, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien64
	
	saiAlien64:
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	sw $6, 0($4)
	addi $4, $4, 4
	sw $6, 0($4)
	addi $4, $4, 4
	sw $6, 0($4)
	addi $4, $4, 4
	sw $6, 0($4)
	addi $4, $4, 4
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	sw $6, 0($4)
	addi $4, $4, 4
	sw $6, 0($4)
	addi $4, $4, 4
	sw $6, 0($4)
	addi $4, $4, 4
	sw $6, 0($4)
	addi $4, $4, 4
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	addi $4, $4, 2044
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5 0($4)
	addi $4, $4, -4
	
	sw $6, 0($4)
	addi $4, $4, -4
	sw $6 0($4)
	addi $4, $4, -4
	sw $6, 0($4)
	addi $4, $4, -4
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	sw $6, 0($4)
	addi $4, $4, -4
	sw $6 0($4)
	addi $4, $4, -4
	sw $6, 0($4)
	addi $4, $4, -4
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	addi $9, $0, 12
	
	forAlien65:
		beq $9, $0, saiAlien65
		sw $18, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien65
	
	saiAlien65:
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	sw $6, 0($4)
	addi $4, $4, -4
	sw $6 0($4)
	addi $4, $4, -4
	sw $6, 0($4)
	addi $4, $4, -4
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	sw $6, 0($4)
	addi $4, $4, -4
	sw $6 0($4)
	addi $4, $4, -4
	sw $6, 0($4)
	addi $4, $4, -4
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5 0($4)
	addi $4, $4, -4
	
	addi $4, $4, 2052
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5 0($4)
	addi $4, $4, 4
	
	sw $6, 0($4)
	addi $4, $4, 4
	sw $6 0($4)
	addi $4, $4, 4
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5 0($4)
	addi $4, $4, 4
	
	sw $18, 0($4)
	addi $4, $4, 4
	sw $18 0($4)
	addi $4, $4, 4
	sw $18, 0($4)
	addi $4, $4, 4
	sw $18 0($4)
	addi $4, $4, 4
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5 0($4)
	addi $4, $4, 4
	
	sw $6, 0($4)
	addi $4, $4, 4
	sw $6 0($4)
	addi $4, $4, 4
	sw $6 0($4)
	addi $4, $4, 4
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	sw $18, 0($4)
	addi $4, $4, 4
	sw $18 0($4)
	addi $4, $4, 4
	sw $18, 0($4)
	addi $4, $4, 4
	sw $18 0($4)
	addi $4, $4, 4
	
	sw $5 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	sw $18, 0($4)
	addi $4, $4, 4
	sw $18 0($4)
	addi $4, $4, 4
	sw $18, 0($4)
	addi $4, $4, 4
	sw $18 0($4)
	addi $4, $4, 4
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	sw $6, 0($4)
	addi $4, $4, 4
	sw $6 0($4)
	addi $4, $4, 4
	sw $6, 0($4)
	addi $4, $4, 4
	
	sw $5 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	sw $18, 0($4)
	addi $4, $4, 4
	sw $18 0($4)
	addi $4, $4, 4
	sw $18, 0($4)
	addi $4, $4, 4
	sw $18 0($4)
	addi $4, $4, 4
	
	sw $5 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	sw $6 0($4)
	addi $4, $4, 4
	sw $6, 0($4)
	addi $4, $4, 4
	
	sw $5 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	addi $4, $4, 2044
	
	sw $5 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	sw $6 0($4)
	addi $4, $4, -4
	sw $6, 0($4)
	addi $4, $4, -4
	
	sw $5 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	sw $18 0($4)
	addi $4, $4, -4
	sw $18, 0($4)
	addi $4, $4, -4
	sw $18 0($4)
	addi $4, $4, -4
	sw $18, 0($4)
	addi $4, $4, -4
	
	sw $5 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	sw $6 0($4)
	addi $4, $4, -4
	sw $6, 0($4)
	addi $4, $4, -4
	sw $6 0($4)
	addi $4, $4, -4
	sw $6, 0($4)
	addi $4, $4, -4
	
	sw $5 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	sw $18 0($4)
	addi $4, $4, -4
	sw $18, 0($4)
	addi $4, $4, -4
	sw $18 0($4)
	addi $4, $4, -4
	sw $18, 0($4)
	addi $4, $4, -4
	
	sw $5 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	sw $18 0($4)
	addi $4, $4, -4
	sw $18, 0($4)
	addi $4, $4, -4
	sw $18 0($4)
	addi $4, $4, -4
	sw $18, 0($4)
	addi $4, $4, -4
	
	sw $5 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	sw $6 0($4)
	addi $4, $4, -4
	sw $6, 0($4)
	addi $4, $4, -4
	sw $6 0($4)
	addi $4, $4, -4
	sw $6, 0($4)
	addi $4, $4, -4
	
	sw $5 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	sw $18 0($4)
	addi $4, $4, -4
	sw $18, 0($4)
	addi $4, $4, -4
	sw $18 0($4)
	addi $4, $4, -4
	sw $18, 0($4)
	addi $4, $4, -4
	
	sw $5 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	sw $6 0($4)
	addi $4, $4, -4
	sw $6, 0($4)
	addi $4, $4, -4
	
	sw $5 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	addi $4, $4, 2028
	
	addi $9, $0, 58
	
	forAlien66:
		beq $9, $0, saiAlien66
		sw $5, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien66
	
	saiAlien66:
	
	addi $4, $4, 2048
	
	addi $9, $0, 60
	
	forAlien67:
		beq $9, $0, saiAlien67
		sw $5, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien67
	
	saiAlien67:
	
	addi $4, $4, 2048
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	addi $9, $0, 58
	
	forAlien68:
		beq $9, $0, saiAlien68
		sw $19, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien68
	
	saiAlien68:
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	addi $4, $4, 2048
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	addi $9, $0, 58
	
	forAlien69:
		beq $9, $0, saiAlien69
		sw $19, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien69
	
	saiAlien69:
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	addi $4, $4, 2048
	
	addi $9, $0, 66
	
	forAlien70:
		beq $9, $0, saiAlien70
		sw $5, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien70
	
	saiAlien70:
	
	addi $4, $4, 2048
	
	addi $9, $0, 68
	
	forAlien71:
		beq $9, $0, saiAlien71
		sw $5, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien71
	
	saiAlien71:
	
	addi $4, $4, 2048
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	addi $9, $0, 64
	
	forAlien72:
		beq $9, $0, saiAlien72
		sw $20, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien72
	
	saiAlien72:
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	addi $4, $4, 2048
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	addi $9, $0, 66
	
	forAlien73:
		beq $9, $0, saiAlien73
		sw $20, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien73
	
	saiAlien73:
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	addi $4, $4, 2048
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	addi $9, $0, 68
	
	forAlien74:
		beq $9, $0, saiAlien74
		sw $20, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien74
	
	saiAlien74:
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	addi $4, $4, 2048
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	addi $9, $0, 70
	
	forAlien75:
		beq $9, $0, saiAlien75
		sw $20, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien75
	
	saiAlien75:
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	addi $4, $4, 2048
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	addi $9, $0, 72
	
	forAlien76:
		beq $9, $0, saiAlien76
		sw $20, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien76
	
	saiAlien76:
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	addi $4, $4, 2044
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	addi $9, $0, 74
	
	forAlien77:
		beq $9, $0, saiAlien77
		sw $20, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien77
	
	saiAlien77:
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	addi $4, $4, 2052
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	addi $9, $0, 74
	
	forAlien78:
		beq $9, $0, saiAlien78
		sw $20, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien78
	
	saiAlien78:
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	addi $4, $4, 2044
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	addi $9, $0, 74
	
	forAlien79:
		beq $9, $0, saiAlien79
		sw $20, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien79
	
	saiAlien79:
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	addi $4, $4, 2052
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	addi $9, $0, 74
	
	forAlien80:
		beq $9, $0, saiAlien80
		sw $20, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien80
	
	saiAlien80:
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	addi $4, $4, 2044
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	addi $9, $0, 72
	
	forAlien81:
		beq $9, $0, saiAlien81
		sw $20, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien81
	
	saiAlien81:
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	addi $4, $4, 2056
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	addi $9, $0, 70
	
	forAlien82:
		beq $9, $0, saiAlien82
		sw $20, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien82
	
	saiAlien82:
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	addi $4, $4, 2040
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	addi $9, $0, 68
	
	forAlien83:
		beq $9, $0, saiAlien83
		sw $20, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien83
	
	saiAlien83:
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	addi $4, $4, 2056
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	addi $9, $0, 66
	
	forAlien84:
		beq $9, $0, saiAlien84
		sw $20, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien84
	
	saiAlien84:
	
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	sw $5, 0($4)
	addi $4, $4, 4
	
	addi $4, $4, 2040
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	addi $9, $0, 64
	
	forAlien85:
		beq $9, $0, saiAlien85
		sw $20, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien85
	
	saiAlien85:
	
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	sw $5, 0($4)
	addi $4, $4, -4
	
	addi $4, $4, 2056
	
	addi $9, $0, 68
	
	forAlien86:
		beq $9, $0, saiAlien86
		sw $5, 0($4)
		
		addi $4, $4, 4
		addi $9, $9, -1
		j forAlien86
	
	saiAlien86:
	
	addi $4, $4, 2040
	
	addi $9, $0, 66
	
	forAlien87:
		beq $9, $0, saiAlien87
		sw $5, 0($4)
		
		addi $4, $4, -4
		addi $9, $9, -1
		j forAlien87
	
	saiAlien87:
	
	
	fimAlien:
		jr $31

#=======================================
#Nome: AsteroidT1
#Utilidade: Cria asteróide do tipo1
#Parametro: $4(ender. memória), $5(cor)
#Saida: ...
AsteroidT1:
	addi $9, $0, 12	#Unidades gráficas
	addi $16, $0, 0x995B30
	addi $17, $0, 0x6A3D20
	
	forAsteroidT1:  
		beq $9, $0, fimAsteroidT1P1
      		sw $5, 0($4)
      		
      		addi $4, $4, 4
      		addi $9, $9, -1
      		j forAsteroidT1
      		
      	fimAsteroidT1P1:
      	
      	addi $4, $4, 2044
      	addi $9, $0, 12	#Unidades gráficas
	
	forAsteroidT1P2:  
		beq $9, $0, fimAsteroidT1P2
      		sw $5, 0($4)
      		
      		addi $4, $4, -4
      		addi $9, $9, -1
      		j forAsteroidT1P2
      		
      	fimAsteroidT1P2:
      	
      	addi $4, $4, 2036
      	addi $9, $0, 4	#Unidades gráficas
	
	forAsteroidT1P3:  
		beq $9, $0, fimAsteroidT1P3
      		sw $5, 0($4)
      		
      		addi $4, $4, 4
      		addi $9, $9, -1
      		j forAsteroidT1P3
      		
      	fimAsteroidT1P3:
      	
      	addi $9, $0, 12	#Unidades gráficas
	
	forAsteroidT1P4:  
		beq $9, $0, fimAsteroidT1P4
      		sw $16, 0($4)
      		
      		addi $4, $4, 4
      		addi $9, $9, -1
      		j forAsteroidT1P4
      		
      	fimAsteroidT1P4:
      	
      	addi $9, $0, 4	#Unidades gráficas
	
	forAsteroidT1P5:  
		beq $9, $0, fimAsteroidT1P5
      		sw $5, 0($4)
      		
      		addi $4, $4, 4
      		addi $9, $9, -1
      		j forAsteroidT1P5
      		
      	fimAsteroidT1P5:
      	
      	addi $4, $4, 2044
      	addi $9, $0, 4	#Unidades gráficas
	
	forAsteroidT1P6:  
		beq $9, $0, fimAsteroidT1P6
      		sw $5, 0($4)
      		
      		addi $4, $4, -4
      		addi $9, $9, -1
      		j forAsteroidT1P6
      		
      	fimAsteroidT1P6:
      	
      	addi $9, $0, 12	#Unidades gráficas
	
	forAsteroidT1P7:  
		beq $9, $0, fimAsteroidT1P7
      		sw $16, 0($4)
      		
      		addi $4, $4, -4
      		addi $9, $9, -1
      		j forAsteroidT1P7
      		
      	fimAsteroidT1P7:
      	
      	addi $9, $0, 4	#Unidades gráficas
	
	forAsteroidT1P8:  
		beq $9, $0, fimAsteroidT1P8
      		sw $5, 0($4)
      		
      		addi $4, $4, -4
      		addi $9, $9, -1
      		j forAsteroidT1P8
      		
      	fimAsteroidT1P8:
      	
      	addi $4, $4, 2044
      	sw $5, 0($4)
      	addi $4, $4, 4
      	sw $5, 0($4)
      	
      	addi $4, $4, 4
      	addi $9, $0, 20
      	
      	forAsteroidT1P9:  
		beq $9, $0, fimAsteroidT1P9
      		sw $16, 0($4)
      		
      		addi $4, $4, 4
      		addi $9, $9, -1
      		j forAsteroidT1P9
      		
      	fimAsteroidT1P9:
      	
      	sw $5, 0($4)
      	addi $4, $4, 4
      	sw $5, 0($4)
      	
      	addi $4, $4, 2048
      	sw $5, 0($4)
      	addi $4, $4, -4
      	sw $5, 0($4)
      	
      	addi $4, $4, -4
      	addi $9, $0, 20
      	
      	forAsteroidT1P10:  
		beq $9, $0, fimAsteroidT1P10
      		sw $16, 0($4)
      		
      		addi $4, $4, -4
      		addi $9, $9, -1
      		j forAsteroidT1P10
      		
      	fimAsteroidT1P10:
      	
      	sw $5, 0($4)
      	addi $4, $4, -4
      	sw $5, 0($4)
      	
      	addi $4, $4, 2048
      	sw $5, 0($4)
      	addi $4, $4, 4
      	sw $5, 0($4)
      	
      	addi $4, $4, 4
      	addi $9, $0, 12
      	
      	forAsteroidT1P11:  
		beq $9, $0, fimAsteroidT1P11
      		sw $16, 0($4)
      		
      		addi $4, $4, 4
      		addi $9, $9, -1
      		j forAsteroidT1P11
      		
      	fimAsteroidT1P11:
      	
      	addi $9, $0, 4
      	
      	forAsteroidT1P12:  
		beq $9, $0, fimAsteroidT1P12
      		sw $17, 0($4)
      		
      		addi $4, $4, 4
      		addi $9, $9, -1
      		j forAsteroidT1P12
      		
      	fimAsteroidT1P12:
      	
      	addi $9, $0, 4
      	
      	forAsteroidT1P13:  
		beq $9, $0, fimAsteroidT1P13
      		sw $16, 0($4)
      		
      		addi $4, $4, 4
      		addi $9, $9, -1
      		j forAsteroidT1P13
      		
      	fimAsteroidT1P13:
      	
      	sw $5, 0($4)
      	addi $4, $4, 4
      	sw $5, 0($4)
      	
      	addi $4, $4, 2048
      	sw $5, 0($4)
        addi $4, $4, -4
        sw $5, 0($4)
          
        addi $4, $4, -4
        addi $9, $0, 4
          
        forAsteroidT1P14:  
        	beq $9, $0, fimAsteroidT1P14
              	sw $16, 0($4)
              
              	addi $4, $4, -4
              	addi $9, $9, -1
              	j forAsteroidT1P14
              
        fimAsteroidT1P14:
          
        addi $9, $0, 4
          
        forAsteroidT1P15:  
        	beq $9, $0, fimAsteroidT1P15
              	sw $17, 0($4)
              
              	addi $4, $4, -4
              	addi $9, $9, -1
              	j forAsteroidT1P15
              
        fimAsteroidT1P15:
          
        addi $9, $0, 12
          
        forAsteroidT1P16:  
        	beq $9, $0, fimAsteroidT1P16
              	sw $16, 0($4)
              
              	addi $4, $4, -4
              	addi $9, $9, -1
              	j forAsteroidT1P16
              
        fimAsteroidT1P16:
          
        sw $5, 0($4)
        addi $4, $4, -4
        sw $5, 0($4)
        
	##LINHA 9
        addi $4, $4, 2040
        sw $5, 0($4)
        addi $4, $4, 4
        sw $5, 0($4)
        addi $4, $4, 4
        
        addi $9, $0, 4
          
        forAsteroidT1P17:  
        	beq $9, $0, fimAsteroidT1P17
              	sw $16, 0($4)
              
              	addi $4, $4, 4
              	addi $9, $9, -1
              	j forAsteroidT1P17
              
        fimAsteroidT1P17:
        
        addi $9, $0, 4
        
        forAsteroidT1P18:  
        	beq $9, $0, fimAsteroidT1P18
              	sw $17, 0($4)
              
              	addi $4, $4, 4
              	addi $9, $9, -1
              	j forAsteroidT1P18
              
        fimAsteroidT1P18:
        
        addi $9, $0, 4
        
        forAsteroidT1P19:  
        	beq $9, $0, fimAsteroidT1P19
              	sw $16, 0($4)
              
              	addi $4, $4, 4
              	addi $9, $9, -1
              	j forAsteroidT1P19
              
        fimAsteroidT1P19:
        
        addi $9, $0, 8
        
        forAsteroidT1P20:  
        	beq $9, $0, fimAsteroidT1P20
              	sw $17, 0($4)
              
              	addi $4, $4, 4
              	addi $9, $9, -1
              	j forAsteroidT1P20
              
        fimAsteroidT1P20:
        
        addi $9, $0, 4
        
        forAsteroidT1P21:  
        	beq $9, $0, fimAsteroidT1P21
              	sw $16, 0($4)
              
              	addi $4, $4, 4
              	addi $9, $9, -1
              	j forAsteroidT1P21
              
        fimAsteroidT1P21:
        
        sw $5, 0($4)
        addi $4, $4, 4
        sw $5, 0($4)
        
        ##LINHA 9/1
        addi $4, $4, 2048
        sw $5, 0($4)
        addi $4, $4, -4
        sw $5, 0($4)
        addi $4, $4, -4
        
        addi $9, $0, 4
          
        forAsteroidT1P22:  
        	beq $9, $0, fimAsteroidT1P22
              	sw $16, 0($4)
              
              	addi $4, $4, -4
              	addi $9, $9, -1
              	j forAsteroidT1P22
              
        fimAsteroidT1P22:
        
        addi $9, $0, 8
        
        forAsteroidT1P23:  
        	beq $9, $0, fimAsteroidT1P23
              	sw $17, 0($4)
              
              	addi $4, $4, -4
              	addi $9, $9, -1
              	j forAsteroidT1P23
              
        fimAsteroidT1P23:
        
        addi $9, $0, 4
        
        forAsteroidT1P24:  
        	beq $9, $0, fimAsteroidT1P24
              	sw $16, 0($4)
              
              	addi $4, $4, -4
              	addi $9, $9, -1
              	j forAsteroidT1P24
              
        fimAsteroidT1P24:
        
        addi $9, $0, 4
        
        forAsteroidT1P25:  
        	beq $9, $0, fimAsteroidT1P25
              	sw $17, 0($4)
              
              	addi $4, $4, -4
              	addi $9, $9, -1
              	j forAsteroidT1P25
              
        fimAsteroidT1P25:
        
        addi $9, $0, 4
        
        forAsteroidT1P26:  
        	beq $9, $0, fimAsteroidT1P26
              	sw $16, 0($4)
              
              	addi $4, $4, -4
              	addi $9, $9, -1
              	j forAsteroidT1P26
              
        fimAsteroidT1P26:
        
        sw $5, 0($4)
        addi $4, $4, -4
        sw $5, 0($4)
        
        ##LINHA 10
        addi $4, $4, 2048
        sw $5, 0($4)
        addi $4, $4, 4
        sw $5, 0($4)
        addi $4, $4, 4
        
        addi $9, $0, 2
          
        forAsteroidT1P27:  
        	beq $9, $0, fimAsteroidT1P27
              	sw $16, 0($4)
              
              	addi $4, $4, 4
              	addi $9, $9, -1
              	j forAsteroidT1P27
              
        fimAsteroidT1P27:
        
        addi $9, $0, 8
        
        forAsteroidT1P28:  
        	beq $9, $0, fimAsteroidT1P28
              	sw $17, 0($4)
              
              	addi $4, $4, 4
              	addi $9, $9, -1
              	j forAsteroidT1P28
              
        fimAsteroidT1P28:
        
        addi $9, $0, 6
        
        forAsteroidT1P29:  
        	beq $9, $0, fimAsteroidT1P29
              	sw $16, 0($4)
              
              	addi $4, $4, 4
              	addi $9, $9, -1
              	j forAsteroidT1P29
              
        fimAsteroidT1P29:
        
        addi $9, $0, 2
        
        forAsteroidT1P30:  
        	beq $9, $0, fimAsteroidT1P30
              	sw $17, 0($4)
              
              	addi $4, $4, 4
              	addi $9, $9, -1
              	j forAsteroidT1P30
              
        fimAsteroidT1P30:
        
        addi $9, $0, 6
        
        forAsteroidT1P31:  
        	beq $9, $0, fimAsteroidT1P31
              	sw $16, 0($4)
              
              	addi $4, $4, 4
              	addi $9, $9, -1
              	j forAsteroidT1P31
              
        fimAsteroidT1P31:
        
        sw $5, 0($4)
        addi $4, $4, 4
        sw $5, 0($4)
        
        ##LINHA 10/1
        addi $4, $4, 2048
        sw $5, 0($4)
        addi $4, $4, -4
        sw $5, 0($4)
        addi $4, $4, -4
        
        addi $9, $0, 6
          
        forAsteroidT1P32:  
        	beq $9, $0, fimAsteroidT1P32
              	sw $16, 0($4)
              
              	addi $4, $4, -4
              	addi $9, $9, -1
              	j forAsteroidT1P32
              
        fimAsteroidT1P32:
        
        addi $9, $0, 2
        
        forAsteroidT1P33:  
        	beq $9, $0, fimAsteroidT1P33
              	sw $17, 0($4)
              
              	addi $4, $4, -4
              	addi $9, $9, -1
              	j forAsteroidT1P33
              
        fimAsteroidT1P33:
        
        addi $9, $0, 6
        
        forAsteroidT1P34:  
        	beq $9, $0, fimAsteroidT1P34
              	sw $16, 0($4)
              
              	addi $4, $4, -4
              	addi $9, $9, -1
              	j forAsteroidT1P34
              
        fimAsteroidT1P34:
        
        addi $9, $0, 8
        
        forAsteroidT1P35:  
        	beq $9, $0, fimAsteroidT1P35
              	sw $17, 0($4)
              
              	addi $4, $4, -4
              	addi $9, $9, -1
              	j forAsteroidT1P35
              
        fimAsteroidT1P35:
        
        addi $9, $0, 2
        
        forAsteroidT1P36:  
        	beq $9, $0, fimAsteroidT1P36
              	sw $16, 0($4)
              
              	addi $4, $4, -4
              	addi $9, $9, -1
              	j forAsteroidT1P36
              
        fimAsteroidT1P36:
        
        sw $5, 0($4)
        addi $4, $4, -4
        sw $5, 0($4)
        
        ##LINHA 11
        addi $4, $4, 2048
        sw $5, 0($4)
        addi $4, $4, 4
        sw $5, 0($4)
        addi $4, $4, 4
        
        addi $9, $0, 2
          
        forAsteroidT1P37:  
        	beq $9, $0, fimAsteroidT1P37
              	sw $16, 0($4)
              
              	addi $4, $4, 4
              	addi $9, $9, -1
              	j forAsteroidT1P37
              
        fimAsteroidT1P37:
        
        addi $9, $0, 8
        
        forAsteroidT1P38:  
        	beq $9, $0, fimAsteroidT1P38
              	sw $17, 0($4)
              
              	addi $4, $4, 4
              	addi $9, $9, -1
              	j forAsteroidT1P38
              
        fimAsteroidT1P38:
        
        addi $9, $0, 14
        
        forAsteroidT1P39:  
        	beq $9, $0, fimAsteroidT1P39
              	sw $16, 0($4)
              
              	addi $4, $4, 4
              	addi $9, $9, -1
              	j forAsteroidT1P39
              
        fimAsteroidT1P39:
        
        sw $5, 0($4)
        addi $4, $4, 4
        sw $5, 0($4)
        
        ##LINHA 11/1
        addi $4, $4, 2048
        sw $5, 0($4)
        addi $4, $4, -4
        sw $5, 0($4)
        addi $4, $4, -4
        
        addi $9, $0, 14
          
        forAsteroidT1P42:  
        	beq $9, $0, fimAsteroidT1P42
              	sw $16, 0($4)
              
              	addi $4, $4, -4
              	addi $9, $9, -1
              	j forAsteroidT1P42
              
        fimAsteroidT1P42:
       
        addi $9, $0, 8
        
        forAsteroidT1P45:  
        	beq $9, $0, fimAsteroidT1P45
              	sw $17, 0($4)
              
              	addi $4, $4, -4
              	addi $9, $9, -1
              	j forAsteroidT1P45
              
        fimAsteroidT1P45:
        
        addi $9, $0, 2
        
        forAsteroidT1P46:  
        	beq $9, $0, fimAsteroidT1P46
              	sw $16, 0($4)
              
              	addi $4, $4, -4
              	addi $9, $9, -1
              	j forAsteroidT1P46
              
        fimAsteroidT1P46:
        
        sw $5, 0($4)
        addi $4, $4, -4
        sw $5, 0($4)
        
        addi $4, $4, 2048
        
        sw $5, 0($4)
        addi $4, $4, 4
        sw $5, 0($4)
        addi $4, $4, 4
      	
      	addi $9, $0, 4
        
        forAsteroidT1P47:  
        	beq $9, $0, fimAsteroidT1P47
              	sw $16, 0($4)
              
              	addi $4, $4, 4
              	addi $9, $9, -1
              	j forAsteroidT1P47
              
        fimAsteroidT1P47:
        
        addi $9, $0, 4
        
        forAsteroidT1P48:  
        	beq $9, $0, fimAsteroidT1P48
              	sw $17, 0($4)
              
              	addi $4, $4, 4
              	addi $9, $9, -1
              	j forAsteroidT1P48
              
        fimAsteroidT1P48:
        
        addi $9, $0, 16
        
        forAsteroidT1P49:  
        	beq $9, $0, fimAsteroidT1P49
              	sw $16, 0($4)
              
              	addi $4, $4, 4
              	addi $9, $9, -1
              	j forAsteroidT1P49
              
        fimAsteroidT1P49:
        
        sw $5, 0($4)
        addi $4, $4, 4
        sw $5, 0($4)
        addi $4, $4, 2048
        sw $5, 0($4)
        addi $4, $4, -4
        sw $5, 0($4)
        addi $4, $4, -4
        
        addi $9, $0, 16
        
        forAsteroidT1P50:  
        	beq $9, $0, fimAsteroidT1P50
              	sw $16, 0($4)
              
              	addi $4, $4, -4
              	addi $9, $9, -1
              	j forAsteroidT1P50
              
        fimAsteroidT1P50:
        
        addi $9, $0, 4
        
        forAsteroidT1P51:  
        	beq $9, $0, fimAsteroidT1P51
              	sw $17, 0($4)
              
              	addi $4, $4, -4
              	addi $9, $9, -1
              	j forAsteroidT1P51
              
        fimAsteroidT1P51:
        
        addi $9, $0, 4
        
        forAsteroidT1P52:  
        	beq $9, $0, fimAsteroidT1P52
              	sw $16, 0($4)
              
              	addi $4, $4, -4
              	addi $9, $9, -1
              	j forAsteroidT1P52
              
        fimAsteroidT1P52:
        
        sw $5, 0($4)
        addi $4, $4, -4
        sw $5, 0($4)
        
        addi $4, $4, 2048
        
        sw $5, 0($4)
        addi $4, $4, 4
        sw $5, 0($4)
        addi $4, $4, 4
        
        addi $9, $0, 24
        
        forAsteroidT1P53:  
        	beq $9, $0, fimAsteroidT1P53
              	sw $16, 0($4)
              
              	addi $4, $4, 4
              	addi $9, $9, -1
              	j forAsteroidT1P53
              
        fimAsteroidT1P53:
        
        sw $5, 0($4)
        addi $4, $4, 4
        sw $5, 0($4)
        
        addi $4, $4, 2048
        
        sw $5, 0($4)
        addi $4, $4, -4
        sw $5, 0($4)
        addi $4, $4, -4
        
        addi $9, $0, 24
        
        forAsteroidT1P54:  
        	beq $9, $0, fimAsteroidT1P54
              	sw $16, 0($4)
              
              	addi $4, $4, -4
              	addi $9, $9, -1
              	j forAsteroidT1P54
              
        fimAsteroidT1P54:
        
        sw $5, 0($4)
        addi $4, $4, -4
        sw $5, 0($4)
        
        addi $4, $4, 2056
        
        sw $5, 0($4)
        addi $4, $4, 4
        sw $5, 0($4)
        addi $4, $4, 4
        
        addi $9, $0, 10
        
        forAsteroidT1P55:  
        	beq $9, $0, fimAsteroidT1P55
              	sw $16, 0($4)
              
              	addi $4, $4, 4
              	addi $9, $9, -1
              	j forAsteroidT1P55
              
        fimAsteroidT1P55:
        
        addi $9, $0, 4
        
        forAsteroidT1P56:  
        	beq $9, $0, fimAsteroidT1P56
              	sw $17, 0($4)
              
              	addi $4, $4, 4
              	addi $9, $9, -1
              	j forAsteroidT1P56
              
        fimAsteroidT1P56:
        
        addi $9, $0, 6
        
        forAsteroidT1P57:  
        	beq $9, $0, fimAsteroidT1P57
              	sw $16, 0($4)
              
              	addi $4, $4, 4
              	addi $9, $9, -1
              	j forAsteroidT1P57
              
        fimAsteroidT1P57:
        
        sw $5, 0($4)
        addi $4, $4, 4
        sw $5, 0($4)
        
        addi $4, $4, 2048
        
        sw $5, 0($4)
        addi $4, $4, -4
        sw $5, 0($4)
        addi $4, $4, -4
        
        addi $9, $0, 6
        
        forAsteroidT1P58:  
        	beq $9, $0, fimAsteroidT1P58
              	sw $16, 0($4)
              
              	addi $4, $4, -4
              	addi $9, $9, -1
              	j forAsteroidT1P58
              
        fimAsteroidT1P58:
        
        addi $9, $0, 4
        
        forAsteroidT1P59:  
        	beq $9, $0, fimAsteroidT1P59
              	sw $17, 0($4)
              
              	addi $4, $4, -4
              	addi $9, $9, -1
              	j forAsteroidT1P59
              
        fimAsteroidT1P59:
        
        addi $9, $0, 10
        
        forAsteroidT1P60:  
        	beq $9, $0, fimAsteroidT1P60
              	sw $16, 0($4)
              
              	addi $4, $4, -4
              	addi $9, $9, -1
              	j forAsteroidT1P60
              
        fimAsteroidT1P60:
        
        sw $5, 0($4)
        addi $4, $4, -4
        sw $5, 0($4)
        
        addi $4, $4, 2048
        
        sw $5, 0($4)
        addi $4, $4, 4
        sw $5, 0($4)
        addi $4, $4, 4
        
        addi $9, $0, 10
        
        forAsteroidT1P61:  
        	beq $9, $0, fimAsteroidT1P61
              	sw $16, 0($4)
              
              	addi $4, $4, 4
              	addi $9, $9, -1
              	j forAsteroidT1P61
              
        fimAsteroidT1P61:
        
        addi $9, $0, 4
        
        forAsteroidT1P62:  
        	beq $9, $0, fimAsteroidT1P62
              	sw $17, 0($4)
              
              	addi $4, $4, 4
              	addi $9, $9, -1
              	j forAsteroidT1P62
              
        fimAsteroidT1P62:
        
        addi $9, $0, 6
        
        forAsteroidT1P63:  
        	beq $9, $0, fimAsteroidT1P63
              	sw $16, 0($4)
              
              	addi $4, $4, 4
              	addi $9, $9, -1
              	j forAsteroidT1P63
              
        fimAsteroidT1P63:
        
        sw $5, 0($4)
        addi $4, $4, 4
        sw $5, 0($4)
        
        addi $4, $4, 2048
        
        sw $5, 0($4)
        addi $4, $4, -4
        sw $5, 0($4)
        addi $4, $4, -4
        
        addi $9, $0, 6
        
        forAsteroidT1P64:  
        	beq $9, $0, fimAsteroidT1P64
              	sw $16, 0($4)
              
              	addi $4, $4, -4
              	addi $9, $9, -1
              	j forAsteroidT1P64
              
        fimAsteroidT1P64:
        
        addi $9, $0, 4
        
        forAsteroidT1P65:  
        	beq $9, $0, fimAsteroidT1P65
              	sw $17, 0($4)
              
              	addi $4, $4, -4
              	addi $9, $9, -1
              	j forAsteroidT1P65
              
        fimAsteroidT1P65:
        
        addi $9, $0, 10
        
        forAsteroidT1P66:  
        	beq $9, $0, fimAsteroidT1P66
              	sw $16, 0($4)
              
              	addi $4, $4, -4
              	addi $9, $9, -1
              	j forAsteroidT1P66
              
        fimAsteroidT1P66:
        
        sw $5, 0($4)
        addi $4, $4, -4
        sw $5, 0($4)
        
        addi $4, $4, 2056
        
        addi $9, $0, 4
        
        forAsteroidT1P67:  
        	beq $9, $0, fimAsteroidT1P67
              	sw $5, 0($4)
              
              	addi $4, $4, 4
              	addi $9, $9, -1
              	j forAsteroidT1P67
              
        fimAsteroidT1P67:
        
        addi $9, $0, 12
        
        forAsteroidT1P68:  
        	beq $9, $0, fimAsteroidT1P68
              	sw $16, 0($4)
              
              	addi $4, $4, 4
              	addi $9, $9, -1
              	j forAsteroidT1P68
              
        fimAsteroidT1P68:
        
        addi $9, $0, 4
        
        forAsteroidT1P69:  
        	beq $9, $0, fimAsteroidT1P69
              	sw $5, 0($4)
              
              	addi $4, $4, 4
              	addi $9, $9, -1
              	j forAsteroidT1P69
              
        fimAsteroidT1P69:
        
        addi $4, $4, 2044
        
        addi $9, $0, 4
        
        forAsteroidT1P70:  
        	beq $9, $0, fimAsteroidT1P70
              	sw $5, 0($4)
              
              	addi $4, $4, -4
              	addi $9, $9, -1
              	j forAsteroidT1P70
              
        fimAsteroidT1P70:
        
        addi $9, $0, 12
        
        forAsteroidT1P71:  
        	beq $9, $0, fimAsteroidT1P71
              	sw $16, 0($4)
              
              	addi $4, $4, -4
              	addi $9, $9, -1
              	j forAsteroidT1P71
              
        fimAsteroidT1P71:
        
        addi $9, $0, 4
        
        forAsteroidT1P72:  
        	beq $9, $0, fimAsteroidT1P72
              	sw $5, 0($4)
              
              	addi $4, $4, -4
              	addi $9, $9, -1
              	j forAsteroidT1P72
              
        fimAsteroidT1P72:
        
        addi $4, $4, 2068
        
        addi $9, $0, 12
        
        forAsteroidT1P73:  
        	beq $9, $0, fimAsteroidT1P73
              	sw $5, 0($4)
              
              	addi $4, $4, 4
              	addi $9, $9, -1
              	j forAsteroidT1P73
              
        fimAsteroidT1P73:
        
        addi $4, $4, 2044
        
        addi $9, $0, 12
        
        forAsteroidT1P74:  
        	beq $9, $0, fimAsteroidT1P74
              	sw $5, 0($4)
              
              	addi $4, $4, -4
              	addi $9, $9, -1
              	j forAsteroidT1P74
              
        fimAsteroidT1P74:
        
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
