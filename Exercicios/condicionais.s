.data

.text
	main:
	li $t0,1
	li $t1,1
	li $t2,1
	li $t3,1
	li $t4,1

	bne $t0,$t1,else #modo de criar um else
	sub $t2,$t3,$t4 #executando o que teria em um if então é sem funcao
	j sair


	beq $t0,$t1,if #quando os numeros sao iguais como se fosse nosso if
	add $t2,$t3,$t4 #esse e meu else sem a função então usamos beq
	j sair

	if:
		sub $t2,$t3,$t4
		j sair
		
	else: 
		add $t2,$t3,$t4

	sair:
		#imprimir no console
		li $v0,1
		move $a0,$s3
		syscall
			
		#fechar sistema
		li $v0,10
		syscall
