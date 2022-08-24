.data

.text

main:
	li $t0,100
	sw $t0,80($sp)#regiao da pilha pra colocar dados posicao 10
	
	li $t1,200
	sw $t1,160($sp)#regiao da pilha pra colocar dados posicao 40
	
	#pegar os valores da memoria e trazer pro registrador
	lw $t2,80($sp) 
	lw $t3,160($sp)
	
	
	#mostrar resultado
	li $v0,1
	move $a0,$t2
	syscall
	
	#mostrar resultado
	li $v0,1
	move $a0,$t3
	syscall
	
	li $v0,10
	syscall
