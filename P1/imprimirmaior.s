.data 

.text

	main:
	#pegar um inteiro 
	li $v0, 5 
	syscall
        move $t0,$v0 #$t0 == numero 1
        
        #pegar um inteiro 
        li $v0, 5 
	syscall
        move $t1,$v0 #$t0 == numero 2

	slt  $t2,$t0,$t1
	beq $t2,1,pulo1maior


	slt  $t2,$t1,$t0
	beq $t2,1,pulo0maior

	li $a0,-111
	j sair


	pulo1maior:
	move $a0,$t1
	j sair

	pulo0maior:
	move $a0,$t0
	j sair


	sair:
	#imprimir na tela
	li $v0,1
	syscall

	#fechar o sistema
	li $v0,10
	syscall
	

