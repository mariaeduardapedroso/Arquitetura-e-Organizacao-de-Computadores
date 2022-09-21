.data

.text

	main:
	
		#pegando um valor inteiro
		li $v0,5
		syscall
		move $t0,$v0
		
		beq $t0,10,igual
		li $t0,0
	igual:
		#imprimir na tela
		li $v0,1
		move $a0,$t0
		syscall
	
	sair:
		#fechar o sistema
		li $v0,10
		syscall
