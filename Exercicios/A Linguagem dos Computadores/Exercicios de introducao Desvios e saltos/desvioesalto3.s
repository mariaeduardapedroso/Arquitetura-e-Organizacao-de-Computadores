.data

.text

	main:
	
		#pegando um valor inteiro
		li $v0,5
		syscall
		move $t0,$v0
		
		#pegando um valor inteiro
		li $v0,5
		syscall
		move $t1,$v0
		
		#vendo se numero sao iguais
		beq $t0,$t1,igual
		slt $s0,$t1,$t0
		#pegando booleano para ver
		beq $s0,1,primeiromaior
		add $t2,$zero,$t1
		j sair
		
		primeiromaior:
			add $t2,$zero,$t0
			j sair
		
		igual:
			addi $t2,$zero,-111
		
		sair:
			#imprimir na tela o resultado do programa
			li $v0,1
			move $a0,$t2
			syscall
			
			#fechar o sistema
			li $v0,10
			syscall
