.data

.text

	main:
	li $t0,10
	li $t1,20
	
	addi $t2,$t0,4
	addi $t4,$t1,-6
	sub $t3,$t2,$t4
	
	li $v0,1
	move $a0,$t3
	syscall
	
	
	#sair do sistema
	li $v0,5
	syscall
	
