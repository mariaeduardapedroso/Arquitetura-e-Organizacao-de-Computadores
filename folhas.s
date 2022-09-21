.data

.text
	main:
		
		li $a0,1
		li $a1,2
		li $a2,3
		li $a3,4
		
		jal folha #salva o valor da proxima coisa em ra
		move $a0,$v0 #pega o retorno e move para variavel retorno que é a que imprime
		
		#imprimir na tela o resultado do programa
		li $v0,1 
		syscall		
		#fechar o sistema
		li $v0,10
		syscall
		
	folha:
		addi $sp, $sp,-4#mover sp pra 4 pra baixo
		sw $ra,4($sp) #salvar valor de ra na pilha
		
		li$v0,0
		add $t0,$a0,$a1
		add $t1,$a2,$a3
		sub $v0,$t1,$t0
		
		
		lw $ra,4($sp) #recuperar endereco pra voltar pra main
		addi $sp, $sp,4#mover sp pra cima em 4
		jr $ra #volta para o endereço que esta no registrador de enredeco de retorno
		
	folha2:
		addi $sp, $sp,-4#mover sp pra 4 pra baixo
		sw $ra,4($sp) #salvar valor de ra na pilha
		
		li$v0,0
		sub $t0,$a0,$a1
		sub $t1,$a2,$a3
		add $v0,$t1,$t0
		
		lw $ra,4($sp) #recuperar endereco pra voltar pra main
		addi $sp, $sp,4#mover sp pra cima em 4
		jr $ra #volta para o endereço que esta no registrador de enredeco de retorno
