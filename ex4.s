.data

.text
	main:
	li $t0,100
	sw $t0,80($sp)#regiao da pilha pra colocar dados posicao 20 sendo sp 0
	
	li $t0,200
	sw $t0,160($sp)#regiao da pilha pra colocar dados posicao 40 sendo sp 0
	
	lw $t1,80($sp)
	lw $t2,160($sp)
	
	add $t3,$t1,$t2
	
	li $v0,1
	move $a0,$t3
	syscall
	
	
	#sair do sistema
	li $v0,5
	syscall
	
	
