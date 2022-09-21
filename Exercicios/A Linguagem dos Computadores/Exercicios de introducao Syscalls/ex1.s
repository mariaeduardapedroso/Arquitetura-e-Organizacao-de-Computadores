.data

.text

main:
	li $t0 , 50
	sw $t0,40($sp)#regiao da pilha pra colocar dados posicao 10
	
	li $t1,100
	sw $t1,56($sp)#regiao da pilha pra colocar dados posicao 14
	
	#pegar os valores da memoria e trazer pro registrador
	lw $t2,40($sp) 
	lw $t3,160($sp)
	
	add $t4,$t2,$t3
	
	li $v0,1
	move $a0,$t4
	syscall
	
	li $v0,10
	syscall
