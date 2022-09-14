.data
#vetores
vetor1: .word 5, 10, 15, 20, 25, 30, 35, 40
vetor2: .word 0, 10, -15, 16, 20, 30, 40, 50
vetor3: .word 0, 0, 0, 0, 0, 0, 0, 0

.text

	main:
	
	#carregar endereco vetor
	la $s1,vetor1
	la $s2,vetor2
	la $s3,vetor3
	
	while:
	bne $t0,6, continua
	j mostrar
	
	continua:
	#shift logico
	sll $t1, $t0, 2
	sll $t2, $t0, 2
	sll $t3, $t0, 2
	
	#incrementando
	add $t1,$t1,$s1
	add $t2,$t2,$s2
	add $t3,$t3,$s3
	
	#acessando valor
	lw $t1, 0($t1)
	lw $t2, 0($t2)
	
	#fazendo soma
	add $t4,$t1,$t2
	
	#colocando valor
	sw $t4, 0($t3)
	
	addi $t0,$t0,1
	
	j while
	
	mostrar:
	li $t0,0
	while2:
	bne $t0,6,continua1
	j sair
	
	continua1:
	#soma para mudar index
	sll $t1,$t0,2
	add $t1,$t1,$s3
	lw $t1,0($t1)
	
	#mostra o valor do index
	li $v0,1
	move $a0,$t1
	syscall
	
	#incremento
	addi $t0,$t0,1 
	j while2
	
	sair:
	#saida do sistema
	li $v0,10
	syscall
	


