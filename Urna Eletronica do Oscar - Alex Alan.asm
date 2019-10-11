.data

#----------------------------------------------------------APRESENTAÇÃO------------------------------------------------------------#	
	apresentacao: .asciiz "VOCÊ FOI CONVIDADO PARA PARTICIPAR DO OSCAR 2018 NAS CATEGORIAS: AÇÃO, TERROR, ANIMAÇÃO E ROMANCE!\n\n"
	enter: .asciiz " \n"
	apurado: .asciiz "Voto computado com SUCESSO!\n\n\n"
	digite: .asciiz "Digite o número correspondente ao filme escolhido: "
	
#-------------------------------------------------------------LISTA----------------------------------------------------------------#
	acao: .asciiz "MELHOR FILME DE AÇÃO:\n"
	acao1: .asciiz "88555 - VINGADORES: GUERRA INFINITA\n"
	acao2: .asciiz "66333 - PANTERA NEGRA\n"
	acao3: .asciiz "22111 - JURASSIC WORLD: REINO AMEAÇADO\n\n"
	
	terror: .asciiz "MELHOR FILME DE TERROR:\n"
	terror1: .asciiz "11999 - UM LUGAR SILENCIOSO\n"
	terror2: .asciiz "22888 - ANIQUILAÇÃO\n"
	terror3: .asciiz "33777 - HEREDITÁRIO\n\n"
	
	animacao: .asciiz "MELHOR FILME DE ANIMACAO:\n"
	animacao1: .asciiz "1233 - VIVA, A VIDA É UMA FESTA\n"
	animacao2: .asciiz "4566 - OS INCRÍVEIS 2\n"
	animacao3: .asciiz "7899 - HOTEL TRANSILVÂNIA 3\n\n"
	
	romance: .asciiz "MELHOR FILME DE ROMANCE:\n"
	romance1: .asciiz "144 - 50 TONS DE LIBERDADE\n"
	romance2: .asciiz "255 - PARA TODOS OS GAROTOS QUE JÁ AMEI\n"
	romance3: .asciiz "366 - BARRACA DO BEIJO\n\n"

#----------------------------------------------------------TOTALIZANDO------------------------------------------------------------#
	aca: .asciiz "\n- TOTAL DE VOTOS CATEGORIA AÇÃO: \n"
	aca1: .asciiz "VINGADORES: GUERRA INFINITA: "
	aca2: .asciiz "PANTERA NEGRA: "
	aca3: .asciiz "JURASSIC WORLD: REINO AMEAÇADO: "
	
	ter: .asciiz "\n- TOTAL DE VOTOS DO CATEGORIA TERROR: \n"
	ter1: .asciiz "UM LUGAR SILENCIOSO: "
	ter2: .asciiz "ANIQUILAÇÃO: "
	ter3: .asciiz "HEREDITÁRIO: "
	
	ani: .asciiz "\n- TOTAL DE VOTOS CATEGORIA ANIMAÇÃO: \n"
	ani1: .asciiz "VIVA, A VIDA É UMA FESTA: "
	ani2: .asciiz "OS INCRÍVEIS 2: "
	ani3: .asciiz "HOTEL TRANSILVÂNIA 3: "
	
	rom: .asciiz "\n- TOTAL DE VOTOS CATEGORIA ROMANCE: \n"
	rom1: .asciiz "50 TONS DE LIBERDADE: "
	rom2: .asciiz "PARA TODOS OS GAROTOSO QUE JÁ AMEI: "
	rom3: .asciiz "BARRACA DO BEIJO: "
	
	nul: .asciiz "VOTOS NULOS: "
	tot: .asciiz "\n- TOTAL DE VOTOS: "

.text

#------------------------------------------------------------INÍCIO--------------------------------------------------------------#
recomecar:
	
	li $v0, 4 #Carregar um comando em V0. 4 - Significa, printar uma string.
	la $a0,apresentacao #Será printando a label 'apresentação'
	syscall #chamo meu sistema, e ele irá printar.

#---------------------------------------------------------------------------------------------------------------------------------#
#---------------------------------------------------------------------------------------------------------------------------------#	
#--------------------------------------------------PRIMEIRA CATEGORIA: AÇÃO-------------------------------------------------------#
#---------------------------------------------------------------------------------------------------------------------------------#
#---------------------------------------------------------------------------------------------------------------------------------#
	li $v0, 4
	la $a0,acao
	syscall

#.....................................................LISTA DOS FILMES............................................................#
	li $v0, 4
	la $a0,acao1
	syscall
	
	li $v0, 4
	la $a0,acao2
	syscall
	
	li $v0, 4
	la $a0,acao3
	syscall
	
#...................................................INSERINDO O NÚMERO............................................................#
	li $v0, 4
	la $a0,digite
	syscall
	
	li $v0,5 #tou pedindo que o usuário digite um inteiro e salve no V0.
	syscall
	
	move $t0,$v0 #agora tou movendo o valor que ta no v0 para o t0, para ficar fixo.
	
#...................................................COMPARANDO O VALOR............................................................#
	beq $t0,00000,PARAR
	beq $t0,88555,FACAO1
	beq $t0,66333,FACAO2
	beq $t0,22111,FACAO3
	j nuloACAO

#...................................................FUNÇÕES DA CATEGORIA: AÇÃO.....................................................#
	FACAO1:
	add $t7,$t7,1
	add $s1,$s1, 1 #Adicionando 1 para o t1 que são os votos totais do DEP EST 1. 
	li $v0, 4 #para dizer que o voto foi apurado!
	la $a0, apurado
	syscall
	j categoria2
	
	FACAO2:
	add $t7,$t7,1
	add $s2,$s2, 1 #Adicionando 1 para o t1 que são os votos totais do DEP EST 1. 
	li $v0, 4 #para dizer que o voto foi apurado!
	la $a0, apurado
	syscall
	j categoria2
	
	FACAO3:
	add $t7,$t7,1
	add $s3,$s3, 1 #Adicionando 1 para o t1 que são os votos totais do DEP EST 1. 
	li $v0, 4 #para dizer que o voto foi apurado!
	la $a0, apurado
	syscall
	j categoria2
	
	nuloACAO:
	add $t7,$t7,1
	add $s0, $s0, 1
	li $v0, 4 #para dizer que o voto foi apurado!
	la $a0, apurado
	syscall 
	j categoria2

#---------------------------------------------------------------------------------------------------------------------------------#
#---------------------------------------------------------------------------------------------------------------------------------#	
#--------------------------------------------------SEGUNDA CATEGORIA: TERROR------------------------------------------------------#
#---------------------------------------------------------------------------------------------------------------------------------#
#---------------------------------------------------------------------------------------------------------------------------------#
	
	categoria2:
	li $v0,31
	li $a0,72
	li $a1,1000
	li $a2,112 
   	li $a3,127
   	syscall
	

	li $v0,4
	la $a0,terror
	syscall

#.....................................................LISTA DOS FILMES............................................................#
	li $v0,4
	la $a0,terror1
	syscall
	
	li $v0,4
	la $a0,terror2
	syscall
	
	li $v0,4
	la $a0,terror3
	syscall
	
#...................................................INSERINDO O NÚMERO............................................................#
	li $v0,4
	la $a0,digite
	syscall
	
	li $v0,5 #tou pedindo que o usuário digite um inteiro e salve no V0.
	syscall
	
	move $t0,$v0 #agora tou movendo o valor que ta no v0 para o t0, para ficar fixo.
	
#...................................................COMPARANDO O VALOR............................................................#
	beq $t0,00000,PARAR
	beq $t0,11999,FTERROR1
	beq $t0,22888,FTERROR2
	beq $t0,33777,FTERROR3
	j nuloTERROR

#..................................................FUNÇÕES DA CATEGORIA: TERROR...................................................#
	FTERROR1:
	add $t7,$t7,1
	add $s4,$s4, 1 #Adicionando 1 para o t1 que são os votos totais do DEP EST 1. 
	li $v0, 4 #para dizer que o voto foi apurado!
	la $a0, apurado
	syscall
	j categoria3
	
	FTERROR2:
	add $t7,$t7,1
	add $s5,$s5, 1 #Adicionando 1 para o t1 que são os votos totais do DEP EST 1. 
	li $v0, 4 #para dizer que o voto foi apurado!
	la $a0, apurado
	syscall
	j categoria3
	
	FTERROR3:
	add $t7,$t7,1
	add $s6,$s6, 1 #Adicionando 1 para o t1 que são os votos totais do DEP EST 1. 
	li $v0, 4 #para dizer que o voto foi apurado!
	la $a0, apurado
	syscall
	j categoria3
	
	nuloTERROR:
	add $t7,$t7,1
	add $s7, $s7, 1
	li $v0, 4 #para dizer que o voto foi apurado!
	la $a0, apurado
	syscall 
	j categoria3

#---------------------------------------------------------------------------------------------------------------------------------#
#---------------------------------------------------------------------------------------------------------------------------------#	
#--------------------------------------------------TERCEIRA CATEGORIA: ANIMAÇÃO-------------------------------------------------------#
#---------------------------------------------------------------------------------------------------------------------------------#
#---------------------------------------------------------------------------------------------------------------------------------#
	categoria3:
	li $v0,31
	li $a0,72
	li $a1,1000
	li $a2,112 
   	li $a3,127
   	syscall
	
	li $v0, 4
	la $a0,animacao
	syscall

#.....................................................LISTA DOS FILMES............................................................#
	li $v0, 4
	la $a0,animacao1
	syscall
	
	li $v0, 4
	la $a0,animacao2
	syscall
	
	li $v0, 4
	la $a0,animacao3
	syscall
	
#...................................................INSERINDO O NÚMERO............................................................#
	li $v0, 4
	la $a0,digite
	syscall
	
	li $v0,5 #tou pedindo que o usuário digite um inteiro e salve no V0.
	syscall
	
	move $t0,$v0 #agora tou movendo o valor que ta no v0 para o t0, para ficar fixo.
	
#...................................................COMPARANDO O VALOR............................................................#
	beq $t0,000,PARAR
	beq $t0,1233,FANIMACAO1
	beq $t0,4566,FANIMACAO2
	beq $t0,7899,FANIMACAO3
	j nuloANIMACAO

#...................................................FUNÇÕES DA CATEGORIA: ANIMAÇÃO.....................................................#
	FANIMACAO1:
	add $t7,$t7,1
	add $t1,$t1, 1 #Adicionando 1 para o t1 que são os votos totais do DEP EST 1. 
	li $v0, 4 #para dizer que o voto foi apurado!
	la $a0, apurado
	syscall
	j categoria4
	
	FANIMACAO2:
	add $t7,$t7,1
	add $t2,$t2, 1 #Adicionando 1 para o t1 que são os votos totais do DEP EST 1. 
	li $v0, 4 #para dizer que o voto foi apurado!
	la $a0, apurado
	syscall
	j categoria4
	
	FANIMACAO3:
	add $t7,$t7,1
	add $t3,$t3, 1 #Adicionando 1 para o t1 que são os votos totais do DEP EST 1. 
	li $v0, 4 #para dizer que o voto foi apurado!
	la $a0, apurado
	syscall
	j categoria4
	
	nuloANIMACAO:
	add $t7,$t7,1
	add $t4, $t4, 1
	li $v0, 4 #para dizer que o voto foi apurado!
	la $a0, apurado
	syscall 
	j categoria4
	
#---------------------------------------------------------------------------------------------------------------------------------#	
#--------------------------------------------------QUARTA CATEGORIA: ROMANCE-------------------------------------------------------#
#---------------------------------------------------------------------------------------------------------------------------------#
#---------------------------------------------------------------------------------------------------------------------------------#
	categoria4:
	li $v0,31
	li $a0,72
	li $a1,1000
	li $a2,112 
   	li $a3,127
   	syscall
	
	li $v0, 4
	la $a0,romance
	syscall

#.....................................................LISTA DOS FILMES............................................................#
	li $v0, 4
	la $a0,romance1
	syscall
	
	li $v0, 4
	la $a0,romance2
	syscall
	
	li $v0, 4
	la $a0,romance3
	syscall
	
#...................................................INSERINDO O NÚMERO............................................................#
	li $v0, 4
	la $a0,digite
	syscall
	
	li $v0,5 #tou pedindo que o usuário digite um inteiro e salve no V0.
	syscall
	
	move $t0,$v0 #agora tou movendo o valor que ta no v0 para o t0, para ficar fixo.
	
#...................................................COMPARANDO O VALOR............................................................#
	beq $t0,000,PARAR
	beq $t0,144,FROMANCE1
	beq $t0,255,FROMANCE2
	beq $t0,366,FROMANCE3
	j nuloROMANCE

#...................................................FUNÇÕES DA CATEGORIA: ANIMAÇÃO.....................................................#
	FROMANCE1:
	add $t7,$t7,1
	add $t5,$t5, 1 #Adicionando 1 para o t1 que são os votos totais do DEP EST 1. 
	li $v0, 4 #para dizer que o voto foi apurado!
	la $a0, apurado
	syscall
	
	li $v0,31
	li $a0,72
	li $a1,1000
	li $a2,112 
   	li $a3,127
   	syscall
	j recomecar
	
	FROMANCE2:
	add $t7,$t7,1
	add $t6,$t6, 1 #Adicionando 1 para o t1 que são os votos totais do DEP EST 1. 
	li $v0, 4 #para dizer que o voto foi apurado!
	la $a0, apurado
	syscall
	j recomecar
	
	FROMANCE3:
	add $t7,$t7,1
	add $t8,$t8, 1 #Adicionando 1 para o t1 que são os votos totais do DEP EST 1. 
	li $v0, 4 #para dizer que o voto foi apurado!
	la $a0, apurado
	syscall
	
	li $v0,31
	li $a0,72
	li $a1,1000
	li $a2,112 
   	li $a3,127
   	syscall
   	
   	li $v0,31
	li $a0,72
	li $a1,1000
	li $a2,112 
   	li $a3,127
   	syscall
	j recomecar
	
	nuloROMANCE:
	add $t7,$t7,1
	add $t9, $t9, 1
	li $v0, 4 #para dizer que o voto foi apurado!
	la $a0, apurado
	syscall 
	
	li $v0,31
	li $a0,72
	li $a1,1000
	li $a2,112 
   	li $a3,127
   	syscall
	j recomecar


#---------------------------------------------------------------------------------------------------------------------------------#
	
#--------------------------------------------------------------------------------------------------------------------------------
	PARAR:
#AÇÃO:
	li $v0,4
	la $a0,aca
	syscall
	
	li $v0,4
	la $a0,aca1
	syscall
	li $v0,1
	la $a0,($s1)
	syscall
	li $v0,4
	la $a0,enter
	syscall
	
	li $v0,4
	la $a0,aca2
	syscall
	li $v0,1
	la $a0,($s2)
	syscall
	li $v0,4
	la $a0,enter
	syscall
	
	li $v0,4
	la $a0,aca3
	syscall
	li $v0,1
	la $a0,($s3)
	syscall
	li $v0,4
	la $a0,enter
	syscall
	
	li $v0,4
	la $a0,nul
	syscall
	li $v0,1
	la $a0,($s0)
	syscall
	li $v0,4
	la $a0,enter
	syscall
	
#TERROR:
	li $v0,4
	la $a0,ter
	syscall
	
	li $v0,4
	la $a0,ter1
	syscall
	li $v0,1
	la $a0,($s4)
	syscall
	li $v0,4
	la $a0,enter
	syscall
	
	li $v0,4
	la $a0,ter2
	syscall
	li $v0,1
	la $a0,($s5)
	syscall
	li $v0, 4
	la $a0,enter
	syscall
	
	li $v0,4
	la $a0,ter3
	syscall
	li $v0,1
	la $a0,($s6)
	syscall
	li $v0, 4
	la $a0,enter
	syscall
	
	li $v0,4
	la $a0,nul
	syscall
	li $v0,1
	la $a0,($s7)
	syscall
	li $v0, 4
	la $a0,enter
	syscall
	
#ANIMAÇÃO:
	li $v0,4
	la $a0,ani
	syscall
	
	li $v0,4
	la $a0,ani1
	syscall
	li $v0,1
	la $a0,($t1)
	syscall
	li $v0,4
	la $a0,enter
	syscall
	
	li $v0,4
	la $a0,ani2
	syscall
	li $v0,1
	la $a0,($t2)
	syscall
	li $v0, 4
	la $a0,enter
	syscall
	
	li $v0,4
	la $a0,ani3
	syscall
	li $v0,1
	la $a0,($t3)
	syscall
	li $v0, 4
	la $a0,enter
	syscall
	
	li $v0,4
	la $a0,nul
	syscall
	li $v0,1
	la $a0,($t4)
	syscall
	li $v0, 4
	la $a0,enter
	syscall
	
#ROMANCE:
	li $v0,4
	la $a0,rom
	syscall
	
	li $v0,4
	la $a0,rom1
	syscall
	li $v0,1
	la $a0,($t5)
	syscall
	li $v0,4
	la $a0,enter
	syscall
	
	li $v0,4
	la $a0,rom2
	syscall
	li $v0,1
	la $a0,($t6)
	syscall
	li $v0, 4
	la $a0,enter
	syscall
	
	li $v0,4
	la $a0,rom3
	syscall
	li $v0,1
	la $a0,($t8)
	syscall
	li $v0, 4
	la $a0,enter
	syscall
	
	li $v0,4
	la $a0,nul
	syscall
	li $v0,1
	la $a0,($t9)
	syscall
	li $v0, 4
	la $a0,enter
	syscall
	
#TOTAL:
	li $v0,4
	la $a0,tot
	syscall
	li $v0,1
	la $a0,($t7)
	syscall
	li $v0,4
	la $a0,enter
	syscall

#--------------------------------------------------------------------------------------------------------------------------------

	
