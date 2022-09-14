.data

.text

	main:
		li $t0,15
		li $t1,30
		
		add $t3,$t1,$t0
		
		#imprimir na tela o resultado do programa
		li $v0,1 
		move $a0,$t3
		syscall
		
		#fechar o sistema
		li $v0,10
		syscall
	
