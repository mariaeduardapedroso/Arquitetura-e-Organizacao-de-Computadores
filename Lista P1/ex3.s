.data

.text
	main:
	li $t0,5
	sw $t0,40($sp)#regiao da pilha pra colocar dados posicao 10 sendo sp 0
	
	li $t0,20
	sw $t0,160($sp)#regiao da pilha pra colocar dados posicao 40 sendo sp 0
	
	lw $t1,40($sp)
	lw $t2,160($sp)
	
	add $t3,$t1,$t2
	
	sw $t3,400($sp)
	lw $t4,400($sp)
	
	li $v0,1
	move $a0,$t4
	syscall
	
	
	#sair do sistema
	li $v0,5
	syscall
	
	
