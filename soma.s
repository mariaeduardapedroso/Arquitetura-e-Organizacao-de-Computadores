.data

.text
	main:
	li $t1,0 #valor 1
	li $t2,0 #valor 2
	
	
	#pegando um valor inteiro de valor 1
	li $v0,5
	syscall
	move $a1,$v0
	
	#pegando um valor inteiro de valor 1
	li $v0,5
	syscall
	move $a2,$v0

	jal soma #salva o valor da proxima coisa em ra
	move $a0,$v0 #pega o retorno e move para variavel retorno que é a que imprime
	
	#imprimir na tela o resultado do programa
	li $v0,1 
	syscall		
	#fechar o sistema
	li $v0,10
	syscall
		
	soma:
	addi $sp, $sp,-4#mover sp pra 4 pra baixo
	sw $ra,4($sp) #salvar valor de ra na pilha
	
	li$v0,0
	add $v0, $a1,$a2 #somando valor 1 e valor 2
	
	lw $ra,4($sp) #recuperar endereco pra voltar pra main
	addi $sp, $sp,4#mover sp pra cima em 4
	jr $ra #volta para o endereço que esta no registrador de enredeco de retorno
