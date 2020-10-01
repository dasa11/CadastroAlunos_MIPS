.data

    nome1: .space 20						#### ARMAZENA O PRIMEIRO NOME
	nome2: .space 20						#### ARMAZENA O SEGUNDO NOME		
	nome3: .space 20						#### ARMAZENA O TERCEIRO NOME
	nome4: .space 20						#### ARMAZENA O QUARTO NOME
	nome5: .space 20						#### ARMAZENA O QUINTO NOME
	Ra: 	.word 0 , 0 , 0 , 0 , 0			#### ARMAZENA OS RA'S
	Media: .float 0.0 , 0.0 , 0.0 , 0.0 , 0.0	#### ARMAZENA AS MEDIAS
	notaP: .float 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0		#### ARMAZENA AS NOTAS DOS PROJETOS
	notaA: .float 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0, 0.0, 0.0, 0.0, 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0, 0.0, 0.0, 0.0 , 0.0 , 0.0, 0.0, 0.0, 0.0 #### ARMAZENA AS NOTAS DAS ATIVIDADES
	mensagem: .asciiz "\nDigite um nome:\n "		### ESTETICA
	mensagem1: .asciiz "\nDigite o Ra do(a) "		### ESTETICA
	mensagem2: .asciiz "] do(a) aluno(a) "			### ESTETICA
	mensagem3: .asciiz "\nDigite a nota da atividade["		### ESTETICA
	mensagem4: .asciiz "\nDigite a nota do projeto["		### ESTETICA
	mensagem5: .asciiz "\nDeseja alterar a nota de algum aluno? [ Digite o numero do aluno / 0 para não alterar]\n"		### ESTETICA
	mensagem6: .asciiz "\nDigite o numero da nota que deseja alterar: [ Digite o numero da nota / 0 para não alterar]\n"		### ESTETICA
	mensagem7: .asciiz "\nDigite a nova nota: \n"		### ESTETICA
	mensagem8: .asciiz "\nNota alterada com sucesso ! \n"		### ESTETICA
	mensagem9: .asciiz "\nDeseja alterar outra nota? [ Digite 1 para alterar / 0 para não alterar]\n"		### ESTETICA
	aprovado: .asciiz "\n        ( APROVADO)\n   "		### ESTETICA
	reprovado: .asciiz "\n        ( REPROVADO)\n   "		### ESTETICA
	ativ: .asciiz "\nAtividade "		### ESTETICA
	proj: .asciiz "\nProjeto "		### ESTETICA
	radoaluno: .asciiz "\nRa: "		### ESTETICA
	nomedoaluno: .asciiz "\nNome: "		### ESTETICA
	mediadoaluno: .asciiz "\nMedia: "		### ESTETICA
	colchete : .asciiz "["		### ESTETICA
	colchete1 : .asciiz "] "		### ESTETICA
	pularlinha: .asciiz "\n;"		### ESTETICA
	frescura: .asciiz "\n\n\n\n:------------------------------------------------------------------------------------:\n\n\n"		### ESTETICA
	doispontos: .asciiz ":"		### ESTETICA
	pesoA: .float 2.0		### PARA MULTIPLICAR
	pesoP: .float 5.0		### PARA MULTIPLICAR
	pesoT: .float 20.0		### PARA DIVIDIR
	nota_media: .float 4.75		### PARA COMPARAR
	

.text
.globl main
					##################### S1 SERA USADO SEMPRE COMO O PRINCIPAL REGISTRADOR PARA NOS LOCALIZARMOS E ANDARMOS PELOS VETORES   ########################
	main:

	############################################### LENDO NOME E RA
	li $s1, 0 
	la $t1, nome1
	jal ler_alunos    ##### CHAMA A FUNÇÃO
	
	li $s1, 1
	la $t1, nome2
	jal ler_alunos 	 ##### CHAMA A FUNÇÃO
	
	li $s1, 2
	la $t1, nome3
	jal ler_alunos   ##### CHAMA A FUNÇÃO
	
	li $s1, 3
	la $t1, nome4
	jal ler_alunos   ##### CHAMA A FUNÇÃO
	
	li $s1, 4
	la $t1, nome5
	jal ler_alunos   ##### CHAMA A FUNÇÃO
	
	
	
	
	
	################################################ LENDO AS ATIVIDADE
	
	li $s1, 0
	la $t1, nome1
	li $s2, 1
	jal ler_atividade			##### CHAMA A FUNÇÃO
	
	li $s1, 5
	la $t1, nome2
	li $s2, 1
	jal ler_atividade
	
	li $s1, 10
	la $t1, nome3
	li $s2, 1
	jal ler_atividade
	
	li $s1, 15
	la $t1, nome4
	li $s2, 1
	jal ler_atividade
	
	li $s1, 20
	la $t1, nome5
	li $s2, 1
	jal ler_atividade
	
	

	################################################## LENDO PROJETO
	
	li $s1, 0
	la $t1, nome1
	li $s2, 1
	jal ler_projeto				##### CHAMA A FUNÇÃO
	
	li $s1, 2
	la $t1, nome2
	li $s2, 1
	jal ler_projeto
	
	li $s1, 4
	la $t1, nome3
	li $s2, 1
	jal ler_projeto
	
	li $s1, 6
	la $t1, nome4
	li $s2, 1
	jal ler_projeto
	
	li $s1, 8
	la $t1, nome5
	li $s2, 1
	jal ler_projeto
	
	

	
	
	#################################################### ALTERAR NOTA
	alterar_nota:
	li $v0, 4
	la $a0, frescura
	syscall
	
	li $v0, 4
	la $a0, mensagem5
	syscall
	
	li $v0, 4
	la $a0, pularlinha
	syscall
	
	li $v0, 4
	la $a0, colchete
	syscall
	
	li $v0, 1								
	li $a0, 1
	syscall
	
	li $v0, 4
	la $a0, colchete1
	syscall
	
	li $s1, 0
	la $t1, nome1
	li $v0, 4
	la $a0, 0($t1)
	syscall

	
	
	li $v0, 4
	la $a0, pularlinha
	syscall
	
	li $v0, 4
	la $a0, colchete
	syscall
	
	li $v0, 1								
	li $a0, 2
	syscall
	
	li $v0, 4
	la $a0, colchete1
	syscall
	
	li $s1, 1
	la $t1, nome2
	li $v0, 4
	la $a0, 0($t1)
	syscall
	
	li $v0, 4
	la $a0, pularlinha
	syscall
	
	li $v0, 4
	la $a0, colchete
	syscall
	
	li $v0, 1								
	li $a0, 3
	syscall
	
	li $v0, 4
	la $a0, colchete1
	syscall

	
	li $s1, 2
	la $t1, nome3
	li $v0, 4
	la $a0, 0($t1)
	syscall

	li $v0, 4
	la $a0, pularlinha
	syscall
	
	li $v0, 4
	la $a0, colchete
	syscall
	
	li $v0, 1								
	li $a0, 4
	syscall
	
	li $v0, 4
	la $a0, colchete1
	syscall

	
	li $s1, 3
	la $t1, nome4
	li $v0, 4
	la $a0, 0($t1)
	syscall
	
	li $v0, 4
	la $a0, pularlinha
	syscall
	
	li $v0, 4
	la $a0, colchete
	syscall
	
	li $v0, 1								
	li $a0, 5
	syscall
	
	li $v0, 4
	la $a0, colchete1
	syscall
	
	li $s1, 4
	la $t1, nome5
	li $v0, 4
	la $a0, 0($t1)
	syscall                           ########################  TERMINOU DE PRINTAR OS NOMES
	
	li $v0, 4
	la $a0, pularlinha
	syscall
	
	li $v0, 4
	la $a0, doispontos
	syscall
	li $v0, 5								
	syscall
	
	beq $v0, $zero,resultado        #################### LEU A OPÇÃO
	
	add $s1, $v0, $zero
	addiu $s1,$s1, -1
	
	li $v0, 4
	la $a0, frescura
	syscall
	
	li $v0, 4
	la $a0, mensagem6
	syscall
	
	
	li $v0, 4
	la $a0, radoaluno
	syscall
	
	sll $t3, $s1, 2
	la $a1, Ra
	addu $t2,$t3,$a1
	
	lw $t1, 0($t2)
	li $v0, 1
	add $a0, $t1, $zero
	syscall
	
	li $v0, 4
	la $a0, pularlinha
	syscall

	imprimir_notas:                               ####################Começo dos prints das notas

	move $s2, $s1
	li $s3, 5
	mult $s1, $s3
	mflo $s1
	add $s3, $s1, 5
	li $s4, 1
	
	imprimir_notas1:
	
	sll $t1, $s1, 2
	la $a1, notaA
	addu $t2,$t1,$a1
	l.s $f1, 0($t2)
	
	li $v0, 4
	la $a0, ativ
	syscall
	
	li $v0, 4
	la $a0, colchete
	syscall
	
	li $v0, 1								
	move $a0, $s4
	syscall
	
	li $v0, 4
	la $a0, colchete1
	syscall
	
	li $v0, 2
	mov.s $f12, $f1
	syscall
	
	addiu $s1,$s1,1
	addiu $s4,$s4,1
	
	bne $s1, $s3, imprimir_notas1
	
	move $s1, $s2
	li $s3, 2
	mult $s1, $s3
	mflo $s1
	add $s3, $s1, 2
	
	
	imprimir_notas2:
	
	sll $t1, $s1, 2
	la $a1, notaP
	addu $t2,$t1,$a1
	l.s $f1, 0($t2)
	
	li $v0, 4
	la $a0, proj
	syscall
	
	li $v0, 4
	la $a0, colchete
	syscall
	
	li $v0, 1								
	move $a0, $s4
	syscall
	
	li $v0, 4
	la $a0, colchete1
	syscall
	
	li $v0, 2
	mov.s $f12, $f1
	syscall
	
	addiu $s1,$s1,1
	addiu $s4,$s4,1
	
	bne $s1, $s3, imprimir_notas2			 ############### Termino dos prints da notas
	
	li $v0, 4
	la $a0, pularlinha
	syscall
	
	li $v0, 5								
	syscall
	
	beq $v0, $zero, alterar_nota
	beq $v0, 6, mudar_projeto
	beq $v0, 7, mudar_projeto
	
	move $s1, $s2 										######################### alterando as notas das atividades
	li $s3, 5
	mult $s1, $s3
	mflo $s1
	add $s1,$v0, $s1
	addiu $s1,$s1, -1
	
	sll $t1, $s1, 2
	la $a1, notaA
	addu $t2,$t1,$a1
	
	l.s $f1, 0($t2)							
	li $v0, 2								
	mov.s $f12, $f1							
	syscall
	
	li $v0, 4
	la $a0, mensagem7
	syscall
	
	li $v0, 6								
	syscall
	
	s.s $f0, 0($t2)  	

	j infos
	
	mudar_projeto:
	
	move $s1, $s2 										######################### alterando as notas do projeto
	li $s3, 2
	mult $s1, $s3
	mflo $s1
	add $s1,$v0, $s1
	addiu $s1,$s1, -6
	
	sll $t1, $s1, 2
	la $a1, notaP
	addu $t2,$t1,$a1
	
	l.s $f1, 0($t2)							
	li $v0, 2								
	mov.s $f12, $f1							
	syscall
	
	li $v0, 4
	la $a0, mensagem7
	syscall
	
	li $v0, 6								
	syscall
	
	s.s $f0, 0($t2)
	
	infos:
	li $v0, 4
	la $a0, mensagem8
	syscall
	
	li $v0, 4
	la $a0, mensagem9
	syscall
	
	li $v0, 5								
	syscall
	
	beq $v0, 1, alterar_nota 			################### FIM DAS ALTERAÇOES
	
	
	
	################################################### CALCULANDO A Media
	
	li $s1, 0
	jal cal_media			##### CHAMA A FUNÇÃO
	
	li $s1, 1
	jal cal_media
	
	li $s1, 2
	jal cal_media
	
	li $s1, 3
	jal cal_media
	
	li $s1, 4
	jal cal_media
	
	
	resultado:                        ################# PRINTANDO AS INFORMAÇÕES FINAIS
	li $v0, 4
	la $a0, pularlinha
	syscall
	
	li $v0, 4
	la $a0, nomedoaluno
	syscall
	
	la $t1, nome1
	li $v0, 4
	la $a0, 0($t1)
	syscall
	
	li $s1, 0
	jal print_info 					##### CHAMA A FUNÇÃO
	
	li $v0, 4
	la $a0, pularlinha
	syscall
	
	li $v0, 4
	la $a0, nomedoaluno
	syscall
	
	la $t1, nome2
	li $v0, 4
	la $a0, 0($t1)
	syscall
	
	li $s1, 1
	jal print_info
	
	li $v0, 4
	la $a0, pularlinha
	syscall
	
	li $v0, 4
	la $a0, nomedoaluno
	syscall
	
	la $t1, nome3
	li $v0, 4
	la $a0, 0($t1)
	syscall
	
	li $s1, 2
	jal print_info
	
	li $v0, 4
	la $a0, pularlinha
	syscall
	
	li $v0, 4
	la $a0, nomedoaluno
	syscall
	
	la $t1, nome4
	li $v0, 4
	la $a0, 0($t1)
	syscall
	
	li $s1, 3
	jal print_info
	
	li $v0, 4
	la $a0, pularlinha
	syscall
	
	li $v0, 4
	la $a0, nomedoaluno
	syscall
	
	la $t1, nome5
	li $v0, 4
	la $a0, 0($t1)
	syscall
	
	li $s1, 4
	jal print_info                                     #################################### ACABOU O PROGRAMA
	
j fim
	
ler_alunos:	 				##### ler o nome e o RA

li $v0, 4
la $a0, frescura
syscall

li $v0, 4
la $a0, mensagem
syscall

li $v0, 8
la $a0, 0($t1)		#### LE A STRING
li $a1, 20
syscall


 ######## ler o RA



li $v0, 4
la $a0, mensagem1
syscall

li $v0, 4
la $a0, 0($t1)     #### PRINTA A STRING LIDA ACIMA
syscall

li $v0, 4
la $a0, doispontos
syscall

sll $t1, $s1, 2
la $a1, Ra
addu $t2,$t1,$a1

li $v0, 5			###### le o RA
syscall

add $t1, $v0, $zero
sw $t1, 0($t2) 		#### salva o RA no vetor



jr $ra            #### RETORNA PRA MAIN




ler_atividade: ##### ler as atividades dos alunos

add $s3, $s1, 5  ##### Calculo para garantir as posiçoes

ler_atividade1: 

li $v0, 4
la $a0, frescura						#
syscall

li $v0, 4
la $a0, mensagem3						#
syscall

li $v0, 1								 
add $a0, $s2, $zero						#
syscall

li $v0, 4
la $a0, mensagem2						#
syscall

li $v0, 4
la $a0, 0($t1)							#
syscall

li $v0, 4								#
la $a0, doispontos						
syscall                         		# pra deixar bonito




sll $t3, $s1, 2
la $a1, notaA
addu $t2,$t3,$a1

li $v0, 6								# le a nota
syscall


s.s $f0, 0($t2)  						# Salva a nota no Vetor


addiu $s1,$s1,1							# add para o loop
addiu $s2,$s2,1                         # add para o contador de atividades

bne $s1, $s3,ler_atividade1             #loop

jr $ra									#### RETORNA PRA MAIN




ler_projeto: ########## ler as projeto

add $s3, $s1, 2  ##### Calculo para garantir as posiçoes

ler_projeto1:

li $v0, 4
la $a0, frescura						#
syscall

li $v0, 4
la $a0, mensagem4						#
syscall

li $v0, 1								 
add $a0, $s2, $zero						#
syscall

li $v0, 4
la $a0, mensagem2						#
syscall

li $v0, 4
la $a0, 0($t1)							#
syscall

li $v0, 4								#
la $a0, doispontos						
syscall                         		# pra deixar bonito



sll $t3, $s1, 2
la $a1, notaP
addu $t2,$t3,$a1

li $v0, 6								# le a nota
syscall


s.s $f0, 0($t2)  						# salva a nota no Vetor


addiu $s1,$s1,1							# add para o loop
addiu $s2,$s2,1                         # add para o contador de atividades

bne $s1, $s3,ler_projeto1             #loop


jr $ra								##### RETORNA PRA MAIN




cal_media: ######################### calcular a media

move $s2, $s1     ##### SALVA A POSIÇÃO para buscarmos novamente dentro da função

li $s3, 2
mult $s1, $s3     #### multiplicação para irmos para o endereço correto

mflo $s1		#### pega o resultado da multiplicação

add $s3, $s1, 2			##### para garantir o loop 
sub.s $f5, $f5, $f5		#### para zerar o registrador

cal_media1:
sll $t1, $s1, 2
la $a1, notaP
addu $t2,$t1,$a1
l.s $f1, 0($t2)							# carrega em f1 a memoria
add.s $f5, $f5, $f1      #### adiciona a nota para calcular a media
addiu $s1,$s1,1

bne $s1, $s3, cal_media1

l.s $f3,pesoP           ### carrega o peso no registrador
mul.s $f5,$f5,$f3		### multiplica o peso

move $s1, $s2			### RECUPERA a posição
li $s3, 5				
mult $s1, $s3			### multiplicação para irmos para o endereço correto

mflo $s1				#### pega o resultado da multiplicação

add $s3, $s1, 5
sub.s $f4, $f4, $f4		#### para zerar o registrador

cal_media2:

sll $t1, $s1, 2
la $a1, notaA
addu $t2,$t1,$a1
l.s $f1, 0($t2)
add.s $f4, $f4, $f1		#### adiciona a nota para calcular a media
addiu $s1,$s1,1
	
bne $s1, $s3, cal_media2

move $s1, $s2			### RECUPERA a posição
sll $t1, $s1, 2
la $a1, Media
addu $t2,$t1,$a1
l.s $f3,pesoA
mul.s $f4,$f4,$f3		### multiplica o peso
add.s $f2, $f4, $f5		### SOMA todas as notas com os pesos
l.s $f5,pesoT
div.s $f2, $f2, $f5		### Divide pelo pesos e calcula a media
s.s $f2, 0($t2)			### Salva a media no Vetor

jr $ra				#### RETORNA PARA A MAIN

	print_info:
	
	
	move $s2,$s1		##### SALVA A POSIÇÃO para buscarmos novamente dentro da função
	
	li $v0, 4
	la $a0, radoaluno
	syscall
	sll $t1, $s1, 2
	la $a1, Ra
	addu $t2,$t1,$a1
	lw $t1, 0($t2)
	li $v0, 1								 # le a informação
	add $a0, $t1, $zero
	syscall
	
	

	
	imprimir_info:                                       #começo dos prints das notas

	move $s1, $s2		### SALVA A POSIÇÃO ORIGINAl
	li $s3, 5
	mult $s1, $s3		### PARA PEGAR A POSIÇÃO CORRETA
	mflo $s1
	add $s3, $s1, 5		### GARANTE O LOOP
	li $s4, 1			### S4 USADO PARA ESTETICA
	
	imprimir_info1:
	
	sll $t1, $s1, 2
	la $a1, notaA
	addu $t2,$t1,$a1
	l.d $f2, 0($t2)
	
	li $v0, 4
	la $a0, ativ
	syscall
	
	li $v0, 4
	la $a0, colchete
	syscall
	
	li $v0, 1								
	move $a0, $s4
	syscall
	
	li $v0, 4
	la $a0, colchete1
	syscall
	
	li $v0, 2
	mov.s $f12, $f2
	syscall
	
	addiu $s1,$s1,1
	addiu $s4,$s4,1
	
	bne $s1, $s3, imprimir_info1
	
	move $s1, $s2			### RECUPERA A POSIÇÃO
	li $s3, 2
	mult $s1, $s3
	mflo $s1
	add $s3, $s1, 2				#### GARANTE O LOOP
	li $s4, 1				### ESTETICA
	
	imprimir_info2:
	
	sll $t1, $s1, 2
	la $a1, notaP
	addu $t2,$t1,$a1
	l.d $f2, 0($t2)							
	
	li $v0, 4
	la $a0, proj
	syscall
	
	li $v0, 4
	la $a0, colchete
	syscall
	
	li $v0, 1								
	move $a0, $s4
	syscall
	
	li $v0, 4
	la $a0, colchete1
	syscall
	
	li $v0, 2
	mov.s $f12, $f2
	syscall
	
	addiu $s1,$s1,1
	addiu $s4,$s4,1
	
	bne $s1, $s3, imprimir_info2 ############### termino dos prints da notas
	
	############# printando a media
	
	move $s1,$s2
	
	li $v0, 4
	la $a0, pularlinha
	
	syscall
	
	li $v0, 4
	la $a0, mediadoaluno
	
	syscall
	
	sll $t1, $s1, 2
	la $a1, Media
	addu $t2,$t1,$a1
	l.s $f2, 0($t2)							# carrega em f1 a memoria
	li $v0, 2								# printa um float
	mov.s $f12, $f2							# registrador f12 é o registrador a ser printado
	syscall
	
	l.s $f6,nota_media
	c.lt.s $f2, $f6
	bc1f    foi_aprovado
	
	li $v0, 4
	la $a0, reprovado
	syscall
	jr $ra
	
	foi_aprovado:
	li $v0, 4
	la $a0, aprovado
	
	syscall
	
jr $ra #### RETORNA A MAIN


fim:

	li $v0, 10            ###### FINALIZA O CODIGO
    syscall