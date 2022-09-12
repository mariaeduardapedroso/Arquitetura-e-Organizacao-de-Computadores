.data

.text

	main:
	
	#pegar um numero do teclado
	li $v0,5
	syscall
	move $t0,$v0
	
	beq $t0,10,sair
	li $t0,0
	
	
	sair:
	li $v0,1
	move $a0,$t0
	syscall
	
	
	#sair do sistema
	li,$v0,5
	syscall
	
